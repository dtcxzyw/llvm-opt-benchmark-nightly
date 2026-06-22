inline.NumInlined: 819
inline.NumDeleted: 323
begin_hunk_0_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEE7reserveNCINvNtB8_3map11make_hasherBQ_jNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_jNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2HJ6gJZ22Qg_18aws_smithy_runtime(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5, !noalias !8, !noundef !3 ; 3 uses
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !5, !noalias !8, !noundef !3 ; 4 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1                          ; 6 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.f, %i.n
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !10 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = tail call noundef i64 @llvm.umax.i64(i64 %i.r, i64 %i.f) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14
  %i.s = icmp ult i64 %.sroa.0.0.i5, 15
  br i1 %i.s, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %.sroa.0.0.i5, 2305843009213693951
  br i1 %i.t, label %bb.j, label %bb.f, !prof !4

.thread.i:                                        ; preds = %bb.d
  %i.u = icmp samesign ult i64 %.sroa.0.0.i5, 4
  %i.v = and i64 %.sroa.0.0.i5, 8
  %..i.i = add nuw nsw i64 %i.v, 8
  %.sroa.03.0.i.i = select i1 %i.u, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %.sroa.0.0.i5, 3
  %i.x = udiv i64 %i.w, 7
  %i.y = add nsw i64 %i.x, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = lshr i64 -1, %i.z                       ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 1
  %i.ac = icmp samesign ugt i64 %i.aa, 576460752303423486
  br i1 %i.ac, label %bb.h, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sroa.4.0.i.ph16.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.ab, %bb.f ] ; 5 uses
  %i.ad = shl nuw i64 %.sroa.4.0.i.ph16.i, 5      ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.4.0.i.ph16.i, 16 ; 2 uses
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp ult i64 %i.af, %i.ad
  %i.ah = icmp ugt i64 %i.af, 9223372036854775792
  %or.cond.i.i = or i1 %i.ag, %i.ah
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, !prof !17

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !18
  %i.ai = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !18 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.i, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !18
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit.thread

bb.i:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.al = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.af), !noalias !18
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.am = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !23
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit.thread

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.an, i8 -1, i64 %i.ae, i1 false), !noalias !23
  %i.ao = add nsw i64 %.sroa.4.0.i.ph16.i, -1     ; 6 uses
  %i.ap = icmp samesign ult i64 %.sroa.4.0.i.ph16.i, 9
  %i.aq = lshr i64 %.sroa.4.0.i.ph16.i, 3
  %i.ar = mul nuw nsw i64 %i.aq, 7
  %.sroa.07.0.i.i = select i1 %i.ap, i64 %i.ao, i64 %i.ar ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !noalias !14
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !14
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !14
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.an, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !14
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.ao, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14
  %i.as = load i64, ptr %i.d, align 8, !alias.scope !24, !noalias !25, !noundef !3 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %._crit_edge48, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.au = load ptr, ptr %0, align 8, !alias.scope !24, !noalias !25, !nonnull !3, !noundef !3 ; 2 uses
  %i.av = load <16 x i8>, ptr %i.au, align 16, !noalias !26
  %i.aw = icmp sgt <16 x i8> %i.av, splat (i8 -1)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  br label %.preheader

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.am, %bb.j ], [ %i.al, %bb.i ], [ %i.ak, %bb.h ] ; 2 uses
  %.sroa.7.029 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.030 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

bb.k:                                             ; preds = %._crit_edge
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(56) %i.b) #30
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.015.047 = phi ptr [ %i.au, %.preheader.lr.ph ], [ %.sroa.015.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.046 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.045 = phi i64 [ %i.as, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.044 = phi i16 [ %i.ax, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i239 = icmp eq i16 %.sroa.13.044, 0
  br i1 %.not.i239, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.015.141 = phi ptr [ %i.az, %.noexc3 ], [ %.sroa.015.047, %.preheader ] ; 2 uses
  %.sroa.5.140 = phi i64 [ %i.bd, %.noexc3 ], [ %.sroa.5.046, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.141) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.015.141, i64 16 ; 3 uses
  %i.ba = load <16 x i8>, ptr %i.az, align 16, !noalias !29
  %i.bb = icmp sgt <16 x i8> %i.ba, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.140, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bc, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge48.loopexit:                           ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre61 = load i64, ptr %i.d, align 8, !alias.scope !24, !noalias !25
  br label %._crit_edge48

._crit_edge48:                                    ; preds = %._crit_edge48.loopexit, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.be = phi i64 [ %.pre61, %._crit_edge48.loopexit ], [ 0, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit ] ; 2 uses
  %i.bf = sub i64 %.sroa.07.0.i.i, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.l

bb.l:                                             ; preds = %._crit_edge48
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %._crit_edge48
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !38 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !38 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !38, !noundef !3 ; 3 uses
  %i.bh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs9rVkZwOUgsI_13deltalake_aws.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !38
  %i.bi = add i64 %.val3.i.i, 1
  %i.bj = mul nuw i64 %.val.i.i, %i.bi            ; 2 uses
  %i.bk = add i64 %.val1.i.i, -1
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  call void @llvm.assume(i1 %i.bm)
  %i.bn = sub i64 0, %.val1.i.i
  %i.bo = and i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = add i64 %.val3.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 4 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bt = icmp ule i64 %i.bq, %i.bs
  call void @llvm.assume(i1 %i.br)
  call void @llvm.assume(i1 %i.bt)
  %i.bu = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bu)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bw = sub nsw i64 0, %i.bo
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #29, !noalias !38
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs9rVkZwOUgsI_13deltalake_aws.exit, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.044, %.preheader ], [ %i.bc, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.046, %.preheader ], [ %i.bd, %.noexc3 ] ; 2 uses
  %.sroa.015.1.lcssa = phi ptr [ %.sroa.015.047, %.preheader ], [ %i.az, %.noexc3 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.045, -1                ; 2 uses
  %i.ce = load ptr, ptr %0, align 8, !alias.scope !39, !noalias !42, !nonnull !3, !noundef !3
  %i.cf = sub nsw i64 0, %i.cc
  %i.cg = getelementptr inbounds [32 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -32
  %i.ci = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ch)
          to label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.k ; 2 uses

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.ao, %i.ci            ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cj, align 1, !noalias !44
  %i.ck = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cl, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !47

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs9rVkZwOUgsI_13deltalake_aws.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs9rVkZwOUgsI_13deltalake_aws.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cl, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs9rVkZwOUgsI_13deltalake_aws.exit ], [ %i.dd, %.lr.ph.i ]
  %i.cm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cn
  %i.cp = and i64 %i.co, %i.ao                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !3
  %i.cs = icmp sgt i8 %i.cr, -1
  br i1 %i.cs, label %bb.n, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.n:                                             ; preds = %._crit_edge.i
  %i.ct = load <16 x i8>, ptr %i.an, align 16, !noalias !48
  %i.cu = icmp slt <16 x i8> %i.ct, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cv, 0
  %i.cw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cv, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs9rVkZwOUgsI_13deltalake_aws.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs9rVkZwOUgsI_13deltalake_aws.exit ]
  %i.cy = phi i64 [ %i.cz, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs9rVkZwOUgsI_13deltalake_aws.exit ]
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add i64 %i.cz, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.da, %i.ao            ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.db, align 1, !noalias !44
  %i.dc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !51

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cx, %bb.n ], [ %i.cp, %._crit_edge.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i5.i
  %i.df = lshr i64 %i.ci, 57
  %i.dg = trunc nuw nsw i64 %i.df to i8           ; 2 uses
  %i.dh = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.di = and i64 %i.dh, %i.ao
  store i8 %i.dg, ptr %i.de, align 1
  %i.dj = getelementptr i8, ptr %i.an, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store i8 %i.dg, ptr %i.dk, align 1
  %i.dl = load ptr, ptr %0, align 8, !alias.scope !24, !noalias !25, !nonnull !3, !noundef !3
  %i.dm = shl i64 %i.cc, 5
  %i.dn = sub nuw nsw i64 -32, %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %i.dn
  %i.dp = shl i64 %.sroa.0.0.i5.i, 5
  %i.dq = sub nuw nsw i64 -32, %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.an, i64 %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.dr, ptr noundef nonnull align 1 dereferenceable(32) %i.do, i64 32, i1 false)
  %i.ds = icmp eq i64 %i.cd, 0
  br i1 %i.ds, label %._crit_edge48.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.r, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %i.ey, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %.val14.i = load ptr, ptr %0, align 8, !alias.scope !52 ; 7 uses
  %.not5.i.i = icmp eq i64 %i.k, 0
  br i1 %.not5.i.i, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  br label %bb.z

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.dt = lshr i64 %i.k, 4
  %i.du = and i64 %i.k, 15
  %.not10.i.i.i.i = icmp ne i64 %i.du, 0
  %i.dv = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dt, %i.dv ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dw = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dw, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.p

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.07.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ei, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod102 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.dx = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.07.i.i.epil.init ; 2 uses
  %i.dy = load <16 x i8>, ptr %i.dx, align 16, !noalias !55
  %.lobit.i.i.i.epil = ashr <16 x i8> %i.dy, splat (i8 7)
  %i.dz = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.ea = or <2 x i64> %i.dz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ea, ptr %i.dx, align 16, !noalias !58
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.ed = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ed, ptr nonnull align 1 %.val14.i, i64 %.27.i, i1 false), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  store ptr @_RNvYNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtBb_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1Y_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0Es_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTOhEE9call_onceCs9rVkZwOUgsI_13deltalake_aws, ptr %i.eb, align 8, !noalias !52
  store i64 32, ptr %i.ec, align 8, !noalias !52
  store ptr %0, ptr %i.a, align 8, !noalias !52
  br label %.lr.ph.i9

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.07.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ei, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.07.i.i ; 2 uses
  %i.ef = load <16 x i8>, ptr %i.ee, align 16, !noalias !55
  %.lobit.i.i.i = ashr <16 x i8> %i.ef, splat (i8 7)
  %i.eg = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.eh = or <2 x i64> %i.eg, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eh, ptr %i.ee, align 16, !noalias !58
  %i.ei = add i64 %.sroa.0.07.i.i, 32             ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.07.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %i.el = load <16 x i8>, ptr %i.ek, align 16, !noalias !55
  %.lobit.i.i.i.1 = ashr <16 x i8> %i.el, splat (i8 7)
  %i.em = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.en = or <2 x i64> %i.em, splat (i64 -9187201950435737472)
  store <2 x i64> %i.en, ptr %i.ek, align 16, !noalias !58
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

.lr.ph.i9:                                        ; preds = %bb.w, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.eo, %bb.w ], [ 0, %._crit_edge.i.i ] ; 10 uses
  %i.eo = add nuw i64 %.sroa.0.06.i, 1
  %i.ep = load ptr, ptr %0, align 8, !alias.scope !52, !nonnull !3, !noundef !3 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.0.06.i
  %i.er = load i8, ptr %i.eq, align 1, !noundef !3
  %.not.i10 = icmp eq i8 %i.er, -128
  br i1 %.not.i10, label %bb.q, label %bb.w

bb.q:                                             ; preds = %.lr.ph.i9
  %.neg.i = xor i64 %.sroa.0.06.i, -1
  %.neg12.i = shl i64 %.neg.i, 5
  %i.es = getelementptr inbounds i8, ptr %i.ep, i64 %.neg12.i ; 2 uses
  %i.et = sub nsw i64 0, %.sroa.0.06.i
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.x, %bb.q
  %i.eu = load ptr, ptr %0, align 8, !alias.scope !61, !noalias !64, !nonnull !3, !noundef !3
  %i.ev = getelementptr inbounds [32 x i8], ptr %i.eu, i64 %i.et
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -32
  %i.ex = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ew)
          to label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.r ; 3 uses

bb.r:                                             ; preds = %bb.x, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.a) #30
          to label %common.resume unwind label %bb.y

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.val.i13 = load ptr, ptr %0, align 8, !alias.scope !52, !nonnull !3, !noundef !3 ; 7 uses
  %.val13.i = load i64, ptr %i.h, align 8, !alias.scope !52, !noundef !3 ; 6 uses
  %.sroa.0.07.i16.i = and i64 %.val13.i, %i.ex    ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %.sroa.0.07.i16.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.ez, align 1, !noalias !66
  %i.fa = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.fb = bitcast <16 x i1> %i.fa to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.fb, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i18.i, label %._crit_edge.i17.i, !prof !47

._crit_edge.i17.i:                                ; preds = %.lr.ph.i18.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i16.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %.sroa.0.0.i.i14, %.lr.ph.i18.i ]
  %.lcssa.i.i = phi i16 [ %i.fb, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %i.ft, %.lr.ph.i18.i ]
  %i.fc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.fd = zext nneg i16 %i.fc to i64
  %i.fe = add i64 %.sroa.0.0.lcssa.i.i, %i.fd
  %i.ff = and i64 %i.fe, %.val13.i                ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !noundef !3
  %i.fi = icmp sgt i8 %i.fh, -1
  br i1 %i.fi, label %bb.s, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !4

