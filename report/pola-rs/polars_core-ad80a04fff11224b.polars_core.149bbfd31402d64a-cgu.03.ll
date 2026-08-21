Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.03?download=true
inline.NumInlined: 23643
inline.NumDeleted: 6782
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB6_12ChunkedArrayNtNtB8_9datatypes8ListTypeENtB2_17ChunkNestingUtils15propagate_nulls:bb.a
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !228048
  store i32 %i.bl, ptr %.sroa.59.0..sroa_idx, align 8, !dbg !228048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !227853
  br label %bb.aa, !dbg !227775

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.trap(), !dbg !228049
  unreachable, !dbg !228049

bb.ae:                                            ; preds = %bb.l
  unreachable

bb.af:                                            ; preds = %bb.m, %bb.l, %bb.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.c) #36
          to label %.body.thread unwind label %bb.ag, !dbg !227885

bb.ag:                                            ; preds = %bb.af, %.body.thread
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !228050
  unreachable, !dbg !228050
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB6_12ChunkedArrayNtNtB8_9datatypes8ListTypeENtB2_17ChunkNestingUtils22find_validity_mismatch(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !228051 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !228052
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes8ListTypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !228052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !228053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !228053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !228054
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !228054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !228054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !228055
  %i.f = load i64, ptr %i.d, align 8, !dbg !228056, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.f, -9223372036854775808, !dbg !228056 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !228061 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !dbg !228061, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.h, i64 8, !dbg !228062
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.g, !dbg !228062
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !228062, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.h, ptr %i.d, !dbg !228062
  %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !228062
  %.sroa.07.0.val17 = load i64, ptr %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel, align 8, !dbg !228062, !noundef !11
  %i.i = load ptr, ptr %i.c, align 8, !dbg !228063, !noundef !11
  %.not13 = icmp eq ptr %i.i, null, !dbg !228063  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !228066 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !228066, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not13, ptr %i.k, ptr %i.c, !dbg !228066
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !228065, !nonnull !11, !noundef !11
  %.sroa.gep28 = getelementptr i8, ptr %i.k, i64 8, !dbg !228065
  %.sroa.08.0.sroa.sel = select i1 %.not13, ptr %.sroa.gep28, ptr %i.j, !dbg !228065
  %.sroa.08.0.val16 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !228065, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val16, i64 16, !dbg !228067
  %i.m = load i64, ptr %i.l, align 8, !dbg !228067, !range !360, !invariant.load !11
  %i.n = add nsw i64 %i.m, -1, !dbg !228067
  %i.o = and i64 %i.n, -16, !dbg !228067
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.o, !dbg !228067
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !228067
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val16, i64 312, !dbg !228065
  %i.s = load ptr, ptr %i.r, align 8, !dbg !228065, !invariant.load !11, !nonnull !11
  %i.t = invoke noundef nonnull align 8 ptr %i.s(ptr noundef nonnull %i.q)
          to label %bb.e unwind label %.loopexit.split-lp, !dbg !228071 ; 2 uses

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.a, %bb.n, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228072), !dbg !228075
  %i.u = load ptr, ptr %i.c, align 8, !dbg !228076, !alias.scope !228072, !noundef !11 ; 2 uses
  %i.v = icmp eq ptr %i.u, null, !dbg !228076
  br i1 %i.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.c, !dbg !228076

bb.c:                                             ; preds = %bb.b
  %i.w = atomicrmw sub ptr %i.u, i64 1 release, align 8, !dbg !228078, !noalias !228084
  %i.x = icmp eq i64 %i.w, 1, !dbg !228091
  br i1 %i.x, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !228091

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !228092
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.p, !dbg !228094

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val17, !dbg !228095
  %i.z = getelementptr i8, ptr %i.t, i64 8, !dbg !228100
  %.val = load ptr, ptr %i.z, align 8, !dbg !228100, !nonnull !11, !noundef !11 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.t, i64 16, !dbg !228100
  %.val18 = load i64, ptr %i.aa, align 8, !dbg !228100, !noundef !11
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.val18, !dbg !228101
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes8ListTypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.y, ptr noundef nonnull %.val, ptr noundef nonnull %i.ab)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes8ListTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !228108

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes8ListTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.e
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !228058 ; 2 uses
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !228058
  %.sroa.430.0.copyload = load ptr, ptr %.sroa.430.0..sroa_idx, align 8, !dbg !228058 ; 2 uses
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !228058
  %.sroa.531.0.copyload = load i64, ptr %.sroa.531.0..sroa_idx, align 8, !dbg !228058 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !228058
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !228058 ; 2 uses
  %i.ac = icmp ult i64 %.sroa.531.0.copyload, %.sroa.7.0.copyload, !dbg !228111
  br i1 %i.ac, label %.lr.ph41, label %._crit_edge42, !dbg !228111

.lr.ph41:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes8ListTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.430.0.copyload) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f, !dbg !228111

bb.f:                                             ; preds = %.lr.ph41, %._crit_edge
  %.sroa.0.040 = phi i32 [ 0, %.lr.ph41 ], [ %i.bv, %._crit_edge ] ; 3 uses
  %.sroa.531.039 = phi i64 [ %.sroa.531.0.copyload, %.lr.ph41 ], [ %i.af, %._crit_edge ] ; 3 uses
  %i.af = add i64 %.sroa.531.039, 1, !dbg !228118 ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.531.039, !dbg !228120
  %.val1.i.i = load ptr, ptr %i.ag, align 8, !dbg !228128, !noalias !228129, !nonnull !11, !noundef !11 ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.430.0.copyload, i64 %.sroa.531.039, !dbg !228132 ; 2 uses
  %i.ai = load i64, ptr %i.ad, align 8, !dbg !228135, !noundef !11 ; 6 uses
  %i.aj = icmp ult i64 %i.ai, 2305843009213693952, !dbg !228139
  tail call void @llvm.assume(i1 %i.aj), !dbg !228141
  %i.ak = load ptr, ptr %i.ah, align 8, !dbg !228142, !nonnull !11, !noundef !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !228142
  %i.am = load ptr, ptr %i.al, align 8, !dbg !228142, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @33, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.l unwind label %.loopexit, !dbg !228146

._crit_edge42:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes8ListTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228147), !dbg !228075
  %i.an = load ptr, ptr %i.c, align 8, !dbg !228150, !alias.scope !228147, !noundef !11 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null, !dbg !228150
  br i1 %i.ao, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, label %bb.g, !dbg !228150

bb.g:                                             ; preds = %._crit_edge42
  %i.ap = atomicrmw sub ptr %i.an, i64 1 release, align 8, !dbg !228152, !noalias !228158
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !228165
  br i1 %i.aq, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, !dbg !228165

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !228166
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21 unwind label %bb.j, !dbg !228168

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.c, %bb.b, %bb.d, %bb.j
  %.pn = phi { ptr, i32 } [ %i.at, %bb.j ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.b ], [ %lpad.phi, %bb.c ]
  %i.ar = load i64, ptr %i.d, align 8, !dbg !228169, !range !12048, !alias.scope !228171, !noundef !11
  %i.as = icmp eq i64 %i.ar, -9223372036854775808, !dbg !228169
  br i1 %i.as, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8ListTypeEEEB1l_.exit, label %bb.i, !dbg !228169

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8ListTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8ListTypeEEEB1l_.exit unwind label %bb.p, !dbg !228169

bb.j:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21: ; preds = %bb.g, %._crit_edge42, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !228075
  %i.au = load i64, ptr %i.d, align 8, !dbg !228174, !range !12048, !alias.scope !228176, !noundef !11
  %i.av = icmp eq i64 %i.au, -9223372036854775808, !dbg !228174
  br i1 %i.av, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8ListTypeEEEB1l_.exit23, label %bb.k, !dbg !228174

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8ListTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !228174
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8ListTypeEEEB1l_.exit23, !dbg !228174

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8ListTypeEEEB1l_.exit23: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !228075
  ret void, !dbg !228179

bb.l:                                             ; preds = %bb.f
  %i.aw = load i64, ptr %i.ad, align 8, !dbg !228180, !noundef !11 ; 6 uses
  %i.ax = icmp ugt i64 %i.ai, %i.aw, !dbg !228187
  br i1 %i.ax, label %bb.n, label %bb.m, !dbg !228187, !prof !54

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.ae, align 8, !dbg !228192, !nonnull !11, !noundef !11 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.aw, !dbg !228201
  %i.ba = icmp samesign eq i64 %i.ai, %i.aw, !dbg !228210
  br i1 %i.ba, label %._crit_edge, label %.lr.ph.preheader, !dbg !228212

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ai, !dbg !228219 ; 3 uses
  %i.bc = shl i64 %i.aw, 2, !dbg !228212
  %3 = shl nuw nsw i64 %i.ai, 2, !dbg !228212
  %4 = add i64 %i.bc, -4, !dbg !228212
  %i.bd = sub i64 %4, %3, !dbg !228212            ; 2 uses
  %i.be = lshr exact i64 %i.bd, 2, !dbg !228212
  %i.bf = add nuw nsw i64 %i.be, 1, !dbg !228212  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 28, !dbg !228212
  br i1 %min.iters.check, label %.lr.ph.preheader63, label %vector.ph, !dbg !228212

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bf, 9223372036854775800     ; 3 uses
  %i.bg = shl i64 %n.vec, 2
  %i.bh = getelementptr i8, ptr %i.bb, i64 %i.bg
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.040, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !228212

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bi ; 3 uses
  %i.bj = getelementptr i8, ptr %next.gep, i64 16, !dbg !228224 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !228224
  %wide.load62 = load <4 x i32>, ptr %i.bj, align 4, !dbg !228224
  %i.bk = add <4 x i32> %wide.load, %broadcast.splat, !dbg !228224
  %i.bl = add <4 x i32> %wide.load62, %broadcast.splat, !dbg !228224
  store <4 x i32> %i.bk, ptr %next.gep, align 4, !dbg !228224
  store <4 x i32> %i.bl, ptr %i.bj, align 4, !dbg !228224
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec, !dbg !228212
  br i1 %i.bm, label %middle.block, label %vector.body, !dbg !228212, !llvm.loop !228226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec, !dbg !228212
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader63, !dbg !228212

.lr.ph.preheader63:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.038.ph = phi ptr [ %i.bb, %.lr.ph.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph, !dbg !228212

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ai, i64 noundef %i.aw, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #37
          to label %bb.o unwind label %.loopexit.split-lp, !dbg !228227

.lr.ph:                                           ; preds = %.lr.ph.preheader63, %.lr.ph
  %.sroa.05.038 = phi ptr [ %i.bn, %.lr.ph ], [ %.sroa.05.038.ph, %.lr.ph.preheader63 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.05.038, i64 4, !dbg !228228 ; 2 uses
  %i.bo = load i32, ptr %.sroa.05.038, align 4, !dbg !228224, !noundef !11
  %i.bp = add i32 %i.bo, %.sroa.0.040, !dbg !228224
  store i32 %i.bp, ptr %.sroa.05.038, align 4, !dbg !228224
  %i.bq = icmp eq ptr %i.bn, %i.az, !dbg !228210
  br i1 %i.bq, label %._crit_edge, label %.lr.ph, !dbg !228212, !llvm.loop !228231

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !228232
  %i.bs = load i64, ptr %i.br, align 8, !dbg !228232, !noundef !11
  %i.bt = trunc i64 %i.bs to i32, !dbg !228239
  %i.bu = add i32 %.sroa.0.040, -1, !dbg !228239
  %i.bv = add i32 %i.bu, %i.bt, !dbg !228240
  %exitcond.not = icmp eq i64 %i.af, %.sroa.7.0.copyload, !dbg !228111
  br i1 %exitcond.not, label %._crit_edge42, label %bb.f, !dbg !228111

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.d
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !228241
  unreachable, !dbg !228241

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8ListTypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.i
  resume { ptr, i32 } %.pn, !dbg !228241
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB6_12ChunkedArrayNtNtB8_9datatypes8ListTypeENtB2_17ChunkNestingUtils32trim_lists_to_normalized_offsets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !228242 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !228243 ; 2 uses
  %i.g = tail call noundef i32 @_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flagsNtB5_17StatisticsFlagsIM3get(ptr noundef nonnull align 4 %i.f), !dbg !228246 ; 3 uses
  %i.h = and i32 %i.g, 8, !dbg !228247
  %.not = icmp eq i32 %i.h, 0, !dbg !228257
  br i1 %.not, label %bb.c, label %bb.b, !dbg !228257

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !228258
  br label %bb.w, !dbg !228259

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !228261
  store i64 0, ptr %i.e, align 8, !dbg !228262
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !228262 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !dbg !228262
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !228262 ; 4 uses
  store i64 0, ptr %i.j, align 8, !dbg !228262
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !228265 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !dbg !228265, !nonnull !11, !noundef !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !228281 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !228281, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.n, 4, !dbg !228282
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx, !dbg !228282
  %i.p = icmp eq i64 %i.n, 0, !dbg !228291
  br i1 %i.p, label %.thread.thread, label %.lr.ph, !dbg !228297

.thread.loopexit:                                 ; preds = %bb.f
  %.pr.pre = load i64, ptr %i.j, align 8, !dbg !228298
  br label %.thread, !dbg !228298

.body.thread:                                     ; preds = %.loopexit, %.loopexit.split-lp, %bb.p, %bb.l, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %i.bd, %bb.ab ], [ %i.ae, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #36
          to label %common.resume unwind label %bb.ac, !dbg !228303

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit.split-lp:                               ; preds = %.thread.thread, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %.sroa.0.040 = phi ptr [ %i.q, %bb.f ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.7.039 = phi i64 [ %i.r, %bb.f ], [ 0, %bb.c ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 16, !dbg !228304 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.0.040, align 8, !dbg !228306, !noalias !228309, !nonnull !11, !noundef !11
  %i.r = add nuw nsw i64 %.sroa.7.039, 1, !dbg !228314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !228315
  invoke void @_RINvNtCslFlrwjHoTci_14polars_compute32trim_lists_to_normalized_offsets37trim_lists_to_normalized_offsets_listxECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.d, ptr noundef nonnull align 8 %.val.i.i)
          to label %bb.d unwind label %.loopexit, !dbg !228315

.thread:                                          ; preds = %.thread.loopexit, %bb.r
  %i.s = phi i64 [ %i.ao, %bb.r ], [ %.pr.pre, %.thread.loopexit ], !dbg !228298 ; 3 uses
  %i.t = icmp ult i64 %i.s, 576460752303423488, !dbg !228318
  call void @llvm.assume(i1 %i.t), !dbg !228320
  %i.u = icmp eq i64 %i.s, 0, !dbg !228321
  br i1 %i.u, label %.thread.thread, label %bb.s, !dbg !228321

bb.d:                                             ; preds = %.lr.ph
  %i.v = load i8, ptr %i.d, align 8, !dbg !228315, !range !49249, !noundef !11
  %.not24 = icmp eq i8 %i.v, 42, !dbg !228315
  br i1 %.not24, label %bb.f, label %bb.e, !dbg !228322

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !228323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false), !dbg !228323
  %i.w = load i64, ptr %i.m, align 8, !dbg !228324, !noundef !11 ; 2 uses
  %i.x = icmp ult i64 %i.w, 576460752303423488, !dbg !228326
  tail call void @llvm.assume(i1 %i.x), !dbg !228328
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.w)
          to label %bb.g unwind label %bb.ab, !dbg !228329

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !228330
  %i.y = icmp eq ptr %i.q, %i.o, !dbg !228291
  br i1 %i.y, label %.thread.loopexit, label %.lr.ph, !dbg !228297

bb.g:                                             ; preds = %bb.e
  %i.z = load i64, ptr %i.m, align 8, !dbg !228331, !noundef !11 ; 2 uses
  %.not25 = icmp ugt i64 %.sroa.7.039, %i.z
  br i1 %.not25, label %bb.h, label %bb.i, !dbg !228337, !prof !102785

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.7.039, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #37
          to label %bb.aa unwind label %bb.ab, !dbg !228346

bb.i:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.k, align 8, !dbg !228347, !nonnull !11, !noundef !11 ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.sroa.7.039, !dbg !228356
  invoke void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtB2b_5slice4iter4IterBG_EEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab)
          to label %bb.j unwind label %bb.ab, !dbg !228364

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !228369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false), !dbg !228369
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !228370, !noalias !228379
  %i.ac = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 129) 104, i64 noundef range(i64 4, 17) 8) #41, !dbg !228382, !noalias !228379 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null, !dbg !228383
  br i1 %i.ad, label %bb.k, label %bb.n, !dbg !228384, !prof !54

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #37
          to label %.noexc unwind label %bb.l, !dbg !228385

.noexc:                                           ; preds = %bb.k
  unreachable, !dbg !228385

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b) #36
          to label %.body.thread unwind label %bb.m, !dbg !228386

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !228387
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10StructTypeENtB5_17ChunkNestingUtils15propagate_nulls:bb.a
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !318261
  store i32 %i.bs, ptr %.sroa.59.0..sroa_idx, align 8, !dbg !318261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !318064
  br label %bb.z, !dbg !317950

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.trap(), !dbg !318262
  unreachable, !dbg !318262

bb.ad:                                            ; preds = %bb.k
  unreachable

bb.ae:                                            ; preds = %bb.l, %bb.k, %bb.h
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7struct_11StructArrayECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.c) #36
          to label %.body.thread unwind label %bb.af, !dbg !318096

