Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_linalg-a41068480ef1e611.lance_linalg.7155760e2fbf712c-cgu.0?download=true
inline.NumInlined: 5334
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 92
loop-unroll.NumUnrolled: 148
begin_hunk_0_@_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming23cluster_pairwise_result:bb.a
  %i.s = load i8, ptr %i.r, align 8, !range !22, !noalias !6830, !noundef !18
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9JgWGBoX3PY_12lance_linalg.exit_crit_edge.i.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i, !prof !16

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9JgWGBoX3PY_12lance_linalg.exit_crit_edge.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !6831
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !6831
  br label %bb.e

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i: ; preds = %bb.a
  %i.u = tail call { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys(), !noalias !6832 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1        ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.w, ptr %i.x, align 8, !noalias !6832
  store i8 1, ptr %i.r, align 8, !noalias !6832
  br label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.bp, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, %bb.bk, %bb.s, %bb.g, %bb.d
  %.pn23.i = phi { ptr, i32 } [ %i.ay, %bb.g ], [ %.pn.pn.i, %bb.s ], [ %i.at, %bb.d ], [ %.pn21.ph.i, %bb.bk ], [ %.pn21.ph.i, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ], [ %.pn21.ph.i, %bb.bp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6833)
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !6833, !noalias !6828 ; 2 uses
  %.val1.i = load i64, ptr %.sroa.5.0..sroa_idx18.i.i, align 8, !alias.scope !6833, !noalias !6828, !noundef !18 ; 3 uses
  %i.y = icmp eq i64 %.val1.i, 0
  br i1 %i.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyyEECs9JgWGBoX3PY_12lance_linalg.exit.i, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit
  %i.z = shl i64 %.val1.i, 4                      ; 2 uses
  %i.aa = add i64 %i.z, 16                        ; 2 uses
  %i.ab = add i64 %.val1.i, 17
  %i.ac = add i64 %i.ab, %i.aa                    ; 4 uses
  %i.ad = icmp uge i64 %i.ac, %i.aa
  %i.ae = icmp ult i64 %i.ac, 9223372036854775793
  call void @llvm.assume(i1 %i.ad), !noalias !6828
  call void @llvm.assume(i1 %i.ae), !noalias !6828
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ], !noalias !6828
  %i.af = icmp eq i64 %i.ac, 0
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyyEECs9JgWGBoX3PY_12lance_linalg.exit.i, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.ag = sub nuw nsw i64 -16, %i.z
  %i.ah = getelementptr inbounds i8, ptr %.val.i, i64 %i.ag
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 16) #76, !noalias !6834
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyyEECs9JgWGBoX3PY_12lance_linalg.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyyEECs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %bb.b, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit
  %.val2.i = load ptr, ptr %i.aw, align 8, !alias.scope !6833, !noalias !6828 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.val3.i = load i64, ptr %i.ai, align 8, !alias.scope !6833, !noalias !6828, !noundef !18 ; 3 uses
  %i.aj = icmp eq i64 %.val3.i, 0
  br i1 %i.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming9UnionFindEBH_.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i6.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i6.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyyEECs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.ak = shl i64 %.val3.i, 4                     ; 2 uses
  %i.al = add i64 %i.ak, 16                       ; 2 uses
  %i.am = add i64 %.val3.i, 17
  %i.an = add i64 %i.am, %i.al                    ; 4 uses
  %i.ao = icmp uge i64 %i.an, %i.al
  %i.ap = icmp ult i64 %i.an, 9223372036854775793
  call void @llvm.assume(i1 %i.ao), !noalias !6828
  call void @llvm.assume(i1 %i.ap), !noalias !6828
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ], !noalias !6828
  %i.aq = icmp eq i64 %i.an, 0
  br i1 %i.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming9UnionFindEBH_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i6.i
  %i.ar = sub nuw nsw i64 -16, %i.ak
  %i.as = getelementptr inbounds i8, ptr %.val2.i, i64 %i.ar
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 16) #76, !noalias !6834
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming9UnionFindEBH_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming9UnionFindEBH_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyyEECs9JgWGBoX3PY_12lance_linalg.exit.i, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i6.i, %bb.c
  resume { ptr, i32 } %.pn23.i

bb.d:                                             ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit

bb.e:                                             ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9JgWGBoX3PY_12lance_linalg.exit_crit_edge.i.i.i.i
  %.pre-phi271.i = phi i64 [ %i.v, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i ], [ %.pre.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9JgWGBoX3PY_12lance_linalg.exit_crit_edge.i.i.i.i ] ; 3 uses
  %.pre-phi.i = phi i64 [ %i.w, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i ], [ %.pre1.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9JgWGBoX3PY_12lance_linalg.exit_crit_edge.i.i.i.i ] ; 2 uses
  %i.au = add i64 %.pre-phi271.i, 1
  %i.av = add i64 %.pre-phi271.i, 2
  store i64 %i.av, ptr %i.q, align 8, !noalias !6835
  store ptr @12, ptr %i.h, align 8, !alias.scope !6829, !noalias !6828
  %.sroa.5.0..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx18.i.i, align 8, !alias.scope !6829, !noalias !6828
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @13, i64 16), i64 16, i1 false), !noalias !6828
  %.sroa.620.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.pre-phi271.i, ptr %.sroa.620.0..sroa_idx.i.i, align 8, !alias.scope !6829, !noalias !6828
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %.pre-phi.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !6829, !noalias !6828
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) @13, i64 32, i1 false), !noalias !6828
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i64 %i.au, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !6829, !noalias !6828
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store i64 %.pre-phi.i, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !alias.scope !6829, !noalias !6828
  %exitcond.not.i210 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %exitcond.not.i210, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IteryEB1c_ENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming23cluster_pairwise_result0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.ax = add i64 %.sroa.583.0.i211, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IteryEB1c_ENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming23cluster_pairwise_result0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.i, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.583.0.i211 = phi i64 [ %i.ax, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.583.0.i211
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.583.0.i211
  %.val.i.i = load i64, ptr %i.az, align 8, !noalias !6836, !noundef !18
  %.val3.i.i = load i64, ptr %i.ba, align 8, !noalias !6836, !noundef !18
  %i.bb = invoke noundef zeroext i1 @_RNvMs1_NtNtCs9JgWGBoX3PY_12lance_linalg8distance7hammingNtB5_9UnionFind5union(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.h, i64 noundef %.val.i.i, i64 noundef %.val3.i.i)
          to label %bb.f unwind label %bb.g, !noalias !6828 ; 0 uses

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IteryEB1c_ENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming23cluster_pairwise_result0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6828
  %i.bc = load i8, ptr %i.r, align 8, !range !22, !noalias !6837, !noundef !18
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9JgWGBoX3PY_12lance_linalg.exit_crit_edge.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i, !prof !16

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9JgWGBoX3PY_12lance_linalg.exit_crit_edge.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IteryEB1c_ENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming23cluster_pairwise_result0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.i
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !noalias !6838
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !6838
  br label %bb.i

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IteryEB1c_ENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming23cluster_pairwise_result0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.i
  %i.be = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc.i unwind label %bb.d, !noalias !6828 ; 2 uses

.noexc.i:                                         ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i
  %i.bf = extractvalue { i64, i64 } %i.be, 0
  %i.bg = extractvalue { i64, i64 } %i.be, 1      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !noalias !6839
  store i8 1, ptr %i.r, align 8, !noalias !6839
  br label %bb.i

bb.h:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.i:                                             ; preds = %.noexc.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9JgWGBoX3PY_12lance_linalg.exit_crit_edge.i.i.i
  %.pre-phi275.i = phi i64 [ %.pre1.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9JgWGBoX3PY_12lance_linalg.exit_crit_edge.i.i.i ], [ %i.bg, %.noexc.i ]
  %i.bj = phi i64 [ %.pre.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9JgWGBoX3PY_12lance_linalg.exit_crit_edge.i.i.i ], [ %i.bf, %.noexc.i ] ; 2 uses
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.q, align 8, !noalias !6838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @13, i64 32, i1 false), !noalias !6828
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  store i64 %i.bj, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !6828
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store i64 %.pre-phi275.i, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !6828
  call void @llvm.experimental.noalias.scope.decl(metadata !6840)
  call void @llvm.experimental.noalias.scope.decl(metadata !6841)
  %i.bl = load ptr, ptr %i.h, align 8, !alias.scope !6842, !noalias !6843, !nonnull !18, !noundef !18 ; 4 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.bl, align 16, !noalias !6844
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !6842, !noalias !6843, !noundef !18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6845
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %._crit_edge.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i16 %i.bq, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %i.bs = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i ], [ %i.br, %bb.j ] ; 2 uses
  %i.bt = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i ], [ %i.bl, %bb.j ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.bs, align 16, !noalias !6846
  %i.bu = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i, splat (i8 -1)
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -256 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.bu to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i, %bb.j
  %.sroa.696.0.i = phi ptr [ %i.br, %bb.j ], [ %i.bw, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.010.0.copyload.i.i = phi ptr [ %i.bl, %bb.j ], [ %i.bv, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.bq, %bb.j ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.bx = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = and i16 %i.bx, %.lcssa.i.i.i.i.i.i
  %i.cb = sub nsw i64 0, %i.bz
  %i.cc = getelementptr inbounds [16 x i8], ptr %.sroa.010.0.copyload.i.i, i64 %i.cb
  %i.cd = add i64 %i.bn, -1                       ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -16
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !6847, !noundef !18
  %.sroa.0.0.i9.i.i = call noundef i64 @llvm.umax.i64(i64 %i.bn, i64 4) ; 3 uses
  %i.cg = shl i64 %.sroa.0.0.i9.i.i, 3            ; 3 uses
  %i.ch = icmp ugt i64 %i.bn, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.cg, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.ch, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.l, label %bb.k, !prof !27

bb.k:                                             ; preds = %._crit_edge19.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !6848
  %i.ci = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.cg, i64 noundef range(i64 1, 9) 8) #76, !noalias !6848 ; 5 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.l, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i

bb.l:                                             ; preds = %bb.k, %._crit_edge19.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.k ], [ 0, %._crit_edge19.i.i.i.i.i.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.cg) #74
          to label %.noexc37.i unwind label %bb.h, !noalias !6828

.noexc37.i:                                       ; preds = %bb.l
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i: ; preds = %bb.k
  store i64 %i.cf, ptr %i.ci, align 8, !noalias !6845
  store i64 %.sroa.0.0.i9.i.i, ptr %i.d, align 8, !noalias !6845
  %.sroa.4.0..sroa_idx.i34.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr %i.ci, ptr %.sroa.4.0..sroa_idx.i34.i, align 8, !noalias !6845
  %.sroa.6.0..sroa_idx.i35.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i35.i, align 8, !noalias !6845
  call void @llvm.experimental.noalias.scope.decl(metadata !6849)
  call void @llvm.experimental.noalias.scope.decl(metadata !6850)
  %i.ck = icmp eq i64 %i.cd, 0
  br i1 %i.ck, label %.lr.ph.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i, %.noexc.i.i
  %i.cl = phi ptr [ %i.df, %.noexc.i.i ], [ %i.ci, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i ]
  %i.cm = phi i64 [ %i.dh, %.noexc.i.i ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i ] ; 5 uses
  %.lcssa19.i.i.i.i = phi ptr [ %.lcssa18.i.i.i.i, %.noexc.i.i ], [ %.sroa.696.0.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i ] ; 2 uses
  %i.cn = phi i16 [ %i.cw, %.noexc.i.i ], [ %i.ca, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i ] ; 2 uses
  %.val1015.i.i.i.i = phi i64 [ %i.cz, %.noexc.i.i ], [ %i.cd, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i ] ; 2 uses
  %.lcssa91314.i.i.i.i = phi ptr [ %.lcssa912.i.i.i.i, %.noexc.i.i ], [ %.sroa.010.0.copyload.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i = icmp eq i16 %i.cn, 0
  br i1 %.not12.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.co = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa19.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.cp = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa91314.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.co, align 16, !noalias !6851
  %i.cq = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 -256 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.cq to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.lcssa18.i.i.i.i = phi ptr [ %.lcssa19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa912.i.i.i.i = phi ptr [ %.lcssa91314.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.cn, %.lr.ph.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ct = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.cu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.cv = zext nneg i16 %i.cu to i64
  %i.cw = and i16 %i.ct, %.lcssa.i.i.i.i.i.i.i.i
  %i.cx = sub nsw i64 0, %i.cv
  %i.cy = getelementptr inbounds [16 x i8], ptr %.lcssa912.i.i.i.i, i64 %i.cx
  %i.cz = add i64 %.val1015.i.i.i.i, -1           ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -16
  %i.db = load i64, ptr %i.da, align 8, !noalias !6852, !noundef !18
  %i.dc = icmp samesign ult i64 %i.cm, 1152921504606846976
  call void @llvm.assume(i1 %i.dc)
  %i.dd = load i64, ptr %i.d, align 8, !range !29, !alias.scope !6853, !noalias !6854, !noundef !18
  %i.de = icmp eq i64 %i.cm, %i.dd
  br i1 %i.de, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i, label %.noexc.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i: ; preds = %._crit_edge19.i.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.cm, i64 noundef %.val1015.i.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i..noexc_crit_edge.i.i unwind label %bb.m, !noalias !6845

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i..noexc_crit_edge.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i34.i, align 8, !alias.scope !6853, !noalias !6854
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i..noexc_crit_edge.i.i, %._crit_edge19.i.i.i.i.i.i.i.i
  %i.df = phi ptr [ %.pre.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i..noexc_crit_edge.i.i ], [ %i.cl, %._crit_edge19.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.cm
  store i64 %i.db, ptr %i.dg, align 8, !noalias !6855
  %i.dh = add nuw nsw i64 %i.cm, 1                ; 2 uses
  store i64 %i.dh, ptr %.sroa.6.0..sroa_idx.i35.i, align 8, !alias.scope !6853, !noalias !6854
  %i.di = icmp eq i64 %i.cz, 0
  br i1 %i.di, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyyEEE11spec_extendCs9JgWGBoX3PY_12lance_linalg.exit.i.loopexit.i, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i36.i = load i64, ptr %i.d, align 8, !noalias !6845 ; 2 uses
  %i.dk = icmp eq i64 %.val.i36.i, 0
  br i1 %i.dk, label %bb.bk, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val7.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i34.i, align 8, !noalias !6845, !nonnull !18, !noundef !18
  %i.dl = shl nuw i64 %.val.i36.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !6845
  br label %bb.bk

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyyEEE11spec_extendCs9JgWGBoX3PY_12lance_linalg.exit.i.loopexit.i: ; preds = %.noexc.i.i
  %.sroa.092.0.copyload.pre.i = load i64, ptr %i.d, align 8, !noalias !6856
  %.sroa.593.0.copyload.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i34.i, align 8, !noalias !6856
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6845
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEECs9JgWGBoX3PY_12lance_linalg.exit38.i

.lr.ph.i:                                         ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyyEEE11spec_extendCs9JgWGBoX3PY_12lance_linalg.exit.i.loopexit.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i
  %.sroa.593.0.ph.i = phi ptr [ %i.ci, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i ], [ %.sroa.593.0.copyload.pre.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyyEEE11spec_extendCs9JgWGBoX3PY_12lance_linalg.exit.i.loopexit.i ] ; 5 uses
  %.sroa.092.0.ph.i = phi i64 [ %.sroa.0.0.i9.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i ], [ %.sroa.092.0.copyload.pre.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyyEEE11spec_extendCs9JgWGBoX3PY_12lance_linalg.exit.i.loopexit.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6845
  %i.dm = icmp samesign ult i64 %i.bn, 1152921504606846976
  call void @llvm.assume(i1 %i.dm)
  %.idx243304.i = shl nuw nsw i64 %i.bn, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.593.0.ph.i, i64 %.idx243304.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.593.0.ph.i) ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.bj, %bb.be, %bb.q
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = icmp eq i64 %.sroa.092.0.ph.i, 0
  br i1 %i.dr, label %bb.bk, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = shl nuw i64 %.sroa.092.0.ph.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.593.0.ph.i, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !6857
  br label %bb.bk

bb.q:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9JgWGBoX3PY_12lance_linalg.exit.i, %.lr.ph.i
  %.sroa.5105.0238.i = phi ptr [ %.sroa.593.0.ph.i, %.lr.ph.i ], [ %i.dt, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9JgWGBoX3PY_12lance_linalg.exit.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.5105.0238.i, i64 8 ; 2 uses
  %i.du = load i64, ptr %.sroa.5105.0238.i, align 8, !noalias !6858, !noundef !18 ; 2 uses
  %i.dv = invoke noundef i64 @_RNvMs1_NtNtCs9JgWGBoX3PY_12lance_linalg8distance7hammingNtB5_9UnionFind4find(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.h, i64 noundef %i.du)
          to label %bb.az unwind label %bb.o, !noalias !6828 ; 3 uses

._crit_edge.i:                                    ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.dw = icmp eq i64 %.sroa.092.0.ph.i, 0
  br i1 %i.dw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEECs9JgWGBoX3PY_12lance_linalg.exit38.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.dx = shl nuw i64 %.sroa.092.0.ph.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.593.0.ph.i, i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !6859
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEECs9JgWGBoX3PY_12lance_linalg.exit38.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEECs9JgWGBoX3PY_12lance_linalg.exit38.i: ; preds = %bb.r, %._crit_edge.i, %._crit_edge.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6828
  store i64 0, ptr %i.f, align 8, !noalias !6828
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dy, align 8, !noalias !6828
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.dz, align 8, !noalias !6828
  %.sroa.0163.0.copyload.i = load ptr, ptr %i.g, align 8, !noalias !6828, !nonnull !18, !noundef !18 ; 5 uses
  %.sroa.4164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4164.0.copyload.i = load i64, ptr %.sroa.4164.0..sroa_idx.i, align 8, !noalias !6828 ; 5 uses
  %.sroa.5166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.5166.0.copyload.i = load i64, ptr %.sroa.5166.0..sroa_idx.i, align 8, !noalias !6828 ; 2 uses
  %.val3.i.i.i39.i = load <16 x i8>, ptr %.sroa.0163.0.copyload.i, align 16, !noalias !6860
  %i.ea = icmp eq i64 %.sroa.4164.0.copyload.i, 0
  br i1 %i.ea, label %bb.u, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEECs9JgWGBoX3PY_12lance_linalg.exit38.i
  %i.eb = icmp slt i64 %.sroa.4164.0.copyload.i, 576460752303423487
  call void @llvm.assume(i1 %i.eb)
  %i.ec = shl i64 %.sroa.4164.0.copyload.i, 5     ; 2 uses
  %i.ed = add i64 %i.ec, 32                       ; 2 uses
  %i.ee = add nsw i64 %.sroa.4164.0.copyload.i, 17
  %i.ef = add i64 %i.ee, %i.ed                    ; 3 uses
  %i.eg = icmp uge i64 %i.ef, %i.ed
  call void @llvm.assume(i1 %i.eg)
  %i.eh = icmp ult i64 %i.ef, 9223372036854775793
  call void @llvm.assume(i1 %i.eh)
  %i.ei = sub nuw nsw i64 -32, %i.ec
  %i.ej = getelementptr inbounds i8, ptr %.sroa.0163.0.copyload.i, i64 %i.ei
  br label %bb.u

bb.s:                                             ; preds = %.body60.i, %bb.t
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body60.i ], [ %i.ek, %bb.t ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.f) #77, !noalias !6828
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit

bb.t:                                             ; preds = %bb.ac
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEECs9JgWGBoX3PY_12lance_linalg.exit38.i
  %.sroa.511.0.i.i.i = phi ptr [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEECs9JgWGBoX3PY_12lance_linalg.exit38.i ], [ %i.ej, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %.sroa.410.0.i.i.i = phi i64 [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEECs9JgWGBoX3PY_12lance_linalg.exit38.i ], [ %i.ef, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEECs9JgWGBoX3PY_12lance_linalg.exit38.i ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0163.0.copyload.i, i64 16
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f32_avx_fma:bb.a

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef range(i64 0, 2305843009213693945) %i.a, i64 noundef range(i64 0, 2305843009213693952) %3, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #74, !noalias !7729
  unreachable

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSfE5indexCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %._crit_edge
  %.idx43 = shl nuw nsw i64 %i.a, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %.idx43 ; 7 uses
  %.idx = and i64 %1, 7
  %i.af = sub nuw nsw i64 %3, %i.a
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.af, i64 %.idx) ; 7 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSfE5indexCs9JgWGBoX3PY_12lance_linalg.exit
  %.val15.i.i.i.i.i = load float, ptr %i.ac, align 4, !noalias !7730, !noundef !18
  %.val16.i.i.i.i.i = load float, ptr %i.ae, align 4, !noalias !7730, !noundef !18
  %i.ag = fsub float %.val15.i.i.i.i.i, %.val16.i.i.i.i.i ; 2 uses
  %i.ah = fmul float %i.ag, %i.ag                 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.val15.i.i.i.i.i.1 = load float, ptr %i.ai, align 4, !noalias !7730, !noundef !18
  %.val16.i.i.i.i.i.1 = load float, ptr %i.aj, align 4, !noalias !7730, !noundef !18
  %i.ak = fsub float %.val15.i.i.i.i.i.1, %.val16.i.i.i.i.i.1 ; 2 uses
  %i.al = fmul float %i.ak, %i.ak
  %i.am = fadd float %i.ah, %i.al                 ; 2 uses
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %.sroa.0.0.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.1, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val15.i.i.i.i.i.2 = load float, ptr %i.an, align 4, !noalias !7730, !noundef !18
  %.val16.i.i.i.i.i.2 = load float, ptr %i.ao, align 4, !noalias !7730, !noundef !18
  %i.ap = fsub float %.val15.i.i.i.i.i.2, %.val16.i.i.i.i.i.2 ; 2 uses
  %i.aq = fmul float %i.ap, %i.ap
  %i.ar = fadd float %i.am, %i.aq                 ; 2 uses
  %exitcond.not.i.i.i.i.i.2 = icmp eq i64 %.sroa.0.0.i.i.i, 3
  br i1 %exitcond.not.i.i.i.i.i.2, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %.val15.i.i.i.i.i.3 = load float, ptr %i.as, align 4, !noalias !7730, !noundef !18
  %.val16.i.i.i.i.i.3 = load float, ptr %i.at, align 4, !noalias !7730, !noundef !18
  %i.au = fsub float %.val15.i.i.i.i.i.3, %.val16.i.i.i.i.i.3 ; 2 uses
  %i.av = fmul float %i.au, %i.au
  %i.aw = fadd float %i.ar, %i.av                 ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %.sroa.0.0.i.i.i, 4
  br i1 %exitcond.not.i.i.i.i.i.3, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit, label %.lr.ph.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.4:                               ; preds = %.lr.ph.i.i.i.i.i.3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.val15.i.i.i.i.i.4 = load float, ptr %i.ax, align 4, !noalias !7730, !noundef !18
  %.val16.i.i.i.i.i.4 = load float, ptr %i.ay, align 4, !noalias !7730, !noundef !18
  %i.az = fsub float %.val15.i.i.i.i.i.4, %.val16.i.i.i.i.i.4 ; 2 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fadd float %i.aw, %i.ba                 ; 2 uses
  %exitcond.not.i.i.i.i.i.4 = icmp eq i64 %.sroa.0.0.i.i.i, 5
  br i1 %exitcond.not.i.i.i.i.i.4, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit, label %.lr.ph.i.i.i.i.i.5

.lr.ph.i.i.i.i.i.5:                               ; preds = %.lr.ph.i.i.i.i.i.4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %.val15.i.i.i.i.i.5 = load float, ptr %i.bc, align 4, !noalias !7730, !noundef !18
  %.val16.i.i.i.i.i.5 = load float, ptr %i.bd, align 4, !noalias !7730, !noundef !18
  %i.be = fsub float %.val15.i.i.i.i.i.5, %.val16.i.i.i.i.i.5 ; 2 uses
  %i.bf = fmul float %i.be, %i.be
  %i.bg = fadd float %i.bb, %i.bf                 ; 2 uses
  %exitcond.not.i.i.i.i.i.5 = icmp eq i64 %.sroa.0.0.i.i.i, 6
  br i1 %exitcond.not.i.i.i.i.i.5, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit, label %.lr.ph.i.i.i.i.i.6

.lr.ph.i.i.i.i.i.6:                               ; preds = %.lr.ph.i.i.i.i.i.5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.val15.i.i.i.i.i.6 = load float, ptr %i.bh, align 4, !noalias !7730, !noundef !18
  %.val16.i.i.i.i.i.6 = load float, ptr %i.bi, align 4, !noalias !7730, !noundef !18
  %i.bj = fsub float %.val15.i.i.i.i.i.6, %.val16.i.i.i.i.i.6 ; 2 uses
  %i.bk = fmul float %i.bj, %i.bj
  %i.bl = fadd float %i.bg, %i.bk
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.5, %.lr.ph.i.i.i.i.i.6, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSfE5indexCs9JgWGBoX3PY_12lance_linalg.exit
  %.sroa.0.0.lcssa.i.i.i.i.i = phi float [ -0.000000e+00, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSfE5indexCs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.1 ], [ %i.ar, %.lr.ph.i.i.i.i.i.2 ], [ %i.aw, %.lr.ph.i.i.i.i.i.3 ], [ %i.bb, %.lr.ph.i.i.i.i.i.4 ], [ %i.bg, %.lr.ph.i.i.i.i.i.5 ], [ %i.bl, %.lr.ph.i.i.i.i.i.6 ]
  %i.bm = shufflevector <8 x float> %.sroa.0.0.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bn = shufflevector <8 x float> %.sroa.0.0.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bo = fadd <4 x float> %i.bm, %i.bn           ; 2 uses
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bq = fadd <4 x float> %i.bo, %i.bp           ; 2 uses
  %shift = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.bq, %shift
  %i.br = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.bs = fadd float %i.br, %.sroa.0.0.lcssa.i.i.i.i.i
  ret float %i.bs
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f64_avx_fma(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 1152921504606846968          ; 3 uses
  %i.b = lshr i64 %1, 3                           ; 3 uses
  switch i64 %i.b, label %.lr.ph.preheader.new [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.epil.preheader
  ]

.lr.ph.preheader.new:                             ; preds = %bb.a
  %unroll_iter = and i64 %i.b, 144115188075855870
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.0124 = phi <4 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ]
  %.sroa.6.0123 = phi <4 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ]
  %.sroa.025.0122 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.l, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = or disjoint i64 %.sroa.025.0122, 8       ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.025.0122 ; 2 uses
  %.sroa.0.0.copyload.i11 = load <4 x double>, ptr %i.d, align 8, !noalias !7756
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.0.0.copyload.i = load <4 x double>, ptr %i.e, align 8, !noalias !7757
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.025.0122 ; 2 uses
  %.sroa.0.0.copyload.i13 = load <4 x double>, ptr %i.f, align 8, !noalias !7758
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.0.0.copyload.i12 = load <4 x double>, ptr %i.g, align 8, !noalias !7759
  %i.h = fsub <4 x double> %.sroa.0.0.copyload.i11, %.sroa.0.0.copyload.i13 ; 2 uses
  %i.i = fsub <4 x double> %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i12 ; 2 uses
  %i.j = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %i.h, <4 x double> %i.h, <4 x double> %.sroa.0.0124)
  %i.k = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %i.i, <4 x double> %i.i, <4 x double> %.sroa.6.0123)
  %i.l = add nuw nsw i64 %.sroa.025.0122, 16      ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i11.1 = load <4 x double>, ptr %i.m, align 8, !noalias !7756
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.0.0.copyload.i.1 = load <4 x double>, ptr %i.n, align 8, !noalias !7757
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i13.1 = load <4 x double>, ptr %i.o, align 8, !noalias !7758
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.0.0.copyload.i12.1 = load <4 x double>, ptr %i.p, align 8, !noalias !7759
  %i.q = fsub <4 x double> %.sroa.0.0.copyload.i11.1, %.sroa.0.0.copyload.i13.1 ; 2 uses
  %i.r = fsub <4 x double> %.sroa.0.0.copyload.i.1, %.sroa.0.0.copyload.i12.1 ; 2 uses
  %i.s = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %i.q, <4 x double> %i.q, <4 x double> %i.j) ; 3 uses
  %i.t = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %i.r, <4 x double> %i.r, <4 x double> %i.k) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.u = and i64 %1, 8
  %lcmp.mod.not = icmp eq i64 %i.u, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %bb.a, %._crit_edge.loopexit.unr-lcssa
  %.sroa.0.0124.epil.init = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.6.0123.epil.init = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.025.0122.epil.init = phi i64 [ 0, %bb.a ], [ %i.l, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod152 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod152)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.025.0122.epil.init ; 2 uses
  %.sroa.0.0.copyload.i11.epil = load <4 x double>, ptr %i.v, align 8, !noalias !7756
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.0.0.copyload.i.epil = load <4 x double>, ptr %i.w, align 8, !noalias !7757
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.025.0122.epil.init ; 2 uses
  %.sroa.0.0.copyload.i13.epil = load <4 x double>, ptr %i.x, align 8, !noalias !7758
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.0.0.copyload.i12.epil = load <4 x double>, ptr %i.y, align 8, !noalias !7759
  %i.z = fsub <4 x double> %.sroa.0.0.copyload.i11.epil, %.sroa.0.0.copyload.i13.epil ; 2 uses
  %i.aa = fsub <4 x double> %.sroa.0.0.copyload.i.epil, %.sroa.0.0.copyload.i12.epil ; 2 uses
  %i.ab = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %i.z, <4 x double> %i.z, <4 x double> %.sroa.0.0124.epil.init)
  %i.ac = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %i.aa, <4 x double> %i.aa, <4 x double> %.sroa.6.0123.epil.init)
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa149 = phi <4 x double> [ %i.s, %._crit_edge.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.epil.preheader ]
  %.lcssa148 = phi <4 x double> [ %i.t, %._crit_edge.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.epil.preheader ]
  %i.ad = fadd <4 x double> %.lcssa148, %.lcssa149
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %.sroa.6.0.lcssa = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.ad, %._crit_edge.loopexit ] ; 2 uses
  %i.ae = and i64 %1, 1152921504606846972         ; 6 uses
  %.not.i.i7126.not = icmp samesign ugt i64 %i.ae, %i.a
  br i1 %.not.i.i7126.not, label %.lr.ph131.preheader, label %._crit_edge132

