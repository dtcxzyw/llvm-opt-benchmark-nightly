inline.NumInlined: 23643
inline.NumDeleted: 6782
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB6_12ChunkedArrayNtNtB8_9datatypes8ListTypeENtB2_17ChunkNestingUtils15propagate_nulls:bb.a
  store <2 x i64> %i.bm, ptr %.sroa.37.0..sroa_idx, align 8, !dbg !228035
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !228035
  store i32 %i.bl, ptr %.sroa.59.0..sroa_idx, align 8, !dbg !228035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !227840
  br label %bb.aa, !dbg !227762

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.trap(), !dbg !228036
  unreachable, !dbg !228036

bb.ae:                                            ; preds = %bb.l
  unreachable

bb.af:                                            ; preds = %bb.m, %bb.l, %bb.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.c) #36
          to label %.body.thread unwind label %bb.ag, !dbg !227872

bb.ag:                                            ; preds = %bb.af, %.body.thread
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !228037
  unreachable, !dbg !228037
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB6_12ChunkedArrayNtNtB8_9datatypes8ListTypeENtB2_17ChunkNestingUtils22find_validity_mismatch(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !228038 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !228039
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes8ListTypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !228039
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !228040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !228040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !228041
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !228041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !228041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !228042
  %i.f = load i64, ptr %i.d, align 8, !dbg !228043, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.f, -9223372036854775808, !dbg !228043 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !228048 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !dbg !228048, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.h, i64 8, !dbg !228049
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.g, !dbg !228049
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !228049, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.h, ptr %i.d, !dbg !228049
  %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !228049
  %.sroa.07.0.val17 = load i64, ptr %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel, align 8, !dbg !228049, !noundef !11
  %i.i = load ptr, ptr %i.c, align 8, !dbg !228050, !noundef !11
  %.not13 = icmp eq ptr %i.i, null, !dbg !228050  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !228053 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !228053, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not13, ptr %i.k, ptr %i.c, !dbg !228053
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !228052, !nonnull !11, !noundef !11
  %.sroa.gep28 = getelementptr i8, ptr %i.k, i64 8, !dbg !228052
  %.sroa.08.0.sroa.sel = select i1 %.not13, ptr %.sroa.gep28, ptr %i.j, !dbg !228052
  %.sroa.08.0.val16 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !228052, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val16, i64 16, !dbg !228054
  %i.m = load i64, ptr %i.l, align 8, !dbg !228054, !range !360, !invariant.load !11
  %i.n = add nsw i64 %i.m, -1, !dbg !228054
  %i.o = and i64 %i.n, -16, !dbg !228054
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.o, !dbg !228054
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !228054
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val16, i64 312, !dbg !228052
  %i.s = load ptr, ptr %i.r, align 8, !dbg !228052, !invariant.load !11, !nonnull !11
  %i.t = invoke noundef nonnull align 8 ptr %i.s(ptr noundef nonnull %i.q)
          to label %bb.e unwind label %.loopexit.split-lp, !dbg !228058 ; 2 uses

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228059), !dbg !228062
  %i.u = load ptr, ptr %i.c, align 8, !dbg !228063, !alias.scope !228059, !noundef !11 ; 2 uses
  %i.v = icmp eq ptr %i.u, null, !dbg !228063
  br i1 %i.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.c, !dbg !228063

bb.c:                                             ; preds = %bb.b
  %i.w = atomicrmw sub ptr %i.u, i64 1 release, align 8, !dbg !228065, !noalias !228071
  %i.x = icmp eq i64 %i.w, 1, !dbg !228078
  br i1 %i.x, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !228078

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !228079
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.p, !dbg !228081

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val17, !dbg !228082
  %i.z = getelementptr i8, ptr %i.t, i64 8, !dbg !228087
  %.val = load ptr, ptr %i.z, align 8, !dbg !228087, !nonnull !11, !noundef !11 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.t, i64 16, !dbg !228087
  %.val18 = load i64, ptr %i.aa, align 8, !dbg !228087, !noundef !11
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.val18, !dbg !228088
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes8ListTypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.y, ptr noundef nonnull %.val, ptr noundef nonnull %i.ab)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes8ListTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !228095

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes8ListTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.e
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !228045 ; 2 uses
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !228045
  %.sroa.430.0.copyload = load ptr, ptr %.sroa.430.0..sroa_idx, align 8, !dbg !228045 ; 2 uses
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !228045
  %.sroa.531.0.copyload = load i64, ptr %.sroa.531.0..sroa_idx, align 8, !dbg !228045 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !228045
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !228045 ; 2 uses
  %i.ac = icmp ult i64 %.sroa.531.0.copyload, %.sroa.7.0.copyload, !dbg !228098
  br i1 %i.ac, label %.lr.ph41, label %._crit_edge42, !dbg !228098

.lr.ph41:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes8ListTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.430.0.copyload) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f, !dbg !228098

bb.f:                                             ; preds = %.lr.ph41, %._crit_edge
  %.sroa.0.040 = phi i32 [ 0, %.lr.ph41 ], [ %i.bt, %._crit_edge ] ; 3 uses
  %.sroa.531.039 = phi i64 [ %.sroa.531.0.copyload, %.lr.ph41 ], [ %i.af, %._crit_edge ] ; 3 uses
  %i.af = add i64 %.sroa.531.039, 1, !dbg !228105 ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.531.039, !dbg !228107
  %.val1.i.i = load ptr, ptr %i.ag, align 8, !dbg !228115, !noalias !228116, !nonnull !11, !noundef !11 ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.430.0.copyload, i64 %.sroa.531.039, !dbg !228119 ; 2 uses
  %i.ai = load i64, ptr %i.ad, align 8, !dbg !228122, !noundef !11 ; 6 uses
  %i.aj = icmp ult i64 %i.ai, 2305843009213693952, !dbg !228126
  tail call void @llvm.assume(i1 %i.aj), !dbg !228128
  %i.ak = load ptr, ptr %i.ah, align 8, !dbg !228129, !nonnull !11, !noundef !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !228129
  %i.am = load ptr, ptr %i.al, align 8, !dbg !228129, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @33, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.l unwind label %.loopexit, !dbg !228133

._crit_edge42:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes8ListTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228134), !dbg !228062
  %i.an = load ptr, ptr %i.c, align 8, !dbg !228137, !alias.scope !228134, !noundef !11 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null, !dbg !228137
  br i1 %i.ao, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, label %bb.g, !dbg !228137

bb.g:                                             ; preds = %._crit_edge42
  %i.ap = atomicrmw sub ptr %i.an, i64 1 release, align 8, !dbg !228139, !noalias !228145
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !228152
  br i1 %i.aq, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, !dbg !228152

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !228153
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21 unwind label %bb.j, !dbg !228155

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.c, %bb.b, %bb.d, %bb.j
  %.pn = phi { ptr, i32 } [ %i.at, %bb.j ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.b ], [ %lpad.phi, %bb.c ]
  %i.ar = load i64, ptr %i.d, align 8, !dbg !228156, !range !12048, !alias.scope !228158, !noundef !11
  %i.as = icmp eq i64 %i.ar, -9223372036854775808, !dbg !228156
  br i1 %i.as, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8ListTypeEEEB1l_.exit, label %bb.i, !dbg !228156

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8ListTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8ListTypeEEEB1l_.exit unwind label %bb.p, !dbg !228156

bb.j:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21: ; preds = %bb.g, %._crit_edge42, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !228062
  %i.au = load i64, ptr %i.d, align 8, !dbg !228161, !range !12048, !alias.scope !228163, !noundef !11
  %i.av = icmp eq i64 %i.au, -9223372036854775808, !dbg !228161
  br i1 %i.av, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8ListTypeEEEB1l_.exit23, label %bb.k, !dbg !228161

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8ListTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !228161
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8ListTypeEEEB1l_.exit23, !dbg !228161

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8ListTypeEEEB1l_.exit23: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !228062
  ret void, !dbg !228166

bb.l:                                             ; preds = %bb.f
  %i.aw = load i64, ptr %i.ad, align 8, !dbg !228167, !noundef !11 ; 6 uses
  %i.ax = icmp ugt i64 %i.ai, %i.aw, !dbg !228174
  br i1 %i.ax, label %bb.n, label %bb.m, !dbg !228174, !prof !54

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.ae, align 8, !dbg !228179, !nonnull !11, !noundef !11 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.aw, !dbg !228188
  %i.ba = icmp samesign eq i64 %i.ai, %i.aw, !dbg !228197
  br i1 %i.ba, label %._crit_edge, label %.lr.ph.preheader, !dbg !228199

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ai, !dbg !228206 ; 3 uses
  %3 = shl i64 %i.aw, 2, !dbg !228199
  %i.bc = add i64 %3, -4, !dbg !228199
  %4 = shl nuw nsw i64 %i.ai, 2, !dbg !228199
  %5 = sub i64 %i.bc, %4, !dbg !228199            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !228199
  %i.bd = add nuw nsw i64 %6, 1, !dbg !228199     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !228199
  br i1 %min.iters.check, label %.lr.ph.preheader63, label %vector.ph, !dbg !228199

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bd, 9223372036854775800     ; 3 uses
  %i.be = shl i64 %n.vec, 2
  %i.bf = getelementptr i8, ptr %i.bb, i64 %i.be
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.040, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !228199

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bg ; 3 uses
  %i.bh = getelementptr i8, ptr %next.gep, i64 16, !dbg !228211 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !228211
  %wide.load62 = load <4 x i32>, ptr %i.bh, align 4, !dbg !228211
  %i.bi = add <4 x i32> %wide.load, %broadcast.splat, !dbg !228211
  %i.bj = add <4 x i32> %wide.load62, %broadcast.splat, !dbg !228211
  store <4 x i32> %i.bi, ptr %next.gep, align 4, !dbg !228211
  store <4 x i32> %i.bj, ptr %i.bh, align 4, !dbg !228211
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec, !dbg !228199
  br i1 %i.bk, label %middle.block, label %vector.body, !dbg !228199, !llvm.loop !228213

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec, !dbg !228199
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader63, !dbg !228199

.lr.ph.preheader63:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.038.ph = phi ptr [ %i.bb, %.lr.ph.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph, !dbg !228199

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ai, i64 noundef %i.aw, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #37
          to label %bb.o unwind label %.loopexit.split-lp, !dbg !228214

.lr.ph:                                           ; preds = %.lr.ph.preheader63, %.lr.ph
  %.sroa.05.038 = phi ptr [ %i.bl, %.lr.ph ], [ %.sroa.05.038.ph, %.lr.ph.preheader63 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.05.038, i64 4, !dbg !228215 ; 2 uses
  %i.bm = load i32, ptr %.sroa.05.038, align 4, !dbg !228211, !noundef !11
  %i.bn = add i32 %i.bm, %.sroa.0.040, !dbg !228211
  store i32 %i.bn, ptr %.sroa.05.038, align 4, !dbg !228211
  %i.bo = icmp eq ptr %i.bl, %i.az, !dbg !228197
  br i1 %i.bo, label %._crit_edge, label %.lr.ph, !dbg !228199, !llvm.loop !228218

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !228219
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !228219, !noundef !11
  %i.br = trunc i64 %i.bq to i32, !dbg !228226
  %i.bs = add i32 %.sroa.0.040, -1, !dbg !228226
  %i.bt = add i32 %i.bs, %i.br, !dbg !228227
  %exitcond.not = icmp eq i64 %i.af, %.sroa.7.0.copyload, !dbg !228098
  br i1 %exitcond.not, label %._crit_edge42, label %bb.f, !dbg !228098

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.d
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !228228
  unreachable, !dbg !228228

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8ListTypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.i
  resume { ptr, i32 } %.pn, !dbg !228228
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB6_12ChunkedArrayNtNtB8_9datatypes8ListTypeENtB2_17ChunkNestingUtils32trim_lists_to_normalized_offsets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !228229 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !228230 ; 2 uses
  %i.g = tail call noundef i32 @_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flagsNtB5_17StatisticsFlagsIM3get(ptr noundef nonnull align 4 %i.f), !dbg !228233 ; 3 uses
  %i.h = and i32 %i.g, 8, !dbg !228234
  %.not = icmp eq i32 %i.h, 0, !dbg !228244
  br i1 %.not, label %bb.c, label %bb.b, !dbg !228244

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !228245
  br label %bb.w, !dbg !228246

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !228248
  store i64 0, ptr %i.e, align 8, !dbg !228249
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !228249 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !dbg !228249
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !228249 ; 4 uses
  store i64 0, ptr %i.j, align 8, !dbg !228249
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !228252 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !dbg !228252, !nonnull !11, !noundef !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !228268 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !228268, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.n, 4, !dbg !228269
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx, !dbg !228269
  %i.p = icmp eq i64 %i.n, 0, !dbg !228278
  br i1 %i.p, label %.thread.thread, label %.lr.ph, !dbg !228284

.thread.loopexit:                                 ; preds = %bb.f
  %.pr.pre = load i64, ptr %i.j, align 8, !dbg !228285
  br label %.thread, !dbg !228285

.body.thread:                                     ; preds = %.loopexit, %.loopexit.split-lp, %bb.p, %bb.l, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %i.bd, %bb.ab ], [ %i.ae, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #36
          to label %common.resume unwind label %bb.ac, !dbg !228290

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
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 16, !dbg !228291 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.0.040, align 8, !dbg !228293, !noalias !228296, !nonnull !11, !noundef !11
  %i.r = add nuw nsw i64 %.sroa.7.039, 1, !dbg !228301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !228302
  invoke void @_RINvNtCslFlrwjHoTci_14polars_compute32trim_lists_to_normalized_offsets37trim_lists_to_normalized_offsets_listxECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.d, ptr noundef nonnull align 8 %.val.i.i)
          to label %bb.d unwind label %.loopexit, !dbg !228302

.thread:                                          ; preds = %.thread.loopexit, %bb.r
  %i.s = phi i64 [ %i.ao, %bb.r ], [ %.pr.pre, %.thread.loopexit ], !dbg !228285 ; 3 uses
  %i.t = icmp ult i64 %i.s, 576460752303423488, !dbg !228305
  call void @llvm.assume(i1 %i.t), !dbg !228307
  %i.u = icmp eq i64 %i.s, 0, !dbg !228308
  br i1 %i.u, label %.thread.thread, label %bb.s, !dbg !228308

bb.d:                                             ; preds = %.lr.ph
  %i.v = load i8, ptr %i.d, align 8, !dbg !228302, !range !49249, !noundef !11
  %.not24 = icmp eq i8 %i.v, 42, !dbg !228302
  br i1 %.not24, label %bb.f, label %bb.e, !dbg !228309

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !228310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false), !dbg !228310
  %i.w = load i64, ptr %i.m, align 8, !dbg !228311, !noundef !11 ; 2 uses
  %i.x = icmp ult i64 %i.w, 576460752303423488, !dbg !228313
  tail call void @llvm.assume(i1 %i.x), !dbg !228315
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.w)
          to label %bb.g unwind label %bb.ab, !dbg !228316

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !228317
  %i.y = icmp eq ptr %i.q, %i.o, !dbg !228278
  br i1 %i.y, label %.thread.loopexit, label %.lr.ph, !dbg !228284

bb.g:                                             ; preds = %bb.e
  %i.z = load i64, ptr %i.m, align 8, !dbg !228318, !noundef !11 ; 2 uses
  %.not25 = icmp ugt i64 %.sroa.7.039, %i.z
  br i1 %.not25, label %bb.h, label %bb.i, !dbg !228324, !prof !102785

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.7.039, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #37
          to label %bb.aa unwind label %bb.ab, !dbg !228333

bb.i:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.k, align 8, !dbg !228334, !nonnull !11, !noundef !11 ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.sroa.7.039, !dbg !228343
  invoke void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtB2b_5slice4iter4IterBG_EEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab)
          to label %bb.j unwind label %bb.ab, !dbg !228351

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !228356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false), !dbg !228356
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !228357, !noalias !228366
  %i.ac = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 129) 104, i64 noundef range(i64 4, 17) 8) #41, !dbg !228369, !noalias !228366 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null, !dbg !228370
  br i1 %i.ad, label %bb.k, label %bb.n, !dbg !228371, !prof !54

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #37
          to label %.noexc unwind label %bb.l, !dbg !228372

.noexc:                                           ; preds = %bb.k
  unreachable, !dbg !228372

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b) #36
          to label %.body.thread unwind label %bb.m, !dbg !228373

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !228374
  unreachable, !dbg !228374

bb.n:                                             ; preds = %bb.j
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10StructTypeENtB5_17ChunkNestingUtils15propagate_nulls:bb.a
  store <2 x i64> %i.bt, ptr %.sroa.37.0..sroa_idx, align 8, !dbg !318241
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !318241
  store i32 %i.bs, ptr %.sroa.59.0..sroa_idx, align 8, !dbg !318241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !318044
  br label %bb.z, !dbg !317930

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.trap(), !dbg !318242
  unreachable, !dbg !318242

bb.ad:                                            ; preds = %bb.k
  unreachable

bb.ae:                                            ; preds = %bb.l, %bb.k, %bb.h
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7struct_11StructArrayECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.c) #36
          to label %.body.thread unwind label %bb.af, !dbg !318076

bb.af:                                            ; preds = %bb.ae, %.body.thread
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !318243
  unreachable, !dbg !318243
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10StructTypeENtB5_17ChunkNestingUtils22find_validity_mismatch(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !318244 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !318245
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes10StructTypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !318245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !318246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !318246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !318247
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !318247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !318247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !318248
  %i.f = load i64, ptr %i.d, align 8, !dbg !318249, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.f, -9223372036854775808, !dbg !318249 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !318254 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !dbg !318254, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.h, i64 8, !dbg !318255
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.g, !dbg !318255
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !318255, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.h, ptr %i.d, !dbg !318255
  %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !318255
  %.sroa.07.0.val17 = load i64, ptr %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel, align 8, !dbg !318255, !noundef !11
  %i.i = load ptr, ptr %i.c, align 8, !dbg !318256, !noundef !11
  %.not13 = icmp eq ptr %i.i, null, !dbg !318256  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !318259 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !318259, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not13, ptr %i.k, ptr %i.c, !dbg !318259
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !318258, !nonnull !11, !noundef !11
  %.sroa.gep28 = getelementptr i8, ptr %i.k, i64 8, !dbg !318258
  %.sroa.08.0.sroa.sel = select i1 %.not13, ptr %.sroa.gep28, ptr %i.j, !dbg !318258
  %.sroa.08.0.val16 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !318258, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val16, i64 16, !dbg !318260
  %i.m = load i64, ptr %i.l, align 8, !dbg !318260, !range !360, !invariant.load !11
  %i.n = add nsw i64 %i.m, -1, !dbg !318260
  %i.o = and i64 %i.n, -16, !dbg !318260
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.o, !dbg !318260
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !318260
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val16, i64 312, !dbg !318258
  %i.s = load ptr, ptr %i.r, align 8, !dbg !318258, !invariant.load !11, !nonnull !11
  %i.t = invoke noundef nonnull align 8 ptr %i.s(ptr noundef nonnull %i.q)
          to label %bb.e unwind label %.loopexit.split-lp, !dbg !318264 ; 2 uses

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318265), !dbg !318268
  %i.u = load ptr, ptr %i.c, align 8, !dbg !318269, !alias.scope !318265, !noundef !11 ; 2 uses
  %i.v = icmp eq ptr %i.u, null, !dbg !318269
  br i1 %i.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.c, !dbg !318269

