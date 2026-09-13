Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/usernames-38fc0eb963246ca5.usernames.897995bc461e8f6b-cgu.1?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/prost-0.14.4/src/encoding/varint.rs\00", align 1
@1 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.12.0/src/bytes_mut.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"b\00\00\00\00\00\00\00[\02\00\00\13\00\00\00" }>, align 8
@3 = private unnamed_addr constant [96 x i8] c"`\B9\93f:=\AE\CCL\85/S5G\E3\058\8C*P\A5\83\93\EA'}\E4\AB\F3\DET:\F2\B6\F1\C8&\FA6@ o;X\B2(k\DE\FD\FD\A6\A5O\F9\02\F2\04\A7-\E77\D2aW\06\06\BD:\BF\CEN\96\17\D4H\FB,\AE\B6\CC\02\8E\C9\A2\B6+\10\B3\D9\EB)H\DAo?S", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"b\00\00\00\00\00\00\00\AB\04\00\00\17\00\00\00" }>, align 8
@_RNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS = hidden local_unnamed_addr global <{ ptr, [472 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_onceB8_, [472 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\00Y\00\00\00\05\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\00_\00\00\00\05\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\00e\00\00\00\05\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\00s\00\00\00\05\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\00y\00\00\00\05\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\00\7F\00\00\00\05\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\00\8D\00\00\00\14\00\00\00" }>, align 8
@_RNvNtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx29constants22EXTENDEDPOINT_IDENTITY = external local_unnamed_addr global { { [5 x <4 x i64>] } }
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"b\00\00\00\00\00\00\00\EB\04\00\00\19\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"b\00\00\00\00\00\00\00\F3\04\00\00\14\00\00\00" }>, align 8
@14 = private unnamed_addr constant [27 x i8] c"Username must contain a '.'", align 1
@15 = private unnamed_addr constant [20 x i8] c"Name cannot be empty", align 1
@16 = private unnamed_addr constant [30 x i8] c"Name cannot start with a digit", align 1
@17 = private unnamed_addr constant [38 x i8] c"Nickname contains disallowed character", align 1
@18 = private unnamed_addr constant [21 x i8] c"Nickname is too short", align 1
@19 = private unnamed_addr constant [20 x i8] c"Nickname is too long", align 1
@20 = private unnamed_addr constant [29 x i8] c"Discriminator cannot be empty", align 1
@21 = private unnamed_addr constant [28 x i8] c"Discriminator cannot be zero", align 1
@22 = private unnamed_addr constant [38 x i8] c"Discriminator cannot be a single digit", align 1
@23 = private unnamed_addr constant [83 x i8] c"Discriminator cannot have leading zeros unless it would otherwise be a single digit", align 1
@24 = private unnamed_addr constant [44 x i8] c"Discriminator must only be made up of digits", align 1
@25 = private unnamed_addr constant [49 x i8] c"Value is too large to be a username discriminator", align 1
@26 = private unnamed_addr constant [49 x i8] c"The combined length of all input data is too long", align 1
@27 = private unnamed_addr constant [32 x i8] c"Invalid size of the entropy data", align 1
@28 = private unnamed_addr constant [75 x i8] c"Username link data size is too short: must contain IV, ciphertext, and HMAC", align 1
@29 = private unnamed_addr constant [83 x i8] c"HMAC on username link doesn't match the one calculated with the given entropy input", align 1
@30 = private unnamed_addr constant [50 x i8] c"Ciphertext in the username link can't be decrypted", align 1
@31 = private unnamed_addr constant [61 x i8] c"Data decrypted from the username link is of invalid structure", align 1
@32 = private unnamed_addr constant [30 x i8] c"Username could not be verified", align 1
@33 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/sha2-0.11.0/src/block_api.rs\00", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"a\00\00\00\00\00\00\00F\00\00\00\13\00\00\00" }>, align 8
@35 = private unnamed_addr constant [32 x i8] c"g\E6\09j\85\AEg\BBr\F3n<:\F5O\A5\7FR\0EQ\8Ch\05\9B\AB\D9\83\1F\19\CD\E0[", align 8
@36 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.12.0/src/buf/take.rs\00", align 1
@37 = private unnamed_addr constant [35 x i8] c"assertion failed: cnt <= self.limit", align 1
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"a\00\00\00\00\00\00\00\92\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB24_2B0EB2h_EB2h_EB2h_EB2h_EB2h_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB38_7default7Default7default0E0ECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 1 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsd_B5_BF_NtNtB2Z_5clone5Clone5clone0E0ECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvNtCs5DMeLc8gTfG_12hybrid_array7from_fn18try_from_fn_erasedhNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvMB2_INtB4_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB23_IB23_IB23_IB23_IB23_NtB25_5UTermNtNtB27_3bit2B1ENtB3g_2B0EB3u_EB3u_EB3u_EB3u_EE7from_fnNCNvXsd_B4_B1P_NtNtB13_5clone5Clone5clone0E0ECsbNM6vbj4kjf_9usernames.exit:
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !14, !noalias !15, !nonnull !4, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %.val.i.i, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB2Z_7default7Default7default0E0ECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsdbmLU2M1sR8_3log13___private_api3loguNtB2_12GlobalLoggerECsbNM6vbj4kjf_9usernames(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 6) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !18, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !18, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !18, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !18, !noundef !4
  %i.k = load ptr, ptr %3, align 8, !alias.scope !18, !nonnull !4, !noundef !4
  %i.l = load ptr, ptr %i.d, align 8, !noalias !18, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !18, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i32, ptr %i.o, align 8, !noalias !18, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %2, ptr %i.q, align 8, !noalias !18
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.k, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !18
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.j, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %0, ptr %i.r, align 8, !noalias !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %1, ptr %i.s, align 8, !noalias !18
  store i64 0, ptr %i.b, align 8, !noalias !18
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !18
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.t, align 8, !noalias !18
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.l, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !18
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.u, align 8, !noalias !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.p, ptr %i.v, align 4, !noalias !18
  call void @_RNvXs0_NtCsdbmLU2M1sR8_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsfkg6qDyjgHi_4hmac5utils11get_der_keyNtCsj2Wav7G13rI_4sha26Sha256ECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 1 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.l, i8 0, i64 64, i1 false), !alias.scope !117
  %i.m = icmp samesign ult i64 %2, 65
  br i1 %i.m, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !118
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @35, i64 32, i1 false), !noalias !118
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 63 ; 2 uses
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i, align 1, !alias.scope !119, !noalias !118
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.o = lshr i64 %2, 6                           ; 2 uses
  store i64 %i.o, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !124, !noalias !125
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 1, 144115188075855872) %i.o)
          to label %bb.d unwind label %.body.thread.i, !noalias !126

