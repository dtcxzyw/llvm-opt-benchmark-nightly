Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/sslocal.sslocal.5cb0643d8d9caf8b-cgu.0?download=true
inline.NumInlined: 35275
inline.NumDeleted: 15553
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 135
loop-unroll.NumUnrolled: 238
begin_hunk_0_@_RINvNtNtCs7ewmRfXve8r_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECs7XnEB7DeNXr_7sslocal:bb.a
  %i.fn = zext i8 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr @335, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !noalias !28336, !noundef !146
  %i.fq = zext i8 %i.fp to i64
  %i.fr = xor i64 %i.fk, %i.fq
  %i.fs = mul i64 %i.fr, 1099511628211
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 2
  %i.fu = load i8, ptr %i.ft, align 1, !noalias !28336, !noundef !146
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr @335, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !noalias !28336, !noundef !146
  %i.fy = zext i8 %i.fx to i64
  %i.fz = xor i64 %i.fs, %i.fy
  %i.ga = mul i64 %i.fz, 1099511628211
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 3
  %i.gc = load i8, ptr %i.gb, align 1, !noalias !28336, !noundef !146
  %i.gd = zext i8 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr @335, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !noalias !28336, !noundef !146
  %i.gg = zext i8 %i.gf to i64
  %i.gh = xor i64 %i.ga, %i.gg
  %i.gi = mul i64 %i.gh, 1099511628211            ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 4 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.cy
  br i1 %i.gk, label %_RINvXsB_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_7HdrNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs7XnEB7DeNXr_7sslocal.exit, label %.lr.ph.i.i.i21

bb.k:                                             ; preds = %bb.g
  %i.gl = load i8, ptr %1, align 8, !range !168, !alias.scope !28331, !noalias !28332, !noundef !146
  %i.gm = zext nneg i8 %i.gl to i64
  %i.gn = xor i64 %i.ct, %i.gm
  %i.go = mul i64 %i.gn, 2232315406967589409
  br label %_RINvXsB_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_7HdrNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs7XnEB7DeNXr_7sslocal.exit

_RINvXsB_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_7HdrNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs7XnEB7DeNXr_7sslocal.exit: ; preds = %.lr.ph.i.i.i21.prol.loopexit, %.lr.ph.i.i.i21, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.i, %bb.k, %bb.j, %_RINvXsB_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_7HdrNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECs7XnEB7DeNXr_7sslocal.exit
  %.sroa.0.0 = phi i64 [ %i.cn, %_RINvXsB_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_7HdrNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECs7XnEB7DeNXr_7sslocal.exit ], [ %i.ct, %bb.i ], [ %i.go, %bb.k ], [ %i.fc, %.lr.ph.i.i.i.i ], [ %i.ct, %bb.j ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %.lcssa34.unr, %.lr.ph.i.i.i21.prol.loopexit ], [ %i.gi, %.lr.ph.i.i.i21 ]
  %i.gp = trunc i64 %.sroa.0.0 to i16
  %i.gq = and i16 %i.gp, 32767
  ret i16 %i.gq
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsaI3lGUjttVO_5hyper6client8dispatch7channelINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtBT_8response8ResponseNtNtNtB6_4body8incoming8IncomingEECs7XnEB7DeNXr_7sslocal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !28343
  %i.a = tail call noundef align 8 dereferenceable_or_null(8736) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 8736, i64 noundef 8) #53, !noalias !28343 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4list7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB1K_8response8ResponseNtNtNtBW_4body8incoming8IncomingEEECs7XnEB7DeNXr_7sslocal.exit.i, !prof !155

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8736) #62, !noalias !28343
  unreachable

_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4list7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB1K_8response8ResponseNtNtNtBW_4body8incoming8IncomingEEECs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8704
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false), !noalias !28343
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !28344
  %i.d = tail call noundef align 128 dereferenceable_or_null(512) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 512, i64 noundef range(i64 1, -9223372036854775807) 128) #53, !noalias !28344 ; 18 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i, !prof !151

bb.c:                                             ; preds = %_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4list7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB1K_8response8ResponseNtNtNtBW_4body8incoming8IncomingEEECs7XnEB7DeNXr_7sslocal.exit.i
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 512) #62, !noalias !28344
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i: ; preds = %_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4list7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB1K_8response8ResponseNtNtNtBW_4body8incoming8IncomingEEECs7XnEB7DeNXr_7sslocal.exit.i
  store i64 1, ptr %i.d, align 128
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.444.0..sroa_idx.i, align 8
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.a, ptr %.sroa.546.0..sroa_idx.i, align 128
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.848.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store ptr null, ptr %.sroa.848.0..sroa_idx.i, align 128
  %.sroa.950.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store i64 0, ptr %.sroa.950.0..sroa_idx.i, align 16
  %.sroa.1051.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(32) %.sroa.1051.0..sroa_idx.i, i8 0, i64 32, i1 false)
  store ptr %i.a, ptr %.sroa.14.0..sroa_idx.i, align 32
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  store ptr %i.a, ptr %.sroa.15.0..sroa_idx.i, align 8
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  store i64 0, ptr %.sroa.16.0..sroa_idx.i, align 16
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  store i8 0, ptr %.sroa.17.0..sroa_idx.i, align 8
  %.sroa.1852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  store i64 0, ptr %.sroa.1852.0..sroa_idx.i, align 64
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  store i64 1, ptr %.sroa.19.0..sroa_idx.i, align 8
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 464
  store i64 0, ptr %.sroa.20.0..sroa_idx.i, align 16
  %i.f = atomicrmw add ptr %i.d, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chan7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB1K_8response8ResponseNtNtNtBW_4body8incoming8IncomingEENtNtB4_9unbounded9SemaphoreECs7XnEB7DeNXr_7sslocal.exit

bb.d:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chan7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB1K_8response8ResponseNtNtNtBW_4body8incoming8IncomingEENtNtB4_9unbounded9SemaphoreECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  %i.h = tail call { ptr, ptr } @_RNvCsaaBHDuKNmAh_4want3new() #53 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  store ptr %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.l, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsaI3lGUjttVO_5hyper6client8dispatch7channelINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtB6_4body8incoming8IncomingEINtNtBT_8response8ResponseB1s_EECs7XnEB7DeNXr_7sslocal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !28349
  %i.a = tail call noundef align 8 dereferenceable_or_null(9248) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 9248, i64 noundef 8) #53, !noalias !28349 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4list7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtBW_4body8incoming8IncomingEINtNtB1K_8response8ResponseB2j_EEECs7XnEB7DeNXr_7sslocal.exit.i, !prof !155

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 9248) #62, !noalias !28349
  unreachable

_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4list7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtBW_4body8incoming8IncomingEINtNtB1K_8response8ResponseB2j_EEECs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 9216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false), !noalias !28349
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !28350
  %i.d = tail call noundef align 128 dereferenceable_or_null(512) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 512, i64 noundef range(i64 1, -9223372036854775807) 128) #53, !noalias !28350 ; 18 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i, !prof !151

bb.c:                                             ; preds = %_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4list7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtBW_4body8incoming8IncomingEINtNtB1K_8response8ResponseB2j_EEECs7XnEB7DeNXr_7sslocal.exit.i
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 512) #62, !noalias !28350
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i: ; preds = %_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4list7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtBW_4body8incoming8IncomingEINtNtB1K_8response8ResponseB2j_EEECs7XnEB7DeNXr_7sslocal.exit.i
  store i64 1, ptr %i.d, align 128
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.444.0..sroa_idx.i, align 8
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.a, ptr %.sroa.546.0..sroa_idx.i, align 128
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.848.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store ptr null, ptr %.sroa.848.0..sroa_idx.i, align 128
  %.sroa.950.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store i64 0, ptr %.sroa.950.0..sroa_idx.i, align 16
  %.sroa.1051.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(32) %.sroa.1051.0..sroa_idx.i, i8 0, i64 32, i1 false)
  store ptr %i.a, ptr %.sroa.14.0..sroa_idx.i, align 32
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  store ptr %i.a, ptr %.sroa.15.0..sroa_idx.i, align 8
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  store i64 0, ptr %.sroa.16.0..sroa_idx.i, align 16
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  store i8 0, ptr %.sroa.17.0..sroa_idx.i, align 8
  %.sroa.1852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  store i64 0, ptr %.sroa.1852.0..sroa_idx.i, align 64
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  store i64 1, ptr %.sroa.19.0..sroa_idx.i, align 8
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 464
  store i64 0, ptr %.sroa.20.0..sroa_idx.i, align 16
  %i.f = atomicrmw add ptr %i.d, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chan7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtBW_4body8incoming8IncomingEINtNtB1K_8response8ResponseB2j_EENtNtB4_9unbounded9SemaphoreECs7XnEB7DeNXr_7sslocal.exit

bb.d:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chan7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtBW_4body8incoming8IncomingEINtNtB1K_8response8ResponseB2j_EENtNtB4_9unbounded9SemaphoreECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  %i.h = tail call { ptr, ptr } @_RNvCsaaBHDuKNmAh_4want3new() #53 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  store ptr %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.l, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCscVsx2cUGvkQ_12futures_util6future8join_all8join_allINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1C_11PingChecker18check_update_score0EECs7XnEB7DeNXr_7sslocal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66336 x i8], align 16            ; 13 uses
  %.sroa.8.sroa.8.i.i = alloca [7 x i8], align 1  ; 5 uses
  %.sroa.5.sroa.0.sroa.4 = alloca [7 x i8], align 1 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !28422, !noalias !28423 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !28422, !noalias !28423, !nonnull !146, !noundef !146 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !28422, !noalias !28423 ; 6 uses
  %i.b = icmp ult i64 %.sroa.5.0.copyload.i, 139174493554666
  tail call void @llvm.assume(i1 %i.b)
  %.idx43 = mul nuw nsw i64 %.sroa.5.0.copyload.i, 66272
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 %.idx43 ; 2 uses
  %i.d = icmp samesign ult i64 %.sroa.5.0.copyload.i, 31
  br i1 %i.d, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.8.i.i)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !28424
  %i.e = tail call noundef align 16 dereferenceable_or_null(66368) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 66368, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !28424 ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !151

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 66368) #62, !noalias !28424
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %bb.b
  store i64 1, ptr %i.e, align 16, !noalias !28425
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !28425
  %.sroa.5.0..sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i128 0, ptr %.sroa.5.0..sroa_idx21.i.i.i, align 16, !noalias !28425
  %.sroa.623.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 66320
  %.sroa.10.0..sroa_idx27.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 66352
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.623.0..sroa_idx.i.i.i, i8 0, i64 32, i1 false), !noalias !28425
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.10.0..sroa_idx27.i.i.i, align 16, !noalias !28425
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 66360
  store i8 1, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !28425
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 66361
  store i8 0, ptr %.sroa.12.0..sroa_idx.i.i.i, align 1, !noalias !28425
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !28426
  %i.g = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !28426 ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i, !prof !151

bb.d:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #62, !noalias !28426
  unreachable

_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i
  %i.i = ptrtoint ptr %.sroa.5.0..sroa_idx21.i.i.i to i64
  store i64 1, ptr %i.g, align 8, !noalias !28425
  %.sroa.429.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.429.0..sroa_idx.i.i.i, align 8, !noalias !28425
  %.sroa.530.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %.sroa.530.0..sroa_idx.i.i.i, align 8, !noalias !28425
  %.sroa.631.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr null, ptr %.sroa.631.0..sroa_idx.i.i.i, align 8, !noalias !28425
  %.sroa.733.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 0, ptr %.sroa.733.0..sroa_idx.i.i.i, align 8, !noalias !28425
  %.sroa.834.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %i.i, ptr %.sroa.834.0..sroa_idx.i.i.i, align 8, !noalias !28425
  %.sroa.935.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %.sroa.5.0..sroa_idx21.i.i.i, ptr %.sroa.935.0..sroa_idx.i.i.i, align 8, !noalias !28425
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 41 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i
  %.sroa.8.sroa.7.0.i.i = phi i8 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i ], [ %.sroa.8.sroa.7.0.copyload36.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i ]
  %.sroa.8.sroa.6.0.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i ], [ %.sroa.8.sroa.6.0.copyload34.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i ]
  %.sroa.8.sroa.0.0.i.i = phi ptr [ %i.g, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i ], [ %.sroa.8.sroa.0.0.copyload32.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i ] ; 5 uses
  %.sroa.10.0.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i ], [ %.sroa.10.0.copyload21.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i ]
  %.sroa.9.0.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i ], [ %.sroa.9.0.copyload17.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i ] ; 2 uses
  %.sroa.7.0.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i ], [ %.sroa.7.0.copyload11.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i ] ; 2 uses
  %.sroa.6.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i ], [ %.sroa.6.0.copyload7.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i ], [ %.sroa.0.0.copyload4.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i ] ; 2 uses
  %i.o = phi ptr [ %.sroa.4.0.copyload.i, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i ], [ %i.p, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(66272) %i.j, ptr noundef nonnull align 16 dereferenceable(66272) %i.o, i64 66272, i1 false), !noalias !28427
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 66272 ; 2 uses
  store i64 %.sroa.0.0.i.i, ptr %i.a, align 16, !noalias !28428
  store ptr %.sroa.6.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !28428
  store i64 %.sroa.7.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 16, !noalias !28428
  store ptr %.sroa.8.sroa.0.0.i.i, ptr %i.l, align 8, !noalias !28428
  store i64 %.sroa.8.sroa.6.0.i.i, ptr %i.n, align 16, !noalias !28428
  store i8 %.sroa.8.sroa.7.0.i.i, ptr %i.m, align 8, !noalias !28428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.i.i, i64 7, i1 false), !noalias !28428
  store i64 %.sroa.10.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !28428
  call void @llvm.experimental.noalias.scope.decl(metadata !28429)
  %i.q = add i64 %.sroa.9.0.i.i, 1
  store i64 %i.q, ptr %i.k, align 16, !alias.scope !28429, !noalias !28430
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.0.0.i.i, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !28431, !nonnull !146, !noundef !146
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.0.0.i.i, i64 8 ; 2 uses
  br label %.backedge.i.i.i.i.i.i.sink.split

