Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ra_ap_rustc_abi-904350017a626154.ra_ap_rustc_abi.3eead819dacdc8c-cgu.0?download=true
inline.NumInlined: 173
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/ra-ap-rustc_abi-0.165.0/src/lib.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"g\00\00\00\00\00\00\006\03\00\00)\00\00\00" }>, align 8
@2 = private unnamed_addr constant [4 x i8] c"size", align 1
@3 = private unnamed_addr constant [9 x i8] c"alignment", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"g\00\00\00\00\00\00\00\BE\01\00\00J\00\00\00" }>, align 8
@5 = private unnamed_addr constant [1 x i8] c"P", align 1
@6 = private unnamed_addr constant [1 x i8] c"a", align 1
@7 = private unnamed_addr constant [3 x i8] c"f16", align 1
@8 = private unnamed_addr constant [3 x i8] c"f32", align 1
@9 = private unnamed_addr constant [3 x i8] c"f64", align 1
@10 = private unnamed_addr constant [4 x i8] c"f128", align 1
@11 = private unnamed_addr constant [1 x i8] c"p", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"g\00\00\00\00\00\00\00\F3\01\00\005\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"g\00\00\00\00\00\00\00\FA\01\00\001\00\00\00" }>, align 8
@14 = private unnamed_addr constant [2 x i8] c"p-", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"g\00\00\00\00\00\00\005\02\00\00/\00\00\00" }>, align 8
@16 = private unnamed_addr constant [1 x i8] c"v", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"g\00\00\00\00\00\00\00 \02\00\00%\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"g\00\00\00\00\00\00\00!\02\00\00&\00\00\00" }>, align 8
@19 = private unnamed_addr constant [1 x i8] c"i", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"g\00\00\00\00\00\00\00\C6\01\00\005\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"g\00\00\00\00\00\00\00\CD\01\00\001\00\00\00" }>, align 8
@22 = private unnamed_addr constant [49 x i8] c"\0CSize::bits: \C0! bytes in bits doesn't fit in u64\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"g\00\00\00\00\00\00\00N\03\00\00\0D\00\00\00" }>, align 8
@24 = private unnamed_addr constant [6 x i8] c"little", align 1
@25 = private unnamed_addr constant [3 x i8] c"big", align 1
@26 = private unnamed_addr constant [22 x i8] c"\11unknown endian: \22\C0\01\22\00", align 1
@27 = private unnamed_addr constant [16 x i8] c"\05Size(\C0\07 bytes)\00", align 1
@28 = private unnamed_addr constant [17 x i8] c"\06Align(\C0\07 bytes)\00", align 1
@29 = private unnamed_addr constant [23 x i8] c"\C0\14 is not a power of 2\00", align 1
@30 = private unnamed_addr constant [16 x i8] c"\C0\0D is too large\00", align 1
@31 = private unnamed_addr constant [7 x i8] c"\C0\03..=\C0\00", align 1
@32 = private unnamed_addr constant [18 x i8] c"\04(..=\C0\05) | (\C0\03..)\00", align 1
@switch.table._RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size = private unnamed_addr constant [4 x i8] c"\02\04\08\10", align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, 268435457) i64 @_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size9from_bitslEB6_(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %narrow = add nuw i32 %0, 7
  %i.b = lshr i32 %narrow, 3
  %.sroa.02.0 = zext nneg i32 %i.b to i64
  ret i64 %.sroa.02.0

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtB1b_11PointerSpecEEEB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBI_11PointerSpecEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBP_11PointerSpecEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtB1i_11PointerSpecEEEB1i_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBP_11PointerSpecEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtB1i_11PointerSpecEEEB1i_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeNtBI_5AlignEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeNtBP_5AlignEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeNtBP_5AlignEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeNtB1b_5AlignEEEB1b_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtB1b_11PointerSpecEEEB1b_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #20
          to label %common.resume unwind label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeNtB1b_5AlignEEEB1b_.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBI_11PointerSpecEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtB1b_11PointerSpecEEEB1b_.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeNtB1b_5AlignEEEB1b_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBP_11PointerSpecEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtB1b_11PointerSpecEEEB1b_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeNtB1b_5AlignEEEB1b_.exit
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBP_11PointerSpecEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.h:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout33parse_from_llvm_datalayout_string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 5 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.41548 = alloca [28 x i8], align 4        ; 4 uses
  %i.l = alloca [72 x i8], align 8                ; 14 uses
  %i.m = alloca [24 x i8], align 8                ; 17 uses
  %i.n = alloca [72 x i8], align 8                ; 29 uses
  %i.o = alloca [96 x i8], align 8                ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !130
  %i.p = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #21, !noalias !130 ; 6 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.b, label %.lr.ph.lr.ph, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #22, !noalias !130
  unreachable

.body:                                            ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eq, %bb.ap, %bb.al, %.loopexit1757.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit1757.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fy, %bb.ap ], [ %i.fw, %bb.al ], [ %i.vv, %bb.eq ], [ %lpad.loopexit.split-lp4994, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutEBD_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.o) #20
          to label %bb.ke unwind label %bb.kd

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %select.unfold, %bb.er, %bb.d, %bb.am, %bb.aq, %bb.k
  %lpad.loopexit.split-lp4994 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph.lr.ph:                                     ; preds = %bb.a
  store i64 8, ptr %i.p, align 8, !noalias !130
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i8 3, ptr %i.r, align 8, !noalias !130
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 16, ptr %i.s, align 8, !noalias !130
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i8 4, ptr %i.t, align 8, !noalias !130
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 80 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 82
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 83
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 84
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 85
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 86
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 89
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 90
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 91
  store <4 x i8> <i8 1, i8 2, i8 3, i8 4>, ptr %i.ab, align 8, !alias.scope !130
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 92 ; 2 uses
  store i8 0, ptr %i.af, align 4, !alias.scope !130
  store i64 2, ptr %i.o, align 8, !alias.scope !130
  %.sroa.4.0..sroa_idx91.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx91.i, align 8, !alias.scope !130
  %.sroa.5.0..sroa_idx92.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  store i64 2, ptr %.sroa.5.0..sroa_idx92.i, align 8, !alias.scope !130
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 4 uses
  store i64 8, ptr %i.ah, align 8, !alias.scope !130
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 3 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !130
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  store i8 3, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !130
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 65 ; 3 uses
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 1, !alias.scope !130
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 7 uses
  store i64 0, ptr %i.ai, align 8, !alias.scope !130
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !130
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 7 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !130
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 76 ; 3 uses
  store i32 0, ptr %i.aj, align 4, !alias.scope !130
  store <8 x i8> <i8 1, i8 2, i8 0, i8 0, i8 1, i8 2, i8 2, i8 2>, ptr %i.u, align 8, !alias.scope !130
  store i32 %3, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store ptr %1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  store i64 %2, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 16 uses
  store i64 0, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  store i64 %2, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 3 uses
  store i32 45, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  store i32 45, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx, align 4
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  store i8 1, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.4349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  store i8 1, ptr %.sroa.4349.0..sroa_idx, align 8
  %.sroa.5350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 65 ; 3 uses
  store i8 0, ptr %.sroa.5350.0..sroa_idx, align 1
  %.sroa.4353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5354.sroa.4.0..sroa.5354.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.5354.sroa.5.0..sroa.5354.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.5354.sroa.6.0..sroa.5354.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.5354.sroa.7.0..sroa.5354.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.5354.sroa.8.0..sroa.5354.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %.sroa.5354.sroa.9.0..sroa.5354.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.6355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sroa.7356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 65
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit
  %.promoted23642471 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %.promoted2364, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit ]
  %.sroa.0.0.ph2469 = phi i64 [ 64, %.lr.ph.lr.ph ], [ %.sroa.0.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit ] ; 18 uses
  %.val.i = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !131, !nonnull !5, !noundef !5 ; 3 uses
  %.val1.i = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !alias.scope !131, !noundef !5 ; 2 uses
  %i.am = load i64, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !alias.scope !132, !noundef !5 ; 5 uses
  %.not.i.i = icmp ugt i64 %i.am, %.val1.i
  %i.an = load i8, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %i.ao = zext nneg i8 %i.an to i64               ; 4 uses
  %i.ap = icmp ult i8 %i.an, 5
  %i.aq = getelementptr i8, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, i64 %i.ao
  %i.ar = getelementptr i8, ptr %i.aq, i64 -1
  %i.as = load i8, ptr %.sroa.4349.0..sroa_idx, align 8, !range !6
  %i.at = trunc nuw i8 %i.as to i1
  %.pre2.i.i = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.promoted2405 = load i64, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit973
  %.lcssa23602408 = phi i64 [ %.promoted2405, %.lr.ph ], [ %.lcssa23602406, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit973 ] ; 3 uses
  %.lcssa180323662402 = phi i64 [ %.promoted23642471, %.lr.ph ], [ %.lcssa18032365, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit973 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.au = icmp ult i64 %i.am, %.lcssa23602408
  %or.cond20.i.i = or i1 %.not.i.i, %i.au
  br i1 %or.cond20.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %bb.c
  call void @llvm.assume(i1 %i.ap)
  %.pre.i.i = load i8, ptr %i.ar, align 1, !alias.scope !132 ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.g, %.lr.ph.split.preheader.i.i
  %i.av = phi i64 [ %i.bk, %bb.g ], [ %.lcssa23602408, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %i.aw = sub nuw i64 %i.am, %i.av                ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.av ; 2 uses
  %i.ay = icmp samesign ult i64 %i.aw, 16
  br i1 %i.ay, label %.preheader.i.i.i, label %bb.d

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %.lr.ph.split.i.i
  %i.az = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef range(i64 0, -9223372036854775808) %i.aw)
          to label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.i.i.i:                                ; preds = %bb.e, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.aw, %bb.e ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.e ], [ 1, %.lr.ph.i.i.i ]
  %i.ba = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.bb = insertvalue { i64, i64 } %i.ba, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.e
  %.sroa.01.05.i.i.i = phi i64 [ %i.bf, %bb.e ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.01.05.i.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !134, !noalias !135, !noundef !5
  %i.be = icmp eq i8 %i.bd, %.pre.i.i
  br i1 %i.be, label %._crit_edge.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bf, %i.aw
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i: ; preds = %bb.d, %._crit_edge.i.i.i
  %.merged.i.i.i = phi { i64, i64 } [ %i.bb, %._crit_edge.i.i.i ], [ %i.az, %bb.d ] ; 2 uses
  %i.bg = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.bh = trunc nuw i64 %i.bg to i1
  br i1 %i.bh, label %bb.f, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i

bb.f:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i
  %i.bi = extractvalue { i64, i64 } %.merged.i.i.i, 1
  %i.bj = add i64 %i.av, 1
  %i.bk = add i64 %i.bj, %i.bi                    ; 8 uses
  %.not11.i.i = icmp ult i64 %i.bk, %i.ao
  %.not12.i.i = icmp ugt i64 %i.bk, %.val1.i
  %or.cond.i.i = or i1 %.not11.i.i, %.not12.i.i
  br i1 %or.cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.bl = icmp ult i64 %i.am, %i.bk
  br i1 %i.bl, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i, label %.lr.ph.split.i.i

bb.h:                                             ; preds = %bb.f
  %i.bm = sub nuw i64 %i.bk, %i.ao                ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bm
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.bn, ptr nonnull %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, i64 %i.ao), !noalias !136
  %i.bo = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bo, label %select.unfold, label %bb.g

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i: ; preds = %bb.g, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i, %bb.c
  %.lcssa23602407 = phi i64 [ %.lcssa23602408, %bb.c ], [ %i.am, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i ], [ %i.bk, %bb.g ]
  store i8 1, ptr %.sroa.5350.0..sroa_idx, align 1, !alias.scope !137
  %.not.i3.i = icmp ne i64 %.pre2.i.i, %.lcssa180323662402
  %or.cond.not.i.i = select i1 %i.at, i1 true, i1 %.not.i3.i
  br i1 %or.cond.not.i.i, label %select.unfold, label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bp = load i32, ptr %i.aj, align 4, !noundef !5 ; 3 uses
  %i.bq = load i32, ptr %i.ag, align 8, !noundef !5
  %.not752 = icmp eq i32 %i.bp, %i.bq
  br i1 %.not752, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout33parse_from_llvm_datalayout_strings6_0EBT_.exit, label %bb.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout33parse_from_llvm_datalayout_strings6_0EBT_.exit: ; preds = %.lr.ph4898, %bb.l, %.outer._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.o, i64 96, i1 false)
  br label %bb.m