bb.c:                                             ; preds = %.body.thread.i, %.body.i
  %eh.lpad-body9.i = phi { ptr, i32 } [ %i.bc, %.body.thread.i ], [ %eh.lpad-body.i.i.i, %.body.i ]
  resume { ptr, i32 } %eh.lpad-body9.i

.body.i:                                          ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.e ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !127
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %i.i, ptr nonnull align 1 %i.c, i64 64, i1 true), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(104) %i.i) #21, !noalias !128, !srcloc !6
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %i.t) #21, !noalias !128, !srcloc !6
  br label %bb.c

bb.d:                                             ; preds = %bb.b
  %i.p = and i64 %2, 9223372036854775744
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = and i64 %2, 63                           ; 2 uses
  %i.s = trunc nuw nsw i64 %i.r to i8
  store i8 %i.s, ptr %.sroa.3.0..sroa_idx.i.i, align 1, !alias.scope !129, !noalias !130
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %i.k, ptr nonnull readonly align 1 %i.q, i64 %i.r, i1 false), !alias.scope !131, !noalias !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.k, i64 104, i1 false), !noalias !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, i8 0, i64 32, i1 false), !alias.scope !134, !noalias !133
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, i8 0, i64 32, i1 false), !alias.scope !139, !noalias !138
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 63 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !142, !noalias !143, !noundef !4 ; 2 uses
  %i.w = zext nneg i8 %i.v to i64                 ; 3 uses
  %i.x = icmp ult i8 %i.v, 64
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !144, !noalias !145, !noundef !4
  %i.aa = shl i64 %i.z, 9
  %i.ab = shl nuw nsw i64 %i.w, 3
  %i.ac = or disjoint i64 %i.aa, %i.ab
  %i.ad = call i64 @llvm.bswap.i64(i64 %i.ac)
  %i.ae = xor i64 %i.w, 63                        ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.w ; 2 uses
  store i8 -128, ptr %i.af, align 1, !alias.scope !146, !noalias !147
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ag, i8 0, i64 %i.ae, i1 false), !alias.scope !146, !noalias !147
  %i.ah = icmp samesign ult i64 %i.ae, 8
  br i1 %i.ah, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.h, %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.u, align 1, !alias.scope !148, !noalias !149
  br label %.body.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.i, i64 64, i1 false), !noalias !143
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1)
          to label %bb.g unwind label %bb.e, !noalias !151

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !150
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, i8 0, i64 56, i1 false), !alias.scope !142, !noalias !152
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %i.ad, ptr %i.aj, align 8, !alias.scope !153, !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.i, i64 64, i1 false), !noalias !143
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1)
          to label %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i unwind label %bb.e, !noalias !151

_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !155
  store i8 0, ptr %i.u, align 1, !alias.scope !156, !noalias !157
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !158
  store ptr %i.ak, ptr %i.d, align 8, !noalias !159
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !159
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !159
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !159
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 4, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !160
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E3newCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull %i.y)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !128

.noexc.i.i.i:                                     ; preds = %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !158
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.an = load i64, ptr %i.al, align 8, !alias.scope !161, !noalias !162, !noundef !4 ; 2 uses
  %i.ao = load i64, ptr %i.am, align 8, !alias.scope !161, !noalias !162, !noundef !4
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i.i.i.i.i, label %_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha256NtB3_6Digest6digestRShECsbNM6vbj4kjf_9usernames.exit

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i.i.i.i.i
  %i.ar = phi i64 [ %i.an, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i.i.i.i.i ], [ %i.az, %_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i ] ; 3 uses
  %i.as = add nuw i64 %i.ar, 1
  store i64 %i.as, ptr %i.al, align 8, !alias.scope !161, !noalias !162
  %i.at = invoke { ptr, i64 } @_RNvXs1y_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g, i64 noundef %i.ar)
          to label %.noexc1.i.i.i unwind label %.loopexit.i.i.i, !noalias !128 ; 2 uses

.noexc1.i.i.i:                                    ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i
  %i.au = extractvalue { ptr, i64 } %i.at, 0      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha256NtB3_6Digest6digestRShECsbNM6vbj4kjf_9usernames.exit, label %bb.i

bb.i:                                             ; preds = %.noexc1.i.i.i
  %i.av = extractvalue { ptr, i64 } %i.at, 1      ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.av, 4
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 0, -9223372036854775808) %i.av, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #22
          to label %.noexc2.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !128

.noexc2.i.i.i:                                    ; preds = %bb.j
  unreachable

_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i: ; preds = %bb.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !161, !noalias !162, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.ar
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !163, !noundef !4
  %i.ay = call i32 @llvm.bswap.i32(i32 %i.ax)
  store i32 %i.ay, ptr %i.au, align 1, !alias.scope !164, !noalias !165
  %i.az = load i64, ptr %i.al, align 8, !alias.scope !161, !noalias !162, !noundef !4 ; 2 uses
  %i.ba = load i64, ptr %i.am, align 8, !alias.scope !161, !noalias !162, !noundef !4
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i, label %_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha256NtB3_6Digest6digestRShECsbNM6vbj4kjf_9usernames.exit

.loopexit.i.i.i:                                  ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.j, %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.thread.i:                                   ; preds = %bb.b
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !noalias !166
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %i.k, ptr nonnull align 1 %i.a, i64 64, i1 true), !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(104) %i.k) #21, !noalias !126, !srcloc !6
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %i.n) #21, !noalias !126, !srcloc !6
  br label %bb.c