.backedge.i.i.i.i.i.i.sink.split:                 ; preds = %bb.e, %bb.f
  %i.w = load atomic i64, ptr %i.v monotonic, align 8, !noalias !28432
  br label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.backedge.i.i.i.i.i.i.sink.split, %bb.h
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.ac, %bb.h ], [ %i.w, %.backedge.i.i.i.i.i.i.sink.split ] ; 4 uses
  %i.x = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i, -1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.backedge.i.i.i.i.i.i
  call void @llvm.x86.sse2.pause(), !noalias !28432
  br label %.backedge.i.i.i.i.i.i.sink.split

bb.g:                                             ; preds = %.backedge.i.i.i.i.i.i
  %i.y = icmp slt i64 %.sroa.0.0.i.i.i.i.i.i, 0
  br i1 %i.y, label %bb.i, label %bb.h, !prof !155

bb.h:                                             ; preds = %bb.g
  %i.z = add nuw i64 %.sroa.0.0.i.i.i.i.i.i, 1
  %i.aa = cmpxchg weak ptr %i.v, i64 %.sroa.0.0.i.i.i.i.i.i, i64 %i.z acquire monotonic, align 8, !noalias !28432 ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  %i.ac = extractvalue { i64, i1 } %i.aa, 0
  br i1 %i.ab, label %_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB33_11PingChecker18check_update_score0EEE9downgradeCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i, label %.backedge.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCsgCecv3eZDcN_5alloc4sync18panic_arc_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2097) #63, !noalias !28432
  unreachable

_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB33_11PingChecker18check_update_score0EEE9downgradeCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i: ; preds = %bb.h
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !28433
  %i.ad = call noundef align 16 dereferenceable_or_null(66368) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 66368, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !28433 ; 13 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i, !prof !151

bb.j:                                             ; preds = %_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB33_11PingChecker18check_update_score0EEE9downgradeCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 66368) #62, !noalias !28433
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i: ; preds = %_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB33_11PingChecker18check_update_score0EEE9downgradeCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  store i64 1, ptr %i.ad, align 16, !noalias !28431
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !28431
  %.sroa.5.0..sroa_idx9.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 5 uses
  store i128 1, ptr %.sroa.5.0..sroa_idx9.i.i.i.i.i, align 16, !noalias !28431
  %.sroa.6.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(66272) %.sroa.6.0..sroa_idx10.i.i.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(66272) %i.j, i64 66272, i1 false), !noalias !28434
  %.sroa.4.0..sroa.6.0..sroa_idx10.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 66304
  store i64 %.sroa.9.0.i.i, ptr %.sroa.4.0..sroa.6.0..sroa_idx10.i.sroa_idx.i.i.i.i, align 16, !noalias !28435
  %.sroa.7.0..sroa_idx11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 66320 ; 3 uses
  store i64 %i.u, ptr %.sroa.7.0..sroa_idx11.i.i.i.i.i, align 16, !noalias !28431
  %.sroa.8.0..sroa_idx12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 66328
  %.sroa.9.0..sroa_idx13.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 66336 ; 2 uses
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 66352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx12.i.i.i.i.i, i8 0, i64 24, i1 false), !noalias !28431
  store ptr %.sroa.8.sroa.0.0.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 16, !noalias !28431
  %.sroa.12.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 66360
  store i8 1, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i, align 8, !noalias !28431
  %.sroa.13.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 66361
  store i8 0, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i, align 1, !noalias !28431
  store atomic i8 0, ptr %i.m monotonic, align 8, !alias.scope !28429, !noalias !28436
  %i.af = atomicrmw xchg ptr %i.n, ptr %.sroa.5.0..sroa_idx9.i.i.i.i.i acq_rel, align 8, !alias.scope !28429, !noalias !28436 ; 5 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.critedge.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i
  %i.ah = load ptr, ptr %i.r, align 8, !noalias !28431, !nonnull !146, !noundef !146
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 66304
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 66320
  %i.am = load i64, ptr %i.al, align 8, !noundef !146
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %.sroa.9.0..sroa_idx13.i.i.i.i.i, align 16, !noalias !28431
  store atomic ptr %i.af, ptr %.sroa.7.0..sroa_idx11.i.i.i.i.i release, align 16, !noalias !28431
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 66312
  store ptr %.sroa.5.0..sroa_idx9.i.i.i.i.i, ptr %i.ao, align 8
  %.pre.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !28429, !noalias !28436
  %.sroa.0.0.copyload4.pre.i.i = load i64, ptr %i.a, align 16, !noalias !28428
  %.sroa.6.0.copyload7.pre.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !28428
  %.sroa.7.0.copyload11.pre.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 16, !noalias !28428
  %.sroa.8.sroa.7.0.copyload36.pre.i.i = load i8, ptr %i.m, align 8, !noalias !28428
  br label %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i
  store i64 1, ptr %.sroa.9.0..sroa_idx13.i.i.i.i.i, align 16, !noalias !28431
  store atomic ptr null, ptr %.sroa.7.0..sroa_idx11.i.i.i.i.i release, align 16, !noalias !28431
  br label %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i

_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %.critedge.i.i.i.i.i.i, %bb.m
  %.sroa.8.sroa.7.0.copyload36.i.i = phi i8 [ %.sroa.8.sroa.7.0.copyload36.pre.i.i, %bb.m ], [ 0, %.critedge.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.0.copyload11.i.i = phi i64 [ %.sroa.7.0.copyload11.pre.i.i, %bb.m ], [ %.sroa.7.0.i.i, %.critedge.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.0.copyload7.i.i = phi ptr [ %.sroa.6.0.copyload7.pre.i.i, %bb.m ], [ %.sroa.6.0.i.i, %.critedge.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload4.i.i = phi i64 [ %.sroa.0.0.copyload4.pre.i.i, %bb.m ], [ %.sroa.0.0.i.i, %.critedge.i.i.i.i.i.i ] ; 2 uses
  %.sroa.8.sroa.0.0.copyload32.i.i = phi ptr [ %.pre.i.i.i.i, %bb.m ], [ %.sroa.8.sroa.0.0.i.i, %.critedge.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.0..sroa_idx14.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 66344
  store atomic ptr null, ptr %.sroa.10.0..sroa_idx14.i.i.i.i.i monotonic, align 8, !noalias !28431
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.0.0.copyload32.i.i, i64 48
  %i.aq = atomicrmw xchg ptr %i.ap, ptr %.sroa.5.0..sroa_idx9.i.i.i.i.i acq_rel, align 8, !noalias !28431
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 66328
  store atomic ptr %.sroa.5.0..sroa_idx9.i.i.i.i.i, ptr %i.ar release, align 8
  %.sroa.8.sroa.6.0.copyload34.i.i = load i64, ptr %i.n, align 16, !noalias !28428 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.i.i, i64 7, i1 false), !noalias !28428
  %.sroa.9.0.copyload17.i.i = load i64, ptr %i.k, align 16, !noalias !28428 ; 2 uses
  %.sroa.10.0.copyload21.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !28428 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28427
  %.not.i.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.e

._crit_edge.i.i.i:                                ; preds = %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i
  %i.as = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.as, label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.at = mul nuw i64 %.sroa.0.0.copyload.i, 66272
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !28427
  br label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit

_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit: ; preds = %._crit_edge.i.i.i, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.sroa.4, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.i.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.8.i.i)
  br label %bb.v

bb.o:                                             ; preds = %bb.a
  %i.au = mul nuw nsw i64 %.sroa.5.0.copyload.i, 66288 ; 2 uses
  %i.av = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.av, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !28437
  %i.aw = tail call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.au, i64 noundef range(i64 1, 17) 16) #53, !noalias !28437 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.q, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %i.au) #62, !noalias !28438
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ay = phi i64 [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.p ] ; 2 uses
  %i.az = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.copyload.i, %bb.p ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 66272 ; 2 uses
  %i.bb = getelementptr inbounds nuw [66288 x i8], ptr %i.aw, i64 %i.ay ; 2 uses
  store i128 0, ptr %i.bb, align 16, !noalias !28439
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(66272) %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1, ptr noundef nonnull align 16 dereferenceable(66272) %i.az, i64 66272, i1 false)
  %niter.next.1 = add nuw nsw i64 %i.ay, 1        ; 2 uses
  %niter.ncmp.1 = icmp eq ptr %i.ba, %i.c
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.o
  %.sroa.4.0.i.i.i.i.i.i55 = phi i64 [ 0, %bb.o ], [ %.sroa.5.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i.i.i.i.i.i54 = phi ptr [ inttoptr (i64 16 to ptr), %bb.o ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.42.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.o ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bc = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.bc, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1N_11PingChecker18check_update_score0ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3L_EECs7XnEB7DeNXr_7sslocal.exit.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.bd = mul nuw i64 %.sroa.0.0.copyload.i, 66272
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !28440
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1N_11PingChecker18check_update_score0ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3L_EECs7XnEB7DeNXr_7sslocal.exit.i

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1N_11PingChecker18check_update_score0ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3L_EECs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.be = icmp ugt i64 %.sroa.4.0.i.i.i.i.i.i55, %.sroa.42.0.i.i.i.i.i.i.i.i.i
  br i1 %i.be, label %bb.s, label %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit

bb.s:                                             ; preds = %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1N_11PingChecker18check_update_score0ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3L_EECs7XnEB7DeNXr_7sslocal.exit.i
  %i.bf = mul nuw nsw i64 %.sroa.4.0.i.i.i.i.i.i55, 66288 ; 2 uses
  %i.bg = icmp eq i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bg, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i, label %bb.t

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.s
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i54, i64 noundef %i.bf, i64 noundef range(i64 1, 17) 16) #53, !noalias !28441
  br label %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit

bb.t:                                             ; preds = %bb.s
  %i.bh = mul nuw nsw i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i, 66288 ; 2 uses
  %i.bi = tail call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i54, i64 noundef %i.bf, i64 noundef range(i64 1, 17) 16, i64 noundef range(i64 1, 0) %i.bh) #53, !noalias !28441 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.u, label %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %i.bh) #62, !noalias !28442
  unreachable

_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1N_11PingChecker18check_update_score0ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3L_EECs7XnEB7DeNXr_7sslocal.exit.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.t
  %.sroa.42.0.copyload.i.i = phi ptr [ %i.bi, %bb.t ], [ inttoptr (i64 16 to ptr), %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i54, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1N_11PingChecker18check_update_score0ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3L_EECs7XnEB7DeNXr_7sslocal.exit.i ]
  %i.bk = icmp ult i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i, 139140900869762
  tail call void @llvm.assume(i1 %i.bk)
  br label %bb.v

