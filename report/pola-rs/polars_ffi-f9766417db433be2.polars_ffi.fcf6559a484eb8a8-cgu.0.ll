Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_ffi-f9766417db433be2.polars_ffi.fcf6559a484eb8a8-cgu.0?download=true
inline.NumInlined: 209
inline.NumDeleted: 100
begin_hunk_0_@_RNvNtCslIvKsLJE9Zc_10polars_ffi9version_020import_series_buffer:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !1652 ; 2 uses
  store ptr %i.l, ptr %i.n, align 8, !dbg !1652
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !1652 ; 3 uses
  store i64 0, ptr %i.o, align 8, !dbg !1652
  %.not28 = icmp eq i64 %2, 0, !dbg !1653
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !dbg !1630

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d, !dbg !1630

._crit_edge:                                      ; preds = %bb.p, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !1655
  store i64 18, ptr %0, align 8, !dbg !1654
  br label %bb.e, !dbg !1656

bb.d:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.09.027 = phi i64 [ 0, %.lr.ph ], [ %i.t, %bb.p ] ; 2 uses
  %i.t = add nuw i64 %.sroa.09.027, 1, !dbg !1657 ; 2 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %.sroa.09.027, !dbg !1658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !dbg !1659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1635
  invoke void @_RNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
          to label %bb.g unwind label %bb.f, !dbg !1635

bb.e:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECslIvKsLJE9Zc_10polars_ffi.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1660
  ret void, !dbg !1656

bb.f:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !1660

.body:                                            ; preds = %bb.m, %bb.n, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.ae, %bb.n ], [ %i.ae, %bb.m ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(24) %i.e) #22
          to label %common.resume unwind label %bb.q, !dbg !1660

bb.g:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.c, align 8, !dbg !1661, !range !199, !noundef !87 ; 2 uses
  %.not = icmp eq i64 %i.w, 18, !dbg !1661
  %i.x = load ptr, ptr %i.p, align 8, !dbg !1662  ; 4 uses
  %i.y = load ptr, ptr %i.q, align 8, !dbg !1662  ; 3 uses
  br i1 %.not, label %bb.k, label %bb.h, !dbg !1663

bb.h:                                             ; preds = %bb.g
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !1664
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !1664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1666
  store i64 %i.w, ptr %0, align 8, !dbg !1665
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1665
  store ptr %i.x, ptr %.sroa.219.0..sroa_idx, align 8, !dbg !1665
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1665
  store ptr %i.y, ptr %.sroa.320.0..sroa_idx, align 8, !dbg !1665
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECslIvKsLJE9Zc_10polars_ffi.exit unwind label %bb.i, !dbg !1667

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.j, !dbg !1668

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !1667
  unreachable, !dbg !1667

common.resume:                                    ; preds = %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !1669

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !1670
  br label %bb.e, !dbg !1656

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1666
  call void @llvm.experimental.noalias.scope.decl(metadata !1638), !dbg !1671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.x, ptr %i.a, align 8, !noalias !1640
  store ptr %i.y, ptr %i.r, align 8, !noalias !1640
  %i.ab = load i64, ptr %i.o, align 8, !dbg !1672, !alias.scope !1638, !noundef !87 ; 3 uses
  %i.ac = load i64, ptr %i.e, align 8, !dbg !1673, !range !147, !alias.scope !1638, !noundef !87
  %i.ad = icmp eq i64 %i.ab, %i.ac, !dbg !1674
  br i1 %i.ad, label %bb.l, label %bb.p, !dbg !1674

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.p unwind label %bb.m, !dbg !1675

bb.m:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = atomicrmw add ptr %i.x, i64 -1 release, align 8, !dbg !1676, !noalias !1641
  %i.ag = icmp eq i64 %i.af, 1, !dbg !1677
  br i1 %i.ag, label %bb.n, label %.body, !dbg !1677

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !1678
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #21
          to label %.body unwind label %bb.o, !dbg !1679

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !1680
  unreachable, !dbg !1680

bb.p:                                             ; preds = %bb.l, %bb.k
  %i.ai = load ptr, ptr %i.n, align 8, !dbg !1681, !alias.scope !1638, !nonnull !87, !noundef !87
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ab, !dbg !1682 ; 2 uses
  store ptr %i.x, ptr %i.aj, align 8, !dbg !1683
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !1683
  store ptr %i.y, ptr %i.ak, align 8, !dbg !1683
  %i.al = add i64 %i.ab, 1, !dbg !1684
  store i64 %i.al, ptr %i.o, align 8, !dbg !1684, !alias.scope !1638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1685
  %exitcond.not = icmp eq i64 %i.t, %2, !dbg !1653
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !dbg !1630

