inline.NumInlined: 60
inline.NumDeleted: 41
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs:bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs6KaIMXx2hZw_14deltalake_hdfs.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !4, !align !22, !noundef !4 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !23, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #15
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !23, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #15
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #15
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs6KaIMXx2hZw_14deltalake_hdfs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtCs2pqxYH9ZEk8_3std2io19default_read_to_end16small_probe_readINtB4_4TakeNtNtB6_2fs4FileEECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !28, !noalias !31, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.noexc, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit
  %i.f = phi i64 [ %i.c, %.lr.ph ], [ %i.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit ]
  %.sroa.0.0.i.i = call noundef range(i64 1, 33) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.f, i64 32)
  %i.g = call { i64, ptr } @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read4read(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.e, ptr noalias noundef nonnull %i.a, i64 noundef %.sroa.0.0.i.i) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 14 uses
  %i.j = trunc nuw i64 %i.h to i1
  %i.k = ptrtoint ptr %i.i to i64                 ; 5 uses
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.b, align 8, !alias.scope !28, !noalias !31, !noundef !4 ; 2 uses
  %.not.i = icmp ult i64 %i.l, %i.k
  br i1 %.not.i, label %bb.d, label %.loopexit, !prof !5

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #16
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = and i64 %i.k, 3
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %bb.i
    i64 3, label %bb.l
    i64 0, label %bb.j
    i64 1, label %bb.k
  ], !prof !20

default.unreachable:                              ; preds = %bb.e
  unreachable

.loopexit:                                        ; preds = %bb.c
  %i.n = sub nuw i64 %i.l, %i.k
  store i64 %i.n, ptr %i.b, align 8, !alias.scope !28, !noalias !31
  %i.o = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.p = icmp ult ptr %i.i, inttoptr (i64 33 to ptr)
  br i1 %i.p, label %.noexc, label %bb.f, !prof !33

bb.f:                                             ; preds = %.loopexit
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.o, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13
  unreachable

.noexc:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit, %bb.a, %.loopexit
  %i.q = phi i64 [ %i.o, %.loopexit ], [ 0, %bb.a ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit ] ; 3 uses
  %.sroa.4.0.i.ph65 = phi ptr [ %i.i, %.loopexit ], [ null, %bb.a ], [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit ] ; 2 uses
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !34, !noundef !4 ; 3 uses
  %i.t = icmp sgt i64 %i.s, -1
  call void @llvm.assume(i1 %i.t)
  %.not.i5 = icmp eq ptr %.sroa.4.0.i.ph65, null
  br i1 %.not.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !34, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.a, i64 %i.q, i1 false)
  %.pre.i = load i64, ptr %i.r, align 8, !alias.scope !34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc
  %i.x = phi i64 [ %.pre.i, %bb.g ], [ %i.s, %.noexc ]
  %i.y = add i64 %i.x, %i.q
  store i64 %i.y, ptr %i.r, align 8, !alias.scope !34
  br label %.loopexit48

.loopexit48:                                      ; preds = %bb.l, %bb.i, %bb.k, %bb.j, %bb.h
  %.sroa.3.0 = phi ptr [ %.sroa.4.0.i.ph65, %bb.h ], [ %i.i, %bb.j ], [ %i.i, %bb.k ], [ %i.i, %bb.i ], [ %i.i, %bb.l ]
  %.sroa.0.0 = phi i64 [ 0, %bb.h ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.i ], [ 1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.aa = insertvalue { i64, ptr } %i.z, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.aa

bb.i:                                             ; preds = %bb.e
  %.mask47 = and i64 %i.k, -4294967296
  %i.ab = icmp eq i64 %.mask47, 17179869184
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %.loopexit48

bb.j:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !range !21, !noundef !4
  %i.ae = icmp eq i8 %i.ad, 35
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %.loopexit48

bb.k:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %i.i, i64 15
  %i.ag = load i8, ptr %i.af, align 8, !range !21, !noundef !4
  %i.ah = icmp eq i8 %i.ag, 35
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %.loopexit48

bb.l:                                             ; preds = %bb.e
  %i.ai = icmp ult ptr %i.i, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.ai)
  %.mask = and i64 %i.k, -4294967296
  %i.aj = icmp eq i64 %.mask, 150323855360
  br i1 %i.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %.loopexit48

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.j, %bb.k, %bb.i, %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs(ptr nonnull %i.i)
  %i.ak = load i64, ptr %i.b, align 8, !alias.scope !28, !noalias !31, !noundef !4 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.noexc, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB4o_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7v_8for_each4callB6o_NCINvMsj_NtB4V_3vecINtB8L_3VecB6o_E14extend_trustedBN_E0E0ECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5Q_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB6n_3vecINtB92_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !22, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !22, !noundef !4 ; 2 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ap, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aq, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.01.0.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.s = load ptr, ptr %i.n, align 8, !noalias !47, !nonnull !4, !noundef !4
  %i.t = load i64, ptr %i.o, align 8, !noalias !47, !noundef !4
  %i.u = invoke noundef i64 @_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB1p_11ObjectStore10get_ranges00NtB1p_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3O_ENtNtB5_6marker4SendEL_EEE000ECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !49