bb.v:                                             ; preds = %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit
  %.sroa.5.sroa.0.sroa.6.0 = phi i64 [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.10.0.copyload21.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit ]
  %.sroa.5.sroa.0.sroa.5.0 = phi i64 [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.9.0.copyload17.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit ]
  %.sroa.5.sroa.0.sroa.3.0 = phi i8 [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.8.sroa.7.0.copyload36.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit ]
  %.sroa.5.sroa.0.sroa.2.0 = phi i64 [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.8.sroa.6.0.copyload34.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit ]
  %.sroa.5.sroa.0.sroa.0.0 = phi ptr [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.8.sroa.0.0.copyload32.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit ]
  %.sroa.4.0 = phi i64 [ %.sroa.42.0.i.i.i.i.i.i.i.i.i, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.7.0.copyload11.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit ]
  %.sroa.3.0 = phi ptr [ %.sroa.42.0.copyload.i.i, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.6.0.copyload7.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit ]
  %.sroa.0.0 = phi i64 [ -1, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.0.0.copyload4.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx5, align 8
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx7, align 8
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.5.sroa.0.sroa.0.0, ptr %.sroa.5.0..sroa_idx9, align 8
  %.sroa.5.sroa.0.sroa.2.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.5.sroa.0.sroa.2.0, ptr %.sroa.5.sroa.0.sroa.2.0..sroa.5.0..sroa_idx9.sroa_idx, align 8
  %.sroa.5.sroa.0.sroa.3.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.5.sroa.0.sroa.3.0, ptr %.sroa.5.sroa.0.sroa.3.0..sroa.5.0..sroa_idx9.sroa_idx, align 8
  %.sroa.5.sroa.0.sroa.4.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.sroa.4.0..sroa.5.0..sroa_idx9.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.sroa.4, i64 7, i1 false)
  %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.5.sroa.0.sroa.5.0, ptr %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx9.sroa_idx, align 8
  %.sroa.5.sroa.0.sroa.6.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.5.sroa.0.sroa.6.0, ptr %.sroa.5.sroa.0.sroa.6.0..sroa.5.0..sroa_idx9.sroa_idx, align 8
  %.sroa.5.sroa.2.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.5.sroa.2.0..sroa.5.0..sroa_idx9.sroa_idx, align 8
  %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx9.sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx9.sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake12drop_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECs7XnEB7DeNXr_7sslocal(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !28447
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECs7XnEB7DeNXr_7sslocal.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE9drop_slowCsi1FNhPBS7PW_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECs7XnEB7DeNXr_7sslocal.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake12wake_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECs7XnEB7DeNXr_7sslocal(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  tail call fastcc void @_RNvXs5_NtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake11wake_by_refCs7XnEB7DeNXr_7sslocal(ptr nonnull %i.b) #53
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !28452
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RNvXs5_NtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake4wakeCs7XnEB7DeNXr_7sslocal.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE9drop_slowCsi1FNhPBS7PW_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #60
  br label %_RNvXs5_NtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake4wakeCs7XnEB7DeNXr_7sslocal.exit

_RNvXs5_NtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake4wakeCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake13clone_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECs7XnEB7DeNXr_7sslocal(ptr noundef %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE25increment_strong_count_inCs7XnEB7DeNXr_7sslocal.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE25increment_strong_count_inCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.a
  %i.d = insertvalue { ptr, ptr } { ptr @215, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake19wake_by_ref_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECs7XnEB7DeNXr_7sslocal(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call fastcc void @_RNvXs5_NtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake11wake_by_refCs7XnEB7DeNXr_7sslocal(ptr nonnull %i.a) #53
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECs7XnEB7DeNXr_7sslocal(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 0, 2) %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !146 ; 8 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i64, ptr %0, align 8, !range !148, !noundef !146 ; 6 uses
  %i.h = trunc nuw i64 %1 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %2, -1025
  br i1 %i.i, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Cs7XnEB7DeNXr_7sslocal.exit.thread, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Cs7XnEB7DeNXr_7sslocal.exit, !prof !155

_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Cs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.b
  %i.j = add nuw i64 %2, 1024                     ; 3 uses
  %i.k = and i64 %i.j, 8191                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 %2, %i.k
  %i.n = add i64 %i.m, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.n, %i.j
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.n
  %.sroa.051.1 = select i1 %i.l, i64 %i.j, i64 %.sroa.5.1.i ; 2 uses
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %bb.c, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Cs7XnEB7DeNXr_7sslocal.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Cs7XnEB7DeNXr_7sslocal.exit
  %.sroa.051.0 = phi i64 [ %.sroa.051.1, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Cs7XnEB7DeNXr_7sslocal.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.p = sub nsw i64 %i.g, %i.e
  %i.q = icmp ult i64 %i.p, 32
  br i1 %i.q, label %bb.d, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Cs7XnEB7DeNXr_7sslocal.exit.thread

_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Cs7XnEB7DeNXr_7sslocal.exit.thread: ; preds = %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Cs7XnEB7DeNXr_7sslocal.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Cs7XnEB7DeNXr_7sslocal.exit
  %.pre.pre = phi i64 [ %.pre.pre.pre, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Cs7XnEB7DeNXr_7sslocal.exit.thread_crit_edge ], [ %i.g, %bb.c ], [ %i.g, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Cs7XnEB7DeNXr_7sslocal.exit ], [ %i.g, %bb.b ]
  %.pr.pre.pre = phi i64 [ %.pr.pre.pre.pre, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Cs7XnEB7DeNXr_7sslocal.exit.thread_crit_edge ], [ %i.e, %bb.c ], [ %i.e, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Cs7XnEB7DeNXr_7sslocal.exit ], [ %i.e, %bb.b ]
  %.sroa.051.2 = phi i64 [ %.sroa.051.0, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Cs7XnEB7DeNXr_7sslocal.exit.thread_crit_edge ], [ %.sroa.051.0, %bb.c ], [ %.sroa.051.1, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Cs7XnEB7DeNXr_7sslocal.exit ], [ 8192, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br label %thread-pre-split.outer.outer

bb.d:                                             ; preds = %bb.c
  %i.x = tail call fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECs7XnEB7DeNXr_7sslocal(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef align 8 dereferenceable(24) %0) #53 ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = extractvalue { i64, ptr } %i.x, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.z to i64
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7XnEB7DeNXr_7sslocal.exit.thread

bb.f:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_RNCNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8tcprelayNtB6_14RedirTcpServer3run00Cs7XnEB7DeNXr_7sslocal:bb.a
  %.sroa.523.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 43, ptr %.sroa.523.0..sroa_idx.i.i21, align 8, !noalias !42875
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @780, ptr %i.if, align 8, !noalias !42875
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.j, ptr %i.ig, align 8, !noalias !42875
  store i64 0, ptr %i.b, align 8, !noalias !42875
  %.sroa.428.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @778, ptr %.sroa.428.0..sroa_idx.i.i22, align 8, !noalias !42875
  %.sroa.529.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 43, ptr %.sroa.529.0..sroa_idx.i.i23, align 8, !noalias !42875
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ih, align 8, !noalias !42875
  %.sroa.434.0..sroa_idx.i.i24 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @777, ptr %.sroa.434.0..sroa_idx.i.i24, align 8, !noalias !42875
  %.sroa.535.0..sroa_idx.i.i25 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 58, ptr %.sroa.535.0..sroa_idx.i.i25, align 8, !noalias !42875
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.ii, align 8, !noalias !42875
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 154, ptr %i.ij, align 4, !noalias !42875
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #53, !noalias !42875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val.i16.pre = load ptr, ptr %i.k, align 8, !alias.scope !42873
  br label %bb.be
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB9_19PingBalancerContext3new00Cs7XnEB7DeNXr_7sslocal(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [736 x i8], align 8               ; 13 uses
  %.sroa.8.sroa.8.i.i.i = alloca [7 x i8], align 1 ; 5 uses
  %.sroa.5.sroa.0.sroa.4.i = alloca [7 x i8], align 1 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.416 = alloca [200 x i8], align 8         ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !199, !noundef !146
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load i64, ptr %i.n, align 8, !noundef !146 ; 6 uses
  %i.o = icmp ult i64 %.val, 44343134792571038
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43088)
  %i.q = mul i64 %.val, 672                       ; 3 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %.val, 13725256007224368
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.c, !prof !262

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCs7XnEB7DeNXr_7sslocal.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !43089
  %i.s = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, 17) 8) #53, !noalias !43089 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCs7XnEB7DeNXr_7sslocal.exit_crit_edge

._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCs7XnEB7DeNXr_7sslocal.exit_crit_edge: ; preds = %bb.d
  %.sroa.58.0.copyload.pre = load i64, ptr %i.n, align 8
  br label %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCs7XnEB7DeNXr_7sslocal.exit

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.q) #62, !noalias !43088
  unreachable

_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCs7XnEB7DeNXr_7sslocal.exit: ; preds = %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCs7XnEB7DeNXr_7sslocal.exit_crit_edge, %bb.c
  %.sroa.58.0.copyload = phi i64 [ %.val, %bb.c ], [ %.sroa.58.0.copyload.pre, %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCs7XnEB7DeNXr_7sslocal.exit_crit_edge ] ; 3 uses
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.s, %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCs7XnEB7DeNXr_7sslocal.exit_crit_edge ]
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.c ], [ %.val, %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCs7XnEB7DeNXr_7sslocal.exit_crit_edge ] ; 2 uses
  %i.u = icmp samesign ule i64 %.val, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.u)
  store i64 %.sroa.4.0.i.i, ptr %i.p, align 8, !alias.scope !43088
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %i.v, align 8, !alias.scope !43088
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.w, align 8, !alias.scope !43088
  %.sroa.06.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.47.0.copyload = load ptr, ptr %.sroa.47.0..sroa_idx, align 8, !nonnull !146, !noundef !146 ; 4 uses
  %i.x = icmp ult i64 %.sroa.58.0.copyload, 44343134792571038
  tail call void @llvm.assume(i1 %i.x)
  %.idx = mul nuw nsw i64 %.sroa.58.0.copyload, 208
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.47.0.copyload, i64 %.idx ; 3 uses
  %i.z = icmp eq i64 %.sroa.58.0.copyload, 0
  br i1 %i.z, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !range !188, !alias.scope !43090, !noalias !43091
  br label %bb.ag

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCs7XnEB7DeNXr_7sslocal.exit, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBR_19PingBalancerContext3new000E4pushCs7XnEB7DeNXr_7sslocal.exit
  %i.aa = phi i64 [ %i.ag, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBR_19PingBalancerContext3new000E4pushCs7XnEB7DeNXr_7sslocal.exit ], [ 0, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCs7XnEB7DeNXr_7sslocal.exit ] ; 3 uses
  %.sroa.410.090 = phi ptr [ %i.ab, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBR_19PingBalancerContext3new000E4pushCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.47.0.copyload, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCs7XnEB7DeNXr_7sslocal.exit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.410.090, i64 208 ; 3 uses
  %.sroa.011.0.copyload12 = load i64, ptr %.sroa.410.090, align 8, !noalias !43092 ; 2 uses
  %.not = icmp eq i64 %.sroa.011.0.copyload12, -1
  br i1 %.not, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit
  %.sroa.7.0..sroa.410.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.410.090, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.416, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.7.0..sroa.410.8..sroa_idx, i64 200, i1 false)
  %i.ac = load i64, ptr %i.p, align 8, !range !148, !noalias !43093, !noundef !146
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.h, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBR_19PingBalancerContext3new000E4pushCs7XnEB7DeNXr_7sslocal.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBY_19PingBalancerContext3new000E8grow_oneB14_(ptr noundef nonnull align 8 %i.p) #60, !noalias !43093
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBR_19PingBalancerContext3new000E4pushCs7XnEB7DeNXr_7sslocal.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBR_19PingBalancerContext3new000E4pushCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.g, %bb.h
  %i.ae = load ptr, ptr %i.v, align 8, !noalias !43093, !nonnull !146, !noundef !146
  %i.af = getelementptr inbounds nuw [672 x i8], ptr %i.ae, i64 %i.aa ; 3 uses
  store i64 %.sroa.011.0.copyload12, ptr %i.af, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.416, i64 200, i1 false)
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 664
  store i8 0, ptr %.sroa.518.0..sroa_idx, align 8
  %i.ag = add i64 %i.aa, 1                        ; 2 uses
  store i64 %i.ag, ptr %i.w, align 8, !noalias !43093
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416)
  %i.ah = icmp eq ptr %i.ab, %i.y
  br i1 %i.ah, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECs7XnEB7DeNXr_7sslocal.exit.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCs7XnEB7DeNXr_7sslocal.exit
  %.sroa.410.154 = phi ptr [ %.sroa.47.0.copyload, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCs7XnEB7DeNXr_7sslocal.exit ], [ %i.ab, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit ] ; 3 uses
  %i.ai = ptrtoint ptr %i.y to i64
  %i.aj = ptrtoint ptr %.sroa.410.154 to i64
  %i.ak = sub nuw i64 %i.ai, %i.aj
  %i.al = udiv exact i64 %i.ak, 208
  %i.am = icmp eq ptr %i.y, %.sroa.410.154
  br i1 %i.am, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECs7XnEB7DeNXr_7sslocal.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECs7XnEB7DeNXr_7sslocal.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.ao, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ 0, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread ] ; 2 uses
  %i.an = getelementptr inbounds nuw [208 x i8], ptr %.sroa.410.154, i64 %.sroa.0.03.i.i.i ; 6 uses
  %i.ao = add nuw nsw i64 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @_RNvXs_NtCslxdWNweD0x2_11shadowsocks6pluginNtB4_6PluginNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.an) #53, !noalias !43094
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsczhfDQ1qNkX_5tokio7process10FusedChildECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ap) #53, !noalias !43094
  %i.aq = load i64, ptr %i.an, align 8, !range !157, !alias.scope !43095, !noalias !43094, !noundef !146
  %i.ar = icmp eq i64 %i.aq, 2
  br i1 %i.ar, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process10ChildStdinEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio7process3imp10ChildStdioECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.an) #53, !noalias !43094
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process10ChildStdinEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process10ChildStdinEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !range !157, !alias.scope !43096, !noalias !43094, !noundef !146
  %i.au = icmp eq i64 %i.at, 2
  br i1 %i.au, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process11ChildStdoutEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process10ChildStdinEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio7process3imp10ChildStdioECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as) #53, !noalias !43094
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process11ChildStdoutEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process11ChildStdoutEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i: ; preds = %bb.j, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process10ChildStdinEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 64 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !range !157, !alias.scope !43097, !noalias !43094, !noundef !146
  %i.ax = icmp eq i64 %i.aw, 2
  br i1 %i.ax, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECs7XnEB7DeNXr_7sslocal.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process11ChildStdoutEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio7process3imp10ChildStdioECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.av) #53, !noalias !43094
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECs7XnEB7DeNXr_7sslocal.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %bb.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process11ChildStdoutEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  %i.ay = icmp eq i64 %i.ao, %i.al
  br i1 %i.ay, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECs7XnEB7DeNXr_7sslocal.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBR_19PingBalancerContext3new000E4pushCs7XnEB7DeNXr_7sslocal.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECs7XnEB7DeNXr_7sslocal.exit.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread
  %i.az = icmp eq i64 %.sroa.06.0.copyload, 0
  br i1 %i.az, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginEECs7XnEB7DeNXr_7sslocal.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.ba = mul nuw i64 %.sroa.06.0.copyload, 208
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.47.0.copyload, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !43094
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginEECs7XnEB7DeNXr_7sslocal.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECs7XnEB7DeNXr_7sslocal.exit.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sroa.037.0.copyload = load i64, ptr %i.p, align 8 ; 4 uses
  %.sroa.438.0.copyload = load ptr, ptr %i.v, align 8, !nonnull !146, !noundef !146 ; 5 uses
  %.sroa.539.0.copyload = load i64, ptr %i.w, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0.sroa.4.i)
  %i.bb = icmp ult i64 %.sroa.539.0.copyload, 13725256007224369
  tail call void @llvm.assume(i1 %i.bb)
  %.idx43.i = mul nuw nsw i64 %.sroa.539.0.copyload, 672
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.438.0.copyload, i64 %.idx43.i ; 2 uses
  %i.bd = icmp samesign ult i64 %.sroa.539.0.copyload, 31
  br i1 %i.bd, label %bb.z, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginEECs7XnEB7DeNXr_7sslocal.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.8.i.i.i)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !43098
  %i.be = tail call noundef align 8 dereferenceable_or_null(752) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 752, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !43098 ; 9 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.n, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i, !prof !151

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 752) #62, !noalias !43098
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i: ; preds = %bb.m
  store i64 1, ptr %i.be, align 8, !noalias !43099
  %.sroa.4.0..sroa_idx25.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx25.i.i.i.i, align 8, !noalias !43099
  %.sroa.5.0..sroa_idx26.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.5.0..sroa_idx26.i.i.i.i, align 8, !noalias !43099
  %.sroa.6.0..sroa_idx27.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx27.i.i.i.i, align 8, !noalias !43099
  %.sroa.729.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 712
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 744
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.729.0..sroa_idx.i.i.i.i, i8 0, i64 32, i1 false), !noalias !43099
  store i8 1, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !43099
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 745
  store i8 0, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 1, !noalias !43099
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !43100
  %i.bg = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !43100 ; 9 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.o, label %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i.i, !prof !151

