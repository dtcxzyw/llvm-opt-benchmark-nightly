Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet-c385aabb6bb9f330.git_xet.1707f0b00a162dc9-cgu.09?download=true
inline.NumInlined: 263
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCs1YANDSn9Kib_7git_xet }>, align 8
@1 = private unnamed_addr constant [80 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/str/pattern.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"O\00\00\00\00\00\00\00A\06\00\00\14\00\00\00" }>, align 8
@3 = private unnamed_addr constant [3 x i8] c"git", align 1
@4 = private unnamed_addr constant [24 x i8] c"\09program \22\C0\0B\22 not found\00", align 1
@5 = private unnamed_addr constant [8 x i8] c"internal", align 1
@6 = private unnamed_addr constant [13 x i8] c"<Binary Data>", align 1
@7 = private unnamed_addr constant [45 x i8] c"\0Berr_code = \C0\0C, stdout = \22\C0\0D\22, stderr = \22\C0\01\22\00", align 1
@8 = private unnamed_addr constant [38 x i8] c"stdin of child process is not captured", align 1
@9 = private unnamed_addr constant [15 x i8] c"\04lfs.\C0\07.access\00", align 1
@10 = private unnamed_addr constant [3 x i8] c"url", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client6common4auth6basics22BearerCredentialHelperECs1YANDSn9Kib_7git_xet, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client6common4auth6basicsNtB5_22BearerCredentialHelperNtNtB7_9interface16CredentialHelper15fill_credential, ptr @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client6common4auth6basicsNtB5_22BearerCredentialHelperNtNtB7_9interface16CredentialHelper6whoami }>, align 8
@12 = private unnamed_addr constant [8 x i8] c"HF_TOKEN", align 1
@13 = private unnamed_addr constant [3 x i8] c"env", align 1
@14 = private unnamed_addr constant [3 x i8] c"://", align 1
@15 = private unnamed_addr constant [5 x i8] c"netrc", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh19SSHCredentialHelperEBH_, [16 x i8] c"\F0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCs1YANDSn9Kib_7git_xet4auth3sshNtB4_19SSHCredentialHelperNtNtNtNtCsiAynQAjgDuT_10xet_client6common4auth9interface16CredentialHelper15fill_credential, ptr @_RNvXs_NtNtCs1YANDSn9Kib_7git_xet4auth3sshNtB4_19SSHCredentialHelperNtNtNtNtCsiAynQAjgDuT_10xet_client6common4auth9interface16CredentialHelper6whoami }>, align 8
@17 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCsiAynQAjgDuT_10xet_client6common4auth6basicsNtB5_20NoopCredentialHelperNtNtB7_9interface16CredentialHelper15fill_credential, ptr @_RNvXs0_NtNtNtCsiAynQAjgDuT_10xet_client6common4auth6basicsNtB5_20NoopCredentialHelperNtNtB7_9interface16CredentialHelper6whoami }>, align 8
@18 = private unnamed_addr constant [36 x i8] c"!invalid \22lfs.<url>.access\22 type: \C0\00", align 1
@19 = private unnamed_addr constant [4 x i8] c"noop", align 1
@20 = private unnamed_addr constant [4 x i8] c"None", align 1
@21 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRlNtB6_5Debug3fmtCs1YANDSn9Kib_7git_xet }>, align 8
@22 = private unnamed_addr constant [4 x i8] c"Some", align 1
@23 = private unnamed_addr constant [3 x i8] c"ssh", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"O\00\00\00\00\00\00\00|\04\00\00$\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsf1bHqHEg0eP_12clap_builder7builder7commandNtB3_7Command3argNtNtB5_3arg3ArgECs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(712) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(600) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [600 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(600) %2, i64 600, i1 false), !alias.scope !20
  invoke void @_RNvMNtNtCsf1bHqHEg0eP_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(600) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf1bHqHEg0eP_12clap_builder7builder7command7CommandECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(712) %1) #18
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %1, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtNtCsf1bHqHEg0eP_12clap_builder7builder7commandNtB3_7Command3newReECs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) initializes((0, 8), (16, 40), (56, 280), (296, 304), (320, 328), (344, 352), (368, 376), (392, 400), (416, 424), (440, 448), (464, 472), (488, 496), (512, 520), (536, 544), (560, 584), (592, 600), (608, 616), (624, 632), (640, 648), (656, 664), (672, 680), (688, 709)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i32 -1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 -1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 -1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 -1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 -1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 -1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 -1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 -1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %.sroa.528.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 -1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 -1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 -1, ptr %i.s, align 8
  store i64 0, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 -1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 700
  store i32 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i32 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.w, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.542.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx, align 8
  %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 0, ptr %.sroa.534.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr null, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr null, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 708
  store i8 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.af, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.556.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx, align 8
  %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 0, ptr %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtNtCsf1bHqHEg0eP_12clap_builder7builder9arg_groupNtB3_8ArgGroup2idReECs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) initializes((72, 88)) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %3, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtNtCsf1bHqHEg0eP_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j0_ECs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsf1bHqHEg0eP_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j1_ECs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 10 uses
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %2, align 8, !alias.scope !30, !nonnull !4, !noundef !4
  %.sroa.5.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa_idx, align 8, !alias.scope !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.b = invoke { ptr, i64 } @_RNvXsk_NtNtCsf1bHqHEg0eP_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.4.0.copyload)
          to label %bb.c unwind label %bb.b, !noalias !32 ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf1bHqHEg0eP_12clap_builder7builder9arg_group8ArgGroupECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #18
          to label %bb.h unwind label %bb.f, !noalias !33

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %3, label %bb.d

