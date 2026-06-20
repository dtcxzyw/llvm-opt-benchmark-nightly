inline.NumInlined: 13443
inline.NumDeleted: 3890
begin_hunk_0_@_RINvMs2_NtNtCsjyY8HP3IvQ6_12object_store5azure7builderNtB6_21MicrosoftAzureBuilder8with_urlNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder21MicrosoftAzureBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(1312) %1) #46
          to label %bb.g unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(1312) %1, i64 1312, i1 false)
  ret void

bb.f:                                             ; preds = %.body
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 16 ptr @_RINvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE3getB14_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !943, !noalias !946, !noundef !4
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !954, !noalias !955, !noundef !4 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !954, !noalias !955, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.i    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i21.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !958 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not27.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not27.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i28.i.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i.i, %i.q
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [224 x i8], ptr %i.j, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -224
  %i.w = tail call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnINtB2_10EquivalentBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(224) %i.v), !noalias !961
  br i1 %i.w, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1F_E0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d, !prof !240

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1F_E0ECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !52

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.aa = add i16 %.sroa.06.0.i28.i.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i28.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ac = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1F_E0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %._crit_edge.i.i, %.lr.ph.i.i
  %i.ae = phi ptr [ %i.u, %.lr.ph.i.i ], [ null, %._crit_edge.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -112
  %.sroa.0.1.i = select i1 %.not.i, ptr null, ptr %i.af
  br label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1F_E0ECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.0.0.i = phi ptr [ %.sroa.0.1.i, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1F_E0ECs14kWLkQVSKO_14deltalake_core.exit.i ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE4findNCINvNtB8_3map14equivalent_keyeBQ_uE0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load i64, ptr %i.d, align 8, !alias.scope !964, !noalias !967, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.e = tail call noundef i64 @llvm.fshr.i64(i64 %.val, i64 %.val, i64 %2) ; 5 uses
  %i.f = icmp samesign ult i64 %2, 17
  br i1 %i.f, label %bb.d, label %bb.c, !prof !240

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #45, !noalias !981
  br label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hasheNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !alias.scope !988, !noalias !990, !noundef !4 ; 4 uses
  %i.i = icmp samesign ugt i64 %2, 7
  br i1 %i.i, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp samesign ugt i64 %2, 3
  br i1 %i.j, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.f

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.d
  %.sroa.014.0.copyload.i.i.i.i.i = load i64, ptr %1, align 1, !alias.scope !991, !noalias !992
  %i.k = xor i64 %.sroa.014.0.copyload.i.i.i.i.i, %i.e
  %i.l = getelementptr i8, ptr %1, i64 %2
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %.sroa.016.0.copyload.i.i.i.i.i = load i64, ptr %i.m, align 1, !alias.scope !991, !noalias !992
  %i.n = xor i64 %.sroa.016.0.copyload.i.i.i.i.i, %i.h
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i, label %bb.g

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.e
  %i.o = getelementptr i8, ptr %1, i64 %2
  %i.p = getelementptr i8, ptr %i.o, i64 -4
  %.sroa.019.0.copyload.i.i.i.i.i = load i32, ptr %i.p, align 1, !alias.scope !991, !noalias !992
  %.sroa.018.0.copyload.i.i.i.i.i = load i32, ptr %1, align 1, !alias.scope !991, !noalias !992
  %i.q = zext i32 %.sroa.018.0.copyload.i.i.i.i.i to i64
  %i.r = xor i64 %i.e, %i.q
  %i.s = zext i32 %.sroa.019.0.copyload.i.i.i.i.i to i64
  %i.t = xor i64 %i.h, %i.s
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %1, align 1, !alias.scope !991, !noalias !992, !noundef !4
  %i.v = lshr i64 %2, 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !991, !noalias !992, !noundef !4
  %i.y = getelementptr i8, ptr %1, i64 %2
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !991, !noalias !992, !noundef !4
  %i.ab = zext i8 %i.u to i64
  %i.ac = xor i64 %i.e, %i.ab
  %i.ad = zext i8 %i.aa to i64
  %i.ae = shl nuw nsw i64 %i.ad, 8
  %i.af = zext i8 %i.x to i64
  %i.ag = or disjoint i64 %i.ae, %i.af
  %i.ah = xor i64 %i.ag, %i.h
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i: ; preds = %bb.g, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.f, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi i64 [ %i.n, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.t, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.ah, %bb.g ], [ %i.h, %bb.f ]
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.k, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.r, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.ac, %bb.g ], [ %i.e, %bb.f ]
  %i.ai = zext i64 %.sroa.0.0.i.i.i.i.i to i128
  %i.aj = zext i64 %.sroa.04.0.i.i.i.i.i to i128
  %i.ak = mul nuw i128 %i.ai, %i.aj               ; 2 uses
  %i.al = lshr i128 %i.ak, 64
  %i.am = xor i128 %i.al, %i.ak
  %i.an = trunc i128 %i.am to i64
  br label %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hasheNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hasheNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i
  %storemerge.i.i.i.i = phi i64 [ %i.g, %bb.c ], [ %i.an, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i ]
  %i.ao = xor i64 %storemerge.i.i.i.i, 255
  %i.ap = load i64, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !993, !noundef !4
  %i.aq = zext i64 %i.ao to i128
  %i.ar = zext i64 %i.ap to i128
  %i.as = mul nuw i128 %i.aq, %i.ar               ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %i.au = xor i128 %i.at, %i.as
  %i.av = trunc i128 %i.au to i64                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %i.aw = lshr i64 %i.av, 57
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !1002, !noalias !1003, !noundef !4 ; 2 uses
  %i.ba = load ptr, ptr %0, align 8, !alias.scope !1002, !noalias !1003, !nonnull !4, !noundef !4 ; 2 uses
  %i.bb = insertelement <16 x i8> poison, i8 %i.ax, i64 0
  %i.bc = shufflevector <16 x i8> %i.bb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hasheNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.i.i = phi i64 [ 0, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hasheNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.bv, %bb.i ]
  %.pn.i.i = phi i64 [ %i.av, %_RINvNtCs2HSpDNxY7OE_9hashbrown3map9make_hasheNtNtB4_6hasher18DefaultHashBuilderECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.bw, %bb.i ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.az       ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i22.i = load <16 x i8>, ptr %i.bd, align 1, !noalias !1006 ; 2 uses
  %i.be = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i, %i.bc
  %i.bf = bitcast <16 x i1> %i.be to i16          ; 2 uses
  %.not.i.not28.i = icmp eq i16 %i.bf, 0
  br i1 %.not.i.not28.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %.sroa.05.0.i29.i = phi i16 [ %i.bu, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.bf, %bb.h ] ; 3 uses
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i29.i, i1 true)
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = add i64 %.sroa.01.0.i.i, %i.bh
  %i.bj = and i64 %i.bi, %i.az
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %i.bk ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -8
  %.val4.i.i = load i64, ptr %i.bm, align 8, !noalias !1009, !noundef !4
  %i.bn = icmp eq i64 %2, %.val4.i.i
  br i1 %i.bn, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i, !prof !1012

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.i
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 -16
  %.val3.i.i = load ptr, ptr %i.bo, align 8, !noalias !1009, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull readonly %.val3.i.i, i64 %2), !alias.scope !1013, !noalias !1017
  %i.bp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.bp, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE4findNCINvNtB8_3map14equivalent_keyeBQ_uE0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i, !prof !1018

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.h
  %i.bq = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i, splat (i8 -1)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.i, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE4findNCINvNtB8_3map14equivalent_keyeBQ_uE0ECs14kWLkQVSKO_14deltalake_core.exit, !prof !52

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph.i
  %i.bt = add i16 %.sroa.05.0.i29.i, -1
  %i.bu = and i16 %i.bt, %.sroa.05.0.i29.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.bu, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.bv = add i64 %.sroa.011.0.i.i, 16            ; 2 uses
  %i.bw = add i64 %.sroa.01.0.i.i, %i.bv
  br label %bb.h

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE4findNCINvNtB8_3map14equivalent_keyeBQ_uE0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge.i, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTReuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i ], [ false, %._crit_edge.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB6_20TableProviderBuilder12with_sessionNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(168) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1019, !noundef !4 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !1022
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_E9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %2, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr @14, ptr %i.g, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider20TableProviderBuilderEBM_(ptr noalias noundef align 8 dereferenceable(168) %1) #46
          to label %bb.f unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.a, %bb.c
  store ptr %2, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr @14, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB6_20TableProviderBuilder14with_log_storeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtBa_8logstore8LogStoreEL_EEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(168) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1027, !noundef !4 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !1030
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %2, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %3, ptr %i.g, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider20TableProviderBuilderEBM_(ptr noalias noundef align 8 dereferenceable(168) %1) #46
          to label %bb.f unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit: ; preds = %bb.b, %bb.a, %bb.c
  store ptr %2, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %3, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB6_20TableProviderBuilder16with_file_columnReEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(168) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1035
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !range !58, !noalias !1035, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !17, !noalias !1035, !noundef !4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !52

bb.b:                                             ; preds = %.noexc
  %i.g = load i64, ptr %i.f, align 8, !noalias !1035
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #48
          to label %.noexc9 unwind label %bb.d

.noexc9:                                          ; preds = %bb.b
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %.noexc
  %i.h = load ptr, ptr %i.f, align 8, !noalias !1035, !nonnull !4, !noundef !4 ; 3 uses
  %i.i = icmp ule i64 %3, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1035
  %.not.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringReNtB5_8ToString9to_stringCs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %2, i64 range(i64 0, -9223372036854775808) %3, i1 false), !noalias !1043
  br label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringReNtB5_8ToString9to_stringCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringReNtB5_8ToString9to_stringCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
