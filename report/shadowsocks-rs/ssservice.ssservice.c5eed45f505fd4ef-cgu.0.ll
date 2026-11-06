Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RINvNtCslXgxf2tUV4p_15futures_channel4mpsc7channelINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEECsgZAIVb0XKpv_9ssservice:bb.a

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCslXgxf2tUV4p_15futures_channel4mpsc7channelNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestECsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !31000
  %i.a = tail call noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !31000 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !182

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #61, !noalias !31000
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 -1, ptr %i.a, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr null, ptr %.sroa.451.0..sroa_idx, align 8
  %i.c = ptrtoint ptr %i.a to i64
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !31001
  %_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed = tail call align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 16, i64 8) ; 3 uses
  %i.d = icmp eq ptr %_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed, null
  br i1 %i.d, label %bb.c, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit48, !prof !182

bb.c:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61, !noalias !31001
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit48: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !31002
  %i.e = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !31002 ; 15 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit49, !prof !182

bb.d:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit48
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #61, !noalias !31002
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit49: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit48
  %i.g = ptrtoint ptr %_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed to i64
  store i64 1, ptr %i.e, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.c, ptr %.sroa.5.0..sroa_idx56, align 8
  %.sroa.6.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.a, ptr %.sroa.6.0..sroa_idx57, align 8
  %.sroa.7.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.g, ptr %.sroa.7.0..sroa_idx58, align 8
  %.sroa.8.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed, ptr %.sroa.8.0..sroa_idx59, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 32, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 -9223372036854775808, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr null, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.1360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 0, ptr %.sroa.1360.0..sroa_idx, align 8
  %i.h = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit49
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !31003
  %i.j = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !31003 ; 8 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit50, !prof !182

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #61, !noalias !31003
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit50: ; preds = %bb.e
  store i64 1, ptr %i.j, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 0, ptr %.sroa.563.0..sroa_idx, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i8 0, ptr %.sroa.664.0..sroa_idx, align 4
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr null, ptr %.sroa.766.0..sroa_idx, align 8
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i8 0, ptr %.sroa.868.0..sroa_idx, align 8
  store ptr %i.e, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.527.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.l, align 8
  ret void

bb.g:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit49
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCslXgxf2tUV4p_15futures_channel4mpsc7channelzECsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52
  %i.a = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #52 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !182

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #61
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.a to i64
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !31010
  %_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed = tail call align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 16, i64 8) ; 3 uses
  %i.d = icmp eq ptr %_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed, null
  br i1 %i.d, label %bb.c, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit49, !prof !182

bb.c:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61, !noalias !31010
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit49: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !31011
  %i.e = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !31011 ; 15 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit50, !prof !182

bb.d:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit49
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #61, !noalias !31011
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit50: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit49
  %i.g = ptrtoint ptr %_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed to i64
  store i64 1, ptr %i.e, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %.sroa.453.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.c, ptr %.sroa.5.0..sroa_idx54, align 8
  %.sroa.6.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.a, ptr %.sroa.6.0..sroa_idx55, align 8
  %.sroa.7.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.g, ptr %.sroa.7.0..sroa_idx56, align 8
  %.sroa.8.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed, ptr %.sroa.8.0..sroa_idx57, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 -9223372036854775808, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr null, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.1358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 0, ptr %.sroa.1358.0..sroa_idx, align 8
  %i.h = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit50
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !31012
  %i.j = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !31012 ; 8 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit51, !prof !182

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #61, !noalias !31012
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit51: ; preds = %bb.e
  store i64 1, ptr %i.j, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %.sroa.460.0..sroa_idx, align 8
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 0, ptr %.sroa.561.0..sroa_idx, align 8
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i8 0, ptr %.sroa.662.0..sroa_idx, align 4
  %.sroa.764.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr null, ptr %.sroa.764.0..sroa_idx, align 8
  %.sroa.866.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i8 0, ptr %.sroa.866.0..sroa_idx, align 8
  store ptr %i.e, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.527.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.l, align 8
  ret void

