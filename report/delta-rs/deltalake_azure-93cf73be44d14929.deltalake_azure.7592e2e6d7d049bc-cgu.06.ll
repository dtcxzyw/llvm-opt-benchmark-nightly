inline.NumInlined: 105
inline.NumDeleted: 62
begin_hunk_0_@_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B27_EE9from_iterINtNtB2R_8adapters12GenericShuntINtNtB48_3map3MapINtB7_8IntoIterB15_B27_ENCINvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB5o_17AzureConfigHelper7try_newB15_B27_BR_E0EINtNtB2T_6result6ResultNtNtB2T_7convert10InfallibleNtB1b_5ErrorEEEB5q_:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4h_17AzureConfigHelper7try_newB2u_B3w_INtB1B_7HashMapB2u_B3w_EE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtB2A_5ErrorEEEB4j_.exit: ; preds = %bb.l, %.body
  %.pn6 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.n, %bb.l ]
  resume { ptr, i32 } %.pn6

bb.l:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4h_17AzureConfigHelper7try_newB2u_B3w_INtB1B_7HashMapB2u_B3w_EE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtB2A_5ErrorEEEB4j_.exit unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1, i8 noundef range(i8 0, 41) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.d = lshr i64 %i.c, 57
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !40, !noalias !41, !noundef !3 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !alias.scope !40, !noalias !41, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.k = add nsw i8 %2, -18
  %i.l = icmp samesign ugt i8 %2, 17
  %narrow1.i.i.i.i = select i1 %i.l, i8 %i.k, i8 23 ; 2 uses
  %i.m = icmp ne i8 %narrow1.i.i.i.i, 23
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ag, %bb.c ]
  %.pn.i.i = phi i64 [ %i.c, %bb.a ], [ %i.ah, %bb.c ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.g        ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i22.i = load <16 x i8>, ptr %i.n, align 1, !noalias !44 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i, %i.j
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not28.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not28.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1U_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Csa5Qem16B4JI_15deltalake_azure.exit.thread.i
  %.sroa.06.0.i29.i = phi i16 [ %i.af, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1U_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Csa5Qem16B4JI_15deltalake_azure.exit.thread.i ], [ %i.p, %bb.b ] ; 3 uses
  %i.q = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i29.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i, %i.r
  %i.t = and i64 %i.s, %i.g
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -32
  %.val2.i.i = load i8, ptr %i.w, align 1, !range !47, !noalias !48, !noundef !3 ; 3 uses
  %i.x = add nsw i8 %.val2.i.i, -18
  %i.y = icmp samesign ugt i8 %.val2.i.i, 17
  %narrow.i.i.i.i = select i1 %i.y, i8 %i.x, i8 23
  %i.z = icmp eq i8 %narrow.i.i.i.i, %narrow1.i.i.i.i
  %i.aa = icmp eq i8 %.val2.i.i, %2
  %spec.select.i.i.i.i = or i1 %i.m, %i.aa
  %or.cond.i = and i1 %spec.select.i.i.i.i, %i.z
  br i1 %or.cond.i, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECsa5Qem16B4JI_15deltalake_azure.exit, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1U_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Csa5Qem16B4JI_15deltalake_azure.exit.thread.i, !prof !51

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1U_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Csa5Qem16B4JI_15deltalake_azure.exit.thread.i, %bb.b
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d, !prof !21

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1U_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Csa5Qem16B4JI_15deltalake_azure.exit.thread.i: ; preds = %.lr.ph.i
  %i.ae = add i16 %.sroa.06.0.i29.i, -1
  %i.af = and i16 %i.ae, %.sroa.06.0.i29.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.ag = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ah = add i64 %.sroa.01.0.i.i, %i.ag
  br label %bb.b

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECsa5Qem16B4JI_15deltalake_azure.exit: ; preds = %.lr.ph.i
  store ptr %i.v, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ai, align 8
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  call void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECsa5Qem16B4JI_15deltalake_azure.exit
  %.sink = phi i8 [ %2, %bb.d ], [ 41, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECsa5Qem16B4JI_15deltalake_azure.exit ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1, i8 noundef range(i8 0, 41) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  store i8 %2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a)
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !52, !noalias !55, !nonnull !3, !noundef !3 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val7.i = load i64, ptr %i.d, align 8, !alias.scope !52, !noalias !55, !noundef !3 ; 3 uses
  %i.e = lshr i64 %i.c, 57
  %i.f = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.noexc
  %.pn.i.i = phi i64 [ %i.c, %.noexc ], [ %i.ah, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %.noexc ], [ %.sroa.4.124.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %.noexc ], [ %.sroa.04.126.i.i, %bb.f ]
  %i.i = phi i64 [ 0, %.noexc ], [ %i.ag, %bb.f ]
  %.sroa.0.021.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.021.i.i
  %.sroa.0.0.copyload.i31.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !58 ; 3 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, %i.h
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not32.i.i = icmp eq i16 %i.l, 0
  br i1 %.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.033.i.i = phi i16 [ %i.w, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.m = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.033.i.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.0.021.i.i, %i.n
  %i.p = and i64 %i.o, %.val7.i
  %i.q = load ptr, ptr %1, align 8, !alias.scope !52, !noalias !61, !nonnull !3, !noundef !3
  %i.r = sub nsw i64 0, %i.p                      ; 2 uses
  %i.s = getelementptr inbounds [32 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -32
  %i.u = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyINtB2_10EquivalentBq_E10equivalentCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %.lr.ph.i.i
  br i1 %i.u, label %bb.i, label %bb.d, !prof !20

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not13.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.e, !prof !21

bb.d:                                             ; preds = %.noexc6
  %i.v = add i16 %.sroa.01.033.i.i, -1
  %i.w = and i16 %i.v, %.sroa.01.033.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.x = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread28.i.i, !prof !21

.thread28.i.i:                                    ; preds = %bb.e
  %i.z = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.y, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.0.021.i.i, %i.aa
  %i.ac = and i64 %i.ab, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread28.i.i, %._crit_edge.i.i
  %.sroa.4.125.i.i = phi i64 [ %i.ac, %.thread28.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.g, !prof !21

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.126.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.124.i.i = phi i64 [ %.sroa.4.125.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ag = add i64 %i.i, 16                        ; 2 uses
  %i.ah = add i64 %i.ag, %.sroa.0.021.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.125.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !3
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.h, label %bb.k, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.al = load <16 x i8>, ptr %.val.i, align 16, !noalias !64
  %i.am = icmp slt <16 x i8> %i.al, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i18.i.i = icmp ne i16 %i.an, 0
  %i.ao = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.an, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  call void @llvm.assume(i1 %.not.i18.i.i)
  br label %bb.k

bb.i:                                             ; preds = %.noexc6
  %i.aq = load ptr, ptr %1, align 8, !alias.scope !52, !noalias !55, !nonnull !3
  %i.ar = getelementptr inbounds [32 x i8], ptr %i.aq, i64 %i.r
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  ret void

bb.k:                                             ; preds = %bb.h, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ap, %bb.h ], [ %.sroa.4.125.i.i, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.at = load ptr, ptr %1, align 8, !alias.scope !67, !noalias !70, !nonnull !3, !noundef !3 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !noalias !72, !noundef !3
  %i.aw = and i8 %i.av, 1
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.az = add i64 %.sroa.3.0.i.ph.i, -16
  %i.ba = load i64, ptr %i.d, align 8, !alias.scope !67, !noalias !70, !noundef !3
  %i.bb = and i64 %i.ba, %i.az
  store i8 %i.f, ptr %i.au, align 1, !noalias !72
  %i.bc = getelementptr i8, ptr %i.at, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  store i8 %i.f, ptr %i.bd, align 1, !noalias !72
  %i.be = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !67, !noalias !70
  %i.bf = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ax, i64 0
  %i.bg = sub <2 x i64> %i.be, %i.bf
  store <2 x i64> %i.bg, ptr %i.ay, align 8, !alias.scope !67, !noalias !70
  %i.bh = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bi = getelementptr inbounds [32 x i8], ptr %i.at, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -32
  store i8 %2, ptr %i.bj, align 8, !noalias !67
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bi, i64 -31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false), !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.j

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.b, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable(24) %3) #14
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EE6insertCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !align !73, !noundef !3 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !74, !noalias !77, !nonnull !3, !noundef !3 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !noalias !79, !noundef !3
  %i.k = and i8 %i.j, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.n = lshr i64 %i.e, 57
  %i.o = trunc nuw nsw i64 %i.n to i8             ; 2 uses
  %i.p = add i64 %i.g, -16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !74, !noalias !77, !noundef !3
  %i.s = and i64 %i.r, %i.p
  store i8 %i.o, ptr %i.i, align 1, !noalias !79
  %i.t = getelementptr i8, ptr %i.h, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store i8 %i.o, ptr %i.u, align 1, !noalias !79
  %i.v = load <2 x i64>, ptr %i.m, align 8, !alias.scope !74, !noalias !77
  %i.w = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.l, i64 0
  %i.x = sub <2 x i64> %i.v, %i.w
  store <2 x i64> %i.x, ptr %i.m, align 8, !alias.scope !74, !noalias !77
  %i.y = sub nsw i64 0, %i.g
  %i.z = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -104 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false), !noalias !74
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !74
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !74
  store ptr %i.b, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0..sroa_idx, ptr %i.ac, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EE6insertCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !align !73, !noundef !3 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !80, !noalias !83, !nonnull !3, !noundef !3 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !noalias !85, !noundef !3
  %i.k = and i8 %i.j, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.n = lshr i64 %i.e, 57
  %i.o = trunc nuw nsw i64 %i.n to i8             ; 2 uses
  %i.p = add i64 %i.g, -16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !80, !noalias !83, !noundef !3
  %i.s = and i64 %i.r, %i.p
  store i8 %i.o, ptr %i.i, align 1, !noalias !85
  %i.t = getelementptr i8, ptr %i.h, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store i8 %i.o, ptr %i.u, align 1, !noalias !85
  %i.v = load <2 x i64>, ptr %i.m, align 8, !alias.scope !80, !noalias !83
  %i.w = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.l, i64 0
  %i.x = sub <2 x i64> %i.v, %i.w
  store <2 x i64> %i.x, ptr %i.m, align 8, !alias.scope !80, !noalias !83
  %i.y = sub nsw i64 0, %i.g
  %i.z = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -104 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false), !noalias !80
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !80
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !80
  store ptr %i.b, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0..sroa_idx, ptr %i.ac, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringE4iterCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = add i64 %i.c, 1
  tail call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE3newCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXCsa5Qem16B4JI_15deltalake_azureINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1s_ENtB2_12AzureOptions16as_azure_options(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !alias.scope !86, !noalias !89, !nonnull !3, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !86, !noalias !89, !noundef !3
  %i.h = add i64 %i.g, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, i64 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !86, !noalias !89, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !91
  %i.k = tail call { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5), !noalias !91 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !91
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !91
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !91
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i)
          to label %.noexc.i unwind label %bb.b, !noalias !91

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !95
  store ptr %i.c, ptr %i.b, align 8, !noalias !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  invoke void @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9fold_implNCINvXsG_NtB8_3mapINtB1V_4IterBV_BV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters10filter_map15filter_map_foldTRBV_B4e_ETNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyBV_EuNCNvXCsa5Qem16B4JI_15deltalake_azureINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBV_BV_ENtB5A_12AzureOptions16as_azure_options0NCINvNvB2n_8for_each4callB4n_NCINvXs1i_B1V_INtB1V_7HashMapB4o_BV_NtNtNtB6e_4hash6random11RandomStateEINtNtB2r_7collect6ExtendB4n_E6extendINtB3t_9FilterMapINtB68_4IterBV_BV_EB5v_EE0E0E0E0uEB5A_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B27_EE9from_iterINtNtNtB2R_8adapters10filter_map9FilterMapINtB7_4IterB27_B27_ENCNvXCsa5Qem16B4JI_15deltalake_azureIBS_B27_B27_ENtB5a_12AzureOptions16as_azure_options0EEB5a_.exit unwind label %bb.b, !noalias !91

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit.i unwind label %bb.c, !noalias !91

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !91
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.n

_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B27_EE9from_iterINtNtNtB2R_8adapters10filter_map9FilterMapINtB7_4IterB27_B27_ENCNvXCsa5Qem16B4JI_15deltalake_azureIBS_B27_B27_ENtB5a_12AzureOptions16as_azure_options0EEB5a_.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !91
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream10try_filterINtB5_9TryFilterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1t_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB3J_5ErrorENtNtB1t_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadybENCNvYNtNtB3J_5azure14MicrosoftAzureNtB3J_11ObjectStore16list_with_offset0EB2u_9poll_nextCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.791 = alloca [72 x i8], align 8          ; 4 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 2 uses
  %i.a = alloca [96 x i8], align 8                ; 13 uses
  %.sroa.11.sroa.13 = alloca [56 x i8], align 8   ; 8 uses
  %.sroa.7 = alloca [88 x i8], align 8            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.846.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.745.sroa.7.0..sroa.745.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.745.sroa.8.0..sroa.745.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.791.80..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.791, i64 56
  %.sroa.5118.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6121.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.7124.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.g = load i8, ptr %i.c, align 8, !range !113, !noundef !3 ; 3 uses
  %.not = icmp eq i8 %i.g, 3
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  store i8 2, ptr %i.c, align 8, !alias.scope !114
  %.not.i = icmp eq i8 %i.g, 2
  br i1 %.not.i, label %bb.d, label %_RNvXs1_NtNtCs8CRAYtH5WmW_12futures_util6future5readyINtB5_5ReadybENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsa5Qem16B4JI_15deltalake_azure.exit, !prof !21

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #15, !noalias !114
  unreachable

_RNvXs1_NtNtCs8CRAYtH5WmW_12futures_util6future5readyINtB5_5ReadybENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsa5Qem16B4JI_15deltalake_azure.exit: ; preds = %bb.c
  %i.h = trunc nuw i8 %i.g to i1
  store i8 3, ptr %i.c, align 8
  %.sroa.06.0.copyload = load i64, ptr %i.d, align 8 ; 3 uses
  br i1 %i.h, label %bb.q, label %bb.o

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB5_6Streamp4ItemINtNtBL_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2s_5ErrorENtNtBL_6marker4SendEL_EENtB5_9TryStream13try_poll_nextCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.i = load i64, ptr %i.a, align 8, !range !117, !noundef !3 ; 3 uses
  switch i64 %i.i, label %bb.k [
    i64 -9223372036854775806, label %bb.f
    i64 -9223372036854775807, label %bb.g
    i64 -9223372036854775808, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.13)
  br label %bb.h

bb.h:                                             ; preds = %bb.s, %bb.q, %bb.g
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %bb.g ], [ %.sroa.06.0.copyload, %bb.s ], [ -9223372036854775807, %bb.q ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, i64 88, i1 false)
  br label %bb.t