bb.af:                                            ; preds = %bb.ae, %.body.thread
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !318263
  unreachable, !dbg !318263
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10StructTypeENtB5_17ChunkNestingUtils22find_validity_mismatch(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !318264 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !318265
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes10StructTypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !318265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !318266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !318266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !318267
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !318267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !318267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !318268
  %i.f = load i64, ptr %i.d, align 8, !dbg !318269, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.f, -9223372036854775808, !dbg !318269 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !318274 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !dbg !318274, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.h, i64 8, !dbg !318275
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.g, !dbg !318275
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !318275, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.h, ptr %i.d, !dbg !318275
  %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !318275
  %.sroa.07.0.val17 = load i64, ptr %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel, align 8, !dbg !318275, !noundef !11
  %i.i = load ptr, ptr %i.c, align 8, !dbg !318276, !noundef !11
  %.not13 = icmp eq ptr %i.i, null, !dbg !318276  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !318279 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !318279, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not13, ptr %i.k, ptr %i.c, !dbg !318279
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !318278, !nonnull !11, !noundef !11
  %.sroa.gep28 = getelementptr i8, ptr %i.k, i64 8, !dbg !318278
  %.sroa.08.0.sroa.sel = select i1 %.not13, ptr %.sroa.gep28, ptr %i.j, !dbg !318278
  %.sroa.08.0.val16 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !318278, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val16, i64 16, !dbg !318280
  %i.m = load i64, ptr %i.l, align 8, !dbg !318280, !range !360, !invariant.load !11
  %i.n = add nsw i64 %i.m, -1, !dbg !318280
  %i.o = and i64 %i.n, -16, !dbg !318280
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.o, !dbg !318280
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !318280
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val16, i64 312, !dbg !318278
  %i.s = load ptr, ptr %i.r, align 8, !dbg !318278, !invariant.load !11, !nonnull !11
  %i.t = invoke noundef nonnull align 8 ptr %i.s(ptr noundef nonnull %i.q)
          to label %bb.e unwind label %.loopexit.split-lp, !dbg !318284 ; 2 uses

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.a, %bb.n, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318285), !dbg !318288
  %i.u = load ptr, ptr %i.c, align 8, !dbg !318289, !alias.scope !318285, !noundef !11 ; 2 uses
  %i.v = icmp eq ptr %i.u, null, !dbg !318289
  br i1 %i.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.c, !dbg !318289

bb.c:                                             ; preds = %bb.b
  %i.w = atomicrmw sub ptr %i.u, i64 1 release, align 8, !dbg !318291, !noalias !318297
  %i.x = icmp eq i64 %i.w, 1, !dbg !318304
  br i1 %i.x, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !318304

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !318305
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.p, !dbg !318307

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val17, !dbg !318308
  %i.z = getelementptr i8, ptr %i.t, i64 8, !dbg !318313
  %.val = load ptr, ptr %i.z, align 8, !dbg !318313, !nonnull !11, !noundef !11 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.t, i64 16, !dbg !318313
  %.val18 = load i64, ptr %i.aa, align 8, !dbg !318313, !noundef !11
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.val18, !dbg !318314
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes10StructTypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.y, ptr noundef nonnull %.val, ptr noundef nonnull %i.ab)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10StructTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !318321

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10StructTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.e
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !318271 ; 2 uses
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !318271
  %.sroa.430.0.copyload = load ptr, ptr %.sroa.430.0..sroa_idx, align 8, !dbg !318271 ; 2 uses
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !318271
  %.sroa.531.0.copyload = load i64, ptr %.sroa.531.0..sroa_idx, align 8, !dbg !318271 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !318271
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !318271 ; 2 uses
  %i.ac = icmp ult i64 %.sroa.531.0.copyload, %.sroa.7.0.copyload, !dbg !318324
  br i1 %i.ac, label %.lr.ph41, label %._crit_edge42, !dbg !318324

.lr.ph41:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10StructTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.430.0.copyload) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f, !dbg !318324

bb.f:                                             ; preds = %.lr.ph41, %._crit_edge
  %.sroa.0.040 = phi i32 [ 0, %.lr.ph41 ], [ %i.bu, %._crit_edge ] ; 3 uses
  %.sroa.531.039 = phi i64 [ %.sroa.531.0.copyload, %.lr.ph41 ], [ %i.af, %._crit_edge ] ; 3 uses
  %i.af = add i64 %.sroa.531.039, 1, !dbg !318331 ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.531.039, !dbg !318333
  %.val1.i.i = load ptr, ptr %i.ag, align 8, !dbg !318339, !noalias !318340, !nonnull !11, !noundef !11 ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.430.0.copyload, i64 %.sroa.531.039, !dbg !318343 ; 2 uses
  %i.ai = load i64, ptr %i.ad, align 8, !dbg !318346, !noundef !11 ; 6 uses
  %i.aj = icmp ult i64 %i.ai, 2305843009213693952, !dbg !318350
  tail call void @llvm.assume(i1 %i.aj), !dbg !318352
  %i.ak = load ptr, ptr %i.ah, align 8, !dbg !318353, !nonnull !11, !noundef !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !318353
  %i.am = load ptr, ptr %i.al, align 8, !dbg !318353, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @342, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.l unwind label %.loopexit, !dbg !318357

._crit_edge42:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10StructTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318358), !dbg !318288
  %i.an = load ptr, ptr %i.c, align 8, !dbg !318361, !alias.scope !318358, !noundef !11 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null, !dbg !318361
  br i1 %i.ao, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, label %bb.g, !dbg !318361

bb.g:                                             ; preds = %._crit_edge42
  %i.ap = atomicrmw sub ptr %i.an, i64 1 release, align 8, !dbg !318363, !noalias !318369
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !318376
  br i1 %i.aq, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, !dbg !318376

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !318377
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21 unwind label %bb.j, !dbg !318379

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.c, %bb.b, %bb.d, %bb.j
  %.pn = phi { ptr, i32 } [ %i.at, %bb.j ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.b ], [ %lpad.phi, %bb.c ]
  %i.ar = load i64, ptr %i.d, align 8, !dbg !318380, !range !12048, !alias.scope !318382, !noundef !11
  %i.as = icmp eq i64 %i.ar, -9223372036854775808, !dbg !318380
  br i1 %i.as, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StructTypeEEEB1l_.exit, label %bb.i, !dbg !318380

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10StructTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StructTypeEEEB1l_.exit unwind label %bb.p, !dbg !318380

bb.j:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21: ; preds = %bb.g, %._crit_edge42, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !318288
  %i.au = load i64, ptr %i.d, align 8, !dbg !318385, !range !12048, !alias.scope !318387, !noundef !11
  %i.av = icmp eq i64 %i.au, -9223372036854775808, !dbg !318385
  br i1 %i.av, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StructTypeEEEB1l_.exit23, label %bb.k, !dbg !318385

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10StructTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !318385
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StructTypeEEEB1l_.exit23, !dbg !318385

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StructTypeEEEB1l_.exit23: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !318288
  ret void, !dbg !318390

bb.l:                                             ; preds = %bb.f
  %i.aw = load i64, ptr %i.ad, align 8, !dbg !318391, !noundef !11 ; 6 uses
  %i.ax = icmp ugt i64 %i.ai, %i.aw, !dbg !318398
  br i1 %i.ax, label %bb.n, label %bb.m, !dbg !318398, !prof !54

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.ae, align 8, !dbg !318403, !nonnull !11, !noundef !11 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.aw, !dbg !318412
  %i.ba = icmp samesign eq i64 %i.ai, %i.aw, !dbg !318421
  br i1 %i.ba, label %._crit_edge, label %.lr.ph.preheader, !dbg !318423

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ai, !dbg !318430 ; 3 uses
  %i.bc = shl i64 %i.aw, 2, !dbg !318423
  %3 = shl nuw nsw i64 %i.ai, 2, !dbg !318423
  %4 = add i64 %i.bc, -4, !dbg !318423
  %i.bd = sub i64 %4, %3, !dbg !318423            ; 2 uses
  %i.be = lshr exact i64 %i.bd, 2, !dbg !318423
  %i.bf = add nuw nsw i64 %i.be, 1, !dbg !318423  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 28, !dbg !318423
  br i1 %min.iters.check, label %.lr.ph.preheader63, label %vector.ph, !dbg !318423

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bf, 9223372036854775800     ; 3 uses
  %i.bg = shl i64 %n.vec, 2
  %i.bh = getelementptr i8, ptr %i.bb, i64 %i.bg
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.040, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !318423

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bi ; 3 uses
  %i.bj = getelementptr i8, ptr %next.gep, i64 16, !dbg !318435 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !318435
  %wide.load62 = load <4 x i32>, ptr %i.bj, align 4, !dbg !318435
  %i.bk = add <4 x i32> %wide.load, %broadcast.splat, !dbg !318435
  %i.bl = add <4 x i32> %wide.load62, %broadcast.splat, !dbg !318435
  store <4 x i32> %i.bk, ptr %next.gep, align 4, !dbg !318435
  store <4 x i32> %i.bl, ptr %i.bj, align 4, !dbg !318435
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec, !dbg !318423
  br i1 %i.bm, label %middle.block, label %vector.body, !dbg !318423, !llvm.loop !318437

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec, !dbg !318423
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader63, !dbg !318423

.lr.ph.preheader63:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.038.ph = phi ptr [ %i.bb, %.lr.ph.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph, !dbg !318423

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ai, i64 noundef %i.aw, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344) #37
          to label %bb.o unwind label %.loopexit.split-lp, !dbg !318438