bb.q:                                             ; preds = %.body
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !1686
  unreachable, !dbg !1686
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCslIvKsLJE9Zc_10polars_ffi9version_023c_release_series_export(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1687 !guid !1712 {
bb.a:
  %i.a = icmp eq ptr %0, null, !dbg !1720
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !1720

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1721
  %i.c = load ptr, ptr %i.b, align 8, !dbg !1721, !nonnull !87, !noundef !87 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1722
  %i.e = load ptr, ptr %i.d, align 8, !dbg !1722, !nonnull !87, !noundef !87 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1722
  %i.g = load i64, ptr %i.f, align 8, !dbg !1722, !noundef !87 ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 3, !dbg !1723
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !1723
  %i.i = icmp eq i64 %i.g, 0, !dbg !1724
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !dbg !1718

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void, !dbg !1725

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1726
  store ptr null, ptr %i.j, align 8, !dbg !1726
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtCslIvKsLJE9Zc_10polars_ffi11PrivateDataEEB1h_(ptr nonnull %i.c)
          to label %bb.c unwind label %bb.d, !dbg !1727

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.0.06 = phi ptr [ %i.l, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.0.06, align 8, !dbg !1728, !nonnull !87, !noundef !87
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 80, i64 noundef 8) #19, !dbg !1729
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 8, !dbg !1730 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.h, !dbg !1724
  br i1 %i.m, label %._crit_edge, label %.lr.ph, !dbg !1718

bb.d:                                             ; preds = %._crit_edge
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #25, !dbg !1731
  unreachable, !dbg !1731
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCslIvKsLJE9Zc_10polars_ffi9version_09import_df(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1732 !guid !2242 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 16               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [80 x i8], align 16               ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [160 x i8], align 16              ; 9 uses
  %i.t = alloca [48 x i8], align 16               ; 4 uses
  %i.u = alloca [96 x i8], align 16               ; 6 uses
  %i.v = alloca [48 x i8], align 16               ; 44 uses
  %i.w = alloca [48 x i8], align 16               ; 37 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [48 x i8], align 8               ; 4 uses
  %i.ad = alloca [160 x i8], align 16             ; 8 uses
  %i.ae = alloca [72 x i8], align 8               ; 8 uses
  %i.af = alloca [40 x i8], align 8               ; 2 uses
  %i.ag = alloca [24 x i8], align 8               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !2390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !2391
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, i64 noundef %2, i1 noundef zeroext false, i64 noundef 16, i64 noundef 160), !dbg !2391
  %i.ah = load i64, ptr %i.aa, align 8, !dbg !2391, !range !186, !noundef !87
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !2392
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !2393
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !2393, !range !89, !noundef !87 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !2393 ; 2 uses
  br i1 %i.ai, label %bb.b, label %bb.c, !dbg !2392, !prof !143

bb.b:                                             ; preds = %bb.a
  %i.am = load i64, ptr %i.al, align 8, !dbg !2394
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.am) #24, !dbg !2395
  unreachable, !dbg !2395

bb.c:                                             ; preds = %bb.a
  %i.an = load ptr, ptr %i.al, align 8, !dbg !2396, !nonnull !87, !noundef !87
  %i.ao = icmp ule i64 %2, %i.ak, !dbg !2397
  tail call void @llvm.assume(i1 %i.ao), !dbg !2398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !2399
  store i64 %i.ak, ptr %i.ag, align 8, !dbg !2400
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !2400 ; 2 uses
  store ptr %i.an, ptr %i.ap, align 8, !dbg !2400
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !2400 ; 3 uses
  store i64 0, ptr %i.aq, align 8, !dbg !2400
  %.not142 = icmp eq i64 %2, 0, !dbg !2401
  br i1 %.not142, label %._crit_edge, label %.lr.ph, !dbg !2252

.lr.ph:                                           ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 7 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 144 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.s, i64 128 ; 4 uses
  %.23..23..23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 23
  %.8..8..8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.16..16..16..16..16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.d, !dbg !2252

._crit_edge:                                      ; preds = %bb.dq, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !2402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !2403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !dbg !2403
  call void @_RNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframeNtB4_9DataFrame26new_unchecked_infer_height(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ab), !dbg !2402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !2404
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false), !dbg !2405
  store i64 18, ptr %0, align 8, !dbg !2405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !2406
  br label %bb.e, !dbg !2407

bb.d:                                             ; preds = %.lr.ph, %bb.dq
  %.sroa.010.0141 = phi i64 [ 0, %.lr.ph ], [ %i.bw, %bb.dq ] ; 2 uses
  %i.bw = add nuw i64 %.sroa.010.0141, 1, !dbg !2408 ; 2 uses
  %i.bx = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %.sroa.010.0141, !dbg !2409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.bx, i64 40, i1 false), !dbg !2410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !2257
  invoke void @_RNvNtCslIvKsLJE9Zc_10polars_ffi9version_013import_series(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.af)
          to label %bb.f unwind label %.loopexit, !dbg !2257

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.e:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslIvKsLJE9Zc_10polars_ffi.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !2411
  ret void, !dbg !2407

bb.f:                                             ; preds = %bb.d
  %i.by = load i64, ptr %i.ae, align 8, !dbg !2412, !range !199, !noundef !87 ; 2 uses
  %.not = icmp eq i64 %i.by, 18, !dbg !2412
  %i.bz = load ptr, ptr %i.ar, align 8, !dbg !2413 ; 2 uses
  %i.ca = load ptr, ptr %i.as, align 8, !dbg !2413 ; 2 uses
  br i1 %.not, label %bb.j, label %bb.g, !dbg !2414

bb.g:                                             ; preds = %bb.f
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !2415
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !2415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !2417
  store i64 %i.by, ptr %0, align 8, !dbg !2416
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2416
  store ptr %i.bz, ptr %.sroa.220.0..sroa_idx, align 8, !dbg !2416
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2416
  store ptr %i.ca, ptr %.sroa.321.0..sroa_idx, align 8, !dbg !2416
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslIvKsLJE9Zc_10polars_ffi.exit unwind label %bb.h, !dbg !2418

bb.h:                                             ; preds = %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %common.resume unwind label %bb.i, !dbg !2419

bb.i:                                             ; preds = %bb.h
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !2418
  unreachable, !dbg !2418

common.resume:                                    ; preds = %.body.thread, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.cb, %bb.h ], [ %eh.lpad-body32, %.body.thread ]
  resume { ptr, i32 } %common.resume.op, !dbg !2420

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag), !dbg !2421
  br label %bb.e, !dbg !2407

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !2417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !2422
  call void @llvm.experimental.noalias.scope.decl(metadata !2260), !dbg !2423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.bz, ptr %i.z, align 8, !noalias !2265
  store ptr %i.ca, ptr %i.at, align 8, !noalias !2265
  %i.cd = invoke noundef i64 @_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core5utilsNtNtB7_6series6SeriesNtB5_9Container3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z)
          to label %bb.k unwind label %bb.dj, !dbg !2424, !noalias !2260

bb.k:                                             ; preds = %bb.j
  %i.ce = icmp eq i64 %i.cd, 1, !dbg !2425
  %i.cf = load ptr, ptr %i.z, align 8, !dbg !2426, !noalias !2265, !nonnull !87, !noundef !87 ; 5 uses
  %i.cg = load ptr, ptr %i.at, align 8, !dbg !2426, !noalias !2265, !nonnull !87, !align !146, !noundef !87 ; 8 uses
  br i1 %i.ce, label %bb.l, label %bb.di, !dbg !2425

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !2267), !dbg !2427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2265
  store ptr %i.cf, ptr %i.y, align 8, !noalias !2268
  store ptr %i.cg, ptr %i.aw, align 8, !noalias !2268
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16, !dbg !2428
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !2428, !range !148, !invariant.load !87, !alias.scope !2267, !noalias !2260
  %i.cj = add nsw i64 %i.ci, -1, !dbg !2428
  %i.ck = and i64 %i.cj, -16, !dbg !2428
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ck, !dbg !2428
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16, !dbg !2428 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 432, !dbg !2429
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !2429, !invariant.load !87, !alias.scope !2267, !noalias !2260, !nonnull !87
  %i.cp = invoke noundef i64 %i.co(ptr noundef nonnull %i.cm)
          to label %bb.m unwind label %.loopexit.split-lp34.loopexit.split-lp, !dbg !2430, !noalias !2272 ; 2 uses

