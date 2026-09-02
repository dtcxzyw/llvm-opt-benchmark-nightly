Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.05?download=true
inline.NumInlined: 639
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs16create_temp_path:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !886)
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !889, !nonnull !6, !noundef !6 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noalias !889, !noundef !6
  %i.z = add i64 %i.y, -1                         ; 2 uses
  store i64 %i.z, ptr %i.x, align 8, !noalias !889
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECskuiImRAV2ip_9elfshaker.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell10UnsafeCellINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding12ReseedingRngNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtCs9KyBnLVnQBL_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECskuiImRAV2ip_9elfshaker.exit unwind label %bb.h

_RNvXs0_NtCs9KyBnLVnQBL_9rand_core5blockINtB5_8BlockRngINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding13ReseedingCoreNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore10fill_bytesCskuiImRAV2ip_9elfshaker.exit: ; preds = %.noexc1
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %i.ab = load ptr, ptr %i.b, align 8, !alias.scope !893, !nonnull !6, !noundef !6 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !893, !noundef !6
  %i.ad = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ad, ptr %i.ab, align 8, !noalias !893
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECskuiImRAV2ip_9elfshaker.exit3

bb.g:                                             ; preds = %_RNvXs0_NtCs9KyBnLVnQBL_9rand_core5blockINtB5_8BlockRngINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding13ReseedingCoreNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore10fill_bytesCskuiImRAV2ip_9elfshaker.exit
  call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell10UnsafeCellINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding12ReseedingRngNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtCs9KyBnLVnQBL_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECskuiImRAV2ip_9elfshaker.exit3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECskuiImRAV2ip_9elfshaker.exit3: ; preds = %_RNvXs0_NtCs9KyBnLVnQBL_9rand_core5blockINtB5_8BlockRngINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding13ReseedingCoreNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore10fill_bytesCskuiImRAV2ip_9elfshaker.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @_RINvCs7s9T68JqHVf_3hex6encodeAhj10_ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.h:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.w
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs17get_last_modified(ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(176) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsm_NtCsaL1QbXo9JQH_3std2fsNtB5_8Metadata7created(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !range !904, !noundef !6 ; 3 uses
  %i.h = icmp eq i32 %i.g, -1                     ; 4 uses
  %i.i = load i64, ptr %i.e, align 8              ; 6 uses
  %.sroa.0.0 = select i1 %i.h, i64 undef, i64 %i.i
  %i.j = inttoptr i64 %i.i to ptr
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !905
  %i.k = and i64 %i.i, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit
    i64 1, label %bb.d
  ], !prof !13

default.unreachable:                              ; preds = %bb.f, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ult i64 %i.i, 188978561024
  tail call void @llvm.assume(i1 %i.l)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.j, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !906, !noalias !905
  store i8 3, ptr %i.c, align 8, !alias.scope !906, !noalias !905
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n), !noalias !905
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.b, %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !905
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsm_NtCsaL1QbXo9JQH_3std2fsNtB5_8Metadata8modified(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %0)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load i32, ptr %i.o, align 8, !range !904, !noundef !6 ; 3 uses
  %i.q = icmp eq i32 %i.p, -1                     ; 2 uses
  %i.r = load i64, ptr %i.d, align 8              ; 5 uses
  %.sroa.01.0 = select i1 %i.q, i64 undef, i64 %i.r
  %i.s = inttoptr i64 %i.r to ptr
  br i1 %i.q, label %bb.f, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !907
  %i.t = and i64 %i.r, 3
  switch i64 %i.t, label %default.unreachable [
    i64 2, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i
    i64 1, label %bb.h
  ], !prof !13

