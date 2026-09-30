Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNvMsr_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageE12next_messageCsgZAIVb0XKpv_9ssservice:bb.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCslXgxf2tUV4p_15futures_channel4mpsc12BoundedInnerNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageEEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.y, %bb.z, %bb.aa
  store ptr null, ptr %1, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

_RNvMsr_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageE10unpark_oneCsgZAIVb0XKpv_9ssservice.exit.thread17: ; preds = %bb.l, %_RNvMsr_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageE10unpark_oneCsgZAIVb0XKpv_9ssservice.exit
  %.pr20 = phi ptr [ %.pr.pre, %_RNvMsr_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageE10unpark_oneCsgZAIVb0XKpv_9ssservice.exit ], [ %.val, %bb.l ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.pr20, i64 56
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 seq_cst, align 8 ; 0 uses
  br label %_RNvMsr_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageE10unpark_oneCsgZAIVb0XKpv_9ssservice.exit.thread

_RNvMsr_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageE10unpark_oneCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.k, %_RNvMsr_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageE10unpark_oneCsgZAIVb0XKpv_9ssservice.exit.thread17, %_RNvMsr_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_8ReceiverNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op14serial_message13SerialMessageE10unpark_oneCsgZAIVb0XKpv_9ssservice.exit
  store i64 %i.n, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.i.i, i64 48, i1 false)
  br label %bb.j
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvNtCsgCecv3eZDcN_5alloc3fmt6format(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  %i.c = lshr i64 %i.a, 1                         ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95969)
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95971)
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !95972
  %i.e = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, 17) 1) #53, !noalias !95972 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.c) #62, !noalias !95973
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %i.c, i1 false), !noalias !95974
  br label %_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCsgZAIVb0XKpv_9ssservice.exit.i

_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.e, %bb.b
  %.sroa.5.0.i.i.i = phi ptr [ %i.e, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  store i64 %i.c, ptr %0, align 8, !alias.scope !95975, !noalias !95976
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !95975, !noalias !95976
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !95975, !noalias !95976
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgZAIVb0XKpv_9ssservice.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #53, !noalias !95977
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgZAIVb0XKpv_9ssservice.exit

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCsgZAIVb0XKpv_9ssservice.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCsknai52m1gBp_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCsknai52m1gBp_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @17, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCsknai52m1gBp_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef range(i8 0, 79) i8 @_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [2 x i8], align 1                 ; 6 uses
  %.sroa.8.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [2 x i8], align 1                 ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.7.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %.sroa.7.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %.sroa.5.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.6.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 9 uses
  %i.k = alloca [64 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [72 x i8], align 8                ; 6 uses
  %i.n = alloca [72 x i8], align 8                ; 9 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5.i.i.i.i.i = alloca [24 x i8], align 8  ; 4 uses
  %i.q = alloca [2 x i8], align 1                 ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5.i.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [80 x i8], align 8                ; 11 uses
  %i.y = alloca [36112 x i8], align 16            ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6create(ptr noalias nofree noundef nonnull sret([36112 x i8]) align 16 captures(none) dereferenceable(36112) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) #53
  %i.ab = load i64, ptr %i.y, align 16, !range !191, !noundef !178
  %i.ac = icmp eq i64 %i.ab, 2
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.07.0.copyload = load i64, ptr %i.ad, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  br label %bb.cj

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !96131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 16 dereferenceable(80) %i.y, i64 80, i1 false)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !96132
  %i.ae = tail call noundef align 16 dereferenceable_or_null(36032) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 36032, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !96132 ; 8 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i, !prof !183

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 36032) #62, !noalias !96132
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(36032) %i.ae, ptr noundef nonnull align 16 dereferenceable(36032) %i.ag, i64 36032, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !96133
  call void @_RNvMNtNtCsczhfDQ1qNkX_5tokio7runtime7runtimeNtB2_7Runtime5enter(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noundef nonnull align 8 %i.x) #53, !noalias !96133
  %i.ah = load i64, ptr %i.x, align 8, !range !182, !noalias !96133, !noundef !178
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %bb.y

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !96134)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !96135
  %i.ak = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsczhfDQ1qNkX_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72 ; 4 uses
  %i.am = load i8, ptr %i.al, align 8, !range !199, !noalias !96136, !noundef !178
  switch i8 %i.am, label %default.unreachable41 [
    i8 0, label %bb.g
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i
    i8 1, label %bb.f
  ], !prof !226

default.unreachable41:                            ; preds = %bb.bl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m, %bb.cj, %bb.ai, %bb.y, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.ak, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #53, !noalias !96136
  store i8 0, ptr %i.al, align 8, !noalias !96136
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 70 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 2, !range !199, !noalias !96137, !noundef !178
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !96135
  br label %bb.x

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.an, align 2, !noalias !96137
  %i.ap = load i64, ptr %i.aj, align 8, !range !182, !alias.scope !96134, !noalias !96138, !noundef !178
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %1 = load ptr, ptr %i.aq, align 8, !alias.scope !96134, !noalias !96138, !nonnull !178, !noundef !178
  %2 = shl nuw nsw i64 %i.ap, 5
  %..i.i.i.i.i.i.i = xor i64 %2, 544
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %..i.i.i.i.i.i.i
  %i.as = call { i32, i32 } @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %i.ar) #53, !noalias !96137 ; 2 uses
  %i.at = extractvalue { i32, i32 } %i.as, 0
  %i.au = extractvalue { i32, i32 } %i.as, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.av, align 8, !noalias !96137
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 60 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 2 uses
  %i.aw = trunc i32 %.sroa.04.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.55.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !96137
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !96137
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ax = call { i32, i32 } @_RNvMs_NtNtCsczhfDQ1qNkX_5tokio4util4randNtB4_8FastRand3new() #53, !noalias !96137 ; 2 uses
  %i.ay = extractvalue { i32, i32 } %i.ax, 0
  %i.az = extractvalue { i32, i32 } %i.ax, 1
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.5.0.i.i.i.i.i.i.i = phi i32 [ %.sroa.55.0.copyload.i.i.i.i.i.i.i, %bb.i ], [ %i.az, %bb.j ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i.i.i.i.i, %bb.i ], [ %i.ay, %bb.j ] ; 2 uses
  %i.ba = or i32 %.sroa.01.0.i.i.i.i.i.i.i, %.sroa.5.0.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i = icmp eq i32 %i.ba, 0
  %..sroa.5.0.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i, i32 1, i32 %.sroa.5.0.i.i.i.i.i.i.i
  store i32 1, ptr %i.av, align 8, !noalias !96137
  store i32 %i.at, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !96137
  store i32 %i.au, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !96137
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noundef nonnull align 8 %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj) #53, !noalias !96139
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 %.sroa.01.0.i.i.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !96140
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i32 %..sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !96140
  %.sroa.0.0.copyload1.pr.i.i.i.i.i = load i64, ptr %i.u, align 8, !noalias !96140 ; 3 uses
  %i.bb = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i, -2
  br i1 %i.bb, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, !prof !351

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, %bb.e
  call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #63, !noalias !96139
  unreachable

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !96135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !96135
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.k, !prof !209

bb.k:                                             ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !96135
  store i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i, ptr %i.v, align 8, !noalias !96135
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i, i64 24, i1 false), !noalias !96135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !96141
  %i.bd = call { ptr, ptr } @_RNvMs2_NtNtCsczhfDQ1qNkX_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a) #53, !noalias !96142 ; 2 uses
  %i.be = extractvalue { ptr, ptr } %i.bd, 0      ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = extractvalue { ptr, ptr } %i.bd, 1
  store ptr %i.be, ptr %i.t, align 8, !noalias !96141
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !noalias !96141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !96141
  store ptr %i.t, ptr %i.s, align 8, !noalias !96141
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.bi, align 8, !noalias !96141
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr null, ptr %i.bj, align 8, !noalias !96141
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 68 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 69 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !96141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !96141
  %i.bn = load i8, ptr %i.al, align 8, !range !199, !noalias !96141, !noundef !178 ; 2 uses
  switch i8 %i.bn, label %default.unreachable41 [
    i8 0, label %bb.o
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onINtNtB36_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtB46_7service5local6creates8_0EEE0E0E0B27_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
    i8 1, label %bb.n
  ], !prof !226

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.ak, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #53, !noalias !96142
  store i8 0, ptr %i.al, align 8, !noalias !96141
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bo = load i8, ptr %i.bk, align 4, !range !181, !noalias !96141, !noundef !178
  %i.bp = load i8, ptr %i.bl, align 1, !noalias !96141
  store i8 1, ptr %i.bk, align 4, !noalias !96141
  store i8 -128, ptr %i.bl, align 1, !noalias !96141
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onINtNtB36_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtB46_7service5local6creates8_0EEE0E0E0B27_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onINtNtB36_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtB46_7service5local6creates8_0EEE0E0E0B27_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.m
  %.sroa.3.0.i.i.i.i.i.i.i = phi i8 [ %i.bp, %bb.o ], [ undef, %bb.m ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.bo, %bb.o ], [ %i.bn, %bb.m ]
  store i8 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.q, align 1, !noalias !96141
  store i8 %.sroa.3.0.i.i.i.i.i.i.i, ptr %i.bm, align 1, !noalias !96141
  call fastcc void @_RNvXs_NtNtCsf3Ta7LF998c_4core6future6futureINtNtB8_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EENtB4_6Future4pollCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.r, ptr nonnull align 16 %i.ae, ptr noalias nofree noundef align 8 dereferenceable(32) %i.s) #53, !noalias !96142
  %i.bq = load i8, ptr %i.q, align 1, !range !199, !alias.scope !96143, !noalias !96141, !noundef !178
  %.not.i.i.i1.i.i.i.i = icmp eq i8 %i.bq, 2
  br i1 %.not.i.i.i1.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onINtNtB36_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtB46_7service5local6creates8_0EEE0E0E0B27_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  call void @_RNvXNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.q) #53, !noalias !96142
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.p, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onINtNtB36_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtB46_7service5local6creates8_0EEE0E0E0B27_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !96141
  %i.br = load i64, ptr %i.r, align 8, !range !302, !noalias !96141, !noundef !178 ; 2 uses
  %i.bs = icmp eq i64 %i.br, -2
  br i1 %i.bs, label %bb.q, label %_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