.loopexit.split-lp34.loopexit.split-lp:           ; preds = %bb.bp, %bb.bk, %bb.ax, %bb.av, %bb.u, %bb.o, %bb.l, %bb.cd, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECslIvKsLJE9Zc_10polars_ffi.exit.thread.i.i.i, %bb.n
  %lpad.loopexit.split-lp323 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.m:                                             ; preds = %bb.l
  store i64 %i.cp, ptr %i.x, align 8, !dbg !2429, !noalias !2268
  %i.cq = icmp eq i64 %i.cp, 1, !dbg !2431
  br i1 %i.cq, label %bb.o, label %bb.n, !dbg !2431, !prof !2275

bb.n:                                             ; preds = %bb.m
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @3, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24
          to label %bb.df unwind label %.loopexit.split-lp34.loopexit.split-lp, !dbg !2432, !noalias !2272

bb.o:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 584, !dbg !2433
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !2433, !invariant.load !87, !alias.scope !2267, !noalias !2260, !nonnull !87
  invoke void %i.cs(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.w, ptr noundef nonnull %i.cm, i64 noundef 0)
          to label %bb.p unwind label %.loopexit.split-lp34.loopexit.split-lp, !dbg !2434, !noalias !2272

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !2435, !noalias !2268
  call void @llvm.experimental.noalias.scope.decl(metadata !2277), !dbg !2436
  call void @llvm.experimental.noalias.scope.decl(metadata !2278), !dbg !2436
  %i.ct = load i8, ptr %i.w, align 16, !dbg !2437, !range !152, !alias.scope !2278, !noalias !2268, !noundef !87
  switch i8 %i.ct, label %default.unreachable [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.x
    i8 4, label %bb.y
    i8 5, label %bb.z
    i8 6, label %bb.aa
    i8 7, label %bb.ab
    i8 8, label %bb.ac
    i8 9, label %bb.ad
    i8 10, label %bb.ae
    i8 11, label %bb.af
    i8 12, label %bb.ag
    i8 13, label %bb.ah
    i8 14, label %bb.ai
    i8 15, label %bb.aj
    i8 16, label %bb.ak
    i8 17, label %bb.al
    i8 18, label %bb.am
    i8 19, label %bb.an
    i8 20, label %bb.ao
    i8 21, label %bb.ap
    i8 22, label %bb.aq
    i8 23, label %bb.ar
    i8 24, label %bb.as
    i8 25, label %bb.at
    i8 26, label %bb.au
    i8 27, label %bb.av
    i8 28, label %bb.aw
    i8 29, label %bb.ax
    i8 30, label %bb.bi
    i8 31, label %bb.bj
    i8 32, label %bb.bk
    i8 33, label %bb.bl
    i8 34, label %bb.bm
  ], !dbg !2438

default.unreachable:                              ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr %i.v, align 16, !dbg !2439, !alias.scope !2277, !noalias !2268
  br label %bb.ch, !dbg !2439

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.v, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.w, i64 48, i1 false), !dbg !2440, !alias.scope !2282, !noalias !2268
  br label %bb.ch, !dbg !2441

bb.s:                                             ; preds = %bb.p
  %i.cu = load ptr, ptr %i.ax, align 8, !dbg !2442, !alias.scope !2278, !noalias !2268, !nonnull !87, !noundef !87 ; 2 uses
  %i.cv = load i64, ptr %i.ay, align 16, !dbg !2442, !alias.scope !2278, !noalias !2268, !noundef !87 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !2443
  %i.cw = icmp eq i64 %i.cv, 0, !dbg !2443
  br i1 %i.cw, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECslIvKsLJE9Zc_10polars_ffi.exit.thread24.i.i.i, label %bb.t, !dbg !2443

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECslIvKsLJE9Zc_10polars_ffi.exit.thread24.i.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !2444
  br label %bb.bn, !dbg !2445
end_hunk_0
begin_hunk_1_@_RNvNtCslIvKsLJE9Zc_10polars_ffi9version_09import_df:bb.a

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.eg = load ptr, ptr %i.bf, align 8, !dbg !2541, !noalias !2315, !nonnull !87, !noundef !87 ; 2 uses
  %i.eh = icmp samesign ule i64 %i.eb, %i.ee, !dbg !2542
  call void @llvm.assume(i1 %i.eh), !dbg !2543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !2544, !noalias !2315
  store i64 %i.ee, ptr %i.k, align 8, !dbg !2545, !noalias !2315
  store ptr %i.eg, ptr %i.bg, align 8, !dbg !2545, !noalias !2315
  %i.ei = getelementptr inbounds nuw [80 x i8], ptr %i.ea, i64 %i.eb, !dbg !2546
  %i.ej = icmp eq i64 %i.ee, 0, !dbg !2547
  br i1 %i.ej, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !dbg !2547

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i, %bb.bf
  %.sroa.012.025.i.i.i.i = phi ptr [ %i.em, %bb.bf ], [ %i.ea, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i ] ; 5 uses
  %.sroa.7.024.i.i.i.i = phi i64 [ %i.en, %bb.bf ], [ 0, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i ] ; 3 uses
  %.sroa.10.023.i.i.i.i = phi i64 [ %i.ek, %bb.bf ], [ %i.ee, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i ]
  %i.ek = add nsw i64 %.sroa.10.023.i.i.i.i, -1, !dbg !2548 ; 2 uses
  %i.el = icmp eq ptr %.sroa.012.025.i.i.i.i, %i.ei, !dbg !2549
  br i1 %i.el, label %.loopexit.i.i.i, label %bb.az, !dbg !2550

.loopexit.i.i.i.i:                                ; preds = %bb.ba
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.az:                                            ; preds = %.lr.ph.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i.i.i.i, i64 80, !dbg !2551
  %i.en = add nuw nsw i64 %.sroa.7.024.i.i.i.i, 1, !dbg !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !2553
  call void @llvm.experimental.noalias.scope.decl(metadata !2326), !dbg !2554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2555, !noalias !2315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !2555, !noalias !2330
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i.i.i.i, i64 48, !dbg !2556 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i.i.i.i, i64 71, !dbg !2557
  %i.eq = load i8, ptr %i.ep, align 1, !dbg !2557, !range !142, !alias.scope !2331, !noalias !2304, !noundef !87
  %i.er = icmp eq i8 %i.eq, -40, !dbg !2558
  br i1 %i.er, label %bb.ba, label %bb.bb, !dbg !2558

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eo) #21
          to label %.noexc.i.i.i.i unwind label %.loopexit.i.i.i.i, !dbg !2559, !noalias !2332

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.eo, i64 24, i1 false), !dbg !2560, !noalias !2332
  br label %.noexc.i.i.i.i, !dbg !2561

