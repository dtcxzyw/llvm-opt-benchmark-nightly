inline.NumInlined: 570
inline.NumDeleted: 305
begin_hunk_0_@_RINvMs4_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB6_6Client7requestRNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs
define internal fastcc void @_RINvMs4_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB6_6Client7requestRNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(272) %0, ptr %.0.val, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [128 x i8], align 8           ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 6 uses
  %i.d = alloca [264 x i8], align 8               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs4_NtCsgO6CtM78C4N_7reqwest8into_urlRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13IntoUrlSealed8into_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %bb.m

end_hunk_0
begin_hunk_1_@_RINvMs4_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB6_6Client7requestRNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs4_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtBP_6Client7requestRNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37
  invoke void @_RNvXs_NtNtCs4j34XAPZOn0_4http6header3mapNtB4_9HeaderMapNtNtCsbvkFyIu7lgC_4core7default7Default7defaultCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a)
          to label %bb.j unwind label %bb.f, !noalias !37
end_hunk_1
begin_hunk_2_@_RINvMs4_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB6_6Client7requestRNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i64 7, i1 false)
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.59.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  %.sroa.4.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37
end_hunk_2
begin_hunk_3_@_RINvMs4_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB6_6Client7requestRNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs4_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtBP_6Client7requestRNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs4_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtBP_6Client7requestRNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.d, %bb.c, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.n = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.o = icmp slt i64 %i.n, 0
end_hunk_3
begin_hunk_4_@_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1v_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1v_5ErrorEECsj34PGqTgg0L_16deltalake_lakefs:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_4
begin_hunk_5_@_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1v_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1v_5ErrorEECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  call void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1y_9GetResult5bytes00ENtNtBR_8schedule16BlockingScheduleECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noundef %i.k, ptr %.sroa.5.0.i.i, i64 noundef %i.g), !noalias !51
  %i.p = load ptr, ptr %i.a, align 8, !noalias !51, !nonnull !7, !noundef !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !51, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !51
end_hunk_5
begin_hunk_6_@_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1v_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1v_5ErrorEECsj34PGqTgg0L_16deltalake_lakefs:bb.a
_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1B_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1B_5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.f
  %i.v = extractvalue { i64, ptr } %i.s, 0
  %i.w = extractvalue { i64, ptr } %i.s, 1        ; 2 uses
  %4 = load ptr, ptr %i.c, align 8, !noalias !51, !nonnull !7, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %4, ptr %i.f, align 8
  %i.x = trunc nuw i64 %i.v to i1
  %.not = icmp ne ptr %i.w, null
  %or.cond.not = select i1 %i.x, i1 %.not, i1 false
end_hunk_6
begin_hunk_7_@_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1v_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1v_5ErrorEECsj34PGqTgg0L_16deltalake_lakefs:bb.a

bb.i:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1B_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1B_5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %4

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1B_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1B_5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
end_hunk_7
begin_hunk_8_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsj34PGqTgg0L_16deltalake_lakefs:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 14 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 16               ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %i.i = load i64, ptr %0, align 8, !range !62, !alias.scope !480, !noundef !7
end_hunk_8
begin_hunk_9_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @26, ptr %i.f, align 16, !noalias !484
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.v, align 8, !noalias !484
  %i.w = load i64, ptr %i.p, align 8, !range !439, !noalias !484, !noundef !7
end_hunk_9
begin_hunk_10_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  store i64 13, ptr %.sroa.853.0..sroa_idx.i, align 8, !noalias !484
  store <2 x i32> %i.bd, ptr %.sroa.954.0..sroa_idx.i, align 8, !noalias !484
  %.sroa.1356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %1 = load <2 x ptr>, ptr %i.f, align 16, !noalias !484
  store <2 x ptr> %1, ptr %.sroa.1356.0..sroa_idx.i, align 8, !noalias !484
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !invariant.load !7, !noalias !484, !nonnull !7
  invoke void %i.bf(ptr noundef %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.a) #24
end_hunk_10
begin_hunk_11_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1b_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3z_5error5ErrorEEs_0B2T_ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [176 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_11
begin_hunk_12_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1b_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3z_5error5ErrorEEs_0B2T_ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
.noexc:                                           ; preds = %bb.g
  %i.t = load ptr, ptr %i.a, align 8, !noalias !550, !nonnull !7, !noundef !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !noalias !550, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !550
end_hunk_12
begin_hunk_13_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1b_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3z_5error5ErrorEEs_0B2T_ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3W_5error5ErrorEEs_0B3g_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.w, 0
  %i.aa = extractvalue { i64, ptr } %i.w, 1       ; 2 uses
  %2 = load ptr, ptr %i.c, align 8, !noalias !550, !nonnull !7, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !562
  store ptr %2, ptr %i.f, align 8, !noalias !562
  %i.ab = trunc nuw i64 %i.z to i1
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false
end_hunk_13
begin_hunk_14_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1b_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3z_5error5ErrorEEs_0B2T_ECsj34PGqTgg0L_16deltalake_lakefs:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %2

bb.u:                                             ; preds = %bb.v, %.body
  %i.an = landingpad { ptr, i32 }
end_hunk_14