.lr.ph131.preheader:                              ; preds = %._crit_edge
  %.sroa.06.0.i.i.i = lshr i64 %1, 2
  %i.af = and i64 %.sroa.06.0.i.i.i, 1            ; 5 uses
  %i.ag = add nsw i64 %i.af, -1
  %lcmp.mod154.not = icmp eq i64 %i.af, 0
  br i1 %lcmp.mod154.not, label %.lr.ph131.prol.loopexit, label %.lr.ph131.prol

.lr.ph131.prol:                                   ; preds = %.lr.ph131.preheader, %.lr.ph131.prol
  %.sroa.033.0129.prol = phi <4 x double> [ %i.am, %.lr.ph131.prol ], [ zeroinitializer, %.lr.ph131.preheader ]
  %.sroa.045.0128.prol = phi i64 [ %i.ah, %.lr.ph131.prol ], [ %i.a, %.lr.ph131.preheader ] ; 3 uses
  %.sroa.546.0127.prol = phi i64 [ %i.ai, %.lr.ph131.prol ], [ %i.af, %.lr.ph131.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph131.prol ], [ 0, %.lr.ph131.preheader ]
  %i.ah = add i64 %.sroa.045.0128.prol, 4         ; 2 uses
  %i.ai = add i64 %.sroa.546.0127.prol, -1        ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.045.0128.prol
  %.sroa.0.0.copyload.i14.prol = load <4 x double>, ptr %i.aj, align 8, !noalias !7760
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.045.0128.prol
  %.sroa.0.0.copyload.i15.prol = load <4 x double>, ptr %i.ak, align 8, !noalias !7761
  %i.al = fsub <4 x double> %.sroa.0.0.copyload.i14.prol, %.sroa.0.0.copyload.i15.prol ; 2 uses
  %i.am = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %i.al, <4 x double> %i.al, <4 x double> %.sroa.033.0129.prol) ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.af
  br i1 %prol.iter.cmp.not, label %.lr.ph131.prol.loopexit, label %.lr.ph131.prol, !llvm.loop !7743

.lr.ph131.prol.loopexit:                          ; preds = %.lr.ph131.prol, %.lr.ph131.preheader
  %.lcssa147.unr = phi <4 x double> [ poison, %.lr.ph131.preheader ], [ %i.am, %.lr.ph131.prol ]
  %.sroa.033.0129.unr = phi <4 x double> [ zeroinitializer, %.lr.ph131.preheader ], [ %i.am, %.lr.ph131.prol ]
  %.sroa.045.0128.unr = phi i64 [ %i.a, %.lr.ph131.preheader ], [ %i.ah, %.lr.ph131.prol ]
  %.sroa.546.0127.unr = phi i64 [ %i.af, %.lr.ph131.preheader ], [ %i.ai, %.lr.ph131.prol ]
  %i.an = icmp ult i64 %i.ag, 3
  br i1 %i.an, label %._crit_edge132, label %.lr.ph131

.lr.ph131:                                        ; preds = %.lr.ph131.prol.loopexit, %.lr.ph131
  %.sroa.033.0129 = phi <4 x double> [ %i.bi, %.lr.ph131 ], [ %.sroa.033.0129.unr, %.lr.ph131.prol.loopexit ]
  %.sroa.045.0128 = phi i64 [ %i.bd, %.lr.ph131 ], [ %.sroa.045.0128.unr, %.lr.ph131.prol.loopexit ] ; 6 uses
  %.sroa.546.0127 = phi i64 [ %i.be, %.lr.ph131 ], [ %.sroa.546.0127.unr, %.lr.ph131.prol.loopexit ]
  %i.ao = add i64 %.sroa.045.0128, 4              ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.045.0128
  %.sroa.0.0.copyload.i14 = load <4 x double>, ptr %i.ap, align 8, !noalias !7760
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.045.0128
  %.sroa.0.0.copyload.i15 = load <4 x double>, ptr %i.aq, align 8, !noalias !7761
  %i.ar = fsub <4 x double> %.sroa.0.0.copyload.i14, %.sroa.0.0.copyload.i15 ; 2 uses
  %i.as = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %i.ar, <4 x double> %i.ar, <4 x double> %.sroa.033.0129)
  %i.at = add i64 %.sroa.045.0128, 8              ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao
  %.sroa.0.0.copyload.i14.1 = load <4 x double>, ptr %i.au, align 8, !noalias !7760
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ao
  %.sroa.0.0.copyload.i15.1 = load <4 x double>, ptr %i.av, align 8, !noalias !7761
  %i.aw = fsub <4 x double> %.sroa.0.0.copyload.i14.1, %.sroa.0.0.copyload.i15.1 ; 2 uses
  %i.ax = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %i.aw, <4 x double> %i.aw, <4 x double> %i.as)
  %i.ay = add i64 %.sroa.045.0128, 12             ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.at
  %.sroa.0.0.copyload.i14.2 = load <4 x double>, ptr %i.az, align 8, !noalias !7760
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.at
  %.sroa.0.0.copyload.i15.2 = load <4 x double>, ptr %i.ba, align 8, !noalias !7761
  %i.bb = fsub <4 x double> %.sroa.0.0.copyload.i14.2, %.sroa.0.0.copyload.i15.2 ; 2 uses
  %i.bc = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %i.bb, <4 x double> %i.bb, <4 x double> %i.ax)
  %i.bd = add i64 %.sroa.045.0128, 16
  %i.be = add i64 %.sroa.546.0127, -4             ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay
  %.sroa.0.0.copyload.i14.3 = load <4 x double>, ptr %i.bf, align 8, !noalias !7760
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ay
  %.sroa.0.0.copyload.i15.3 = load <4 x double>, ptr %i.bg, align 8, !noalias !7761
  %i.bh = fsub <4 x double> %.sroa.0.0.copyload.i14.3, %.sroa.0.0.copyload.i15.3 ; 2 uses
  %i.bi = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %i.bh, <4 x double> %i.bh, <4 x double> %i.bc) ; 2 uses
  %.not.i.i7.3 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i7.3, label %._crit_edge132, label %.lr.ph131

._crit_edge132:                                   ; preds = %.lr.ph131.prol.loopexit, %.lr.ph131, %._crit_edge
  %.sroa.033.0.lcssa = phi <4 x double> [ zeroinitializer, %._crit_edge ], [ %.lcssa147.unr, %.lr.ph131.prol.loopexit ], [ %i.bi, %.lr.ph131 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ae, %3
  br i1 %i.bk, label %bb.b, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.b:                                             ; preds = %._crit_edge132
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef range(i64 0, 1152921504606846973) %i.ae, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #74, !noalias !7762
  unreachable

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %._crit_edge132
  %.idx119 = shl nuw nsw i64 %i.ae, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %.idx119 ; 3 uses
  %.idx = and i64 %1, 3
  %i.bm = sub nuw nsw i64 %3, %i.ae
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %.idx) ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f64_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit
  %.val14.i.i.i.i.i = load double, ptr %i.bj, align 8, !noalias !7763, !noundef !18
  %.val15.i.i.i.i.i = load double, ptr %i.bl, align 8, !noalias !7763, !noundef !18
  %i.bn = fsub double %.val14.i.i.i.i.i, %.val15.i.i.i.i.i ; 2 uses
  %i.bo = fmul double %i.bn, %i.bn                ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f64_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val14.i.i.i.i.i.1 = load double, ptr %i.bp, align 8, !noalias !7763, !noundef !18
  %.val15.i.i.i.i.i.1 = load double, ptr %i.bq, align 8, !noalias !7763, !noundef !18
  %i.br = fsub double %.val14.i.i.i.i.i.1, %.val15.i.i.i.i.i.1 ; 2 uses
  %i.bs = fmul double %i.br, %i.br
  %i.bt = fadd double %i.bo, %i.bs                ; 2 uses
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %.sroa.0.0.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.1, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f64_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.val14.i.i.i.i.i.2 = load double, ptr %i.bu, align 8, !noalias !7763, !noundef !18
  %.val15.i.i.i.i.i.2 = load double, ptr %i.bv, align 8, !noalias !7763, !noundef !18
  %i.bw = fsub double %.val14.i.i.i.i.i.2, %.val15.i.i.i.i.i.2 ; 2 uses
  %i.bx = fmul double %i.bw, %i.bw
  %i.by = fadd double %i.bt, %i.bx
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f64_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f64_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit
  %.sroa.0.0.lcssa.i.i.i.i.i = phi double [ -0.000000e+00, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.bo, %.lr.ph.i.i.i.i.i ], [ %i.bt, %.lr.ph.i.i.i.i.i.1 ], [ %i.by, %.lr.ph.i.i.i.i.i.2 ]
  %i.bz = shufflevector <4 x double> %.sroa.6.0.lcssa, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ca = fadd <4 x double> %.sroa.6.0.lcssa, %i.bz ; 2 uses
  %i.cb = shufflevector <4 x double> %i.ca, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cc = fadd <4 x double> %i.ca, %i.cb
  %.sroa.096.0.vec.extract = extractelement <4 x double> %i.cc, i64 0
  %i.cd = shufflevector <4 x double> %.sroa.033.0.lcssa, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.ce = fadd <4 x double> %.sroa.033.0.lcssa, %i.cd ; 2 uses
  %i.cf = extractelement <4 x double> %i.ce, i64 0
  %i.cg = extractelement <4 x double> %i.ce, i64 2
  %i.ch = fadd double %i.cf, %i.cg
  %i.ci = fadd double %.sroa.096.0.vec.extract, %i.ch
  %i.cj = fadd double %i.ci, %.sroa.0.0.lcssa.i.i.i.i.i
  %i.ck = fptrunc double %i.cj to float
  ret float %i.ck
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8616l2_batch_f32_avx(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3, i64 noundef %4, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) %5, i64 noundef range(i64 0, 2305843009213693952) %6) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bb.b, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExactfEECs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #74, !noalias !7785
  unreachable

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExactfEECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.a
  %i.b = udiv i64 %3, %4
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %6) ; 12 uses
  %.not = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExactfEECs9JgWGBoX3PY_12lance_linalg.exit
  %i.c = and i64 %1, 2305843009213693944          ; 5 uses
  %i.d = lshr i64 %1, 3                           ; 7 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c ; 14 uses
  %i.f = icmp samesign ugt i64 %i.c, %4
  %.idx36.i = shl nuw nsw i64 %i.c, 2             ; 2 uses
  %.idx.i = and i64 %1, 7
  %i.g = sub nuw nsw i64 %4, %i.c
  %.sroa.0.0.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %.idx.i) ; 13 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0 ; 2 uses
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split, !prof !23

.lr.ph.split.us:                                  ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7787)
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef range(i64 0, 2305843009213693945) %i.c, i64 noundef range(i64 0, 2305843009213693952) %4, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #74, !noalias !7788
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i.i37.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i37.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %invariant.gep = getelementptr i8, ptr %2, i64 %.idx36.i
  br i1 %.not.i.i.i.i.i.i, label %iter.check, label %._crit_edge.i.us31.preheader

._crit_edge.i.us31.preheader:                     ; preds = %.lr.ph.split.split.us
  %.val15.i.i.i.i.i.i.us = load float, ptr %i.e, align 4, !alias.scope !7786, !noalias !7789, !noundef !18
  %exitcond.not.i.i.i.i.i.i.us = icmp eq i64 %.sroa.0.0.i.i.i.i, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %exitcond.not.i.i.i.i.i.i.us.1 = icmp eq i64 %.sroa.0.0.i.i.i.i, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %exitcond.not.i.i.i.i.i.i.us.2 = icmp eq i64 %.sroa.0.0.i.i.i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %exitcond.not.i.i.i.i.i.i.us.3 = icmp eq i64 %.sroa.0.0.i.i.i.i, 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %exitcond.not.i.i.i.i.i.i.us.4 = icmp eq i64 %.sroa.0.0.i.i.i.i, 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %exitcond.not.i.i.i.i.i.i.us.5 = icmp eq i64 %.sroa.0.0.i.i.i.i, 6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %._crit_edge.i.us31