.lr.ph:                                           ; preds = %.lr.ph.preheader63, %.lr.ph
  %.sroa.05.038 = phi ptr [ %i.bn, %.lr.ph ], [ %.sroa.05.038.ph, %.lr.ph.preheader63 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.05.038, i64 4, !dbg !318439 ; 2 uses
  %i.bo = load i32, ptr %.sroa.05.038, align 4, !dbg !318435, !noundef !11
  %i.bp = add i32 %i.bo, %.sroa.0.040, !dbg !318435
  store i32 %i.bp, ptr %.sroa.05.038, align 4, !dbg !318435
  %i.bq = icmp eq ptr %i.bn, %i.az, !dbg !318421
  br i1 %i.bq, label %._crit_edge, label %.lr.ph, !dbg !318423, !llvm.loop !318442

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 56, !dbg !318443
  %i.bs = load i64, ptr %i.br, align 8, !dbg !318443, !noundef !11
  %i.bt = trunc i64 %i.bs to i32, !dbg !318446
  %i.bu = add i32 %.sroa.0.040, %i.bt, !dbg !318447
  %exitcond.not = icmp eq i64 %i.af, %.sroa.7.0.copyload, !dbg !318324
  br i1 %exitcond.not, label %._crit_edge42, label %bb.f, !dbg !318324

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.d
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !318448
  unreachable, !dbg !318448

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StructTypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.i
  resume { ptr, i32 } %.pn, !dbg !318448
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10StructTypeENtB5_17ChunkNestingUtils32trim_lists_to_normalized_offsets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !318449 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !318450 ; 2 uses
  %i.g = tail call noundef i32 @_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flagsNtB5_17StatisticsFlagsIM3get(ptr noundef nonnull align 4 %i.f), !dbg !318453 ; 3 uses
  %i.h = and i32 %i.g, 8, !dbg !318454
  %.not = icmp eq i32 %i.h, 0, !dbg !318464
  br i1 %.not, label %bb.b, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs0_NtNtNtBW_13chunked_array3ops13nesting_utilsINtB2F_12ChunkedArrayNtBU_10StructTypeENtB2B_17ChunkNestingUtils32trim_lists_to_normalized_offsets0EBW_.exit, !dbg !318464

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !318465 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !dbg !318465, !nonnull !11, !noundef !11 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !318471
  %i.l = load i8, ptr %i.k, align 16, !dbg !318471, !range !410, !noundef !11
  %i.m = icmp eq i8 %i.l, 28, !dbg !318472
  br i1 %i.m, label %_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7struct_INtB4_12ChunkedArrayNtNtB6_9datatypes10StructTypeE13struct_fields.exit, label %bb.c, !dbg !318472, !prof !500

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #39, !dbg !318473
  unreachable, !dbg !318473

_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7struct_INtB4_12ChunkedArrayNtNtB6_9datatypes10StructTypeE13struct_fields.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !318474
  %i.o = load ptr, ptr %i.n, align 16, !dbg !318474, !nonnull !11, !noundef !11 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !318481
  %i.q = load i64, ptr %i.p, align 8, !dbg !318481, !noundef !11 ; 2 uses
  %.idx55 = mul nuw nsw i64 %i.q, 80, !dbg !318482
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx55, !dbg !318482
  %.not.not.not.i.not53 = icmp eq i64 %i.q, 0, !dbg !318491
  br i1 %.not.not.not.i.not53, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs0_NtNtNtBW_13chunked_array3ops13nesting_utilsINtB2F_12ChunkedArrayNtBU_10StructTypeENtB2B_17ChunkNestingUtils32trim_lists_to_normalized_offsets0EBW_.exit, label %.lr.ph54, !dbg !318501

bb.d:                                             ; preds = %.lr.ph54
  %i.s = getelementptr inbounds nuw i8, ptr %i.t, i64 80, !dbg !318502 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.s, %i.r, !dbg !318491
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs0_NtNtNtBW_13chunked_array3ops13nesting_utilsINtB2F_12ChunkedArrayNtBU_10StructTypeENtB2B_17ChunkNestingUtils32trim_lists_to_normalized_offsets0EBW_.exit, label %.lr.ph54, !dbg !318501

.lr.ph54:                                         ; preds = %_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7struct_INtB4_12ChunkedArrayNtNtB6_9datatypes10StructTypeE13struct_fields.exit, %bb.d
  %i.t = phi ptr [ %i.s, %bb.d ], [ %i.o, %_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7struct_INtB4_12ChunkedArrayNtNtB6_9datatypes10StructTypeE13struct_fields.exit ] ; 2 uses
  %i.u = tail call noundef zeroext i1 @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType23contains_list_recursive(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %i.t), !dbg !318505, !noalias !318509
  br i1 %i.u, label %bb.e, label %bb.d, !dbg !318512

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs0_NtNtNtBW_13chunked_array3ops13nesting_utilsINtB2F_12ChunkedArrayNtBU_10StructTypeENtB2B_17ChunkNestingUtils32trim_lists_to_normalized_offsets0EBW_.exit: ; preds = %bb.d, %_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7struct_INtB4_12ChunkedArrayNtNtB6_9datatypes10StructTypeE13struct_fields.exit, %bb.a
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !318513
  br label %bb.y, !dbg !318514

bb.e:                                             ; preds = %.lr.ph54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !318516
  store i64 0, ptr %i.e, align 8, !dbg !318517
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !318517 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !dbg !318517
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !318517 ; 4 uses
  store i64 0, ptr %i.w, align 8, !dbg !318517
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !318520 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !dbg !318520, !nonnull !11, !noundef !11 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !318536 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !dbg !318536, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.aa, 4, !dbg !318537
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx, !dbg !318537
  %i.ac = icmp eq i64 %i.aa, 0, !dbg !318548
  br i1 %i.ac, label %.thread.thread, label %.lr.ph, !dbg !318554

.thread.loopexit:                                 ; preds = %bb.h
  %.pr.pre = load i64, ptr %i.w, align 8, !dbg !318555
  br label %.thread, !dbg !318555

.body.thread:                                     ; preds = %.loopexit, %.loopexit.split-lp, %bb.r, %bb.n, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.r ], [ %i.bp, %bb.ad ], [ %i.ar, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #36
          to label %common.resume unwind label %bb.ae, !dbg !318560

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit.split-lp:                               ; preds = %.thread.thread, %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.sroa.030.041 = phi ptr [ %i.ad, %bb.h ], [ %i.y, %bb.e ] ; 2 uses
  %.sroa.7.040 = phi i64 [ %i.ae, %bb.h ], [ 0, %bb.e ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.030.041, i64 16, !dbg !318561 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.030.041, align 8, !dbg !318563, !noalias !318566, !nonnull !11, !noundef !11
  %i.ae = add nuw nsw i64 %.sroa.7.040, 1, !dbg !318571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !318572
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute32trim_lists_to_normalized_offsets39trim_lists_to_normalized_offsets_struct(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.d, ptr noundef nonnull align 8 %.val.i.i)
          to label %bb.f unwind label %.loopexit, !dbg !318572

.thread:                                          ; preds = %.thread.loopexit, %bb.t
  %i.af = phi i64 [ %i.bb, %bb.t ], [ %.pr.pre, %.thread.loopexit ], !dbg !318555 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 576460752303423488, !dbg !318575
  call void @llvm.assume(i1 %i.ag), !dbg !318577
  %i.ah = icmp eq i64 %i.af, 0, !dbg !318578
  br i1 %i.ah, label %.thread.thread, label %bb.u, !dbg !318578

bb.f:                                             ; preds = %.lr.ph
  %i.ai = load i64, ptr %i.d, align 8, !dbg !318572, !range !12048, !noundef !11
  %.not24 = icmp eq i64 %i.ai, -9223372036854775808, !dbg !318572
  br i1 %.not24, label %bb.h, label %bb.g, !dbg !318579

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !318580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !dbg !318580
  %i.aj = load i64, ptr %i.z, align 8, !dbg !318581, !noundef !11 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 576460752303423488, !dbg !318583
  tail call void @llvm.assume(i1 %i.ak), !dbg !318585
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.aj)
          to label %bb.i unwind label %bb.ad, !dbg !318586

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !318587
  %i.al = icmp eq ptr %i.ad, %i.ab, !dbg !318548
  br i1 %i.al, label %.thread.loopexit, label %.lr.ph, !dbg !318554

bb.i:                                             ; preds = %bb.g
  %i.am = load i64, ptr %i.z, align 8, !dbg !318588, !noundef !11 ; 2 uses
  %.not25 = icmp ugt i64 %.sroa.7.040, %i.am
  br i1 %.not25, label %bb.j, label %bb.k, !dbg !318594, !prof !102785

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.7.040, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #37
          to label %bb.ac unwind label %bb.ad, !dbg !318603

end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10BinaryTypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_:bb.a
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !345982
  %.val19 = load i64, ptr %i.e, align 8, !dbg !345982, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !345983, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !345983
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !345983, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !345985
  %i.h = load i64, ptr %i.g, align 8, !dbg !345985, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !345985
  %i.j = and i64 %i.i, -16, !dbg !345985
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !345985
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !345985
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !345983
  %i.n = load ptr, ptr %i.m, align 8, !dbg !345983, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !345989
  %i.p = icmp eq i64 %.val19, %i.o, !dbg !345990
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !345990

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val19, 0, !dbg !345992
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !345992

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !345993
  %.val21 = load i64, ptr %i.r, align 8, !dbg !345993, !noundef !11
  %i.s = icmp eq i64 %.val19, %.val21, !dbg !345994
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !345994

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g, %bb.r, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345995), !dbg !345998
  %i.t = load ptr, ptr %i.c, align 8, !dbg !345999, !alias.scope !345995, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !345999
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !345999

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !346001, !noalias !346007
  %i.w = icmp eq i64 %i.v, 1, !dbg !346014
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !346014

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !346015
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !346017

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !346018
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes10BinaryTypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !346018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !346019
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !346019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !346020
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !346020
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !346020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !346021
  %i.y = load i64, ptr %i.d, align 8, !dbg !346022, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !346022 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !346027 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !346027, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !346028
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !346028
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !346028, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !346028
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !346028
  %.sroa.07.0.val20 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !346028, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !346029, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !346029 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !346032 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !346032, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !346032
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !346031, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !346031
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !346031
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !346031, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !346033
  %i.af = load i64, ptr %i.ae, align 8, !dbg !346033, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !346033
  %i.ah = and i64 %i.ag, -16, !dbg !346033
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !346033
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !346033
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !346031
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !346031, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !346037 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val20, !dbg !346038
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !346043
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !346043, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !346043
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !346043, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !346044
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes10BinaryTypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10BinaryTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !346051

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10BinaryTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !346024 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !346024
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !346024 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !346024
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !346024 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !346024
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !346024 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !346054
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !346054

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10BinaryTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !346054

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !346061 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !346063
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !346071, !noalias !346072, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !346075 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !346078, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !346082
  tail call void @llvm.assume(i1 %i.ay), !dbg !346084
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !346085, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !346085
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !346085, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @17, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !346089

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10BinaryTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346090), !dbg !345998
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !346093, !alias.scope !346090, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !346093
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !346093

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !346095, !noalias !346101
  %i.bf = icmp eq i64 %i.be, 1, !dbg !346108
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !346108

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !346109
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !346111

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !346112, !range !12048, !alias.scope !346114, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !346112
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEB1l_.exit, label %bb.l, !dbg !346112

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10BinaryTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEB1l_.exit unwind label %bb.t, !dbg !346112

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !345998
  %i.bj = load i64, ptr %i.d, align 8, !dbg !346117, !range !12048, !alias.scope !346119, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !346117
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEB1l_.exit28, label %bb.n, !dbg !346117

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10BinaryTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !346117
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEB1l_.exit28, !dbg !346117

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !345998
  br label %bb.o, !dbg !346122

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEB1l_.exit28
  ret void, !dbg !346122

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !346123, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !346130
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !346130, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !346135, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !346144
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !346153
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !346155

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !346162 ; 3 uses
  %i.br = shl i64 %i.bl, 2, !dbg !346155
  %3 = shl nuw nsw i64 %i.ax, 2, !dbg !346155
  %4 = add i64 %i.br, -4, !dbg !346155
  %i.bs = sub i64 %4, %3, !dbg !346155            ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2, !dbg !346155
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !346155  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28, !dbg !346155
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !346155

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !346155

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16, !dbg !346167 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !346167
  %wide.load67 = load <4 x i32>, ptr %i.by, align 4, !dbg !346167
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat, !dbg !346167
  %i.ca = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !346167
  store <4 x i32> %i.bz, ptr %next.gep, align 4, !dbg !346167
  store <4 x i32> %i.ca, ptr %i.by, align 4, !dbg !346167
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec, !dbg !346155
  br i1 %i.cb, label %middle.block, label %vector.body, !dbg !346155, !llvm.loop !346169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec, !dbg !346155
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !346155

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph, !dbg !346155

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !346170

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.cc, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !346171 ; 2 uses
  %i.cd = load i32, ptr %.sroa.05.043, align 4, !dbg !346167, !noundef !11
  %i.ce = add i32 %i.cd, %.sroa.0.045, !dbg !346167
  store i32 %i.ce, ptr %.sroa.05.043, align 4, !dbg !346167
  %i.cf = icmp eq ptr %i.cc, %i.bo, !dbg !346153
  br i1 %i.cf, label %._crit_edge, label %.lr.ph, !dbg !346155, !llvm.loop !346174

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !346175
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !346175, !noundef !11
  %i.ci = trunc i64 %i.ch to i32, !dbg !346179
  %i.cj = add i32 %.sroa.0.045, %i.ci, !dbg !346180
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !346054
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !346054

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !346181
  unreachable, !dbg !346181

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !346181
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10Int128TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !346182 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !346183
  %.val20 = load i64, ptr %i.e, align 8, !dbg !346183, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !346184, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !346184
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !346184, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !346186
  %i.h = load i64, ptr %i.g, align 8, !dbg !346186, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !346186
  %i.j = and i64 %i.i, -16, !dbg !346186
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !346186
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !346186
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !346184
  %i.n = load ptr, ptr %i.m, align 8, !dbg !346184, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !346190
  %i.p = icmp eq i64 %.val20, %i.o, !dbg !346191
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !346191

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val20, 0, !dbg !346193
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !346193

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !346194
  %.val21 = load i64, ptr %i.r, align 8, !dbg !346194, !noundef !11
  %i.s = icmp eq i64 %.val20, %.val21, !dbg !346195
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !346195

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g, %bb.r, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346196), !dbg !346199
  %i.t = load ptr, ptr %i.c, align 8, !dbg !346200, !alias.scope !346196, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !346200
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !346200

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !346202, !noalias !346208
  %i.w = icmp eq i64 %i.v, 1, !dbg !346215
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !346215

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !346216
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !346218

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !346219
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes10Int128TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !346219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !346220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !346220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !346221
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !346221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !346221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !346222
  %i.y = load i64, ptr %i.d, align 8, !dbg !346223, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !346223 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !346228 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !346228, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !346229
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !346229
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !346229, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !346229
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !346229
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !346229, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !346230, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !346230 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !346233 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !346233, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !346233
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !346232, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !346232
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !346232
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !346232, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !346234
  %i.af = load i64, ptr %i.ae, align 8, !dbg !346234, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !346234
  %i.ah = and i64 %i.ag, -16, !dbg !346234
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !346234
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !346234
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !346232
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !346232, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !346238 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !346239
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !346244
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !346244, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !346244
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !346244, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !346245
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes10Int128TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10Int128TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !346252

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10Int128TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !346225 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !346225
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !346225 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !346225
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !346225 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !346225
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !346225 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !346255
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !346255

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10Int128TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !346255

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !346262 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !346264
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !346272, !noalias !346273, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !346276 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !346279, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !346283
  tail call void @llvm.assume(i1 %i.ay), !dbg !346285
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !346286, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !346286
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !346286, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @18, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !346290

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10Int128TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346291), !dbg !346199
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !346294, !alias.scope !346291, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !346294
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !346294

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !346296, !noalias !346302
  %i.bf = icmp eq i64 %i.be, 1, !dbg !346309
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !346309

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !346310
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !346312

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !346313, !range !12048, !alias.scope !346315, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !346313
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10Int128TypeEEEB1l_.exit, label %bb.l, !dbg !346313

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10Int128TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10Int128TypeEEEB1l_.exit unwind label %bb.t, !dbg !346313

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !346199
  %i.bj = load i64, ptr %i.d, align 8, !dbg !346318, !range !12048, !alias.scope !346320, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !346318
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10Int128TypeEEEB1l_.exit28, label %bb.n, !dbg !346318

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10Int128TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !346318
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10Int128TypeEEEB1l_.exit28, !dbg !346318

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10Int128TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !346199
  br label %bb.o, !dbg !346323

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10Int128TypeEEEB1l_.exit28
  ret void, !dbg !346323

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !346324, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !346331
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !346331, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !346336, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !346345
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !346354
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !346356

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !346363 ; 3 uses
  %i.br = shl i64 %i.bl, 2, !dbg !346356
  %3 = shl nuw nsw i64 %i.ax, 2, !dbg !346356
  %4 = add i64 %i.br, -4, !dbg !346356
  %i.bs = sub i64 %4, %3, !dbg !346356            ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2, !dbg !346356
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !346356  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28, !dbg !346356
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !346356

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !346356

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16, !dbg !346368 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !346368
  %wide.load67 = load <4 x i32>, ptr %i.by, align 4, !dbg !346368
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat, !dbg !346368
  %i.ca = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !346368
  store <4 x i32> %i.bz, ptr %next.gep, align 4, !dbg !346368
  store <4 x i32> %i.ca, ptr %i.by, align 4, !dbg !346368
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec, !dbg !346356
  br i1 %i.cb, label %middle.block, label %vector.body, !dbg !346356, !llvm.loop !346370

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec, !dbg !346356
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !346356

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph, !dbg !346356

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !346371

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.cc, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !346372 ; 2 uses
  %i.cd = load i32, ptr %.sroa.05.043, align 4, !dbg !346368, !noundef !11
  %i.ce = add i32 %i.cd, %.sroa.0.045, !dbg !346368
  store i32 %i.ce, ptr %.sroa.05.043, align 4, !dbg !346368
  %i.cf = icmp eq ptr %i.cc, %i.bo, !dbg !346354
  br i1 %i.cf, label %._crit_edge, label %.lr.ph, !dbg !346356, !llvm.loop !346375

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !346376
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !346376, !noundef !11
  %i.ci = trunc i64 %i.ch to i32, !dbg !346380
  %i.cj = add i32 %.sroa.0.045, %i.ci, !dbg !346381
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !346255
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !346255

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !346382
  unreachable, !dbg !346382

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10Int128TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !346382
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10StringTypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !346383 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !346384
  %.val20 = load i64, ptr %i.e, align 8, !dbg !346384, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !346385, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !346385
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !346385, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !346387
  %i.h = load i64, ptr %i.g, align 8, !dbg !346387, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !346387
  %i.j = and i64 %i.i, -16, !dbg !346387
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !346387
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !346387
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !346385
  %i.n = load ptr, ptr %i.m, align 8, !dbg !346385, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !346391
  %i.p = icmp eq i64 %.val20, %i.o, !dbg !346392
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !346392

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val20, 0, !dbg !346394
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !346394

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !346395
  %.val21 = load i64, ptr %i.r, align 8, !dbg !346395, !noundef !11
  %i.s = icmp eq i64 %.val20, %.val21, !dbg !346396
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !346396

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g, %bb.r, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346397), !dbg !346400
  %i.t = load ptr, ptr %i.c, align 8, !dbg !346401, !alias.scope !346397, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !346401
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !346401

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !346403, !noalias !346409
  %i.w = icmp eq i64 %i.v, 1, !dbg !346416
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !346416

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !346417
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !346419

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !346420
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes10StringTypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !346420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !346421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !346421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !346422
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !346422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !346422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !346423
  %i.y = load i64, ptr %i.d, align 8, !dbg !346424, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !346424 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !346429 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !346429, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !346430
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !346430
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !346430, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !346430
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !346430
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !346430, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !346431, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !346431 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !346434 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !346434, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !346434
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !346433, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !346433
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !346433
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !346433, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !346435
  %i.af = load i64, ptr %i.ae, align 8, !dbg !346435, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !346435
  %i.ah = and i64 %i.ag, -16, !dbg !346435
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !346435
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !346435
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !346433
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !346433, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !346439 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !346440
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !346445
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !346445, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !346445
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !346445, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !346446
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes10StringTypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10StringTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !346453

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10StringTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !346426 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !346426
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !346426 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !346426
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !346426 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !346426
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !346426 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !346456
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !346456

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10StringTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !346456

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !346463 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !346465
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !346473, !noalias !346474, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !346477 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !346480, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !346484
  tail call void @llvm.assume(i1 %i.ay), !dbg !346486
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !346487, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !346487
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !346487, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @19, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !346491

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10StringTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346492), !dbg !346400
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !346495, !alias.scope !346492, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !346495
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !346495

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !346497, !noalias !346503
  %i.bf = icmp eq i64 %i.be, 1, !dbg !346510
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !346510

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !346511
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !346513

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !346514, !range !12048, !alias.scope !346516, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !346514
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StringTypeEEEB1l_.exit, label %bb.l, !dbg !346514

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10StringTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StringTypeEEEB1l_.exit unwind label %bb.t, !dbg !346514

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !346400
  %i.bj = load i64, ptr %i.d, align 8, !dbg !346519, !range !12048, !alias.scope !346521, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !346519
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StringTypeEEEB1l_.exit28, label %bb.n, !dbg !346519

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10StringTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !346519
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StringTypeEEEB1l_.exit28, !dbg !346519

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StringTypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !346400
  br label %bb.o, !dbg !346524

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StringTypeEEEB1l_.exit28
  ret void, !dbg !346524

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !346525, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !346532
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !346532, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !346537, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !346546
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !346555
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !346557

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !346564 ; 3 uses
  %i.br = shl i64 %i.bl, 2, !dbg !346557
  %3 = shl nuw nsw i64 %i.ax, 2, !dbg !346557
  %4 = add i64 %i.br, -4, !dbg !346557
  %i.bs = sub i64 %4, %3, !dbg !346557            ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2, !dbg !346557
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !346557  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28, !dbg !346557
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !346557

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !346557

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16, !dbg !346569 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !346569
  %wide.load67 = load <4 x i32>, ptr %i.by, align 4, !dbg !346569
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat, !dbg !346569
  %i.ca = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !346569
  store <4 x i32> %i.bz, ptr %next.gep, align 4, !dbg !346569
  store <4 x i32> %i.ca, ptr %i.by, align 4, !dbg !346569
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec, !dbg !346557
  br i1 %i.cb, label %middle.block, label %vector.body, !dbg !346557, !llvm.loop !346571

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec, !dbg !346557
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !346557

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph, !dbg !346557

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !346572

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.cc, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !346573 ; 2 uses
  %i.cd = load i32, ptr %.sroa.05.043, align 4, !dbg !346569, !noundef !11
  %i.ce = add i32 %i.cd, %.sroa.0.045, !dbg !346569
  store i32 %i.ce, ptr %.sroa.05.043, align 4, !dbg !346569
  %i.cf = icmp eq ptr %i.cc, %i.bo, !dbg !346555
  br i1 %i.cf, label %._crit_edge, label %.lr.ph, !dbg !346557, !llvm.loop !346576

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !346577
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !346577, !noundef !11
  %i.ci = trunc i64 %i.ch to i32, !dbg !346581
  %i.cj = add i32 %.sroa.0.045, %i.ci, !dbg !346582
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !346456
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !346456

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !346583
  unreachable, !dbg !346583

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StringTypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !346583
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10UInt16TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !346584 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !346585
  %.val21 = load i64, ptr %i.e, align 8, !dbg !346585, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !346586, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !346586
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !346586, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !346588
  %i.h = load i64, ptr %i.g, align 8, !dbg !346588, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !346588
  %i.j = and i64 %i.i, -16, !dbg !346588
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !346588
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !346588
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !346586
  %i.n = load ptr, ptr %i.m, align 8, !dbg !346586, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !346592
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !346593
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !346593

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !346595
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !346595

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !346596
  %.val20 = load i64, ptr %i.r, align 8, !dbg !346596, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !346597
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !346597

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g, %bb.r, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346598), !dbg !346601
  %i.t = load ptr, ptr %i.c, align 8, !dbg !346602, !alias.scope !346598, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !346602
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !346602

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !346604, !noalias !346610
  %i.w = icmp eq i64 %i.v, 1, !dbg !346617
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !346617

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !346618
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !346620

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !346621
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes10UInt16TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !346621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !346622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !346622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !346623
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !346623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !346623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !346624
  %i.y = load i64, ptr %i.d, align 8, !dbg !346625, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !346625 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !346630 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !346630, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !346631
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !346631
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !346631, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !346631
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !346631
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !346631, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !346632, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !346632 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !346635 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !346635, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !346635
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !346634, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !346634
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !346634
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !346634, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !346636
  %i.af = load i64, ptr %i.ae, align 8, !dbg !346636, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !346636
  %i.ah = and i64 %i.ag, -16, !dbg !346636
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !346636
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !346636
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !346634
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !346634, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !346640 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !346641
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !346646
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !346646, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !346646
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !346646, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !346647
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes10UInt16TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !346654

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !346627 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !346627
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !346627 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !346627
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !346627 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !346627
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !346627 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !346657
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !346657

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !346657

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !346664 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !346666
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !346674, !noalias !346675, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !346678 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !346681, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !346685
  tail call void @llvm.assume(i1 %i.ay), !dbg !346687
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !346688, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !346688
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !346688, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @20, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !346692

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346693), !dbg !346601
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !346696, !alias.scope !346693, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !346696
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !346696

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !346698, !noalias !346704
  %i.bf = icmp eq i64 %i.be, 1, !dbg !346711
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !346711

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !346712
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !346714

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !346715, !range !12048, !alias.scope !346717, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !346715
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt16TypeEEEB1l_.exit, label %bb.l, !dbg !346715

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt16TypeEEEB1l_.exit unwind label %bb.t, !dbg !346715

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !346601
  %i.bj = load i64, ptr %i.d, align 8, !dbg !346720, !range !12048, !alias.scope !346722, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !346720
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt16TypeEEEB1l_.exit28, label %bb.n, !dbg !346720

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !346720
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt16TypeEEEB1l_.exit28, !dbg !346720

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt16TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !346601
  br label %bb.o, !dbg !346725

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt16TypeEEEB1l_.exit28
  ret void, !dbg !346725

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !346726, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !346733
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !346733, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !346738, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !346747
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !346756
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !346758

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !346765 ; 3 uses
  %i.br = shl i64 %i.bl, 2, !dbg !346758
  %3 = shl nuw nsw i64 %i.ax, 2, !dbg !346758
  %4 = add i64 %i.br, -4, !dbg !346758
  %i.bs = sub i64 %4, %3, !dbg !346758            ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2, !dbg !346758
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !346758  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28, !dbg !346758
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !346758

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !346758

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16, !dbg !346770 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !346770
  %wide.load67 = load <4 x i32>, ptr %i.by, align 4, !dbg !346770
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat, !dbg !346770
  %i.ca = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !346770
  store <4 x i32> %i.bz, ptr %next.gep, align 4, !dbg !346770
  store <4 x i32> %i.ca, ptr %i.by, align 4, !dbg !346770
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec, !dbg !346758
  br i1 %i.cb, label %middle.block, label %vector.body, !dbg !346758, !llvm.loop !346772

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec, !dbg !346758
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !346758

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph, !dbg !346758

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !346773

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.cc, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !346774 ; 2 uses
  %i.cd = load i32, ptr %.sroa.05.043, align 4, !dbg !346770, !noundef !11
  %i.ce = add i32 %i.cd, %.sroa.0.045, !dbg !346770
  store i32 %i.ce, ptr %.sroa.05.043, align 4, !dbg !346770
  %i.cf = icmp eq ptr %i.cc, %i.bo, !dbg !346756
  br i1 %i.cf, label %._crit_edge, label %.lr.ph, !dbg !346758, !llvm.loop !346777

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !346778
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !346778, !noundef !11
  %i.ci = trunc i64 %i.ch to i32, !dbg !346782
  %i.cj = add i32 %.sroa.0.045, %i.ci, !dbg !346783
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !346657
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !346657

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !346784
  unreachable, !dbg !346784

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt16TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !346784
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10UInt32TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !346785 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !346786
  %.val21 = load i64, ptr %i.e, align 8, !dbg !346786, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !346787, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !346787
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !346787, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !346789
  %i.h = load i64, ptr %i.g, align 8, !dbg !346789, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !346789
  %i.j = and i64 %i.i, -16, !dbg !346789
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !346789
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !346789
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !346787
  %i.n = load ptr, ptr %i.m, align 8, !dbg !346787, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !346793
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !346794
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !346794

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !346796
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !346796

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !346797
  %.val20 = load i64, ptr %i.r, align 8, !dbg !346797, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !346798
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !346798

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g, %bb.r, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346799), !dbg !346802
  %i.t = load ptr, ptr %i.c, align 8, !dbg !346803, !alias.scope !346799, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !346803
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !346803

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !346805, !noalias !346811
  %i.w = icmp eq i64 %i.v, 1, !dbg !346818
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !346818

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !346819
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !346821

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !346822
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes10UInt32TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !346822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !346823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !346823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !346824
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !346824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !346824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !346825
  %i.y = load i64, ptr %i.d, align 8, !dbg !346826, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !346826 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !346831 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !346831, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !346832
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !346832
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !346832, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !346832
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !346832
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !346832, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !346833, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !346833 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !346836 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !346836, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !346836
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !346835, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !346835
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !346835
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !346835, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !346837
  %i.af = load i64, ptr %i.ae, align 8, !dbg !346837, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !346837
  %i.ah = and i64 %i.ag, -16, !dbg !346837
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !346837
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !346837
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !346835
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !346835, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !346841 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !346842
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !346847
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !346847, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !346847
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !346847, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !346848
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes10UInt32TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !346855

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !346828 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !346828
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !346828 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !346828
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !346828 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !346828
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !346828 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !346858
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !346858

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !346858

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !346865 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !346867
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !346875, !noalias !346876, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !346879 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !346882, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !346886
  tail call void @llvm.assume(i1 %i.ay), !dbg !346888
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !346889, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !346889
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !346889, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @21, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !346893

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346894), !dbg !346802
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !346897, !alias.scope !346894, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !346897
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !346897

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !346899, !noalias !346905
  %i.bf = icmp eq i64 %i.be, 1, !dbg !346912
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !346912

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !346913
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !346915

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !346916, !range !12048, !alias.scope !346918, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !346916
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt32TypeEEEB1l_.exit, label %bb.l, !dbg !346916

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt32TypeEEEB1l_.exit unwind label %bb.t, !dbg !346916

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !346802
  %i.bj = load i64, ptr %i.d, align 8, !dbg !346921, !range !12048, !alias.scope !346923, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !346921
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt32TypeEEEB1l_.exit28, label %bb.n, !dbg !346921

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !346921
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt32TypeEEEB1l_.exit28, !dbg !346921

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt32TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !346802
  br label %bb.o, !dbg !346926

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt32TypeEEEB1l_.exit28
  ret void, !dbg !346926

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !346927, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !346934
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !346934, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !346939, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !346948
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !346957
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !346959

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !346966 ; 3 uses
  %i.br = shl i64 %i.bl, 2, !dbg !346959
  %3 = shl nuw nsw i64 %i.ax, 2, !dbg !346959
  %4 = add i64 %i.br, -4, !dbg !346959
  %i.bs = sub i64 %4, %3, !dbg !346959            ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2, !dbg !346959
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !346959  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28, !dbg !346959
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !346959

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !346959

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16, !dbg !346971 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !346971
  %wide.load67 = load <4 x i32>, ptr %i.by, align 4, !dbg !346971
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat, !dbg !346971
  %i.ca = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !346971
  store <4 x i32> %i.bz, ptr %next.gep, align 4, !dbg !346971
  store <4 x i32> %i.ca, ptr %i.by, align 4, !dbg !346971
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec, !dbg !346959
  br i1 %i.cb, label %middle.block, label %vector.body, !dbg !346959, !llvm.loop !346973

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec, !dbg !346959
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !346959

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph, !dbg !346959

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !346974

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.cc, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !346975 ; 2 uses
  %i.cd = load i32, ptr %.sroa.05.043, align 4, !dbg !346971, !noundef !11
  %i.ce = add i32 %i.cd, %.sroa.0.045, !dbg !346971
  store i32 %i.ce, ptr %.sroa.05.043, align 4, !dbg !346971
  %i.cf = icmp eq ptr %i.cc, %i.bo, !dbg !346957
  br i1 %i.cf, label %._crit_edge, label %.lr.ph, !dbg !346959, !llvm.loop !346978

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !346979
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !346979, !noundef !11
  %i.ci = trunc i64 %i.ch to i32, !dbg !346983
  %i.cj = add i32 %.sroa.0.045, %i.ci, !dbg !346984
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !346858
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !346858

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !346985
  unreachable, !dbg !346985

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt32TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !346985
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10UInt64TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !346986 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !346987
  %.val21 = load i64, ptr %i.e, align 8, !dbg !346987, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !346988, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !346988
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !346988, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !346990
  %i.h = load i64, ptr %i.g, align 8, !dbg !346990, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !346990
  %i.j = and i64 %i.i, -16, !dbg !346990
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !346990
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !346990
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !346988
  %i.n = load ptr, ptr %i.m, align 8, !dbg !346988, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !346994
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !346995
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !346995

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !346997
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !346997

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !346998
  %.val20 = load i64, ptr %i.r, align 8, !dbg !346998, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !346999
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !346999

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g, %bb.r, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347000), !dbg !347003
  %i.t = load ptr, ptr %i.c, align 8, !dbg !347004, !alias.scope !347000, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !347004
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !347004

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !347006, !noalias !347012
  %i.w = icmp eq i64 %i.v, 1, !dbg !347019
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !347019

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !347020
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !347022

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !347023
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes10UInt64TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !347023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !347024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !347024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !347025
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !347025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !347025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !347026
  %i.y = load i64, ptr %i.d, align 8, !dbg !347027, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !347027 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !347032 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !347032, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !347033
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !347033
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !347033, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !347033
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !347033
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !347033, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !347034, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !347034 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !347037 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !347037, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !347037
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !347036, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !347036
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !347036
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !347036, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !347038
  %i.af = load i64, ptr %i.ae, align 8, !dbg !347038, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !347038
  %i.ah = and i64 %i.ag, -16, !dbg !347038
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !347038
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !347038
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !347036
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !347036, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !347042 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !347043
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !347048
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !347048, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !347048
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !347048, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !347049
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes10UInt64TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !347056

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !347029 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !347029
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !347029 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !347029
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !347029 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !347029
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !347029 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !347059
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !347059

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !347059

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !347066 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !347068
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !347076, !noalias !347077, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !347080 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !347083, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !347087
  tail call void @llvm.assume(i1 %i.ay), !dbg !347089
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !347090, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !347090
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !347090, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @24, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !347094

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347095), !dbg !347003
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !347098, !alias.scope !347095, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !347098
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !347098

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !347100, !noalias !347106
  %i.bf = icmp eq i64 %i.be, 1, !dbg !347113
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !347113

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !347114
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !347116

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !347117, !range !12048, !alias.scope !347119, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !347117
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt64TypeEEEB1l_.exit, label %bb.l, !dbg !347117

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt64TypeEEEB1l_.exit unwind label %bb.t, !dbg !347117

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !347003
  %i.bj = load i64, ptr %i.d, align 8, !dbg !347122, !range !12048, !alias.scope !347124, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !347122
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt64TypeEEEB1l_.exit28, label %bb.n, !dbg !347122

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !347122
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt64TypeEEEB1l_.exit28, !dbg !347122

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt64TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !347003
  br label %bb.o, !dbg !347127

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt64TypeEEEB1l_.exit28
  ret void, !dbg !347127

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !347128, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !347135
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !347135, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !347140, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !347149
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !347158
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !347160

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !347167 ; 3 uses
  %i.br = shl i64 %i.bl, 2, !dbg !347160
  %3 = shl nuw nsw i64 %i.ax, 2, !dbg !347160
  %4 = add i64 %i.br, -4, !dbg !347160
  %i.bs = sub i64 %4, %3, !dbg !347160            ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2, !dbg !347160
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !347160  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28, !dbg !347160
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !347160

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !347160

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16, !dbg !347172 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !347172
  %wide.load67 = load <4 x i32>, ptr %i.by, align 4, !dbg !347172
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat, !dbg !347172
  %i.ca = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !347172
  store <4 x i32> %i.bz, ptr %next.gep, align 4, !dbg !347172
  store <4 x i32> %i.ca, ptr %i.by, align 4, !dbg !347172
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec, !dbg !347160
  br i1 %i.cb, label %middle.block, label %vector.body, !dbg !347160, !llvm.loop !347174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec, !dbg !347160
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !347160

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph, !dbg !347160

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !347175

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.cc, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !347176 ; 2 uses
  %i.cd = load i32, ptr %.sroa.05.043, align 4, !dbg !347172, !noundef !11
  %i.ce = add i32 %i.cd, %.sroa.0.045, !dbg !347172
  store i32 %i.ce, ptr %.sroa.05.043, align 4, !dbg !347172
  %i.cf = icmp eq ptr %i.cc, %i.bo, !dbg !347158
  br i1 %i.cf, label %._crit_edge, label %.lr.ph, !dbg !347160, !llvm.loop !347179

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !347180
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !347180, !noundef !11
  %i.ci = trunc i64 %i.ch to i32, !dbg !347184
  %i.cj = add i32 %.sroa.0.045, %i.ci, !dbg !347185
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !347059
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !347059

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !347186
  unreachable, !dbg !347186

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt64TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !347186
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes11BooleanTypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !347187 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !347188
  %.val21 = load i64, ptr %i.e, align 8, !dbg !347188, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !347189, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !347189
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !347189, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !347191
  %i.h = load i64, ptr %i.g, align 8, !dbg !347191, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !347191
  %i.j = and i64 %i.i, -16, !dbg !347191
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !347191
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !347191
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !347189
  %i.n = load ptr, ptr %i.m, align 8, !dbg !347189, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !347195
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !347196
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !347196

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !347198
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !347198

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !347199
  %.val20 = load i64, ptr %i.r, align 8, !dbg !347199, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !347200
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !347200

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g, %bb.r, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347201), !dbg !347204
  %i.t = load ptr, ptr %i.c, align 8, !dbg !347205, !alias.scope !347201, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !347205
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !347205

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !347207, !noalias !347213
  %i.w = icmp eq i64 %i.v, 1, !dbg !347220
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !347220

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !347221
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !347223

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !347224
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes11BooleanTypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !347224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !347225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !347225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !347226
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !347226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !347226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !347227
  %i.y = load i64, ptr %i.d, align 8, !dbg !347228, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !347228 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !347233 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !347233, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !347234
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !347234
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !347234, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !347234
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !347234
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !347234, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !347235, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !347235 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !347238 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !347238, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !347238
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !347237, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !347237
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !347237
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !347237, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !347239
  %i.af = load i64, ptr %i.ae, align 8, !dbg !347239, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !347239
  %i.ah = and i64 %i.ag, -16, !dbg !347239
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !347239
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !347239
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !347237
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !347237, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !347243 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !347244
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !347249
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !347249, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !347249
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !347249, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !347250
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes11BooleanTypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11BooleanTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !347257

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11BooleanTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !347230 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !347230
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !347230 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !347230
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !347230 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !347230
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !347230 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !347260
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !347260

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11BooleanTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !347260

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !347267 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !347269
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !347277, !noalias !347278, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !347281 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !347284, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !347288
  tail call void @llvm.assume(i1 %i.ay), !dbg !347290
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !347291, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !347291
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !347291, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @25, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !347295

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11BooleanTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347296), !dbg !347204
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !347299, !alias.scope !347296, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !347299
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !347299

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !347301, !noalias !347307
  %i.bf = icmp eq i64 %i.be, 1, !dbg !347314
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !347314

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !347315
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !347317

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !347318, !range !12048, !alias.scope !347320, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !347318
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11BooleanTypeEEEB1l_.exit, label %bb.l, !dbg !347318

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11BooleanTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11BooleanTypeEEEB1l_.exit unwind label %bb.t, !dbg !347318

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !347204
  %i.bj = load i64, ptr %i.d, align 8, !dbg !347323, !range !12048, !alias.scope !347325, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !347323
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11BooleanTypeEEEB1l_.exit28, label %bb.n, !dbg !347323

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11BooleanTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !347323
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11BooleanTypeEEEB1l_.exit28, !dbg !347323

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11BooleanTypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !347204
  br label %bb.o, !dbg !347328

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11BooleanTypeEEEB1l_.exit28
  ret void, !dbg !347328

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !347329, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !347336
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !347336, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !347341, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !347350
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !347359
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !347361

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !347368 ; 3 uses
  %i.br = shl i64 %i.bl, 2, !dbg !347361
  %3 = shl nuw nsw i64 %i.ax, 2, !dbg !347361
  %4 = add i64 %i.br, -4, !dbg !347361
  %i.bs = sub i64 %4, %3, !dbg !347361            ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2, !dbg !347361
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !347361  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28, !dbg !347361
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !347361

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !347361

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16, !dbg !347373 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !347373
  %wide.load67 = load <4 x i32>, ptr %i.by, align 4, !dbg !347373
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat, !dbg !347373
  %i.ca = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !347373
  store <4 x i32> %i.bz, ptr %next.gep, align 4, !dbg !347373
  store <4 x i32> %i.ca, ptr %i.by, align 4, !dbg !347373
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec, !dbg !347361
  br i1 %i.cb, label %middle.block, label %vector.body, !dbg !347361, !llvm.loop !347375

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec, !dbg !347361
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !347361

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph, !dbg !347361

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !347376

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.cc, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !347377 ; 2 uses
  %i.cd = load i32, ptr %.sroa.05.043, align 4, !dbg !347373, !noundef !11
  %i.ce = add i32 %i.cd, %.sroa.0.045, !dbg !347373
  store i32 %i.ce, ptr %.sroa.05.043, align 4, !dbg !347373
  %i.cf = icmp eq ptr %i.cc, %i.bo, !dbg !347359
  br i1 %i.cf, label %._crit_edge, label %.lr.ph, !dbg !347361, !llvm.loop !347380

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !347381
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !347381, !noundef !11
  %i.ci = trunc i64 %i.ch to i32, !dbg !347385
  %i.cj = add i32 %.sroa.0.045, %i.ci, !dbg !347386
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !347260
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !347260

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !347387
  unreachable, !dbg !347387

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11BooleanTypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !347387
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes11Float16TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !347388 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !347389
  %.val19 = load i64, ptr %i.e, align 8, !dbg !347389, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !347390, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !347390
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !347390, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !347392
  %i.h = load i64, ptr %i.g, align 8, !dbg !347392, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !347392
  %i.j = and i64 %i.i, -16, !dbg !347392
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !347392
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !347392
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !347390
  %i.n = load ptr, ptr %i.m, align 8, !dbg !347390, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !347396
  %i.p = icmp eq i64 %.val19, %i.o, !dbg !347397
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !347397

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val19, 0, !dbg !347399
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !347399

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !347400
  %.val20 = load i64, ptr %i.r, align 8, !dbg !347400, !noundef !11
  %i.s = icmp eq i64 %.val19, %.val20, !dbg !347401
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !347401

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g, %bb.r, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347402), !dbg !347405
  %i.t = load ptr, ptr %i.c, align 8, !dbg !347406, !alias.scope !347402, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !347406
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !347406

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !347408, !noalias !347414
  %i.w = icmp eq i64 %i.v, 1, !dbg !347421
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !347421

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !347422
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !347424

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !347425
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes11Float16TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !347425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !347426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !347426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !347427
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !347427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !347427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !347428
  %i.y = load i64, ptr %i.d, align 8, !dbg !347429, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !347429 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !347434 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !347434, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !347435
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !347435
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !347435, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !347435
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !347435
  %.sroa.07.0.val21 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !347435, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !347436, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !347436 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !347439 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !347439, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !347439
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !347438, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !347438
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !347438
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !347438, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !347440
  %i.af = load i64, ptr %i.ae, align 8, !dbg !347440, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !347440
  %i.ah = and i64 %i.ag, -16, !dbg !347440
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !347440
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !347440
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !347438
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !347438, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !347444 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val21, !dbg !347445
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !347450
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !347450, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !347450
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !347450, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !347451
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes11Float16TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !347458

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !347431 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !347431
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !347431 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !347431
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !347431 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !347431
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !347431 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !347461
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !347461

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !347461

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !347468 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !347470
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !347478, !noalias !347479, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !347482 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !347485, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !347489
  tail call void @llvm.assume(i1 %i.ay), !dbg !347491
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !347492, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !347492
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !347492, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @26, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !347496

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347497), !dbg !347405
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !347500, !alias.scope !347497, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !347500
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !347500

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !347502, !noalias !347508
  %i.bf = icmp eq i64 %i.be, 1, !dbg !347515
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !347515

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !347516
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !347518

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !347519, !range !12048, !alias.scope !347521, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !347519
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float16TypeEEEB1l_.exit, label %bb.l, !dbg !347519

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float16TypeEEEB1l_.exit unwind label %bb.t, !dbg !347519

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !347405
  %i.bj = load i64, ptr %i.d, align 8, !dbg !347524, !range !12048, !alias.scope !347526, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !347524
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float16TypeEEEB1l_.exit28, label %bb.n, !dbg !347524

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !347524
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float16TypeEEEB1l_.exit28, !dbg !347524

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float16TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !347405
  br label %bb.o, !dbg !347529

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float16TypeEEEB1l_.exit28
  ret void, !dbg !347529

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !347530, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !347537
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !347537, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !347542, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !347551
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !347560
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !347562

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !347569 ; 3 uses
  %i.br = shl i64 %i.bl, 2, !dbg !347562
  %3 = shl nuw nsw i64 %i.ax, 2, !dbg !347562
  %4 = add i64 %i.br, -4, !dbg !347562
  %i.bs = sub i64 %4, %3, !dbg !347562            ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2, !dbg !347562
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !347562  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28, !dbg !347562
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !347562

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !347562

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16, !dbg !347574 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !347574
  %wide.load67 = load <4 x i32>, ptr %i.by, align 4, !dbg !347574
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat, !dbg !347574
  %i.ca = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !347574
  store <4 x i32> %i.bz, ptr %next.gep, align 4, !dbg !347574
  store <4 x i32> %i.ca, ptr %i.by, align 4, !dbg !347574
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec, !dbg !347562
  br i1 %i.cb, label %middle.block, label %vector.body, !dbg !347562, !llvm.loop !347576

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec, !dbg !347562
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !347562

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph, !dbg !347562

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !347577

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.cc, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !347578 ; 2 uses
  %i.cd = load i32, ptr %.sroa.05.043, align 4, !dbg !347574, !noundef !11
  %i.ce = add i32 %i.cd, %.sroa.0.045, !dbg !347574
  store i32 %i.ce, ptr %.sroa.05.043, align 4, !dbg !347574
  %i.cf = icmp eq ptr %i.cc, %i.bo, !dbg !347560
  br i1 %i.cf, label %._crit_edge, label %.lr.ph, !dbg !347562, !llvm.loop !347581

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !347582
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !347582, !noundef !11
  %i.ci = trunc i64 %i.ch to i32, !dbg !347586
  %i.cj = add i32 %.sroa.0.045, %i.ci, !dbg !347587
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !347461
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !347461

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !347588
  unreachable, !dbg !347588

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float16TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !347588
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes11Float32TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !347589 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !347590
  %.val19 = load i64, ptr %i.e, align 8, !dbg !347590, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !347591, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !347591
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !347591, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !347593
  %i.h = load i64, ptr %i.g, align 8, !dbg !347593, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !347593
  %i.j = and i64 %i.i, -16, !dbg !347593
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !347593
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !347593
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !347591
  %i.n = load ptr, ptr %i.m, align 8, !dbg !347591, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !347597
  %i.p = icmp eq i64 %.val19, %i.o, !dbg !347598
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !347598

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val19, 0, !dbg !347600
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !347600

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !347601
  %.val20 = load i64, ptr %i.r, align 8, !dbg !347601, !noundef !11
  %i.s = icmp eq i64 %.val19, %.val20, !dbg !347602
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !347602

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g, %bb.r, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347603), !dbg !347606
  %i.t = load ptr, ptr %i.c, align 8, !dbg !347607, !alias.scope !347603, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !347607
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !347607

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !347609, !noalias !347615
  %i.w = icmp eq i64 %i.v, 1, !dbg !347622
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !347622

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !347623
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !347625

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !347626
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes11Float32TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !347626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !347627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !347627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !347628
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !347628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !347628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !347629
  %i.y = load i64, ptr %i.d, align 8, !dbg !347630, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !347630 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !347635 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !347635, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !347636
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !347636
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !347636, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !347636
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !347636
  %.sroa.07.0.val21 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !347636, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !347637, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !347637 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !347640 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !347640, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !347640
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !347639, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !347639
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !347639
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !347639, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !347641
  %i.af = load i64, ptr %i.ae, align 8, !dbg !347641, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !347641
  %i.ah = and i64 %i.ag, -16, !dbg !347641
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !347641
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !347641
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !347639
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !347639, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !347645 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val21, !dbg !347646
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !347651
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !347651, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !347651
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !347651, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !347652
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes11Float32TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !347659

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !347632 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !347632
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !347632 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !347632
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !347632 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !347632
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !347632 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !347662
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !347662

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !347662

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !347669 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !347671
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !347679, !noalias !347680, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !347683 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !347686, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !347690
  tail call void @llvm.assume(i1 %i.ay), !dbg !347692
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !347693, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !347693
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !347693, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @27, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !347697

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347698), !dbg !347606
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !347701, !alias.scope !347698, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !347701
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !347701

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !347703, !noalias !347709
  %i.bf = icmp eq i64 %i.be, 1, !dbg !347716
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !347716

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !347717
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !347719

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !347720, !range !12048, !alias.scope !347722, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !347720
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float32TypeEEEB1l_.exit, label %bb.l, !dbg !347720

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float32TypeEEEB1l_.exit unwind label %bb.t, !dbg !347720

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !347606
  %i.bj = load i64, ptr %i.d, align 8, !dbg !347725, !range !12048, !alias.scope !347727, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !347725
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float32TypeEEEB1l_.exit28, label %bb.n, !dbg !347725

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !347725
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float32TypeEEEB1l_.exit28, !dbg !347725

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float32TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !347606
  br label %bb.o, !dbg !347730

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float32TypeEEEB1l_.exit28
  ret void, !dbg !347730

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !347731, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !347738
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !347738, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !347743, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !347752
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !347761
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !347763

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !347770 ; 3 uses
  %i.br = shl i64 %i.bl, 2, !dbg !347763
  %3 = shl nuw nsw i64 %i.ax, 2, !dbg !347763
  %4 = add i64 %i.br, -4, !dbg !347763
  %i.bs = sub i64 %4, %3, !dbg !347763            ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2, !dbg !347763
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !347763  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28, !dbg !347763
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !347763

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !347763

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16, !dbg !347775 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !347775
  %wide.load67 = load <4 x i32>, ptr %i.by, align 4, !dbg !347775
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat, !dbg !347775
  %i.ca = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !347775
  store <4 x i32> %i.bz, ptr %next.gep, align 4, !dbg !347775
  store <4 x i32> %i.ca, ptr %i.by, align 4, !dbg !347775
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec, !dbg !347763
  br i1 %i.cb, label %middle.block, label %vector.body, !dbg !347763, !llvm.loop !347777

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec, !dbg !347763
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !347763

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph, !dbg !347763

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !347778

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.cc, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !347779 ; 2 uses
  %i.cd = load i32, ptr %.sroa.05.043, align 4, !dbg !347775, !noundef !11
  %i.ce = add i32 %i.cd, %.sroa.0.045, !dbg !347775
  store i32 %i.ce, ptr %.sroa.05.043, align 4, !dbg !347775
  %i.cf = icmp eq ptr %i.cc, %i.bo, !dbg !347761
  br i1 %i.cf, label %._crit_edge, label %.lr.ph, !dbg !347763, !llvm.loop !347782

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !347783
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !347783, !noundef !11
  %i.ci = trunc i64 %i.ch to i32, !dbg !347787
  %i.cj = add i32 %.sroa.0.045, %i.ci, !dbg !347788
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !347662
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !347662

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !347789
  unreachable, !dbg !347789

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float32TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !347789
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes11Float64TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !347790 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !347791
  %.val19 = load i64, ptr %i.e, align 8, !dbg !347791, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !347792, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !347792
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !347792, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !347794
  %i.h = load i64, ptr %i.g, align 8, !dbg !347794, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !347794
  %i.j = and i64 %i.i, -16, !dbg !347794
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !347794
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !347794
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !347792
  %i.n = load ptr, ptr %i.m, align 8, !dbg !347792, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !347798
  %i.p = icmp eq i64 %.val19, %i.o, !dbg !347799
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !347799

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val19, 0, !dbg !347801
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !347801

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !347802
  %.val20 = load i64, ptr %i.r, align 8, !dbg !347802, !noundef !11
  %i.s = icmp eq i64 %.val19, %.val20, !dbg !347803
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !347803

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g, %bb.r, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347804), !dbg !347807
  %i.t = load ptr, ptr %i.c, align 8, !dbg !347808, !alias.scope !347804, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !347808
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !347808

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !347810, !noalias !347816
  %i.w = icmp eq i64 %i.v, 1, !dbg !347823
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !347823

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !347824
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !347826

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !347827
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes11Float64TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !347827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !347828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !347828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !347829
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !347829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !347829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !347830
  %i.y = load i64, ptr %i.d, align 8, !dbg !347831, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !347831 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !347836 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !347836, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !347837
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !347837
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !347837, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !347837
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !347837
  %.sroa.07.0.val21 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !347837, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !347838, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !347838 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !347841 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !347841, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !347841
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !347840, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !347840
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !347840
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !347840, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !347842
  %i.af = load i64, ptr %i.ae, align 8, !dbg !347842, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !347842
  %i.ah = and i64 %i.ag, -16, !dbg !347842
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !347842
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !347842
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !347840
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !347840, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !347846 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val21, !dbg !347847
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !347852
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !347852, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !347852
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !347852, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !347853
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes11Float64TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !347860

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !347833 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !347833
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !347833 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !347833
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !347833 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !347833
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !347833 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !347863
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !347863

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !347863

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !347870 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !347872
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !347880, !noalias !347881, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !347884 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !347887, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !347891
  tail call void @llvm.assume(i1 %i.ay), !dbg !347893
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !347894, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !347894
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !347894, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @28, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !347898

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347899), !dbg !347807
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !347902, !alias.scope !347899, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !347902
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !347902

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !347904, !noalias !347910
  %i.bf = icmp eq i64 %i.be, 1, !dbg !347917
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !347917

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !347918
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !347920

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !347921, !range !12048, !alias.scope !347923, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !347921
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float64TypeEEEB1l_.exit, label %bb.l, !dbg !347921

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float64TypeEEEB1l_.exit unwind label %bb.t, !dbg !347921

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !347807
  %i.bj = load i64, ptr %i.d, align 8, !dbg !347926, !range !12048, !alias.scope !347928, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !347926
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float64TypeEEEB1l_.exit28, label %bb.n, !dbg !347926

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !347926
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float64TypeEEEB1l_.exit28, !dbg !347926

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float64TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !347807
  br label %bb.o, !dbg !347931

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float64TypeEEEB1l_.exit28
  ret void, !dbg !347931

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !347932, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !347939
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !347939, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !347944, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !347953
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !347962
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !347964

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !347971 ; 3 uses
  %i.br = shl i64 %i.bl, 2, !dbg !347964
  %3 = shl nuw nsw i64 %i.ax, 2, !dbg !347964
  %4 = add i64 %i.br, -4, !dbg !347964
  %i.bs = sub i64 %4, %3, !dbg !347964            ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2, !dbg !347964
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !347964  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28, !dbg !347964
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !347964

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !347964

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16, !dbg !347976 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !347976
  %wide.load67 = load <4 x i32>, ptr %i.by, align 4, !dbg !347976
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat, !dbg !347976
  %i.ca = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !347976
  store <4 x i32> %i.bz, ptr %next.gep, align 4, !dbg !347976
  store <4 x i32> %i.ca, ptr %i.by, align 4, !dbg !347976
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec, !dbg !347964
  br i1 %i.cb, label %middle.block, label %vector.body, !dbg !347964, !llvm.loop !347978

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec, !dbg !347964
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !347964

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph, !dbg !347964

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !347979

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.cc, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !347980 ; 2 uses
  %i.cd = load i32, ptr %.sroa.05.043, align 4, !dbg !347976, !noundef !11
  %i.ce = add i32 %i.cd, %.sroa.0.045, !dbg !347976
  store i32 %i.ce, ptr %.sroa.05.043, align 4, !dbg !347976
  %i.cf = icmp eq ptr %i.cc, %i.bo, !dbg !347962
  br i1 %i.cf, label %._crit_edge, label %.lr.ph, !dbg !347964, !llvm.loop !347983

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !347984
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !347984, !noundef !11
  %i.ci = trunc i64 %i.ch to i32, !dbg !347988
  %i.cj = add i32 %.sroa.0.045, %i.ci, !dbg !347989
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !347863
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !347863

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !347990
  unreachable, !dbg !347990

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float64TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !347990
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes11UInt128TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !347991 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !347992
  %.val21 = load i64, ptr %i.e, align 8, !dbg !347992, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !347993, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !347993
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !347993, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !347995
  %i.h = load i64, ptr %i.g, align 8, !dbg !347995, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !347995
  %i.j = and i64 %i.i, -16, !dbg !347995
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !347995
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !347995
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !347993
  %i.n = load ptr, ptr %i.m, align 8, !dbg !347993, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !347999
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !348000
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !348000

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !348002
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !348002

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !348003
  %.val20 = load i64, ptr %i.r, align 8, !dbg !348003, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !348004
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !348004

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g, %bb.r, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348005), !dbg !348008
  %i.t = load ptr, ptr %i.c, align 8, !dbg !348009, !alias.scope !348005, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !348009
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !348009

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !348011, !noalias !348017
  %i.w = icmp eq i64 %i.v, 1, !dbg !348024
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !348024

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !348025
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !348027

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !348028
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes11UInt128TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !348028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !348029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !348029
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !348030
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !348030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !348030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !348031
  %i.y = load i64, ptr %i.d, align 8, !dbg !348032, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !348032 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !348037 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !348037, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !348038
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !348038
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !348038, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !348038
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !348038
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !348038, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !348039, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !348039 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !348042 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !348042, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !348042
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !348041, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !348041
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !348041
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !348041, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !348043
  %i.af = load i64, ptr %i.ae, align 8, !dbg !348043, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !348043
  %i.ah = and i64 %i.ag, -16, !dbg !348043
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !348043
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !348043
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !348041
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !348041, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !348047 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !348048
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !348053
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !348053, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !348053
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !348053, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !348054
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes11UInt128TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11UInt128TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !348061

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11UInt128TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !348034 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !348034
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !348034 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !348034
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !348034 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !348034
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !348034 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !348064
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !348064

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11UInt128TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !348064

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !348071 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !348073
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !348081, !noalias !348082, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !348085 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !348088, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !348092
  tail call void @llvm.assume(i1 %i.ay), !dbg !348094
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !348095, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !348095
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !348095, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @29, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !348099

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11UInt128TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348100), !dbg !348008
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !348103, !alias.scope !348100, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !348103
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !348103

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !348105, !noalias !348111
  %i.bf = icmp eq i64 %i.be, 1, !dbg !348118
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !348118

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !348119
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !348121

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !348122, !range !12048, !alias.scope !348124, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !348122
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11UInt128TypeEEEB1l_.exit, label %bb.l, !dbg !348122

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11UInt128TypeEEEB1l_.exit unwind label %bb.t, !dbg !348122

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !348008
  %i.bj = load i64, ptr %i.d, align 8, !dbg !348127, !range !12048, !alias.scope !348129, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !348127
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11UInt128TypeEEEB1l_.exit28, label %bb.n, !dbg !348127

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !348127
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11UInt128TypeEEEB1l_.exit28, !dbg !348127

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11UInt128TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !348008
  br label %bb.o, !dbg !348132

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11UInt128TypeEEEB1l_.exit28
  ret void, !dbg !348132

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !348133, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !348140
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !348140, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !348145, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !348154
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !348163
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !348165

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !348172 ; 3 uses
  %i.br = shl i64 %i.bl, 2, !dbg !348165
  %3 = shl nuw nsw i64 %i.ax, 2, !dbg !348165
  %4 = add i64 %i.br, -4, !dbg !348165
  %i.bs = sub i64 %4, %3, !dbg !348165            ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2, !dbg !348165
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !348165  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28, !dbg !348165
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !348165

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !348165

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16, !dbg !348177 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !348177
  %wide.load67 = load <4 x i32>, ptr %i.by, align 4, !dbg !348177
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat, !dbg !348177
  %i.ca = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !348177
  store <4 x i32> %i.bz, ptr %next.gep, align 4, !dbg !348177
  store <4 x i32> %i.ca, ptr %i.by, align 4, !dbg !348177
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec, !dbg !348165
  br i1 %i.cb, label %middle.block, label %vector.body, !dbg !348165, !llvm.loop !348179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec, !dbg !348165
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !348165

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph, !dbg !348165

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !348180

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.cc, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !348181 ; 2 uses
  %i.cd = load i32, ptr %.sroa.05.043, align 4, !dbg !348177, !noundef !11
  %i.ce = add i32 %i.cd, %.sroa.0.045, !dbg !348177
  store i32 %i.ce, ptr %.sroa.05.043, align 4, !dbg !348177
  %i.cf = icmp eq ptr %i.cc, %i.bo, !dbg !348163
  br i1 %i.cf, label %._crit_edge, label %.lr.ph, !dbg !348165, !llvm.loop !348184

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !348185
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !348185, !noundef !11
  %i.ci = trunc i64 %i.ch to i32, !dbg !348189
  %i.cj = add i32 %.sroa.0.045, %i.ci, !dbg !348190
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !348064
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !348064

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !348191
  unreachable, !dbg !348191

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11UInt128TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !348191
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes16BinaryOffsetTypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !348192 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !348193
  %.val21 = load i64, ptr %i.e, align 8, !dbg !348193, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !348194, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !348194
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !348194, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !348196
  %i.h = load i64, ptr %i.g, align 8, !dbg !348196, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !348196
  %i.j = and i64 %i.i, -16, !dbg !348196
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !348196
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !348196
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !348194
  %i.n = load ptr, ptr %i.m, align 8, !dbg !348194, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !348200
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !348201
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !348201

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !348203
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !348203

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !348204
  %.val19 = load i64, ptr %i.r, align 8, !dbg !348204, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val19, !dbg !348205
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !348205

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g, %bb.r, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348206), !dbg !348209
  %i.t = load ptr, ptr %i.c, align 8, !dbg !348210, !alias.scope !348206, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !348210
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !348210

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !348212, !noalias !348218
  %i.w = icmp eq i64 %i.v, 1, !dbg !348225
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !348225

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !348226
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !348228

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !348229
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes16BinaryOffsetTypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !348229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !348230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !348230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !348231
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !348231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !348231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !348232
  %i.y = load i64, ptr %i.d, align 8, !dbg !348233, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !348233 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !348238 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !348238, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !348239
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !348239
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !348239, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !348239
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !348239
  %.sroa.07.0.val20 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !348239, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !348240, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !348240 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !348243 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !348243, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !348243
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !348242, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !348242
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !348242
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !348242, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !348244
  %i.af = load i64, ptr %i.ae, align 8, !dbg !348244, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !348244
  %i.ah = and i64 %i.ag, -16, !dbg !348244
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !348244
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !348244
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !348242
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !348242, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !348248 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val20, !dbg !348249
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !348254
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !348254, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !348254
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !348254, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !348255
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes16BinaryOffsetTypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes16BinaryOffsetTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !348262

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes16BinaryOffsetTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !348235 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !348235
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !348235 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !348235
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !348235 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !348235
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !348235 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !348265
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !348265

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes16BinaryOffsetTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !348265

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ck, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !348272 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !348274
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !348282, !noalias !348283, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !348286 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !348289, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !348293
  tail call void @llvm.assume(i1 %i.ay), !dbg !348295
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !348296, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !348296
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !348296, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @30, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !348300

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes16BinaryOffsetTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348301), !dbg !348209
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !348304, !alias.scope !348301, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !348304
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !348304

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !348306, !noalias !348312
  %i.bf = icmp eq i64 %i.be, 1, !dbg !348319
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !348319

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !348320
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !348322

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !348323, !range !12048, !alias.scope !348325, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !348323
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes16BinaryOffsetTypeEEEB1l_.exit, label %bb.l, !dbg !348323

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes16BinaryOffsetTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes16BinaryOffsetTypeEEEB1l_.exit unwind label %bb.t, !dbg !348323

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !348209
  %i.bj = load i64, ptr %i.d, align 8, !dbg !348328, !range !12048, !alias.scope !348330, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !348328
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes16BinaryOffsetTypeEEEB1l_.exit28, label %bb.n, !dbg !348328

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes16BinaryOffsetTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !348328
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes16BinaryOffsetTypeEEEB1l_.exit28, !dbg !348328

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes16BinaryOffsetTypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !348209
  br label %bb.o, !dbg !348333

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes16BinaryOffsetTypeEEEB1l_.exit28
  ret void, !dbg !348333

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !348334, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !348341
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !348341, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !348346, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !348355
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !348364
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !348366

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !348373 ; 3 uses
  %i.br = shl i64 %i.bl, 2, !dbg !348366
  %3 = shl nuw nsw i64 %i.ax, 2, !dbg !348366
  %4 = add i64 %i.br, -4, !dbg !348366
  %i.bs = sub i64 %4, %3, !dbg !348366            ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2, !dbg !348366
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !348366  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28, !dbg !348366
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !348366

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !348366

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16, !dbg !348378 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !348378
  %wide.load67 = load <4 x i32>, ptr %i.by, align 4, !dbg !348378
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat, !dbg !348378
  %i.ca = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !348378
  store <4 x i32> %i.bz, ptr %next.gep, align 4, !dbg !348378
  store <4 x i32> %i.ca, ptr %i.by, align 4, !dbg !348378
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec, !dbg !348366
  br i1 %i.cb, label %middle.block, label %vector.body, !dbg !348366, !llvm.loop !348380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec, !dbg !348366
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !348366

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph, !dbg !348366

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !348381

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.cc, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !348382 ; 2 uses
  %i.cd = load i32, ptr %.sroa.05.043, align 4, !dbg !348378, !noundef !11
  %i.ce = add i32 %i.cd, %.sroa.0.045, !dbg !348378
  store i32 %i.ce, ptr %.sroa.05.043, align 4, !dbg !348378
  %i.cf = icmp eq ptr %i.cc, %i.bo, !dbg !348364
  br i1 %i.cf, label %._crit_edge, label %.lr.ph, !dbg !348366, !llvm.loop !348385

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !348386
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !348386, !noundef !11
  %i.ci = trunc i64 %i.ch to i32, !dbg !348391
  %i.cj = add i32 %.sroa.0.045, -1, !dbg !348391
  %i.ck = add i32 %i.cj, %i.ci, !dbg !348392
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !348265
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !348265

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !348393
  unreachable, !dbg !348393

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes16BinaryOffsetTypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !348393
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes8Int8TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !348394 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !348395
  %.val21 = load i64, ptr %i.e, align 8, !dbg !348395, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !348396, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !348396
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !348396, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !348398
  %i.h = load i64, ptr %i.g, align 8, !dbg !348398, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !348398
  %i.j = and i64 %i.i, -16, !dbg !348398
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !348398
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !348398
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !348396
  %i.n = load ptr, ptr %i.m, align 8, !dbg !348396, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !348402
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !348403
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !348403

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !348405
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !348405

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !348406
  %.val20 = load i64, ptr %i.r, align 8, !dbg !348406, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !348407
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !348407

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g, %bb.r, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348408), !dbg !348411
  %i.t = load ptr, ptr %i.c, align 8, !dbg !348412, !alias.scope !348408, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !348412
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !348412

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !348414, !noalias !348420
  %i.w = icmp eq i64 %i.v, 1, !dbg !348427
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !348427

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !348428
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !348430

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !348431
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes8Int8TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !348431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !348432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !348432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !348433
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !348433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !348433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !348434
  %i.y = load i64, ptr %i.d, align 8, !dbg !348435, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !348435 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !348440 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !348440, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !348441
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !348441
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !348441, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !348441
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !348441
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !348441, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !348442, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !348442 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !348445 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !348445, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !348445
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !348444, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !348444
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !348444
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !348444, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !348446
  %i.af = load i64, ptr %i.ae, align 8, !dbg !348446, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !348446
  %i.ah = and i64 %i.ag, -16, !dbg !348446
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !348446
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !348446
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !348444
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !348444, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !348450 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !348451
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !348456
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !348456, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !348456
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !348456, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !348457
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes8Int8TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes8Int8TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !348464

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes8Int8TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !348437 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !348437
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !348437 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !348437
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !348437 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !348437
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !348437 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !348467
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !348467

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes8Int8TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !348467

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !348474 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !348476
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !348484, !noalias !348485, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !348488 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !348491, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !348495
  tail call void @llvm.assume(i1 %i.ay), !dbg !348497
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !348498, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !348498
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !348498, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @32, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !348502

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes8Int8TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348503), !dbg !348411
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !348506, !alias.scope !348503, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !348506
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !348506

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !348508, !noalias !348514
  %i.bf = icmp eq i64 %i.be, 1, !dbg !348521
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !348521

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !348522
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !348524

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !348525, !range !12048, !alias.scope !348527, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !348525
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8Int8TypeEEEB1l_.exit, label %bb.l, !dbg !348525

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8Int8TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8Int8TypeEEEB1l_.exit unwind label %bb.t, !dbg !348525

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !348411
  %i.bj = load i64, ptr %i.d, align 8, !dbg !348530, !range !12048, !alias.scope !348532, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !348530
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8Int8TypeEEEB1l_.exit28, label %bb.n, !dbg !348530

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8Int8TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !348530
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8Int8TypeEEEB1l_.exit28, !dbg !348530

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8Int8TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !348411
  br label %bb.o, !dbg !348535

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8Int8TypeEEEB1l_.exit28
  ret void, !dbg !348535

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !348536, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !348543
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !348543, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !348548, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !348557
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !348566
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !348568

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !348575 ; 3 uses
  %i.br = shl i64 %i.bl, 2, !dbg !348568
  %3 = shl nuw nsw i64 %i.ax, 2, !dbg !348568
  %4 = add i64 %i.br, -4, !dbg !348568
  %i.bs = sub i64 %4, %3, !dbg !348568            ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2, !dbg !348568
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !348568  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28, !dbg !348568
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !348568

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !348568

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16, !dbg !348580 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !348580
  %wide.load67 = load <4 x i32>, ptr %i.by, align 4, !dbg !348580
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat, !dbg !348580
  %i.ca = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !348580
  store <4 x i32> %i.bz, ptr %next.gep, align 4, !dbg !348580
  store <4 x i32> %i.ca, ptr %i.by, align 4, !dbg !348580
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec, !dbg !348568
  br i1 %i.cb, label %middle.block, label %vector.body, !dbg !348568, !llvm.loop !348582

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec, !dbg !348568
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !348568

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph, !dbg !348568

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !348583

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.cc, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !348584 ; 2 uses
  %i.cd = load i32, ptr %.sroa.05.043, align 4, !dbg !348580, !noundef !11
  %i.ce = add i32 %i.cd, %.sroa.0.045, !dbg !348580
  store i32 %i.ce, ptr %.sroa.05.043, align 4, !dbg !348580
  %i.cf = icmp eq ptr %i.cc, %i.bo, !dbg !348566
  br i1 %i.cf, label %._crit_edge, label %.lr.ph, !dbg !348568, !llvm.loop !348587

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !348588
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !348588, !noundef !11
  %i.ci = trunc i64 %i.ch to i32, !dbg !348592
  %i.cj = add i32 %.sroa.0.045, %i.ci, !dbg !348593
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !348467
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !348467

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !348594
  unreachable, !dbg !348594

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8Int8TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !348594
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes9Int16TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !348595 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !348596
  %.val21 = load i64, ptr %i.e, align 8, !dbg !348596, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !348597, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !348597
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !348597, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !348599
  %i.h = load i64, ptr %i.g, align 8, !dbg !348599, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !348599
  %i.j = and i64 %i.i, -16, !dbg !348599
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !348599
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !348599
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !348597
  %i.n = load ptr, ptr %i.m, align 8, !dbg !348597, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !348603
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !348604
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !348604

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !348606
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !348606

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !348607
  %.val20 = load i64, ptr %i.r, align 8, !dbg !348607, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !348608
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !348608

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g, %bb.r, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348609), !dbg !348612
  %i.t = load ptr, ptr %i.c, align 8, !dbg !348613, !alias.scope !348609, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !348613
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !348613

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !348615, !noalias !348621
  %i.w = icmp eq i64 %i.v, 1, !dbg !348628
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !348628

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !348629
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !348631

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !348632
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes9Int16TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !348632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !348633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !348633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !348634
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !348634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !348634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !348635
  %i.y = load i64, ptr %i.d, align 8, !dbg !348636, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !348636 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !348641 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !348641, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !348642
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !348642
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !348642, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !348642
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !348642
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !348642, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !348643, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !348643 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !348646 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !348646, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !348646
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !348645, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !348645
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !348645
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !348645, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !348647
  %i.af = load i64, ptr %i.ae, align 8, !dbg !348647, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !348647
  %i.ah = and i64 %i.ag, -16, !dbg !348647
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !348647
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !348647
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !348645
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !348645, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !348651 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !348652
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !348657
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !348657, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !348657
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !348657, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !348658
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes9Int16TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !348665

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !348638 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !348638
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !348638 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !348638
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !348638 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !348638
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !348638 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !348668
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !348668

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !348668

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !348675 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !348677
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !348685, !noalias !348686, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !348689 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !348692, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !348696
  tail call void @llvm.assume(i1 %i.ay), !dbg !348698
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !348699, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !348699
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !348699, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @34, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !348703

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348704), !dbg !348612
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !348707, !alias.scope !348704, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !348707
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !348707

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !348709, !noalias !348715
  %i.bf = icmp eq i64 %i.be, 1, !dbg !348722
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !348722

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !348723
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !348725

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !348726, !range !12048, !alias.scope !348728, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !348726
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int16TypeEEEB1l_.exit, label %bb.l, !dbg !348726

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int16TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int16TypeEEEB1l_.exit unwind label %bb.t, !dbg !348726

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !348612
  %i.bj = load i64, ptr %i.d, align 8, !dbg !348731, !range !12048, !alias.scope !348733, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !348731
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int16TypeEEEB1l_.exit28, label %bb.n, !dbg !348731

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int16TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !348731
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int16TypeEEEB1l_.exit28, !dbg !348731

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int16TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !348612
  br label %bb.o, !dbg !348736

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int16TypeEEEB1l_.exit28
  ret void, !dbg !348736

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !348737, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !348744
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !348744, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !348749, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !348758
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !348767
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !348769

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !348776 ; 3 uses
  %i.br = shl i64 %i.bl, 2, !dbg !348769
  %3 = shl nuw nsw i64 %i.ax, 2, !dbg !348769
  %4 = add i64 %i.br, -4, !dbg !348769
  %i.bs = sub i64 %4, %3, !dbg !348769            ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2, !dbg !348769
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !348769  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28, !dbg !348769
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !348769

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !348769

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16, !dbg !348781 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !348781
  %wide.load67 = load <4 x i32>, ptr %i.by, align 4, !dbg !348781
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat, !dbg !348781
  %i.ca = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !348781
  store <4 x i32> %i.bz, ptr %next.gep, align 4, !dbg !348781
  store <4 x i32> %i.ca, ptr %i.by, align 4, !dbg !348781
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec, !dbg !348769
  br i1 %i.cb, label %middle.block, label %vector.body, !dbg !348769, !llvm.loop !348783

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec, !dbg !348769
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !348769

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph, !dbg !348769

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !348784

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.cc, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !348785 ; 2 uses
  %i.cd = load i32, ptr %.sroa.05.043, align 4, !dbg !348781, !noundef !11
  %i.ce = add i32 %i.cd, %.sroa.0.045, !dbg !348781
  store i32 %i.ce, ptr %.sroa.05.043, align 4, !dbg !348781
  %i.cf = icmp eq ptr %i.cc, %i.bo, !dbg !348767
  br i1 %i.cf, label %._crit_edge, label %.lr.ph, !dbg !348769, !llvm.loop !348788

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !348789
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !348789, !noundef !11
  %i.ci = trunc i64 %i.ch to i32, !dbg !348793
  %i.cj = add i32 %.sroa.0.045, %i.ci, !dbg !348794
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !348668
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !348668

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !348795
  unreachable, !dbg !348795

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int16TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !348795
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes9Int32TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !348796 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !348797
  %.val21 = load i64, ptr %i.e, align 8, !dbg !348797, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !348798, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !348798
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !348798, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !348800
  %i.h = load i64, ptr %i.g, align 8, !dbg !348800, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !348800
  %i.j = and i64 %i.i, -16, !dbg !348800
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !348800
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !348800
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !348798
  %i.n = load ptr, ptr %i.m, align 8, !dbg !348798, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !348804
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !348805
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !348805

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !348807
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !348807

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !348808
  %.val20 = load i64, ptr %i.r, align 8, !dbg !348808, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !348809
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !348809

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g, %bb.r, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348810), !dbg !348813
  %i.t = load ptr, ptr %i.c, align 8, !dbg !348814, !alias.scope !348810, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !348814
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !348814

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !348816, !noalias !348822
  %i.w = icmp eq i64 %i.v, 1, !dbg !348829
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !348829

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !348830
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !348832

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !348833
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes9Int32TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !348833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !348834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !348834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !348835
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !348835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !348835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !348836
  %i.y = load i64, ptr %i.d, align 8, !dbg !348837, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !348837 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !348842 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !348842, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !348843
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !348843
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !348843, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !348843
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !348843
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !348843, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !348844, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !348844 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !348847 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !348847, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !348847
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !348846, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !348846
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !348846
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !348846, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !348848
  %i.af = load i64, ptr %i.ae, align 8, !dbg !348848, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !348848
  %i.ah = and i64 %i.ag, -16, !dbg !348848
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !348848
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !348848
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !348846
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !348846, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !348852 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !348853
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !348858
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !348858, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !348858
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !348858, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !348859
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes9Int32TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !348866

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !348839 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !348839
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !348839 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !348839
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !348839 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !348839
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !348839 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !348869
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !348869

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !348869

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !348876 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !348878
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !348886, !noalias !348887, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !348890 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !348893, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !348897
  tail call void @llvm.assume(i1 %i.ay), !dbg !348899
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !348900, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !348900
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !348900, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @35, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !348904

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348905), !dbg !348813
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !348908, !alias.scope !348905, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !348908
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !348908

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !348910, !noalias !348916
  %i.bf = icmp eq i64 %i.be, 1, !dbg !348923
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !348923

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !348924
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !348926

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !348927, !range !12048, !alias.scope !348929, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !348927
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int32TypeEEEB1l_.exit, label %bb.l, !dbg !348927

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int32TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int32TypeEEEB1l_.exit unwind label %bb.t, !dbg !348927

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !348813
  %i.bj = load i64, ptr %i.d, align 8, !dbg !348932, !range !12048, !alias.scope !348934, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !348932
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int32TypeEEEB1l_.exit28, label %bb.n, !dbg !348932

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int32TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !348932
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int32TypeEEEB1l_.exit28, !dbg !348932

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int32TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !348813
  br label %bb.o, !dbg !348937

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int32TypeEEEB1l_.exit28
  ret void, !dbg !348937

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !348938, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !348945
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !348945, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !348950, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !348959
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !348968
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !348970

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !348977 ; 3 uses
  %i.br = shl i64 %i.bl, 2, !dbg !348970
  %3 = shl nuw nsw i64 %i.ax, 2, !dbg !348970
  %4 = add i64 %i.br, -4, !dbg !348970
  %i.bs = sub i64 %4, %3, !dbg !348970            ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2, !dbg !348970
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !348970  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28, !dbg !348970
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !348970

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !348970

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16, !dbg !348982 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !348982
  %wide.load67 = load <4 x i32>, ptr %i.by, align 4, !dbg !348982
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat, !dbg !348982
  %i.ca = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !348982
  store <4 x i32> %i.bz, ptr %next.gep, align 4, !dbg !348982
  store <4 x i32> %i.ca, ptr %i.by, align 4, !dbg !348982
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec, !dbg !348970
  br i1 %i.cb, label %middle.block, label %vector.body, !dbg !348970, !llvm.loop !348984

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec, !dbg !348970
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !348970

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph, !dbg !348970

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !348985

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.cc, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !348986 ; 2 uses
  %i.cd = load i32, ptr %.sroa.05.043, align 4, !dbg !348982, !noundef !11
  %i.ce = add i32 %i.cd, %.sroa.0.045, !dbg !348982
  store i32 %i.ce, ptr %.sroa.05.043, align 4, !dbg !348982
  %i.cf = icmp eq ptr %i.cc, %i.bo, !dbg !348968
  br i1 %i.cf, label %._crit_edge, label %.lr.ph, !dbg !348970, !llvm.loop !348989

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !348990
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !348990, !noundef !11
  %i.ci = trunc i64 %i.ch to i32, !dbg !348994
  %i.cj = add i32 %.sroa.0.045, %i.ci, !dbg !348995
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !348869
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !348869

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !348996
  unreachable, !dbg !348996

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int32TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !348996
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes9Int64TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !348997 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !348998
  %.val21 = load i64, ptr %i.e, align 8, !dbg !348998, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !348999, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !348999
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !348999, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !349001
  %i.h = load i64, ptr %i.g, align 8, !dbg !349001, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !349001
  %i.j = and i64 %i.i, -16, !dbg !349001
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !349001
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !349001
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !348999
  %i.n = load ptr, ptr %i.m, align 8, !dbg !348999, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !349005
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !349006
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !349006

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !349008
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !349008

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !349009
  %.val20 = load i64, ptr %i.r, align 8, !dbg !349009, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !349010
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !349010

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g, %bb.r, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349011), !dbg !349014
  %i.t = load ptr, ptr %i.c, align 8, !dbg !349015, !alias.scope !349011, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !349015
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !349015

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !349017, !noalias !349023
  %i.w = icmp eq i64 %i.v, 1, !dbg !349030
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !349030

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !349031
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !349033

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !349034
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes9Int64TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !349034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !349035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !349035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !349036
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !349036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !349036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !349037
  %i.y = load i64, ptr %i.d, align 8, !dbg !349038, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !349038 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !349043 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !349043, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !349044
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !349044
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !349044, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !349044
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !349044
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !349044, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !349045, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !349045 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !349048 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !349048, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !349048
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !349047, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !349047
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !349047
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !349047, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !349049
  %i.af = load i64, ptr %i.ae, align 8, !dbg !349049, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !349049
  %i.ah = and i64 %i.ag, -16, !dbg !349049
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !349049
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !349049
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !349047
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !349047, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !349053 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !349054
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !349059
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !349059, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !349059
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !349059, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !349060
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes9Int64TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !349067

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !349040 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !349040
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !349040 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !349040
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !349040 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !349040
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !349040 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !349070
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !349070

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !349070

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !349077 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !349079
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !349087, !noalias !349088, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !349091 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !349094, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !349098
  tail call void @llvm.assume(i1 %i.ay), !dbg !349100
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !349101, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !349101
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !349101, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @36, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !349105

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349106), !dbg !349014
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !349109, !alias.scope !349106, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !349109
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !349109

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !349111, !noalias !349117
  %i.bf = icmp eq i64 %i.be, 1, !dbg !349124
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !349124

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !349125
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !349127

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !349128, !range !12048, !alias.scope !349130, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !349128
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int64TypeEEEB1l_.exit, label %bb.l, !dbg !349128

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int64TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int64TypeEEEB1l_.exit unwind label %bb.t, !dbg !349128

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !349014
  %i.bj = load i64, ptr %i.d, align 8, !dbg !349133, !range !12048, !alias.scope !349135, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !349133
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int64TypeEEEB1l_.exit28, label %bb.n, !dbg !349133

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int64TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !349133
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int64TypeEEEB1l_.exit28, !dbg !349133

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int64TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !349014
  br label %bb.o, !dbg !349138

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int64TypeEEEB1l_.exit28
  ret void, !dbg !349138

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !349139, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !349146
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !349146, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !349151, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !349160
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !349169
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !349171

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !349178 ; 3 uses
  %i.br = shl i64 %i.bl, 2, !dbg !349171
  %3 = shl nuw nsw i64 %i.ax, 2, !dbg !349171
  %4 = add i64 %i.br, -4, !dbg !349171
  %i.bs = sub i64 %4, %3, !dbg !349171            ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2, !dbg !349171
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !349171  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28, !dbg !349171
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !349171

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !349171

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16, !dbg !349183 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !349183
  %wide.load67 = load <4 x i32>, ptr %i.by, align 4, !dbg !349183
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat, !dbg !349183
  %i.ca = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !349183
  store <4 x i32> %i.bz, ptr %next.gep, align 4, !dbg !349183
  store <4 x i32> %i.ca, ptr %i.by, align 4, !dbg !349183
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec, !dbg !349171
  br i1 %i.cb, label %middle.block, label %vector.body, !dbg !349171, !llvm.loop !349185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec, !dbg !349171
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !349171

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph, !dbg !349171

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !349186

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.cc, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !349187 ; 2 uses
  %i.cd = load i32, ptr %.sroa.05.043, align 4, !dbg !349183, !noundef !11
  %i.ce = add i32 %i.cd, %.sroa.0.045, !dbg !349183
  store i32 %i.ce, ptr %.sroa.05.043, align 4, !dbg !349183
  %i.cf = icmp eq ptr %i.cc, %i.bo, !dbg !349169
  br i1 %i.cf, label %._crit_edge, label %.lr.ph, !dbg !349171, !llvm.loop !349190

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !349191
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !349191, !noundef !11
  %i.ci = trunc i64 %i.ch to i32, !dbg !349195
  %i.cj = add i32 %.sroa.0.045, %i.ci, !dbg !349196
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !349070
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !349070

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !349197
  unreachable, !dbg !349197

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int64TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !349197
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes9UInt8TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !349198 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !349199
  %.val21 = load i64, ptr %i.e, align 8, !dbg !349199, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !349200, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !349200
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !349200, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !349202
  %i.h = load i64, ptr %i.g, align 8, !dbg !349202, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !349202
  %i.j = and i64 %i.i, -16, !dbg !349202
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !349202
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !349202
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !349200
  %i.n = load ptr, ptr %i.m, align 8, !dbg !349200, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !349206
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !349207
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !349207

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !349209
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !349209

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !349210
  %.val20 = load i64, ptr %i.r, align 8, !dbg !349210, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !349211
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !349211

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g, %bb.r, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349212), !dbg !349215
  %i.t = load ptr, ptr %i.c, align 8, !dbg !349216, !alias.scope !349212, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !349216
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !349216

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !349218, !noalias !349224
  %i.w = icmp eq i64 %i.v, 1, !dbg !349231
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !349231

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !349232
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !349234

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !349235
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes9UInt8TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !349235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !349236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !349236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !349237
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !349237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !349237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !349238
  %i.y = load i64, ptr %i.d, align 8, !dbg !349239, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !349239 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !349244 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !349244, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !349245
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !349245
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !349245, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !349245
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !349245
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !349245, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !349246, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !349246 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !349249 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !349249, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !349249
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !349248, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !349248
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !349248
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !349248, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !349250
  %i.af = load i64, ptr %i.ae, align 8, !dbg !349250, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !349250
  %i.ah = and i64 %i.ag, -16, !dbg !349250
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !349250
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !349250
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !349248
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !349248, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !349254 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !349255
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !349260
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !349260, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !349260
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !349260, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !349261
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes9UInt8TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9UInt8TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !349268

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9UInt8TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !349241 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !349241
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !349241 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !349241
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !349241 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !349241
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !349241 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !349271
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !349271

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9UInt8TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !349271

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !349278 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !349280
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !349288, !noalias !349289, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !349292 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !349295, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !349299
  tail call void @llvm.assume(i1 %i.ay), !dbg !349301
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !349302, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !349302
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !349302, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @37, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !349306

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9UInt8TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349307), !dbg !349215
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !349310, !alias.scope !349307, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !349310
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !349310

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !349312, !noalias !349318
  %i.bf = icmp eq i64 %i.be, 1, !dbg !349325
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !349325

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !349326
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !349328

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !349329, !range !12048, !alias.scope !349331, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !349329
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEB1l_.exit, label %bb.l, !dbg !349329

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEB1l_.exit unwind label %bb.t, !dbg !349329

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !349215
  %i.bj = load i64, ptr %i.d, align 8, !dbg !349334, !range !12048, !alias.scope !349336, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !349334
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEB1l_.exit28, label %bb.n, !dbg !349334

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !349334
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEB1l_.exit28, !dbg !349334

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !349215
  br label %bb.o, !dbg !349339

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEB1l_.exit28
  ret void, !dbg !349339

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !349340, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !349347
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !349347, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !349352, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !349361
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !349370
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !349372

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !349379 ; 3 uses
  %i.br = shl i64 %i.bl, 2, !dbg !349372
  %3 = shl nuw nsw i64 %i.ax, 2, !dbg !349372
  %4 = add i64 %i.br, -4, !dbg !349372
  %i.bs = sub i64 %4, %3, !dbg !349372            ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2, !dbg !349372
  %i.bu = add nuw nsw i64 %i.bt, 1, !dbg !349372  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 28, !dbg !349372
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !349372

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !349372

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16, !dbg !349384 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !349384
  %wide.load67 = load <4 x i32>, ptr %i.by, align 4, !dbg !349384
  %i.bz = add <4 x i32> %wide.load, %broadcast.splat, !dbg !349384
  %i.ca = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !349384
  store <4 x i32> %i.bz, ptr %next.gep, align 4, !dbg !349384
  store <4 x i32> %i.ca, ptr %i.by, align 4, !dbg !349384
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec, !dbg !349372
  br i1 %i.cb, label %middle.block, label %vector.body, !dbg !349372, !llvm.loop !349386

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec, !dbg !349372
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !349372

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph, !dbg !349372

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !349387

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.cc, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !349388 ; 2 uses
  %i.cd = load i32, ptr %.sroa.05.043, align 4, !dbg !349384, !noundef !11
  %i.ce = add i32 %i.cd, %.sroa.0.045, !dbg !349384
  store i32 %i.ce, ptr %.sroa.05.043, align 4, !dbg !349384
  %i.cf = icmp eq ptr %i.cc, %i.bo, !dbg !349370
  br i1 %i.cf, label %._crit_edge, label %.lr.ph, !dbg !349372, !llvm.loop !349391

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !349392
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !349392, !noundef !11
  %i.ci = trunc i64 %i.ch to i32, !dbg !349396
  %i.cj = add i32 %.sroa.0.045, %i.ci, !dbg !349397
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !349271
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !349271

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !349398
  unreachable, !dbg !349398

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !349398
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops3setINtB9_12ChunkedArrayNtNtBb_9datatypes10BinaryTypeEINtB7_8ChunkSetRShINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE3set(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, ptr noalias noundef readonly captures(address, read_provenance) %3, i64 %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !349399 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 12 uses
  %i.d = alloca [88 x i8], align 8                ; 14 uses
  %i.e = alloca [160 x i8], align 8               ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [160 x i8], align 8               ; 4 uses
  %i.h = alloca [128 x i8], align 8               ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !349401
  %i.l = load i64, ptr %i.k, align 8, !dbg !349401, !noundef !11 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !349404
  %i.n = load i64, ptr %i.m, align 8, !dbg !349404, !noundef !11
  %i.o = icmp eq i64 %i.l, %i.n, !dbg !349407
  br i1 %i.o, label %bb.c, label %bb.b, !dbg !349407

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @351, i64 72, i1 false), !dbg !349408
  br label %bb.ae, !dbg !349409

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !349410
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !349411
  %i.q = load ptr, ptr %i.p, align 8, !dbg !349411, !nonnull !11, !noundef !11 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !349428
  %i.s = load i64, ptr %i.r, align 8, !dbg !349428, !noundef !11
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.s, !dbg !349429 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !349438
  %i.v = load ptr, ptr %i.u, align 8, !dbg !349438, !nonnull !11, !noundef !11 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !349456
  %i.x = load i64, ptr %i.w, align 8, !dbg !349456, !noundef !11
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !349457 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !349465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !349474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !349477, !noalias !349482
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE13with_capacityCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.e, i64 noundef %i.l), !dbg !349486, !noalias !349482
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.e, i64 noundef %i.l)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !dbg !349487, !noalias !349482