3:                                                ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %4, align 8, !alias.scope !31
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = extractvalue { ptr, i64 } %i.b, 1
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = load i64, ptr %5, align 8, !alias.scope !34, !noundef !4 ; 3 uses
  %i.h = load i64, ptr %i.a, align 8, !range !5, !alias.scope !34, !noundef !4
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #20
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.b, !noalias !33

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.e, %bb.d
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %6, align 8, !alias.scope !34, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 2 uses
  store ptr %i.d, ptr %i.k, align 8, !noalias !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.f, ptr %i.l, align 8, !noalias !33
  %i.m = add i64 %i.g, 1
  store i64 %i.m, ptr %5, align 8, !alias.scope !34
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !33
  unreachable

bb.g:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i, %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsf1bHqHEg0eP_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j2_ECs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = alloca [96 x i8], align 8                ; 8 uses
  %.sroa.6.16.copyload = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.8.16.copyload = load i64, ptr %.sroa.8.16..sroa_idx, align 8
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.9.16.copyload = load ptr, ptr %.sroa.9.16..sroa_idx, align 8 ; 2 uses
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.10.16.copyload = load i64, ptr %.sroa.10.16..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.e = invoke { ptr, i64 } @_RNvXsk_NtNtCsf1bHqHEg0eP_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.16.copyload, i64 noundef %.sroa.8.16.copyload)
          to label %bb.c unwind label %bb.b, !noalias !47 ; 2 uses

bb.b:                                             ; preds = %bb.j, %bb.g, %bb.e, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf1bHqHEg0eP_12clap_builder7builder9arg_group8ArgGroupECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #18
          to label %bb.l unwind label %bb.f, !noalias !45

bb.c:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { ptr, i64 } %i.e, 1
  %i.j = load i64, ptr %i.c, align 8, !alias.scope !48, !noundef !4 ; 3 uses
  %i.k = load i64, ptr %i.a, align 8, !range !5, !alias.scope !48, !noundef !4
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #20
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.b, !noalias !45

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !48, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.j ; 2 uses
  store ptr %i.g, ptr %i.n, align 8, !noalias !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.i, ptr %i.o, align 8, !noalias !45
  %i.p = add i64 %i.j, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !45
  unreachable