bb.s:                                             ; preds = %._crit_edge.i17.i
  %i.fj = load <16 x i8>, ptr %.val.i13, align 16, !noalias !69
  %i.fk = icmp slt <16 x i8> %i.fj, zeroinitializer
  %i.fl = bitcast <16 x i1> %i.fk to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fl, 0
  %i.fm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fl, i1 true)
  %i.fn = zext nneg i16 %i.fm to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i18.i:                                     ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i, %.lr.ph.i18.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i14, %.lr.ph.i18.i ], [ %.sroa.0.07.i16.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  %i.fo = phi i64 [ %i.fp, %.lr.ph.i18.i ], [ 0, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  %i.fp = add i64 %i.fo, 16                       ; 2 uses
  %i.fq = add i64 %i.fp, %.sroa.0.010.i.i
  %.sroa.0.0.i.i14 = and i64 %i.fq, %.val13.i     ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %.sroa.0.0.i.i14
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fr, align 1, !noalias !66
  %i.fs = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.ft = bitcast <16 x i1> %i.fs to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ft, 0
  br i1 %.not.i.i.i, label %.lr.ph.i18.i, label %._crit_edge.i17.i, !prof !51

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.s, %._crit_edge.i17.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fn, %bb.s ], [ %i.ff, %._crit_edge.i17.i ] ; 4 uses
  %i.fu = sub i64 %.sroa.0.06.i, %.sroa.0.07.i16.i
  %i.fv = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i16.i
  %i.fw = xor i64 %i.fv, %i.fu
  %.unshifted.i = and i64 %i.fw, %.val13.i
  %i.fx = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fx, label %bb.u, label %bb.t, !prof !72

bb.t:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fy = shl i64 %.sroa.0.0.i5.i.i, 5
  %i.fz = sub nuw nsw i64 -32, %i.fy
  %i.ga = getelementptr inbounds i8, ptr %.val.i13, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !noundef !3
  %i.gd = lshr i64 %i.ex, 57
  %i.ge = trunc nuw nsw i64 %i.gd to i8           ; 2 uses
  %i.gf = add i64 %.sroa.0.0.i5.i.i, -16
  %i.gg = and i64 %i.gf, %.val13.i
  store i8 %i.ge, ptr %i.gb, align 1
  %i.gh = load ptr, ptr %0, align 8, !alias.scope !52, !nonnull !3, !noundef !3
  %i.gi = getelementptr i8, ptr %i.gh, i64 %i.gg
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  store i8 %i.ge, ptr %i.gj, align 1
  %i.gk = icmp eq i8 %i.gc, -1
  br i1 %i.gk, label %bb.v, label %bb.x

bb.u:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.gl = lshr i64 %i.ex, 57
  %i.gm = trunc nuw nsw i64 %i.gl to i8           ; 2 uses
  %i.gn = add i64 %.sroa.0.06.i, -16
  %i.go = and i64 %.val13.i, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %.sroa.0.06.i
  store i8 %i.gm, ptr %i.gp, align 1
  %i.gq = load ptr, ptr %0, align 8, !alias.scope !52, !nonnull !3, !noundef !3
  %i.gr = getelementptr i8, ptr %i.gq, i64 %i.go
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  store i8 %i.gm, ptr %i.gs, align 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.gt = add i64 %.sroa.0.06.i, -16
  %i.gu = load i64, ptr %i.h, align 8, !alias.scope !52, !noundef !3
  %i.gv = and i64 %i.gu, %i.gt
  %i.gw = load ptr, ptr %0, align 8, !alias.scope !52, !nonnull !3, !noundef !3
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.gx, align 1
  %i.gy = load ptr, ptr %0, align 8, !alias.scope !52, !nonnull !3, !noundef !3
  %i.gz = getelementptr i8, ptr %i.gy, i64 %i.gv
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  store i8 -1, ptr %i.ha, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ga, ptr noundef nonnull align 1 dereferenceable(32) %i.es, i64 32, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.lr.ph.i9
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.i
  br i1 %exitcond.not.i, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i9

bb.x:                                             ; preds = %bb.t
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %i.es, ptr noundef nonnull %i.ga, i64 noundef 4)
          to label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %bb.r

bb.y:                                             ; preds = %bb.r
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
end_hunk_0
begin_hunk_1_@_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -640 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.n to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %.not10 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not10, label %.lr.ph, label %._crit_edge17

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted12 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.p, ptr %i.c, align 8
  store ptr %i.o, ptr %0, align 8
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.o, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [80 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted12, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.b ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !79
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -1280 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.n to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9fold_implNCINvXsG_NtB8_3mapINtB1V_4IterBV_BV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters10filter_map15filter_map_foldTRBV_B4e_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBV_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB5D_26OptionsCredentialsProvider11credentials0NCINvNvB2n_8for_each4callB4n_NCINvXs1i_B1V_INtB1V_7HashMapB4o_BV_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2r_7collect6ExtendB4n_E6extendINtB3t_9FilterMapINtNtNtNtB8g_11collections4hash3map4IterBV_BV_EB5w_EE0E0E0E0uEB5F_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.8.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.promoted26 = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %2, align 8             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %.sroa.5.i.sroa.5.6..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.9.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8
  %.pre = load i16, ptr %i.f, align 8
  br label %.outer

.outer:                                           ; preds = %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBN_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4J_26OptionsCredentialsProvider11credentials0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtNtNtNtB7k_11collections4hash3map4IterBN_BN_EB4C_EE0E0E0E0B4L_.exit, %bb.a
  %i.m = phi i16 [ %i.r, %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBN_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4J_26OptionsCredentialsProvider11credentials0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtNtNtNtB7k_11collections4hash3map4IterBN_BN_EB4C_EE0E0E0E0B4L_.exit ], [ %.pre, %bb.a ] ; 2 uses
  %.lcssa2530 = phi ptr [ %.lcssa2529, %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBN_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4J_26OptionsCredentialsProvider11credentials0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtNtNtNtB7k_11collections4hash3map4IterBN_BN_EB4C_EE0E0E0E0B4L_.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %.lcssa2428 = phi ptr [ %.lcssa2427, %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBN_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4J_26OptionsCredentialsProvider11credentials0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtNtNtNtB7k_11collections4hash3map4IterBN_BN_EB4C_EE0E0E0E0B4L_.exit ], [ %.promoted26, %bb.a ] ; 2 uses
  %.sroa.0.0.ph = phi i64 [ %i.an, %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBN_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4J_26OptionsCredentialsProvider11credentials0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtNtNtNtB7k_11collections4hash3map4IterBN_BN_EB4C_EE0E0E0E0B4L_.exit ], [ %1, %bb.a ] ; 2 uses
  %.not21 = icmp eq i16 %i.m, 0
  br i1 %.not21, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %.outer
  %i.n = icmp eq i64 %.sroa.0.0.ph, 0
  br i1 %i.n, label %bb.v, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split
  store ptr %i.as, ptr %0, align 8
  store ptr %i.at, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.outer
  %.lcssa2529 = phi ptr [ %i.at, %._crit_edge ], [ %.lcssa2530, %.outer ]
  %.lcssa2427 = phi ptr [ %i.as, %._crit_edge ], [ %.lcssa2428, %.outer ] ; 2 uses
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.m, %.outer ] ; 3 uses
  %i.o = add i16 %.lcssa, -1
  %i.p = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa                    ; 2 uses
  store i16 %i.r, ptr %i.f, align 8
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [48 x i8], ptr %.lcssa2427, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -24
  %i.v = getelementptr i8, ptr %i.t, i64 -40
  %.val1.i = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3
  %i.w = getelementptr i8, ptr %i.t, i64 -32
  %.val2.i = load i64, ptr %i.w, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !82
  call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre12to_lowercase(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val1.i, i64 noundef %.val2.i), !noalias !82
  %i.x = load ptr, ptr %i.h, align 8, !noalias !82, !nonnull !3, !noundef !3
  %i.y = load i64, ptr %i.i, align 8, !noalias !82, !noundef !3
  invoke void @_RNvXs0_NtNtCsjyY8HP3IvQ6_12object_store3aws7builderNtB5_17AmazonS3ConfigKeyNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.y)
          to label %bb.e unwind label %bb.d, !noalias !82

bb.c:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i.i = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.ad, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.d) #30
          to label %common.resume.i.i unwind label %bb.j, !noalias !88

bb.d:                                             ; preds = %bb.i, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.e, align 8, !range !89, !noalias !82, !noundef !3
  %.not.i.i.i = icmp eq i64 %i.aa, -9223372036854775790
  br i1 %.not.i.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ab = load i8, ptr %i.j, align 8, !range !90, !noalias !82, !noundef !3
  %i.ac = load i8, ptr %i.k, align 1, !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !82
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.h unwind label %bb.g, !noalias !88

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtB18_5ErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e) #30
          to label %bb.c unwind label %bb.j, !noalias !88

bb.h:                                             ; preds = %bb.f
  %.sroa.5.i.sroa.3.6.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.sroa.5.6..sroa_idx.i.i, i64 16, i1 false), !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !82
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.sroa.6.0.i.i = phi i64 [ %.sroa.5.i.sroa.3.6.copyload.i.i, %bb.h ], [ -9223372036854775808, %bb.e ] ; 2 uses
  %.sroa.4.0.i.i = phi i8 [ %i.ac, %bb.h ], [ undef, %bb.e ]
  %.sroa.0.0.i.i = phi i8 [ %i.ab, %bb.h ], [ undef, %bb.e ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtB18_5ErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.k unwind label %bb.d, !noalias !88

bb.j:                                             ; preds = %bb.g, %bb.c
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !88
  unreachable

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.n unwind label %bb.l, !noalias !88

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !92, !noalias !82 ; 2 uses
  %i.ag = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ag, label %common.resume.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val3.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !99, !noalias !82, !nonnull !3, !noundef !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !100
  br label %common.resume.i.i

bb.n:                                             ; preds = %bb.k
  %.val.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !92, !noalias !82 ; 2 uses
  %i.ah = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ah, label %_RNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6_26OptionsCredentialsProvider11credentials0B8_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val1.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !99, !noalias !82, !nonnull !3, !noundef !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !103
  br label %_RNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6_26OptionsCredentialsProvider11credentials0B8_.exit.i.i

common.resume.i.i:                                ; preds = %bb.s, %bb.r, %bb.m, %bb.l, %bb.c
  %common.resume.op.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.c ], [ %i.af, %bb.l ], [ %i.af, %bb.m ], [ %i.ak, %bb.s ], [ %i.ak, %bb.r ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6_26OptionsCredentialsProvider11credentials0B8_.exit.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !82
  %.not.i.i = icmp eq i64 %.sroa.6.0.i.i, -9223372036854775808
  br i1 %.not.i.i, label %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBN_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4J_26OptionsCredentialsProvider11credentials0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtNtNtNtB7k_11collections4hash3map4IterBN_BN_EB4C_EE0E0E0E0B4L_.exit, label %bb.p

bb.p:                                             ; preds = %_RNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6_26OptionsCredentialsProvider11credentials0B8_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, i64 16, i1 false), !noalias !109
  store i64 %.sroa.6.0.i.i, ptr %i.b, align 8, !noalias !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !110
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i, i8 noundef %.sroa.0.0.i.i, i8 %.sroa.4.0.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !113
  %i.ai = load i64, ptr %i.a, align 8, !range !114, !alias.scope !115, !noalias !110, !noundef !3
  %i.aj = icmp eq i64 %i.ai, -9223372036854775808
  br i1 %i.aj, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB36_7HashMapB1g_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtB43_11collections4hash3map4IterB2j_B2j_ENCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6T_26OptionsCredentialsProvider11credentials0EE0E0B6V_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.t unwind label %bb.r, !noalias !113

bb.r:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !118, !noalias !110 ; 2 uses
  %i.al = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.al, label %common.resume.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !125, !noalias !110, !nonnull !3, !noundef !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !126
  br label %common.resume.i.i

bb.t:                                             ; preds = %bb.q
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !118, !noalias !110 ; 2 uses
  %i.am = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB36_7HashMapB1g_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtB43_11collections4hash3map4IterB2j_B2j_ENCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6T_26OptionsCredentialsProvider11credentials0EE0E0B6V_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !125, !noalias !110, !nonnull !3, !noundef !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !129
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB36_7HashMapB1g_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtB43_11collections4hash3map4IterB2j_B2j_ENCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6T_26OptionsCredentialsProvider11credentials0EE0E0B6V_.exit.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB36_7HashMapB1g_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtB43_11collections4hash3map4IterB2j_B2j_ENCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6T_26OptionsCredentialsProvider11credentials0EE0E0B6V_.exit.i.i: ; preds = %bb.u, %bb.t, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !106
  br label %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBN_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4J_26OptionsCredentialsProvider11credentials0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtNtNtNtB7k_11collections4hash3map4IterBN_BN_EB4C_EE0E0E0E0B4L_.exit

