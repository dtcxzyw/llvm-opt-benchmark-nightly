Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_project-b8359ba6a2b1260c.ty_project.331fa20baa313f1f-cgu.10?download=true
inline.NumInlined: 1176
inline.NumDeleted: 575
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvMNtCs4o81Y09oZk1_10ty_project2dbNtB2_15ProjectDatabase14set_check_mode:bb.a
  store ptr @_RNvXs0_NtCs4o81Y09oZk1_10ty_project2dbNtB5_9CheckModeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.421.0..sroa_idx, align 8
  store ptr @48, ptr %i.d, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %i.cc, align 8
  store ptr %i.d, ptr %i.e, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @49, ptr %i.cd, align 8
  store i64 1, ptr %i.f, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1, ptr %.sroa.524.0..sroa_idx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.cb, ptr %i.ce, align 8
  call void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bp, ptr noundef nonnull %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bw, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs4o81Y09oZk1_10ty_project2dbNtB2_15ProjectDatabase17freeze_open_files(ptr noalias noundef align 8 dereferenceable(128) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_RNvXsh_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtB5_2Db7project.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #40
  unreachable

_RNvXsh_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtB5_2Db7project.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.d = load i32, ptr %i.c, align 4
  tail call void @_RNvMsd_Cs4o81Y09oZk1_10ty_projectNtB5_7Project17freeze_open_files(i32 noundef %i.b, i32 noundef %i.d, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) @35)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs4o81Y09oZk1_10ty_project2dbNtB2_15ProjectDatabase17salsa_memory_dump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs4_NtCs33Yq3JqQgDT_9get_size27trackerNtB5_15StandardTracker3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h)
  call void @_RINvCsdNa9EhS036s_17ruff_memory_usage14attach_trackerNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage12DatabaseInfoNCNvMNtCs4o81Y09oZk1_10ty_project2dbNtB1V_15ProjectDatabase17salsa_memory_dump0EB1X_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = load i64, ptr %i.i, align 8, !range !16, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.o = icmp ult i64 %i.n, 72057594037927936
  call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw [128 x i8], ptr %i.k, i64 %i.n
  store ptr %i.k, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.p, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage14IngredientInfoENCNvMNtCs4o81Y09oZk1_10ty_project2dbNtB3z_15ProjectDatabase17salsa_memory_dumps_0EB2q_EB3B_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.b unwind label %bb.w

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.036.0.copyload = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.437.0.copyload = load i64, ptr %.sroa.437.0..sroa_idx, align 8 ; 4 uses
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.539.0.copyload = load i64, ptr %.sroa.539.0..sroa_idx, align 8
  %.val4.i.i.i = load <16 x i8>, ptr %.sroa.036.0.copyload, align 16, !noalias !1050
  %i.r = icmp eq i64 %.sroa.437.0.copyload, 0
  br i1 %i.r, label %bb.e, label %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.b
  %i.s = mul i64 %.sroa.437.0.copyload, 144       ; 2 uses
  %i.t = add i64 %i.s, 144                        ; 2 uses
  %i.u = add i64 %.sroa.437.0.copyload, 17
  %i.v = add i64 %i.u, %i.t                       ; 3 uses
  %i.w = icmp uge i64 %i.v, %i.t
  call void @llvm.assume(i1 %i.w)
  %i.x = icmp ult i64 %i.v, 9223372036854775793
  call void @llvm.assume(i1 %i.x)
  %i.y = sub i64 -144, %i.s
  %i.z = getelementptr inbounds i8, ptr %.sroa.036.0.copyload, i64 %i.y
  br label %bb.e

bb.c:                                             ; preds = %bb.j, %bb.d
  %.pn = phi { ptr, i32 } [ %i.al, %bb.j ], [ %i.aa, %bb.d ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage14IngredientInfoEECs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24) %i.g) #41
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown3map7HashMapReNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage14IngredientInfoEECs4o81Y09oZk1_10ty_project.exit unwind label %bb.v