bb.g:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit50
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCs3csC7NK4ZxG_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #7 {
.preheader.preheader:
  %.sroa.0.0.copyload.i121 = load <4 x i32>, ptr %0, align 4, !noalias !31025
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i18122 = load <4 x i32>, ptr %i.a, align 4, !noalias !31026
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i19123 = load <4 x i32>, ptr %i.b, align 4, !noalias !31027
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i20 = load <2 x i64>, ptr %i.c, align 4, !noalias !31028
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i20, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0> ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0> ; 2 uses
  %.cast = shufflevector <4 x i32> %.sroa.0.0.copyload.i19123, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %2 = shufflevector <4 x i32> %.sroa.0.0.copyload.i18122, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %3 = shufflevector <4 x i32> %.sroa.0.0.copyload.i121, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %11, %bb.a ]
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %9, %bb.a ]
  %.sroa.023.062.i = phi i64 [ 0, %.preheader.preheader ], [ %i.m, %bb.a ]
  %i.g = phi <8 x i32> [ %3, %.preheader.preheader ], [ %i.ce, %bb.a ]
  %i.h = phi <8 x i32> [ %2, %.preheader.preheader ], [ %i.by, %bb.a ] ; 2 uses
  %i.i = phi <8 x i32> [ %3, %.preheader.preheader ], [ %i.cg, %bb.a ]
  %i.j = phi <8 x i32> [ %2, %.preheader.preheader ], [ %i.cc, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cd, %bb.a ]
  %i.l = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cf, %bb.a ]
  %i.m = add nuw nsw i64 %.sroa.023.062.i, 1      ; 2 uses
  %i.n = add <8 x i32> %i.h, %i.g                 ; 2 uses
  %i.o = bitcast <8 x i32> %i.n to <4 x i64>
  %i.p = xor <4 x i64> %.sroa.19.0.i, %i.o
  %i.q = bitcast <4 x i64> %i.p to <32 x i8>
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.s = add <8 x i32> %i.j, %i.i                 ; 2 uses
  %i.t = bitcast <8 x i32> %i.s to <4 x i64>
  %i.u = xor <4 x i64> %.sroa.46.0.i, %i.t
  %i.v = bitcast <4 x i64> %i.u to <32 x i8>
  %i.w = shufflevector <32 x i8> %i.v, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.x = bitcast <32 x i8> %i.r to <8 x i32>
  %i.y = add <8 x i32> %i.k, %i.x                 ; 2 uses
  %i.z = xor <8 x i32> %i.y, %i.h                 ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.z, <8 x i32> %i.z, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ab = bitcast <32 x i8> %i.w to <8 x i32>
  %i.ac = add <8 x i32> %i.l, %i.ab               ; 2 uses
  %i.ad = xor <8 x i32> %i.ac, %i.j               ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ad, <8 x i32> %i.ad, <8 x i32> splat (i32 12)) ; 2 uses
  %i.af = add <8 x i32> %i.aa, %i.n               ; 2 uses
  %i.ag = bitcast <8 x i32> %i.af to <32 x i8>
  %i.ah = xor <32 x i8> %i.r, %i.ag
  %i.ai = shufflevector <32 x i8> %i.ah, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.aj = add <8 x i32> %i.ae, %i.s               ; 2 uses
  %i.ak = bitcast <8 x i32> %i.aj to <32 x i8>
  %i.al = xor <32 x i8> %i.w, %i.ak
  %i.am = shufflevector <32 x i8> %i.al, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.an = bitcast <32 x i8> %i.ai to <8 x i32>    ; 2 uses
  %i.ao = add <8 x i32> %i.y, %i.an               ; 2 uses
  %i.ap = xor <8 x i32> %i.ao, %i.aa              ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ap, <8 x i32> %i.ap, <8 x i32> splat (i32 7)) ; 2 uses
  %i.ar = bitcast <32 x i8> %i.am to <8 x i32>    ; 2 uses
  %i.as = add <8 x i32> %i.ac, %i.ar              ; 2 uses
  %i.at = xor <8 x i32> %i.as, %i.ae              ; 2 uses
  %i.au = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.at, <8 x i32> %i.at, <8 x i32> splat (i32 7)) ; 2 uses
  %i.av = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %4 = shufflevector <8 x i32> %i.an, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.aw = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.ax = shufflevector <8 x i32> %i.as, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %5 = shufflevector <8 x i32> %i.ar, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.ay = shufflevector <8 x i32> %i.aj, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.az = add <8 x i32> %i.aq, %i.aw              ; 2 uses
  %6 = xor <8 x i32> %i.az, %4
  %i.ba = bitcast <8 x i32> %6 to <32 x i8>
  %i.bb = shufflevector <32 x i8> %i.ba, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bc = add <8 x i32> %i.au, %i.ay              ; 2 uses
  %7 = xor <8 x i32> %i.bc, %5
  %i.bd = bitcast <8 x i32> %7 to <32 x i8>
  %i.be = shufflevector <32 x i8> %i.bd, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bf = bitcast <32 x i8> %i.bb to <8 x i32>
  %i.bg = add <8 x i32> %i.av, %i.bf              ; 2 uses
  %i.bh = xor <8 x i32> %i.bg, %i.aq              ; 2 uses
  %i.bi = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bh, <8 x i32> %i.bh, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bj = bitcast <32 x i8> %i.be to <8 x i32>
  %i.bk = add <8 x i32> %i.ax, %i.bj              ; 2 uses
  %i.bl = xor <8 x i32> %i.bk, %i.au              ; 2 uses
  %i.bm = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bl, <8 x i32> %i.bl, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bn = add <8 x i32> %i.bi, %i.az              ; 2 uses
  %i.bo = bitcast <8 x i32> %i.bn to <32 x i8>
  %i.bp = xor <32 x i8> %i.bb, %i.bo
  %i.bq = shufflevector <32 x i8> %i.bp, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.br = add <8 x i32> %i.bm, %i.bc              ; 2 uses
  %i.bs = bitcast <8 x i32> %i.br to <32 x i8>
  %i.bt = xor <32 x i8> %i.be, %i.bs
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.bv = bitcast <32 x i8> %i.bq to <8 x i32>    ; 2 uses
  %i.bw = add <8 x i32> %i.bg, %i.bv              ; 2 uses
  %i.bx = xor <8 x i32> %i.bw, %i.bi              ; 2 uses
  %i.by = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bx, <8 x i32> %i.bx, <8 x i32> splat (i32 7)) ; 2 uses
  %i.bz = bitcast <32 x i8> %i.bu to <8 x i32>    ; 2 uses
  %i.ca = add <8 x i32> %i.bk, %i.bz              ; 2 uses
  %i.cb = xor <8 x i32> %i.ca, %i.bm              ; 2 uses
  %i.cc = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cb, <8 x i32> %i.cb, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cd = shufflevector <8 x i32> %i.bw, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %8 = shufflevector <8 x i32> %i.bv, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %9 = bitcast <8 x i32> %8 to <4 x i64>
  %i.ce = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.cf = shufflevector <8 x i32> %i.ca, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %10 = shufflevector <8 x i32> %i.bz, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %11 = bitcast <8 x i32> %10 to <4 x i64>
  %i.cg = shufflevector <8 x i32> %i.br, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, 6
  br i1 %exitcond.not.i, label %_RNvMs1_NtNtCs3csC7NK4ZxG_8chacha208backends4avx2INtB5_7BackendNtB9_3R12NtNtB9_8variants6LegacyE21rng_gen_par_ks_blocksCsgZAIVb0XKpv_9ssservice.exit, label %bb.a

