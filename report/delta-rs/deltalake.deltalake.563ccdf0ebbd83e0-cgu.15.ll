Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.15?download=true
inline.NumInlined: 6795
inline.NumDeleted: 2943
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2y_5ErrorEEENtNtNtNtB1Z_4iter6traits8iterator8Iterator4foldINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered14FuturesOrderedBX_ENCINvXs8_B4f_B4c_INtNtB3v_7collect12FromIteratorBX_E9from_iterBI_E0ECs7p2uQeJxui2_9deltalake:bb.a
  invoke void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB3D_5ErrorEEEE4pushCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.g, ptr noundef nonnull %i.i, i64 noundef %i.k)
          to label %bb.e unwind label %bb.c, !noalias !5756

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB3e_5ErrorEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #37
          to label %.body unwind label %bb.d, !noalias !5756

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !5756
  unreachable

._crit_edge:                                      ; preds = %bb.e, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2x_5ErrorEEENtNtNtB1Y_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
  ret void

.body:                                            ; preds = %bb.c
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2x_5ErrorEEENtNtNtB1Y_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2P_5ErrorEEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.j, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2P_5ErrorEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2y_5ErrorEEENtNtNtNtB1Z_4iter6traits8iterator8Iterator4folduNCINvNtNtB3x_8adapters3map8map_foldBX_INtNtNtCs8CRAYtH5WmW_12futures_util6future10maybe_done9MaybeDoneBX_EuNcNtB4P_6Future0NCINvNvB3r_8for_each4callB4P_NCINvMsj_B8_INtB8_3VecB4P_E14extend_trustedINtB4i_3MapBI_B5W_EE0E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 2 uses
  %.not6 = icmp eq ptr %.promoted, %i.b
  br i1 %.not6, label %._crit_edge10, label %.lr.ph

._crit_edge10:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.c

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5758, !noalias !5765, !noundef !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted7 = load i64, ptr %i.f, align 8, !alias.scope !5758, !noalias !5765
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.g = phi i64 [ %.promoted7, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !12, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5770)
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %i.g ; 2 uses
  store i64 -9223372036854775788, ptr %i.k, align 8, !noalias !5758
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !5758
  %i.l = add i64 %i.g, 1                          ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.j, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge10, %._crit_edge
  %.val5 = phi i64 [ %.val5.pre, %._crit_edge10 ], [ %i.l, %._crit_edge ]
  %.val4 = load ptr, ptr %1, align 8, !nonnull !12, !align !375, !noundef !12
  store i64 %.val5, ptr %.val4, align 8
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2x_5ErrorEEENtNtNtB1Y_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB3n_5types3any5PyAnyEENCINvNtNtB1K_8adapters3map12map_try_foldBX_INtNtB1M_6result6ResultB3i_NtNtB3n_3err5PyErrEB2I_INtNtNtB1M_3ops12control_flow11ControlFlowIB55_B2I_zEB2I_ENCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB6W_22DeltaFileSystemHandler22get_file_info_selectors0_0NCINvXB4u_INtB4u_12GenericShuntINtB4s_3MapBI_B6O_EIB55_NtNtB1M_7convert10InfallibleB5v_EEB1E_8try_foldB2I_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3i_E0B6y_E0E0B5S_EB6Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [80 x i8], align 8                ; 7 uses
  %i.i = alloca [56 x i8], align 8                ; 10 uses
  %i.j = alloca [48 x i8], align 8                ; 10 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [96 x i8], align 8                ; 10 uses
  %i.m = alloca [64 x i8], align 8                ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.p, align 8        ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %.not39 = icmp eq ptr %.promoted, %i.q
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val2 = load ptr, ptr %i.r, align 8, !nonnull !12, !align !375, !noundef !12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = getelementptr i8, ptr %.val2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %.sroa.030.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.030.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.030.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.030.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.531.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.257.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.63.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.561.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aj
  %.sroa.4.040 = phi ptr [ %3, %.lr.ph ], [ %i.cl, %bb.aj ] ; 5 uses
  %i.ag = phi ptr [ %.promoted, %.lr.ph ], [ %i.ah, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.l, ptr noundef nonnull align 8 dereferenceable(96) %i.ag, i64 96, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96 ; 3 uses
  store ptr %i.ah, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5771
  store ptr %2, ptr %i.n, align 8, !noalias !5771
  store ptr %.sroa.4.040, ptr %i.s, align 8, !noalias !5771
  %.val.i = load ptr, ptr %.val2, align 8, !noalias !5771 ; 2 uses
  %.val2.i = load ptr, ptr %i.t, align 8, !noalias !5771 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5775)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5778
  %i.ai = load i64, ptr %i.u, align 8, !alias.scope !5775, !noalias !5780, !noundef !12
  %i.aj = load i32, ptr %i.v, align 8, !range !5781, !alias.scope !5782, !noalias !5780, !noundef !12 ; 2 uses
  %i.ak = ashr i32 %i.aj, 13                      ; 3 uses
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  %i.am = icmp slt i32 %i.ak, 1
  br i1 %i.am, label %bb.c, label %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.an = sub nsw i32 1, %i.ak
  %i.ao = udiv i32 %i.an, 400
  %i.ap = add nuw nsw i32 %i.ao, 1                ; 2 uses
  %i.aq = mul nuw nsw i32 %i.ap, 400
  %i.ar = add nsw i32 %i.aq, %i.al
  %.neg.i.i.i.i = mul nsw i32 %i.ap, -146097
  br label %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i