end_hunk_0
begin_hunk_1_@_RNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot7try_new0B8_:bb.a

bb.bv:                                            ; preds = %.body75.i, %.loopexit.split-lp.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.bw, %bb.bu, %bb.bq, %bb.ai
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !17133
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.bu, %bb.bt
  %.pn21.pn.i = phi { ptr, i32 } [ %.pn21.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.fd, %bb.bu ], [ %i.fd, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17129
  call void @llvm.experimental.noalias.scope.decl(metadata !17201)
  call void @llvm.experimental.noalias.scope.decl(metadata !17204)
  %i.fn = load ptr, ptr %i.s, align 8, !alias.scope !17207, !noalias !17129, !nonnull !4, !noundef !4
  %i.fo = atomicrmw sub ptr %i.fn, i64 1 release, align 8, !noalias !17208
  %i.fp = icmp eq i64 %i.fo, 1
  br i1 %i.fp, label %bb.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bv, !noalias !17133

bb.bx:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !17129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.991.sroa.9.i, i64 24, i1 false), !noalias !17129
  call void @llvm.experimental.noalias.scope.decl(metadata !17209)
  call void @llvm.experimental.noalias.scope.decl(metadata !17212)
  %i.fq = load ptr, ptr %i.k, align 8, !alias.scope !17215, !noalias !17129, !nonnull !4, !noundef !4
  %i.fr = atomicrmw sub ptr %i.fq, i64 1 release, align 8, !noalias !17216
  %i.fs = icmp eq i64 %i.fr, 1
  br i1 %i.fs, label %bb.by, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit52.i

