Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2_node.iox2_node.6907d9118056f320-cgu.12?download=true
inline.NumInlined: 223
inline.NumDeleted: 117
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtNtCs5WK5l2q0aFk_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatEECs914H3uZQmS2_9iox2_node:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs914H3uZQmS2_9iox2_node, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCs5WK5l2q0aFk_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i8, ptr %i.g, align 8, !range !23, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j0_ECs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j1_ECs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %2, align 8, !alias.scope !33, !nonnull !5, !noundef !5
  %.sroa.5.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa_idx, align 8, !alias.scope !33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.a = tail call { ptr, i64 } @_RNvXsk_NtNtCs5WK5l2q0aFk_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.4.0.copyload) #21, !noalias !35 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !34
  br label %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECs914H3uZQmS2_9iox2_node.exit

bb.c:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.a, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !36, !noundef !5 ; 3 uses
  %i.h = load i64, ptr %1, align 8, !range !8, !alias.scope !36, !noundef !5
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCs914H3uZQmS2_9iox2_node.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #23, !noalias !37
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCs914H3uZQmS2_9iox2_node.exit.i

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCs914H3uZQmS2_9iox2_node.exit.i: ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !36, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.g ; 2 uses
  store ptr %i.b, ptr %i.l, align 8, !noalias !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.e, ptr %i.m, align 8, !noalias !38
  %i.n = add i64 %i.g, 1
  store i64 %i.n, ptr %i.f, align 8, !alias.scope !36
  br label %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECs914H3uZQmS2_9iox2_node.exit

_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECs914H3uZQmS2_9iox2_node.exit: ; preds = %bb.b, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCs914H3uZQmS2_9iox2_node.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCscPfSGRvVnao_9hashbrown3rawINtB6_8RawTableTNtNtCsbqH9stoieM8_5alloc6string6StringNtNtNtCs8FOSrxU71ur_3ron3ser9path_meta5FieldEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsigunbJSLHCW_3std4hash6random11RandomStateE0ECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !65, !noundef !5 ; 6 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !65, !noundef !5 ; 11 uses
  %i.h = icmp ult i64 %i.g, 8
  %i.i = add i64 %i.g, 1                          ; 6 uses
  %i.j = lshr i64 %i.i, 3
  %i.k = mul nuw i64 %i.j, 7
  %.sroa.03.0.i = select i1 %i.h, i64 %i.g, i64 %i.k ; 3 uses
  %i.l = lshr i64 %.sroa.03.0.i, 1
  %.not.i.not = icmp ult i64 %i.d, %i.l
  br i1 %.not.i.not, label %bb.o, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = tail call { i64, i64 } @_RNvMNtCscPfSGRvVnao_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true) #21, !noalias !66
  %i.n = extractvalue { i64, i64 } %i.m, 0
  br label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit

bb.d:                                             ; preds = %bb.b
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %.sroa.03.0.i) ; 4 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68
  %i.q = icmp ult i64 %i.o, 14
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ugt i64 %i.o, 2305843009213693950
  br i1 %i.r, label %bb.l, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.s = shl nuw i64 %i.p, 3
  %i.t = udiv i64 %i.s, 7
  %i.u = add nsw i64 %i.t, -1
  %i.v = tail call range(i64 2, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 false)
  %i.w = sub nuw nsw i64 64, %i.v
  %i.x = shl nuw nsw i64 1, %i.w
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.y = icmp samesign ult i64 %i.o, 3
  %i.z = and i64 %i.p, 8
  %..i.i = add nuw nsw i64 %i.z, 8
  %.sroa.03.0.i.i = select i1 %i.y, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.x, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.aa = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 96) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.j, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  %i.ac = extractvalue { i64, i1 } %i.aa, 0       ; 3 uses
  %i.ad = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ae = add i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  %i.ag = icmp ugt i64 %i.ae, 9223372036854775792
  %or.cond.i.i = or i1 %i.af, %i.ag
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i, !prof !10

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !69
  %i.ah = tail call noundef align 16 ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !69 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = tail call { i64, i64 } @_RNvMNtCscPfSGRvVnao_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true) #21, !noalias !69
  br label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit.thread

bb.k:                                             ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i
  %i.ak = tail call { i64, i64 } @_RNvMNtCscPfSGRvVnao_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ae) #21, !noalias !69
  br label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.al = tail call { i64, i64 } @_RNvMNtCscPfSGRvVnao_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true) #21, !noalias !70
  br label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit.thread

