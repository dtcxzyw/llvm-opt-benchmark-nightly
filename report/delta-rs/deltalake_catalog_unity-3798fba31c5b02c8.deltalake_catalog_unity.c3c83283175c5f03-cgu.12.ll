inline.NumInlined: 1221
inline.NumDeleted: 615
begin_hunk_0_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtB6_4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB3O_5table7builder16resolve_uri_typeReE0EE9from_iterCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %i.ap = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1847, !noalias !1848, !nonnull !13, !noundef !13
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1794
  %i.ar = add nuw nsw i64 %i.ag, 1
  store i64 %i.ar, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1847, !noalias !1848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1846
  br label %bb.k

bb.t:                                             ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.v, !noalias !1794

bb.u:                                             ; preds = %bb.p
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ag, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.t, !noalias !1794

bb.v:                                             ; preds = %bb.t, %bb.m
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !1794
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.w, %bb.m, %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.au, %bb.w ], [ %.pn.i.i.i, %bb.m ], [ %.pn.i.i.i, %bb.l ], [ %.pn.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.g) #30
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB2S_5table7builder16resolve_uri_typeReE0EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i unwind label %bb.y, !noalias !1794

bb.x:                                             ; preds = %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1799
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtB6_4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB42_5table7builder16resolve_uri_typeReE0EE9from_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.y:                                             ; preds = %bb.ab, %.body.i, %bb.g
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !1794
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB2S_5table7builder16resolve_uri_typeReE0EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i: ; preds = %bb.ab, %bb.aa, %bb.z, %.body.i
  %.pn11.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.ph.i, %bb.ab ], [ %.pn.ph.i, %bb.z ], [ %.pn.ph.i, %bb.aa ]
  resume { ptr, i32 } %.pn11.i

bb.z:                                             ; preds = %bb.g, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.q, %bb.g ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !1875, !noalias !1794, !noundef !13 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB2S_5table7builder16resolve_uri_typeReE0EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !1876
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB2S_5table7builder16resolve_uri_typeReE0EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1A_4util11SharedValueIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEE9drop_slowB40_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aw) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB2S_5table7builder16resolve_uri_typeReE0EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i unwind label %bb.y, !noalias !1794

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtB6_4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB42_5table7builder16resolve_uri_typeReE0EE9from_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecReEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE9from_iterCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1886)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !133, !alias.scope !1895, !noalias !1883, !noundef !13
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1895, !noalias !1883, !nonnull !13, !noundef !13 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !1895, !noalias !1883, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1899, !noalias !1900, !noundef !13 ; 5 uses
  %.not.i.i.i.i = icmp ugt i64 %i.k, %.val1.i.i.i
  %.promoted.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !1899, !noalias !1900 ; 2 uses
  %i.l = icmp ult i64 %i.k, %.promoted.i.i.i.i
  %or.cond21.i.i.i.i = or i1 %.not.i.i.i.i, %i.l
  br i1 %or.cond21.i.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, label %.lr.ph.split.preheader.i.i.i.i

.lr.ph.split.preheader.i.i.i.i:                   ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !1899, !noalias !1900, !noundef !13 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %.pre.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !1899, !noalias !1900 ; 2 uses
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i.i
  %i.t = phi i64 [ %i.ai, %bb.f ], [ %.promoted.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i ] ; 3 uses
  %i.u = sub nuw i64 %i.k, %i.t                   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.t ; 2 uses
  %i.w = icmp samesign ult i64 %i.u, 16
  br i1 %i.w, label %.preheader.i.i.i.i.i, label %bb.c

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.x = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.u), !noalias !1902
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.u, %bb.d ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ 0, %bb.d ], [ 1, %.lr.ph.i.i.i.i.i ]
  %i.y = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i, 0
  %i.z = insertvalue { i64, i64 } %i.y, i64 %.sroa.01.0.lcssa.i.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.ad, %bb.d ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.01.05.i.i.i.i.i
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !1903, !noalias !1902, !noundef !13
  %i.ac = icmp eq i8 %i.ab, %.pre.i.i.i.i
  br i1 %i.ac, label %._crit_edge.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ad, %i.u
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.c
  %.merged.i.i.i.i.i = phi { i64, i64 } [ %i.z, %._crit_edge.i.i.i.i.i ], [ %i.x, %bb.c ] ; 2 uses
  %i.ae = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 0
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.e, label %.split.us.i.i.i.i