bb.c:                                             ; preds = %bb.b
  %i.w = atomicrmw sub ptr %i.u, i64 1 release, align 8, !dbg !318271, !noalias !318277
  %i.x = icmp eq i64 %i.w, 1, !dbg !318284
  br i1 %i.x, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !318284

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !318285
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.p, !dbg !318287

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val17, !dbg !318288
  %i.z = getelementptr i8, ptr %i.t, i64 8, !dbg !318293
  %.val = load ptr, ptr %i.z, align 8, !dbg !318293, !nonnull !11, !noundef !11 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.t, i64 16, !dbg !318293
  %.val18 = load i64, ptr %i.aa, align 8, !dbg !318293, !noundef !11
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.val18, !dbg !318294
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes10StructTypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.y, ptr noundef nonnull %.val, ptr noundef nonnull %i.ab)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10StructTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !318301

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10StructTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.e
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !318251 ; 2 uses
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !318251
  %.sroa.430.0.copyload = load ptr, ptr %.sroa.430.0..sroa_idx, align 8, !dbg !318251 ; 2 uses
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !318251
  %.sroa.531.0.copyload = load i64, ptr %.sroa.531.0..sroa_idx, align 8, !dbg !318251 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !318251
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !318251 ; 2 uses
  %i.ac = icmp ult i64 %.sroa.531.0.copyload, %.sroa.7.0.copyload, !dbg !318304
  br i1 %i.ac, label %.lr.ph41, label %._crit_edge42, !dbg !318304

.lr.ph41:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10StructTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.430.0.copyload) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f, !dbg !318304

bb.f:                                             ; preds = %.lr.ph41, %._crit_edge
  %.sroa.0.040 = phi i32 [ 0, %.lr.ph41 ], [ %i.bs, %._crit_edge ] ; 3 uses
  %.sroa.531.039 = phi i64 [ %.sroa.531.0.copyload, %.lr.ph41 ], [ %i.af, %._crit_edge ] ; 3 uses
  %i.af = add i64 %.sroa.531.039, 1, !dbg !318311 ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.531.039, !dbg !318313
  %.val1.i.i = load ptr, ptr %i.ag, align 8, !dbg !318319, !noalias !318320, !nonnull !11, !noundef !11 ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.430.0.copyload, i64 %.sroa.531.039, !dbg !318323 ; 2 uses
  %i.ai = load i64, ptr %i.ad, align 8, !dbg !318326, !noundef !11 ; 6 uses
  %i.aj = icmp ult i64 %i.ai, 2305843009213693952, !dbg !318330
  tail call void @llvm.assume(i1 %i.aj), !dbg !318332
  %i.ak = load ptr, ptr %i.ah, align 8, !dbg !318333, !nonnull !11, !noundef !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !318333
  %i.am = load ptr, ptr %i.al, align 8, !dbg !318333, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @342, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.l unwind label %.loopexit, !dbg !318337

._crit_edge42:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10StructTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318338), !dbg !318268
  %i.an = load ptr, ptr %i.c, align 8, !dbg !318341, !alias.scope !318338, !noundef !11 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null, !dbg !318341
  br i1 %i.ao, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, label %bb.g, !dbg !318341

bb.g:                                             ; preds = %._crit_edge42
  %i.ap = atomicrmw sub ptr %i.an, i64 1 release, align 8, !dbg !318343, !noalias !318349
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !318356
  br i1 %i.aq, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, !dbg !318356

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !318357
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21 unwind label %bb.j, !dbg !318359

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.c, %bb.b, %bb.d, %bb.j
  %.pn = phi { ptr, i32 } [ %i.at, %bb.j ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.b ], [ %lpad.phi, %bb.c ]
  %i.ar = load i64, ptr %i.d, align 8, !dbg !318360, !range !12048, !alias.scope !318362, !noundef !11
  %i.as = icmp eq i64 %i.ar, -9223372036854775808, !dbg !318360
  br i1 %i.as, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StructTypeEEEB1l_.exit, label %bb.i, !dbg !318360

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10StructTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StructTypeEEEB1l_.exit unwind label %bb.p, !dbg !318360

bb.j:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21: ; preds = %bb.g, %._crit_edge42, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !318268
  %i.au = load i64, ptr %i.d, align 8, !dbg !318365, !range !12048, !alias.scope !318367, !noundef !11
  %i.av = icmp eq i64 %i.au, -9223372036854775808, !dbg !318365
  br i1 %i.av, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StructTypeEEEB1l_.exit23, label %bb.k, !dbg !318365

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10StructTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !318365
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StructTypeEEEB1l_.exit23, !dbg !318365

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StructTypeEEEB1l_.exit23: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !318268
  ret void, !dbg !318370

bb.l:                                             ; preds = %bb.f
  %i.aw = load i64, ptr %i.ad, align 8, !dbg !318371, !noundef !11 ; 6 uses
  %i.ax = icmp ugt i64 %i.ai, %i.aw, !dbg !318378
  br i1 %i.ax, label %bb.n, label %bb.m, !dbg !318378, !prof !54

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.ae, align 8, !dbg !318383, !nonnull !11, !noundef !11 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.aw, !dbg !318392
  %i.ba = icmp samesign eq i64 %i.ai, %i.aw, !dbg !318401
  br i1 %i.ba, label %._crit_edge, label %.lr.ph.preheader, !dbg !318403

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ai, !dbg !318410 ; 3 uses
  %3 = shl i64 %i.aw, 2, !dbg !318403
  %i.bc = add i64 %3, -4, !dbg !318403
  %4 = shl nuw nsw i64 %i.ai, 2, !dbg !318403
  %5 = sub i64 %i.bc, %4, !dbg !318403            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !318403
  %i.bd = add nuw nsw i64 %6, 1, !dbg !318403     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !318403
  br i1 %min.iters.check, label %.lr.ph.preheader63, label %vector.ph, !dbg !318403

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bd, 9223372036854775800     ; 3 uses
  %i.be = shl i64 %n.vec, 2
  %i.bf = getelementptr i8, ptr %i.bb, i64 %i.be
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.040, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !318403

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bg ; 3 uses
  %i.bh = getelementptr i8, ptr %next.gep, i64 16, !dbg !318415 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !318415
  %wide.load62 = load <4 x i32>, ptr %i.bh, align 4, !dbg !318415
  %i.bi = add <4 x i32> %wide.load, %broadcast.splat, !dbg !318415
  %i.bj = add <4 x i32> %wide.load62, %broadcast.splat, !dbg !318415
  store <4 x i32> %i.bi, ptr %next.gep, align 4, !dbg !318415
  store <4 x i32> %i.bj, ptr %i.bh, align 4, !dbg !318415
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec, !dbg !318403
  br i1 %i.bk, label %middle.block, label %vector.body, !dbg !318403, !llvm.loop !318417

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec, !dbg !318403
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader63, !dbg !318403

.lr.ph.preheader63:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.038.ph = phi ptr [ %i.bb, %.lr.ph.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph, !dbg !318403

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ai, i64 noundef %i.aw, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344) #37
          to label %bb.o unwind label %.loopexit.split-lp, !dbg !318418