_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha256NtB3_6Digest6digestRShECsbNM6vbj4kjf_9usernames.exit: ; preds = %.noexc1.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.h, i64 32, i1 false), !alias.scope !167, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !noalias !169
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %i.i, ptr nonnull align 1 %i.b, i64 64, i1 true), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(104) %i.i) #21, !noalias !128, !srcloc !6
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %i.t) #21, !noalias !128, !srcloc !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.l, ptr noundef nonnull align 1 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !118
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha256NtB3_6Digest6digestRShECsbNM6vbj4kjf_9usernames.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(64) %i.l, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.l:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !alias.scope !170, !noalias !171
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCseNmJmsPJ47l_7zeroize9ZeroizingINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
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
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
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
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtB1c_7backend6vector4avx27edwards11CachedPointEEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
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
define hidden void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames(i8 noundef range(i8 0, 6) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
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
  store i8 %0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 2, ptr %i.j, align 1
  store i64 -9223372036854775802, ptr %i.a, align 8
  %i.k = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g
end_hunk_0
begin_hunk_1_@_RINvNtNtCs43OB2dM8s8d_5prost8encoding6string5mergeQRShECsbNM6vbj4kjf_9usernames:bb.a
  store i64 0, ptr %i.s, align 8
  br label %bb.i

bb.k:                                             ; preds = %bb.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit.thread
  %.sroa.0.1 = phi ptr [ %.sroa.0.0.i12, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit.thread ], [ %.sroa.0.0, %bb.i ]
  ret ptr %.sroa.0.1

bb.l:                                             ; preds = %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit.thread13, %bb.h, %bb.b, %bb.c, %bb.e, %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.y, align 8
  resume { ptr, i32 } %i.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !4, !noundef !4 ; 13 uses
  %i.c = getelementptr i8, ptr %.val, i64 8       ; 3 uses
  %.val1.i = load i64, ptr %i.c, align 8, !noundef !4 ; 14 uses
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
  %i.g = load i8, ptr %.val.i, align 1, !noundef !4 ; 3 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt i64 %.val1.i, 10
  br i1 %i.i, label %.thread, label %bb.ai

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.c
  %i.j = add i64 %.val1.i, -1
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  store ptr %i.k, ptr %.val, align 8, !alias.scope !185, !captures !9
  store i64 %i.j, ptr %i.c, align 8, !alias.scope !185
  %i.l = zext nneg i8 %i.g to i64
  br label %bb.al

bb.e:                                             ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d
  %i.m = zext i8 %i.g to i32
  %i.n = add nsw i32 %i.m, -128
  %i.o = icmp ne i64 %.val1.i, 1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !186, !noalias !187, !noundef !4 ; 2 uses
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
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !186, !noalias !187, !noundef !4 ; 2 uses
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 14
  %i.ad = or disjoint i32 %i.ac, %i.x             ; 3 uses
  %i.ae = icmp sgt i8 %i.aa, -1
  br i1 %i.ae, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !noalias !188
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
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !186, !noalias !187, !noundef !4 ; 2 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 21
  %i.an = add nuw nsw i32 %i.ah, %i.am            ; 3 uses
  %i.ao = icmp sgt i8 %i.ak, -1
  br i1 %i.ao, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22, !noalias !188
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
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !186, !noalias !187, !noundef !4 ; 3 uses
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %bb.ah, label %bb.r

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !188
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ax = zext i8 %i.av to i32
  %i.ay = add nsw i32 %i.ax, -128
  %i.az = icmp samesign ugt i64 %.val1.i, 5
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i, i64 5
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !186, !noalias !187, !noundef !4 ; 2 uses
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 7
  %i.be = or disjoint i32 %i.bd, %i.ay            ; 3 uses
  %i.bf = icmp sgt i8 %i.bb, -1
  br i1 %i.bf, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = icmp samesign ult i32 %i.be, 16384
  br i1 %i.bg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = add nsw i32 %i.be, -16384
  %i.bi = icmp samesign ugt i64 %.val1.i, 6
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i, i64 6
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !186, !noalias !187, !noundef !4 ; 2 uses
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 14
  %i.bn = or disjoint i32 %i.bm, %i.bh            ; 3 uses
  %i.bo = icmp sgt i8 %i.bk, -1
  br i1 %i.bo, label %bb.af, label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22, !noalias !188
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bp = icmp samesign ult i32 %i.bn, 2097152
  br i1 %i.bp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = add nsw i32 %i.bn, -2097152
  %i.br = icmp samesign ugt i64 %.val1.i, 7
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i, i64 7
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !186, !noalias !187, !noundef !4 ; 2 uses
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 21
  %i.bw = add nuw nsw i32 %i.bq, %i.bv            ; 3 uses
  %i.bx = icmp sgt i8 %i.bt, -1
  br i1 %i.bx, label %bb.ae, label %bb.y

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22, !noalias !188
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.by = icmp samesign ult i32 %i.bw, 268435456
  br i1 %i.by, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = add nsw i32 %i.bw, -268435456
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 28
  %i.cc = add nuw nsw i64 %i.cb, %i.as            ; 3 uses
  %i.cd = icmp samesign ugt i64 %.val1.i, 8
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !186, !noalias !187, !noundef !4 ; 3 uses
  %i.cg = icmp sgt i8 %i.cf, -1
  br i1 %i.cg, label %bb.ad, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !188
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ch = icmp samesign ugt i64 %.val1.i, 9
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i, i64 9
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !186, !noalias !187, !noundef !4 ; 2 uses
  %i.ck = icmp ult i8 %i.cj, 2
  br i1 %i.ck, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.cl = zext nneg i8 %i.cj to i64
  %i.cm = and i8 %i.cf, 127
  %i.cn = zext nneg i8 %i.cm to i64
  %1 = shl nuw i64 %i.cl, 63
  %i.co = shl nuw nsw i64 %i.cn, 56
  %i.cp = add nuw nsw i64 %i.co, %i.cc
  %i.cq = or disjoint i64 %1, %i.cp               ; 2 uses
  %2 = icmp ult i64 %i.cq, %i.cc
  br i1 %2, label %3, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

3:                                                ; preds = %bb.ac
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22, !noalias !188
  unreachable

bb.ad:                                            ; preds = %bb.z
  %i.cr = zext nneg i8 %i.cf to i64
  %i.cs = shl nuw nsw i64 %i.cr, 56
  %i.ct = add nuw nsw i64 %i.cs, %i.cc
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.ae:                                            ; preds = %bb.w
  %i.cu = zext nneg i32 %i.bw to i64
  %i.cv = shl nuw nsw i64 %i.cu, 28
  %i.cw = add nuw nsw i64 %i.cv, %i.as
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.af:                                            ; preds = %bb.t
  %i.cx = zext nneg i32 %i.bn to i64
  %i.cy = shl nuw nsw i64 %i.cx, 28
  %i.cz = add nuw nsw i64 %i.cy, %i.as
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.ag:                                            ; preds = %bb.r
  %i.da = zext nneg i32 %i.be to i64
  %i.db = shl nuw nsw i64 %i.da, 28
  %i.dc = add nuw nsw i64 %i.db, %i.as
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.ah:                                            ; preds = %bb.p
  %i.dd = zext nneg i8 %i.av to i64
  %i.de = shl nuw nsw i64 %i.dd, 28
  %i.df = add nuw nsw i64 %i.de, %i.as
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.ai:                                            ; preds = %bb.d
  %i.dg = getelementptr i8, ptr %.val.i, i64 %.val1.i
  %i.dh = getelementptr i8, ptr %i.dg, i64 -1
  %i.di = load i8, ptr %i.dh, align 1, !noundef !4
  %i.dj = icmp sgt i8 %i.di, -1
  br i1 %i.dj, label %bb.e, label %bb.aj, !prof !7

bb.aj:                                            ; preds = %bb.ai
  %i.dk = tail call { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #26 ; 2 uses
  %i.dl = extractvalue { i64, ptr } %i.dk, 0
  %i.dm = extractvalue { i64, ptr } %i.dk, 1
  %i.dn = ptrtoint ptr %i.dm to i64
  br label %bb.al

bb.ak:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !188
  store i64 -9223372036854775807, ptr %i.a, align 8, !noalias !188
  %i.do = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a), !noalias !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !188
  %i.dp = ptrtoint ptr %i.do to i64
  br label %bb.al

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6: ; preds = %bb.ac, %bb.af, %bb.ag, %bb.ah, %bb.ad, %bb.ae, %bb.o, %bb.k, %bb.g
  %.sroa.18.0.ph = phi i64 [ 10, %bb.ac ], [ 9, %bb.ad ], [ 8, %bb.ae ], [ 7, %bb.af ], [ 6, %bb.ag ], [ 5, %bb.ah ], [ 4, %bb.o ], [ 3, %bb.k ], [ 2, %bb.g ] ; 2 uses
  %.sroa.5.0.ph = phi i64 [ %i.cq, %bb.ac ], [ %i.ct, %bb.ad ], [ %i.cw, %bb.ae ], [ %i.cz, %bb.af ], [ %i.dc, %bb.ag ], [ %i.df, %bb.ah ], [ %i.aq, %bb.o ], [ %i.ag, %bb.k ], [ %i.w, %bb.g ]
  %i.dq = sub nuw i64 %.val1.i, %.sroa.18.0.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.18.0.ph
  store ptr %i.dr, ptr %.val, align 8, !alias.scope !189, !captures !9
  store i64 %i.dq, ptr %i.c, align 8, !alias.scope !189
  br label %bb.al

bb.al:                                            ; preds = %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6, %bb.aj, %bb.b, %bb.ak
  %.sroa.6.0 = phi i64 [ %i.f, %bb.b ], [ %i.l, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ %i.dp, %bb.ak ], [ %.sroa.5.0.ph, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6 ], [ %i.dn, %bb.aj ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ 1, %bb.ak ], [ 0, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6 ], [ %i.dl, %bb.aj ]
  %i.ds = inttoptr i64 %.sroa.6.0 to ptr
  %i.dt = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.du = insertvalue { i64, ptr } %i.dt, ptr %i.ds, 1
  ret { i64, ptr } %i.du
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXNtNtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector10scalar_mul6straus9spec_avx2NtB6_6StrausNtNtBg_6traits14MultiscalarMul15multiscalar_mulB1u_NtB3_24___Impl_multiscalar_mul__21__impl_multiscalar_mulINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterNtNtBg_6scalar6ScalarEINtNtNtNtB3w_4iter8adapters3map3MapIB3q_NtNtBg_9ristretto14RistrettoPointENCINvXsq_B57_B55_B1G_15multiscalar_mulRSB45_B50_E0EECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 32              ; 4 uses
  %i.b = alloca [160 x i8], align 32              ; 4 uses
  %i.c = alloca [160 x i8], align 32              ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [160 x i8], align 32              ; 4 uses
  %i.f = alloca [160 x i8], align 32              ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtBY_7backend6vector4avx27edwards11CachedPointEEINtB2_12SpecFromIterBT_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapIB36_INtNtNtB3e_5slice4iter4IterNtNtBY_9ristretto14RistrettoPointENCINvXsq_B4r_B4p_NtNtBY_6traits14MultiscalarMul15multiscalar_mulRSNtNtBY_6scalar6ScalarB3Y_E0ENCINvXNvXNtNtNtB1U_10scalar_mul6straus9spec_avx2NtB6C_6StrausB5e_15multiscalar_mulB7f_NtB6z_24___Impl_multiscalar_mul__21__impl_multiscalar_mulIB3Z_B61_EB3T_E0EE9from_iterCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %3, ptr noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VecAaj40_EINtB2_12SpecFromIterBT_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtNtB1w_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarENCINvXNvXNtNtNtNtNtB2G_7backend6vector10scalar_mul6straus9spec_avx2NtB3A_6StrausNtNtB2G_6traits14MultiscalarMul15multiscalar_mulB4w_NtB3x_24___Impl_multiscalar_mul__21__impl_multiscalar_mulB2b_IB1o_IB2c_NtNtB2G_9ristretto14RistrettoPointENCINvXsq_B6K_B6I_B4J_15multiscalar_mulRSB2C_B6D_E0EEs_0EE9from_iterCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noundef %2)
          to label %.split37 unwind label %bb.b