.noexc.i:                                         ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.20.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.28.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.36.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.44.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.56.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.60.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.sroa.64.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.112.208..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.118.208..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.124.208..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.134.208..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.138.208..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.142.208..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.noexc13.i, !dbg !349493

.noexc13.i:                                       ; preds = %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i, %.noexc.i
  %.sroa.166.0.i.i = phi ptr [ %i.v, %.noexc.i ], [ %.sroa.166.2.i.i, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 4 uses
  %.sroa.142.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.142.3.i.i, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 5 uses
  %.sroa.138.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.138.3.i.i, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 3 uses
  %.sroa.134.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.134.3.i.i, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 3 uses
  %.sroa.124.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.124.3.i.i, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 5 uses
  %.sroa.118.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.118.3.i.i, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 7 uses
  %.sroa.112.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.112.3.i.i, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 6 uses
  %.sroa.109.0.i.i = phi ptr [ undef, %.noexc.i ], [ %.sroa.109.2.i.i, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 6 uses
  %.sroa.105141.0.i.i = phi i1 [ false, %.noexc.i ], [ true, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 2 uses
  %.sroa.100.0.i.i = phi ptr [ %i.q, %.noexc.i ], [ %.sroa.100.1.i.i279, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 3 uses
  %.sroa.64.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.64.2.i.i282, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 5 uses
  %.sroa.60.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.60.2.i.i285, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 3 uses
  %.sroa.56.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.56.2.i.i288, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 3 uses
  %.sroa.44.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.44.2.i.i291, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 7 uses
  %.sroa.36.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.36.2.i.i294, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 6 uses
  %.sroa.28.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.28.2.i.i297, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 3 uses
  %.sroa.20.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.20.2.i.i300, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 4 uses
  %.sroa.12.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.12.2.i.i303, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 5 uses
  %.sroa.7.0.i.i = phi ptr [ undef, %.noexc.i ], [ %.sroa.7.2.i.i306, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349495 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !349496
  br i1 %.sroa.105141.0.i.i, label %bb.d, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditybNtNtB7_8iterator10BitmapIterB1o_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit120.thread.i.i, !dbg !349513

bb.d:                                             ; preds = %.noexc13.i
  %.not.i95.i.i = icmp eq ptr %.sroa.7.0.i.i, null, !dbg !349525
  br i1 %.not.i95.i.i, label %bb.h, label %bb.e, !dbg !349528

bb.e:                                             ; preds = %bb.d
  %i.af = icmp eq i64 %.sroa.28.0.i.i, 0, !dbg !349529
  br i1 %i.af, label %bb.f, label %._crit_edge.i.i.i96.i.i, !dbg !349529

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp eq i64 %.sroa.36.0.i.i, 0, !dbg !349532
  br i1 %i.ag, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i99.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i110.i.i, !dbg !349532

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i110.i.i: ; preds = %bb.f
  %.sroa.0.0.i.i.i.i111.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.36.0.i.i, i64 64), !dbg !349533 ; 2 uses
  %i.ah = sub i64 %.sroa.36.0.i.i, %.sroa.0.0.i.i.i.i111.i.i, !dbg !349535
  %.sroa.02.0.copyload.i.i.i112.i.i = load i64, ptr %.sroa.7.0.i.i, align 1, !dbg !349536, !noalias !349540
  %i.ai = add i64 %.sroa.12.0.i.i, -8, !dbg !349547
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i, i64 8, !dbg !349551
  br label %._crit_edge.i.i.i96.i.i, !dbg !349553

._crit_edge.i.i.i96.i.i:                          ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i110.i.i, %bb.e
  %.sroa.36.8.i.i = phi i64 [ %i.ah, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i110.i.i ], [ %.sroa.36.0.i.i, %bb.e ], !dbg !349495
  %.sroa.12.9.i.i = phi i64 [ %i.ai, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i110.i.i ], [ %.sroa.12.0.i.i, %bb.e ], !dbg !349495
  %.sroa.7.8.i.i = phi ptr [ %i.aj, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i110.i.i ], [ %.sroa.7.0.i.i, %bb.e ], !dbg !349495
  %i.ak = phi i64 [ %.sroa.0.0.i.i.i.i111.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i110.i.i ], [ %.sroa.28.0.i.i, %bb.e ], !dbg !349554
  %i.al = phi i64 [ %.sroa.02.0.copyload.i.i.i112.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i110.i.i ], [ %.sroa.20.0.i.i, %bb.e ], !dbg !349555 ; 2 uses
  %i.am = trunc i64 %i.al to i8, !dbg !349555
  %i.an = lshr i64 %i.al, 1, !dbg !349556
  %i.ao = add i64 %i.ak, -1, !dbg !349554
  %i.ap = and i8 %i.am, 1, !dbg !349557
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i99.i.i, !dbg !349558

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i99.i.i: ; preds = %._crit_edge.i.i.i96.i.i, %bb.f
  %.sroa.36.9.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.36.8.i.i, %._crit_edge.i.i.i96.i.i ], !dbg !349495 ; 2 uses
  %.sroa.28.7.i.i = phi i64 [ 0, %bb.f ], [ %i.ao, %._crit_edge.i.i.i96.i.i ], !dbg !349495 ; 2 uses
  %.sroa.20.8.i.i = phi i64 [ %.sroa.20.0.i.i, %bb.f ], [ %i.an, %._crit_edge.i.i.i96.i.i ], !dbg !349495 ; 2 uses
  %.sroa.12.10.i.i = phi i64 [ %.sroa.12.0.i.i, %bb.f ], [ %.sroa.12.9.i.i, %._crit_edge.i.i.i96.i.i ], !dbg !349495 ; 2 uses
  %.sroa.7.9.i.i = phi ptr [ %.sroa.7.0.i.i, %bb.f ], [ %.sroa.7.8.i.i, %._crit_edge.i.i.i96.i.i ], !dbg !349495 ; 2 uses
  %.sroa.0.0.i.i.i100.i.i = phi i8 [ 2, %bb.f ], [ %i.ap, %._crit_edge.i.i.i96.i.i ], !dbg !349559
  %i.aq = icmp eq i64 %.sroa.60.0.i.i, 0, !dbg !349560
  br i1 %i.aq, label %bb.g, label %._crit_edge.i7.i.i101.i.i, !dbg !349560
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB8_12ChunkedArrayNtNtBa_9datatypes17FixedSizeListTypeENtB4_17ChunkNestingUtils15propagate_nulls:bb.a
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !416785
  store i32 %i.bl, ptr %.sroa.59.0..sroa_idx, align 8, !dbg !416785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !416590
  br label %bb.aa, !dbg !416513

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.trap(), !dbg !416786
  unreachable, !dbg !416786

bb.ae:                                            ; preds = %bb.l
  unreachable

bb.af:                                            ; preds = %bb.m, %bb.l, %bb.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.c) #36
          to label %.body.thread unwind label %bb.ag, !dbg !416622

bb.ag:                                            ; preds = %bb.af, %.body.thread
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !416787
  unreachable, !dbg !416787
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB8_12ChunkedArrayNtNtBa_9datatypes17FixedSizeListTypeENtB4_17ChunkNestingUtils22find_validity_mismatch(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !416788 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !416789
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes17FixedSizeListTypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !416789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !416790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !416790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !416791
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !416791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !416791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !416792
  %i.f = load i64, ptr %i.d, align 8, !dbg !416793, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.f, -9223372036854775808, !dbg !416793 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !416798 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !dbg !416798, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.h, i64 8, !dbg !416799
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.g, !dbg !416799
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !416799, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.h, ptr %i.d, !dbg !416799
  %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !416799
  %.sroa.07.0.val17 = load i64, ptr %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel, align 8, !dbg !416799, !noundef !11
  %i.i = load ptr, ptr %i.c, align 8, !dbg !416800, !noundef !11
  %.not13 = icmp eq ptr %i.i, null, !dbg !416800  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !416803 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !416803, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not13, ptr %i.k, ptr %i.c, !dbg !416803
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !416802, !nonnull !11, !noundef !11
  %.sroa.gep28 = getelementptr i8, ptr %i.k, i64 8, !dbg !416802
  %.sroa.08.0.sroa.sel = select i1 %.not13, ptr %.sroa.gep28, ptr %i.j, !dbg !416802
  %.sroa.08.0.val16 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !416802, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val16, i64 16, !dbg !416804
  %i.m = load i64, ptr %i.l, align 8, !dbg !416804, !range !360, !invariant.load !11
  %i.n = add nsw i64 %i.m, -1, !dbg !416804
  %i.o = and i64 %i.n, -16, !dbg !416804
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.o, !dbg !416804
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !416804
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val16, i64 312, !dbg !416802
  %i.s = load ptr, ptr %i.r, align 8, !dbg !416802, !invariant.load !11, !nonnull !11
  %i.t = invoke noundef nonnull align 8 ptr %i.s(ptr noundef nonnull %i.q)
          to label %bb.e unwind label %.loopexit.split-lp, !dbg !416808 ; 2 uses

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.a, %bb.n, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416809), !dbg !416812
  %i.u = load ptr, ptr %i.c, align 8, !dbg !416813, !alias.scope !416809, !noundef !11 ; 2 uses
  %i.v = icmp eq ptr %i.u, null, !dbg !416813
  br i1 %i.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.c, !dbg !416813

bb.c:                                             ; preds = %bb.b
  %i.w = atomicrmw sub ptr %i.u, i64 1 release, align 8, !dbg !416815, !noalias !416821
  %i.x = icmp eq i64 %i.w, 1, !dbg !416828
  br i1 %i.x, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !416828

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !416829
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.p, !dbg !416831

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val17, !dbg !416832
  %i.z = getelementptr i8, ptr %i.t, i64 8, !dbg !416837
  %.val = load ptr, ptr %i.z, align 8, !dbg !416837, !nonnull !11, !noundef !11 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.t, i64 16, !dbg !416837
  %.val18 = load i64, ptr %i.aa, align 8, !dbg !416837, !noundef !11
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.val18, !dbg !416838
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes17FixedSizeListTypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.y, ptr noundef nonnull %.val, ptr noundef nonnull %i.ab)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes17FixedSizeListTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !416845

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes17FixedSizeListTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.e
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !416795 ; 2 uses
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !416795
  %.sroa.430.0.copyload = load ptr, ptr %.sroa.430.0..sroa_idx, align 8, !dbg !416795 ; 2 uses
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !416795
  %.sroa.531.0.copyload = load i64, ptr %.sroa.531.0..sroa_idx, align 8, !dbg !416795 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !416795
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !416795 ; 2 uses
  %i.ac = icmp ult i64 %.sroa.531.0.copyload, %.sroa.7.0.copyload, !dbg !416848
  br i1 %i.ac, label %.lr.ph41, label %._crit_edge42, !dbg !416848

.lr.ph41:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes17FixedSizeListTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.430.0.copyload) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f, !dbg !416848

