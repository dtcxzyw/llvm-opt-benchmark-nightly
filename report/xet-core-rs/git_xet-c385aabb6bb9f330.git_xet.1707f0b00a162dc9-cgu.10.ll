Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet-c385aabb6bb9f330.git_xet.1707f0b00a162dc9-cgu.10?download=true
inline.NumInlined: 288
inline.NumDeleted: 124
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorECs1YANDSn9Kib_7git_xet:bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit12 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit12: ; preds = %bb.ac
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4Sxm5svDswZ_18reqwest_middleware5error5ErrorECs1YANDSn9Kib_7git_xet.exit

bb.af:                                            ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !4, !alias.scope !150, !noundef !5
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br i1 %i.ao, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth9AuthErrorECs1YANDSn9Kib_7git_xet.exit unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.aj:                                            ; preds = %bb.af
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth9AuthErrorECs1YANDSn9Kib_7git_xet.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %common.resume unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth9AuthErrorECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.ag, %bb.aj
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4Sxm5svDswZ_18reqwest_middleware5error5ErrorECs1YANDSn9Kib_7git_xet.exit

bb.am:                                            ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCsbdFR6LubKyl_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4Sxm5svDswZ_18reqwest_middleware5error5ErrorECs1YANDSn9Kib_7git_xet.exit

bb.an:                                            ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit14 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %common.resume unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit14: ; preds = %bb.an
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4Sxm5svDswZ_18reqwest_middleware5error5ErrorECs1YANDSn9Kib_7git_xet.exit

bb.aq:                                            ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit16 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %common.resume unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit16: ; preds = %bb.aq
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4Sxm5svDswZ_18reqwest_middleware5error5ErrorECs1YANDSn9Kib_7git_xet.exit

bb.at:                                            ; preds = %bb.y
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bc) #20
          to label %common.resume unwind label %bb.ax

bb.au:                                            ; preds = %bb.y
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit18 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %common.resume unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit18: ; preds = %bb.au
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4Sxm5svDswZ_18reqwest_middleware5error5ErrorECs1YANDSn9Kib_7git_xet.exit

bb.ax:                                            ; preds = %bb.at
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.b = load i64, ptr %.0.val, align 8, !range !159, !alias.scope !160, !noundef !5
  switch i64 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsiWcPrHiWZDL_10serde_json5error9ErrorImplEECs1YANDSn9Kib_7git_xet.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !160, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsiWcPrHiWZDL_10serde_json5error9ErrorImplEECs1YANDSn9Kib_7git_xet.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !160, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i, i64 noundef 1) #18, !noalias !160
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsiWcPrHiWZDL_10serde_json5error9ErrorImplEECs1YANDSn9Kib_7git_xet.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !160, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !160
  %i.g = ptrtoint ptr %.val.i.i.i to i64          ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i
    i64 1, label %bb.f
  ], !prof !14

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !161, !noalias !160
  store i8 3, ptr %i.a, align 8, !alias.scope !161, !noalias !160
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !160
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsiWcPrHiWZDL_10serde_json5error9ErrorImplEECs1YANDSn9Kib_7git_xet.exit

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #18
  resume { ptr, i32 } %i.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsiWcPrHiWZDL_10serde_json5error9ErrorImplEECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.a, %bb.b, %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1YANDSn9Kib_7git_xet.exit.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #18
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec15TransferRequestEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #20
          to label %.body2 unwind label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !range !13, !alias.scope !164, !noundef !5
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs1YANDSn9Kib_7git_xet.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body2 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs1YANDSn9Kib_7git_xet.exit unwind label %bb.h

.body2:                                           ; preds = %bb.h, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.h ], [ %i.h, %bb.f ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec25GitBatchApiResponseActionEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.j) #20
          to label %common.resume unwind label %bb.m

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs1YANDSn9Kib_7git_xet.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs1YANDSn9Kib_7git_xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs1YANDSn9Kib_7git_xet.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs1YANDSn9Kib_7git_xet.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.body.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs1YANDSn9Kib_7git_xet.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec25GitBatchApiResponseActionEBH_.exit unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.k ], [ %i.m, %bb.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %.body2, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn, %.body2 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec25GitBatchApiResponseActionEBH_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r)
  ret void

