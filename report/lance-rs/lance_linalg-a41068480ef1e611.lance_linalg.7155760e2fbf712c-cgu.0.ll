Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_linalg-a41068480ef1e611.lance_linalg.7155760e2fbf712c-cgu.0?download=true
inline.NumInlined: 5334
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 92
loop-unroll.NumUnrolled: 148
begin_hunk_0_@_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming23cluster_pairwise_result:bb.a
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
  %i.em = getelementptr i8, ptr %.sroa.0163.0.copyload.i, i64 %.sroa.4164.0.copyload.i
  %i.en = getelementptr i8, ptr %i.em, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6828
  store i64 %.sink.i.i.i.i, ptr %i.e, align 8, !noalias !6828
  %.sroa.4155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.sroa.410.0.i.i.i, ptr %.sroa.4155.0..sroa_idx.i, align 8, !noalias !6828
  %.sroa.5156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %.sroa.511.0.i.i.i, ptr %.sroa.5156.0..sroa_idx.i, align 8, !noalias !6828
  %.sroa.6157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  store ptr %.sroa.0163.0.copyload.i, ptr %.sroa.6157.0..sroa_idx.i, align 8, !noalias !6828
  %.sroa.7158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 5 uses
  store ptr %i.el, ptr %.sroa.7158.0..sroa_idx.i, align 8, !noalias !6828
  %.sroa.8159.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.en, ptr %.sroa.8159.0..sroa_idx.i, align 8, !noalias !6828
  %.sroa.9160.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %.sroa.11162.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.eo = icmp eq i64 %.sroa.5166.0.copyload.i, 0
  br i1 %i.eo, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEE13drop_elementsCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, label %.lr.ph240.preheader.i

.lr.ph240.preheader.i:                            ; preds = %bb.u
  %i.ep = icmp sgt <16 x i8> %.val3.i.i.i39.i, splat (i8 -1)
  %i.eq = bitcast <16 x i1> %i.ep to i16
  br label %.lr.ph240.i

.lr.ph240thread-pre-split.i:                      ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i
  %.pr311.i = load i16, ptr %.sroa.9160.0..sroa_idx.i, align 8, !alias.scope !6861, !noalias !6862
  br label %.lr.ph240.i

.lr.ph240.i:                                      ; preds = %.lr.ph240thread-pre-split.i, %.lr.ph240.preheader.i
  %i.er = phi i16 [ %.pr311.i, %.lr.ph240thread-pre-split.i ], [ %i.eq, %.lr.ph240.preheader.i ] ; 2 uses
  %i.es = phi i64 [ %i.ih, %.lr.ph240thread-pre-split.i ], [ 0, %.lr.ph240.preheader.i ] ; 4 uses
  %i.et = phi ptr [ %i.ii, %.lr.ph240thread-pre-split.i ], [ inttoptr (i64 8 to ptr), %.lr.ph240.preheader.i ] ; 4 uses
  %i.eu = phi i64 [ %.pr.i, %.lr.ph240thread-pre-split.i ], [ %.sroa.5166.0.copyload.i, %.lr.ph240.preheader.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6863)
  call void @llvm.experimental.noalias.scope.decl(metadata !6864)
  %.not12.i.i.i = icmp eq i16 %i.er, 0
  %.promoted.i.i.i = load ptr, ptr %.sroa.6157.0..sroa_idx.i, align 8, !alias.scope !6861, !noalias !6862 ; 2 uses
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg.exit.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph240.i
  %.promoted14.i.i.i = load ptr, ptr %.sroa.7158.0..sroa_idx.i, align 8, !alias.scope !6861, !noalias !6862
  br label %bb.v

._crit_edge.i.i.i:                                ; preds = %bb.v
  store ptr %i.ez, ptr %.sroa.7158.0..sroa_idx.i, align 8, !alias.scope !6861, !noalias !6862
  store ptr %i.ey, ptr %.sroa.6157.0..sroa_idx.i, align 8, !alias.scope !6861, !noalias !6862
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg.exit.i

