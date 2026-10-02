Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB20_8adapters3map3MapINtNtB3g_6filter6FilterINtB7_8IntoIteryNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListENCNvXs2_NtNtB4o_11transaction5protoNtNtB5z_7builder11TransactionINtNtB22_7convert7TryFromNtB4k_11TransactionE8try_froms2_0ENCB5r_s3_0EEB4o_:bb.a
  br label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtB2d_5slice4iter4IterB17_ENCNvMNtNtB1d_11transaction14manifest_buildNtNtB4r_7builder11Transaction32build_manifest_with_read_versions7_0EEB1d_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !77, !noalias !27232, !noundef !68
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i, !prof !80

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i: ; preds = %bb.a
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !noalias !27233
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !27233
  br label %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %bb.a
  %i.f = tail call { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys(), !noalias !27234 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.i, align 8, !noalias !27234
  store i8 1, ptr %i.c, align 8, !noalias !27234
  br label %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit

_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit: ; preds = %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i
  %.pre-phi7 = phi i64 [ %.pre1.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i ], [ %i.h, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i ]
  %i.j = phi i64 [ %.pre.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i ], [ %i.g, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 2 uses
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.b, align 8, !noalias !27233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @66, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.pre-phi7, ptr %.sroa.5.0..sroa_idx, align 8
  %i.l = ptrtoint ptr %2 to i64
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 240                 ; 2 uses
  %.not = icmp eq ptr %2, %1
  br i1 %.not, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EBY_.exit.i, label %bb.b, !prof !80

bb.b:                                             ; preds = %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit
  %i.p = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EBY_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx, i1 noundef zeroext true)
          to label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EBY_.exit.i unwind label %.loopexit.split-lp ; 0 uses

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EBY_.exit.i: ; preds = %bb.b, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit
  %i.q = icmp eq ptr %1, %2
  br i1 %i.q, label %_RINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendTyBQ_EE6extendINtNtNtB2I_8adapters3map3MapINtNtNtB2K_5slice4iter4IterBR_ENCNvMNtNtBX_11transaction14manifest_buildNtNtB4M_7builder11Transaction32build_manifest_with_read_versions7_0EEBX_.exit, label %.preheader

.preheader:                                       ; preds = %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EBY_.exit.i, %.noexc5
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.u, %.noexc5 ], [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EBY_.exit.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [240 x i8], ptr %1, i64 %.sroa.01.0.i.i.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 232
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !27235, !noalias !27236, !noundef !68
  invoke fastcc void @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertBV_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.r)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %.preheader
  %i.u = add nuw i64 %.sroa.01.0.i.i.i.i, 1       ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.o
  br i1 %i.v, label %_RINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendTyBQ_EE6extendINtNtNtB2I_8adapters3map3MapINtNtNtB2K_5slice4iter4IterBR_ENCNvMNtNtBX_11transaction14manifest_buildNtNtB4M_7builder11Transaction32build_manifest_with_read_versions7_0EEBX_.exit, label %.preheader

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load ptr, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val4 = load i64, ptr %i.w, align 8, !noundef !68
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEEB1E_(ptr %.val, i64 %.val4) #81
  resume { ptr, i32 } %lpad.phi

_RINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendTyBQ_EE6extendINtNtNtB2I_8adapters3map3MapINtNtNtB2K_5slice4iter4IterBR_ENCNvMNtNtBX_11transaction14manifest_buildNtNtB4M_7builder11Transaction32build_manifest_with_read_versions7_0EEBX_.exit: ; preds = %.noexc5, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EBY_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtB2d_5slice4iter4IterB17_ENCNvMNtNtB1d_11transaction14manifest_buildNtNtB4r_7builder11Transaction32build_manifest_with_read_versionso_0EEB1d_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !77, !noalias !27259, !noundef !68
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i, !prof !80

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i: ; preds = %bb.a
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !noalias !27260
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !27260
  br label %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %bb.a
  %i.f = tail call { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys(), !noalias !27261 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.i, align 8, !noalias !27261
  store i8 1, ptr %i.c, align 8, !noalias !27261
  br label %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit

_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit: ; preds = %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i
  %.pre-phi7 = phi i64 [ %.pre1.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i ], [ %i.h, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i ]
  %i.j = phi i64 [ %.pre.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i ], [ %i.g, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 2 uses
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.b, align 8, !noalias !27260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @66, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.pre-phi7, ptr %.sroa.5.0..sroa_idx, align 8
  %i.l = ptrtoint ptr %2 to i64
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 240                 ; 2 uses
  %.not = icmp eq ptr %2, %1
  br i1 %.not, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EBY_.exit.i, label %bb.b, !prof !80

bb.b:                                             ; preds = %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit
  %i.p = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EBY_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx, i1 noundef zeroext true)
          to label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EBY_.exit.i unwind label %.loopexit.split-lp ; 0 uses

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EBY_.exit.i: ; preds = %bb.b, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit
  %i.q = icmp eq ptr %1, %2
  br i1 %i.q, label %_RINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendTyBQ_EE6extendINtNtNtB2I_8adapters3map3MapINtNtNtB2K_5slice4iter4IterBR_ENCNvMNtNtBX_11transaction14manifest_buildNtNtB4M_7builder11Transaction32build_manifest_with_read_versionso_0EEBX_.exit, label %.preheader

.preheader:                                       ; preds = %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EBY_.exit.i, %.noexc5
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.u, %.noexc5 ], [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EBY_.exit.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [240 x i8], ptr %1, i64 %.sroa.01.0.i.i.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 232
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !27262, !noalias !27263, !noundef !68
  invoke fastcc void @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertBV_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.r)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %.preheader
  %i.u = add nuw i64 %.sroa.01.0.i.i.i.i, 1       ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.o
  br i1 %i.v, label %_RINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendTyBQ_EE6extendINtNtNtB2I_8adapters3map3MapINtNtNtB2K_5slice4iter4IterBR_ENCNvMNtNtBX_11transaction14manifest_buildNtNtB4M_7builder11Transaction32build_manifest_with_read_versionso_0EEBX_.exit, label %.preheader

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load ptr, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val4 = load i64, ptr %i.w, align 8, !noundef !68
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEEB1E_(ptr %.val, i64 %.val4) #81
  resume { ptr, i32 } %lpad.phi

_RINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendTyBQ_EE6extendINtNtNtB2I_8adapters3map3MapINtNtNtB2K_5slice4iter4IterBR_ENCNvMNtNtBX_11transaction14manifest_buildNtNtB4M_7builder11Transaction32build_manifest_with_read_versionso_0EEBX_.exit: ; preds = %.noexc5, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EBY_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB7_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBP_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendTBP_BP_EE6extendINtNtNtNtB1A_11collections4hash3map7HashMapBP_BP_EECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i = alloca [40 x i8], align 8      ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [64 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27313)
  %.sroa.02.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !27313, !noalias !27312, !nonnull !68, !noundef !68 ; 5 uses
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.43.0.copyload.i = load i64, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !27313, !noalias !27312 ; 4 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !27313, !noalias !27312 ; 4 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %.sroa.02.0.copyload.i, align 16, !noalias !27314
  %i.e = icmp eq i64 %.sroa.43.0.copyload.i, 0
  br i1 %i.e, label %_RNvXsx_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB13_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCs9KQ7US1M400_11lance_table.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.a
  %i.f = mul i64 %.sroa.43.0.copyload.i, 48       ; 2 uses
  %2 = add i64 %i.f, 48                           ; 2 uses
  %3 = add i64 %.sroa.43.0.copyload.i, 17
  %i.g = add i64 %3, %2                           ; 3 uses
  %4 = icmp uge i64 %i.g, %2
  tail call void @llvm.assume(i1 %4)
  %5 = icmp ult i64 %i.g, 9223372036854775793
  tail call void @llvm.assume(i1 %5)
  %6 = sub i64 -48, %i.f
  %i.h = getelementptr inbounds i8, ptr %.sroa.02.0.copyload.i, i64 %6
  br label %_RNvXsx_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB13_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCs9KQ7US1M400_11lance_table.exit