bb.q:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !96141
  call void @_RNvMs2_NtNtCsczhfDQ1qNkX_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias nofree noundef nonnull %i.a) #53, !noalias !96142
  br label %bb.m

bb.r:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !96141
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEECsgZAIVb0XKpv_9ssservice(ptr nonnull align 16 %i.ae) #53, !noalias !96142
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @595, i64 noundef 21, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1964, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @596) #63, !noalias !96144
  unreachable

_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx.i2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i2.i.i.i.i, i64 24, i1 false), !noalias !96145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !96141
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEECsgZAIVb0XKpv_9ssservice(ptr nonnull align 16 %i.ae) #53, !noalias !96142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !96141
  %.val.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !noalias !96141, !nonnull !178, !align !186, !noundef !178
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !noalias !96141, !noundef !178
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !96142, !nonnull !178, !noundef !178
  call void %i.bu(ptr noundef %.val5.i.i.i.i.i.i) #53, !noalias !96142, !inline_history !96007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !96141
  call void @_RNvXs_NtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtimeNtB4_17EnterRuntimeGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v) #53, !noalias !96146
  call void @_RNvXs0_NtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v) #53, !noalias !96146
  call void @llvm.experimental.noalias.scope.decl(metadata !96147)
  %i.bv = load i64, ptr %i.v, align 8, !range !191, !alias.scope !96148, !noalias !96135, !noundef !178 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 2
  br i1 %i.bw, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !96149)
  %i.bx = icmp eq i64 %i.bv, 0
  br i1 %i.bx, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !96150)
  call void @llvm.experimental.noalias.scope.decl(metadata !96151)
  %i.by = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !96152, !noalias !96135, !nonnull !178, !noundef !178
  %i.bz = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !96153
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.u, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i.i.i.i) #60, !noalias !96146
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.v:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !96154)
  call void @llvm.experimental.noalias.scope.decl(metadata !96155)
  %i.cb = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !96156, !noalias !96135, !nonnull !178, !noundef !178
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !96157
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.w, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i.i.i.i) #60, !noalias !96146
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.x:                                             ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @495, ptr noundef nonnull inttoptr (i64 387 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #63, !noalias !96146
  unreachable

_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !96135
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  br label %bb.cd

bb.y:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !96158)
  call void @llvm.experimental.noalias.scope.decl(metadata !96159)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !96160
  %i.cg = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsczhfDQ1qNkX_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 15 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 72 ; 8 uses
  %i.ci = load i8, ptr %i.ch, align 8, !range !199, !noalias !96161, !noundef !178
  switch i8 %i.ci, label %default.unreachable41 [
    i8 0, label %bb.aa
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i
    i8 1, label %bb.z
  ], !prof !226

bb.z:                                             ; preds = %bb.y
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.cg, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #53, !noalias !96162
  store i8 0, ptr %i.ch, align 8, !noalias !96161
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 70 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 2, !range !199, !noalias !96163, !noundef !178
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ck, 2
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ab, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !96160
  br label %bb.cc

bb.ab:                                            ; preds = %bb.aa
  store i8 0, ptr %i.cj, align 2, !noalias !96163
  %i.cl = load i64, ptr %i.cf, align 8, !range !182, !alias.scope !96164, !noalias !96165, !noundef !178
  %i.cm = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %3 = load ptr, ptr %i.cm, align 8, !alias.scope !96164, !noalias !96165, !nonnull !178, !noundef !178
  %4 = shl nuw nsw i64 %i.cl, 5
  %..i.i.i.i.i.i.i.i = xor i64 %4, 544
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 %..i.i.i.i.i.i.i.i
  %i.co = call { i32, i32 } @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %i.cn) #53, !noalias !96165 ; 2 uses
  %i.cp = extractvalue { i32, i32 } %i.co, 0
  %i.cq = extractvalue { i32, i32 } %i.co, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.cr, align 8, !noalias !96163
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 60 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 64 ; 2 uses
  %i.cs = trunc i32 %.sroa.04.0.copyload.i.i.i.i.i.i.i.i to i1
  br i1 %i.cs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.sroa.55.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !96163
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !96163
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ct = call { i32, i32 } @_RNvMs_NtNtCsczhfDQ1qNkX_5tokio4util4randNtB4_8FastRand3new() #53, !noalias !96165 ; 2 uses
  %i.cu = extractvalue { i32, i32 } %i.ct, 0
  %i.cv = extractvalue { i32, i32 } %i.ct, 1
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.55.0.copyload.i.i.i.i.i.i.i.i, %bb.ac ], [ %i.cv, %bb.ad ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, %bb.ac ], [ %i.cu, %bb.ad ] ; 2 uses
  %i.cw = or i32 %.sroa.01.0.i.i.i.i.i.i.i.i, %.sroa.5.0.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i = icmp eq i32 %i.cw, 0
  %..sroa.5.0.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i, i32 1, i32 %.sroa.5.0.i.i.i.i.i.i.i.i
  store i32 1, ptr %i.cr, align 8, !noalias !96163
  store i32 %i.cp, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !96163
  store i32 %i.cq, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !96163
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noundef nonnull align 8 %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cf) #53, !noalias !96166
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 %.sroa.01.0.i.i.i.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !96167
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store i32 %..sroa.5.0.i.i.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !96167
  %.sroa.0.0.copyload1.pr.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !96167 ; 3 uses
  %i.cx = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i.i, -2
  br i1 %i.cx, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, !prof !351

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, %bb.y
  call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #63, !noalias !96166
  unreachable

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 24, i1 false), !noalias !96160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !96160
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.cc, label %bb.ae, !prof !209

bb.ae:                                            ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !96160
  store i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i.i, ptr %i.p, align 8, !noalias !96160
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i, i64 24, i1 false), !noalias !96160
  %i.cz = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsczhfDQ1qNkX_5tokio7runtime9schedulerNtB5_6Handle17as_current_thread(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cf) #53, !noalias !96168 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !96169
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_threadNtB2_13CurrentThread9take_core(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noundef nonnull align 8 %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cz) #53, !noalias !96168
  %i.da = load i64, ptr %i.n, align 8, !range !191, !noalias !96169, !noundef !178
  %.not12.i.i.i.i.i.i = icmp eq i64 %i.da, 2
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cg, i64 68 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cg, i64 69 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.8.0..sroa_idx12.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  br label %bb.bj

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio4sync6notify8NotifiedECsgZAIVb0XKpv_9ssservice.exit7.i.i.i.i.i.i, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !96169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false), !noalias !96169
  %i.dj = load ptr, ptr %i.cz, align 8, !noalias !96168, !nonnull !178, !noundef !178
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !96169
  %i.dl = call noundef nonnull ptr @_RNvNtNtCs5Xr050g3D4S_3std6thread7current7current() #53, !noalias !96168 ; 2 uses
  store ptr %i.dl, ptr %i.l, align 8, !noalias !96169
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !range !194, !noalias !96168, !noundef !178
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime7metrics6workerNtB2_13WorkerMetrics13set_thread_id(ptr noundef nonnull align 128 %i.dk, i64 noundef %i.dn) #53, !noalias !96168
  call void @llvm.experimental.noalias.scope.decl(metadata !96170)
  call void @llvm.experimental.noalias.scope.decl(metadata !96171)
  call void @llvm.experimental.noalias.scope.decl(metadata !96172)
  call void @llvm.experimental.noalias.scope.decl(metadata !96173)
  %i.do = load ptr, ptr %i.l, align 8, !alias.scope !96174, !noalias !96169, !nonnull !178, !noundef !178
  %i.dp = atomicrmw sub ptr %i.do, i64 1 release, align 8, !noalias !96175
  %i.dq = icmp eq i64 %i.dp, 1
  br i1 %i.dq, label %bb.af, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