bb.v:                                             ; preds = %bb.v, %.lr.ph.i.i.i
  %i.ev = phi ptr [ %.promoted14.i.i.i, %.lr.ph.i.i.i ], [ %i.ez, %bb.v ] ; 2 uses
  %i.ew = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ey, %bb.v ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.ev, align 16, !noalias !6865
  %i.ex = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 -512 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ex to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.v, label %._crit_edge.i.i.i

.body60.sink.split.i:                             ; preds = %bb.ay, %bb.aw
  %.pn.ph.i = phi { ptr, i32 } [ %i.jp, %bb.aw ], [ %lpad.loopexit.i, %bb.ay ]
  %i.fa = shl nuw i64 %.sroa.4113.0.copyload.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7114.sroa.0.0.copyload.i, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !6828
  br label %.body60.i

.body60.i:                                        ; preds = %.body60.sink.split.i, %bb.ay, %bb.aw
  %.pn.i = phi { ptr, i32 } [ %i.jp, %bb.aw ], [ %lpad.loopexit.i, %bb.ay ], [ %.pn.ph.i, %.body60.sink.split.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIteryINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(64) %i.e) #77, !noalias !6828
  br label %bb.s

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %.lr.ph240.i, %._crit_edge.i.i.i
  %.promoted6.i.i.i.i.i.i = phi ptr [ %i.ey, %._crit_edge.i.i.i ], [ %.promoted.i.i.i, %.lr.ph240.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.cast.i.i.i, %._crit_edge.i.i.i ], [ %i.er, %.lr.ph240.i ] ; 3 uses
  %i.fb = add i16 %.lcssa.i.i.i, -1
  %i.fc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.fd = zext nneg i16 %i.fc to i64
  %i.fe = and i16 %i.fb, %.lcssa.i.i.i            ; 2 uses
  store i16 %i.fe, ptr %.sroa.9160.0..sroa_idx.i, align 8, !alias.scope !6861, !noalias !6862
  %i.ff = sub nsw i64 0, %i.fd
  %i.fg = getelementptr inbounds [32 x i8], ptr %.promoted6.i.i.i.i.i.i, i64 %i.ff ; 3 uses
  %i.fh = add i64 %i.eu, -1                       ; 5 uses
  store i64 %i.fh, ptr %.sroa.11162.0..sroa_idx.i, align 8, !alias.scope !6863, !noalias !6862
  %.sroa.4113.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.fg, i64 -24
  %.sroa.4113.0.copyload.i = load i64, ptr %.sroa.4113.0..sroa_idx.i, align 8, !noalias !6866 ; 7 uses
  %.sroa.7114.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.fg, i64 -16
  %.sroa.7114.sroa.0.0.copyload.i = load ptr, ptr %.sroa.7114.0..sroa_idx.i, align 8, !noalias !6866 ; 16 uses
  %.sroa.7114.sroa.5.0..sroa.7114.0..sroa_idx.sroa_idx.i = getelementptr inbounds i8, ptr %i.fg, i64 -8
  %.sroa.7114.sroa.5.0.copyload.i = load i64, ptr %.sroa.7114.sroa.5.0..sroa.7114.0..sroa_idx.sroa_idx.i, align 8, !noalias !6866 ; 6 uses
  %.not.i = icmp eq i64 %.sroa.4113.0.copyload.i, -1
  br i1 %.not.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7114.sroa.0.0.copyload.i) ]
  %i.fi = icmp ult i64 %.sroa.7114.sroa.5.0.copyload.i, 2
  br i1 %i.fi, label %bb.al, label %bb.ai, !prof !16

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg.exit.thread.i: ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6867)
  call void @llvm.experimental.noalias.scope.decl(metadata !6868)
  call void @llvm.experimental.noalias.scope.decl(metadata !6869)
  call void @llvm.experimental.noalias.scope.decl(metadata !6870)
  call void @llvm.experimental.noalias.scope.decl(metadata !6871)
  %i.fj = icmp eq i64 %i.fh, 0
  br i1 %i.fj, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEE13drop_elementsCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg.exit.thread.i
  %.promoted10.i.i.i.i.i.i = load ptr, ptr %.sroa.7158.0..sroa_idx.i, align 8, !alias.scope !6872, !noalias !6828
  br label %bb.x