_RNvXsx_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB13_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.a, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i
  %.sroa.511.0.i.i.i = phi ptr [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %.sroa.410.0.i.i.i = phi i64 [ undef, %bb.a ], [ %i.g, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i, i64 16
  %i.j = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.k = getelementptr i8, ptr %.sroa.02.0.copyload.i, i64 %.sroa.43.0.copyload.i
  %i.l = getelementptr i8, ptr %i.k, i64 1
  store i64 %.sink.i.i.i.i, ptr %i.d, align 8, !alias.scope !27312, !noalias !27313
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.410.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !27312, !noalias !27313
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.511.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !27312, !noalias !27313
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.02.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !27312, !noalias !27313
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !27312, !noalias !27313
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.l, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !27312, !noalias !27313
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store <16 x i1> %i.j, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !27312, !noalias !27313
  %.sroa.101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.55.0.copyload.i, ptr %.sroa.101.0..sroa_idx.i, align 8, !alias.scope !27312, !noalias !27313
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !68
  %i.o = icmp eq i64 %i.n, 0
  %i.p = lshr i64 %.sroa.55.0.copyload.i, 1
  %i.q = and i64 %.sroa.55.0.copyload.i, 1
  %.sroa.0.1 = add nuw i64 %i.p, %i.q
  %.sroa.0.0 = select i1 %i.o, i64 %.sroa.55.0.copyload.i, i64 %.sroa.0.1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !27315, !noalias !27316, !noundef !68
  %i.t = icmp ugt i64 %.sroa.0.0, %i.s
  br i1 %i.t, label %bb.b, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs9KQ7US1M400_11lance_table.exit, !prof !71

.body:                                            ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i16 %i.ao, ptr %i.aa, align 8, !alias.scope !27317, !noalias !27318
  store i64 %i.ar, ptr %i.x, align 8, !alias.scope !27319, !noalias !27318
  br label %bb.l

bb.b:                                             ; preds = %_RNvXsx_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB13_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCs9KQ7US1M400_11lance_table.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v, i1 noundef zeroext true)
          to label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs9KQ7US1M400_11lance_table.exit unwind label %bb.m ; 0 uses

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.b, %_RNvXsx_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB13_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCs9KQ7US1M400_11lance_table.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27321)
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.x, align 8, !noalias !27320 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.y = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %i.y, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EE13drop_elementsCs9KQ7US1M400_11lance_table.exit.i.i.i.sink.split.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs9KQ7US1M400_11lance_table.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.promoted9.i.i.i = load i16, ptr %i.aa, align 8, !alias.scope !27317, !noalias !27318
  %.promoted10.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !27321, !noalias !27322
  %.promoted13.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !27321, !noalias !27322
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.lcssa15.i.i.i = phi ptr [ %.promoted13.i.i.i, %.lr.ph.i.i.i ], [ %.promoted9.i.i.i.i.i, %bb.f ] ; 2 uses
  %.lcssa812.i.i.i = phi ptr [ %.promoted10.i.i.i, %.lr.ph.i.i.i ], [ %.promoted5.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.ae = phi i16 [ %.promoted9.i.i.i, %.lr.ph.i.i.i ], [ %i.ao, %bb.f ] ; 2 uses
  %i.af = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ar, %bb.f ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27324)
  %.not12.i.i.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.ak, ptr %i.ab, align 8, !alias.scope !27317, !noalias !27318
  store ptr %i.aj, ptr %i.z, align 8, !alias.scope !27317, !noalias !27318
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.lcssa15.i.i.i, %bb.c ] ; 2 uses
  %i.ah = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.lcssa812.i.i.i, %bb.c ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.ag, align 16, !noalias !27325
  %i.ai = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -768 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.ai to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.c
  %.promoted9.i.i.i.i.i = phi ptr [ %i.ak, %._crit_edge.i.i.i.i.i ], [ %.lcssa15.i.i.i, %bb.c ] ; 2 uses
  %.promoted5.i.i.i.i.i = phi ptr [ %i.aj, %._crit_edge.i.i.i.i.i ], [ %.lcssa812.i.i.i, %bb.c ] ; 3 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ae, %bb.c ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i.i.i        ; 4 uses
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [48 x i8], ptr %.promoted5.i.i.i.i.i, i64 %i.ap ; 2 uses
  %i.ar = add i64 %i.af, -1                       ; 6 uses
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -48
  %.sroa.02.0.copyload3.i.i.i = load i64, ptr %i.as, align 8, !noalias !27326 ; 2 uses
  %.sroa.7.0..sroa_idx4.i.i.i = getelementptr inbounds i8, ptr %i.aq, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx4.i.i.i, i64 40, i1 false), !noalias !27326
  %.not.i.i.i = icmp eq i64 %.sroa.02.0.copyload3.i.i.i, -1
  br i1 %.not.i.i.i, label %_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB38_7HashMapBO_BO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1z_7collect6ExtendBN_E6extendINtNtNtNtB3I_11collections4hash3map7HashMapBO_BO_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i, i64 40, i1 false), !noalias !27327
  store i64 %.sroa.02.0.copyload3.i.i.i, ptr %i.b, align 8, !noalias !27327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27328
  invoke fastcc void @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBN_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.ac)
          to label %.noexc.i.i.i unwind label %.body, !noalias !27329

.noexc.i.i.i:                                     ; preds = %bb.d
  %.val.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !70, !noalias !27328, !noundef !68 ; 2 uses
  %i.at = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc.i.i.i
  %.val1.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !noalias !27328, !nonnull !68, !noundef !68
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !27330
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27327
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EE13drop_elementsCs9KQ7US1M400_11lance_table.exit.i.i.i.sink.split.i, label %bb.c

_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB38_7HashMapBO_BO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1z_7collect6ExtendBN_E6extendINtNtNtNtB3I_11collections4hash3map7HashMapBO_BO_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i
  store i16 %i.ao, ptr %i.aa, align 8, !alias.scope !27317, !noalias !27318
  store i64 %i.ar, ptr %i.x, align 8, !alias.scope !27319, !noalias !27318
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27332)
  %i.av = icmp eq i64 %i.ar, 0
  br i1 %i.av, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EE13drop_elementsCs9KQ7US1M400_11lance_table.exit.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB38_7HashMapBO_BO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1z_7collect6ExtendBN_E6extendINtNtNtNtB3I_11collections4hash3map7HashMapBO_BO_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i
  %.lcssa11.i.i.i.i.i = phi ptr [ %.lcssa10.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ], [ %.promoted9.i.i.i.i.i, %_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB38_7HashMapBO_BO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1z_7collect6ExtendBN_E6extendINtNtNtNtB3I_11collections4hash3map7HashMapBO_BO_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i ] ; 2 uses
  %i.aw = phi i64 [ %i.bj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ], [ %i.ar, %_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB38_7HashMapBO_BO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1z_7collect6ExtendBN_E6extendINtNtNtNtB3I_11collections4hash3map7HashMapBO_BO_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i ]
  %.lcssa47.i.i.i.i.i = phi ptr [ %.lcssa46.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ], [ %.promoted5.i.i.i.i.i, %_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB38_7HashMapBO_BO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1z_7collect6ExtendBN_E6extendINtNtNtNtB3I_11collections4hash3map7HashMapBO_BO_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i ] ; 2 uses
  %i.ax = phi i16 [ %i.bg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ], [ %i.ao, %_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB38_7HashMapBO_BO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1z_7collect6ExtendBN_E6extendINtNtNtNtB3I_11collections4hash3map7HashMapBO_BO_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i16 %i.ax, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringBV_EE9next_implKb0_ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ay = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa11.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %i.az = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa47.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.ay, align 16, !noalias !27333
  %i.ba = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i, splat (i8 -1)
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -768 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.ba to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringBV_EE9next_implKb0_ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringBV_EE9next_implKb0_ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.lcssa10.i.i.i.i.i = phi ptr [ %.lcssa11.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.bc, %.lr.ph.i.i.i.i.i.i ]
  %.lcssa46.i.i.i.i.i = phi ptr [ %.lcssa47.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.bb, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.ax, %.preheader.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.bd = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.be = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = and i16 %i.bd, %.lcssa.i.i.i.i.i.i
  %i.bh = sub nsw i64 0, %i.bf
  %i.bi = getelementptr inbounds [48 x i8], ptr %.lcssa46.i.i.i.i.i, i64 %i.bh ; 4 uses
  %i.bj = add i64 %i.aw, -1                       ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27335)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !27336, !noalias !27337 ; 2 uses
  %i.bl = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.bl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringBV_EE9next_implKb0_ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 -40
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !27336, !noalias !27337, !nonnull !68, !noundef !68
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !27338
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringBV_EE9next_implKb0_ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bi, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27339)
  %.val.i4.i.i.i.i.i.i = load i64, ptr %i.bn, align 8, !alias.scope !27340, !noalias !27337 ; 2 uses
  %i.bo = icmp eq i64 %.val.i4.i.i.i.i.i.i, 0
  br i1 %i.bo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i, label %bb.h

end_hunk_0
begin_hunk_1_@_RNvMNtNtCs9KQ7US1M400_11lance_table11transaction17index_maintenanceNtNtB4_7builder11Transaction23retain_relevant_indices:bb.a
  br i1 %i.fx, label %bb.ao, label %.noexc4.i

bb.ao:                                            ; preds = %.noexc.i91
  %i.fy = invoke noundef zeroext i1 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container20ensure_correct_store(ptr noalias noundef nonnull align 8 dereferenceable(40) %.pre.i.i.i)
          to label %.noexc4.i unwind label %.loopexit.split-lp.i, !noalias !48497 ; 0 uses

.noexc4.i:                                        ; preds = %bb.ao, %.noexc.i91
  %i.fz = icmp eq i64 %3, 1
  br i1 %i.fz, label %.loopexit341, label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %.noexc4.i
  %.sroa.046.059.i.i = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.ga = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i33.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i34.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc8.i, %.lr.ph.i.i92
  %.sroa.046.063.i.i = phi ptr [ %.sroa.046.059.i.i, %.lr.ph.i.i92 ], [ %.sroa.046.0.i.i, %.noexc8.i ] ; 2 uses
  %.sroa.011.062.i.i = phi ptr [ %.pre.i.i.i, %.lr.ph.i.i92 ], [ %.sroa.011.1.i.i, %.noexc8.i ] ; 3 uses
  %.sroa.015.061.i.i = phi i16 [ %i.ft, %.lr.ph.i.i92 ], [ %.sroa.015.1.i.i, %.noexc8.i ] ; 3 uses
  %.pn60.i.i = phi ptr [ %2, %.lr.ph.i.i92 ], [ %.sroa.046.063.i.i, %.noexc8.i ]
  %i.gb = getelementptr i8, ptr %.pn60.i.i, i64 472
  %.val.i25.i.i = load i64, ptr %i.gb, align 8, !noalias !48505, !noundef !68 ; 2 uses
  %i.gc = lshr i64 %.val.i25.i.i, 16
  %i.gd = trunc i64 %i.gc to i16                  ; 7 uses
  %i.ge = trunc i64 %.val.i25.i.i to i16          ; 2 uses
  %i.gf = icmp eq i16 %.sroa.015.061.i.i, %i.gd
  br i1 %i.gf, label %bb.ax, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !48506)
  %i.gg = load ptr, ptr %.sroa.4.0..sroa_idx.i89, align 8, !alias.scope !48507, !noalias !48497, !nonnull !68, !noundef !68 ; 3 uses
  %i.gh = load i64, ptr %.sroa.5.0..sroa_idx.i90, align 8, !alias.scope !48507, !noalias !48497, !noundef !68 ; 11 uses
  switch i64 %i.gh, label %.lr.ph.i.i.i39.i.i [
    i64 0, label %bb.as
    i64 1, label %._crit_edge.i.i.i29.i.i
  ]