.body:                                            ; preds = %bb.e, %bb.f, %bb.b, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.j, %bb.b ], [ %i.q, %bb.f ], [ %i.p, %bb.e ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtB1c_7backend6vector4avx27edwards11CachedPointEEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #23
          to label %common.resume unwind label %bb.n

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EECsbNM6vbj4kjf_9usernames.exit.i, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.l, %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.c
  %lpad.loopexit31 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.d
  %lpad.loopexit.split-lp32 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit31, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp32, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCseNmJmsPJ47l_7zeroize9ZeroizingINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #23
          to label %.body unwind label %bb.n

.split37:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !alias.scope !196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(160) %i.f, ptr noundef nonnull align 32 dereferenceable(160) @_RNvNtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx29constants22EXTENDEDPOINT_IDENTITY, i64 160, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  br label %bb.c

bb.c:                                             ; preds = %.split37, %.thread25
  %.sroa.4.038 = phi i64 [ 64, %.split37 ], [ %i.o, %.thread25 ]
  %i.o = add nsw i64 %.sroa.4.038, -1             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXNvMs7_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_13ExtendedPoint12mul_by_pow_2B1e_NtB2_21___Impl_mul_by_pow_2__18__impl_mul_by_pow_2(ptr noalias nofree noundef nonnull sret([160 x i8]) align 32 captures(none) dereferenceable(160) %i.e, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %i.f, i32 noundef 4)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit

bb.d:                                             ; preds = %.thread25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(160) %i.a, ptr noundef nonnull align 32 dereferenceable(160) %i.f, i64 160, i1 false)
  invoke void @_RNvXNvXs3_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtNtBg_7edwards12EdwardsPointINtNtCsgxBkk5gSRhY_4core7convert4FromNtB8_13ExtendedPointE4fromB1e_NtB2_13___Impl_from__10__impl_from(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 32 captures(address) dereferenceable(160) %i.a)
          to label %_RNvXs1_NtCsgxBkk5gSRhY_4core7convertNtNtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwards13ExtendedPointINtB5_4IntoNtNtBI_7edwards12EdwardsPointE4intoCsbNM6vbj4kjf_9usernames.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_RNvXs1_NtCsgxBkk5gSRhY_4core7convertNtNtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwards13ExtendedPointINtB5_4IntoNtNtBI_7edwards12EdwardsPointE4intoCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsd_CseNmJmsPJ47l_7zeroizeINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_ENtB5_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNvXss_CseNmJmsPJ47l_7zeroizeINtB5_9ZeroizingINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RNvXs1_NtCsgxBkk5gSRhY_4core7convertNtNtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwards13ExtendedPointINtB5_4IntoNtNtBI_7edwards12EdwardsPointE4intoCsbNM6vbj4kjf_9usernames.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #23
          to label %.body unwind label %bb.h