.noexc.i:                                         ; preds = %bb.c
  %i.v = add i64 %i.u, -1                         ; 5 uses
  %i.w = load i64, ptr %i.o, align 8, !noalias !50, !noundef !4 ; 2 uses
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %.invoke

bb.d:                                             ; preds = %.noexc.i
  %i.y = load i64, ptr %i.p, align 8, !noalias !50, !noundef !4 ; 2 uses
  %i.z = icmp ult i64 %i.v, %i.y
  br i1 %i.z, label %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB2w_ENtNtB2M_6marker4SendEL_EEE00Cs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i, label %.invoke

.invoke:                                          ; preds = %bb.d, %.noexc.i
  %i.aa = phi i64 [ %i.w, %.noexc.i ], [ %i.y, %bb.d ]
  %i.ab = phi ptr [ @6, %.noexc.i ], [ @7, %bb.d ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #16
          to label %.cont unwind label %.loopexit.split-lp.i, !noalias !49

.cont:                                            ; preds = %.invoke
  unreachable

_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB2w_ENtNtB2M_6marker4SendEL_EEE00Cs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i: ; preds = %bb.d
  %i.ac = load ptr, ptr %i.q, align 8, !noalias !50, !nonnull !4, !noundef !4
  %i.ad = load ptr, ptr %i.n, align 8, !noalias !50, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.v
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.v ; 2 uses
  %i.ag = load i64, ptr %i.r, align 8, !alias.scope !51, !noalias !52, !noundef !4
  %i.ah = load i64, ptr %i.ae, align 8, !noalias !52, !noundef !4 ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !51, !noalias !52, !noundef !4
  %i.al = sub i64 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noalias !52, !noundef !4
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %i.al)
  invoke void @_RINvMNtCs9Ct3XQYJhun_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.af, i64 noundef %i.ai, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %bb.e unwind label %.loopexit.i, !noalias !49

bb.e:                                             ; preds = %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB2w_ENtNtB2M_6marker4SendEL_EEE00Cs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !53
  %i.ap = add i64 %.val15.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40
  %i.aq = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.m
  br i1 %i.ar, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5Q_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB6n_3vecINtB92_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %bb.c

.loopexit.i:                                      ; preds = %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB2w_ENtNtB2M_6marker4SendEL_EEE00Cs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i, %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %.invoke
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !49
  resume { ptr, i32 } %lpad.phi.i

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5Q_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB6n_3vecINtB92_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ap, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !49
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1P_ENCINvMs6_NtCs387lRdTAbEW_11hdfs_native6clientNtB2F_13ClientBuilder11with_configRB1P_B3N_RINtB10_7HashMapB1P_B1P_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4o_8for_each4callTB1P_B1P_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5L_7HashMapB1P_B1P_NtNtNtB16_4hash6random11RandomStateEINtNtB4s_7collect6ExtendB5r_E6extendBN_E0E0ECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBL_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1x_8adapters3map8map_foldTRBL_B32_ETBL_BL_EuNCINvMs6_NtCs387lRdTAbEW_11hdfs_native6clientNtB3t_13ClientBuilder11with_configB32_B32_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBL_BL_EE0NCINvNvB1r_8for_each4callB3b_NCINvXs1i_B6_INtB6_7HashMapBL_BL_NtNtNtB4T_4hash6random11RandomStateEINtNtB1v_7collect6ExtendB3b_E6extendINtB2x_3MapINtB4N_4IterBL_BL_EB3k_EE0E0E0ECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef ptr @_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %.val, null
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs(ptr nonnull %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit
  ret i1 %.not

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.c, align 8
  resume { ptr, i32 } %i.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.b, %bb.c
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write10write_charCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !58
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !58
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !58
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !58
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !58
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !58
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !58
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !61, !noalias !64, !nonnull !4, !noundef !4
  %i.ac = call noundef ptr @_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i), !noalias !61 ; 3 uses
  %.not.i = icmp ne ptr %i.ac, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCs6KaIMXx2hZw_14deltalake_hdfs.exit

bb.h:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !61, !noalias !64, !noundef !4 ; 2 uses
  %i.ae = icmp eq ptr %.val.i, null
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs(ptr nonnull %.val.i)
end_hunk_0