bb.by:                                            ; preds = %bb.bx
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit52.i unwind label %bb.bz, !noalias !17133

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.bz, %bb.bq, %.body45.i
  %.pn21.i = phi { ptr, i32 } [ %i.ft, %bb.bz ], [ %.pn19.i, %.body45.i ], [ %.pn19.i, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17129
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.991.sroa.9.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.bz:                                            ; preds = %bb.by
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit52.i: ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17129
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.991.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17129
  call void @llvm.experimental.noalias.scope.decl(metadata !17217)
  call void @llvm.experimental.noalias.scope.decl(metadata !17220)
  %i.fu = load ptr, ptr %i.s, align 8, !alias.scope !17223, !noalias !17129, !nonnull !4, !noundef !4
  %i.fv = atomicrmw sub ptr %i.fu, i64 1 release, align 8, !noalias !17224
  %i.fw = icmp eq i64 %i.fv, 1
  br i1 %i.fw, label %bb.ca, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i

bb.ca:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit52.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i unwind label %bb.cb, !noalias !17133

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ai, %bb.am, %.body.i.i.i, %bb.ax, %bb.ay, %bb.ae, %bb.db, %bb.cb, %bb.bw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.fx = phi ptr [ %i.cz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.cz, %bb.cb ], [ %i.cz, %bb.bw ], [ %i.ci, %bb.ae ], [ %i.cz, %bb.db ], [ %i.cz, %bb.ay ], [ %i.cz, %bb.ax ], [ %i.cz, %.body.i.i.i ], [ %i.cz, %bb.am ], [ %i.cz, %bb.ai ]
  %i.fy = phi ptr [ %i.da, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.da, %bb.cb ], [ %i.da, %bb.bw ], [ %i.cj, %bb.ae ], [ %i.da, %bb.db ], [ %i.da, %bb.ay ], [ %i.da, %bb.ax ], [ %i.da, %.body.i.i.i ], [ %i.da, %bb.am ], [ %i.da, %bb.ai ]
  %.pn32.pn.i = phi { ptr, i32 } [ %.pn21.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ga, %bb.cb ], [ %.pn21.pn.i, %bb.bw ], [ %i.cw, %bb.ae ], [ %.pn30.i, %bb.db ], [ %i.dw, %bb.ay ], [ %i.dw, %bb.ax ], [ %i.dl, %.body.i.i.i ], [ %i.de, %bb.am ], [ %i.cy, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !17129
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 384
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_(ptr noalias noundef align 8 dereferenceable(72) %i.fz) #46
          to label %bb.dd unwind label %bb.bv, !noalias !17133

bb.cb:                                            ; preds = %bb.ca
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i: ; preds = %bb.ba, %bb.cz, %bb.ca, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit52.i
  %.sroa.6.1.i = phi ptr [ %.sroa.991.sroa.0.0.copyload119.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit52.i ], [ %.sroa.991.sroa.0.0.copyload119.i, %bb.ca ], [ %.sroa.4.i.sroa.0.0.copyload.i, %bb.ba ], [ %.sroa.6.2172.i, %bb.cz ]
  %.sroa.097.1.i = phi i64 [ -9223372036854775741, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit52.i ], [ -9223372036854775741, %bb.ca ], [ -9223372036854775722, %bb.ba ], [ %.sroa.097.2174.i, %bb.cz ]
  %i.gb = phi <2 x ptr> [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit52.i ], [ undef, %bb.ca ], [ undef, %bb.ba ], [ %i.kr, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !17129
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 384
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_(ptr noalias noundef align 8 dereferenceable(72) %i.gc)
          to label %bb.df unwind label %bb.de, !noalias !17133

bb.cc:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !17225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17155
  %i.gd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i = load ptr, ptr %i.gd, align 8, !noalias !17129, !nonnull !4, !noundef !4 ; 9 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val37.i = load i64, ptr %i.ge, align 8, !noalias !17129, !noundef !4 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17226)
  call void @llvm.experimental.noalias.scope.decl(metadata !17229)
  %i.gf = icmp ugt i64 %.val37.i, 23
  br i1 %i.gf, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gg = icmp eq i64 %.val37.i, 23
  br i1 %i.gg, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread160.i

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !17232)
  %i.gh = icmp ult i64 %.val37.i, 38
  br i1 %i.gh, label %.lr.ph.split.us.i.i.i.i.i, label %bb.cf

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %bb.ce
  %i.gi = load i128, ptr %.val.i, align 1
  %i.gj = xor i128 %i.gi, 43072362355690950656158319865334099790
  %i.gk = getelementptr i8, ptr %.val.i, i64 7
  %i.gl = load i128, ptr %i.gk, align 1
  %i.gm = xor i128 %i.gl, 154763657356728356358779844745476251763
  %i.gn = or i128 %i.gj, %i.gm
  %i.go = icmp ne i128 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.split.us.i.i.i.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i
  %.in.i.i.i.i63 = phi i64 [ %i.hb, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i ], [ %.val37.i, %.lr.ph.split.us.i.i.i.i.i ]
  %.pn.i.i.i.i62 = phi ptr [ %i.gr, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i ], [ %.val.i, %.lr.ph.split.us.i.i.i.i.i ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i62, i64 1 ; 3 uses
  %i.gs = load i128, ptr %i.gr, align 1
  %i.gt = xor i128 %i.gs, 43072362355690950656158319865334099790
  %i.gu = getelementptr i8, ptr %i.gr, i64 7
  %i.gv = load i128, ptr %i.gu, align 1
  %i.gw = xor i128 %i.gv, 154763657356728356358779844745476251763
  %i.gx = or i128 %i.gt, %i.gw
  %i.gy = icmp ne i128 %i.gx, 0
  %i.gz = zext i1 %i.gy to i32
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i: ; preds = %.lr.ph
  %i.hb = add nsw i64 %.in.i.i.i.i63, -1          ; 2 uses
  %.not28.i.i.i.i.i = icmp ugt i64 %i.hb, 23
  br i1 %.not28.i.i.i.i.i, label %.lr.ph, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread160.i

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17235
  store ptr %.val.i, ptr %i.d, align 8, !noalias !17235
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.val37.i, ptr %i.hc, align 8, !noalias !17235
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @384, i64 1), ptr %i.hd, align 8, !noalias !17235
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 22, ptr %i.he, align 8, !noalias !17235
  %i.hf = icmp ult i64 %.val37.i, 87
  br i1 %i.hf, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.cj, %bb.cf
  %.sroa.06.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.cf ], [ %i.iu, %bb.cj ] ; 2 uses
  %.sroa.014.0.lcssa.i.i.i.i = phi i8 [ 0, %bb.cf ], [ %.sroa.014.2.3.i.i.i.i, %bb.cj ] ; 2 uses
  %i.hg = add i64 %.sroa.06.0.lcssa.i.i.i.i, 38
  %i.hh = icmp uge i64 %i.hg, %.val37.i
  %i.hi = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.i to i1 ; 2 uses
  %or.cond338.i.i.i.i = select i1 %i.hh, i1 true, i1 %i.hi
  br i1 %or.cond338.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph40.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cf, %bb.cj
  %.sroa.06.036.i.i.i.i = phi i64 [ %i.iu, %bb.cj ], [ 0, %bb.cf ] ; 7 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.06.036.i.i.i.i ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load <16 x i8>, ptr %i.hj, align 1, !alias.scope !17236, !noalias !17237
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 22
  %.sroa.02.0.copyload.i.i.i.i.i = load <16 x i8>, ptr %i.hk, align 1, !alias.scope !17236, !noalias !17237
  %i.hl = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.i, splat (i8 78)
  %i.hm = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i.i.i, splat (i8 116)
  %i.hn = and <16 x i1> %i.hl, %i.hm
  %i.ho = bitcast <16 x i1> %i.hn to i16          ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %.sroa.0.0.copyload.i.1.i.i.i.i = load <16 x i8>, ptr %i.hp, align 1, !alias.scope !17236, !noalias !17237
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 38
  %.sroa.02.0.copyload.i.1.i.i.i.i = load <16 x i8>, ptr %i.hq, align 1, !alias.scope !17236, !noalias !17237
  %i.hr = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.i, splat (i8 78)
  %i.hs = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i.i.i, splat (i8 116)
  %i.ht = and <16 x i1> %i.hr, %i.hs
  %i.hu = bitcast <16 x i1> %i.ht to i16          ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %.sroa.0.0.copyload.i.2.i.i.i.i = load <16 x i8>, ptr %i.hv, align 1, !alias.scope !17236, !noalias !17237
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hj, i64 54
  %.sroa.02.0.copyload.i.2.i.i.i.i = load <16 x i8>, ptr %i.hw, align 1, !alias.scope !17236, !noalias !17237
  %i.hx = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.i, splat (i8 78)
  %i.hy = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i.i.i, splat (i8 116)
  %i.hz = and <16 x i1> %i.hx, %i.hy
  %i.ia = bitcast <16 x i1> %i.hz to i16          ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hj, i64 48
  %.sroa.0.0.copyload.i.3.i.i.i.i = load <16 x i8>, ptr %i.ib, align 1, !alias.scope !17236, !noalias !17237
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 70
  %.sroa.02.0.copyload.i.3.i.i.i.i = load <16 x i8>, ptr %i.ic, align 1, !alias.scope !17236, !noalias !17237
  %i.id = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.i, splat (i8 78)
  %i.ie = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i.i.i, splat (i8 116)
  %i.if = and <16 x i1> %i.id, %i.ie
  %i.ig = bitcast <16 x i1> %i.if to i16          ; 2 uses
  %i.ih = icmp eq i16 %i.ho, 0
  br i1 %i.ih, label %.preheader30.1.i.i.i.i, label %bb.ck