bb.af:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs5Xr050g3D4S_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #60, !noalias !96168
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.af, %._crit_edge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !96169
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %i.dr = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsczhfDQ1qNkX_5tokio7runtime9schedulerNtB5_7Context21expect_current_thread(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #53, !noalias !96176 ; 13 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 14 uses
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !96176, !noundef !178
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.ag, label %bb.ah, !prof !192

bb.ag:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  store i64 -1, ptr %i.ds, align 8, !noalias !96176
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 8 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !96176, !align !186, !noundef !178 ; 4 uses
  store ptr null, ptr %i.dv, align 8, !noalias !96176
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %bb.be, label %bb.ai, !prof !187

bb.ah:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #63, !noalias !96176
  unreachable

bb.ai:                                            ; preds = %bb.ag
  store i64 0, ptr %i.ds, align 8, !noalias !96176
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i)
  %i.dx = load i8, ptr %i.ch, align 8, !range !199, !noalias !96177, !noundef !178
  switch i8 %i.dx, label %default.unreachable41 [
    i8 0, label %bb.ak
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_13set_schedulerTINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtBY_9scheduler14current_thread4CoreEINtNtCsf3Ta7LF998c_4core6option6OptionINtNtB3z_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEEENCINvMs7_B2R_NtB2R_9CoreGuard5enterNCINvB5A_8block_onINtNtB3z_3pin3PinQIB6n_IB2h_NCNvNtNtB4y_7service5local6creates8_0EEEE0B3u_E0E0B2f_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i.i
    i8 1, label %bb.aj
  ], !prof !226

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.cg, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #53, !noalias !96178
  store i8 0, ptr %i.ch, align 8, !noalias !96177
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i.i)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cg, i64 40 ; 4 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !96179, !noundef !178 ; 2 uses
  store ptr %i.m, ptr %i.dy, align 8, !noalias !96179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !96180
  %i.ea = call { ptr, ptr } @_RNvMs2_NtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_threadNtB5_6Handle9waker_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dr) #53, !noalias !96181 ; 2 uses
  %i.eb = extractvalue { ptr, ptr } %i.ea, 0
  %i.ec = extractvalue { ptr, ptr } %i.ea, 1
  store ptr %i.eb, ptr %i.i, align 8, !noalias !96180
  %i.ed = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !noalias !96180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !96180
  store ptr %i.i, ptr %i.h, align 8, !noalias !96180
  %i.ee = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.ee, align 8, !noalias !96180
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr null, ptr %i.ef, align 8, !noalias !96180
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime7metrics5batchNtB2_12MetricsBatch32start_processing_scheduled_tasks(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.eg) #53, !noalias !96182
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cg, i64 68 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cg, i64 69 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.632.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.al

bb.al:                                            ; preds = %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ak
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dw, %bb.ak ], [ %.sink50.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ek = load ptr, ptr %i.dr, align 8, !noalias !96181, !nonnull !178, !noundef !178
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 464
  %i.em = atomicrmw xchg ptr %i.el, i8 0 acq_rel, align 1, !noalias !96182
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.ax, %bb.al
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fa, %bb.ax ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al ] ; 2 uses
  %i.en = load ptr, ptr %i.dr, align 8, !noalias !96181, !nonnull !178, !noundef !178
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 344
  %i.ep = load i32, ptr %i.eo, align 8, !noalias !96182, !noundef !178 ; 2 uses
  %.not38.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ep, 0
  br i1 %.not38.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.eq = load i64, ptr %i.ds, align 8, !noalias !96183, !noundef !178
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.ao, label %bb.at, !prof !192

bb.ao:                                            ; preds = %bb.an
  store i64 -1, ptr %i.ds, align 8, !noalias !96183
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dv, align 8, !noalias !96183, !align !186, !noundef !178 ; 2 uses
  %i.es = icmp eq ptr %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.es, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEECsgZAIVb0XKpv_9ssservice(ptr nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #53, !noalias !96184
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ds, align 8, !noalias !96183
  %i.et = add i64 %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %i.eu = phi i64 [ 0, %bb.ao ], [ %i.et, %bb.ap ]
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dv, align 8, !noalias !96183
  store i64 %i.eu, ptr %i.ds, align 8, !noalias !96183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !96185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !96186
end_hunk_0
begin_hunk_1_@_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !96217)
  %i.hi = load i64, ptr %i.w, align 8, !range !191, !alias.scope !96218, !noalias !96133, !noundef !178 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 2
  br i1 %i.hj, label %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0CsgZAIVb0XKpv_9ssservice.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.experimental.noalias.scope.decl(metadata !96219)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.hl = icmp eq i64 %i.hi, 0
  br i1 %i.hl, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !96220)
  call void @llvm.experimental.noalias.scope.decl(metadata !96221)
  %i.hm = load ptr, ptr %i.hk, align 8, !alias.scope !96222, !noalias !96133, !nonnull !178, !noundef !178
  %i.hn = atomicrmw sub ptr %i.hm, i64 1 release, align 8, !noalias !96223
  %i.ho = icmp eq i64 %i.hn, 1
  br i1 %i.ho, label %bb.cg, label %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0CsgZAIVb0XKpv_9ssservice.exit

bb.cg:                                            ; preds = %bb.cf
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hk) #60, !noalias !96133
  br label %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0CsgZAIVb0XKpv_9ssservice.exit

bb.ch:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !96224)
  call void @llvm.experimental.noalias.scope.decl(metadata !96225)
  %i.hp = load ptr, ptr %i.hk, align 8, !alias.scope !96226, !noalias !96133, !nonnull !178, !noundef !178
  %i.hq = atomicrmw sub ptr %i.hp, i64 1 release, align 8, !noalias !96227
  %i.hr = icmp eq i64 %i.hq, 1
  br i1 %i.hr, label %bb.ci, label %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0CsgZAIVb0XKpv_9ssservice.exit

bb.ci:                                            ; preds = %bb.ch
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hk) #60, !noalias !96133
  br label %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0CsgZAIVb0XKpv_9ssservice.exit

_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0CsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.cd, %bb.cf, %bb.cg, %bb.ch, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !96133
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio7runtime7runtime7RuntimeECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(80) %i.x) #53, !noalias !96131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !96131
  %.not = icmp eq i64 %.sroa.0.2, -1
  br i1 %.not, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0CsgZAIVb0XKpv_9ssservice.exit, %bb.b
  %.sroa.0.08 = phi i64 [ %.sroa.07.0.copyload, %bb.b ], [ %.sroa.0.2, %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0CsgZAIVb0XKpv_9ssservice.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 %.sroa.0.08, ptr %i.aa, align 8
  %.sroa.8.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.aa, ptr %i.z, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs_NtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB4_16ShadowsocksErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @2378, ptr noundef nonnull %i.z) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.val = load i64, ptr %i.aa, align 8, !range !216, !noundef !178
  switch i64 %.val, label %default.unreachable41 [
    i64 0, label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit
    i64 1, label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit
    i64 2, label %bb.ck
    i64 3, label %bb.ck
    i64 4, label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread
  ]

bb.ck:                                            ; preds = %bb.cj, %bb.cj
  br label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit

_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread: ; preds = %bb.cj
  %.val.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx6, align 8, !alias.scope !96228 ; 2 uses
  %i.hs = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.hs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsgZAIVb0XKpv_9ssservice.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.sink.split.i