bb.o:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #62, !noalias !43100
  unreachable

_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i
  %i.bi = ptrtoint ptr %.sroa.5.0..sroa_idx26.i.i.i.i to i64
  store i64 1, ptr %i.bg, align 8, !noalias !43099
  %.sroa.434.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 1, ptr %.sroa.434.0..sroa_idx.i.i.i.i, align 8, !noalias !43099
  %.sroa.535.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.be, ptr %.sroa.535.0..sroa_idx.i.i.i.i, align 8, !noalias !43099
  %.sroa.636.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr null, ptr %.sroa.636.0..sroa_idx.i.i.i.i, align 8, !noalias !43099
  %.sroa.738.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i64 0, ptr %.sroa.738.0..sroa_idx.i.i.i.i, align 8, !noalias !43099
  %.sroa.839.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store i64 %i.bi, ptr %.sroa.839.0..sroa_idx.i.i.i.i, align 8, !noalias !43099
  %.sroa.940.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store ptr %.sroa.5.0..sroa_idx26.i.i.i.i, ptr %.sroa.940.0..sroa_idx.i.i.i.i, align 8, !noalias !43099
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 41 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i.i
  %.sroa.8.sroa.7.0.i.i.i = phi i8 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.8.sroa.7.0.copyload36.i.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ]
  %.sroa.8.sroa.6.0.i.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.8.sroa.6.0.copyload34.i.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ]
  %.sroa.8.sroa.0.0.i.i.i = phi ptr [ %i.bg, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.8.sroa.0.0.copyload32.i.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ] ; 5 uses
  %.sroa.10.0.i.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.10.0.copyload21.i.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ]
  %.sroa.9.0.i.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.9.0.copyload17.i.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ] ; 2 uses
  %.sroa.7.0.i.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.7.0.copyload11.i.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ] ; 2 uses
  %.sroa.6.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.6.0.copyload7.i.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %.sroa.0.0.copyload4.i.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ] ; 2 uses
  %i.bo = phi ptr [ %.sroa.438.0.copyload, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %i.bp, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !43101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(672) %i.bj, ptr noundef nonnull align 8 dereferenceable(672) %i.bo, i64 672, i1 false), !noalias !43101
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 672 ; 2 uses
  store i64 %.sroa.0.0.i.i.i, ptr %i.i, align 8, !noalias !43102
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !43102
  store i64 %.sroa.7.0.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !43102
  store ptr %.sroa.8.sroa.0.0.i.i.i, ptr %i.bl, align 8, !noalias !43102
  store i64 %.sroa.8.sroa.6.0.i.i.i, ptr %i.bn, align 8, !noalias !43102
  store i8 %.sroa.8.sroa.7.0.i.i.i, ptr %i.bm, align 8, !noalias !43102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.i.i.i, i64 7, i1 false), !noalias !43102
  store i64 %.sroa.10.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !43102
  call void @llvm.experimental.noalias.scope.decl(metadata !43103)
  %i.bq = add i64 %.sroa.9.0.i.i.i, 1
  store i64 %i.bq, ptr %i.bk, align 8, !alias.scope !43103, !noalias !43104
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.0.0.i.i.i, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !43105, !nonnull !146, !noundef !146
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.0.0.i.i.i, i64 8 ; 2 uses
  br label %.backedge.i.i.i.i.i.i.i.sink.split

.backedge.i.i.i.i.i.i.i.sink.split:               ; preds = %bb.p, %bb.q
  %i.bw = load atomic i64, ptr %i.bv monotonic, align 8, !noalias !43106
  br label %.backedge.i.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.i:                          ; preds = %.backedge.i.i.i.i.i.i.i.sink.split, %bb.s
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.cc, %bb.s ], [ %i.bw, %.backedge.i.i.i.i.i.i.i.sink.split ] ; 4 uses
  %i.bx = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i, -1
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.backedge.i.i.i.i.i.i.i
  call void @llvm.x86.sse2.pause(), !noalias !43106
  br label %.backedge.i.i.i.i.i.i.i.sink.split

bb.r:                                             ; preds = %.backedge.i.i.i.i.i.i.i
  %i.by = icmp slt i64 %.sroa.0.0.i.i.i.i.i.i.i, 0
  br i1 %i.by, label %bb.t, label %bb.s, !prof !155

bb.s:                                             ; preds = %bb.r
  %i.bz = add nuw i64 %.sroa.0.0.i.i.i.i.i.i.i, 1
  %i.ca = cmpxchg weak ptr %i.bv, i64 %.sroa.0.0.i.i.i.i.i.i.i, i64 %i.bz acquire monotonic, align 8, !noalias !43106 ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.ca, 1
  %i.cc = extractvalue { i64, i1 } %i.ca, 0
  br i1 %i.cb, label %_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB37_19PingBalancerContext3new000EEE9downgradeCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtCsgCecv3eZDcN_5alloc4sync18panic_arc_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2097) #63, !noalias !43106
  unreachable

_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB37_19PingBalancerContext3new000EEE9downgradeCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.s
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !43107
  %i.cd = call noundef align 8 dereferenceable_or_null(752) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 752, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !43107 ; 13 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.u, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i, !prof !151

bb.u:                                             ; preds = %_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB37_19PingBalancerContext3new000EEE9downgradeCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 752) #62, !noalias !43107
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i: ; preds = %_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB37_19PingBalancerContext3new000EEE9downgradeCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  store i64 1, ptr %i.cd, align 8, !noalias !43105
  %.sroa.4.0..sroa_idx11.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx11.i.i.i.i.i.i, align 8, !noalias !43105
  %.sroa.5.0..sroa_idx12.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 5 uses
  store ptr %.sroa.8.sroa.0.0.i.i.i, ptr %.sroa.5.0..sroa_idx12.i.i.i.i.i.i, align 8, !noalias !43105
  %.sroa.6.0..sroa_idx13.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx13.i.i.i.i.i.i, align 8, !noalias !43105
  %.sroa.7.0..sroa_idx14.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(672) %.sroa.7.0..sroa_idx14.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(672) %i.bj, i64 672, i1 false), !noalias !43108
  %.sroa.4.0..sroa.7.0..sroa_idx14.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 704
  store i64 %.sroa.9.0.i.i.i, ptr %.sroa.4.0..sroa.7.0..sroa_idx14.i.sroa_idx.i.i.i.i.i, align 8, !noalias !43109
  %.sroa.8.0..sroa_idx15.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 712 ; 3 uses
  store i64 %i.bu, ptr %.sroa.8.0..sroa_idx15.i.i.i.i.i.i, align 8, !noalias !43105
  %.sroa.9.0..sroa_idx16.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 720
  %.sroa.10.0..sroa_idx17.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 728 ; 2 uses
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 744
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx16.i.i.i.i.i.i, i8 0, i64 24, i1 false), !noalias !43105
  store i8 1, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !43105
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 745
  store i8 0, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !43105
  store atomic i8 0, ptr %i.bm monotonic, align 8, !alias.scope !43103, !noalias !43110
  %i.cf = atomicrmw xchg ptr %i.bn, ptr %.sroa.5.0..sroa_idx12.i.i.i.i.i.i acq_rel, align 8, !alias.scope !43103, !noalias !43110 ; 5 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %.critedge.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i
  %i.ch = load ptr, ptr %i.br, align 8, !noalias !43105, !nonnull !146, !noundef !146
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 696
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %i.ck = load atomic ptr, ptr %i.cj acquire, align 8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.ci
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 712
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !146
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %.sroa.10.0..sroa_idx17.i.i.i.i.i.i, align 8, !noalias !43105
  store atomic ptr %i.cf, ptr %.sroa.8.0..sroa_idx15.i.i.i.i.i.i release, align 8, !noalias !43105
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 704
  store ptr %.sroa.5.0..sroa_idx12.i.i.i.i.i.i, ptr %i.co, align 8
  %.pre.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !43103, !noalias !43110
  %.sroa.0.0.copyload4.pre.i.i.i = load i64, ptr %i.i, align 8, !noalias !43102
  %.sroa.6.0.copyload7.pre.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !43102
  %.sroa.7.0.copyload11.pre.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !43102
  %.sroa.8.sroa.7.0.copyload36.pre.i.i.i = load i8, ptr %i.bm, align 8, !noalias !43102
  br label %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i
  store i64 1, ptr %.sroa.10.0..sroa_idx17.i.i.i.i.i.i, align 8, !noalias !43105
  store atomic ptr null, ptr %.sroa.8.0..sroa_idx15.i.i.i.i.i.i release, align 8, !noalias !43105
  br label %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i, %bb.x
  %.sroa.8.sroa.7.0.copyload36.i.i.i = phi i8 [ %.sroa.8.sroa.7.0.copyload36.pre.i.i.i, %bb.x ], [ 0, %.critedge.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.0.copyload11.i.i.i = phi i64 [ %.sroa.7.0.copyload11.pre.i.i.i, %bb.x ], [ %.sroa.7.0.i.i.i, %.critedge.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.0.copyload7.i.i.i = phi ptr [ %.sroa.6.0.copyload7.pre.i.i.i, %bb.x ], [ %.sroa.6.0.i.i.i, %.critedge.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload4.i.i.i = phi i64 [ %.sroa.0.0.copyload4.pre.i.i.i, %bb.x ], [ %.sroa.0.0.i.i.i, %.critedge.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.8.sroa.0.0.copyload32.i.i.i = phi ptr [ %.pre.i.i.i.i.i, %bb.x ], [ %.sroa.8.sroa.0.0.i.i.i, %.critedge.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 736
  store atomic ptr null, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i monotonic, align 8, !noalias !43105
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.0.0.copyload32.i.i.i, i64 48
  %i.cq = atomicrmw xchg ptr %i.cp, ptr %.sroa.5.0..sroa_idx12.i.i.i.i.i.i acq_rel, align 8, !noalias !43105
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 720
  store atomic ptr %.sroa.5.0..sroa_idx12.i.i.i.i.i.i, ptr %i.cr release, align 8
  %.sroa.8.sroa.6.0.copyload34.i.i.i = load i64, ptr %i.bn, align 8, !noalias !43102 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.i.i.i, i64 7, i1 false), !noalias !43102
  %.sroa.9.0.copyload17.i.i.i = load i64, ptr %i.bk, align 8, !noalias !43102 ; 2 uses
  %.sroa.10.0.copyload21.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !43102 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !43101
  %.not.i.i.i.i = icmp eq ptr %i.bp, %i.bc
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.p

._crit_edge.i.i.i.i:                              ; preds = %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  %i.cs = icmp eq i64 %.sroa.037.0.copyload, 0
  br i1 %i.cs, label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit.i, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ct = mul nuw i64 %.sroa.037.0.copyload, 672
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.438.0.copyload, i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !43101
  br label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit.i

_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %bb.y, %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.sroa.4.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.i.i.i, i64 7, i1 false), !noalias !43111
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.8.i.i.i)
  br label %_RINvNtNtCscVsx2cUGvkQ_12futures_util6future8join_all8join_allINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1G_19PingBalancerContext3new000EECs7XnEB7DeNXr_7sslocal.exit

bb.z:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginEECs7XnEB7DeNXr_7sslocal.exit
  %i.cu = mul nuw nsw i64 %.sroa.539.0.copyload, 680 ; 4 uses
  %i.cv = icmp eq i64 %.sroa.539.0.copyload, 0
  br i1 %i.cv, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !43112
  %i.cw = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.cu, i64 noundef range(i64 1, 17) 8) #53, !noalias !43112 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.ab, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cu) #62, !noalias !43113
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cy = phi i64 [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.aa ] ; 2 uses
  %i.cz = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.438.0.copyload, %bb.aa ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 672 ; 2 uses
  %i.db = getelementptr inbounds nuw [680 x i8], ptr %i.cw, i64 %i.cy ; 2 uses
  store i64 0, ptr %i.db, align 8, !noalias !43114
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(672) %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(672) %i.cz, i64 672, i1 false), !noalias !43111
  %niter.next.1 = add nuw nsw i64 %i.cy, 1        ; 2 uses
  %niter.ncmp.1 = icmp eq ptr %i.da, %i.bc
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.z
  %.sroa.10.0.i.i.i.i.i.i54.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.z ], [ %i.cw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.42.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.z ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.dc = icmp eq i64 %.sroa.037.0.copyload, 0
  br i1 %i.dc, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1R_19PingBalancerContext3new000ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3J_EECs7XnEB7DeNXr_7sslocal.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.dd = mul nuw i64 %.sroa.037.0.copyload, 672
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.438.0.copyload, i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !43115
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1R_19PingBalancerContext3new000ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3J_EECs7XnEB7DeNXr_7sslocal.exit.i.i

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1R_19PingBalancerContext3new000ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3J_EECs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.de = icmp ugt i64 %.sroa.539.0.copyload, %.sroa.42.0.i.i.i.i.i.i.i.i.i.i
  br i1 %i.de, label %bb.ad, label %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit.i

bb.ad:                                            ; preds = %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1R_19PingBalancerContext3new000ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3J_EECs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.df = icmp eq i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.df, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, label %bb.ae

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.ad
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i54.i, i64 noundef %i.cu, i64 noundef range(i64 1, 17) 8) #53, !noalias !43116
  br label %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.dg = mul nuw nsw i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i.i, 680 ; 2 uses
  %i.dh = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i54.i, i64 noundef %i.cu, i64 noundef range(i64 1, 17) 8, i64 noundef range(i64 1, 0) %i.dg) #53, !noalias !43116 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.af, label %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit.i

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.dg) #62, !noalias !43117
  unreachable