bb.x:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i = phi ptr [ %.promoted10.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %.lcssa11.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i ] ; 2 uses
  %i.fk = phi i64 [ %i.fh, %.preheader.i.i.i.i.i.i ], [ %i.fx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i ]
  %.lcssa58.i.i.i.i.i.i = phi ptr [ %.promoted6.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %.lcssa57.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i ] ; 2 uses
  %i.fl = phi i16 [ %i.fe, %.preheader.i.i.i.i.i.i ], [ %i.fu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6873)
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.fl, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEE9next_implKb0_ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i
  store ptr %i.fq, ptr %.sroa.7158.0..sroa_idx.i, align 8, !alias.scope !6874, !noalias !6828
  store ptr %i.fp, ptr %.sroa.6157.0..sroa_idx.i, align 8, !alias.scope !6874, !noalias !6828
  br label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEE9next_implKb0_ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.x, %.lr.ph.i.i.i.i.i.i.i
  %i.fm = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i, %bb.x ] ; 2 uses
  %i.fn = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa58.i.i.i.i.i.i, %bb.x ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.fm, align 16, !noalias !6875
  %i.fo = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.fp = getelementptr inbounds i8, ptr %i.fn, i64 -512 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.fo to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEE9next_implKb0_ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.x
  %.lcssa11.i.i.i.i.i.i = phi ptr [ %i.fq, %._crit_edge.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i, %bb.x ]
  %.lcssa57.i.i.i.i.i.i = phi ptr [ %i.fp, %._crit_edge.i.i.i.i.i.i.i ], [ %.lcssa58.i.i.i.i.i.i, %bb.x ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %i.fl, %bb.x ] ; 3 uses
  %i.fr = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.fs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ft = zext nneg i16 %i.fs to i64
  %i.fu = and i16 %i.fr, %.lcssa.i.i.i.i.i.i.i
  %i.fv = sub nsw i64 0, %i.ft
  %i.fw = getelementptr inbounds [32 x i8], ptr %.lcssa57.i.i.i.i.i.i, i64 %i.fv ; 2 uses
  %i.fx = add i64 %i.fk, -1                       ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fw, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.fy, align 8, !noalias !6876 ; 2 uses
  %i.fz = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.fz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEE9next_implKb0_ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i
  %i.ga = getelementptr i8, ptr %i.fw, i64 -16
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.ga, align 8, !noalias !6876, !nonnull !18, !noundef !18
  %i.gb = shl nuw i64 %.val.i.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i, i64 noundef %i.gb, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !6876
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i: ; preds = %bb.y, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEE9next_implKb0_ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i = icmp eq i64 %i.fx, 0
  br i1 %.old3.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEE13drop_elementsCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, label %bb.x

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEE13drop_elementsCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i, %bb.u, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg.exit.thread.i
  %i.gc = phi ptr [ %i.et, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i ], [ %i.et, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg.exit.thread.i ], [ inttoptr (i64 8 to ptr), %bb.u ], [ %i.ii, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i ] ; 8 uses
  %i.gd = phi i64 [ %i.es, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i ], [ %i.es, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg.exit.thread.i ], [ 0, %bb.u ], [ %i.ih, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i ] ; 4 uses
  %i.ge = load i64, ptr %i.e, align 8, !range !36, !alias.scope !6877, !noalias !6828, !noundef !18 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIteryINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i, label %bb.z

bb.z:                                             ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEE13drop_elementsCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  %i.gf = load i64, ptr %.sroa.4155.0..sroa_idx.i, align 8, !alias.scope !6877, !noalias !6828, !noundef !18 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIteryINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gh = load ptr, ptr %.sroa.5156.0..sroa_idx.i, align 8, !alias.scope !6877, !noalias !6828, !nonnull !18, !noundef !18
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gh, i64 noundef %i.gf, i64 noundef range(i64 1, -9223372036854775807) %i.ge) #76, !noalias !6878
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIteryINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIteryINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %bb.aa, %bb.z, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyINtNtCs40k4W9msRzi_5alloc3vec3VecyEEE13drop_elementsCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6828
  call void @llvm.experimental.noalias.scope.decl(metadata !6879)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6880
  %i.gi = icmp samesign ult i64 %i.gd, 2
  br i1 %i.gi, label %.loopexit.i, label %bb.ab, !prof !16