_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit: ; preds = %bb.cj, %bb.cj, %bb.ck
  %.sroa.0.0.i = phi i8 [ 70, %bb.cj ], [ 78, %bb.ck ], [ 70, %bb.cj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !96229)
  %.val.i.i1.i = load i64, ptr %.sroa.8.0..sroa_idx6, align 8, !alias.scope !96229 ; 2 uses
  %i.ht = icmp eq i64 %.val.i.i1.i, 0
  br i1 %i.ht, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsgZAIVb0XKpv_9ssservice.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.sink.split.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.sink.split.i: ; preds = %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread
  %.sroa.0.0.i10 = phi i8 [ 64, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread ], [ %.sroa.0.0.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit ]
  %.val.i.i10.sink.i = phi i64 [ %.val.i.i.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread ], [ %.val.i.i1.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val1.i.i11.i = load ptr, ptr %i.hu, align 8, !alias.scope !96229, !nonnull !178, !noundef !178
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i11.i, i64 noundef %.val.i.i10.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !96229
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.sink.split.i
  %.sroa.0.0.i11 = phi i8 [ 64, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread ], [ %.sroa.0.0.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit ], [ %.sroa.0.0.i10, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.cl

bb.cl:                                            ; preds = %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0CsgZAIVb0XKpv_9ssservice.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsgZAIVb0XKpv_9ssservice.exit
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.i11, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsgZAIVb0XKpv_9ssservice.exit ], [ 0, %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0CsgZAIVb0XKpv_9ssservice.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef range(i8 0, 79) i8 @_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server4main(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [2 x i8], align 1                 ; 6 uses
  %.sroa.8.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [2 x i8], align 1                 ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.7.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %.sroa.7.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %.sroa.5.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.6.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 9 uses
  %i.k = alloca [64 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [72 x i8], align 8                ; 6 uses
  %i.n = alloca [72 x i8], align 8                ; 9 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5.i.i.i.i.i = alloca [24 x i8], align 8  ; 4 uses
  %i.q = alloca [11360 x i8], align 8             ; 9 uses
  %i.r = alloca [2 x i8], align 1                 ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [11360 x i8], align 8             ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 8 uses
  %i.w = alloca [11360 x i8], align 8             ; 8 uses
  %.sroa.6.i.i.i.i.i = alloca [24 x i8], align 8  ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5.i.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [80 x i8], align 8               ; 11 uses
  %i.ab = alloca [11440 x i8], align 8            ; 8 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6create(ptr noalias nofree noundef nonnull sret([11440 x i8]) align 8 captures(none) dereferenceable(11440) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) #53
  %i.ae = load i64, ptr %i.ab, align 8, !range !191, !noundef !178
  %i.af = icmp eq i64 %i.ae, 2
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.07.0.copyload = load i64, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  br label %bb.cq

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !96386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(80) %i.ab, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !96387
  call void @_RNvMNtNtCsczhfDQ1qNkX_5tokio7runtime7runtimeNtB2_7Runtime5enter(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noundef nonnull align 8 %i.aa) #53, !noalias !96387
  %i.ah = load i64, ptr %i.aa, align 8, !range !182, !noalias !96387, !noundef !178
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !96388)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !96389
  %i.ak = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsczhfDQ1qNkX_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72 ; 4 uses
  %i.am = load i8, ptr %i.al, align 8, !range !199, !noalias !96390, !noundef !178
  switch i8 %i.am, label %default.unreachable40 [
    i8 0, label %bb.f
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3A_5error16ShadowsocksErrorEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i
    i8 1, label %bb.e
  ], !prof !226

default.unreachable40:                            ; preds = %bb.bq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o, %bb.cq, %bb.an, %bb.ad, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.ak, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #53, !noalias !96390
  store i8 0, ptr %i.al, align 8, !noalias !96390
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 70 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 2, !range !199, !noalias !96391, !noundef !178
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3w_5error16ShadowsocksErrorEE0INtNtB4z_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3w_5error16ShadowsocksErrorEE0INtNtB4z_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !96389
  br label %bb.ac

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.an, align 2, !noalias !96391
  %i.ap = load i64, ptr %i.aj, align 8, !range !182, !alias.scope !96388, !noalias !96392, !noundef !178
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %1 = load ptr, ptr %i.aq, align 8, !alias.scope !96388, !noalias !96392, !nonnull !178, !noundef !178
  %2 = shl nuw nsw i64 %i.ap, 5
  %..i.i.i.i.i.i.i = xor i64 %2, 544
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %..i.i.i.i.i.i.i
  %i.as = call { i32, i32 } @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %i.ar) #53, !noalias !96391 ; 2 uses
  %i.at = extractvalue { i32, i32 } %i.as, 0
  %i.au = extractvalue { i32, i32 } %i.as, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.av, align 8, !noalias !96391
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 60 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 2 uses
  %i.aw = trunc i32 %.sroa.04.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.55.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !96391
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !96391
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3A_5error16ShadowsocksErrorEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ax = call { i32, i32 } @_RNvMs_NtNtCsczhfDQ1qNkX_5tokio4util4randNtB4_8FastRand3new() #53, !noalias !96391 ; 2 uses
  %i.ay = extractvalue { i32, i32 } %i.ax, 0
  %i.az = extractvalue { i32, i32 } %i.ax, 1
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3A_5error16ShadowsocksErrorEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3A_5error16ShadowsocksErrorEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.5.0.i.i.i.i.i.i.i = phi i32 [ %.sroa.55.0.copyload.i.i.i.i.i.i.i, %bb.h ], [ %i.az, %bb.i ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i.i.i.i.i, %bb.h ], [ %i.ay, %bb.i ] ; 2 uses
  %i.ba = or i32 %.sroa.01.0.i.i.i.i.i.i.i, %.sroa.5.0.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i = icmp eq i32 %i.ba, 0
  %..sroa.5.0.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i, i32 1, i32 %.sroa.5.0.i.i.i.i.i.i.i
  store i32 1, ptr %i.av, align 8, !noalias !96391
  store i32 %i.at, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !96391
  store i32 %i.au, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !96391
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.x, ptr noundef nonnull align 8 %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj) #53, !noalias !96393
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 %.sroa.01.0.i.i.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !96394
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  store i32 %..sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !96394
  %.sroa.0.0.copyload1.pr.i.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !96394 ; 3 uses
  %i.bb = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i, -2
  br i1 %i.bb, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3A_5error16ShadowsocksErrorEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3w_5error16ShadowsocksErrorEE0INtNtB4z_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, !prof !351

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3A_5error16ShadowsocksErrorEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3A_5error16ShadowsocksErrorEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, %bb.d
  call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #63, !noalias !96393
  unreachable

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3w_5error16ShadowsocksErrorEE0INtNtB4z_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3A_5error16ShadowsocksErrorEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !96389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !96389
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.ac, label %bb.j, !prof !209

bb.j:                                             ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3w_5error16ShadowsocksErrorEE0INtNtB4z_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !96389
  store i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i, ptr %i.y, align 8, !noalias !96389
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i, i64 24, i1 false), !noalias !96389
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !96395
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11360) %i.w, ptr noundef nonnull align 8 dereferenceable(11360) %i.bd, i64 11360, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !96396)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !96397
  %i.be = call { ptr, ptr } @_RNvMs2_NtNtCsczhfDQ1qNkX_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a) #53, !noalias !96398 ; 2 uses
  %i.bf = extractvalue { ptr, ptr } %i.be, 0      ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !96397
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 11352
  %i.bi = load i8, ptr %i.bh, align 8, !range !232, !alias.scope !96396, !noalias !96399, !noundef !178
  switch i8 %i.bi, label %bb.w [
    i8 0, label %bb.l
    i8 3, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service6config6ConfigECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(11360) %i.w) #53, !noalias !96400
  br label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 1560
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtCs8UFHSMUhzWe_19shadowsocks_service6server3run0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.bj) #53, !noalias !96400
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 1488
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7monitor3imp21create_signal_monitor0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.bk) #53, !noalias !96400
  br label %bb.w

bb.n:                                             ; preds = %bb.j
  %i.bl = extractvalue { ptr, ptr } %i.be, 1
  store ptr %i.bf, ptr %i.v, align 8, !noalias !96397
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !noalias !96397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !96397
  store ptr %i.v, ptr %i.u, align 8, !noalias !96397
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %i.bn, align 8, !noalias !96397
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr null, ptr %i.bo, align 8, !noalias !96397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !96397
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11360) %i.t, ptr noundef nonnull align 8 dereferenceable(11360) %i.bp, i64 11360, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ak, i64 68 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ak, i64 69 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !96397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !96397
  %i.bt = load i8, ptr %i.al, align 8, !range !199, !noalias !96397, !noundef !178 ; 2 uses
  switch i8 %i.bt, label %default.unreachable40 [
    i8 0, label %bb.q
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onNCNvNtNtB46_7service6server6creates8_0E0E0E0B27_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
    i8 1, label %bb.p
  ], !prof !226

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.ak, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #53, !noalias !96398
  store i8 0, ptr %i.al, align 8, !noalias !96397
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bu = load i8, ptr %i.bq, align 4, !range !181, !noalias !96397, !noundef !178
  %i.bv = load i8, ptr %i.br, align 1, !noalias !96397
  store i8 1, ptr %i.bq, align 4, !noalias !96397
  store i8 -128, ptr %i.br, align 1, !noalias !96397
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onNCNvNtNtB46_7service6server6creates8_0E0E0E0B27_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onNCNvNtNtB46_7service6server6creates8_0E0E0E0B27_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.q, %bb.o
  %.sroa.3.0.i.i.i.i.i.i.i = phi i8 [ %i.bv, %bb.q ], [ undef, %bb.o ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.bu, %bb.q ], [ %i.bt, %bb.o ]
  store i8 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.r, align 1, !noalias !96397
  store i8 %.sroa.3.0.i.i.i.i.i.i.i, ptr %i.bs, align 1, !noalias !96397
  call fastcc void @_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.s, ptr noundef nonnull align 8 %i.t, ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #61, !noalias !96398
  %i.bw = load i8, ptr %i.r, align 1, !range !199, !alias.scope !96401, !noalias !96397, !noundef !178
  %.not.i.i.i1.i.i.i.i = icmp eq i8 %i.bw, 2
  br i1 %.not.i.i.i1.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onNCNvNtNtB46_7service6server6creates8_0E0E0E0B27_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  call void @_RNvXNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.r) #53, !noalias !96398
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.r, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onNCNvNtNtB46_7service6server6creates8_0E0E0E0B27_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !96397
  %i.bx = load i64, ptr %i.s, align 8, !range !302, !noalias !96397, !noundef !178 ; 2 uses
  %i.by = icmp eq i64 %i.bx, -2
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !96397
  call void @_RNvMs2_NtNtCsczhfDQ1qNkX_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias nofree noundef nonnull %i.a) #53, !noalias !96398
  br label %bb.o

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx.i2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i2.i.i.i.i, i64 24, i1 false), !noalias !96402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !96397
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 11352
  %i.ca = load i8, ptr %i.bz, align 8, !range !232, !noalias !96397, !noundef !178
  switch i8 %i.ca, label %_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i [
    i8 0, label %bb.u
    i8 3, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service6config6ConfigECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(1488) %i.t) #53, !noalias !96398
  br label %_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 1560
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtCs8UFHSMUhzWe_19shadowsocks_service6server3run0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.cb) #53, !noalias !96398
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 1488
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7monitor3imp21create_signal_monitor0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.cc) #53, !noalias !96398
  br label %_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

bb.w:                                             ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !96395
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @595, i64 noundef 21, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1964, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @596) #63, !noalias !96403
  unreachable