_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit: ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ac ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.am, i8 -1, i64 %i.ad, i1 false), !noalias !70
  %i.an = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ao = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.ap = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.aq = mul nuw nsw i64 %i.ap, 7
  %.sroa.07.0.i.i = select i1 %i.an, i64 %i.ao, i64 %i.aq ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !noalias !68
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 96, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !68
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !68
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.am, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !68
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.ao, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  %i.ar = icmp eq i64 %i.d, 0
  br i1 %i.ar, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit
  %i.as = load ptr, ptr %0, align 8, !alias.scope !71, !nonnull !5, !noundef !5 ; 3 uses
  %.val430 = load <16 x i8>, ptr %i.as, align 16
  %i.at = icmp sgt <16 x i8> %.val430, splat (i8 -1)
  %i.au = bitcast <16 x i1> %i.at to i16
  br label %.preheader

_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.al, %bb.l ], [ %i.aj, %bb.j ], [ %i.ak, %bb.k ]
  %.sroa.7.029 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68
  br label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.014.044 = phi ptr [ %i.as, %.preheader.lr.ph ], [ %.sroa.014.1.lcssa, %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.043 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.042 = phi i64 [ %i.d, %.preheader.lr.ph ], [ %i.be, %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.041 = phi i16 [ %i.au, %.preheader.lr.ph ], [ %i.bc, %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i136 = icmp eq i16 %.sroa.13.041, 0
  br i1 %.not.i136, label %.lr.ph, label %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.014.138 = phi ptr [ %i.av, %.lr.ph ], [ %.sroa.014.044, %.preheader ] ; 2 uses
  %.sroa.5.137 = phi i64 [ %i.ay, %.lr.ph ], [ %.sroa.5.043, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.014.138) ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.014.138, i64 16 ; 3 uses
  %.val331 = load <16 x i8>, ptr %i.av, align 16
  %i.aw = icmp sgt <16 x i8> %.val331, splat (i8 -1)
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %i.ay = add i64 %.sroa.5.137, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.ax, 0
  br i1 %.not.i1, label %.lr.ph, label %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit: ; preds = %.lr.ph, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.041, %.preheader ], [ %i.ax, %.lr.ph ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.043, %.preheader ], [ %i.ay, %.lr.ph ] ; 2 uses
  %.sroa.014.1.lcssa = phi ptr [ %.sroa.014.044, %.preheader ], [ %i.av, %.lr.ph ]
  %i.az = add i16 %.sroa.13.1.lcssa, -1
  %i.ba = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = and i16 %i.az, %.sroa.13.1.lcssa
  %i.bd = add i64 %.sroa.5.1.lcssa, %i.bb         ; 2 uses
  %i.be = add i64 %.sroa.9.042, -1                ; 2 uses
  %i.bf = sub nsw i64 0, %i.bd
  %i.bg = getelementptr inbounds [96 x i8], ptr %i.as, i64 %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -96
  %i.bi = tail call noundef i64 @_RINvYNtNtNtCsigunbJSLHCW_3std4hash6random11RandomStateNtNtCs8Chj7Szqq0n_4core4hash11BuildHasher8hash_oneRNtNtCsbqH9stoieM8_5alloc6string6StringECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bh) #21, !noalias !72 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ao, %i.bi            ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bj, align 1, !noalias !73
  %i.bk = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bl, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !74

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bl, %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %i.cc, %.lr.ph.i ]
  %i.bm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64
  %i.bo = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.bn
  %i.bp = and i64 %i.bo, %i.ao                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noundef !5
  %i.bs = icmp sgt i8 %i.br, -1
  br i1 %i.bs, label %bb.m, label %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !9