iter.check:                                       ; preds = %.lr.ph.split.split.us
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i.i.i, 4
  br i1 %min.iters.check, label %._crit_edge.i.us31.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check69 = icmp samesign ult i64 %.sroa.0.0.i.i.i, 32
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %.sroa.0.0.i.i.i, 28
  %n.vec = and i64 %.sroa.0.0.i.i.i, 2305843009213693920 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7787)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  store <8 x float> zeroinitializer, ptr %i.o, align 4
  store <8 x float> zeroinitializer, ptr %i.p, align 4
  store <8 x float> zeroinitializer, ptr %i.q, align 4
  store <8 x float> zeroinitializer, ptr %i.r, align 4
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !7782

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.0.0.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %._crit_edge.i.us31.us.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %.sroa.0.0.i.i.i, 2305843009213693948 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next72, %vec.epilog.vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7787)
  store <4 x float> zeroinitializer, ptr %i.t, align 4
  %index.next72 = add nuw i64 %index71, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next72, %n.vec70
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7783

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n73 = icmp eq i64 %.sroa.0.0.i.i.i, %n.vec70
  br i1 %cmp.n73, label %._crit_edge, label %._crit_edge.i.us31.us.preheader

._crit_edge.i.us31.us.preheader:                  ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.12.029.us30.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec70, %vec.epilog.middle.block ]
  br label %._crit_edge.i.us31.us

._crit_edge.i.us31.us:                            ; preds = %._crit_edge.i.us31.us.preheader, %._crit_edge.i.us31.us
  %.sroa.12.029.us30.us = phi i64 [ %i.v, %._crit_edge.i.us31.us ], [ %.sroa.12.029.us30.us.ph, %._crit_edge.i.us31.us.preheader ] ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.12.029.us30.us, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.12.029.us30.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7787)
  store float 0.000000e+00, ptr %i.w, align 4
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f32_avx_fma:bb.a
  %.sroa.0.0.copyload.i.epil = load <8 x float>, ptr %i.u, align 4, !noalias !7953
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.010.041.epil
  %.sroa.0.0.copyload.i2.epil = load <8 x float>, ptr %i.v, align 4, !noalias !7954
  %i.w = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i.epil, <8 x float> %.sroa.0.0.copyload.i2.epil, <8 x float> %.sroa.0.042.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !7940

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.sroa.0.0.lcssa = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ], [ %i.w, %.lr.ph.epil ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a ; 7 uses
  %i.y = icmp samesign ugt i64 %i.a, %3
  br i1 %i.y, label %bb.b, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSfE5indexCs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef range(i64 0, 2305843009213693945) %i.a, i64 noundef range(i64 0, 2305843009213693952) %3, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #74, !noalias !7955
  unreachable

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSfE5indexCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %._crit_edge
  %.idx38 = shl nuw nsw i64 %i.a, 2
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %.idx38 ; 7 uses
  %.idx = and i64 %1, 7
  %i.aa = sub nuw nsw i64 %3, %i.a
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 %.idx) ; 7 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSfE5indexCs9JgWGBoX3PY_12lance_linalg.exit
  %.val15.i.i.i.i.i = load float, ptr %i.x, align 4, !noalias !7956, !noundef !18
  %.val16.i.i.i.i.i = load float, ptr %i.z, align 4, !noalias !7956, !noundef !18
  %i.ab = fmul float %.val15.i.i.i.i.i, %.val16.i.i.i.i.i ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.val15.i.i.i.i.i.1 = load float, ptr %i.ac, align 4, !noalias !7956, !noundef !18
  %.val16.i.i.i.i.i.1 = load float, ptr %i.ad, align 4, !noalias !7956, !noundef !18
  %i.ae = fmul float %.val15.i.i.i.i.i.1, %.val16.i.i.i.i.i.1
  %i.af = fadd float %i.ab, %i.ae                 ; 2 uses
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %.sroa.0.0.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.1, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val15.i.i.i.i.i.2 = load float, ptr %i.ag, align 4, !noalias !7956, !noundef !18
  %.val16.i.i.i.i.i.2 = load float, ptr %i.ah, align 4, !noalias !7956, !noundef !18
  %i.ai = fmul float %.val15.i.i.i.i.i.2, %.val16.i.i.i.i.i.2
  %i.aj = fadd float %i.af, %i.ai                 ; 2 uses
  %exitcond.not.i.i.i.i.i.2 = icmp eq i64 %.sroa.0.0.i.i.i, 3
  br i1 %exitcond.not.i.i.i.i.i.2, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.val15.i.i.i.i.i.3 = load float, ptr %i.ak, align 4, !noalias !7956, !noundef !18
  %.val16.i.i.i.i.i.3 = load float, ptr %i.al, align 4, !noalias !7956, !noundef !18
  %i.am = fmul float %.val15.i.i.i.i.i.3, %.val16.i.i.i.i.i.3
  %i.an = fadd float %i.aj, %i.am                 ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %.sroa.0.0.i.i.i, 4
  br i1 %exitcond.not.i.i.i.i.i.3, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit, label %.lr.ph.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.4:                               ; preds = %.lr.ph.i.i.i.i.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val15.i.i.i.i.i.4 = load float, ptr %i.ao, align 4, !noalias !7956, !noundef !18
  %.val16.i.i.i.i.i.4 = load float, ptr %i.ap, align 4, !noalias !7956, !noundef !18
  %i.aq = fmul float %.val15.i.i.i.i.i.4, %.val16.i.i.i.i.i.4
  %i.ar = fadd float %i.an, %i.aq                 ; 2 uses
  %exitcond.not.i.i.i.i.i.4 = icmp eq i64 %.sroa.0.0.i.i.i, 5
  br i1 %exitcond.not.i.i.i.i.i.4, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit, label %.lr.ph.i.i.i.i.i.5

.lr.ph.i.i.i.i.i.5:                               ; preds = %.lr.ph.i.i.i.i.i.4
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %.val15.i.i.i.i.i.5 = load float, ptr %i.as, align 4, !noalias !7956, !noundef !18
  %.val16.i.i.i.i.i.5 = load float, ptr %i.at, align 4, !noalias !7956, !noundef !18
  %i.au = fmul float %.val15.i.i.i.i.i.5, %.val16.i.i.i.i.i.5
  %i.av = fadd float %i.ar, %i.au                 ; 2 uses
  %exitcond.not.i.i.i.i.i.5 = icmp eq i64 %.sroa.0.0.i.i.i, 6
  br i1 %exitcond.not.i.i.i.i.i.5, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit, label %.lr.ph.i.i.i.i.i.6

.lr.ph.i.i.i.i.i.6:                               ; preds = %.lr.ph.i.i.i.i.i.5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.val15.i.i.i.i.i.6 = load float, ptr %i.aw, align 4, !noalias !7956, !noundef !18
  %.val16.i.i.i.i.i.6 = load float, ptr %i.ax, align 4, !noalias !7956, !noundef !18
  %i.ay = fmul float %.val15.i.i.i.i.i.6, %.val16.i.i.i.i.i.6
  %i.az = fadd float %i.av, %i.ay
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1O_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.5, %.lr.ph.i.i.i.i.i.6, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSfE5indexCs9JgWGBoX3PY_12lance_linalg.exit
  %.sroa.0.0.lcssa.i.i.i.i.i = phi float [ -0.000000e+00, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSfE5indexCs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.af, %.lr.ph.i.i.i.i.i.1 ], [ %i.aj, %.lr.ph.i.i.i.i.i.2 ], [ %i.an, %.lr.ph.i.i.i.i.i.3 ], [ %i.ar, %.lr.ph.i.i.i.i.i.4 ], [ %i.av, %.lr.ph.i.i.i.i.i.5 ], [ %i.az, %.lr.ph.i.i.i.i.i.6 ]
  %i.ba = shufflevector <8 x float> %.sroa.0.0.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bb = shufflevector <8 x float> %.sroa.0.0.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bc = fadd <4 x float> %i.ba, %i.bb           ; 2 uses
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.be = fadd <4 x float> %i.bc, %i.bd           ; 2 uses
  %shift = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.be, %shift
  %i.bf = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.bg = fadd float %i.bf, %.sroa.0.0.lcssa.i.i.i.i.i
  ret float %i.bg
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f64_avx_fma(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 1152921504606846968          ; 3 uses
  %i.b = lshr i64 %1, 3                           ; 3 uses
  switch i64 %i.b, label %.lr.ph.preheader.new [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.epil.preheader
  ]

.lr.ph.preheader.new:                             ; preds = %bb.a
  %unroll_iter = and i64 %i.b, 144115188075855870
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.0111 = phi <4 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.o, %.lr.ph ]
  %.sroa.6.0110 = phi <4 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.p, %.lr.ph ]
  %.sroa.025.0109 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.j, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = or disjoint i64 %.sroa.025.0109, 8       ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.025.0109 ; 2 uses
  %.sroa.0.0.copyload.i11 = load <4 x double>, ptr %i.d, align 8, !noalias !7982
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.0.0.copyload.i = load <4 x double>, ptr %i.e, align 8, !noalias !7983
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.025.0109 ; 2 uses
  %.sroa.0.0.copyload.i13 = load <4 x double>, ptr %i.f, align 8, !noalias !7984
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.0.0.copyload.i12 = load <4 x double>, ptr %i.g, align 8, !noalias !7985
  %i.h = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i11, <4 x double> %.sroa.0.0.copyload.i13, <4 x double> %.sroa.0.0111)
  %i.i = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i, <4 x double> %.sroa.0.0.copyload.i12, <4 x double> %.sroa.6.0110)
  %i.j = add nuw nsw i64 %.sroa.025.0109, 16      ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i11.1 = load <4 x double>, ptr %i.k, align 8, !noalias !7982
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.0.0.copyload.i.1 = load <4 x double>, ptr %i.l, align 8, !noalias !7983
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i13.1 = load <4 x double>, ptr %i.m, align 8, !noalias !7984
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.0.0.copyload.i12.1 = load <4 x double>, ptr %i.n, align 8, !noalias !7985
  %i.o = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i11.1, <4 x double> %.sroa.0.0.copyload.i13.1, <4 x double> %i.h) ; 3 uses
  %i.p = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i.1, <4 x double> %.sroa.0.0.copyload.i12.1, <4 x double> %i.i) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.q = and i64 %1, 8
  %lcmp.mod.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %bb.a, %._crit_edge.loopexit.unr-lcssa
  %.sroa.0.0111.epil.init = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.o, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.6.0110.epil.init = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.p, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.025.0109.epil.init = phi i64 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod139 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod139)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.025.0109.epil.init ; 2 uses
  %.sroa.0.0.copyload.i11.epil = load <4 x double>, ptr %i.r, align 8, !noalias !7982
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.0.0.copyload.i.epil = load <4 x double>, ptr %i.s, align 8, !noalias !7983
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.025.0109.epil.init ; 2 uses
  %.sroa.0.0.copyload.i13.epil = load <4 x double>, ptr %i.t, align 8, !noalias !7984
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.0.0.copyload.i12.epil = load <4 x double>, ptr %i.u, align 8, !noalias !7985
  %i.v = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i11.epil, <4 x double> %.sroa.0.0.copyload.i13.epil, <4 x double> %.sroa.0.0111.epil.init)
  %i.w = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i.epil, <4 x double> %.sroa.0.0.copyload.i12.epil, <4 x double> %.sroa.6.0110.epil.init)
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa136 = phi <4 x double> [ %i.o, %._crit_edge.loopexit.unr-lcssa ], [ %i.v, %.lr.ph.epil.preheader ]
  %.lcssa135 = phi <4 x double> [ %i.p, %._crit_edge.loopexit.unr-lcssa ], [ %i.w, %.lr.ph.epil.preheader ]
  %i.x = fadd <4 x double> %.lcssa135, %.lcssa136
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %.sroa.6.0.lcssa = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.x, %._crit_edge.loopexit ] ; 2 uses
  %i.y = and i64 %1, 1152921504606846972          ; 6 uses
  %.not.i.i7113.not = icmp samesign ugt i64 %i.y, %i.a
  br i1 %.not.i.i7113.not, label %.lr.ph118.preheader, label %._crit_edge119

.lr.ph118.preheader:                              ; preds = %._crit_edge
  %.sroa.06.0.i.i.i = lshr i64 %1, 2
  %i.z = and i64 %.sroa.06.0.i.i.i, 1             ; 5 uses
  %i.aa = add nsw i64 %i.z, -1
  %lcmp.mod141.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod141.not, label %.lr.ph118.prol.loopexit, label %.lr.ph118.prol

.lr.ph118.prol:                                   ; preds = %.lr.ph118.preheader, %.lr.ph118.prol
  %.sroa.031.0116.prol = phi <4 x double> [ %i.af, %.lr.ph118.prol ], [ zeroinitializer, %.lr.ph118.preheader ]
  %.sroa.043.0115.prol = phi i64 [ %i.ab, %.lr.ph118.prol ], [ %i.a, %.lr.ph118.preheader ] ; 3 uses
  %.sroa.544.0114.prol = phi i64 [ %i.ac, %.lr.ph118.prol ], [ %i.z, %.lr.ph118.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph118.prol ], [ 0, %.lr.ph118.preheader ]
  %i.ab = add i64 %.sroa.043.0115.prol, 4         ; 2 uses
  %i.ac = add i64 %.sroa.544.0114.prol, -1        ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.043.0115.prol
  %.sroa.0.0.copyload.i14.prol = load <4 x double>, ptr %i.ad, align 8, !noalias !7986
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.043.0115.prol
  %.sroa.0.0.copyload.i15.prol = load <4 x double>, ptr %i.ae, align 8, !noalias !7987
  %i.af = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i14.prol, <4 x double> %.sroa.0.0.copyload.i15.prol, <4 x double> %.sroa.031.0116.prol) ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.z
  br i1 %prol.iter.cmp.not, label %.lr.ph118.prol.loopexit, label %.lr.ph118.prol, !llvm.loop !7969

.lr.ph118.prol.loopexit:                          ; preds = %.lr.ph118.prol, %.lr.ph118.preheader
  %.lcssa134.unr = phi <4 x double> [ poison, %.lr.ph118.preheader ], [ %i.af, %.lr.ph118.prol ]
  %.sroa.031.0116.unr = phi <4 x double> [ zeroinitializer, %.lr.ph118.preheader ], [ %i.af, %.lr.ph118.prol ]
  %.sroa.043.0115.unr = phi i64 [ %i.a, %.lr.ph118.preheader ], [ %i.ab, %.lr.ph118.prol ]
  %.sroa.544.0114.unr = phi i64 [ %i.z, %.lr.ph118.preheader ], [ %i.ac, %.lr.ph118.prol ]
  %i.ag = icmp ult i64 %i.aa, 3
  br i1 %i.ag, label %._crit_edge119, label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph118.prol.loopexit, %.lr.ph118
  %.sroa.031.0116 = phi <4 x double> [ %i.ax, %.lr.ph118 ], [ %.sroa.031.0116.unr, %.lr.ph118.prol.loopexit ]
  %.sroa.043.0115 = phi i64 [ %i.at, %.lr.ph118 ], [ %.sroa.043.0115.unr, %.lr.ph118.prol.loopexit ] ; 6 uses
  %.sroa.544.0114 = phi i64 [ %i.au, %.lr.ph118 ], [ %.sroa.544.0114.unr, %.lr.ph118.prol.loopexit ]
  %i.ah = add i64 %.sroa.043.0115, 4              ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.043.0115
  %.sroa.0.0.copyload.i14 = load <4 x double>, ptr %i.ai, align 8, !noalias !7986
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.043.0115
  %.sroa.0.0.copyload.i15 = load <4 x double>, ptr %i.aj, align 8, !noalias !7987
  %i.ak = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i14, <4 x double> %.sroa.0.0.copyload.i15, <4 x double> %.sroa.031.0116)
  %i.al = add i64 %.sroa.043.0115, 8              ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ah
  %.sroa.0.0.copyload.i14.1 = load <4 x double>, ptr %i.am, align 8, !noalias !7986
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ah
  %.sroa.0.0.copyload.i15.1 = load <4 x double>, ptr %i.an, align 8, !noalias !7987
  %i.ao = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i14.1, <4 x double> %.sroa.0.0.copyload.i15.1, <4 x double> %i.ak)
  %i.ap = add i64 %.sroa.043.0115, 12             ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.al
  %.sroa.0.0.copyload.i14.2 = load <4 x double>, ptr %i.aq, align 8, !noalias !7986
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.al
  %.sroa.0.0.copyload.i15.2 = load <4 x double>, ptr %i.ar, align 8, !noalias !7987
  %i.as = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i14.2, <4 x double> %.sroa.0.0.copyload.i15.2, <4 x double> %i.ao)
  %i.at = add i64 %.sroa.043.0115, 16
  %i.au = add i64 %.sroa.544.0114, -4             ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap
  %.sroa.0.0.copyload.i14.3 = load <4 x double>, ptr %i.av, align 8, !noalias !7986
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ap
  %.sroa.0.0.copyload.i15.3 = load <4 x double>, ptr %i.aw, align 8, !noalias !7987
  %i.ax = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i14.3, <4 x double> %.sroa.0.0.copyload.i15.3, <4 x double> %i.as) ; 2 uses
  %.not.i.i7.3 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i7.3, label %._crit_edge119, label %.lr.ph118

._crit_edge119:                                   ; preds = %.lr.ph118.prol.loopexit, %.lr.ph118, %._crit_edge
  %.sroa.031.0.lcssa = phi <4 x double> [ zeroinitializer, %._crit_edge ], [ %.lcssa134.unr, %.lr.ph118.prol.loopexit ], [ %i.ax, %.lr.ph118 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y ; 3 uses
  %i.az = icmp samesign ugt i64 %i.y, %3
  br i1 %i.az, label %bb.b, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.b:                                             ; preds = %._crit_edge119
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef range(i64 0, 1152921504606846973) %i.y, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @284) #74, !noalias !7988
  unreachable

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %._crit_edge119
  %.idx106 = shl nuw nsw i64 %i.y, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %.idx106 ; 3 uses
  %.idx = and i64 %1, 3
  %i.bb = sub nuw nsw i64 %3, %i.y
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 %.idx) ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f64_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit
  %.val14.i.i.i.i.i = load double, ptr %i.ay, align 8, !noalias !7989, !noundef !18
  %.val15.i.i.i.i.i = load double, ptr %i.ba, align 8, !noalias !7989, !noundef !18
  %i.bc = fmul double %.val14.i.i.i.i.i, %.val15.i.i.i.i.i ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f64_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.val14.i.i.i.i.i.1 = load double, ptr %i.bd, align 8, !noalias !7989, !noundef !18
  %.val15.i.i.i.i.i.1 = load double, ptr %i.be, align 8, !noalias !7989, !noundef !18
  %i.bf = fmul double %.val14.i.i.i.i.i.1, %.val15.i.i.i.i.i.1
  %i.bg = fadd double %i.bc, %i.bf                ; 2 uses
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %.sroa.0.0.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.1, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f64_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.val14.i.i.i.i.i.2 = load double, ptr %i.bh, align 8, !noalias !7989, !noundef !18
  %.val15.i.i.i.i.i.2 = load double, ptr %i.bi, align 8, !noalias !7989, !noundef !18
  %i.bj = fmul double %.val14.i.i.i.i.i.2, %.val15.i.i.i.i.i.2
  %i.bk = fadd double %i.bg, %i.bj
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f64_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f64_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit
  %.sroa.0.0.lcssa.i.i.i.i.i = phi double [ -0.000000e+00, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.bg, %.lr.ph.i.i.i.i.i.1 ], [ %i.bk, %.lr.ph.i.i.i.i.i.2 ]
  %i.bl = shufflevector <4 x double> %.sroa.6.0.lcssa, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bm = fadd <4 x double> %.sroa.6.0.lcssa, %i.bl ; 2 uses
  %i.bn = shufflevector <4 x double> %i.bm, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bo = fadd <4 x double> %i.bm, %i.bn
  %.sroa.083.0.vec.extract = extractelement <4 x double> %i.bo, i64 0
  %i.bp = shufflevector <4 x double> %.sroa.031.0.lcssa, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.bq = fadd <4 x double> %.sroa.031.0.lcssa, %i.bp ; 2 uses
  %i.br = extractelement <4 x double> %i.bq, i64 0
  %i.bs = extractelement <4 x double> %i.bq, i64 2
  %i.bt = fadd double %i.br, %i.bs
  %i.bu = fadd double %.sroa.083.0.vec.extract, %i.bt
  %i.bv = fadd double %i.bu, %.sroa.0.0.lcssa.i.i.i.i.i
  %i.bw = fptrunc double %i.bv to float
  ret float %i.bw
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8617dot_batch_f32_avx(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3, i64 noundef %4, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) %5, i64 noundef range(i64 0, 2305843009213693952) %6) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bb.b, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExactfEECs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #74, !noalias !8013
  unreachable

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExactfEECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.a
  %i.b = udiv i64 %3, %4
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %6) ; 12 uses
  %.not = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExactfEECs9JgWGBoX3PY_12lance_linalg.exit
  %i.c = and i64 %1, 2305843009213693944          ; 5 uses
  %i.d = lshr i64 %1, 3                           ; 5 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c ; 14 uses
  %i.f = icmp samesign ugt i64 %i.c, %4
  %.idx35.i = shl nuw nsw i64 %i.c, 2             ; 2 uses
  %.idx.i = and i64 %1, 7
  %i.g = sub nuw nsw i64 %4, %i.c
  %.sroa.0.0.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %.idx.i) ; 13 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0 ; 2 uses
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split, !prof !23

.lr.ph.split.us:                                  ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8015)
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef range(i64 0, 2305843009213693945) %i.c, i64 noundef range(i64 0, 2305843009213693952) %4, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #74, !noalias !8016
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i.i36.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i36.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %invariant.gep = getelementptr i8, ptr %2, i64 %.idx35.i
  br i1 %.not.i.i.i.i.i.i, label %iter.check, label %._crit_edge.i.us31.preheader