bb.ab:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIteryINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.gj = icmp samesign ult i64 %i.gd, 21
  br i1 %i.gj, label %bb.ad, label %bb.ac, !prof !16

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable14driftsort_mainNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyyNCINvB11_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3f_3zip3ZipINtNtB6_4iter4IteryEB3Z_ENCNvB11_23cluster_pairwise_result0EEs_0E0INtNtB24_3vec3VecBZ_EEB15_(ptr noalias noundef nonnull align 8 %i.gc, i64 noundef range(i64 0, 288230376151711744) %i.gd, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.loopexit.i unwind label %bb.t, !noalias !6828

bb.ad:                                            ; preds = %bb.ab
  %.idx.i.i.i.i = shl nuw nsw i64 %i.gd, 5
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx.i.i.i.i
  %.sroa.0.01.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  br label %.lr.ph.i.i.i46.i

.lr.ph.i.i.i46.i:                                 ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyyNCINvB1a_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3p_3zip3ZipINtNtB8_4iter4IteryEB49_ENCNvB1a_23cluster_pairwise_result0EEs_0E0EB1e_.exit.i.i.i.i, %bb.ad
  %.sroa.0.04.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyyNCINvB1a_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3p_3zip3ZipINtNtB8_4iter4IteryEB49_ENCNvB1a_23cluster_pairwise_result0EEs_0E0EB1e_.exit.i.i.i.i ], [ %.sroa.0.01.i.i.i.i, %bb.ad ] ; 7 uses
  %.pn3.i.i.i.i = phi ptr [ %.sroa.0.04.i.i.i.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyyNCINvB1a_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3p_3zip3ZipINtNtB8_4iter4IteryEB49_ENCNvB1a_23cluster_pairwise_result0EEs_0E0EB1e_.exit.i.i.i.i ], [ %i.gc, %bb.ad ] ; 2 uses
  %i.gl = getelementptr i8, ptr %.pn3.i.i.i.i, i64 56
  %.val9.i.i.i.i.i = load i64, ptr %i.gl, align 8, !alias.scope !6881, !noalias !6882, !noundef !18 ; 3 uses
  %i.gm = getelementptr i8, ptr %.pn3.i.i.i.i, i64 24
  %.val10.i.i.i.i.i = load i64, ptr %i.gm, align 8, !alias.scope !6881, !noalias !6882, !noundef !18
  %i.gn = icmp ult i64 %.val9.i.i.i.i.i, %.val10.i.i.i.i.i
  br i1 %i.gn, label %bb.ae, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyyNCINvB1a_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3p_3zip3ZipINtNtB8_4iter4IteryEB49_ENCNvB1a_23cluster_pairwise_result0EEs_0E0EB1e_.exit.i.i.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i46.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.04.i.i.i.i, i64 24, i1 false), !noalias !6882
  %.sroa.0.0.i.i.i.i.i212 = getelementptr inbounds i8, ptr %.sroa.0.04.i.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.04.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i.i.i.i212, i64 32, i1 false), !alias.scope !6881, !noalias !6882
  %i.go = icmp eq ptr %.sroa.0.0.i.i.i.i.i212, %i.gc
  br i1 %i.go, label %._crit_edge, label %.lr.ph215

bb.af:                                            ; preds = %.lr.ph215
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i214, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i.i.i.i214, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i.i.i.i, i64 32, i1 false), !alias.scope !6881, !noalias !6882
  %i.gp = icmp eq ptr %.sroa.0.0.i.i.i.i.i, %i.gc
  br i1 %i.gp, label %._crit_edge, label %.lr.ph215