.lr.ph:                                           ; preds = %.lr.ph.preheader63, %.lr.ph
  %.sroa.05.038 = phi ptr [ %i.bl, %.lr.ph ], [ %.sroa.05.038.ph, %.lr.ph.preheader63 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.05.038, i64 4, !dbg !318419 ; 2 uses
  %i.bm = load i32, ptr %.sroa.05.038, align 4, !dbg !318415, !noundef !11
  %i.bn = add i32 %i.bm, %.sroa.0.040, !dbg !318415
  store i32 %i.bn, ptr %.sroa.05.038, align 4, !dbg !318415
  %i.bo = icmp eq ptr %i.bl, %i.az, !dbg !318401
  br i1 %i.bo, label %._crit_edge, label %.lr.ph, !dbg !318403, !llvm.loop !318422

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 56, !dbg !318423
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !318423, !noundef !11
  %i.br = trunc i64 %i.bq to i32, !dbg !318426
  %i.bs = add i32 %.sroa.0.040, %i.br, !dbg !318427
  %exitcond.not = icmp eq i64 %i.af, %.sroa.7.0.copyload, !dbg !318304
  br i1 %exitcond.not, label %._crit_edge42, label %bb.f, !dbg !318304

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.d
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !318428
  unreachable, !dbg !318428

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StructTypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.i
  resume { ptr, i32 } %.pn, !dbg !318428
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10StructTypeENtB5_17ChunkNestingUtils32trim_lists_to_normalized_offsets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !318429 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !318430 ; 2 uses
  %i.g = tail call noundef i32 @_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flagsNtB5_17StatisticsFlagsIM3get(ptr noundef nonnull align 4 %i.f), !dbg !318433 ; 3 uses
  %i.h = and i32 %i.g, 8, !dbg !318434
  %.not = icmp eq i32 %i.h, 0, !dbg !318444
  br i1 %.not, label %bb.b, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs0_NtNtNtBW_13chunked_array3ops13nesting_utilsINtB2F_12ChunkedArrayNtBU_10StructTypeENtB2B_17ChunkNestingUtils32trim_lists_to_normalized_offsets0EBW_.exit, !dbg !318444

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !318445 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !dbg !318445, !nonnull !11, !noundef !11 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !318451
  %i.l = load i8, ptr %i.k, align 16, !dbg !318451, !range !410, !noundef !11
  %i.m = icmp eq i8 %i.l, 28, !dbg !318452
  br i1 %i.m, label %_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7struct_INtB4_12ChunkedArrayNtNtB6_9datatypes10StructTypeE13struct_fields.exit, label %bb.c, !dbg !318452, !prof !500

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #39, !dbg !318453
  unreachable, !dbg !318453

_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7struct_INtB4_12ChunkedArrayNtNtB6_9datatypes10StructTypeE13struct_fields.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !318454
  %i.o = load ptr, ptr %i.n, align 16, !dbg !318454, !nonnull !11, !noundef !11 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !318461
  %i.q = load i64, ptr %i.p, align 8, !dbg !318461, !noundef !11 ; 2 uses
  %.idx55 = mul nuw nsw i64 %i.q, 80, !dbg !318462
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx55, !dbg !318462
  %.not.not.not.i.not53 = icmp eq i64 %i.q, 0, !dbg !318471
  br i1 %.not.not.not.i.not53, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs0_NtNtNtBW_13chunked_array3ops13nesting_utilsINtB2F_12ChunkedArrayNtBU_10StructTypeENtB2B_17ChunkNestingUtils32trim_lists_to_normalized_offsets0EBW_.exit, label %.lr.ph54, !dbg !318481

bb.d:                                             ; preds = %.lr.ph54
  %i.s = getelementptr inbounds nuw i8, ptr %i.t, i64 80, !dbg !318482 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.s, %i.r, !dbg !318471
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs0_NtNtNtBW_13chunked_array3ops13nesting_utilsINtB2F_12ChunkedArrayNtBU_10StructTypeENtB2B_17ChunkNestingUtils32trim_lists_to_normalized_offsets0EBW_.exit, label %.lr.ph54, !dbg !318481

.lr.ph54:                                         ; preds = %_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7struct_INtB4_12ChunkedArrayNtNtB6_9datatypes10StructTypeE13struct_fields.exit, %bb.d
  %i.t = phi ptr [ %i.s, %bb.d ], [ %i.o, %_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7struct_INtB4_12ChunkedArrayNtNtB6_9datatypes10StructTypeE13struct_fields.exit ] ; 2 uses
  %i.u = tail call noundef zeroext i1 @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType23contains_list_recursive(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %i.t), !dbg !318485, !noalias !318489
  br i1 %i.u, label %bb.e, label %bb.d, !dbg !318492

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs0_NtNtNtBW_13chunked_array3ops13nesting_utilsINtB2F_12ChunkedArrayNtBU_10StructTypeENtB2B_17ChunkNestingUtils32trim_lists_to_normalized_offsets0EBW_.exit: ; preds = %bb.d, %_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7struct_INtB4_12ChunkedArrayNtNtB6_9datatypes10StructTypeE13struct_fields.exit, %bb.a
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !318493
  br label %bb.y, !dbg !318494

bb.e:                                             ; preds = %.lr.ph54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !318496
  store i64 0, ptr %i.e, align 8, !dbg !318497
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !318497 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !dbg !318497
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !318497 ; 4 uses
  store i64 0, ptr %i.w, align 8, !dbg !318497
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !318500 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !dbg !318500, !nonnull !11, !noundef !11 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !318516 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !dbg !318516, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.aa, 4, !dbg !318517
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx, !dbg !318517
  %i.ac = icmp eq i64 %i.aa, 0, !dbg !318528
  br i1 %i.ac, label %.thread.thread, label %.lr.ph, !dbg !318534

.thread.loopexit:                                 ; preds = %bb.h
  %.pr.pre = load i64, ptr %i.w, align 8, !dbg !318535
  br label %.thread, !dbg !318535

.body.thread:                                     ; preds = %.loopexit, %.loopexit.split-lp, %bb.r, %bb.n, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.r ], [ %i.bp, %bb.ad ], [ %i.ar, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #36
          to label %common.resume unwind label %bb.ae, !dbg !318540

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit.split-lp:                               ; preds = %.thread.thread, %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.sroa.7.041 = phi i64 [ %i.ae, %bb.h ], [ 0, %bb.e ] ; 4 uses
  %.sroa.030.040 = phi ptr [ %i.ad, %bb.h ], [ %i.y, %bb.e ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.030.040, i64 16, !dbg !318541 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.030.040, align 8, !dbg !318543, !noalias !318546, !nonnull !11, !noundef !11
  %i.ae = add nuw nsw i64 %.sroa.7.041, 1, !dbg !318551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !318552
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute32trim_lists_to_normalized_offsets39trim_lists_to_normalized_offsets_struct(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.d, ptr noundef nonnull align 8 %.val.i.i)
          to label %bb.f unwind label %.loopexit, !dbg !318552

.thread:                                          ; preds = %.thread.loopexit, %bb.t
  %i.af = phi i64 [ %i.bb, %bb.t ], [ %.pr.pre, %.thread.loopexit ], !dbg !318535 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 576460752303423488, !dbg !318555
  call void @llvm.assume(i1 %i.ag), !dbg !318557
  %i.ah = icmp eq i64 %i.af, 0, !dbg !318558
  br i1 %i.ah, label %.thread.thread, label %bb.u, !dbg !318558

bb.f:                                             ; preds = %.lr.ph
  %i.ai = load i64, ptr %i.d, align 8, !dbg !318552, !range !12048, !noundef !11
  %.not24 = icmp eq i64 %i.ai, -9223372036854775808, !dbg !318552
  br i1 %.not24, label %bb.h, label %bb.g, !dbg !318559

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !318560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !dbg !318560
  %i.aj = load i64, ptr %i.z, align 8, !dbg !318561, !noundef !11 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 576460752303423488, !dbg !318563
  tail call void @llvm.assume(i1 %i.ak), !dbg !318565
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.aj)
          to label %bb.i unwind label %bb.ad, !dbg !318566

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !318567
  %i.al = icmp eq ptr %i.ad, %i.ab, !dbg !318528
  br i1 %i.al, label %.thread.loopexit, label %.lr.ph, !dbg !318534

bb.i:                                             ; preds = %bb.g
  %i.am = load i64, ptr %i.z, align 8, !dbg !318568, !noundef !11 ; 2 uses
  %.not25 = icmp ugt i64 %.sroa.7.041, %i.am
  br i1 %.not25, label %bb.j, label %bb.k, !dbg !318574, !prof !102785

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.7.041, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #37
          to label %bb.ac unwind label %bb.ad, !dbg !318583

bb.k:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %i.x, align 8, !dbg !318584, !nonnull !11, !noundef !11 ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %.sroa.7.041, !dbg !318593
end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10BinaryTypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_:bb.a
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !345962
  %.val19 = load i64, ptr %i.e, align 8, !dbg !345962, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !345963, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !345963
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !345963, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !345965
  %i.h = load i64, ptr %i.g, align 8, !dbg !345965, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !345965
  %i.j = and i64 %i.i, -16, !dbg !345965
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !345965
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !345965
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !345963
  %i.n = load ptr, ptr %i.m, align 8, !dbg !345963, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !345969
  %i.p = icmp eq i64 %.val19, %i.o, !dbg !345970
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !345970

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val19, 0, !dbg !345972
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !345972

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !345973
  %.val21 = load i64, ptr %i.r, align 8, !dbg !345973, !noundef !11
  %i.s = icmp eq i64 %.val19, %.val21, !dbg !345974
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !345974

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345975), !dbg !345978
  %i.t = load ptr, ptr %i.c, align 8, !dbg !345979, !alias.scope !345975, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !345979
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !345979

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !345981, !noalias !345987
  %i.w = icmp eq i64 %i.v, 1, !dbg !345994
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !345994

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !345995
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !345997

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !345998
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes10BinaryTypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !345998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !345999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !345999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !346000
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !346000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !346000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !346001
  %i.y = load i64, ptr %i.d, align 8, !dbg !346002, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !346002 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !346007 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !346007, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !346008
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !346008
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !346008, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !346008
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !346008
  %.sroa.07.0.val20 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !346008, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !346009, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !346009 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !346012 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !346012, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !346012
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !346011, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !346011
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !346011
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !346011, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !346013
  %i.af = load i64, ptr %i.ae, align 8, !dbg !346013, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !346013
  %i.ah = and i64 %i.ag, -16, !dbg !346013
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !346013
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !346013
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !346011
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !346011, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !346017 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val20, !dbg !346018
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !346023
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !346023, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !346023
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !346023, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !346024
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes10BinaryTypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10BinaryTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !346031

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10BinaryTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !346004 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !346004
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !346004 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !346004
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !346004 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !346004
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !346004 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !346034
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !346034

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10BinaryTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !346034

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !346041 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !346043
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !346051, !noalias !346052, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !346055 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !346058, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !346062
  tail call void @llvm.assume(i1 %i.ay), !dbg !346064
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !346065, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !346065
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !346065, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @17, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !346069

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10BinaryTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346070), !dbg !345978
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !346073, !alias.scope !346070, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !346073
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !346073

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !346075, !noalias !346081
  %i.bf = icmp eq i64 %i.be, 1, !dbg !346088
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !346088

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !346089
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !346091

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !346092, !range !12048, !alias.scope !346094, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !346092
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEB1l_.exit, label %bb.l, !dbg !346092

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10BinaryTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEB1l_.exit unwind label %bb.t, !dbg !346092

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !345978
  %i.bj = load i64, ptr %i.d, align 8, !dbg !346097, !range !12048, !alias.scope !346099, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !346097
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEB1l_.exit28, label %bb.n, !dbg !346097

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10BinaryTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !346097
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEB1l_.exit28, !dbg !346097

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !345978
  br label %bb.o, !dbg !346102

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEB1l_.exit28
  ret void, !dbg !346102

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !346103, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !346110
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !346110, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !346115, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !346124
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !346133
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !346135

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !346142 ; 3 uses
  %3 = shl i64 %i.bl, 2, !dbg !346135
  %i.br = add i64 %3, -4, !dbg !346135
  %4 = shl nuw nsw i64 %i.ax, 2, !dbg !346135
  %5 = sub i64 %i.br, %4, !dbg !346135            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !346135
  %i.bs = add nuw nsw i64 %6, 1, !dbg !346135     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !346135
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !346135

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !346135

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16, !dbg !346147 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !346147
  %wide.load67 = load <4 x i32>, ptr %i.bw, align 4, !dbg !346147
  %i.bx = add <4 x i32> %wide.load, %broadcast.splat, !dbg !346147
  %i.by = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !346147
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !dbg !346147
  store <4 x i32> %i.by, ptr %i.bw, align 4, !dbg !346147
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec, !dbg !346135
  br i1 %i.bz, label %middle.block, label %vector.body, !dbg !346135, !llvm.loop !346149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec, !dbg !346135
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !346135

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph, !dbg !346135

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !346150

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.ca, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !346151 ; 2 uses
  %i.cb = load i32, ptr %.sroa.05.043, align 4, !dbg !346147, !noundef !11
  %i.cc = add i32 %i.cb, %.sroa.0.045, !dbg !346147
  store i32 %i.cc, ptr %.sroa.05.043, align 4, !dbg !346147
  %i.cd = icmp eq ptr %i.ca, %i.bo, !dbg !346133
  br i1 %i.cd, label %._crit_edge, label %.lr.ph, !dbg !346135, !llvm.loop !346154

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !346155
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !346155, !noundef !11
  %i.cg = trunc i64 %i.cf to i32, !dbg !346159
  %i.ch = add i32 %.sroa.0.045, %i.cg, !dbg !346160
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !346034
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !346034

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !346161
  unreachable, !dbg !346161

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !346161
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10Int128TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !346162 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !346163
  %.val20 = load i64, ptr %i.e, align 8, !dbg !346163, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !346164, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !346164
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !346164, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !346166
  %i.h = load i64, ptr %i.g, align 8, !dbg !346166, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !346166
  %i.j = and i64 %i.i, -16, !dbg !346166
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !346166
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !346166
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !346164
  %i.n = load ptr, ptr %i.m, align 8, !dbg !346164, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !346170
  %i.p = icmp eq i64 %.val20, %i.o, !dbg !346171
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !346171

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val20, 0, !dbg !346173
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !346173

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !346174
  %.val21 = load i64, ptr %i.r, align 8, !dbg !346174, !noundef !11
  %i.s = icmp eq i64 %.val20, %.val21, !dbg !346175
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !346175

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346176), !dbg !346179
  %i.t = load ptr, ptr %i.c, align 8, !dbg !346180, !alias.scope !346176, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !346180
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !346180

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !346182, !noalias !346188
  %i.w = icmp eq i64 %i.v, 1, !dbg !346195
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !346195

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !346196
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !346198

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !346199
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes10Int128TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !346199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !346200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !346200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !346201
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !346201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !346201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !346202
  %i.y = load i64, ptr %i.d, align 8, !dbg !346203, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !346203 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !346208 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !346208, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !346209
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !346209
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !346209, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !346209
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !346209
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !346209, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !346210, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !346210 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !346213 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !346213, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !346213
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !346212, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !346212
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !346212
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !346212, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !346214
  %i.af = load i64, ptr %i.ae, align 8, !dbg !346214, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !346214
  %i.ah = and i64 %i.ag, -16, !dbg !346214
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !346214
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !346214
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !346212
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !346212, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !346218 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !346219
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !346224
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !346224, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !346224
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !346224, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !346225
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes10Int128TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10Int128TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !346232

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10Int128TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !346205 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !346205
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !346205 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !346205
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !346205 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !346205
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !346205 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !346235
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !346235

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10Int128TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !346235

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !346242 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !346244
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !346252, !noalias !346253, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !346256 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !346259, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !346263
  tail call void @llvm.assume(i1 %i.ay), !dbg !346265
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !346266, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !346266
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !346266, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @18, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !346270

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10Int128TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346271), !dbg !346179
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !346274, !alias.scope !346271, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !346274
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !346274

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !346276, !noalias !346282
  %i.bf = icmp eq i64 %i.be, 1, !dbg !346289
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !346289

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !346290
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !346292

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !346293, !range !12048, !alias.scope !346295, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !346293
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10Int128TypeEEEB1l_.exit, label %bb.l, !dbg !346293

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10Int128TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10Int128TypeEEEB1l_.exit unwind label %bb.t, !dbg !346293

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !346179
  %i.bj = load i64, ptr %i.d, align 8, !dbg !346298, !range !12048, !alias.scope !346300, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !346298
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10Int128TypeEEEB1l_.exit28, label %bb.n, !dbg !346298

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10Int128TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !346298
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10Int128TypeEEEB1l_.exit28, !dbg !346298

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10Int128TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !346179
  br label %bb.o, !dbg !346303

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10Int128TypeEEEB1l_.exit28
  ret void, !dbg !346303

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !346304, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !346311
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !346311, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !346316, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !346325
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !346334
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !346336

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !346343 ; 3 uses
  %3 = shl i64 %i.bl, 2, !dbg !346336
  %i.br = add i64 %3, -4, !dbg !346336
  %4 = shl nuw nsw i64 %i.ax, 2, !dbg !346336
  %5 = sub i64 %i.br, %4, !dbg !346336            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !346336
  %i.bs = add nuw nsw i64 %6, 1, !dbg !346336     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !346336
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !346336

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !346336

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16, !dbg !346348 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !346348
  %wide.load67 = load <4 x i32>, ptr %i.bw, align 4, !dbg !346348
  %i.bx = add <4 x i32> %wide.load, %broadcast.splat, !dbg !346348
  %i.by = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !346348
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !dbg !346348
  store <4 x i32> %i.by, ptr %i.bw, align 4, !dbg !346348
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec, !dbg !346336
  br i1 %i.bz, label %middle.block, label %vector.body, !dbg !346336, !llvm.loop !346350

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec, !dbg !346336
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !346336

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph, !dbg !346336

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !346351

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.ca, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !346352 ; 2 uses
  %i.cb = load i32, ptr %.sroa.05.043, align 4, !dbg !346348, !noundef !11
  %i.cc = add i32 %i.cb, %.sroa.0.045, !dbg !346348
  store i32 %i.cc, ptr %.sroa.05.043, align 4, !dbg !346348
  %i.cd = icmp eq ptr %i.ca, %i.bo, !dbg !346334
  br i1 %i.cd, label %._crit_edge, label %.lr.ph, !dbg !346336, !llvm.loop !346355

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !346356
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !346356, !noundef !11
  %i.cg = trunc i64 %i.cf to i32, !dbg !346360
  %i.ch = add i32 %.sroa.0.045, %i.cg, !dbg !346361
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !346235
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !346235

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !346362
  unreachable, !dbg !346362

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10Int128TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !346362
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10StringTypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !346363 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !346364
  %.val20 = load i64, ptr %i.e, align 8, !dbg !346364, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !346365, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !346365
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !346365, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !346367
  %i.h = load i64, ptr %i.g, align 8, !dbg !346367, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !346367
  %i.j = and i64 %i.i, -16, !dbg !346367
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !346367
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !346367
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !346365
  %i.n = load ptr, ptr %i.m, align 8, !dbg !346365, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !346371
  %i.p = icmp eq i64 %.val20, %i.o, !dbg !346372
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !346372

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val20, 0, !dbg !346374
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !346374

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !346375
  %.val21 = load i64, ptr %i.r, align 8, !dbg !346375, !noundef !11
  %i.s = icmp eq i64 %.val20, %.val21, !dbg !346376
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !346376

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346377), !dbg !346380
  %i.t = load ptr, ptr %i.c, align 8, !dbg !346381, !alias.scope !346377, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !346381
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !346381

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !346383, !noalias !346389
  %i.w = icmp eq i64 %i.v, 1, !dbg !346396
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !346396

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !346397
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !346399

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !346400
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes10StringTypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !346400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !346401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !346401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !346402
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !346402
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !346402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !346403
  %i.y = load i64, ptr %i.d, align 8, !dbg !346404, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !346404 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !346409 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !346409, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !346410
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !346410
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !346410, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !346410
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !346410
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !346410, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !346411, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !346411 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !346414 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !346414, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !346414
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !346413, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !346413
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !346413
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !346413, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !346415
  %i.af = load i64, ptr %i.ae, align 8, !dbg !346415, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !346415
  %i.ah = and i64 %i.ag, -16, !dbg !346415
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !346415
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !346415
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !346413
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !346413, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !346419 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !346420
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !346425
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !346425, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !346425
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !346425, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !346426
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes10StringTypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10StringTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !346433

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10StringTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !346406 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !346406
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !346406 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !346406
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !346406 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !346406
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !346406 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !346436
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !346436

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10StringTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !346436

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !346443 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !346445
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !346453, !noalias !346454, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !346457 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !346460, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !346464
  tail call void @llvm.assume(i1 %i.ay), !dbg !346466
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !346467, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !346467
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !346467, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @19, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !346471

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10StringTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346472), !dbg !346380
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !346475, !alias.scope !346472, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !346475
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !346475

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !346477, !noalias !346483
  %i.bf = icmp eq i64 %i.be, 1, !dbg !346490
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !346490

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !346491
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !346493

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !346494, !range !12048, !alias.scope !346496, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !346494
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StringTypeEEEB1l_.exit, label %bb.l, !dbg !346494

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10StringTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StringTypeEEEB1l_.exit unwind label %bb.t, !dbg !346494

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !346380
  %i.bj = load i64, ptr %i.d, align 8, !dbg !346499, !range !12048, !alias.scope !346501, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !346499
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StringTypeEEEB1l_.exit28, label %bb.n, !dbg !346499

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10StringTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !346499
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StringTypeEEEB1l_.exit28, !dbg !346499

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StringTypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !346380
  br label %bb.o, !dbg !346504

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StringTypeEEEB1l_.exit28
  ret void, !dbg !346504

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !346505, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !346512
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !346512, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !346517, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !346526
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !346535
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !346537

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !346544 ; 3 uses
  %3 = shl i64 %i.bl, 2, !dbg !346537
  %i.br = add i64 %3, -4, !dbg !346537
  %4 = shl nuw nsw i64 %i.ax, 2, !dbg !346537
  %5 = sub i64 %i.br, %4, !dbg !346537            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !346537
  %i.bs = add nuw nsw i64 %6, 1, !dbg !346537     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !346537
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !346537

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !346537

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16, !dbg !346549 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !346549
  %wide.load67 = load <4 x i32>, ptr %i.bw, align 4, !dbg !346549
  %i.bx = add <4 x i32> %wide.load, %broadcast.splat, !dbg !346549
  %i.by = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !346549
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !dbg !346549
  store <4 x i32> %i.by, ptr %i.bw, align 4, !dbg !346549
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec, !dbg !346537
  br i1 %i.bz, label %middle.block, label %vector.body, !dbg !346537, !llvm.loop !346551

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec, !dbg !346537
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !346537

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph, !dbg !346537

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !346552

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.ca, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !346553 ; 2 uses
  %i.cb = load i32, ptr %.sroa.05.043, align 4, !dbg !346549, !noundef !11
  %i.cc = add i32 %i.cb, %.sroa.0.045, !dbg !346549
  store i32 %i.cc, ptr %.sroa.05.043, align 4, !dbg !346549
  %i.cd = icmp eq ptr %i.ca, %i.bo, !dbg !346535
  br i1 %i.cd, label %._crit_edge, label %.lr.ph, !dbg !346537, !llvm.loop !346556

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !346557
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !346557, !noundef !11
  %i.cg = trunc i64 %i.cf to i32, !dbg !346561
  %i.ch = add i32 %.sroa.0.045, %i.cg, !dbg !346562
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !346436
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !346436

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !346563
  unreachable, !dbg !346563

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10StringTypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !346563
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10UInt16TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !346564 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !346565
  %.val21 = load i64, ptr %i.e, align 8, !dbg !346565, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !346566, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !346566
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !346566, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !346568
  %i.h = load i64, ptr %i.g, align 8, !dbg !346568, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !346568
  %i.j = and i64 %i.i, -16, !dbg !346568
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !346568
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !346568
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !346566
  %i.n = load ptr, ptr %i.m, align 8, !dbg !346566, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !346572
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !346573
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !346573

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !346575
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !346575

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !346576
  %.val20 = load i64, ptr %i.r, align 8, !dbg !346576, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !346577
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !346577

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346578), !dbg !346581
  %i.t = load ptr, ptr %i.c, align 8, !dbg !346582, !alias.scope !346578, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !346582
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !346582

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !346584, !noalias !346590
  %i.w = icmp eq i64 %i.v, 1, !dbg !346597
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !346597

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !346598
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !346600

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !346601
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes10UInt16TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !346601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !346602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !346602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !346603
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !346603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !346603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !346604
  %i.y = load i64, ptr %i.d, align 8, !dbg !346605, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !346605 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !346610 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !346610, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !346611
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !346611
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !346611, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !346611
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !346611
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !346611, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !346612, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !346612 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !346615 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !346615, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !346615
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !346614, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !346614
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !346614
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !346614, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !346616
  %i.af = load i64, ptr %i.ae, align 8, !dbg !346616, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !346616
  %i.ah = and i64 %i.ag, -16, !dbg !346616
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !346616
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !346616
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !346614
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !346614, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !346620 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !346621
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !346626
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !346626, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !346626
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !346626, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !346627
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes10UInt16TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !346634

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !346607 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !346607
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !346607 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !346607
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !346607 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !346607
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !346607 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !346637
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !346637

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !346637

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !346644 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !346646
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !346654, !noalias !346655, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !346658 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !346661, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !346665
  tail call void @llvm.assume(i1 %i.ay), !dbg !346667
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !346668, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !346668
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !346668, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @20, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !346672

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346673), !dbg !346581
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !346676, !alias.scope !346673, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !346676
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !346676

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !346678, !noalias !346684
  %i.bf = icmp eq i64 %i.be, 1, !dbg !346691
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !346691

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !346692
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !346694

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !346695, !range !12048, !alias.scope !346697, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !346695
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt16TypeEEEB1l_.exit, label %bb.l, !dbg !346695

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt16TypeEEEB1l_.exit unwind label %bb.t, !dbg !346695

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !346581
  %i.bj = load i64, ptr %i.d, align 8, !dbg !346700, !range !12048, !alias.scope !346702, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !346700
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt16TypeEEEB1l_.exit28, label %bb.n, !dbg !346700

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !346700
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt16TypeEEEB1l_.exit28, !dbg !346700

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt16TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !346581
  br label %bb.o, !dbg !346705

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt16TypeEEEB1l_.exit28
  ret void, !dbg !346705

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !346706, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !346713
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !346713, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !346718, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !346727
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !346736
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !346738

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !346745 ; 3 uses
  %3 = shl i64 %i.bl, 2, !dbg !346738
  %i.br = add i64 %3, -4, !dbg !346738
  %4 = shl nuw nsw i64 %i.ax, 2, !dbg !346738
  %5 = sub i64 %i.br, %4, !dbg !346738            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !346738
  %i.bs = add nuw nsw i64 %6, 1, !dbg !346738     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !346738
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !346738

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !346738

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16, !dbg !346750 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !346750
  %wide.load67 = load <4 x i32>, ptr %i.bw, align 4, !dbg !346750
  %i.bx = add <4 x i32> %wide.load, %broadcast.splat, !dbg !346750
  %i.by = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !346750
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !dbg !346750
  store <4 x i32> %i.by, ptr %i.bw, align 4, !dbg !346750
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec, !dbg !346738
  br i1 %i.bz, label %middle.block, label %vector.body, !dbg !346738, !llvm.loop !346752

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec, !dbg !346738
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !346738

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph, !dbg !346738

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !346753

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.ca, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !346754 ; 2 uses
  %i.cb = load i32, ptr %.sroa.05.043, align 4, !dbg !346750, !noundef !11
  %i.cc = add i32 %i.cb, %.sroa.0.045, !dbg !346750
  store i32 %i.cc, ptr %.sroa.05.043, align 4, !dbg !346750
  %i.cd = icmp eq ptr %i.ca, %i.bo, !dbg !346736
  br i1 %i.cd, label %._crit_edge, label %.lr.ph, !dbg !346738, !llvm.loop !346757

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !346758
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !346758, !noundef !11
  %i.cg = trunc i64 %i.cf to i32, !dbg !346762
  %i.ch = add i32 %.sroa.0.045, %i.cg, !dbg !346763
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !346637
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !346637

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !346764
  unreachable, !dbg !346764

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt16TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !346764
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10UInt32TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !346765 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !346766
  %.val21 = load i64, ptr %i.e, align 8, !dbg !346766, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !346767, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !346767
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !346767, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !346769
  %i.h = load i64, ptr %i.g, align 8, !dbg !346769, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !346769
  %i.j = and i64 %i.i, -16, !dbg !346769
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !346769
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !346769
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !346767
  %i.n = load ptr, ptr %i.m, align 8, !dbg !346767, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !346773
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !346774
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !346774

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !346776
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !346776

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !346777
  %.val20 = load i64, ptr %i.r, align 8, !dbg !346777, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !346778
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !346778

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346779), !dbg !346782
  %i.t = load ptr, ptr %i.c, align 8, !dbg !346783, !alias.scope !346779, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !346783
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !346783

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !346785, !noalias !346791
  %i.w = icmp eq i64 %i.v, 1, !dbg !346798
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !346798

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !346799
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !346801

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !346802
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes10UInt32TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !346802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !346803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !346803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !346804
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !346804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !346804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !346805
  %i.y = load i64, ptr %i.d, align 8, !dbg !346806, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !346806 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !346811 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !346811, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !346812
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !346812
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !346812, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !346812
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !346812
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !346812, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !346813, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !346813 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !346816 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !346816, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !346816
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !346815, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !346815
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !346815
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !346815, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !346817
  %i.af = load i64, ptr %i.ae, align 8, !dbg !346817, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !346817
  %i.ah = and i64 %i.ag, -16, !dbg !346817
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !346817
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !346817
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !346815
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !346815, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !346821 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !346822
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !346827
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !346827, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !346827
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !346827, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !346828
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes10UInt32TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !346835

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !346808 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !346808
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !346808 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !346808
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !346808 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !346808
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !346808 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !346838
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !346838

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !346838

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !346845 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !346847
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !346855, !noalias !346856, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !346859 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !346862, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !346866
  tail call void @llvm.assume(i1 %i.ay), !dbg !346868
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !346869, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !346869
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !346869, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @21, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !346873

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346874), !dbg !346782
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !346877, !alias.scope !346874, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !346877
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !346877

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !346879, !noalias !346885
  %i.bf = icmp eq i64 %i.be, 1, !dbg !346892
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !346892

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !346893
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !346895

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !346896, !range !12048, !alias.scope !346898, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !346896
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt32TypeEEEB1l_.exit, label %bb.l, !dbg !346896

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt32TypeEEEB1l_.exit unwind label %bb.t, !dbg !346896

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !346782
  %i.bj = load i64, ptr %i.d, align 8, !dbg !346901, !range !12048, !alias.scope !346903, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !346901
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt32TypeEEEB1l_.exit28, label %bb.n, !dbg !346901

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !346901
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt32TypeEEEB1l_.exit28, !dbg !346901

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt32TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !346782
  br label %bb.o, !dbg !346906

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt32TypeEEEB1l_.exit28
  ret void, !dbg !346906

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !346907, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !346914
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !346914, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !346919, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !346928
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !346937
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !346939

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !346946 ; 3 uses
  %3 = shl i64 %i.bl, 2, !dbg !346939
  %i.br = add i64 %3, -4, !dbg !346939
  %4 = shl nuw nsw i64 %i.ax, 2, !dbg !346939
  %5 = sub i64 %i.br, %4, !dbg !346939            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !346939
  %i.bs = add nuw nsw i64 %6, 1, !dbg !346939     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !346939
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !346939

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !346939

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16, !dbg !346951 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !346951
  %wide.load67 = load <4 x i32>, ptr %i.bw, align 4, !dbg !346951
  %i.bx = add <4 x i32> %wide.load, %broadcast.splat, !dbg !346951
  %i.by = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !346951
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !dbg !346951
  store <4 x i32> %i.by, ptr %i.bw, align 4, !dbg !346951
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec, !dbg !346939
  br i1 %i.bz, label %middle.block, label %vector.body, !dbg !346939, !llvm.loop !346953

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec, !dbg !346939
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !346939

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph, !dbg !346939

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !346954

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.ca, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !346955 ; 2 uses
  %i.cb = load i32, ptr %.sroa.05.043, align 4, !dbg !346951, !noundef !11
  %i.cc = add i32 %i.cb, %.sroa.0.045, !dbg !346951
  store i32 %i.cc, ptr %.sroa.05.043, align 4, !dbg !346951
  %i.cd = icmp eq ptr %i.ca, %i.bo, !dbg !346937
  br i1 %i.cd, label %._crit_edge, label %.lr.ph, !dbg !346939, !llvm.loop !346958

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !346959
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !346959, !noundef !11
  %i.cg = trunc i64 %i.cf to i32, !dbg !346963
  %i.ch = add i32 %.sroa.0.045, %i.cg, !dbg !346964
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !346838
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !346838

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !346965
  unreachable, !dbg !346965

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt32TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !346965
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes10UInt64TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !346966 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !346967
  %.val21 = load i64, ptr %i.e, align 8, !dbg !346967, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !346968, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !346968
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !346968, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !346970
  %i.h = load i64, ptr %i.g, align 8, !dbg !346970, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !346970
  %i.j = and i64 %i.i, -16, !dbg !346970
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !346970
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !346970
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !346968
  %i.n = load ptr, ptr %i.m, align 8, !dbg !346968, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !346974
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !346975
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !346975

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !346977
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !346977

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !346978
  %.val20 = load i64, ptr %i.r, align 8, !dbg !346978, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !346979
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !346979

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346980), !dbg !346983
  %i.t = load ptr, ptr %i.c, align 8, !dbg !346984, !alias.scope !346980, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !346984
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !346984

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !346986, !noalias !346992
  %i.w = icmp eq i64 %i.v, 1, !dbg !346999
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !346999

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !347000
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !347002

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !347003
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes10UInt64TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !347003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !347004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !347004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !347005
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !347005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !347005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !347006
  %i.y = load i64, ptr %i.d, align 8, !dbg !347007, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !347007 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !347012 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !347012, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !347013
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !347013
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !347013, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !347013
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !347013
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !347013, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !347014, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !347014 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !347017 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !347017, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !347017
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !347016, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !347016
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !347016
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !347016, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !347018
  %i.af = load i64, ptr %i.ae, align 8, !dbg !347018, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !347018
  %i.ah = and i64 %i.ag, -16, !dbg !347018
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !347018
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !347018
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !347016
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !347016, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !347022 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !347023
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !347028
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !347028, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !347028
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !347028, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !347029
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes10UInt64TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !347036

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !347009 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !347009
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !347009 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !347009
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !347009 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !347009
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !347009 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !347039
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !347039

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !347039

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !347046 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !347048
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !347056, !noalias !347057, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !347060 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !347063, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !347067
  tail call void @llvm.assume(i1 %i.ay), !dbg !347069
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !347070, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !347070
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !347070, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @24, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !347074

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes10UInt64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347075), !dbg !346983
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !347078, !alias.scope !347075, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !347078
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !347078

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !347080, !noalias !347086
  %i.bf = icmp eq i64 %i.be, 1, !dbg !347093
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !347093

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !347094
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !347096

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !347097, !range !12048, !alias.scope !347099, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !347097
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt64TypeEEEB1l_.exit, label %bb.l, !dbg !347097

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt64TypeEEEB1l_.exit unwind label %bb.t, !dbg !347097

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !346983
  %i.bj = load i64, ptr %i.d, align 8, !dbg !347102, !range !12048, !alias.scope !347104, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !347102
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt64TypeEEEB1l_.exit28, label %bb.n, !dbg !347102

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !347102
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt64TypeEEEB1l_.exit28, !dbg !347102

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt64TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !346983
  br label %bb.o, !dbg !347107

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt64TypeEEEB1l_.exit28
  ret void, !dbg !347107

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !347108, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !347115
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !347115, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !347120, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !347129
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !347138
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !347140

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !347147 ; 3 uses
  %3 = shl i64 %i.bl, 2, !dbg !347140
  %i.br = add i64 %3, -4, !dbg !347140
  %4 = shl nuw nsw i64 %i.ax, 2, !dbg !347140
  %5 = sub i64 %i.br, %4, !dbg !347140            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !347140
  %i.bs = add nuw nsw i64 %6, 1, !dbg !347140     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !347140
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !347140

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !347140

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16, !dbg !347152 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !347152
  %wide.load67 = load <4 x i32>, ptr %i.bw, align 4, !dbg !347152
  %i.bx = add <4 x i32> %wide.load, %broadcast.splat, !dbg !347152
  %i.by = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !347152
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !dbg !347152
  store <4 x i32> %i.by, ptr %i.bw, align 4, !dbg !347152
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec, !dbg !347140
  br i1 %i.bz, label %middle.block, label %vector.body, !dbg !347140, !llvm.loop !347154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec, !dbg !347140
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !347140

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph, !dbg !347140

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !347155

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.ca, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !347156 ; 2 uses
  %i.cb = load i32, ptr %.sroa.05.043, align 4, !dbg !347152, !noundef !11
  %i.cc = add i32 %i.cb, %.sroa.0.045, !dbg !347152
  store i32 %i.cc, ptr %.sroa.05.043, align 4, !dbg !347152
  %i.cd = icmp eq ptr %i.ca, %i.bo, !dbg !347138
  br i1 %i.cd, label %._crit_edge, label %.lr.ph, !dbg !347140, !llvm.loop !347159

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !347160
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !347160, !noundef !11
  %i.cg = trunc i64 %i.cf to i32, !dbg !347164
  %i.ch = add i32 %.sroa.0.045, %i.cg, !dbg !347165
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !347039
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !347039

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !347166
  unreachable, !dbg !347166

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes10UInt64TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !347166
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes11BooleanTypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !347167 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !347168
  %.val21 = load i64, ptr %i.e, align 8, !dbg !347168, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !347169, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !347169
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !347169, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !347171
  %i.h = load i64, ptr %i.g, align 8, !dbg !347171, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !347171
  %i.j = and i64 %i.i, -16, !dbg !347171
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !347171
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !347171
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !347169
  %i.n = load ptr, ptr %i.m, align 8, !dbg !347169, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !347175
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !347176
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !347176

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !347178
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !347178

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !347179
  %.val20 = load i64, ptr %i.r, align 8, !dbg !347179, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !347180
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !347180

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347181), !dbg !347184
  %i.t = load ptr, ptr %i.c, align 8, !dbg !347185, !alias.scope !347181, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !347185
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !347185

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !347187, !noalias !347193
  %i.w = icmp eq i64 %i.v, 1, !dbg !347200
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !347200

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !347201
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !347203

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !347204
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes11BooleanTypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !347204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !347205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !347205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !347206
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !347206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !347206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !347207
  %i.y = load i64, ptr %i.d, align 8, !dbg !347208, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !347208 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !347213 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !347213, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !347214
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !347214
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !347214, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !347214
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !347214
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !347214, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !347215, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !347215 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !347218 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !347218, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !347218
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !347217, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !347217
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !347217
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !347217, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !347219
  %i.af = load i64, ptr %i.ae, align 8, !dbg !347219, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !347219
  %i.ah = and i64 %i.ag, -16, !dbg !347219
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !347219
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !347219
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !347217
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !347217, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !347223 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !347224
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !347229
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !347229, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !347229
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !347229, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !347230
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes11BooleanTypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11BooleanTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !347237

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11BooleanTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !347210 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !347210
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !347210 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !347210
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !347210 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !347210
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !347210 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !347240
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !347240

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11BooleanTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !347240

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !347247 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !347249
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !347257, !noalias !347258, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !347261 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !347264, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !347268
  tail call void @llvm.assume(i1 %i.ay), !dbg !347270
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !347271, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !347271
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !347271, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @25, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !347275

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11BooleanTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347276), !dbg !347184
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !347279, !alias.scope !347276, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !347279
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !347279

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !347281, !noalias !347287
  %i.bf = icmp eq i64 %i.be, 1, !dbg !347294
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !347294

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !347295
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !347297

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !347298, !range !12048, !alias.scope !347300, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !347298
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11BooleanTypeEEEB1l_.exit, label %bb.l, !dbg !347298

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11BooleanTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11BooleanTypeEEEB1l_.exit unwind label %bb.t, !dbg !347298

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !347184
  %i.bj = load i64, ptr %i.d, align 8, !dbg !347303, !range !12048, !alias.scope !347305, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !347303
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11BooleanTypeEEEB1l_.exit28, label %bb.n, !dbg !347303

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11BooleanTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !347303
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11BooleanTypeEEEB1l_.exit28, !dbg !347303

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11BooleanTypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !347184
  br label %bb.o, !dbg !347308

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11BooleanTypeEEEB1l_.exit28
  ret void, !dbg !347308

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !347309, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !347316
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !347316, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !347321, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !347330
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !347339
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !347341

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !347348 ; 3 uses
  %3 = shl i64 %i.bl, 2, !dbg !347341
  %i.br = add i64 %3, -4, !dbg !347341
  %4 = shl nuw nsw i64 %i.ax, 2, !dbg !347341
  %5 = sub i64 %i.br, %4, !dbg !347341            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !347341
  %i.bs = add nuw nsw i64 %6, 1, !dbg !347341     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !347341
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !347341

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !347341

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16, !dbg !347353 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !347353
  %wide.load67 = load <4 x i32>, ptr %i.bw, align 4, !dbg !347353
  %i.bx = add <4 x i32> %wide.load, %broadcast.splat, !dbg !347353
  %i.by = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !347353
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !dbg !347353
  store <4 x i32> %i.by, ptr %i.bw, align 4, !dbg !347353
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec, !dbg !347341
  br i1 %i.bz, label %middle.block, label %vector.body, !dbg !347341, !llvm.loop !347355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec, !dbg !347341
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !347341

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph, !dbg !347341

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !347356

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.ca, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !347357 ; 2 uses
  %i.cb = load i32, ptr %.sroa.05.043, align 4, !dbg !347353, !noundef !11
  %i.cc = add i32 %i.cb, %.sroa.0.045, !dbg !347353
  store i32 %i.cc, ptr %.sroa.05.043, align 4, !dbg !347353
  %i.cd = icmp eq ptr %i.ca, %i.bo, !dbg !347339
  br i1 %i.cd, label %._crit_edge, label %.lr.ph, !dbg !347341, !llvm.loop !347360

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !347361
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !347361, !noundef !11
  %i.cg = trunc i64 %i.cf to i32, !dbg !347365
  %i.ch = add i32 %.sroa.0.045, %i.cg, !dbg !347366
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !347240
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !347240

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !347367
  unreachable, !dbg !347367

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11BooleanTypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !347367
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes11Float16TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !347368 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !347369
  %.val19 = load i64, ptr %i.e, align 8, !dbg !347369, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !347370, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !347370
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !347370, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !347372
  %i.h = load i64, ptr %i.g, align 8, !dbg !347372, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !347372
  %i.j = and i64 %i.i, -16, !dbg !347372
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !347372
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !347372
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !347370
  %i.n = load ptr, ptr %i.m, align 8, !dbg !347370, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !347376
  %i.p = icmp eq i64 %.val19, %i.o, !dbg !347377
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !347377

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val19, 0, !dbg !347379
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !347379

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !347380
  %.val20 = load i64, ptr %i.r, align 8, !dbg !347380, !noundef !11
  %i.s = icmp eq i64 %.val19, %.val20, !dbg !347381
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !347381

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347382), !dbg !347385
  %i.t = load ptr, ptr %i.c, align 8, !dbg !347386, !alias.scope !347382, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !347386
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !347386

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !347388, !noalias !347394
  %i.w = icmp eq i64 %i.v, 1, !dbg !347401
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !347401

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !347402
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !347404

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !347405
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes11Float16TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !347405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !347406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !347406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !347407
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !347407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !347407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !347408
  %i.y = load i64, ptr %i.d, align 8, !dbg !347409, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !347409 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !347414 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !347414, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !347415
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !347415
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !347415, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !347415
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !347415
  %.sroa.07.0.val21 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !347415, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !347416, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !347416 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !347419 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !347419, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !347419
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !347418, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !347418
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !347418
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !347418, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !347420
  %i.af = load i64, ptr %i.ae, align 8, !dbg !347420, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !347420
  %i.ah = and i64 %i.ag, -16, !dbg !347420
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !347420
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !347420
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !347418
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !347418, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !347424 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val21, !dbg !347425
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !347430
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !347430, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !347430
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !347430, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !347431
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes11Float16TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !347438

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !347411 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !347411
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !347411 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !347411
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !347411 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !347411
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !347411 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !347441
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !347441

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !347441

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !347448 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !347450
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !347458, !noalias !347459, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !347462 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !347465, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !347469
  tail call void @llvm.assume(i1 %i.ay), !dbg !347471
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !347472, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !347472
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !347472, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @26, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !347476

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347477), !dbg !347385
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !347480, !alias.scope !347477, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !347480
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !347480

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !347482, !noalias !347488
  %i.bf = icmp eq i64 %i.be, 1, !dbg !347495
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !347495

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !347496
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !347498

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !347499, !range !12048, !alias.scope !347501, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !347499
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float16TypeEEEB1l_.exit, label %bb.l, !dbg !347499

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float16TypeEEEB1l_.exit unwind label %bb.t, !dbg !347499

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !347385
  %i.bj = load i64, ptr %i.d, align 8, !dbg !347504, !range !12048, !alias.scope !347506, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !347504
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float16TypeEEEB1l_.exit28, label %bb.n, !dbg !347504

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !347504
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float16TypeEEEB1l_.exit28, !dbg !347504

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float16TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !347385
  br label %bb.o, !dbg !347509

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float16TypeEEEB1l_.exit28
  ret void, !dbg !347509

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !347510, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !347517
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !347517, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !347522, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !347531
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !347540
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !347542

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !347549 ; 3 uses
  %3 = shl i64 %i.bl, 2, !dbg !347542
  %i.br = add i64 %3, -4, !dbg !347542
  %4 = shl nuw nsw i64 %i.ax, 2, !dbg !347542
  %5 = sub i64 %i.br, %4, !dbg !347542            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !347542
  %i.bs = add nuw nsw i64 %6, 1, !dbg !347542     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !347542
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !347542

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !347542

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16, !dbg !347554 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !347554
  %wide.load67 = load <4 x i32>, ptr %i.bw, align 4, !dbg !347554
  %i.bx = add <4 x i32> %wide.load, %broadcast.splat, !dbg !347554
  %i.by = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !347554
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !dbg !347554
  store <4 x i32> %i.by, ptr %i.bw, align 4, !dbg !347554
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec, !dbg !347542
  br i1 %i.bz, label %middle.block, label %vector.body, !dbg !347542, !llvm.loop !347556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec, !dbg !347542
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !347542

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph, !dbg !347542

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !347557

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.ca, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !347558 ; 2 uses
  %i.cb = load i32, ptr %.sroa.05.043, align 4, !dbg !347554, !noundef !11
  %i.cc = add i32 %i.cb, %.sroa.0.045, !dbg !347554
  store i32 %i.cc, ptr %.sroa.05.043, align 4, !dbg !347554
  %i.cd = icmp eq ptr %i.ca, %i.bo, !dbg !347540
  br i1 %i.cd, label %._crit_edge, label %.lr.ph, !dbg !347542, !llvm.loop !347561

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !347562
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !347562, !noundef !11
  %i.cg = trunc i64 %i.cf to i32, !dbg !347566
  %i.ch = add i32 %.sroa.0.045, %i.cg, !dbg !347567
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !347441
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !347441

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !347568
  unreachable, !dbg !347568

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float16TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !347568
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes11Float32TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !347569 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !347570
  %.val19 = load i64, ptr %i.e, align 8, !dbg !347570, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !347571, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !347571
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !347571, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !347573
  %i.h = load i64, ptr %i.g, align 8, !dbg !347573, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !347573
  %i.j = and i64 %i.i, -16, !dbg !347573
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !347573
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !347573
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !347571
  %i.n = load ptr, ptr %i.m, align 8, !dbg !347571, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !347577
  %i.p = icmp eq i64 %.val19, %i.o, !dbg !347578
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !347578

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val19, 0, !dbg !347580
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !347580

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !347581
  %.val20 = load i64, ptr %i.r, align 8, !dbg !347581, !noundef !11
  %i.s = icmp eq i64 %.val19, %.val20, !dbg !347582
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !347582

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347583), !dbg !347586
  %i.t = load ptr, ptr %i.c, align 8, !dbg !347587, !alias.scope !347583, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !347587
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !347587

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !347589, !noalias !347595
  %i.w = icmp eq i64 %i.v, 1, !dbg !347602
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !347602

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !347603
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !347605

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !347606
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes11Float32TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !347606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !347607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !347607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !347608
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !347608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !347608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !347609
  %i.y = load i64, ptr %i.d, align 8, !dbg !347610, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !347610 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !347615 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !347615, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !347616
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !347616
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !347616, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !347616
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !347616
  %.sroa.07.0.val21 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !347616, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !347617, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !347617 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !347620 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !347620, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !347620
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !347619, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !347619
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !347619
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !347619, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !347621
  %i.af = load i64, ptr %i.ae, align 8, !dbg !347621, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !347621
  %i.ah = and i64 %i.ag, -16, !dbg !347621
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !347621
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !347621
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !347619
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !347619, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !347625 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val21, !dbg !347626
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !347631
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !347631, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !347631
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !347631, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !347632
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes11Float32TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !347639

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !347612 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !347612
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !347612 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !347612
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !347612 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !347612
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !347612 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !347642
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !347642

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !347642

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !347649 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !347651
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !347659, !noalias !347660, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !347663 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !347666, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !347670
  tail call void @llvm.assume(i1 %i.ay), !dbg !347672
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !347673, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !347673
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !347673, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @27, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !347677

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347678), !dbg !347586
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !347681, !alias.scope !347678, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !347681
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !347681

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !347683, !noalias !347689
  %i.bf = icmp eq i64 %i.be, 1, !dbg !347696
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !347696

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !347697
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !347699

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !347700, !range !12048, !alias.scope !347702, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !347700
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float32TypeEEEB1l_.exit, label %bb.l, !dbg !347700

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float32TypeEEEB1l_.exit unwind label %bb.t, !dbg !347700

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !347586
  %i.bj = load i64, ptr %i.d, align 8, !dbg !347705, !range !12048, !alias.scope !347707, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !347705
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float32TypeEEEB1l_.exit28, label %bb.n, !dbg !347705

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !347705
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float32TypeEEEB1l_.exit28, !dbg !347705

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float32TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !347586
  br label %bb.o, !dbg !347710

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float32TypeEEEB1l_.exit28
  ret void, !dbg !347710

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !347711, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !347718
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !347718, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !347723, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !347732
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !347741
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !347743

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !347750 ; 3 uses
  %3 = shl i64 %i.bl, 2, !dbg !347743
  %i.br = add i64 %3, -4, !dbg !347743
  %4 = shl nuw nsw i64 %i.ax, 2, !dbg !347743
  %5 = sub i64 %i.br, %4, !dbg !347743            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !347743
  %i.bs = add nuw nsw i64 %6, 1, !dbg !347743     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !347743
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !347743

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !347743

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16, !dbg !347755 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !347755
  %wide.load67 = load <4 x i32>, ptr %i.bw, align 4, !dbg !347755
  %i.bx = add <4 x i32> %wide.load, %broadcast.splat, !dbg !347755
  %i.by = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !347755
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !dbg !347755
  store <4 x i32> %i.by, ptr %i.bw, align 4, !dbg !347755
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec, !dbg !347743
  br i1 %i.bz, label %middle.block, label %vector.body, !dbg !347743, !llvm.loop !347757

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec, !dbg !347743
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !347743

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph, !dbg !347743

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !347758

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.ca, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !347759 ; 2 uses
  %i.cb = load i32, ptr %.sroa.05.043, align 4, !dbg !347755, !noundef !11
  %i.cc = add i32 %i.cb, %.sroa.0.045, !dbg !347755
  store i32 %i.cc, ptr %.sroa.05.043, align 4, !dbg !347755
  %i.cd = icmp eq ptr %i.ca, %i.bo, !dbg !347741
  br i1 %i.cd, label %._crit_edge, label %.lr.ph, !dbg !347743, !llvm.loop !347762

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !347763
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !347763, !noundef !11
  %i.cg = trunc i64 %i.cf to i32, !dbg !347767
  %i.ch = add i32 %.sroa.0.045, %i.cg, !dbg !347768
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !347642
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !347642

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !347769
  unreachable, !dbg !347769

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float32TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !347769
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes11Float64TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !347770 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !347771
  %.val19 = load i64, ptr %i.e, align 8, !dbg !347771, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !347772, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !347772
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !347772, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !347774
  %i.h = load i64, ptr %i.g, align 8, !dbg !347774, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !347774
  %i.j = and i64 %i.i, -16, !dbg !347774
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !347774
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !347774
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !347772
  %i.n = load ptr, ptr %i.m, align 8, !dbg !347772, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !347778
  %i.p = icmp eq i64 %.val19, %i.o, !dbg !347779
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !347779

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val19, 0, !dbg !347781
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !347781

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !347782
  %.val20 = load i64, ptr %i.r, align 8, !dbg !347782, !noundef !11
  %i.s = icmp eq i64 %.val19, %.val20, !dbg !347783
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !347783

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347784), !dbg !347787
  %i.t = load ptr, ptr %i.c, align 8, !dbg !347788, !alias.scope !347784, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !347788
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !347788

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !347790, !noalias !347796
  %i.w = icmp eq i64 %i.v, 1, !dbg !347803
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !347803

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !347804
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !347806

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !347807
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes11Float64TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !347807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !347808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !347808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !347809
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !347809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !347809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !347810
  %i.y = load i64, ptr %i.d, align 8, !dbg !347811, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !347811 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !347816 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !347816, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !347817
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !347817
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !347817, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !347817
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !347817
  %.sroa.07.0.val21 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !347817, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !347818, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !347818 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !347821 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !347821, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !347821
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !347820, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !347820
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !347820
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !347820, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !347822
  %i.af = load i64, ptr %i.ae, align 8, !dbg !347822, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !347822
  %i.ah = and i64 %i.ag, -16, !dbg !347822
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !347822
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !347822
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !347820
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !347820, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !347826 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val21, !dbg !347827
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !347832
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !347832, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !347832
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !347832, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !347833
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes11Float64TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !347840

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !347813 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !347813
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !347813 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !347813
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !347813 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !347813
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !347813 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !347843
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !347843

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !347843

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !347850 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !347852
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !347860, !noalias !347861, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !347864 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !347867, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !347871
  tail call void @llvm.assume(i1 %i.ay), !dbg !347873
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !347874, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !347874
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !347874, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @28, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !347878

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11Float64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347879), !dbg !347787
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !347882, !alias.scope !347879, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !347882
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !347882

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !347884, !noalias !347890
  %i.bf = icmp eq i64 %i.be, 1, !dbg !347897
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !347897

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !347898
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !347900

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !347901, !range !12048, !alias.scope !347903, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !347901
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float64TypeEEEB1l_.exit, label %bb.l, !dbg !347901

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float64TypeEEEB1l_.exit unwind label %bb.t, !dbg !347901

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !347787
  %i.bj = load i64, ptr %i.d, align 8, !dbg !347906, !range !12048, !alias.scope !347908, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !347906
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float64TypeEEEB1l_.exit28, label %bb.n, !dbg !347906

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !347906
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float64TypeEEEB1l_.exit28, !dbg !347906

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float64TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !347787
  br label %bb.o, !dbg !347911

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float64TypeEEEB1l_.exit28
  ret void, !dbg !347911

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !347912, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !347919
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !347919, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !347924, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !347933
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !347942
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !347944

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !347951 ; 3 uses
  %3 = shl i64 %i.bl, 2, !dbg !347944
  %i.br = add i64 %3, -4, !dbg !347944
  %4 = shl nuw nsw i64 %i.ax, 2, !dbg !347944
  %5 = sub i64 %i.br, %4, !dbg !347944            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !347944
  %i.bs = add nuw nsw i64 %6, 1, !dbg !347944     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !347944
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !347944

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !347944

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16, !dbg !347956 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !347956
  %wide.load67 = load <4 x i32>, ptr %i.bw, align 4, !dbg !347956
  %i.bx = add <4 x i32> %wide.load, %broadcast.splat, !dbg !347956
  %i.by = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !347956
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !dbg !347956
  store <4 x i32> %i.by, ptr %i.bw, align 4, !dbg !347956
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec, !dbg !347944
  br i1 %i.bz, label %middle.block, label %vector.body, !dbg !347944, !llvm.loop !347958

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec, !dbg !347944
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !347944

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph, !dbg !347944

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !347959

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.ca, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !347960 ; 2 uses
  %i.cb = load i32, ptr %.sroa.05.043, align 4, !dbg !347956, !noundef !11
  %i.cc = add i32 %i.cb, %.sroa.0.045, !dbg !347956
  store i32 %i.cc, ptr %.sroa.05.043, align 4, !dbg !347956
  %i.cd = icmp eq ptr %i.ca, %i.bo, !dbg !347942
  br i1 %i.cd, label %._crit_edge, label %.lr.ph, !dbg !347944, !llvm.loop !347963

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !347964
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !347964, !noundef !11
  %i.cg = trunc i64 %i.cf to i32, !dbg !347968
  %i.ch = add i32 %.sroa.0.045, %i.cg, !dbg !347969
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !347843
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !347843

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !347970
  unreachable, !dbg !347970

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11Float64TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !347970
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes11UInt128TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !347971 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !347972
  %.val21 = load i64, ptr %i.e, align 8, !dbg !347972, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !347973, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !347973
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !347973, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !347975
  %i.h = load i64, ptr %i.g, align 8, !dbg !347975, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !347975
  %i.j = and i64 %i.i, -16, !dbg !347975
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !347975
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !347975
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !347973
  %i.n = load ptr, ptr %i.m, align 8, !dbg !347973, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !347979
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !347980
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !347980

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !347982
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !347982

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !347983
  %.val20 = load i64, ptr %i.r, align 8, !dbg !347983, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !347984
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !347984

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347985), !dbg !347988
  %i.t = load ptr, ptr %i.c, align 8, !dbg !347989, !alias.scope !347985, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !347989
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !347989

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !347991, !noalias !347997
  %i.w = icmp eq i64 %i.v, 1, !dbg !348004
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !348004

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !348005
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !348007

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !348008
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes11UInt128TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !348008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !348009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !348009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !348010
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !348010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !348010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !348011
  %i.y = load i64, ptr %i.d, align 8, !dbg !348012, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !348012 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !348017 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !348017, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !348018
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !348018
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !348018, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !348018
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !348018
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !348018, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !348019, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !348019 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !348022 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !348022, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !348022
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !348021, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !348021
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !348021
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !348021, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !348023
  %i.af = load i64, ptr %i.ae, align 8, !dbg !348023, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !348023
  %i.ah = and i64 %i.ag, -16, !dbg !348023
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !348023
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !348023
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !348021
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !348021, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !348027 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !348028
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !348033
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !348033, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !348033
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !348033, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !348034
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes11UInt128TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11UInt128TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !348041

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11UInt128TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !348014 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !348014
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !348014 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !348014
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !348014 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !348014
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !348014 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !348044
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !348044

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11UInt128TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !348044

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !348051 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !348053
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !348061, !noalias !348062, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !348065 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !348068, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !348072
  tail call void @llvm.assume(i1 %i.ay), !dbg !348074
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !348075, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !348075
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !348075, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @29, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !348079

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes11UInt128TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348080), !dbg !347988
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !348083, !alias.scope !348080, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !348083
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !348083

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !348085, !noalias !348091
  %i.bf = icmp eq i64 %i.be, 1, !dbg !348098
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !348098

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !348099
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !348101

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !348102, !range !12048, !alias.scope !348104, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !348102
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11UInt128TypeEEEB1l_.exit, label %bb.l, !dbg !348102

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11UInt128TypeEEEB1l_.exit unwind label %bb.t, !dbg !348102

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !347988
  %i.bj = load i64, ptr %i.d, align 8, !dbg !348107, !range !12048, !alias.scope !348109, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !348107
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11UInt128TypeEEEB1l_.exit28, label %bb.n, !dbg !348107

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !348107
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11UInt128TypeEEEB1l_.exit28, !dbg !348107

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11UInt128TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !347988
  br label %bb.o, !dbg !348112

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11UInt128TypeEEEB1l_.exit28
  ret void, !dbg !348112

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !348113, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !348120
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !348120, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !348125, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !348134
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !348143
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !348145

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !348152 ; 3 uses
  %3 = shl i64 %i.bl, 2, !dbg !348145
  %i.br = add i64 %3, -4, !dbg !348145
  %4 = shl nuw nsw i64 %i.ax, 2, !dbg !348145
  %5 = sub i64 %i.br, %4, !dbg !348145            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !348145
  %i.bs = add nuw nsw i64 %6, 1, !dbg !348145     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !348145
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !348145

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !348145

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16, !dbg !348157 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !348157
  %wide.load67 = load <4 x i32>, ptr %i.bw, align 4, !dbg !348157
  %i.bx = add <4 x i32> %wide.load, %broadcast.splat, !dbg !348157
  %i.by = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !348157
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !dbg !348157
  store <4 x i32> %i.by, ptr %i.bw, align 4, !dbg !348157
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec, !dbg !348145
  br i1 %i.bz, label %middle.block, label %vector.body, !dbg !348145, !llvm.loop !348159

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec, !dbg !348145
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !348145

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph, !dbg !348145

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !348160

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.ca, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !348161 ; 2 uses
  %i.cb = load i32, ptr %.sroa.05.043, align 4, !dbg !348157, !noundef !11
  %i.cc = add i32 %i.cb, %.sroa.0.045, !dbg !348157
  store i32 %i.cc, ptr %.sroa.05.043, align 4, !dbg !348157
  %i.cd = icmp eq ptr %i.ca, %i.bo, !dbg !348143
  br i1 %i.cd, label %._crit_edge, label %.lr.ph, !dbg !348145, !llvm.loop !348164

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !348165
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !348165, !noundef !11
  %i.cg = trunc i64 %i.cf to i32, !dbg !348169
  %i.ch = add i32 %.sroa.0.045, %i.cg, !dbg !348170
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !348044
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !348044

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !348171
  unreachable, !dbg !348171

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes11UInt128TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !348171
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes16BinaryOffsetTypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !348172 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !348173
  %.val21 = load i64, ptr %i.e, align 8, !dbg !348173, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !348174, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !348174
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !348174, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !348176
  %i.h = load i64, ptr %i.g, align 8, !dbg !348176, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !348176
  %i.j = and i64 %i.i, -16, !dbg !348176
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !348176
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !348176
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !348174
  %i.n = load ptr, ptr %i.m, align 8, !dbg !348174, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !348180
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !348181
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !348181

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !348183
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !348183

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !348184
  %.val19 = load i64, ptr %i.r, align 8, !dbg !348184, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val19, !dbg !348185
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !348185

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348186), !dbg !348189
  %i.t = load ptr, ptr %i.c, align 8, !dbg !348190, !alias.scope !348186, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !348190
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !348190

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !348192, !noalias !348198
  %i.w = icmp eq i64 %i.v, 1, !dbg !348205
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !348205

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !348206
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !348208

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !348209
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes16BinaryOffsetTypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !348209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !348210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !348210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !348211
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !348211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !348211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !348212
  %i.y = load i64, ptr %i.d, align 8, !dbg !348213, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !348213 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !348218 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !348218, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !348219
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !348219
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !348219, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !348219
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !348219
  %.sroa.07.0.val20 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !348219, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !348220, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !348220 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !348223 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !348223, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !348223
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !348222, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !348222
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !348222
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !348222, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !348224
  %i.af = load i64, ptr %i.ae, align 8, !dbg !348224, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !348224
  %i.ah = and i64 %i.ag, -16, !dbg !348224
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !348224
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !348224
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !348222
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !348222, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !348228 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val20, !dbg !348229
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !348234
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !348234, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !348234
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !348234, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !348235
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes16BinaryOffsetTypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes16BinaryOffsetTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !348242

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes16BinaryOffsetTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !348215 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !348215
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !348215 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !348215
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !348215 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !348215
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !348215 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !348245
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !348245

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes16BinaryOffsetTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !348245

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ci, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !348252 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !348254
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !348262, !noalias !348263, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !348266 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !348269, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !348273
  tail call void @llvm.assume(i1 %i.ay), !dbg !348275
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !348276, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !348276
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !348276, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @30, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !348280

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes16BinaryOffsetTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348281), !dbg !348189
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !348284, !alias.scope !348281, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !348284
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !348284

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !348286, !noalias !348292
  %i.bf = icmp eq i64 %i.be, 1, !dbg !348299
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !348299

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !348300
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !348302

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !348303, !range !12048, !alias.scope !348305, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !348303
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes16BinaryOffsetTypeEEEB1l_.exit, label %bb.l, !dbg !348303

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes16BinaryOffsetTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes16BinaryOffsetTypeEEEB1l_.exit unwind label %bb.t, !dbg !348303

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !348189
  %i.bj = load i64, ptr %i.d, align 8, !dbg !348308, !range !12048, !alias.scope !348310, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !348308
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes16BinaryOffsetTypeEEEB1l_.exit28, label %bb.n, !dbg !348308

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes16BinaryOffsetTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !348308
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes16BinaryOffsetTypeEEEB1l_.exit28, !dbg !348308

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes16BinaryOffsetTypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !348189
  br label %bb.o, !dbg !348313

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes16BinaryOffsetTypeEEEB1l_.exit28
  ret void, !dbg !348313

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !348314, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !348321
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !348321, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !348326, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !348335
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !348344
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !348346

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !348353 ; 3 uses
  %3 = shl i64 %i.bl, 2, !dbg !348346
  %i.br = add i64 %3, -4, !dbg !348346
  %4 = shl nuw nsw i64 %i.ax, 2, !dbg !348346
  %5 = sub i64 %i.br, %4, !dbg !348346            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !348346
  %i.bs = add nuw nsw i64 %6, 1, !dbg !348346     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !348346
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !348346

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !348346

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16, !dbg !348358 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !348358
  %wide.load67 = load <4 x i32>, ptr %i.bw, align 4, !dbg !348358
  %i.bx = add <4 x i32> %wide.load, %broadcast.splat, !dbg !348358
  %i.by = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !348358
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !dbg !348358
  store <4 x i32> %i.by, ptr %i.bw, align 4, !dbg !348358
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec, !dbg !348346
  br i1 %i.bz, label %middle.block, label %vector.body, !dbg !348346, !llvm.loop !348360

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec, !dbg !348346
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !348346

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph, !dbg !348346

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !348361

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.ca, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !348362 ; 2 uses
  %i.cb = load i32, ptr %.sroa.05.043, align 4, !dbg !348358, !noundef !11
  %i.cc = add i32 %i.cb, %.sroa.0.045, !dbg !348358
  store i32 %i.cc, ptr %.sroa.05.043, align 4, !dbg !348358
  %i.cd = icmp eq ptr %i.ca, %i.bo, !dbg !348344
  br i1 %i.cd, label %._crit_edge, label %.lr.ph, !dbg !348346, !llvm.loop !348365

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !348366
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !348366, !noundef !11
  %i.cg = trunc i64 %i.cf to i32, !dbg !348371
  %i.ch = add i32 %.sroa.0.045, -1, !dbg !348371
  %i.ci = add i32 %i.ch, %i.cg, !dbg !348372
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !348245
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !348245

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !348373
  unreachable, !dbg !348373

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes16BinaryOffsetTypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !348373
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes8Int8TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !348374 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !348375
  %.val21 = load i64, ptr %i.e, align 8, !dbg !348375, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !348376, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !348376
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !348376, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !348378
  %i.h = load i64, ptr %i.g, align 8, !dbg !348378, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !348378
  %i.j = and i64 %i.i, -16, !dbg !348378
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !348378
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !348378
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !348376
  %i.n = load ptr, ptr %i.m, align 8, !dbg !348376, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !348382
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !348383
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !348383

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !348385
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !348385

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !348386
  %.val20 = load i64, ptr %i.r, align 8, !dbg !348386, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !348387
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !348387

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348388), !dbg !348391
  %i.t = load ptr, ptr %i.c, align 8, !dbg !348392, !alias.scope !348388, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !348392
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !348392

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !348394, !noalias !348400
  %i.w = icmp eq i64 %i.v, 1, !dbg !348407
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !348407

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !348408
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !348410

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !348411
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes8Int8TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !348411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !348412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !348412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !348413
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !348413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !348413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !348414
  %i.y = load i64, ptr %i.d, align 8, !dbg !348415, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !348415 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !348420 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !348420, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !348421
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !348421
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !348421, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !348421
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !348421
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !348421, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !348422, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !348422 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !348425 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !348425, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !348425
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !348424, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !348424
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !348424
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !348424, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !348426
  %i.af = load i64, ptr %i.ae, align 8, !dbg !348426, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !348426
  %i.ah = and i64 %i.ag, -16, !dbg !348426
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !348426
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !348426
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !348424
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !348424, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !348430 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !348431
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !348436
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !348436, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !348436
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !348436, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !348437
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes8Int8TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes8Int8TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !348444

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes8Int8TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !348417 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !348417
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !348417 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !348417
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !348417 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !348417
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !348417 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !348447
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !348447

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes8Int8TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !348447

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !348454 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !348456
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !348464, !noalias !348465, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !348468 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !348471, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !348475
  tail call void @llvm.assume(i1 %i.ay), !dbg !348477
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !348478, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !348478
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !348478, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @32, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !348482

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes8Int8TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348483), !dbg !348391
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !348486, !alias.scope !348483, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !348486
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !348486

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !348488, !noalias !348494
  %i.bf = icmp eq i64 %i.be, 1, !dbg !348501
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !348501

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !348502
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !348504

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !348505, !range !12048, !alias.scope !348507, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !348505
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8Int8TypeEEEB1l_.exit, label %bb.l, !dbg !348505

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8Int8TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8Int8TypeEEEB1l_.exit unwind label %bb.t, !dbg !348505

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !348391
  %i.bj = load i64, ptr %i.d, align 8, !dbg !348510, !range !12048, !alias.scope !348512, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !348510
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8Int8TypeEEEB1l_.exit28, label %bb.n, !dbg !348510

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8Int8TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !348510
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8Int8TypeEEEB1l_.exit28, !dbg !348510

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8Int8TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !348391
  br label %bb.o, !dbg !348515

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8Int8TypeEEEB1l_.exit28
  ret void, !dbg !348515

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !348516, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !348523
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !348523, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !348528, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !348537
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !348546
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !348548

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !348555 ; 3 uses
  %3 = shl i64 %i.bl, 2, !dbg !348548
  %i.br = add i64 %3, -4, !dbg !348548
  %4 = shl nuw nsw i64 %i.ax, 2, !dbg !348548
  %5 = sub i64 %i.br, %4, !dbg !348548            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !348548
  %i.bs = add nuw nsw i64 %6, 1, !dbg !348548     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !348548
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !348548

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !348548

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16, !dbg !348560 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !348560
  %wide.load67 = load <4 x i32>, ptr %i.bw, align 4, !dbg !348560
  %i.bx = add <4 x i32> %wide.load, %broadcast.splat, !dbg !348560
  %i.by = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !348560
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !dbg !348560
  store <4 x i32> %i.by, ptr %i.bw, align 4, !dbg !348560
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec, !dbg !348548
  br i1 %i.bz, label %middle.block, label %vector.body, !dbg !348548, !llvm.loop !348562

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec, !dbg !348548
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !348548

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph, !dbg !348548

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !348563

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.ca, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !348564 ; 2 uses
  %i.cb = load i32, ptr %.sroa.05.043, align 4, !dbg !348560, !noundef !11
  %i.cc = add i32 %i.cb, %.sroa.0.045, !dbg !348560
  store i32 %i.cc, ptr %.sroa.05.043, align 4, !dbg !348560
  %i.cd = icmp eq ptr %i.ca, %i.bo, !dbg !348546
  br i1 %i.cd, label %._crit_edge, label %.lr.ph, !dbg !348548, !llvm.loop !348567

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !348568
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !348568, !noundef !11
  %i.cg = trunc i64 %i.cf to i32, !dbg !348572
  %i.ch = add i32 %.sroa.0.045, %i.cg, !dbg !348573
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !348447
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !348447

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !348574
  unreachable, !dbg !348574

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes8Int8TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !348574
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes9Int16TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !348575 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !348576
  %.val21 = load i64, ptr %i.e, align 8, !dbg !348576, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !348577, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !348577
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !348577, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !348579
  %i.h = load i64, ptr %i.g, align 8, !dbg !348579, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !348579
  %i.j = and i64 %i.i, -16, !dbg !348579
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !348579
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !348579
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !348577
  %i.n = load ptr, ptr %i.m, align 8, !dbg !348577, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !348583
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !348584
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !348584

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !348586
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !348586

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !348587
  %.val20 = load i64, ptr %i.r, align 8, !dbg !348587, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !348588
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !348588

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348589), !dbg !348592
  %i.t = load ptr, ptr %i.c, align 8, !dbg !348593, !alias.scope !348589, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !348593
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !348593

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !348595, !noalias !348601
  %i.w = icmp eq i64 %i.v, 1, !dbg !348608
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !348608

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !348609
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !348611

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !348612
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes9Int16TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !348612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !348613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !348613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !348614
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !348614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !348614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !348615
  %i.y = load i64, ptr %i.d, align 8, !dbg !348616, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !348616 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !348621 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !348621, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !348622
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !348622
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !348622, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !348622
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !348622
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !348622, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !348623, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !348623 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !348626 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !348626, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !348626
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !348625, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !348625
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !348625
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !348625, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !348627
  %i.af = load i64, ptr %i.ae, align 8, !dbg !348627, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !348627
  %i.ah = and i64 %i.ag, -16, !dbg !348627
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !348627
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !348627
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !348625
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !348625, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !348631 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !348632
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !348637
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !348637, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !348637
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !348637, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !348638
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes9Int16TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !348645

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !348618 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !348618
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !348618 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !348618
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !348618 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !348618
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !348618 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !348648
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !348648

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !348648

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !348655 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !348657
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !348665, !noalias !348666, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !348669 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !348672, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !348676
  tail call void @llvm.assume(i1 %i.ay), !dbg !348678
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !348679, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !348679
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !348679, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @34, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !348683

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int16TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348684), !dbg !348592
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !348687, !alias.scope !348684, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !348687
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !348687

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !348689, !noalias !348695
  %i.bf = icmp eq i64 %i.be, 1, !dbg !348702
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !348702

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !348703
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !348705

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !348706, !range !12048, !alias.scope !348708, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !348706
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int16TypeEEEB1l_.exit, label %bb.l, !dbg !348706

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int16TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int16TypeEEEB1l_.exit unwind label %bb.t, !dbg !348706

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !348592
  %i.bj = load i64, ptr %i.d, align 8, !dbg !348711, !range !12048, !alias.scope !348713, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !348711
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int16TypeEEEB1l_.exit28, label %bb.n, !dbg !348711

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int16TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !348711
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int16TypeEEEB1l_.exit28, !dbg !348711

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int16TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !348592
  br label %bb.o, !dbg !348716

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int16TypeEEEB1l_.exit28
  ret void, !dbg !348716

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !348717, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !348724
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !348724, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !348729, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !348738
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !348747
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !348749

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !348756 ; 3 uses
  %3 = shl i64 %i.bl, 2, !dbg !348749
  %i.br = add i64 %3, -4, !dbg !348749
  %4 = shl nuw nsw i64 %i.ax, 2, !dbg !348749
  %5 = sub i64 %i.br, %4, !dbg !348749            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !348749
  %i.bs = add nuw nsw i64 %6, 1, !dbg !348749     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !348749
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !348749

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !348749

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16, !dbg !348761 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !348761
  %wide.load67 = load <4 x i32>, ptr %i.bw, align 4, !dbg !348761
  %i.bx = add <4 x i32> %wide.load, %broadcast.splat, !dbg !348761
  %i.by = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !348761
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !dbg !348761
  store <4 x i32> %i.by, ptr %i.bw, align 4, !dbg !348761
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec, !dbg !348749
  br i1 %i.bz, label %middle.block, label %vector.body, !dbg !348749, !llvm.loop !348763

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec, !dbg !348749
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !348749

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph, !dbg !348749

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !348764

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.ca, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !348765 ; 2 uses
  %i.cb = load i32, ptr %.sroa.05.043, align 4, !dbg !348761, !noundef !11
  %i.cc = add i32 %i.cb, %.sroa.0.045, !dbg !348761
  store i32 %i.cc, ptr %.sroa.05.043, align 4, !dbg !348761
  %i.cd = icmp eq ptr %i.ca, %i.bo, !dbg !348747
  br i1 %i.cd, label %._crit_edge, label %.lr.ph, !dbg !348749, !llvm.loop !348768

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !348769
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !348769, !noundef !11
  %i.cg = trunc i64 %i.cf to i32, !dbg !348773
  %i.ch = add i32 %.sroa.0.045, %i.cg, !dbg !348774
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !348648
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !348648

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !348775
  unreachable, !dbg !348775

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int16TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !348775
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes9Int32TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !348776 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !348777
  %.val21 = load i64, ptr %i.e, align 8, !dbg !348777, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !348778, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !348778
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !348778, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !348780
  %i.h = load i64, ptr %i.g, align 8, !dbg !348780, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !348780
  %i.j = and i64 %i.i, -16, !dbg !348780
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !348780
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !348780
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !348778
  %i.n = load ptr, ptr %i.m, align 8, !dbg !348778, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !348784
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !348785
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !348785

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !348787
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !348787

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !348788
  %.val20 = load i64, ptr %i.r, align 8, !dbg !348788, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !348789
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !348789

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348790), !dbg !348793
  %i.t = load ptr, ptr %i.c, align 8, !dbg !348794, !alias.scope !348790, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !348794
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !348794

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !348796, !noalias !348802
  %i.w = icmp eq i64 %i.v, 1, !dbg !348809
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !348809

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !348810
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !348812

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !348813
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes9Int32TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !348813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !348814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !348814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !348815
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !348815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !348815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !348816
  %i.y = load i64, ptr %i.d, align 8, !dbg !348817, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !348817 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !348822 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !348822, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !348823
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !348823
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !348823, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !348823
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !348823
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !348823, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !348824, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !348824 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !348827 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !348827, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !348827
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !348826, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !348826
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !348826
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !348826, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !348828
  %i.af = load i64, ptr %i.ae, align 8, !dbg !348828, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !348828
  %i.ah = and i64 %i.ag, -16, !dbg !348828
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !348828
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !348828
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !348826
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !348826, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !348832 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !348833
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !348838
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !348838, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !348838
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !348838, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !348839
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes9Int32TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !348846

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !348819 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !348819
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !348819 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !348819
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !348819 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !348819
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !348819 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !348849
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !348849

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !348849

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !348856 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !348858
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !348866, !noalias !348867, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !348870 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !348873, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !348877
  tail call void @llvm.assume(i1 %i.ay), !dbg !348879
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !348880, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !348880
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !348880, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @35, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !348884

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int32TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348885), !dbg !348793
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !348888, !alias.scope !348885, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !348888
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !348888

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !348890, !noalias !348896
  %i.bf = icmp eq i64 %i.be, 1, !dbg !348903
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !348903

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !348904
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !348906

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !348907, !range !12048, !alias.scope !348909, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !348907
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int32TypeEEEB1l_.exit, label %bb.l, !dbg !348907

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int32TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int32TypeEEEB1l_.exit unwind label %bb.t, !dbg !348907

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !348793
  %i.bj = load i64, ptr %i.d, align 8, !dbg !348912, !range !12048, !alias.scope !348914, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !348912
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int32TypeEEEB1l_.exit28, label %bb.n, !dbg !348912

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int32TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !348912
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int32TypeEEEB1l_.exit28, !dbg !348912

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int32TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !348793
  br label %bb.o, !dbg !348917

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int32TypeEEEB1l_.exit28
  ret void, !dbg !348917

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !348918, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !348925
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !348925, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !348930, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !348939
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !348948
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !348950

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !348957 ; 3 uses
  %3 = shl i64 %i.bl, 2, !dbg !348950
  %i.br = add i64 %3, -4, !dbg !348950
  %4 = shl nuw nsw i64 %i.ax, 2, !dbg !348950
  %5 = sub i64 %i.br, %4, !dbg !348950            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !348950
  %i.bs = add nuw nsw i64 %6, 1, !dbg !348950     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !348950
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !348950

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !348950

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16, !dbg !348962 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !348962
  %wide.load67 = load <4 x i32>, ptr %i.bw, align 4, !dbg !348962
  %i.bx = add <4 x i32> %wide.load, %broadcast.splat, !dbg !348962
  %i.by = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !348962
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !dbg !348962
  store <4 x i32> %i.by, ptr %i.bw, align 4, !dbg !348962
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec, !dbg !348950
  br i1 %i.bz, label %middle.block, label %vector.body, !dbg !348950, !llvm.loop !348964

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec, !dbg !348950
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !348950

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph, !dbg !348950

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !348965

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.ca, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !348966 ; 2 uses
  %i.cb = load i32, ptr %.sroa.05.043, align 4, !dbg !348962, !noundef !11
  %i.cc = add i32 %i.cb, %.sroa.0.045, !dbg !348962
  store i32 %i.cc, ptr %.sroa.05.043, align 4, !dbg !348962
  %i.cd = icmp eq ptr %i.ca, %i.bo, !dbg !348948
  br i1 %i.cd, label %._crit_edge, label %.lr.ph, !dbg !348950, !llvm.loop !348969

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !348970
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !348970, !noundef !11
  %i.cg = trunc i64 %i.cf to i32, !dbg !348974
  %i.ch = add i32 %.sroa.0.045, %i.cg, !dbg !348975
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !348849
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !348849

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !348976
  unreachable, !dbg !348976

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int32TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !348976
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes9Int64TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !348977 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !348978
  %.val21 = load i64, ptr %i.e, align 8, !dbg !348978, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !348979, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !348979
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !348979, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !348981
  %i.h = load i64, ptr %i.g, align 8, !dbg !348981, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !348981
  %i.j = and i64 %i.i, -16, !dbg !348981
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !348981
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !348981
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !348979
  %i.n = load ptr, ptr %i.m, align 8, !dbg !348979, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !348985
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !348986
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !348986

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !348988
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !348988

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !348989
  %.val20 = load i64, ptr %i.r, align 8, !dbg !348989, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !348990
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !348990

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348991), !dbg !348994
  %i.t = load ptr, ptr %i.c, align 8, !dbg !348995, !alias.scope !348991, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !348995
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !348995

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !348997, !noalias !349003
  %i.w = icmp eq i64 %i.v, 1, !dbg !349010
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !349010

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !349011
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !349013

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !349014
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes9Int64TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !349014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !349015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !349015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !349016
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !349016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !349016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !349017
  %i.y = load i64, ptr %i.d, align 8, !dbg !349018, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !349018 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !349023 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !349023, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !349024
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !349024
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !349024, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !349024
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !349024
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !349024, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !349025, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !349025 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !349028 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !349028, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !349028
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !349027, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !349027
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !349027
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !349027, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !349029
  %i.af = load i64, ptr %i.ae, align 8, !dbg !349029, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !349029
  %i.ah = and i64 %i.ag, -16, !dbg !349029
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !349029
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !349029
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !349027
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !349027, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !349033 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !349034
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !349039
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !349039, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !349039
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !349039, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !349040
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes9Int64TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !349047

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !349020 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !349020
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !349020 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !349020
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !349020 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !349020
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !349020 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !349050
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !349050

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !349050

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !349057 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !349059
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !349067, !noalias !349068, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !349071 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !349074, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !349078
  tail call void @llvm.assume(i1 %i.ay), !dbg !349080
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !349081, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !349081
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !349081, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @36, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !349085

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9Int64TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349086), !dbg !348994
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !349089, !alias.scope !349086, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !349089
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !349089

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !349091, !noalias !349097
  %i.bf = icmp eq i64 %i.be, 1, !dbg !349104
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !349104

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !349105
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !349107

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !349108, !range !12048, !alias.scope !349110, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !349108
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int64TypeEEEB1l_.exit, label %bb.l, !dbg !349108

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int64TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int64TypeEEEB1l_.exit unwind label %bb.t, !dbg !349108

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !348994
  %i.bj = load i64, ptr %i.d, align 8, !dbg !349113, !range !12048, !alias.scope !349115, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !349113
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int64TypeEEEB1l_.exit28, label %bb.n, !dbg !349113

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int64TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !349113
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int64TypeEEEB1l_.exit28, !dbg !349113

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int64TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !348994
  br label %bb.o, !dbg !349118

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int64TypeEEEB1l_.exit28
  ret void, !dbg !349118

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !349119, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !349126
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !349126, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !349131, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !349140
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !349149
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !349151

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !349158 ; 3 uses
  %3 = shl i64 %i.bl, 2, !dbg !349151
  %i.br = add i64 %3, -4, !dbg !349151
  %4 = shl nuw nsw i64 %i.ax, 2, !dbg !349151
  %5 = sub i64 %i.br, %4, !dbg !349151            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !349151
  %i.bs = add nuw nsw i64 %6, 1, !dbg !349151     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !349151
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !349151

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !349151

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16, !dbg !349163 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !349163
  %wide.load67 = load <4 x i32>, ptr %i.bw, align 4, !dbg !349163
  %i.bx = add <4 x i32> %wide.load, %broadcast.splat, !dbg !349163
  %i.by = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !349163
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !dbg !349163
  store <4 x i32> %i.by, ptr %i.bw, align 4, !dbg !349163
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec, !dbg !349151
  br i1 %i.bz, label %middle.block, label %vector.body, !dbg !349151, !llvm.loop !349165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec, !dbg !349151
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !349151

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph, !dbg !349151

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !349166

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.ca, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !349167 ; 2 uses
  %i.cb = load i32, ptr %.sroa.05.043, align 4, !dbg !349163, !noundef !11
  %i.cc = add i32 %i.cb, %.sroa.0.045, !dbg !349163
  store i32 %i.cc, ptr %.sroa.05.043, align 4, !dbg !349163
  %i.cd = icmp eq ptr %i.ca, %i.bo, !dbg !349149
  br i1 %i.cd, label %._crit_edge, label %.lr.ph, !dbg !349151, !llvm.loop !349170

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !349171
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !349171, !noundef !11
  %i.cg = trunc i64 %i.cf to i32, !dbg !349175
  %i.ch = add i32 %.sroa.0.045, %i.cg, !dbg !349176
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !349050
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !349050

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !349177
  unreachable, !dbg !349177

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9Int64TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !349177
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB9_12ChunkedArrayNtNtBb_9datatypes9UInt8TypeENtB5_17ChunkNestingUtils22find_validity_mismatchBb_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !349178 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 40, !dbg !349179
  %.val21 = load i64, ptr %i.e, align 8, !dbg !349179, !noundef !11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !dbg !349180, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !349180
  %.val18 = load ptr, ptr %i.f, align 8, !dbg !349180, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val18, i64 16, !dbg !349182
  %i.h = load i64, ptr %i.g, align 8, !dbg !349182, !range !360, !invariant.load !11
  %i.i = add nsw i64 %i.h, -1, !dbg !349182
  %i.j = and i64 %i.i, -16, !dbg !349182
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j, !dbg !349182
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !349182
  %i.m = getelementptr inbounds nuw i8, ptr %.val18, i64 608, !dbg !349180
  %i.n = load ptr, ptr %i.m, align 8, !dbg !349180, !invariant.load !11, !nonnull !11
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull %i.l) #40, !dbg !349186
  %i.p = icmp eq i64 %.val21, %i.o, !dbg !349187
  br i1 %i.p, label %bb.b, label %bb.g, !dbg !349187

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.val21, 0, !dbg !349189
  br i1 %i.q, label %bb.o, label %bb.c, !dbg !349189

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 32, !dbg !349190
  %.val20 = load i64, ptr %i.r, align 8, !dbg !349190, !noundef !11
  %i.s = icmp eq i64 %.val21, %.val20, !dbg !349191
  br i1 %i.s, label %bb.o, label %bb.g, !dbg !349191

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349192), !dbg !349195
  %i.t = load ptr, ptr %i.c, align 8, !dbg !349196, !alias.scope !349192, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !349196
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.e, !dbg !349196

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !349198, !noalias !349204
  %i.w = icmp eq i64 %i.v, 1, !dbg !349211
  br i1 %i.w, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !349211

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !349212
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.t, !dbg !349214