._crit_edge.i.us31.preheader:                     ; preds = %.lr.ph.split.split.us
  %.val15.i.i.i.i.i.i.us = load float, ptr %i.e, align 4, !alias.scope !8014, !noalias !8017, !noundef !18
  %exitcond.not.i.i.i.i.i.i.us = icmp eq i64 %.sroa.0.0.i.i.i.i, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %exitcond.not.i.i.i.i.i.i.us.1 = icmp eq i64 %.sroa.0.0.i.i.i.i, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %exitcond.not.i.i.i.i.i.i.us.2 = icmp eq i64 %.sroa.0.0.i.i.i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %exitcond.not.i.i.i.i.i.i.us.3 = icmp eq i64 %.sroa.0.0.i.i.i.i, 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %exitcond.not.i.i.i.i.i.i.us.4 = icmp eq i64 %.sroa.0.0.i.i.i.i, 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %exitcond.not.i.i.i.i.i.i.us.5 = icmp eq i64 %.sroa.0.0.i.i.i.i, 6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %._crit_edge.i.us31

iter.check:                                       ; preds = %.lr.ph.split.split.us
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i.i.i, 4
  br i1 %min.iters.check, label %._crit_edge.i.us31.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check69 = icmp samesign ult i64 %.sroa.0.0.i.i.i, 32
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %.sroa.0.0.i.i.i, 28
  %n.vec = and i64 %.sroa.0.0.i.i.i, 2305843009213693920 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8015)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  store <8 x float> zeroinitializer, ptr %i.o, align 4
  store <8 x float> zeroinitializer, ptr %i.p, align 4
  store <8 x float> zeroinitializer, ptr %i.q, align 4
  store <8 x float> zeroinitializer, ptr %i.r, align 4
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !8008

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.0.0.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %._crit_edge.i.us31.us.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %.sroa.0.0.i.i.i, 2305843009213693948 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next72, %vec.epilog.vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8015)
  store <4 x float> zeroinitializer, ptr %i.t, align 4
  %index.next72 = add nuw i64 %index71, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next72, %n.vec70
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !8009

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n73 = icmp eq i64 %.sroa.0.0.i.i.i, %n.vec70
  br i1 %cmp.n73, label %._crit_edge, label %._crit_edge.i.us31.us.preheader

._crit_edge.i.us31.us.preheader:                  ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.12.029.us30.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec70, %vec.epilog.middle.block ]
  br label %._crit_edge.i.us31.us

._crit_edge.i.us31.us:                            ; preds = %._crit_edge.i.us31.us.preheader, %._crit_edge.i.us31.us
  %.sroa.12.029.us30.us = phi i64 [ %i.v, %._crit_edge.i.us31.us ], [ %.sroa.12.029.us30.us.ph, %._crit_edge.i.us31.us.preheader ] ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.12.029.us30.us, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.12.029.us30.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8015)
  store float 0.000000e+00, ptr %i.w, align 4
  %i.x = icmp samesign ult i64 %i.v, %.sroa.0.0.i.i.i
  br i1 %i.x, label %._crit_edge.i.us31.us, label %._crit_edge, !llvm.loop !8010

._crit_edge.i.us31:                               ; preds = %._crit_edge.i.us31.preheader, %_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8611dot_f32_avx.exit.loopexit.us
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f32_x8618cosine_fast_avx512:bb.a
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.050.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.02.049.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.025.048.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod82 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.050.epil = phi <16 x float> [ %i.aa, %.lr.ph.epil ], [ %.sroa.0.050.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.02.049.epil = phi <16 x float> [ %i.ab, %.lr.ph.epil ], [ %.sroa.02.049.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.025.048.epil = phi i64 [ %i.x, %.lr.ph.epil ], [ %.sroa.025.048.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.x = add nuw nsw i64 %.sroa.025.048.epil, 16
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.025.048.epil
  %.sroa.0.0.copyload.i.epil = load <16 x float>, ptr %i.y, align 4, !noalias !8109
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.025.048.epil
  %.sroa.0.0.copyload.i18.epil = load <16 x float>, ptr %i.z, align 4, !noalias !8110 ; 3 uses
  %i.aa = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.epil, <16 x float> %.sroa.0.0.copyload.i18.epil, <16 x float> %.sroa.0.050.epil) ; 2 uses
  %i.ab = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i18.epil, <16 x float> %.sroa.0.0.copyload.i18.epil, <16 x float> %.sroa.02.049.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !8108

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.sroa.02.0.lcssa = phi <16 x float> [ zeroinitializer, %bb.a ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.epil ] ; 2 uses
  %.sroa.0.0.lcssa = phi <16 x float> [ zeroinitializer, %bb.a ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %.lr.ph.epil ] ; 2 uses
  %i.ac = shufflevector <16 x float> %.sroa.0.0.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ad = shufflevector <16 x float> %.sroa.0.0.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = fadd <8 x float> %i.ac, %i.ad           ; 2 uses
  %i.af = shufflevector <8 x float> %i.ae, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ag = shufflevector <8 x float> %i.ae, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ah = fadd <4 x float> %i.af, %i.ag           ; 2 uses
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.aj = fadd <4 x float> %i.ah, %i.ai           ; 2 uses
  %shift = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.aj, %shift
  %i.ak = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.al = shufflevector <16 x float> %.sroa.02.0.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.am = shufflevector <16 x float> %.sroa.02.0.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.an = fadd <8 x float> %i.al, %i.am           ; 2 uses
  %i.ao = shufflevector <8 x float> %i.an, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ap = shufflevector <8 x float> %i.an, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aq = fadd <4 x float> %i.ao, %i.ap           ; 2 uses
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.as = fadd <4 x float> %i.aq, %i.ar           ; 2 uses
  %shift74 = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop75 = fadd <4 x float> %i.as, %shift74
  %i.at = extractelement <4 x float> %foldExtExtBinop75, i64 0 ; 2 uses
  %.not = icmp eq i64 %i.a, %1
  br i1 %.not, label %._crit_edge57, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %._crit_edge
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 %i.a) ; 2 uses
  br label %.lr.ph56

._crit_edge57:                                    ; preds = %bb.b, %._crit_edge
  %.sroa.08.0.lcssa = phi float [ %i.at, %._crit_edge ], [ %i.bg, %bb.b ]
  %.sroa.06.0.lcssa = phi float [ %i.ak, %._crit_edge ], [ %i.be, %bb.b ]
  %i.au = fdiv float %.sroa.06.0.lcssa, %2
  %i.av = tail call noundef float @llvm.sqrt.f32(float %.sroa.08.0.lcssa)
  %i.aw = fdiv float %i.au, %i.av
  %i.ax = fsub float 1.000000e+00, %i.aw
  ret float %i.ax

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %bb.b
  %.sroa.06.054 = phi float [ %i.be, %bb.b ], [ %i.ak, %.lr.ph56.preheader ]
  %.sroa.08.053 = phi float [ %i.bg, %bb.b ], [ %i.at, %.lr.ph56.preheader ]
  %.sroa.027.052 = phi i64 [ %i.ay, %bb.b ], [ %i.a, %.lr.ph56.preheader ] ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.027.052, %umax
  br i1 %exitcond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph56
  %i.ay = add nuw nsw i64 %.sroa.027.052, 1       ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.027.052
  %i.ba = load float, ptr %i.az, align 4, !noundef !18
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.027.052
  %i.bc = load float, ptr %i.bb, align 4, !noundef !18 ; 3 uses
  %i.bd = fmul float %i.ba, %i.bc
  %i.be = fadd float %.sroa.06.054, %i.bd         ; 2 uses
  %i.bf = fmul float %i.bc, %i.bc
  %i.bg = fadd float %.sroa.08.053, %i.bf         ; 2 uses
  %i.bh = icmp samesign ult i64 %i.ay, %1
  br i1 %i.bh, label %.lr.ph56, label %._crit_edge57

bb.c:                                             ; preds = %.lr.ph56
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @293) #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f32_x8619cosine_fast_avx_fma(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, float noundef %2, ptr noalias noundef nonnull readonly align 4 captures(none) %3, i64 noundef range(i64 0, 2305843009213693952) %4) unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 2305843009213693936          ; 3 uses
  %i.b = lshr i64 %1, 4                           ; 3 uses
  switch i64 %i.b, label %.lr.ph.preheader.new [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.epil.preheader
  ]

.lr.ph.preheader.new:                             ; preds = %bb.a
  %unroll_iter = and i64 %i.b, 144115188075855870
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.0178 = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ]
  %.sroa.6.0177 = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ]
  %.sroa.019.0176 = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.q, %.lr.ph ]
  %.sroa.621.0175 = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.r, %.lr.ph ]
  %.sroa.030.0174 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.l, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = or disjoint i64 %.sroa.030.0174, 16      ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.030.0174 ; 2 uses
  %.sroa.0.0.copyload.i12 = load <8 x float>, ptr %i.d, align 4, !noalias !8126
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.0.0.copyload.i = load <8 x float>, ptr %i.e, align 4, !noalias !8127
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.030.0174 ; 2 uses
  %.sroa.0.0.copyload.i14 = load <8 x float>, ptr %i.f, align 4, !noalias !8128 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.0.0.copyload.i13 = load <8 x float>, ptr %i.g, align 4, !noalias !8129 ; 3 uses
  %i.h = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i12, <8 x float> %.sroa.0.0.copyload.i14, <8 x float> %.sroa.019.0176)
  %i.i = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i, <8 x float> %.sroa.0.0.copyload.i13, <8 x float> %.sroa.621.0175)
  %i.j = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i14, <8 x float> %.sroa.0.0.copyload.i14, <8 x float> %.sroa.0.0178)
  %i.k = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i13, <8 x float> %.sroa.0.0.copyload.i13, <8 x float> %.sroa.6.0177)
  %i.l = add nuw nsw i64 %.sroa.030.0174, 32      ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i12.1 = load <8 x float>, ptr %i.m, align 4, !noalias !8126
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.0.0.copyload.i.1 = load <8 x float>, ptr %i.n, align 4, !noalias !8127
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i14.1 = load <8 x float>, ptr %i.o, align 4, !noalias !8128 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.0.0.copyload.i13.1 = load <8 x float>, ptr %i.p, align 4, !noalias !8129 ; 3 uses
  %i.q = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i12.1, <8 x float> %.sroa.0.0.copyload.i14.1, <8 x float> %i.h) ; 3 uses
  %i.r = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i.1, <8 x float> %.sroa.0.0.copyload.i13.1, <8 x float> %i.i) ; 3 uses
  %i.s = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i14.1, <8 x float> %.sroa.0.0.copyload.i14.1, <8 x float> %i.j) ; 3 uses
  %i.t = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i13.1, <8 x float> %.sroa.0.0.copyload.i13.1, <8 x float> %i.k) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.u = and i64 %1, 16
  %lcmp.mod.not = icmp eq i64 %i.u, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %bb.a, %._crit_edge.loopexit.unr-lcssa
  %.sroa.0.0178.epil.init = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.6.0177.epil.init = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.019.0176.epil.init = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.q, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.621.0175.epil.init = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.r, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.030.0174.epil.init = phi i64 [ 0, %bb.a ], [ %i.l, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod220 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod220)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.030.0174.epil.init ; 2 uses
  %.sroa.0.0.copyload.i12.epil = load <8 x float>, ptr %i.v, align 4, !noalias !8126
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.0.0.copyload.i.epil = load <8 x float>, ptr %i.w, align 4, !noalias !8127
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.030.0174.epil.init ; 2 uses
  %.sroa.0.0.copyload.i14.epil = load <8 x float>, ptr %i.x, align 4, !noalias !8128 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.0.0.copyload.i13.epil = load <8 x float>, ptr %i.y, align 4, !noalias !8129 ; 3 uses
  %i.z = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i12.epil, <8 x float> %.sroa.0.0.copyload.i14.epil, <8 x float> %.sroa.019.0176.epil.init)
  %i.aa = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i.epil, <8 x float> %.sroa.0.0.copyload.i13.epil, <8 x float> %.sroa.621.0175.epil.init)
  %i.ab = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i14.epil, <8 x float> %.sroa.0.0.copyload.i14.epil, <8 x float> %.sroa.0.0178.epil.init)
  %i.ac = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i13.epil, <8 x float> %.sroa.0.0.copyload.i13.epil, <8 x float> %.sroa.6.0177.epil.init)
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa215 = phi <8 x float> [ %i.q, %._crit_edge.loopexit.unr-lcssa ], [ %i.z, %.lr.ph.epil.preheader ]
  %.lcssa214 = phi <8 x float> [ %i.r, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %.lr.ph.epil.preheader ]
  %.lcssa213 = phi <8 x float> [ %i.s, %._crit_edge.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.epil.preheader ]
  %.lcssa212 = phi <8 x float> [ %i.t, %._crit_edge.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.epil.preheader ]
  %i.ad = fadd <8 x float> %.lcssa212, %.lcssa213
  %i.ae = fadd <8 x float> %.lcssa214, %.lcssa215
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %.sroa.621.0.lcssa = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.ae, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.6.0.lcssa = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.ad, %._crit_edge.loopexit ] ; 2 uses
  %i.af = and i64 %1, 2305843009213693944         ; 6 uses
  %.not.i.i7182.not = icmp samesign ugt i64 %i.af, %i.a
  br i1 %.not.i.i7182.not, label %.lr.ph188.preheader, label %._crit_edge189

.lr.ph188.preheader:                              ; preds = %._crit_edge
  %.sroa.06.0.i.i.i = lshr i64 %1, 3
  %i.ag = and i64 %.sroa.06.0.i.i.i, 1            ; 5 uses
  %i.ah = add nsw i64 %i.ag, -1
  %lcmp.mod222.not = icmp eq i64 %i.ag, 0
  br i1 %lcmp.mod222.not, label %.lr.ph188.prol.loopexit, label %.lr.ph188.prol

.lr.ph188.prol:                                   ; preds = %.lr.ph188.preheader, %.lr.ph188.prol
  %.sroa.554.0186.prol = phi i64 [ %i.aj, %.lr.ph188.prol ], [ %i.ag, %.lr.ph188.preheader ]
  %.sroa.053.0185.prol = phi i64 [ %i.ai, %.lr.ph188.prol ], [ %i.a, %.lr.ph188.preheader ] ; 3 uses
  %.sroa.039.0184.prol = phi <8 x float> [ %i.an, %.lr.ph188.prol ], [ zeroinitializer, %.lr.ph188.preheader ]
  %.sroa.041.0183.prol = phi <8 x float> [ %i.am, %.lr.ph188.prol ], [ zeroinitializer, %.lr.ph188.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph188.prol ], [ 0, %.lr.ph188.preheader ]
  %i.ai = add i64 %.sroa.053.0185.prol, 8         ; 2 uses
  %i.aj = add i64 %.sroa.554.0186.prol, -1        ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.053.0185.prol
  %.sroa.0.0.copyload.i15.prol = load <8 x float>, ptr %i.ak, align 4, !noalias !8130
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.053.0185.prol
  %.sroa.0.0.copyload.i16.prol = load <8 x float>, ptr %i.al, align 4, !noalias !8131 ; 3 uses
  %i.am = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i15.prol, <8 x float> %.sroa.0.0.copyload.i16.prol, <8 x float> %.sroa.041.0183.prol) ; 3 uses
  %i.an = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i16.prol, <8 x float> %.sroa.0.0.copyload.i16.prol, <8 x float> %.sroa.039.0184.prol) ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.ag
  br i1 %prol.iter.cmp.not, label %.lr.ph188.prol.loopexit, label %.lr.ph188.prol, !llvm.loop !8123

.lr.ph188.prol.loopexit:                          ; preds = %.lr.ph188.prol, %.lr.ph188.preheader
  %.lcssa211.unr = phi <8 x float> [ poison, %.lr.ph188.preheader ], [ %i.am, %.lr.ph188.prol ]
  %.lcssa.unr = phi <8 x float> [ poison, %.lr.ph188.preheader ], [ %i.an, %.lr.ph188.prol ]
  %.sroa.554.0186.unr = phi i64 [ %i.ag, %.lr.ph188.preheader ], [ %i.aj, %.lr.ph188.prol ]
  %.sroa.053.0185.unr = phi i64 [ %i.a, %.lr.ph188.preheader ], [ %i.ai, %.lr.ph188.prol ]
  %.sroa.039.0184.unr = phi <8 x float> [ zeroinitializer, %.lr.ph188.preheader ], [ %i.an, %.lr.ph188.prol ]
  %.sroa.041.0183.unr = phi <8 x float> [ zeroinitializer, %.lr.ph188.preheader ], [ %i.am, %.lr.ph188.prol ]
  %i.ao = icmp ult i64 %i.ah, 3
  br i1 %i.ao, label %._crit_edge189, label %.lr.ph188

.lr.ph188:                                        ; preds = %.lr.ph188.prol.loopexit, %.lr.ph188
  %.sroa.554.0186 = phi i64 [ %i.bf, %.lr.ph188 ], [ %.sroa.554.0186.unr, %.lr.ph188.prol.loopexit ]
  %.sroa.053.0185 = phi i64 [ %i.be, %.lr.ph188 ], [ %.sroa.053.0185.unr, %.lr.ph188.prol.loopexit ] ; 6 uses
  %.sroa.039.0184 = phi <8 x float> [ %i.bj, %.lr.ph188 ], [ %.sroa.039.0184.unr, %.lr.ph188.prol.loopexit ]
  %.sroa.041.0183 = phi <8 x float> [ %i.bi, %.lr.ph188 ], [ %.sroa.041.0183.unr, %.lr.ph188.prol.loopexit ]
  %i.ap = add i64 %.sroa.053.0185, 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.053.0185
  %.sroa.0.0.copyload.i15 = load <8 x float>, ptr %i.aq, align 4, !noalias !8130
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.053.0185
  %.sroa.0.0.copyload.i16 = load <8 x float>, ptr %i.ar, align 4, !noalias !8131 ; 3 uses
  %i.as = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i15, <8 x float> %.sroa.0.0.copyload.i16, <8 x float> %.sroa.041.0183)
  %i.at = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i16, <8 x float> %.sroa.0.0.copyload.i16, <8 x float> %.sroa.039.0184)
  %i.au = add i64 %.sroa.053.0185, 16             ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  %.sroa.0.0.copyload.i15.1 = load <8 x float>, ptr %i.av, align 4, !noalias !8130
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ap
  %.sroa.0.0.copyload.i16.1 = load <8 x float>, ptr %i.aw, align 4, !noalias !8131 ; 3 uses
  %i.ax = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i15.1, <8 x float> %.sroa.0.0.copyload.i16.1, <8 x float> %i.as)
  %i.ay = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i16.1, <8 x float> %.sroa.0.0.copyload.i16.1, <8 x float> %i.at)
  %i.az = add i64 %.sroa.053.0185, 24             ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au
  %.sroa.0.0.copyload.i15.2 = load <8 x float>, ptr %i.ba, align 4, !noalias !8130
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.au
  %.sroa.0.0.copyload.i16.2 = load <8 x float>, ptr %i.bb, align 4, !noalias !8131 ; 3 uses
  %i.bc = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i15.2, <8 x float> %.sroa.0.0.copyload.i16.2, <8 x float> %i.ax)
  %i.bd = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i16.2, <8 x float> %.sroa.0.0.copyload.i16.2, <8 x float> %i.ay)
  %i.be = add i64 %.sroa.053.0185, 32
  %i.bf = add i64 %.sroa.554.0186, -4             ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.az
  %.sroa.0.0.copyload.i15.3 = load <8 x float>, ptr %i.bg, align 4, !noalias !8130
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.az
  %.sroa.0.0.copyload.i16.3 = load <8 x float>, ptr %i.bh, align 4, !noalias !8131 ; 3 uses
  %i.bi = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i15.3, <8 x float> %.sroa.0.0.copyload.i16.3, <8 x float> %i.bc) ; 2 uses
  %i.bj = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i16.3, <8 x float> %.sroa.0.0.copyload.i16.3, <8 x float> %i.bd) ; 2 uses
  %.not.i.i7.3 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i7.3, label %._crit_edge189, label %.lr.ph188

._crit_edge189:                                   ; preds = %.lr.ph188.prol.loopexit, %.lr.ph188, %._crit_edge
  %.sroa.041.0.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge ], [ %.lcssa211.unr, %.lr.ph188.prol.loopexit ], [ %i.bi, %.lr.ph188 ] ; 2 uses
  %.sroa.039.0.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge ], [ %.lcssa.unr, %.lr.ph188.prol.loopexit ], [ %i.bj, %.lr.ph188 ] ; 2 uses
  %i.bk = icmp samesign ugt i64 %i.af, %4
  br i1 %i.bk, label %bb.b, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSfE5indexCs9JgWGBoX3PY_12lance_linalg.exit11, !prof !23