_RNvMs1_NtNtCs3csC7NK4ZxG_8chacha208backends4avx2INtB5_7BackendNtB9_3R12NtNtB9_8variants6LegacyE21rng_gen_par_ks_blocksCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a
  %i.ch = bitcast <4 x i64> %i.f to <8 x i32>
  %i.ci = add <8 x i32> %10, %i.ch                ; 2 uses
  %i.cj = add <8 x i32> %i.cf, %.cast             ; 2 uses
  %i.ck = add <8 x i32> %i.cc, %2                 ; 2 uses
  %i.cl = add <8 x i32> %i.cg, %3                 ; 2 uses
  %i.cm = bitcast <4 x i64> %i.e to <8 x i32>
  %i.cn = add <8 x i32> %8, %i.cm                 ; 2 uses
  %i.co = add <8 x i32> %i.cd, %.cast             ; 2 uses
  %i.cp = add <8 x i32> %i.by, %2                 ; 2 uses
  %i.cq = add <8 x i32> %i.ce, %3                 ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !31029
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.cr, align 4, !noalias !31030
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.cs, align 4, !noalias !31029
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.ct, align 4, !noalias !31030
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.cu, align 4, !noalias !31029
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.cv, align 4, !noalias !31030
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.cw, align 4, !noalias !31029
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.cx, align 4, !noalias !31030
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.cy, align 4, !noalias !31029
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.cz, align 4, !noalias !31030
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.da, align 4, !noalias !31029
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.db, align 4, !noalias !31030
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dc, align 4, !noalias !31029
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dd, align 4, !noalias !31030
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.de, align 4, !noalias !31029
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.df, align 4, !noalias !31030
  %i.dg = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %12 = bitcast <4 x i64> %i.dg to <8 x i32>
  %13 = shufflevector <8 x i32> %12, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %13, ptr %i.c, align 4
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc noundef i8 @_RINvNtNtCs5Xr050g3D4S_3std3sys9backtrace28___rust_begin_short_backtraceFENtNtB6_7process8ExitCodeB19_ECsgZAIVb0XKpv_9ssservice(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = tail call noundef i8 %0() #52, !inline_history !31031
  tail call void asm sideeffect "", "~{memory}"() #52
  ret i8 %i.a
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef range(i16 0, -32768) i16 @_RINvNtNtCs7ewmRfXve8r_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 13 uses
  %i.d = load i64, ptr %0, align 8, !range !190, !noundef !177
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load <2 x i64>, ptr %i.f, align 8        ; 3 uses
  %i.h = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.i = xor <2 x i64> %i.h, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.i, ptr %i.c, align 16
  %i.j = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.k = xor <2 x i64> %i.j, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.k, ptr %.sroa.513.0..sroa_idx, align 16
  store <2 x i64> %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %1, align 8, !noalias !31055, !noundef !177
  %i.m = icmp ne ptr %i.l, null                   ; 2 uses
  %i.n = zext i1 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31056
  store i64 %i.n, ptr %i.b, align 8, !noalias !31056
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31056
  %i.o = getelementptr i8, ptr %1, i64 8          ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %i.o, align 8, !noalias !31055, !noundef !177
  %i.p = getelementptr i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.p, align 8, !noalias !31055, !noundef !177
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i) #60
  br label %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsgZAIVb0XKpv_9ssservice.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.o, align 8, !range !201, !noalias !31055, !noundef !177
  %i.r = zext nneg i8 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31057
  store i64 %i.r, ptr %i.a, align 8, !noalias !31057
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31057
  br label %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsgZAIVb0XKpv_9ssservice.exit

_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 16, !alias.scope !31058
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !31058
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.513.0..sroa_idx, align 16, !alias.scope !31058 ; 3 uses
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !31058
  %i.s = load i64, ptr %.sroa.915.0..sroa_idx, align 16, !alias.scope !31058, !noundef !177
  %i.t = shl i64 %i.s, 56
  %i.u = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !31058, !noundef !177
  %i.v = or i64 %i.t, %i.u                        ; 2 uses
  %i.w = xor i64 %i.v, %.sroa.22.0.copyload.i     ; 3 uses
  %i.x = add i64 %.sroa.17.0.copyload.i, %.sroa.0.0.copyload.i ; 3 uses
  %i.y = add i64 %i.w, %.sroa.10.0.copyload.i     ; 2 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i, i64 %.sroa.17.0.copyload.i, i64 13)
  %i.aa = xor i64 %i.z, %i.x                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 16)
  %i.ac = xor i64 %i.ab, %i.y                     ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ae = add i64 %i.y, %i.aa                     ; 3 uses
  %i.af = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 17)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 21)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = xor i64 %i.af, %i.v
  %i.am = xor i64 %i.ak, 255
  %i.an = add i64 %i.al, %i.ah                    ; 3 uses
  %i.ao = add i64 %i.aj, %i.am                    ; 2 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 13)
  %i.aq = xor i64 %i.an, %i.ap                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 16)
  %i.as = xor i64 %i.ar, %i.ao                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 32)
  %i.au = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.av = add i64 %i.as, %i.at                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 17)
  %i.ax = xor i64 %i.au, %i.aw                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 21)
  %i.az = xor i64 %i.ay, %i.av                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  %i.bb = add i64 %i.ax, %i.av                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.be = xor i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 16)
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bi = add i64 %i.be, %i.bc                    ; 3 uses
  %i.bj = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 17)
  %i.bl = xor i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 21)
  %i.bn = xor i64 %i.bm, %i.bj                    ; 2 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 32)
  %i.bp = add i64 %i.bl, %i.bj
  %i.bq = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 13)
  %i.bs = xor i64 %i.br, %i.bp                    ; 2 uses
  %i.bt = shl i64 %i.bn, 16
  %i.bu = xor i64 %i.bt, %i.bq
  %i.bv = add i64 %i.bs, %i.bq                    ; 2 uses
  %i.bw = lshr i64 %i.bs, 47
  %i.bx = lshr i64 %i.bu, 43
  %i.by = lshr i64 %i.bv, 32
  %i.bz = xor i64 %i.bx, %i.bw
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = xor i64 %i.ca, %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsgZAIVb0XKpv_9ssservice.exit