_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyBN_EuNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4J_26OptionsCredentialsProvider11credentials0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtNtNtNtB7k_11collections4hash3map4IterBN_BN_EB4C_EE0E0E0E0B4L_.exit: ; preds = %_RNCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6_26OptionsCredentialsProvider11credentials0B8_.exit.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB36_7HashMapB1g_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtB43_11collections4hash3map4IterB2j_B2j_ENCNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB6T_26OptionsCredentialsProvider11credentials0EE0E0B6V_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  %i.an = add i64 %.sroa.0.0.ph, -1
  br label %.outer

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.ao = phi ptr [ %i.at, %.lr.ph.split ], [ %.lcssa2530, %.lr.ph ] ; 2 uses
  %i.ap = phi ptr [ %i.as, %.lr.ph.split ], [ %.lcssa2428, %.lr.ph ]
  %i.aq = load <16 x i8>, ptr %i.ao, align 16, !noalias !132
  %i.ar = icmp sgt <16 x i8> %i.aq, splat (i8 -1) ; 2 uses
  store <16 x i1> %i.ar, ptr %i.f, align 8
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -768 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  %.cast = bitcast <16 x i1> %i.ar to i16         ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %.lr.ph.split, label %._crit_edge

bb.v:                                             ; preds = %.lr.ph
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9fold_implNCINvXsG_NtB8_3mapINtB1V_4IterBV_BV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters6filter11filter_foldTRBV_B45_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB4n_16S3StorageOptions8from_map0NCINvNtB3v_3map8map_foldB44_BU_uNCB4h_s_0NCINvNvB2n_8for_each4callBU_NCINvXs1i_B1V_INtB1V_7HashMapBV_BV_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2r_7collect6ExtendBU_E6extendINtB5D_3MapINtB3t_6FilterINtNtNtNtB7k_11collections4hash3map4IterBV_BV_EB4f_EB64_EE0E0E0E0E0uEB4p_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.promoted22 = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %2, align 8             ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.h, align 8
  %.pre = load i16, ptr %i.g, align 8
  br label %.outer

.outer:                                           ; preds = %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters6filter11filter_foldTRBN_B3b_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB3t_16S3StorageOptions8from_map0NCINvNtB2B_3map8map_foldB3a_TBN_BN_EuNCB3n_s_0NCINvNvB1t_8for_each4callB56_NCINvXs1i_B8_INtB8_7HashMapBN_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB56_E6extendINtB4J_3MapINtB2z_6FilterINtNtNtNtB6u_11collections4hash3map4IterBN_BN_EB3l_EB5f_EE0E0E0E0E0B3v_.exit, %bb.a
  %i.l = phi i16 [ %i.q, %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters6filter11filter_foldTRBN_B3b_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB3t_16S3StorageOptions8from_map0NCINvNtB2B_3map8map_foldB3a_TBN_BN_EuNCB3n_s_0NCINvNvB1t_8for_each4callB56_NCINvXs1i_B8_INtB8_7HashMapBN_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB56_E6extendINtB4J_3MapINtB2z_6FilterINtNtNtNtB6u_11collections4hash3map4IterBN_BN_EB3l_EB5f_EE0E0E0E0E0B3v_.exit ], [ %.pre, %bb.a ] ; 2 uses
  %.lcssa2126 = phi ptr [ %.lcssa2125, %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters6filter11filter_foldTRBN_B3b_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB3t_16S3StorageOptions8from_map0NCINvNtB2B_3map8map_foldB3a_TBN_BN_EuNCB3n_s_0NCINvNvB1t_8for_each4callB56_NCINvXs1i_B8_INtB8_7HashMapBN_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB56_E6extendINtB4J_3MapINtB2z_6FilterINtNtNtNtB6u_11collections4hash3map4IterBN_BN_EB3l_EB5f_EE0E0E0E0E0B3v_.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %.lcssa2024 = phi ptr [ %.lcssa2023, %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters6filter11filter_foldTRBN_B3b_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB3t_16S3StorageOptions8from_map0NCINvNtB2B_3map8map_foldB3a_TBN_BN_EuNCB3n_s_0NCINvNvB1t_8for_each4callB56_NCINvXs1i_B8_INtB8_7HashMapBN_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB56_E6extendINtB4J_3MapINtB2z_6FilterINtNtNtNtB6u_11collections4hash3map4IterBN_BN_EB3l_EB5f_EE0E0E0E0E0B3v_.exit ], [ %.promoted22, %bb.a ] ; 2 uses
  %.sroa.0.0.ph = phi i64 [ %i.ah, %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters6filter11filter_foldTRBN_B3b_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB3t_16S3StorageOptions8from_map0NCINvNtB2B_3map8map_foldB3a_TBN_BN_EuNCB3n_s_0NCINvNvB1t_8for_each4callB56_NCINvXs1i_B8_INtB8_7HashMapBN_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB56_E6extendINtB4J_3MapINtB2z_6FilterINtNtNtNtB6u_11collections4hash3map4IterBN_BN_EB3l_EB5f_EE0E0E0E0E0B3v_.exit ], [ %1, %bb.a ] ; 2 uses
  %.not17 = icmp eq i16 %i.l, 0
  br i1 %.not17, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %.outer
  %i.m = icmp eq i64 %.sroa.0.0.ph, 0
  br i1 %i.m, label %bb.k, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split
  store ptr %i.am, ptr %0, align 8
  store ptr %i.an, ptr %i.h, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.outer
  %.lcssa2125 = phi ptr [ %i.an, %._crit_edge ], [ %.lcssa2126, %.outer ]
  %.lcssa2023 = phi ptr [ %i.am, %._crit_edge ], [ %.lcssa2024, %.outer ] ; 2 uses
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.l, %.outer ] ; 3 uses
  %i.n = add i16 %.lcssa, -1
  %i.o = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa                    ; 2 uses
  store i16 %i.q, ptr %i.g, align 8
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [48 x i8], ptr %.lcssa2023, i64 %i.r ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !138
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -40
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !135, !noalias !140, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -32
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !135, !noalias !140, !noundef !3
  store ptr %i.u, ptr %i.f, align 8, !noalias !138
  store i64 %i.w, ptr %i.i, align 8, !noalias !138
  %i.x = call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @25, i64 noundef 20), !noalias !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !138
  br i1 %i.x, label %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters6filter11filter_foldTRBN_B3b_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB3t_16S3StorageOptions8from_map0NCINvNtB2B_3map8map_foldB3a_TBN_BN_EuNCB3n_s_0NCINvNvB1t_8for_each4callB56_NCINvXs1i_B8_INtB8_7HashMapBN_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB56_E6extendINtB4J_3MapINtB2z_6FilterINtNtNtNtB6u_11collections4hash3map4IterBN_BN_EB3l_EB5f_EE0E0E0E0E0B3v_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 -48
  %i.z = getelementptr inbounds i8, ptr %i.s, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !141
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y), !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !141
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions8from_maps_0B9_.exit.i.i.i unwind label %bb.d, !noalias !150

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.e) #30
          to label %common.resume.i.i.i unwind label %bb.e, !noalias !150

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !150
  unreachable