_RNvXss_CseNmJmsPJ47l_7zeroizeINtB5_9ZeroizingINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames.exit.i: ; preds = %_RNvXs1_NtCsgxBkk5gSRhY_4core7convertNtNtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwards13ExtendedPointINtB5_4IntoNtNtBI_7edwards12EdwardsPointE4intoCsbNM6vbj4kjf_9usernames.exit
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EECsbNM6vbj4kjf_9usernames.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RNvXss_CseNmJmsPJ47l_7zeroizeINtB5_9ZeroizingINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EECsbNM6vbj4kjf_9usernames.exit.i: ; preds = %_RNvXss_CseNmJmsPJ47l_7zeroizeINtB5_9ZeroizingINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames.exit.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCseNmJmsPJ47l_7zeroize9ZeroizingINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EEECsbNM6vbj4kjf_9usernames.exit unwind label %bb.b

bb.h:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCseNmJmsPJ47l_7zeroize9ZeroizingINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EEECsbNM6vbj4kjf_9usernames.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EECsbNM6vbj4kjf_9usernames.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtBJ_7backend6vector4avx27edwards11CachedPointEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtB1c_7backend6vector4avx27edwards11CachedPointEEECsbNM6vbj4kjf_9usernames.exit unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCseNmJmsPJ47l_7zeroize9ZeroizingINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EEECsbNM6vbj4kjf_9usernames.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtBQ_7backend6vector4avx27edwards11CachedPointEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtB1c_7backend6vector4avx27edwards11CachedPointEEECsbNM6vbj4kjf_9usernames.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCseNmJmsPJ47l_7zeroize9ZeroizingINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EEECsbNM6vbj4kjf_9usernames.exit
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtBQ_7backend6vector4avx27edwards11CachedPointEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.k:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(160) %i.f, ptr noundef nonnull align 32 dereferenceable(160) %i.e, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.val9 = load i64, ptr %i.l, align 8, !noundef !4
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.val9
  %.val10 = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.val11 = load i64, ptr %i.n, align 8, !noundef !4
  %i.w = getelementptr inbounds nuw [1280 x i8], ptr %.val10, i64 %.val11
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAaj40_EIBX_INtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtB1C_7backend6vector4avx27edwards11CachedPointEEEINtB5_7ZipImplBW_B1t_E3newCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %.val, ptr noundef nonnull %i.v, ptr noundef nonnull %.val10, ptr noundef nonnull %i.w)
          to label %.split unwind label %.loopexit.split-lp.loopexit

.split:                                           ; preds = %bb.k
  %.sroa.016.0.copyload = load ptr, ptr %i.d, align 8, !alias.scope !197 ; 2 uses
  %.sroa.518.0.copyload = load ptr, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !197 ; 2 uses
  %.sroa.719.0.copyload = load i64, ptr %.sroa.719.0..sroa_idx, align 8, !alias.scope !197 ; 2 uses
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !197 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %.sroa.016.0.copyload, i64 %i.o
  %i.x = icmp ult i64 %.sroa.719.0.copyload, %.sroa.8.0.copyload
  br i1 %i.x, label %.lr.ph, label %.thread25

.lr.ph:                                           ; preds = %.split
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.518.0.copyload) ]
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_RNvXsh_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsRNtB5_13ExtendedPointINtNtNtCsgxBkk5gSRhY_4core3ops5arith3AddRNtB5_11CachedPointE3add.exit
  %.sroa.515.036 = phi i64 [ %.sroa.719.0.copyload, %.lr.ph ], [ %i.y, %_RNvXsh_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsRNtB5_13ExtendedPointINtNtNtCsgxBkk5gSRhY_4core3ops5arith3AddRNtB5_11CachedPointE3add.exit ] ; 3 uses
  %i.y = add i64 %.sroa.515.036, 1                ; 2 uses
  %i.z = getelementptr inbounds nuw [1280 x i8], ptr %.sroa.518.0.copyload, i64 %.sroa.515.036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %gep = getelementptr [64 x i8], ptr %invariant.gep, i64 %.sroa.515.036
  %i.aa = load i8, ptr %gep, align 1, !noundef !4
  invoke void @_RNvMs6_NtCsdRrpXuHtjOb_16curve25519_dalek6windowINtB5_11LookupTableNtNtNtNtNtB7_7backend6vector4avx27edwards11CachedPointE6selectCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([160 x i8]) align 32 captures(none) dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(1280) %i.z, i8 noundef %i.aa)
          to label %bb.m unwind label %.loopexit

.thread25:                                        ; preds = %_RNvXsh_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsRNtB5_13ExtendedPointINtNtNtCsgxBkk5gSRhY_4core3ops5arith3AddRNtB5_11CachedPointE3add.exit, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not30 = icmp eq i64 %i.o, 0
  br i1 %.not30, label %bb.d, label %bb.c

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXNvXsh_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsRNtB8_13ExtendedPointINtNtNtCsgxBkk5gSRhY_4core3ops5arith3AddRNtB8_11CachedPointE3addB1e_NtB2_12___Impl_add__9__impl_add(ptr noalias nofree noundef nonnull sret([160 x i8]) align 32 captures(none) dereferenceable(160) %i.c, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %i.f, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %i.b)
          to label %_RNvXsh_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsRNtB5_13ExtendedPointINtNtNtCsgxBkk5gSRhY_4core3ops5arith3AddRNtB5_11CachedPointE3add.exit unwind label %.loopexit

_RNvXsh_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsRNtB5_13ExtendedPointINtNtNtCsgxBkk5gSRhY_4core3ops5arith3AddRNtB5_11CachedPointE3add.exit: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(160) %i.f, ptr noundef nonnull align 32 dereferenceable(160) %i.c, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %i.y, %.sroa.8.0.copyload
  br i1 %exitcond.not, label %.thread25, label %bb.l

bb.n:                                             ; preds = %.loopexit.split-lp, %.body
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQRShEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %.val.i.i.i) ; 5 uses
  %.not50 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not50, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf13copy_to_bytesCsbNM6vbj4kjf_9usernames.exit, label %bb.c

.loopexit:                                        ; preds = %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit, %bb.a, %bb.m
  ret void