.noexc.i.i.i.i:                                   ; preds = %bb.bb, %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !2562, !noalias !2330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !2563, !noalias !2330
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.sroa.012.025.i.i.i.i)
          to label %bb.bf unwind label %bb.bc, !dbg !2563, !noalias !2332

bb.bc:                                            ; preds = %.noexc.i.i.i.i
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.h, i64 23, !dbg !2564
  %i.eu = load i8, ptr %i.et, align 1, !dbg !2564, !range !142, !alias.scope !2333, !noalias !2330, !noundef !87
  %i.ev = icmp eq i8 %i.eu, -40, !dbg !2565
  br i1 %i.ev, label %bb.bd, label %bb.bh, !dbg !2565, !prof !143

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bh unwind label %bb.be, !dbg !2566, !noalias !2332

bb.be:                                            ; preds = %bb.bd
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !2567, !noalias !2332
  unreachable, !dbg !2567

bb.bf:                                            ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !2567, !noalias !2334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.j, ptr noundef nonnull align 16 dereferenceable(48) %i.g, i64 48, i1 false), !dbg !2567, !noalias !2334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2568, !noalias !2330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !2568, !noalias !2330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2569, !noalias !2315
  %i.ex = getelementptr inbounds nuw [80 x i8], ptr %i.eg, i64 %.sroa.7.024.i.i.i.i, !dbg !2570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ex, ptr noundef nonnull align 16 dereferenceable(80) %i.j, i64 80, i1 false), !dbg !2571, !noalias !2335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !2572
  %i.ey = icmp eq i64 %i.ek, 0, !dbg !2547
  br i1 %i.ey, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !dbg !2547

bb.bg:                                            ; preds = %bb.bh
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !2573, !noalias !2335
  unreachable, !dbg !2573

bb.bh:                                            ; preds = %bb.bd, %bb.bc, %.loopexit.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.es, %bb.bc ], [ %i.es, %bb.bd ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ]
  store i64 %.sroa.7.024.i.i.i.i, ptr %i.bh, align 8, !dbg !2574, !noalias !2315
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(24) %i.k) #22
          to label %.body.i.i.i unwind label %bb.bg, !dbg !2575, !noalias !2335

bb.bi:                                            ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.v, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.w, i64 48, i1 false), !dbg !2576, !alias.scope !2282, !noalias !2268
  br label %bb.ch, !dbg !2577

bb.bj:                                            ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.v, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.w, i64 48, i1 false), !dbg !2578, !alias.scope !2282, !noalias !2268
  br label %bb.ch, !dbg !2579

bb.bk:                                            ; preds = %bb.p
  %i.fa = load ptr, ptr %i.ax, align 8, !dbg !2580, !alias.scope !2278, !noalias !2268, !nonnull !87, !noundef !87
  %i.fb = load i64, ptr %i.ay, align 16, !dbg !2580, !alias.scope !2278, !noalias !2268, !noundef !87 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !2581, !noalias !2309
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %i.fb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i.i unwind label %.loopexit.split-lp34.loopexit.split-lp, !dbg !2581, !noalias !2304

.noexc17.i.i:                                     ; preds = %bb.bk
  %i.fc = load i64, ptr %i.m, align 8, !dbg !2581, !range !186, !noalias !2309, !noundef !87
  %i.fd = trunc nuw i64 %i.fc to i1, !dbg !2582
  %i.fe = load i64, ptr %i.az, align 8, !dbg !2583, !range !89, !noalias !2309, !noundef !87 ; 3 uses
  br i1 %i.fd, label %bb.cd, label %bb.ce, !dbg !2582, !prof !143

bb.bl:                                            ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.v, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.w, i64 48, i1 false), !dbg !2584, !alias.scope !2282, !noalias !2268
  br label %bb.ch, !dbg !2585

bb.bm:                                            ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.v, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.w, i64 48, i1 false), !dbg !2586, !alias.scope !2282, !noalias !2268
  br label %bb.ch, !dbg !2587

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECslIvKsLJE9Zc_10polars_ffi.exit.thread.i.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i.i
  invoke void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
          to label %.noexc18.i.i unwind label %.loopexit.split-lp34.loopexit.split-lp, !dbg !2588, !noalias !2304

.noexc18.i.i:                                     ; preds = %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECslIvKsLJE9Zc_10polars_ffi.exit.thread.i.i.i
  unreachable, !dbg !2588

bb.bn:                                            ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECslIvKsLJE9Zc_10polars_ffi.exit.thread24.i.i.i
  %.sroa.0.032.i.i.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECslIvKsLJE9Zc_10polars_ffi.exit.thread24.i.i.i ], [ %.sroa.02.0.i.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i.i ]
  %.sroa.4.031.i.i.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECslIvKsLJE9Zc_10polars_ffi.exit.thread24.i.i.i ], [ %.sroa.6.0.i.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i.i ]
  %.sroa.5.030.i.i.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECslIvKsLJE9Zc_10polars_ffi.exit.thread24.i.i.i ], [ %.sroa.7.0.i.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i.i ]
  store ptr %.sroa.0.032.i.i.i, ptr %i.bb, align 8, !dbg !2589, !alias.scope !2277, !noalias !2268
  store i64 %.sroa.4.031.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !dbg !2589, !alias.scope !2277, !noalias !2268
  store i64 %.sroa.5.030.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !dbg !2589, !alias.scope !2277, !noalias !2268
  store i8 31, ptr %i.v, align 16, !dbg !2589, !alias.scope !2277, !noalias !2268
  br label %bb.ch, !dbg !2590

bb.bo:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !2346), !dbg !2591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2592
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dg, i64 23, !dbg !2592
  %i.fg = load i8, ptr %i.ff, align 1, !dbg !2592, !range !142, !alias.scope !2346, !noalias !2304, !noundef !87
  %i.fh = icmp eq i8 %i.fg, -40, !dbg !2593
  br i1 %i.fh, label %bb.bp, label %bb.bq, !dbg !2593

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dg) #21
          to label %.noexc unwind label %.loopexit.split-lp34.loopexit.split-lp, !dbg !2594, !noalias !2304

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !dbg !2595, !noalias !2304
  br label %.noexc, !dbg !2596