bb.i:                                             ; preds = %bb.e
  %.sroa.0129.0.copyload = load ptr, ptr %.sroa.745.0..sroa_idx, align 8
  %.sroa.7130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7130.0.copyload = load i64, ptr %.sroa.7130.0..sroa_idx, align 8
  %.sroa.8131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11.sroa.13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8131.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.460.sroa.5.0..sroa.460.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.460.sroa.5.0..sroa.460.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11.sroa.13, i64 56, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0129.0.copyload, ptr %.sroa.460.0..sroa_idx, align 8
  %.sroa.460.sroa.4.0..sroa.460.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7130.0.copyload, ptr %.sroa.460.sroa.4.0..sroa.460.0..sroa_idx.sroa_idx, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.l
  %i.j = landingpad { ptr, i32 }
          cleanup
  store i64 %i.i, ptr %i.d, align 8
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %.sroa.745.sroa.0.0.copyload, ptr %.sroa.5118.0..sroa_idx, align 8
  %.sroa.6121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %.sroa.745.sroa.7.0.copyload, ptr %.sroa.6121.0..sroa_idx, align 8
  %.sroa.7124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7124.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.791, i64 72, i1 false)
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  %.sroa.745.sroa.0.0.copyload = load ptr, ptr %.sroa.745.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.745.sroa.7.0.copyload = load i64, ptr %.sroa.745.sroa.7.0..sroa.745.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11.sroa.13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.745.sroa.8.0..sroa.745.0..sroa_idx.sroa_idx, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.846.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.791, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11.sroa.13, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.791.80..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  %.val70 = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %.val71 = load i64, ptr %i.f, align 8, !noundef !3 ; 2 uses
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %.sroa.745.sroa.7.0.copyload, i64 %.val71)
  %i.k = call i32 @memcmp(ptr nonnull readonly %.sroa.745.sroa.0.0.copyload, ptr nonnull readonly %.val70, i64 %spec.store.select.i) ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp eq i32 %i.k, 0
  %i.n = sub i64 %.sroa.745.sroa.7.0.copyload, %.val71
  %spec.select.i = select i1 %i.m, i64 %i.n, i64 %i.l
  %i.o = icmp sgt i64 %spec.select.i, 0
  %i.p = zext i1 %i.o to i8
  store i8 %i.p, ptr %i.c, align 8
  %i.q = load i64, ptr %i.d, align 8, !range !22, !alias.scope !118, !noundef !3
  %i.r = icmp eq i64 %i.q, -9223372036854775808
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECsa5Qem16B4JI_15deltalake_azure.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECsa5Qem16B4JI_15deltalake_azure.exit unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECsa5Qem16B4JI_15deltalake_azure.exit: ; preds = %bb.k, %bb.l
  store i64 %i.i, ptr %i.d, align 8
  store ptr %.sroa.745.sroa.0.0.copyload, ptr %.sroa.5118.0..sroa_idx119, align 8
  store i64 %.sroa.745.sroa.7.0.copyload, ptr %.sroa.6121.0..sroa_idx122, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7124.0..sroa_idx125, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.791, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.13)
  br label %.backedge