bb.b:                                             ; preds = %._crit_edge189
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef range(i64 0, 2305843009213693945) %i.af, i64 noundef range(i64 0, 2305843009213693952) %4, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @294) #74, !noalias !8132
  unreachable

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSfE5indexCs9JgWGBoX3PY_12lance_linalg.exit11: ; preds = %._crit_edge189
  %i.bl = bitcast <8 x float> %.sroa.6.0.lcssa to <4 x i64>
  %i.bm = shufflevector <4 x i64> %i.bl, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bn = bitcast <4 x i64> %i.bm to <8 x float>
  %i.bo = fadd <8 x float> %.sroa.6.0.lcssa, %i.bn ; 2 uses
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 0, i32 6, i32 7, i32 4, i32 4>
  %i.bq = fadd <8 x float> %i.bo, %i.bp           ; 2 uses
  %i.br = shufflevector <8 x float> %i.bq, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bs = fadd <8 x float> %i.bq, %i.br
  %.sroa.087.0.vec.extract = extractelement <8 x float> %i.bs, i64 0
  %i.bt = bitcast <8 x float> %.sroa.039.0.lcssa to <4 x i64>
  %i.bu = shufflevector <4 x i64> %i.bt, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bv = bitcast <4 x i64> %i.bu to <8 x float>
  %i.bw = fadd <8 x float> %.sroa.039.0.lcssa, %i.bv ; 2 uses
  %i.bx = shufflevector <8 x float> %i.bw, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 0, i32 6, i32 7, i32 4, i32 4>
  %i.by = fadd <8 x float> %i.bw, %i.bx           ; 2 uses
  %i.bz = shufflevector <8 x float> %i.by, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ca = fadd <8 x float> %i.by, %i.bz
  %.sroa.0106.0.vec.extract = extractelement <8 x float> %i.ca, i64 0
  %i.cb = fadd float %.sroa.087.0.vec.extract, %.sroa.0106.0.vec.extract
  %i.cc = sub nuw nsw i64 %4, %i.af               ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.af ; 2 uses
  %i.ce = tail call fastcc noundef float @_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l222norm_l2_f32_dispatched(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.cd, i64 noundef range(i64 0, 2305843009213693952) %i.cc) ; 2 uses
  %i.cf = fmul float %i.ce, %i.ce
  %i.cg = fadd float %i.cb, %i.cf
  %i.ch = bitcast <8 x float> %.sroa.621.0.lcssa to <4 x i64>
  %i.ci = shufflevector <4 x i64> %i.ch, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cj = bitcast <4 x i64> %i.ci to <8 x float>
  %i.ck = fadd <8 x float> %.sroa.621.0.lcssa, %i.cj ; 2 uses
  %i.cl = shufflevector <8 x float> %i.ck, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 0, i32 6, i32 7, i32 4, i32 4>
  %i.cm = fadd <8 x float> %i.ck, %i.cl           ; 2 uses
  %i.cn = shufflevector <8 x float> %i.cm, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.co = fadd <8 x float> %i.cm, %i.cn
  %.sroa.0123.0.vec.extract = extractelement <8 x float> %i.co, i64 0
  %i.cp = bitcast <8 x float> %.sroa.041.0.lcssa to <4 x i64>
  %i.cq = shufflevector <4 x i64> %i.cp, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cr = bitcast <4 x i64> %i.cq to <8 x float>
  %i.cs = fadd <8 x float> %.sroa.041.0.lcssa, %i.cr ; 2 uses
  %i.ct = shufflevector <8 x float> %i.cs, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 0, i32 6, i32 7, i32 4, i32 4>
  %i.cu = fadd <8 x float> %i.cs, %i.ct           ; 2 uses
  %i.cv = shufflevector <8 x float> %i.cu, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cw = fadd <8 x float> %i.cu, %i.cv
  %.sroa.0142.0.vec.extract = extractelement <8 x float> %i.cw, i64 0
  %i.cx = fadd float %.sroa.0123.0.vec.extract, %.sroa.0142.0.vec.extract
  %i.cy = and i64 %1, 7
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af
  %i.da = tail call fastcc noundef float @_RNvXs0_NtNtCs9JgWGBoX3PY_12lance_linalg8distance3dotfNtB5_3Dot3dot(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.cz, i64 noundef range(i64 0, 2305843009213693952) %i.cy, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.cd, i64 noundef range(i64 0, 2305843009213693952) %i.cc)
  %i.db = fadd float %i.cx, %i.da
  %i.dc = fdiv float %i.db, %2
  %i.dd = tail call noundef float @llvm.sqrt.f32(float %i.cg)
  %i.de = fdiv float %i.dc, %i.dd
  %i.df = fsub float 1.000000e+00, %i.de
  ret float %i.df
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f32_x8621cosine_with_norms_avx(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, float noundef %2, float noundef %3, ptr noalias noundef nonnull readonly align 4 captures(none) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 2305843009213693944          ; 5 uses
  %i.b = lshr i64 %1, 3                           ; 3 uses
  %.not.i.i23 = icmp eq i64 %i.b, 0
  br i1 %.not.i.i23, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.c = icmp samesign ult i64 %1, 32
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.b, 288230376151711740
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.026 = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ]
  %.sroa.011.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.d = or disjoint i64 %.sroa.011.024, 8        ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.011.024
  %.sroa.013.0.copyload = load <8 x float>, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.011.024
  %.sroa.014.0.copyload = load <8 x float>, ptr %i.f, align 4
  %i.g = fmul <8 x float> %.sroa.013.0.copyload, %.sroa.014.0.copyload
  %i.h = fadd <8 x float> %.sroa.0.026, %i.g
  %i.i = or disjoint i64 %.sroa.011.024, 16       ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %.sroa.013.0.copyload.1 = load <8 x float>, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.d
  %.sroa.014.0.copyload.1 = load <8 x float>, ptr %i.k, align 4
  %i.l = fmul <8 x float> %.sroa.013.0.copyload.1, %.sroa.014.0.copyload.1
  %i.m = fadd <8 x float> %i.h, %i.l
  %i.n = or disjoint i64 %.sroa.011.024, 24       ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %.sroa.013.0.copyload.2 = load <8 x float>, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.i
  %.sroa.014.0.copyload.2 = load <8 x float>, ptr %i.p, align 4
  %i.q = fmul <8 x float> %.sroa.013.0.copyload.2, %.sroa.014.0.copyload.2
  %i.r = fadd <8 x float> %i.m, %i.q
  %i.s = add nuw nsw i64 %.sroa.011.024, 32       ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %.sroa.013.0.copyload.3 = load <8 x float>, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.n
  %.sroa.014.0.copyload.3 = load <8 x float>, ptr %i.u, align 4
  %i.v = fmul <8 x float> %.sroa.013.0.copyload.3, %.sroa.014.0.copyload.3
  %i.w = fadd <8 x float> %i.r, %i.v              ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.026.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.011.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.026.epil = phi <8 x float> [ %i.ab, %.lr.ph.epil ], [ %.sroa.0.026.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.011.024.epil = phi i64 [ %i.x, %.lr.ph.epil ], [ %.sroa.011.024.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.x = add nuw nsw i64 %.sroa.011.024.epil, 8
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.011.024.epil
  %.sroa.013.0.copyload.epil = load <8 x float>, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.011.024.epil
  %.sroa.014.0.copyload.epil = load <8 x float>, ptr %i.z, align 4
  %i.aa = fmul <8 x float> %.sroa.013.0.copyload.epil, %.sroa.014.0.copyload.epil
  %i.ab = fadd <8 x float> %.sroa.0.026.epil, %i.aa ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !8133

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.sroa.0.0.lcssa = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.epil ] ; 2 uses
  %i.ac = icmp samesign ugt i64 %i.a, %5
  br i1 %i.ac, label %bb.b, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSfE5indexCs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef range(i64 0, 2305843009213693945) %i.a, i64 noundef range(i64 0, 2305843009213693952) %5, i64 noundef range(i64 0, 2305843009213693952) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #74, !noalias !8136
  unreachable

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSfE5indexCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.ae = and i64 %1, 7
  %i.af = shufflevector <8 x float> %.sroa.0.0.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ag = shufflevector <8 x float> %.sroa.0.0.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ah = fadd <4 x float> %i.af, %i.ag           ; 2 uses
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.aj = fadd <4 x float> %i.ah, %i.ai           ; 2 uses
  %shift = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.aj, %shift
  %i.ak = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.al = sub nuw nsw i64 %5, %i.a
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  %i.an = tail call fastcc noundef float @_RNvXs0_NtNtCs9JgWGBoX3PY_12lance_linalg8distance3dotfNtB5_3Dot3dot(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, 2305843009213693952) %i.ae, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.am, i64 noundef range(i64 0, 2305843009213693952) %i.al)
  %i.ao = fadd float %i.ak, %i.an
  %i.ap = fdiv float %i.ao, %2
  %i.aq = fdiv float %i.ap, %3
  %i.ar = fsub float 1.000000e+00, %i.aq
  ret float %i.ar
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f32_x8624cosine_with_norms_avx512(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, float noundef %2, float noundef %3, ptr noalias noundef nonnull readonly align 4 captures(none) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #28 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 2305843009213693936          ; 3 uses
  %i.b = lshr i64 %1, 4                           ; 3 uses
  %.not.i.i38 = icmp eq i64 %i.b, 0
  br i1 %.not.i.i38, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.c = icmp samesign ult i64 %1, 64
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.b, 144115188075855868
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.041 = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ]
  %.sroa.019.040 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.p, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.d = or disjoint i64 %.sroa.019.040, 16       ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.019.040
  %.sroa.0.0.copyload.i = load <16 x float>, ptr %i.e, align 4, !noalias !8142
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.019.040
  %.sroa.0.0.copyload.i12 = load <16 x float>, ptr %i.f, align 4, !noalias !8143
  %i.g = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i, <16 x float> %.sroa.0.0.copyload.i12, <16 x float> %.sroa.0.041)
  %i.h = or disjoint i64 %.sroa.019.040, 32       ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %.sroa.0.0.copyload.i.1 = load <16 x float>, ptr %i.i, align 4, !noalias !8142
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.d
  %.sroa.0.0.copyload.i12.1 = load <16 x float>, ptr %i.j, align 4, !noalias !8143
  %i.k = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.1, <16 x float> %.sroa.0.0.copyload.i12.1, <16 x float> %i.g)
  %i.l = or disjoint i64 %.sroa.019.040, 48       ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h
  %.sroa.0.0.copyload.i.2 = load <16 x float>, ptr %i.m, align 4, !noalias !8142
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h
  %.sroa.0.0.copyload.i12.2 = load <16 x float>, ptr %i.n, align 4, !noalias !8143
  %i.o = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.2, <16 x float> %.sroa.0.0.copyload.i12.2, <16 x float> %i.k)
  %i.p = add nuw nsw i64 %.sroa.019.040, 64       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %.sroa.0.0.copyload.i.3 = load <16 x float>, ptr %i.q, align 4, !noalias !8142
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.l
  %.sroa.0.0.copyload.i12.3 = load <16 x float>, ptr %i.r, align 4, !noalias !8143
  %i.s = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.3, <16 x float> %.sroa.0.0.copyload.i12.3, <16 x float> %i.o) ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.041.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.019.040.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.p, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.041.epil = phi <16 x float> [ %i.w, %.lr.ph.epil ], [ %.sroa.0.041.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.019.040.epil = phi i64 [ %i.t, %.lr.ph.epil ], [ %.sroa.019.040.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.t = add nuw nsw i64 %.sroa.019.040.epil, 16
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.019.040.epil
  %.sroa.0.0.copyload.i.epil = load <16 x float>, ptr %i.u, align 4, !noalias !8142
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.019.040.epil
  %.sroa.0.0.copyload.i12.epil = load <16 x float>, ptr %i.v, align 4, !noalias !8143
  %i.w = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.epil, <16 x float> %.sroa.0.0.copyload.i12.epil, <16 x float> %.sroa.0.041.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !8141

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.sroa.0.0.lcssa = phi <16 x float> [ zeroinitializer, %bb.a ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ], [ %i.w, %.lr.ph.epil ] ; 2 uses
  %i.x = shufflevector <16 x float> %.sroa.0.0.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.y = shufflevector <16 x float> %.sroa.0.0.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.z = fadd <8 x float> %i.x, %i.y              ; 2 uses
  %i.aa = shufflevector <8 x float> %i.z, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ab = shufflevector <8 x float> %i.z, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ac = fadd <4 x float> %i.aa, %i.ab           ; 2 uses
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ae = fadd <4 x float> %i.ac, %i.ad           ; 2 uses
  %shift = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.ae, %shift
  %i.af = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %.not = icmp eq i64 %i.a, %1
  br i1 %.not, label %._crit_edge46, label %.lr.ph45.preheader

.lr.ph45.preheader:                               ; preds = %._crit_edge
  %umax = tail call i64 @llvm.umax.i64(i64 %5, i64 %i.a) ; 2 uses
  br label %.lr.ph45

._crit_edge46:                                    ; preds = %bb.b, %._crit_edge
  %.sroa.04.0.lcssa = phi float [ %i.af, %._crit_edge ], [ %i.ap, %bb.b ]
  %i.ag = fdiv float %.sroa.04.0.lcssa, %2
  %i.ah = fdiv float %i.ag, %3
  %i.ai = fsub float 1.000000e+00, %i.ah
  ret float %i.ai

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %bb.b
  %.sroa.04.043 = phi float [ %i.ap, %bb.b ], [ %i.af, %.lr.ph45.preheader ]
  %.sroa.021.042 = phi i64 [ %i.aj, %bb.b ], [ %i.a, %.lr.ph45.preheader ] ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.021.042, %umax
  br i1 %exitcond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph45
  %i.aj = add nuw nsw i64 %.sroa.021.042, 1       ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.021.042
  %i.al = load float, ptr %i.ak, align 4, !noundef !18
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.021.042
  %i.an = load float, ptr %i.am, align 4, !noundef !18
  %i.ao = fmul float %i.al, %i.an
  %i.ap = fadd float %.sroa.04.043, %i.ao         ; 2 uses
  %i.aq = icmp samesign ult i64 %i.aj, %1
  br i1 %i.aq, label %.lr.ph45, label %._crit_edge46

bb.c:                                             ; preds = %.lr.ph45
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f32_x8625cosine_with_norms_avx_fma(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, float noundef %2, float noundef %3, ptr noalias noundef nonnull readonly align 4 captures(none) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 2305843009213693936          ; 3 uses
  %i.b = lshr i64 %1, 4                           ; 3 uses
  switch i64 %i.b, label %.lr.ph.preheader.new [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.epil.preheader
  ]

.lr.ph.preheader.new:                             ; preds = %bb.a
  %unroll_iter = and i64 %i.b, 144115188075855870
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.0115 = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.o, %.lr.ph ]
  %.sroa.6.0114 = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.p, %.lr.ph ]
  %.sroa.025.0113 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.j, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = or disjoint i64 %.sroa.025.0113, 16      ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.025.0113 ; 2 uses
  %.sroa.0.0.copyload.i11 = load <8 x float>, ptr %i.d, align 4, !noalias !8159
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.0.0.copyload.i = load <8 x float>, ptr %i.e, align 4, !noalias !8160
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.025.0113 ; 2 uses
  %.sroa.0.0.copyload.i13 = load <8 x float>, ptr %i.f, align 4, !noalias !8161
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.0.0.copyload.i12 = load <8 x float>, ptr %i.g, align 4, !noalias !8162
  %i.h = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i11, <8 x float> %.sroa.0.0.copyload.i13, <8 x float> %.sroa.0.0115)
  %i.i = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i, <8 x float> %.sroa.0.0.copyload.i12, <8 x float> %.sroa.6.0114)
  %i.j = add nuw nsw i64 %.sroa.025.0113, 32      ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i11.1 = load <8 x float>, ptr %i.k, align 4, !noalias !8159
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.0.0.copyload.i.1 = load <8 x float>, ptr %i.l, align 4, !noalias !8160
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i13.1 = load <8 x float>, ptr %i.m, align 4, !noalias !8161
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.0.0.copyload.i12.1 = load <8 x float>, ptr %i.n, align 4, !noalias !8162
  %i.o = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i11.1, <8 x float> %.sroa.0.0.copyload.i13.1, <8 x float> %i.h) ; 3 uses
  %i.p = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i.1, <8 x float> %.sroa.0.0.copyload.i12.1, <8 x float> %i.i) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.q = and i64 %1, 16
  %lcmp.mod.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %bb.a, %._crit_edge.loopexit.unr-lcssa
  %.sroa.0.0115.epil.init = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.o, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.6.0114.epil.init = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.p, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.025.0113.epil.init = phi i64 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod139 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod139)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.025.0113.epil.init ; 2 uses
  %.sroa.0.0.copyload.i11.epil = load <8 x float>, ptr %i.r, align 4, !noalias !8159
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.0.0.copyload.i.epil = load <8 x float>, ptr %i.s, align 4, !noalias !8160
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.025.0113.epil.init ; 2 uses
  %.sroa.0.0.copyload.i13.epil = load <8 x float>, ptr %i.t, align 4, !noalias !8161
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.0.0.copyload.i12.epil = load <8 x float>, ptr %i.u, align 4, !noalias !8162
  %i.v = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i11.epil, <8 x float> %.sroa.0.0.copyload.i13.epil, <8 x float> %.sroa.0.0115.epil.init)
  %i.w = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i.epil, <8 x float> %.sroa.0.0.copyload.i12.epil, <8 x float> %.sroa.6.0114.epil.init)
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa136 = phi <8 x float> [ %i.o, %._crit_edge.loopexit.unr-lcssa ], [ %i.v, %.lr.ph.epil.preheader ]
  %.lcssa135 = phi <8 x float> [ %i.p, %._crit_edge.loopexit.unr-lcssa ], [ %i.w, %.lr.ph.epil.preheader ]
  %i.x = fadd <8 x float> %.lcssa135, %.lcssa136
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %.sroa.6.0.lcssa = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.x, %._crit_edge.loopexit ] ; 2 uses
  %i.y = and i64 %1, 2305843009213693944          ; 6 uses
  %.not.i.i7117.not = icmp samesign ugt i64 %i.y, %i.a
  br i1 %.not.i.i7117.not, label %.lr.ph122.preheader, label %._crit_edge123

.lr.ph122.preheader:                              ; preds = %._crit_edge
  %.sroa.06.0.i.i.i = lshr i64 %1, 3
  %i.z = and i64 %.sroa.06.0.i.i.i, 1             ; 5 uses
  %i.aa = add nsw i64 %i.z, -1
  %lcmp.mod141.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod141.not, label %.lr.ph122.prol.loopexit, label %.lr.ph122.prol

.lr.ph122.prol:                                   ; preds = %.lr.ph122.preheader, %.lr.ph122.prol
  %.sroa.544.0120.prol = phi i64 [ %i.ac, %.lr.ph122.prol ], [ %i.z, %.lr.ph122.preheader ]
  %.sroa.043.0119.prol = phi i64 [ %i.ab, %.lr.ph122.prol ], [ %i.a, %.lr.ph122.preheader ] ; 3 uses
  %.sroa.031.0118.prol = phi <8 x float> [ %i.af, %.lr.ph122.prol ], [ zeroinitializer, %.lr.ph122.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph122.prol ], [ 0, %.lr.ph122.preheader ]
  %i.ab = add i64 %.sroa.043.0119.prol, 8         ; 2 uses
  %i.ac = add i64 %.sroa.544.0120.prol, -1        ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.043.0119.prol
  %.sroa.0.0.copyload.i14.prol = load <8 x float>, ptr %i.ad, align 4, !noalias !8163
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.043.0119.prol
  %.sroa.0.0.copyload.i15.prol = load <8 x float>, ptr %i.ae, align 4, !noalias !8164
  %i.af = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i14.prol, <8 x float> %.sroa.0.0.copyload.i15.prol, <8 x float> %.sroa.031.0118.prol) ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.z
  br i1 %prol.iter.cmp.not, label %.lr.ph122.prol.loopexit, label %.lr.ph122.prol, !llvm.loop !8156

.lr.ph122.prol.loopexit:                          ; preds = %.lr.ph122.prol, %.lr.ph122.preheader
  %.lcssa.unr = phi <8 x float> [ poison, %.lr.ph122.preheader ], [ %i.af, %.lr.ph122.prol ]
  %.sroa.544.0120.unr = phi i64 [ %i.z, %.lr.ph122.preheader ], [ %i.ac, %.lr.ph122.prol ]
  %.sroa.043.0119.unr = phi i64 [ %i.a, %.lr.ph122.preheader ], [ %i.ab, %.lr.ph122.prol ]
  %.sroa.031.0118.unr = phi <8 x float> [ zeroinitializer, %.lr.ph122.preheader ], [ %i.af, %.lr.ph122.prol ]
  %i.ag = icmp ult i64 %i.aa, 3
  br i1 %i.ag, label %._crit_edge123, label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.prol.loopexit, %.lr.ph122
  %.sroa.544.0120 = phi i64 [ %i.au, %.lr.ph122 ], [ %.sroa.544.0120.unr, %.lr.ph122.prol.loopexit ]
  %.sroa.043.0119 = phi i64 [ %i.at, %.lr.ph122 ], [ %.sroa.043.0119.unr, %.lr.ph122.prol.loopexit ] ; 6 uses
  %.sroa.031.0118 = phi <8 x float> [ %i.ax, %.lr.ph122 ], [ %.sroa.031.0118.unr, %.lr.ph122.prol.loopexit ]
  %i.ah = add i64 %.sroa.043.0119, 8              ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.043.0119
  %.sroa.0.0.copyload.i14 = load <8 x float>, ptr %i.ai, align 4, !noalias !8163
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.043.0119
  %.sroa.0.0.copyload.i15 = load <8 x float>, ptr %i.aj, align 4, !noalias !8164
  %i.ak = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i14, <8 x float> %.sroa.0.0.copyload.i15, <8 x float> %.sroa.031.0118)
  %i.al = add i64 %.sroa.043.0119, 16             ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %.sroa.0.0.copyload.i14.1 = load <8 x float>, ptr %i.am, align 4, !noalias !8163
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ah
  %.sroa.0.0.copyload.i15.1 = load <8 x float>, ptr %i.an, align 4, !noalias !8164
  %i.ao = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i14.1, <8 x float> %.sroa.0.0.copyload.i15.1, <8 x float> %i.ak)
  %i.ap = add i64 %.sroa.043.0119, 24             ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al
  %.sroa.0.0.copyload.i14.2 = load <8 x float>, ptr %i.aq, align 4, !noalias !8163
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.al
  %.sroa.0.0.copyload.i15.2 = load <8 x float>, ptr %i.ar, align 4, !noalias !8164
  %i.as = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i14.2, <8 x float> %.sroa.0.0.copyload.i15.2, <8 x float> %i.ao)
  %i.at = add i64 %.sroa.043.0119, 32
  %i.au = add i64 %.sroa.544.0120, -4             ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  %.sroa.0.0.copyload.i14.3 = load <8 x float>, ptr %i.av, align 4, !noalias !8163
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ap
  %.sroa.0.0.copyload.i15.3 = load <8 x float>, ptr %i.aw, align 4, !noalias !8164
  %i.ax = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i14.3, <8 x float> %.sroa.0.0.copyload.i15.3, <8 x float> %i.as) ; 2 uses
  %.not.i.i7.3 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i7.3, label %._crit_edge123, label %.lr.ph122