.noexc:                                           ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2597, !noalias !2349
  store i64 1, ptr %i.a, align 8, !dbg !2597, !noalias !2349
  store i64 1, ptr %i.bn, align 8, !dbg !2597, !noalias !2349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !2597, !noalias !2349
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !dbg !2598, !noalias !2350
  %i.fi = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 24, 73) 40, i64 noundef 8) #19, !dbg !2599, !noalias !2350 ; 3 uses
  %i.fj = icmp eq ptr %i.fi, null, !dbg !2600
  br i1 %i.fj, label %bb.br, label %_RNCNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue11into_static0CslIvKsLJE9Zc_10polars_ffi.exit, !dbg !2601, !prof !143

bb.br:                                            ; preds = %.noexc
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #24
          to label %.noexc.i unwind label %bb.bs, !dbg !2602, !noalias !2350

.noexc.i:                                         ; preds = %bb.br
  unreachable, !dbg !2602

bb.bs:                                            ; preds = %bb.br
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 39, !dbg !2603
  %i.fm = load i8, ptr %i.fl, align 1, !dbg !2603, !range !142, !alias.scope !2351, !noalias !2349, !noundef !87
  %i.fn = icmp eq i8 %i.fm, -40, !dbg !2604
  br i1 %i.fn, label %bb.bt, label %.thread.i.i, !dbg !2604, !prof !143

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %.thread.i.i unwind label %bb.bu, !dbg !2605, !noalias !2304

bb.bu:                                            ; preds = %bb.bt
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !2606, !noalias !2304
  unreachable, !dbg !2606

_RNCNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue11into_static0CslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fi, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !2607, !noalias !2304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2608, !noalias !2349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2609
  br label %.noexc19.i.i, !dbg !2609

.noexc19.i.i:                                     ; preds = %_RNCNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue11into_static0CslIvKsLJE9Zc_10polars_ffi.exit, %bb.al
  %.sroa.02.0.i.i.i = phi ptr [ null, %bb.al ], [ %i.fi, %_RNCNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue11into_static0CslIvKsLJE9Zc_10polars_ffi.exit ], !dbg !2610
  store i64 %i.de, ptr %i.bb, align 8, !dbg !2611, !alias.scope !2277, !noalias !2268
  store i8 %i.df, ptr %3, align 1, !dbg !2611, !alias.scope !2277, !noalias !2268
  store ptr %.sroa.02.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !dbg !2611, !alias.scope !2277, !noalias !2268
  store i8 18, ptr %i.v, align 16, !dbg !2611, !alias.scope !2277, !noalias !2268
  br label %bb.ch, !dbg !2612

bb.bv:                                            ; preds = %bb.ap
  store i32 %i.dh, ptr %i.bl, align 4, !dbg !2613, !alias.scope !2277, !noalias !2268
  store ptr %i.dj, ptr %i.bb, align 8, !dbg !2613, !alias.scope !2277, !noalias !2268
  store i8 22, ptr %i.v, align 16, !dbg !2613, !alias.scope !2277, !noalias !2268
  br label %bb.ch, !dbg !2614

bb.bw:                                            ; preds = %bb.ap
  call void @llvm.trap(), !dbg !2615
  unreachable, !dbg !2615

bb.bx:                                            ; preds = %bb.ar
  store i32 %i.dm, ptr %i.bl, align 4, !dbg !2616, !alias.scope !2277, !noalias !2268
  store ptr %i.do, ptr %i.bb, align 8, !dbg !2616, !alias.scope !2277, !noalias !2268
  store i8 24, ptr %i.v, align 16, !dbg !2616, !alias.scope !2277, !noalias !2268
  br label %bb.ch, !dbg !2617

bb.by:                                            ; preds = %bb.ar
  call void @llvm.trap(), !dbg !2618
  unreachable, !dbg !2618

.loopexit.split-lp39.loopexit.split-lp:           ; preds = %.noexc16.i.i, %bb.ay
  %lpad.loopexit.split-lp325 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp39.loopexit.split-lp, %bb.bh
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %bb.bh ], [ %lpad.loopexit.split-lp325, %.loopexit.split-lp39.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(24) %i.n) #22
          to label %.thread.i.i unwind label %bb.cc, !dbg !2619, !noalias !2304

.loopexit.i.i.i:                                  ; preds = %bb.bf, %.lr.ph.i.i.i.i, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i
  store i64 %i.eb, ptr %i.bh, align 8, !dbg !2620, !noalias !2315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !2621, !noalias !2309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !2575, !noalias !2315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !2532, !noalias !2309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !2619, !noalias !2309
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !dbg !2622, !noalias !2352
  %i.fp = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 24, 73) 48, i64 noundef 8) #19, !dbg !2623, !noalias !2352 ; 3 uses
  %i.fq = icmp eq ptr %i.fp, null, !dbg !2624
  br i1 %i.fq, label %bb.bz, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxTINtNtB4_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBG_NtNtBZ_5field5FieldEEE3newCslIvKsLJE9Zc_10polars_ffi.exit.i.i.i, !dbg !2625, !prof !143

bb.bz:                                            ; preds = %.loopexit.i.i.i
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #24
          to label %.noexc11.i.i.i unwind label %bb.ca, !dbg !2626, !noalias !2352

.noexc11.i.i.i:                                   ; preds = %bb.bz
  unreachable, !dbg !2626

bb.ca:                                            ; preds = %bb.bz
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBI_NtNtB1i_5field5FieldEEECslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o) #22
          to label %.thread.i.i unwind label %bb.cb, !dbg !2627, !noalias !2304

bb.cb:                                            ; preds = %bb.ca
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !2628, !noalias !2304
  unreachable, !dbg !2628

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxTINtNtB4_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBG_NtNtBZ_5field5FieldEEE3newCslIvKsLJE9Zc_10polars_ffi.exit.i.i.i: ; preds = %.loopexit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fp, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !dbg !2629, !noalias !2304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !2630, !noalias !2309
  store ptr %i.fp, ptr %i.bb, align 8, !dbg !2631, !alias.scope !2277, !noalias !2268
  store i8 30, ptr %i.v, align 16, !dbg !2631, !alias.scope !2277, !noalias !2268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !2632, !noalias !2309
  br label %bb.ch, !dbg !2633

bb.cc:                                            ; preds = %.body.i.i.i
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !2634, !noalias !2304
  unreachable, !dbg !2634

bb.cd:                                            ; preds = %.noexc17.i.i
  %i.fu = load i64, ptr %i.ba, align 8, !dbg !2635, !noalias !2309
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.fe, i64 %i.fu) #24
          to label %.noexc20.i.i unwind label %.loopexit.split-lp34.loopexit.split-lp, !dbg !2636, !noalias !2304