bb.i:                                             ; preds = %.outer._crit_edge
  %i.br = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.bs = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noundef !5 ; 5 uses
  %.idx4902 = shl nuw nsw i64 %i.bs, 5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx4902
  %i.bu = icmp eq i64 %i.bs, 0
  br i1 %i.bu, label %._crit_edge4899, label %.lr.ph4898

bb.j:                                             ; preds = %.lr.ph4898
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bt
  br i1 %i.bw, label %._crit_edge4899, label %.lr.ph4898

.lr.ph4898:                                       ; preds = %bb.i, %bb.j
  %i.bx = phi ptr [ %i.bv, %bb.j ], [ %i.br, %bb.i ] ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !noalias !138, !noundef !5
  %i.bz = icmp eq i32 %i.by, %i.bp
  br i1 %i.bz, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout33parse_from_llvm_datalayout_strings6_0EBT_.exit, label %bb.j

._crit_edge4899:                                  ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.41548)
  %.sroa.41548.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.41548, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.41548.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.ca = load i64, ptr %i.ai, align 8, !range !139, !alias.scope !140, !noundef !5
  %i.cb = icmp eq i64 %i.bs, %i.ca
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge4899
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBP_11PointerSpecEE8grow_oneBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai) #23
          to label %._crit_edge3248 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge3248:                                  ; preds = %bb.k
  %.pre3249 = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !140
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge3248, %._crit_edge4899
  %i.cc = phi ptr [ %.pre3249, %._crit_edge3248 ], [ %i.br, %._crit_edge4899 ]
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.cc, i64 %i.bs ; 2 uses
  store i32 %i.bp, ptr %i.cd, align 8
  %.sroa.41548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.41548.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.41548, i64 28, i1 false)
  %i.ce = add i64 %i.bs, 1
  store i64 %i.ce, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !140
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.41548)
  br label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout33parse_from_llvm_datalayout_strings6_0EBT_.exit

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit794, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout33parse_from_llvm_datalayout_strings6_0EBT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

select.unfold:                                    ; preds = %bb.h, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i
  %.lcssa23602406 = phi i64 [ %.lcssa23602407, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i ], [ %i.bk, %bb.h ] ; 15 uses
  %.lcssa18032365 = phi i64 [ %.lcssa180323662402, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i ], [ %i.bk, %bb.h ] ; 15 uses
  %i.cf = phi i1 [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i ], [ false, %bb.h ]
  %.pn2473 = phi i64 [ %.pre2.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i ], [ %i.bm, %bb.h ]
  %.sroa.4.1.i = sub nuw i64 %.pn2473, %.lcssa180323662402 ; 3 uses
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.lcssa180323662402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  store i64 %.sroa.4.1.i, ptr %.sroa.4353.0..sroa_idx, align 8
  store ptr %.sroa.0.1.i, ptr %.sroa.5354.0..sroa_idx, align 8
  store i64 %.sroa.4.1.i, ptr %.sroa.5354.sroa.4.0..sroa.5354.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %.sroa.5354.sroa.5.0..sroa.5354.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.4.1.i, ptr %.sroa.5354.sroa.6.0..sroa.5354.0..sroa_idx.sroa_idx, align 8
  store i32 58, ptr %.sroa.5354.sroa.7.0..sroa.5354.0..sroa_idx.sroa_idx, align 8
  store i32 58, ptr %.sroa.5354.sroa.8.0..sroa.5354.0..sroa_idx.sroa_idx, align 4
  store i8 1, ptr %.sroa.5354.sroa.9.0..sroa.5354.0..sroa_idx.sroa_idx, align 8
  store i8 1, ptr %.sroa.6355.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.7356.0..sroa_idx, align 1
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCshzWfHUSfYae_4core3str4iter5SplitcEE9from_iterCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.l)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cg = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5 ; 34 uses
  %i.ch = load i64, ptr %i.al, align 8, !noundef !5 ; 10 uses
  switch i64 %i.ch, label %bb.as [
    i64 1, label %bb.o
    i64 0, label %.loopexit1798
  ]

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !5 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 1
  %.pre = load ptr, ptr %i.cg, align 8            ; 2 uses
  br i1 %i.ck, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %lhsc = load i8, ptr %.pre, align 1
  switch i8 %lhsc, label %bb.s [
    i8 101, label %bb.q
    i8 69, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  store i8 0, ptr %i.u, align 8
  br label %bb.ak

bb.r:                                             ; preds = %bb.p
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  store i8 1, ptr %i.u, align 8
  br label %bb.ak

.loopexit1757.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ds, %bb.dp, %bb.bg, %bb.bd, %bb.s, %bb.hv, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_alphabeticNtB5_11MultiCharEq7matchesCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i1066, %bb.ep, %bb.dk, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_alphabeticNtB5_11MultiCharEq7matchesCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i, %bb.gi, %bb.gb, %bb.fy, %bb.bs, %bb.bl, %bb.bi, %.invoke4094, %.invoke4092, %.invoke, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_alphabeticENtB5_7Pattern12is_prefix_ofCskVLyBV5N46_15ra_ap_rustc_abi.exit, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_alphabeticENtB5_7Pattern12is_prefix_ofCskVLyBV5N46_15ra_ap_rustc_abi.exit1071
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #20
          to label %.body unwind label %bb.kd

bb.s:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i32 80, ptr %i.k, align 4
  %i.cl = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.pre, i64 noundef %i.cj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 1)
          to label %bb.t unwind label %.loopexit1757.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.cl, label %bb.u, label %bb.as

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  %i.cn = load ptr, ptr %i.cg, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.co = load i64, ptr %i.cm, align 8, !noundef !5 ; 5 uses
  %i.cp = icmp ult i64 %i.co, 2
  br i1 %i.cp, label %.split3353, label %bb.v