bb.e:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.ag = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1
  %i.ah = add i64 %i.t, 1
  %i.ai = add i64 %i.ah, %i.ag                    ; 7 uses
  store i64 %i.ai, ptr %i.i, align 8, !alias.scope !1899, !noalias !1900
  %.not12.i.i.i.i = icmp ult i64 %i.ai, %i.p
  %.not13.i.i.i.i = icmp ugt i64 %i.ai, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not12.i.i.i.i, %.not13.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i.i:                                ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i
  store i64 %i.k, ptr %i.i, align 8, !alias.scope !1899, !noalias !1900
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.aj = icmp ult i64 %i.k, %i.ai
  br i1 %i.aj, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, label %.lr.ph.split.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = sub nuw i64 %i.ai, %i.p                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ak
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.al, ptr nonnull %i.m, i64 %i.p), !noalias !1900
  %i.am = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.am, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i, label %bb.f

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i: ; preds = %bb.g
  %i.an = load i64, ptr %1, align 8, !alias.scope !1895, !noalias !1883, !noundef !13 ; 2 uses
  %i.ao = sub nuw i64 %i.ak, %i.an
  store i64 %i.ai, ptr %1, align 8, !alias.scope !1895, !noalias !1883
  br label %select.unfold.i

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.f, %.split.us.i.i.i.i, %bb.b
  store i8 1, ptr %i.d, align 1, !alias.scope !1906, !noalias !1883
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aq = load i8, ptr %i.ap, align 8, !range !133, !alias.scope !1906, !noalias !1883, !noundef !13
  %i.ar = trunc nuw i8 %i.aq to i1
  %.pre.i2.i.i.i = load i64, ptr %1, align 8, !alias.scope !1906, !noalias !1883 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !1906, !noalias !1883 ; 2 uses
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  %or.cond.not.i.i.i.i = select i1 %i.ar, i1 true, i1 %.not.i3.i.i.i
  %i.as = sub nuw i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  br i1 %or.cond.not.i.i.i.i, label %select.unfold.i, label %bb.n