_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf13copy_to_bytesCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf13copy_to_bytesCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.sroa.0.0.i.i.i), !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @_RNvMNtCs17cqnTMcAHA_5bytes5bytesNtB2_5Bytes12try_into_mut(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.k = load i64, ptr %i.d, align 8, !range !8, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  br i1 %i.l, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 2 uses
  %i.p = icmp ult i64 %i.i, %i.o
  br i1 %i.p, label %bb.r, label %bb.q

bb.d:                                             ; preds = %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf13copy_to_bytesCsbNM6vbj4kjf_9usernames.exit
  %.sroa.042.0.copyload = load ptr, ptr %i.m, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.846.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.846.0.copyload = load i64, ptr %.sroa.846.0..sroa_idx, align 8 ; 8 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !225, !noalias !226, !noundef !4 ; 3 uses
  %i.s = load i64, ptr %i.h, align 8, !alias.scope !225, !noalias !226, !noundef !4 ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  br i1 %i.t, label %.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = sub nuw i64 %i.s, %i.r
  %.not.i17 = icmp ugt i64 %.sroa.846.0.copyload, %i.u
  br i1 %.not.i17, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.v = invoke noundef zeroext i1 @_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.846.0.copyload, i1 noundef zeroext true)
          to label %.noexc18 unwind label %bb.n   ; 0 uses

.noexc18:                                         ; preds = %bb.f
  %.pre.i = load i64, ptr %i.q, align 8, !alias.scope !225, !noalias !226 ; 2 uses
  %.pre1.i = load i64, ptr %i.h, align 8, !alias.scope !225, !noalias !226
  %i.w = icmp ult i64 %.pre1.i, %.pre.i
  br i1 %i.w, label %.invoke, label %.thread.i

.thread.i:                                        ; preds = %.noexc18, %bb.e
  %i.x = phi i64 [ %.pre.i, %.noexc18 ], [ %i.r, %bb.e ]
  %i.y = load ptr, ptr %0, align 8, !alias.scope !225, !noalias !226, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.846.0.copyload, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.aa = load i64, ptr %i.h, align 8, !alias.scope !228, !noalias !226, !noundef !4 ; 2 uses
  %i.ab = load i64, ptr %i.q, align 8, !alias.scope !228, !noalias !226, !noundef !4 ; 4 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ad, label %.invoke, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.ae = icmp ugt i64 %.sroa.846.0.copyload, %i.ac
  br i1 %i.ae, label %bb.i, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.af = add i64 %i.ab, %.sroa.846.0.copyload    ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ab
  br i1 %i.ag, label %bb.j, label %bb.o

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !229
  store i64 %.sroa.846.0.copyload, ptr %i.c, align 8, !noalias !229
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ac, ptr %i.ah, align 8, !noalias !229
  invoke void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #27
          to label %.noexc20 unwind label %bb.n

.noexc20:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #22
          to label %.noexc21 unwind label %bb.n

.noexc21:                                         ; preds = %bb.j
  unreachable

.invoke:                                          ; preds = %.noexc18, %.thread.i, %bb.d
  %i.ai = phi ptr [ @12, %.thread.i ], [ @2, %bb.d ], [ @4, %.noexc18 ]
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai) #22
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

bb.k:                                             ; preds = %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf13copy_to_bytesCsbNM6vbj4kjf_9usernames.exit
  invoke void @_RNvXs_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes9bytes_mut8BytesMutECsbNM6vbj4kjf_9usernames.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes5bytes5BytesECsbNM6vbj4kjf_9usernames.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes9bytes_mut8BytesMutECsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes9bytes_mut8BytesMutECsbNM6vbj4kjf_9usernames.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit

bb.n:                                             ; preds = %.invoke, %bb.j, %bb.i, %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.042.0.copyload) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.042.0.copyload, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !230, !nonnull !4, !noundef !4
  invoke void %i.am(ptr noundef %.sroa.11.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.846.0.copyload)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes5bytes5BytesECsbNM6vbj4kjf_9usernames.exit unwind label %bb.p, !inline_history !209

bb.o:                                             ; preds = %bb.h
  store i64 %i.af, ptr %i.q, align 8, !alias.scope !228, !noalias !226
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.042.0.copyload) ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.042.0.copyload, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !231, !nonnull !4, !noundef !4
  call void %i.ao(ptr noundef %.sroa.11.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.846.0.copyload), !noalias !231, !inline_history !214
  br label %bb.m

bb.p:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.q:                                             ; preds = %bb.c
  %i.aq = sub nuw i64 %i.i, %i.o
  %.not = icmp ugt i64 %.sroa.0.0.i.i.i, %i.aq
  br i1 %.not, label %bb.s, label %.lr.ph.preheader

