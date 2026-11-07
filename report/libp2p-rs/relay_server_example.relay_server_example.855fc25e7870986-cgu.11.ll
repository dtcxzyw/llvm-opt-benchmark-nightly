Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/relay_server_example.relay_server_example.855fc25e7870986-cgu.11?download=true
inline.NumInlined: 974
inline.NumDeleted: 704
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs0_NtCskGfSpwhqogB_11netlink_sys5tokioNtB6_11TokioSocketNtNtB8_12async_socket11AsyncSocket14poll_recv_fromNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECsIn2LnJNQTW_20relay_server_example:bb.a
bb.l:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.d, align 8, !range !8, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val39 = load ptr, ptr %i.al, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultTjNtNtCskGfSpwhqogB_11netlink_sys4addr10SocketAddrENtNtNtB4_2io5error5ErrorEECsIn2LnJNQTW_20relay_server_example(i64 %.val, ptr %.val39) #35
          to label %bb.s unwind label %bb.r

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.am = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.an = icmp ult i64 %i.am, 6
  call void @llvm.assume(i1 %i.an)
  %i.ao = icmp samesign ugt i64 %i.am, 4
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXst_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTjNtNtCskGfSpwhqogB_11netlink_sys4addr10SocketAddrENtNtNtB7_2io5error5ErrorENtNtB7_3fmt5Debug3fmtCsIn2LnJNQTW_20relay_server_example, ptr %.sroa.433.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @81, ptr %i.b, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 18, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @81, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 18, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @85, ptr %i.as, align 8
  invoke void @_RINvNtCscIBp6mpAwK8_3log13___private_api3loguNtB2_12GlobalLoggerECsIn2LnJNQTW_20relay_server_example(ptr noundef nonnull @84, ptr noundef nonnull %i.c, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %bb.p unwind label %bb.l

bb.o:                                             ; preds = %bb.m, %bb.p
  %.sroa.019.0.copyload = load i64, ptr %i.d, align 8 ; 2 uses
  %i.at = trunc nuw i64 %.sroa.019.0.copyload to i1 ; 2 uses
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.420.0.copyload = load ptr, ptr %.sroa.420.0..sroa_idx, align 8, !nonnull !5
  %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.sroa.521.sroa.4.0.copyload = load ptr, ptr %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx.sroa_idx, align 4
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.521.sroa.0.0.copyload = load i32, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.618.0 = select i1 %i.at, ptr %.sroa.420.0.copyload, ptr %.sroa.521.sroa.4.0.copyload
  %.sroa.517.0 = select i1 %i.at, i32 undef, i32 %.sroa.521.sroa.0.0.copyload
  %i.au = trunc i64 %.sroa.019.0.copyload to i32
  %.sroa.016.0 = and i32 %i.au, 1
  store i32 %.sroa.016.0, ptr %0, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.517.0, ptr %.sroa.517.0..sroa_idx, align 4
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.618.0, ptr %.sroa.618.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.q:                                             ; preds = %bb.v, %bb.o
  ret void

bb.r:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.s:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.ak

bb.t:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @81, ptr %i.a, align 8
  store i64 18, ptr %i.s, align 8
  store ptr @81, ptr %i.t, align 8
  store i64 18, ptr %i.u, align 8
  store ptr @87, ptr %i.v, align 8
  call void @_RINvNtCscIBp6mpAwK8_3log13___private_api3loguNtB2_12GlobalLoggerECsIn2LnJNQTW_20relay_server_example(ptr noundef nonnull @86, ptr noundef nonnull inttoptr (i64 67 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.u:                                             ; preds = %bb.k, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.b

bb.v:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtB6_8Iterator4folduNCINvNvB3K_8for_each4callB2W_NCINvMsk_NtB1R_3vecINtB4G_3VecB2W_E14extend_trustedBQ_E0E0ECsIn2LnJNQTW_20relay_server_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !alias.scope !988 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !988 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !988
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  %i.b = load i64, ptr %0, align 8, !alias.scope !991, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !991, !noundef !5 ; 3 uses
  %i.e = icmp ule i64 %i.b, %i.d
  tail call void @llvm.assume(i1 %i.e)
  %.not5.i.i.i.i = icmp eq i64 %i.b, %i.d
  br i1 %.not5.i.i.i.i, label %_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB2W_NCINvMsk_NtB1R_3vecINtB53_3VecB2W_E14extend_trustedBQ_E0E0ECsIn2LnJNQTW_20relay_server_example.exit, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %0, align 8, !alias.scope !991
  %.not.i.i.i.i = icmp eq i64 %i.d, 1
  %i.g = icmp eq i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !992, !noalias !993, !nonnull !5, !align !15, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !994
  br i1 %.not.i.i.i.i, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.preheader4.i.i.i

.lr.ph.i.preheader4.i.i.i:                        ; preds = %.lr.ph.i.preheader.i.i.i
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std3ffi6os_strNtB5_8OsStringINtNtCskKLDkoKarTP_4core7convert4FromRNtNtCsexYYUdYSQU6_5alloc6string6StringE4fromCsIn2LnJNQTW_20relay_server_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %.lr.ph.i.peel.next.i.i.i unwind label %.split.loopexit.split-lp.i.i.i, !noalias !995

.lr.ph.i.peel.next.i.i.i:                         ; preds = %.lr.ph.i.preheader4.i.i.i
  unreachable

.lr.ph.i.us.i.i.i:                                ; preds = %.lr.ph.i.preheader.i.i.i
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std3ffi6os_strNtB5_8OsStringINtNtCskKLDkoKarTP_4core7convert4FromRNtNtCsexYYUdYSQU6_5alloc6string6StringE4fromCsIn2LnJNQTW_20relay_server_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %_RINvXs_NtNtCskKLDkoKarTP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCsexYYUdYSQU6_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMB5Q_B5N_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsk_NtB3D_3vecINtB89_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6q_EE0E0E0E0B5N_E0B5N_ECsIn2LnJNQTW_20relay_server_example.exit.loopexit.split.us.i.i.i unwind label %.split.loopexit.split-lp.i.i.i, !noalias !995

_RINvXs_NtNtCskKLDkoKarTP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCsexYYUdYSQU6_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMB5Q_B5N_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsk_NtB3D_3vecINtB89_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6q_EE0E0E0E0B5N_E0B5N_ECsIn2LnJNQTW_20relay_server_example.exit.loopexit.split.us.i.i.i: ; preds = %.lr.ph.i.us.i.i.i
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5.0.copyload.i.i, i64 %.sroa.4.0.copyload.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !996
  %i.j = add i64 %.sroa.4.0.copyload.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !994
  br label %_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB2W_NCINvMsk_NtB1R_3vecINtB53_3VecB2W_E14extend_trustedBQ_E0E0ECsIn2LnJNQTW_20relay_server_example.exit

.split.loopexit.split-lp.i.i.i:                   ; preds = %.lr.ph.i.us.i.i.i, %.lr.ph.i.preheader4.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !995
  resume { ptr, i32 } %lpad.loopexit.split-lp.i.i.i

_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB2W_NCINvMsk_NtB1R_3vecINtB53_3VecB2W_E14extend_trustedBQ_E0E0ECsIn2LnJNQTW_20relay_server_example.exit: ; preds = %bb.a, %_RINvXs_NtNtCskKLDkoKarTP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCsexYYUdYSQU6_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMB5Q_B5N_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsk_NtB3D_3vecINtB89_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6q_EE0E0E0E0B5N_E0B5N_ECsIn2LnJNQTW_20relay_server_example.exit.loopexit.split.us.i.i.i
  %.val2.i.i.i.i = phi i64 [ %.sroa.4.0.copyload.i.i, %bb.a ], [ %i.j, %_RINvXs_NtNtCskKLDkoKarTP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCsexYYUdYSQU6_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMB5Q_B5N_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsk_NtB3D_3vecINtB89_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6q_EE0E0E0E0B5N_E0B5N_ECsIn2LnJNQTW_20relay_server_example.exit.loopexit.split.us.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.val2.i.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !995
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainIBO_IBY_IBO_INtCscu2bAJ62uie_6either6EitherIBO_IB1u_IBO_INtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2D_EIB1u_B2D_ReEEIBO_INtNtB2g_5empty5EmptyB3W_EFB3W_EB3N_EEFB3N_EIB1u_B3N_B3W_EEIBO_B44_FB3W_EB4M_EEFB4M_EIB1u_B4M_B2D_EEIBO_B2b_FB2D_EB5r_EEFB5r_EIB1u_B5r_IB1u_B2D_B2D_EEEIBO_IBY_IBO_B2b_FB2D_EB6f_EB6D_EFB6f_EB66_EENCINvNtB2H_10connection26gather_supported_protocolsINtNtNtB2H_7handler6select23ConnectionHandlerSelectIB83_IB1u_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler7HandlerNtNtB2H_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvBcc_8for_each4callTINtB7i_11AsStrHashEqB66_EbENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBdR_7HashMapBdg_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtBcg_7collect6ExtendBdf_E6extendBN_E0E0ECsIn2LnJNQTW_20relay_server_example(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [64 x i8], align 8                ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [80 x i8], align 8                ; 11 uses
  %i.u = alloca [160 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.u, ptr noundef nonnull align 8 dereferenceable(160) %0, i64 160, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  %i.v = load i64, ptr %i.u, align 8, !range !12, !alias.scope !1126, !noundef !5
  %.not.i = icmp eq i64 %i.v, -2
  br i1 %.not.i, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !1126, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.x = load i64, ptr %i.w, align 8, !range !16, !alias.scope !1128, !noalias !1127, !noundef !5 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.x, -3
  br i1 %.not.i.i.i, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtCscu2bAJ62uie_6either6EitherIBO_IBY_IBO_INtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB26_EIBY_B26_ReEEIBO_INtNtB1J_5empty5EmptyB3o_EFB3o_EB3g_EEFB3g_EIBY_B3g_B3o_EEIBO_B3w_FB3o_EB4e_EEFB4e_EIBY_B4e_B26_EENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldB4S_IBY_B4S_IBY_B26_B26_EEuFB4S_EB66_QNCIB5O_B66_TINtNtB2a_10connection11AsStrHashEqB66_EbEuNCINvB6T_26gather_supported_protocolsINtNtNtB2a_7handler6select23ConnectionHandlerSelectIB88_IBY_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler7HandlerNtNtB2a_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE0NCINvNvB56_8for_each4callB6P_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBcS_7HashMapB6Q_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB5a_7collect6ExtendB6P_E6extendIBO_INtNtB8_5chain5ChainIBO_IBf8_BN_IBO_B1E_FB26_EB4S_EEB6t_EIBO_IBf8_IBO_B1E_FB26_EB6e_, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1128, !noalias !1127 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %.sroa.7.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !1128, !noalias !1127 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %.sroa.8.0.copyload.i.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !1128, !noalias !1127, !nonnull !5, !noundef !5
  %switch.i.i.i = icmp ugt i64 %i.x, -3
  br i1 %switch.i.i.i, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtCscu2bAJ62uie_6either6EitherIBO_IBY_IBO_INtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB26_EIBY_B26_ReEEIBO_INtNtB1J_5empty5EmptyB3o_EFB3o_EB3g_EEFB3g_EIBY_B3g_B3o_EEIBO_B3w_FB3o_EB4e_EEFB4e_EIBY_B4e_B26_EENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldB4S_IBY_B4S_IBY_B26_B26_EEuFB4S_EB66_QNCIB5O_B66_TINtNtB2a_10connection11AsStrHashEqB66_EbEuNCINvB6T_26gather_supported_protocolsINtNtNtB2a_7handler6select23ConnectionHandlerSelectIB88_IBY_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler7HandlerNtNtB2a_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE0NCINvNvB56_8for_each4callB6P_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBcS_7HashMapB6Q_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB5a_7collect6ExtendB6P_E6extendIBO_INtNtB8_5chain5ChainIBO_IBf8_BN_IBO_B1E_FB26_EB4S_EEB6t_EIBO_IBf8_IBO_B1E_FB26_EB6e_, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1129
  %.sroa.5.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx10.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  store i64 2, ptr %i.s, align 8, !alias.scope !1131, !noalias !1129
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.x, 2
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1p_EINtCscu2bAJ62uie_6either6EitherB1p_ReEENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldB2z_IB2A_B2z_B38_EuFB2z_EB4b_NCIB3T_B4b_IB2A_B4b_B1p_EuFB4b_EB4L_QNCIB3T_B4L_IB2A_B4L_IB2A_B1p_B1p_EEuFB4L_EB5m_QNCIB3T_B5m_TINtNtB1t_10connection11AsStrHashEqB5m_EbEuNCINvB6b_26gather_supported_protocolsINtNtNtB1t_7handler6select23ConnectionHandlerSelectIB7q_IB2A_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler7HandlerNtNtB1t_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE0NCINvNvB3c_8for_each4callB67_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBcb_7HashMapB68_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3g_7collect6ExtendB67_E6extendIBO_INtNtB8_5chain5ChainIBO_IBer_IBO_IB2A_IBO_IB2A_BN_IBO_INtNtB12_5empty5EmptyB38_EFB38_EB2z_EEB4q_EIBO_Bfi_FB38_EB4b_EEB50_EIBO_B, label %bb.f

bb.e:                                             ; preds = %.noexc4.i.i.i.i.i.i.i.i.i, %.noexc3.i.i.i.i.i.i.i.i.i, %.noexc2.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i, %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsIn2LnJNQTW_20relay_server_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #35
          to label %.body.i.i.i unwind label %bb.g, !noalias !1132

bb.f:                                             ; preds = %bb.d
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1133
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  store i64 %i.x, ptr %i.r, align 8, !noalias !1134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1135
  invoke void %.sroa.6.0.copyload.i.i.i(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !1136, !inline_history !1031

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1137
  invoke void %.sroa.7.0.copyload.i.i.i(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %.noexc2.i.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !1136, !inline_history !1031

.noexc2.i.i.i.i.i.i.i.i.i:                        ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1138
  invoke void %.sroa.8.0.copyload.i.i.i(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc3.i.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !1136, !inline_history !1031

.noexc3.i.i.i.i.i.i.i.i.i:                        ; preds = %.noexc2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1139
  invoke void %.sroa.8.0.copyload.i(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.o)
          to label %.noexc4.i.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !1136, !inline_history !1031

.noexc4.i.i.i.i.i.i.i.i.i:                        ; preds = %.noexc3.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1138
  %i.ab = invoke noundef i8 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1K_IB1K_IB1K_NtNtBS_15stream_protocol14StreamProtocolReEB37_EB2t_EIB1K_B2t_B2t_EEEbNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsIn2LnJNQTW_20relay_server_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.n, i1 noundef zeroext true)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsIn2LnJNQTW_20relay_server_example.exit.loopexit.i.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !1136 ; 0 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsIn2LnJNQTW_20relay_server_example.exit.loopexit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc4.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1139
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1p_EINtCscu2bAJ62uie_6either6EitherB1p_ReEENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldB2z_IB2A_B2z_B38_EuFB2z_EB4b_NCIB3T_B4b_IB2A_B4b_B1p_EuFB4b_EB4L_QNCIB3T_B4L_IB2A_B4L_IB2A_B1p_B1p_EEuFB4L_EB5m_QNCIB3T_B5m_TINtNtB1t_10connection11AsStrHashEqB5m_EbEuNCINvB6b_26gather_supported_protocolsINtNtNtB1t_7handler6select23ConnectionHandlerSelectIB7q_IB2A_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler7HandlerNtNtB1t_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE0NCINvNvB3c_8for_each4callB67_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBcb_7HashMapB68_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3g_7collect6ExtendB67_E6extendIBO_INtNtB8_5chain5ChainIBO_IBer_IBO_IB2A_IBO_IB2A_BN_IBO_INtNtB12_5empty5EmptyB38_EFB38_EB2z_EEB4q_EIBO_Bfi_FB38_EB4b_EEB50_EIBO_B

bb.g:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !1132
  unreachable

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1p_EINtCscu2bAJ62uie_6either6EitherB1p_ReEENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldB2z_IB2A_B2z_B38_EuFB2z_EB4b_NCIB3T_B4b_IB2A_B4b_B1p_EuFB4b_EB4L_QNCIB3T_B4L_IB2A_B4L_IB2A_B1p_B1p_EEuFB4L_EB5m_QNCIB3T_B5m_TINtNtB1t_10connection11AsStrHashEqB5m_EbEuNCINvB6b_26gather_supported_protocolsINtNtNtB1t_7handler6select23ConnectionHandlerSelectIB7q_IB2A_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler7HandlerNtNtB1t_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE0NCINvNvB3c_8for_each4callB67_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBcb_7HashMapB68_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3g_7collect6ExtendB67_E6extendIBO_INtNtB8_5chain5ChainIBO_IBer_IBO_IB2A_IBO_IB2A_BN_IBO_INtNtB12_5empty5EmptyB38_EFB38_EB2z_EEB4q_EIBO_Bfi_FB38_EB4b_EEB50_EIBO_B: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsIn2LnJNQTW_20relay_server_example.exit.loopexit.i.i.i.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1129
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtCscu2bAJ62uie_6either6EitherIBO_IBY_IBO_INtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB26_EIBY_B26_ReEEIBO_INtNtB1J_5empty5EmptyB3o_EFB3o_EB3g_EEFB3g_EIBY_B3g_B3o_EEIBO_B3w_FB3o_EB4e_EEFB4e_EIBY_B4e_B26_EENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldB4S_IBY_B4S_IBY_B26_B26_EEuFB4S_EB66_QNCIB5O_B66_TINtNtB2a_10connection11AsStrHashEqB66_EbEuNCINvB6T_26gather_supported_protocolsINtNtNtB2a_7handler6select23ConnectionHandlerSelectIB88_IBY_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler7HandlerNtNtB2a_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE0NCINvNvB56_8for_each4callB6P_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBcS_7HashMapB6Q_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB5a_7collect6ExtendB6P_E6extendIBO_INtNtB8_5chain5ChainIBO_IBf8_BN_IBO_B1E_FB26_EB4S_EEB6t_EIBO_IBf8_IBO_B1E_FB26_EB6e_

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtCscu2bAJ62uie_6either6EitherIBO_IBY_IBO_INtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB26_EIBY_B26_ReEEIBO_INtNtB1J_5empty5EmptyB3o_EFB3o_EB3g_EEFB3g_EIBY_B3g_B3o_EEIBO_B3w_FB3o_EB4e_EEFB4e_EIBY_B4e_B26_EENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldB4S_IBY_B4S_IBY_B26_B26_EEuFB4S_EB66_QNCIB5O_B66_TINtNtB2a_10connection11AsStrHashEqB66_EbEuNCINvB6T_26gather_supported_protocolsINtNtNtB2a_7handler6select23ConnectionHandlerSelectIB88_IBY_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler7HandlerNtNtB2a_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE0NCINvNvB56_8for_each4callB6P_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBcS_7HashMapB6Q_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB5a_7collect6ExtendB6P_E6extendIBO_INtNtB8_5chain5ChainIBO_IBf8_BN_IBO_B1E_FB26_EB4S_EEB6t_EIBO_IBf8_IBO_B1E_FB26_EB6e_: ; preds = %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1p_EINtCscu2bAJ62uie_6either6EitherB1p_ReEENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldB2z_IB2A_B2z_B38_EuFB2z_EB4b_NCIB3T_B4b_IB2A_B4b_B1p_EuFB4b_EB4L_QNCIB3T_B4L_IB2A_B4L_IB2A_B1p_B1p_EEuFB4L_EB5m_QNCIB3T_B5m_TINtNtB1t_10connection11AsStrHashEqB5m_EbEuNCINvB6b_26gather_supported_protocolsINtNtNtB1t_7handler6select23ConnectionHandlerSelectIB7q_IB2A_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler7HandlerNtNtB1t_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE0NCINvNvB3c_8for_each4callB67_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBcb_7HashMapB68_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3g_7collect6ExtendB67_E6extendIBO_INtNtB8_5chain5ChainIBO_IBer_IBO_IB2A_IBO_IB2A_BN_IBO_INtNtB12_5empty5EmptyB38_EFB38_EB2z_EEB4q_EIBO_Bfi_FB38_EB4b_EEB50_EIBO_B, %bb.c, %bb.b
  %i.ad = load i64, ptr %i.t, align 8, !range !13, !alias.scope !1128, !noalias !1127, !noundef !5
  %.not4.i.i.i = icmp eq i64 %i.ad, -1
  br i1 %.not4.i.i.i, label %bb.p, label %bb.h

.body.i.i.i:                                      ; preds = %bb.e
  %i.ae = load i64, ptr %i.t, align 8, !range !13, !alias.scope !1128, !noalias !1127, !noundef !5
  %.not17.i.i.i = icmp eq i64 %i.ae, -1
  br i1 %.not17.i.i.i, label %.body.i, label %bb.m

bb.h:                                             ; preds = %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtCscu2bAJ62uie_6either6EitherIBO_IBY_IBO_INtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB26_EIBY_B26_ReEEIBO_INtNtB1J_5empty5EmptyB3o_EFB3o_EB3g_EEFB3g_EIBY_B3g_B3o_EEIBO_B3w_FB3o_EB4e_EEFB4e_EIBY_B4e_B26_EENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldB4S_IBY_B4S_IBY_B26_B26_EEuFB4S_EB66_QNCIB5O_B66_TINtNtB2a_10connection11AsStrHashEqB66_EbEuNCINvB6T_26gather_supported_protocolsINtNtNtB2a_7handler6select23ConnectionHandlerSelectIB88_IBY_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler7HandlerNtNtB2a_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE0NCINvNvB56_8for_each4callB6P_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBcS_7HashMapB6Q_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB5a_7collect6ExtendB6P_E6extendIBO_INtNtB8_5chain5ChainIBO_IBf8_BN_IBO_B1E_FB26_EB4S_EEB6t_EIBO_IBf8_IBO_B1E_FB26_EB6e_
  %.sroa.512.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.512.0.copyload.i.i.i = load ptr, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !1128, !noalias !1127, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %.sroa.0.0.copyload49.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !1142, !noalias !1140 ; 2 uses
  store i64 2, ptr %i.m, align 8, !alias.scope !1143, !noalias !1140
  %.not10.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload49.i.i.i.i.i, 2
  br i1 %.not10.i.i.i.i.i, label %bb.l, label %bb.j

bb.i:                                             ; preds = %.noexc2.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsIn2LnJNQTW_20relay_server_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #35
          to label %.body.i unwind label %bb.k, !noalias !1144

bb.j:                                             ; preds = %bb.h
  %.sroa.48.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1145
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  store i64 %.sroa.0.0.copyload49.i.i.i.i.i, ptr %i.l, align 8, !noalias !1146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1147
  invoke void %.sroa.512.0.copyload.i.i.i(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc.i.i.i.i.i unwind label %bb.i, !noalias !1148, !inline_history !1063

.noexc.i.i.i.i.i:                                 ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1149
  invoke void %.sroa.8.0.copyload.i(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.k)
          to label %.noexc2.i.i.i.i.i unwind label %bb.i, !noalias !1148, !inline_history !1063

.noexc2.i.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1147
  %i.ah = invoke noundef i8 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1K_IB1K_IB1K_NtNtBS_15stream_protocol14StreamProtocolReEB37_EB2t_EIB1K_B2t_B2t_EEEbNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsIn2LnJNQTW_20relay_server_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.j, i1 noundef zeroext true)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsIn2LnJNQTW_20relay_server_example.exit.loopexit.i.i.i.i.i unwind label %bb.i, !noalias !1148 ; 0 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsIn2LnJNQTW_20relay_server_example.exit.loopexit.i.i.i.i.i: ; preds = %.noexc2.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1149
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !1144
  unreachable

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsIn2LnJNQTW_20relay_server_example.exit.loopexit.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1140
  br label %bb.p

bb.m:                                             ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1B_EINtCscu2bAJ62uie_6either6EitherIB2M_IB2M_B1B_ReEB3u_EB1B_EEECsIn2LnJNQTW_20relay_server_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.t) #35
          to label %.body.i unwind label %bb.n, !noalias !1150

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !1150
  unreachable

bb.o:                                             ; preds = %bb.p, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.al = load i64, ptr %i.ak, align 8, !range !12, !alias.scope !1126, !noundef !5
  %.not4.i = icmp eq i64 %i.al, -2
  br i1 %.not4.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapIBP_IB11_INtCscu2bAJ62uie_6either6EitherIB11_IB1q_IB11_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2B_EIB1q_B2B_ReEEIB11_INtNtB2e_5empty5EmptyB3U_EFB3U_EB3L_EEFB3L_EIB1q_B3L_B3U_EEIB11_B43_FB3U_EB4L_EEFB4L_EIB1q_B4L_B2B_EEIB11_B29_FB2B_EB5r_EEFB5r_EIB1q_B5r_IB1q_B2B_B2B_EEEIB11_IBP_IB11_B29_FB2B_EB6g_EB6F_EFB6g_EB67_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB13_8map_foldB67_TINtNtB2F_10connection11AsStrHashEqB67_EbEuNCINvB8k_26gather_supported_protocolsINtNtNtB2F_7handler6select23ConnectionHandlerSelectIB9z_IB1q_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler7HandlerNtNtB2F_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE0NCINvNvB7g_8for_each4callB8g_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBek_7HashMapB8h_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB7k_7collect6ExtendB8g_E6exte, label %bb.q

.body.i:                                          ; preds = %bb.m, %bb.i, %.body.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.z, %.body.i.i.i ], [ %i.z, %bb.m ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 88 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !range !12, !alias.scope !1126, !noundef !5
  %.not29.i = icmp eq i64 %i.an, -2
  br i1 %.not29.i, label %.body.thread.i, label %bb.af

bb.p:                                             ; preds = %bb.l, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtCscu2bAJ62uie_6either6EitherIBO_IBY_IBO_INtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB26_EIBY_B26_ReEEIBO_INtNtB1J_5empty5EmptyB3o_EFB3o_EB3g_EEFB3g_EIBY_B3g_B3o_EEIBO_B3w_FB3o_EB4e_EEFB4e_EIBY_B4e_B26_EENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldB4S_IBY_B4S_IBY_B26_B26_EEuFB4S_EB66_QNCIB5O_B66_TINtNtB2a_10connection11AsStrHashEqB66_EbEuNCINvB6T_26gather_supported_protocolsINtNtNtB2a_7handler6select23ConnectionHandlerSelectIB88_IBY_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler7HandlerNtNtB2a_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE0NCINvNvB56_8for_each4callB6P_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBcS_7HashMapB6Q_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB5a_7collect6ExtendB6P_E6extendIBO_INtNtB8_5chain5ChainIBO_IBf8_BN_IBO_B1E_FB26_EB4S_EEB6t_EIBO_IBf8_IBO_B1E_FB26_EB6e_
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1127
  br label %bb.o

bb.q:                                             ; preds = %bb.o
  %.sroa.824.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %.sroa.824.0.copyload.i = load ptr, ptr %.sroa.824.0..sroa_idx.i, align 8, !alias.scope !1126, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1151
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %i.ap = load i64, ptr %i.i, align 8, !range !13, !alias.scope !1152, !noalias !1151, !noundef !5
  %.not.i.i5.i = icmp eq i64 %i.ap, -1
  br i1 %.not.i.i5.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1152, !noalias !1151, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1153
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  %.sroa.05.0.copyload611.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !1155, !noalias !1153 ; 2 uses
  store i64 2, ptr %i.h, align 8, !alias.scope !1156, !noalias !1153
  %.not12.i.i.i.i.i = icmp eq i64 %.sroa.05.0.copyload611.i.i.i.i.i, 2
  br i1 %.not12.i.i.i.i.i, label %bb.w, label %bb.t

bb.s:                                             ; preds = %.noexc3.i.i.i.i.i, %.noexc.i.i.i.i10.i, %bb.t
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsIn2LnJNQTW_20relay_server_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #35
          to label %.body.i.i6.i unwind label %bb.u, !noalias !1157

bb.t:                                             ; preds = %bb.r
  %.sroa.410.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1158
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  store i64 %.sroa.05.0.copyload611.i.i.i.i.i, ptr %i.g, align 8, !noalias !1159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1160
  invoke void %.sroa.5.0.copyload.i.i.i(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc.i.i.i.i10.i unwind label %bb.s, !noalias !1161, !inline_history !1095

.noexc.i.i.i.i10.i:                               ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1162
  invoke void %.sroa.824.0.copyload.i(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.noexc3.i.i.i.i.i unwind label %bb.s, !noalias !1161, !inline_history !1095

.noexc3.i.i.i.i.i:                                ; preds = %.noexc.i.i.i.i10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1160
  %i.at = invoke noundef i8 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1K_IB1K_IB1K_NtNtBS_15stream_protocol14StreamProtocolReEB37_EB2t_EIB1K_B2t_B2t_EEEbNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsIn2LnJNQTW_20relay_server_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.e, i1 noundef zeroext true)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsIn2LnJNQTW_20relay_server_example.exit.loopexit.i.i.i.i11.i unwind label %bb.s, !noalias !1163 ; 0 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsIn2LnJNQTW_20relay_server_example.exit.loopexit.i.i.i.i11.i: ; preds = %.noexc3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1162
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !1157
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !range !13, !alias.scope !1152, !noalias !1151, !noundef !5
  %.not4.i.i12.i = icmp eq i64 %i.aw, -1
  br i1 %.not4.i.i12.i, label %bb.ae, label %bb.x

.body.i.i6.i:                                     ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !range !13, !alias.scope !1152, !noalias !1151, !noundef !5
  %.not17.i.i7.i = icmp eq i64 %i.ay, -1
  br i1 %.not17.i.i7.i, label %.body.thread.i, label %bb.ac

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsIn2LnJNQTW_20relay_server_example.exit.loopexit.i.i.i.i11.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1153
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %.sroa.512.0..sroa_idx.i.i13.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.512.0.copyload.i.i14.i = load ptr, ptr %.sroa.512.0..sroa_idx.i.i13.i, align 8, !alias.scope !1152, !noalias !1151, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1164
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %.sroa.0.0.copyload49.i.i.i.i15.i = load i64, ptr %i.d, align 8, !alias.scope !1166, !noalias !1164 ; 2 uses
  store i64 2, ptr %i.d, align 8, !alias.scope !1167, !noalias !1164
  %.not10.i.i.i.i16.i = icmp eq i64 %.sroa.0.0.copyload49.i.i.i.i15.i, 2
  br i1 %.not10.i.i.i.i16.i, label %bb.ab, label %bb.z

bb.y:                                             ; preds = %.noexc2.i.i.i.i18.i, %.noexc.i.i6.i.i.i, %bb.z
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECsIn2LnJNQTW_20relay_server_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #35
          to label %.body.thread.i unwind label %bb.aa, !noalias !1168

bb.z:                                             ; preds = %bb.x
  %.sroa.48.0..sroa_idx.i.i.i.i17.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1169
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i.i.i.i17.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false)
  store i64 %.sroa.0.0.copyload49.i.i.i.i15.i, ptr %i.c, align 8, !noalias !1170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1171
  invoke void %.sroa.512.0.copyload.i.i14.i(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc.i.i6.i.i.i unwind label %bb.y, !noalias !1172, !inline_history !1119

.noexc.i.i6.i.i.i:                                ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1173
  invoke void %.sroa.824.0.copyload.i(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %.noexc2.i.i.i.i18.i unwind label %bb.y, !noalias !1172, !inline_history !1119

.noexc2.i.i.i.i18.i:                              ; preds = %.noexc.i.i6.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1171
end_hunk_0