select.unfold.i:                                  ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i
  %.sroa.4.1.i.i.i = phi i64 [ %i.ao, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %i.as, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i ]
  %.pn.i = phi i64 [ %i.an, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %.pre.i2.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1888
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !1888
  %i.at = load i64, ptr %i.a, align 8, !range !22, !noalias !1888, !noundef !13
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !201, !noalias !1888, !noundef !13 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.au, label %bb.h, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, !prof !166

bb.h:                                             ; preds = %select.unfold.i
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !1888
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.aw, i64 %i.ay) #25, !noalias !1888
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %select.unfold.i
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.pn.i
  %i.az = load ptr, ptr %i.ax, align 8, !noalias !1888, !nonnull !13, !noundef !13 ; 5 uses
  %i.ba = icmp ugt i64 %i.aw, 3
  tail call void @llvm.assume(i1 %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1888
  store ptr %.sroa.0.1.i.i.i, ptr %i.az, align 8, !noalias !1888
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.4.1.i.i.i, ptr %i.bb, align 8, !noalias !1888
  store i64 %i.aw, ptr %i.c, align 8, !noalias !1888
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1888
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !1888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !noalias !1883
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  %.promoted.i.i.i = load i8, ptr %i.bc, align 1, !alias.scope !1919, !noalias !1924
  %.promoted13.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !1925, !noalias !1924 ; 4 uses
  %i.bd = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.bd, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !1919, !noalias !1924, !nonnull !13, !noundef !13 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !1919, !noalias !1924, !noundef !13 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !1926, !noalias !1929, !noundef !13 ; 5 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.bh, %.val1.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bk = load i8, ptr %i.bj, align 8, !alias.scope !1925, !noalias !1924 ; 2 uses
  %i.bl = zext nneg i8 %i.bk to i64               ; 4 uses
  %i.bm = icmp ult i8 %i.bk, 5
  %i.bn = getelementptr i8, ptr %i.bi, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.bn, i64 -1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bq = load i8, ptr %i.bp, align 8, !range !133, !alias.scope !1925, !noalias !1924
  %i.br = trunc nuw i8 %i.bq to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !1925, !noalias !1924 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.promoted17.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !1926, !noalias !1929
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %.not.i3.i.i.us.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.promoted13.i.i.i
  %or.cond.not.i.i.i.us.i.i.i = select i1 %i.br, i1 true, i1 %.not.i3.i.i.us.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  br i1 %or.cond.not.i.i.i.us.i.i.i, label %._crit_edge.split.us.split.us.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

._crit_edge.split.us.split.us.i.i.i:              ; preds = %.lr.ph.split.us.i.i.i
  %.sroa.0.1.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted13.i.i.i
  %i.bt = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted13.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %.sroa.0.1.i.i.us.i.i.i, ptr %i.bu, align 8, !noalias !1934
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 %i.bt, ptr %i.bv, align 8, !noalias !1934
  store i64 2, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !1935, !noalias !1934
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

.lr.ph.split.i.i.i:                               ; preds = %.noexc11.i, %.lr.ph.split.preheader.i.i.i
  %i.bw = phi i64 [ %i.ct, %.noexc11.i ], [ %.promoted17.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %.lcssa111516.i.i.i = phi i64 [ %.lcssa1114.i.i.i, %.noexc11.i ], [ %.promoted13.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1931)
  call void @llvm.experimental.noalias.scope.decl(metadata !1932)
  call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  %i.bx = icmp ult i64 %i.bh, %i.bw
  br i1 %i.bx, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i
  call void @llvm.assume(i1 %i.bm)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.bo, align 1, !alias.scope !1926, !noalias !1929 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.l, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.by = phi i64 [ %i.cn, %bb.l ], [ %i.bw, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.bz = sub nuw i64 %i.bh, %i.by                ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.by ; 2 uses
  %i.cb = icmp samesign ult i64 %i.bz, 16
  br i1 %i.cb, label %.preheader.i.i.i.i.i.i.i, label %bb.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.cc = invoke { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef range(i64 0, -9223372036854775808) %i.bz)
          to label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i unwind label %.loopexit.i, !noalias !1888

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.bz, %bb.j ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.j ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cd = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.ce = insertvalue { i64, i64 } %i.cd, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.j
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.ci, %bb.j ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !1936, !noalias !1939, !noundef !13
  %i.ch = icmp eq i8 %i.cg, %.pre.i.i.i.i.i.i
  br i1 %i.ch, label %._crit_edge.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ci = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ci, %i.bz
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.i
  %.merged.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.ce, %._crit_edge.i.i.i.i.i.i.i ], [ %i.cc, %bb.i ] ; 2 uses
  %i.cj = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %bb.k, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i

bb.k:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.cl = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1
  %i.cm = add i64 %i.by, 1
  %i.cn = add i64 %i.cm, %i.cl                    ; 8 uses
  %.not12.i.i.i.i.i.i = icmp ult i64 %i.cn, %i.bl
  %.not13.i.i.i.i.i.i = icmp ugt i64 %i.cn, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.i.i, %.not13.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.co = icmp ult i64 %i.bh, %i.cn
  br i1 %i.co, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cp = sub nuw i64 %i.cn, %i.bl                ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.cp
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.cq, ptr nonnull %i.bi, i64 %i.bl), !noalias !1940
  %i.cr = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.cr, label %select.unfold.i.i.i, label %bb.l

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i: ; preds = %bb.l, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %i.cs = phi i64 [ %i.bw, %.lr.ph.split.i.i.i ], [ %i.cn, %bb.l ], [ %i.bh, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i ]
  store i8 1, ptr %i.bc, align 1, !alias.scope !1941, !noalias !1924
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa111516.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.br, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

select.unfold.i.i.i:                              ; preds = %bb.m, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i
  %i.ct = phi i64 [ %i.cs, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i ], [ %i.cn, %bb.m ]
  %.lcssa1114.i.i.i = phi i64 [ %.lcssa111516.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i ], [ %i.cn, %bb.m ]
  %i.cu = phi i1 [ true, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i ], [ false, %bb.m ]
  %.pn.i.i.i = phi i64 [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i ], [ %i.cp, %bb.m ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i.i.i, %.lcssa111516.i.i.i
  %.sroa.0.1.i.i.i.i9.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa111516.i.i.i
  %i.cv = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !1935, !noalias !1934, !noundef !13 ; 5 uses
  %i.cw = icmp ult i64 %i.cv, 576460752303423488
  call void @llvm.assume(i1 %i.cw)
  %i.cx = load i64, ptr %i.c, align 8, !range !241, !alias.scope !1935, !noalias !1934, !noundef !13
  %i.cy = icmp eq i64 %i.cv, %i.cx
  br i1 %i.cy, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, label %.noexc11.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %select.unfold.i.i.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.cv, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc11.i unwind label %.loopexit.split-lp.i, !noalias !1888

.noexc11.i:                                       ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, %select.unfold.i.i.i
  %i.cz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1935, !noalias !1934, !nonnull !13, !noundef !13
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cv ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i9.i, ptr %i.da, align 8, !noalias !1934
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %.sroa.4.1.i.i.i.i.i, ptr %i.db, align 8, !noalias !1934
  %i.dc = add nuw nsw i64 %i.cv, 1
  store i64 %i.dc, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !1935, !noalias !1934
  br i1 %i.cu, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %.lr.ph.split.i.i.i

bb.n:                                             ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !1883, !noalias !1886
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dd, align 8, !alias.scope !1883, !noalias !1886
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.de, align 8, !alias.scope !1883, !noalias !1886
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE9from_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit

.loopexit.i:                                      ; preds = %bb.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.i:                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.p, !noalias !1888

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %.noexc11.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i, %._crit_edge.split.us.split.us.i.i.i, %.lr.ph.split.us.i.i.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1886
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE9from_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.p:                                             ; preds = %bb.o
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !1888
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.o
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE9from_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.n, %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1888
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTINtNtB6_4sync3ArcNtNtB6_6string6StringEybEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel15TimerEventsIterB1c_ENCNCNvMsd_NtNtB38_6future10base_cacheINtB4h_5InnerB1c_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE34evict_expired_entries_using_timers00EE9from_iterB53_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1947)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1949
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1950
  store ptr %i.j, ptr %i.f, align 8, !noalias !1958
  %i.k = invoke { i64, ptr } @_RNvXs3_NtNtCs95DO3lnzZ3L_4moka6common11timer_wheelINtB5_15TimerEventsIterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !1944 ; 2 uses

.noexc.i:                                         ; preds = %bb.a
  %i.l = extractvalue { i64, ptr } %i.k, 0        ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.l, 3
  br i1 %.not17.i.i.i.i, label %.loopexit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.noexc6.i, %.lr.ph.i.i.i.i
  %i.n = phi i64 [ %i.l, %.lr.ph.i.i.i.i ], [ %i.s, %.noexc6.i ]
  %i.o = phi { i64, ptr } [ %i.k, %.lr.ph.i.i.i.i ], [ %i.r, %.noexc6.i ]
  %i.p = extractvalue { i64, ptr } %i.o, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1963
  invoke void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBY_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE34evict_expired_entries_using_timers00INtB7_5FnMutTINtNtNtB12_6common11timer_wheel10TimerEventB1Q_EEE8call_mutB2w_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef range(i64 0, 3) %i.n, ptr %i.p)
          to label %.noexc5.i unwind label %.loopexit.i, !noalias !1944