.noexc20.i.i:                                     ; preds = %bb.cd
  unreachable, !dbg !2636

bb.ce:                                            ; preds = %.noexc17.i.i
  %i.fv = load ptr, ptr %i.ba, align 8, !dbg !2637, !noalias !2309, !nonnull !87, !noundef !87 ; 2 uses
  %i.fw = icmp ule i64 %i.fb, %i.fe, !dbg !2638
  call void @llvm.assume(i1 %i.fw), !dbg !2639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !2640, !noalias !2309
  %.not.i.i.i = icmp eq i64 %i.fb, 0, !dbg !2641
  br i1 %.not.i.i.i, label %bb.cf, label %bb.cg, !dbg !2641

bb.cf:                                            ; preds = %bb.cg, %bb.ce
  store i64 %i.fe, ptr %i.bb, align 8, !dbg !2642, !alias.scope !2277, !noalias !2268
  store ptr %i.fv, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !dbg !2642, !alias.scope !2277, !noalias !2268
  store i64 %i.fb, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !dbg !2642, !alias.scope !2277, !noalias !2268
  store i8 33, ptr %i.v, align 16, !dbg !2642, !alias.scope !2277, !noalias !2268
  br label %bb.ch, !dbg !2643

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fv, ptr nonnull align 1 %i.fa, i64 %i.fb, i1 false), !dbg !2644, !noalias !2304
  br label %bb.cf, !dbg !2645

bb.ch:                                            ; preds = %bb.cf, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxTINtNtB4_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBG_NtNtBZ_5field5FieldEEE3newCslIvKsLJE9Zc_10polars_ffi.exit.i.i.i, %bb.bx, %bb.bv, %.noexc19.i.i, %bb.bn, %bb.bm, %bb.bl, %bb.bj, %bb.bi, %bb.aw, %.noexc15.i.i, %bb.au, %bb.at, %bb.as, %bb.aq, %bb.ao, %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !2646, !noalias !2268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !2647, !noalias !2268
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cg, i64 304, !dbg !2647
  %i.fy = load ptr, ptr %i.fx, align 8, !dbg !2647, !invariant.load !87, !alias.scope !2267, !noalias !2260, !nonnull !87
  %i.fz = invoke noundef nonnull align 16 ptr %i.fy(ptr noundef nonnull %i.cm)
          to label %bb.ci unwind label %bb.de, !dbg !2648, !noalias !2272

bb.ci:                                            ; preds = %bb.ch
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.t, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.fz)
          to label %bb.cj unwind label %bb.de, !dbg !2649, !noalias !2272

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bp, ptr noundef nonnull align 16 dereferenceable(48) %i.v, i64 48, i1 false), !dbg !2650, !noalias !2268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.u, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.t, i64 48, i1 false), !dbg !2651, !alias.scope !2356, !noalias !2268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !2652, !noalias !2268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !2653, !noalias !2268
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cg, i64 288, !dbg !2654
  %i.gb = load ptr, ptr %i.ga, align 8, !dbg !2654, !invariant.load !87, !alias.scope !2267, !noalias !2260, !nonnull !87
  %i.gc = invoke noundef nonnull align 8 ptr %i.gb(ptr noundef nonnull %i.cm)
          to label %bb.ck unwind label %bb.dd, !dbg !2655, !noalias !2272 ; 3 uses

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !2656, !noalias !2268
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 23, !dbg !2657
  %i.ge = load i8, ptr %i.gd, align 1, !dbg !2657, !range !142, !noalias !2272, !noundef !87
  %i.gf = icmp eq i8 %i.ge, -40, !dbg !2658
  br i1 %i.gf, label %bb.cl, label %bb.cm, !dbg !2658

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gc)
          to label %bb.cn unwind label %bb.dd, !dbg !2659, !noalias !2272

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.gc, i64 24, i1 false), !dbg !2660, !noalias !2272
  br label %bb.cn, !dbg !2661

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !2662, !noalias !2268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !2663, !noalias !2268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.s, ptr noundef nonnull align 16 dereferenceable(96) %i.u, i64 96, i1 false), !dbg !2664, !noalias !2268
  store i64 1, ptr %i.br, align 8, !dbg !2665, !alias.scope !2360, !noalias !2268
  store i32 3, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !dbg !2665, !alias.scope !2360, !noalias !2268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !2666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2667, !noalias !2361
  store i32 3, ptr %i.bs, align 8, !dbg !2668, !noalias !2361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2669, !noalias !2361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2670, !noalias !2363
  store ptr %i.cf, ptr %i.c, align 8, !dbg !2671, !noalias !2363
  store ptr %i.cg, ptr %i.bt, align 8, !dbg !2671, !noalias !2363
  %i.gg = load atomic i32, ptr %i.bs acquire, align 8, !dbg !2672, !noalias !2364
  %i.gh = icmp eq i32 %i.gg, 0, !dbg !2673
  br i1 %i.gh, label %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i, label %bb.co, !dbg !2673, !prof !2275

bb.co:                                            ; preds = %bb.cn
  invoke void @_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECslIvKsLJE9Zc_10polars_ffi(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i unwind label %bb.cp, !dbg !2674, !noalias !2365

bb.cp:                                            ; preds = %bb.co
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2366), !dbg !2675
  %i.gj = load ptr, ptr %i.c, align 8, !dbg !2676, !alias.scope !2366, !noalias !2363, !noundef !87 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, null, !dbg !2676
  br i1 %i.gk, label %.thread.i.i.i, label %bb.cq, !dbg !2676

bb.cq:                                            ; preds = %bb.cp
  %i.gl = atomicrmw add ptr %i.gj, i64 -1 release, align 8, !dbg !2677, !noalias !2367
  %i.gm = icmp eq i64 %i.gl, 1, !dbg !2678
  br i1 %i.gm, label %bb.cr, label %.thread.i.i.i, !dbg !2678

bb.cr:                                            ; preds = %bb.cq
  fence acquire, !dbg !2679
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #21
          to label %.thread.i.i.i unwind label %bb.cs, !dbg !2680, !noalias !2365

_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i: ; preds = %bb.co, %bb.cn
  %i.gn = load ptr, ptr %i.c, align 8, !dbg !2681, !noalias !2363, !noundef !87 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.gn, null, !dbg !2681
  br i1 %.not.i.i.i.i, label %bb.cy, label %bb.ct, !dbg !2682

bb.cs:                                            ; preds = %bb.cr
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !2683, !noalias !2365
  unreachable, !dbg !2683