_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.05.0.i.i.i.i = phi i32 [ %.neg.i.i.i.i, %bb.c ], [ 0, %bb.b ]
  %.sroa.0.0.i.i.i.i = phi i32 [ %i.ar, %bb.c ], [ %i.al, %bb.b ] ; 2 uses
  %i.as = sdiv i32 %.sroa.0.0.i.i.i.i, 100        ; 2 uses
  %i.at = mul nsw i32 %.sroa.0.0.i.i.i.i, 1461
  %i.au = ashr i32 %i.at, 2
  %i.av = ashr i32 %i.as, 2
  %i.aw = lshr i32 %i.aj, 4
  %i.ax = and i32 %i.aw, 511
  %i.ay = load i32, ptr %i.w, align 4, !alias.scope !5782, !noalias !5780, !noundef !12
  %i.az = zext i32 %i.ay to i64
  %i.ba = add nuw nsw i32 %i.ax, -719163
  %i.bb = add nsw i32 %i.ba, %.sroa.05.0.i.i.i.i
  %i.bc = sub nsw i32 %i.bb, %i.as
  %i.bd = add nsw i32 %i.bc, %i.au
  %narrow.i.i.i = add nsw i32 %i.bd, %i.av
  %i.be = sext i32 %narrow.i.i.i to i64
  %i.bf = mul nsw i64 %i.be, 86400
  %i.bg = add nsw i64 %i.bf, %i.az                ; 3 uses
  %.lobit.i.i.i = lshr i64 %i.bg, 63
  %.sroa.01.0.i.i.i = add nsw i64 %.lobit.i.i.i, %i.bg ; 2 uses
  %5 = add nsw i64 %.sroa.01.0.i.i.i, -9223372037
  %6 = icmp ult i64 %5, -18446744073
  br i1 %6, label %bb.e, label %bb.d, !prof !14

bb.d:                                             ; preds = %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i
  %i.bh = icmp slt i64 %i.bg, 0
  %i.bi = load i32, ptr %i.x, align 8, !alias.scope !5782, !noalias !5780, !noundef !12
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = add nsw i64 %i.bj, -1000000000
  %.sroa.04.0.i.i.i = select i1 %i.bh, i64 %i.bk, i64 %i.bj ; 2 uses
  %7 = mul nsw i64 %.sroa.01.0.i.i.i, 1000000000  ; 2 uses
  %i.bl = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %7, i64 %.sroa.04.0.i.i.i)
  %i.bm = extractvalue { i64, i1 } %i.bl, 1       ; 2 uses
  %8 = add nsw i64 %.sroa.04.0.i.i.i, %7
  %.sroa.4.0.i.i.i = select i1 %i.bm, i64 undef, i64 %8, !prof !14
  %not..i.i.i = xor i1 %i.bm, true
  br label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit77.i.i: ; preds = %.loopexit, %.loopexit.split-lp, %bb.aa, %bb.r
  %.pn68.i.i = phi { ptr, i32 } [ %.pn66.ph.i.i, %bb.aa ], [ %i.bt, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.l) #37
          to label %bb.ag unwind label %bb.y, !noalias !5780

.loopexit:                                        ; preds = %bb.h, %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit77.i.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit77.i.i