_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %bb.ae, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1R_19PingBalancerContext3new000ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3J_EECs7XnEB7DeNXr_7sslocal.exit.i.i
  %.sroa.42.0.copyload.i.i.i = phi ptr [ %i.dh, %bb.ae ], [ inttoptr (i64 8 to ptr), %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i54.i, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1R_19PingBalancerContext3new000ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3J_EECs7XnEB7DeNXr_7sslocal.exit.i.i ]
  %i.dj = icmp ult i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i.i, 13563782407139377
  tail call void @llvm.assume(i1 %i.dj)
  br label %_RINvNtNtCscVsx2cUGvkQ_12futures_util6future8join_all8join_allINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1G_19PingBalancerContext3new000EECs7XnEB7DeNXr_7sslocal.exit

_RINvNtNtCscVsx2cUGvkQ_12futures_util6future8join_all8join_allINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1G_19PingBalancerContext3new000EECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit.i, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit.i
  %.sroa.5.sroa.0.sroa.6.0.i = phi i64 [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit.i ], [ %.sroa.10.0.copyload21.i.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit.i ]
  %.sroa.5.sroa.0.sroa.5.0.i = phi i64 [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit.i ], [ %.sroa.9.0.copyload17.i.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit.i ]
  %.sroa.5.sroa.0.sroa.3.0.i = phi i8 [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit.i ], [ %.sroa.8.sroa.7.0.copyload36.i.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit.i ]
  %.sroa.5.sroa.0.sroa.2.0.i = phi i64 [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit.i ], [ %.sroa.8.sroa.6.0.copyload34.i.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit.i ]
  %.sroa.5.sroa.0.sroa.0.0.i = phi ptr [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit.i ], [ %.sroa.8.sroa.0.0.copyload32.i.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit.i ]
  %.sroa.4.0.i = phi i64 [ %.sroa.42.0.i.i.i.i.i.i.i.i.i.i, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit.i ], [ %.sroa.7.0.copyload11.i.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit.i ]
  %.sroa.3.0.i = phi ptr [ %.sroa.42.0.copyload.i.i.i, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit.i ], [ %.sroa.6.0.copyload7.i.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit.i ]
  %.sroa.0.0.i = phi i64 [ -1, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECs7XnEB7DeNXr_7sslocal.exit.i ], [ %.sroa.0.0.copyload4.i.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECs7XnEB7DeNXr_7sslocal.exit.i ] ; 2 uses
  %.sroa.1133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1133.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.sroa.4.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.sroa.4.i)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i, ptr %i.dk, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.3.0.i, ptr %.sroa.628.0..sroa_idx, align 8
  %.sroa.729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.4.0.i, ptr %.sroa.729.0..sroa_idx, align 8
  %.sroa.830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.5.sroa.0.sroa.0.0.i, ptr %.sroa.830.0..sroa_idx, align 8
  %.sroa.931.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.5.sroa.0.sroa.2.0.i, ptr %.sroa.931.0..sroa_idx, align 8
  %.sroa.1032.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %.sroa.5.sroa.0.sroa.3.0.i, ptr %.sroa.1032.0..sroa_idx, align 8
  %.sroa.1234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.5.sroa.0.sroa.5.0.i, ptr %.sroa.1234.0..sroa_idx, align 8
  %.sroa.1335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.5.sroa.0.sroa.6.0.i, ptr %.sroa.1335.0..sroa_idx, align 8
  %.sroa.1436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %.sroa.1436.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %.sroa.16.0..sroa_idx, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %_RINvNtNtCscVsx2cUGvkQ_12futures_util6future8join_all8join_allINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1G_19PingBalancerContext3new000EECs7XnEB7DeNXr_7sslocal.exit, %bb.f
  %i.dl = phi i64 [ %.sroa.0.0.i, %_RINvNtNtCscVsx2cUGvkQ_12futures_util6future8join_all8join_allINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1G_19PingBalancerContext3new000EECs7XnEB7DeNXr_7sslocal.exit ], [ %.pre, %bb.f ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43118)
  call void @llvm.experimental.noalias.scope.decl(metadata !43090)
  call void @llvm.experimental.noalias.scope.decl(metadata !43119)
  %.not.i = icmp eq i64 %i.dl, -1
  br i1 %.not.i, label %bb.cr, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !43120)
  call void @llvm.experimental.noalias.scope.decl(metadata !43121)
  call void @llvm.experimental.noalias.scope.decl(metadata !43122)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %.val.i.i1 = load ptr, ptr %1, align 8, !alias.scope !43123, !noalias !43124 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 11 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.i.i1, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.dz = insertelement <2 x ptr> poison, ptr %i.f, i64 0
  %i.ea = shufflevector <2 x ptr> %i.dz, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.ai

bb.ai:                                            ; preds = %_RINvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtNtBL_2io5error5ErrorEEINtNtNtNtBL_4iter6traits7collect6ExtendBG_E6extendINtNtBL_6option6OptionBG_EECs7XnEB7DeNXr_7sslocal.exit.i.i, %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !43125)
  %i.eb = load i64, ptr %i.do, align 8, !alias.scope !43126, !noalias !43127, !noundef !146 ; 6 uses
  %i.ec = icmp ult i64 %i.eb, 576460752303423488
  call void @llvm.assume(i1 %i.ec)
  %i.ed = icmp eq i64 %i.eb, 0
  br i1 %i.ed, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11binary_heap7PeekMutINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEEECs7XnEB7DeNXr_7sslocal.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ee = load ptr, ptr %i.dp, align 8, !alias.scope !43126, !noalias !43127, !nonnull !146, !noundef !146 ; 14 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !43128, !noundef !146 ; 2 uses
  %i.eh = load i64, ptr %i.dq, align 8, !alias.scope !43126, !noalias !43127, !noundef !146
  %i.ei = icmp eq i64 %i.eg, %i.eh
  br i1 %i.ei, label %bb.ak, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11binary_heap7PeekMutINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEEECs7XnEB7DeNXr_7sslocal.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.ej = add i64 %i.eg, 1
  store i64 %i.ej, ptr %i.dq, align 8, !alias.scope !43126, !noalias !43127
  call void @llvm.experimental.noalias.scope.decl(metadata !43129)
  call void @llvm.experimental.noalias.scope.decl(metadata !43130)
  %i.ek = add nsw i64 %i.eb, -1                   ; 8 uses
  store i64 %i.ek, ptr %i.do, align 8, !alias.scope !43131, !noalias !43132
  %i.el = load i64, ptr %i.dm, align 8, !range !148, !alias.scope !43131, !noalias !43132, !noundef !146
  %i.em = icmp samesign ult i64 %i.ek, %i.el
  call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ek ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !43133, !noundef !146 ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !43133, !noundef !146 ; 5 uses
  %i.er = icmp eq i64 %i.ek, 0
  br i1 %i.er, label %bb.co, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ee, align 8, !noalias !43133
  store ptr %i.eo, ptr %i.ee, align 8, !noalias !43133
  store i64 %i.eq, ptr %i.ef, align 8, !noalias !43133
  %i.es = add nsw i64 %i.eb, -3
  %.not1.i.i.i.i.i.i.i = icmp samesign ult i64 %i.eb, 4
  br i1 %.not1.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.al
  %.sroa.016.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 1, %bb.al ], [ %i.fh, %.lr.ph.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.15.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.al ], [ %i.fd, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  %i.et = add nsw i64 %i.eb, -2
  %i.eu = icmp eq i64 %.sroa.016.0.lcssa.i.i.i.i.i.i.i, %i.et
  br i1 %i.eu, label %.thread.i.i.i.i.i.i.i, label %bb.am

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.al, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.15.03.i.i.i.i.i.i.i = phi i64 [ %i.fd, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.al ]
  %.sroa.016.02.i.i.i.i.i.i.i = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i.i.i ], [ 1, %bb.al ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %.sroa.016.02.i.i.i.i.i.i.i
  %i.ew = add nuw nsw i64 %.sroa.016.02.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ex = icmp samesign ult i64 %i.ew, %i.ek
  call void @llvm.assume(i1 %i.ex)
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ew
  %i.ez = getelementptr i8, ptr %i.ev, i64 8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ez, align 8, !noalias !43133, !noundef !146
  %i.fa = getelementptr i8, ptr %i.ey, i64 8
  %.val26.i.i.i.i.i.i.i = load i64, ptr %i.fa, align 8, !noalias !43133, !noundef !146
  %i.fb = icmp sle i64 %.val26.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  %i.fc = zext i1 %i.fb to i64
  %i.fd = add nuw nsw i64 %.sroa.016.02.i.i.i.i.i.i.i, %i.fc ; 4 uses
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.fd
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %.sroa.15.03.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i64 16, i1 false), !noalias !43133
  %i.fg = shl nuw nsw i64 %i.fd, 1                ; 2 uses
  %i.fh = or disjoint i64 %i.fg, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp samesign ult i64 %i.fg, %i.es
  br i1 %.not.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %.sroa.016.0.lcssa.i.i.i.i.i.i.i ; 3 uses
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %.sroa.15.0.lcssa.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %i.fi, i64 16, i1 false), !noalias !43133
  store ptr %i.eo, ptr %i.fi, align 8, !noalias !43133
  %.sroa.7.16..sroa_idx9.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i64 %i.eq, ptr %.sroa.7.16..sroa_idx9.i.i.i.i.i.i.i, align 8, !noalias !43133
  %i.fk = icmp samesign ult i64 %.sroa.016.0.lcssa.i.i.i.i.i.i.i, %i.ek
  call void @llvm.assume(i1 %i.fk)
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader

bb.am:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %.sroa.15.0.lcssa.i.i.i.i.i.i.i ; 2 uses
  store ptr %i.eo, ptr %i.fl, align 8, !noalias !43133
  %.sroa.7.16..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 %i.eq, ptr %.sroa.7.16..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !43133
  %i.fm = icmp samesign ult i64 %.sroa.15.0.lcssa.i.i.i.i.i.i.i, %i.ek
  call void @llvm.assume(i1 %i.fm)
  %.not6.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.lcssa.i.i.i.i.i.i.i, 0
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_RNvMs9_NtNtCsgCecv3eZDcN_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtNtB2r_2io5error5ErrorEEE19sift_down_to_bottomCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.am, %.thread.i.i.i.i.i.i.i
  %storemerge7.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.15.0.lcssa.i.i.i.i.i.i.i, %bb.am ], [ %.sroa.016.0.lcssa.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.an
  %storemerge7.i.i.i.i.i.i.i.i = phi i64 [ %i.fo, %bb.an ], [ %storemerge7.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task7harnessINtB5_7HarnessNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs7XnEB7DeNXr_7sslocal:bb.a
bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CoreNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.i = getelementptr i8, ptr %0, i64 12536
  %.val1.i.i.i = load ptr, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !146, !noundef !146
  tail call void %i.k(ptr noundef %.val1.i.i.i) #53, !inline_history !112
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs7XnEB7DeNXr_7sslocal.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CoreNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12544 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78949)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !78950, !noundef !146 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs7XnEB7DeNXr_7sslocal.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs7XnEB7DeNXr_7sslocal.exit.i.i.i
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !78951
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs7XnEB7DeNXr_7sslocal.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL1_INtNtNtCsczhfDQ1qNkX_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs7XnEB7DeNXr_7sslocal.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs7XnEB7DeNXr_7sslocal.exit.i.i.i, %bb.e, %bb.f
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 12672, i64 noundef 128) #53
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs7XnEB7DeNXr_7sslocal.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task7harnessINtB5_7HarnessNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8completeCs7XnEB7DeNXr_7sslocal(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef i64 @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task5stateNtB2_5State22transition_to_complete(ptr noundef nonnull align 8 %0) #53 ; 2 uses
  %i.d = and i64 %i.c, 8
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !78966
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !range !160, !noalias !78966, !noundef !146
  %i.g = tail call noundef i64 @_RNvMs2_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.f) #53, !noalias !78966
  store i64 %i.g, ptr %i.b, align 8, !noalias !78966
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core5StageNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0EECs7XnEB7DeNXr_7sslocal(ptr noundef nonnull align 16 %i.h) #53, !noalias !78966
  store i32 2, ptr %i.h, align 16
  call void @_RNvXs3_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #53, !noalias !78966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !78966
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7XnEB7DeNXr_7sslocal.exit