.split3353:                                       ; preds = %bb.u
  %i.cq = icmp eq i64 %i.co, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  br i1 %i.cq, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.invoke, !prof !141

bb.v:                                             ; preds = %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !142, !noundef !5
  %i.cu = icmp sgt i8 %i.ct, -65
  %i.cv = add i64 %i.co, -1                       ; 13 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 15 uses
  br i1 %i.cu, label %bb.w, label %.invoke, !prof !141

bb.w:                                             ; preds = %bb.v
  %cond3389 = icmp eq i64 %i.cv, 1
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !143 ; 2 uses
  br i1 %cond3389, label %bb.x, label %thread-pre-split.i

bb.x:                                             ; preds = %bb.w
  switch i8 %i.cx, label %thread-pre-split.i [
    i8 43, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.w, %bb.x
  %cond.i = icmp eq i8 %i.cx, 43                  ; 2 uses
  %i.cy = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.cv, %i.cy        ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i787 = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.0.0.idx.i ; 9 uses
  %i.cz = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.cz, label %.preheader.i, label %.preheader60.i.preheader

.preheader.i:                                     ; preds = %thread-pre-split.i
  %.not5668.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5668.i, label %.loopexit.i, label %.lr.ph.i

.preheader60.i:                                   ; preds = %bb.aa
  %.not55.i = icmp eq i64 %i.dd, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader60.i.preheader

.loopexit.i:                                      ; preds = %.preheader60.i, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.fp, %bb.ai ], [ 0, %.preheader.i ], [ %i.dr, %bb.ab ], [ %i.dz, %bb.ac ], [ %i.eg, %bb.ad ], [ %i.en, %bb.ae ], [ %i.eu, %bb.af ], [ %i.fb, %bb.ag ], [ %i.fi, %bb.ah ], [ %i.dn, %.preheader60.i ]
  %i.da = zext i32 %.sroa.045.1.i to i64
  %i.db = shl nuw i64 %i.da, 32
  br label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit

.preheader60.i.preheader:                         ; preds = %thread-pre-split.i, %.preheader60.i
  %.sroa.0.1.i7884851 = phi ptr [ %i.dc, %.preheader60.i ], [ %.sroa.0.0.i787, %thread-pre-split.i ] ; 2 uses
  %.sroa.15.1.i4850 = phi i64 [ %i.dd, %.preheader60.i ], [ %.sroa.15.0.i, %thread-pre-split.i ]
  %.sroa.045.0.i4849 = phi i32 [ %i.dn, %.preheader60.i ], [ 0, %thread-pre-split.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i7884851, i64 1
  %i.dd = add nsw i64 %.sroa.15.1.i4850, -1       ; 2 uses
  %i.de = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i4849, i32 10) ; 2 uses
  %i.df = extractvalue { i32, i1 } %i.de, 0       ; 2 uses
  %i.dg = extractvalue { i32, i1 } %i.de, 1
  %i.dh = load i8, ptr %.sroa.0.1.i7884851, align 1, !alias.scope !143, !noundef !5 ; 2 uses
  br i1 %i.dg, label %bb.z, label %bb.y, !prof !4

bb.y:                                             ; preds = %.preheader60.i.preheader
  %i.di = zext i8 %i.dh to i32
  %i.dj = add nsw i32 %i.di, -48                  ; 2 uses
  %i.dk = icmp ult i32 %i.dj, 10
  br i1 %i.dk, label %bb.aa, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.z:                                             ; preds = %.preheader60.i.preheader
  %i.dl = add i8 %i.dh, -48
  %i.dm = icmp ult i8 %i.dl, 10
  %spec.select.i = select i1 %i.dm, i64 513, i64 257
  br label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit

bb.aa:                                            ; preds = %bb.y
  %i.dn = add i32 %i.dj, %i.df                    ; 3 uses
  %i.do = icmp ult i32 %i.dn, %i.df
  br i1 %i.do, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.preheader60.i, !prof !4

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.dp = load i8, ptr %.sroa.0.0.i787, align 1, !alias.scope !143, !noundef !5
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add nsw i32 %i.dq, -48                  ; 3 uses
  %i.ds = icmp ult i32 %i.dr, 10
  br i1 %i.ds, label %bb.ab, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.ab:                                            ; preds = %.lr.ph.i
  %.not56.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.ab
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i787, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !alias.scope !143, !noundef !5
  %i.dv = zext i8 %i.du to i32
  %i.dw = add nsw i32 %i.dv, -48                  ; 2 uses
  %i.dx = icmp ult i32 %i.dw, 10
  br i1 %i.dx, label %bb.ac, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.ac:                                            ; preds = %.lr.ph.i.1
  %i.dy = mul nuw nsw i32 %i.dr, 10
  %i.dz = add nuw nsw i32 %i.dw, %i.dy            ; 2 uses
  %.not56.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not56.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i787, i64 2
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !143, !noundef !5
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nsw i32 %i.ec, -48                  ; 2 uses
  %i.ee = icmp ult i32 %i.ed, 10
  br i1 %i.ee, label %bb.ad, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.ad:                                            ; preds = %.lr.ph.i.2
  %i.ef = mul nuw nsw i32 %i.dz, 10
  %i.eg = add nuw nsw i32 %i.ed, %i.ef            ; 2 uses
  %.not56.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not56.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i787, i64 3
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !143, !noundef !5
  %i.ej = zext i8 %i.ei to i32
  %i.ek = add nsw i32 %i.ej, -48                  ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout33parse_from_llvm_datalayout_string:bb.a
bb.ef:                                            ; preds = %thread-pre-split.i.i963, %bb.ee
  %i.ty = phi i8 [ %.pr.i.i964, %thread-pre-split.i.i963 ], [ %i.tx, %bb.ee ]
  %cond.i.i933 = icmp eq i8 %i.ty, 43             ; 2 uses
  %i.tz = sext i1 %cond.i.i933 to i64
  %.sroa.15.0.i.i934 = add nsw i64 %i.tw, %i.tz   ; 4 uses
  %.sroa.0.0.idx.i.i935 = zext i1 %cond.i.i933 to i64
  %.sroa.0.0.i.i936 = getelementptr inbounds nuw i8, ptr %i.tu, i64 %.sroa.0.0.idx.i.i935 ; 2 uses
  %i.ua = icmp samesign ult i64 %.sroa.15.0.i.i934, 17
  br i1 %i.ua, label %.preheader.i.i956, label %.preheader56.i.i937.preheader

.preheader.i.i956:                                ; preds = %bb.ef
  %.not5366.i.i957 = icmp eq i64 %.sroa.15.0.i.i934, 0
  br i1 %.not5366.i.i957, label %bb.en, label %.lr.ph.i.i958

.preheader56.i.i937:                              ; preds = %bb.ei
  %.not52.i.i941 = icmp eq i64 %i.uc, 0
  br i1 %.not52.i.i941, label %_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit.i943, label %.preheader56.i.i937.preheader

.preheader56.i.i937.preheader:                    ; preds = %bb.ef, %.preheader56.i.i937
  %.sroa.0.1.i.i9404829 = phi ptr [ %i.ub, %.preheader56.i.i937 ], [ %.sroa.0.0.i.i936, %bb.ef ] ; 2 uses
  %.sroa.15.1.i.i9394828 = phi i64 [ %i.uc, %.preheader56.i.i937 ], [ %.sroa.15.0.i.i934, %bb.ef ]
  %.sroa.042.0.i.i9384827 = phi i64 [ %i.un, %.preheader56.i.i937 ], [ 0, %bb.ef ]
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i9404829, i64 1
  %i.uc = add nsw i64 %.sroa.15.1.i.i9394828, -1  ; 2 uses
  %i.ud = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i9384827, i64 10) ; 2 uses
  %i.ue = extractvalue { i64, i1 } %i.ud, 0       ; 2 uses
  %i.uf = extractvalue { i64, i1 } %i.ud, 1
  %i.ug = load i8, ptr %.sroa.0.1.i.i9404829, align 1, !alias.scope !155, !noundef !5 ; 2 uses
  br i1 %i.uf, label %bb.eh, label %bb.eg, !prof !4

bb.eg:                                            ; preds = %.preheader56.i.i937.preheader
  %i.uh = zext i8 %i.ug to i32
  %i.ui = add nsw i32 %i.uh, -48                  ; 2 uses
  %i.uj = icmp ult i32 %i.ui, 10
  br i1 %i.uj, label %bb.ei, label %.loopexit.i924

bb.eh:                                            ; preds = %.preheader56.i.i937.preheader
  %i.uk = add i8 %i.ug, -48
  %i.ul = icmp ult i8 %i.uk, 10
  %spec.select.i942 = select i1 %i.ul, i8 2, i8 1
  br label %.loopexit.i924