bb.d:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.b
  %.sroa.510.0.i.i = phi ptr [ undef, %bb.b ], [ %i.z, %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %.sroa.49.0.i.i = phi i64 [ undef, %bb.b ], [ %i.v, %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %.sink.i.i.i = phi i64 [ 0, %bb.b ], [ 16, %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 16
  %i.ac = icmp sgt <16 x i8> %.val4.i.i.i, splat (i8 -1)
  %i.ad = getelementptr i8, ptr %.sroa.036.0.copyload, i64 %.sroa.437.0.copyload
  %i.ae = getelementptr i8, ptr %i.ad, i64 1
  store i64 %.sink.i.i.i, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.49.0.i.i, ptr %.sroa.4.0..sroa_idx32, align 8
  %.sroa.5.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.510.0.i.i, ptr %.sroa.5.0..sroa_idx33, align 8
  %.sroa.6.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.036.0.copyload, ptr %.sroa.6.0..sroa_idx34, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.ab, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.ae, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store <16 x i1> %i.ac, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1035.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.539.0.copyload, ptr %.sroa.1035.0..sroa_idx, align 8
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTReNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage14IngredientInfoEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtCs8bMtf1JxJvX_9hashbrown3map8IntoIterB11_B13_ENCNvMNtCs4o81Y09oZk1_10ty_project2dbNtB4q_15ProjectDatabase17salsa_memory_dumps0_0EE9from_iterB4s_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1051
  store ptr %i.a, ptr %i.c, align 8, !noalias !1052
  %i.aj = icmp samesign ult i64 %i.ai, 2
  br i1 %i.aj, label %bb.k, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp samesign ult i64 %i.ai, 21
  br i1 %i.ak, label %bb.i, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage14IngredientInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMNtCs4o81Y09oZk1_10ty_project2dbNtB3h_15ProjectDatabase17salsa_memory_dumps1_0E0INtNtB2a_3vec3VecBZ_EEB3j_(ptr noalias noundef nonnull align 8 %i.ag, i64 noundef range(i64 0, 72057594037927936) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage14IngredientInfoNCINvMNtCscdodAO9FK5_5alloc5sliceSB1m_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMNtCs4o81Y09oZk1_10ty_project2dbNtB3F_15ProjectDatabase17salsa_memory_dumps1_0E0EB3H_(ptr noalias noundef nonnull align 8 %i.ag, i64 noundef range(i64 0, 72057594037927936) %i.ai, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.n, %bb.m, %bb.i, %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTReNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage14IngredientInfoEEECs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24) %i.e) #41
          to label %bb.c unwind label %bb.v

bb.k:                                             ; preds = %bb.f, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1051
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1053
  store ptr %i.a, ptr %i.b, align 8, !noalias !1054
  %i.aq = icmp samesign ult i64 %i.ap, 2
  br i1 %i.aq, label %bb.o, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp samesign ult i64 %i.ap, 21
  br i1 %i.ar, label %bb.n, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainTReNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage14IngredientInfoENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMNtCs4o81Y09oZk1_10ty_project2dbNtB3l_15ProjectDatabase17salsa_memory_dumps2_0E0INtNtB2e_3vec3VecBZ_EEB3n_(ptr noalias noundef nonnull align 8 %i.an, i64 noundef range(i64 0, 64051194700380388) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.o unwind label %bb.j

bb.n:                                             ; preds = %bb.l
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTReNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage14IngredientInfoENCINvMNtCscdodAO9FK5_5alloc5sliceSB1m_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMNtCs4o81Y09oZk1_10ty_project2dbNtB3J_15ProjectDatabase17salsa_memory_dumps2_0E0EB3L_(ptr noalias noundef nonnull align 8 %i.an, i64 noundef range(i64 0, 64051194700380388) %i.ap, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.o unwind label %bb.j

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1053
  %i.as = icmp eq i64 %i.ai, 0
  br i1 %i.as, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.at = add i64 %i.ai, 144115188075855871       ; 2 uses
  %i.au = and i64 %i.at, 144115188075855871       ; 2 uses
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %i.aw = icmp eq i64 %i.au, 0
  br i1 %i.aw, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.av, 288230376151711742
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %.lr.ph.preheader.new
  %.sroa.01.047 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %bb.s ]
  %.sroa.04.046 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cg, %bb.s ]
  %.sroa.06.045 = phi ptr [ %i.ag, %.lr.ph.preheader.new ], [ %i.bv, %bb.s ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.s ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.06.045, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.045, i64 120
  %i.az = load i64, ptr %i.ay, align 8, !noundef !4
  %i.ba = add i64 %i.az, %.sroa.01.047
  %i.bb = load i64, ptr %.sroa.06.045, align 8, !range !5, !noundef !4
  %i.bc = trunc nuw i64 %i.bb to i1
  br i1 %i.bc, label %bb.q, label %.lr.ph.1

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.s
  %i.bd = and i64 %i.at, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bd, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.01.047.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.04.046.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cg, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.06.045.epil.init = phi ptr [ %i.ag, %.lr.ph.preheader ], [ %i.bv, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod75 = trunc i64 %i.av to i1
  call void @llvm.assume(i1 %lcmp.mod75)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.06.045.epil.init, i64 120
  %i.bf = load i64, ptr %i.be, align 8, !noundef !4
  %i.bg = add i64 %i.bf, %.sroa.01.047.epil.init
  %i.bh = load i64, ptr %.sroa.06.045.epil.init, align 8, !range !5, !noundef !4
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %bb.p, label %._crit_edge.loopexit.epilog-lcssa

bb.p:                                             ; preds = %.lr.ph.epil.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.06.045.epil.init, i64 8
  %i.bk = load i64, ptr %i.bj, align 8
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.p, %.lr.ph.epil.preheader
  %.sroa.08.0.epil = phi i64 [ %i.bk, %bb.p ], [ 0, %.lr.ph.epil.preheader ]
  %i.bl = add i64 %i.bg, %.sroa.08.0.epil
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.06.045.epil.init, i64 112
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !4
  %i.bo = add i64 %i.bn, %.sroa.04.046.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %bb.o
  %.sroa.04.0.lcssa = phi i64 [ 0, %bb.o ], [ %i.cg, %._crit_edge.loopexit.unr-lcssa ], [ %i.bo, %._crit_edge.loopexit.epilog-lcssa ]
  %.sroa.01.0.lcssa = phi i64 [ 0, %bb.o ], [ %i.cd, %._crit_edge.loopexit.unr-lcssa ], [ %i.bl, %._crit_edge.loopexit.epilog-lcssa ]
  %2 = icmp eq i64 %i.ap, 0
  br i1 %2, label %._crit_edge54, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %._crit_edge
  %.idx57 = mul i64 %i.ap, 144
  %3 = add i64 %.idx57, -144                      ; 2 uses
  %4 = udiv i64 %3, 144                           ; 2 uses
  %5 = add nuw nsw i64 %4, 1                      ; 2 uses
  %6 = icmp ult i64 %3, 144
  br i1 %6, label %.lr.ph53.epil.preheader, label %.lr.ph53.preheader.new

.lr.ph53.preheader.new:                           ; preds = %.lr.ph53.preheader
  %unroll_iter81 = and i64 %5, 288230376151711742
  br label %.lr.ph53

bb.q:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.045, i64 8
  %i.bq = load i64, ptr %i.bp, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.q
  %.sroa.08.0 = phi i64 [ %i.bq, %bb.q ], [ 0, %.lr.ph ]
  %i.br = add i64 %i.ba, %.sroa.08.0
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.06.045, i64 112
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4
  %i.bu = add i64 %i.bt, %.sroa.04.046
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.06.045, i64 256 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.045, i64 248
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !4
  %i.by = add i64 %i.bx, %i.br
  %i.bz = load i64, ptr %i.ax, align 8, !range !5, !noundef !4
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.1
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.06.045, i64 136
  %i.cc = load i64, ptr %i.cb, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.1
  %.sroa.08.0.1 = phi i64 [ %i.cc, %bb.r ], [ 0, %.lr.ph.1 ]
  %i.cd = add i64 %i.by, %.sroa.08.0.1            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.06.045, i64 240
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !4
  %i.cg = add i64 %i.cf, %i.bu                    ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

.lr.ph53:                                         ; preds = %bb.u, %.lr.ph53.preheader.new
  %.sroa.012.051 = phi i64 [ 0, %.lr.ph53.preheader.new ], [ %i.cu, %bb.u ]
  %.sroa.015.050 = phi i64 [ 0, %.lr.ph53.preheader.new ], [ %35, %bb.u ]
  %.sroa.017.049 = phi ptr [ %i.an, %.lr.ph53.preheader.new ], [ %28, %bb.u ] ; 9 uses
  %niter82 = phi i64 [ 0, %.lr.ph53.preheader.new ], [ %niter82.next.1, %bb.u ]
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.017.049, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.017.049, i64 136
  %9 = load i64, ptr %8, align 8, !noundef !4
  %10 = add i64 %9, %.sroa.012.051
  %11 = load i64, ptr %7, align 8, !range !5, !noundef !4
  %12 = trunc nuw i64 %11 to i1
  br i1 %12, label %21, label %.lr.ph53.1

._crit_edge54.loopexit.unr-lcssa:                 ; preds = %bb.u
  %13 = and i64 %4, 1
  %lcmp.mod77.not.not = icmp eq i64 %13, 0
  br i1 %lcmp.mod77.not.not, label %.lr.ph53.epil.preheader, label %._crit_edge54

.lr.ph53.epil.preheader:                          ; preds = %._crit_edge54.loopexit.unr-lcssa, %.lr.ph53.preheader
  %.sroa.012.051.epil.init = phi i64 [ 0, %.lr.ph53.preheader ], [ %i.cu, %._crit_edge54.loopexit.unr-lcssa ]
  %.sroa.015.050.epil.init = phi i64 [ 0, %.lr.ph53.preheader ], [ %35, %._crit_edge54.loopexit.unr-lcssa ]
  %.sroa.017.049.epil.init = phi ptr [ %i.an, %.lr.ph53.preheader ], [ %28, %._crit_edge54.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod80 = trunc i64 %5 to i1
  call void @llvm.assume(i1 %lcmp.mod80)
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.017.049.epil.init, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.017.049.epil.init, i64 136
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !4
  %i.ck = add i64 %i.cj, %.sroa.012.051.epil.init
  %i.cl = load i64, ptr %i.ch, align 8, !range !5, !noundef !4
  %i.cm = trunc nuw i64 %i.cl to i1
  br i1 %i.cm, label %14, label %._crit_edge54.loopexit.epilog-lcssa

14:                                               ; preds = %.lr.ph53.epil.preheader
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.017.049.epil.init, i64 24
  %16 = load i64, ptr %15, align 8
  br label %._crit_edge54.loopexit.epilog-lcssa

._crit_edge54.loopexit.epilog-lcssa:              ; preds = %14, %.lr.ph53.epil.preheader
  %.sroa.020.0.epil = phi i64 [ %16, %14 ], [ 0, %.lr.ph53.epil.preheader ]
  %17 = add i64 %i.ck, %.sroa.020.0.epil
  %18 = getelementptr inbounds nuw i8, ptr %.sroa.017.049.epil.init, i64 128
  %19 = load i64, ptr %18, align 8, !noundef !4
  %20 = add i64 %19, %.sroa.015.050.epil.init
  br label %._crit_edge54

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit.epilog-lcssa, %._crit_edge54.loopexit.unr-lcssa, %._crit_edge
  %.sroa.015.0.lcssa = phi i64 [ 0, %._crit_edge ], [ %35, %._crit_edge54.loopexit.unr-lcssa ], [ %20, %._crit_edge54.loopexit.epilog-lcssa ]
  %.sroa.012.0.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.cu, %._crit_edge54.loopexit.unr-lcssa ], [ %17, %._crit_edge54.loopexit.epilog-lcssa ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.01.0.lcssa, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.04.0.lcssa, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.012.0.lcssa, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.015.0.lcssa, ptr %i.cr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

21:                                               ; preds = %.lr.ph53
  %22 = getelementptr inbounds nuw i8, ptr %.sroa.017.049, i64 24
  %23 = load i64, ptr %22, align 8
  br label %.lr.ph53.1

.lr.ph53.1:                                       ; preds = %.lr.ph53, %21
  %.sroa.020.0 = phi i64 [ %23, %21 ], [ 0, %.lr.ph53 ]
  %24 = add i64 %10, %.sroa.020.0
  %25 = getelementptr inbounds nuw i8, ptr %.sroa.017.049, i64 128
  %26 = load i64, ptr %25, align 8, !noundef !4
  %27 = add i64 %26, %.sroa.015.050
  %28 = getelementptr inbounds nuw i8, ptr %.sroa.017.049, i64 288 ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %.sroa.017.049, i64 160
  %30 = getelementptr inbounds nuw i8, ptr %.sroa.017.049, i64 280
  %31 = load i64, ptr %30, align 8, !noundef !4
  %32 = add i64 %31, %24
  %33 = load i64, ptr %29, align 8, !range !5, !noundef !4
  %34 = trunc nuw i64 %33 to i1
  br i1 %34, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph53.1
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.017.049, i64 168
  %i.ct = load i64, ptr %i.cs, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph53.1
  %.sroa.020.0.1 = phi i64 [ %i.ct, %bb.t ], [ 0, %.lr.ph53.1 ]
  %i.cu = add i64 %32, %.sroa.020.0.1             ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.017.049, i64 272
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !4
  %35 = add i64 %i.cw, %27                        ; 3 uses
  %niter82.next.1 = add i64 %niter82, 2           ; 2 uses
  %niter82.ncmp.1 = icmp eq i64 %niter82.next.1, %unroll_iter81
  br i1 %niter82.ncmp.1, label %._crit_edge54.loopexit.unr-lcssa, label %.lr.ph53

bb.v:                                             ; preds = %bb.w, %bb.j, %bb.c
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown3map7HashMapReNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage14IngredientInfoEECs4o81Y09oZk1_10ty_project.exit: ; preds = %bb.w, %bb.c
  %.pn.pn43 = phi { ptr, i32 } [ %.pn, %bb.c ], [ %i.cy, %bb.w ]
  resume { ptr, i32 } %.pn.pn43

bb.w:                                             ; preds = %bb.a
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage14IngredientInfoENtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cz, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.da, i64 noundef 144, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown3map7HashMapReNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage14IngredientInfoEECs4o81Y09oZk1_10ty_project.exit unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs4o81Y09oZk1_10ty_project2dbNtB2_15ProjectDatabase19check_with_reporter(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_RNvXsh_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtB5_2Db7project.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #40
  unreachable

_RNvXsh_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtB5_2Db7project.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.d = load i32, ptr %i.c, align 4
  tail call void @_RNvMsd_Cs4o81Y09oZk1_10ty_projectNtB5_7Project5check(i32 noundef %i.b, i32 noundef %i.d, ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs4o81Y09oZk1_10ty_project2dbNtB2_15ProjectDatabase5check(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 0, ptr %.sroa.45.0..sroa_idx, align 4
  %.sroa.56.sroa.3.0..sroa.56.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.56.sroa.3.0..sroa.56.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.d = load i32, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #40
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.f = load i32, ptr %i.e, align 4
  invoke void @_RNvMsd_Cs4o81Y09oZk1_10ty_projectNtB5_7Project5check(i32 noundef %i.d, i32 noundef %i.f, ptr noundef nonnull align 8 %1, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @50)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @_RNvMCs4o81Y09oZk1_10ty_projectNtB2_15CollectReporter11into_sorted(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) @35)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %bb.c, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs4o81Y09oZk1_10ty_project15CollectReporterEBD_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #41
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs4o81Y09oZk1_10ty_project2dbNtB2_15ProjectDatabase6freeze(ptr noalias noundef align 8 dereferenceable(128) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_RNvXsh_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtB5_2Db7project.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #40
  unreachable

_RNvXsh_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtB5_2Db7project.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.d = load i32, ptr %i.c, align 4
  tail call void @_RNvMsd_Cs4o81Y09oZk1_10ty_projectNtB5_7Project6freeze(i32 noundef %i.b, i32 noundef %i.d, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) @35)
  tail call void @_RNvMNtCs56aZGHL6Dc6_7ruff_db5filesNtB2_5Files6freeze(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCsdbMkb98Dhky_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 13, 22) %2, ptr noundef nonnull %3, ptr noundef nonnull %4) unnamed_addr #8 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %4, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !align !20, !noundef !4 ; 11 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !range !1055, !noundef !4
  %switch.offset = sub nuw nsw i64 5, %i.j
  %i.k = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.l = icmp ult i64 %i.k, 6
  tail call void @llvm.assume(i1 %i.l)
  %.not72 = icmp samesign ugt i64 %switch.offset, %i.k
  br i1 %.not72, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.e, %switch.lookup, %bb.a
  ret void

bb.c:                                             ; preds = %switch.lookup
  %i.m = tail call { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 3 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 5, ptr %i.e, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %.sroa.570.0..sroa_idx, align 8
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %2, ptr %.sroa.771.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !4, !nonnull !4
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %0, align 8, !range !13, !noundef !4
  %.not73 = icmp eq i64 %i.s, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  br i1 %.not73, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.o, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.b

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.u = load ptr, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %.not76 = icmp eq ptr %i.u, null
  br i1 %.not76, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = load ptr, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %.not74 = icmp eq ptr %i.v, null
  br i1 %.not74, label %bb.m, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.x = load i64, ptr %i.w, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.sroa.540.sroa.5.0 = phi i64 [ %i.x, %bb.h ], [ undef, %bb.f ]
  %.sroa.039.0 = phi i64 [ 1, %bb.h ], [ 2, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !noundef !4 ; 2 uses
  %.not77 = icmp eq ptr %i.z, null
  br i1 %.not77, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.ab = load i64, ptr %i.aa, align 8
  br label %bb.k

end_hunk_0