bb.m:                                             ; preds = %.body2, %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec23LFSProtocolRequestEventEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !167, !noundef !5
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.c
    i64 1, label %bb.j
    i64 2, label %bb.k
    i64 3, label %bb.b
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.k, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec11InitRequestEBH_.exit
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !4, !alias.scope !168, !noundef !5
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec11InitRequestEBH_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %common.resume.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.h, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec11InitRequestEBH_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsarFSTFZzLuM_11xet_runtime5error12RuntimeErrorNtB6_5Debug3fmtCs1YANDSn9Kib_7git_xet:bb.a
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.j = load i64, ptr %i.i, align 8, !range !17, !alias.scope !266, !noundef !5
  switch i64 %i.j, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !267
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.h, align 8, !noalias !267
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 11, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !267
  br label %_RNvXs0_NtCsarFSTFZzLuM_11xet_runtime5errorNtB5_12RuntimeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !267
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.g, align 8, !noalias !267
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 14, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !267
  br label %_RNvXs0_NtCsarFSTFZzLuM_11xet_runtime5errorNtB5_12RuntimeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !267
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.o, ptr %i.f, align 8, !noalias !267
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 23, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !267
  br label %_RNvXs0_NtCsarFSTFZzLuM_11xet_runtime5errorNtB5_12RuntimeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !267
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.q, ptr %i.e, align 8, !noalias !267
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 9, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !267
  br label %_RNvXs0_NtCsarFSTFZzLuM_11xet_runtime5errorNtB5_12RuntimeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !267
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.s, ptr %i.d, align 8, !noalias !267
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 12, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !267
  br label %_RNvXs0_NtCsarFSTFZzLuM_11xet_runtime5errorNtB5_12RuntimeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !267
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.u, ptr %i.c, align 8, !noalias !267
  %i.v = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 12, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !267
  br label %_RNvXs0_NtCsarFSTFZzLuM_11xet_runtime5errorNtB5_12RuntimeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !267
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.w, ptr %i.b, align 8, !noalias !267
  %i.x = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 12, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !267
  br label %_RNvXs0_NtCsarFSTFZzLuM_11xet_runtime5errorNtB5_12RuntimeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.i:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 17), !noalias !266
  br label %_RNvXs0_NtCsarFSTFZzLuM_11xet_runtime5errorNtB5_12RuntimeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !267
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.z, ptr %i.a, align 8, !noalias !267
  %i.aa = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !267
  br label %_RNvXs0_NtCsarFSTFZzLuM_11xet_runtime5errorNtB5_12RuntimeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXs0_NtCsarFSTFZzLuM_11xet_runtime5errorNtB5_12RuntimeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.0.in.i = phi i1 [ %i.l, %bb.b ], [ %i.n, %bb.c ], [ %i.p, %bb.d ], [ %i.r, %bb.e ], [ %i.t, %bb.f ], [ %i.v, %bb.g ], [ %i.x, %bb.h ], [ %i.y, %bb.i ], [ %i.aa, %bb.j ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6SYjS1KFWza_10serde_core2deNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec1__NtBG_23LFSProtocolRequestEventNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6SYjS1KFWza_10serde_core2deNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs0_1__NtBG_11InitRequestNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6SYjS1KFWza_10serde_core2deNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs1_1__NtBG_16InitRequestInnerNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6SYjS1KFWza_10serde_core2deNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs1_1__NtBG_16InitRequestInnerNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 23)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6SYjS1KFWza_10serde_core2deNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs2_1__NtBG_15TransferRequestNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6SYjS1KFWza_10serde_core2deNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs2_1__NtBG_15TransferRequestNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 22)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6SYjS1KFWza_10serde_core2deNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs5_1__NtBG_25GitBatchApiResponseActionNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6SYjS1KFWza_10serde_core2deNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs5_1__NtBG_25GitBatchApiResponseActionNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 32)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specNtB4_23LFSProtocolRequestEventNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.66 = alloca [32 x i8], align 8           ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 7 uses
  %i.d = alloca [136 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.513.0..sroa_idx, align 8
  call void @_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec23LFSProtocolRequestEventEB19_(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = load i64, ptr %i.c, align 8, !range !270, !noundef !5 ; 3 uses
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !18, !noundef !5
  call void @_RINvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol6errorsNtB3_19GitLFSProtocolError10bad_syntaxNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEB7_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %.sroa.66, ptr noalias noundef nonnull align 8 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.516.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 %i.e, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  switch i64 %i.e, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %_RNvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specNtB2_23LFSProtocolRequestEvent8validate.exit.thread
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !271, !noundef !5 ; 2 uses
  %i.l = icmp sgt i64 %i.k, -1
  call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.k, 64
  br i1 %i.m, label %bb.g, label %.invoke

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !271, !noundef !5 ; 2 uses
  %i.p = icmp sgt i64 %i.o, -1
  call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.o, 64
  br i1 %i.q, label %bb.j, label %.invoke

bb.f:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !271, !noundef !5 ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %.invoke, label %_RNvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specNtB2_23LFSProtocolRequestEvent8validate.exit.thread

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !271, !noundef !5
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.invoke, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.z = load i64, ptr %i.y, align 8, !range !13, !alias.scope !271, !noundef !5
  %.not1.i = icmp eq i64 %i.z, -1
  br i1 %.not1.i, label %.invoke32, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !271, !noundef !5 ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i64 %i.ab, 0
  br i1 %i.ad, label %.invoke, label %_RNvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specNtB2_23LFSProtocolRequestEvent8validate.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !271, !noundef !5
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.invoke, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.ai = load i64, ptr %i.ah, align 8, !range !13, !alias.scope !271, !noundef !5
  %.not.i = icmp eq i64 %i.ai, -1
  br i1 %.not.i, label %bb.l, label %.invoke32

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !271, !noundef !5 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, -1
  call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %.invoke, label %_RNvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specNtB2_23LFSProtocolRequestEvent8validate.exit.thread

.invoke32:                                        ; preds = %bb.k, %bb.h
  %i.an = phi ptr [ @39, %bb.h ], [ @41, %bb.k ]
  %i.ao = phi i64 [ 41, %bb.h ], [ 39, %bb.k ]
  invoke void @_RINvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol6errorsNtB3_19GitLFSProtocolError10bad_syntaxReEB7_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef %i.ao)
          to label %_RNvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specNtB2_23LFSProtocolRequestEvent8validate.exit unwind label %bb.m

.invoke:                                          ; preds = %bb.l, %bb.j, %bb.e, %bb.i, %bb.g, %bb.d, %bb.f
  %i.ap = phi ptr [ @37, %bb.j ], [ @40, %bb.e ], [ @38, %bb.i ], [ @37, %bb.g ], [ @40, %bb.d ], [ @36, %bb.f ], [ @38, %bb.l ]
  %i.aq = phi i64 [ 12, %bb.j ], [ 11, %bb.e ], [ 36, %bb.i ], [ 12, %bb.g ], [ 11, %bb.d ], [ 14, %bb.f ], [ 36, %bb.l ]
  invoke void @_RINvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol6errorsNtB3_19GitLFSProtocolError12bad_argumentReEB7_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.aq)
          to label %_RNvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specNtB2_23LFSProtocolRequestEvent8validate.exit unwind label %bb.m