bb.e:                                             ; preds = %bb.a
  %i.cc = load ptr, ptr %1, align 8, !noalias !31059, !noundef !177
  %i.cd = icmp ne ptr %i.cc, null                 ; 2 uses
  %i.ce = zext i1 %i.cd to i64
  %i.cf = xor i64 %i.ce, -3750763034362895579
  %i.cg = mul i64 %i.cf, 2232315406967589409      ; 4 uses
  %i.ch = getelementptr i8, ptr %1, i64 8         ; 2 uses
  br i1 %i.cd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val.i.i20 = load ptr, ptr %i.ch, align 8, !noalias !31059, !noundef !177 ; 3 uses
  %i.ci = getelementptr i8, ptr %1, i64 16
  %.val1.i.i21 = load i64, ptr %i.ci, align 8, !noalias !31059, !noundef !177 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i20, i64 %.val1.i.i21
  %i.ck = icmp samesign eq i64 %.val1.i.i21, 0
  br i1 %i.ck, label %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsgZAIVb0XKpv_9ssservice.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %xtraiter = and i64 %.val1.i.i21, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.prol ], [ %i.cg, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.prol = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.prol ], [ %.val.i.i20, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.prol, i64 1 ; 2 uses
  %i.cm = load i8, ptr %.sroa.03.05.i.i.i.i.prol, align 1, !alias.scope !31060, !noalias !31061, !noundef !177
  %i.cn = zext i8 %i.cm to i64
  %i.co = xor i64 %.sroa.0.06.i.i.i.i.prol, %i.cn
  %i.cp = mul i64 %i.co, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !31054

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.unr = phi ptr [ %.val.i.i20, %.lr.ph.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.prol ]
  %i.cq = icmp ult i64 %.val1.i.i21, 8
  br i1 %i.cq, label %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsgZAIVb0XKpv_9ssservice.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 1
  %i.cs = load i8, ptr %.sroa.03.05.i.i.i.i, align 1, !alias.scope !31060, !noalias !31061, !noundef !177
  %i.ct = zext i8 %i.cs to i64
  %i.cu = xor i64 %.sroa.0.06.i.i.i.i, %i.ct
  %i.cv = mul i64 %i.cu, 1099511628211
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 2
  %i.cx = load i8, ptr %i.cr, align 1, !alias.scope !31060, !noalias !31061, !noundef !177
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = mul i64 %i.cz, 1099511628211
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 3
  %i.dc = load i8, ptr %i.cw, align 1, !alias.scope !31060, !noalias !31061, !noundef !177
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.da, %i.dd
  %i.df = mul i64 %i.de, 1099511628211
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 4
  %i.dh = load i8, ptr %i.db, align 1, !alias.scope !31060, !noalias !31061, !noundef !177
  %i.di = zext i8 %i.dh to i64
  %i.dj = xor i64 %i.df, %i.di
  %i.dk = mul i64 %i.dj, 1099511628211
end_hunk_0
begin_hunk_1_@_RNvXs_NtCs2dlyTE5y14r_2h25frameINtB4_5FrameINtNtNtNtB6_5proto7streams10prioritize11PrioritizedINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice:bb.a
  %i.q = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2782, i64 noundef 7, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2781) #52 ; 0 uses
  br label %_RNvXs2_NtNtCs2dlyTE5y14r_2h25frame4dataINtB5_4DataINtNtNtNtB9_5proto7streams10prioritize11PrioritizedINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice.exit

_RNvXs2_NtNtCs2dlyTE5y14r_2h25frame4dataINtB5_4DataINtNtNtNtB9_5proto7streams10prioritize11PrioritizedINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.d, %bb.e
  %i.r = call noundef zeroext i1 @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100737
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = tail call noundef zeroext i1 @_RNvXs0_NtNtCs2dlyTE5y14r_2h25frame7headersNtB5_7HeadersNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #52
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.b, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2677, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2436, i64 noundef 9, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2433, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2678, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2676) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = tail call noundef zeroext i1 @_RNvXs3_NtNtCs2dlyTE5y14r_2h25frame7headersNtB5_11PushPromiseNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #52
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = tail call noundef zeroext i1 @_RNvXs0_NtNtCs2dlyTE5y14r_2h25frame8settingsNtB5_8SettingsNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(60) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #52
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.ac, ptr %i.c, align 8
  %i.ad = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2439, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2440, i64 noundef 3, ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2396, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2441, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2438) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = tail call noundef zeroext i1 @_RNvXs0_NtNtCs2dlyTE5y14r_2h25frame7go_awayNtB5_6GoAwayNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #52
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.d, align 8
  %i.ai = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2435, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2436, i64 noundef 9, ptr noundef nonnull %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2433, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2437, i64 noundef 14, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2434) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.e, align 8
  %i.al = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2823, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2436, i64 noundef 9, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2433, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2824, i64 noundef 10, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2822) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_RNvXs2_NtNtCs2dlyTE5y14r_2h25frame4dataINtB5_4DataINtNtNtNtB9_5proto7streams10prioritize11PrioritizedINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.0.0.in = phi i1 [ %i.r, %_RNvXs2_NtNtCs2dlyTE5y14r_2h25frame4dataINtB5_4DataINtNtNtNtB9_5proto7streams10prioritize11PrioritizedINtNtNtCsaI3lGUjttVO_5hyper5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEEENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice.exit ], [ %i.t, %bb.f ], [ %i.w, %bb.g ], [ %i.y, %bb.h ], [ %i.aa, %bb.i ], [ %i.ad, %bb.j ], [ %i.af, %bb.k ], [ %i.ai, %bb.l ], [ %i.al, %bb.m ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs2dlyTE5y14r_2h25frameINtB4_5FrameINtNtNtNtB6_5proto7streams10prioritize11PrioritizedNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i8, ptr %0, align 8, !range !218, !noundef !177
  switch i8 %i.f, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.l
    i8 8, label %bb.m
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !100740
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2778, i64 noundef 4) #52
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2436, i64 noundef 9, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2433) #52 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !noalias !100740, !noundef !177
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2780, i64 noundef 5, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2779) #52 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.n = load i8, ptr %i.m, align 1, !range !180, !noalias !100740, !noundef !177
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %_RNvXs2_NtNtCs2dlyTE5y14r_2h25frame4dataINtB5_4DataINtNtNtNtB9_5proto7streams10prioritize11PrioritizedNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 70
  %i.q = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2782, i64 noundef 7, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2781) #52 ; 0 uses
  br label %_RNvXs2_NtNtCs2dlyTE5y14r_2h25frame4dataINtB5_4DataINtNtNtNtB9_5proto7streams10prioritize11PrioritizedNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice.exit