bb.e:                                             ; preds = %bb.d, %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i
  %.sroa.4.1.i.i.i = phi i64 [ %.sroa.4.0.i.i.i, %bb.d ], [ undef, %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i ]
  %.sroa.0.1.i.i.i = phi i1 [ %not..i.i.i, %bb.d ], [ false, %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5778
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !5778
  %i.bn = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2417) 16, i64 noundef range(i64 1, 129) 8) #39, !noalias !5778 ; 4 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.f, label %bb.g, !prof !68

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #36
          to label %.noexc.i.i unwind label %.loopexit.split-lp, !noalias !5778

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  store ptr @57, ptr %i.bn, align 8, !noalias !5778
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 35, ptr %i.bp, align 8, !noalias !5778
  store i64 1, ptr %i.i, align 8, !noalias !5778
  store ptr null, ptr %.sroa.030.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !5778
  store ptr %i.bn, ptr %.sroa.030.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5778
  store ptr @58, ptr %.sroa.030.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !5778
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.030.sroa.4.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !5778
  store i32 3, ptr %.sroa.531.0..sroa_idx.i.i, align 8, !noalias !5778
  br i1 %.sroa.0.1.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.i)
          to label %bb.j unwind label %.loopexit, !noalias !5778

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.257.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.030.sroa.0.sroa.4.0..sroa_idx.i.i, i64 48, i1 false), !noalias !5771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5778
  store i64 1, ptr %i.y, align 8, !noalias !5771
  store i64 1, ptr %i.m, align 8, !noalias !5771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5778
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit.i.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5778
  store ptr @56, ptr %i.j, align 8, !noalias !5778
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5778
  store i64 %i.ai, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !5778
  store ptr @59, ptr %i.z, align 8, !noalias !5778
  store i64 8, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !noalias !5778
  store i64 %.sroa.4.1.i.i.i, ptr %.sroa.63.0..sroa_idx.i.i, align 8, !noalias !5778
  invoke void @_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapRexEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_xEE9from_iterAB29_j2_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.j)
          to label %bb.k unwind label %.loopexit, !noalias !5778

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5778
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5785
  store i64 0, ptr %i.d, align 8, !noalias !5785
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !5785
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !5785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5785
  store i32 1610612768, ptr %i.aa, align 8, !noalias !5785
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !5785
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 2, !noalias !5785
  store ptr %i.d, ptr %i.c, align 8, !noalias !5785
  store ptr @329, ptr %i.ab, align 8, !noalias !5785
  %i.bq = invoke noundef zeroext i1 @_RNvXs3_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.m unwind label %.loopexit15, !noalias !5789

.loopexit15:                                      ; preds = %bb.k
  %lpad.loopexit17 = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp16:                             ; preds = %bb.n
  %lpad.loopexit.split-lp18 = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp16, %.loopexit15
  %lpad.phi19 = phi { ptr, i32 } [ %lpad.loopexit17, %.loopexit15 ], [ %lpad.loopexit.split-lp18, %.loopexit.split-lp16 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #37
          to label %bb.aa unwind label %bb.o, !noalias !5789

bb.m:                                             ; preds = %bb.k
  br i1 %i.bq, label %bb.n, label %bb.q, !prof !14

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @330, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @332) #36
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp16, !noalias !5789

.noexc.i.i.i:                                     ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !5789
  unreachable

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.q:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !5790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5778
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val2.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 4)
          to label %bb.s unwind label %bb.z, !noalias !5780

bb.r:                                             ; preds = %bb.w
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %.val70.i.i = load ptr, ptr %i.f, align 8, !noalias !5778, !nonnull !12, !noundef !12
  call void @_Py_DecRef(ptr noundef nonnull %.val70.i.i) #39, !noalias !5780
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit77.i.i

bb.s:                                             ; preds = %bb.q
  %i.bu = load i64, ptr %i.e, align 8, !range !11, !noalias !5778, !noundef !12
  %i.bv = trunc nuw i64 %i.bu to i1
  %.sroa.060.0.copyload.i.i = load ptr, ptr %i.ac, align 8, !noalias !5778 ; 2 uses
  br i1 %i.bv, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.257.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.561.0..sroa_idx.i.i, i64 48, i1 false), !noalias !5771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5778
  store ptr %.sroa.060.0.copyload.i.i, ptr %i.y, align 8, !noalias !5771
  store i64 1, ptr %i.m, align 8, !noalias !5771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5778
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.u, !noalias !5780