._crit_edge123:                                   ; preds = %.lr.ph122.prol.loopexit, %.lr.ph122, %._crit_edge
  %.sroa.031.0.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge ], [ %.lcssa.unr, %.lr.ph122.prol.loopexit ], [ %i.ax, %.lr.ph122 ] ; 2 uses
  %i.ay = icmp samesign ugt i64 %i.y, %5
  br i1 %i.ay, label %bb.b, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSfE5indexCs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.b:                                             ; preds = %._crit_edge123
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef range(i64 0, 2305843009213693945) %i.y, i64 noundef range(i64 0, 2305843009213693952) %5, i64 noundef range(i64 0, 2305843009213693952) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #74, !noalias !8165
  unreachable

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSfE5indexCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %._crit_edge123
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.y
  %i.ba = and i64 %1, 7
  %i.bb = bitcast <8 x float> %.sroa.6.0.lcssa to <4 x i64>
  %i.bc = shufflevector <4 x i64> %i.bb, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bd = bitcast <4 x i64> %i.bc to <8 x float>
  %i.be = fadd <8 x float> %.sroa.6.0.lcssa, %i.bd ; 2 uses
  %i.bf = shufflevector <8 x float> %i.be, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 0, i32 6, i32 7, i32 4, i32 4>
  %i.bg = fadd <8 x float> %i.be, %i.bf           ; 2 uses
  %i.bh = shufflevector <8 x float> %i.bg, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bi = fadd <8 x float> %i.bg, %i.bh
  %.sroa.062.0.vec.extract = extractelement <8 x float> %i.bi, i64 0
  %i.bj = bitcast <8 x float> %.sroa.031.0.lcssa to <4 x i64>
  %i.bk = shufflevector <4 x i64> %i.bj, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bl = bitcast <4 x i64> %i.bk to <8 x float>
  %i.bm = fadd <8 x float> %.sroa.031.0.lcssa, %i.bl ; 2 uses
  %i.bn = shufflevector <8 x float> %i.bm, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 0, i32 6, i32 7, i32 4, i32 4>
  %i.bo = fadd <8 x float> %i.bm, %i.bn           ; 2 uses
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bq = fadd <8 x float> %i.bo, %i.bp
  %.sroa.081.0.vec.extract = extractelement <8 x float> %i.bq, i64 0
  %i.br = fadd float %.sroa.062.0.vec.extract, %.sroa.081.0.vec.extract
  %i.bs = sub nuw nsw i64 %5, %i.y
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.y
  %i.bu = tail call fastcc noundef float @_RNvXs0_NtNtCs9JgWGBoX3PY_12lance_linalg8distance3dotfNtB5_3Dot3dot(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.az, i64 noundef range(i64 0, 2305843009213693952) %i.ba, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.bt, i64 noundef range(i64 0, 2305843009213693952) %i.bs)
  %i.bv = fadd float %i.br, %i.bu
  %i.bw = fdiv float %i.bv, %2
  %i.bx = fdiv float %i.bw, %3
  %i.by = fsub float 1.000000e+00, %i.bx
  ret float %i.by
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f64_x8615cosine_fast_avx(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, float noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) %3, i64 noundef range(i64 0, 1152921504606846976) %4) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 1152921504606846972          ; 7 uses
  %i.b = lshr i64 %1, 2                           ; 3 uses
  switch i64 %i.b, label %.lr.ph.preheader.new [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.epil.preheader
  ]

.lr.ph.preheader.new:                             ; preds = %bb.a
  %unroll_iter = and i64 %i.b, 288230376151711742
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.048 = phi <4 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.n, %.lr.ph ]
  %.sroa.02.047 = phi <4 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.p, %.lr.ph ]
  %.sroa.017.046 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.j, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = or disjoint i64 %.sroa.017.046, 4        ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.017.046
  %.sroa.030.0.copyload = load <4 x double>, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.017.046
  %.sroa.031.0.copyload = load <4 x double>, ptr %i.e, align 8 ; 3 uses
  %i.f = fmul <4 x double> %.sroa.030.0.copyload, %.sroa.031.0.copyload
  %i.g = fadd <4 x double> %.sroa.0.048, %i.f
  %i.h = fmul <4 x double> %.sroa.031.0.copyload, %.sroa.031.0.copyload
  %i.i = fadd <4 x double> %.sroa.02.047, %i.h
  %i.j = add nuw nsw i64 %.sroa.017.046, 8        ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %.sroa.030.0.copyload.1 = load <4 x double>, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.c
  %.sroa.031.0.copyload.1 = load <4 x double>, ptr %i.l, align 8 ; 3 uses
  %i.m = fmul <4 x double> %.sroa.030.0.copyload.1, %.sroa.031.0.copyload.1
  %i.n = fadd <4 x double> %i.g, %i.m             ; 3 uses
  %i.o = fmul <4 x double> %.sroa.031.0.copyload.1, %.sroa.031.0.copyload.1
  %i.p = fadd <4 x double> %i.i, %i.o             ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.q = and i64 %1, 4
  %lcmp.mod.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %bb.a, %._crit_edge.loopexit.unr-lcssa
  %.sroa.0.048.epil.init = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.n, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.02.047.epil.init = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.p, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.017.046.epil.init = phi i64 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod68 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.017.046.epil.init
  %.sroa.030.0.copyload.epil = load <4 x double>, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.017.046.epil.init
  %.sroa.031.0.copyload.epil = load <4 x double>, ptr %i.s, align 8 ; 3 uses
  %i.t = fmul <4 x double> %.sroa.030.0.copyload.epil, %.sroa.031.0.copyload.epil
  %i.u = fadd <4 x double> %.sroa.0.048.epil.init, %i.t
  %i.v = fmul <4 x double> %.sroa.031.0.copyload.epil, %.sroa.031.0.copyload.epil
  %i.w = fadd <4 x double> %.sroa.02.047.epil.init, %i.v
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.sroa.02.0.lcssa = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.p, %._crit_edge.loopexit.unr-lcssa ], [ %i.w, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.0.0.lcssa = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.n, %._crit_edge.loopexit.unr-lcssa ], [ %i.u, %.lr.ph.epil.preheader ] ; 2 uses
  %i.x = icmp samesign ugt i64 %i.a, %4
  br i1 %i.x, label %bb.b, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef range(i64 0, 1152921504606846973) %i.a, i64 noundef range(i64 0, 1152921504606846976) %4, i64 noundef range(i64 0, 1152921504606846976) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #74, !noalias !8179
  unreachable

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %._crit_edge
  %.idx41 = shl nuw nsw i64 %i.a, 3
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %.idx41 ; 8 uses
  %i.z = icmp samesign eq i64 %i.a, %4
  br i1 %i.z, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11, label %bb.c

bb.c:                                             ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit
  %i.aa = sub nuw nsw i64 %4, %i.a                ; 3 uses
  %xtraiter69 = and i64 %4, 3                     ; 4 uses
  %i.ab = sub nsw i64 %i.a, %4
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter73 = sub nsw i64 %i.aa, %xtraiter69
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %.new ], [ %i.as, %bb.d ] ; 5 uses
  %.sroa.02.0.i.i.i.i = phi double [ -0.000000e+00, %.new ], [ %i.ar, %bb.d ]
  %niter74 = phi i64 [ 0, %.new ], [ %niter74.next.3, %bb.d ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i = load double, ptr %i.ad, align 8, !noundef !18 ; 2 uses
  %i.ae = fmul double %.val.i.i.i.i, %.val.i.i.i.i
  %i.af = fadd double %.sroa.02.0.i.i.i.i, %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sroa.04.0.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val.i.i.i.i.1 = load double, ptr %i.ah, align 8, !noundef !18 ; 2 uses
  %i.ai = fmul double %.val.i.i.i.i.1, %.val.i.i.i.i.1
  %i.aj = fadd double %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sroa.04.0.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val.i.i.i.i.2 = load double, ptr %i.al, align 8, !noundef !18 ; 2 uses
  %i.am = fmul double %.val.i.i.i.i.2, %.val.i.i.i.i.2
  %i.an = fadd double %i.aj, %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sroa.04.0.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.val.i.i.i.i.3 = load double, ptr %i.ap, align 8, !noundef !18 ; 2 uses
  %i.aq = fmul double %.val.i.i.i.i.3, %.val.i.i.i.i.3
  %i.ar = fadd double %i.an, %i.aq                ; 3 uses
  %i.as = add nuw i64 %.sroa.04.0.i.i.i.i, 4      ; 2 uses
  %niter74.next.3 = add i64 %niter74, 4           ; 2 uses
  %niter74.ncmp.3 = icmp eq i64 %niter74.next.3, %unroll_iter73
  br i1 %niter74.ncmp.3, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa, label %bb.d

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br i1 %lcmp.mod70.not, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa, %bb.c
  %.sroa.04.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %i.as, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi double [ -0.000000e+00, %bb.c ], [ %i.ar, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter69, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.sroa.04.0.i.i.i.i.epil = phi i64 [ %.sroa.04.0.i.i.i.i.epil.init, %.epil.preheader ], [ %i.aw, %bb.e ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil = phi double [ %.sroa.02.0.i.i.i.i.epil.init, %.epil.preheader ], [ %i.av, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sroa.04.0.i.i.i.i.epil
  %.val.i.i.i.i.epil = load double, ptr %i.at, align 8, !noundef !18 ; 2 uses
  %i.au = fmul double %.val.i.i.i.i.epil, %.val.i.i.i.i.epil
  %i.av = fadd double %.sroa.02.0.i.i.i.i.epil, %i.au ; 2 uses
  %i.aw = add nuw i64 %.sroa.04.0.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter69
  br i1 %epil.iter.cmp.not, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11, label %bb.e, !llvm.loop !8168

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11: ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa, %bb.e, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit
  %.pre-phi = phi i64 [ 0, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.aa, %bb.e ], [ %i.aa, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa ]
  %.sroa.0.0.i.i.i.i = phi double [ -0.000000e+00, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.ar, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa ], [ %i.av, %bb.e ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a ; 3 uses
  %.idx42 = and i64 %1, 3
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %.idx42) ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f64_x8615cosine_fast_avxs_0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11
end_hunk_3
begin_hunk_4_@_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f64_x8618cosine_fast_avx512:bb.a
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.050.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.02.049.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.025.048.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod77 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod77)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.050.epil = phi <8 x double> [ %i.aa, %.lr.ph.epil ], [ %.sroa.0.050.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.02.049.epil = phi <8 x double> [ %i.ab, %.lr.ph.epil ], [ %.sroa.02.049.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.025.048.epil = phi i64 [ %i.x, %.lr.ph.epil ], [ %.sroa.025.048.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.x = add nuw nsw i64 %.sroa.025.048.epil, 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.025.048.epil
  %.sroa.0.0.copyload.i.epil = load <8 x double>, ptr %i.y, align 8, !noalias !8186
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.025.048.epil
  %.sroa.0.0.copyload.i18.epil = load <8 x double>, ptr %i.z, align 8, !noalias !8187 ; 3 uses
  %i.aa = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %.sroa.0.0.copyload.i.epil, <8 x double> %.sroa.0.0.copyload.i18.epil, <8 x double> %.sroa.0.050.epil) ; 2 uses
  %i.ab = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %.sroa.0.0.copyload.i18.epil, <8 x double> %.sroa.0.0.copyload.i18.epil, <8 x double> %.sroa.02.049.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !8185

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.sroa.02.0.lcssa = phi <8 x double> [ zeroinitializer, %bb.a ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.epil ] ; 2 uses
  %.sroa.0.0.lcssa = phi <8 x double> [ zeroinitializer, %bb.a ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %.lr.ph.epil ] ; 2 uses
  %i.ac = shufflevector <8 x double> %.sroa.0.0.lcssa, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ad = shufflevector <8 x double> %.sroa.0.0.lcssa, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ae = fadd <4 x double> %i.ac, %i.ad          ; 2 uses
  %i.af = shufflevector <4 x double> %i.ae, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.ag = shufflevector <4 x double> %i.ae, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.ah = fadd <2 x double> %i.af, %i.ag          ; 2 uses
  %i.ai = shufflevector <8 x double> %.sroa.02.0.lcssa, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aj = shufflevector <8 x double> %.sroa.02.0.lcssa, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ak = fadd <4 x double> %i.ai, %i.aj          ; 2 uses
  %i.al = shufflevector <4 x double> %i.ak, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.am = shufflevector <4 x double> %i.ak, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.an = fadd <2 x double> %i.al, %i.am          ; 2 uses
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> %i.ah, <2 x i32> <i32 0, i32 2>
  %i.ap = shufflevector <2 x double> %i.an, <2 x double> %i.ah, <2 x i32> <i32 1, i32 3>
  %i.aq = fadd <2 x double> %i.ao, %i.ap          ; 2 uses
  %.not = icmp eq i64 %i.a, %1
  br i1 %.not, label %._crit_edge57, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %._crit_edge
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 %i.a) ; 2 uses
  br label %.lr.ph56

._crit_edge57:                                    ; preds = %bb.b, %._crit_edge
  %i.ar = phi <2 x double> [ %i.aq, %._crit_edge ], [ %i.bj, %bb.b ]
  %i.as = fptrunc <2 x double> %i.ar to <2 x float> ; 2 uses
  %i.at = extractelement <2 x float> %i.as, i64 1
  %i.au = fdiv float %i.at, %2
  %i.av = extractelement <2 x float> %i.as, i64 0
  %i.aw = tail call noundef float @llvm.sqrt.f32(float %i.av)
  %i.ax = fdiv float %i.au, %i.aw
  %i.ay = fsub float 1.000000e+00, %i.ax
  ret float %i.ay

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %bb.b
  %.sroa.027.052 = phi i64 [ %i.ba, %bb.b ], [ %i.a, %.lr.ph56.preheader ] ; 4 uses
  %i.az = phi <2 x double> [ %i.bj, %bb.b ], [ %i.aq, %.lr.ph56.preheader ]
  %exitcond.not = icmp eq i64 %.sroa.027.052, %umax
  br i1 %exitcond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph56
  %i.ba = add nuw nsw i64 %.sroa.027.052, 1       ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.027.052
  %i.bc = load double, ptr %i.bb, align 8, !noundef !18
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.027.052
  %i.be = load double, ptr %i.bd, align 8, !noundef !18
  %i.bf = insertelement <2 x double> poison, double %i.be, i64 0 ; 2 uses
  %i.bg = insertelement <2 x double> %i.bf, double %i.bc, i64 1
  %i.bh = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x double> %i.bg, %i.bh
  %i.bj = fadd <2 x double> %i.az, %i.bi          ; 2 uses
  %i.bk = icmp samesign ult i64 %i.ba, %1
  br i1 %i.bk, label %.lr.ph56, label %._crit_edge57

bb.c:                                             ; preds = %.lr.ph56
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @299) #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f64_x8619cosine_fast_avx_fma(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, float noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) %3, i64 noundef range(i64 0, 1152921504606846976) %4) unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 1152921504606846968          ; 3 uses
  %i.b = lshr i64 %1, 3                           ; 3 uses
  switch i64 %i.b, label %.lr.ph.preheader.new [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.epil.preheader
  ]

.lr.ph.preheader.new:                             ; preds = %bb.a
  %unroll_iter = and i64 %i.b, 144115188075855870
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.0158 = phi <4 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ]
  %.sroa.6.0157 = phi <4 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ]
  %.sroa.019.0156 = phi <4 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.q, %.lr.ph ]
  %.sroa.621.0155 = phi <4 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.r, %.lr.ph ]
  %.sroa.030.0154 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.l, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = or disjoint i64 %.sroa.030.0154, 8       ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.030.0154 ; 2 uses
  %.sroa.0.0.copyload.i12 = load <4 x double>, ptr %i.d, align 8, !noalias !8214
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.0.0.copyload.i = load <4 x double>, ptr %i.e, align 8, !noalias !8215
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.030.0154 ; 2 uses
  %.sroa.0.0.copyload.i14 = load <4 x double>, ptr %i.f, align 8, !noalias !8216 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.0.0.copyload.i13 = load <4 x double>, ptr %i.g, align 8, !noalias !8217 ; 3 uses
  %i.h = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i12, <4 x double> %.sroa.0.0.copyload.i14, <4 x double> %.sroa.019.0156)
  %i.i = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i, <4 x double> %.sroa.0.0.copyload.i13, <4 x double> %.sroa.621.0155)
  %i.j = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i14, <4 x double> %.sroa.0.0.copyload.i14, <4 x double> %.sroa.0.0158)
  %i.k = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i13, <4 x double> %.sroa.0.0.copyload.i13, <4 x double> %.sroa.6.0157)
  %i.l = add nuw nsw i64 %.sroa.030.0154, 16      ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i12.1 = load <4 x double>, ptr %i.m, align 8, !noalias !8214
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.0.0.copyload.i.1 = load <4 x double>, ptr %i.n, align 8, !noalias !8215
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i14.1 = load <4 x double>, ptr %i.o, align 8, !noalias !8216 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.0.0.copyload.i13.1 = load <4 x double>, ptr %i.p, align 8, !noalias !8217 ; 3 uses
  %i.q = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i12.1, <4 x double> %.sroa.0.0.copyload.i14.1, <4 x double> %i.h) ; 3 uses
  %i.r = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i.1, <4 x double> %.sroa.0.0.copyload.i13.1, <4 x double> %i.i) ; 3 uses
  %i.s = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i14.1, <4 x double> %.sroa.0.0.copyload.i14.1, <4 x double> %i.j) ; 3 uses
  %i.t = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i13.1, <4 x double> %.sroa.0.0.copyload.i13.1, <4 x double> %i.k) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.u = and i64 %1, 8
  %lcmp.mod.not = icmp eq i64 %i.u, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %bb.a, %._crit_edge.loopexit.unr-lcssa
  %.sroa.0.0158.epil.init = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.6.0157.epil.init = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.019.0156.epil.init = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.q, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.621.0155.epil.init = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.r, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.030.0154.epil.init = phi i64 [ 0, %bb.a ], [ %i.l, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod209 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod209)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.030.0154.epil.init ; 2 uses
  %.sroa.0.0.copyload.i12.epil = load <4 x double>, ptr %i.v, align 8, !noalias !8214
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.0.0.copyload.i.epil = load <4 x double>, ptr %i.w, align 8, !noalias !8215
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.030.0154.epil.init ; 2 uses
  %.sroa.0.0.copyload.i14.epil = load <4 x double>, ptr %i.x, align 8, !noalias !8216 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.0.0.copyload.i13.epil = load <4 x double>, ptr %i.y, align 8, !noalias !8217 ; 3 uses
  %i.z = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i12.epil, <4 x double> %.sroa.0.0.copyload.i14.epil, <4 x double> %.sroa.019.0156.epil.init)
  %i.aa = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i.epil, <4 x double> %.sroa.0.0.copyload.i13.epil, <4 x double> %.sroa.621.0155.epil.init)
  %i.ab = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i14.epil, <4 x double> %.sroa.0.0.copyload.i14.epil, <4 x double> %.sroa.0.0158.epil.init)
  %i.ac = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i13.epil, <4 x double> %.sroa.0.0.copyload.i13.epil, <4 x double> %.sroa.6.0157.epil.init)
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa204 = phi <4 x double> [ %i.q, %._crit_edge.loopexit.unr-lcssa ], [ %i.z, %.lr.ph.epil.preheader ]
  %.lcssa203 = phi <4 x double> [ %i.r, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %.lr.ph.epil.preheader ]
  %.lcssa202 = phi <4 x double> [ %i.s, %._crit_edge.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.epil.preheader ]
  %.lcssa201 = phi <4 x double> [ %i.t, %._crit_edge.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.epil.preheader ]
  %i.ad = fadd <4 x double> %.lcssa201, %.lcssa202
  %i.ae = fadd <4 x double> %.lcssa203, %.lcssa204
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %.sroa.621.0.lcssa = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.ae, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.6.0.lcssa = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.ad, %._crit_edge.loopexit ] ; 2 uses
  %i.af = and i64 %1, 1152921504606846972         ; 8 uses
  %.not.i.i7162.not = icmp samesign ugt i64 %i.af, %i.a
  br i1 %.not.i.i7162.not, label %.lr.ph168.preheader, label %._crit_edge169