bb.c:                                             ; preds = %bb.a
  %i.i = and i64 %i.c, 16
  %.not1.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not1.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7XnEB7DeNXr_7sslocal.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12512 ; 2 uses
  tail call void @_RNvMs6_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreNtB5_7Trailer9wake_join(ptr noundef nonnull align 8 %i.j) #53
  %i.k = tail call noundef i64 @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task5stateNtB2_5State26unset_waker_after_complete(ptr noundef nonnull align 8 %0) #53
  %i.l = and i64 %i.k, 8
  %.not2.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not2.i.i.i.i, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7XnEB7DeNXr_7sslocal.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs6_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef) #53
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7XnEB7DeNXr_7sslocal.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = call noundef ptr @_RNvXs_NtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_thread6handleINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB4_6HandleENtNtBa_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #53
  %.not.i = icmp eq ptr %i.n, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = call noundef zeroext i1 @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i) #53
  br i1 %i.o, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7XnEB7DeNXr_7sslocal.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !78967)
  call void @llvm.experimental.noalias.scope.decl(metadata !78968)
  %i.p = load ptr, ptr %i.m, align 8, !alias.scope !78969, !nonnull !146, !noundef !146
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !78969
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CoreNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECs7XnEB7DeNXr_7sslocal.exit.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 16 dereferenceable(8) %i.m) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CoreNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECs7XnEB7DeNXr_7sslocal.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CoreNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core5StageNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0EECs7XnEB7DeNXr_7sslocal(ptr noundef nonnull align 16 %i.s) #53
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12528
  %.val.i.i.i = load ptr, ptr %i.t, align 8, !align !154, !noundef !146 ; 2 uses
  %i.u = icmp eq ptr %.val.i.i.i, null
  br i1 %i.u, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs7XnEB7DeNXr_7sslocal.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CoreNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.v = getelementptr i8, ptr %0, i64 12536
  %.val1.i.i.i = load ptr, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !146, !noundef !146
  call void %i.x(ptr noundef %.val1.i.i.i) #53, !inline_history !112
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs7XnEB7DeNXr_7sslocal.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %bb.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CoreNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12544 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78970)
  call void @llvm.experimental.noalias.scope.decl(metadata !78971)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !78972, !noundef !146 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs7XnEB7DeNXr_7sslocal.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs7XnEB7DeNXr_7sslocal.exit.i.i.i
  %i.ab = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !78973
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs7XnEB7DeNXr_7sslocal.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL1_INtNtNtCsczhfDQ1qNkX_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.y) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs7XnEB7DeNXr_7sslocal.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs7XnEB7DeNXr_7sslocal.exit.i.i.i, %bb.i, %bb.j
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 12672, i64 noundef 128) #53
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7XnEB7DeNXr_7sslocal.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs7XnEB7DeNXr_7sslocal.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantEE15bulk_steal_leftCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !146, !noundef !146 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 626 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !146
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !146, !noundef !146 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 626 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !146
  %i.k = zext i16 %i.j to i64                     ; 5 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !158

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1886, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1887) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !155

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1888, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1889) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.r = shl nuw nsw i64 %i.k, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 4 %i.h, i64 %i.r, i1 false), !alias.scope !78993
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 4 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %1
  %i.u = mul nuw nsw i64 %i.k, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !alias.scope !78994
  %i.v = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.w = sub nuw nsw i64 %i.f, %i.v               ; 5 uses
  %i.x = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78996)
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtB8_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit, label %bb.f, !prof !158

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @485, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @486) #63, !noalias !78997
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtB8_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.v
  %i.aa = shl nuw nsw i64 %i.w, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull readonly align 4 %i.z, i64 %i.aa, i1 false), !alias.scope !78997
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 360 ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.v
  %i.ad = mul nuw nsw i64 %i.w, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.ac, i64 %i.ad, i1 false), !alias.scope !78998
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ag, align 8, !noundef !146 ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val17 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 360
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.ah, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ah, ptr noundef nonnull align 4 dereferenceable(32) %i.ae, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !78999
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i64, ptr %i.am, align 8, !noundef !146
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !146
  %i.ar = icmp eq i64 %i.aq, 0                    ; 2 uses
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtB8_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit
  br i1 %i.ar, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %bb.j, !prof !158

bb.h:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtB8_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit
  br i1 %i.ar, label %bb.j, label %bb.k, !prof !155

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.ca, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.as, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.as = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.0.06.i.epil
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 352
  store ptr %i.h, ptr %i.av, align 8
  %i.aw = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 624
  store i16 %i.aw, ptr %i.ax, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %bb.i, !llvm.loop !78987

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1890) #63
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 632 ; 8 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %1
  %i.ba = shl nuw nsw i64 %i.k, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bb, i1 false), !alias.scope !79000
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.v
  %i.be = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bd, i64 %i.be, i1 false), !alias.scope !79001
  %i.bf = add nuw nsw i64 %1, %i.k
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %xtraiter = and i64 %i.bg, 3                    ; 3 uses
  %i.bh = icmp samesign ult i64 %i.l, 3
  br i1 %i.bh, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bg, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.ca, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bi = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.0.06.i
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 352
  store ptr %i.h, ptr %i.bl, align 8
  %i.bm = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 624
  store i16 %i.bm, ptr %i.bn, align 8
  %i.bo = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bi
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 352
  store ptr %i.h, ptr %i.br, align 8
  %i.bs = trunc nuw nsw i64 %i.bi to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 624
  store i16 %i.bs, ptr %i.bt, align 8
  %i.bu = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bo
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 352
  store ptr %i.h, ptr %i.bx, align 8
  %i.by = trunc nuw nsw i64 %i.bo to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 624
  store i16 %i.by, ptr %i.bz, align 8
  %i.ca = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bu
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 352
  store ptr %i.h, ptr %i.cd, align 8
  %i.ce = trunc nuw nsw i64 %i.bu to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 624
  store i16 %i.ce, ptr %i.cf, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantEE16bulk_steal_rightCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !146, !noundef !146 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 626 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !146 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !146, !noundef !146 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 626 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !146
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !158

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1891, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1892) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !155

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1893, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1894) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 5 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 4 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 4 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.u, align 8, !noundef !146 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 360
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.v, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !79021
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 360 ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  %i.ab = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ab
  %i.ad = shl nuw nsw i64 %i.q, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr nonnull readonly align 4 %i.h, i64 %i.ad, i1 false), !alias.scope !79022
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.ab
  %i.af = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull readonly align 8 %i.s, i64 %i.af, i1 false), !alias.scope !79023
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.ah = shl nuw nsw i64 %i.n, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 4 %i.ag, i64 %i.ah, i1 false), !alias.scope !79024
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %1
  %i.aj = mul nuw nsw i64 %i.n, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.ai, i64 %i.aj, i1 false), !alias.scope !79025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !146
  %i.am = icmp eq i64 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !noundef !146
  %i.ap = icmp eq i64 %i.ao, 0                    ; 2 uses
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.ap, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %bb.h, !prof !158

bb.g:                                             ; preds = %bb.e
  br i1 %i.ap, label %bb.h, label %bb.i, !prof !155

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader ], [ %i.dh, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.aq, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ar = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.0.06.i23.epil
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 352
  store ptr %i.h, ptr %i.au, align 8
  %i.av = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 624
  store i16 %i.av, ptr %i.aw, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, !llvm.loop !79015

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1895) #63
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 632 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 632 ; 6 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ab
  %i.ba = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ax, i64 %i.ba, i1 false), !alias.scope !79026
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %1
  %i.bc = shl nuw nsw i64 %i.n, 3
  %i.bd = add nuw nsw i64 %i.bc, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bd, i1 false), !alias.scope !79027
  %i.be = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ab
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 352
  store ptr %i.c, ptr %i.bh, align 8
  %i.bi = trunc nuw nsw i64 %i.ab to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 624
  store i16 %i.bi, ptr %i.bj, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bl = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bk
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 352
  store ptr %i.c, ptr %i.bo, align 8
  %i.bp = trunc nuw nsw i64 %i.bk to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 624
  store i16 %i.bp, ptr %i.bq, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bs = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 352
  store ptr %i.c, ptr %i.bv, align 8
  %i.bw = trunc nuw nsw i64 %i.br to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 624
  store i16 %i.bw, ptr %i.bx, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bz = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.by
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 352
  store ptr %i.c, ptr %i.cc, align 8
  %i.cd = trunc nuw nsw i64 %i.by to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 624
  store i16 %i.cd, ptr %i.ce, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.cg = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cf
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 352
  store ptr %i.c, ptr %i.cj, align 8
  %i.ck = trunc nuw nsw i64 %i.cf to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 624
  store i16 %i.ck, ptr %i.cl, align 8
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cm = add nuw nsw i64 %i.k, 1
  %i.cn = sub nsw i64 %i.cm, %1                   ; 2 uses
  %xtraiter = and i64 %i.cn, 3                    ; 3 uses
  %i.co = icmp samesign ult i64 %i.n, 3
  br i1 %i.co, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader
  %unroll_iter = and i64 %i.cn, -4
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new ], [ %i.dh, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit ]
  %i.cp = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.0.06.i23
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 352
  store ptr %i.h, ptr %i.cs, align 8
  %i.ct = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 624
  store i16 %i.ct, ptr %i.cu, align 8
  %i.cv = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cp
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 352
  store ptr %i.h, ptr %i.cy, align 8
  %i.cz = trunc nuw nsw i64 %i.cp to i16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 624
  store i16 %i.cz, ptr %i.da, align 8
  %i.db = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cv
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 352
  store ptr %i.h, ptr %i.de, align 8
  %i.df = trunc nuw nsw i64 %i.cv to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 624
  store i16 %i.df, ptr %i.dg, align 8
  %i.dh = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.di = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.db
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 352
  store ptr %i.h, ptr %i.dl, align 8
  %i.dm = trunc nuw nsw i64 %i.db to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 624
  store i16 %i.dm, ptr %i.dn, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2k_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE15bulk_steal_leftCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !146, !noundef !146 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !146
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !146, !noundef !146 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !146
  %i.k = zext i16 %i.j to i64                     ; 4 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !158

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1886, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1887) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !155

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1888, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1889) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.r = shl nuw nsw i64 %i.k, 5                  ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 4 %i.h, i64 %i.r, i1 false), !alias.scope !79047
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.r, i1 false), !alias.scope !79048
  %i.u = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.v = sub nuw nsw i64 %i.f, %i.u               ; 4 uses
  %i.w = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79050)
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit, label %bb.f, !prof !158

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @485, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @486) #63, !noalias !79051
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.u
  %i.z = shl nuw nsw i64 %i.v, 5                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull readonly align 4 %i.y, i64 %i.z, i1 false), !alias.scope !79051
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.ab, i64 %i.z, i1 false), !alias.scope !79052
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ae, align 8, !noundef !146 ; 2 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val17 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.af, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.af, ptr noundef nonnull align 4 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !79053
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !146
  %i.am = icmp eq i64 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !noundef !146
  %i.ap = icmp eq i64 %i.ao, 0                    ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit
  br i1 %i.ap, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %bb.j, !prof !158

bb.h:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !155

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 704
  store ptr %i.h, ptr %i.at, align 8
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 712
  store i16 %i.au, ptr %i.av, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %bb.i, !llvm.loop !79041

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1890) #63
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !79054
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.u
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !79055
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 704
  store ptr %i.h, ptr %i.bj, align 8
  %i.bk = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 712
  store i16 %i.bk, ptr %i.bl, align 8
  %i.bm = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 704
  store ptr %i.h, ptr %i.bp, align 8
  %i.bq = trunc nuw nsw i64 %i.bg to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 712
  store i16 %i.bq, ptr %i.br, align 8
  %i.bs = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 704
  store ptr %i.h, ptr %i.bv, align 8
  %i.bw = trunc nuw nsw i64 %i.bm to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 712
  store i16 %i.bw, ptr %i.bx, align 8
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bs
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 704
  store ptr %i.h, ptr %i.cb, align 8
  %i.cc = trunc nuw nsw i64 %i.bs to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 712
  store i16 %i.cc, ptr %i.cd, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2k_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE16bulk_steal_rightCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !146, !noundef !146 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !146 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !146, !noundef !146 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !146
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !158

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1891, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1892) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !155

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1893, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1894) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 4 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 3 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.u, align 8, !noundef !146 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.v, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !79075
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  %i.ab = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ab
  %i.ad = shl nuw nsw i64 %i.q, 5                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr nonnull readonly align 4 %i.h, i64 %i.ad, i1 false), !alias.scope !79076
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull readonly align 8 %i.s, i64 %i.ad, i1 false), !alias.scope !79077
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.ag = shl nuw nsw i64 %i.n, 5                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 4 %i.af, i64 %i.ag, i1 false), !alias.scope !79078
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.ah, i64 %i.ag, i1 false), !alias.scope !79079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !146
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i64, ptr %i.al, align 8, !noundef !146
  %i.an = icmp eq i64 %i.am, 0                    ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.an, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %bb.h, !prof !158