bb.r:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #27
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ar = tail call noundef zeroext i1 @_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0.i.i.i, i1 noundef zeroext true) ; 0 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q, %bb.s
  %.val.i.i27.pre = load ptr, ptr %1, align 8
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !232, !noalias !233
  %.pre79 = load i64, ptr %i.h, align 8, !alias.scope !232, !noalias !233
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit
  %i.as = phi i64 [ %i.bn, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ %.val.i.i.i, %.lr.ph.preheader ] ; 3 uses
  %i.at = phi i64 [ %i.bd, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ %.pre79, %.lr.ph.preheader ] ; 2 uses
  %i.au = phi i64 [ %i.bi, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %i.av = phi ptr [ %i.bo, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ %.val.i.i27.pre, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.0.i.i.i2666 = phi i64 [ %.sroa.0.0.i.i.i26, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ %.sroa.0.0.i.i.i, %.lr.ph.preheader ] ; 11 uses
  %.sroa.8.065 = phi i64 [ %i.bp, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ %2, %.lr.ph.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.aw = icmp ult i64 %i.at, %i.au
  br i1 %i.aw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.ax = sub nuw i64 %i.at, %i.au
  %.not.i29 = icmp ugt i64 %.sroa.0.0.i.i.i2666, %i.ax
  br i1 %.not.i29, label %bb.v, label %.thread.i30

bb.u:                                             ; preds = %.lr.ph
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22, !noalias !234
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ay = tail call noundef zeroext i1 @_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i.i.i2666, i1 noundef zeroext true), !noalias !233 ; 0 uses
  %.pre.i31 = load i64, ptr %i.n, align 8, !alias.scope !232, !noalias !233 ; 2 uses
  %.pre1.i32 = load i64, ptr %i.h, align 8, !alias.scope !232, !noalias !233
  %i.az = icmp ult i64 %.pre1.i32, %.pre.i31
  br i1 %i.az, label %bb.ab, label %.thread.i30

.thread.i30:                                      ; preds = %bb.v, %bb.t
  %i.ba = phi i64 [ %.pre.i31, %bb.v ], [ %i.au, %bb.t ]
  %i.bb = load ptr, ptr %0, align 8, !alias.scope !232, !noalias !233, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bc, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.av, i64 range(i64 0, -9223372036854775808) %.sroa.0.0.i.i.i2666, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.bd = load i64, ptr %i.h, align 8, !alias.scope !236, !noalias !233, !noundef !4 ; 3 uses
  %i.be = load i64, ptr %i.n, align 8, !alias.scope !236, !noalias !233, !noundef !4 ; 4 uses
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread.i30
  %i.bg = sub nuw i64 %i.bd, %i.be                ; 2 uses
  %i.bh = icmp ugt i64 %.sroa.0.0.i.i.i2666, %i.bg
  br i1 %i.bh, label %bb.z, label %bb.y, !prof !10

bb.x:                                             ; preds = %.thread.i30
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #22, !noalias !237
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bi = add i64 %i.be, %.sroa.0.0.i.i.i2666     ; 3 uses
  %i.bj = icmp ult i64 %i.bi, %i.be
  br i1 %i.bj, label %bb.aa, label %bb.ac

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !238
  store i64 %.sroa.0.0.i.i.i2666, ptr %i.b, align 8, !noalias !238
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bg, ptr %i.bk, align 8, !noalias !238
  call void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) #27, !noalias !237
  unreachable

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #22, !noalias !237
  unreachable

bb.ab:                                            ; preds = %bb.v
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22, !noalias !233
  unreachable

bb.ac:                                            ; preds = %bb.y
  store i64 %i.bi, ptr %i.n, align 8, !alias.scope !236, !noalias !233
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.bl = icmp ult i64 %i.as, %.sroa.0.0.i.i.i2666
  br i1 %i.bl, label %bb.ad, label %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit, !prof !10

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !240
  store i64 %.sroa.0.0.i.i.i2666, ptr %i.a, align 8, !noalias !240
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.as, ptr %i.bm, align 8, !noalias !240
  call void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #27, !noalias !240
  unreachable

_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.ac
  %i.bn = sub nuw i64 %i.as, %.sroa.0.0.i.i.i2666 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.0.0.i.i.i2666 ; 2 uses
  store ptr %i.bo, ptr %1, align 8, !alias.scope !239, !noalias !241, !captures !9
  store i64 %i.bn, ptr %i.g, align 8, !alias.scope !239, !noalias !241
  %i.bp = sub nuw i64 %.sroa.8.065, %.sroa.0.0.i.i.i2666 ; 2 uses
  %.sroa.0.0.i.i.i26 = tail call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bn) ; 2 uses
  %.not51 = icmp eq i64 %.sroa.0.0.i.i.i26, 0
  br i1 %.not51, label %.loopexit, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes5bytes5BytesECsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.n, %bb.l
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.ak, %bb.n ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsq_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB6_14RistrettoPointNtNtB8_6traits14MultiscalarMul15multiscalar_mulRSNtNtB8_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterBO_EECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, 288230376151711744) %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RINvXsx_NtCsdRrpXuHtjOb_16curve25519_dalek7edwardsNtB6_12EdwardsPointNtNtB8_6traits14MultiscalarMul15multiscalar_mulRSNtNtB8_6scalar6ScalarINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtNtB2m_5slice4iter4IterNtNtB8_9ristretto14RistrettoPointENCINvXsq_B3u_B3s_B15_15multiscalar_mulB1Q_B31_E0EECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull %3, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXCseNmJmsPJ47l_7zeroizeaNtB2_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef dereferenceable(1) %0) unnamed_addr #5 {
bb.a:
  store volatile i8 0, ptr %0, align 1
  tail call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %0) #21, !srcloc !6
  ret void
}

; Function Attrs: nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull %0) unnamed_addr #6 {
bb.a:
  tail call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %0) #21, !srcloc !6
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsfkg6qDyjgHi_4hmac9block_apiINtB2_8HmacCoreNtCsj2Wav7G13rI_4sha26Sha256ENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXNtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB2_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1V_IB1V_IB1V_IB1V_IB1V_NtB1X_5UTermNtNtB1Z_3bit2B1ENtB38_2B0EB3m_EB3m_EB3m_EB3m_EENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvXNtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB2_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1V_IB1V_IB1V_IB1V_IB1V_NtB1X_5UTermNtNtB1Z_3bit2B1ENtB38_2B0EB3m_EB3m_EB3m_EB3m_EENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef ptr @_RNvXs1_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val10 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = ptrtoint ptr %.val10 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %.not.not = icmp ule i64 %i.d, %i.f
  %i.g = icmp eq ptr %.val, %.val10
  %or.cond = or i1 %i.g, %.not.not
  br i1 %or.cond, label %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNM6vbj4kjf_9usernames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %.val10, i64 -1 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !alias.scope !244
  br label %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNM6vbj4kjf_9usernames.exit

_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NvNtCsbNM6vbj4kjf_9usernames5error1__NtB7_13UsernameErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !245, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !4, !nonnull !4 ; 12 uses
  switch i8 %i.a, label %default.unreachable144 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
    i8 10, label %bb.m
    i8 11, label %bb.n
  ]

default.unreachable144:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 27) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.m, %bb.i ], [ %i.h, %bb.d ], [ %i.r, %bb.n ], [ %i.i, %bb.e ], [ %i.o, %bb.k ], [ %i.j, %bb.f ], [ %i.q, %bb.m ], [ %i.k, %bb.g ], [ %i.n, %bb.j ], [ %i.l, %bb.h ], [ %i.p, %bb.l ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 20) #25
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 30) #25
  br label %bb.c

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 38) #25
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 21) #25
  br label %bb.c

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 20) #25
  br label %bb.c

bb.i:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 29) #25
  br label %bb.c

bb.j:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 28) #25
  br label %bb.c

bb.k:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 38) #25
  br label %bb.c

bb.l:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 83) #25
  br label %bb.c

bb.m:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 44) #25
  br label %bb.c

bb.n:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 49) #25
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NvNtCsbNM6vbj4kjf_9usernames5errors0_1__NtB7_17UsernameLinkErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !246, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !4, !nonnull !4 ; 6 uses
  switch i8 %i.a, label %default.unreachable72 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
  ]