_RNvXs2_NtNtCs2dlyTE5y14r_2h25frame4dataINtB5_4DataINtNtNtNtB9_5proto7streams10prioritize11PrioritizedNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.d, %bb.e
  %i.r = call noundef zeroext i1 @_RNvMs2_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100740
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = tail call noundef zeroext i1 @_RNvXs0_NtNtCs2dlyTE5y14r_2h25frame7headersNtB5_7HeadersNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #52
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.b, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2677, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2436, i64 noundef 9, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2433, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2678, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2676) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = tail call noundef zeroext i1 @_RNvXs3_NtNtCs2dlyTE5y14r_2h25frame7headersNtB5_11PushPromiseNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #52
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = tail call noundef zeroext i1 @_RNvXs0_NtNtCs2dlyTE5y14r_2h25frame8settingsNtB5_8SettingsNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(60) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #52
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.ac, ptr %i.c, align 8
  %i.ad = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2439, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2440, i64 noundef 3, ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2396, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2441, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2438) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = tail call noundef zeroext i1 @_RNvXs0_NtNtCs2dlyTE5y14r_2h25frame7go_awayNtB5_6GoAwayNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #52
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.d, align 8
  %i.ai = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2435, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2436, i64 noundef 9, ptr noundef nonnull %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2433, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2437, i64 noundef 14, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2434) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.e, align 8
  %i.al = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2823, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2436, i64 noundef 9, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2433, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2824, i64 noundef 10, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2822) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_RNvXs2_NtNtCs2dlyTE5y14r_2h25frame4dataINtB5_4DataINtNtNtNtB9_5proto7streams10prioritize11PrioritizedNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.0.0.in = phi i1 [ %i.r, %_RNvXs2_NtNtCs2dlyTE5y14r_2h25frame4dataINtB5_4DataINtNtNtNtB9_5proto7streams10prioritize11PrioritizedNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice.exit ], [ %i.t, %bb.f ], [ %i.w, %bb.g ], [ %i.y, %bb.h ], [ %i.aa, %bb.i ], [ %i.ad, %bb.j ], [ %i.af, %bb.k ], [ %i.ai, %bb.l ], [ %i.al, %bb.m ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvXs_NtCs3csC7NK4ZxG_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generateCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #18 {
bb.a:
  %i.a = load atomic i8, ptr @_RNvNtCs3csC7NK4ZxG_8chacha2010avx2_cpuid7STORAGE monotonic, align 1
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100745)
  %.sroa.012.0.copyload24.i = load <4 x i32>, ptr %0, align 4, !alias.scope !100744 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.013.0.copyload25.i = load <4 x i32>, ptr %i.c, align 4, !alias.scope !100744 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.014.0.copyload26.i = load <4 x i32>, ptr %i.d, align 4, !alias.scope !100744 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.015.0.copyload.i = load <2 x i64>, ptr %i.e, align 4, !alias.scope !100744 ; 5 uses
  %2 = bitcast <2 x i64> %.sroa.015.0.copyload.i to <4 x i32> ; 2 uses
  %i.f = add <2 x i64> %.sroa.015.0.copyload.i, <i64 1, i64 0>
  %i.g = add <2 x i64> %.sroa.015.0.copyload.i, <i64 2, i64 0>
  %i.h = add <2 x i64> %.sroa.015.0.copyload.i, <i64 3, i64 0>
  %3 = bitcast <2 x i64> %i.f to <4 x i32>        ; 2 uses
  %4 = bitcast <2 x i64> %i.g to <4 x i32>        ; 2 uses
  %5 = bitcast <2 x i64> %i.h to <4 x i32>        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.042.0110.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %bb.c ]
  %6 = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.du, %bb.c ]
  %7 = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ci, %bb.c ] ; 2 uses
  %8 = phi <4 x i32> [ %2, %bb.b ], [ %16, %bb.c ]
  %9 = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dt, %bb.c ]
  %i.i = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dw, %bb.c ]
  %i.j = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.cu, %bb.c ] ; 2 uses
  %i.k = phi <4 x i32> [ %3, %bb.b ], [ %17, %bb.c ]
  %i.l = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dv, %bb.c ]
  %i.m = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dy, %bb.c ]
  %i.n = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.dg, %bb.c ] ; 2 uses
  %i.o = phi <4 x i32> [ %4, %bb.b ], [ %18, %bb.c ]
  %i.p = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dx, %bb.c ]
  %i.q = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.ea, %bb.c ]
  %i.r = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ds, %bb.c ] ; 2 uses
  %i.s = phi <4 x i32> [ %5, %bb.b ], [ %19, %bb.c ]
  %i.t = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dz, %bb.c ]
  %i.u = add nuw nsw i64 %.sroa.042.0110.i.i, 1   ; 2 uses
  %i.v = add <4 x i32> %7, %6                     ; 2 uses
  %i.w = xor <4 x i32> %8, %i.v                   ; 2 uses
  %i.x = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.w, <4 x i32> %i.w, <4 x i32> splat (i32 16)) ; 2 uses
  %i.y = add <4 x i32> %i.x, %9                   ; 2 uses
  %i.z = xor <4 x i32> %i.y, %7                   ; 2 uses
  %i.aa = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.z, <4 x i32> %i.z, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ab = add <4 x i32> %i.aa, %i.v               ; 2 uses
  %i.ac = xor <4 x i32> %i.ab, %i.x               ; 2 uses
  %i.ad = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ac, <4 x i32> %i.ac, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ae = add <4 x i32> %i.ad, %i.y               ; 2 uses
  %i.af = xor <4 x i32> %i.ae, %i.aa              ; 2 uses
  %i.ag = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.af, <4 x i32> %i.af, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ah = add <4 x i32> %i.j, %i.i                ; 2 uses
  %i.ai = xor <4 x i32> %i.k, %i.ah               ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ai, <4 x i32> %i.ai, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ak = add <4 x i32> %i.aj, %i.l               ; 2 uses
  %i.al = xor <4 x i32> %i.ak, %i.j               ; 2 uses
  %i.am = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.al, <4 x i32> %i.al, <4 x i32> splat (i32 12)) ; 2 uses
  %i.an = add <4 x i32> %i.am, %i.ah              ; 2 uses
  %i.ao = xor <4 x i32> %i.an, %i.aj              ; 2 uses
  %i.ap = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ao, <4 x i32> %i.ao, <4 x i32> splat (i32 8)) ; 2 uses
  %i.aq = add <4 x i32> %i.ap, %i.ak              ; 2 uses
  %i.ar = xor <4 x i32> %i.aq, %i.am              ; 2 uses
  %i.as = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ar, <4 x i32> %i.ar, <4 x i32> splat (i32 7)) ; 2 uses
  %i.at = add <4 x i32> %i.n, %i.m                ; 2 uses
  %i.au = xor <4 x i32> %i.o, %i.at               ; 2 uses
  %i.av = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.au, <4 x i32> %i.au, <4 x i32> splat (i32 16)) ; 2 uses
  %i.aw = add <4 x i32> %i.av, %i.p               ; 2 uses
  %i.ax = xor <4 x i32> %i.aw, %i.n               ; 2 uses
  %i.ay = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ax, <4 x i32> %i.ax, <4 x i32> splat (i32 12)) ; 2 uses
  %i.az = add <4 x i32> %i.ay, %i.at              ; 2 uses
  %i.ba = xor <4 x i32> %i.az, %i.av              ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ba, <4 x i32> %i.ba, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bc = add <4 x i32> %i.bb, %i.aw              ; 2 uses
  %i.bd = xor <4 x i32> %i.bc, %i.ay              ; 2 uses
  %i.be = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bd, <4 x i32> %i.bd, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bf = add <4 x i32> %i.r, %i.q                ; 2 uses
  %i.bg = xor <4 x i32> %i.s, %i.bf               ; 2 uses
  %i.bh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bg, <4 x i32> %i.bg, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bi = add <4 x i32> %i.bh, %i.t               ; 2 uses
  %i.bj = xor <4 x i32> %i.bi, %i.r               ; 2 uses
  %i.bk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bj, <4 x i32> %i.bj, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bl = add <4 x i32> %i.bk, %i.bf              ; 2 uses
  %i.bm = xor <4 x i32> %i.bl, %i.bh              ; 2 uses
  %i.bn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bm, <4 x i32> %i.bm, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bo = add <4 x i32> %i.bn, %i.bi              ; 2 uses
  %i.bp = xor <4 x i32> %i.bo, %i.bk              ; 2 uses
  %i.bq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bp, <4 x i32> %i.bp, <4 x i32> splat (i32 7)) ; 2 uses
  %i.br = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %10 = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bs = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bt = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %11 = shufflevector <4 x i32> %i.ap, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bu = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bv = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %12 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bw = shufflevector <4 x i32> %i.az, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bx = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %13 = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %14 = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %15 = add <4 x i32> %i.ag, %i.bs                ; 2 uses
  %i.by = xor <4 x i32> %15, %10                  ; 2 uses
  %i.bz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.by, <4 x i32> %i.by, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ca = add <4 x i32> %i.bz, %i.br              ; 2 uses
  %i.cb = xor <4 x i32> %i.ca, %i.ag              ; 2 uses
  %i.cc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cb, <4 x i32> %i.cb, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cd = add <4 x i32> %i.cc, %15                ; 2 uses
  %i.ce = xor <4 x i32> %i.cd, %i.bz              ; 2 uses
  %i.cf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ce, <4 x i32> %i.ce, <4 x i32> splat (i32 8)) ; 2 uses
  %i.cg = add <4 x i32> %i.cf, %i.ca              ; 2 uses
  %i.ch = xor <4 x i32> %i.cg, %i.cc              ; 2 uses
  %i.ci = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ch, <4 x i32> %i.ch, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cj = add <4 x i32> %i.as, %i.bu              ; 2 uses
  %i.ck = xor <4 x i32> %i.cj, %11                ; 2 uses
  %i.cl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ck, <4 x i32> %i.ck, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cm = add <4 x i32> %i.cl, %i.bt              ; 2 uses
  %i.cn = xor <4 x i32> %i.cm, %i.as              ; 2 uses
  %i.co = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cn, <4 x i32> %i.cn, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cp = add <4 x i32> %i.co, %i.cj              ; 2 uses
  %i.cq = xor <4 x i32> %i.cp, %i.cl              ; 2 uses
  %i.cr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cq, <4 x i32> %i.cq, <4 x i32> splat (i32 8)) ; 2 uses
  %i.cs = add <4 x i32> %i.cr, %i.cm              ; 2 uses
  %i.ct = xor <4 x i32> %i.cs, %i.co              ; 2 uses
  %i.cu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ct, <4 x i32> %i.ct, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cv = add <4 x i32> %i.be, %i.bw              ; 2 uses
  %i.cw = xor <4 x i32> %i.cv, %12                ; 2 uses
  %i.cx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cw, <4 x i32> %i.cw, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cy = add <4 x i32> %i.cx, %i.bv              ; 2 uses
  %i.cz = xor <4 x i32> %i.cy, %i.be              ; 2 uses
  %i.da = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cz, <4 x i32> %i.cz, <4 x i32> splat (i32 12)) ; 2 uses
  %i.db = add <4 x i32> %i.da, %i.cv              ; 2 uses
  %i.dc = xor <4 x i32> %i.db, %i.cx              ; 2 uses
  %i.dd = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dc, <4 x i32> %i.dc, <4 x i32> splat (i32 8)) ; 2 uses
  %i.de = add <4 x i32> %i.dd, %i.cy              ; 2 uses
  %i.df = xor <4 x i32> %i.de, %i.da              ; 2 uses
  %i.dg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.df, <4 x i32> %i.df, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dh = add <4 x i32> %i.bq, %14                ; 2 uses
  %i.di = xor <4 x i32> %i.dh, %13                ; 2 uses
  %i.dj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.di, <4 x i32> %i.di, <4 x i32> splat (i32 16)) ; 2 uses
  %i.dk = add <4 x i32> %i.dj, %i.bx              ; 2 uses
  %i.dl = xor <4 x i32> %i.dk, %i.bq              ; 2 uses
  %i.dm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dl, <4 x i32> %i.dl, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dn = add <4 x i32> %i.dm, %i.dh              ; 2 uses
  %i.do = xor <4 x i32> %i.dn, %i.dj              ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.do, <4 x i32> %i.do, <4 x i32> splat (i32 8)) ; 2 uses
  %i.dq = add <4 x i32> %i.dp, %i.dk              ; 2 uses
  %i.dr = xor <4 x i32> %i.dq, %i.dm              ; 2 uses
  %i.ds = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dr, <4 x i32> %i.dr, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dt = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %16 = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.du = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dv = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %17 = shufflevector <4 x i32> %i.cr, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.dw = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dx = shufflevector <4 x i32> %i.de, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %18 = shufflevector <4 x i32> %i.dd, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.dy = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dz = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %19 = shufflevector <4 x i32> %i.dp, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ea = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, 6
  br i1 %exitcond.not.i.i, label %_RINvNtNtCs3csC7NK4ZxG_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgZAIVb0XKpv_9ssservice.exit, label %bb.c