common.resume.i.i.i:                              ; preds = %bb.h, %bb.g, %bb.d
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.d ], [ %i.ae, %bb.h ], [ %i.ae, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions8from_maps_0B9_.exit.i.i.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !155
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  %i.ac = load i64, ptr %i.a, align 8, !range !114, !alias.scope !158, !noalias !155, !noundef !3
  %i.ad = icmp eq i64 %i.ac, -9223372036854775808
  br i1 %i.ad, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ETBW_BW_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB1T_16S3StorageOptions8from_maps_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1C_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4d_7HashMapBW_BW_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB3h_7collect6ExtendB1C_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtNtB58_11collections4hash3map4IterBW_BW_ENCB1N_0EB1L_EE0E0E0B1V_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions8from_maps_0B9_.exit.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.g, !noalias !161

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !162, !noalias !155 ; 2 uses
  %i.af = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %common.resume.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !169, !noalias !155, !nonnull !3, !noundef !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !170
  br label %common.resume.i.i.i

bb.i:                                             ; preds = %bb.f
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !162, !noalias !155 ; 2 uses
  %i.ag = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ETBW_BW_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB1T_16S3StorageOptions8from_maps_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1C_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4d_7HashMapBW_BW_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB3h_7collect6ExtendB1C_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtNtB58_11collections4hash3map4IterBW_BW_ENCB1N_0EB1L_EE0E0E0B1V_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !169, !noalias !155, !nonnull !3, !noundef !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !173
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ETBW_BW_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB1T_16S3StorageOptions8from_maps_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1C_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4d_7HashMapBW_BW_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB3h_7collect6ExtendB1C_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtNtB58_11collections4hash3map4IterBW_BW_ENCB1N_0EB1L_EE0E0E0B1V_.exit.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ETBW_BW_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB1T_16S3StorageOptions8from_maps_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1C_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4d_7HashMapBW_BW_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB3h_7collect6ExtendB1C_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtNtB58_11collections4hash3map4IterBW_BW_ENCB1N_0EB1L_EE0E0E0B1V_.exit.i.i: ; preds = %bb.j, %bb.i, %_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions8from_maps_0B9_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !138
  br label %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters6filter11filter_foldTRBN_B3b_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB3t_16S3StorageOptions8from_map0NCINvNtB2B_3map8map_foldB3a_TBN_BN_EuNCB3n_s_0NCINvNvB1t_8for_each4callB56_NCINvXs1i_B8_INtB8_7HashMapBN_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB56_E6extendINtB4J_3MapINtB2z_6FilterINtNtNtNtB6u_11collections4hash3map4IterBN_BN_EB3l_EB5f_EE0E0E0E0E0B3v_.exit

_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters6filter11filter_foldTRBN_B3b_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB3t_16S3StorageOptions8from_map0NCINvNtB2B_3map8map_foldB3a_TBN_BN_EuNCB3n_s_0NCINvNvB1t_8for_each4callB56_NCINvXs1i_B8_INtB8_7HashMapBN_BN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB56_E6extendINtB4J_3MapINtB2z_6FilterINtNtNtNtB6u_11collections4hash3map4IterBN_BN_EB3l_EB5f_EE0E0E0E0E0B3v_.exit: ; preds = %bb.b, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ETBW_BW_EuNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB1T_16S3StorageOptions8from_maps_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1C_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4d_7HashMapBW_BW_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB3h_7collect6ExtendB1C_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtNtB58_11collections4hash3map4IterBW_BW_ENCB1N_0EB1L_EE0E0E0B1V_.exit.i.i
  %i.ah = add i64 %.sroa.0.0.ph, -1
  br label %.outer

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.ai = phi ptr [ %i.an, %.lr.ph.split ], [ %.lcssa2126, %.lr.ph ] ; 2 uses
  %i.aj = phi ptr [ %i.am, %.lr.ph.split ], [ %.lcssa2024, %.lr.ph ]
  %i.ak = load <16 x i8>, ptr %i.ai, align 16, !noalias !176
  %i.al = icmp sgt <16 x i8> %i.ak, splat (i8 -1) ; 2 uses
  store <16 x i1> %i.al, ptr %i.g, align 8
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 -768 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %.cast = bitcast <16 x i1> %i.al to i16         ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %.lr.ph.split, label %._crit_edge

bb.k:                                             ; preds = %.lr.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %.not10 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not10, label %.lr.ph, label %._crit_edge17

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted12 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.p, ptr %i.c, align 8
  store ptr %i.o, ptr %0, align 8
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.o, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted12, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.b ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !179
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -768 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.n to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %.not10 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not10, label %.lr.ph, label %._crit_edge17

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted12 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.p, ptr %i.c, align 8
  store ptr %i.o, ptr %0, align 8
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.o, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [80 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted12, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.b ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !182
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -1280 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.n to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %.not10 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not10, label %.lr.ph, label %._crit_edge17

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted12 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.p, ptr %i.c, align 8
  store ptr %i.o, ptr %0, align 8
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.o, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [72 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted12, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.b ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !185
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -1152 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.n to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %.not10 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not10, label %.lr.ph, label %._crit_edge17

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted12 = load ptr, ptr %i.c, align 8
  br label %bb.b

end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws:bb.a
bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !239 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.e, align 8, !alias.scope !246, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !247
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !239 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !246, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !250
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types17__attribute_action15AttributeActionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !253, !noundef !3
  %i.b = icmp slt i64 %i.a, -9223372036854775804
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types17__attribute_action15AttributeActionECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types17__attribute_action15AttributeActionECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.f, %bb.e
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !254 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !265, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !266
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !254 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types17__attribute_action15AttributeActionECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !265, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !269
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types17__attribute_action15AttributeActionECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !272, !noundef !3
  %or.cond = icmp slt i64 %i.a, -9223372036854775794
  br i1 %or.cond, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !273 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !284, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !285
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !273 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !284, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !288
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtB18_5ErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !89, !noundef !3 ; 7 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775790
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i110.i, %bb.cv, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i105.i, %bb.cs, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i100.i, %bb.cp, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i95.i, %bb.cm, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i90.i, %bb.cj, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i85.i, %bb.cf, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i40.i, %bb.bd, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.az, %bb.aw, %bb.av, %bb.au, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit16.i.i, %bb.ar, %bb.aq, %bb.an, %bb.am, %bb.z, %bb.y, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.j, %bb.g, %bb.f, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i64 %i.a, -9223372036854775800
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i64 %i.a, 9223372036854775802
  %i.e = icmp ugt i64 %i.a, -9223372036854775803
  %i.f = select i1 %i.e, i64 %i.d, i64 2
  switch i64 %i.f, label %bb.c [
    i64 0, label %bb.h
    i64 1, label %bb.l
    i64 2, label %bb.q
    i64 3, label %bb.aw
    i64 4, label %bb.bb
    i64 5, label %bb.bf
    i64 6, label %bb.bk
    i64 7, label %bb.bp
    i64 8, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 9, label %bb.bu
    i64 10, label %bb.bz
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !291 ; 2 uses
  %i.i = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.i, label %common.resume.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !300, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !301
  br label %common.resume.i

bb.f:                                             ; preds = %bb.c
  %.val.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !291 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !300, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !304
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit

common.resume.i:                                  ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i108.i, %bb.cw, %.body79.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i103.i, %bb.ct, %.body71.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i98.i, %bb.cq, %.body63.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i93.i, %bb.cn, %.body55.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i88.i, %bb.ck, %.body47.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i83.i, %bb.cg, %.body.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i38.i, %bb.be, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.ba, %bb.at, %.body.i.i, %.body17.i.i, %.body14.i.i, %bb.ap, %bb.al, %common.resume.sink.split.i.i, %bb.x, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.k, %bb.e, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.hg, %bb.ct ], [ %i.h, %bb.d ], [ %i.u, %bb.k ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ], [ %i.cl, %bb.ba ], [ %i.cz, %bb.be ], [ %i.et, %bb.cg ], [ %i.ee, %.body79.i ], [ %i.fk, %bb.ck ], [ %i.ga, %bb.cn ], [ %i.gq, %bb.cq ], [ %i.h, %bb.e ], [ %i.u, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.bc, %.body17.i.i ], [ %i.ar, %bb.x ], [ %i.bi, %bb.al ], [ %i.bn, %bb.ap ], [ %i.al, %.body.i.i ], [ %i.aw, %.body14.i.i ], [ %i.by, %bb.at ], [ %i.cl, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.cz, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i38.i ], [ %i.et, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i83.i ], [ %i.ab, %.body.i ], [ %i.dg, %.body47.i ], [ %i.dm, %.body55.i ], [ %i.ds, %.body63.i ], [ %i.dy, %.body71.i ], [ %i.fk, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i88.i ], [ %i.ga, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i93.i ], [ %i.gq, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i98.i ], [ %i.hg, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i103.i ], [ %i.hw, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i108.i ], [ %i.hw, %bb.cw ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val27.i = load ptr, ptr %i.m, align 8, !alias.scope !307 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val28.i = load ptr, ptr %i.n, align 8, !alias.scope !307, !nonnull !3, !align !308, !noundef !3 ; 5 uses
  %i.o = load ptr, ptr %.val28.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i) ]
  invoke void %i.o(ptr noundef nonnull %.val27.i)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %.val28.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.val28.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !310, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val28.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %common.resume.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %.val28.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !310, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.z) #29
  br label %common.resume.i

bb.l:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i31.i = load i64, ptr %i.aa, align 8, !alias.scope !311 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i.i31.i, 0
  br i1 %i.ac, label %.body.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i32.i = load ptr, ptr %i.ad, align 8, !alias.scope !318, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i32.i, i64 noundef %.val2.i.i31.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !319
  br label %.body.i

bb.o:                                             ; preds = %bb.l
  %.val.i.i34.i = load i64, ptr %i.aa, align 8, !alias.scope !311 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i34.i, 0
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit36.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i35.i = load ptr, ptr %i.af, align 8, !alias.scope !318, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i35.i, i64 noundef %.val.i.i34.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !322
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit36.i

bb.q:                                             ; preds = %bb.b
  %i.ag = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = xor i64 %i.a, -9223372036854775808
  %i.ai = icmp slt i64 %i.a, 0
  %i.aj = select i1 %i.ai, i64 %i.ah, i64 1
  switch i64 %i.aj, label %bb.r [
    i64 0, label %bb.w
    i64 1, label %bb.aa
    i64 2, label %bb.af
    i64 3, label %bb.ak
    i64 4, label %bb.ao
  ]

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !325 ; 2 uses
  %i.am = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.am, label %.body.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !334, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !335
  br label %.body.i.i

bb.u:                                             ; preds = %bb.r
  %.val.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !325 ; 2 uses
  %i.ao = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !334, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !338
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.w:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i3.i.i = load i64, ptr %i.aq, align 8, !alias.scope !341 ; 2 uses
  %i.as = icmp eq i64 %.val2.i.i3.i.i, 0
  br i1 %i.as, label %common.resume.i, label %common.resume.sink.split.i.i

bb.y:                                             ; preds = %bb.w
  %.val.i.i6.i.i = load i64, ptr %i.aq, align 8, !alias.scope !341 ; 2 uses
  %i.at = icmp eq i64 %.val.i.i6.i.i, 0
  br i1 %i.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i7.i.i = load ptr, ptr %i.au, align 8, !alias.scope !348, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i7.i.i, i64 noundef %.val.i.i6.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !349
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit

common.resume.sink.split.i.i:                     ; preds = %bb.at, %bb.ap, %bb.al, %bb.x
  %.sink37.i.i = phi i64 [ 16, %bb.ap ], [ 16, %bb.al ], [ 40, %bb.at ], [ 16, %bb.x ]
  %.val2.i.i31.sink.i.i = phi i64 [ %.val2.i.i25.i.i, %bb.ap ], [ %.val2.i.i.i.i19.i.i, %bb.al ], [ %.val2.i.i31.i.i, %bb.at ], [ %.val2.i.i3.i.i, %bb.x ]
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %i.bn, %bb.ap ], [ %i.bi, %bb.al ], [ %i.by, %bb.at ], [ %i.ar, %bb.x ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.sink37.i.i
  %.val3.i.i32.i.i = load ptr, ptr %i.av, align 8, !alias.scope !352, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i32.i.i, i64 noundef %.val2.i.i31.sink.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !3
  br label %common.resume.i

bb.aa:                                            ; preds = %bb.q
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i9.i.i = load i64, ptr %0, align 8, !alias.scope !353 ; 2 uses
  %i.ax = icmp eq i64 %.val2.i.i9.i.i, 0
  br i1 %i.ax, label %.body14.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i10.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !360, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i10.i.i, i64 noundef %.val2.i.i9.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !361
  br label %.body14.i.i

bb.ad:                                            ; preds = %bb.aa
  %.val.i.i12.i.i = load i64, ptr %0, align 8, !alias.scope !353 ; 2 uses
  %i.az = icmp eq i64 %.val.i.i12.i.i, 0
  br i1 %i.az, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit16.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i13.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !360, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i13.i.i, i64 noundef %.val.i.i12.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !364
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit16.i.i

bb.af:                                            ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %bb.ai unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !367 ; 2 uses
  %i.bd = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.bd, label %.body17.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !378, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !379
  br label %.body17.i.i

bb.ai:                                            ; preds = %bb.af
  %.val.i.i.i.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !367 ; 2 uses
  %i.bf = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !378, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !382
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ak:                                            ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i19.i.i = load i64, ptr %i.bh, align 8, !alias.scope !385 ; 2 uses
  %i.bj = icmp eq i64 %.val2.i.i.i.i19.i.i, 0
  br i1 %i.bj, label %common.resume.i, label %common.resume.sink.split.i.i

bb.am:                                            ; preds = %bb.ak
  %.val.i.i.i.i22.i.i = load i64, ptr %i.bh, align 8, !alias.scope !385 ; 2 uses
  %i.bk = icmp eq i64 %.val.i.i.i.i22.i.i, 0
  br i1 %i.bk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i23.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !396, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i23.i.i, i64 noundef %.val.i.i.i.i22.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !397
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ao:                                            ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i25.i.i = load i64, ptr %i.bm, align 8, !alias.scope !400 ; 2 uses
  %i.bo = icmp eq i64 %.val2.i.i25.i.i, 0
  br i1 %i.bo, label %common.resume.i, label %common.resume.sink.split.i.i

bb.aq:                                            ; preds = %bb.ao
  %.val.i.i28.i.i = load i64, ptr %i.bm, align 8, !alias.scope !400 ; 2 uses
  %i.bp = icmp eq i64 %.val.i.i28.i.i, 0
  br i1 %i.bp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i29.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !407, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i29.i.i, i64 noundef %.val.i.i28.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !408
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit

.body14.i.i:                                      ; preds = %bb.ac, %bb.ab
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.br) #30
          to label %common.resume.i unwind label %bb.as

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit16.i.i: ; preds = %bb.ae, %bb.ad
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.bs)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.as:                                            ; preds = %.body.i.i, %.body17.i.i, %.body14.i.i
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

.body17.i.i:                                      ; preds = %bb.ah, %bb.ag
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !352, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.val2.i.i) #30
          to label %common.resume.i unwind label %bb.as

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.aj, %bb.ai
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !352, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.val.i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit

.body.i.i:                                        ; preds = %bb.t, %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.bw) #30
          to label %common.resume.i unwind label %bb.as

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.v, %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i31.i.i = load i64, ptr %i.bx, align 8, !alias.scope !411 ; 2 uses
  %i.bz = icmp eq i64 %.val2.i.i31.i.i, 0
  br i1 %i.bz, label %common.resume.i, label %common.resume.sink.split.i.i

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.val.i.i34.i.i = load i64, ptr %i.bx, align 8, !alias.scope !411 ; 2 uses
  %i.ca = icmp eq i64 %.val.i.i34.i.i, 0
  br i1 %i.ca, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i35.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !418, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i35.i.i, i64 noundef %.val.i.i34.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !419
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.aw:                                            ; preds = %bb.b
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val29.i = load ptr, ptr %i.cc, align 8, !alias.scope !307, !noundef !3 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val30.i = load ptr, ptr %i.cd, align 8, !alias.scope !307 ; 6 uses
  %i.ce = icmp eq ptr %.val29.i, null
  br i1 %i.ce, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val30.i) ]
  %i.cf = load ptr, ptr %.val30.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void %i.cf(ptr noundef nonnull %.val29.i)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.cg = getelementptr inbounds nuw i8, ptr %.val30.i, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.az
  %i.cj = getelementptr inbounds nuw i8, ptr %.val30.i, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !range !310, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29.i, i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) %i.ck) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ba:                                            ; preds = %bb.ay
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val30.i, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %common.resume.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.ba
  %i.cp = getelementptr inbounds nuw i8, ptr %.val30.i, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !range !310, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29.i, i64 noundef %i.cn, i64 noundef range(i64 1, -9223372036854775807) %i.cq) #29
  br label %common.resume.i

bb.bb:                                            ; preds = %bb.b
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val25.i = load ptr, ptr %i.cr, align 8, !alias.scope !307 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val26.i = load ptr, ptr %i.cs, align 8, !alias.scope !307, !nonnull !3, !align !308, !noundef !3 ; 5 uses
  %i.ct = load ptr, ptr %.val26.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i37.i = icmp eq ptr %i.ct, null
  br i1 %.not.i37.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  invoke void %i.ct(ptr noundef nonnull %.val25.i)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.cu = getelementptr inbounds nuw i8, ptr %.val26.i, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i40.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i40.i: ; preds = %bb.bd
  %i.cx = getelementptr inbounds nuw i8, ptr %.val26.i, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !range !310, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i, i64 noundef %i.cv, i64 noundef range(i64 1, -9223372036854775807) %i.cy) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.be:                                            ; preds = %bb.bc
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val26.i, i64 8
  %i.db = load i64, ptr %i.da, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %common.resume.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i38.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i38.i: ; preds = %bb.be
  %i.dd = getelementptr inbounds nuw i8, ptr %.val26.i, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !range !310, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) %i.de) #29
  br label %common.resume.i

bb.bf:                                            ; preds = %bb.b
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %bb.bi unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dg = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i42.i = load i64, ptr %i.df, align 8, !alias.scope !422 ; 2 uses
  %i.dh = icmp eq i64 %.val2.i.i42.i, 0
  br i1 %i.dh, label %.body47.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i43.i = load ptr, ptr %i.di, align 8, !alias.scope !429, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i43.i, i64 noundef %.val2.i.i42.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !430
  br label %.body47.i

bb.bi:                                            ; preds = %bb.bf
  %.val.i.i45.i = load i64, ptr %i.df, align 8, !alias.scope !422 ; 2 uses
  %i.dj = icmp eq i64 %.val.i.i45.i, 0
  br i1 %i.dj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit49.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i46.i = load ptr, ptr %i.dk, align 8, !alias.scope !429, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i46.i, i64 noundef %.val.i.i45.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !433
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit49.i

bb.bk:                                            ; preds = %bb.b
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %bb.bn unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i50.i = load i64, ptr %i.dl, align 8, !alias.scope !436 ; 2 uses
  %i.dn = icmp eq i64 %.val2.i.i50.i, 0
  br i1 %i.dn, label %.body55.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i51.i = load ptr, ptr %i.do, align 8, !alias.scope !443, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i51.i, i64 noundef %.val2.i.i50.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !444
  br label %.body55.i

bb.bn:                                            ; preds = %bb.bk
  %.val.i.i53.i = load i64, ptr %i.dl, align 8, !alias.scope !436 ; 2 uses
  %i.dp = icmp eq i64 %.val.i.i53.i, 0
  br i1 %i.dp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit57.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i54.i = load ptr, ptr %i.dq, align 8, !alias.scope !443, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i54.i, i64 noundef %.val.i.i53.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !447
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit57.i