bb.g:                                             ; preds = %bb.e
  br i1 %i.an, label %bb.h, label %bb.i, !prof !155

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.ao, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader ]
  %i.ao = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ap = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 704
  store ptr %i.h, ptr %i.as, align 8
  %i.at = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 712
  store i16 %i.at, ptr %i.au, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, !llvm.loop !79069

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1895) #63
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 720 ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.ay = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.av, i64 %i.ay, i1 false), !alias.scope !79080
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %1
  %i.ba = shl nuw nsw i64 %i.n, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.bb, i1 false), !alias.scope !79081
  %i.bc = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 704
  store ptr %i.c, ptr %i.bf, align 8
  %i.bg = trunc nuw nsw i64 %i.ab to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 712
  store i16 %i.bg, ptr %i.bh, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bj = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 704
  store ptr %i.c, ptr %i.bm, align 8
  %i.bn = trunc nuw nsw i64 %i.bi to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 712
  store i16 %i.bn, ptr %i.bo, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bq = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 704
  store ptr %i.c, ptr %i.bt, align 8
  %i.bu = trunc nuw nsw i64 %i.bp to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 712
  store i16 %i.bu, ptr %i.bv, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bx = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 704
  store ptr %i.c, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bw to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 712
  store i16 %i.cb, ptr %i.cc, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 704
  store ptr %i.c, ptr %i.ch, align 8
  %i.ci = trunc nuw nsw i64 %i.cd to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 712
  store i16 %i.ci, ptr %i.cj, align 8
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ck = add nuw nsw i64 %i.k, 1
  %i.cl = sub nsw i64 %i.ck, %1                   ; 2 uses
  %xtraiter = and i64 %i.cl, 3                    ; 3 uses
  %i.cm = icmp samesign ult i64 %i.n, 3
  br i1 %i.cm, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader
  %unroll_iter = and i64 %i.cl, -4
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit ]
  %i.cn = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 704
  store ptr %i.h, ptr %i.cq, align 8
  %i.cr = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 712
  store i16 %i.cr, ptr %i.cs, align 8
  %i.ct = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cn
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 704
  store ptr %i.h, ptr %i.cw, align 8
  %i.cx = trunc nuw nsw i64 %i.cn to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 712
  store i16 %i.cx, ptr %i.cy, align 8
  %i.cz = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ct
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 704
  store ptr %i.h, ptr %i.dc, align 8
  %i.dd = trunc nuw nsw i64 %i.ct to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 712
  store i16 %i.dd, ptr %i.de, align 8
  %i.df = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.dg = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cz
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 704
  store ptr %i.h, ptr %i.dj, align 8
  %i.dk = trunc nuw nsw i64 %i.cz to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 712
  store i16 %i.dk, ptr %i.dl, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2k_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE15bulk_steal_leftCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !146, !noundef !146 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !146
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !146, !noundef !146 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !146
  %i.k = zext i16 %i.j to i64                     ; 4 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !158

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1886, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1887) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !155

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1888, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1889) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.r = shl nuw nsw i64 %i.k, 5                  ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 4 %i.h, i64 %i.r, i1 false), !alias.scope !79101
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.r, i1 false), !alias.scope !79102
  %i.u = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.v = sub nuw nsw i64 %i.f, %i.u               ; 4 uses
  %i.w = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79104)
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit, label %bb.f, !prof !158

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @485, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @486) #63, !noalias !79105
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.u
  %i.z = shl nuw nsw i64 %i.v, 5                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull readonly align 4 %i.y, i64 %i.z, i1 false), !alias.scope !79105
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.ab, i64 %i.z, i1 false), !alias.scope !79106
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ae, align 8, !noundef !146 ; 2 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val17 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.af, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.af, ptr noundef nonnull align 4 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !79107
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !146
  %i.am = icmp eq i64 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !noundef !146
  %i.ap = icmp eq i64 %i.ao, 0                    ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit
  br i1 %i.ap, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %bb.j, !prof !158

bb.h:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !155

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 704
  store ptr %i.h, ptr %i.at, align 8
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 712
  store i16 %i.au, ptr %i.av, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %bb.i, !llvm.loop !79095

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1890) #63
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !79108
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.u
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !79109
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 704
  store ptr %i.h, ptr %i.bj, align 8
  %i.bk = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 712
  store i16 %i.bk, ptr %i.bl, align 8
  %i.bm = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 704
  store ptr %i.h, ptr %i.bp, align 8
  %i.bq = trunc nuw nsw i64 %i.bg to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 712
  store i16 %i.bq, ptr %i.br, align 8
  %i.bs = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 704
  store ptr %i.h, ptr %i.bv, align 8
  %i.bw = trunc nuw nsw i64 %i.bm to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 712
  store i16 %i.bw, ptr %i.bx, align 8
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bs
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 704
  store ptr %i.h, ptr %i.cb, align 8
  %i.cc = trunc nuw nsw i64 %i.bs to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 712
  store i16 %i.cc, ptr %i.cd, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2k_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE16bulk_steal_rightCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !146, !noundef !146 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !146 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !146, !noundef !146 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !146
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !158

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1891, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1892) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !155

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1893, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1894) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 4 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 3 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.u, align 8, !noundef !146 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.v, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !79129
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  %i.ab = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ab
  %i.ad = shl nuw nsw i64 %i.q, 5                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr nonnull readonly align 4 %i.h, i64 %i.ad, i1 false), !alias.scope !79130
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull readonly align 8 %i.s, i64 %i.ad, i1 false), !alias.scope !79131
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.ag = shl nuw nsw i64 %i.n, 5                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 4 %i.af, i64 %i.ag, i1 false), !alias.scope !79132
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.ah, i64 %i.ag, i1 false), !alias.scope !79133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !146
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i64, ptr %i.al, align 8, !noundef !146
  %i.an = icmp eq i64 %i.am, 0                    ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.an, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %bb.h, !prof !158

bb.g:                                             ; preds = %bb.e
  br i1 %i.an, label %bb.h, label %bb.i, !prof !155

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.ao, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader ]
  %i.ao = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ap = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 704
  store ptr %i.h, ptr %i.as, align 8
  %i.at = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 712
  store i16 %i.at, ptr %i.au, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, !llvm.loop !79123

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1895) #63
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 720 ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.ay = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.av, i64 %i.ay, i1 false), !alias.scope !79134
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %1
  %i.ba = shl nuw nsw i64 %i.n, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.bb, i1 false), !alias.scope !79135
  %i.bc = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 704
  store ptr %i.c, ptr %i.bf, align 8
  %i.bg = trunc nuw nsw i64 %i.ab to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 712
  store i16 %i.bg, ptr %i.bh, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bj = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 704
  store ptr %i.c, ptr %i.bm, align 8
  %i.bn = trunc nuw nsw i64 %i.bi to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 712
  store i16 %i.bn, ptr %i.bo, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bq = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 704
  store ptr %i.c, ptr %i.bt, align 8
  %i.bu = trunc nuw nsw i64 %i.bp to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 712
  store i16 %i.bu, ptr %i.bv, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bx = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 704
  store ptr %i.c, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bw to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 712
  store i16 %i.cb, ptr %i.cc, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 704
  store ptr %i.c, ptr %i.ch, align 8
  %i.ci = trunc nuw nsw i64 %i.cd to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 712
  store i16 %i.ci, ptr %i.cj, align 8
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ck = add nuw nsw i64 %i.k, 1
  %i.cl = sub nsw i64 %i.ck, %1                   ; 2 uses
  %xtraiter = and i64 %i.cl, 3                    ; 3 uses
  %i.cm = icmp samesign ult i64 %i.n, 3
  br i1 %i.cm, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader
  %unroll_iter = and i64 %i.cl, -4
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit ]
  %i.cn = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 704
  store ptr %i.h, ptr %i.cq, align 8
  %i.cr = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 712
  store i16 %i.cr, ptr %i.cs, align 8
  %i.ct = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cn
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 704
  store ptr %i.h, ptr %i.cw, align 8
  %i.cx = trunc nuw nsw i64 %i.cn to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 712
  store i16 %i.cx, ptr %i.cy, align 8
  %i.cz = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ct
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 704
  store ptr %i.h, ptr %i.dc, align 8
  %i.dd = trunc nuw nsw i64 %i.ct to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 712
  store i16 %i.dd, ptr %i.de, align 8
  %i.df = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.dg = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cz
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 704
  store ptr %i.h, ptr %i.dj, align 8
  %i.dk = trunc nuw nsw i64 %i.cz to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 712
  store i16 %i.dk, ptr %i.dl, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2k_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE15bulk_steal_leftCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !146, !noundef !146 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !146
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !146, !noundef !146 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !146
  %i.k = zext i16 %i.j to i64                     ; 4 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !158

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1886, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1887) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !155

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1888, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1889) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.r = shl nuw nsw i64 %i.k, 5                  ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 4 %i.h, i64 %i.r, i1 false), !alias.scope !79155
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.r, i1 false), !alias.scope !79156
  %i.u = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.v = sub nuw nsw i64 %i.f, %i.u               ; 4 uses
  %i.w = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79158)
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit, label %bb.f, !prof !158

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @485, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @486) #63, !noalias !79159
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.u
  %i.z = shl nuw nsw i64 %i.v, 5                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull readonly align 4 %i.y, i64 %i.z, i1 false), !alias.scope !79159
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.ab, i64 %i.z, i1 false), !alias.scope !79160
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ae, align 8, !noundef !146 ; 2 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val17 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.af, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.af, ptr noundef nonnull align 4 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !79161
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !146
  %i.am = icmp eq i64 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !noundef !146
  %i.ap = icmp eq i64 %i.ao, 0                    ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit
  br i1 %i.ap, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %bb.j, !prof !158

bb.h:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !155

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 704
  store ptr %i.h, ptr %i.at, align 8
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 712
  store i16 %i.au, ptr %i.av, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %bb.i, !llvm.loop !79149

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1890) #63
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !79162
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.u
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !79163
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 704
  store ptr %i.h, ptr %i.bj, align 8
  %i.bk = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 712
  store i16 %i.bk, ptr %i.bl, align 8
  %i.bm = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 704
  store ptr %i.h, ptr %i.bp, align 8
  %i.bq = trunc nuw nsw i64 %i.bg to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 712
  store i16 %i.bq, ptr %i.br, align 8
  %i.bs = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 704
  store ptr %i.h, ptr %i.bv, align 8
  %i.bw = trunc nuw nsw i64 %i.bm to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 712
  store i16 %i.bw, ptr %i.bx, align 8
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bs
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 704
  store ptr %i.h, ptr %i.cb, align 8
  %i.cc = trunc nuw nsw i64 %i.bs to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 712
  store i16 %i.cc, ptr %i.cd, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2k_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE16bulk_steal_rightCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !146, !noundef !146 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !146 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !146, !noundef !146 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !146
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !158

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1891, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1892) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !155

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1893, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1894) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 4 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 3 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.u, align 8, !noundef !146 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.v, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !79183
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  %i.ab = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ab
  %i.ad = shl nuw nsw i64 %i.q, 5                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr nonnull readonly align 4 %i.h, i64 %i.ad, i1 false), !alias.scope !79184
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull readonly align 8 %i.s, i64 %i.ad, i1 false), !alias.scope !79185
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.ag = shl nuw nsw i64 %i.n, 5                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 4 %i.af, i64 %i.ag, i1 false), !alias.scope !79186
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.ah, i64 %i.ag, i1 false), !alias.scope !79187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !146
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i64, ptr %i.al, align 8, !noundef !146
  %i.an = icmp eq i64 %i.am, 0                    ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.an, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %bb.h, !prof !158

bb.g:                                             ; preds = %bb.e
  br i1 %i.an, label %bb.h, label %bb.i, !prof !155

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.ao, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader ]
  %i.ao = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ap = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 704
  store ptr %i.h, ptr %i.as, align 8
  %i.at = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 712
  store i16 %i.at, ptr %i.au, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, !llvm.loop !79177

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1895) #63
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 720 ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.ay = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.av, i64 %i.ay, i1 false), !alias.scope !79188
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %1
  %i.ba = shl nuw nsw i64 %i.n, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.bb, i1 false), !alias.scope !79189
  %i.bc = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 704
  store ptr %i.c, ptr %i.bf, align 8
  %i.bg = trunc nuw nsw i64 %i.ab to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 712
  store i16 %i.bg, ptr %i.bh, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bj = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 704
  store ptr %i.c, ptr %i.bm, align 8
  %i.bn = trunc nuw nsw i64 %i.bi to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 712
  store i16 %i.bn, ptr %i.bo, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bq = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 704
  store ptr %i.c, ptr %i.bt, align 8
  %i.bu = trunc nuw nsw i64 %i.bp to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 712
  store i16 %i.bu, ptr %i.bv, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bx = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 704
  store ptr %i.c, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bw to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 712
  store i16 %i.cb, ptr %i.cc, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 704
  store ptr %i.c, ptr %i.ch, align 8
  %i.ci = trunc nuw nsw i64 %i.cd to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 712
  store i16 %i.ci, ptr %i.cj, align 8
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ck = add nuw nsw i64 %i.k, 1
  %i.cl = sub nsw i64 %i.ck, %1                   ; 2 uses
  %xtraiter = and i64 %i.cl, 3                    ; 3 uses
  %i.cm = icmp samesign ult i64 %i.n, 3
  br i1 %i.cm, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader
  %unroll_iter = and i64 %i.cl, -4
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit ]
  %i.cn = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 704
  store ptr %i.h, ptr %i.cq, align 8
  %i.cr = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 712
  store i16 %i.cr, ptr %i.cs, align 8
  %i.ct = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cn
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 704
  store ptr %i.h, ptr %i.cw, align 8
  %i.cx = trunc nuw nsw i64 %i.cn to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 712
  store i16 %i.cx, ptr %i.cy, align 8
  %i.cz = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ct
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 704
  store ptr %i.h, ptr %i.dc, align 8
  %i.dd = trunc nuw nsw i64 %i.ct to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 712
  store i16 %i.dd, ptr %i.de, align 8
  %i.df = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.dg = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cz
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 704
  store ptr %i.h, ptr %i.dj, align 8
  %i.dk = trunc nuw nsw i64 %i.cz to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 712
  store i16 %i.dk, ptr %i.dl, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2k_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE15bulk_steal_leftCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !146, !noundef !146 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !146
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !146, !noundef !146 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !146
  %i.k = zext i16 %i.j to i64                     ; 4 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !158

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1886, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1887) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !155

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1888, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1889) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.r = shl nuw nsw i64 %i.k, 5                  ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 4 %i.h, i64 %i.r, i1 false), !alias.scope !79209
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.r, i1 false), !alias.scope !79210
  %i.u = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.v = sub nuw nsw i64 %i.f, %i.u               ; 4 uses
  %i.w = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79212)
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1f_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit, label %bb.f, !prof !158

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @485, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @486) #63, !noalias !79213
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1f_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.u
  %i.z = shl nuw nsw i64 %i.v, 5                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull readonly align 4 %i.y, i64 %i.z, i1 false), !alias.scope !79213
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.ab, i64 %i.z, i1 false), !alias.scope !79214
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ae, align 8, !noundef !146 ; 2 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val17 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.af, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.af, ptr noundef nonnull align 4 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !79215
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !146
  %i.am = icmp eq i64 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !noundef !146
  %i.ap = icmp eq i64 %i.ao, 0                    ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1f_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit
  br i1 %i.ap, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %bb.j, !prof !158