._crit_edge.i.i.i29.i.i:                          ; preds = %.lr.ph.i.i.i39.i.i, %bb.aq
  %.sroa.05.0.lcssa.i.i.i30.i.i = phi i64 [ 0, %bb.aq ], [ %i.gr, %.lr.ph.i.i.i39.i.i ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [40 x i8], ptr %i.gg, i64 %.sroa.05.0.lcssa.i.i.i30.i.i
  %i.gj = getelementptr i8, ptr %i.gi, i64 32
  %.val14.i.i.i31.i.i = load i16, ptr %i.gj, align 8, !alias.scope !48508, !noalias !48509, !noundef !68 ; 2 uses
  %i.gk = icmp eq i16 %.val14.i.i.i31.i.i, %i.gd
  br i1 %i.gk, label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit43.i.i, label %bb.ar

.lr.ph.i.i.i39.i.i:                               ; preds = %bb.aq, %.lr.ph.i.i.i39.i.i
  %.sroa.01.019.i.i.i40.i.i = phi i64 [ %i.gs, %.lr.ph.i.i.i39.i.i ], [ %i.gh, %bb.aq ] ; 2 uses
  %.sroa.05.018.i.i.i41.i.i = phi i64 [ %i.gr, %.lr.ph.i.i.i39.i.i ], [ 0, %bb.aq ] ; 2 uses
  %i.gl = lshr i64 %.sroa.01.019.i.i.i40.i.i, 1   ; 2 uses
  %i.gm = add nuw nsw i64 %i.gl, %.sroa.05.018.i.i.i41.i.i ; 3 uses
  %i.gn = icmp ult i64 %i.gm, %i.gh
  call void @llvm.assume(i1 %i.gn)
  %i.go = getelementptr inbounds nuw [40 x i8], ptr %i.gg, i64 %i.gm
  %i.gp = getelementptr i8, ptr %i.go, i64 32
  %.val16.i.i.i42.i.i = load i16, ptr %i.gp, align 8, !alias.scope !48508, !noalias !48509, !noundef !68
  %i.gq = icmp ugt i16 %.val16.i.i.i42.i.i, %i.gd
  %i.gr = select i1 %i.gq, i64 %.sroa.05.018.i.i.i41.i.i, i64 %i.gm, !unpredictable !68 ; 2 uses
  %i.gs = sub nuw nsw i64 %.sroa.01.019.i.i.i40.i.i, %i.gl ; 2 uses
  %i.gt = icmp ugt i64 %i.gs, 1
  br i1 %i.gt, label %.lr.ph.i.i.i39.i.i, label %._crit_edge.i.i.i29.i.i

bb.ar:                                            ; preds = %._crit_edge.i.i.i29.i.i
  %i.gu = icmp ult i16 %.val14.i.i.i31.i.i, %i.gd
  %i.gv = zext i1 %i.gu to i64
  %i.gw = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i30.i.i, %i.gv ; 2 uses
  %i.gx = icmp ule i64 %i.gw, %i.gh
  call void @llvm.assume(i1 %i.gx)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.4.0.i.i.ph.i32.i.i = phi i64 [ %i.gw, %bb.ar ], [ %i.gh, %bb.aq ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !48510
  store i16 %i.gd, ptr %i.ga, align 8, !noalias !48510
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !48510
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i33.i.i, align 8, !noalias !48510
  store i64 0, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i34.i.i, align 8, !noalias !48510
  %i.gy = icmp ult i64 %i.gh, 230584300921369396
  call void @llvm.assume(i1 %i.gy)
  %i.gz = load i64, ptr %i.g, align 8, !range !72, !alias.scope !48511, !noalias !48512, !noundef !68
  %i.ha = icmp eq i64 %i.gh, %i.gz
  br i1 %i.ha, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %._crit_edge.i37.i.i unwind label %bb.av, !noalias !48512

._crit_edge.i37.i.i:                              ; preds = %bb.at
  %.pre.i38.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i89, align 8, !alias.scope !48511, !noalias !48512
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge.i37.i.i, %bb.as
  %i.hb = phi ptr [ %.pre.i38.i.i, %._crit_edge.i37.i.i ], [ %i.gg, %bb.as ]
  %i.hc = getelementptr inbounds nuw [40 x i8], ptr %i.hb, i64 %.sroa.4.0.i.i.ph.i32.i.i ; 3 uses
  %i.hd = icmp samesign ult i64 %.sroa.4.0.i.i.ph.i32.i.i, %i.gh
  br i1 %i.hd, label %bb.aw, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs9KQ7US1M400_11lance_table.exit.i35.i.i

bb.av:                                            ; preds = %bb.at
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.aw:                                            ; preds = %bb.au
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.hg = sub nuw nsw i64 %i.gh, %.sroa.4.0.i.i.ph.i32.i.i
  %i.hh = mul nuw nsw i64 %i.hg, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hf, ptr nonnull align 8 %i.hc, i64 %i.hh, i1 false), !noalias !48512
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs9KQ7US1M400_11lance_table.exit.i35.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs9KQ7US1M400_11lance_table.exit.i35.i.i: ; preds = %bb.aw, %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hc, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !48513
  %i.hi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  store i64 %i.hi, ptr %.sroa.5.0..sroa_idx.i90, align 8, !alias.scope !48511, !noalias !48512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !48510
  br label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit43.i.i

_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit43.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs9KQ7US1M400_11lance_table.exit.i35.i.i, %._crit_edge.i.i.i29.i.i
  %i.hj = phi i64 [ %i.hi, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs9KQ7US1M400_11lance_table.exit.i35.i.i ], [ %i.gh, %._crit_edge.i.i.i29.i.i ] ; 2 uses
  %.sroa.4.0.i.i15.i36.i.i = phi i64 [ %.sroa.4.0.i.i.ph.i32.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs9KQ7US1M400_11lance_table.exit.i35.i.i ], [ %.sroa.05.0.lcssa.i.i.i30.i.i, %._crit_edge.i.i.i29.i.i ] ; 3 uses
  %i.hk = icmp ult i64 %.sroa.4.0.i.i15.i36.i.i, %i.hj
  br i1 %i.hk, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.ap
  %i.hl = invoke fastcc noundef zeroext i1 @_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert(ptr noalias noundef align 8 dereferenceable(32) %.sroa.011.062.i.i, i16 noundef %i.ge)
          to label %.noexc5.i unwind label %.loopexit.i, !noalias !48497

.noexc5.i:                                        ; preds = %bb.ax
  br i1 %i.hl, label %.sink.split.i.i, label %.noexc8.i

bb.ay:                                            ; preds = %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit43.i.i
  %i.hm = load ptr, ptr %.sroa.4.0..sroa_idx.i89, align 8, !alias.scope !48498, !noalias !48497, !nonnull !68, !noundef !68
  %i.hn = getelementptr inbounds nuw [40 x i8], ptr %i.hm, i64 %.sroa.4.0.i.i15.i36.i.i ; 3 uses
  %i.ho = invoke fastcc noundef zeroext i1 @_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert(ptr noalias noundef align 8 dereferenceable(32) %i.hn, i16 noundef %i.ge)
          to label %.noexc6.i unwind label %.loopexit.i, !noalias !48497

.noexc6.i:                                        ; preds = %bb.ay
  br i1 %i.ho, label %.sink.split.i.i, label %.noexc8.i

bb.az:                                            ; preds = %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit43.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.0.i.i15.i36.i.i, i64 noundef %i.hj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #80
          to label %.noexc7.i unwind label %.loopexit.split-lp.i, !noalias !48497

.noexc7.i:                                        ; preds = %bb.az
  unreachable

.sink.split.i.i:                                  ; preds = %.noexc6.i, %.noexc5.i
  %.sink75.i.i = phi ptr [ %.sroa.011.062.i.i, %.noexc5.i ], [ %i.hn, %.noexc6.i ] ; 2 uses
  %.sroa.015.1.ph.i.i = phi i16 [ %.sroa.015.061.i.i, %.noexc5.i ], [ %i.gd, %.noexc6.i ]
  %i.hp = invoke noundef zeroext i1 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container20ensure_correct_store(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sink75.i.i)
          to label %.noexc8.i unwind label %.loopexit.i, !noalias !48497 ; 0 uses

.noexc8.i:                                        ; preds = %.sink.split.i.i, %.noexc6.i, %.noexc5.i
  %.sroa.015.1.i.i = phi i16 [ %i.gd, %.noexc6.i ], [ %.sroa.015.061.i.i, %.noexc5.i ], [ %.sroa.015.1.ph.i.i, %.sink.split.i.i ]
  %.sroa.011.1.i.i = phi ptr [ %i.hn, %.noexc6.i ], [ %.sroa.011.062.i.i, %.noexc5.i ], [ %.sink75.i.i, %.sink.split.i.i ]
  %.sroa.046.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.046.063.i.i, i64 240 ; 2 uses
  %i.hq = icmp eq ptr %.sroa.046.0.i.i, %i.fp
  br i1 %i.hq, label %.loopexit341, label %bb.ap

.loopexit.i:                                      ; preds = %.sink.split.i.i, %bb.ay, %bb.ax
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body93.thread

.loopexit.split-lp.i:                             ; preds = %bb.az, %bb.ao, %bb.an
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body93.thread

.body93.thread:                                   ; preds = %common.resume.i.i, %.loopexit.i, %.loopexit.split-lp.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %common.resume.op.i.i, %common.resume.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.g), !noalias !48497
  %.val64486 = load ptr, ptr %i.o, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val65487 = load i64, ptr %i.hr, align 8, !noundef !68
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtCs8d5NHFTTVL0_4uuid4UuidEECs9KQ7US1M400_11lance_table(ptr %.val64486, i64 %.val65487) #81
  br label %.thread

.body93:                                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEB1f_.exit120, %bb.dr
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1B_3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB2x_(ptr noalias noundef align 8 dereferenceable(64) %i.m) #81
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.n)
  %.val64 = load ptr, ptr %i.o, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val65 = load i64, ptr %i.hs, align 8, !noundef !68
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtCs8d5NHFTTVL0_4uuid4UuidEECs9KQ7US1M400_11lance_table(ptr %.val64, i64 %.val65) #81
  br label %bb.q

.loopexit341:                                     ; preds = %.noexc8.i, %.noexc4.i, %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !48497
  %.sroa.0231.0.copyload = load ptr, ptr %i.q, align 8, !nonnull !68, !noundef !68 ; 5 uses
  %.sroa.4232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4232.0.copyload = load i64, ptr %.sroa.4232.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.5234.0.copyload = load i64, ptr %.sroa.5234.0..sroa_idx, align 8 ; 3 uses
  %.val3.i.i.i96 = load <16 x i8>, ptr %.sroa.0231.0.copyload, align 16, !noalias !48514
  %i.ht = icmp eq i64 %.sroa.4232.0.copyload, 0
  br i1 %i.ht, label %bb.ba, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %.loopexit341
  %i.hu = mul i64 %.sroa.4232.0.copyload, 48      ; 2 uses
  %4 = add i64 %i.hu, 48                          ; 2 uses
  %5 = add i64 %.sroa.4232.0.copyload, 17
  %i.hv = add i64 %5, %4                          ; 3 uses
  %6 = icmp uge i64 %i.hv, %4
  call void @llvm.assume(i1 %6)
  %7 = icmp ult i64 %i.hv, 9223372036854775793
  call void @llvm.assume(i1 %7)
  %8 = sub i64 -48, %i.hu
  %i.hw = getelementptr inbounds i8, ptr %.sroa.0231.0.copyload, i64 %8
  br label %bb.ba