.preheader30.1.i.i.i.i:                           ; preds = %.noexc58.i, %.lr.ph.i.i.i.i
  %.sroa.014.2.i.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i.i ], [ %i.iz, %.noexc58.i ] ; 2 uses
  %i.ii = icmp eq i16 %i.hu, 0
  br i1 %i.ii, label %.preheader30.2.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %.preheader30.1.i.i.i.i
  %i.ij = or disjoint i64 %.sroa.06.036.i.i.i.i, 16
  %i.ik = trunc nuw i8 %.sroa.014.2.i.i.i.i to i1 ; 2 uses
  %i.il = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.ij, i16 noundef %i.hu, i1 noundef zeroext %i.ik) #49
          to label %.noexc55.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !17133

.noexc55.i:                                       ; preds = %bb.cg
  %3 = or i1 %i.il, %i.ik
  %4 = zext i1 %3 to i8
  br label %.preheader30.2.i.i.i.i

.preheader30.2.i.i.i.i:                           ; preds = %.noexc55.i, %.preheader30.1.i.i.i.i
  %.sroa.014.2.1.i.i.i.i = phi i8 [ %.sroa.014.2.i.i.i.i, %.preheader30.1.i.i.i.i ], [ %4, %.noexc55.i ] ; 2 uses
  %i.im = icmp eq i16 %i.ia, 0
  br i1 %i.im, label %.preheader30.3.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %.preheader30.2.i.i.i.i
  %i.in = or disjoint i64 %.sroa.06.036.i.i.i.i, 32
  %i.io = trunc nuw i8 %.sroa.014.2.1.i.i.i.i to i1 ; 2 uses
  %i.ip = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.in, i16 noundef %i.ia, i1 noundef zeroext %i.io) #49
          to label %.noexc56.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !17133

.noexc56.i:                                       ; preds = %bb.ch
  %5 = or i1 %i.ip, %i.io
  %6 = zext i1 %5 to i8
  br label %.preheader30.3.i.i.i.i

.preheader30.3.i.i.i.i:                           ; preds = %.noexc56.i, %.preheader30.2.i.i.i.i
  %.sroa.014.2.2.i.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i.i, %.preheader30.2.i.i.i.i ], [ %6, %.noexc56.i ] ; 2 uses
  %i.iq = icmp eq i16 %i.ig, 0
  br i1 %i.iq, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.preheader30.3.i.i.i.i
  %i.ir = or disjoint i64 %.sroa.06.036.i.i.i.i, 48
  %i.is = trunc nuw i8 %.sroa.014.2.2.i.i.i.i to i1 ; 2 uses
  %i.it = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.ir, i16 noundef %i.ig, i1 noundef zeroext %i.is) #49
          to label %.noexc57.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !17133

.noexc57.i:                                       ; preds = %bb.ci
  %7 = or i1 %i.it, %i.is
  %8 = zext i1 %7 to i8
  br label %bb.cj

bb.cj:                                            ; preds = %.noexc57.i, %.preheader30.3.i.i.i.i
  %.sroa.014.2.3.i.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i.i, %.preheader30.3.i.i.i.i ], [ %8, %.noexc57.i ] ; 2 uses
  %i.iu = add i64 %.sroa.06.036.i.i.i.i, 64       ; 2 uses
  %i.iv = add i64 %.sroa.06.036.i.i.i.i, 150
  %i.iw = icmp uge i64 %i.iv, %.val37.i
  %i.ix = trunc nuw i8 %.sroa.014.2.3.i.i.i.i to i1
  %or.cond.i.i.i.i = select i1 %i.iw, i1 true, i1 %i.ix
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i

bb.ck:                                            ; preds = %.lr.ph.i.i.i.i
  %i.iy = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %.sroa.06.036.i.i.i.i, i16 noundef %i.ho, i1 noundef zeroext false) #49
          to label %.noexc58.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !17133

.noexc58.i:                                       ; preds = %bb.ck
  %i.iz = zext i1 %i.iy to i8
  br label %.preheader30.1.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.cl, %.preheader.i.i.i.i
  %.sroa.014.3.lcssa.i.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %.sroa.014.4.i.i.i.i, %bb.cl ]
  %.lcssa.i.i.i.i = phi i1 [ %i.hi, %.preheader.i.i.i.i ], [ %i.js, %bb.cl ] ; 2 uses
  %i.ja = add i64 %.val37.i, -38                  ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ja ; 2 uses
  %.sroa.0.0.copyload.i58.i.i.i.i = load <16 x i8>, ptr %i.jb, align 1, !alias.scope !17236, !noalias !17240
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 22
  %.sroa.02.0.copyload.i59.i.i.i.i = load <16 x i8>, ptr %i.jc, align 1, !alias.scope !17236, !noalias !17240
  %i.jd = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i.i.i.i, splat (i8 78)
  %i.je = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i.i.i.i, splat (i8 116)
  %i.jf = and <16 x i1> %i.jd, %i.je
  %i.jg = bitcast <16 x i1> %i.jf to i16          ; 2 uses
  %i.jh = icmp eq i16 %i.jg, 0
  br i1 %i.jh, label %bb.cn, label %bb.co

.lr.ph40.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %bb.cl
  %.sroa.06.139.i.i.i.i = phi i64 [ %i.jp, %bb.cl ], [ %.sroa.06.0.lcssa.i.i.i.i, %.preheader.i.i.i.i ] ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.06.139.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i60.i.i.i.i = load <16 x i8>, ptr %i.ji, align 1, !alias.scope !17236, !noalias !17243
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 22
  %.sroa.02.0.copyload.i61.i.i.i.i = load <16 x i8>, ptr %i.jj, align 1, !alias.scope !17236, !noalias !17243
  %i.jk = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i.i.i.i, splat (i8 78)
  %i.jl = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i.i.i.i, splat (i8 116)
  %i.jm = and <16 x i1> %i.jk, %i.jl
  %i.jn = bitcast <16 x i1> %i.jm to i16          ; 2 uses
  %i.jo = icmp eq i16 %i.jn, 0
  br i1 %i.jo, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.noexc59.i, %.lr.ph40.i.i.i.i
  %.sroa.014.4.i.i.i.i = phi i8 [ 0, %.lr.ph40.i.i.i.i ], [ %i.ju, %.noexc59.i ] ; 2 uses
  %i.jp = add i64 %.sroa.06.139.i.i.i.i, 16
  %i.jq = add i64 %.sroa.06.139.i.i.i.i, 54
  %i.jr = icmp uge i64 %i.jq, %.val37.i
  %i.js = trunc nuw i8 %.sroa.014.4.i.i.i.i to i1 ; 2 uses
  %or.cond3.i.i.i.i = or i1 %i.jr, %i.js
  br i1 %or.cond3.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph40.i.i.i.i