_RINvNtNtCs3csC7NK4ZxG_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.c
  %i.eb = add <4 x i32> %i.du, %.sroa.012.0.copyload24.i
  %i.ec = add <4 x i32> %i.ci, %.sroa.013.0.copyload25.i
  %i.ed = add <4 x i32> %i.dt, %.sroa.014.0.copyload26.i
  %i.ee = add <4 x i32> %16, %2
  %i.ef = add <4 x i32> %i.dw, %.sroa.012.0.copyload24.i
  %i.eg = add <4 x i32> %i.cu, %.sroa.013.0.copyload25.i
  %i.eh = add <4 x i32> %i.dv, %.sroa.014.0.copyload26.i
  %i.ei = add <4 x i32> %17, %3
  %i.ej = add <4 x i32> %i.dy, %.sroa.012.0.copyload24.i
  %i.ek = add <4 x i32> %i.dg, %.sroa.013.0.copyload25.i
  %i.el = add <4 x i32> %i.dx, %.sroa.014.0.copyload26.i
  %i.em = add <4 x i32> %18, %4
  %i.en = add <4 x i32> %i.ea, %.sroa.012.0.copyload24.i
  %i.eo = add <4 x i32> %i.ds, %.sroa.013.0.copyload25.i
  %i.ep = add <4 x i32> %i.dz, %.sroa.014.0.copyload26.i
  %i.eq = add <4 x i32> %19, %5
  store <4 x i32> %i.eb, ptr %1, align 4, !alias.scope !100745, !noalias !177
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %i.ec, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !100745, !noalias !177
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %i.ed, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !100745, !noalias !177
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %i.ee, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !100745, !noalias !177
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %i.ef, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !100745, !noalias !177
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %i.eg, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !100745, !noalias !177
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %i.eh, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !100745, !noalias !177
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %i.ei, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !100745, !noalias !177
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store <4 x i32> %i.ej, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !100745, !noalias !177
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %i.ek, ptr %.sroa.12.0..sroa_idx.i, align 4, !alias.scope !100745, !noalias !177
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %i.el, ptr %.sroa.13.0..sroa_idx.i, align 4, !alias.scope !100745, !noalias !177
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %i.em, ptr %.sroa.14.0..sroa_idx.i, align 4, !alias.scope !100745, !noalias !177
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %i.en, ptr %.sroa.15.0..sroa_idx.i, align 4, !alias.scope !100745, !noalias !177
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %i.eo, ptr %.sroa.16.0..sroa_idx.i, align 4, !alias.scope !100745, !noalias !177
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %i.ep, ptr %.sroa.17.0..sroa_idx.i, align 4, !alias.scope !100745, !noalias !177
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %i.eq, ptr %.sroa.18.0..sroa_idx.i, align 4, !alias.scope !100745, !noalias !177
  %i.er = add <2 x i64> %.sroa.015.0.copyload.i, <i64 4, i64 0> ; 2 uses
  %i.es = bitcast <2 x i64> %i.er to <4 x i32>
  %i.et = extractelement <4 x i32> %i.es, i64 0
  store i32 %i.et, ptr %i.e, align 4, !alias.scope !100744
  %i.eu = tail call fastcc noundef i32 @_RINvNtNtNtCsf3Ta7LF998c_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECsgZAIVb0XKpv_9ssservice(<2 x i64> %i.er) #60
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.eu, ptr %i.ev, align 4, !alias.scope !100744
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCs3csC7NK4ZxG_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 4 dereferenceable(64) %0, ptr noalias nofree noundef align 4 dereferenceable(256) %1) #60
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvNtNtCs3csC7NK4ZxG_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgZAIVb0XKpv_9ssservice.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc ptr @_RNvXs_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB4_14NameServerPoolNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtNtNtCsi1FNhPBS7PW_11hickory_net4xfer10dns_handle9DnsHandle4sendCsgZAIVb0XKpv_9ssservice(ptr %.80.val, ptr %.88.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(272) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.80.val) ]
  %i.a = atomicrmw add ptr %.80.val, i64 1 monotonic, align 8
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.80.val, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !177, !noundef !177 ; 22 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 800
  %i.f = load ptr, ptr %i.e, align 8, !noalias !100822, !nonnull !177, !noundef !177
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 808
  %i.h = load i64, ptr %i.g, align 8, !noalias !100822, !noundef !177
  %i.i = getelementptr i8, ptr %i.d, i64 608
  %.val15.i = load ptr, ptr %i.i, align 8, !noalias !100822, !nonnull !177, !noundef !177 ; 2 uses
  %i.j = getelementptr i8, ptr %i.d, i64 616
  %.val16.i = load i64, ptr %i.j, align 8, !noalias !100822, !noundef !177 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100823)
  %i.k = mul nuw nsw i64 %.val16.i, 24            ; 2 uses
  %i.l = icmp eq i64 %.val16.i, 0
  br i1 %i.l, label %_RNvXs5_NtCskOnRLTp4QzP_11prefix_trie5innerINtB5_5TableNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetuENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !100824
  %i.m = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, 17) 8) #52, !noalias !100824 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %.lr.ph.preheader.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.k) #61, !noalias !100825
  unreachable

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.val15.i, i64 %.val16.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i
  %.sroa.0.034.i.i.i.i = phi ptr [ %i.s, %bb.e ], [ %.val15.i, %.lr.ph.preheader.i.i.i.i ] ; 5 uses
  %.sroa.7.033.i.i.i.i = phi i64 [ %i.r, %bb.e ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.10.032.i.i.i.i = phi i64 [ %i.q, %bb.e ], [ %.val16.i, %.lr.ph.preheader.i.i.i.i ]
  %i.p = icmp eq ptr %.sroa.0.034.i.i.i.i, %i.o
  br i1 %i.p, label %_RNvXs5_NtCskOnRLTp4QzP_11prefix_trie5innerINtB5_5TableNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetuENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = add nsw i64 %.sroa.10.032.i.i.i.i, -1    ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.7.033.i.i.i.i, 1
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i.i.i, i64 24
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.7.033.i.i.i.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i.i.i, i64 16
  %.val.i.i.i.i.i = load i40, ptr %i.u, align 1, !alias.scope !100826, !noalias !100827
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i.i.i, i64 21
  %i.w = load i8, ptr %i.v, align 1, !range !180, !alias.scope !100826, !noalias !100827, !noundef !177
  %i.x = load <2 x i64>, ptr %.sroa.0.034.i.i.i.i, align 8, !alias.scope !100826, !noalias !100827
  store <2 x i64> %i.x, ptr %i.t, align 8, !noalias !100825
  %.sroa.523.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i40 %.val.i.i.i.i.i, ptr %.sroa.523.0..sroa_idx.i.i.i.i, align 8, !noalias !100825
  %.sroa.624.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 21
  store i8 %i.w, ptr %.sroa.624.0..sroa_idx.i.i.i.i, align 1, !noalias !100825
  %i.y = icmp eq i64 %i.q, 0
  br i1 %i.y, label %_RNvXs5_NtCskOnRLTp4QzP_11prefix_trie5innerINtB5_5TableNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetuENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i, label %.lr.ph.i.i.i.i

_RNvXs5_NtCskOnRLTp4QzP_11prefix_trie5innerINtB5_5TableNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetuENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.e, %.lr.ph.i.i.i.i, %bb.b
  %.sroa.10.0.i42.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.m, %.lr.ph.i.i.i.i ], [ %i.m, %bb.e ]
  %i.z = getelementptr i8, ptr %i.d, i64 584
  %.val23.i = load ptr, ptr %i.z, align 8, !noalias !100822, !nonnull !177, !noundef !177
  %i.aa = getelementptr i8, ptr %i.d, i64 592
  %.val24.i = load i64, ptr %i.aa, align 8, !noalias !100822, !noundef !177 ; 4 uses
  %i.ab = shl nuw nsw i64 %.val24.i, 3            ; 3 uses
  %i.ac = icmp eq i64 %.val24.i, 0
  br i1 %i.ac, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3num7nonzero7NonZerojEENtNtBM_5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs5_NtCskOnRLTp4QzP_11prefix_trie5innerINtB5_5TableNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetuENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !100828
  %i.ad = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ab, i64 noundef range(i64 1, 17) 8) #52, !noalias !100828 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ab) #61, !noalias !100829
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull readonly align 8 %.val23.i, i64 %i.ab, i1 false), !noalias !100830
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3num7nonzero7NonZerojEENtNtBM_5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3num7nonzero7NonZerojEENtNtBM_5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.h, %_RNvXs5_NtCskOnRLTp4QzP_11prefix_trie5innerINtB5_5TableNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetuENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i
  %.sroa.572.0.i = phi ptr [ %i.ad, %bb.h ], [ inttoptr (i64 8 to ptr), %_RNvXs5_NtCskOnRLTp4QzP_11prefix_trie5innerINtB5_5TableNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetuENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 624
  %i.ag = load i64, ptr %i.af, align 8, !noalias !100822, !noundef !177
  %i.ah = getelementptr i8, ptr %i.d, i64 664
  %.val.i = load ptr, ptr %i.ah, align 8, !noalias !100822, !nonnull !177, !noundef !177 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.d, i64 672
  %.val14.i = load i64, ptr %i.ai, align 8, !noalias !100822, !noundef !177 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100831)
  %i.aj = mul nuw nsw i64 %.val14.i, 24           ; 2 uses
  %i.ak = icmp eq i64 %.val14.i, 0
  br i1 %i.ak, label %_RNvXs5_NtCskOnRLTp4QzP_11prefix_trie5innerINtB5_5TableNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetuENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit41.i, label %bb.i