bb.ct:                                            ; preds = %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECslIvKsLJE9Zc_10polars_ffi.exit.i.i.i.i
  %i.gp = load ptr, ptr %i.bt, align 8, !dbg !2684, !noalias !2363, !nonnull !87, !align !146, !noundef !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2675, !noalias !2363
  store ptr %i.gn, ptr %i.d, align 8, !dbg !2685, !noalias !2361
  %i.gq = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !2685
  store ptr %i.gp, ptr %i.gq, align 8, !dbg !2685, !noalias !2361
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
          to label %bb.cw unwind label %bb.cu, !dbg !2686, !noalias !2368

bb.cu:                                            ; preds = %bb.ct
end_hunk_1
begin_hunk_2_@_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
  store i8 3, ptr %0, align 16, !dbg !2888
  br label %bb.aj, !dbg !2888

bb.f:                                             ; preds = %bb.a
  store i8 4, ptr %0, align 16, !dbg !2888
  br label %bb.aj, !dbg !2888

bb.g:                                             ; preds = %bb.a
  store i8 5, ptr %0, align 16, !dbg !2888
  br label %bb.aj, !dbg !2888

bb.h:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 16, !dbg !2888
  br label %bb.aj, !dbg !2888

bb.i:                                             ; preds = %bb.a
  store i8 7, ptr %0, align 16, !dbg !2888
  br label %bb.aj, !dbg !2888

bb.j:                                             ; preds = %bb.a
  store i8 8, ptr %0, align 16, !dbg !2888
  br label %bb.aj, !dbg !2888

bb.k:                                             ; preds = %bb.a
  store i8 9, ptr %0, align 16, !dbg !2888
  br label %bb.aj, !dbg !2888

bb.l:                                             ; preds = %bb.a
  store i8 10, ptr %0, align 16, !dbg !2888
  br label %bb.aj, !dbg !2888

bb.m:                                             ; preds = %bb.a
  store i8 11, ptr %0, align 16, !dbg !2888
  br label %bb.aj, !dbg !2888

bb.n:                                             ; preds = %bb.a
  store i8 12, ptr %0, align 16, !dbg !2888
  br label %bb.aj, !dbg !2888

bb.o:                                             ; preds = %bb.a
  store i8 13, ptr %0, align 16, !dbg !2888
  br label %bb.aj, !dbg !2888

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2889
  br label %bb.aj, !dbg !2890

bb.q:                                             ; preds = %bb.a
  store i8 15, ptr %0, align 16, !dbg !2888
  br label %bb.aj, !dbg !2888

bb.r:                                             ; preds = %bb.a
  store i8 16, ptr %0, align 16, !dbg !2888
  br label %bb.aj, !dbg !2888

bb.s:                                             ; preds = %bb.a
  store i8 17, ptr %0, align 16, !dbg !2888
  br label %bb.aj, !dbg !2888

bb.t:                                             ; preds = %bb.a
  store i8 18, ptr %0, align 16, !dbg !2888
  br label %bb.aj, !dbg !2888

bb.u:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !2891
  %i.g = load i8, ptr %i.f, align 1, !dbg !2891, !range !226, !noundef !87
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2892 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 31, !dbg !2892
  %i.j = load i8, ptr %i.i, align 1, !dbg !2892, !range !135, !noundef !87 ; 2 uses
  switch i8 %i.j, label %bb.am [
    i8 -38, label %bb.ak
    i8 -40, label %bb.al
  ], !dbg !2893

bb.v:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2894
  br label %bb.aj, !dbg !2890

bb.w:                                             ; preds = %bb.a
  store i8 21, ptr %0, align 16, !dbg !2888
  br label %bb.aj, !dbg !2888

bb.x:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2895
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2834), !dbg !2896
  %i.l = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCslIvKsLJE9Zc_10polars_ffi(), !dbg !2897, !noalias !2834, !inline_history !2757 ; 3 uses
  %i.m = load ptr, ptr %i.k, align 16, !dbg !2898, !alias.scope !2834, !nonnull !87, !noundef !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2899, !noalias !2836
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.m) #23
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslIvKsLJE9Zc_10polars_ffi.exit unwind label %bb.y, !dbg !2900, !noalias !2834, !inline_history !2767

common.resume.sink.split:                         ; preds = %bb.y, %bb.aa
  %.sink = phi ptr [ %i.t, %bb.aa ], [ %i.l, %bb.y ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.v, %bb.aa ], [ %i.n, %bb.y ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 48, i64 noundef 16) #19, !dbg !2901, !noalias !87
  br label %common.resume, !dbg !2843

common.resume:                                    ; preds = %common.resume.sink.split, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op, !dbg !2843

bb.y:                                             ; preds = %bb.x
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !2902

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslIvKsLJE9Zc_10polars_ffi.exit: ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.l, ptr noundef nonnull align 16 dereferenceable(48) %i.c, i64 48, i1 false), !dbg !2903, !noalias !2836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2904, !noalias !2836
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2905
  %i.p = load i64, ptr %i.o, align 8, !dbg !2905, !noundef !87
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2906
  store ptr %i.l, ptr %i.q, align 16, !dbg !2906
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2906
  store i64 %i.p, ptr %i.r, align 8, !dbg !2906
  store i8 22, ptr %0, align 16, !dbg !2906
  br label %bb.aj, !dbg !2890

bb.z:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2850), !dbg !2908
  %i.t = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCslIvKsLJE9Zc_10polars_ffi(), !dbg !2909, !noalias !2850, !inline_history !2757 ; 3 uses
  %i.u = load ptr, ptr %i.s, align 8, !dbg !2910, !alias.scope !2850, !nonnull !87, !noundef !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2911, !noalias !2851
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.u) #23
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslIvKsLJE9Zc_10polars_ffi.exit17 unwind label %bb.aa, !dbg !2912, !noalias !2850, !inline_history !2767

bb.aa:                                            ; preds = %bb.z
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !2913

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslIvKsLJE9Zc_10polars_ffi.exit17: ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !2914, !noalias !2851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2915, !noalias !2851
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2916
  store ptr %i.t, ptr %i.w, align 8, !dbg !2916
  store i8 23, ptr %0, align 16, !dbg !2916
  br label %bb.aj, !dbg !2890

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2917
  br label %bb.aj, !dbg !2890

bb.ac:                                            ; preds = %bb.a
  store i8 25, ptr %0, align 16, !dbg !2888
  br label %bb.aj, !dbg !2888