bb.ei:                                            ; preds = %bb.eg
  %i.um = zext nneg i32 %i.ui to i64
  %i.un = add i64 %i.ue, %i.um                    ; 3 uses
  %i.uo = icmp ult i64 %i.un, %i.ue
  br i1 %i.uo, label %.loopexit.i924, label %.preheader56.i.i937, !prof !4

.lr.ph.i.i958:                                    ; preds = %.preheader.i.i956, %bb.ej
  %.sroa.0.269.i.i959 = phi ptr [ %i.uv, %bb.ej ], [ %.sroa.0.0.i.i936, %.preheader.i.i956 ] ; 2 uses
  %.sroa.15.268.i.i960 = phi i64 [ %i.uu, %bb.ej ], [ %.sroa.15.0.i.i934, %.preheader.i.i956 ]
  %.sroa.042.267.i.i961 = phi i64 [ %i.ux, %bb.ej ], [ 0, %.preheader.i.i956 ]
  %i.up = load i8, ptr %.sroa.0.269.i.i959, align 1, !alias.scope !155, !noundef !5
  %i.uq = zext i8 %i.up to i32
  %i.ur = add nsw i32 %i.uq, -48                  ; 2 uses
  %i.us = icmp ult i32 %i.ur, 10
  br i1 %i.us, label %bb.ej, label %.loopexit.i924

bb.ej:                                            ; preds = %.lr.ph.i.i958
  %i.ut = mul i64 %.sroa.042.267.i.i961, 10
  %i.uu = add nsw i64 %.sroa.15.268.i.i960, -1    ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i959, i64 1
  %i.uw = zext nneg i32 %i.ur to i64
  %i.ux = add i64 %i.ut, %i.uw                    ; 2 uses
  %.not53.i.i962 = icmp eq i64 %i.uu, 0
  br i1 %.not53.i.i962, label %_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit.i943, label %.lr.ph.i.i958

.loopexit.i924:                                   ; preds = %bb.ee, %bb.ee, %bb.ed, %bb.ei, %bb.eg, %.lr.ph.i.i958, %bb.eh
  %.sroa.5.0.ph.i925 = phi i8 [ 2, %bb.ei ], [ %spec.select.i942, %bb.eh ], [ 1, %.lr.ph.i.i958 ], [ 1, %bb.eg ], [ 0, %bb.ed ], [ 1, %bb.ee ], [ 1, %bb.ee ]
  %i.uy = ptrtoint ptr %i.tu to i64
  br label %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit965

_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit.i943: ; preds = %.preheader56.i.i937, %bb.ej
  %.sroa.121.0.i944 = phi i64 [ %i.ux, %bb.ej ], [ %i.un, %.preheader56.i.i937 ] ; 3 uses
  %i.uz = lshr i64 %.sroa.121.0.i944, 3
  %i.va = and i64 %.sroa.121.0.i944, 7
  %.not.i.i945 = icmp ne i64 %i.va, 0
  %i.vb = zext i1 %.not.i.i945 to i64
  %.sroa.02.0.i.i946 = add nuw nsw i64 %i.uz, %i.vb ; 3 uses
  %i.vc = icmp eq i64 %.sroa.121.0.i944, 0
  br i1 %i.vc, label %bb.en, label %bb.ek

bb.ek:                                            ; preds = %_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit.i943
  %i.vd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 0, 2305843009213693953) %.sroa.02.0.i.i946, i1 true) ; 3 uses
  %i.ve = shl nuw nsw i64 1, %i.vd
  %.not.i93.i947 = icmp eq i64 %.sroa.02.0.i.i946, %i.ve
  br i1 %.not.i93.i947, label %bb.el, label %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i948, !prof !141

bb.el:                                            ; preds = %bb.ek
  %i.vf = icmp samesign ugt i64 %i.vd, 29
  br i1 %i.vf, label %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i948, label %bb.em, !prof !4

bb.em:                                            ; preds = %bb.el
  %i.vg = trunc nuw nsw i64 %i.vd to i8
  br label %bb.en

_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i948: ; preds = %bb.el, %bb.ek
  %.sroa.02.0.i949 = phi i64 [ 1, %bb.el ], [ 0, %bb.ek ]
  %i.vh = ptrtoint ptr %i.sd to i64
  br label %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit965

_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit965: ; preds = %.loopexit.i924, %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i948, %bb.ec
  %.sroa.221540.0 = phi i64 [ undef, %bb.ec ], [ %i.tw, %.loopexit.i924 ], [ %.sroa.02.0.i.i946, %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i948 ]
  %.sroa.201539.0 = phi i64 [ undef, %bb.ec ], [ %i.uy, %.loopexit.i924 ], [ %.sroa.02.0.i949, %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i948 ]
  %.sroa.171538.0 = phi i64 [ %i.se, %bb.ec ], [ 9, %.loopexit.i924 ], [ %i.se, %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i948 ]
  %.sroa.141537.0 = phi i64 [ %i.tt, %bb.ec ], [ ptrtoint (ptr @3 to i64), %.loopexit.i924 ], [ %i.vh, %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i948 ]
  %.sroa.91534.0 = phi i8 [ undef, %bb.ec ], [ %.sroa.5.0.ph.i925, %.loopexit.i924 ], [ undef, %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i948 ]
  %.sroa.01532.0 = phi i8 [ 2, %bb.ec ], [ 1, %.loopexit.i924 ], [ 3, %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i948 ]
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.01532.0, ptr %i.vi, align 8
  %.sroa.4725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.91534.0, ptr %.sroa.4725.0..sroa_idx, align 1
  %.sroa.5726.sroa.4.0..sroa.5726.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.141537.0, ptr %.sroa.5726.sroa.4.0..sroa.5726.0..sroa_idx.sroa_idx, align 8
  %.sroa.5726.sroa.5.0..sroa.5726.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.171538.0, ptr %.sroa.5726.sroa.5.0..sroa.5726.0..sroa_idx.sroa_idx, align 8
  %.sroa.5726.sroa.6.0..sroa.5726.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.201539.0, ptr %.sroa.5726.sroa.6.0..sroa.5726.0..sroa_idx.sroa_idx, align 8
  br label %bb.ao

bb.en:                                            ; preds = %bb.em, %_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit.i943, %.preheader.i.i956
  %.sroa.91534.1.ph = phi i8 [ 0, %.preheader.i.i956 ], [ 0, %_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit.i943 ], [ %i.vg, %bb.em ] ; 2 uses
  %i.vj = load ptr, ptr %.sroa.4.0..sroa_idx91.i, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.vk = load i64, ptr %.sroa.5.0..sroa_idx92.i, align 8, !noundef !5 ; 5 uses
  %.idx4901 = shl nuw nsw i64 %i.vk, 4
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 %.idx4901
  %i.vm = icmp eq i64 %i.vk, 0
  br i1 %i.vm, label %._crit_edge, label %.lr.ph4830

bb.eo:                                            ; preds = %.lr.ph4830
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vp, i64 16 ; 2 uses
  %i.vo = icmp eq ptr %i.vn, %i.vl
  br i1 %i.vo, label %._crit_edge, label %.lr.ph4830

.lr.ph4830:                                       ; preds = %bb.en, %bb.eo
  %i.vp = phi ptr [ %i.vn, %bb.eo ], [ %i.vj, %bb.en ] ; 3 uses
  %i.vq = load i64, ptr %i.vp, align 8, !noalias !156, !noundef !5
  %i.vr = icmp eq i64 %i.vq, %.sroa.02.0.i.i913
  br i1 %i.vr, label %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutTNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeNtBW_5AlignEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BW_NtBW_16TargetDataLayout33parse_from_llvm_datalayout_strings5_0EBW_.exit, label %bb.eo

_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutTNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeNtBW_5AlignEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BW_NtBW_16TargetDataLayout33parse_from_llvm_datalayout_strings5_0EBW_.exit: ; preds = %.lr.ph4830
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  store i8 %.sroa.91534.1.ph, ptr %i.vs, align 8
  br label %.loopexit1709

._crit_edge:                                      ; preds = %bb.en, %bb.eo
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  %i.vt = load i64, ptr %i.o, align 8, !range !139, !alias.scope !157, !noundef !5
  %i.vu = icmp eq i64 %i.vk, %i.vt
  br i1 %i.vu, label %bb.ep, label %bb.et

bb.ep:                                            ; preds = %._crit_edge
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeNtBP_5AlignEE8grow_oneBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #23
          to label %._crit_edge3246 unwind label %.loopexit1757.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge3246:                                  ; preds = %bb.ep
  %.pre3247 = load ptr, ptr %.sroa.4.0..sroa_idx91.i, align 8, !alias.scope !157
  br label %bb.et

.loopexit1709:                                    ; preds = %.preheader56.i.i1043, %bb.fx, %.preheader.i.i1053, %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutTNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeNtBW_5AlignEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BW_NtBW_16TargetDataLayout33parse_from_llvm_datalayout_strings5_0EBW_.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.er unwind label %bb.eq

bb.eq:                                            ; preds = %.loopexit1709
  %i.vv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body unwind label %bb.es

