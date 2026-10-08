Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.15?download=true
inline.NumInlined: 17
inline.NumDeleted: 2
begin_hunk_0_@_RNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB9_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateANtCsgSMwPvzVUxY_11proc_macro25Identj2_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCseDt6h2fhMKJ_3fnv9FnvHasherEEINtNtNtNtB2i_4iter6traits7collect6ExtendTBR_B1A_EE6extendINtNtNtB3D_8adapters3map3MapIB4s_INtNtNtB2i_3ops5range5RangejENcBR_0ENCNvMNtBV_9generatorNtB5D_9Generator3new0EE0BV_:bb.a

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateANtCsgSMwPvzVUxY_11proc_macro25Identj2_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCseDt6h2fhMKJ_3fnv9FnvHasherEE6insertBR_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionANtCsgSMwPvzVUxY_11proc_macro25Identj2_EECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB9_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateBR_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBR_BR_EE6extendINtNtNtB2x_8adapters3map3MapINtNtB3E_9enumerate9EnumerateINtNtB3E_6filter6FilterIB3A_INtNtNtB2z_3ops5range5RangejENcBR_0ENCNvMs6_BT_NtBT_5Graph13retain_states0EENCB5y_s_0EE0BV_(ptr nofree readonly align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = call i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEB1I_(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.a) ; 2 uses
  %i.e = call { i64, ptr } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateBQ_EE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_BQ_E0NCINvB2a_11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EBU_(ptr align 8 %i.b, i64 %i.d, ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.c) #17 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 2 uses
  %i.h = trunc nuw i64 %i.f to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = load i64, ptr %i.a, align 8
  %i.k = lshr i64 %i.d, 57
  %i.l = trunc nuw nsw i64 %i.k to i8
  %i.m = call ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateBP_EE22insert_tagged_at_indexBT_(ptr align 8 %i.b, i8 %i.l, i64 %i.i, i64 %i.j, i64 %2) #17 ; 0 uses
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateBN_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBR_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 -8
  store i64 %2, ptr %i.n, align 8
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateBN_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBR_.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateBN_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBR_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB9_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBR_uEE6extendINtNtNtB2v_8adapters3map3MapINtNtB3A_10filter_map9FilterMapINtNtNtB2x_5slice4iter4IterINtNtB2x_6option6OptionBR_EENCNvMNtNtBV_9generator4forkNtB5s_9Generator15impl_fork_tables_0ENCINvXs8_NtBb_3setINtB6w_7HashSetBR_B1B_EIB2p_BR_E6extendB3X_E0EE0BV_(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = call i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEB1I_(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.a) ; 2 uses
  %i.e = call { i64, ptr } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB28_11make_hasherBQ_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EBU_(ptr align 8 %i.b, i64 %i.d, ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.c) #17 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBR_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.e, 1
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = load i64, ptr %i.a, align 8
  %i.k = lshr i64 %i.d, 57
  %i.l = trunc nuw nsw i64 %i.k to i8
  %i.m = call ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE22insert_tagged_at_indexBT_(ptr align 8 %i.b, i8 %i.l, i64 %i.i, i64 %i.j) #17 ; 0 uses
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBR_.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBR_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB9_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBR_uEE6extendINtNtNtB2v_8adapters3map3MapINtNtB3A_6cloned6ClonedINtNtNtB2x_5slice4iter4IterBR_EENCINvXs8_NtBb_3setINtB4Z_7HashSetBR_B1B_EIB2p_BR_E6extendB3X_E0EE0BV_(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = call i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEB1I_(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.a) ; 2 uses
  %i.e = call { i64, ptr } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB28_11make_hasherBQ_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EBU_(ptr align 8 %i.b, i64 %i.d, ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.c) #17 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBR_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.e, 1
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = load i64, ptr %i.a, align 8
  %i.k = lshr i64 %i.d, 57
  %i.l = trunc nuw nsw i64 %i.k to i8
  %i.m = call ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE22insert_tagged_at_indexBT_(ptr align 8 %i.b, i8 %i.l, i64 %i.i, i64 %i.j) #17 ; 0 uses
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBR_.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBR_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB9_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBR_uEE6extendINtNtNtB2v_8adapters3map3MapINtNtB3A_6cloned6ClonedINtNtNtNtB1H_11collections4hash3map4KeysBR_BR_EENCINvXs8_NtBb_3setINtB5f_7HashSetBR_B1B_EIB2p_BR_E6extendB3X_E0EE0BV_(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = call i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEB1I_(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.a) ; 2 uses
  %i.e = call { i64, ptr } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB28_11make_hasherBQ_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EBU_(ptr align 8 %i.b, i64 %i.d, ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.c) #17 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBR_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.e, 1
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = load i64, ptr %i.a, align 8
  %i.k = lshr i64 %i.d, 57
  %i.l = trunc nuw nsw i64 %i.k to i8
  %i.m = call ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE22insert_tagged_at_indexBT_(ptr align 8 %i.b, i8 %i.l, i64 %i.i, i64 %i.j) #17 ; 0 uses
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBR_.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBR_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB9_7HashMapNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBR_B1Q_EE6extendINtNtNtB3t_8adapters3map3MapINtNtB4B_9enumerate9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterBR_EENCNvMs6_B1S_NtB1S_5Graph3news1_0EE0B1U_(ptr nofree readonly align 8 captures(none) %0, i32 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = call i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.c, ptr nonnull align 4 %i.a) ; 2 uses
  %i.e = call { i64, ptr } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1P_E0NCINvB36_11make_hasherBQ_B1P_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EB1T_(ptr align 8 %i.b, i64 %i.d, ptr nonnull align 4 %i.a, ptr nonnull align 8 %i.c) #17 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 2 uses
  %i.h = trunc nuw i64 %i.f to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = load i32, ptr %i.a, align 4
  %i.k = lshr i64 %i.d, 57
  %i.l = trunc nuw nsw i64 %i.k to i8
  %i.m = call ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEE22insert_tagged_at_indexB1S_(ptr align 8 %i.b, i8 %i.l, i64 %i.i, i32 %i.j, i64 %2) #17 ; 0 uses
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertB1Q_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 -8
  store i64 %2, ptr %i.n, align 8
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertB1Q_.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertB1Q_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IterNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateBN_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvXsJ_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2K_4KeysBN_BN_EB1A_4folduNCINvNtNtB1G_8adapters3map8map_foldRBN_BN_uNvYBN_NtNtB1I_5clone5Clone5cloneNCIB3Z_BN_TBN_uEuNCINvXs8_NtBa_3setINtB5z_7HashSetBN_NtNtNtB2Q_4hash6random11RandomStateEINtNtB1E_7collect6ExtendBN_E6extendINtNtB43_6cloned6ClonedB3t_EE0NCINvNvB1A_8for_each4callB5j_NCINvXs1i_B8_INtB8_7HashMapBN_uB60_EIB6B_B5j_E6extendINtB41_3MapB79_B5q_EE0E0E0E0E0E0BR_(ptr nofree readonly align 8 captures(none) %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %i.b = getelementptr inbounds i8, ptr %1, i64 -8
  %i.c = load ptr, ptr %0, align 8
  tail call void @_RNCINvXsJ_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB8_4KeysNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateB12_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRB12_B12_uNvYB12_NtNtB1Y_5clone5Clone5cloneNCIB2U_B12_TB12_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB4z_7HashSetB12_NtNtNtBe_4hash6random11RandomStateEINtNtB1U_7collect6ExtendB12_E6extendINtNtB2Y_6cloned6ClonedBR_EE0NCINvNvB1Q_8for_each4callB4i_NCINvXs1i_NtB4B_3mapINtB7B_7HashMapB12_uB5m_EIB5W_B4i_E6extendINtB2W_3MapB6v_B4q_EE0E0E0E0E0B16_(ptr align 8 %i.c, ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.b) #17
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNCNvNtNtCs2SM5xCHwwDm_13logos_codegen5graph8dfa_util12iter_matches0B7_(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.d = load i64, ptr %i.c, align 16
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %_RNvXsa_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtB7_9automaton9Automaton13match_patternCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.g, ptr %i.a, align 4
  %i.i = tail call align 4 ptr @_RNvMs8_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE7specialB9_(ptr nonnull align 16 %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = tail call i64 @_RNvMs1r_NtNtCsaKDqXqZWSq0_14regex_automata4util10primitivesNtB6_7StateID8as_usizeCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 4 %i.j) #17
  %i.l = call i64 @_RNvMs1r_NtNtCsaKDqXqZWSq0_14regex_automata4util10primitivesNtB6_7StateID8as_usizeCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 4 %i.a) #17
  %i.m = sub i64 %i.l, %i.k
  %i.n = call i32 @_RNvMs1r_NtNtCsaKDqXqZWSq0_14regex_automata4util10primitivesNtB6_7StateID13new_uncheckedCs2SM5xCHwwDm_13logos_codegen(i64 %i.m) #17
  %i.o = call i64 @_RNvMs8_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE8to_indexB9_(ptr nonnull align 16 %i.b, i32 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = call { ptr, i64 } @_RNvXsu_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmEINtNtCskKLDkoKarTP_4core7convert5AsRefSmE6as_refCsaKDqXqZWSq0_14regex_automata(ptr nonnull align 8 %i.h) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  %i.s = call { ptr, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice3raw14from_raw_partsNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives9PatternIDEBV_(ptr align 4 %i.q, i64 %i.r, ptr nonnull align 8 @43) #17 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 1        ; 2 uses
  %i.u = shl i64 %i.o, 1                          ; 5 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.w = extractvalue { ptr, i64 } %i.s, 0
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  %i.y = call i64 @_RNvMs10_NtNtCsaKDqXqZWSq0_14regex_automata4util10primitivesNtB6_9PatternID8as_usizeCs2SM5xCHwwDm_13logos_codegen(ptr align 4 %i.x) #17 ; 4 uses
  %i.z = call { ptr, i64 } @_RNvXsu_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmEINtNtCskKLDkoKarTP_4core7convert5AsRefSmE6as_refCsaKDqXqZWSq0_14regex_automata(ptr nonnull align 8 %i.h) ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  %i.ab = extractvalue { ptr, i64 } %i.z, 1
  %i.ac = call { ptr, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice3raw14from_raw_partsNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives9PatternIDEBV_(ptr align 4 %i.aa, i64 %i.ab, ptr nonnull align 8 @43) #17 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 1      ; 2 uses
  %i.ae = or disjoint i64 %i.u, 1                 ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  br i1 %i.af, label %_RNvMsm_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE16pattern_id_sliceCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.ae, i64 %i.ad, ptr nonnull align 8 @39) #19
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.u, i64 %i.t, ptr nonnull align 8 @40) #19
  unreachable

_RNvMsm_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE16pattern_id_sliceCs2SM5xCHwwDm_13logos_codegen.exit.i: ; preds = %bb.c
  %i.ag = extractvalue { ptr, i64 } %i.ac, 0
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.u
  %2 = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ai = call i64 @_RNvMs10_NtNtCsaKDqXqZWSq0_14regex_automata4util10primitivesNtB6_9PatternID8as_usizeCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 4 %2) #17 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.ak = call { ptr, i64 } @_RNvXsu_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmEINtNtCskKLDkoKarTP_4core7convert5AsRefSmE6as_refCsaKDqXqZWSq0_14regex_automata(ptr nonnull align 8 %i.aj) ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ak, 0
  %i.am = extractvalue { ptr, i64 } %i.ak, 1
  %i.an = call { ptr, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice3raw14from_raw_partsNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives9PatternIDEBV_(ptr align 4 %i.al, i64 %i.am, ptr nonnull align 8 @43) #17 ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.an, 1      ; 2 uses
  %i.ap = add i64 %i.ai, %i.y                     ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %i.y
  %.not.i.i = icmp ugt i64 %i.ap, %i.ao
  %or.cond.i.i = select i1 %i.aq, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %bb.f, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives9PatternIDE5indexCs2SM5xCHwwDm_13logos_codegen.exit.i

bb.f:                                             ; preds = %_RNvMsm_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE16pattern_id_sliceCs2SM5xCHwwDm_13logos_codegen.exit.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 %i.y, i64 %i.ap, i64 %i.ao, ptr nonnull align 8 @41) #19
  unreachable

_RNvXs2_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives9PatternIDE5indexCs2SM5xCHwwDm_13logos_codegen.exit.i: ; preds = %_RNvMsm_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE16pattern_id_sliceCs2SM5xCHwwDm_13logos_codegen.exit.i
  %i.ar = icmp ult i64 %1, %i.ai
  br i1 %i.ar, label %_RNvMsm_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE10pattern_idCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives9PatternIDE5indexCs2SM5xCHwwDm_13logos_codegen.exit.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %1, i64 %i.ai, ptr nonnull align 8 @38) #19
  unreachable

_RNvMsm_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE10pattern_idCs2SM5xCHwwDm_13logos_codegen.exit.i: ; preds = %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives9PatternIDE5indexCs2SM5xCHwwDm_13logos_codegen.exit.i
  %i.as = extractvalue { ptr, i64 } %i.an, 0
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.y
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %1
  %i.av = load i32, ptr %i.au, align 4
  br label %_RNvXsa_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtB7_9automaton9Automaton13match_patternCs2SM5xCHwwDm_13logos_codegen.exit

_RNvXsa_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtB7_9automaton9Automaton13match_patternCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.a, %_RNvMsm_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE10pattern_idCs2SM5xCHwwDm_13logos_codegen.exit.i
  %.sroa.0.0.i = phi i32 [ %i.av, %_RNvMsm_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE10pattern_idCs2SM5xCHwwDm_13logos_codegen.exit.i ], [ 0, %bb.a ]
  %i.aw = call i64 @_RNvXs3_NtCs2SM5xCHwwDm_13logos_codegen4leafNtB5_6LeafIdINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives9PatternIDE4from(i32 %.sroa.0.0.i)
  ret i64 %i.aw
}

; Function Attrs: inlinehint nonlazybind uwtable
define i32 @_RNCNvNtNtCs2SM5xCHwwDm_13logos_codegen5graph8dfa_util13iter_children0B7_(ptr nofree readonly align 8 captures(none) %0, i8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.d, ptr %i.a, align 4
  %i.e = tail call ptr @_RNvMs4_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE12byte_classesB9_(ptr align 16 %i.b)
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  %i.i = call i64 @_RNvMs1r_NtNtCsaKDqXqZWSq0_14regex_automata4util10primitivesNtB6_7StateID8as_usizeCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 4 %i.a) #17
  %i.j = zext i8 %i.h to i64
  %i.k = add i64 %i.i, %i.j                       ; 3 uses
  %i.l = call { ptr, i64 } @_RNvMs8_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE5transB9_(ptr align 16 %i.b) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 1        ; 2 uses
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %_RNvXsa_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtB7_9automaton9Automaton10next_stateCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.k, i64 %i.m, ptr nonnull align 8 @48) #19
  unreachable

_RNvXsa_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtB7_9automaton9Automaton10next_stateCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.a
  %i.o = extractvalue { ptr, i64 } %i.l, 0
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.k
  %i.q = load i32, ptr %i.p, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtB11_9ByteClassNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryB13_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = call i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEB1I_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a) ; 2 uses
  %i.d = call ptr @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBS_9ByteClassEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1z_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0EBU_(ptr align 8 %1, i64 %i.c, ptr nonnull align 8 %i.a) #17 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBS_9ByteClassEE7reserveNCINvNtB8_3map11make_hasherBQ_B1z_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EBU_(ptr align 8 %1, i64 1, ptr nonnull align 8 %i.b)
  %i.e = load i64, ptr %i.a, align 8
  %i.f = inttoptr i64 %i.c to ptr
  %i.g = inttoptr i64 %i.e to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink4 = phi ptr [ %1, %bb.b ], [ null, %bb.a ]
  %.sink3 = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %.sink = phi ptr [ %i.g, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink4, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapRNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataNtB12_5StateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryB14_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = call i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRRNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataEB1J_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a) ; 2 uses
  %i.d = call ptr @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTRNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataNtBT_5StateEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1E_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0EBV_(ptr align 8 %1, i64 %i.c, ptr nonnull align 8 %i.a) #17 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTRNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataNtBT_5StateEE7reserveNCINvNtB8_3map11make_hasherBQ_B1E_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EBV_(ptr align 8 %1, i64 1, ptr nonnull align 8 %i.b)
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = inttoptr i64 %i.c to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink4 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sink3 = phi ptr [ %1, %bb.b ], [ %i.d, %bb.a ]
  %.sink = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink4, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.h, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2SM5xCHwwDm_13logos_codegen6parser10definitionNtB2_7Literal5token(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCshx33xqnyVJN_3syn3litNtB4_10LitByteStr5token(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMNtCshx33xqnyVJN_3syn3litNtB2_6LitStr5token(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2SM5xCHwwDm_13logos_codegen6parser10definitionNtB2_7Literal6escape(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, i1 zeroext %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 2 uses
  %i.e = alloca [4 x i8], align 4                 ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [1 x i8], align 1                 ; 2 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [32 x i8], align 8                ; 2 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %.fr = freeze i1 %2                             ; 2 uses
  %i.n = load i64, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = trunc nuw i64 %i.n to i1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3newCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.l) #17
  invoke void @_RNvMs_NtCshx33xqnyVJN_3syn3litNtB4_10LitByteStr5value(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr nonnull align 8 %i.o)
          to label %bb.n unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  br i1 %.fr, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMNtCshx33xqnyVJN_3syn3litNtB2_6LitStr5value(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.o)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_RNvMNtCshx33xqnyVJN_3syn3litNtB2_6LitStr5value(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 8 %i.o)
  %i.q = invoke { ptr, i64 } @_RNvXsx_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.m)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %bb.ab, %bb.i, %bb.d
  ret void

bb.g:                                             ; preds = %bb.h, %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.m) #20
          to label %bb.k unwind label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.s = extractvalue { ptr, i64 } %i.q, 0
  %i.t = extractvalue { ptr, i64 } %i.q, 1
end_hunk_0