bb.ba:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %.loopexit341
  %.sroa.511.0.i.i = phi ptr [ undef, %.loopexit341 ], [ %i.hw, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %.sroa.410.0.i.i = phi i64 [ undef, %.loopexit341 ], [ %i.hv, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %.sink.i.i.i = phi i64 [ 0, %.loopexit341 ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0231.0.copyload, i64 16
  %i.hy = icmp sgt <16 x i8> %.val3.i.i.i96, splat (i8 -1)
  %i.hz = getelementptr i8, ptr %.sroa.0231.0.copyload, i64 %.sroa.4232.0.copyload
  %i.ia = getelementptr i8, ptr %i.hz, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %.sink.i.i.i, ptr %i.m, align 8
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.410.0.i.i, ptr %.sroa.4223.0..sroa_idx, align 8
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.sroa.511.0.i.i, ptr %.sroa.5224.0..sroa_idx, align 8
  %.sroa.6225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store ptr %.sroa.0231.0.copyload, ptr %.sroa.6225.0..sroa_idx, align 8
  %.sroa.7226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 3 uses
  store ptr %i.hx, ptr %.sroa.7226.0..sroa_idx, align 8
  %.sroa.8227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.ia, ptr %.sroa.8227.0..sroa_idx, align 8
  %.sroa.9228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 3 uses
  store <16 x i1> %i.hy, ptr %.sroa.9228.0..sroa_idx, align 8
  %.sroa.11230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 3 uses
  store i64 %.sroa.5234.0.copyload, ptr %.sroa.11230.0..sroa_idx, align 8
  %i.ib = icmp eq i64 %.sroa.5234.0.copyload, 0
  br i1 %i.ib, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBX_3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1S_.exit.thread, label %.lr.ph393

.lr.ph393:                                        ; preds = %bb.ba
  %i.ic = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph393, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit
  %i.ik = phi i64 [ %.sroa.5234.0.copyload, %.lr.ph393 ], [ %.pr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !48515)
  call void @llvm.experimental.noalias.scope.decl(metadata !48516)
  %i.il = load i16, ptr %.sroa.9228.0..sroa_idx, align 8, !alias.scope !48517, !noalias !48518, !noundef !68 ; 2 uses
  %.not12.i.i = icmp eq i16 %i.il, 0
  %.promoted.i.i = load ptr, ptr %.sroa.6225.0..sroa_idx, align 8, !alias.scope !48517, !noalias !48518 ; 2 uses
  br i1 %.not12.i.i, label %.lr.ph.i.i102, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBX_3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1S_.exit

.lr.ph.i.i102:                                    ; preds = %bb.bb
  %.promoted14.i.i = load ptr, ptr %.sroa.7226.0..sroa_idx, align 8, !alias.scope !48517, !noalias !48518
  br label %bb.bc

._crit_edge.i.i103:                               ; preds = %bb.bc
  store ptr %i.iq, ptr %.sroa.7226.0..sroa_idx, align 8, !alias.scope !48517, !noalias !48518
  store ptr %i.ip, ptr %.sroa.6225.0..sroa_idx, align 8, !alias.scope !48517, !noalias !48518
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBX_3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1S_.exit

bb.bc:                                            ; preds = %bb.bc, %.lr.ph.i.i102
  %i.im = phi ptr [ %.promoted14.i.i, %.lr.ph.i.i102 ], [ %i.iq, %bb.bc ] ; 2 uses
  %i.in = phi ptr [ %.promoted.i.i, %.lr.ph.i.i102 ], [ %i.ip, %bb.bc ]
  %.val10.i.i = load <16 x i8>, ptr %i.im, align 16, !noalias !48519
  %i.io = icmp sgt <16 x i8> %.val10.i.i, splat (i8 -1)
  %i.ip = getelementptr inbounds i8, ptr %i.in, i64 -768 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.io to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %bb.bc, label %._crit_edge.i.i103

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBX_3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1S_.exit: ; preds = %bb.bb, %._crit_edge.i.i103
  %i.ir = phi ptr [ %i.ip, %._crit_edge.i.i103 ], [ %.promoted.i.i, %bb.bb ]
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i103 ], [ %i.il, %bb.bb ] ; 3 uses
  %i.is = add i16 %.lcssa.i.i, -1
  %i.it = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.iu = zext nneg i16 %i.it to i64
  %i.iv = and i16 %i.is, %.lcssa.i.i
  store i16 %i.iv, ptr %.sroa.9228.0..sroa_idx, align 8, !alias.scope !48517, !noalias !48518
  %i.iw = sub nsw i64 0, %i.iu
  %i.ix = getelementptr inbounds [48 x i8], ptr %i.ir, i64 %i.iw ; 5 uses
  %i.iy = add i64 %i.ik, -1
  store i64 %i.iy, ptr %.sroa.11230.0..sroa_idx, align 8, !alias.scope !48515, !noalias !48518
  %i.iz = getelementptr inbounds i8, ptr %i.ix, i64 -48
  %.sroa.0157.0.copyload = load i64, ptr %i.iz, align 8, !noalias !48515 ; 5 uses
  %.sroa.10160.0..sroa_idx = getelementptr inbounds i8, ptr %i.ix, i64 -40
  %.sroa.10160.0.copyload = load ptr, ptr %.sroa.10160.0..sroa_idx, align 8, !noalias !48515 ; 4 uses
  %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %i.ix, i64 -24
  %.sroa.12.sroa.4.0.copyload = load i64, ptr %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx, align 8, !noalias !48515 ; 4 uses
  %.sroa.12.sroa.5.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %i.ix, i64 -16
  %.sroa.12.sroa.5.0.copyload = load ptr, ptr %.sroa.12.sroa.5.0..sroa.12.0..sroa_idx.sroa_idx, align 8, !noalias !48515 ; 8 uses
  %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %i.ix, i64 -8
  %.sroa.12.sroa.6.0.copyload = load i64, ptr %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx.sroa_idx, align 8, !noalias !48515 ; 4 uses
  %.not26 = icmp eq i64 %.sroa.0157.0.copyload, -1
  br i1 %.not26, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBX_3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1S_.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBX_3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1S_.exit
  %i.ja = icmp ult i64 %.sroa.12.sroa.6.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.ja)
  %i.jb = icmp samesign ugt i64 %.sroa.12.sroa.6.0.copyload, 1
  br i1 %i.jb, label %bb.bv, label %bb.bu

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBX_3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1S_.exit.thread: ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBX_3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1S_.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit, %bb.ba
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1B_3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEEB2x_(ptr noalias noundef align 8 dereferenceable(64) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !48520)
  call void @llvm.experimental.noalias.scope.decl(metadata !48521)
  call void @llvm.experimental.noalias.scope.decl(metadata !48522)
  %i.jc = load i64, ptr %i.ao, align 8, !alias.scope !48523, !noalias !48524, !noundef !68 ; 7 uses
  %i.jd = icmp ult i64 %i.jc, 52405522936674863
  call void @llvm.assume(i1 %i.jd)
  %i.je = icmp eq i64 %i.jc, 0
  br i1 %i.je, label %.loopexit, label %.preheader.i.i104

.preheader.i.i104:                                ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBX_3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1S_.exit.thread
  %i.jf = load ptr, ptr %i.bn, align 8, !alias.scope !48523, !noalias !48524, !nonnull !68, !noundef !68 ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.jh = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ji = load i64, ptr %i.jg, align 8, !alias.scope !48521, !noalias !48520
  %.fr13.i = freeze i64 %i.ji
  %i.jj = icmp eq i64 %.fr13.i, 0                 ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %.sroa.419.0..sroa_idx, align 8, !alias.scope !48521, !noalias !48520 ; 2 uses
  %.val5.i.i.i.i.i = load i64, ptr %.sroa.520.0..sroa_idx, align 8, !alias.scope !48521, !noalias !48520 ; 2 uses
  %i.jk = load i64, ptr %i.jh, align 8, !alias.scope !48521, !noalias !48520 ; 4 uses
  %i.jl = load ptr, ptr %i.o, align 8, !alias.scope !48521, !noalias !48520, !nonnull !68 ; 4 uses
  br i1 %i.jj, label %.preheader.i.split.us.i, label %.preheader.i.split.i, !prof !93

.preheader.i.split.us.i:                          ; preds = %.preheader.i.i104, %.loopexit41.i.us.i
  %.sroa.0.0.i.us.i = phi i64 [ %i.kc, %.loopexit41.i.us.i ], [ 0, %.preheader.i.i104 ] ; 3 uses
  %i.jm = getelementptr inbounds nuw [176 x i8], ptr %i.jf, i64 %.sroa.0.0.i.us.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48525)
  call void @llvm.experimental.noalias.scope.decl(metadata !48526)
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 64
  %i.jo = load i64, ptr %i.jn, align 8, !alias.scope !48527, !noalias !48528, !noundef !68
  %i.jp = icmp eq i64 %i.jo, 18
  br i1 %i.jp, label %bb.be, label %_RNCINvMs_NtCs40k4W9msRzi_5alloc3vecINtB7_3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE6retainNCNvMNtNtBN_11transaction17index_maintenanceNtNtB1V_7builder11Transaction23retain_relevant_indicess3_0E0BN_.exit.i.loopexit1.split.us.i

bb.be:                                            ; preds = %.preheader.i.split.us.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 56
  %i.jr = load ptr, ptr %i.jq, align 8, !alias.scope !48527, !noalias !48528, !nonnull !68, !noundef !68 ; 2 uses
  %i.js = load i128, ptr %i.jr, align 1
  %i.jt = xor i128 %i.js, 156046417242912191920089521053883981663
  %i.ju = getelementptr i8, ptr %i.jr, i64 16
  %i.jv = load i16, ptr %i.ju, align 1
  %i.jw = zext i16 %i.jv to i128
  %i.jx = xor i128 %i.jw, 25971
  %i.jy = or i128 %i.jt, %i.jx
  %i.jz = icmp ne i128 %i.jy, 0
  %i.ka = zext i1 %i.jz to i32
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %.loopexit41.i.us.i, label %_RNCINvMs_NtCs40k4W9msRzi_5alloc3vecINtB7_3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE6retainNCNvMNtNtBN_11transaction17index_maintenanceNtNtB1V_7builder11Transaction23retain_relevant_indicess3_0E0BN_.exit.i.loopexit1.split.us.i