bb.er:                                            ; preds = %.loopexit1709
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit973 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.es:                                            ; preds = %bb.eq
  %i.vw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.et:                                            ; preds = %._crit_edge3246, %._crit_edge
  %i.vx = phi ptr [ %.pre3247, %._crit_edge3246 ], [ %i.vj, %._crit_edge ]
  %i.vy = getelementptr inbounds nuw [16 x i8], ptr %i.vx, i64 %i.vk ; 2 uses
  store i64 %.sroa.02.0.i.i913, ptr %i.vy, align 8
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  store i8 %.sroa.91534.1.ph, ptr %i.vz, align 8
  %i.wa = add i64 %i.vk, 1
  store i64 %i.wa, ptr %.sroa.5.0..sroa_idx92.i, align 8, !alias.scope !157
  br label %bb.ak

bb.eu:                                            ; preds = %bb.dr
  %i.wb = getelementptr inbounds nuw i8, ptr %i.rx, i64 1
  %i.wc = load i8, ptr %i.wb, align 1, !alias.scope !158, !noundef !5
  %i.wd = icmp sgt i8 %i.wc, -65
  %i.we = add i64 %i.ry, -1                       ; 5 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.rx, i64 1 ; 13 uses
  br i1 %i.wd, label %bb.ev, label %.invoke, !prof !141

bb.ev:                                            ; preds = %bb.eu
  %cond3387 = icmp eq i64 %i.we, 1
  %i.wg = load i8, ptr %i.wf, align 1             ; 2 uses
  br i1 %cond3387, label %bb.ew, label %thread-pre-split.i983

bb.ew:                                            ; preds = %bb.ev
  switch i8 %i.wg, label %thread-pre-split.i983 [
    i8 43, label %.thread3383
    i8 45, label %.thread3383
  ]

thread-pre-split.i983:                            ; preds = %bb.ev, %bb.ew
  %cond.i974 = icmp eq i8 %i.wg, 43               ; 2 uses
  %i.wh = sext i1 %cond.i974 to i64
  %.sroa.15.0.i975 = add nsw i64 %i.we, %i.wh     ; 4 uses
  %.sroa.0.0.idx.i976 = zext i1 %cond.i974 to i64
  %.sroa.0.0.i977 = getelementptr inbounds nuw i8, ptr %i.wf, i64 %.sroa.0.0.idx.i976 ; 2 uses
  %i.wi = icmp samesign ult i64 %.sroa.15.0.i975, 17
  br i1 %i.wi, label %.preheader.i981, label %.preheader56.i.preheader

.preheader.i981:                                  ; preds = %thread-pre-split.i983
  %.not5366.i = icmp eq i64 %.sroa.15.0.i975, 0
  br i1 %.not5366.i, label %_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i982

.preheader56.i:                                   ; preds = %bb.ex
  %i.wj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i9794845, i64 1
  %i.wk = add nsw i64 %.sroa.15.1.i9784844, -1    ; 2 uses
  %.not52.i = icmp eq i64 %i.wk, 0
  br i1 %.not52.i, label %_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %thread-pre-split.i983, %.preheader56.i
  %.sroa.0.1.i9794845 = phi ptr [ %i.wj, %.preheader56.i ], [ %.sroa.0.0.i977, %thread-pre-split.i983 ] ; 2 uses
  %.sroa.15.1.i9784844 = phi i64 [ %i.wk, %.preheader56.i ], [ %.sroa.15.0.i975, %thread-pre-split.i983 ]
  %.sroa.042.0.i4843 = phi i64 [ %i.wt, %.preheader56.i ], [ 0, %thread-pre-split.i983 ]
  %i.wl = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i4843, i64 10) ; 2 uses
  %i.wm = extractvalue { i64, i1 } %i.wl, 1
  br i1 %i.wm, label %.loopexit1712.thread, label %bb.ex, !prof !4

bb.ex:                                            ; preds = %.preheader56.i.preheader
  %i.wn = extractvalue { i64, i1 } %i.wl, 0       ; 2 uses
  %i.wo = load i8, ptr %.sroa.0.1.i9794845, align 1, !alias.scope !159, !noundef !5
  %i.wp = zext i8 %i.wo to i32
  %i.wq = add nsw i32 %i.wp, -48                  ; 2 uses
  %i.wr = icmp ugt i32 %i.wq, 9
  %i.ws = zext nneg i32 %i.wq to i64
  %i.wt = add i64 %i.wn, %i.ws                    ; 3 uses
  %i.wu = icmp ult i64 %i.wt, %i.wn
  %or.cond1705 = select i1 %i.wr, i1 true, i1 %i.wu, !prof !160
  br i1 %or.cond1705, label %.loopexit1712.thread, label %.preheader56.i, !prof !160

.lr.ph.i982:                                      ; preds = %.preheader.i981, %bb.ey
  %.sroa.0.269.i = phi ptr [ %i.xb, %bb.ey ], [ %.sroa.0.0.i977, %.preheader.i981 ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.xa, %bb.ey ], [ %.sroa.15.0.i975, %.preheader.i981 ]
  %.sroa.042.267.i = phi i64 [ %i.xd, %bb.ey ], [ 0, %.preheader.i981 ]
  %i.wv = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !159, !noundef !5
  %i.ww = zext i8 %i.wv to i32
  %i.wx = add nsw i32 %i.ww, -48                  ; 2 uses
  %i.wy = icmp ult i32 %i.wx, 10
  br i1 %i.wy, label %bb.ey, label %.loopexit1712.thread

bb.ey:                                            ; preds = %.lr.ph.i982
  %i.wz = mul i64 %.sroa.042.267.i, 10
  %i.xa = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.xc = zext nneg i32 %i.wx to i64
  %i.xd = add i64 %i.wz, %i.xc                    ; 2 uses
  %.not53.i = icmp eq i64 %i.xa, 0
  br i1 %.not53.i, label %_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i982

_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader.i981, %.preheader56.i, %bb.ey
  %.sroa.111508.0 = phi i64 [ %i.wt, %.preheader56.i ], [ %i.xd, %bb.ey ], [ 0, %.preheader.i981 ] ; 5 uses
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  %i.xe = icmp eq i64 %i.rv, 0
  br i1 %i.xe, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit
  %i.xf = ptrtoint ptr %i.rx to i64
  br label %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1029

bb.fa:                                            ; preds = %_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit
  %i.xg = load ptr, ptr %i.ru, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.xi = load i64, ptr %i.xh, align 8, !noundef !5 ; 3 uses
  switch i64 %i.xi, label %thread-pre-split.i.i1027 [
    i64 0, label %.loopexit.i988
    i64 1, label %bb.fb
  ]

bb.fb:                                            ; preds = %bb.fa
  %i.xj = load i8, ptr %i.xg, align 1, !alias.scope !161, !noundef !5 ; 2 uses
  switch i8 %i.xj, label %bb.fc [
    i8 43, label %.loopexit.i988
    i8 45, label %.loopexit.i988
  ]

thread-pre-split.i.i1027:                         ; preds = %bb.fa
  %.pr.i.i1028 = load i8, ptr %i.xg, align 1, !alias.scope !161
  br label %bb.fc

bb.fc:                                            ; preds = %thread-pre-split.i.i1027, %bb.fb
  %i.xk = phi i8 [ %.pr.i.i1028, %thread-pre-split.i.i1027 ], [ %i.xj, %bb.fb ]
  %cond.i.i997 = icmp eq i8 %i.xk, 43             ; 2 uses
  %i.xl = sext i1 %cond.i.i997 to i64
  %.sroa.15.0.i.i998 = add nsw i64 %i.xi, %i.xl   ; 4 uses
  %.sroa.0.0.idx.i.i999 = zext i1 %cond.i.i997 to i64
  %.sroa.0.0.i.i1000 = getelementptr inbounds nuw i8, ptr %i.xg, i64 %.sroa.0.0.idx.i.i999 ; 2 uses
  %i.xm = icmp samesign ult i64 %.sroa.15.0.i.i998, 17
  br i1 %i.xm, label %.preheader.i.i1020, label %.preheader56.i.i1001.preheader

.preheader.i.i1020:                               ; preds = %bb.fc
  %.not5366.i.i1021 = icmp eq i64 %.sroa.15.0.i.i998, 0
  br i1 %.not5366.i.i1021, label %bb.fk, label %.lr.ph.i.i1022

.preheader56.i.i1001:                             ; preds = %bb.ff
  %.not52.i.i1005 = icmp eq i64 %i.xo, 0
  br i1 %.not52.i.i1005, label %_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit.i1007, label %.preheader56.i.i1001.preheader