bb.h:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1f_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !155

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 704
  store ptr %i.h, ptr %i.at, align 8
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 712
  store i16 %i.au, ptr %i.av, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %bb.i, !llvm.loop !79203

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1890) #63
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !79216
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.u
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !79217
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 704
  store ptr %i.h, ptr %i.bj, align 8
  %i.bk = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 712
  store i16 %i.bk, ptr %i.bl, align 8
  %i.bm = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 704
  store ptr %i.h, ptr %i.bp, align 8
  %i.bq = trunc nuw nsw i64 %i.bg to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 712
  store i16 %i.bq, ptr %i.br, align 8
  %i.bs = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 704
  store ptr %i.h, ptr %i.bv, align 8
  %i.bw = trunc nuw nsw i64 %i.bm to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 712
  store i16 %i.bw, ptr %i.bx, align 8
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bs
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 704
  store ptr %i.h, ptr %i.cb, align 8
  %i.cc = trunc nuw nsw i64 %i.bs to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 712
  store i16 %i.cc, ptr %i.cd, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2k_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE16bulk_steal_rightCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !146, !noundef !146 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !146 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !146, !noundef !146 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !146
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !158

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1891, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1892) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !155

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1893, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1894) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 4 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 3 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.u, align 8, !noundef !146 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.v, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !79237
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  %i.ab = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ab
  %i.ad = shl nuw nsw i64 %i.q, 5                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr nonnull readonly align 4 %i.h, i64 %i.ad, i1 false), !alias.scope !79238
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull readonly align 8 %i.s, i64 %i.ad, i1 false), !alias.scope !79239
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.ag = shl nuw nsw i64 %i.n, 5                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 4 %i.af, i64 %i.ag, i1 false), !alias.scope !79240
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.ah, i64 %i.ag, i1 false), !alias.scope !79241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !146
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i64, ptr %i.al, align 8, !noundef !146
  %i.an = icmp eq i64 %i.am, 0                    ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.an, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %bb.h, !prof !158

bb.g:                                             ; preds = %bb.e
  br i1 %i.an, label %bb.h, label %bb.i, !prof !155

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.ao, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader ]
  %i.ao = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ap = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 704
  store ptr %i.h, ptr %i.as, align 8
  %i.at = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 712
  store i16 %i.at, ptr %i.au, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, !llvm.loop !79231

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1895) #63
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 720 ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.ay = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.av, i64 %i.ay, i1 false), !alias.scope !79242
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %1
  %i.ba = shl nuw nsw i64 %i.n, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.bb, i1 false), !alias.scope !79243
  %i.bc = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 704
  store ptr %i.c, ptr %i.bf, align 8
  %i.bg = trunc nuw nsw i64 %i.ab to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 712
  store i16 %i.bg, ptr %i.bh, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bj = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 704
  store ptr %i.c, ptr %i.bm, align 8
  %i.bn = trunc nuw nsw i64 %i.bi to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 712
  store i16 %i.bn, ptr %i.bo, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bq = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 704
  store ptr %i.c, ptr %i.bt, align 8
  %i.bu = trunc nuw nsw i64 %i.bp to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 712
  store i16 %i.bu, ptr %i.bv, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bx = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 704
  store ptr %i.c, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bw to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 712
  store i16 %i.cb, ptr %i.cc, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 704
  store ptr %i.c, ptr %i.ch, align 8
  %i.ci = trunc nuw nsw i64 %i.cd to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 712
  store i16 %i.ci, ptr %i.cj, align 8
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ck = add nuw nsw i64 %i.k, 1
  %i.cl = sub nsw i64 %i.ck, %1                   ; 2 uses
  %xtraiter = and i64 %i.cl, 3                    ; 3 uses
  %i.cm = icmp samesign ult i64 %i.n, 3
  br i1 %i.cm, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader
  %unroll_iter = and i64 %i.cl, -4
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit ]
  %i.cn = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 704
  store ptr %i.h, ptr %i.cq, align 8
  %i.cr = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 712
  store i16 %i.cr, ptr %i.cs, align 8
  %i.ct = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cn
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 704
  store ptr %i.h, ptr %i.cw, align 8
  %i.cx = trunc nuw nsw i64 %i.cn to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 712
  store i16 %i.cx, ptr %i.cy, align 8
  %i.cz = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ct
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 704
  store ptr %i.h, ptr %i.dc, align 8
  %i.dd = trunc nuw nsw i64 %i.ct to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 712
  store i16 %i.dd, ptr %i.de, align 8
  %i.df = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.dg = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cz
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 704
  store ptr %i.h, ptr %i.dj, align 8
  %i.dk = trunc nuw nsw i64 %i.cz to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 712
  store i16 %i.dk, ptr %i.dl, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantEE15bulk_steal_leftCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [17 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !146, !noundef !146 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 274 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !146
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !146, !noundef !146 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 274 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !146
  %i.k = zext i16 %i.j to i64                     ; 5 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !158

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1886, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1887) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !155

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1888, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1889) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 276 ; 4 uses
  %i.r = getelementptr inbounds nuw [17 x i8], ptr %i.q, i64 %1
  %i.s = mul nuw nsw i64 %i.k, 17
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 2 %i.q, i64 %i.s, i1 false), !alias.scope !79263
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %1
  %i.v = mul nuw nsw i64 %i.k, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.t, i64 %i.v, i1 false), !alias.scope !79264
  %i.w = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.x = sub nuw nsw i64 %i.f, %i.w               ; 5 uses
  %i.y = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79266)
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTbNtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit, label %bb.f, !prof !158

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @485, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @486) #63, !noalias !79267
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTbNtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 276 ; 2 uses
  %i.ab = getelementptr inbounds nuw [17 x i8], ptr %i.aa, i64 %i.w
  %i.ac = mul nuw nsw i64 %i.x, 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.q, ptr nonnull readonly align 1 %i.ab, i64 %i.ac, i1 false), !alias.scope !79267
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.w
  %i.af = mul nuw nsw i64 %i.x, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull readonly align 8 %i.ae, i64 %i.af, i1 false), !alias.scope !79268
  %i.ag = getelementptr inbounds nuw [17 x i8], ptr %i.aa, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ai, align 8, !noundef !146 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 276
  %i.ak = getelementptr inbounds nuw [17 x i8], ptr %i.aj, i64 %.val17 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(17) %i.ak, i64 17, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ak, ptr noundef nonnull align 1 dereferenceable(17) %i.ag, i64 17, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !79269
  %i.an = getelementptr inbounds nuw [17 x i8], ptr %i.q, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.an, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.0, i64 17, i1 false)
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !146
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load i64, ptr %i.as, align 8, !noundef !146
  %i.au = icmp eq i64 %i.at, 0                    ; 2 uses
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTbNtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit
  br i1 %i.au, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %bb.j, !prof !158

bb.h:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTbNtNtCs5Xr050g3D4S_3std4time7InstantEECs7XnEB7DeNXr_7sslocal.exit
  br i1 %i.au, label %bb.j, label %bb.k, !prof !155

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.bz, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.av, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.av = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i.epil
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !146, !noundef !146 ; 2 uses
  store ptr %i.h, ptr %i.ax, align 8
  %i.ay = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 272
  store i16 %i.ay, ptr %i.az, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, label %bb.i, !llvm.loop !79257

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1890) #63
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 464 ; 8 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %1
  %i.bc = shl nuw nsw i64 %i.k, 3
  %i.bd = add nuw nsw i64 %i.bc, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bd, i1 false), !alias.scope !79270
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.w
  %i.bg = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bf, i64 %i.bg, i1 false), !alias.scope !79271
  %i.bh = add nuw nsw i64 %1, %i.k
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %xtraiter = and i64 %i.bi, 3                    ; 3 uses
  %i.bj = icmp samesign ult i64 %i.l, 3
  br i1 %i.bj, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bi, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.bz, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bk = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !146, !noundef !146 ; 2 uses
  store ptr %i.h, ptr %i.bm, align 8
  %i.bn = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 272
  store i16 %i.bn, ptr %i.bo, align 8
  %i.bp = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bk
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !146, !noundef !146 ; 2 uses
  store ptr %i.h, ptr %i.br, align 8
  %i.bs = trunc nuw nsw i64 %i.bk to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 272
  store i16 %i.bs, ptr %i.bt, align 8
  %i.bu = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bp
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !146, !noundef !146 ; 2 uses
  store ptr %i.h, ptr %i.bw, align 8
  %i.bx = trunc nuw nsw i64 %i.bp to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 272
  store i16 %i.bx, ptr %i.by, align 8
  %i.bz = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bu
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !146, !noundef !146 ; 2 uses
  store ptr %i.h, ptr %i.cb, align 8
  %i.cc = trunc nuw nsw i64 %i.bu to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 272
  store i16 %i.cc, ptr %i.cd, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantEE16bulk_steal_rightCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [17 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !146, !noundef !146 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 274 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !146 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !146, !noundef !146 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 274 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !146
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !158

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1891, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1892) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !155

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1893, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1894) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 5 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 276 ; 4 uses
  %i.s = getelementptr inbounds nuw [17 x i8], ptr %i.r, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.v, align 8, !noundef !146 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 276
  %i.x = getelementptr inbounds nuw [17 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.val18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(17) %i.x, i64 17, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.x, ptr noundef nonnull align 1 dereferenceable(17) %i.s, i64 17, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !79291
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 276 ; 2 uses
  %i.ab = getelementptr inbounds nuw [17 x i8], ptr %i.aa, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ab, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.0, i64 17, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  %i.ae = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.af = getelementptr inbounds nuw [17 x i8], ptr %i.aa, i64 %i.ae
  %i.ag = mul nuw nsw i64 %i.q, 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 2 %i.r, i64 %i.ag, i1 false), !alias.scope !79292
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ae
  %i.ai = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull readonly align 8 %i.t, i64 %i.ai, i1 false), !alias.scope !79293
  %i.aj = getelementptr inbounds nuw [17 x i8], ptr %i.r, i64 %1
  %i.ak = mul nuw nsw i64 %i.n, 17
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.r, ptr nonnull align 1 %i.aj, i64 %i.ak, i1 false), !alias.scope !79294
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %1
  %i.am = mul nuw nsw i64 %i.n, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.al, i64 %i.am, i1 false), !alias.scope !79295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noundef !146
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !146
  %i.as = icmp eq i64 %i.ar, 0                    ; 2 uses
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.as, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %bb.h, !prof !158

bb.g:                                             ; preds = %bb.e
  br i1 %i.as, label %bb.h, label %bb.i, !prof !155

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader ], [ %i.db, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.at, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader ]
  %i.at = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.au = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.sroa.0.06.i23.epil
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !146, !noundef !146 ; 2 uses
  store ptr %i.h, ptr %i.aw, align 8
  %i.ax = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 272
  store i16 %i.ax, ptr %i.ay, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, !llvm.loop !79285

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1895) #63
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 464 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 464 ; 6 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ae
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.az, i64 %i.bc, i1 false), !alias.scope !79296
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %1
  %i.be = shl nuw nsw i64 %i.n, 3
  %i.bf = add nuw nsw i64 %i.be, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bf, i1 false), !alias.scope !79297
  %i.bg = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ae
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !146, !noundef !146 ; 2 uses
  store ptr %i.c, ptr %i.bi, align 8
  %i.bj = trunc nuw nsw i64 %i.ae to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 272
  store i16 %i.bj, ptr %i.bk, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bm = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !146, !noundef !146 ; 2 uses
  store ptr %i.c, ptr %i.bo, align 8
  %i.bp = trunc nuw nsw i64 %i.bl to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 272
  store i16 %i.bp, ptr %i.bq, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bs = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !146, !noundef !146 ; 2 uses
  store ptr %i.c, ptr %i.bu, align 8
  %i.bv = trunc nuw nsw i64 %i.br to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 272
  store i16 %i.bv, ptr %i.bw, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.by = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !146, !noundef !146 ; 2 uses
  store ptr %i.c, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bx to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 272
  store i16 %i.cb, ptr %i.cc, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !146, !noundef !146 ; 2 uses
  store ptr %i.c, ptr %i.cg, align 8
  %i.ch = trunc nuw nsw i64 %i.cd to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 272
  store i16 %i.ch, ptr %i.ci, align 8
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cj = add nuw nsw i64 %i.k, 1
  %i.ck = sub nsw i64 %i.cj, %1                   ; 2 uses
  %xtraiter = and i64 %i.ck, 3                    ; 3 uses
  %i.cl = icmp samesign ult i64 %i.n, 3
  br i1 %i.cl, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.epil.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader
  %unroll_iter = and i64 %i.ck, -4
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new ], [ %i.db, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit ]
  %i.cm = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.sroa.0.06.i23
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !146, !noundef !146 ; 2 uses
  store ptr %i.h, ptr %i.co, align 8
  %i.cp = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 272
  store i16 %i.cp, ptr %i.cq, align 8
  %i.cr = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cm
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !146, !noundef !146 ; 2 uses
  store ptr %i.h, ptr %i.ct, align 8
  %i.cu = trunc nuw nsw i64 %i.cm to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 272
  store i16 %i.cu, ptr %i.cv, align 8
  %i.cw = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cr
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !146, !noundef !146 ; 2 uses
  store ptr %i.h, ptr %i.cy, align 8
  %i.cz = trunc nuw nsw i64 %i.cr to i16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 272
  store i16 %i.cz, ptr %i.da, align 8
  %i.db = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.dc = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cw
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !146, !noundef !146 ; 2 uses
  store ptr %i.h, ptr %i.de, align 8
  %i.df = trunc nuw nsw i64 %i.cw to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 272
  store i16 %i.df, ptr %i.dg, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECs7XnEB7DeNXr_7sslocal.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressTINtNtBa_9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtBc_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEB4l_EE15bulk_steal_leftCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [40 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [48 x i8], align 8            ; 2 uses
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !146, !noundef !146 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 978 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !146
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !146, !noundef !146 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 978 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !146
  %i.k = zext i16 %i.j to i64                     ; 5 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !158

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1886, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1887) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !155

end_hunk_2