_RNCINvMs_NtCs40k4W9msRzi_5alloc3vecINtB7_3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE6retainNCNvMNtNtBN_11transaction17index_maintenanceNtNtB1V_7builder11Transaction23retain_relevant_indicess3_0E0BN_.exit.i.loopexit1.split.us.i: ; preds = %bb.be, %.preheader.i.split.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !48529)
  br label %_RNCINvMs_NtCs40k4W9msRzi_5alloc3vecINtB7_3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE6retainNCNvMNtNtBN_11transaction17index_maintenanceNtNtB1V_7builder11Transaction23retain_relevant_indicess3_0E0BN_.exit.i.i

.loopexit41.i.us.i:                               ; preds = %bb.be
  %i.kc = add nuw nsw i64 %.sroa.0.0.i.us.i, 1    ; 2 uses
  %i.kd = icmp eq i64 %i.kc, %i.jc
  br i1 %i.kd, label %.loopexit, label %.preheader.i.split.us.i

.preheader.i.split.i:                             ; preds = %.preheader.i.i104, %.loopexit41.i.i
  %.sroa.0.0.i.i105 = phi i64 [ %i.ls, %.loopexit41.i.i ], [ 0, %.preheader.i.i104 ] ; 3 uses
  %i.ke = getelementptr inbounds nuw [176 x i8], ptr %i.jf, i64 %.sroa.0.0.i.i105 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48525)
  call void @llvm.experimental.noalias.scope.decl(metadata !48526)
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 64
  %i.kg = load i64, ptr %i.kf, align 8, !alias.scope !48527, !noalias !48528, !noundef !68
  %i.kh = icmp eq i64 %i.kg, 18
  br i1 %i.kh, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.preheader.i.split.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 56
  %i.kj = load ptr, ptr %i.ki, align 8, !alias.scope !48527, !noalias !48528, !nonnull !68, !noundef !68 ; 2 uses
  %i.kk = load i128, ptr %i.kj, align 1
  %i.kl = xor i128 %i.kk, 156046417242912191920089521053883981663
  %i.km = getelementptr i8, ptr %i.kj, i64 16
  %i.kn = load i16, ptr %i.km, align 1
  %i.ko = zext i16 %i.kn to i128
  %i.kp = xor i128 %i.ko, 25971
  %i.kq = or i128 %i.kl, %i.kp
  %i.kr = icmp ne i128 %i.kq, 0
  %i.ks = zext i1 %i.kr to i32
  %i.kt = icmp eq i32 %i.ks, 0
  br i1 %i.kt, label %.loopexit41.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.preheader.i.split.i
  call void @llvm.experimental.noalias.scope.decl(metadata !48529)
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ke, i64 128 ; 2 uses
  %i.kv = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtCs8d5NHFTTVL0_4uuid4UuidECs9KQ7US1M400_11lance_table(i64 %.val.i.i.i.i.i, i64 %.val5.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.ku), !noalias !48530 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48531)
  %i.kw = lshr i64 %i.kv, 57
  %i.kx = trunc nuw nsw i64 %i.kw to i8
  %i.ky = insertelement <16 x i8> poison, i8 %i.kx, i64 0
  %i.kz = shufflevector <16 x i8> %i.ky, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i.i.i.i.i = load i128, ptr %i.ku, align 8, !alias.scope !48532, !noalias !48533
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bj, %bb.bg
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bg ], [ %i.lq, %bb.bj ]
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.kv, %bb.bg ], [ %i.lr, %bb.bj ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.jk ; 3 uses
end_hunk_1
begin_hunk_2_@_RNvXs2_NtNtCs9KQ7US1M400_11lance_table11transaction5protoNtNtB7_7builder11TransactionINtNtCscI6d9CVNmLh_4core7convert7TryFromNtNtNtB9_6format2pb11TransactionE8try_from:bb.a
  %i.rs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rt = icmp eq i64 %i.cn, 0
  br i1 %i.rt, label %.split, label %.split.sink.split

bb.fh:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.ru = load i8, ptr %i.x, align 8, !range !110, !noundef !68 ; 2 uses
  %.not573.not = icmp eq i8 %i.ru, -1             ; 2 uses
  br i1 %.not573.not, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %.sroa.4471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %.sroa.5472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.5475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5475.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5472.0..sroa_idx, i64 24, i1 false)
  %.sroa.4474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4474.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4471.0..sroa_idx, i64 31, i1 false)
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ru, ptr %i.rv, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %i.rw = icmp eq i64 %i.cn, 0
  br i1 %i.rw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit772, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit772.sink.split

bb.fj:                                            ; preds = %bb.fh
  %i.rx = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.rx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.ry = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.rz = load ptr, ptr %i.ry, align 8, !nonnull !68, !noundef !68 ; 3 uses
  %i.sa = load i64, ptr %i.bn, align 8, !range !72, !noundef !68
  %i.sb = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.sc = load i64, ptr %i.sb, align 8, !noundef !68 ; 2 uses
  %i.sd = icmp ult i64 %i.sc, 41175768021673107
  tail call void @llvm.assume(i1 %i.sd)
  %i.se = getelementptr inbounds nuw [224 x i8], ptr %i.rz, i64 %i.sc
  store ptr %i.rz, ptr %i.bf, align 8
  %.sroa.4190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.rz, ptr %.sroa.4190.0..sroa_idx, align 8
  %.sroa.5191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %i.sa, ptr %.sroa.5191.0..sroa_idx, align 8
  %.sroa.6192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %i.se, ptr %.sroa.6192.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentENvYNtNtB1Y_8fragment8FragmentINtNtB6_7convert7TryFromB1U_E8try_fromEB2T_INtNtB6_6result6ResultNtB3m_10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENCINvXso_B43_IB41_INtB1b_3VecB2T_EB4E_EINtNtNtB4_6traits7collect12FromIteratorIB41_B2T_B4E_EE9from_iterBQ_E0B5D_EB20_(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.w, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %i.bf)
          to label %bb.fl unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.sf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.rx) #81
          to label %bb.hs unwind label %bb.br

bb.fl:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.sg = load i8, ptr %i.w, align 8, !range !110, !noundef !68 ; 2 uses
  %.not574 = icmp ne i8 %i.sg, -1                 ; 3 uses
  br i1 %.not574, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %.sroa.4480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.sroa.5481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.5484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5484.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5481.0..sroa_idx, i64 24, i1 false)
  %.sroa.4483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4483.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4480.0..sroa_idx, i64 31, i1 false)
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.sg, ptr %i.sh, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.rx)
          to label %bb.hr unwind label %bb.hq

bb.fn:                                            ; preds = %bb.fl
  %i.si = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.si, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.sj = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.sk = load ptr, ptr %i.sj, align 8, !nonnull !68, !noundef !68 ; 3 uses
  %i.sl = load i64, ptr %i.bm, align 8, !range !72, !noundef !68
  %i.sm = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.sn = load i64, ptr %i.sm, align 8, !noundef !68 ; 2 uses
  %i.so = icmp ult i64 %i.sn, 288230376151711744
  tail call void @llvm.assume(i1 %i.so)
  %i.sp = getelementptr inbounds nuw [32 x i8], ptr %i.sk, i64 %i.sn
  store ptr %i.sk, ptr %i.bd, align 8
  %.sroa.4197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.sk, ptr %.sroa.4197.0..sroa_idx, align 8
  %.sroa.5198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %i.sl, ptr %.sroa.5198.0..sroa_idx, align 8
  %.sroa.6199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.sp, ptr %.sroa.6199.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format2pb16CompactedSsTableENCNvXs2_NtNtB2r_11transaction5protoNtNtB3v_7builder11TransactionINtNtB1f_7convert7TryFromNtB2n_11TransactionE8try_from0ENtNtNtB2r_12system_index7mem_wal16CompactedSsTableEB2r_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.bd)
          to label %bb.fq unwind label %bb.fp

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal16CompactedSsTableEEB1e_.exit814: ; preds = %bb.hn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit773, %bb.fp
  %.sroa.0350.0 = phi i1 [ true, %bb.fp ], [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit773 ], [ false, %bb.hn ]
  %.pn576 = phi { ptr, i32 } [ %i.ss, %bb.fp ], [ %i.sx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit773 ], [ %i.sx, %bb.hn ]
  %i.sq = icmp eq i64 %.sroa.0892.0.copyload, 0
  br i1 %i.sq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit, label %bb.fo

bb.fo:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal16CompactedSsTableEEB1e_.exit814
  %i.sr = shl nuw i64 %.sroa.0892.0.copyload, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7894.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7894.0.copyload, i64 noundef %i.sr, i64 noundef range(i64 1, -9223372036854775807) 4) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit

bb.fp:                                            ; preds = %bb.fn
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal16CompactedSsTableEEB1e_.exit814

bb.fq:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %switch.selectcmp = icmp eq i32 %i.fv, 1
  %switch.select = zext i1 %switch.selectcmp to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6203)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7210)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9213)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6218)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7220)
  %.sroa.0222.0.copyload = load i64, ptr %i.bl, align 8 ; 2 uses
  %.not575 = icmp eq i64 %.sroa.0222.0.copyload, -1
  br i1 %.not575, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.4486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4486.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.st, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %.sroa.0222.0.copyload, ptr %i.u, align 8
  invoke fastcc void @_RNCNvXs2_NtNtCs9KQ7US1M400_11lance_table11transaction5protoNtNtB9_7builder11TransactionINtNtCscI6d9CVNmLh_4core7convert7TryFromNtNtNtBb_6format2pb11TransactionE8try_froms_0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.u)
          to label %bb.fv unwind label %bb.ft

bb.fs:                                            ; preds = %bb.fq, %bb.fx
  %.sroa.0207.0 = phi i64 [ %.sroa.0216.0.copyload, %bb.fx ], [ -1, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6218)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7220)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6203, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7210, i64 56, i1 false)
  %.sroa.5228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5228.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9213, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7210)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9213)
  %.sroa.4227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4227.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6203, i64 56, i1 false)
  store i64 %.sroa.0207.0, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.su = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.sv = load i64, ptr %i.su, align 8, !noundef !68 ; 2 uses
  %i.sw = icmp ne i64 %i.sv, 0                    ; 3 uses
  br i1 %i.sw, label %bb.fz, label %bb.fy

bb.ft:                                            ; preds = %bb.fr
  %i.sx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sy = icmp eq i64 %.sroa.0900.0.copyload, 0
  br i1 %i.sy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit773, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.sz = shl nuw i64 %.sroa.0900.0.copyload, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7902.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7902.0.copyload, i64 noundef %i.sz, i64 noundef range(i64 1, -9223372036854775807) 4) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit773