.preheader56.i.i1001.preheader:                   ; preds = %bb.fc, %.preheader56.i.i1001
  %.sroa.0.1.i.i10044896 = phi ptr [ %i.xn, %.preheader56.i.i1001 ], [ %.sroa.0.0.i.i1000, %bb.fc ] ; 2 uses
  %.sroa.15.1.i.i10034895 = phi i64 [ %i.xo, %.preheader56.i.i1001 ], [ %.sroa.15.0.i.i998, %bb.fc ]
  %.sroa.042.0.i.i10024894 = phi i64 [ %i.xz, %.preheader56.i.i1001 ], [ 0, %bb.fc ]
  %i.xn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i10044896, i64 1
  %i.xo = add nsw i64 %.sroa.15.1.i.i10034895, -1 ; 2 uses
  %i.xp = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i10024894, i64 10) ; 2 uses
  %i.xq = extractvalue { i64, i1 } %i.xp, 0       ; 2 uses
  %i.xr = extractvalue { i64, i1 } %i.xp, 1
  %i.xs = load i8, ptr %.sroa.0.1.i.i10044896, align 1, !alias.scope !161, !noundef !5 ; 2 uses
  br i1 %i.xr, label %bb.fe, label %bb.fd, !prof !4

bb.fd:                                            ; preds = %.preheader56.i.i1001.preheader
  %i.xt = zext i8 %i.xs to i32
  %i.xu = add nsw i32 %i.xt, -48                  ; 2 uses
  %i.xv = icmp ult i32 %i.xu, 10
  br i1 %i.xv, label %bb.ff, label %.loopexit.i988

bb.fe:                                            ; preds = %.preheader56.i.i1001.preheader
  %i.xw = add i8 %i.xs, -48
  %i.xx = icmp ult i8 %i.xw, 10
  %spec.select.i1006 = select i1 %i.xx, i8 2, i8 1
  br label %.loopexit.i988

bb.ff:                                            ; preds = %bb.fd
  %i.xy = zext nneg i32 %i.xu to i64
  %i.xz = add i64 %i.xq, %i.xy                    ; 3 uses
  %i.ya = icmp ult i64 %i.xz, %i.xq
  br i1 %i.ya, label %.loopexit.i988, label %.preheader56.i.i1001, !prof !4

.lr.ph.i.i1022:                                   ; preds = %.preheader.i.i1020, %bb.fg
  %.sroa.0.269.i.i1023 = phi ptr [ %i.yh, %bb.fg ], [ %.sroa.0.0.i.i1000, %.preheader.i.i1020 ] ; 2 uses
  %.sroa.15.268.i.i1024 = phi i64 [ %i.yg, %bb.fg ], [ %.sroa.15.0.i.i998, %.preheader.i.i1020 ]
  %.sroa.042.267.i.i1025 = phi i64 [ %i.yj, %bb.fg ], [ 0, %.preheader.i.i1020 ]
  %i.yb = load i8, ptr %.sroa.0.269.i.i1023, align 1, !alias.scope !161, !noundef !5
  %i.yc = zext i8 %i.yb to i32
  %i.yd = add nsw i32 %i.yc, -48                  ; 2 uses
  %i.ye = icmp ult i32 %i.yd, 10
  br i1 %i.ye, label %bb.fg, label %.loopexit.i988

bb.fg:                                            ; preds = %.lr.ph.i.i1022
  %i.yf = mul i64 %.sroa.042.267.i.i1025, 10
  %i.yg = add nsw i64 %.sroa.15.268.i.i1024, -1   ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i1023, i64 1
  %i.yi = zext nneg i32 %i.yd to i64
  %i.yj = add i64 %i.yf, %i.yi                    ; 2 uses
  %.not53.i.i1026 = icmp eq i64 %i.yg, 0
  br i1 %.not53.i.i1026, label %_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit.i1007, label %.lr.ph.i.i1022

.loopexit.i988:                                   ; preds = %bb.fb, %bb.fb, %bb.fa, %bb.ff, %bb.fd, %.lr.ph.i.i1022, %bb.fe
  %.sroa.5.0.ph.i989 = phi i8 [ 2, %bb.ff ], [ %spec.select.i1006, %bb.fe ], [ 1, %.lr.ph.i.i1022 ], [ 1, %bb.fd ], [ 0, %bb.fa ], [ 1, %bb.fb ], [ 1, %bb.fb ]
  %i.yk = ptrtoint ptr %i.xg to i64
  br label %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1029

_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit.i1007: ; preds = %.preheader56.i.i1001, %bb.fg
  %.sroa.121.0.i1008 = phi i64 [ %i.yj, %bb.fg ], [ %i.xz, %.preheader56.i.i1001 ] ; 3 uses
  %i.yl = lshr i64 %.sroa.121.0.i1008, 3
  %i.ym = and i64 %.sroa.121.0.i1008, 7
  %.not.i.i1009 = icmp ne i64 %i.ym, 0
  %i.yn = zext i1 %.not.i.i1009 to i64
  %.sroa.02.0.i.i1010 = add nuw nsw i64 %i.yl, %i.yn ; 3 uses
  %i.yo = icmp eq i64 %.sroa.121.0.i1008, 0
  br i1 %i.yo, label %bb.fk, label %bb.fh

bb.fh:                                            ; preds = %_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit.i1007
  %i.yp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 0, 2305843009213693953) %.sroa.02.0.i.i1010, i1 true) ; 3 uses
  %i.yq = shl nuw nsw i64 1, %i.yp
  %.not.i93.i1011 = icmp eq i64 %.sroa.02.0.i.i1010, %i.yq
  br i1 %.not.i93.i1011, label %bb.fi, label %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i1012, !prof !141

bb.fi:                                            ; preds = %bb.fh
  %i.yr = icmp samesign ugt i64 %i.yp, 29
  br i1 %i.yr, label %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i1012, label %bb.fj, !prof !4

bb.fj:                                            ; preds = %bb.fi
  %i.ys = trunc nuw nsw i64 %i.yp to i8
  br label %bb.fk

_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i1012: ; preds = %bb.fi, %bb.fh
  %.sroa.02.0.i1013 = phi i64 [ 1, %bb.fi ], [ 0, %bb.fh ]
  %i.yt = ptrtoint ptr %i.rx to i64
  br label %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1029

_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1029: ; preds = %.loopexit.i988, %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i1012, %bb.ez
  %.sroa.221517.0 = phi i64 [ undef, %bb.ez ], [ %i.xi, %.loopexit.i988 ], [ %.sroa.02.0.i.i1010, %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i1012 ]
  %.sroa.201516.0 = phi i64 [ undef, %bb.ez ], [ %i.yk, %.loopexit.i988 ], [ %.sroa.02.0.i1013, %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i1012 ]
  %.sroa.171515.0 = phi i64 [ %i.ry, %bb.ez ], [ 9, %.loopexit.i988 ], [ %i.ry, %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i1012 ]
  %.sroa.141514.0 = phi i64 [ %i.xf, %bb.ez ], [ ptrtoint (ptr @3 to i64), %.loopexit.i988 ], [ %i.yt, %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i1012 ]
  %.sroa.91511.0 = phi i8 [ undef, %bb.ez ], [ %.sroa.5.0.ph.i989, %.loopexit.i988 ], [ undef, %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i1012 ]
  %.sroa.01509.0 = phi i8 [ 2, %bb.ez ], [ 1, %.loopexit.i988 ], [ 3, %_RNvMsi_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Align10from_bytes.exit.i1012 ]
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.01509.0, ptr %i.yu, align 8
  %.sroa.4691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.91511.0, ptr %.sroa.4691.0..sroa_idx, align 1
  %.sroa.5692.sroa.4.0..sroa.5692.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.141514.0, ptr %.sroa.5692.sroa.4.0..sroa.5692.0..sroa_idx.sroa_idx, align 8
  %.sroa.5692.sroa.5.0..sroa.5692.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.171515.0, ptr %.sroa.5692.sroa.5.0..sroa.5692.0..sroa_idx.sroa_idx, align 8
  %.sroa.5692.sroa.6.0..sroa.5692.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.201516.0, ptr %.sroa.5692.sroa.6.0..sroa.5692.0..sroa_idx.sroa_idx, align 8
  br label %bb.ao

bb.fk:                                            ; preds = %bb.fj, %_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit.i1007, %.preheader.i.i1020
  %.sroa.91511.1.ph = phi i8 [ 0, %.preheader.i.i1020 ], [ 0, %_RNvMsD_NtCshzWfHUSfYae_4core3numy27from_ascii_bytes_radix_impl.exit.i1007 ], [ %i.ys, %bb.fj ] ; 6 uses
  %i.yv = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sroa.111508.0)
  %i.yw = icmp eq i64 %i.yv, 1
  br i1 %i.yw, label %.split, label %bb.fl

.split:                                           ; preds = %bb.fk
  %i.yx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.111508.0, i1 true)
  switch i64 %i.yx, label %bb.fl [
    i64 0, label %bb.fm
    i64 3, label %bb.fn
    i64 4, label %bb.fo
    i64 5, label %bb.fp
    i64 6, label %bb.fq
  ]

bb.fl:                                            ; preds = %bb.fk, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %.split
  %i.yy = icmp uge i64 %.sroa.111508.0, %.sroa.0.0.ph2469
  %i.yz = icmp ult i64 %.sroa.111508.0, 129
  %or.cond = and i1 %i.yy, %i.yz
  br i1 %or.cond, label %bb.fr, label %bb.ak

bb.fm:                                            ; preds = %.split
  store i8 %.sroa.91511.1.ph, ptr %i.v, align 2
  br label %bb.fl