bb.cm:                                            ; preds = %.lr.ph40.i.i.i.i
  %i.jt = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %.sroa.06.139.i.i.i.i, i16 noundef %i.jn, i1 noundef zeroext false) #49
          to label %.noexc59.i unwind label %.loopexit.i, !noalias !17133

.noexc59.i:                                       ; preds = %bb.cm
  %i.ju = zext i1 %i.jt to i8
  br label %bb.cl

bb.cn:                                            ; preds = %.noexc60.i, %._crit_edge.i.i.i.i
  %.sroa.014.5.i.i.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %10, %.noexc60.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17235
  %i.jv = trunc nuw i8 %.sroa.014.5.i.i.i.i to i1
  br i1 %i.jv, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread160.i

bb.co:                                            ; preds = %._crit_edge.i.i.i.i
  %i.jw = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.ja, i16 noundef %i.jg, i1 noundef zeroext %.lcssa.i.i.i.i) #49
          to label %.noexc60.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !17133

.noexc60.i:                                       ; preds = %bb.co
  %9 = or i1 %.lcssa.i.i.i.i, %i.jw
  %10 = zext i1 %9 to i8
  br label %bb.cn

.loopexit.i:                                      ; preds = %bb.cm
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.ck, %bb.ci, %bb.ch, %bb.cg
  %lpad.loopexit180.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.co
  %lpad.loopexit.split-lp181.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit180.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp181.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #46
          to label %.body42.i unwind label %bb.bv, !noalias !17133

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.cd
  %i.jx = load i128, ptr %.val.i, align 1
  %i.jy = xor i128 43072362355690950656158319865334099790, %i.jx
  %i.jz = getelementptr i8, ptr %.val.i, i64 7
  %i.ka = load i128, ptr %i.jz, align 1
  %i.kb = xor i128 154763657356728356358779844745476251763, %i.ka
  %i.kc = or i128 %i.jy, %i.kb
  %i.kd = icmp ne i128 %i.kc, 0
  %i.ke = zext i1 %i.kd to i32
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread160.i

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread160.i: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.cn, %bb.cd
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.cp, !noalias !17133

bb.cp:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread160.i
  %i.kg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body42.i unwind label %bb.cq, !noalias !17133

bb.cq:                                            ; preds = %bb.cp
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !17133
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread160.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.cu unwind label %bb.ct, !noalias !17133

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %.lr.ph, %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.cn, %.lr.ph.split.us.i.i.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i65.i unwind label %bb.cr, !noalias !17133

bb.cr:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.ki = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body42.i unwind label %bb.cs, !noalias !17133

bb.cs:                                            ; preds = %bb.cr
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !17133
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i65.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit69.i unwind label %bb.ct, !noalias !17133

.body42.i:                                        ; preds = %bb.ct, %bb.cr, %bb.cp, %.loopexit.split-lp.i, %bb.bd
  %.pn26.i = phi { ptr, i32 } [ %i.eh, %bb.bd ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.ki, %bb.cr ], [ %i.kg, %bb.cp ], [ %i.kk, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17129
  br label %.body75.i

bb.ct:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i65.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %.body42.i

bb.cu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17129
  %.sroa.0126.0.copyload.i = load i64, ptr %i.o, align 16, !noalias !17129
  %.sroa.5127.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i, align 8, !noalias !17129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.10.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.4.0..sroa_idx4.i, i64 64, i1 false), !noalias !17129
  %i.kl = load <2 x ptr>, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx4.sroa_idx.i, align 16, !noalias !17129
  br label %bb.cz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit69.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i65.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17246
  store i64 0, ptr %i.c, align 8, !noalias !17246
  %.sroa.42.0..sroa_idx.i.i70.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i70.i, align 8, !noalias !17246
  %.sroa.53.0..sroa_idx.i.i71.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i71.i, align 8, !noalias !17246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17246
  %i.km = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.km, align 8, !noalias !17246
  %.sroa.4.0..sroa_idx.i.i72.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i72.i, align 4, !noalias !17246
  %.sroa.5.0..sroa_idx.i.i73.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i73.i, align 2, !noalias !17246
  store ptr %i.c, ptr %i.b, align 8, !noalias !17246
  %i.kn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1254, ptr %i.kn, align 8, !noalias !17246
  %i.ko = invoke noundef zeroext i1 @_RNvXs2_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.cw unwind label %bb.cv, !noalias !17253

bb.cv:                                            ; preds = %bb.cx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit69.i
  %i.kp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #46
          to label %.body75.i unwind label %bb.cy, !noalias !17253

bb.cw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit69.i
  br i1 %i.ko, label %bb.cx, label %bb.da, !prof !52

bb.cx:                                            ; preds = %bb.cw
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1255, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @642, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1257) #48
          to label %.noexc.i.i74.i unwind label %bb.cv, !noalias !17253

.noexc.i.i74.i:                                   ; preds = %bb.cx
  unreachable

bb.cy:                                            ; preds = %bb.cv
  %i.kq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !17253
  unreachable

bb.cz:                                            ; preds = %bb.da, %bb.cu
  %.sroa.097.2174.i = phi i64 [ -9223372036854775735, %bb.da ], [ %.sroa.0126.0.copyload.i, %bb.cu ]
  %.sroa.6.2172.i = phi ptr [ %.sroa.0116.0.copyload.i, %bb.da ], [ %.sroa.5127.0.copyload.i, %bb.cu ]
  %i.kr = phi <2 x ptr> [ undef, %bb.da ], [ %i.kl, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !17129
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i

bb.da:                                            ; preds = %bb.cw
  %.sroa.0116.0.copyload.i = load ptr, ptr %i.c, align 8, !noalias !17254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx.i.i70.i, i64 16, i1 false), !noalias !17129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17246
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.o)
          to label %bb.cz unwind label %bb.dc, !noalias !17133