bb.m:                                             ; preds = %.invoke32, %.invoke
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec23LFSProtocolRequestEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(136) %i.d) #20
          to label %bb.q unwind label %bb.p

_RNvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specNtB2_23LFSProtocolRequestEvent8validate.exit: ; preds = %.invoke32, %.invoke
  %.pr = load i64, ptr %i.b, align 8
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %_RNvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specNtB2_23LFSProtocolRequestEvent8validate.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specNtB2_23LFSProtocolRequestEvent8validate.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec23LFSProtocolRequestEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(136) %i.d)
  br label %bb.o

_RNvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specNtB2_23LFSProtocolRequestEvent8validate.exit.thread: ; preds = %bb.l, %bb.i, %bb.f, %bb.c, %_RNvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specNtB2_23LFSProtocolRequestEvent8validate.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.d, i64 136, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.n, %_RNvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specNtB2_23LFSProtocolRequestEvent8validate.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.p:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.q:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.ar
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 24                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueEECs1YANDSn9Kib_7git_xet.exit, label %.lr.ph

.body:                                            ; preds = %bb.e, %.body.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueEECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.c
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueEECs1YANDSn9Kib_7git_xet.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueEECs1YANDSn9Kib_7git_xet.exit.i
  %.sroa.0.0.i16 = phi i64 [ %i.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueEECs1YANDSn9Kib_7git_xet.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i16 ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueEECs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %.lr.ph18
  %i.s = add nuw nsw i64 %.sroa.0.1.i17, 1        ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.h
  br i1 %i.t, label %.body, label %.lr.ph18

bb.f:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.q, %bb.b ]
  %i.v = icmp eq i64 %i.p, %i.h
  br i1 %i.v, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %.body.i, %bb.e
  %.sroa.0.1.i17 = phi i64 [ %i.s, %bb.e ], [ %i.p, %.body.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i17
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #20
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph18
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueEECs1YANDSn9Kib_7git_xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueEECs1YANDSn9Kib_7git_xet.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !5
  store i64 %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.y, ptr %i.ab, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.h:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.i:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 24                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit, label %.lr.ph

.body:                                            ; preds = %bb.d, %.body.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.h unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i
  %.sroa.0.0.i16 = phi i64 [ %i.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i16 ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph18
  %i.s = add nuw nsw i64 %.sroa.0.1.i17, 1        ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.h
end_hunk_1
begin_hunk_2_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsfaKIfeYzQZw_7reqwest5error5ErrorNtB6_5Debug3fmtCs1YANDSn9Kib_7git_xet

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsfaKIfeYzQZw_7reqwest5errorNtB4_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsfaKIfeYzQZw_7reqwest5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsfaKIfeYzQZw_7reqwest5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsf1bHqHEg0eP_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsarFSTFZzLuM_11xet_runtime5error12RuntimeErrorE9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorE9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorE9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorE9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec23LFSProtocolRequestEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol6errorsNtB3_19GitLFSProtocolError10bad_syntaxNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { noinline noreturn }
attributes #18 = { nounwind }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { cold }
attributes #21 = { noinline }
attributes #22 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{i64 0, i64 2}
!5 = !{}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i64 0, i64 3}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{i8 0, i8 3}
!10 = !{i8 0, i8 2}
!11 = !{i64 0, i64 -9223372036854775808}
!12 = !{i64 1, i64 536870913}
!13 = !{i64 -1, i64 -9223372036854775808}
!14 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!15 = !{i64 -1, i64 11}
!16 = !{i8 -1, i8 4}
!17 = !{i64 0, i64 9}
!18 = !{i64 8}
!19 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!20 = !{!"branch_weights", i32 1, i32 2000, i32 2000}
!21 = !{i32 0, i32 2}
!22 = distinct !{!22, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet"}
!23 = distinct !{!23, !22, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet: argument 0"}
!24 = !{!23}
!25 = distinct !{!25, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet"}
!26 = distinct !{!26, !25, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet: argument 0"}
!27 = !{!26}
!28 = distinct !{!28, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3syPzKb7XLA_13git_url_parse16GitUrlParseErrorECs1YANDSn9Kib_7git_xet"}
!29 = distinct !{!29, !28, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3syPzKb7XLA_13git_url_parse16GitUrlParseErrorECs1YANDSn9Kib_7git_xet: argument 0"}
!30 = distinct !{!30, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol6errors19GitLFSProtocolErrorEBH_"}
!31 = distinct !{!31, !30, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol6errors19GitLFSProtocolErrorEBH_: argument 0"}
!32 = distinct !{!32, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet"}
!33 = distinct !{!33, !32, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet: argument 0"}
!34 = distinct !{!34, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet"}
!35 = distinct !{!35, !34, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet: argument 0"}
!36 = distinct !{!36, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorECs1YANDSn9Kib_7git_xet"}
!37 = distinct !{!37, !36, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorECs1YANDSn9Kib_7git_xet: argument 0"}
!38 = distinct !{!38, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet"}
!39 = distinct !{!39, !38, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet: argument 0"}
!40 = distinct !{!40, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorECs1YANDSn9Kib_7git_xet"}
!41 = distinct !{!41, !40, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorECs1YANDSn9Kib_7git_xet: argument 0"}
!42 = distinct !{!42, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth9AuthErrorECs1YANDSn9Kib_7git_xet"}
!43 = distinct !{!43, !42, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth9AuthErrorECs1YANDSn9Kib_7git_xet: argument 0"}
!44 = distinct !{!44, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction5error23FileReconstructionErrorECs1YANDSn9Kib_7git_xet"}
!45 = distinct !{!45, !44, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction5error23FileReconstructionErrorECs1YANDSn9Kib_7git_xet: argument 0"}
!46 = distinct !{!46, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsarFSTFZzLuM_11xet_runtime5error12RuntimeErrorEECs1YANDSn9Kib_7git_xet"}
!47 = distinct !{!47, !46, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsarFSTFZzLuM_11xet_runtime5error12RuntimeErrorEECs1YANDSn9Kib_7git_xet: argument 0"}
!48 = distinct !{!48, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsarFSTFZzLuM_11xet_runtime5error12RuntimeErrorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet"}
!49 = distinct !{!49, !48, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsarFSTFZzLuM_11xet_runtime5error12RuntimeErrorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet: argument 0"}
!50 = distinct !{!50, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorEECs1YANDSn9Kib_7git_xet"}
!51 = distinct !{!51, !50, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorEECs1YANDSn9Kib_7git_xet: argument 0"}
!52 = distinct !{!52, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet"}
!53 = distinct !{!53, !52, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet: argument 0"}
!54 = distinct !{!54, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_2io5error5ErrorEECs1YANDSn9Kib_7git_xet"}
!55 = distinct !{!55, !54, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_2io5error5ErrorEECs1YANDSn9Kib_7git_xet: argument 0"}
!56 = distinct !{!56, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtNtBM_3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet"}
!57 = distinct !{!57, !56, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtNtBM_3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet: argument 0"}
!58 = distinct !{!58, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorEECs1YANDSn9Kib_7git_xet"}
!59 = distinct !{!59, !58, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorEECs1YANDSn9Kib_7git_xet: argument 0"}
!60 = distinct !{!60, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet"}
!61 = distinct !{!61, !60, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet: argument 0"}
!62 = distinct !{!62, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEECs1YANDSn9Kib_7git_xet"}
!63 = distinct !{!63, !62, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEECs1YANDSn9Kib_7git_xet: argument 0"}
!64 = distinct !{!64, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet"}
!65 = distinct !{!65, !64, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet: argument 0"}
!66 = distinct !{!66, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet"}
!67 = distinct !{!67, !66, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet: argument 0"}
!68 = !{i64 0, i64 11}
!69 = !{i64 0, i64 -9223372036854775795}
!70 = !{!29}
!71 = !{!31}
!72 = !{i64 0, i64 5}
!73 = !{!33}
!74 = !{!35}
!75 = !{!37}
!76 = !{i64 0, i64 24}
!77 = !{!39}
!78 = !{!41, !37}
!79 = !{!43, !37}
!80 = !{!45}
!81 = !{!45, !37}
!82 = !{!47}
!83 = !{!49}
!84 = !{!49, !47, !45, !37}
!85 = !{!51}
!86 = !{!53}
!87 = !{!53, !51, !45, !37}
!88 = !{!55}
!89 = !{!57}
!90 = !{!57, !55, !45, !37}
!91 = !{!59}
!92 = !{!61}
!93 = !{!61, !59, !45, !37}
!94 = !{!63}
!95 = !{!65}
!96 = !{!65, !63, !45, !37}
!97 = !{!67}
!98 = distinct !{!98, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet"}
!99 = distinct !{!99, !98, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet: argument 0"}
!100 = distinct !{!100, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet"}
!101 = distinct !{!101, !100, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet: argument 0"}
!102 = distinct !{!102, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorECs1YANDSn9Kib_7git_xet"}
!103 = distinct !{!103, !102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorECs1YANDSn9Kib_7git_xet: argument 0"}
!104 = distinct !{!104, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorECs1YANDSn9Kib_7git_xet"}
!105 = distinct !{!105, !104, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorECs1YANDSn9Kib_7git_xet: argument 0"}
!106 = !{i64 0, i64 21}
!107 = !{!99}
!108 = !{i64 0, i64 20}
!109 = !{!101}
!110 = !{!103}
!111 = !{!105}
!112 = distinct !{!112, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet"}
!113 = distinct !{!113, !112, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet: argument 0"}
!114 = !{!113}
!115 = distinct !{!115, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error5InnerECs1YANDSn9Kib_7git_xet"}
!116 = distinct !{!116, !115, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error5InnerECs1YANDSn9Kib_7git_xet: argument 0"}
!117 = distinct !{!117, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error4KindECs1YANDSn9Kib_7git_xet"}
!118 = distinct !{!118, !117, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error4KindECs1YANDSn9Kib_7git_xet: argument 0"}
!119 = distinct !{!119, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ekcjykjQb7_5hyper3ext16h1_reason_phrase12ReasonPhraseEECs1YANDSn9Kib_7git_xet"}
!120 = distinct !{!120, !119, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ekcjykjQb7_5hyper3ext16h1_reason_phrase12ReasonPhraseEECs1YANDSn9Kib_7git_xet: argument 0"}
!121 = distinct !{!121, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9ekcjykjQb7_5hyper3ext16h1_reason_phrase12ReasonPhraseECs1YANDSn9Kib_7git_xet"}
!122 = distinct !{!122, !121, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9ekcjykjQb7_5hyper3ext16h1_reason_phrase12ReasonPhraseECs1YANDSn9Kib_7git_xet: argument 0"}
!123 = distinct !{!123, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs1YANDSn9Kib_7git_xet"}
!124 = distinct !{!124, !123, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs1YANDSn9Kib_7git_xet: argument 0"}
!125 = distinct !{!125, i1 true, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!126 = distinct !{!126, !125, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!127 = distinct !{null}
!128 = distinct !{!128, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbc8Eb5TzBdy_3url3UrlEECs1YANDSn9Kib_7git_xet"}
!129 = distinct !{!129, !128, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbc8Eb5TzBdy_3url3UrlEECs1YANDSn9Kib_7git_xet: argument 0"}
!130 = !{!116}
!131 = !{!118}
!132 = !{i16 0, i16 7}
!133 = !{!118, !116}
!134 = !{!120}
!135 = !{!120, !118, !116}
!136 = !{!122}
!137 = !{!124}
!138 = !{!126}
!139 = !{!126, !124, !122, !120, !118, !116}
!140 = !{!129, !116}
!141 = distinct !{!141, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet"}
!142 = distinct !{!142, !141, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet: argument 0"}
!143 = distinct !{!143, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4Sxm5svDswZ_18reqwest_middleware5error5ErrorECs1YANDSn9Kib_7git_xet"}
!144 = distinct !{!144, !143, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4Sxm5svDswZ_18reqwest_middleware5error5ErrorECs1YANDSn9Kib_7git_xet: argument 0"}
!145 = distinct !{!145, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth9AuthErrorECs1YANDSn9Kib_7git_xet"}
!146 = distinct !{!146, !145, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth9AuthErrorECs1YANDSn9Kib_7git_xet: argument 0"}
!147 = !{i64 0, i64 42}
!148 = !{!142}
!149 = !{!144}
!150 = !{!146}
!151 = distinct !{!151, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error9ErrorImplECs1YANDSn9Kib_7git_xet"}
!152 = distinct !{!152, !151, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error9ErrorImplECs1YANDSn9Kib_7git_xet: argument 0"}
!153 = distinct !{!153, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error9ErrorCodeECs1YANDSn9Kib_7git_xet"}
!154 = distinct !{!154, !153, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error9ErrorCodeECs1YANDSn9Kib_7git_xet: argument 0"}
!155 = distinct !{!155, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet"}
!156 = distinct !{!156, !155, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet: argument 0"}
!157 = !{!152}
!158 = !{!154}
!159 = !{i64 0, i64 25}
!160 = !{!154, !152}
!161 = !{!156}
!162 = distinct !{!162, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs1YANDSn9Kib_7git_xet"}
!163 = distinct !{!163, !162, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs1YANDSn9Kib_7git_xet: argument 0"}
!164 = !{!163}
!165 = distinct !{!165, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec11InitRequestEBH_"}
!166 = distinct !{!166, !165, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec11InitRequestEBH_: argument 0"}
!167 = !{i64 0, i64 4}
!168 = !{!166}
!169 = distinct !{!169, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentEECs1YANDSn9Kib_7git_xet"}
!170 = distinct !{!170, !169, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentEECs1YANDSn9Kib_7git_xet: argument 0"}
!171 = distinct !{null}
!172 = distinct !{!172, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentEECs1YANDSn9Kib_7git_xet"}
!173 = distinct !{!173, !172, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentEECs1YANDSn9Kib_7git_xet: argument 0"}
!174 = !{i8 0, i8 22}
!175 = !{!170}
!176 = !{!173}
!177 = distinct !{null}
!178 = distinct !{!178, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!179 = distinct !{!179, !178, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!180 = distinct !{!180, i1 true, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs1YANDSn9Kib_7git_xet"}
!181 = distinct !{!181, !180, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs1YANDSn9Kib_7git_xet: argument 0"}
!182 = distinct !{!182, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet"}
!183 = distinct !{!183, !182, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1YANDSn9Kib_7git_xet: argument 0"}
!184 = !{i8 0, i8 44}
!185 = !{!179}
!186 = !{!181}
!187 = !{!183}
!188 = distinct !{!188, i1 true, !"_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyINtNtNtNtCseHpJhTld930_5serde7private2de7content20TaggedContentVisitorNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec1__NtB3y_23LFSProtocolRequestEventNtB1j_11Deserialize11deserialize7___FieldEEB3C_"}
!189 = distinct !{!189, !188, !"_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyINtNtNtNtCseHpJhTld930_5serde7private2de7content20TaggedContentVisitorNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec1__NtB3y_23LFSProtocolRequestEventNtB1j_11Deserialize11deserialize7___FieldEEB3C_: argument 1"}
!190 = distinct !{!190, !188, !"_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyINtNtNtNtCseHpJhTld930_5serde7private2de7content20TaggedContentVisitorNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec1__NtB3y_23LFSProtocolRequestEventNtB1j_11Deserialize11deserialize7___FieldEEB3C_: argument 2"}
!191 = distinct !{!191, !188, !"_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyINtNtNtNtCseHpJhTld930_5serde7private2de7content20TaggedContentVisitorNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec1__NtB3y_23LFSProtocolRequestEventNtB1j_11Deserialize11deserialize7___FieldEEB3C_: argument 0"}
!192 = distinct !{!192, i1 true, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!193 = distinct !{!193, !192, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!194 = distinct !{!194, i1 true, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!195 = distinct !{!195, !194, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!196 = distinct !{!196, i1 true, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!197 = distinct !{!197, !196, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!198 = distinct !{!198, i1 true, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!199 = distinct !{!199, !198, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!200 = distinct !{!200, i1 true, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!201 = distinct !{!201, !200, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!202 = distinct !{!202, i1 true, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!203 = distinct !{!203, !202, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!204 = distinct !{!204, i1 true, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!205 = distinct !{!205, !204, !"_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!206 = distinct !{!206, i1 true, !"_RINvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs0_1__NtB5_11InitRequestNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeINtNtNtNtCseHpJhTld930_5serde7private2de7content19ContentDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEEB9_"}
!207 = distinct !{!207, !206, !"_RINvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs0_1__NtB5_11InitRequestNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeINtNtNtNtCseHpJhTld930_5serde7private2de7content19ContentDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEEB9_: argument 1"}
!208 = distinct !{!208, !206, !"_RINvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs0_1__NtB5_11InitRequestNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeINtNtNtNtCseHpJhTld930_5serde7private2de7content19ContentDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEEB9_: argument 0"}
!209 = !{!189}
!210 = !{!191, !189, !190}
!211 = !{!191, !190}
!212 = !{!"branch_weights", i32 4000000, i32 4001}
!213 = !{!193, !189}
!214 = !{!195, !189}
!215 = !{!197, !189}
!216 = !{!199, !189}
!217 = !{i64 -1, i64 3}
!218 = !{!201, !189}
!219 = !{!191, !189}
!220 = !{!189, !190}
!221 = !{!203, !189}
!222 = !{!191}
!223 = !{!205, !189}
!224 = !{!208, !207}
!225 = !{!208}
!226 = !{!207}
!227 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2001, i32 2000}
!228 = distinct !{!228, i1 true, !"_RINvXNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs0_1__NtB8_11InitRequestNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1x_7Visitor9visit_u64NtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEBc_"}
!229 = distinct !{!229, !228, !"_RINvXNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs0_1__NtB8_11InitRequestNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1x_7Visitor9visit_u64NtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEBc_: argument 0"}
!230 = !{!229}
!231 = distinct !{!231, i1 true, !"_RINvXNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs1_1__NtB8_16InitRequestInnerNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1C_7Visitor11visit_bytesNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEBc_"}
!232 = distinct !{!232, !231, !"_RINvXNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs1_1__NtB8_16InitRequestInnerNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1C_7Visitor11visit_bytesNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEBc_: argument 0"}
!233 = distinct !{!233, !231, !"_RINvXNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs1_1__NtB8_16InitRequestInnerNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1C_7Visitor11visit_bytesNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEBc_: argument 1"}
!234 = !{!232}
!235 = !{!233}
!236 = distinct !{!236, i1 true, !"_RINvXNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs1_1__NtB8_16InitRequestInnerNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1C_7Visitor9visit_u64NtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEBc_"}
!237 = distinct !{!237, !236, !"_RINvXNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs1_1__NtB8_16InitRequestInnerNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1C_7Visitor9visit_u64NtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEBc_: argument 0"}
!238 = !{!237}
!239 = distinct !{!239, i1 true, !"_RINvXNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs2_1__NtB8_15TransferRequestNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1B_7Visitor11visit_bytesNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEBc_"}
!240 = distinct !{!240, !239, !"_RINvXNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs2_1__NtB8_15TransferRequestNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1B_7Visitor11visit_bytesNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEBc_: argument 0"}
!241 = distinct !{!241, !239, !"_RINvXNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs2_1__NtB8_15TransferRequestNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1B_7Visitor11visit_bytesNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEBc_: argument 1"}
!242 = !{!240}
!243 = !{!241}
!244 = distinct !{!244, i1 true, !"_RINvXNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs2_1__NtB8_15TransferRequestNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1B_7Visitor9visit_u64NtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEBc_"}
!245 = distinct !{!245, !244, !"_RINvXNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs2_1__NtB8_15TransferRequestNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1B_7Visitor9visit_u64NtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEBc_: argument 0"}
!246 = !{!245}
!247 = distinct !{!247, i1 true, !"_RINvXNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs5_1__NtB8_25GitBatchApiResponseActionNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1L_7Visitor11visit_bytesNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEBc_"}
!248 = distinct !{!248, !247, !"_RINvXNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs5_1__NtB8_25GitBatchApiResponseActionNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1L_7Visitor11visit_bytesNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEBc_: argument 0"}
!249 = distinct !{!249, !247, !"_RINvXNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs5_1__NtB8_25GitBatchApiResponseActionNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1L_7Visitor11visit_bytesNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEBc_: argument 1"}
!250 = !{!248}
!251 = !{!249}
!252 = distinct !{!252, i1 true, !"_RINvXNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs5_1__NtB8_25GitBatchApiResponseActionNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1L_7Visitor9visit_u64NtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEBc_"}
!253 = distinct !{!253, !252, !"_RINvXNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specs5_1__NtB8_25GitBatchApiResponseActionNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1L_7Visitor9visit_u64NtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEBc_: argument 0"}
!254 = !{!253}
!255 = distinct !{!255, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec11InitRequestEBH_"}
!256 = distinct !{!256, !255, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec11InitRequestEBH_: argument 0"}
!257 = !{!256}
!258 = distinct !{!258, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs1YANDSn9Kib_7git_xet"}
!259 = distinct !{!259, !258, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs1YANDSn9Kib_7git_xet: argument 0"}
!260 = !{!259}
!261 = !{i64 -1, i64 -9223372036854775806}
!262 = !{i64 0, i64 -9223372036854775807}
!263 = distinct !{!263, i1 true, !"_RNvXs0_NtCsarFSTFZzLuM_11xet_runtime5errorNtB5_12RuntimeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!264 = distinct !{!264, !263, !"_RNvXs0_NtCsarFSTFZzLuM_11xet_runtime5errorNtB5_12RuntimeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!265 = distinct !{!265, !263, !"_RNvXs0_NtCsarFSTFZzLuM_11xet_runtime5errorNtB5_12RuntimeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!266 = !{!264}
!267 = !{!264, !265}
!268 = distinct !{!268, i1 true, !"_RNvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specNtB2_23LFSProtocolRequestEvent8validate"}
!269 = distinct !{!269, !268, !"_RNvMNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specNtB2_23LFSProtocolRequestEvent8validate: argument 1"}
!270 = !{i64 -1, i64 4}
!271 = !{!269}
!272 = distinct !{!272, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueECs1YANDSn9Kib_7git_xet"}
!273 = distinct !{!273, !272, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueECs1YANDSn9Kib_7git_xet: argument 0"}
!274 = distinct !{!274, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECs1YANDSn9Kib_7git_xet"}
!275 = distinct !{!275, !274, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECs1YANDSn9Kib_7git_xet: argument 0"}
!276 = distinct !{!276, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet"}
!277 = distinct !{!277, !276, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet: argument 0"}
!278 = distinct !{!278, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueECs1YANDSn9Kib_7git_xet"}
!279 = distinct !{!279, !278, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueECs1YANDSn9Kib_7git_xet: argument 0"}
!280 = distinct !{!280, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueECs1YANDSn9Kib_7git_xet"}
!281 = distinct !{!281, !280, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf1bHqHEg0eP_12clap_builder4util9any_value8AnyValueECs1YANDSn9Kib_7git_xet: argument 0"}
!282 = distinct !{!282, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECs1YANDSn9Kib_7git_xet"}
!283 = distinct !{!283, !282, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECs1YANDSn9Kib_7git_xet: argument 0"}
!284 = distinct !{!284, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet"}
!285 = distinct !{!285, !284, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet: argument 0"}
!286 = !{!273}
!287 = !{!275}
!288 = !{!277}
!289 = !{!277, !275, !273, !279}
!290 = !{!277, !275, !273}
!291 = !{!281}
!292 = !{!283}
!293 = !{!285}
!294 = !{!285, !283, !281, !279}
!295 = !{!285, !283, !281}
!296 = distinct !{!296, i1 true, !"_RNvXs1_NtCsarFSTFZzLuM_11xet_runtime5errorNtB5_12RuntimeErrorNtNtCskKLDkoKarTP_4core5error5Error6source"}
!297 = distinct !{!297, !296, !"_RNvXs1_NtCsarFSTFZzLuM_11xet_runtime5errorNtB5_12RuntimeErrorNtNtCskKLDkoKarTP_4core5error5Error6source: argument 0"}
!298 = !{!297}
end_hunk_2