.lr.ph168.preheader:                              ; preds = %._crit_edge
  %.sroa.06.0.i.i.i = lshr i64 %1, 2
  %i.ag = and i64 %.sroa.06.0.i.i.i, 1            ; 5 uses
  %i.ah = add nsw i64 %i.ag, -1
  %lcmp.mod211.not = icmp eq i64 %i.ag, 0
  br i1 %lcmp.mod211.not, label %.lr.ph168.prol.loopexit, label %.lr.ph168.prol

.lr.ph168.prol:                                   ; preds = %.lr.ph168.preheader, %.lr.ph168.prol
  %.sroa.039.0166.prol = phi <4 x double> [ %i.an, %.lr.ph168.prol ], [ zeroinitializer, %.lr.ph168.preheader ]
  %.sroa.041.0165.prol = phi <4 x double> [ %i.am, %.lr.ph168.prol ], [ zeroinitializer, %.lr.ph168.preheader ]
  %.sroa.053.0164.prol = phi i64 [ %i.ai, %.lr.ph168.prol ], [ %i.a, %.lr.ph168.preheader ] ; 3 uses
  %.sroa.554.0163.prol = phi i64 [ %i.aj, %.lr.ph168.prol ], [ %i.ag, %.lr.ph168.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph168.prol ], [ 0, %.lr.ph168.preheader ]
  %i.ai = add i64 %.sroa.053.0164.prol, 4         ; 2 uses
  %i.aj = add i64 %.sroa.554.0163.prol, -1        ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.053.0164.prol
  %.sroa.0.0.copyload.i15.prol = load <4 x double>, ptr %i.ak, align 8, !noalias !8218
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.053.0164.prol
  %.sroa.0.0.copyload.i16.prol = load <4 x double>, ptr %i.al, align 8, !noalias !8219 ; 3 uses
  %i.am = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i15.prol, <4 x double> %.sroa.0.0.copyload.i16.prol, <4 x double> %.sroa.041.0165.prol) ; 3 uses
  %i.an = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i16.prol, <4 x double> %.sroa.0.0.copyload.i16.prol, <4 x double> %.sroa.039.0166.prol) ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.ag
  br i1 %prol.iter.cmp.not, label %.lr.ph168.prol.loopexit, label %.lr.ph168.prol, !llvm.loop !8200

.lr.ph168.prol.loopexit:                          ; preds = %.lr.ph168.prol, %.lr.ph168.preheader
  %.lcssa200.unr = phi <4 x double> [ poison, %.lr.ph168.preheader ], [ %i.am, %.lr.ph168.prol ]
  %.lcssa199.unr = phi <4 x double> [ poison, %.lr.ph168.preheader ], [ %i.an, %.lr.ph168.prol ]
  %.sroa.039.0166.unr = phi <4 x double> [ zeroinitializer, %.lr.ph168.preheader ], [ %i.an, %.lr.ph168.prol ]
  %.sroa.041.0165.unr = phi <4 x double> [ zeroinitializer, %.lr.ph168.preheader ], [ %i.am, %.lr.ph168.prol ]
  %.sroa.053.0164.unr = phi i64 [ %i.a, %.lr.ph168.preheader ], [ %i.ai, %.lr.ph168.prol ]
  %.sroa.554.0163.unr = phi i64 [ %i.ag, %.lr.ph168.preheader ], [ %i.aj, %.lr.ph168.prol ]
  %i.ao = icmp ult i64 %i.ah, 3
  br i1 %i.ao, label %._crit_edge169, label %.lr.ph168

.lr.ph168:                                        ; preds = %.lr.ph168.prol.loopexit, %.lr.ph168
  %.sroa.039.0166 = phi <4 x double> [ %i.bj, %.lr.ph168 ], [ %.sroa.039.0166.unr, %.lr.ph168.prol.loopexit ]
  %.sroa.041.0165 = phi <4 x double> [ %i.bi, %.lr.ph168 ], [ %.sroa.041.0165.unr, %.lr.ph168.prol.loopexit ]
  %.sroa.053.0164 = phi i64 [ %i.be, %.lr.ph168 ], [ %.sroa.053.0164.unr, %.lr.ph168.prol.loopexit ] ; 6 uses
  %.sroa.554.0163 = phi i64 [ %i.bf, %.lr.ph168 ], [ %.sroa.554.0163.unr, %.lr.ph168.prol.loopexit ]
  %i.ap = add i64 %.sroa.053.0164, 4              ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.053.0164
  %.sroa.0.0.copyload.i15 = load <4 x double>, ptr %i.aq, align 8, !noalias !8218
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.053.0164
  %.sroa.0.0.copyload.i16 = load <4 x double>, ptr %i.ar, align 8, !noalias !8219 ; 3 uses
  %i.as = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i15, <4 x double> %.sroa.0.0.copyload.i16, <4 x double> %.sroa.041.0165)
  %i.at = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i16, <4 x double> %.sroa.0.0.copyload.i16, <4 x double> %.sroa.039.0166)
  %i.au = add i64 %.sroa.053.0164, 8              ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap
  %.sroa.0.0.copyload.i15.1 = load <4 x double>, ptr %i.av, align 8, !noalias !8218
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ap
  %.sroa.0.0.copyload.i16.1 = load <4 x double>, ptr %i.aw, align 8, !noalias !8219 ; 3 uses
  %i.ax = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i15.1, <4 x double> %.sroa.0.0.copyload.i16.1, <4 x double> %i.as)
  %i.ay = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i16.1, <4 x double> %.sroa.0.0.copyload.i16.1, <4 x double> %i.at)
  %i.az = add i64 %.sroa.053.0164, 12             ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au
  %.sroa.0.0.copyload.i15.2 = load <4 x double>, ptr %i.ba, align 8, !noalias !8218
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.au
  %.sroa.0.0.copyload.i16.2 = load <4 x double>, ptr %i.bb, align 8, !noalias !8219 ; 3 uses
  %i.bc = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i15.2, <4 x double> %.sroa.0.0.copyload.i16.2, <4 x double> %i.ax)
  %i.bd = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i16.2, <4 x double> %.sroa.0.0.copyload.i16.2, <4 x double> %i.ay)
  %i.be = add i64 %.sroa.053.0164, 16
  %i.bf = add i64 %.sroa.554.0163, -4             ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.az
  %.sroa.0.0.copyload.i15.3 = load <4 x double>, ptr %i.bg, align 8, !noalias !8218
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.az
  %.sroa.0.0.copyload.i16.3 = load <4 x double>, ptr %i.bh, align 8, !noalias !8219 ; 3 uses
  %i.bi = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i15.3, <4 x double> %.sroa.0.0.copyload.i16.3, <4 x double> %i.bc) ; 2 uses
  %i.bj = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i16.3, <4 x double> %.sroa.0.0.copyload.i16.3, <4 x double> %i.bd) ; 2 uses
  %.not.i.i7.3 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i7.3, label %._crit_edge169, label %.lr.ph168

._crit_edge169:                                   ; preds = %.lr.ph168.prol.loopexit, %.lr.ph168, %._crit_edge
  %.sroa.041.0.lcssa = phi <4 x double> [ zeroinitializer, %._crit_edge ], [ %.lcssa200.unr, %.lr.ph168.prol.loopexit ], [ %i.bi, %.lr.ph168 ] ; 2 uses
  %.sroa.039.0.lcssa = phi <4 x double> [ zeroinitializer, %._crit_edge ], [ %.lcssa199.unr, %.lr.ph168.prol.loopexit ], [ %i.bj, %.lr.ph168 ] ; 2 uses
  %i.bk = icmp samesign ugt i64 %i.af, %4
  br i1 %i.bk, label %bb.b, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.b:                                             ; preds = %._crit_edge169
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef range(i64 0, 1152921504606846973) %i.af, i64 noundef range(i64 0, 1152921504606846976) %4, i64 noundef range(i64 0, 1152921504606846976) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @300) #74, !noalias !8220
  unreachable

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %._crit_edge169
  %.idx149 = shl nuw nsw i64 %i.af, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 %.idx149 ; 8 uses
  %i.bm = icmp samesign eq i64 %i.af, %4
  br i1 %i.bm, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11, label %bb.c

bb.c:                                             ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit
  %i.bn = sub nuw nsw i64 %4, %i.af               ; 3 uses
  %xtraiter212 = and i64 %4, 3                    ; 4 uses
  %i.bo = sub nsw i64 %i.af, %4
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter216 = sub nsw i64 %i.bn, %xtraiter212
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %.new ], [ %i.cf, %bb.d ] ; 5 uses
  %.sroa.02.0.i.i.i.i = phi double [ -0.000000e+00, %.new ], [ %i.ce, %bb.d ]
  %niter217 = phi i64 [ 0, %.new ], [ %niter217.next.3, %bb.d ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i = load double, ptr %i.bq, align 8, !noundef !18 ; 2 uses
  %i.br = fmul double %.val.i.i.i.i, %.val.i.i.i.i
  %i.bs = fadd double %.sroa.02.0.i.i.i.i, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.04.0.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.val.i.i.i.i.1 = load double, ptr %i.bu, align 8, !noundef !18 ; 2 uses
  %i.bv = fmul double %.val.i.i.i.i.1, %.val.i.i.i.i.1
  %i.bw = fadd double %i.bs, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.04.0.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.val.i.i.i.i.2 = load double, ptr %i.by, align 8, !noundef !18 ; 2 uses
  %i.bz = fmul double %.val.i.i.i.i.2, %.val.i.i.i.i.2
  %i.ca = fadd double %i.bw, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.04.0.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %.val.i.i.i.i.3 = load double, ptr %i.cc, align 8, !noundef !18 ; 2 uses
  %i.cd = fmul double %.val.i.i.i.i.3, %.val.i.i.i.i.3
  %i.ce = fadd double %i.ca, %i.cd                ; 3 uses
  %i.cf = add nuw i64 %.sroa.04.0.i.i.i.i, 4      ; 2 uses
  %niter217.next.3 = add i64 %niter217, 4         ; 2 uses
  %niter217.ncmp.3 = icmp eq i64 %niter217.next.3, %unroll_iter216
  br i1 %niter217.ncmp.3, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa, label %bb.d

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod213.not = icmp eq i64 %xtraiter212, 0
  br i1 %lcmp.mod213.not, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa, %bb.c
  %.sroa.04.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %i.cf, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi double [ -0.000000e+00, %bb.c ], [ %i.ce, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa ]
  %lcmp.mod215 = icmp ne i64 %xtraiter212, 0
  tail call void @llvm.assume(i1 %lcmp.mod215)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.sroa.04.0.i.i.i.i.epil = phi i64 [ %.sroa.04.0.i.i.i.i.epil.init, %.epil.preheader ], [ %i.cj, %bb.e ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil = phi double [ %.sroa.02.0.i.i.i.i.epil.init, %.epil.preheader ], [ %i.ci, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.04.0.i.i.i.i.epil
  %.val.i.i.i.i.epil = load double, ptr %i.cg, align 8, !noundef !18 ; 2 uses
  %i.ch = fmul double %.val.i.i.i.i.epil, %.val.i.i.i.i.epil
  %i.ci = fadd double %.sroa.02.0.i.i.i.i.epil, %i.ch ; 2 uses
  %i.cj = add nuw i64 %.sroa.04.0.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter212
  br i1 %epil.iter.cmp.not, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11, label %bb.e, !llvm.loop !8203

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11: ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa, %bb.e, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit
  %.pre-phi = phi i64 [ 0, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.bn, %bb.e ], [ %i.bn, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa ]
  %.sroa.0.0.i.i.i.i = phi double [ -0.000000e+00, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.ce, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa ], [ %i.ci, %bb.e ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.af ; 3 uses
  %.idx150 = and i64 %1, 3
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %.idx150) ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f64_x8619cosine_fast_avx_fmas_0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11
  %.val14.i.i.i.i.i = load double, ptr %i.ck, align 8, !noalias !8221, !noundef !18
  %.val15.i.i.i.i.i = load double, ptr %i.bl, align 8, !noalias !8221, !noundef !18
  %i.cl = fmul double %.val14.i.i.i.i.i, %.val15.i.i.i.i.i ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f64_x8619cosine_fast_avx_fmas_0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val14.i.i.i.i.i.1 = load double, ptr %i.cm, align 8, !noalias !8221, !noundef !18
  %.val15.i.i.i.i.i.1 = load double, ptr %i.cn, align 8, !noalias !8221, !noundef !18
  %i.co = fmul double %.val14.i.i.i.i.i.1, %.val15.i.i.i.i.i.1
  %i.cp = fadd double %i.cl, %i.co                ; 2 uses
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %.sroa.0.0.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.1, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f64_x8619cosine_fast_avx_fmas_0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.val14.i.i.i.i.i.2 = load double, ptr %i.cq, align 8, !noalias !8221, !noundef !18
  %.val15.i.i.i.i.i.2 = load double, ptr %i.cr, align 8, !noalias !8221, !noundef !18
  %i.cs = fmul double %.val14.i.i.i.i.i.2, %.val15.i.i.i.i.i.2
  %i.ct = fadd double %i.cp, %i.cs
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f64_x8619cosine_fast_avx_fmas_0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f64_x8619cosine_fast_avx_fmas_0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11
  %.sroa.0.0.lcssa.i.i.i.i.i = phi double [ -0.000000e+00, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11 ], [ %i.cl, %.lr.ph.i.i.i.i.i ], [ %i.cp, %.lr.ph.i.i.i.i.i.1 ], [ %i.ct, %.lr.ph.i.i.i.i.i.2 ]
  %i.cu = shufflevector <4 x double> %.sroa.6.0.lcssa, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cv = fadd <4 x double> %.sroa.6.0.lcssa, %i.cu ; 2 uses
  %i.cw = shufflevector <4 x double> %i.cv, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cx = fadd <4 x double> %i.cv, %i.cw
  %.sroa.0108.0.vec.extract = extractelement <4 x double> %i.cx, i64 0
  %i.cy = shufflevector <4 x double> %.sroa.039.0.lcssa, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.cz = fadd <4 x double> %.sroa.039.0.lcssa, %i.cy ; 2 uses
  %i.da = extractelement <4 x double> %i.cz, i64 0
  %i.db = extractelement <4 x double> %i.cz, i64 2
  %i.dc = fadd double %i.da, %i.db
  %i.dd = fadd double %.sroa.0108.0.vec.extract, %i.dc
  %i.de = fadd double %i.dd, %.sroa.0.0.i.i.i.i
  %i.df = fptrunc double %i.de to float
  %i.dg = shufflevector <4 x double> %.sroa.621.0.lcssa, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.dh = fadd <4 x double> %.sroa.621.0.lcssa, %i.dg ; 2 uses
  %i.di = shufflevector <4 x double> %i.dh, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dj = fadd <4 x double> %i.dh, %i.di
  %.sroa.0127.0.vec.extract = extractelement <4 x double> %i.dj, i64 0
  %i.dk = shufflevector <4 x double> %.sroa.041.0.lcssa, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.dl = fadd <4 x double> %.sroa.041.0.lcssa, %i.dk ; 2 uses
  %i.dm = extractelement <4 x double> %i.dl, i64 0
  %i.dn = extractelement <4 x double> %i.dl, i64 2
  %i.do = fadd double %i.dm, %i.dn
  %i.dp = fadd double %.sroa.0127.0.vec.extract, %i.do
  %i.dq = fadd double %i.dp, %.sroa.0.0.lcssa.i.i.i.i.i
  %i.dr = fptrunc double %i.dq to float
  %i.ds = fdiv float %i.dr, %2
  %i.dt = tail call noundef float @llvm.sqrt.f32(float %i.df)
  %i.du = fdiv float %i.ds, %i.dt
  %i.dv = fsub float 1.000000e+00, %i.du
  ret float %i.dv
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6dot_u83x8611dot_u8_avx2(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #21 {
bb.a:
  %.not100 = icmp samesign ult i64 %1, 32
  br i1 %.not100, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = add nsw i64 %1, -32                      ; 2 uses
  %i.b = lshr i64 %i.a, 5                         ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 1                  ; 2 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.c, 1152921504606846974
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.e = and i64 %i.a, 32
  %lcmp.mod.not.not = icmp eq i64 %i.e, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge.loopexit

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.02.0102.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cg, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init136 = phi <8 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.cy, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod138 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod138)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.0102.epil.init
  %.sroa.0.0.copyload.i.epil = load <4 x i64>, ptr %i.f, align 1, !noalias !8228 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.02.0102.epil.init
  %.sroa.0.0.copyload.i34.epil = load <4 x i64>, ptr %i.g, align 1, !noalias !8229 ; 2 uses
  %i.h = bitcast <4 x i64> %.sroa.0.0.copyload.i.epil to <32 x i8>
  %i.i = shufflevector <32 x i8> %i.h, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.j = zext <16 x i8> %i.i to <16 x i16>
  %i.k = bitcast <4 x i64> %.sroa.0.0.copyload.i.epil to <32 x i8>
  %i.l = shufflevector <32 x i8> %i.k, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.m = zext <16 x i8> %i.l to <16 x i16>
  %i.n = bitcast <4 x i64> %.sroa.0.0.copyload.i34.epil to <32 x i8>
  %i.o = shufflevector <32 x i8> %i.n, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.p = zext <16 x i8> %i.o to <16 x i16>
  %i.q = bitcast <4 x i64> %.sroa.0.0.copyload.i34.epil to <32 x i8>
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
end_hunk_4
begin_hunk_5_@_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f32_avx_fma:bb.a
  %i.p = add nuw nsw i64 %.sroa.09.025.epil, 8
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.025.epil
  %.sroa.0.0.copyload.i.epil = load <8 x float>, ptr %i.q, align 4, !noalias !8250 ; 2 uses
  %i.r = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.0.0.copyload.i.epil, <8 x float> %.sroa.0.0.copyload.i.epil, <8 x float> %.sroa.0.027.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !8248

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.sroa.0.0.lcssa = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.o, %._crit_edge.loopexit.unr-lcssa ], [ %i.r, %.lr.ph.epil ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a ; 5 uses
  %i.t = shl nuw nsw i64 %1, 2
  %.idx = and i64 %i.t, 28                        ; 3 uses
  %i.u = icmp samesign eq i64 %.idx, 0
  br i1 %i.u, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterfENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1t_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.v = lshr exact i64 %.idx, 2                  ; 2 uses
  %xtraiter35 = and i64 %i.v, 3                   ; 3 uses
  %i.w = icmp samesign ult i64 %.idx, 16
  br i1 %i.w, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter40 = and i64 %i.v, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %.new ], [ %i.am, %bb.c ] ; 5 uses
  %.sroa.02.0.i.i.i.i = phi float [ -0.000000e+00, %.new ], [ %i.al, %bb.c ]
  %niter41 = phi i64 [ 0, %.new ], [ %niter41.next.3, %bb.c ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i = load float, ptr %i.x, align 4, !noundef !18 ; 2 uses
  %i.y = fmul float %.val.i.i.i.i, %.val.i.i.i.i
  %i.z = fadd float %.sroa.02.0.i.i.i.i, %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.04.0.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.val.i.i.i.i.1 = load float, ptr %i.ab, align 4, !noundef !18 ; 2 uses
  %i.ac = fmul float %.val.i.i.i.i.1, %.val.i.i.i.i.1
  %i.ad = fadd float %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.04.0.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val.i.i.i.i.2 = load float, ptr %i.af, align 4, !noundef !18 ; 2 uses
  %i.ag = fmul float %.val.i.i.i.i.2, %.val.i.i.i.i.2
  %i.ah = fadd float %i.ad, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.04.0.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %.val.i.i.i.i.3 = load float, ptr %i.aj, align 4, !noundef !18 ; 2 uses
  %i.ak = fmul float %.val.i.i.i.i.3, %.val.i.i.i.i.3
  %i.al = fadd float %i.ah, %i.ak                 ; 3 uses
  %i.am = add nuw i64 %.sroa.04.0.i.i.i.i, 4      ; 2 uses
  %niter41.next.3 = add i64 %niter41, 4           ; 2 uses
  %niter41.ncmp.3 = icmp eq i64 %niter41.next.3, %unroll_iter40
  br i1 %niter41.ncmp.3, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterfENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1t_.exit.loopexit.unr-lcssa, label %bb.c

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterfENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1t_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod37.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterfENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1t_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterfENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1t_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.am, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterfENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1t_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi float [ -0.000000e+00, %bb.b ], [ %i.al, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterfENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1t_.exit.loopexit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i64 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.sroa.04.0.i.i.i.i.epil = phi i64 [ %.sroa.04.0.i.i.i.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.d ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil = phi float [ %.sroa.02.0.i.i.i.i.epil.init, %.epil.preheader ], [ %i.ap, %bb.d ]
  %epil.iter36 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter36.next, %bb.d ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.04.0.i.i.i.i.epil
  %.val.i.i.i.i.epil = load float, ptr %i.an, align 4, !noundef !18 ; 2 uses
  %i.ao = fmul float %.val.i.i.i.i.epil, %.val.i.i.i.i.epil
  %i.ap = fadd float %.sroa.02.0.i.i.i.i.epil, %i.ao ; 2 uses
  %i.aq = add nuw i64 %.sroa.04.0.i.i.i.i.epil, 1
  %epil.iter36.next = add i64 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i64 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterfENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1t_.exit, label %bb.d, !llvm.loop !8249

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterfENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1t_.exit: ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterfENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1t_.exit.loopexit.unr-lcssa, %bb.d, %._crit_edge
  %.sroa.0.0.i.i.i.i = phi float [ -0.000000e+00, %._crit_edge ], [ %i.al, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterfENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f32_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumfEB1t_.exit.loopexit.unr-lcssa ], [ %i.ap, %bb.d ]
  %i.ar = shufflevector <8 x float> %.sroa.0.0.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.as = shufflevector <8 x float> %.sroa.0.0.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.at = fadd <4 x float> %i.ar, %i.as           ; 2 uses
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.av = fadd <4 x float> %i.at, %i.au           ; 2 uses
  %shift = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.av, %shift
  %i.aw = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ax = fadd float %i.aw, %.sroa.0.0.i.i.i.i
  %i.ay = tail call noundef float @llvm.sqrt.f32(float %i.ax)
  ret float %i.ay
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f64_avx_fma(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1) unnamed_addr #34 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 1152921504606846968          ; 3 uses
  %i.b = lshr i64 %1, 3                           ; 3 uses
  %.not.i.i90 = icmp eq i64 %i.b, 0
  br i1 %.not.i.i90, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.c = icmp samesign ult i64 %1, 32
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.b, 144115188075855868
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.094 = phi <4 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ]
  %.sroa.6.093 = phi <4 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ]
  %.sroa.022.092 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.r, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.022.092 ; 2 uses
  %.sroa.0.0.copyload.i11 = load <4 x double>, ptr %i.d, align 8, !noalias !8260 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.0.0.copyload.i = load <4 x double>, ptr %i.e, align 8, !noalias !8261 ; 2 uses
  %i.f = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i11, <4 x double> %.sroa.0.0.copyload.i11, <4 x double> %.sroa.0.094)
  %i.g = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i, <4 x double> %.sroa.0.0.copyload.i, <4 x double> %.sroa.6.093)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.022.092 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.0.0.copyload.i11.1 = load <4 x double>, ptr %i.i, align 8, !noalias !8260 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %.sroa.0.0.copyload.i.1 = load <4 x double>, ptr %i.j, align 8, !noalias !8261 ; 2 uses
  %i.k = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i11.1, <4 x double> %.sroa.0.0.copyload.i11.1, <4 x double> %i.f)
  %i.l = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i.1, <4 x double> %.sroa.0.0.copyload.i.1, <4 x double> %i.g)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.022.092 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %.sroa.0.0.copyload.i11.2 = load <4 x double>, ptr %i.n, align 8, !noalias !8260 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %.sroa.0.0.copyload.i.2 = load <4 x double>, ptr %i.o, align 8, !noalias !8261 ; 2 uses
  %i.p = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i11.2, <4 x double> %.sroa.0.0.copyload.i11.2, <4 x double> %i.k)
  %i.q = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i.2, <4 x double> %.sroa.0.0.copyload.i.2, <4 x double> %i.l)
  %i.r = add nuw nsw i64 %.sroa.022.092, 32       ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.022.092 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %.sroa.0.0.copyload.i11.3 = load <4 x double>, ptr %i.t, align 8, !noalias !8260 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 224
  %.sroa.0.0.copyload.i.3 = load <4 x double>, ptr %i.u, align 8, !noalias !8261 ; 2 uses
  %i.v = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i11.3, <4 x double> %.sroa.0.0.copyload.i11.3, <4 x double> %i.p) ; 3 uses
  %i.w = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i.3, <4 x double> %.sroa.0.0.copyload.i.3, <4 x double> %i.q) ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.094.epil.init = phi <4 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.6.093.epil.init = phi <4 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.022.092.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.r, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.094.epil = phi <4 x double> [ %i.aa, %.lr.ph.epil ], [ %.sroa.0.094.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.6.093.epil = phi <4 x double> [ %i.ab, %.lr.ph.epil ], [ %.sroa.6.093.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.022.092.epil = phi i64 [ %i.x, %.lr.ph.epil ], [ %.sroa.022.092.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.x = add nuw nsw i64 %.sroa.022.092.epil, 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.022.092.epil ; 2 uses
  %.sroa.0.0.copyload.i11.epil = load <4 x double>, ptr %i.y, align 8, !noalias !8260 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.0.0.copyload.i.epil = load <4 x double>, ptr %i.z, align 8, !noalias !8261 ; 2 uses
  %i.aa = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i11.epil, <4 x double> %.sroa.0.0.copyload.i11.epil, <4 x double> %.sroa.0.094.epil) ; 2 uses
  %i.ab = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i.epil, <4 x double> %.sroa.0.0.copyload.i.epil, <4 x double> %.sroa.6.093.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !8255

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa116 = phi <4 x double> [ %i.v, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %.lr.ph.epil ]
  %.lcssa115 = phi <4 x double> [ %i.w, %._crit_edge.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.epil ]
  %i.ac = fadd <4 x double> %.lcssa115, %.lcssa116
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.6.0.lcssa = phi <4 x double> [ zeroinitializer, %bb.a ], [ %i.ac, %._crit_edge.loopexit ] ; 2 uses
  %i.ad = and i64 %1, 1152921504606846972         ; 2 uses
  %.not.i.i796.not = icmp samesign ugt i64 %i.ad, %i.a
  br i1 %.not.i.i796.not, label %.lr.ph101.preheader, label %._crit_edge102

.lr.ph101.preheader:                              ; preds = %._crit_edge
  %.sroa.06.0.i.i.i = lshr i64 %1, 2
  %i.ae = and i64 %.sroa.06.0.i.i.i, 1            ; 5 uses
  %i.af = add nsw i64 %i.ae, -1
  %lcmp.mod121.not = icmp eq i64 %i.ae, 0
  br i1 %lcmp.mod121.not, label %.lr.ph101.prol.loopexit, label %.lr.ph101.prol

.lr.ph101.prol:                                   ; preds = %.lr.ph101.preheader, %.lr.ph101.prol
  %.sroa.539.099.prol = phi i64 [ %i.ah, %.lr.ph101.prol ], [ %i.ae, %.lr.ph101.preheader ]
  %.sroa.038.098.prol = phi i64 [ %i.ag, %.lr.ph101.prol ], [ %i.a, %.lr.ph101.preheader ] ; 2 uses
  %.sroa.026.097.prol = phi <4 x double> [ %i.aj, %.lr.ph101.prol ], [ zeroinitializer, %.lr.ph101.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph101.prol ], [ 0, %.lr.ph101.preheader ]
  %i.ag = add i64 %.sroa.038.098.prol, 4          ; 2 uses
  %i.ah = add i64 %.sroa.539.099.prol, -1         ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.038.098.prol
  %.sroa.0.0.copyload.i12.prol = load <4 x double>, ptr %i.ai, align 8, !noalias !8262 ; 2 uses
  %i.aj = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i12.prol, <4 x double> %.sroa.0.0.copyload.i12.prol, <4 x double> %.sroa.026.097.prol) ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.ae
  br i1 %prol.iter.cmp.not, label %.lr.ph101.prol.loopexit, label %.lr.ph101.prol, !llvm.loop !8258

.lr.ph101.prol.loopexit:                          ; preds = %.lr.ph101.prol, %.lr.ph101.preheader
  %.lcssa114.unr = phi <4 x double> [ poison, %.lr.ph101.preheader ], [ %i.aj, %.lr.ph101.prol ]
  %.sroa.539.099.unr = phi i64 [ %i.ae, %.lr.ph101.preheader ], [ %i.ah, %.lr.ph101.prol ]
  %.sroa.038.098.unr = phi i64 [ %i.a, %.lr.ph101.preheader ], [ %i.ag, %.lr.ph101.prol ]
  %.sroa.026.097.unr = phi <4 x double> [ zeroinitializer, %.lr.ph101.preheader ], [ %i.aj, %.lr.ph101.prol ]
  %i.ak = icmp ult i64 %i.af, 3
  br i1 %i.ak, label %._crit_edge102, label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.prol.loopexit, %.lr.ph101
  %.sroa.539.099 = phi i64 [ %i.au, %.lr.ph101 ], [ %.sroa.539.099.unr, %.lr.ph101.prol.loopexit ]
  %.sroa.038.098 = phi i64 [ %i.at, %.lr.ph101 ], [ %.sroa.038.098.unr, %.lr.ph101.prol.loopexit ] ; 5 uses
  %.sroa.026.097 = phi <4 x double> [ %i.ax, %.lr.ph101 ], [ %.sroa.026.097.unr, %.lr.ph101.prol.loopexit ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.038.098
  %.sroa.0.0.copyload.i12 = load <4 x double>, ptr %i.al, align 8, !noalias !8262 ; 2 uses
  %i.am = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i12, <4 x double> %.sroa.0.0.copyload.i12, <4 x double> %.sroa.026.097)
  %i.an = getelementptr [8 x i8], ptr %0, i64 %.sroa.038.098
  %i.ao = getelementptr i8, ptr %i.an, i64 32
  %.sroa.0.0.copyload.i12.1 = load <4 x double>, ptr %i.ao, align 8, !noalias !8262 ; 2 uses
  %i.ap = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i12.1, <4 x double> %.sroa.0.0.copyload.i12.1, <4 x double> %i.am)
  %i.aq = getelementptr [8 x i8], ptr %0, i64 %.sroa.038.098
  %i.ar = getelementptr i8, ptr %i.aq, i64 64
  %.sroa.0.0.copyload.i12.2 = load <4 x double>, ptr %i.ar, align 8, !noalias !8262 ; 2 uses
  %i.as = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i12.2, <4 x double> %.sroa.0.0.copyload.i12.2, <4 x double> %i.ap)
  %i.at = add i64 %.sroa.038.098, 16
  %i.au = add i64 %.sroa.539.099, -4              ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %0, i64 %.sroa.038.098
  %i.aw = getelementptr i8, ptr %i.av, i64 96
  %.sroa.0.0.copyload.i12.3 = load <4 x double>, ptr %i.aw, align 8, !noalias !8262 ; 2 uses
  %i.ax = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i12.3, <4 x double> %.sroa.0.0.copyload.i12.3, <4 x double> %i.as) ; 2 uses
  %.not.i.i7.3 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i7.3, label %._crit_edge102, label %.lr.ph101