_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !96397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !96397
  %.val.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !noalias !96397, !nonnull !178, !align !186, !noundef !178
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !noalias !96397, !noundef !178
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !96398, !nonnull !178, !noundef !178
  call void %i.ce(ptr noundef %.val5.i.i.i.i.i.i) #53, !noalias !96398, !inline_history !96261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !96397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !96395
  call void @llvm.experimental.noalias.scope.decl(metadata !96404)
  call void @llvm.experimental.noalias.scope.decl(metadata !96405)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i, i64 24, i1 false), !alias.scope !96406, !noalias !96407
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  call void @_RNvXs_NtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtimeNtB4_17EnterRuntimeGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y) #53, !noalias !96408
  call void @_RNvXs0_NtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y) #53, !noalias !96408
  call void @llvm.experimental.noalias.scope.decl(metadata !96409)
  %i.cf = load i64, ptr %i.y, align 8, !range !191, !alias.scope !96410, !noalias !96389, !noundef !178 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 2
  br i1 %i.cg, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB2g_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !96411)
  %i.ch = icmp eq i64 %i.cf, 0
  br i1 %i.ch, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !96412)
  call void @llvm.experimental.noalias.scope.decl(metadata !96413)
  %i.ci = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !96414, !noalias !96389, !nonnull !178, !noundef !178
  %i.cj = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !96415
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.z, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB2g_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i.i.i.i) #60, !noalias !96408
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB2g_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.aa:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !96416)
  call void @llvm.experimental.noalias.scope.decl(metadata !96417)
  %i.cl = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !96418, !noalias !96389, !nonnull !178, !noundef !178
  %i.cm = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !96419
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.ab, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB2g_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i.i.i.i) #60, !noalias !96408
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB2g_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.ac:                                            ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3w_5error16ShadowsocksErrorEE0INtNtB4z_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3w_5error16ShadowsocksErrorEE0INtNtB4z_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @495, ptr noundef nonnull inttoptr (i64 387 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #63, !noalias !96408
  unreachable

_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB2g_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !96389
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  br label %bb.ck

bb.ad:                                            ; preds = %bb.c
  %i.co = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !96420)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !96421
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11360) %i.q, ptr noundef nonnull align 8 dereferenceable(11360) %i.cq, i64 11360, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !96422)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !96423
  %i.cr = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsczhfDQ1qNkX_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 15 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 72 ; 8 uses
  %i.ct = load i8, ptr %i.cs, align 8, !range !199, !noalias !96424, !noundef !178
  switch i8 %i.ct, label %default.unreachable40 [
    i8 0, label %bb.af
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3E_5error16ShadowsocksErrorEE0INtNtB4H_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i
    i8 1, label %bb.ae
  ], !prof !226

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.cr, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #53, !noalias !96425
  store i8 0, ptr %i.cs, align 8, !noalias !96424
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 70 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 2, !range !199, !noalias !96426, !noundef !178
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cv, 2
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ag, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3A_5error16ShadowsocksErrorEE0INtNtB4D_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3A_5error16ShadowsocksErrorEE0INtNtB4D_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !96423
  br label %bb.ch

bb.ag:                                            ; preds = %bb.af
  store i8 0, ptr %i.cu, align 2, !noalias !96426
  %i.cw = load i64, ptr %i.cp, align 8, !range !182, !alias.scope !96427, !noalias !96428, !noundef !178
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %3 = load ptr, ptr %i.cx, align 8, !alias.scope !96427, !noalias !96428, !nonnull !178, !noundef !178
  %4 = shl nuw nsw i64 %i.cw, 5
  %..i.i.i.i.i.i.i.i = xor i64 %4, 544
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 %..i.i.i.i.i.i.i.i
  %i.cz = call { i32, i32 } @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %i.cy) #53, !noalias !96428 ; 2 uses
  %i.da = extractvalue { i32, i32 } %i.cz, 0
  %i.db = extractvalue { i32, i32 } %i.cz, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.dc, align 8, !noalias !96426
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 60 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 64 ; 2 uses
  %i.dd = trunc i32 %.sroa.04.0.copyload.i.i.i.i.i.i.i.i to i1
  br i1 %i.dd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.sroa.55.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !96426
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !96426
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3E_5error16ShadowsocksErrorEE0INtNtB4H_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.de = call { i32, i32 } @_RNvMs_NtNtCsczhfDQ1qNkX_5tokio4util4randNtB4_8FastRand3new() #53, !noalias !96428 ; 2 uses
  %i.df = extractvalue { i32, i32 } %i.de, 0
  %i.dg = extractvalue { i32, i32 } %i.de, 1
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3E_5error16ShadowsocksErrorEE0INtNtB4H_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3E_5error16ShadowsocksErrorEE0INtNtB4H_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.55.0.copyload.i.i.i.i.i.i.i.i, %bb.ah ], [ %i.dg, %bb.ai ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, %bb.ah ], [ %i.df, %bb.ai ] ; 2 uses
  %i.dh = or i32 %.sroa.01.0.i.i.i.i.i.i.i.i, %.sroa.5.0.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i = icmp eq i32 %i.dh, 0
  %..sroa.5.0.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i, i32 1, i32 %.sroa.5.0.i.i.i.i.i.i.i.i
  store i32 1, ptr %i.dc, align 8, !noalias !96426
  store i32 %i.da, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !96426
  store i32 %i.db, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !96426
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noundef nonnull align 8 %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cp) #53, !noalias !96429
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 %.sroa.01.0.i.i.i.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !96430
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store i32 %..sroa.5.0.i.i.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !96430
  %.sroa.0.0.copyload1.pr.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !96430 ; 3 uses
  %i.di = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i.i, -2
  br i1 %i.di, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3E_5error16ShadowsocksErrorEE0INtNtB4H_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3A_5error16ShadowsocksErrorEE0INtNtB4D_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, !prof !351

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3E_5error16ShadowsocksErrorEE0INtNtB4H_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3E_5error16ShadowsocksErrorEE0INtNtB4H_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, %bb.ad
  call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #63, !noalias !96429
  unreachable

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3A_5error16ShadowsocksErrorEE0INtNtB4D_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3E_5error16ShadowsocksErrorEE0INtNtB4H_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false), !noalias !96423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !96423
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.ch, label %bb.aj, !prof !209

bb.aj:                                            ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server6creates8_0E0INtNtCsf3Ta7LF998c_4core6result6ResultuNtNtB3A_5error16ShadowsocksErrorEE0INtNtB4D_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !96423
  store i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i.i, ptr %i.p, align 8, !noalias !96423
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i, i64 24, i1 false), !noalias !96423
  %i.dk = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsczhfDQ1qNkX_5tokio7runtime9schedulerNtB5_6Handle17as_current_thread(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cp) #53, !noalias !96431 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !96432
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_threadNtB2_13CurrentThread9take_core(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noundef nonnull align 8 %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dk) #53, !noalias !96431
  %i.dl = load i64, ptr %i.n, align 8, !range !191, !noalias !96432, !noundef !178
  %.not12.i.i.i.i.i.i = icmp eq i64 %i.dl, 2
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aj
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cr, i64 68 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cr, i64 69 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.8.0..sroa_idx12.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  br label %bb.bo

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio4sync6notify8NotifiedECsgZAIVb0XKpv_9ssservice.exit7.i.i.i.i.i.i, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !96432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false), !noalias !96432
  %i.du = load ptr, ptr %i.dk, align 8, !noalias !96431, !nonnull !178, !noundef !178
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !96432
  %i.dw = call noundef nonnull ptr @_RNvNtNtCs5Xr050g3D4S_3std6thread7current7current() #53, !noalias !96431 ; 2 uses
  store ptr %i.dw, ptr %i.l, align 8, !noalias !96432
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !range !194, !noalias !96431, !noundef !178
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime7metrics6workerNtB2_13WorkerMetrics13set_thread_id(ptr noundef nonnull align 128 %i.dv, i64 noundef %i.dy) #53, !noalias !96431
  call void @llvm.experimental.noalias.scope.decl(metadata !96433)
  call void @llvm.experimental.noalias.scope.decl(metadata !96434)
  call void @llvm.experimental.noalias.scope.decl(metadata !96435)
  call void @llvm.experimental.noalias.scope.decl(metadata !96436)
  %i.dz = load ptr, ptr %i.l, align 8, !alias.scope !96437, !noalias !96432, !nonnull !178, !noundef !178
  %i.ea = atomicrmw sub ptr %i.dz, i64 1 release, align 8, !noalias !96438
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.ak, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs5Xr050g3D4S_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #60, !noalias !96431
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.ak, %._crit_edge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !96432
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %i.ec = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsczhfDQ1qNkX_5tokio7runtime9schedulerNtB5_7Context21expect_current_thread(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #53, !noalias !96439 ; 13 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 14 uses
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !96439, !noundef !178
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.al, label %bb.am, !prof !192

bb.al:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  store i64 -1, ptr %i.ed, align 8, !noalias !96439
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 8 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !96439, !align !186, !noundef !178 ; 4 uses
  store ptr null, ptr %i.eg, align 8, !noalias !96439
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %bb.bj, label %bb.an, !prof !187

bb.am:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #63, !noalias !96439
  unreachable

bb.an:                                            ; preds = %bb.al
  store i64 0, ptr %i.ed, align 8, !noalias !96439
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i)
  %i.ei = load i8, ptr %i.cs, align 8, !range !199, !noalias !96440, !noundef !178
  switch i8 %i.ei, label %default.unreachable40 [
    i8 0, label %bb.ap
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_13set_schedulerTINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtBY_9scheduler14current_thread4CoreEINtNtCsf3Ta7LF998c_4core6option6OptionINtNtB3z_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEEENCINvMs7_B2R_NtB2R_9CoreGuard5enterNCINvB5A_8block_onINtNtB3z_3pin3PinQNCNvNtNtB4y_7service6server6creates8_0EE0B3u_E0E0B2f_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i.i
    i8 1, label %bb.ao
  ], !prof !226