bb.f:                                             ; preds = %.lr.ph41, %._crit_edge
  %.sroa.0.040 = phi i32 [ 0, %.lr.ph41 ], [ %i.bu, %._crit_edge ] ; 3 uses
  %.sroa.531.039 = phi i64 [ %.sroa.531.0.copyload, %.lr.ph41 ], [ %i.af, %._crit_edge ] ; 3 uses
  %i.af = add i64 %.sroa.531.039, 1, !dbg !416855 ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.531.039, !dbg !416857
  %.val1.i.i = load ptr, ptr %i.ag, align 8, !dbg !416865, !noalias !416866, !nonnull !11, !noundef !11 ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.430.0.copyload, i64 %.sroa.531.039, !dbg !416869 ; 2 uses
  %i.ai = load i64, ptr %i.ad, align 8, !dbg !416872, !noundef !11 ; 6 uses
  %i.aj = icmp ult i64 %i.ai, 2305843009213693952, !dbg !416876
  tail call void @llvm.assume(i1 %i.aj), !dbg !416878
  %i.ak = load ptr, ptr %i.ah, align 8, !dbg !416879, !nonnull !11, !noundef !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !416879
  %i.am = load ptr, ptr %i.al, align 8, !dbg !416879, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @31, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.l unwind label %.loopexit, !dbg !416883