bb.g:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !349215
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes9UInt8TypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !349215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !349216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !349216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !349217
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !349217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !dbg !349217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !349218
  %i.y = load i64, ptr %i.d, align 8, !dbg !349219, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !349219 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !349224 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !349224, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.aa, i64 8, !dbg !349225
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.z, !dbg !349225
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !349225, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.aa, ptr %i.d, !dbg !349225
  %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !349225
  %.sroa.07.0.val19 = load i64, ptr %.sroa.07.0.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !dbg !349225, !noundef !11
  %i.ab = load ptr, ptr %i.c, align 8, !dbg !349226, !noundef !11
  %.not14 = icmp eq ptr %i.ab, null, !dbg !349226 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !349229 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !349229, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not14, ptr %i.ad, ptr %i.c, !dbg !349229
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !349228, !nonnull !11, !noundef !11
  %.sroa.gep33 = getelementptr i8, ptr %i.ad, i64 8, !dbg !349228
  %.sroa.08.0.sroa.sel = select i1 %.not14, ptr %.sroa.gep33, ptr %i.ac, !dbg !349228
  %.sroa.08.0.val17 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !349228, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 16, !dbg !349230
  %i.af = load i64, ptr %i.ae, align 8, !dbg !349230, !range !360, !invariant.load !11
  %i.ag = add nsw i64 %i.af, -1, !dbg !349230
  %i.ah = and i64 %i.ag, -16, !dbg !349230
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.ah, !dbg !349230
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !349230
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val17, i64 312, !dbg !349228
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !349228, !invariant.load !11, !nonnull !11
  %i.am = invoke noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !349234 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val19, !dbg !349235
  %i.ao = getelementptr i8, ptr %i.am, i64 8, !dbg !349240
  %.val22 = load ptr, ptr %i.ao, align 8, !dbg !349240, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16, !dbg !349240
  %.val23 = load i64, ptr %i.ap, align 8, !dbg !349240, !noundef !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val22, i64 %.val23, !dbg !349241
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes9UInt8TypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.an, ptr noundef nonnull %.val22, ptr noundef nonnull %i.aq)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9UInt8TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !349248

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9UInt8TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !349221 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !349221
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !349221 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !349221
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !349221 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !349221
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !349221 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload, !dbg !349251
  br i1 %i.ar, label %.lr.ph46, label %._crit_edge47, !dbg !349251