default.unreachable72:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 49) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.j, %bb.f ], [ %i.h, %bb.d ], [ %i.l, %bb.h ], [ %i.i, %bb.e ], [ %i.k, %bb.g ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 32) #25
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 75) #25
  br label %bb.c

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 83) #25
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 50) #25
  br label %bb.c

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 61) #25
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NvNtCsbNM6vbj4kjf_9usernames5errors_1__NtB7_24ProofVerificationFailureNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !5, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 30) #25
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_CseNmJmsPJ47l_7zeroizeAaj40_NtB5_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef dereferenceable(64) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8
  call void @_RNvXs4_CseNmJmsPJ47l_7zeroizeINtNtNtCsgxBkk5gSRhY_4core5slice4iter7IterMutaENtB5_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i64 } @_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQQRShENtNtB6_8buf_impl3Buf5chunkCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i = load i64, ptr %i.a, align 8, !noundef !4
  %i.b = insertvalue { ptr, i64 } poison, ptr %.val.i.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %.val1.i.i)
  %i.e = insertvalue { ptr, i64 } %i.b, i64 %.sroa.0.0.i, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.not = icmp ugt i64 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !249, !noundef !4 ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !249
  store i64 %1, ptr %i.a, align 8, !noalias !249
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.g, align 8, !noalias !249
  call void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #27, !noalias !249
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.val.i, align 8, !alias.scope !249, !nonnull !4, !noundef !4
  %i.i = sub nuw i64 %i.e, %1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %1
  store ptr %i.j, ptr %.val.i, align 8, !alias.scope !249, !captures !9
  store i64 %i.i, ptr %i.d, align 8, !alias.scope !249
  %i.k = sub nuw i64 %i.c, %1
  store i64 %i.k, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQQRShENtNtB6_8buf_impl3Buf9remainingCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !4, !align !5, !noundef !4
  %i.a = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i = load i64, ptr %i.a, align 8, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %.val.i.i)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB25_2B0EB2i_EB2i_EB2i_EB2i_EB2i_EB2i_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 127
  store i8 0, ptr %i.b, align 1, !alias.scope !252
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 63
  store i8 0, ptr %i.b, align 1, !alias.scope !255
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs17cqnTMcAHA_5bytes3buf4take4TakeQQRShENtNtB7_8buf_impl3Buf13has_remainingCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !258, !nonnull !4, !align !5, !noundef !4
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !258, !nonnull !4, !align !5, !noundef !4
  %i.a = getelementptr i8, ptr %.val.i.i, i64 8
  %.val.i.i.i = load i64, ptr %i.a, align 8, !noalias !258, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !258, !noundef !4
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %.val.i.i.i)
  %i.d = icmp ne i64 %.sroa.0.0.i.i, 0
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_onceB8_(ptr dead_on_unwind noalias nofree noundef writable sret([480 x i8]) align 8 captures(address) dereferenceable(480) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RINvMsm_NtCsgxBkk5gSRhY_4core5arrayAAhj20_j3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointENCINvMBS_BP_10wrap_mut_1By_NCNCNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS00E0EB36_(ptr noalias nofree noundef nonnull sret([480 x i8]) align 8 captures(address) dereferenceable(480) %0, ptr noalias nofree noundef readonly align 1 captures(none) dereferenceable(96) @3)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsdbmLU2M1sR8_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtBJ_7backend6vector4avx27edwards11CachedPointEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtBQ_7backend6vector4avx27edwards11CachedPointEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs3_NtCs43OB2dM8s8d_5prost8encodingINtNtCs6i54tJFfzR_5alloc3vec3VechENtNtB6_6sealed12BytesAdapter12replace_withINtNtNtCs17cqnTMcAHA_5bytes3buf4take4TakeQQRShEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs3_NtCs43OB2dM8s8d_5prost8encodingINtNtCs6i54tJFfzR_5alloc3vec3VechENtNtB6_6sealed12BytesAdapter12replace_withNtNtCs17cqnTMcAHA_5bytes5bytes5BytesECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCsdRrpXuHtjOb_16curve25519_dalek6windowINtB5_11LookupTableNtNtNtNtNtB7_7backend6vector4avx27edwards11CachedPointE6selectCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 32 captures(none) dereferenceable(160), ptr noalias nofree noundef readonly align 32 captures(address, read_provenance) dereferenceable(1280), i8 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs17cqnTMcAHA_5bytes5bytesNtB2_5Bytes12try_into_mut(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13reserve_inner(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VecAaj40_EINtB2_12SpecFromIterBT_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtNtB1w_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarENCINvXNvXNtNtNtNtNtB2G_7backend6vector10scalar_mul6straus9spec_avx2NtB3A_6StrausNtNtB2G_6traits14MultiscalarMul15multiscalar_mulB4w_NtB3x_24___Impl_multiscalar_mul__21__impl_multiscalar_mulB2b_IB1o_IB2c_NtNtB2G_9ristretto14RistrettoPointENCINvXsq_B6K_B6I_B4J_15multiscalar_mulRSB2C_B6D_E0EEs_0EE9from_iterCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtBY_7backend6vector4avx27edwards11CachedPointEEINtB2_12SpecFromIterBT_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapIB36_INtNtNtB3e_5slice4iter4IterNtNtBY_9ristretto14RistrettoPointENCINvXsq_B4r_B4p_NtNtBY_6traits14MultiscalarMul15multiscalar_mulRSNtNtBY_6scalar6ScalarB3Y_E0ENCINvXNvXNtNtNtB1U_10scalar_mul6straus9spec_avx2NtB6C_6StrausB5e_15multiscalar_mulB7f_NtB6z_24___Impl_multiscalar_mul__21__impl_multiscalar_mulIB3Z_B61_EB3T_E0EE9from_iterCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsx_NtCsdRrpXuHtjOb_16curve25519_dalek7edwardsNtB6_12EdwardsPointNtNtB8_6traits14MultiscalarMul15multiscalar_mulRSNtNtB8_6scalar6ScalarINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtNtB2m_5slice4iter4IterNtNtB8_9ristretto14RistrettoPointENCINvXsq_B3u_B3s_B15_15multiscalar_mulB1Q_B31_E0EECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(address) dereferenceable(160), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, 288230376151711744), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E3newCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAaj40_EIBX_INtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtB1C_7backend6vector4avx27edwards11CachedPointEEEINtB5_7ZipImplBW_B1t_E3newCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCsgxBkk5gSRhY_4core5arrayAAhj20_j3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointENCINvMBS_BP_10wrap_mut_1By_NCNCNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS00E0EB36_(ptr dead_on_unwind noalias nofree noundef writable sret([480 x i8]) align 8 captures(address) dereferenceable(480), ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(96)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef align 4 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, 144115188075855872)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvMs7_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_13ExtendedPoint12mul_by_pow_2B1e_NtB2_21___Impl_mul_by_pow_2__18__impl_mul_by_pow_2(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 32 captures(none) dereferenceable(160), ptr noalias nofree noundef readonly align 32 captures(address, read_provenance) dereferenceable(160), i32 noundef) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB2_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1V_IB1V_IB1V_IB1V_IB1V_NtB1X_5UTermNtNtB1Z_3bit2B1ENtB38_2B0EB3m_EB3m_EB3m_EB3m_EENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf13copy_to_bytesCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #2

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_CseNmJmsPJ47l_7zeroizeINtNtNtCsgxBkk5gSRhY_4core5slice4iter7IterMutaENtB5_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #19

end_hunk_1