bb.bp:                                            ; preds = %bb.b
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %bb.bs unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i58.i = load i64, ptr %i.dr, align 8, !alias.scope !450 ; 2 uses
  %i.dt = icmp eq i64 %.val2.i.i58.i, 0
  br i1 %i.dt, label %.body63.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i59.i = load ptr, ptr %i.du, align 8, !alias.scope !457, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i59.i, i64 noundef %.val2.i.i58.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !458
  br label %.body63.i

bb.bs:                                            ; preds = %bb.bp
  %.val.i.i61.i = load i64, ptr %i.dr, align 8, !alias.scope !450 ; 2 uses
  %i.dv = icmp eq i64 %.val.i.i61.i, 0
  br i1 %i.dv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit65.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i62.i = load ptr, ptr %i.dw, align 8, !alias.scope !457, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i62.i, i64 noundef %.val.i.i61.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !461
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit65.i

bb.bu:                                            ; preds = %bb.b
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %bb.bx unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i66.i = load i64, ptr %i.dx, align 8, !alias.scope !464 ; 2 uses
  %i.dz = icmp eq i64 %.val2.i.i66.i, 0
  br i1 %i.dz, label %.body71.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i67.i = load ptr, ptr %i.ea, align 8, !alias.scope !471, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i67.i, i64 noundef %.val2.i.i66.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !472
  br label %.body71.i

bb.bx:                                            ; preds = %bb.bu
  %.val.i.i69.i = load i64, ptr %i.dx, align 8, !alias.scope !464 ; 2 uses
  %i.eb = icmp eq i64 %.val.i.i69.i, 0
  br i1 %i.eb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit73.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i70.i = load ptr, ptr %i.ec, align 8, !alias.scope !471, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i70.i, i64 noundef %.val.i.i69.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !475
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit73.i

bb.bz:                                            ; preds = %bb.b
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %bb.cc unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i74.i = load i64, ptr %i.ed, align 8, !alias.scope !478 ; 2 uses
  %i.ef = icmp eq i64 %.val2.i.i74.i, 0
  br i1 %i.ef, label %.body79.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i75.i = load ptr, ptr %i.eg, align 8, !alias.scope !485, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i75.i, i64 noundef %.val2.i.i74.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !486
  br label %.body79.i

bb.cc:                                            ; preds = %bb.bz
  %.val.i.i77.i = load i64, ptr %i.ed, align 8, !alias.scope !478 ; 2 uses
  %i.eh = icmp eq i64 %.val.i.i77.i, 0
  br i1 %i.eh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit81.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i78.i = load ptr, ptr %i.ei, align 8, !alias.scope !485, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i78.i, i64 noundef %.val.i.i77.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !489
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit81.i

.body.i:                                          ; preds = %bb.n, %bb.m
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val23.i = load ptr, ptr %i.ej, align 8, !alias.scope !307
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val24.i = load ptr, ptr %i.ek, align 8, !alias.scope !307, !nonnull !3, !align !308, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val23.i, ptr nonnull %.val24.i) #30
          to label %common.resume.i unwind label %bb.ch

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit36.i: ; preds = %bb.p, %bb.o
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val21.i = load ptr, ptr %i.el, align 8, !alias.scope !307 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val22.i = load ptr, ptr %i.em, align 8, !alias.scope !307, !nonnull !3, !align !308, !noundef !3 ; 5 uses
  %i.en = load ptr, ptr %.val22.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i82.i = icmp eq ptr %i.en, null
  br i1 %.not.i82.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit36.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i) ]
  invoke void %i.en(ptr noundef nonnull %.val21.i)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %bb.ce, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit36.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.val22.i, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i85.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i85.i: ; preds = %bb.cf
  %i.er = getelementptr inbounds nuw i8, ptr %.val22.i, i64 16
  %i.es = load i64, ptr %i.er, align 8, !range !310, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i, i64 noundef %i.ep, i64 noundef range(i64 1, -9223372036854775807) %i.es) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.cg:                                            ; preds = %bb.ce
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val22.i, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %common.resume.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i83.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i83.i: ; preds = %bb.cg
  %i.ex = getelementptr inbounds nuw i8, ptr %.val22.i, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !range !310, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i, i64 noundef %i.ev, i64 noundef range(i64 1, -9223372036854775807) %i.ey) #29
  br label %common.resume.i

bb.ch:                                            ; preds = %.body79.i, %.body71.i, %.body63.i, %.body55.i, %.body47.i, %.body.i
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

.body47.i:                                        ; preds = %bb.bh, %bb.bg
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val19.i = load ptr, ptr %i.fa, align 8, !alias.scope !307
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val20.i = load ptr, ptr %i.fb, align 8, !alias.scope !307, !nonnull !3, !align !308, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val19.i, ptr nonnull %.val20.i) #30
          to label %common.resume.i unwind label %bb.ch

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit49.i: ; preds = %bb.bj, %bb.bi
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val17.i = load ptr, ptr %i.fc, align 8, !alias.scope !307 ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val18.i = load ptr, ptr %i.fd, align 8, !alias.scope !307, !nonnull !3, !align !308, !noundef !3 ; 5 uses
  %i.fe = load ptr, ptr %.val18.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i87.i = icmp eq ptr %i.fe, null
  br i1 %.not.i87.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit49.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i) ]
  invoke void %i.fe(ptr noundef nonnull %.val17.i)
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %bb.ci, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit49.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i90.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i90.i: ; preds = %bb.cj
  %i.fi = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !range !310, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef %i.fg, i64 noundef range(i64 1, -9223372036854775807) %i.fj) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ck:                                            ; preds = %bb.ci
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %common.resume.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i88.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i88.i: ; preds = %bb.ck
  %i.fo = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !range !310, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef %i.fm, i64 noundef range(i64 1, -9223372036854775807) %i.fp) #29
  br label %common.resume.i

.body55.i:                                        ; preds = %bb.bm, %bb.bl
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val15.i = load ptr, ptr %i.fq, align 8, !alias.scope !307
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val16.i = load ptr, ptr %i.fr, align 8, !alias.scope !307, !nonnull !3, !align !308, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val15.i, ptr nonnull %.val16.i) #30
          to label %common.resume.i unwind label %bb.ch

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit57.i: ; preds = %bb.bo, %bb.bn
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val13.i = load ptr, ptr %i.fs, align 8, !alias.scope !307 ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val14.i = load ptr, ptr %i.ft, align 8, !alias.scope !307, !nonnull !3, !align !308, !noundef !3 ; 5 uses
  %i.fu = load ptr, ptr %.val14.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i92.i = icmp eq ptr %i.fu, null
  br i1 %.not.i92.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit57.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  invoke void %i.fu(ptr noundef nonnull %.val13.i)
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %bb.cl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit57.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.val14.i, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i95.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i95.i: ; preds = %bb.cm
  %i.fy = getelementptr inbounds nuw i8, ptr %.val14.i, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !range !310, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i, i64 noundef %i.fw, i64 noundef range(i64 1, -9223372036854775807) %i.fz) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.cn:                                            ; preds = %bb.cl
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val14.i, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %common.resume.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i93.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i93.i: ; preds = %bb.cn
  %i.ge = getelementptr inbounds nuw i8, ptr %.val14.i, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !range !310, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i, i64 noundef %i.gc, i64 noundef range(i64 1, -9223372036854775807) %i.gf) #29
  br label %common.resume.i

.body63.i:                                        ; preds = %bb.br, %bb.bq
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val11.i = load ptr, ptr %i.gg, align 8, !alias.scope !307
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val12.i = load ptr, ptr %i.gh, align 8, !alias.scope !307, !nonnull !3, !align !308, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val11.i, ptr nonnull %.val12.i) #30
          to label %common.resume.i unwind label %bb.ch

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit65.i: ; preds = %bb.bt, %bb.bs
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val9.i = load ptr, ptr %i.gi, align 8, !alias.scope !307 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val10.i = load ptr, ptr %i.gj, align 8, !alias.scope !307, !nonnull !3, !align !308, !noundef !3 ; 5 uses
  %i.gk = load ptr, ptr %.val10.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i97.i = icmp eq ptr %i.gk, null
  br i1 %.not.i97.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit65.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  invoke void %i.gk(ptr noundef nonnull %.val9.i)
          to label %bb.cp unwind label %bb.cq

bb.cp:                                            ; preds = %bb.co, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit65.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i100.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i100.i: ; preds = %bb.cp
  %i.go = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !range !310, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %i.gm, i64 noundef range(i64 1, -9223372036854775807) %i.gp) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.cq:                                            ; preds = %bb.co
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %common.resume.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i98.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i98.i: ; preds = %bb.cq
  %i.gu = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.gv = load i64, ptr %i.gu, align 8, !range !310, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %i.gs, i64 noundef range(i64 1, -9223372036854775807) %i.gv) #29
  br label %common.resume.i

.body71.i:                                        ; preds = %bb.bw, %bb.bv
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7.i = load ptr, ptr %i.gw, align 8, !alias.scope !307
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8.i = load ptr, ptr %i.gx, align 8, !alias.scope !307, !nonnull !3, !align !308, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val7.i, ptr nonnull %.val8.i) #30
          to label %common.resume.i unwind label %bb.ch

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit73.i: ; preds = %bb.by, %bb.bx
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5.i = load ptr, ptr %i.gy, align 8, !alias.scope !307 ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val6.i = load ptr, ptr %i.gz, align 8, !alias.scope !307, !nonnull !3, !align !308, !noundef !3 ; 5 uses
  %i.ha = load ptr, ptr %.val6.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i102.i = icmp eq ptr %i.ha, null
  br i1 %.not.i102.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit73.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  invoke void %i.ha(ptr noundef nonnull %.val5.i)
          to label %bb.cs unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit73.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i105.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i105.i: ; preds = %bb.cs
  %i.he = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !range !310, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.hc, i64 noundef range(i64 1, -9223372036854775807) %i.hf) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ct:                                            ; preds = %bb.cr
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %common.resume.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i103.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i103.i: ; preds = %bb.ct
  %i.hk = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !range !310, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.hi, i64 noundef range(i64 1, -9223372036854775807) %i.hl) #29
  br label %common.resume.i