.lr.ph46:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9UInt8TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i, !dbg !349251

bb.i:                                             ; preds = %.lr.ph46, %._crit_edge
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.sroa.536.044 = phi i64 [ %.sroa.536.0.copyload, %.lr.ph46 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.au = add i64 %.sroa.536.044, 1, !dbg !349258 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.536.044, !dbg !349260
  %.val1.i.i = load ptr, ptr %i.av, align 8, !dbg !349268, !noalias !349269, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.044, !dbg !349272 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !dbg !349275, !noundef !11 ; 6 uses
  %i.ay = icmp ult i64 %i.ax, 2305843009213693952, !dbg !349279
  tail call void @llvm.assume(i1 %i.ay), !dbg !349281
  %i.az = load ptr, ptr %i.aw, align 8, !dbg !349282, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !349282
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !349282, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @37, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit, !dbg !349286

._crit_edge47:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes9UInt8TypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349287), !dbg !349195
  %i.bc = load ptr, ptr %i.c, align 8, !dbg !349290, !alias.scope !349287, !noundef !11 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !349290
  br i1 %i.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, label %bb.j, !dbg !349290

bb.j:                                             ; preds = %._crit_edge47
  %i.be = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !349292, !noalias !349298
  %i.bf = icmp eq i64 %i.be, 1, !dbg !349305
  br i1 %i.bf, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, !dbg !349305

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !349306
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26 unwind label %bb.m, !dbg !349308

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %lpad.phi, %bb.f ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.e ]
  %i.bg = load i64, ptr %i.d, align 8, !dbg !349309, !range !12048, !alias.scope !349311, !noundef !11
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808, !dbg !349309
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEB1l_.exit, label %bb.l, !dbg !349309

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEB1l_.exit unwind label %bb.t, !dbg !349309

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26: ; preds = %bb.j, %._crit_edge47, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !349195
  %i.bj = load i64, ptr %i.d, align 8, !dbg !349314, !range !12048, !alias.scope !349316, !noundef !11
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808, !dbg !349314
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEB1l_.exit28, label %bb.n, !dbg !349314

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !349314
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEB1l_.exit28, !dbg !349314

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEB1l_.exit28: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !349195
  br label %bb.o, !dbg !349319