bb.fv:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.sroa.0216.0.copyload = load i64, ptr %i.v, align 8 ; 2 uses
  %.sroa.6218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6218, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6218.0..sroa_idx, i64 56, i1 false)
  %.sroa.7220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7220, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7220.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.ta = icmp eq i64 %.sroa.0216.0.copyload, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7210, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6218, i64 56, i1 false)
  br i1 %i.ta, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6218)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7220)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6203, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7210, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7210)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9213)
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.tb, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6203, i64 56, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.gp

bb.fx:                                            ; preds = %bb.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9213, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7220, i64 16, i1 false)
  br label %bb.fs

bb.fy:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %.sroa.01066.0.copyload = load ptr, ptr %i.bk, align 8, !nonnull !68, !noundef !68 ; 5 uses
  %.sroa.41067.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.41067.0.copyload = load i64, ptr %.sroa.41067.0..sroa_idx, align 8 ; 5 uses
  %.sroa.51069.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.sroa.51069.0.copyload = load i64, ptr %.sroa.51069.0..sroa_idx, align 8
  %.val3.i.i.i = load <16 x i8>, ptr %.sroa.01066.0.copyload, align 16, !noalias !71435
  %i.tc = icmp eq i64 %.sroa.41067.0.copyload, 0
  br i1 %i.tc, label %bb.gb, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.fy
  %2 = icmp slt i64 %.sroa.41067.0.copyload, 576460752303423487
  tail call void @llvm.assume(i1 %2)
  %i.td = shl i64 %.sroa.41067.0.copyload, 5      ; 2 uses
  %3 = add i64 %i.td, 32                          ; 2 uses
  %4 = add nsw i64 %.sroa.41067.0.copyload, 17
  %i.te = add i64 %4, %3                          ; 3 uses
  %5 = icmp uge i64 %i.te, %3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.te, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.tf = sub nuw nsw i64 -32, %i.td
  %i.tg = getelementptr inbounds i8, ptr %.sroa.01066.0.copyload, i64 %i.tf
  br label %bb.gb

bb.fz:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %.sroa.01061.0.copyload = load ptr, ptr %i.bj, align 8, !nonnull !68, !noundef !68 ; 5 uses
  %.sroa.41062.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.41062.0.copyload = load i64, ptr %.sroa.41062.0..sroa_idx, align 8 ; 5 uses
  %.val3.i.i.i779 = load <16 x i8>, ptr %.sroa.01061.0.copyload, align 16, !noalias !71436
  %i.th = icmp eq i64 %.sroa.41062.0.copyload, 0
  br i1 %i.th, label %bb.ge, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i780

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i780: ; preds = %bb.fz
  %7 = icmp slt i64 %.sroa.41062.0.copyload, 576460752303423487
  tail call void @llvm.assume(i1 %7)
  %i.ti = shl i64 %.sroa.41062.0.copyload, 5      ; 2 uses
  %8 = add i64 %i.ti, 32                          ; 2 uses
  %9 = add nsw i64 %.sroa.41062.0.copyload, 17
  %i.tj = add i64 %9, %8                          ; 3 uses
  %10 = icmp uge i64 %i.tj, %8
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ult i64 %i.tj, 9223372036854775793
  tail call void @llvm.assume(i1 %11)
  %i.tk = sub nuw nsw i64 -32, %i.ti
  %i.tl = getelementptr inbounds i8, ptr %.sroa.01061.0.copyload, i64 %i.tk
  br label %bb.ge

bb.ga:                                            ; preds = %bb.ge, %bb.gb
  %.sroa.0337.0 = phi i8 [ 0, %bb.ge ], [ 1, %bb.gb ]
  %i.tm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format13key_existence18KeyExistenceFilterEEB13_(ptr noalias noundef align 8 dereferenceable(80) %i.bc) #81
  %i.tn = icmp eq i64 %.sroa.0900.0.copyload, 0
  br i1 %i.tn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit791, label %bb.go

bb.gb:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.fy
  %.sroa.511.0.i.i = phi ptr [ undef, %bb.fy ], [ %i.tg, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %.sroa.410.0.i.i = phi i64 [ undef, %bb.fy ], [ %i.te, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %.sink.i.i.i = phi i64 [ 0, %bb.fy ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.01066.0.copyload, i64 16
  %i.tp = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.tq = getelementptr i8, ptr %.sroa.01066.0.copyload, i64 %.sroa.41067.0.copyload
  %i.tr = getelementptr i8, ptr %i.tq, i64 1
  store i64 %.sink.i.i.i, ptr %i.az, align 8
  %.sroa.4983.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.410.0.i.i, ptr %.sroa.4983.0..sroa_idx, align 8
  %.sroa.5984.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %.sroa.511.0.i.i, ptr %.sroa.5984.0..sroa_idx, align 8
  %.sroa.6985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr %.sroa.01066.0.copyload, ptr %.sroa.6985.0..sroa_idx, align 8
  %.sroa.7986.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store ptr %i.to, ptr %.sroa.7986.0..sroa_idx, align 8
  %.sroa.8987.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store ptr %i.tr, ptr %.sroa.8987.0..sroa_idx, align 8
  %.sroa.9988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store <16 x i1> %i.tp, ptr %.sroa.9988.0..sroa_idx, align 8
  %.sroa.11990.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  store i64 %.sroa.51069.0.copyload, ptr %.sroa.11990.0..sroa_idx, align 8
  invoke fastcc void @_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB20_8adapters3map3MapINtNtB3g_6filter6FilterINtB7_8IntoIteryNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListENCNvXs2_NtNtB4o_11transaction5protoNtNtB5z_7builder11TransactionINtNtB22_7convert7TryFromNtB4k_11TransactionE8try_froms2_0ENCB5r_s3_0EEB4o_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.bb, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.az)
          to label %bb.gc unwind label %bb.ga

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gh, %bb.gc
  %i.ts = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.tt = load i64, ptr %i.ts, align 8, !noundef !68
  %i.tu = icmp eq i64 %i.tt, 0
  br i1 %i.tu, label %bb.gi, label %bb.gj

bb.ge:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i780, %bb.fz
  %.sroa.511.0.i.i781 = phi ptr [ undef, %bb.fz ], [ %i.tl, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i780 ]
  %.sroa.410.0.i.i782 = phi i64 [ undef, %bb.fz ], [ %i.tj, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i780 ]
  %.sink.i.i.i783 = phi i64 [ 0, %bb.fz ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i780 ]
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.01061.0.copyload, i64 16
  %i.tw = icmp sgt <16 x i8> %.val3.i.i.i779, splat (i8 -1)
  %i.tx = getelementptr i8, ptr %.sroa.01061.0.copyload, i64 %.sroa.41062.0.copyload
  %i.ty = getelementptr i8, ptr %i.tx, i64 1
  store i64 %.sink.i.i.i783, ptr %i.ba, align 8
  %.sroa.41010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %.sroa.410.0.i.i782, ptr %.sroa.41010.0..sroa_idx, align 8
  %.sroa.51011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %.sroa.511.0.i.i781, ptr %.sroa.51011.0..sroa_idx, align 8
  %.sroa.61012.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr %.sroa.01061.0.copyload, ptr %.sroa.61012.0..sroa_idx, align 8
  %.sroa.71013.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr %i.tv, ptr %.sroa.71013.0..sroa_idx, align 8
  %.sroa.81014.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store ptr %i.ty, ptr %.sroa.81014.0..sroa_idx, align 8
  %.sroa.91015.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store <16 x i1> %i.tw, ptr %.sroa.91015.0..sroa_idx, align 8
  %.sroa.111017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  store i64 %i.sv, ptr %.sroa.111017.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_6filter6FilterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIteryINtNtCs40k4W9msRzi_5alloc3vec3VechEENCNvXs2_NtNtCs9KQ7US1M400_11lance_table11transaction5protoNtNtB39_7builder11TransactionINtNtB6_7convert7TryFromNtNtNtB3b_6format2pb11TransactionE8try_froms0_0ENCB31_s1_0ETyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEINtNtB6_6result6ResultNtB4r_10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENCINvXso_B6B_IB6z_INtB1v_7HashMapyB5L_EB7c_EINtNtNtB4_6traits7collect12FromIteratorIB6z_B5J_B7c_EE9from_iterBQ_E0B8b_EB3b_(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.t, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %i.ba)
          to label %bb.gf unwind label %bb.ga

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.tz = load i8, ptr %i.t, align 8, !range !110, !noundef !68 ; 2 uses
  %.not578 = icmp eq i8 %i.tz, -1
  br i1 %.not578, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %.sroa.4502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.sroa.4504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.4504.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.4502.0..sroa_idx, i64 55, i1 false)
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.tz, ptr %i.ua, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6231)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format13key_existence18KeyExistenceFilterEEB13_(ptr noalias noundef align 8 dereferenceable(80) %i.bc)
  br label %bb.gp

bb.gh:                                            ; preds = %bb.gf
  %i.ub = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(48) %i.ub, i64 48, i1 false)
  br label %bb.gd

bb.gi:                                            ; preds = %bb.gd
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(48) %i.bb)
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gd
  %.sroa.0242.0.copyload = load ptr, ptr %i.bb, align 8
  %.sroa.4243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6231, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4243.0..sroa_idx, i64 40, i1 false)
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gi, %bb.gj
  %.sroa.0229.0 = phi ptr [ null, %bb.gi ], [ %.sroa.0242.0.copyload, %bb.gj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  store i64 %i.cn, ptr %i.cl, align 8
  %.sroa.14.0..sroa_idx910 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %.sroa.5915.0.copyload, ptr %.sroa.14.0..sroa_idx910, align 8
  %.sroa.21.0..sroa_idx912 = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %.sroa.6916.0.copyload, ptr %.sroa.21.0..sroa_idx912, align 8
  %i.uc = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uc, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false)
  %i.ud = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ud, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  %i.ue = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  store i64 %.sroa.0892.0.copyload, ptr %i.ue, align 8
  %.sroa.8918.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  store ptr %.sroa.7894.0.copyload, ptr %.sroa.8918.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 88
  store i64 %.sroa.9897.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uf, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false)
  %i.ug = getelementptr inbounds nuw i8, ptr %i.cl, i64 120
  store i64 %.sroa.0900.0.copyload, ptr %i.ug, align 8
  %.sroa.8920.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 128
  store ptr %.sroa.7902.0.copyload, ptr %.sroa.8920.0..sroa_idx, align 8
  %.sroa.12921.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 136
  store i64 %.sroa.9905.0.copyload, ptr %.sroa.12921.0..sroa_idx, align 8
  %i.uh = getelementptr inbounds nuw i8, ptr %i.cl, i64 272
  store i8 %switch.select, ptr %i.uh, align 8
  %i.ui = getelementptr inbounds nuw i8, ptr %i.cl, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ui, ptr noundef nonnull align 8 dereferenceable(80) %i.bc, i64 80, i1 false)
  %i.uj = getelementptr inbounds nuw i8, ptr %i.cl, i64 224
  store ptr %.sroa.0229.0, ptr %i.uj, align 8
  %.sroa.6231.0..sroa_idx232 = getelementptr inbounds nuw i8, ptr %i.cl, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6231.0..sroa_idx232, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6231, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6231)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6203)
  br i1 %i.sw, label %.critedge, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VechEEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.gn