bb.u:                                             ; preds = %bb.t
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.aa unwind label %bb.v, !noalias !5780

bb.v:                                             ; preds = %bb.u
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !5780
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.t
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.p, !noalias !5780

bb.w:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5778
  store ptr %.sroa.060.0.copyload.i.i, ptr %i.f, align 8, !noalias !5778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !5778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !5778
  store ptr %i.f, ptr %i.ae, align 8, !noalias !5778
  %.val71.i.i = load ptr, ptr %.val.i, align 8, !noalias !5778, !nonnull !12, !align !375, !noundef !12
  invoke fastcc void @_RNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB7_22DeltaFileSystemHandler22get_file_info_selector0B9_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.m, ptr nonnull %.val71.i.i, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ad)
          to label %bb.x unwind label %bb.r, !noalias !5771

bb.x:                                             ; preds = %bb.w
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !5778, !nonnull !12, !noundef !12
  call void @_Py_DecRef(ptr noundef nonnull %.val.i.i) #39, !noalias !5780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5778
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.x, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5778
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.l)
          to label %_RNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB7_22DeltaFileSystemHandler22get_file_info_selectors0_0B9_.exit.i unwind label %bb.ab, !noalias !5771

bb.y:                                             ; preds = %bb.aa, %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit77.i.i
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !5780
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5778
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRexEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %.loopexit, !noalias !5780

bb.z:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #37
          to label %bb.aa unwind label %bb.y, !noalias !5780