bb.o:                                             ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEB1l_.exit28
  ret void, !dbg !349319

bb.p:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.as, align 8, !dbg !349320, !noundef !11 ; 6 uses
  %i.bm = icmp ugt i64 %i.ax, %i.bl, !dbg !349327
  br i1 %i.bm, label %bb.r, label %bb.q, !dbg !349327, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.at, align 8, !dbg !349332, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl, !dbg !349341
  %i.bp = icmp samesign eq i64 %i.ax, %i.bl, !dbg !349350
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.preheader, !dbg !349352

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ax, !dbg !349359 ; 3 uses
  %3 = shl i64 %i.bl, 2, !dbg !349352
  %i.br = add i64 %3, -4, !dbg !349352
  %4 = shl nuw nsw i64 %i.ax, 2, !dbg !349352
  %5 = sub i64 %i.br, %4, !dbg !349352            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !349352
  %i.bs = add nuw nsw i64 %6, 1, !dbg !349352     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !349352
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph, !dbg !349352

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.045, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !349352

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16, !dbg !349364 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !349364
  %wide.load67 = load <4 x i32>, ptr %i.bw, align 4, !dbg !349364
  %i.bx = add <4 x i32> %wide.load, %broadcast.splat, !dbg !349364
  %i.by = add <4 x i32> %wide.load67, %broadcast.splat, !dbg !349364
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !dbg !349364
  store <4 x i32> %i.by, ptr %i.bw, align 4, !dbg !349364
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec, !dbg !349352
  br i1 %i.bz, label %middle.block, label %vector.body, !dbg !349352, !llvm.loop !349366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec, !dbg !349352
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68, !dbg !349352

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.043.ph = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph, !dbg !349352

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #37
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !349367

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.sroa.05.043 = phi ptr [ %i.ca, %.lr.ph ], [ %.sroa.05.043.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.043, i64 4, !dbg !349368 ; 2 uses
  %i.cb = load i32, ptr %.sroa.05.043, align 4, !dbg !349364, !noundef !11
  %i.cc = add i32 %i.cb, %.sroa.0.045, !dbg !349364
  store i32 %i.cc, ptr %.sroa.05.043, align 4, !dbg !349364
  %i.cd = icmp eq ptr %i.ca, %i.bo, !dbg !349350
  br i1 %i.cd, label %._crit_edge, label %.lr.ph, !dbg !349352, !llvm.loop !349371

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !349372
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !349372, !noundef !11
  %i.cg = trunc i64 %i.cf to i32, !dbg !349376
  %i.ch = add i32 %.sroa.0.045, %i.cg, !dbg !349377
  %exitcond.not = icmp eq i64 %i.au, %.sroa.7.0.copyload, !dbg !349251
  br i1 %exitcond.not, label %._crit_edge47, label %bb.i, !dbg !349251

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.f
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !349378
  unreachable, !dbg !349378

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes9UInt8TypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.l
  resume { ptr, i32 } %.pn, !dbg !349378
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops3setINtB9_12ChunkedArrayNtNtBb_9datatypes10BinaryTypeEINtB7_8ChunkSetRShINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE3set(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, ptr noalias noundef readonly captures(address, read_provenance) %3, i64 %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !349379 {
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
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !349381
  %i.l = load i64, ptr %i.k, align 8, !dbg !349381, !noundef !11 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !349384
  %i.n = load i64, ptr %i.m, align 8, !dbg !349384, !noundef !11
  %i.o = icmp eq i64 %i.l, %i.n, !dbg !349387
  br i1 %i.o, label %bb.c, label %bb.b, !dbg !349387

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @351, i64 72, i1 false), !dbg !349388
  br label %bb.ae, !dbg !349389

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !349390
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !349391
  %i.q = load ptr, ptr %i.p, align 8, !dbg !349391, !nonnull !11, !noundef !11 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !349408
  %i.s = load i64, ptr %i.r, align 8, !dbg !349408, !noundef !11
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.s, !dbg !349409 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !349418
  %i.v = load ptr, ptr %i.u, align 8, !dbg !349418, !nonnull !11, !noundef !11 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !349436
  %i.x = load i64, ptr %i.w, align 8, !dbg !349436, !noundef !11
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !349437 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !349445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !349454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !349457, !noalias !349462
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE13with_capacityCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.e, i64 noundef %i.l), !dbg !349466, !noalias !349462
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.e, i64 noundef %i.l)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !dbg !349467, !noalias !349462

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
  br label %.noexc13.i, !dbg !349473