bb.m:                                             ; preds = %bb.j, %bb.r
  %.pn66 = phi { ptr, i32 } [ %i.t, %bb.r ], [ %i.j, %bb.j ]
  resume { ptr, i32 } %.pn66

bb.n:                                             ; preds = %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.13)
  br label %bb.t

bb.o:                                             ; preds = %_RNvXs1_NtNtCs8CRAYtH5WmW_12futures_util6future5readyINtB5_5ReadybENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsa5Qem16B4JI_15deltalake_azure.exit
  %i.s = icmp eq i64 %.sroa.06.0.copyload, -9223372036854775808
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECsa5Qem16B4JI_15deltalake_azure.exit75, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECsa5Qem16B4JI_15deltalake_azure.exit75 unwind label %bb.r

bb.q:                                             ; preds = %_RNvXs1_NtNtCs8CRAYtH5WmW_12futures_util6future5readyINtB5_5ReadybENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsa5Qem16B4JI_15deltalake_azure.exit
  store i64 -9223372036854775808, ptr %i.d, align 8
  %.not68 = icmp eq i64 %.sroa.06.0.copyload, -9223372036854775808
  br i1 %.not68, label %bb.h, label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.t = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775808, ptr %i.d, align 8
  br label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECsa5Qem16B4JI_15deltalake_azure.exit75: ; preds = %bb.o, %bb.p
  store i64 -9223372036854775808, ptr %i.d, align 8
  br label %.backedge