bb.db:                                            ; preds = %.body75.i, %bb.dc
  %.pn30.i = phi { ptr, i32 } [ %i.ks, %bb.dc ], [ %.pn28.ph.i, %.body75.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !17129
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.dc:                                            ; preds = %bb.da
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

.body75.i:                                        ; preds = %bb.cv, %.body42.i
  %.pn28.ph.i = phi { ptr, i32 } [ %.pn26.i, %.body42.i ], [ %i.kp, %bb.cv ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.o) #46
          to label %bb.db unwind label %bb.bv, !noalias !17133

bb.dd:                                            ; preds = %bb.de, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.kt = phi ptr [ %i.cz, %bb.de ], [ %i.fx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.ku = phi ptr [ %i.da, %bb.de ], [ %i.fy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.pn35.i = phi { ptr, i32 } [ %i.kv, %bb.de ], [ %.pn32.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  store i8 2, ptr %i.kt, align 8, !noalias !17129
  br label %.body30

bb.de:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.df:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit48.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i
  %.sroa.6.0.i = phi ptr [ %.sroa.0121.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit48.i ], [ %.sroa.6.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i ]
  %.sroa.097.0.i = phi i64 [ -9223372036854775711, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit48.i ], [ %.sroa.097.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i ] ; 2 uses
  %i.kw = phi <2 x ptr> [ %i.fl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit48.i ], [ %i.gb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i ]
  store i64 %.sroa.097.0.i, ptr %0, align 16, !alias.scope !17133, !noalias !17255
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !17133, !noalias !17255
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.10.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.10.i, i64 64, i1 false), !noalias !17255
  %.sroa.11104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x ptr> %i.kw, ptr %.sroa.11104.0..sroa_idx.i, align 16, !alias.scope !17133, !noalias !17255
  store i8 1, ptr %i.cz, align 8, !noalias !17129
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.kx = icmp eq i64 %.sroa.097.0.i, -9223372036854775710
  br i1 %i.kx, label %bb.dg, label %bb.dh

common.ret:                                       ; preds = %bb.dj, %bb.dg
  %storemerge = phi i8 [ 1, %bb.dj ], [ 3, %bb.dg ]
  store i8 %storemerge, ptr %i.aa, align 8
  ret void

bb.dg:                                            ; preds = %.thread, %bb.df
end_hunk_1
begin_hunk_2_@_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB7_16DeltaScanBuilder5build0Bb_:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %.thread910

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1m_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit485: ; preds = %bb.nf, %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %bb.nd unwind label %bb.nc

bb.nc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1m_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit485
  %i.adx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %.body462 unwind label %bb.ne

bb.nd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1m_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit485
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1l_.exit483 unwind label %bb.ma

bb.ne:                                            ; preds = %bb.nc
  %i.ady = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.nf:                                            ; preds = %.thread1034, %bb.mz
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1e_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bv, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ua, i64 noundef 48, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1m_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit485 unwind label %bb.ib

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1l_.exit483: ; preds = %bb.nd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.ng

bb.ng:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1l_.exit483, %bb.gh
  %i.adz = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  %i.aea = load ptr, ptr %i.adz, align 16, !noundef !4 ; 2 uses
  %.not200 = icmp eq ptr %i.aea, null
  br i1 %.not200, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit541, label %bb.qm

bb.nh:                                            ; preds = %.thread1028, %bb.mx
  %.pn195.pn1033 = phi { ptr, i32 } [ %i.vt, %.thread1028 ], [ %.pn195.pn, %bb.mx ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18368)
  call void @llvm.experimental.noalias.scope.decl(metadata !18371)
  %i.aeb = load ptr, ptr %i.bo, align 8, !alias.scope !18374, !nonnull !4, !noundef !4
  %i.aec = atomicrmw sub ptr %i.aeb, i64 1 release, align 8, !noalias !18374
  %i.aed = icmp eq i64 %i.aec, 1
  br i1 %i.aed, label %bb.ni, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit487.thread1188

bb.ni:                                            ; preds = %bb.nh
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bo) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit487.thread1188 unwind label %bb.z

bb.nj:                                            ; preds = %.body488, %bb.pa, %bb.nk
  %.pn207.pn = phi { ptr, i32 } [ %.pn207.ph, %bb.pa ], [ %i.ain, %.body488 ], [ %i.aee, %bb.nk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %.thread910

bb.nk:                                            ; preds = %bb.nl
  %i.aee = landingpad { ptr, i32 }
          cleanup
  br label %bb.nj

bb.nl:                                            ; preds = %.lr.ph1101, %bb.oz
  %.sroa.0744.01099 = phi ptr [ %.val298, %.lr.ph1101 ], [ %i.aef, %bb.oz ] ; 3 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %.sroa.0744.01099, i64 272 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  %.val272 = load ptr, ptr %i.um, align 8, !nonnull !4, !noundef !4
  %.val273 = load i64, ptr %i.un, align 8, !noundef !4
  %.val265 = load ptr, ptr %i.uo, align 8, !nonnull !4, !noundef !4
  %i.aeg = getelementptr inbounds nuw i8, ptr %.val265, i64 16
  invoke void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider28partitioned_file_from_action(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.sroa.0744.01099, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val272, i64 noundef %.val273, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aeg)
          to label %bb.nm unwind label %bb.nk

bb.nm:                                            ; preds = %bb.nl
  %.val305 = load i64, ptr %i.up, align 16, !range !17, !noundef !4
  %.not = icmp eq i64 %.val305, -9223372036854775808
  br i1 %.not, label %bb.no, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.aeh = load i8, ptr %i.uq, align 16, !range !178, !noundef !4
  %i.aei = trunc nuw i8 %i.aeh to i1
  %i.aej = getelementptr inbounds nuw i8, ptr %.sroa.0744.01099, i64 32 ; 2 uses
  br i1 %i.aei, label %bb.nq, label %bb.np

bb.no:                                            ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE4pushCs14kWLkQVSKO_14deltalake_core.exit, %bb.nm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.us)
          to label %bb.od unwind label %bb.oc

bb.np:                                            ; preds = %bb.nn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.br, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aej)
          to label %bb.ns unwind label %bb.nr

bb.nq:                                            ; preds = %bb.nn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aej)
          to label %bb.ny unwind label %bb.nx

bb.nr:                                            ; preds = %bb.np
  %i.aek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %bb.pa

bb.ns:                                            ; preds = %bb.np
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ur, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  store i128 19, ptr %i.bt, align 16
  br label %bb.nt

bb.nt:                                            ; preds = %bb.ob, %bb.ns
  %i.ael = load i64, ptr %i.ut, align 8, !alias.scope !18375, !noalias !18380, !noundef !4 ; 3 uses
  %i.aem = load i64, ptr %i.us, align 8, !range !16, !alias.scope !18375, !noalias !18380, !noundef !4
  %i.aen = icmp eq i64 %i.ael, %i.aem
  br i1 %i.aen, label %bb.nu, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE4pushCs14kWLkQVSKO_14deltalake_core.exit

bb.nu:                                            ; preds = %bb.nt
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.us)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE4pushCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.nv, !noalias !18380