bb.i:                                             ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3num7nonzero7NonZerojEENtNtBM_5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !100832
  %i.al = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, 17) 8) #52, !noalias !100832 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.j, label %.lr.ph.preheader.i.i.i29.i

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.aj) #61, !noalias !100833
  unreachable

.lr.ph.preheader.i.i.i29.i:                       ; preds = %bb.i
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.val14.i
  br label %.lr.ph.i.i.i30.i

.lr.ph.i.i.i30.i:                                 ; preds = %bb.k, %.lr.ph.preheader.i.i.i29.i
  %.sroa.0.034.i.i.i31.i = phi ptr [ %i.ar, %bb.k ], [ %.val.i, %.lr.ph.preheader.i.i.i29.i ] ; 5 uses
  %.sroa.7.033.i.i.i32.i = phi i64 [ %i.aq, %bb.k ], [ 0, %.lr.ph.preheader.i.i.i29.i ] ; 2 uses
  %.sroa.10.032.i.i.i33.i = phi i64 [ %i.ap, %bb.k ], [ %.val14.i, %.lr.ph.preheader.i.i.i29.i ]
  %i.ao = icmp eq ptr %.sroa.0.034.i.i.i31.i, %i.an
  br i1 %i.ao, label %_RNvXs5_NtCskOnRLTp4QzP_11prefix_trie5innerINtB5_5TableNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetuENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit41.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i30.i
  %i.ap = add nsw i64 %.sroa.10.032.i.i.i33.i, -1 ; 2 uses
  %i.aq = add nuw nsw i64 %.sroa.7.033.i.i.i32.i, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i.i31.i, i64 24
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.sroa.7.033.i.i.i32.i ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i.i31.i, i64 16
  %.val.i.i.i.i34.i = load i40, ptr %i.at, align 1, !alias.scope !100834, !noalias !100835
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i.i31.i, i64 21
  %i.av = load i8, ptr %i.au, align 1, !range !180, !alias.scope !100834, !noalias !100835, !noundef !177
  %i.aw = load <2 x i64>, ptr %.sroa.0.034.i.i.i31.i, align 8, !alias.scope !100834, !noalias !100835
  store <2 x i64> %i.aw, ptr %i.as, align 8, !noalias !100833
  %.sroa.523.0..sroa_idx.i.i.i36.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i40 %.val.i.i.i.i34.i, ptr %.sroa.523.0..sroa_idx.i.i.i36.i, align 8, !noalias !100833
  %.sroa.624.0..sroa_idx.i.i.i37.i = getelementptr inbounds nuw i8, ptr %i.as, i64 21
  store i8 %i.av, ptr %.sroa.624.0..sroa_idx.i.i.i37.i, align 1, !noalias !100833
  %i.ax = icmp eq i64 %i.ap, 0
  br i1 %i.ax, label %_RNvXs5_NtCskOnRLTp4QzP_11prefix_trie5innerINtB5_5TableNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetuENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit41.i, label %.lr.ph.i.i.i30.i