._crit_edge42:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes17FixedSizeListTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416884), !dbg !416812
  %i.an = load ptr, ptr %i.c, align 8, !dbg !416887, !alias.scope !416884, !noundef !11 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null, !dbg !416887
  br i1 %i.ao, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, label %bb.g, !dbg !416887

bb.g:                                             ; preds = %._crit_edge42
  %i.ap = atomicrmw sub ptr %i.an, i64 1 release, align 8, !dbg !416889, !noalias !416895
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !416902
  br i1 %i.aq, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, !dbg !416902

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !416903
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21 unwind label %bb.j, !dbg !416905

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.c, %bb.b, %bb.d, %bb.j
  %.pn = phi { ptr, i32 } [ %i.at, %bb.j ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.b ], [ %lpad.phi, %bb.c ]
  %i.ar = load i64, ptr %i.d, align 8, !dbg !416906, !range !12048, !alias.scope !416908, !noundef !11
  %i.as = icmp eq i64 %i.ar, -9223372036854775808, !dbg !416906
  br i1 %i.as, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes17FixedSizeListTypeEEEB1l_.exit, label %bb.i, !dbg !416906

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes17FixedSizeListTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes17FixedSizeListTypeEEEB1l_.exit unwind label %bb.p, !dbg !416906

bb.j:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21: ; preds = %bb.g, %._crit_edge42, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !416812
  %i.au = load i64, ptr %i.d, align 8, !dbg !416911, !range !12048, !alias.scope !416913, !noundef !11
  %i.av = icmp eq i64 %i.au, -9223372036854775808, !dbg !416911
  br i1 %i.av, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes17FixedSizeListTypeEEEB1l_.exit23, label %bb.k, !dbg !416911

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes17FixedSizeListTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !416911
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes17FixedSizeListTypeEEEB1l_.exit23, !dbg !416911

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes17FixedSizeListTypeEEEB1l_.exit23: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !416812
  ret void, !dbg !416916