bb.nv:                                            ; preds = %bb.nu
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.bt) #46
          to label %bb.pa unwind label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.aep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE4pushCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.nt, %bb.nu
  %i.aeq = load ptr, ptr %i.uu, align 8, !alias.scope !18375, !noalias !18380, !nonnull !4, !noundef !4
  %i.aer = getelementptr inbounds nuw [64 x i8], ptr %i.aeq, i64 %i.ael
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aer, ptr noundef nonnull align 16 dereferenceable(64) %i.bt, i64 64, i1 false)
  %i.aes = add i64 %i.ael, 1
  store i64 %i.aes, ptr %i.ut, align 8, !alias.scope !18375, !noalias !18380
  br label %bb.no

bb.nx:                                            ; preds = %bb.nq
  %i.aet = landingpad { ptr, i32 }
          cleanup
  br label %bb.nz

bb.ny:                                            ; preds = %bb.nq
  invoke void @_RINvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7file_id18wrap_file_id_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringEB6_(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.bt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bs)
          to label %bb.ob unwind label %bb.oa

bb.nz:                                            ; preds = %bb.oa, %bb.nx
  %.pn201 = phi { ptr, i32 } [ %i.aeu, %bb.oa ], [ %i.aet, %bb.nx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %bb.pa

bb.oa:                                            ; preds = %bb.ny
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  br label %bb.nz

bb.ob:                                            ; preds = %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %bb.nt

bb.oc:                                            ; preds = %bb.no
  %i.aev = landingpad { ptr, i32 }
          cleanup
  br label %.body496

bb.od:                                            ; preds = %bb.no
  call void @llvm.experimental.noalias.scope.decl(metadata !18383)
  call void @llvm.experimental.noalias.scope.decl(metadata !18386)
  call void @llvm.experimental.noalias.scope.decl(metadata !18388)
  %.val.i = load i64, ptr %i.ua, align 8, !alias.scope !18390, !noalias !18393, !noundef !4
  %.val8.i = load ptr, ptr %i.uv, align 8, !alias.scope !18388, !noalias !18395, !nonnull !4, !noundef !4 ; 4 uses
  %.val9.i = load i64, ptr %i.uw, align 8, !alias.scope !18388, !noalias !18395, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18396
  store ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !alias.scope !18397, !noalias !18400
  store i64 %.val.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !18397, !noalias !18400
  %i.aew = zext i64 %.val9.i to i128
  store i128 %i.aew, ptr %i.b, align 16, !alias.scope !18402, !noalias !18396
  store i8 64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !alias.scope !18402, !noalias !18396
  invoke void @_RINvYNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i, ptr noalias noundef nonnull align 16 dereferenceable(48) %i.b)
          to label %.noexc.i490 unwind label %.loopexit.split-lp.i, !noalias !18396

.noexc.i490:                                      ; preds = %bb.od
  call void @llvm.experimental.noalias.scope.decl(metadata !18411)
  %i.aex = load i8, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !alias.scope !18411, !noalias !18396, !noundef !4
  %.not.i.i.i = icmp eq i8 %i.aex, 0
  br i1 %.not.i.i.i, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %.noexc.i490
  %i.aey = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !18411, !noalias !18396, !noundef !4
  br label %bb.oh

bb.of:                                            ; preds = %.noexc.i490
  %i.aez = load i128, ptr %i.b, align 16, !alias.scope !18411, !noalias !18396, !noundef !4 ; 2 uses
  %i.afa = trunc i128 %i.aez to i64
  %i.afb = lshr i128 %i.aez, 64
  %3 = trunc nuw i128 %i.afb to i64
  %i.afc = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !18411, !noalias !18396, !noundef !4
  %i.afd = xor i64 %i.afc, %i.afa
  %i.afe = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !alias.scope !18411, !noalias !18396, !nonnull !4, !align !18, !noundef !4
  %i.aff = load i64, ptr %i.afe, align 8, !noalias !18414, !noundef !4
  %4 = xor i64 %i.aff, %3
  %i.afg = zext i64 %i.afd to i128
  %5 = zext i64 %4 to i128
  %i.afh = mul nuw i128 %5, %i.afg                ; 2 uses
  %i.afi = lshr i128 %i.afh, 64
  %i.afj = xor i128 %i.afi, %i.afh
  %i.afk = trunc i128 %i.afj to i64
  br label %bb.oh

.loopexit.i:                                      ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBT_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.og

.loopexit.split-lp.i:                             ; preds = %bb.od
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.og

bb.og:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq) #46
          to label %.body496 unwind label %bb.om, !noalias !18395

bb.oh:                                            ; preds = %bb.of, %bb.oe
  %.sroa.0.0.i.i.i = phi i64 [ %i.afk, %bb.of ], [ %i.aey, %bb.oe ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18396
  call void @llvm.experimental.noalias.scope.decl(metadata !18415)
  call void @llvm.experimental.noalias.scope.decl(metadata !18418)
  %i.afl = lshr i64 %.sroa.0.0.i.i.i, 57
  %i.afm = trunc nuw nsw i64 %i.afl to i8         ; 3 uses
  %i.afn = load i64, ptr %i.ux, align 8, !alias.scope !18421, !noalias !18422, !noundef !4 ; 2 uses
  %i.afo = load ptr, ptr %i.bv, align 8, !alias.scope !18421, !noalias !18422, !nonnull !4, !noundef !4 ; 2 uses
  %i.afp = insertelement <16 x i8> poison, i8 %i.afm, i64 0
  %i.afq = shufflevector <16 x i8> %i.afp, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.oi

bb.oi:                                            ; preds = %bb.oj, %bb.oh
  %.sroa.011.0.i.i.i = phi i64 [ 0, %bb.oh ], [ %i.agj, %bb.oj ]
  %.pn.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %bb.oh ], [ %i.agk, %bb.oj ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.afn  ; 3 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afo, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i22.i.i = load <16 x i8>, ptr %i.afr, align 1, !noalias !18425 ; 2 uses
  %i.afs = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i.i, %i.afq
  %i.aft = bitcast <16 x i1> %i.afs to i16        ; 2 uses
  %.not.i.not28.i.i = icmp eq i16 %i.aft, 0
  br i1 %.not.i.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.oi, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBT_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  %.sroa.05.0.i29.i.i = phi i16 [ %i.agi, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBT_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ %i.aft, %bb.oi ] ; 3 uses
  %i.afu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i29.i.i, i1 true)
  %i.afv = zext nneg i16 %i.afu to i64
  %i.afw = add i64 %.sroa.01.0.i.i.i, %i.afv
  %i.afx = and i64 %i.afw, %i.afn
  %i.afy = sub nsw i64 0, %i.afx
  %i.afz = getelementptr inbounds [48 x i8], ptr %i.afo, i64 %i.afy ; 3 uses
  %i.aga = getelementptr i8, ptr %i.afz, i64 -32
  %.val3.i.i.i491 = load i64, ptr %i.aga, align 8, !noalias !18428, !noundef !4
  %i.agb = icmp eq i64 %.val9.i, %.val3.i.i.i491
  br i1 %i.agb, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBT_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBT_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, !prof !1012

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBT_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.lr.ph.i.i
  %i.agc = getelementptr i8, ptr %i.afz, i64 -40
  %.val2.i.i.i = load ptr, ptr %i.agc, align 8, !noalias !18428, !nonnull !4, !noundef !4
  %i.agd = invoke noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %.val8.i, ptr noundef nonnull %.val2.i.i.i, i64 noundef %.val9.i)
          to label %.noexc10.i unwind label %.loopexit.i, !noalias !18396