.body79.i:                                        ; preds = %bb.cb, %bb.ca
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load ptr, ptr %i.hm, align 8, !alias.scope !307
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val4.i = load ptr, ptr %i.hn, align 8, !alias.scope !307, !nonnull !3, !align !308, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val3.i, ptr nonnull %.val4.i) #30
          to label %common.resume.i unwind label %bb.ch

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit81.i: ; preds = %bb.cd, %bb.cc
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.ho, align 8, !alias.scope !307 ; 5 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i = load ptr, ptr %i.hp, align 8, !alias.scope !307, !nonnull !3, !align !308, !noundef !3 ; 5 uses
  %i.hq = load ptr, ptr %.val2.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i107.i = icmp eq ptr %i.hq, null
  br i1 %.not.i107.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit81.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.hq(ptr noundef nonnull %.val.i)
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %bb.cu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit81.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i110.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i110.i: ; preds = %bb.cv
  %i.hu = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !range !310, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.hs, i64 noundef range(i64 1, -9223372036854775807) %i.hv) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.cw:                                            ; preds = %bb.cu
  %i.hw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.hy = load i64, ptr %i.hx, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %common.resume.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i108.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i108.i: ; preds = %bb.cw
  %i.ia = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !range !310, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.hy, i64 noundef range(i64 1, -9223372036854775807) %i.ib) #29
  br label %common.resume.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !492 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !492 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !492, !noundef !3 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !492
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #29, !noalias !492
  br label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !495, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !495
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !495 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !495, !noundef !3 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.0.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !495, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !495, !noundef !3
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !495, !noundef !3
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !495
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !495, !nonnull !3, !noundef !3
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !495
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !495, !nonnull !3, !noundef !3
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg7.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !495, !inline_history !498
  %i.s = load i64, ptr %i.e, align 8, !noalias !495, !noundef !3
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !495
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !495, !noundef !3 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.04.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !495, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.04.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !495
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1W_EEENCNvMse_B1D_B1A_15clone_from_impl0EECs9rVkZwOUgsI_13deltalake_aws(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_EEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !3
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_EEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_EEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEEENCNvMse_B1D_B1A_15clone_from_impl0EECs9rVkZwOUgsI_13deltalake_aws(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !3
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [96 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -96
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEEENCNvMse_B1D_B1A_15clone_from_impl0EECs9rVkZwOUgsI_13deltalake_aws(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !3
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [96 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -96
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEEENCNvMse_B1D_B1A_15clone_from_impl0EECs9rVkZwOUgsI_13deltalake_aws(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.sroa.0.02.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.j ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.02.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.02.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !3
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.02.i.i
  %i.g = getelementptr inbounds [72 x i8], ptr %i.b, i64 %i.f ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -72 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !499 ; 2 uses
  %i.j = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.j, label %.body.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 -64
  %.val3.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !508, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !509
  br label %.body.i.i.i

bb.f:                                             ; preds = %bb.c
  %.val.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !499 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 -64
  %.val1.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !508, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !512
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.body.i.i.i:                                      ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 -48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.n) #30
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %.body.i.i.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.i:                                             ; preds = %.body.i.i.i
  resume { ptr, i32 } %i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.g, %bb.f
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.p)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.j, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENCNvMse_B1D_B1A_15clone_from_impl0EECs9rVkZwOUgsI_13deltalake_aws(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEEECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.ac = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -64
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !608, !noalias !588, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !612
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 -48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.ae) #30
          to label %bb.j unwind label %bb.i, !noalias !588

bb.i:                                             ; preds = %.body.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !588
  unreachable

bb.j:                                             ; preds = %.body.i.i.i.i
  resume { ptr, i32 } %i.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.ag), !noalias !588
  %i.ah = icmp eq i64 %i.x, 0
  br i1 %i.ah, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.b
  %i.ai = mul i64 %i.b, 72
  %i.aj = icmp slt i64 %i.b, 256204778801521550
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = and i64 %i.ai, -16                      ; 2 uses
  %i.al = add i64 %i.ak, 80                       ; 2 uses
  %i.am = add nsw i64 %i.b, 17
  %i.an = add i64 %i.am, %i.al                    ; 4 uses
  %i.ao = icmp uge i64 %i.an, %i.al
  %i.ap = icmp ult i64 %i.an, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.an, 0
  br i1 %i.aq, label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.k

bb.k:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ar = load ptr, ptr %0, align 8, !alias.scope !584, !nonnull !3, !noundef !3
  %i.as = sub i64 -80, %i.ak
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !584
  br label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !621, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !625, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !625, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !626
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.c
  %.sroa.05.016.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.sroa.107.014.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ]
  %.sroa.86.013.i.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.86.013.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %.sroa.6.015.i.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %.sroa.05.016.i.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !631
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1920 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.o to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.015.i.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i.i ]
  %.sroa.05.1.i.i.i = phi ptr [ %.sroa.05.016.i.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.86.013.i.i.i, %bb.d ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [120 x i8], ptr %.sroa.05.1.i.i.i, i64 %i.v
  %i.x = add i64 %.sroa.107.014.i.i.i, -1         ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -120
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.y), !noalias !625
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.b
  %i.aa = mul i64 %i.b, 120
  %i.ab = icmp slt i64 %i.b, 153722867280912930
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 128                      ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !621, !nonnull !3, !noundef !3
  %i.ak = sub i64 -128, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !621
  br label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8              ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.d = mul nuw i64 %.val2, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.g = mul nuw i64 %.val, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !3 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !310, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #29
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !310, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #29
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !636, !noundef !3
  switch i8 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 3, label %bb.h
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b), !inline_history !637
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.c, align 8, !alias.scope !638 ; 2 uses
  %i.e = icmp eq i64 %.val2.i, 0
  br i1 %i.e, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.f, align 8, !alias.scope !643, !nonnull !3, !noundef !3
  %i.g = mul nuw i64 %.val2.i, 56
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !644
  br label %common.resume

bb.f:                                             ; preds = %bb.c
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !638 ; 2 uses
  %i.h = icmp eq i64 %.val.i, 0
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.i, align 8, !alias.scope !643, !nonnull !3, !noundef !3
  %i.j = mul nuw i64 %.val.i, 56
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !647
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.d, %bb.e ], [ %i.l, %bb.j ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.k, align 8, !alias.scope !650 ; 2 uses
  %i.m = icmp eq i64 %.val2.i.i, 0
  br i1 %i.m, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.n, align 8, !alias.scope !657, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !658
  br label %common.resume

bb.k:                                             ; preds = %bb.h
  %.val.i.i = load i64, ptr %i.k, align 8, !alias.scope !650 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i, 0
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.p, align 8, !alias.scope !657, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !661
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !664 ; 2 uses
  %i.b = icmp eq i64 %.val2.i, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.c, align 8, !alias.scope !669, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !670
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %0, align 8, !alias.scope !664 ; 2 uses
  %i.d = icmp eq i64 %.val.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !669, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !673
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !676, !noundef !3 ; 2 uses
  %i.b = add nsw i8 %i.a, -6
  %i.c = icmp samesign ugt i8 %i.a, 5
  %narrow = select i1 %i.c, i8 %i.b, i8 3
  switch i8 %narrow, label %bb.b [
    i8 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit
    i8 1, label %bb.c
    i8 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.g, %bb.f, %bb.b, %bb.a, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.d, align 8, !alias.scope !677 ; 2 uses
  %i.f = icmp eq i64 %.val2.i.i, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.g, align 8, !alias.scope !684, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !685
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.f:                                             ; preds = %bb.c
  %.val.i.i = load i64, ptr %i.d, align 8, !alias.scope !677 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i, 0
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.i, align 8, !alias.scope !684, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !688
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.l, align 8, !alias.scope !713 ; 2 uses
  %i.n = icmp eq i64 %.val2.i, 0
  br i1 %i.n, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.o, align 8, !alias.scope !718, !nonnull !3, !noundef !3
  %i.p = shl nuw i64 %.val2.i, 5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !719
  br label %common.resume

bb.l:                                             ; preds = %bb.i
  %.val.i = load i64, ptr %i.l, align 8, !alias.scope !713 ; 2 uses
  %i.q = icmp eq i64 %.val.i, 0
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.r, align 8, !alias.scope !718, !nonnull !3, !noundef !3
  %i.s = shl nuw i64 %.val.i, 5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !722
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes14AttributeValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !114, !alias.scope !725, !noundef !3
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %0, align 8, !alias.scope !728 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !735, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !736
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !728 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !735, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !739
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation18SerializationErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !742, !alias.scope !743, !noundef !3
  %switch.i = icmp slt i64 %i.a, -9223372036854775806
  br i1 %switch.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation22SerializationErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !746 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !759, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !760
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !746 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation22SerializationErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !759, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !763
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation22SerializationErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation22SerializationErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types9date_time6format19DateTimeFormatErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !114, !alias.scope !766, !noundef !3
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types9date_time6format23DateTimeFormatErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !771 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !778, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !779
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !771 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types9date_time6format23DateTimeFormatErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !778, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !782
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types9date_time6format23DateTimeFormatErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types9date_time6format23DateTimeFormatErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 1, label %bb.c
  ], !prof !785

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !3, !align !308, !noundef !3 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !310, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.k) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !309, !invariant.load !3 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !310, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.q) #29
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.f
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #29
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !114, !alias.scope !786, !noundef !3
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !789 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i, 0
  br i1 %i.d, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.e, align 8, !alias.scope !794, !nonnull !3, !noundef !3
  %i.f = mul nuw i64 %.val2.i.i, 56
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !795
  br label %.body

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !789 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i, 0
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.h, align 8, !alias.scope !794, !nonnull !3, !noundef !3
  %i.i = mul nuw i64 %.val.i.i, 56
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !798
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEEECs9rVkZwOUgsI_13deltalake_aws.exit

.body:                                            ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.j) #30
          to label %common.resume unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.f, %bb.e, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !range !801, !alias.scope !802, !noundef !3
  %switch1.i = icmp slt i64 %i.l, -9223372036854775795
  br i1 %switch1.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEEECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !805 ; 2 uses
  %i.n = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.n, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !814, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !815
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %.val.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !805 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !814, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !818
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorECs9rVkZwOUgsI_13deltalake_aws.exit

common.resume:                                    ; preds = %.body, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.m, %bb.i ], [ %i.c, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types20__comparison_operator18ComparisonOperatorECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %.body
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !821, !noundef !3
  switch i8 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit [
    i8 0, label %bb.b
    i8 2, label %bb.g
    i8 3, label %bb.l
    i8 4, label %bb.q
    i8 5, label %bb.r
    i8 6, label %bb.w
    i8 8, label %bb.ab
    i8 9, label %bb.ag
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.ak, %bb.aj, %bb.af, %bb.ae, %bb.aa, %bb.z, %bb.v, %bb.u, %bb.p, %bb.o, %bb.k, %bb.j, %bb.f, %bb.e, %bb.q, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.b, align 8, !alias.scope !822 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i, 0
  br i1 %i.d, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.e, align 8, !alias.scope !829, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !830
  br label %common.resume

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %i.b, align 8, !alias.scope !822 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !829, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !833
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit

common.resume:                                    ; preds = %bb.ah, %bb.ai, %bb.ac, %bb.ad, %bb.x, %bb.y, %bb.s, %bb.t, %bb.m, %bb.n, %bb.h, %bb.i, %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.an, %bb.ac ], [ %i.c, %bb.c ], [ %i.i, %bb.h ], [ %i.q, %bb.m ], [ %i.z, %bb.s ], [ %i.af, %bb.x ], [ %i.c, %bb.d ], [ %i.i, %bb.i ], [ %i.q, %bb.n ], [ %i.z, %bb.t ], [ %i.af, %bb.y ], [ %i.an, %bb.ad ], [ %i.at, %bb.ai ], [ %i.at, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.h, align 8, !alias.scope !836 ; 2 uses
  %i.j = icmp eq i64 %.val2.i, 0
  br i1 %i.j, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.k, align 8, !alias.scope !841, !nonnull !3, !noundef !3
  %i.l = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !842
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %.val.i = load i64, ptr %i.h, align 8, !alias.scope !836 ; 2 uses
  %i.m = icmp eq i64 %.val.i, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.n, align 8, !alias.scope !841, !nonnull !3, !noundef !3
  %i.o = mul nuw i64 %.val.i, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !845
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit

common.resume:                                    ; preds = %bb.b, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.d, %bb.e ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !309, !alias.scope !1246, !noundef !3 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1246
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !1246
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1246
  %i.j = load i64, ptr %i.a, align 8, !range !1249, !noalias !1246, !noundef !3
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !114, !noalias !1246, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !1246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1246
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #32
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !1246, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1246
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !1246
  %i.q = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !1246
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !309   ; 3 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !72

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 2 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.c, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.i = icmp eq i64 %4, 1
  %i.j = icmp ult i64 %4, 1025
  %..i = select i1 %i.j, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.i, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1250
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.k, align 8, !alias.scope !1250
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1250
  %i.l = load i64, ptr %i.a, align 8, !range !1249, !noalias !1250, !noundef !3
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.e, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.n, align 8, !range !114, !noalias !1250, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !1250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1250
  br label %bb.f

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !noalias !1250, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1250
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !1250
  %i.s = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !1250
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs9rVkZwOUgsI_13deltalake_aws.exit, %bb.c, %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.q, %bb.e ], [ undef, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs9rVkZwOUgsI_13deltalake_aws.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.o, %bb.e ], [ -9223372036854775807, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs9rVkZwOUgsI_13deltalake_aws.exit ], [ -9223372036854775807, %bb.a ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !1253 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !72

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1259
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1259
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1259
  %i.i = load i64, ptr %i.a, align 8, !range !1249, !noalias !1259, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !114, !noalias !1259, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !1259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1259
  br label %bb.f

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !1259, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1259
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !1259
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !1259
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #32
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = mul nuw i64 %.val, %3                      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2) #29
  %i.e = inttoptr i64 %2 to ptr
  store ptr %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %1                       ; 3 uses
  %i.g = icmp ule i64 %i.f, %4
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.f) #29 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit
  store ptr %i.h, ptr %i.a, align 8
  %i.j = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.f, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %bb.c ], [ %2, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit ], [ -9223372036854775807, %bb.a ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.l
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !17
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #29
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.j = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #29
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.n, align 8
  store i64 %storemerge13, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !17
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  br i1 %2, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #29
  br label %bb.h

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %.pn10 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn10, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn10, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE14insert_no_growCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !1260
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !47

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.v, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !3  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.b:                                             ; preds = %._crit_edge.i
  %i.l = load <16 x i8>, ptr %.val, align 16, !noalias !1263
  %i.m = icmp slt <16 x i8> %i.l, zeroinitializer
  %i.n = bitcast <16 x i1> %i.m to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.n, 0
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.n, i1 true)
  %i.p = zext nneg i16 %i.o to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.p
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.q = phi i64 [ %i.r, %.lr.ph.i ], [ 0, %bb.a ]
  %i.r = add i64 %i.q, 16                         ; 2 uses
  %i.s = add i64 %i.r, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.s, %.val3             ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.t, align 1, !noalias !1260
  %i.u = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.v = bitcast <16 x i1> %i.u to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.v, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !51

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.w = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.p, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.y = lshr i64 %1, 57
  %i.z = trunc nuw nsw i64 %i.y to i8             ; 2 uses
  %i.aa = add i64 %.sroa.0.0.i5.i, -16
  %i.ab = and i64 %i.aa, %.val3
  store i8 %i.z, ptr %i.x, align 1
  %i.ac = getelementptr i8, ptr %.val, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  store i8 %i.z, ptr %i.ad, align 1
  %i.ae = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.af = getelementptr inbounds [48 x i8], ptr %.val, i64 %i.ae ; 2 uses
  %i.ag = and i8 %i.w, 1
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.ak = load <2 x i64>, ptr %i.ai, align 8
  %i.al = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ah, i64 0
  %i.am = sub <2 x i64> %i.ak, %i.al
  store <2 x i64> %i.am, ptr %i.ai, align 8
  ret ptr %i.af
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBZ_3vec3VecBU_EEE3newCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = load <16 x i8>, ptr %1, align 16, !noalias !1266
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.c, ptr %i.e, align 8
  store ptr %2, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