bb.l:                                             ; preds = %bb.f
  %i.aw = load i64, ptr %i.ad, align 8, !dbg !416917, !noundef !11 ; 6 uses
  %i.ax = icmp ugt i64 %i.ai, %i.aw, !dbg !416924
  br i1 %i.ax, label %bb.n, label %bb.m, !dbg !416924, !prof !54

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.ae, align 8, !dbg !416929, !nonnull !11, !noundef !11 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.aw, !dbg !416938
  %i.ba = icmp samesign eq i64 %i.ai, %i.aw, !dbg !416947
  br i1 %i.ba, label %._crit_edge, label %.lr.ph.preheader, !dbg !416949

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ai, !dbg !416956 ; 3 uses
  %i.bc = shl i64 %i.aw, 2, !dbg !416949
  %3 = shl nuw nsw i64 %i.ai, 2, !dbg !416949
  %4 = add i64 %i.bc, -4, !dbg !416949
  %i.bd = sub i64 %4, %3, !dbg !416949            ; 2 uses
  %i.be = lshr exact i64 %i.bd, 2, !dbg !416949
  %i.bf = add nuw nsw i64 %i.be, 1, !dbg !416949  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 28, !dbg !416949
  br i1 %min.iters.check, label %.lr.ph.preheader63, label %vector.ph, !dbg !416949

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bf, 9223372036854775800     ; 3 uses
  %i.bg = shl i64 %n.vec, 2
  %i.bh = getelementptr i8, ptr %i.bb, i64 %i.bg
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.040, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !416949

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bi ; 3 uses
  %i.bj = getelementptr i8, ptr %next.gep, i64 16, !dbg !416961 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !416961
  %wide.load62 = load <4 x i32>, ptr %i.bj, align 4, !dbg !416961
  %i.bk = add <4 x i32> %wide.load, %broadcast.splat, !dbg !416961
  %i.bl = add <4 x i32> %wide.load62, %broadcast.splat, !dbg !416961
  store <4 x i32> %i.bk, ptr %next.gep, align 4, !dbg !416961
  store <4 x i32> %i.bl, ptr %i.bj, align 4, !dbg !416961
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec, !dbg !416949
  br i1 %i.bm, label %middle.block, label %vector.body, !dbg !416949, !llvm.loop !416963

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec, !dbg !416949
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader63, !dbg !416949