bb.fn:                                            ; preds = %.split
  store i8 %.sroa.91511.1.ph, ptr %i.w, align 1
  br label %bb.fl

bb.fo:                                            ; preds = %.split
  store i8 %.sroa.91511.1.ph, ptr %i.x, align 4
  br label %bb.fl

bb.fp:                                            ; preds = %.split
  store i8 %.sroa.91511.1.ph, ptr %i.y, align 1
  br label %bb.fl

bb.fq:                                            ; preds = %.split
  store i8 %.sroa.91511.1.ph, ptr %i.z, align 2
  br label %bb.fl

bb.fr:                                            ; preds = %bb.fl
  store i8 %.sroa.91511.1.ph, ptr %i.aa, align 1
  br label %bb.ak

.loopexit1712.thread:                             ; preds = %bb.ex, %.preheader56.i.preheader, %.lr.ph.i982
  %.pr = load i8, ptr %i.wf, align 1, !alias.scope !162
  %i.za = icmp sgt i8 %.pr, -65
  br i1 %i.za, label %bb.fs, label %.invoke, !prof !163

bb.fs:                                            ; preds = %.loopexit1712.thread
  switch i64 %i.we, label %thread-pre-split.i.i1060 [
    i64 0, label %.loopexit
    i64 1, label %.thread3383
  ]

.thread3383:                                      ; preds = %bb.ew, %bb.ew, %bb.fs
  %4 = load i8, ptr %i.wf, align 1, !alias.scope !164, !noundef !5 ; 2 uses
  switch i8 %4, label %bb.ft [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i.i1060:                         ; preds = %bb.fs
  %.pr.i.i1061 = load i8, ptr %i.wf, align 1, !alias.scope !164
  br label %bb.ft

bb.ft:                                            ; preds = %thread-pre-split.i.i1060, %.thread3383
  %i.zb = phi i64 [ %i.we, %thread-pre-split.i.i1060 ], [ 1, %.thread3383 ] ; 5 uses
  %i.zc = phi i8 [ %.pr.i.i1061, %thread-pre-split.i.i1060 ], [ %4, %.thread3383 ]
  %cond.i.i1039 = icmp eq i8 %i.zc, 43            ; 2 uses
  %i.zd = sext i1 %cond.i.i1039 to i64
  %.sroa.15.0.i.i1040 = add nsw i64 %i.zb, %i.zd  ; 4 uses
  %.sroa.0.0.idx.i.i1041 = zext i1 %cond.i.i1039 to i64
  %.sroa.0.0.i.i1042 = getelementptr inbounds nuw i8, ptr %i.wf, i64 %.sroa.0.0.idx.i.i1041 ; 2 uses
  %i.ze = icmp samesign ult i64 %.sroa.15.0.i.i1040, 17
  br i1 %i.ze, label %.preheader.i.i1053, label %.preheader56.i.i1043.preheader

.preheader.i.i1053:                               ; preds = %bb.ft
  %.not5366.i.i1054 = icmp eq i64 %.sroa.15.0.i.i1040, 0
  br i1 %.not5366.i.i1054, label %.loopexit1709, label %.lr.ph.i.i1055

.preheader56.i.i1043:                             ; preds = %bb.fw
  %.not52.i.i1047 = icmp eq i64 %i.zg, 0
  br i1 %.not52.i.i1047, label %.loopexit1709, label %.preheader56.i.i1043.preheader

.preheader56.i.i1043.preheader:                   ; preds = %bb.ft, %.preheader56.i.i1043
  %.sroa.0.1.i.i10464848 = phi ptr [ %i.zf, %.preheader56.i.i1043 ], [ %.sroa.0.0.i.i1042, %bb.ft ] ; 3 uses
  %.sroa.15.1.i.i10454847 = phi i64 [ %i.zg, %.preheader56.i.i1043 ], [ %.sroa.15.0.i.i1040, %bb.ft ]
  %.sroa.042.0.i.i10444846 = phi i64 [ %i.zq, %.preheader56.i.i1043 ], [ 0, %bb.ft ]
  %i.zf = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i10464848, i64 1
  %i.zg = add nsw i64 %.sroa.15.1.i.i10454847, -1 ; 2 uses
  %i.zh = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i10444846, i64 10) ; 2 uses
  %i.zi = extractvalue { i64, i1 } %i.zh, 0       ; 2 uses
  %i.zj = extractvalue { i64, i1 } %i.zh, 1
  br i1 %i.zj, label %bb.fv, label %bb.fu, !prof !4

bb.fu:                                            ; preds = %.preheader56.i.i1043.preheader
  %5 = load i8, ptr %.sroa.0.1.i.i10464848, align 1, !alias.scope !164, !noundef !5
  %i.zk = zext i8 %5 to i32
  %i.zl = add nsw i32 %i.zk, -48                  ; 2 uses
  %i.zm = icmp ult i32 %i.zl, 10
  br i1 %i.zm, label %bb.fw, label %.loopexit

bb.fv:                                            ; preds = %.preheader56.i.i1043.preheader
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  %6 = load i8, ptr %.sroa.0.1.i.i10464848, align 1, !alias.scope !164, !noundef !5
  %i.zn = add i8 %6, -48
  %i.zo = icmp ult i8 %i.zn, 10
  %spec.select.i1048 = select i1 %i.zo, i8 2, i8 1
  br label %.loopexit

bb.fw:                                            ; preds = %bb.fu
  %i.zp = zext nneg i32 %i.zl to i64
  %i.zq = add i64 %i.zi, %i.zp                    ; 2 uses
  %i.zr = icmp ult i64 %i.zq, %i.zi
  br i1 %i.zr, label %.loopexit, label %.preheader56.i.i1043, !prof !4

.lr.ph.i.i1055:                                   ; preds = %.preheader.i.i1053, %bb.fx
  %.sroa.0.269.i.i1056 = phi ptr [ %i.zw, %bb.fx ], [ %.sroa.0.0.i.i1042, %.preheader.i.i1053 ] ; 2 uses
  %.sroa.15.268.i.i1057 = phi i64 [ %i.zv, %bb.fx ], [ %.sroa.15.0.i.i1040, %.preheader.i.i1053 ]
  %i.zs = load i8, ptr %.sroa.0.269.i.i1056, align 1, !alias.scope !164, !noundef !5
  %i.zt = add i8 %i.zs, -48
  %i.zu = icmp ult i8 %i.zt, 10
  br i1 %i.zu, label %bb.fx, label %.loopexit

bb.fx:                                            ; preds = %.lr.ph.i.i1055
  %i.zv = add nsw i64 %.sroa.15.268.i.i1057, -1   ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i1056, i64 1
  %.not53.i.i1059 = icmp eq i64 %i.zv, 0
  br i1 %.not53.i.i1059, label %.loopexit1709, label %.lr.ph.i.i1055

.loopexit:                                        ; preds = %.thread3383, %.thread3383, %bb.fs, %bb.fw, %bb.fu, %.lr.ph.i.i1055, %.split3367, %bb.fv
  %.sroa.0.0.i9863377 = phi ptr [ %i.wf, %bb.fv ], [ %i.sb, %.split3367 ], [ %i.wf, %bb.fw ], [ %i.wf, %.lr.ph.i.i1055 ], [ %i.wf, %bb.fu ], [ %i.wf, %bb.fs ], [ %i.wf, %.thread3383 ], [ %i.wf, %.thread3383 ]
  %i.zx = phi i64 [ %i.zb, %bb.fv ], [ 0, %.split3367 ], [ %i.zb, %bb.fw ], [ %i.zb, %.lr.ph.i.i1055 ], [ %i.zb, %bb.fu ], [ %i.we, %bb.fs ], [ 1, %.thread3383 ], [ 1, %.thread3383 ]
  %.sroa.71498.0.ph = phi i8 [ %spec.select.i1048, %bb.fv ], [ 0, %.split3367 ], [ 2, %bb.fw ], [ 1, %.lr.ph.i.i1055 ], [ 1, %bb.fu ], [ 0, %bb.fs ], [ 1, %.thread3383 ], [ 1, %.thread3383 ]
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.zy, align 8
  %.sroa.4668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.71498.0.ph, ptr %.sroa.4668.0..sroa_idx, align 1
  %.sroa.5669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @2 to i64), ptr %.sroa.5669.0..sroa_idx, align 8
  %.sroa.6670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 4, ptr %.sroa.6670.0..sroa_idx, align 8
  %.sroa.6670.sroa.4.0..sroa.6670.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.0.0.i9863377, ptr %.sroa.6670.sroa.4.0..sroa.6670.0..sroa_idx.sroa_idx, align 8
  br label %bb.ao

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit973: ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.cf, label %.outer._crit_edge, label %bb.c

bb.fy:                                            ; preds = %bb.be
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  %i.zz = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.aaa = load ptr, ptr %i.cg, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.aab = load i64, ptr %i.ga, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 112, ptr %i.i, align 4
  %i.aac = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aaa, i64 noundef %i.aab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1)
          to label %bb.fz unwind label %.loopexit1757.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fz:                                            ; preds = %bb.fy
  br i1 %i.aac, label %bb.gb, label %bb.ga, !prof !141

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.invoke4092