bb.gm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit771
  br i1 %.sroa.0340.9, label %.split.thread, label %.body719

bb.gn:                                            ; preds = %bb.gl, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.bi

.critedge:                                        ; preds = %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListEEB1F_(ptr noalias noundef align 8 dereferenceable(48) %i.bk)
  br label %bb.gn

bb.go:                                            ; preds = %bb.ga
  %i.uk = shl nuw i64 %.sroa.0900.0.copyload, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7902.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7902.0.copyload, i64 noundef %i.uk, i64 noundef range(i64 1, -9223372036854775807) 4) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit791

bb.gp:                                            ; preds = %bb.gg, %bb.fw
  %.sroa.0337.3 = phi i8 [ 1, %bb.fw ], [ 0, %bb.gg ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.ul = icmp eq i64 %.sroa.0900.0.copyload, 0
  br i1 %i.ul, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit792, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.um = shl nuw i64 %.sroa.0900.0.copyload, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7902.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7902.0.copyload, i64 noundef %i.um, i64 noundef range(i64 1, -9223372036854775807) 4) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit792

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit791: ; preds = %bb.go, %bb.ga
  %.val709 = load i64, ptr %i.be, align 8         ; 2 uses
  %i.un = icmp eq i64 %.val709, 0
  br i1 %i.un, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal16CompactedSsTableEEB1e_.exit, label %bb.gr

bb.gr:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit791
  %i.uo = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.val710 = load ptr, ptr %i.uo, align 8, !nonnull !68, !noundef !68
  %i.up = mul nuw i64 %.val709, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val710, i64 noundef %i.up, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal16CompactedSsTableEEB1e_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit792: ; preds = %bb.gq, %bb.gp
end_hunk_2
begin_hunk_3_@_RNvXs2_NtNtCs9KQ7US1M400_11lance_table11transaction5protoNtNtB7_7builder11TransactionINtNtCscI6d9CVNmLh_4core7convert7TryFromNtNtNtB9_6format2pb11TransactionE8try_from:bb.a
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction9UpdateMapEEB1F_(ptr noalias noundef align 8 dereferenceable(48) %i.aaf) #81
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.aae)
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.ge) #81
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aw, i64 216
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.aag)
  br i1 %.sroa.0342.0, label %bb.jx, label %.body719

bb.io:                                            ; preds = %bb.jt, %bb.ji, %bb.il
  %i.aah = phi ptr [ %i.aab, %bb.jt ], [ %i.zb, %bb.ji ], [ %i.zx, %bb.il ]
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %.body664

bb.ip:                                            ; preds = %bb.il
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.in

bb.iq:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvXs9_NtNtCs9KQ7US1M400_11lance_table11transaction5protoNtNtB7_10update_map9UpdateMapINtNtCscI6d9CVNmLh_4core7convert4FromRNtNtNtNtB9_6format2pb11transaction9UpdateMapE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gh)
          to label %bb.iv unwind label %bb.iu

bb.ir:                                            ; preds = %bb.in
  store i64 -1, ptr %i.ao, align 8
  br label %bb.is

bb.is:                                            ; preds = %bb.iv, %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  br i1 %.not551, label %bb.ix, label %bb.iw

bb.it:                                            ; preds = %bb.iy, %bb.iu
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.iy ], [ %i.aaj, %bb.iu ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapEEB13_(ptr noalias noundef align 8 dereferenceable(32) %i.ap) #81
  br label %.body664

bb.iu:                                            ; preds = %bb.iq
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.iv:                                            ; preds = %bb.iq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.is

bb.iw:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvXs9_NtNtCs9KQ7US1M400_11lance_table11transaction5protoNtNtB7_10update_map9UpdateMapINtNtCscI6d9CVNmLh_4core7convert4FromRNtNtNtNtB9_6format2pb11transaction9UpdateMapE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gj)
          to label %bb.ja unwind label %bb.iz

bb.ix:                                            ; preds = %bb.is
  store i64 -1, ptr %i.an, align 8
  br label %bb.jc

bb.iy:                                            ; preds = %bb.jb, %bb.iz
  %.pn = phi { ptr, i32 } [ %i.aal, %bb.jb ], [ %i.aak, %bb.iz ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapEEB13_(ptr noalias noundef align 8 dereferenceable(32) %i.ao) #81
  br label %bb.it

bb.iz:                                            ; preds = %bb.iw
  %i.aak = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

bb.ja:                                            ; preds = %bb.iw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.jc

bb.jb:                                            ; preds = %bb.jc
  %i.aal = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapEEB13_(ptr noalias noundef align 8 dereferenceable(32) %i.an) #81
  br label %bb.iy

bb.jc:                                            ; preds = %bb.ix, %bb.ja
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aw, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71458)
  %i.aan = load ptr, ptr %i.aam, align 8, !alias.scope !71458, !noalias !71459, !nonnull !68, !noundef !68 ; 4 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.aap = load i64, ptr %i.aao, align 8, !alias.scope !71458, !noalias !71459, !noundef !68
  %i.aaq = getelementptr i8, ptr %i.aan, i64 %i.aap
  %i.aar = getelementptr i8, ptr %i.aaq, i64 1
  %.val3.i.i = load <16 x i8>, ptr %i.aan, align 16, !noalias !71460
  %i.aas = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aw, i64 144
  %i.aav = load i64, ptr %i.aau, align 8, !alias.scope !71458, !noalias !71459, !noundef !68
  store ptr %i.aan, ptr %i.al, align 8
  %.sroa.4923.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.aat, ptr %.sroa.4923.0..sroa_idx, align 8
  %.sroa.5924.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.aar, ptr %.sroa.5924.0..sroa_idx, align 8
  %.sroa.6925.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store <16 x i1> %i.aas, ptr %.sroa.6925.0..sroa_idx, align 8
  %.sroa.7927.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i64 %i.aav, ptr %.sroa.7927.0..sroa_idx, align 8
  invoke fastcc void @_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMaplNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTlB16_EE9from_iterINtNtNtB2k_8adapters3map3MapINtB7_4IterlNtNtNtNtB1c_6format2pb11transaction9UpdateMapENCNvXs2_NtB1a_5protoNtNtB1a_7builder11TransactionINtNtB2m_7convert7TryFromNtB4d_11TransactionE8try_froms5_0EEB1c_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.am, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.al)
          to label %bb.jd unwind label %bb.jb

bb.jd:                                            ; preds = %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aaw, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 32, i1 false)
  %i.aax = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aax, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false)
  %i.aay = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aay, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.cl, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aaz, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false)
  store i64 -9223372036854775796, ptr %i.cl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction9UpdateMapEEB15_(ptr noalias noundef align 8 dereferenceable(32) %i.gf)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction9UpdateMapEEB15_(ptr noalias noundef align 8 dereferenceable(32) %i.gh)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction9UpdateMapEEB15_(ptr noalias noundef align 8 dereferenceable(32) %i.gj)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction9UpdateMapEEB1F_(ptr noalias noundef align 8 dereferenceable(48) %i.aam)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.zx)
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.ge)
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aw, i64 216
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.aba)
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aw, i64 264
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapmNtNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction13update_config19FieldMetadataUpdateEEB1H_(ptr noalias noundef align 8 dereferenceable(48) %i.abb)
  br label %bb.js

bb.je:                                            ; preds = %bb.ih
  br i1 %i.za, label %.thread1160.thread, label %bb.jf

.thread1160:                                      ; preds = %bb.ig
  br i1 %i.za, label %.thread1160.thread, label %.thread1161

.thread1161:                                      ; preds = %.thread1160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.ji

bb.jf:                                            ; preds = %bb.je
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.abc = icmp eq i64 %i.zk, 0
  br i1 %i.abc, label %bb.jg, label %bb.ji