.lr.ph.preheader63:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.038.ph = phi ptr [ %i.bb, %.lr.ph.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph, !dbg !416949

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ai, i64 noundef %i.aw, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @539) #37
          to label %bb.o unwind label %.loopexit.split-lp, !dbg !416964

.lr.ph:                                           ; preds = %.lr.ph.preheader63, %.lr.ph
  %.sroa.05.038 = phi ptr [ %i.bn, %.lr.ph ], [ %.sroa.05.038.ph, %.lr.ph.preheader63 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.05.038, i64 4, !dbg !416965 ; 2 uses
  %i.bo = load i32, ptr %.sroa.05.038, align 4, !dbg !416961, !noundef !11
  %i.bp = add i32 %i.bo, %.sroa.0.040, !dbg !416961
  store i32 %i.bp, ptr %.sroa.05.038, align 4, !dbg !416961
  %i.bq = icmp eq ptr %i.bn, %i.az, !dbg !416947
  br i1 %i.bq, label %._crit_edge, label %.lr.ph, !dbg !416949, !llvm.loop !416968

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 56, !dbg !416969
  %i.bs = load i64, ptr %i.br, align 8, !dbg !416969, !noundef !11
  %i.bt = trunc i64 %i.bs to i32, !dbg !416972
  %i.bu = add i32 %.sroa.0.040, %i.bt, !dbg !416973
  %exitcond.not = icmp eq i64 %i.af, %.sroa.7.0.copyload, !dbg !416848
  br i1 %exitcond.not, label %._crit_edge42, label %bb.f, !dbg !416848

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.d
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !416974
  unreachable, !dbg !416974

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes17FixedSizeListTypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.i
  resume { ptr, i32 } %.pn, !dbg !416974
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB8_12ChunkedArrayNtNtBa_9datatypes17FixedSizeListTypeENtB4_17ChunkNestingUtils32trim_lists_to_normalized_offsets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !416975 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !416976 ; 2 uses
  %i.g = tail call noundef i32 @_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flagsNtB5_17StatisticsFlagsIM3get(ptr noundef nonnull align 4 %i.f), !dbg !416979 ; 3 uses
  %i.h = and i32 %i.g, 8, !dbg !416980
  %.not = icmp eq i32 %i.h, 0, !dbg !416990
  br i1 %.not, label %bb.b, label %bb.d, !dbg !416990

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !416991 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !dbg !416991, !nonnull !11, !noundef !11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !416997
  %i.l = load i8, ptr %i.k, align 16, !dbg !416997, !range !410, !noundef !11
  %i.m = icmp eq i8 %i.l, 22, !dbg !416998
  br i1 %i.m, label %_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5arrayINtB4_12ChunkedArrayNtNtB6_9datatypes17FixedSizeListTypeE11inner_dtype.exit, label %bb.c, !dbg !416998, !prof !500

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #39, !dbg !416999
  unreachable, !dbg !416999

_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5arrayINtB4_12ChunkedArrayNtNtB6_9datatypes17FixedSizeListTypeE11inner_dtype.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !417000
  %i.o = load ptr, ptr %i.n, align 16, !dbg !417000, !nonnull !11, !noundef !11
  %i.p = tail call noundef zeroext i1 @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType23contains_list_recursive(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.o), !dbg !417002
  br i1 %i.p, label %bb.e, label %bb.d, !dbg !417003

bb.d:                                             ; preds = %bb.a, %_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5arrayINtB4_12ChunkedArrayNtNtB6_9datatypes17FixedSizeListTypeE11inner_dtype.exit
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !417004
  br label %bb.y, !dbg !417005

bb.e:                                             ; preds = %_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5arrayINtB4_12ChunkedArrayNtNtB6_9datatypes17FixedSizeListTypeE11inner_dtype.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !417007
  store i64 0, ptr %i.e, align 8, !dbg !417008
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !417008 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !dbg !417008
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !417008 ; 4 uses
  store i64 0, ptr %i.r, align 8, !dbg !417008
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !417011 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !dbg !417011, !nonnull !11, !noundef !11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !417027 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !417027, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.v, 4, !dbg !417028
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx, !dbg !417028
  %i.x = icmp eq i64 %i.v, 0, !dbg !417037
  br i1 %i.x, label %.thread.thread, label %.lr.ph, !dbg !417043

.thread.loopexit:                                 ; preds = %bb.h
  %.pr.pre = load i64, ptr %i.r, align 8, !dbg !417044
  br label %.thread, !dbg !417044

.body.thread:                                     ; preds = %.loopexit, %.loopexit.split-lp, %bb.r, %bb.n, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %i.bk, %bb.ad ], [ %i.am, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #36
          to label %common.resume unwind label %bb.ae, !dbg !417049

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit.split-lp:                               ; preds = %.thread.thread, %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.sroa.0.040 = phi ptr [ %i.y, %bb.h ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.039 = phi i64 [ %i.z, %bb.h ], [ 0, %bb.e ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 16, !dbg !417050 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.0.040, align 8, !dbg !417052, !noalias !417055, !nonnull !11, !noundef !11
  %i.z = add nuw nsw i64 %.sroa.7.039, 1, !dbg !417060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !417061
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute32trim_lists_to_normalized_offsets36trim_lists_to_normalized_offsets_fsl(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.d, ptr noundef nonnull align 8 %.val.i.i)
          to label %bb.f unwind label %.loopexit, !dbg !417061

.thread:                                          ; preds = %.thread.loopexit, %bb.t
  %i.aa = phi i64 [ %i.aw, %bb.t ], [ %.pr.pre, %.thread.loopexit ], !dbg !417044 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 576460752303423488, !dbg !417064
  call void @llvm.assume(i1 %i.ab), !dbg !417066
  %i.ac = icmp eq i64 %i.aa, 0, !dbg !417067
  br i1 %i.ac, label %.thread.thread, label %bb.u, !dbg !417067

bb.f:                                             ; preds = %.lr.ph
  %i.ad = load i8, ptr %i.d, align 8, !dbg !417061, !range !49249, !noundef !11
  %.not24 = icmp eq i8 %i.ad, 42, !dbg !417061
  br i1 %.not24, label %bb.h, label %bb.g, !dbg !417068

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !417069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !dbg !417069
  %i.ae = load i64, ptr %i.u, align 8, !dbg !417070, !noundef !11 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 576460752303423488, !dbg !417072
  tail call void @llvm.assume(i1 %i.af), !dbg !417074
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ae)
          to label %bb.i unwind label %bb.ad, !dbg !417075

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !417076
  %i.ag = icmp eq ptr %i.y, %i.w, !dbg !417037
  br i1 %i.ag, label %.thread.loopexit, label %.lr.ph, !dbg !417043

bb.i:                                             ; preds = %bb.g
  %i.ah = load i64, ptr %i.u, align 8, !dbg !417077, !noundef !11 ; 2 uses
  %.not25 = icmp ugt i64 %.sroa.7.039, %i.ah
  br i1 %.not25, label %bb.j, label %bb.k, !dbg !417083, !prof !102785

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.7.039, i64 noundef %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @540) #37
          to label %bb.ac unwind label %bb.ad, !dbg !417092

bb.k:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.s, align 8, !dbg !417093, !nonnull !11, !noundef !11 ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.sroa.7.039, !dbg !417102
  invoke void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtB2b_5slice4iter4IterBG_EEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj)
          to label %bb.l unwind label %bb.ad, !dbg !417110

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !417115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !dbg !417115
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !417116, !noalias !417125
  %i.ak = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 129) 96, i64 noundef range(i64 4, 17) 8) #41, !dbg !417128, !noalias !417125 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null, !dbg !417129
  br i1 %i.al, label %bb.m, label %bb.p, !dbg !417130, !prof !54

end_hunk_3