.noexc10.i:                                       ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBT_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  br i1 %i.agd, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBR_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2j_E0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBT_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, !prof !1018

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBT_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, %bb.oi
  %i.age = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i.i, splat (i8 -1)
  %i.agf = bitcast <16 x i1> %i.age to i16
  %i.agg = icmp eq i16 %i.agf, 0
  br i1 %i.agg, label %bb.oj, label %_RNvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB5_7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBO_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE5entryCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBT_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc10.i, %.lr.ph.i.i
  %i.agh = add i16 %.sroa.05.0.i29.i.i, -1
  %i.agi = and i16 %i.agh, %.sroa.05.0.i29.i.i    ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.agi, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.oj:                                            ; preds = %._crit_edge.i.i
  %i.agj = add i64 %.sroa.011.0.i.i.i, 16         ; 2 uses
  %i.agk = add i64 %.sroa.01.0.i.i.i, %i.agj
  br label %bb.oi

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBR_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2j_E0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc10.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ok, !noalias !18383

bb.ok:                                            ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBR_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2j_E0ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.agl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %.body496 unwind label %bb.ol, !noalias !18383

bb.ol:                                            ; preds = %bb.ok
  %i.agm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !18383
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBR_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2j_E0ECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_RNvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB5_7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBO_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE5entryCs14kWLkQVSKO_14deltalake_core.exit.thread unwind label %bb.on

_RNvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB5_7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBO_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE5entryCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %bb.ov

bb.om:                                            ; preds = %bb.og
  %i.agn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !18395
  unreachable

.body496:                                         ; preds = %bb.on, %bb.ok, %bb.og, %bb.oc
  %.pn203 = phi { ptr, i32 } [ %i.aev, %bb.oc ], [ %i.ago, %bb.on ], [ %i.agl, %bb.ok ], [ %lpad.phi.i, %bb.og ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %bb.pa

bb.on:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ago = landingpad { ptr, i32 }
          cleanup
  br label %.body496

_RNvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB5_7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBO_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE5entryCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge.i.i
  %.sroa.0746.0.copyload = load i64, ptr %i.bq, align 8, !alias.scope !18431, !noalias !18386 ; 2 uses
  %.sroa.9751.0.copyload = load ptr, ptr %i.uw, align 8, !alias.scope !18431, !noalias !18386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %.not.i499 = icmp eq i64 %.sroa.0746.0.copyload, -9223372036854775808
  br i1 %.not.i499, label %bb.ov, label %bb.oo

bb.oo:                                            ; preds = %_RNvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB5_7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBO_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEE5entryCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18432
  store i64 %.sroa.0746.0.copyload, ptr %i.a, align 8
  store ptr %.val8.i, ptr %.sroa.7748.0..sroa_idx749, align 8
  store ptr %.sroa.9751.0.copyload, ptr %.sroa.9751.0..sroa_idx752, align 8
  store i64 0, ptr %i.uy, align 8, !noalias !18432
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i500, align 8, !noalias !18432
  store i64 0, ptr %.sroa.5.0..sroa_idx.i501, align 8, !noalias !18432
  call void @llvm.experimental.noalias.scope.decl(metadata !18435)
  %.val7.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !18435, !noalias !18438, !nonnull !4, !noundef !4 ; 6 uses
  %.val8.i.i = load i64, ptr %i.ux, align 8, !alias.scope !18435, !noalias !18438, !noundef !4 ; 4 uses
  %.sroa.0.07.i.i.i = and i64 %.val8.i.i, %.sroa.0.0.i.i.i ; 3 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.agp, align 1, !noalias !18441
  %i.agq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.agr = bitcast <16 x i1> %i.agq to i16        ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.agr, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !18444

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.oo
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.oo ], [ %.sroa.0.0.i.i.i505, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.agr, %bb.oo ], [ %i.ahj, %.lr.ph.i.i.i ]
  %i.ags = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.agt = zext nneg i16 %i.ags to i64
  %i.agu = add i64 %.sroa.0.0.lcssa.i.i.i, %i.agt
  %i.agv = and i64 %i.agu, %.val8.i.i             ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 %i.agv
  %i.agx = load i8, ptr %i.agw, align 1, !noalias !18445, !noundef !4 ; 2 uses
  %i.agy = icmp sgt i8 %i.agx, -1
  br i1 %i.agy, label %bb.op, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i, !prof !52

bb.op:                                            ; preds = %._crit_edge.i.i.i
  %i.agz = load <16 x i8>, ptr %.val7.i.i, align 16, !noalias !18446
  %i.aha = icmp slt <16 x i8> %i.agz, zeroinitializer
  %i.ahb = bitcast <16 x i1> %i.aha to i16        ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.ahb, 0
  %i.ahc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ahb, i1 true)
  %i.ahd = zext nneg i16 %i.ahc to i64            ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 %i.ahd
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !18445
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.oo, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i505, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %bb.oo ]
  %i.ahe = phi i64 [ %i.ahf, %.lr.ph.i.i.i ], [ 0, %bb.oo ]
  %i.ahf = add i64 %i.ahe, 16                     ; 2 uses
  %i.ahg = add i64 %i.ahf, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i505 = and i64 %i.ahg, %.val8.i.i ; 3 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 %.sroa.0.0.i.i.i505
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.ahh, align 1, !noalias !18441
  %i.ahi = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.ahj = bitcast <16 x i1> %i.ahi to i16        ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ahj, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !18449

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i: ; preds = %bb.op, %._crit_edge.i.i.i
  %i.ahk = phi i8 [ %.pre.i.i, %bb.op ], [ %i.agx, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.ahd, %bb.op ], [ %i.agv, %._crit_edge.i.i.i ]
  %i.ahl = load i64, ptr %i.uz, align 8, !alias.scope !18435, !noalias !18438, !noundef !4 ; 2 uses
  %i.ahm = icmp eq i64 %i.ahl, 0
  %i.ahn = trunc i8 %i.ahk to i1
  %or.cond.i.i = and i1 %i.ahm, %i.ahn
  br i1 %or.cond.i.i, label %bb.oq, label %bb.ou, !prof !18450

bb.oq:                                            ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i
  %i.aho = invoke { i64, i64 } @_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBR_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B2j_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ua, i1 noundef zeroext true)
          to label %bb.or unwind label %bb.os, !noalias !18451 ; 0 uses

bb.or:                                            ; preds = %bb.oq
end_hunk_2