bb.ao:                                            ; preds = %bb.an
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.cr, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #53, !noalias !96441
  store i8 0, ptr %i.cs, align 8, !noalias !96440
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i.i)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cr, i64 40 ; 4 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !96442, !noundef !178 ; 2 uses
  store ptr %i.m, ptr %i.ej, align 8, !noalias !96442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !96443
  %i.el = call { ptr, ptr } @_RNvMs2_NtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_threadNtB5_6Handle9waker_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ec) #53, !noalias !96444 ; 2 uses
  %i.em = extractvalue { ptr, ptr } %i.el, 0
  %i.en = extractvalue { ptr, ptr } %i.el, 1
  store ptr %i.em, ptr %i.i, align 8, !noalias !96443
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.en, ptr %i.eo, align 8, !noalias !96443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !96443
  store ptr %i.i, ptr %i.h, align 8, !noalias !96443
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.ep, align 8, !noalias !96443
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr null, ptr %i.eq, align 8, !noalias !96443
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 96
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime7metrics5batchNtB2_12MetricsBatch32start_processing_scheduled_tasks(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.er) #53, !noalias !96445
  %i.es = getelementptr inbounds nuw i8, ptr %i.cr, i64 68 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.cr, i64 69 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.632.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.aq

bb.aq:                                            ; preds = %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ap
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eh, %bb.ap ], [ %.sink50.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ev = load ptr, ptr %i.ec, align 8, !noalias !96444, !nonnull !178, !noundef !178
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 464
  %i.ex = atomicrmw xchg ptr %i.ew, i8 0 acq_rel, align 1, !noalias !96445
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.bc, %bb.aq
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fl, %bb.bc ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aq ] ; 2 uses
  %i.ey = load ptr, ptr %i.ec, align 8, !noalias !96444, !nonnull !178, !noundef !178
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 344
  %i.fa = load i32, ptr %i.ez, align 8, !noalias !96445, !noundef !178 ; 2 uses
  %.not38.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fa, 0
  br i1 %.not38.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.fb = load i64, ptr %i.ed, align 8, !noalias !96446, !noundef !178
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %bb.at, label %bb.ay, !prof !192

bb.at:                                            ; preds = %bb.as
  store i64 -1, ptr %i.ed, align 8, !noalias !96446
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.eg, align 8, !noalias !96446, !align !186, !noundef !178 ; 2 uses
  %i.fd = icmp eq ptr %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.fd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEECsgZAIVb0XKpv_9ssservice(ptr nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #53, !noalias !96447
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ed, align 8, !noalias !96446
  %i.fe = add i64 %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.au, %bb.at
  %i.ff = phi i64 [ 0, %bb.at ], [ %i.fe, %bb.au ]
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.eg, align 8, !noalias !96446
  store i64 %i.ff, ptr %i.ed, align 8, !noalias !96446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !96448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !96449
end_hunk_1
begin_hunk_2_@_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server4main:bb.a
  br i1 %i.ia, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !96483)
  call void @llvm.experimental.noalias.scope.decl(metadata !96484)
  %i.ib = load ptr, ptr %i.hz, align 8, !alias.scope !96485, !noalias !96387, !nonnull !178, !noundef !178
  %i.ic = atomicrmw sub ptr %i.ib, i64 1 release, align 8, !noalias !96486
  %i.id = icmp eq i64 %i.ic, 1
  br i1 %i.id, label %bb.cn, label %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server4main0CsgZAIVb0XKpv_9ssservice.exit

bb.cn:                                            ; preds = %bb.cm
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hz) #60, !noalias !96387
  br label %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server4main0CsgZAIVb0XKpv_9ssservice.exit

bb.co:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !96487)
  call void @llvm.experimental.noalias.scope.decl(metadata !96488)
  %i.ie = load ptr, ptr %i.hz, align 8, !alias.scope !96489, !noalias !96387, !nonnull !178, !noundef !178
  %i.if = atomicrmw sub ptr %i.ie, i64 1 release, align 8, !noalias !96490
  %i.ig = icmp eq i64 %i.if, 1
  br i1 %i.ig, label %bb.cp, label %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server4main0CsgZAIVb0XKpv_9ssservice.exit

bb.cp:                                            ; preds = %bb.co
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hz) #60, !noalias !96387
  br label %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server4main0CsgZAIVb0XKpv_9ssservice.exit

_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server4main0CsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.ck, %bb.cm, %bb.cn, %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !96387
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio7runtime7runtime7RuntimeECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(80) %i.aa) #53, !noalias !96386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !96386
  %.not = icmp eq i64 %.sroa.0.2, -1
  br i1 %.not, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server4main0CsgZAIVb0XKpv_9ssservice.exit, %bb.b
  %.sroa.0.08 = phi i64 [ %.sroa.07.0.copyload, %bb.b ], [ %.sroa.0.2, %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server4main0CsgZAIVb0XKpv_9ssservice.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 %.sroa.0.08, ptr %i.ad, align 8
  %.sroa.8.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %i.ad, ptr %i.ac, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @_RNvXs_NtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB4_16ShadowsocksErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @2378, ptr noundef nonnull %i.ac) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.val = load i64, ptr %i.ad, align 8, !range !216, !noundef !178
  switch i64 %.val, label %default.unreachable40 [
    i64 0, label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit
    i64 1, label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit
    i64 2, label %bb.cr
    i64 3, label %bb.cr
    i64 4, label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread
  ]

bb.cr:                                            ; preds = %bb.cq, %bb.cq
  br label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit

_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread: ; preds = %bb.cq
  %.val.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx6, align 8, !alias.scope !96491 ; 2 uses
  %i.ih = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ih, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsgZAIVb0XKpv_9ssservice.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.sink.split.i

_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit: ; preds = %bb.cq, %bb.cq, %bb.cr
  %.sroa.0.0.i = phi i8 [ 70, %bb.cq ], [ 78, %bb.cr ], [ 70, %bb.cq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !96492)
  %.val.i.i1.i = load i64, ptr %.sroa.8.0..sroa_idx6, align 8, !alias.scope !96492 ; 2 uses
  %i.ii = icmp eq i64 %.val.i.i1.i, 0
  br i1 %i.ii, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsgZAIVb0XKpv_9ssservice.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.sink.split.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.sink.split.i: ; preds = %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread
  %.sroa.0.0.i10 = phi i8 [ 64, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread ], [ %.sroa.0.0.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit ]
  %.val.i.i10.sink.i = phi i64 [ %.val.i.i.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread ], [ %.val.i.i1.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.val1.i.i11.i = load ptr, ptr %i.ij, align 8, !alias.scope !96492, !nonnull !178, !noundef !178
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i11.i, i64 noundef %.val.i.i10.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !96492
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.sink.split.i
  %.sroa.0.0.i11 = phi i8 [ 64, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread ], [ %.sroa.0.0.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit ], [ %.sroa.0.0.i10, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.cs

bb.cs:                                            ; preds = %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server4main0CsgZAIVb0XKpv_9ssservice.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsgZAIVb0XKpv_9ssservice.exit
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.i11, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsgZAIVb0XKpv_9ssservice.exit ], [ 0, %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server4main0CsgZAIVb0XKpv_9ssservice.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef range(i8 0, 79) i8 @_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [2 x i8], align 1                 ; 6 uses
  %.sroa.8.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [2 x i8], align 1                 ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.7.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %.sroa.7.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %.sroa.5.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.6.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 9 uses
  %i.k = alloca [64 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [72 x i8], align 8                ; 6 uses
  %i.n = alloca [72 x i8], align 8                ; 9 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5.i.i.i.i.i = alloca [24 x i8], align 8  ; 4 uses
  %i.q = alloca [2 x i8], align 1                 ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 8 uses
  %.sroa.6.i.i.i.i.i = alloca [24 x i8], align 8  ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5.i.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [80 x i8], align 8                ; 11 uses
  %i.y = alloca [73424 x i8], align 8             ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6create(ptr noalias nofree noundef nonnull sret([73424 x i8]) align 8 captures(none) dereferenceable(73424) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) #53
  %i.ab = load i64, ptr %i.y, align 8, !range !191, !noundef !178
  %i.ac = icmp eq i64 %i.ab, 2
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.07.0.copyload = load i64, ptr %i.ad, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  br label %bb.cr

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !96646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %i.y, i64 80, i1 false)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !96647
  %i.ae = tail call noundef align 8 dereferenceable_or_null(73344) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 73344, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !96647 ; 20 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i, !prof !183

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 73344) #62, !noalias !96647
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73344) %i.ae, ptr noundef nonnull align 8 dereferenceable(73344) %i.ag, i64 73344, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !96648
  call void @_RNvMNtNtCsczhfDQ1qNkX_5tokio7runtime7runtimeNtB2_7Runtime5enter(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noundef nonnull align 8 %i.x) #53, !noalias !96648
  %i.ah = load i64, ptr %i.x, align 8, !range !182, !noalias !96648, !noundef !178
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %bb.ae

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !96649)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !96650
  %i.ak = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsczhfDQ1qNkX_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72 ; 4 uses
  %i.am = load i8, ptr %i.al, align 8, !range !199, !noalias !96651, !noundef !178
  switch i8 %i.am, label %default.unreachable41 [
    i8 0, label %bb.g
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i
    i8 1, label %bb.f
  ], !prof !226