bb.gb:                                            ; preds = %bb.fz
  %i.aad = add i64 %i.aab, -1                     ; 3 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aaa, i64 1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 102, ptr %i.h, align 4
  %i.aaf = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aae, i64 noundef %i.aad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 1)
          to label %bb.gc unwind label %.loopexit1757.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.aaf, label %bb.gi, label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gl
  %.sroa.11.0 = phi i64 [ %i.abu, %bb.gl ], [ %i.aad, %bb.gc ] ; 11 uses
  %.sroa.076.0 = phi ptr [ %i.abv, %bb.gl ], [ %i.aae, %bb.gc ] ; 8 uses
  %.sroa.075.0 = phi i8 [ 1, %bb.gl ], [ 0, %bb.gc ] ; 3 uses
  %i.aag = icmp samesign eq i64 %.sroa.11.0, 0
  br i1 %i.aag, label %bb.ha, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aah = load i8, ptr %.sroa.076.0, align 1, !alias.scope !165, !noalias !166, !noundef !5 ; 5 uses
  %i.aai = icmp sgt i8 %i.aah, -1
  br i1 %i.aai, label %bb.gf, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskVLyBV5N46_15ra_ap_rustc_abi.exit12.i.i.i.i1063

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskVLyBV5N46_15ra_ap_rustc_abi.exit12.i.i.i.i1063: ; preds = %bb.ge
  %i.aaj = getelementptr inbounds nuw i8, ptr %.sroa.076.0, i64 1
  %i.aak = and i8 %i.aah, 31
  %i.aal = zext nneg i8 %i.aak to i32             ; 3 uses
  %i.aam = icmp samesign ne i64 %.sroa.11.0, 1
  call void @llvm.assume(i1 %i.aam)
  %i.aan = load i8, ptr %i.aaj, align 1, !alias.scope !165, !noalias !166, !noundef !5
  %i.aao = shl nuw nsw i32 %i.aal, 6
  %i.aap = and i8 %i.aan, 63
  %i.aaq = zext nneg i8 %i.aap to i32             ; 2 uses
  %i.aar = or disjoint i32 %i.aao, %i.aaq
  %i.aas = icmp samesign ugt i8 %i.aah, -33
  br i1 %i.aas, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskVLyBV5N46_15ra_ap_rustc_abi.exit14.i.i.i.i1068, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.aat = zext nneg i8 %i.aah to i32
  br label %bb.gg

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskVLyBV5N46_15ra_ap_rustc_abi.exit14.i.i.i.i1068: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskVLyBV5N46_15ra_ap_rustc_abi.exit12.i.i.i.i1063
  %i.aau = getelementptr inbounds nuw i8, ptr %.sroa.076.0, i64 2
  %i.aav = icmp samesign ne i64 %.sroa.11.0, 2
  call void @llvm.assume(i1 %i.aav)
  %i.aaw = load i8, ptr %i.aau, align 1, !alias.scope !165, !noalias !166, !noundef !5
  %i.aax = shl nuw nsw i32 %i.aaq, 6
  %i.aay = and i8 %i.aaw, 63
  %i.aaz = zext nneg i8 %i.aay to i32
  %i.aba = or disjoint i32 %i.aax, %i.aaz         ; 2 uses
  %i.abb = shl nuw nsw i32 %i.aal, 12
  %i.abc = or disjoint i32 %i.aba, %i.abb
  %i.abd = icmp samesign ugt i8 %i.aah, -17
  br i1 %i.abd, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskVLyBV5N46_15ra_ap_rustc_abi.exit16.i.i.i.i1069, label %bb.gg

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskVLyBV5N46_15ra_ap_rustc_abi.exit16.i.i.i.i1069: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskVLyBV5N46_15ra_ap_rustc_abi.exit14.i.i.i.i1068
  %i.abe = getelementptr inbounds nuw i8, ptr %.sroa.076.0, i64 3
  %i.abf = icmp samesign ne i64 %.sroa.11.0, 3
  call void @llvm.assume(i1 %i.abf)
  %i.abg = load i8, ptr %i.abe, align 1, !alias.scope !165, !noalias !166, !noundef !5
  %i.abh = shl nuw nsw i32 %i.aal, 18
  %i.abi = and i32 %i.abh, 1835008
  %i.abj = shl nuw nsw i32 %i.aba, 6
  %i.abk = and i8 %i.abg, 63
  %i.abl = zext nneg i8 %i.abk to i32
  %i.abm = or disjoint i32 %i.abj, %i.abl
  %i.abn = or disjoint i32 %i.abm, %i.abi
  br label %bb.gg

bb.gg:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskVLyBV5N46_15ra_ap_rustc_abi.exit16.i.i.i.i1069, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskVLyBV5N46_15ra_ap_rustc_abi.exit14.i.i.i.i1068, %bb.gf, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskVLyBV5N46_15ra_ap_rustc_abi.exit12.i.i.i.i1063
  %.sroa.4.0.i.ph.i.i.i1064 = phi i32 [ %i.abc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskVLyBV5N46_15ra_ap_rustc_abi.exit14.i.i.i.i1068 ], [ %i.abn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskVLyBV5N46_15ra_ap_rustc_abi.exit16.i.i.i.i1069 ], [ %i.aar, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskVLyBV5N46_15ra_ap_rustc_abi.exit12.i.i.i.i1063 ], [ %i.aat, %bb.gf ] ; 4 uses
  %i.abo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i1064, 1114112
  call void @llvm.assume(i1 %i.abo)
  %i.abp = and i32 %.sroa.4.0.i.ph.i.i.i1064, 2097119
  %i.abq = add nsw i32 %i.abp, -65
  %or.cond3.i.i.i.i.i1065 = icmp ult i32 %i.abq, 26
  br i1 %or.cond3.i.i.i.i.i1065, label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_alphabeticENtB5_7Pattern12is_prefix_ofCskVLyBV5N46_15ra_ap_rustc_abi.exit1071, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.abr = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i1064, 170
  br i1 %i.abr, label %bb.gm, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_alphabeticNtB5_11MultiCharEq7matchesCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i1066

_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_alphabeticNtB5_11MultiCharEq7matchesCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i1066: ; preds = %bb.gh
  %i.abs = invoke noundef zeroext i1 @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef range(i32 0, 1114112) %.sroa.4.0.i.ph.i.i.i1064) #23
          to label %.noexc1070 unwind label %.loopexit1757.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1070:                                       ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_alphabeticNtB5_11MultiCharEq7matchesCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i1066
  br i1 %i.abs, label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_alphabeticENtB5_7Pattern12is_prefix_ofCskVLyBV5N46_15ra_ap_rustc_abi.exit1071, label %bb.gm

bb.gi:                                            ; preds = %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 102, ptr %i.g, align 4
  %i.abt = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aae, i64 noundef %i.aad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1)
          to label %bb.gj unwind label %.loopexit1757.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gj:                                            ; preds = %bb.gi
  br i1 %i.abt, label %bb.gl, label %bb.gk, !prof !141

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.invoke4092

bb.gl:                                            ; preds = %bb.gj
  %i.abu = add i64 %i.aab, -2
  %i.abv = getelementptr inbounds nuw i8, ptr %i.aaa, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.gd

_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_alphabeticENtB5_7Pattern12is_prefix_ofCskVLyBV5N46_15ra_ap_rustc_abi.exit1071: ; preds = %.noexc1070, %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.sroa.11.0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.hx unwind label %.loopexit1757.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gm:                                            ; preds = %bb.gh, %.noexc1070
  %cond = icmp eq i64 %.sroa.11.0, 1
  %i.abw = load i8, ptr %.sroa.076.0, align 1, !alias.scope !167 ; 2 uses
  br i1 %cond, label %bb.gn, label %thread-pre-split.i1092

bb.gn:                                            ; preds = %bb.gm
  switch i8 %i.abw, label %thread-pre-split.i1092 [
    i8 43, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit1094.thread
    i8 45, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit1094.thread
  ]

thread-pre-split.i1092:                           ; preds = %bb.gm, %bb.gn
  %cond.i1073 = icmp eq i8 %i.abw, 43             ; 2 uses
  %i.abx = sext i1 %cond.i1073 to i64
  %.sroa.15.0.i1074 = add nsw i64 %.sroa.11.0, %i.abx ; 10 uses
  %.sroa.0.0.idx.i1075 = zext i1 %cond.i1073 to i64
  %.sroa.0.0.i1076 = getelementptr inbounds nuw i8, ptr %.sroa.076.0, i64 %.sroa.0.0.idx.i1075 ; 9 uses
  %i.aby = icmp samesign ult i64 %.sroa.15.0.i1074, 9
  br i1 %i.aby, label %.preheader.i1085, label %.preheader60.i1077.preheader

.preheader.i1085:                                 ; preds = %thread-pre-split.i1092
  %.not5668.i1086 = icmp eq i64 %.sroa.15.0.i1074, 0
  br i1 %.not5668.i1086, label %.loopexit.i1083, label %.lr.ph.i1087
end_hunk_1