.noexc13.i:                                       ; preds = %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i, %.noexc.i
  %.sroa.166.0.i.i = phi ptr [ %i.v, %.noexc.i ], [ %.sroa.166.2.i.i, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 4 uses
  %.sroa.142.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.142.3.i.i, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 5 uses
  %.sroa.138.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.138.3.i.i, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 3 uses
  %.sroa.134.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.134.3.i.i, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 3 uses
  %.sroa.124.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.124.3.i.i, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 5 uses
  %.sroa.118.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.118.3.i.i, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 7 uses
  %.sroa.112.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.112.3.i.i, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 6 uses
  %.sroa.109.0.i.i = phi ptr [ undef, %.noexc.i ], [ %.sroa.109.2.i.i, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 6 uses
  %.sroa.105141.0.i.i = phi i1 [ false, %.noexc.i ], [ true, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 2 uses
  %.sroa.100.0.i.i = phi ptr [ %i.q, %.noexc.i ], [ %.sroa.100.1.i.i279, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 3 uses
  %.sroa.64.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.64.2.i.i282, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 5 uses
  %.sroa.60.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.60.2.i.i285, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 3 uses
  %.sroa.56.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.56.2.i.i288, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 3 uses
  %.sroa.44.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.44.2.i.i291, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 7 uses
  %.sroa.36.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.36.2.i.i294, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 6 uses
  %.sroa.28.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.28.2.i.i297, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 3 uses
  %.sroa.20.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.20.2.i.i300, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 4 uses
  %.sroa.12.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.12.2.i.i303, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 5 uses
  %.sroa.7.0.i.i = phi ptr [ undef, %.noexc.i ], [ %.sroa.7.2.i.i306, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes10BinaryTypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityRShINtNtB3n_8iterator15ArrayValuesIterINtNtB3n_7binview22BinaryViewArrayGenericB6N_EENtNtB61_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionB6M_EENtNtNtB1e_6traits8iterator8Iterator4nextB3W_.exit.thread.i.i.i.i.i ], !dbg !349475 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !349476
  br i1 %.sroa.105141.0.i.i, label %bb.d, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditybNtNtB7_8iterator10BitmapIterB1o_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit120.thread.i.i, !dbg !349493

bb.d:                                             ; preds = %.noexc13.i
  %.not.i95.i.i = icmp eq ptr %.sroa.7.0.i.i, null, !dbg !349505
  br i1 %.not.i95.i.i, label %bb.h, label %bb.e, !dbg !349508

bb.e:                                             ; preds = %bb.d
  %i.af = icmp eq i64 %.sroa.28.0.i.i, 0, !dbg !349509
  br i1 %i.af, label %bb.f, label %._crit_edge.i.i.i96.i.i, !dbg !349509

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp eq i64 %.sroa.36.0.i.i, 0, !dbg !349512
  br i1 %i.ag, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i99.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i110.i.i, !dbg !349512

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i110.i.i: ; preds = %bb.f
  %.sroa.0.0.i.i.i.i111.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.36.0.i.i, i64 64), !dbg !349513 ; 2 uses
  %i.ah = sub i64 %.sroa.36.0.i.i, %.sroa.0.0.i.i.i.i111.i.i, !dbg !349515
  %.sroa.02.0.copyload.i.i.i112.i.i = load i64, ptr %.sroa.7.0.i.i, align 1, !dbg !349516, !noalias !349520
  %i.ai = add i64 %.sroa.12.0.i.i, -8, !dbg !349527
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i, i64 8, !dbg !349531
  br label %._crit_edge.i.i.i96.i.i, !dbg !349533

._crit_edge.i.i.i96.i.i:                          ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i110.i.i, %bb.e
  %.sroa.36.8.i.i = phi i64 [ %i.ah, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i110.i.i ], [ %.sroa.36.0.i.i, %bb.e ], !dbg !349475
  %.sroa.12.9.i.i = phi i64 [ %i.ai, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i110.i.i ], [ %.sroa.12.0.i.i, %bb.e ], !dbg !349475
  %.sroa.7.8.i.i = phi ptr [ %i.aj, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i110.i.i ], [ %.sroa.7.0.i.i, %bb.e ], !dbg !349475
  %i.ak = phi i64 [ %.sroa.0.0.i.i.i.i111.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i110.i.i ], [ %.sroa.28.0.i.i, %bb.e ], !dbg !349534
  %i.al = phi i64 [ %.sroa.02.0.copyload.i.i.i112.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i110.i.i ], [ %.sroa.20.0.i.i, %bb.e ], !dbg !349535 ; 2 uses
  %i.am = trunc i64 %i.al to i8, !dbg !349535
  %i.an = lshr i64 %i.al, 1, !dbg !349536
  %i.ao = add i64 %i.ak, -1, !dbg !349534
  %i.ap = and i8 %i.am, 1, !dbg !349537
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i99.i.i, !dbg !349538

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i99.i.i: ; preds = %._crit_edge.i.i.i96.i.i, %bb.f
  %.sroa.36.9.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.36.8.i.i, %._crit_edge.i.i.i96.i.i ], !dbg !349475 ; 2 uses
  %.sroa.28.7.i.i = phi i64 [ 0, %bb.f ], [ %i.ao, %._crit_edge.i.i.i96.i.i ], !dbg !349475 ; 2 uses
  %.sroa.20.8.i.i = phi i64 [ %.sroa.20.0.i.i, %bb.f ], [ %i.an, %._crit_edge.i.i.i96.i.i ], !dbg !349475 ; 2 uses
  %.sroa.12.10.i.i = phi i64 [ %.sroa.12.0.i.i, %bb.f ], [ %.sroa.12.9.i.i, %._crit_edge.i.i.i96.i.i ], !dbg !349475 ; 2 uses
  %.sroa.7.9.i.i = phi ptr [ %.sroa.7.0.i.i, %bb.f ], [ %.sroa.7.8.i.i, %._crit_edge.i.i.i96.i.i ], !dbg !349475 ; 2 uses
  %.sroa.0.0.i.i.i100.i.i = phi i8 [ 2, %bb.f ], [ %i.ap, %._crit_edge.i.i.i96.i.i ], !dbg !349539
  %i.aq = icmp eq i64 %.sroa.60.0.i.i, 0, !dbg !349540
  br i1 %i.aq, label %bb.g, label %._crit_edge.i7.i.i101.i.i, !dbg !349540

bb.g:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i99.i.i
  %i.ar = icmp eq i64 %.sroa.64.0.i.i, 0, !dbg !349542
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB8_12ChunkedArrayNtNtBa_9datatypes17FixedSizeListTypeENtB4_17ChunkNestingUtils15propagate_nulls:bb.a
  store <2 x i64> %i.bm, ptr %.sroa.37.0..sroa_idx, align 8, !dbg !416722
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !416722
  store i32 %i.bl, ptr %.sroa.59.0..sroa_idx, align 8, !dbg !416722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !416527
  br label %bb.aa, !dbg !416450

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.trap(), !dbg !416723
  unreachable, !dbg !416723

bb.ae:                                            ; preds = %bb.l
  unreachable

bb.af:                                            ; preds = %bb.m, %bb.l, %bb.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.c) #36
          to label %.body.thread unwind label %bb.ag, !dbg !416559

bb.ag:                                            ; preds = %bb.af, %.body.thread
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !416724
  unreachable, !dbg !416724
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB8_12ChunkedArrayNtNtBa_9datatypes17FixedSizeListTypeENtB4_17ChunkNestingUtils22find_validity_mismatch(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !416725 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !416726
  call void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils29align_chunks_binary_ca_seriesNtNtB4_9datatypes17FixedSizeListTypeEB4_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !416726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !416727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !416727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !416728
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !416728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !416728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !416729
  %i.f = load i64, ptr %i.d, align 8, !dbg !416730, !range !12048, !noundef !11
  %.not = icmp eq i64 %i.f, -9223372036854775808, !dbg !416730 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !416735 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !dbg !416735, !nonnull !11, !align !358 ; 2 uses
  %.sroa.gep = getelementptr i8, ptr %i.h, i64 8, !dbg !416736
  %.sroa.07.0.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %i.g, !dbg !416736
  %.sroa.07.0.val = load ptr, ptr %.sroa.07.0.sroa.sel, align 8, !dbg !416736, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.h, ptr %i.d, !dbg !416736
  %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel.v, i64 16, !dbg !416736
  %.sroa.07.0.val17 = load i64, ptr %.sroa.07.0.sroa.sel27.v.sroa.sel.v.sroa.sel, align 8, !dbg !416736, !noundef !11
  %i.i = load ptr, ptr %i.c, align 8, !dbg !416737, !noundef !11
  %.not13 = icmp eq ptr %i.i, null, !dbg !416737  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !416740 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !416740, !nonnull !11, !align !358 ; 2 uses
  %.sroa.08.0 = select i1 %.not13, ptr %i.k, ptr %i.c, !dbg !416740
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !dbg !416739, !nonnull !11, !noundef !11
  %.sroa.gep28 = getelementptr i8, ptr %i.k, i64 8, !dbg !416739
  %.sroa.08.0.sroa.sel = select i1 %.not13, ptr %.sroa.gep28, ptr %i.j, !dbg !416739
  %.sroa.08.0.val16 = load ptr, ptr %.sroa.08.0.sroa.sel, align 8, !dbg !416739, !nonnull !11, !align !358, !noundef !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val16, i64 16, !dbg !416741
  %i.m = load i64, ptr %i.l, align 8, !dbg !416741, !range !360, !invariant.load !11
  %i.n = add nsw i64 %i.m, -1, !dbg !416741
  %i.o = and i64 %i.n, -16, !dbg !416741
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.o, !dbg !416741
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !416741
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val16, i64 312, !dbg !416739
  %i.s = load ptr, ptr %i.r, align 8, !dbg !416739, !invariant.load !11, !nonnull !11
  %i.t = invoke noundef nonnull align 8 ptr %i.s(ptr noundef nonnull %i.q)
          to label %bb.e unwind label %.loopexit.split-lp, !dbg !416745 ; 2 uses

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416746), !dbg !416749
  %i.u = load ptr, ptr %i.c, align 8, !dbg !416750, !alias.scope !416746, !noundef !11 ; 2 uses
  %i.v = icmp eq ptr %i.u, null, !dbg !416750
  br i1 %i.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, label %bb.c, !dbg !416750

bb.c:                                             ; preds = %bb.b
  %i.w = atomicrmw sub ptr %i.u, i64 1 release, align 8, !dbg !416752, !noalias !416758
  %i.x = icmp eq i64 %i.w, 1, !dbg !416765
  br i1 %i.x, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, !dbg !416765

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !416766
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit unwind label %bb.p, !dbg !416768

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.07.0.val, i64 %.sroa.07.0.val17, !dbg !416769
  %i.z = getelementptr i8, ptr %i.t, i64 8, !dbg !416774
  %.val = load ptr, ptr %i.z, align 8, !dbg !416774, !nonnull !11, !noundef !11 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.t, i64 16, !dbg !416774
  %.val18 = load i64, ptr %i.aa, align 8, !dbg !416774, !noundef !11
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.val18, !dbg !416775
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3a_12ChunkedArrayNtNtB3c_9datatypes17FixedSizeListTypeE13downcast_iter0EB1c_EINtB5_7ZipImplBW_B1c_E3newB3c_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.07.0.val, ptr noundef nonnull %i.y, ptr noundef nonnull %.val, ptr noundef nonnull %i.ab)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes17FixedSizeListTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit unwind label %.loopexit.split-lp, !dbg !416782

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes17FixedSizeListTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit: ; preds = %bb.e
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !416732 ; 2 uses
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !416732
  %.sroa.430.0.copyload = load ptr, ptr %.sroa.430.0..sroa_idx, align 8, !dbg !416732 ; 2 uses
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !416732
  %.sroa.531.0.copyload = load i64, ptr %.sroa.531.0..sroa_idx, align 8, !dbg !416732 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !416732
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !416732 ; 2 uses
  %i.ac = icmp ult i64 %.sroa.531.0.copyload, %.sroa.7.0.copyload, !dbg !416785
  br i1 %i.ac, label %.lr.ph41, label %._crit_edge42, !dbg !416785