default.unreachable41:                            ; preds = %bb.br, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p, %bb.cr, %bb.ao, %bb.ae, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.ak, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #53, !noalias !96651
  store i8 0, ptr %i.al, align 8, !noalias !96651
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 70 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 2, !range !199, !noalias !96652, !noundef !178
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !96650
  br label %bb.ad

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.an, align 2, !noalias !96652
  %i.ap = load i64, ptr %i.aj, align 8, !range !182, !alias.scope !96649, !noalias !96653, !noundef !178
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %1 = load ptr, ptr %i.aq, align 8, !alias.scope !96649, !noalias !96653, !nonnull !178, !noundef !178
  %2 = shl nuw nsw i64 %i.ap, 5
  %..i.i.i.i.i.i.i = xor i64 %2, 544
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %..i.i.i.i.i.i.i
  %i.as = call { i32, i32 } @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %i.ar) #53, !noalias !96652 ; 2 uses
  %i.at = extractvalue { i32, i32 } %i.as, 0
  %i.au = extractvalue { i32, i32 } %i.as, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.av, align 8, !noalias !96652
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 60 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 2 uses
  %i.aw = trunc i32 %.sroa.04.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.55.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !96652
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !96652
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ax = call { i32, i32 } @_RNvMs_NtNtCsczhfDQ1qNkX_5tokio4util4randNtB4_8FastRand3new() #53, !noalias !96652 ; 2 uses
  %i.ay = extractvalue { i32, i32 } %i.ax, 0
  %i.az = extractvalue { i32, i32 } %i.ax, 1
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.5.0.i.i.i.i.i.i.i = phi i32 [ %.sroa.55.0.copyload.i.i.i.i.i.i.i, %bb.i ], [ %i.az, %bb.j ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i.i.i.i.i, %bb.i ], [ %i.ay, %bb.j ] ; 2 uses
  %i.ba = or i32 %.sroa.01.0.i.i.i.i.i.i.i, %.sroa.5.0.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i = icmp eq i32 %i.ba, 0
  %..sroa.5.0.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i, i32 1, i32 %.sroa.5.0.i.i.i.i.i.i.i
  store i32 1, ptr %i.av, align 8, !noalias !96652
  store i32 %i.at, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !96652
  store i32 %i.au, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !96652
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noundef nonnull align 8 %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj) #53, !noalias !96654
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 %.sroa.01.0.i.i.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !96655
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i32 %..sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !96655
  %.sroa.0.0.copyload1.pr.i.i.i.i.i = load i64, ptr %i.u, align 8, !noalias !96655 ; 3 uses
  %i.bb = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i, -2
  br i1 %i.bb, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, !prof !351

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, %bb.e
  call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #63, !noalias !96654
  unreachable

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !96650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !96650
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.ad, label %bb.k, !prof !209

bb.k:                                             ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !96650
  store i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i, ptr %i.v, align 8, !noalias !96650
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i, i64 24, i1 false), !noalias !96650
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !96656
  %i.bd = call { ptr, ptr } @_RNvMs2_NtNtCsczhfDQ1qNkX_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a) #53, !noalias !96657 ; 2 uses
  %i.be = extractvalue { ptr, ptr } %i.bd, 0      ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !96656
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 73336
  %i.bh = load i8, ptr %i.bg, align 8, !range !232, !noalias !96656, !noundef !178
  switch i8 %i.bh, label %bb.x [
    i8 0, label %bb.m
    i8 3, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service6config6ConfigECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(1488) %i.ae) #53, !noalias !96657
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 1560
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtCs8UFHSMUhzWe_19shadowsocks_service7manager3run0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.bi) #53, !noalias !96657
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1488
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7monitor3imp21create_signal_monitor0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.bj) #53, !noalias !96657
  br label %bb.x

bb.o:                                             ; preds = %bb.k
  %i.bk = extractvalue { ptr, ptr } %i.bd, 1
  store ptr %i.be, ptr %i.t, align 8, !noalias !96656
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !noalias !96656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !96656
  store ptr %i.t, ptr %i.s, align 8, !noalias !96656
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.bm, align 8, !noalias !96656
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr null, ptr %i.bn, align 8, !noalias !96656
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 68 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 69 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !96656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !96656
  %i.br = load i8, ptr %i.al, align 8, !range !199, !noalias !96656, !noundef !178 ; 2 uses
  switch i8 %i.br, label %default.unreachable41 [
    i8 0, label %bb.r
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onINtNtB36_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtB46_7service7manager6creates6_0EEE0E0E0B27_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
    i8 1, label %bb.q
  ], !prof !226

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.ak, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #53, !noalias !96657
  store i8 0, ptr %i.al, align 8, !noalias !96656
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bs = load i8, ptr %i.bo, align 4, !range !181, !noalias !96656, !noundef !178
  %i.bt = load i8, ptr %i.bp, align 1, !noalias !96656
  store i8 1, ptr %i.bo, align 4, !noalias !96656
  store i8 -128, ptr %i.bp, align 1, !noalias !96656
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onINtNtB36_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtB46_7service7manager6creates6_0EEE0E0E0B27_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onINtNtB36_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtB46_7service7manager6creates6_0EEE0E0E0B27_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.p
  %.sroa.3.0.i.i.i.i.i.i.i = phi i8 [ %i.bt, %bb.r ], [ undef, %bb.p ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.bs, %bb.r ], [ %i.br, %bb.p ]
  store i8 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.q, align 1, !noalias !96656
  store i8 %.sroa.3.0.i.i.i.i.i.i.i, ptr %i.bq, align 1, !noalias !96656
  call fastcc void @_RNvXs_NtNtCsf3Ta7LF998c_4core6future6futureINtNtB8_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EENtB4_6Future4pollCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.r, ptr nonnull align 8 %i.ae, ptr noalias nofree noundef align 8 dereferenceable(32) %i.s) #53, !noalias !96657
  %i.bu = load i8, ptr %i.q, align 1, !range !199, !alias.scope !96658, !noalias !96656, !noundef !178
  %.not.i.i.i1.i.i.i.i = icmp eq i8 %i.bu, 2
  br i1 %.not.i.i.i1.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onINtNtB36_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtB46_7service7manager6creates6_0EEE0E0E0B27_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  call void @_RNvXNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.q) #53, !noalias !96657
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.s, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onINtNtB36_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtB46_7service7manager6creates6_0EEE0E0E0B27_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !96656
  %i.bv = load i64, ptr %i.r, align 8, !range !302, !noalias !96656, !noundef !178 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, -2
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !96656
  call void @_RNvMs2_NtNtCsczhfDQ1qNkX_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias nofree noundef nonnull %i.a) #53, !noalias !96657
  br label %bb.p

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx.i2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i2.i.i.i.i, i64 24, i1 false), !noalias !96659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !96656
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ae, i64 73336
  %i.by = load i8, ptr %i.bx, align 8, !range !232, !noalias !96656, !noundef !178
  switch i8 %i.by, label %_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i [
    i8 0, label %bb.v
    i8 3, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service6config6ConfigECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(1488) %i.ae) #53, !noalias !96657
  br label %_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ae, i64 1560
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtCs8UFHSMUhzWe_19shadowsocks_service7manager3run0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.bz) #53, !noalias !96657
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ae, i64 1488
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7monitor3imp21create_signal_monitor0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.ca) #53, !noalias !96657
  br label %_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

bb.x:                                             ; preds = %bb.n, %bb.m, %bb.l
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.ae, i64 noundef 73344, i64 noundef 8) #53, !noalias !96657
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @595, i64 noundef 21, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1964, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @596) #63, !noalias !96660
  unreachable

_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.w, %bb.v, %bb.u
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.ae, i64 noundef 73344, i64 noundef 8) #53, !noalias !96657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !96656
  %.val.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !noalias !96656, !nonnull !178, !align !186, !noundef !178
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !noalias !96656, !noundef !178
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !96657, !nonnull !178, !noundef !178
  call void %i.cc(ptr noundef %.val5.i.i.i.i.i.i) #53, !noalias !96657, !inline_history !96522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !96656
  call void @llvm.experimental.noalias.scope.decl(metadata !96661)
  call void @llvm.experimental.noalias.scope.decl(metadata !96662)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i, i64 24, i1 false), !alias.scope !96663, !noalias !96664
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  call void @_RNvXs_NtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtimeNtB4_17EnterRuntimeGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v) #53, !noalias !96665
  call void @_RNvXs0_NtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v) #53, !noalias !96665
  call void @llvm.experimental.noalias.scope.decl(metadata !96666)
  %i.cd = load i64, ptr %i.v, align 8, !range !191, !alias.scope !96667, !noalias !96650, !noundef !178 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 2
  br i1 %i.ce, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !96668)
  %i.cf = icmp eq i64 %i.cd, 0
  br i1 %i.cf, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !96669)
  call void @llvm.experimental.noalias.scope.decl(metadata !96670)
  %i.cg = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !96671, !noalias !96650, !nonnull !178, !noundef !178
  %i.ch = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !96672
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.aa, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i.i.i.i) #60, !noalias !96665
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.ab:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !96673)
  call void @llvm.experimental.noalias.scope.decl(metadata !96674)
  %i.cj = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !96675, !noalias !96650, !nonnull !178, !noundef !178
  %i.ck = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !96676
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.ac, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i.i.i.i) #60, !noalias !96665
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.ad:                                            ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @495, ptr noundef nonnull inttoptr (i64 387 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #63, !noalias !96665
  unreachable

_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !96650
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  br label %bb.cl

bb.ae:                                            ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !96677)
  call void @llvm.experimental.noalias.scope.decl(metadata !96678)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !96679
  %i.co = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsczhfDQ1qNkX_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 15 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 72 ; 8 uses
  %i.cq = load i8, ptr %i.cp, align 8, !range !199, !noalias !96680, !noundef !178
  switch i8 %i.cq, label %default.unreachable41 [
    i8 0, label %bb.ag
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i
    i8 1, label %bb.af
  ], !prof !226