end_hunk_5
begin_hunk_6_@_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws:bb.a

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1737
  %i.be = getelementptr inbounds i8, ptr %i.bb, i64 -96
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %bb.m unwind label %bb.l, !noalias !1738

bb.k:                                             ; preds = %bb.n, %bb.l
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.n ], [ %i.bf, %bb.l ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.d) #30
          to label %.body.i.i unwind label %bb.t, !noalias !1738

bb.l:                                             ; preds = %.noexc.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1737
  %i.bg = getelementptr inbounds i8, ptr %i.bb, i64 -72
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %bb.p unwind label %bb.o, !noalias !1738

bb.n:                                             ; preds = %bb.r, %bb.o
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.bk, %bb.r ], [ %i.bh, %bb.o ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.c) #30
          to label %bb.k unwind label %bb.t, !noalias !1738

bb.o:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %i.bi = getelementptr inbounds i8, ptr %i.bb, i64 -48 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !range !114, !alias.scope !1739, !noalias !1738, !noundef !3
  %.not.i.i.i.i = icmp eq i64 %i.bj, -9223372036854775808
  br i1 %.not.i.i.i.i, label %_RNvXs8_NtNtCsat9blWvDIpa_11aws_runtime10env_config8propertyNtB5_13PropertiesKeyNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1737
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi)
          to label %bb.s unwind label %bb.r, !noalias !1738

bb.r:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %bb.n unwind label %bb.t, !noalias !1738

bb.s:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !1737
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i, i64 16, i1 false), !noalias !1737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1737
  br label %_RNvXs8_NtNtCsat9blWvDIpa_11aws_runtime10env_config8propertyNtB5_13PropertiesKeyNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i

bb.t:                                             ; preds = %bb.r, %bb.n, %bb.k
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1738
  unreachable

_RNvXs8_NtNtCsat9blWvDIpa_11aws_runtime10env_config8propertyNtB5_13PropertiesKeyNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.s, %bb.p
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i, %bb.s ], [ -9223372036854775808, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1740
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.am, align 8, !alias.scope !1741, !noalias !1740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !1740
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1737
  %i.bm = getelementptr inbounds i8, ptr %i.bb, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm)
          to label %_RNvYTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.u, !noalias !1716

bb.u:                                             ; preds = %_RNvXs8_NtNtCsat9blWvDIpa_11aws_runtime10env_config8propertyNtB5_13PropertiesKeyNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.e) #30
          to label %.body.i.i unwind label %bb.v, !noalias !1716

bb.v:                                             ; preds = %bb.u
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1716
  unreachable

_RNvYTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RNvXs8_NtNtCsat9blWvDIpa_11aws_runtime10env_config8propertyNtB5_13PropertiesKeyNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  %i.bp = ptrtoint ptr %i.bb to i64
  %i.bq = sub i64 %i.ao, %i.bp
  %i.br = sdiv exact i64 %i.bq, 120               ; 2 uses
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds [120 x i8], ptr %.sroa.0.0, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bu, ptr noundef nonnull align 8 dereferenceable(120) %i.e, i64 120, i1 false), !noalias !1716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1716
  %i.bv = add nsw i64 %i.br, 1
  %i.bw = icmp eq i64 %i.bc, 0
  br i1 %i.bw, label %.loopexit, label %bb.j

bb.w:                                             ; preds = %.body.i.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1716
  unreachable

bb.x:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %i.f) #30
          to label %bb.z unwind label %bb.y

.loopexit:                                        ; preds = %_RNvYTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE17new_uninitializedCs9rVkZwOUgsI_13deltalake_aws.exit
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1715, !noalias !1714
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !1714, !noalias !1715, !noundef !3
  store i64 %i.bz, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !1715, !noalias !1714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.z:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTReNtNtCsjPG5xYjJYir_9aws_types6origin6OriginEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 24) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %bb.c
  %i.g = extractvalue { i64, i1 } %i.e, 0
  %i.h = add nuw i64 %i.g, 8
  %i.i = and i64 %i.h, -16                        ; 3 uses
  %i.j = add i64 %i.b, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !17

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1742
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1742 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1742
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !1742
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.r, %bb.f ], [ %i.q, %bb.e ]
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %bb.j

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  br label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.b
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  %.pre-phi = phi i64 [ %i.j, %bb.h ], [ %.pre, %bb.g ]
  %.sroa.09.0 = phi ptr [ %i.s, %bb.h ], [ null, %bb.g ] ; 4 uses
  %.sroa.5.0 = phi i64 [ %i.b, %bb.h ], [ %.sroa.7.0.ph.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  %i.t = load ptr, ptr %1, align 8, !alias.scope !1747, !noalias !1750, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.09.0, ptr nonnull align 1 %i.t, i64 %.pre-phi, i1 false), !noalias !1752
  %i.u = xor i64 %i.b, -1
  %i.v = getelementptr [24 x i8], ptr %i.t, i64 %i.u ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = xor i64 %.sroa.5.0, -1
  %i.x = getelementptr [24 x i8], ptr %.sroa.09.0, i64 %i.w ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = mul i64 %.sroa.5.0, 24
  %i.z = add i64 %i.y, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull align 8 %i.v, i64 %i.z, i1 false), !noalias !1752
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.09.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.6.0..sroa_idx3, align 8
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !1747, !noalias !1750
  store <2 x i64> %i.ab, ptr %.sroa.8.0..sroa_idx5, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBU_3vec3VecBP_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1753, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_3vec3VecB1d_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1759, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_3vec3VecB1a_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1759, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !1760
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.021.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.020.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.019.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.018.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.018.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_3vec3VecBV_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.020.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.021.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !1765
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -768 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_3vec3VecBV_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_3vec3VecBV_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.020.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.021.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.018.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 7 uses
  %i.x = add i64 %.sroa.107.019.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -48 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !range !114, !alias.scope !1770, !noalias !1759, !noundef !3
  %i.aa = icmp eq i64 %i.z, -9223372036854775808
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_3vec3VecBV_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %bb.h unwind label %bb.f, !noalias !1759

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !1775, !noalias !1759 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.ac, label %.body.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -40
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !1782, !noalias !1759, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1783
  br label %.body.i.i.i

bb.h:                                             ; preds = %bb.e
  %.val.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !1775, !noalias !1759 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.w, i64 -40
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !1782, !noalias !1759, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1786
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.f
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_6borrow3CoweEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #30
          to label %common.resume.i.i.i unwind label %bb.n, !noalias !1759

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.i, %bb.h, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB10_3vec3VecBV_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.l unwind label %bb.j, !noalias !1759

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !1789, !noalias !1759 ; 2 uses
  %i.aj = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.aj, label %common.resume.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.val3.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !1789, !noalias !1759, !nonnull !3, !noundef !3
  %i.al = mul nuw i64 %.val2.i.i.i.i, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1759
  br label %common.resume.i.i.i

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %.val.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !1789, !noalias !1759 ; 2 uses
  %i.am = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.val1.i.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !1789, !noalias !1759, !nonnull !3, !noundef !3
  %i.ao = mul nuw i64 %.val.i.i.i.i, 24
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1759
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

common.resume.i.i.i:                              ; preds = %bb.k, %bb.j, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %i.ai, %bb.k ], [ %i.ab, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.n:                                             ; preds = %.body.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1759
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.m, %bb.l
  %i.aq = icmp eq i64 %i.x, 0
  br i1 %i.aq, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_3vec3VecB1a_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_3vec3VecB1a_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_3vec3VecBH_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.ar = mul i64 %i.b, 48                        ; 2 uses
  %i.as = add i64 %i.ar, 48                       ; 2 uses
  %i.at = add i64 %i.b, 17
  %i.au = add i64 %i.at, %i.as                    ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as
  %i.aw = icmp ult i64 %i.au, 9223372036854775793
  tail call void @llvm.assume(i1 %i.av)
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_3vec3VecB1d_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.o

bb.o:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_3vec3VecB1a_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ay = load ptr, ptr %0, align 8, !alias.scope !1753, !nonnull !3, !noundef !3
  %i.az = sub i64 -48, %i.ar
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1753
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_3vec3VecB1d_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_3vec3VecB1d_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_3vec3VecB1a_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBU_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1792)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1792, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1i_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EENtNtB1i_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1798, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1f_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1798, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !1799
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
end_hunk_6
begin_hunk_7_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws:bb.a
_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.af = mul i64 %i.b, 72
  %i.ag = icmp slt i64 %i.b, 256204778801521550
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = and i64 %i.af, -16                      ; 2 uses
  %i.ai = add i64 %i.ah, 80                       ; 2 uses
  %i.aj = add nsw i64 %i.b, 17
  %i.ak = add i64 %i.aj, %i.ai                    ; 4 uses
  %i.al = icmp uge i64 %i.ak, %i.ai
  %i.am = icmp ult i64 %i.ak, 9223372036854775793
  tail call void @llvm.assume(i1 %i.al)
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.ak, 0
  br i1 %i.an, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ao = load ptr, ptr %0, align 8, !alias.scope !2110, !nonnull !3, !noundef !3
  %i.ap = sub i64 -80, %i.ah
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2110
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2143)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2143, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2149, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2149, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2150
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2155
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1536 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [96 x i8], ptr %.sroa.05.1.i.i, i64 %i.v
  %i.x = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -96
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.y), !noalias !2149
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.aa = mul i64 %i.b, 96                        ; 2 uses
  %i.ab = add i64 %i.aa, 96                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2143, !nonnull !3, !noundef !3
  %i.ai = sub i64 -96, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2143
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2160)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2160, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2163)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2166, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2166, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2167
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2172
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1536 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [96 x i8], ptr %.sroa.05.1.i.i, i64 %i.v
  %i.x = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -96
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.y), !noalias !2166
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.aa = mul i64 %i.b, 96                        ; 2 uses
  %i.ab = add i64 %i.aa, 96                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !2160, !nonnull !3, !noundef !3
  %i.ai = sub i64 -96, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2160
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileENtNtB1h_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section7ProfileEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 4                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #29
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2177, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2183, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2183, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2184
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2189
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -384 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i, i64 %i.v
  %i.x = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2194)
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !2203, !noalias !2183, !nonnull !3, !noundef !3
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !2204
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxE9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y) #34, !noalias !2183
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.e, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ac = icmp eq i64 %i.x, 0
  br i1 %i.ac, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.ad = mul i64 %i.b, 24
  %i.ae = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = and i64 %i.ad, -16                      ; 2 uses
  %i.ag = add i64 %i.af, 32                       ; 2 uses
  %i.ah = add nsw i64 %i.b, 17
  %i.ai = add i64 %i.ah, %i.ag                    ; 4 uses
  %i.aj = icmp uge i64 %i.ai, %i.ag
  %i.ak = icmp ult i64 %i.ai, 9223372036854775793
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.am = load ptr, ptr %0, align 8, !alias.scope !2177, !nonnull !3, !noundef !3
  %i.an = sub i64 -32, %i.af
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2177
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2205, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1f_3AnyNtNtB1h_6marker4SyncNtB2x_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2211, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2u_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2211, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2212
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.06.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.108.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.87.014.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.87.014.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SyncNtB2e_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.06.017.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2217
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SyncNtB2e_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SyncNtB2e_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.017.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.87.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i, i64 %i.v ; 2 uses
  %i.x = add i64 %.sroa.108.015.i.i, -1           ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 -16
  %.val.i.i = load ptr, ptr %i.y, align 8, !noalias !2211 ; 5 uses
  %i.z = getelementptr i8, ptr %i.w, i64 -8
  %.val5.i.i = load ptr, ptr %i.z, align 8, !noalias !2211, !nonnull !3, !align !308, !noundef !3 ; 5 uses
  %i.aa = load ptr, ptr %.val5.i.i, align 8, !invariant.load !3, !noalias !2211 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SyncNtB2e_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.aa(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.g, !noalias !2211

bb.f:                                             ; preds = %bb.e, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SyncNtB2e_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !309, !invariant.load !3, !noalias !2211 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !310, !invariant.load !3, !noalias !2211
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) %i.af) #29, !noalias !2211
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !309, !invariant.load !3, !noalias !2211 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !310, !invariant.load !3, !noalias !2211
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !noalias !2211
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.g
  resume { ptr, i32 } %i.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.f
  %i.am = icmp eq i64 %i.x, 0
  br i1 %i.am, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2u_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2u_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.an = shl i64 %i.b, 5                         ; 2 uses
  %i.ao = add i64 %i.an, 32                       ; 2 uses
  %i.ap = add i64 %i.b, 17
  %i.aq = add i64 %i.ap, %i.ao                    ; 4 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao
  %i.as = icmp ult i64 %i.aq, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ar)
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %i.aq, 0
  br i1 %i.at, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1f_3AnyNtNtB1h_6marker4SyncNtB2x_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2u_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.au = load ptr, ptr %0, align 8, !alias.scope !2205, !nonnull !3, !noundef !3
  %i.av = sub nuw nsw i64 -32, %i.an
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2205
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1f_3AnyNtNtB1h_6marker4SyncNtB2x_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1f_3AnyNtNtB1h_6marker4SyncNtB2x_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2u_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2222)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2222, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2225)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2228, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2228, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2229
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.06.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.108.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.87.014.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.87.014.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.06.017.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2234
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.017.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.87.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i, i64 %i.v ; 2 uses
  %i.x = add i64 %.sroa.108.015.i.i, -1           ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 -16
  %.val.i.i = load ptr, ptr %i.y, align 8, !noalias !2228 ; 5 uses
  %i.z = getelementptr i8, ptr %i.w, i64 -8
  %.val5.i.i = load ptr, ptr %i.z, align 8, !noalias !2228, !nonnull !3, !align !308, !noundef !3 ; 5 uses
  %i.aa = load ptr, ptr %.val5.i.i, align 8, !invariant.load !3, !noalias !2228 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.aa(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.g, !noalias !2228

bb.f:                                             ; preds = %bb.e, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !309, !invariant.load !3, !noalias !2228 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !310, !invariant.load !3, !noalias !2228
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) %i.af) #29, !noalias !2228
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !309, !invariant.load !3, !noalias !2228 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1s_4SendEL_ENtNtNtB1u_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !310, !invariant.load !3, !noalias !2228
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !noalias !2228
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1s_4SendEL_ENtNtNtB1u_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1s_4SendEL_ENtNtNtB1u_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit5.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.g
  resume { ptr, i32 } %i.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.f
  %i.am = icmp eq i64 %i.x, 0
  br i1 %i.am, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.an = shl i64 %i.b, 5                         ; 2 uses
  %i.ao = add i64 %i.an, 32                       ; 2 uses
  %i.ap = add i64 %i.b, 17
  %i.aq = add i64 %i.ap, %i.ao                    ; 4 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao
  %i.as = icmp ult i64 %i.aq, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ar)
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %i.aq, 0
  br i1 %i.at, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.au = load ptr, ptr %0, align 8, !alias.scope !2222, !nonnull !3, !noundef !3
  %i.av = sub nuw nsw i64 -32, %i.an
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2222
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2239, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2245, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2245, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2246
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.020.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.019.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.018.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.017.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.017.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.019.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.020.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2251
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1024 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.019.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.020.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.017.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [64 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 6 uses
  %i.x = add i64 %.sroa.107.018.i.i, -1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2256)
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2259)
  %.val.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !2262, !noalias !2245 ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -40
  %.val2.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !2262, !noalias !2245, !nonnull !3, !align !308, !noundef !3 ; 5 uses
  %i.aa = load ptr, ptr %.val2.i.i.i.i, align 8, !invariant.load !3, !noalias !2263 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.aa(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.f unwind label %bb.g, !noalias !2263

bb.f:                                             ; preds = %bb.e, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !309, !invariant.load !3, !noalias !2263 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1x_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !310, !invariant.load !3, !noalias !2263
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) %i.af) #29, !noalias !2263
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1x_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !309, !invariant.load !3, !noalias !2263 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.body.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !310, !invariant.load !3, !noalias !2263
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !noalias !2263
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.g
  %i.am = getelementptr inbounds i8, ptr %i.w, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2267)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !2270, !noalias !2245, !nonnull !3, !noundef !3
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !2271
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