bb.m:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.am, align 16
  %i.bt = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.bu = bitcast <16 x i1> %i.bt to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bu, 0
  %i.bv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bu, i1 true)
  %i.bw = zext nneg i16 %i.bv to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.bx = phi i64 [ %i.by, %.lr.ph.i ], [ 0, %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.by = add i64 %i.bx, 16                       ; 2 uses
  %i.bz = add i64 %i.by, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.bz, %i.ao            ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ca, align 1, !noalias !73
  %i.cb = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cc = bitcast <16 x i1> %i.cb to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cc, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !75

_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.m
  %.sroa.0.0.i5.i = phi i64 [ %i.bw, %bb.m ], [ %i.bp, %._crit_edge.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.0.0.i5.i
  %i.ce = lshr i64 %i.bi, 57
  %i.cf = trunc nuw nsw i64 %i.ce to i8           ; 2 uses
  %i.cg = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.ch = and i64 %i.cg, %i.ao
  store i8 %i.cf, ptr %i.cd, align 1
  %i.ci = getelementptr i8, ptr %i.am, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 %i.cf, ptr %i.cj, align 1
  %i.ck = load ptr, ptr %0, align 8, !alias.scope !71, !nonnull !5, !noundef !5
  %.neg.i.i = mul i64 %i.bd, -96
  %i.cl = getelementptr i8, ptr %i.ck, i64 %.neg.i.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 -96
  %.neg59.i.i = mul i64 %.sroa.0.0.i5.i, -96
  %i.cn = getelementptr i8, ptr %i.am, i64 %.neg59.i.i
  %i.co = getelementptr i8, ptr %i.cn, i64 -96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.co, ptr noundef nonnull align 1 dereferenceable(96) %i.cm, i64 96, i1 false)
  %i.cp = icmp eq i64 %i.be, 0
  br i1 %i.cp, label %._crit_edge.loopexit, label %.preheader

._crit_edge.loopexit:                             ; preds = %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.c, align 8, !alias.scope !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit
  %i.cq = phi i64 [ %.pre, %._crit_edge.loopexit ], [ 0, %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit ] ; 2 uses
  %i.cr = sub i64 %.sroa.07.0.i.i, %i.cq
  store i64 %i.cr, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  store i64 %i.cq, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  call void @_RINvNvNtCs8Chj7Szqq0n_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs914H3uZQmS2_9iox2_node(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !78 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !78 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !78, !noundef !5 ; 3 uses
  %i.cs = icmp eq i64 %.val3.i.i, 0
  br i1 %i.cs, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCscPfSGRvVnao_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbqH9stoieM8_5alloc5alloc6GlobalE0EECs914H3uZQmS2_9iox2_node.exit, label %_RNvMs1_NtCscPfSGRvVnao_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCscPfSGRvVnao_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !78
  %i.ct = add i64 %.val3.i.i, 1
  %i.cu = mul nuw i64 %.val.i.i, %i.ct            ; 2 uses
  %i.cv = add i64 %.val1.i.i, -1
  %i.cw = add i64 %i.cv, %i.cu                    ; 2 uses
  %i.cx = icmp uge i64 %i.cw, %i.cu
  call void @llvm.assume(i1 %i.cx)
  %i.cy = sub i64 0, %.val1.i.i
  %i.cz = and i64 %i.cw, %i.cy                    ; 3 uses
  %i.da = add i64 %.val3.i.i, 17
  %i.db = add i64 %i.da, %i.cz                    ; 4 uses
  %i.dc = icmp uge i64 %i.db, %i.cz
  %i.dd = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.de = icmp ule i64 %i.db, %i.dd
  call void @llvm.assume(i1 %i.dc)
  call void @llvm.assume(i1 %i.de)
  %i.df = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.df)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.dg = icmp eq i64 %i.db, 0
  br i1 %i.dg, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCscPfSGRvVnao_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbqH9stoieM8_5alloc5alloc6GlobalE0EECs914H3uZQmS2_9iox2_node.exit, label %bb.n

bb.n:                                             ; preds = %_RNvMs1_NtCscPfSGRvVnao_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.dh = sub nsw i64 0, %i.cz
  %i.di = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.dh
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.di, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #21, !noalias !78
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCscPfSGRvVnao_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbqH9stoieM8_5alloc5alloc6GlobalE0EECs914H3uZQmS2_9iox2_node.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCscPfSGRvVnao_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbqH9stoieM8_5alloc5alloc6GlobalE0EECs914H3uZQmS2_9iox2_node.exit: ; preds = %._crit_edge, %_RNvMs1_NtCscPfSGRvVnao_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68
  br label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %.val25.i = load ptr, ptr %0, align 8, !alias.scope !79 ; 19 uses
  %.not6.i.i = icmp eq i64 %i.i, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i, label %.lr.ph.i.i

_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  br label %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.dj = lshr i64 %i.i, 4
  %i.dk = and i64 %i.i, 15
  %.not10.i.i.i.i = icmp ne i64 %i.dk, 0
  %i.dl = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dj, %i.dl ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dm = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dm, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.p

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.du, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod15 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.dn = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dn, align 16, !noalias !79
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.do = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dp = or <2 x i64> %i.do, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dp, ptr %i.dn, align 16, !noalias !79
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %..i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 16)
  %.20.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 16)
  %i.dq = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr nonnull align 1 %.val25.i, i64 %.20.i, i1 false), !noalias !79
  br label %.lr.ph.i9

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.du, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dr, align 16, !noalias !79
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.ds = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.dt = or <2 x i64> %i.ds, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dt, ptr %i.dr, align 16, !noalias !79
  %i.du = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.dw, align 16, !noalias !79
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.dx = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.dy = or <2 x i64> %i.dx, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dy, ptr %i.dw, align 16, !noalias !79
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