bb.af:                                            ; preds = %bb.ae
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.co, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #53, !noalias !96681
  store i8 0, ptr %i.cp, align 8, !noalias !96680
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 70 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 2, !range !199, !noalias !96682, !noundef !178
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cs, 2
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ah, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !96679
  br label %bb.ci

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.cr, align 2, !noalias !96682
  %i.ct = load i64, ptr %i.cn, align 8, !range !182, !alias.scope !96683, !noalias !96684, !noundef !178
  %i.cu = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %3 = load ptr, ptr %i.cu, align 8, !alias.scope !96683, !noalias !96684, !nonnull !178, !noundef !178
  %4 = shl nuw nsw i64 %i.ct, 5
  %..i.i.i.i.i.i.i.i = xor i64 %4, 544
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 %..i.i.i.i.i.i.i.i
  %i.cw = call { i32, i32 } @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %i.cv) #53, !noalias !96684 ; 2 uses
  %i.cx = extractvalue { i32, i32 } %i.cw, 0
  %i.cy = extractvalue { i32, i32 } %i.cw, 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.cz, align 8, !noalias !96682
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 60 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 64 ; 2 uses
  %i.da = trunc i32 %.sroa.04.0.copyload.i.i.i.i.i.i.i.i to i1
  br i1 %i.da, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %.sroa.55.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !96682
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !96682
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.db = call { i32, i32 } @_RNvMs_NtNtCsczhfDQ1qNkX_5tokio4util4randNtB4_8FastRand3new() #53, !noalias !96684 ; 2 uses
  %i.dc = extractvalue { i32, i32 } %i.db, 0
  %i.dd = extractvalue { i32, i32 } %i.db, 1
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.55.0.copyload.i.i.i.i.i.i.i.i, %bb.ai ], [ %i.dd, %bb.aj ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, %bb.ai ], [ %i.dc, %bb.aj ] ; 2 uses
  %i.de = or i32 %.sroa.01.0.i.i.i.i.i.i.i.i, %.sroa.5.0.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i = icmp eq i32 %i.de, 0
  %..sroa.5.0.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i, i32 1, i32 %.sroa.5.0.i.i.i.i.i.i.i.i
  store i32 1, ptr %i.cz, align 8, !noalias !96682
  store i32 %i.cx, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !96682
  store i32 %i.cy, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !96682
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noundef nonnull align 8 %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cn) #53, !noalias !96685
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 %.sroa.01.0.i.i.i.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !96686
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store i32 %..sroa.5.0.i.i.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !96686
  %.sroa.0.0.copyload1.pr.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !96686 ; 3 uses
  %i.df = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i.i, -2
  br i1 %i.df, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, !prof !351

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, %bb.ae
  call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #63, !noalias !96685
  unreachable

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !noalias !96679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !96679
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.ci, label %bb.ak, !prof !209

bb.ak:                                            ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager6creates6_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1T_17EnterRuntimeGuardEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !96679
  store i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i.i, ptr %i.p, align 8, !noalias !96679
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i, i64 24, i1 false), !noalias !96679
  %i.dh = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsczhfDQ1qNkX_5tokio7runtime9schedulerNtB5_6Handle17as_current_thread(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cn) #53, !noalias !96687 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !96688
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_threadNtB2_13CurrentThread9take_core(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noundef nonnull align 8 %i.cm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dh) #53, !noalias !96687
  %i.di = load i64, ptr %i.n, align 8, !range !191, !noalias !96688, !noundef !178
  %.not12.i.i.i.i.i.i = icmp eq i64 %i.di, 2
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ak
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.co, i64 68 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.co, i64 69 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.8.0..sroa_idx12.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  br label %bb.bp

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio4sync6notify8NotifiedECsgZAIVb0XKpv_9ssservice.exit7.i.i.i.i.i.i, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !96688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false), !noalias !96688
  %i.dr = load ptr, ptr %i.dh, align 8, !noalias !96687, !nonnull !178, !noundef !178
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !96688
  %i.dt = call noundef nonnull ptr @_RNvNtNtCs5Xr050g3D4S_3std6thread7current7current() #53, !noalias !96687 ; 2 uses
  store ptr %i.dt, ptr %i.l, align 8, !noalias !96688
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !range !194, !noalias !96687, !noundef !178
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime7metrics6workerNtB2_13WorkerMetrics13set_thread_id(ptr noundef nonnull align 128 %i.ds, i64 noundef %i.dv) #53, !noalias !96687
  call void @llvm.experimental.noalias.scope.decl(metadata !96689)
  call void @llvm.experimental.noalias.scope.decl(metadata !96690)
  call void @llvm.experimental.noalias.scope.decl(metadata !96691)
  call void @llvm.experimental.noalias.scope.decl(metadata !96692)
  %i.dw = load ptr, ptr %i.l, align 8, !alias.scope !96693, !noalias !96688, !nonnull !178, !noundef !178
  %i.dx = atomicrmw sub ptr %i.dw, i64 1 release, align 8, !noalias !96694
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.al, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs5Xr050g3D4S_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #60, !noalias !96687
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.al, %._crit_edge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !96688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %i.dz = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsczhfDQ1qNkX_5tokio7runtime9schedulerNtB5_7Context21expect_current_thread(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #53, !noalias !96695 ; 13 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 14 uses
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !96695, !noundef !178
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.am, label %bb.an, !prof !192

bb.am:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  store i64 -1, ptr %i.ea, align 8, !noalias !96695
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 8 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !96695, !align !186, !noundef !178 ; 4 uses
  store ptr null, ptr %i.ed, align 8, !noalias !96695
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %bb.bk, label %bb.ao, !prof !187

bb.an:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #63, !noalias !96695
  unreachable

bb.ao:                                            ; preds = %bb.am
  store i64 0, ptr %i.ea, align 8, !noalias !96695
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i)
  %i.ef = load i8, ptr %i.cp, align 8, !range !199, !noalias !96696, !noundef !178
  switch i8 %i.ef, label %default.unreachable41 [
    i8 0, label %bb.aq
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_13set_schedulerTINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtBY_9scheduler14current_thread4CoreEINtNtCsf3Ta7LF998c_4core6option6OptionINtNtB3z_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEEENCINvMs7_B2R_NtB2R_9CoreGuard5enterNCINvB5A_8block_onINtNtB3z_3pin3PinQIB6n_IB2h_NCNvNtNtB4y_7service7manager6creates6_0EEEE0B3u_E0E0B2f_ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i.i
    i8 1, label %bb.ap
  ], !prof !226

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.co, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #53, !noalias !96697
  store i8 0, ptr %i.cp, align 8, !noalias !96696
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i.i)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.co, i64 40 ; 4 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !96698, !noundef !178 ; 2 uses
  store ptr %i.m, ptr %i.eg, align 8, !noalias !96698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !96699
  %i.ei = call { ptr, ptr } @_RNvMs2_NtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_threadNtB5_6Handle9waker_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dz) #53, !noalias !96700 ; 2 uses
  %i.ej = extractvalue { ptr, ptr } %i.ei, 0
  %i.ek = extractvalue { ptr, ptr } %i.ei, 1
  store ptr %i.ej, ptr %i.i, align 8, !noalias !96699
  %i.el = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ek, ptr %i.el, align 8, !noalias !96699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !96699
  store ptr %i.i, ptr %i.h, align 8, !noalias !96699
  %i.em = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.em, align 8, !noalias !96699
  %i.en = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr null, ptr %i.en, align 8, !noalias !96699
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 96
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime7metrics5batchNtB2_12MetricsBatch32start_processing_scheduled_tasks(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.eo) #53, !noalias !96701
  %i.ep = getelementptr inbounds nuw i8, ptr %i.co, i64 68 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.co, i64 69 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.632.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.ar

bb.ar:                                            ; preds = %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aq
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ee, %bb.aq ], [ %.sink50.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.es = load ptr, ptr %i.dz, align 8, !noalias !96700, !nonnull !178, !noundef !178
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 464
  %i.eu = atomicrmw xchg ptr %i.et, i8 0 acq_rel, align 1, !noalias !96701
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.bd, %bb.ar
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fi, %bb.bd ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ar ] ; 2 uses
  %i.ev = load ptr, ptr %i.dz, align 8, !noalias !96700, !nonnull !178, !noundef !178
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 344
  %i.ex = load i32, ptr %i.ew, align 8, !noalias !96701, !noundef !178 ; 2 uses
  %.not38.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ex, 0
  br i1 %.not38.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.ey = load i64, ptr %i.ea, align 8, !noalias !96702, !noundef !178
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.au, label %bb.az, !prof !192

bb.au:                                            ; preds = %bb.at
  store i64 -1, ptr %i.ea, align 8, !noalias !96702
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ed, align 8, !noalias !96702, !align !186, !noundef !178 ; 2 uses
  %i.fa = icmp eq ptr %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.fa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEECsgZAIVb0XKpv_9ssservice(ptr nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #53, !noalias !96703
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ea, align 8, !noalias !96702
  %i.fb = add i64 %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.av, %bb.au
  %i.fc = phi i64 [ 0, %bb.au ], [ %i.fb, %bb.av ]
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ed, align 8, !noalias !96702
  store i64 %i.fc, ptr %i.ea, align 8, !noalias !96702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !96704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !96705
end_hunk_2