bb.jg:                                            ; preds = %.thread1404, %bb.jf
  %i.abd = phi ptr [ %i.zx, %.thread1404 ], [ %i.zb, %bb.jf ]
  %i.abe = phi i64 [ 0, %.thread1404 ], [ %i.zo, %bb.jf ]
  store i64 -1, ptr %i.av, align 8
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jj, %bb.jg
  %i.abf = phi i64 [ %.pre1283, %bb.jj ], [ %i.abe, %bb.jg ]
  %i.abg = phi ptr [ %i.zb, %bb.jj ], [ %i.abd, %bb.jg ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.abh = icmp eq i64 %i.abf, 0
  br i1 %i.abh, label %bb.jk, label %bb.jl

bb.ji:                                            ; preds = %.thread1161, %bb.jf
  %i.abi = phi i64 [ %.pre, %.thread1161 ], [ %i.zk, %bb.jf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.abk = load ptr, ptr %i.abj, align 8, !nonnull !68, !noundef !68
  invoke void @_RNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map24translate_config_updates(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.zb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.abk, i64 noundef %i.abi)
          to label %bb.jj unwind label %bb.io

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %.phi.trans.insert1282 = getelementptr inbounds nuw i8, ptr %i.aw, i64 240
  %.pre1283 = load i64, ptr %.phi.trans.insert1282, align 8
  br label %bb.jh

bb.jk:                                            ; preds = %bb.jh
  store i64 -1, ptr %i.at, align 8
  br label %bb.jm

bb.jl:                                            ; preds = %bb.jh
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aw, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke void @_RNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.abl)
          to label %bb.jp unwind label %bb.jo

bb.jm:                                            ; preds = %bb.jp, %bb.jk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aw, i64 264
  %.sroa.01071.0.copyload = load ptr, ptr %i.abm, align 8, !nonnull !68, !noundef !68 ; 5 uses
  %.sroa.41072.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 272
  %.sroa.41072.0.copyload = load i64, ptr %.sroa.41072.0..sroa_idx, align 8 ; 4 uses
  %.sroa.51074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 288
  %.sroa.51074.0.copyload = load i64, ptr %.sroa.51074.0..sroa_idx, align 8
  %.val3.i.i.i829 = load <16 x i8>, ptr %.sroa.01071.0.copyload, align 16, !noalias !71461
  %i.abn = icmp eq i64 %.sroa.41072.0.copyload, 0
  br i1 %i.abn, label %bb.jr, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i830

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i830: ; preds = %bb.jm
  %i.abo = mul i64 %.sroa.41072.0.copyload, 56    ; 2 uses
  %12 = add i64 %i.abo, 56
  %13 = icmp ult i64 %12, -15
  tail call void @llvm.assume(i1 %13)
  %i.abp = and i64 %i.abo, -16                    ; 2 uses
  %14 = add i64 %i.abp, 64                        ; 2 uses
  %i.abq = add i64 %.sroa.41072.0.copyload, 17
  %i.abr = add i64 %i.abq, %14                    ; 3 uses
  %15 = icmp uge i64 %i.abr, %14
  tail call void @llvm.assume(i1 %15)
  %16 = icmp ult i64 %i.abr, 9223372036854775793
  tail call void @llvm.assume(i1 %16)
  %i.abs = sub i64 -64, %i.abp
  %i.abt = getelementptr inbounds i8, ptr %.sroa.01071.0.copyload, i64 %i.abs
  br label %bb.jr

bb.jn:                                            ; preds = %bb.jq, %bb.jo
  %.sroa.0342.2 = phi i1 [ false, %bb.jq ], [ true, %bb.jo ]
  %.pn557 = phi { ptr, i32 } [ %i.abv, %bb.jq ], [ %i.abu, %bb.jo ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapEEB13_(ptr noalias noundef align 8 dereferenceable(32) %i.av) #81
  br label %.body664

bb.jo:                                            ; preds = %bb.jl
  %i.abu = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

bb.jp:                                            ; preds = %bb.jl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.jm

bb.jq:                                            ; preds = %bb.jr
  %i.abv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapEEB13_(ptr noalias noundef align 8 dereferenceable(32) %i.at) #81
  br label %bb.jn

bb.jr:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i830, %bb.jm
  %.sroa.511.0.i.i831 = phi ptr [ undef, %bb.jm ], [ %i.abt, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i830 ]
  %.sroa.410.0.i.i832 = phi i64 [ undef, %bb.jm ], [ %i.abr, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i830 ]
  %.sink.i.i.i833 = phi i64 [ 0, %bb.jm ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i830 ]
  %i.abw = getelementptr inbounds nuw i8, ptr %.sroa.01071.0.copyload, i64 16
  %i.abx = icmp sgt <16 x i8> %.val3.i.i.i829, splat (i8 -1)
  %i.aby = getelementptr i8, ptr %.sroa.01071.0.copyload, i64 %.sroa.41072.0.copyload
  %i.abz = getelementptr i8, ptr %i.aby, i64 1
  store i64 %.sink.i.i.i833, ptr %i.aq, align 8
  %.sroa.41035.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.sroa.410.0.i.i832, ptr %.sroa.41035.0..sroa_idx, align 8
  %.sroa.51036.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %.sroa.511.0.i.i831, ptr %.sroa.51036.0..sroa_idx, align 8
  %.sroa.61037.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %.sroa.01071.0.copyload, ptr %.sroa.61037.0..sroa_idx, align 8
  %.sroa.71038.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.abw, ptr %.sroa.71038.0..sroa_idx, align 8
  %.sroa.81039.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store ptr %i.abz, ptr %.sroa.81039.0..sroa_idx, align 8
  %.sroa.91040.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store <16 x i1> %i.abx, ptr %.sroa.91040.0..sroa_idx, align 8
  %.sroa.111042.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store i64 %.sroa.51074.0.copyload, ptr %.sroa.111042.0..sroa_idx, align 8
  invoke fastcc void @_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMaplNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTlB16_EE9from_iterINtNtNtB2k_8adapters3map3MapINtB7_8IntoItermNtNtNtNtNtB1c_6format2pb11transaction13update_config19FieldMetadataUpdateENCNvXs2_NtB1a_5protoNtNtB1a_7builder11TransactionINtNtB2m_7convert7TryFromNtB4j_11TransactionE8try_froms4_0EEB1c_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.ar, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.aq)
          to label %.critedge1222 unwind label %bb.jq

.critedge1222:                                    ; preds = %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.aca = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aca, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 32, i1 false)
  %i.acb = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.acb, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false)
  %i.acc = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store i64 -1, ptr %i.acc, align 8
  %i.acd = getelementptr inbounds nuw i8, ptr %i.cl, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.acd, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false)
  store i64 -9223372036854775796, ptr %i.cl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction9UpdateMapEEB15_(ptr noalias noundef align 8 dereferenceable(32) %i.gf)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction9UpdateMapEEB15_(ptr noalias noundef align 8 dereferenceable(32) %i.gh)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction9UpdateMapEEB15_(ptr noalias noundef align 8 dereferenceable(32) %i.gj)
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction9UpdateMapEEB1F_(ptr noalias noundef align 8 dereferenceable(48) %i.ace)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.abg)
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.ge)
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aw, i64 216
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.acf)
  br label %bb.js

bb.js:                                            ; preds = %.critedge1222, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.bi

bb.jt:                                            ; preds = %.thread1160.thread
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 48) #80
          to label %bb.i unwind label %bb.io

bb.ju:                                            ; preds = %.thread1160.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.aac, ptr noundef nonnull align 1 dereferenceable(48) @1580, i64 48, i1 false)
  %i.acg = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24)
          to label %bb.jw unwind label %bb.jv, !noalias !71462 ; 4 uses

bb.jv:                                            ; preds = %bb.ju
  %i.ach = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aac, i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !71463
  br label %.body664

bb.jw:                                            ; preds = %bb.ju
  store i64 48, ptr %i.acg, align 8
  %.sroa.51019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  store ptr %i.aac, ptr %.sroa.51019.0..sroa_idx, align 8
  %.sroa.71020.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acg, i64 16
  store i64 48, ptr %.sroa.71020.0..sroa_idx, align 8
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.aci, align 8
  %.sroa.4260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.acg, ptr %.sroa.4260.0..sroa_idx, align 8
  %.sroa.5261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @26, ptr %.sroa.5261.0..sroa_idx, align 8
  %.sroa.6262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @1581, ptr %.sroa.6262.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction12UpdateConfigEBJ_(ptr noalias noundef align 8 dereferenceable(312) %i.ge)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit739

bb.jx:                                            ; preds = %.body664
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aw, i64 264
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapmNtNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction13update_config19FieldMetadataUpdateEEB1H_(ptr noalias noundef align 8 dereferenceable(48) %i.acj) #81
  br label %.body719

bb.jy:                                            ; preds = %bb.aq, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction9operation20DataReplacementGroupENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !71318
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.il, ptr %i.ack, align 8
  %.sroa.4521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4521.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7929, i64 7, i1 false)
  %.sroa.4521.sroa.4.0..sroa.4521.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8930.0.copyload, ptr %.sroa.4521.sroa.4.0..sroa.4521.0..sroa_idx.sroa_idx, align 8
  %.sroa.4521.sroa.5.0..sroa.4521.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10931.0.copyload, ptr %.sroa.4521.sroa.5.0..sroa.4521.0..sroa_idx.sroa_idx, align 8
  %.sroa.4521.sroa.6.0..sroa.4521.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.11.0.copyload, ptr %.sroa.4521.sroa.6.0..sroa.4521.0..sroa_idx.sroa_idx, align 8
  %.sroa.5522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5522.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12932, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit739

bb.jz:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.acl = load i8, ptr %i.p, align 8, !range !110, !noundef !68 ; 2 uses
  %.not547 = icmp eq i8 %i.acl, -1
  br i1 %.not547, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %.sroa.4527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.sroa.5528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.5531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5531.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5528.0..sroa_idx, i64 24, i1 false)
  %.sroa.4530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4530.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4527.0..sroa_idx, i64 31, i1 false)
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.acl, ptr %i.acm, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit739

bb.kb:                                            ; preds = %bb.jz
  %i.acn = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aco = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aco, ptr noundef nonnull align 8 dereferenceable(24) %i.acn, i64 24, i1 false)
  store i64 -9223372036854775795, ptr %i.cl, align 8
  br label %bb.bi

.loopexit:                                        ; preds = %bb.aw, %bb.av
  %.in = phi ptr [ %i.jz, %bb.av ], [ %i.ke, %bb.aw ]
  %i.acp = ptrtoint ptr %.in to i64
  %i.acq = ptrtoint ptr %i.jz to i64
  %i.acr = sub nuw i64 %i.acp, %i.acq
  %i.acs = udiv exact i64 %i.acr, 56
  %i.act = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.ka, ptr %i.act, align 8
  %.sroa.4938.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.jz, ptr %.sroa.4938.0..sroa_idx, align 8
  %.sroa.5939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 %i.acs, ptr %.sroa.5939.0..sroa_idx, align 8
  store i64 -9223372036854775793, ptr %i.cl, align 8
  br label %bb.bi

bb.kc:                                            ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !71369
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.lj, ptr %i.acu, align 8
  %.sroa.4539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4539.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7945, i64 7, i1 false)
  %.sroa.4539.sroa.4.0..sroa.4539.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8946.0.copyload, ptr %.sroa.4539.sroa.4.0..sroa.4539.0..sroa_idx.sroa_idx, align 8
  %.sroa.4539.sroa.5.0..sroa.4539.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10947.0.copyload, ptr %.sroa.4539.sroa.5.0..sroa.4539.0..sroa_idx.sroa_idx, align 8
  %.sroa.4539.sroa.6.0..sroa.4539.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.11948.0.copyload, ptr %.sroa.4539.sroa.6.0..sroa.4539.0..sroa_idx.sroa_idx, align 8
  %.sroa.5540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5540.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12949, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit739

bb.kd:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !71369
  %i.acv = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.kk, ptr %i.acv, align 8
  %.sroa.21059.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.kj, ptr %.sroa.21059.0..sroa_idx, align 8
end_hunk_3