_RNvXs5_NtCskOnRLTp4QzP_11prefix_trie5innerINtB5_5TableNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetuENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit41.i: ; preds = %bb.k, %.lr.ph.i.i.i30.i, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3num7nonzero7NonZerojEENtNtBM_5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i
  %.sroa.10.0.i42.i.i.i38.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3num7nonzero7NonZerojEENtNtBM_5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.al, %.lr.ph.i.i.i30.i ], [ %i.al, %bb.k ]
  %i.ay = getelementptr i8, ptr %i.d, i64 640
  %.val21.i = load ptr, ptr %i.ay, align 8, !noalias !100822, !nonnull !177, !noundef !177
  %i.az = getelementptr i8, ptr %i.d, i64 648
  %.val22.i = load i64, ptr %i.az, align 8, !noalias !100822, !noundef !177 ; 4 uses
  %i.ba = shl nuw nsw i64 %.val22.i, 3            ; 3 uses
  %i.bb = icmp eq i64 %.val22.i, 0
  br i1 %i.bb, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3num7nonzero7NonZerojEENtNtBM_5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit43.i, label %bb.l

bb.l:                                             ; preds = %_RNvXs5_NtCskOnRLTp4QzP_11prefix_trie5innerINtB5_5TableNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetuENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit41.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !100836
  %i.bc = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ba, i64 noundef range(i64 1, 17) 8) #52, !noalias !100836 ; 3 uses
end_hunk_1