bb.g:                                             ; preds = %bb.f
  %i.u = icmp ult i64 %i.r, 188978561024
  call void @llvm.assume(i1 %i.u)
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.s, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !alias.scope !908, !noalias !907
  store i8 3, ptr %i.b, align 8, !alias.scope !908, !noalias !907
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w), !noalias !907
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.h, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtBc_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEBV_ENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1j_NtNtBc_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker.exit.thread12.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.h, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker.exit.i.thread, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker.exit.thread12.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker.exit.i.thread: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i.thread
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker.exit.thread12.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker.exit.thread12.i: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i
  %.sroa.10.0 = phi i32 [ -1, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker.exit.i.thread ], [ -1, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i ], [ %i.p, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i.thread ]
  %.sroa.5.013 = phi i32 [ -2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker.exit.i.thread ], [ -1, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i ], [ -1, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i.thread ]
  %.pn2.i.i19.i = phi i32 [ %i.p, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker.exit.i.thread ], [ %i.g, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i ], [ %i.g, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i.thread ]
  %.pn4.i.i18.i = phi i64 [ %i.r, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker.exit.i.thread ], [ %i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i ], [ %i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !909
  store i64 %.sroa.0.0, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sroa.5.013, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.01.0, ptr %.sroa.812.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  %i.x = call { i64, i32 } @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1o_NvYB1o_NtNtBb_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, i64 noundef %.pn4.i.i18.i, i32 noundef %.pn2.i.i19.i), !noalias !909 ; 2 uses
  %i.y = extractvalue { i64, i32 } %i.x, 0
  %i.z = extractvalue { i64, i32 } %i.x, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !909
  br label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtBc_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEBV_ENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1j_NtNtBc_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtBc_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEBV_ENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1j_NtNtBc_3cmp3Ord3maxECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker.exit.thread12.i
  %.sroa.2.0.i = phi i32 [ %i.z, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker.exit.thread12.i ], [ -1, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i ]
  %.sroa.0.0.i = phi i64 [ %i.y, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker.exit.thread12.i ], [ undef, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtCsaL1QbXo9JQH_3std4time10SystemTimeEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskuiImRAV2ip_9elfshaker.exit.i.i ]
  %i.aa = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.i, 0
  %i.ab = insertvalue { i64, i32 } %i.aa, i32 %.sroa.2.0.i, 1
  ret { i64, i32 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 12 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !912
  call void @_RNvXsi_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
  %i.c = load i8, ptr %i.a, align 8, !range !913, !noalias !912, !noundef !6 ; 2 uses
  %.not15.not.i = icmp eq i8 %i.c, -1
  br i1 %.not15.not.i, label %_RINvYNtNtCsaL1QbXo9JQH_3std4path10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBG_3any5checkNtB5_9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0INtNtNtBO_3ops12control_flow11ControlFlowuEEB2s_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.710.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkNtNtCsaL1QbXo9JQH_3std4path9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0B1U_.exit.thread.i, %.lr.ph.i
  %i.d = phi i8 [ %i.c, %.lr.ph.i ], [ %i.n, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkNtNtCsaL1QbXo9JQH_3std4path9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0B1U_.exit.thread.i ] ; 2 uses
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !912
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !912
  %i.e = icmp samesign ugt i8 %i.d, 5
  %i.f = zext nneg i8 %i.d to i64
  %i.g = add nsw i64 %i.f, -5
  %i.h = select i1 %i.e, i64 %i.g, i64 0
  switch i64 %i.h, label %bb.c [
    i64 0, label %_RNvMs4_NtCsaL1QbXo9JQH_3std4pathNtB5_9Component9as_os_str.exit.i.i.i
    i64 1, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkNtNtCsaL1QbXo9JQH_3std4path9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0B1U_.exit.thread.i
    i64 2, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkNtNtCsaL1QbXo9JQH_3std4path9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0B1U_.exit.thread.i
    i64 3, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkNtNtCsaL1QbXo9JQH_3std4path9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0B1U_.exit.i
    i64 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %.sroa.710.0.copyload.i = load i64, ptr %.sroa.710.0..sroa_idx.i, align 8, !noalias !912
  %.sroa.69.0.copyload.i = load i64, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !912
  br label %_RNvMs4_NtCsaL1QbXo9JQH_3std4pathNtB5_9Component9as_os_str.exit.i.i.i

_RNvMs4_NtCsaL1QbXo9JQH_3std4pathNtB5_9Component9as_os_str.exit.i.i.i: ; preds = %bb.d, %bb.b
  %.sink7.i.sroa.phi.sroa.speculated.in.in.i.sroa.speculated.i = phi i64 [ %.sroa.69.0.copyload.i, %bb.d ], [ %.sroa.9.0.copyload.i, %bb.b ]
  %.sink.i.sroa.phi.sroa.speculated.in.i.sroa.speculated.i = phi i64 [ %.sroa.710.0.copyload.i, %bb.d ], [ %.sroa.10.0.copyload.i, %bb.b ]
  %.sink7.i.sroa.phi.sroa.speculated.i.i = inttoptr i64 %.sink7.i.sroa.phi.sroa.speculated.in.in.i.sroa.speculated.i to ptr
  %i.i = icmp eq i64 %.sink.i.sroa.phi.sroa.speculated.in.i.sroa.speculated.i, 2
  br i1 %i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkNtNtCsaL1QbXo9JQH_3std4path9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0B1U_.exit.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkNtNtCsaL1QbXo9JQH_3std4path9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0B1U_.exit.thread.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkNtNtCsaL1QbXo9JQH_3std4path9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0B1U_.exit.i: ; preds = %_RNvMs4_NtCsaL1QbXo9JQH_3std4pathNtB5_9Component9as_os_str.exit.i.i.i, %bb.b
  %.sroa.0.0.i6.i.i.i = phi ptr [ %.sink7.i.sroa.phi.sroa.speculated.i.i, %_RNvMs4_NtCsaL1QbXo9JQH_3std4pathNtB5_9Component9as_os_str.exit.i.i.i ], [ @11, %bb.b ]
  %i.j = load i16, ptr %.sroa.0.0.i6.i.i.i, align 1
  %i.k = icmp ne i16 %i.j, 11822
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvYNtNtCsaL1QbXo9JQH_3std4path10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBG_3any5checkNtB5_9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0INtNtNtBO_3ops12control_flow11ControlFlowuEEB2s_.exit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkNtNtCsaL1QbXo9JQH_3std4path9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0B1U_.exit.thread.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkNtNtCsaL1QbXo9JQH_3std4path9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0B1U_.exit.thread.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkNtNtCsaL1QbXo9JQH_3std4path9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0B1U_.exit.i, %_RNvMs4_NtCsaL1QbXo9JQH_3std4pathNtB5_9Component9as_os_str.exit.i.i.i, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !912
  call void @_RNvXsi_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
  %i.n = load i8, ptr %i.a, align 8, !range !913, !noalias !912, !noundef !6 ; 2 uses
  %.not.not.i = icmp eq i8 %i.n, -1
  br i1 %.not.not.i, label %_RINvYNtNtCsaL1QbXo9JQH_3std4path10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBG_3any5checkNtB5_9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0INtNtNtBO_3ops12control_flow11ControlFlowuEEB2s_.exit, label %bb.b

_RINvYNtNtCsaL1QbXo9JQH_3std4path10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBG_3any5checkNtB5_9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0INtNtNtBO_3ops12control_flow11ControlFlowuEEB2s_.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkNtNtCsaL1QbXo9JQH_3std4path9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0B1U_.exit.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkNtNtCsaL1QbXo9JQH_3std4path9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0B1U_.exit.thread.i, %bb.a
  %.not14.i = phi i1 [ false, %bb.a ], [ true, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkNtNtCsaL1QbXo9JQH_3std4path9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0B1U_.exit.i ], [ false, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkNtNtCsaL1QbXo9JQH_3std4path9ComponentNCNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29contains_parent_dir_component0E0B1U_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not14.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCskuiImRAV2ip_9elfshaker4repo2fsNtB5_26EmptyDirectoryCleanupQueueNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = tail call noundef ptr @_RNvMNtNtCskuiImRAV2ip_9elfshaker4repo2fsNtB2_26EmptyDirectoryCleanupQueue7process(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6expectCskuiImRAV2ip_9elfshaker.exit, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 69, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #23
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6expectCskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtB9_8adapters8peekable8PeekableINtNtNtBb_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std4path7PathBufEENtB5_8Iterator9size_hintCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !18, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !alias.scope !918, !noalias !917, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !918, !noalias !917, !align !18, !noundef !6
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtBa_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std4path7PathBufEENtNtNtB8_6traits8iterator8Iterator9size_hintCskuiImRAV2ip_9elfshaker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !918, !noalias !917, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val8.i = load ptr, ptr %i.g, align 8, !alias.scope !918, !noalias !917, !nonnull !6, !noundef !6
  %i.h = ptrtoint ptr %.val8.i to i64
  %i.i = ptrtoint ptr %.val.i to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 24
  %i.l = add nuw nsw i64 %i.k, %.sroa.0.0.i
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtBa_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std4path7PathBufEENtNtNtB8_6traits8iterator8Iterator9size_hintCskuiImRAV2ip_9elfshaker.exit

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtBa_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std4path7PathBufEENtNtNtB8_6traits8iterator8Iterator9size_hintCskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.b, %bb.c
  %.sink11.i = phi i64 [ %i.l, %bb.c ], [ 0, %bb.b ] ; 2 uses
  store i64 %.sink11.i, ptr %0, align 8, !alias.scope !917, !noalias !918
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.m, align 8, !alias.scope !917, !noalias !918
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink11.i, ptr %i.n, align 8, !alias.scope !917, !noalias !918
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtB9_8adapters8peekable8PeekableINtNtNtBb_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtB5_8Iterator9size_hintB1V_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !18, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !alias.scope !923, !noalias !922, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !923, !noalias !922, !align !18, !noundef !6
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtBa_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtB8_6traits8iterator8Iterator9size_hintB1z_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !923, !noalias !922, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val8.i = load ptr, ptr %i.g, align 8, !alias.scope !923, !noalias !922, !nonnull !6, !noundef !6
  %i.h = ptrtoint ptr %.val8.i to i64
  %i.i = ptrtoint ptr %.val.i to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 6
  %i.l = add nuw nsw i64 %i.k, %.sroa.0.0.i
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtBa_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtB8_6traits8iterator8Iterator9size_hintB1z_.exit

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtBa_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtB8_6traits8iterator8Iterator9size_hintB1z_.exit: ; preds = %bb.b, %bb.c
  %.sink11.i = phi i64 [ %i.l, %bb.c ], [ 0, %bb.b ] ; 2 uses
  store i64 %.sink11.i, ptr %0, align 8, !alias.scope !922, !noalias !923
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.m, align 8, !alias.scope !922, !noalias !923
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink11.i, ptr %i.n, align 8, !alias.scope !922, !noalias !923
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtB9_8adapters8peekable8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRSmEENtB5_8Iterator9size_hintCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !18, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !alias.scope !928, !noalias !927, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !928, !noalias !927, !align !25, !noundef !6
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRSmEENtNtNtB8_6traits8iterator8Iterator9size_hintCskuiImRAV2ip_9elfshaker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !928, !noalias !927, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.val8.i = load ptr, ptr %i.g, align 8, !alias.scope !928, !noalias !927, !nonnull !6, !noundef !6
  %i.h = ptrtoint ptr %.val8.i to i64
  %i.i = ptrtoint ptr %.val.i to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 4
  %i.l = add nuw nsw i64 %i.k, %.sroa.0.0.i
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRSmEENtNtNtB8_6traits8iterator8Iterator9size_hintCskuiImRAV2ip_9elfshaker.exit

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRSmEENtNtNtB8_6traits8iterator8Iterator9size_hintCskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.b, %bb.c
  %.sink11.i = phi i64 [ %i.l, %bb.c ], [ 0, %bb.b ] ; 2 uses
  store i64 %.sink11.i, ptr %0, align 8, !alias.scope !927, !noalias !928
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.m, align 8, !alias.scope !927, !noalias !928
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink11.i, ptr %i.n, align 8, !alias.scope !927, !noalias !928
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtB9_8adapters8peekable8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB1w_3VecNtNtB2m_7packidx9FileEntryEEEENtB5_8Iterator9size_hintB2m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !18, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  %i.b = load i64, ptr %i.a, align 8, !range !934, !alias.scope !933, !noalias !932, !noundef !6
  switch i64 %i.b, label %bb.c [
    i64 -1, label %bb.b
    i64 2, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB1a_3VecNtNtB20_7packidx9FileEntryEEEENtNtNtB8_6traits8iterator8Iterator9size_hintB20_.exit
  ]

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !933, !noalias !932, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.val9.i = load ptr, ptr %i.d, align 8, !alias.scope !933, !noalias !932, !nonnull !6, !noundef !6
  %i.e = ptrtoint ptr %.val9.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 96
  %i.i = add nuw nsw i64 %i.h, %.sroa.0.0.i
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB1a_3VecNtNtB20_7packidx9FileEntryEEEENtNtNtB8_6traits8iterator8Iterator9size_hintB20_.exit

bb.c:                                             ; preds = %bb.a
end_hunk_0