bb.ad:                                            ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2918
  %i.y = load ptr, ptr %i.x, align 8, !dbg !2918, !nonnull !87, !noundef !87 ; 2 uses
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !dbg !2919
  %i.aa = icmp slt i64 %i.z, 0, !dbg !2920
  br i1 %i.aa, label %bb.ap, label %bb.ao, !dbg !2920

bb.ae:                                            ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2921
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !2921, !nonnull !87, !noundef !87 ; 2 uses
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !dbg !2922
  %i.ae = icmp slt i64 %i.ad, 0, !dbg !2923
  br i1 %i.ae, label %bb.at, label %bb.as, !dbg !2923

bb.af:                                            ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2924
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2925
  tail call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af), !dbg !2926
  store i8 28, ptr %0, align 16, !dbg !2925
  br label %bb.aj, !dbg !2890

bb.ag:                                            ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2927
  %i.ai = tail call { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extensionNtB2_21ExtensionTypeInstanceNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah), !dbg !2928 ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0, !dbg !2928 ; 3 uses
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1, !dbg !2928 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2865), !dbg !2929
  %i.al = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCslIvKsLJE9Zc_10polars_ffi()
          to label %.noexc unwind label %bb.aw, !dbg !2930, !noalias !2865, !inline_history !2757 ; 3 uses

.noexc:                                           ; preds = %bb.ag
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !2931
  %i.an = load ptr, ptr %i.am, align 8, !dbg !2932, !alias.scope !2865, !nonnull !87, !noundef !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2933, !noalias !2866
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.an) #23
          to label %bb.ax unwind label %bb.ah, !dbg !2934, !noalias !2865, !inline_history !2767

bb.ah:                                            ; preds = %.noexc
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef 48, i64 noundef 16) #19, !dbg !2935, !noalias !2865
  br label %.body, !dbg !2936

bb.ai:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2937
  br label %bb.aj, !dbg !2890

bb.aj:                                            ; preds = %bb.ax, %bb.au, %bb.aq, %bb.ak, %bb.ai, %bb.af, %bb.ac, %bb.ab, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslIvKsLJE9Zc_10polars_ffi.exit17, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslIvKsLJE9Zc_10polars_ffi.exit, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !2938

bb.ak:                                            ; preds = %bb.u, %bb.an
  %.sroa.4.0 = phi i8 [ %.sroa.48.0.copyload, %bb.an ], [ %i.j, %bb.u ], !dbg !2939
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !2940
  store i8 %i.g, ptr %i.ap, align 1, !dbg !2940
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.aq, ptr noundef nonnull align 8 dereferenceable(23) %i.d, i64 23, i1 false), !dbg !2940
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !2940
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 1, !dbg !2940
  store i8 19, ptr %0, align 16, !dbg !2940
  br label %bb.aj, !dbg !2890

bb.al:                                            ; preds = %bb.u
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) #21, !dbg !2941
  br label %bb.an, !dbg !2941

bb.am:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !2942
  br label %bb.an, !dbg !2943

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !2944
  %.sroa.48.0.copyload = load i8, ptr %.sroa.48.0..sroa_idx, align 1, !dbg !2944
  br label %bb.ak, !dbg !2945

bb.ao:                                            ; preds = %bb.ad
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2946
  %i.as = load ptr, ptr %i.ar, align 16, !dbg !2946, !nonnull !87, !noundef !87 ; 2 uses
  %i.at = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !dbg !2947
  %i.au = icmp slt i64 %i.at, 0, !dbg !2948
  br i1 %i.au, label %bb.ar, label %bb.aq, !dbg !2948

bb.ap:                                            ; preds = %bb.ad
  tail call void @llvm.trap(), !dbg !2949
  unreachable, !dbg !2949

bb.aq:                                            ; preds = %bb.ao
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2950
  store ptr %i.y, ptr %i.av, align 8, !dbg !2950
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2950
  store ptr %i.as, ptr %i.aw, align 16, !dbg !2950
  store i8 26, ptr %0, align 16, !dbg !2950
  br label %bb.aj, !dbg !2890

bb.ar:                                            ; preds = %bb.ao
  tail call void @llvm.trap(), !dbg !2951
  unreachable, !dbg !2951

bb.as:                                            ; preds = %bb.ae
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2952
  %i.ay = load ptr, ptr %i.ax, align 16, !dbg !2952, !nonnull !87, !noundef !87 ; 2 uses
  %i.az = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8, !dbg !2953
  %i.ba = icmp slt i64 %i.az, 0, !dbg !2954
  br i1 %i.ba, label %bb.av, label %bb.au, !dbg !2954

bb.at:                                            ; preds = %bb.ae
  tail call void @llvm.trap(), !dbg !2955
  unreachable, !dbg !2955

bb.au:                                            ; preds = %bb.as
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2956
  store ptr %i.ac, ptr %i.bb, align 8, !dbg !2956
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2956
  store ptr %i.ay, ptr %i.bc, align 16, !dbg !2956
  store i8 27, ptr %0, align 16, !dbg !2956
  br label %bb.aj, !dbg !2890

bb.av:                                            ; preds = %bb.as
  tail call void @llvm.trap(), !dbg !2957
  unreachable, !dbg !2957

bb.aw:                                            ; preds = %bb.ag
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !2958

.body:                                            ; preds = %bb.ah, %bb.aw
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.aw ], [ %i.ao, %bb.ah ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceECslIvKsLJE9Zc_10polars_ffi(ptr %i.aj, ptr nonnull %i.ak) #22
          to label %common.resume unwind label %bb.ay, !dbg !2958

bb.ax:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.al, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !2959, !noalias !2866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2960, !noalias !2866
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj), "nonnull"(ptr %i.ak) ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2961
  store ptr %i.aj, ptr %i.be, align 8, !dbg !2961
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2961
  store ptr %i.ak, ptr %i.bf, align 16, !dbg !2961
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2961
  store ptr %i.al, ptr %i.bg, align 8, !dbg !2961
  store i8 29, ptr %0, align 16, !dbg !2961
  br label %bb.aj, !dbg !2890

bb.ay:                                            ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !2888
  unreachable, !dbg !2888
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECslIvKsLJE9Zc_10polars_ffi(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslIvKsLJE9Zc_10polars_ffi(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow3ffi6schemaNtNtB6_9generated11ArrowSchemaNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #10

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslIvKsLJE9Zc_10polars_ffi(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value20struct_to_avs_static(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef, ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance), i64 noundef range(i64 0, 115292150460684698)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE8grow_oneBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #9

end_hunk_2