._crit_edge102:                                   ; preds = %.lr.ph101.prol.loopexit, %.lr.ph101, %._crit_edge
  %.sroa.026.0.lcssa = phi <4 x double> [ zeroinitializer, %._crit_edge ], [ %.lcssa114.unr, %.lr.ph101.prol.loopexit ], [ %i.ax, %.lr.ph101 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ad
  %i.az = shl nuw nsw i64 %1, 3
  %.idx = and i64 %i.az, 24                       ; 2 uses
  %i.ba = icmp samesign eq i64 %.idx, 0
  br i1 %i.ba, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterdENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f64_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1t_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge102
  %i.bb = lshr exact i64 %.idx, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.sroa.04.0.i.i.i.i.epil = phi i64 [ 0, %.epil.preheader ], [ %i.bf, %bb.b ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil = phi double [ -0.000000e+00, %.epil.preheader ], [ %i.be, %bb.b ]
  %epil.iter123 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter123.next, %bb.b ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.04.0.i.i.i.i.epil
  %.val.i.i.i.i.epil = load double, ptr %i.bc, align 8, !noundef !18 ; 2 uses
  %i.bd = fmul double %.val.i.i.i.i.epil, %.val.i.i.i.i.epil
  %i.be = fadd double %.sroa.02.0.i.i.i.i.epil, %i.bd ; 2 uses
  %i.bf = add nuw i64 %.sroa.04.0.i.i.i.i.epil, 1
  %epil.iter123.next = add i64 %epil.iter123, 1   ; 2 uses
  %epil.iter123.cmp.not = icmp eq i64 %epil.iter123.next, %i.bb
  br i1 %epil.iter123.cmp.not, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterdENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f64_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1t_.exit, label %bb.b, !llvm.loop !8259

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterdENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f64_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1t_.exit: ; preds = %bb.b, %._crit_edge102
  %.sroa.0.0.i.i.i.i = phi double [ -0.000000e+00, %._crit_edge102 ], [ %i.be, %bb.b ]
  %i.bg = shufflevector <4 x double> %.sroa.6.0.lcssa, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bh = fadd <4 x double> %.sroa.6.0.lcssa, %i.bg ; 2 uses
  %i.bi = shufflevector <4 x double> %i.bh, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bj = fadd <4 x double> %i.bh, %i.bi
  %.sroa.068.0.vec.extract = extractelement <4 x double> %i.bj, i64 0
  %i.bk = shufflevector <4 x double> %.sroa.026.0.lcssa, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.bl = fadd <4 x double> %.sroa.026.0.lcssa, %i.bk ; 2 uses
  %i.bm = extractelement <4 x double> %i.bl, i64 0
  %i.bn = extractelement <4 x double> %i.bl, i64 2
  %i.bo = fadd double %i.bm, %i.bn
  %i.bp = fadd double %.sroa.068.0.vec.extract, %i.bo
  %i.bq = fadd double %i.bp, %.sroa.0.0.i.i.i.i
  %i.br = tail call noundef double @llvm.sqrt.f64(double %i.bq)
  %i.bs = fptrunc double %i.br to float
  ret float %i.bs
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance9cosine_u83x8620cosine_u8_accum_avx2(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #21 {
bb.a:
  %.not221 = icmp samesign ult i64 %2, 32
  br i1 %.not221, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.a = and i64 %2, 9223372036854775776
  %i.b = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bo)
  %i.c = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bs)
  %i.d = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bw)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi i32 [ 0, %bb.a ], [ %i.d, %._crit_edge.loopexit ] ; 3 uses
  %i.f = phi i32 [ 0, %bb.a ], [ %i.c, %._crit_edge.loopexit ] ; 3 uses
  %i.g = phi i32 [ 0, %bb.a ], [ %i.b, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.a, %._crit_edge.loopexit ] ; 7 uses
  %i.h = icmp samesign ult i64 %.sroa.0.0.lcssa, %2
  br i1 %i.h, label %.lr.ph234.preheader, label %._crit_edge235

.lr.ph234.preheader:                              ; preds = %._crit_edge
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.lcssa, i64 %4) ; 3 uses
  %i.i = xor i64 %.sroa.0.0.lcssa, -1
  %i.j = add nsw i64 %2, %i.i
  %i.k = sub nsw i64 %umax, %.sroa.0.0.lcssa
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.k)
  %i.m = add i64 %i.l, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.m, 17
  br i1 %min.iters.check, label %.lr.ph234.preheader270, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph234.preheader
  %i.n = and i64 %i.m, 15                         ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = select i1 %i.o, i64 16, i64 %i.n
  %n.vec = sub i64 %i.m, %i.p                     ; 2 uses
  %i.q = add i64 %.sroa.0.0.lcssa, %n.vec
  %i.r = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.g, i64 0
  %i.s = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.f, i64 0
  %i.t = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.e, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.r, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi258 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi259 = phi <8 x i32> [ %i.s, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi260 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi261 = phi <8 x i32> [ %i.t, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi262 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %i.u = add i64 %.sroa.0.0.lcssa, %index         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %wide.load = load <8 x i8>, ptr %i.v, align 1
  %wide.load263 = load <8 x i8>, ptr %i.w, align 1
  %i.x = zext <8 x i8> %wide.load to <8 x i32>    ; 3 uses
  %i.y = zext <8 x i8> %wide.load263 to <8 x i32> ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %i.u ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %wide.load264 = load <8 x i8>, ptr %i.z, align 1
  %wide.load265 = load <8 x i8>, ptr %i.aa, align 1
  %i.ab = zext <8 x i8> %wide.load264 to <8 x i32> ; 3 uses
  %i.ac = zext <8 x i8> %wide.load265 to <8 x i32> ; 3 uses
  %i.ad = mul nuw nsw <8 x i32> %i.ab, %i.x
  %i.ae = mul nuw nsw <8 x i32> %i.ac, %i.y
  %i.af = add <8 x i32> %i.ad, %vec.phi           ; 2 uses
  %i.ag = add <8 x i32> %i.ae, %vec.phi258        ; 2 uses
  %i.ah = mul nuw nsw <8 x i32> %i.x, %i.x
  %i.ai = mul nuw nsw <8 x i32> %i.y, %i.y
  %i.aj = add <8 x i32> %i.ah, %vec.phi259        ; 2 uses
  %i.ak = add <8 x i32> %i.ai, %vec.phi260        ; 2 uses
  %i.al = mul nuw nsw <8 x i32> %i.ab, %i.ab
  %i.am = mul nuw nsw <8 x i32> %i.ac, %i.ac
  %i.an = add <8 x i32> %i.al, %vec.phi261        ; 2 uses
  %i.ao = add <8 x i32> %i.am, %vec.phi262        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !8263

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.ag, %i.af
  %i.aq = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx)
  %bin.rdx266 = add <8 x i32> %i.ak, %i.aj
  %i.ar = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx266)
  %bin.rdx267 = add <8 x i32> %i.ao, %i.an
  %i.as = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx267)
  br label %.lr.ph234.preheader270

.lr.ph234.preheader270:                           ; preds = %.lr.ph234.preheader, %middle.block
  %.sroa.0.1232.ph = phi i64 [ %.sroa.0.0.lcssa, %.lr.ph234.preheader ], [ %i.q, %middle.block ]
  %.sroa.08.0231.ph = phi i32 [ %i.g, %.lr.ph234.preheader ], [ %i.aq, %middle.block ]
  %.sroa.010.0230.ph = phi i32 [ %i.f, %.lr.ph234.preheader ], [ %i.ar, %middle.block ]
  %.sroa.012.0229.ph = phi i32 [ %i.e, %.lr.ph234.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph234

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.at = phi i64 [ %i.bx, %.lr.ph ], [ 32, %bb.a ] ; 2 uses
  %.sroa.0.0225 = phi i64 [ %i.at, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.au = phi <8 x i32> [ %i.bo, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %i.av = phi <8 x i32> [ %i.bs, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %i.aw = phi <8 x i32> [ %i.bw, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0225
  %.sroa.0.0.copyload.i = load <4 x i64>, ptr %i.ax, align 1, !noalias !8269 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.0225
  %.sroa.0.0.copyload.i60 = load <4 x i64>, ptr %i.ay, align 1, !noalias !8270 ; 2 uses
  %i.az = bitcast <4 x i64> %.sroa.0.0.copyload.i to <32 x i8>
  %i.ba = shufflevector <32 x i8> %i.az, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bb = zext <16 x i8> %i.ba to <16 x i16>      ; 3 uses
  %i.bc = bitcast <4 x i64> %.sroa.0.0.copyload.i to <32 x i8>
  %i.bd = shufflevector <32 x i8> %i.bc, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.be = zext <16 x i8> %i.bd to <16 x i16>      ; 3 uses
  %i.bf = bitcast <4 x i64> %.sroa.0.0.copyload.i60 to <32 x i8>
  %i.bg = shufflevector <32 x i8> %i.bf, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bh = zext <16 x i8> %i.bg to <16 x i16>      ; 3 uses
  %i.bi = bitcast <4 x i64> %.sroa.0.0.copyload.i60 to <32 x i8>
  %i.bj = shufflevector <32 x i8> %i.bi, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bk = zext <16 x i8> %i.bj to <16 x i16>      ; 3 uses
  %i.bl = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bb, <16 x i16> %i.bh)
  %i.bm = add <8 x i32> %i.bl, %i.au
  %i.bn = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.be, <16 x i16> %i.bk)
  %i.bo = add <8 x i32> %i.bm, %i.bn              ; 2 uses
  %i.bp = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bb, <16 x i16> %i.bb)
  %i.bq = add <8 x i32> %i.bp, %i.av
  %i.br = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.be, <16 x i16> %i.be)
  %i.bs = add <8 x i32> %i.bq, %i.br              ; 2 uses
  %i.bt = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bh, <16 x i16> %i.bh)
  %i.bu = add <8 x i32> %i.bt, %i.aw
  %i.bv = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bk, <16 x i16> %i.bk)
  %i.bw = add <8 x i32> %i.bu, %i.bv              ; 2 uses
  %i.bx = add nuw i64 %i.at, 32                   ; 2 uses
  %.not = icmp ugt i64 %i.bx, %2
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge235:                                   ; preds = %bb.b, %._crit_edge
  %.sroa.012.0.lcssa = phi i32 [ %i.e, %._crit_edge ], [ %i.cl, %bb.b ]
  %.sroa.010.0.lcssa = phi i32 [ %i.f, %._crit_edge ], [ %i.cj, %bb.b ]
  %.sroa.08.0.lcssa = phi i32 [ %i.g, %._crit_edge ], [ %i.ch, %bb.b ]
  store i32 %.sroa.08.0.lcssa, ptr %0, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.010.0.lcssa, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.012.0.lcssa, ptr %i.bz, align 4
  ret void

.lr.ph234:                                        ; preds = %.lr.ph234.preheader270, %bb.b
  %.sroa.0.1232 = phi i64 [ %i.cm, %bb.b ], [ %.sroa.0.1232.ph, %.lr.ph234.preheader270 ] ; 4 uses
  %.sroa.08.0231 = phi i32 [ %i.ch, %bb.b ], [ %.sroa.08.0231.ph, %.lr.ph234.preheader270 ]
  %.sroa.010.0230 = phi i32 [ %i.cj, %bb.b ], [ %.sroa.010.0230.ph, %.lr.ph234.preheader270 ]
  %.sroa.012.0229 = phi i32 [ %i.cl, %bb.b ], [ %.sroa.012.0229.ph, %.lr.ph234.preheader270 ]
end_hunk_5