.backedge:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECsa5Qem16B4JI_15deltalake_azure.exit75, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECsa5Qem16B4JI_15deltalake_azure.exit
  br label %bb.b

bb.s:                                             ; preds = %bb.q
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, i64 88, i1 false)
  br label %bb.h

bb.t:                                             ; preds = %bb.n, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream10try_filterINtB5_9TryFilterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1t_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB3J_5ErrorENtNtB1t_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadybENCNvYNtNtB3J_5azure14MicrosoftAzureNtB3J_11ObjectStore16list_with_offset0EB2u_9size_hintCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.c = load i8, ptr %i.b, align 8, !range !113, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_RNvXs_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2r_5ErrorENtNtBK_6marker4SendEL_EEB1L_9size_hintCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !121, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ne i8 %i.c, 3
  %i.k = zext i1 %i.j to i64
  %i.l = add i64 %i.h, %i.k                       ; 2 uses
  %i.m = icmp uge i64 %i.l, %i.h
  %. = zext i1 %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i64 [ %., %bb.b ], [ 0, %bb.a ]
  %.sroa.43.0 = phi i64 [ %i.l, %bb.b ], [ undef, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.43.0, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs6_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !125, !noalias !122, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !125, !noalias !122, !noundef !3
  %i.f = add i64 %i.e, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, i64 noundef %i.f), !noalias !125
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !125, !noalias !122, !noundef !3
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.h, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !122, !noalias !125
  %i.i = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs6Po7BT7Nknu_5alloc6string6StringB12_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterB13_B13_EECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = call noundef zeroext i1 @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !noundef !3
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -48
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.h, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !noundef !3
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.h, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !127, !noalias !128, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csa5Qem16B4JI_15deltalake_azure.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa5Qem16B4JI_15deltalake_azure(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csa5Qem16B4JI_15deltalake_azure.exit

_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csa5Qem16B4JI_15deltalake_azure.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa5Qem16B4JI_15deltalake_azure(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB3X_17AzureConfigHelper7try_newB2a_B3c_INtB1h_7HashMapB2a_B3c_EE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB2g_5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMs0_NtNtB7_3ops9try_traitINtB7z_17NeverShortCircuituE10wrap_mut_2uTB2a_B3c_ENCINvNvB6I_8for_each4callB8z_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB9m_7HashMapB2a_B3c_NtNtNtB1n_4hash6random11RandomStateEINtNtB6M_7collect6ExtendB8z_E6extendBE_E0E0E0B7U_EB3Z_(ptr noalias noundef align 8 dereferenceable(72), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB3W_17AzureConfigHelper7try_newB29_B3b_INtB1g_7HashMapB29_B3b_EE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtB2f_5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3Y_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9fold_implNCINvXsG_NtB8_3mapINtB1V_4IterBV_BV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters10filter_map15filter_map_foldTRBV_B4e_ETNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyBV_EuNCNvXCsa5Qem16B4JI_15deltalake_azureINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBV_BV_ENtB5A_12AzureOptions16as_azure_options0NCINvNvB2n_8for_each4callB4n_NCINvXs1i_B1V_INtB1V_7HashMapB4o_BV_NtNtNtB6e_4hash6random11RandomStateEINtNtB2r_7collect6ExtendB4n_E6extendINtB3t_9FilterMapINtB68_4IterBV_BV_EB5v_EE0E0E0E0uEB5A_(ptr noalias noundef align 8 captures(none) dead_on_return dereferenceable(32), i64 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyINtB2_10EquivalentBq_E10equivalentCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE3newCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB5_6Streamp4ItemINtNtBL_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2s_5ErrorENtNtBL_6marker4SendEL_EENtB5_9TryStream13try_poll_nextCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2r_5ErrorENtNtBK_6marker4SendEL_EEB1L_9size_hintCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs6Po7BT7Nknu_5alloc6string6StringB12_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterB13_B13_EECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { cold }
attributes #15 = { noinline noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.96.0-nightly (1d8897a4e 2026-03-13)"}
!3 = !{}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1S_E0ECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!6 = distinct !{!6, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1S_E0ECsa5Qem16B4JI_15deltalake_azure"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!9 = distinct !{!9, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!10 = !{!8, !5}
!11 = !{!12, !13}
!12 = distinct !{!12, !9, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!13 = distinct !{!13, !6, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1S_E0ECsa5Qem16B4JI_15deltalake_azure: argument 1"}
!14 = !{!15, !8, !12, !5}
!15 = distinct !{!15, !16, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!16 = distinct !{!16, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!17 = !{!18, !8, !12, !5}
!18 = distinct !{!18, !19, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1U_E0E0Csa5Qem16B4JI_15deltalake_azure: argument 0"}
!19 = distinct !{!19, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1U_E0E0Csa5Qem16B4JI_15deltalake_azure"}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{i64 0, i64 -9223372036854775807}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!25 = distinct !{!25, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!28 = distinct !{!28, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure"}
!29 = !{!30, !32}
!30 = distinct !{!30, !31, !"_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1R_EE6extendINtNtB3o_8adapters12GenericShuntINtNtB4u_3map3MapINtNtNtNtB2z_11collections4hash3map8IntoIterBP_B1R_ENCINvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB6c_17AzureConfigHelper7try_newBP_B1R_INtB5h_7HashMapBP_B1R_EE0EINtNtB3q_6result6ResultNtNtB3q_7convert10InfallibleNtBV_5ErrorEEEB6e_: argument 0"}
!31 = distinct !{!31, !"_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1R_EE6extendINtNtB3o_8adapters12GenericShuntINtNtB4u_3map3MapINtNtNtNtB2z_11collections4hash3map8IntoIterBP_B1R_ENCINvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB6c_17AzureConfigHelper7try_newBP_B1R_INtB5h_7HashMapBP_B1R_EE0EINtNtB3q_6result6ResultNtNtB3q_7convert10InfallibleNtBV_5ErrorEEEB6e_"}
!32 = distinct !{!32, !31, !"_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1R_EE6extendINtNtB3o_8adapters12GenericShuntINtNtB4u_3map3MapINtNtNtNtB2z_11collections4hash3map8IntoIterBP_B1R_ENCINvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB6c_17AzureConfigHelper7try_newBP_B1R_INtB5h_7HashMapBP_B1R_EE0EINtNtB3q_6result6ResultNtNtB3q_7convert10InfallibleNtBV_5ErrorEEEB6e_: argument 1"}
!33 = !{!32}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!36 = distinct !{!36, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECsa5Qem16B4JI_15deltalake_azure"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!39 = distinct !{!39, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!40 = !{!38, !35}
!41 = !{!42, !43}
!42 = distinct !{!42, !39, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!43 = distinct !{!43, !36, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECsa5Qem16B4JI_15deltalake_azure: argument 1"}
!44 = !{!45, !38, !42, !35, !43}
!45 = distinct !{!45, !46, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!46 = distinct !{!46, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!47 = !{i8 0, i8 41}
!48 = !{!49, !38, !42, !35, !43}
!49 = distinct !{!49, !50, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1U_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Csa5Qem16B4JI_15deltalake_azure: argument 0"}
!50 = distinct !{!50, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1U_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Csa5Qem16B4JI_15deltalake_azure"}
!51 = !{!"branch_weights", i32 -2146410, i32 2146410}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1S_E0NCINvB32_11make_hasherBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!54 = distinct !{!54, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1S_E0NCINvB32_11make_hasherBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsa5Qem16B4JI_15deltalake_azure"}
!55 = !{!56, !57}
!56 = distinct !{!56, !54, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1S_E0NCINvB32_11make_hasherBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsa5Qem16B4JI_15deltalake_azure: argument 1"}
!57 = distinct !{!57, !54, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1S_E0NCINvB32_11make_hasherBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsa5Qem16B4JI_15deltalake_azure: argument 2"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!60 = distinct !{!60, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!61 = !{!62, !56, !57}
!62 = distinct !{!62, !63, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1U_E0NCINvB34_11make_hasherBS_B1U_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Csa5Qem16B4JI_15deltalake_azure: argument 0"}
!63 = distinct !{!63, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1U_E0NCINvB34_11make_hasherBS_B1U_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Csa5Qem16B4JI_15deltalake_azure"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128: argument 0"}
!66 = distinct !{!66, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE22insert_tagged_at_indexCsa5Qem16B4JI_15deltalake_azure: argument 0"}
!69 = distinct !{!69, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE22insert_tagged_at_indexCsa5Qem16B4JI_15deltalake_azure"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE22insert_tagged_at_indexCsa5Qem16B4JI_15deltalake_azure: argument 1"}
!72 = !{!68, !71}
!73 = !{i64 8}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE14insert_in_slotCsa5Qem16B4JI_15deltalake_azure: argument 0"}
!76 = distinct !{!76, !"_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE14insert_in_slotCsa5Qem16B4JI_15deltalake_azure"}
!77 = !{!78}
!78 = distinct !{!78, !76, !"_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE14insert_in_slotCsa5Qem16B4JI_15deltalake_azure: argument 1"}
!79 = !{!75, !78}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE14insert_in_slotCsa5Qem16B4JI_15deltalake_azure: argument 0"}
!82 = distinct !{!82, !"_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE14insert_in_slotCsa5Qem16B4JI_15deltalake_azure"}
!83 = !{!84}
!84 = distinct !{!84, !82, !"_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE14insert_in_slotCsa5Qem16B4JI_15deltalake_azure: argument 1"}
!85 = !{!81, !84}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_E4iterCsa5Qem16B4JI_15deltalake_azure: argument 1"}
!88 = distinct !{!88, !"_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_E4iterCsa5Qem16B4JI_15deltalake_azure"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_E4iterCsa5Qem16B4JI_15deltalake_azure: argument 0"}
!91 = !{!92, !94}
!92 = distinct !{!92, !93, !"_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B27_EE9from_iterINtNtNtB2R_8adapters10filter_map9FilterMapINtB7_4IterB27_B27_ENCNvXCsa5Qem16B4JI_15deltalake_azureIBS_B27_B27_ENtB5a_12AzureOptions16as_azure_options0EEB5a_: argument 0"}
!93 = distinct !{!93, !"_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B27_EE9from_iterINtNtNtB2R_8adapters10filter_map9FilterMapINtB7_4IterB27_B27_ENCNvXCsa5Qem16B4JI_15deltalake_azureIBS_B27_B27_ENtB5a_12AzureOptions16as_azure_options0EEB5a_"}
!94 = distinct !{!94, !93, !"_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B27_EE9from_iterINtNtNtB2R_8adapters10filter_map9FilterMapINtB7_4IterB27_B27_ENCNvXCsa5Qem16B4JI_15deltalake_azureIBS_B27_B27_ENtB5a_12AzureOptions16as_azure_options0EEB5a_: argument 1"}
!95 = !{!96, !98, !99, !101, !102, !104, !105, !107, !92, !94}
!96 = distinct !{!96, !97, !"_RINvXsA_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB11_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters10filter_map15filter_map_foldTRB11_B3z_ETNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyB11_EuNCNvXCsa5Qem16B4JI_15deltalake_azureINtB6_7HashMapB11_B11_ENtB4X_12AzureOptions16as_azure_options0NCINvNvB1I_8for_each4callB3J_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB75_7HashMapB3K_B11_NtNtNtBc_4hash6random11RandomStateEINtNtB1M_7collect6ExtendB3J_E6extendINtB2O_9FilterMapBQ_B4S_EE0E0E0EB4X_: argument 0"}
!97 = distinct !{!97, !"_RINvXsA_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB11_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters10filter_map15filter_map_foldTRB11_B3z_ETNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyB11_EuNCNvXCsa5Qem16B4JI_15deltalake_azureINtB6_7HashMapB11_B11_ENtB4X_12AzureOptions16as_azure_options0NCINvNvB1I_8for_each4callB3J_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB75_7HashMapB3K_B11_NtNtNtBc_4hash6random11RandomStateEINtNtB1M_7collect6ExtendB3J_E6extendINtB2O_9FilterMapBQ_B4S_EE0E0E0EB4X_"}
!98 = distinct !{!98, !97, !"_RINvXsA_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB11_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters10filter_map15filter_map_foldTRB11_B3z_ETNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyB11_EuNCNvXCsa5Qem16B4JI_15deltalake_azureINtB6_7HashMapB11_B11_ENtB4X_12AzureOptions16as_azure_options0NCINvNvB1I_8for_each4callB3J_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB75_7HashMapB3K_B11_NtNtNtBc_4hash6random11RandomStateEINtNtB1M_7collect6ExtendB3J_E6extendINtB2O_9FilterMapBQ_B4S_EE0E0E0EB4X_: argument 1"}
!99 = distinct !{!99, !100, !"_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB23_ENCNvXCsa5Qem16B4JI_15deltalake_azureINtB1e_7HashMapB23_B23_ENtB2P_12AzureOptions16as_azure_options0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4m_8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyB23_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6H_7HashMapB5q_B23_NtNtNtB1k_4hash6random11RandomStateEINtNtB4q_7collect6ExtendB5p_E6extendBV_E0E0EB2P_: argument 0"}
!100 = distinct !{!100, !"_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB23_ENCNvXCsa5Qem16B4JI_15deltalake_azureINtB1e_7HashMapB23_B23_ENtB2P_12AzureOptions16as_azure_options0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4m_8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyB23_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6H_7HashMapB5q_B23_NtNtNtB1k_4hash6random11RandomStateEINtNtB4q_7collect6ExtendB5p_E6extendBV_E0E0EB2P_"}
!101 = distinct !{!101, !100, !"_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB23_ENCNvXCsa5Qem16B4JI_15deltalake_azureINtB1e_7HashMapB23_B23_ENtB2P_12AzureOptions16as_azure_options0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4m_8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyB23_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6H_7HashMapB5q_B23_NtNtNtB1k_4hash6random11RandomStateEINtNtB4q_7collect6ExtendB5p_E6extendBV_E0E0EB2P_: argument 1"}
!102 = distinct !{!102, !103, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_ENCNvXCsa5Qem16B4JI_15deltalake_azureINtB18_7HashMapB1X_B1X_ENtB2J_12AzureOptions16as_azure_options0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB57_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyB1X_NtNtNtB1e_4hash6random11RandomStateEINtNtB4k_7collect6ExtendTB5Q_B1X_EE6extendB3_E0EB2J_: argument 0"}
!103 = distinct !{!103, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_ENCNvXCsa5Qem16B4JI_15deltalake_azureINtB18_7HashMapB1X_B1X_ENtB2J_12AzureOptions16as_azure_options0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB57_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyB1X_NtNtNtB1e_4hash6random11RandomStateEINtNtB4k_7collect6ExtendTB5Q_B1X_EE6extendB3_E0EB2J_"}
!104 = distinct !{!104, !103, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_ENCNvXCsa5Qem16B4JI_15deltalake_azureINtB18_7HashMapB1X_B1X_ENtB2J_12AzureOptions16as_azure_options0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB57_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyB1X_NtNtNtB1e_4hash6random11RandomStateEINtNtB4k_7collect6ExtendTB5Q_B1X_EE6extendB3_E0EB2J_: argument 1"}
!105 = distinct !{!105, !106, !"_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1R_EE6extendINtNtNtB3o_8adapters10filter_map9FilterMapINtNtNtNtB2z_11collections4hash3map4IterB1R_B1R_ENCNvXCsa5Qem16B4JI_15deltalake_azureINtB5a_7HashMapB1R_B1R_ENtB5Z_12AzureOptions16as_azure_options0EEB5Z_: argument 0"}
!106 = distinct !{!106, !"_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1R_EE6extendINtNtNtB3o_8adapters10filter_map9FilterMapINtNtNtNtB2z_11collections4hash3map4IterB1R_B1R_ENCNvXCsa5Qem16B4JI_15deltalake_azureINtB5a_7HashMapB1R_B1R_ENtB5Z_12AzureOptions16as_azure_options0EEB5Z_"}
!107 = distinct !{!107, !106, !"_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1R_EE6extendINtNtNtB3o_8adapters10filter_map9FilterMapINtNtNtNtB2z_11collections4hash3map4IterB1R_B1R_ENCNvXCsa5Qem16B4JI_15deltalake_azureINtB5a_7HashMapB1R_B1R_ENtB5Z_12AzureOptions16as_azure_options0EEB5Z_: argument 1"}
!108 = !{!109, !111, !96, !98, !99, !101, !102, !104, !105, !107, !92, !94}
!109 = distinct !{!109, !110, !"_RINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBL_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1x_8adapters10filter_map15filter_map_foldTRBL_B3i_ETNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyBL_EuNCNvXCsa5Qem16B4JI_15deltalake_azureINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBL_BL_ENtB4E_12AzureOptions16as_azure_options0NCINvNvB1r_8for_each4callB3r_NCINvXs1i_B6_INtB6_7HashMapB3s_BL_NtNtNtB5i_4hash6random11RandomStateEINtNtB1v_7collect6ExtendB3r_E6extendINtB2x_9FilterMapINtB5c_4IterBL_BL_EB4z_EE0E0E0EB4E_: argument 0"}
!110 = distinct !{!110, !"_RINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBL_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1x_8adapters10filter_map15filter_map_foldTRBL_B3i_ETNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyBL_EuNCNvXCsa5Qem16B4JI_15deltalake_azureINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBL_BL_ENtB4E_12AzureOptions16as_azure_options0NCINvNvB1r_8for_each4callB3r_NCINvXs1i_B6_INtB6_7HashMapB3s_BL_NtNtNtB5i_4hash6random11RandomStateEINtNtB1v_7collect6ExtendB3r_E6extendINtB2x_9FilterMapINtB5c_4IterBL_BL_EB4z_EE0E0E0EB4E_"}
!111 = distinct !{!111, !110, !"_RINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBL_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1x_8adapters10filter_map15filter_map_foldTRBL_B3i_ETNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyBL_EuNCNvXCsa5Qem16B4JI_15deltalake_azureINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBL_BL_ENtB4E_12AzureOptions16as_azure_options0NCINvNvB1r_8for_each4callB3r_NCINvXs1i_B6_INtB6_7HashMapB3s_BL_NtNtNtB5i_4hash6random11RandomStateEINtNtB1v_7collect6ExtendB3r_E6extendINtB2x_9FilterMapINtB5c_4IterBL_BL_EB4z_EE0E0E0EB4E_: argument 1"}
!112 = !{!94}
!113 = !{i8 0, i8 4}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_RNvXs1_NtNtCs8CRAYtH5WmW_12futures_util6future5readyINtB5_5ReadybENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsa5Qem16B4JI_15deltalake_azure: argument 0"}
!116 = distinct !{!116, !"_RNvXs1_NtNtCs8CRAYtH5WmW_12futures_util6future5readyINtB5_5ReadybENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsa5Qem16B4JI_15deltalake_azure"}
!117 = !{i64 0, i64 -9223372036854775805}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!120 = distinct !{!120, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECsa5Qem16B4JI_15deltalake_azure"}
!121 = !{i64 0, i64 2}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_E4iterCsa5Qem16B4JI_15deltalake_azure: argument 0"}
!124 = distinct !{!124, !"_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_E4iterCsa5Qem16B4JI_15deltalake_azure"}
!125 = !{!126}
!126 = distinct !{!126, !124, !"_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_E4iterCsa5Qem16B4JI_15deltalake_azure: argument 1"}
!127 = !{i8 0, i8 2}
!128 = !{!129, !131}
!129 = distinct !{!129, !130, !"_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!130 = distinct !{!130, !"_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa5Qem16B4JI_15deltalake_azure"}
!131 = distinct !{!131, !132, !"_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csa5Qem16B4JI_15deltalake_azure: argument 0"}
!132 = distinct !{!132, !"_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csa5Qem16B4JI_15deltalake_azure"}
end_hunk_0
