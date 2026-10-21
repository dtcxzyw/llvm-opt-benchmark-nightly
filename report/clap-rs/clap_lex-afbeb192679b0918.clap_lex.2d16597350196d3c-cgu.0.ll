Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_lex-afbeb192679b0918.clap_lex.2d16597350196d3c-cgu.0?download=true
inline.NumInlined: 117
inline.NumDeleted: 75
begin_hunk_0_@_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs9from_args:bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !79
  %i.k = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.j, i64 noundef 8) #23, !noalias !79 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.10.0.ph.i.i.i.i = phi i64 [ %i.j, %bb.c ], [ undef, %bb.b ]
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i) #24, !noalias !77
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i: ; preds = %bb.c
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, i64 16, i1 false), !noalias !77
  store i64 %.sroa.0.0.copyload1.i.i.i.i, ptr %i.k, align 8, !noalias !77
  store i64 %..i.i.i.i, ptr %i.a, align 8, !noalias !77
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !77
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.m = icmp eq ptr %i.d, %.sroa.611.0.copyload.i
  br i1 %i.m, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i, %bb.h
  %i.n = phi ptr [ %i.af, %bb.h ], [ %i.k, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ]
  %i.o = phi i64 [ %i.ah, %bb.h ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ] ; 6 uses
  %.val1011.i.i.i.i.i = phi ptr [ %i.p, %bb.h ], [ %i.d, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %.val1011.i.i.i.i.i, align 8, !noalias !82 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, i64 16, i1 false), !noalias !83
  %i.q = icmp samesign ult i64 %i.o, 384307168202282326
  tail call void @llvm.assume(i1 %i.q)
  %i.r = load i64, ptr %i.a, align 8, !range !5, !alias.scope !84, !noalias !77, !noundef !6
  %i.s = icmp eq i64 %i.o, %i.r
  br i1 %i.s, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i, label %bb.h

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i: ; preds = %bb.h, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %.sroa.6.0.copyload512.i = phi i64 [ %i.ah, %bb.h ], [ %i.o, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ]
  %.pre17.i.i.i = ptrtoint ptr %i.p to i64
  %.pre18.i.i.i = sub nuw i64 %i.e, %.pre17.i.i.i
  %.pre20.i.i.i = udiv exact i64 %.pre18.i.i.i, 24
  br label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i: ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i
  %.sroa.6.0.copyload5.i = phi i64 [ %.sroa.6.0.copyload512.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ]
  %.pre-phi21.i.i.i = phi i64 [ %.pre20.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ]
  %.val.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i ], [ %i.d, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.t = icmp eq ptr %.sroa.611.0.copyload.i, %.val.i.i.i.i.i.i.i.i.i.i
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !range !5, !alias.scope !85, !noalias !86, !noundef !6 ; 2 uses
  %i.w = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !85, !noalias !86, !nonnull !6, !noundef !6
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !87
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.y = icmp eq i64 %i.v, %.pre-phi21.i.i.i
  br i1 %i.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i
  %i.z = icmp eq i64 %.sroa.510.0.copyload.i, 0
  br i1 %i.z, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i) ]
  %i.aa = mul nuw i64 %.sroa.510.0.copyload.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !86
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ab = ptrtoint ptr %i.p to i64
  %i.ac = sub nuw i64 %i.e, %i.ab
  %i.ad = udiv exact i64 %i.ac, 24
  %i.ae = add nuw nsw i64 %i.ad, 1
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3RZUOUhPFQ6_8clap_lex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.o, i64 noundef range(i64 1, 0) %i.ae) #23
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !84, !noalias !77
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i, %bb.e
  %i.af = phi ptr [ %.pre.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i ], [ %i.n, %bb.e ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.o ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i, i64 16, i1 false), !noalias !83
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.ag, align 8, !noalias !83
  %i.ah = add nuw nsw i64 %i.o, 1                 ; 3 uses
  store i64 %i.ah, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !84, !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  %i.ai = icmp eq ptr %i.p, %.sroa.611.0.copyload.i
  br i1 %i.ai, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i: ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload1.i = load i64, ptr %i.a, align 8, !noalias !88
  %.sroa.5.0.copyload3.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !77
  br label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit

bb.i:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, %bb.a
  %.val.i.i.i.i.i.i.i.i = phi ptr [ %i.d, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i ], [ %.sroa.4.0.copyload.i, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !77
  %i.aj = ptrtoint ptr %.sroa.611.0.copyload.i to i64
  %i.ak = ptrtoint ptr %.val.i.i.i.i.i.i.i.i to i64
  %i.al = sub nuw i64 %i.aj, %i.ak
  %i.am = udiv exact i64 %i.al, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.an = icmp eq ptr %.sroa.611.0.copyload.i, %.val.i.i.i.i.i.i.i.i
  br i1 %i.an, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ap, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !range !5, !alias.scope !89, !noalias !90, !noundef !6 ; 2 uses
  %i.aq = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ar = getelementptr i8, ptr %i.ao, i64 8
  %.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !89, !noalias !90, !nonnull !6, !noundef !6
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !91
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.as = icmp eq i64 %i.ap, %i.am
  br i1 %i.as, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i.i, %bb.i
  %i.at = icmp eq i64 %.sroa.510.0.copyload.i, 0
  br i1 %i.at, label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i) ]
  %i.au = mul nuw i64 %.sroa.510.0.copyload.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !90
  br label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit

_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i, %bb.k
  %.sroa.6.0.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.k ], [ %.sroa.6.0.copyload5.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i ]
  %.sroa.5.0.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.k ], [ %.sroa.5.0.copyload3.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i ]
  %.sroa.0.0.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs3RZUOUhPFQ6_8clap_lex.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.k ], [ %.sroa.0.0.copyload1.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !74
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !74
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs9remaining(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !6   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 6 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.a
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.c
  %i.i = icmp ult i64 %i.c, 384307168202282326
  tail call void @llvm.assume(i1 %i.i)
  store i64 %i.c, ptr %1, align 8
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.h, 1
  ret { ptr, ptr } %i.k

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %i.c, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg18is_negative_number(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !99, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !99, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !100
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d) #23, !noalias !100
  %i.e = load i64, ptr %i.a, align 8, !range !7, !noalias !100, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !100, !nonnull !6 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noalias !100 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100
  %.not.i.i = icmp eq i64 %i.j, 0
  %or.cond = select i1 %i.f, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3RZUOUhPFQ6_8clap_lex.exit.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3RZUOUhPFQ6_8clap_lex.exit.i: ; preds = %bb.a
  %rhsc.i = load i8, ptr %i.h, align 1, !alias.scope !101
  %i.k = icmp eq i8 %rhsc.i, 45
  br i1 %i.k, label %bb.b, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread

bb.b:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3RZUOUhPFQ6_8clap_lex.exit.i
  %i.l = add i64 %i.j, -1                         ; 2 uses
  %i.m = getelementptr i8, ptr %i.h, i64 %i.j
  %i.n = icmp samesign eq i64 %i.l, 0
  br i1 %i.n, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !102, !noundef !6
  %i.q = add i8 %i.p, -48
  %or.cond16.peel.i.i = icmp ult i8 %i.q, 10
  br i1 %or.cond16.peel.i.i, label %bb.c, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread

bb.c:                                             ; preds = %.lr.ph.preheader.i.i
  %i.r = icmp samesign eq i64 %i.l, 1
  br i1 %i.r, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.preheader.i
  %.sroa.03.029.i.i = phi i1 [ %.sroa.03.1.i.i, %bb.f ], [ false, %.lr.ph.i.preheader.i ] ; 4 uses
  %.sroa.6.028.i.i = phi i64 [ %.sroa.6.1.i.i, %bb.f ], [ undef, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.08.027.i.i = phi i64 [ %.sroa.08.1.i.i, %bb.f ], [ 0, %.lr.ph.i.preheader.i ] ; 4 uses
  %.sroa.0.01726.i.i = phi ptr [ %i.t, %bb.f ], [ %i.s, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.8.025.i.i = phi i64 [ %i.u, %bb.f ], [ 1, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.01726.i.i, i64 1 ; 2 uses
  %i.u = add nuw i64 %.sroa.8.025.i.i, 1
  %i.v = load i8, ptr %.sroa.0.01726.i.i, align 1, !alias.scope !102, !noundef !6 ; 2 uses
  %i.w = add i8 %i.v, -48
  %or.cond16.i.i = icmp ult i8 %i.w, 10
  br i1 %or.cond16.i.i, label %bb.f, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.f
  %i.x = trunc nuw i64 %.sroa.08.1.i.i to i1
  br i1 %i.x, label %bb.d, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.y = add i64 %i.j, -2
  %i.z = icmp ne i64 %.sroa.6.1.i.i, %i.y
  br label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread

bb.e:                                             ; preds = %.lr.ph.i.i
  switch i8 %i.v, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread [
    i8 46, label %bb.g
    i8 101, label %bb.h
    i8 69, label %bb.i
  ]

bb.f:                                             ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph.i.i
  %.sroa.08.1.i.i = phi i64 [ %.sroa.08.027.i.i, %.lr.ph.i.i ], [ 0, %bb.g ], [ 1, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %.sroa.6.1.i.i = phi i64 [ %.sroa.6.028.i.i, %.lr.ph.i.i ], [ %.sroa.6.028.i.i, %bb.g ], [ %.sroa.8.025.i.i, %bb.i ], [ %.sroa.8.025.i.i, %bb.h ] ; 2 uses
  %.sroa.03.1.i.i = phi i1 [ %.sroa.03.029.i.i, %.lr.ph.i.i ], [ true, %bb.g ], [ %.sroa.03.029.i.i, %bb.i ], [ %.sroa.03.029.i.i, %bb.h ]
  %i.aa = icmp eq ptr %i.t, %i.m
  br i1 %i.aa, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

bb.g:                                             ; preds = %bb.e
  %.not38.i.i = icmp eq i64 %.sroa.08.027.i.i, 1
  %or.cond.i.i = select i1 %.sroa.03.029.i.i, i1 true, i1 %.not38.i.i
  br i1 %or.cond.i.i, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread, label %bb.f

bb.h:                                             ; preds = %bb.e
  %.not37.i.i = icmp eq i64 %.sroa.08.027.i.i, 1
  br i1 %.not37.i.i, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread, label %bb.f

bb.i:                                             ; preds = %bb.e
  %.not.i5.i = icmp eq i64 %.sroa.08.027.i.i, 1
  br i1 %.not.i5.i, label %_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread, label %bb.f

_RNCNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB7_9ParsedArg18is_negative_number0B7_.exit.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3RZUOUhPFQ6_8clap_lex.exit.i, %bb.b, %.lr.ph.preheader.i.i, %bb.c, %bb.d, %._crit_edge.i.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %._crit_edge.i.i ], [ false, %.lr.ph.preheader.i.i ], [ true, %bb.c ], [ %i.z, %bb.d ], [ false, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3RZUOUhPFQ6_8clap_lex.exit.i ], [ true, %bb.b ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7display(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  tail call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7is_long(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %.not.i.i = icmp samesign ult i64 %i.c, 2
  br i1 %.not.i.i, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit.thread, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit: ; preds = %bb.a
  %i.d = load i16, ptr %i.a, align 1
  %i.e = icmp ne i16 11565, %i.d
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit.thread

bb.b:                                             ; preds = %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit
  %i.h = icmp eq i64 %i.c, 2
  br i1 %i.h, label %bb.c, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit.thread

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit.thread: ; preds = %bb.a, %bb.c, %bb.b, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit ], [ %i.j, %bb.c ], [ true, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.i = load i16, ptr %i.a, align 1
  %i.j = icmp ne i16 %i.i, 11565                  ; 2 uses
  %i.k = zext i1 %i.j to i32                      ; 0 uses
  br label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit.thread
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7to_long(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 3 uses
  %.not.i.i = icmp samesign ult i64 %i.c, 2
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 5 uses
  %i.f = add nsw i64 %i.c, -2                     ; 8 uses
  %i.g = load i16, ptr %i.d, align 1
  %i.h = icmp ne i16 %i.g, 11565
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.f, 0
  br i1 %i.k, label %bb.h, label %.critedge.preheader.i.i.i

bb.d:                                             ; preds = %bb.a, %bb.b
  store i64 2, ptr %0, align 8
  br label %bb.k

.critedge.preheader.i.i.i:                        ; preds = %bb.c
  %i.l = add nsw i64 %i.c, -3                     ; 4 uses
  %.not.i.i22 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i22, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.preheader.i.i.i, %.critedge.backedge.i.i.i
  %i.m = phi i64 [ %i.p, %.critedge.backedge.i.i.i ], [ 0, %.critedge.preheader.i.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %rhsc = load i8, ptr %i.n, align 1
  %rhsc.fr = freeze i8 %rhsc
  %i.o = icmp eq i8 %rhsc.fr, 61
  br i1 %i.o, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i, label %.critedge.backedge.i.i.i

.critedge.backedge.i.i.i:                         ; preds = %.lr.ph.i.i.i
  %i.p = add nuw i64 %i.m, 1                      ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.p, %i.l
  br i1 %exitcond.not.i.i.i, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i, label %.lr.ph.i.i.i

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i: ; preds = %.critedge.backedge.i.i.i, %.critedge.preheader.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %rhsc39 = load i8, ptr %i.q, align 1
  %rhsc39.fr = freeze i8 %rhsc39
  %i.r = icmp eq i8 %rhsc39.fr, 61
  br i1 %i.r, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i, label %bb.j

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i: ; preds = %.lr.ph.i.i.i, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i
  %.sroa.4.1.i11.i = phi i64 [ %i.l, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i ], [ %i.m, %.lr.ph.i.i.i ] ; 4 uses
  %i.s = add i64 %.sroa.4.1.i11.i, 1              ; 4 uses
  %.not.i23 = icmp ugt i64 %.sroa.4.1.i11.i, %i.f
  br i1 %.not.i23, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.4.1.i11.i, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !107
  unreachable

bb.f:                                             ; preds = %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.thread.i
  %i.t = icmp ugt i64 %i.s, %i.f
  br i1 %i.t, label %bb.g, label %bb.i, !prof !9

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.s, i64 noundef %i.f, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22, !noalias !107
  unreachable

bb.h:                                             ; preds = %bb.c
  store i64 2, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.u = sub nuw nsw i64 %i.f, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.s
  br label %bb.j

bb.j:                                             ; preds = %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i, %bb.i
  %.sroa.3.0 = phi i64 [ %i.u, %bb.i ], [ undef, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i ]
  %.sroa.012.0 = phi ptr [ %i.v, %bb.i ], [ null, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i ]
  %.sroa.68.0 = phi i64 [ %.sroa.4.1.i11.i, %bb.i ], [ %i.f, %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt4find.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %.sroa.68.0) #23
  %i.w = load i64, ptr %i.a, align 8, !range !7, !noundef !6 ; 2 uses
  %i.x = trunc nuw i64 %i.w to i1                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = load i64, ptr %i.aa, align 8
  %.sroa.515.0 = select i1 %i.x, i64 %.sroa.68.0, i64 %i.ab
  %.sroa.314.0 = select i1 %i.x, ptr %i.e, ptr %i.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.w, ptr %0, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.314.0, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.515.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.012.0, ptr %.sroa.620.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.3.0, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.h, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg8is_short(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit.thread, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit

_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit: ; preds = %bb.a
  %rhsc = load i8, ptr %i.a, align 1
  %i.d = icmp ne i8 %rhsc, 45
  %i.e = icmp eq i64 %i.c, 1
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt11starts_with.exit.thread, label %bb.b
end_hunk_0