bb.aa:                                            ; preds = %bb.z, %bb.u, %bb.p, %bb.l
  %.pn66.ph.i.i = phi { ptr, i32 } [ %i.bz, %bb.z ], [ %lpad.phi19, %bb.l ], [ %i.bs, %bb.p ], [ %i.bw, %bb.u ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRexEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit77.i.i unwind label %bb.y, !noalias !5780

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@llvm.threadlocal.address.p0
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #30

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitionsNtB4_15PartitionFilterINtNtCsbvkFyIu7lgC_4core7convert7TryFromTReB25_B25_EE8try_from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrENCNCNvCs7p2uQeJxui2_9deltalake25convert_partition_filters00EE9from_iterB3F_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitionsNtB5_15PartitionFilterINtNtCsbvkFyIu7lgC_4core7convert7TryFromTReB26_RSB26_EE8try_from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods12call_method1ReTBC_EECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr7literalNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB4_7Literal3lit(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(none) dereferenceable(112), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litxECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(address) dereferenceable(112), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4Expr16alias_if_changed(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(none) dereferenceable(112), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs2HSpDNxY7OE_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsjHlmExTLNuX_14datafusion_sql5utils24resolve_aliases_to_exprs(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(none) dereferenceable(112), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsjHlmExTLNuX_14datafusion_sql5utils26resolve_positions_to_exprs(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(none) dereferenceable(112), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112), ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance), i64 noundef range(i64 0, 82351536043346213)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31validate_schema_satisfies_exprsCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance), i64 noundef range(i64 0, 82351536043346213)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsjhHCjzi9uUI_17datafusion_common6unnestNtB4_13UnnestOptions15with_recursions(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(216)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema23index_of_column_by_name(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsjhHCjzi9uUI_17datafusion_common5error27unqualified_field_not_found(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema5empty(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaNtB4_10ExprSchema8nullableCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaNtB4_10ExprSchema9data_typeCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaNtB4_10ExprSchema8metadataCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaNtB4_10ExprSchema22data_type_and_nullableCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtB5_10ExprSchema17field_from_column(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr11expr_schemaNtNtB4_4expr4ExprNtB2_13ExprSchemable7cast_to(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(none) dereferenceable(112), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsW_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtB5_8DFSchemaENtB5_10ExprSchema8nullableCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtB5_8DFSchemaENtB5_10ExprSchema9data_typeCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtB5_8DFSchemaENtB5_10ExprSchema8metadataCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtB5_8DFSchemaENtB5_10ExprSchema22data_type_and_nullableCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtB5_8DFSchemaENtB5_10ExprSchema17field_from_columnCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4Expr5aliasRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(none) dereferenceable(112), ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(112), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE26convert_data_type_to_fieldCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs7_NtCsjHlmExTLNuX_14datafusion_sql7plannerNtB5_14PlannerContext3new(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtCs4lawaffTVVK_9sqlparser3astNtB5_10ObjectNameNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownNtB5_25ChildFilterPushdownResult3all(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16check_unnest_argCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 16 ptr @_RNvMs7_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_6Unnest3new(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE26sql_fn_arg_to_logical_exprCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(none) dereferenceable(112), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(664), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE36sql_fn_arg_to_logical_expr_with_nameCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 16 captures(none) dereferenceable(144), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(664), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4listINtB5_2RxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3popCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 16 captures(address) dereferenceable(128), ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker15register_by_ref(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore7is_idle(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXse_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore10add_permit(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtNtCsgbCypRs12E4_4pyo35types4dictINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRexENtB5_10IntoPyDict12into_py_dictCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapRexEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_xEE9from_iterAB29_j2_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop14register_waker(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCsjhHCjzi9uUI_17datafusion_common5statsNtB5_10Statistics11new_unknown(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayNtB5_15ScanFileContext3new(ptr dead_on_unwind noalias noundef writable sret([208 x i8]) align 8 captures(none) dereferenceable(208), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(168), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateNtB4_6DvInfo20get_selection_vector(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskQDtHcQtBkN_5tokio6future8block_on8block_onNCNvMs1_NtNtNtB6_4sync4mpsc7boundedINtBX_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB1G_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2D_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 16 captures(address) dereferenceable(128), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(400), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvXs0_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber17register_callsite(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4listINtB5_2RxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE11free_blocksCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #31

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #28

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtCsbvkFyIu7lgC_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer15from_len_zeroed(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferxEINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_9immutable6BufferE4fromCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMNtCs2y6mmZ7bjoM_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded8RegistryECs7p2uQeJxui2_9deltalake(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMs_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7shardedNtB4_8Registry10span_stack(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecIBP_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterIBP_INtNtB3c_6option6OptionB12_EEENCNCNvMNtNtB18_8metadata6writerINtB4X_20ThriftMetadataWriterIBP_hEE23finalize_column_indexess_00EE9from_iterCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecIBP_NtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterIBP_INtNtB3c_6option6OptionB12_EEENCNCNvMNtNtB18_8metadata6writerINtB4X_20ThriftMetadataWriterIBP_hEE23finalize_offset_indexess_00EE9from_iterCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs4tdlwR1I4n2_7parquet5basic11ColumnOrderEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterINtNtB6_4sync3ArcNtNtNtBY_6schema5types16ColumnDescriptorEENCNvMNtNtNtBY_4file8metadata6writerINtB4i_20ThriftMetadataWriterIBL_hEE6finishs_0EE9from_iterCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB4_22ParquetMetaDataBuilder16set_column_index(ptr dead_on_unwind noalias noundef writable sret([168 x i8]) align 8 captures(none) dereferenceable(168), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(168), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB4_22ParquetMetaDataBuilder16set_offset_index(ptr dead_on_unwind noalias noundef writable sret([168 x i8]) align 8 captures(none) dereferenceable(168), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(168), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB4_22ParquetMetaDataBuilder14set_row_groups(ptr dead_on_unwind noalias noundef writable sret([168 x i8]) align 8 captures(none) dereferenceable(168), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(168), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB2s_5chain5ChainINtNtNtB2w_5slice4iter4IterB13_EB3C_EEE9from_iterCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file10propertiesNtB5_16WriterProperties21offset_index_disabled(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufwriterINtB2_9BufWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE13with_capacityCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), i64 noundef, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsf_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16SchemaDescriptor3new(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB5_16RowGroupMetaData7builder(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB5_23RowGroupMetaDataBuilder19set_column_metadata(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata13SortingColumnENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB5_23RowGroupMetaDataBuilder19set_sorting_columns(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB5_23RowGroupMetaDataBuilder5build(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTQINtNtNtCs4tdlwR1I4n2_7parquet4file6writer12TrackedWriteINtNtB7_3vec3VechEENtNtB1z_8metadata16RowGroupMetaDataIB2o_INtNtBP_6option6OptionNtNtB1B_12bloom_filter4SbbfEEIB2o_IB3l_NtNtNtB1z_10page_index12column_index19ColumnIndexMetaDataEEIB2o_IB3l_NtNtB4n_12offset_index19OffsetIndexMetaDataEEEEp6OutputINtNtBP_6result6ResultuNtNtB1B_6errors12ParquetErrorENtNtBP_6marker4SendEL_EIBJ_B1s_E9call_onceCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask18try_set_join_waker(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedINtNtB4_6option6OptionINtNtNtB4_3ptr8non_null7NonNullINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1K_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEEEBM_EB3I_(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXs6_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtB7_11linked_list4Link8from_rawCs7p2uQeJxui2_9deltalake(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedINtNtB4_6option6OptionINtNtNtB4_3ptr8non_null7NonNullINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1K_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEEBM_EB3K_(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXs6_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENtNtB7_11linked_list4Link8from_rawCs7p2uQeJxui2_9deltalake(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedINtNtB4_6option6OptionINtNtNtB4_3ptr8non_null7NonNullINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1K_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEEBM_ECs5wg436RVUAP_24datafusion_physical_plan(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXs6_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEENtNtB7_11linked_list4Link8from_rawCs7p2uQeJxui2_9deltalake(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedINtNtB4_6option6OptionINtNtNtB4_3ptr8non_null7NonNullNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core6HeaderEEBM_ECs387lRdTAbEW_11hdfs_native(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4listINtB2_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBV_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1S_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4pushCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs4tdlwR1I4n2_7parquet12bloom_filter4SbbfEEE8grow_oneCs8rZONnIQGB5_29datafusion_datasource_parquet(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEE8grow_oneCs8rZONnIQGB5_29datafusion_datasource_parquet(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEE8grow_oneCs8rZONnIQGB5_29datafusion_datasource_parquet(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs4tdlwR1I4n2_7parquet12bloom_filter4SbbfEE8grow_oneCs8rZONnIQGB5_29datafusion_datasource_parquet(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEE8grow_oneCs8rZONnIQGB5_29datafusion_datasource_parquet(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEE8grow_oneCs8rZONnIQGB5_29datafusion_datasource_parquet(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2n_5ErrorEEE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8grow_oneBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteE8grow_oneBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataE8grow_oneBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataE8grow_oneBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveE8grow_oneBU_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTINtNtB7_3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIBO_NtB16_4ExprEEE8grow_oneCs8Hz2sPNgbCO_10datafusion(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #21

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow6schemaNtB4_20ArrowSchemaConverter7convert(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs4tdlwR1I4n2_7parquet5arrow6schema36add_encoded_arrow_schema_to_metadata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(248)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsb_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB5_19ArrowRowGroupWriter5close(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsc_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB5_26ArrowRowGroupWriterFactory23create_row_group_writer(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsb_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB5_19ArrowRowGroupWriter5write(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch5slice(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #30

; Function Attrs: nonlazybind uwtable
declare void @_RNvXse_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore5close(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtNtCskQDtHcQtBkN_5tokio4sync6notifyNtB5_6Notify14notify_waiters(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #28

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #28

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsgbCypRs12E4_4pyo35types6moduleNtB3_8PyModule6importReECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtNtCsgbCypRs12E4_4pyo35types4dictATReINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEEj2_NtB5_10IntoPyDict12into_py_dictCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods4callTReEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCskFSgV2vI2Ct_13opentelemetry5trace4noopNtB5_8NoopSpanNtNtB7_4span4Span10set_status(ptr noalias noundef align 16 dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCskFSgV2vI2Ct_13opentelemetry5trace4noopNtB5_8NoopSpanNtNtB7_4span4Span13set_attribute(ptr noalias noundef align 16 dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCskFSgV2vI2Ct_13opentelemetry5trace4noopNtB5_8NoopSpanNtNtB7_4span4Span8add_link(ptr noalias noundef align 16 dereferenceable(64), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace4spanNtB4_4SpanNtNtNtCskFSgV2vI2Ct_13opentelemetry5trace4span4Span10set_status(ptr noalias noundef align 16 dereferenceable(384), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace4spanNtB4_4SpanNtNtNtCskFSgV2vI2Ct_13opentelemetry5trace4span4Span13set_attribute(ptr noalias noundef align 16 dereferenceable(384), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace4spanNtB4_4SpanNtNtNtCskFSgV2vI2Ct_13opentelemetry5trace4span4Span18end_with_timestamp(ptr noalias noundef align 16 dereferenceable(384), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0
end_hunk_1