bb.h:                                             ; preds = %.body.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG1_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL2_INtNtB7_5boxed3BoxDNtNtBR_3any3AnyNtNtBR_6marker4SyncNtB25_4SendEL_EQL1_INtNtBR_3fmt9FormatterL0_EEEp6OutputINtNtBR_6result6ResultuNtB2I_5ErrorEB23_B2m_EL_E9drop_slowCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.o, !noalias !2245

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1x_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.f
  %i.aq = getelementptr inbounds i8, ptr %i.w, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !2278, !noalias !2245, !nonnull !3, !noundef !3
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !2279
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1x_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG1_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL2_INtNtB7_5boxed3BoxDNtNtBR_3any3AnyNtNtBR_6marker4SyncNtB25_4SendEL_EQL1_INtNtBR_3fmt9FormatterL0_EEEp6OutputINtNtBR_6result6ResultuNtB2I_5ErrorEB23_B2m_EL_E9drop_slowCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aq) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i.i unwind label %bb.l, !noalias !2245

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.l, %bb.h, %.body.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.az, %bb.l ], [ %i.ag, %bb.h ], [ %i.ag, %.body.i.i.i.i ]
  %i.au = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2280)
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !2283, !noalias !2245, !noundef !3 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_INtNtB17_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2J_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB2H_B30_EL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %i.ax = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !2284
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_INtNtB17_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2J_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB2H_B30_EL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL0_INtNtB7_5boxed3BoxDNtNtBQ_3any3AnyNtNtBQ_6marker4SyncNtB24_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB22_B2l_EL_E9drop_slowB2O_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.au) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_INtNtB17_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2J_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB2H_B30_EL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.o, !noalias !2245

bb.l:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i.i: ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1x_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %i.ba = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !2292, !noalias !2245, !noundef !3 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i.i
  %i.bd = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !2293
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL0_INtNtB7_5boxed3BoxDNtNtBQ_3any3AnyNtNtBQ_6marker4SyncNtB24_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB22_B2l_EL_E9drop_slowB2O_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ba) #34, !noalias !2245
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.o:                                             ; preds = %bb.k, %bb.h
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !2245
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_INtNtB17_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2J_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB2H_B30_EL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  resume { ptr, i32 } %.pn.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.n, %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i.i
  %i.bg = icmp eq i64 %i.x, 0
  br i1 %i.bg, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.bh = shl i64 %i.b, 6                         ; 2 uses
  %i.bi = add i64 %i.bh, 64                       ; 2 uses
  %i.bj = add i64 %i.b, 17
  %i.bk = add i64 %i.bj, %i.bi                    ; 4 uses
  %i.bl = icmp uge i64 %i.bk, %i.bi
  %i.bm = icmp ult i64 %i.bk, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bl)
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp eq i64 %i.bk, 0
  br i1 %i.bn, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.p

bb.p:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.bo = load ptr, ptr %0, align 8, !alias.scope !2239, !nonnull !3, !noundef !3
  %i.bp = sub nuw nsw i64 -64, %i.bh
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bp
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bq, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2239
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2298)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2298, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2304, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1c_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2304, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2305
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.021.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.020.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.019.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.018.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.018.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.020.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.021.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2310
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -768 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.020.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.021.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.018.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 7 uses
  %i.x = add i64 %.sroa.107.019.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -48 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !range !2315, !alias.scope !2316, !noalias !2304, !noundef !3
  %i.aa = icmp slt i64 %i.z, -9223372036854775801
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %bb.h unwind label %bb.f, !noalias !2304

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2321, !noalias !2304 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %.body.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -40
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !2330, !noalias !2304, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2331
  br label %.body.i.i.i

bb.h:                                             ; preds = %bb.e
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2321, !noalias !2304 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
end_hunk_7
begin_hunk_8_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws:bb.a
bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2588
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -384 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i, i64 %i.v
  %i.x = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !2605, !noalias !2582, !nonnull !3, !noundef !3
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !2606
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcShE9drop_slowCs2yqBUmTnVWb_9aws_lc_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y) #34, !noalias !2582
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.e, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ac = icmp eq i64 %i.x, 0
  br i1 %i.ac, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBP_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.ad = mul i64 %i.b, 24
  %i.ae = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = and i64 %i.ad, -16                      ; 2 uses
  %i.ag = add i64 %i.af, 32                       ; 2 uses
  %i.ah = add nsw i64 %i.b, 17
  %i.ai = add i64 %i.ah, %i.ag                    ; 4 uses
  %i.aj = icmp uge i64 %i.ai, %i.ag
  %i.ak = icmp ult i64 %i.ai, 9223372036854775793
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.am = load ptr, ptr %0, align 8, !alias.scope !2576, !nonnull !3, !noundef !3
  %i.an = sub i64 -32, %i.af
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2576
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2607)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2607, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB1j_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2610)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2613, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2613, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2614
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.05.018.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.6.017.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.sroa.107.016.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %.sroa.86.015.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.017.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2619
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -640 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.017.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.018.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 3 uses
  %i.x = add i64 %.sroa.107.016.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.g unwind label %bb.e, !noalias !2613

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2624, !noalias !2613 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.val3.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !2633, !noalias !2613, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2634
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i

bb.g:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2624, !noalias !2613 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.val1.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !2633, !noalias !2613, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2637
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ae = icmp eq i64 %i.x, 0
  br i1 %i.ae, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b
  %i.af = mul i64 %i.b, 40
  %i.ag = icmp slt i64 %i.b, 461168601842738790
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = and i64 %i.af, -16                      ; 2 uses
  %i.ai = add i64 %i.ah, 48                       ; 2 uses
  %i.aj = add nsw i64 %i.b, 17
  %i.ak = add i64 %i.aj, %i.ai                    ; 4 uses
  %i.al = icmp uge i64 %i.ak, %i.ai
  %i.am = icmp ult i64 %i.ak, 9223372036854775793
  tail call void @llvm.assume(i1 %i.al)
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.ak, 0
  br i1 %i.an, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB1j_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ao = load ptr, ptr %0, align 8, !alias.scope !2607, !nonnull !3, !noundef !3
  %i.ap = sub i64 -48, %i.ah
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !2607
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB1j_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB1j_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTReNtNtCsjPG5xYjJYir_9aws_types6origin6OriginEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCsjPG5xYjJYir_9aws_types6origin6OriginENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 24
  %i.d = icmp slt i64 %.val1, 768614336404564650
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 32                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCsjPG5xYjJYir_9aws_types6origin6OriginENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -32, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #29
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCsjPG5xYjJYir_9aws_types6origin6OriginENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCsjPG5xYjJYir_9aws_types6origin6OriginENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCs2y6mmZ7bjoM_12tracing_core5fieldReNtB5_5Value6recordCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  tail call void @_RNvXs5_NtCs2y6mmZ7bjoM_12tracing_core5fieldeNtB5_5Value6record(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 4 uses
  %i.d = load <16 x i8>, ptr %i.a, align 16, !noalias !2640
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE15into_allocationCs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.h = mul i64 %i.c, 48                         ; 2 uses
  %i.i = add i64 %i.h, 48                         ; 2 uses
  %i.j = add i64 %i.c, 17
  %i.k = add i64 %i.j, %i.i                       ; 3 uses
  %i.l = icmp uge i64 %i.k, %i.i
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp ult i64 %i.k, 9223372036854775793
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub i64 -48, %i.h
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE15into_allocationCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE15into_allocationCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.48.0 = phi i64 [ undef, %bb.a ], [ %i.k, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.59.0 = phi ptr [ undef, %bb.a ], [ %i.o, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = icmp sgt <16 x i8> %i.d, splat (i8 -1)
  %i.r = getelementptr i8, ptr %i.a, i64 %i.c
  %i.s = getelementptr i8, ptr %i.r, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.t, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.p, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.s, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.q, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.48.0, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.59.0, ptr %.sroa.59.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 4 uses
  %i.d = load <16 x i8>, ptr %i.a, align 16, !noalias !2645
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE15into_allocationCs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.h = mul i64 %i.c, 80                         ; 2 uses
  %i.i = add i64 %i.h, 80                         ; 2 uses
  %i.j = add i64 %i.c, 17
  %i.k = add i64 %i.j, %i.i                       ; 3 uses
  %i.l = icmp uge i64 %i.k, %i.i
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp ult i64 %i.k, 9223372036854775793
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub i64 -80, %i.h
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE15into_allocationCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE15into_allocationCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.48.0 = phi i64 [ undef, %bb.a ], [ %i.k, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.59.0 = phi ptr [ undef, %bb.a ], [ %i.o, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = icmp sgt <16 x i8> %i.d, splat (i8 -1)
  %i.r = getelementptr i8, ptr %i.a, i64 %i.c
  %i.s = getelementptr i8, ptr %i.r, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.t, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.p, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.s, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.q, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.48.0, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.59.0, ptr %.sroa.59.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_12DisplayValueRINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEENtB5_5Value6recordCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @87) #35
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_12DisplayValueRINtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtB17_15checksum_config38UnknownRequestChecksumCalculationErrorEEENtB5_5Value6recordCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88) #35
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_12DisplayValueRINtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtB17_15checksum_config38UnknownResponseChecksumValidationErrorEEENtB5_5Value6recordCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89) #35
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_12DisplayValueRINtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment15InvalidUrlValueEEENtB5_5Value6recordCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90) #35
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_12DisplayValueRINtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment16InvalidUintValueEEENtB5_5Value6recordCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @91) #35
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_12DisplayValueRINtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEEENtB5_5Value6recordCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92) #35
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_12DisplayValueRINtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsjPG5xYjJYir_9aws_types15endpoint_config31AccountIdEndpointModeParseErrorEEENtB5_5Value6recordCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93) #35
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_12DisplayValueRINtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsjPG5xYjJYir_9aws_types8app_name14InvalidAppNameEEENtB5_5Value6recordCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94) #35
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_12DisplayValueRINtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEEENtB5_5Value6recordCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
end_hunk_8