.lr.ph.i9:                                        ; preds = %bb.x, %._crit_edge.i.i
  %.sroa.014.04.i = phi i64 [ %i.dz, %bb.x ], [ 0, %._crit_edge.i.i ] ; 7 uses
  %i.dz = add nuw i64 %.sroa.014.04.i, 1          ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.014.04.i ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !noalias !79, !noundef !5
  %.not.i10 = icmp eq i8 %i.eb, -128
  br i1 %.not.i10, label %bb.q, label %bb.x

bb.q:                                             ; preds = %.lr.ph.i9
  %.neg.i = mul i64 %i.dz, -96
  %i.ec = getelementptr inbounds i8, ptr %.val25.i, i64 %.neg.i ; 2 uses
  %i.ed = sub nsw i64 0, %.sroa.014.04.i
  %i.ee = getelementptr inbounds [96 x i8], ptr %.val25.i, i64 %i.ed
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -96
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %bb.q
  %i.eg = tail call noundef i64 @_RINvYNtNtNtCsigunbJSLHCW_3std4hash6random11RandomStateNtNtCs8Chj7Szqq0n_4core4hash11BuildHasher8hash_oneRNtNtCsbqH9stoieM8_5alloc6string6StringECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ef) #21, !noalias !80 ; 3 uses
  %.sroa.0.07.i.i = and i64 %i.eg, %i.g           ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.eh, align 1, !noalias !81
  %i.ei = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ej = bitcast <16 x i1> %i.ei to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ej, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !74

._crit_edge.i27.i:                                ; preds = %.lr.ph.i28.i, %bb.r
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.r ], [ %.sroa.0.0.i.i13, %.lr.ph.i28.i ]
  %.lcssa.i.i = phi i16 [ %i.ej, %bb.r ], [ %i.fa, %.lr.ph.i28.i ]
  %i.ek = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.el = zext nneg i16 %i.ek to i64
  %i.em = add i64 %.sroa.0.0.lcssa.i.i, %i.el
  %i.en = and i64 %i.em, %i.g                     ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !noalias !79, !noundef !5
  %i.eq = icmp sgt i8 %i.ep, -1
  br i1 %i.eq, label %bb.s, label %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !9

bb.s:                                             ; preds = %._crit_edge.i27.i
  %.val62.i.i.i = load <16 x i8>, ptr %.val25.i, align 16, !noalias !79
  %i.er = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.es = bitcast <16 x i1> %i.er to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.es, 0
  %i.et = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.es, i1 true)
  %i.eu = zext nneg i16 %i.et to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.r, %.lr.ph.i28.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i13, %.lr.ph.i28.i ], [ %.sroa.0.07.i.i, %bb.r ]
  %i.ev = phi i64 [ %i.ew, %.lr.ph.i28.i ], [ 0, %bb.r ]
  %i.ew = add i64 %i.ev, 16                       ; 2 uses
  %i.ex = add i64 %i.ew, %.sroa.0.010.i.i
  %.sroa.0.0.i.i13 = and i64 %i.ex, %i.g          ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i.i13
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.ey, align 1, !noalias !81
  %i.ez = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fa = bitcast <16 x i1> %i.ez to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fa, 0
  br i1 %.not.i.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !75

_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.s, %._crit_edge.i27.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.eu, %bb.s ], [ %i.en, %._crit_edge.i27.i ] ; 4 uses
  %i.fb = sub i64 %.sroa.014.04.i, %.sroa.0.07.i.i
  %i.fc = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fd = xor i64 %i.fc, %i.fb
  %.unshifted.i = and i64 %i.fd, %i.g
  %i.fe = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fe, label %bb.u, label %bb.t, !prof !7

end_hunk_0