.lr.ph41:                                         ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes17FixedSizeListTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.430.0.copyload) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f, !dbg !416785

bb.f:                                             ; preds = %.lr.ph41, %._crit_edge
  %.sroa.0.040 = phi i32 [ 0, %.lr.ph41 ], [ %i.bs, %._crit_edge ] ; 3 uses
  %.sroa.531.039 = phi i64 [ %.sroa.531.0.copyload, %.lr.ph41 ], [ %i.af, %._crit_edge ] ; 3 uses
  %i.af = add i64 %.sroa.531.039, 1, !dbg !416792 ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.531.039, !dbg !416794
  %.val1.i.i = load ptr, ptr %i.ag, align 8, !dbg !416802, !noalias !416803, !nonnull !11, !noundef !11 ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.430.0.copyload, i64 %.sroa.531.039, !dbg !416806 ; 2 uses
  %i.ai = load i64, ptr %i.ad, align 8, !dbg !416809, !noundef !11 ; 6 uses
  %i.aj = icmp ult i64 %i.ai, 2305843009213693952, !dbg !416813
  tail call void @llvm.assume(i1 %i.aj), !dbg !416815
  %i.ak = load ptr, ptr %i.ah, align 8, !dbg !416816, !nonnull !11, !noundef !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !416816
  %i.am = load ptr, ptr %i.al, align 8, !dbg !416816, !nonnull !11, !align !358, !noundef !11
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute22find_validity_mismatch22find_validity_mismatch(ptr noundef nonnull %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @31, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.l unwind label %.loopexit, !dbg !416820

._crit_edge42:                                    ; preds = %._crit_edge, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2P_12ChunkedArrayNtNtB2R_9datatypes17FixedSizeListTypeE13downcast_iter0ENtNtNtBa_6traits8iterator8Iterator3zipRINtNtB1m_3vec3VecB1h_EEB2R_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416821), !dbg !416749
  %i.an = load ptr, ptr %i.c, align 8, !dbg !416824, !alias.scope !416821, !noundef !11 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null, !dbg !416824
  br i1 %i.ao, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, label %bb.g, !dbg !416824

bb.g:                                             ; preds = %._crit_edge42
  %i.ap = atomicrmw sub ptr %i.an, i64 1 release, align 8, !dbg !416826, !noalias !416832
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !416839
  br i1 %i.aq, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, !dbg !416839

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !416840
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21 unwind label %bb.j, !dbg !416842

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit: ; preds = %bb.c, %bb.b, %bb.d, %bb.j
  %.pn = phi { ptr, i32 } [ %i.at, %bb.j ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %bb.b ], [ %lpad.phi, %bb.c ]
  %i.ar = load i64, ptr %i.d, align 8, !dbg !416843, !range !12048, !alias.scope !416845, !noundef !11
  %i.as = icmp eq i64 %i.ar, -9223372036854775808, !dbg !416843
  br i1 %i.as, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes17FixedSizeListTypeEEEB1l_.exit, label %bb.i, !dbg !416843

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes17FixedSizeListTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes17FixedSizeListTypeEEEB1l_.exit unwind label %bb.p, !dbg !416843

bb.j:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21: ; preds = %bb.g, %._crit_edge42, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !416749
  %i.au = load i64, ptr %i.d, align 8, !dbg !416848, !range !12048, !alias.scope !416850, !noundef !11
  %i.av = icmp eq i64 %i.au, -9223372036854775808, !dbg !416848
  br i1 %i.av, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes17FixedSizeListTypeEEEB1l_.exit23, label %bb.k, !dbg !416848

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes17FixedSizeListTypeEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !dbg !416848
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes17FixedSizeListTypeEEEB1l_.exit23, !dbg !416848

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes17FixedSizeListTypeEEEB1l_.exit23: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit21, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !416749
  ret void, !dbg !416853

bb.l:                                             ; preds = %bb.f
  %i.aw = load i64, ptr %i.ad, align 8, !dbg !416854, !noundef !11 ; 6 uses
  %i.ax = icmp ugt i64 %i.ai, %i.aw, !dbg !416861
  br i1 %i.ax, label %bb.n, label %bb.m, !dbg !416861, !prof !54

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.ae, align 8, !dbg !416866, !nonnull !11, !noundef !11 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.aw, !dbg !416875
  %i.ba = icmp samesign eq i64 %i.ai, %i.aw, !dbg !416884
  br i1 %i.ba, label %._crit_edge, label %.lr.ph.preheader, !dbg !416886

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ai, !dbg !416893 ; 3 uses
  %3 = shl i64 %i.aw, 2, !dbg !416886
  %i.bc = add i64 %3, -4, !dbg !416886
  %4 = shl nuw nsw i64 %i.ai, 2, !dbg !416886
  %5 = sub i64 %i.bc, %4, !dbg !416886            ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !416886
  %i.bd = add nuw nsw i64 %6, 1, !dbg !416886     ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !416886
  br i1 %min.iters.check, label %.lr.ph.preheader63, label %vector.ph, !dbg !416886

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bd, 9223372036854775800     ; 3 uses
  %i.be = shl i64 %n.vec, 2
  %i.bf = getelementptr i8, ptr %i.bb, i64 %i.be
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.040, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !416886

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bg ; 3 uses
  %i.bh = getelementptr i8, ptr %next.gep, i64 16, !dbg !416898 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !416898
  %wide.load62 = load <4 x i32>, ptr %i.bh, align 4, !dbg !416898
  %i.bi = add <4 x i32> %wide.load, %broadcast.splat, !dbg !416898
  %i.bj = add <4 x i32> %wide.load62, %broadcast.splat, !dbg !416898
  store <4 x i32> %i.bi, ptr %next.gep, align 4, !dbg !416898
  store <4 x i32> %i.bj, ptr %i.bh, align 4, !dbg !416898
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec, !dbg !416886
  br i1 %i.bk, label %middle.block, label %vector.body, !dbg !416886, !llvm.loop !416900

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec, !dbg !416886
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader63, !dbg !416886

.lr.ph.preheader63:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.05.038.ph = phi ptr [ %i.bb, %.lr.ph.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph, !dbg !416886

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ai, i64 noundef %i.aw, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @539) #37
          to label %bb.o unwind label %.loopexit.split-lp, !dbg !416901

.lr.ph:                                           ; preds = %.lr.ph.preheader63, %.lr.ph
  %.sroa.05.038 = phi ptr [ %i.bl, %.lr.ph ], [ %.sroa.05.038.ph, %.lr.ph.preheader63 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.05.038, i64 4, !dbg !416902 ; 2 uses
  %i.bm = load i32, ptr %.sroa.05.038, align 4, !dbg !416898, !noundef !11
  %i.bn = add i32 %i.bm, %.sroa.0.040, !dbg !416898
  store i32 %i.bn, ptr %.sroa.05.038, align 4, !dbg !416898
  %i.bo = icmp eq ptr %i.bl, %i.az, !dbg !416884
  br i1 %i.bo, label %._crit_edge, label %.lr.ph, !dbg !416886, !llvm.loop !416905

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 56, !dbg !416906
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !416906, !noundef !11
  %i.br = trunc i64 %i.bq to i32, !dbg !416909
  %i.bs = add i32 %.sroa.0.040, %i.br, !dbg !416910
  %exitcond.not = icmp eq i64 %i.af, %.sroa.7.0.copyload, !dbg !416785
  br i1 %exitcond.not, label %._crit_edge42, label %bb.f, !dbg !416785

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.d
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !416911
  unreachable, !dbg !416911

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1l_9datatypes17FixedSizeListTypeEEEB1l_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.i
  resume { ptr, i32 } %.pn, !dbg !416911
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13nesting_utilsINtB8_12ChunkedArrayNtNtBa_9datatypes17FixedSizeListTypeENtB4_17ChunkNestingUtils32trim_lists_to_normalized_offsets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !416912 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !416913 ; 2 uses
  %i.g = tail call noundef i32 @_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5flagsNtB5_17StatisticsFlagsIM3get(ptr noundef nonnull align 4 %i.f), !dbg !416916 ; 3 uses
  %i.h = and i32 %i.g, 8, !dbg !416917
  %.not = icmp eq i32 %i.h, 0, !dbg !416927
  br i1 %.not, label %bb.b, label %bb.d, !dbg !416927

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !416928 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !dbg !416928, !nonnull !11, !noundef !11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !416934
  %i.l = load i8, ptr %i.k, align 16, !dbg !416934, !range !410, !noundef !11
  %i.m = icmp eq i8 %i.l, 22, !dbg !416935
  br i1 %i.m, label %_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5arrayINtB4_12ChunkedArrayNtNtB6_9datatypes17FixedSizeListTypeE11inner_dtype.exit, label %bb.c, !dbg !416935, !prof !500

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #39, !dbg !416936
  unreachable, !dbg !416936

_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5arrayINtB4_12ChunkedArrayNtNtB6_9datatypes17FixedSizeListTypeE11inner_dtype.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !416937
  %i.o = load ptr, ptr %i.n, align 16, !dbg !416937, !nonnull !11, !noundef !11
  %i.p = tail call noundef zeroext i1 @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType23contains_list_recursive(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.o), !dbg !416939
  br i1 %i.p, label %bb.e, label %bb.d, !dbg !416940

bb.d:                                             ; preds = %bb.a, %_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5arrayINtB4_12ChunkedArrayNtNtB6_9datatypes17FixedSizeListTypeE11inner_dtype.exit
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !416941
  br label %bb.y, !dbg !416942

bb.e:                                             ; preds = %_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5arrayINtB4_12ChunkedArrayNtNtB6_9datatypes17FixedSizeListTypeE11inner_dtype.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !416944
  store i64 0, ptr %i.e, align 8, !dbg !416945
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !416945 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !dbg !416945
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !416945 ; 4 uses
  store i64 0, ptr %i.r, align 8, !dbg !416945
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !416948 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !dbg !416948, !nonnull !11, !noundef !11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !416964 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !416964, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.v, 4, !dbg !416965
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx, !dbg !416965
  %i.x = icmp eq i64 %i.v, 0, !dbg !416974
  br i1 %i.x, label %.thread.thread, label %.lr.ph, !dbg !416980

.thread.loopexit:                                 ; preds = %bb.h
  %.pr.pre = load i64, ptr %i.r, align 8, !dbg !416981
  br label %.thread, !dbg !416981

.body.thread:                                     ; preds = %.loopexit, %.loopexit.split-lp, %bb.r, %bb.n, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %i.bk, %bb.ad ], [ %i.am, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #36
          to label %common.resume unwind label %bb.ae, !dbg !416986

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
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 16, !dbg !416987 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.0.040, align 8, !dbg !416989, !noalias !416992, !nonnull !11, !noundef !11
  %i.z = add nuw nsw i64 %.sroa.7.039, 1, !dbg !416997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !416998
  invoke void @_RNvNtCslFlrwjHoTci_14polars_compute32trim_lists_to_normalized_offsets36trim_lists_to_normalized_offsets_fsl(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.d, ptr noundef nonnull align 8 %.val.i.i)
          to label %bb.f unwind label %.loopexit, !dbg !416998

.thread:                                          ; preds = %.thread.loopexit, %bb.t
  %i.aa = phi i64 [ %i.aw, %bb.t ], [ %.pr.pre, %.thread.loopexit ], !dbg !416981 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 576460752303423488, !dbg !417001
  call void @llvm.assume(i1 %i.ab), !dbg !417003
  %i.ac = icmp eq i64 %i.aa, 0, !dbg !417004
  br i1 %i.ac, label %.thread.thread, label %bb.u, !dbg !417004

bb.f:                                             ; preds = %.lr.ph
  %i.ad = load i8, ptr %i.d, align 8, !dbg !416998, !range !49249, !noundef !11
  %.not24 = icmp eq i8 %i.ad, 42, !dbg !416998
  br i1 %.not24, label %bb.h, label %bb.g, !dbg !417005

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !417006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !dbg !417006
  %i.ae = load i64, ptr %i.u, align 8, !dbg !417007, !noundef !11 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 576460752303423488, !dbg !417009
  tail call void @llvm.assume(i1 %i.af), !dbg !417011
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ae)
          to label %bb.i unwind label %bb.ad, !dbg !417012

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !417013
  %i.ag = icmp eq ptr %i.y, %i.w, !dbg !416974
  br i1 %i.ag, label %.thread.loopexit, label %.lr.ph, !dbg !416980

bb.i:                                             ; preds = %bb.g
  %i.ah = load i64, ptr %i.u, align 8, !dbg !417014, !noundef !11 ; 2 uses
  %.not25 = icmp ugt i64 %.sroa.7.039, %i.ah
  br i1 %.not25, label %bb.j, label %bb.k, !dbg !417020, !prof !102785

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.7.039, i64 noundef %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @540) #37
          to label %bb.ac unwind label %bb.ad, !dbg !417029

bb.k:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.s, align 8, !dbg !417030, !nonnull !11, !noundef !11 ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.sroa.7.039, !dbg !417039
  invoke void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtB2b_5slice4iter4IterBG_EEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj)
          to label %bb.l unwind label %bb.ad, !dbg !417047

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !417052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !dbg !417052
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !417053, !noalias !417062
  %i.ak = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 129) 96, i64 noundef range(i64 4, 17) 8) #41, !dbg !417065, !noalias !417062 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null, !dbg !417066
  br i1 %i.al, label %bb.m, label %bb.p, !dbg !417067, !prof !54

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #37
          to label %.noexc unwind label %bb.n, !dbg !417068
end_hunk_3