.noexc5.i:                                        ; preds = %bb.b
  %i.q = load i8, ptr %i.m, align 8, !range !118, !noalias !1963, !noundef !13 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.q, 2
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.noexc5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1963
  %i.r = invoke { i64, ptr } @_RNvXs3_NtNtCs95DO3lnzZ3L_4moka6common11timer_wheelINtB5_15TimerEventsIterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc6.i unwind label %.loopexit.i, !noalias !1944 ; 2 uses

.noexc6.i:                                        ; preds = %bb.c
  %i.s = extractvalue { i64, ptr } %i.r, 0        ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.s, 3
  br i1 %.not.i.i.i.i, label %.loopexit22.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.b
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp.i:                             ; preds = %bb.a
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit22.i:                                    ; preds = %.noexc6.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1950
  store i64 0, ptr %0, align 8, !alias.scope !1944, !noalias !1947
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !alias.scope !1944, !noalias !1947
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.u, align 8, !alias.scope !1944, !noalias !1947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1949
  call void @llvm.experimental.noalias.scope.decl(metadata !1967)
  call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  call void @llvm.experimental.noalias.scope.decl(metadata !1973)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.w = load i8, ptr %i.v, align 2, !range !133, !alias.scope !1976, !noalias !1944, !noundef !13
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecTINtNtB6_4sync3ArcNtNtB6_6string6StringEybEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel15TimerEventsIterB1j_ENCNCNvMsd_NtNtB3m_6future10base_cacheINtB4v_5InnerB1j_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE34evict_expired_entries_using_timers00EE9from_iterB5h_.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit22.i
  %i.y = load i64, ptr %1, align 8, !alias.scope !1976, !noalias !1944, !noundef !13
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1976, !noalias !1944, !nonnull !13, !align !14, !noundef !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %i.y, ptr %i.ab, align 8, !noalias !1977
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecTINtNtB6_4sync3ArcNtNtB6_6string6StringEybEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel15TimerEventsIterB1j_ENCNCNvMsd_NtNtB3m_6future10base_cacheINtB4v_5InnerB1j_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE34evict_expired_entries_using_timers00EE9from_iterB5h_.exit

bb.e:                                             ; preds = %bb.h, %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1978)
  call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  %i.ad = load ptr, ptr %i.h, align 8, !alias.scope !1987, !noalias !1949, !nonnull !13, !noundef !13
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !1988
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #28
          to label %bb.t unwind label %bb.s, !noalias !1944

bb.g:                                             ; preds = %.noexc5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !1949
  %.sroa.711.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.711.0..sroa_idx.i.i.i.i, i64 7, i1 false), !noalias !1949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1950
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 %i.q, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1949
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc8.i unwind label %bb.e, !noalias !1944

.noexc8.i:                                        ; preds = %bb.g
  %i.ag = load i64, ptr %i.d, align 8, !range !22, !noalias !1949, !noundef !13
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !201, !noalias !1949, !noundef !13 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ah, label %bb.h, label %bb.i, !prof !166

bb.h:                                             ; preds = %.noexc8.i
  %i.al = load i64, ptr %i.ak, align 8, !noalias !1949
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.aj, i64 %i.al) #25
          to label %.noexc9.i unwind label %bb.e, !noalias !1944
end_hunk_0