bb.g:                                             ; preds = %bb.c, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i
  %storemerge = phi i64 [ %i.p, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i ], [ 0, %bb.c ]
  store i64 %storemerge, ptr %i.c, align 8, !alias.scope !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !alias.scope !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.16.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.r = invoke { ptr, i64 } @_RNvXsk_NtNtCsf1bHqHEg0eP_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.16.copyload, i64 noundef %.sroa.10.16.copyload)
          to label %bb.h unwind label %bb.b, !noalias !52 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.s = extractvalue { ptr, i64 } %i.r, 0        ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = extractvalue { ptr, i64 } %i.r, 1
  %i.v = load i64, ptr %i.c, align 8, !alias.scope !53, !noundef !4 ; 3 uses
  %i.w = load i64, ptr %i.a, align 8, !range !5, !alias.scope !53, !noundef !4
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.j, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i.1

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #20
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i.1 unwind label %bb.b, !noalias !50

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i.1: ; preds = %bb.j, %bb.i
  %i.y = load ptr, ptr %i.d, align 8, !alias.scope !53, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.v ; 2 uses
  store ptr %i.s, ptr %i.z, align 8, !noalias !54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.u, ptr %i.aa, align 8, !noalias !50
  %i.ab = add i64 %i.v, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i.1
  %storemerge18 = phi i64 [ %i.ab, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i.1 ], [ 0, %bb.h ]
  store i64 %storemerge18, ptr %i.c, align 8, !alias.scope !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !alias.scope !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsf1bHqHEg0eP_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j4_ECs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 27 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %.sroa.6.16.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.8.16.copyload = load i64, ptr %.sroa.8.16..sroa_idx, align 8
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.9.16.copyload = load ptr, ptr %.sroa.9.16..sroa_idx, align 8 ; 2 uses
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.10.16.copyload = load i64, ptr %.sroa.10.16..sroa_idx, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.11.16.copyload = load ptr, ptr %.sroa.11.16..sroa_idx, align 8 ; 2 uses
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.12.16.copyload = load i64, ptr %.sroa.12.16..sroa_idx, align 8
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.13.16.copyload = load ptr, ptr %.sroa.13.16..sroa_idx, align 8 ; 2 uses
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.14.16.copyload = load i64, ptr %.sroa.14.16..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.e = invoke { ptr, i64 } @_RNvXsk_NtNtCsf1bHqHEg0eP_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.16.copyload, i64 noundef %.sroa.8.16.copyload)
          to label %bb.c unwind label %bb.b, !noalias !72 ; 2 uses

bb.b:                                             ; preds = %bb.r, %bb.o, %bb.n, %bb.k, %bb.j, %bb.g, %bb.e, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf1bHqHEg0eP_12clap_builder7builder9arg_group8ArgGroupECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #18
          to label %bb.t unwind label %bb.f, !noalias !70

bb.c:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { ptr, i64 } %i.e, 1
  %i.j = load i64, ptr %i.c, align 8, !alias.scope !73, !noundef !4 ; 3 uses
  %i.k = load i64, ptr %i.a, align 8, !range !5, !alias.scope !73, !noundef !4
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #20
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.b, !noalias !70

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !73, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.j ; 2 uses
  store ptr %i.g, ptr %i.n, align 8, !noalias !74
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.i, ptr %i.o, align 8, !noalias !70
  %i.p = add i64 %i.j, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !70
  unreachable

bb.g:                                             ; preds = %bb.c, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i
  %storemerge = phi i64 [ %i.p, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util2id2IdE8push_mutCs1YANDSn9Kib_7git_xet.exit.i ], [ 0, %bb.c ]
  store i64 %storemerge, ptr %i.c, align 8, !alias.scope !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !alias.scope !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.16.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_0