.lr.ph215:                                        ; preds = %bb.ae, %bb.af
  %.sroa.0.0.i.i.i.i.i214 = phi ptr [ %.sroa.0.0.i.i.i.i.i, %bb.af ], [ %.sroa.0.0.i.i.i.i.i212, %bb.ae ] ; 5 uses
  %.sroa.5.0.i.i.i.i.i213 = phi ptr [ %.sroa.0.0.i.i.i.i.i214, %bb.af ], [ %.sroa.0.04.i.i.i.i, %bb.ae ] ; 2 uses
  %i.gq = getelementptr i8, ptr %.sroa.5.0.i.i.i.i.i213, i64 -40
  %.val8.i.i.i.i.i = load i64, ptr %i.gq, align 8, !alias.scope !6881, !noalias !6882, !noundef !18
  %i.gr = icmp ult i64 %.val9.i.i.i.i.i, %.val8.i.i.i.i.i
  br i1 %i.gr, label %bb.af, label %._crit_edge

._crit_edge:                                      ; preds = %bb.af, %.lr.ph215, %bb.ae
  %.sroa.5.0.i.i.i.i.i.lcssa = phi ptr [ %.sroa.0.04.i.i.i.i, %bb.ae ], [ %.sroa.0.0.i.i.i.i.i214, %bb.af ], [ %.sroa.5.0.i.i.i.i.i213, %.lr.ph215 ]
  %.sroa.0.0.i.lcssa.i.i.i.i = phi ptr [ %i.gc, %bb.ae ], [ %i.gc, %bb.af ], [ %.sroa.0.0.i.i.i.i.i214, %.lr.ph215 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.lcssa.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, i64 24, i1 false), !noalias !6883
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.i.i.i.lcssa, i64 -8
  store i64 %.val9.i.i.i.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i.i.i, align 8, !alias.scope !6881, !noalias !6883
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyyNCINvB1a_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3p_3zip3ZipINtNtB8_4iter4IteryEB49_ENCNvB1a_23cluster_pairwise_result0EEs_0E0EB1e_.exit.i.i.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyyNCINvB1a_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3p_3zip3ZipINtNtB8_4iter4IteryEB49_ENCNvB1a_23cluster_pairwise_result0EEs_0E0EB1e_.exit.i.i.i.i: ; preds = %._crit_edge, %.lr.ph.i.i.i46.i
  %.sroa.0.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i47.i = icmp eq ptr %.sroa.0.0.i.i.i.i, %i.gk
  br i1 %.not.i.i.i47.i, label %.loopexit.i, label %.lr.ph.i.i.i46.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyyNCINvB1a_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3p_3zip3ZipINtNtB8_4iter4IteryEB49_ENCNvB1a_23cluster_pairwise_result0EEs_0E0EB1e_.exit.i.i.i.i, %bb.ac, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIteryINtNtCs40k4W9msRzi_5alloc3vec3VecyEEECs9JgWGBoX3PY_12lance_linalg.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !6884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6828
  call void @llvm.experimental.noalias.scope.decl(metadata !6885)
  %.val.i49.i = load ptr, ptr %i.h, align 8, !alias.scope !6885, !noalias !6828 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx18.i.i, align 8, !alias.scope !6885, !noalias !6828, !noundef !18 ; 3 uses
  %i.gs = icmp eq i64 %.val1.i.i, 0
  br i1 %i.gs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyyEECs9JgWGBoX3PY_12lance_linalg.exit.i.i, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %.loopexit.i
  %i.gt = shl i64 %.val1.i.i, 4                   ; 2 uses
  %i.gu = add i64 %i.gt, 16                       ; 2 uses
  %i.gv = add i64 %.val1.i.i, 17
  %i.gw = add i64 %i.gv, %i.gu                    ; 4 uses
  %i.gx = icmp uge i64 %i.gw, %i.gu
  %i.gy = icmp ult i64 %i.gw, 9223372036854775793
  call void @llvm.assume(i1 %i.gx)
  call void @llvm.assume(i1 %i.gy)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i49.i) ]
end_hunk_0
