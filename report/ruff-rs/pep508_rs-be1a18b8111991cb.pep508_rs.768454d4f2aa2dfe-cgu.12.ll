Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/pep508_rs-be1a18b8111991cb.pep508_rs.768454d4f2aa2dfe-cgu.12?download=true
inline.NumInlined: 198
inline.NumDeleted: 112
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify13collect_edgesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1Q_5slice4iter4IterTINtCs6fe3SNoHupJ_14version_ranges6RangesBZ_ENtNtB4_7algebra6NodeIdEENCNvMsr_NtB4_4treeNtB4b_17VersionMarkerTree5edges0EEB6_:bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %.sroa.0.0.copyload, %.sroa.5.0.copyload
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.d, %bb.i, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit8
  %.sroa.0.013 = phi ptr [ %.sroa.0.0.copyload, %.lr.ph ], [ %i.q, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit8 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 40
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !134, !noalias !137, !noundef !4
  %i.t = load i64, ptr %i.i, align 8, !noalias !140, !noundef !4
  %i.u = and i64 %i.t, 1
  %spec.select.i.i = xor i64 %i.u, %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs0_Cs6fe3SNoHupJ_14version_rangesINtB5_6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionE14bounding_rangeCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.013)
          to label %bb.c unwind label %.loopexit

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit8, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.f, align 8, !range !129, !noundef !4 ; 2 uses
  %.not5 = icmp eq i64 %i.v, -1
  br i1 %.not5, label %bb.e, label %bb.d, !prof !130

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.j, align 8
  %i.x = load i64, ptr %i.k, align 8, !range !28, !noundef !4
  %i.y = load ptr, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = invoke { i64, ptr } @_RNvMsd_NtNtCs4NRVxsYgnAr_4core3ops5rangeINtB5_5BoundRNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionE6clonedCsaaRuwTSDeTG_9pep508_rs(i64 noundef %i.v, ptr %i.w)
          to label %bb.g unwind label %.loopexit  ; 2 uses

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #16
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.aa = extractvalue { i64, ptr } %i.z, 0       ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.z, 1       ; 2 uses
  store i64 %i.aa, ptr %i.c, align 8
  store ptr %i.ab, ptr %i.m, align 8
  %i.ac = invoke { i64, ptr } @_RNvMsd_NtNtCs4NRVxsYgnAr_4core3ops5rangeINtB5_5BoundRNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionE6clonedCsaaRuwTSDeTG_9pep508_rs(i64 noundef %i.x, ptr %i.y)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops5range5BoundNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef align 8 dereferenceable(16) %i.c) #15
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit unwind label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.ae = extractvalue { i64, ptr } %i.ac, 0
  %i.af = extractvalue { i64, ptr } %i.ac, 1
  store i64 %i.aa, ptr %i.d, align 8
  store ptr %i.ab, ptr %i.n, align 8
  store i64 %i.ae, ptr %i.o, align 8
  store ptr %i.af, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvMs0_Cs6fe3SNoHupJ_14version_rangesINtB6_6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionE17from_range_boundsTINtNtNtCs4NRVxsYgnAr_4core3ops5range5BoundBN_EB1Q_EBN_ECsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE5entryBT_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g, i64 noundef %spec.select.i.i)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.l, %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATINtNtNtCs4NRVxsYgnAr_4core3ops5range5BoundNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEBJ_Ej1_ENtNtBO_4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit unwind label %bb.o

bb.l:                                             ; preds = %bb.j
  invoke void @_RINvMNtNtCs5e9M2GLoJMY_8indexmap3map5entryINtB3_5EntryNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEE10and_modifyNCINvNtBU_8simplify13collect_edgesB2m_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB43_5slice4iter4IterTB1I_NtNtBU_7algebra6NodeIdEENCNvMsr_BS_NtBS_17VersionMarkerTree5edges0EE0EBW_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = invoke noundef nonnull align 8 ptr @_RINvMNtNtCs5e9M2GLoJMY_8indexmap3map5entryINtB3_5EntryNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEE14or_insert_withNCINvNtBU_8simplify13collect_edgesB2m_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB47_5slice4iter4IterTB1I_NtNtBU_7algebra6NodeIdEENCNvMsr_BS_NtBS_17VersionMarkerTree5edges0EEs_0EBW_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.n unwind label %bb.k       ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATINtNtNtCs4NRVxsYgnAr_4core3ops5range5BoundNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEBJ_Ej1_ENtNtBO_4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit8 unwind label %.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit8: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ai = icmp eq ptr %i.q, %.sroa.5.0.copyload
  br i1 %i.ai, label %._crit_edge, label %bb.b

bb.o:                                             ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit, %bb.h
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit: ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %i.ad, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1m_(ptr noalias noundef align 8 dereferenceable(56) %i.g) #15
          to label %bb.p unwind label %bb.o

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11collect_dnf(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [40 x i8], align 8                ; 10 uses
  %.sroa.555 = alloca [24 x i8], align 8          ; 10 uses
  %i.p = alloca [40 x i8], align 8                ; 11 uses
  %i.q = alloca [8 x i8], align 8                 ; 8 uses
  %i.r = alloca [40 x i8], align 8                ; 10 uses
  %i.s = alloca [40 x i8], align 8                ; 14 uses
  %i.t = alloca [8 x i8], align 8                 ; 8 uses
  %i.u = alloca [40 x i8], align 8                ; 10 uses
  %i.v = alloca [40 x i8], align 8                ; 14 uses
  %i.w = alloca [8 x i8], align 8                 ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [40 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 6 uses
  %i.aa = alloca [64 x i8], align 8               ; 11 uses
  %i.ab = alloca [64 x i8], align 8               ; 2 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [40 x i8], align 8               ; 8 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [72 x i8], align 8               ; 10 uses
  %i.ag = alloca [8 x i8], align 8                ; 5 uses
  %.sroa.722 = alloca [72 x i8], align 8          ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [56 x i8], align 8               ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [40 x i8], align 8               ; 8 uses
  %i.am = alloca [32 x i8], align 8               ; 8 uses
  %i.an = alloca [32 x i8], align 8               ; 2 uses
  %i.ao = alloca [40 x i8], align 8               ; 5 uses
  %i.ap = alloca [40 x i8], align 8               ; 8 uses
  %i.aq = alloca [40 x i8], align 8               ; 8 uses
  %i.ar = alloca [32 x i8], align 8               ; 8 uses
  %i.as = alloca [40 x i8], align 8               ; 11 uses
  %i.at = alloca [8 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [40 x i8], align 8            ; 6 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [56 x i8], align 8               ; 4 uses
  %i.ax = alloca [32 x i8], align 8               ; 7 uses
  %i.ay = alloca [24 x i8], align 8               ; 5 uses
  %i.az = alloca [48 x i8], align 8               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @_RNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_10MarkerTree4kind(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.ba = load i64, ptr %i.az, align 8, !range !141, !noundef !4
  switch i64 %i.ba, label %default.unreachable510 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
  ]

default.unreachable510:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !4 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 230584300921369396
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %i.bc, 0
  br i1 %i.be, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEE8push_mutBO_.exit, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit333.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit324.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit315.1, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtB9_6string6StringEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  ret void

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.bg = load ptr, ptr %i.ax, align 8, !nonnull !4, !align !142, !noundef !4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !4
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.bg, i64 %i.bi
  store ptr %i.bg, ptr %i.av, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %i.ax, ptr %i.bl, align 8
  call void @_RINvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify13collect_edgesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1Q_5slice4iter4IterTINtCs6fe3SNoHupJ_14version_ranges6RangesBZ_ENtNtB4_7algebra6NodeIdEENCNvMsr_NtB4_4treeNtB4b_17VersionMarkerTree5edges0EEB6_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @_RNvXs0_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB7_8IndexMapNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterB10_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.au, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.bo = load ptr, ptr %i.bm, align 8, !alias.scope !143, !noalias !146, !nonnull !4, !noundef !4
  %i.bp = load ptr, ptr %i.bn, align 8, !alias.scope !143, !noalias !146, !nonnull !4, !noundef !4 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bo
  br i1 %i.bq, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit, label %.lr.ph455

.lr.ph455:                                        ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.co = load ptr, ptr %i.ak, align 8, !nonnull !4, !align !142, !noundef !4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !4
  %i.cr = getelementptr inbounds nuw [80 x i8], ptr %i.co, i64 %i.cq
  store ptr %i.co, ptr %i.ai, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.cr, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ak, ptr %i.ct, align 8
  call void @_RINvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify13collect_edgesNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterTINtCs6fe3SNoHupJ_14version_ranges6RangesBZ_ENtNtB4_7algebra6NodeIdEENCNvMsu_NtB4_4treeNtB44_16StringMarkerTree8children0EEB6_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @_RNvXs0_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB7_8IndexMapNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCscdodAO9FK5_5alloc6string6StringENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterB10_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.722)
  %i.cw = load ptr, ptr %i.cu, align 8, !alias.scope !148, !noalias !151, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.cv, align 8, !alias.scope !148, !noalias !151, !nonnull !4, !noundef !4 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cw
  br i1 %i.cy, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtB9_6string6StringEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit, label %.lr.ph450

.lr.ph450:                                        ; preds = %bb.e
  %i.cz = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.da = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %.sroa.2.0..sroa_idx.i276 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx.i277 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ad, i64 33
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %.sroa.9.0..sroa_idx345 = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.y, i64 33
  %i.dq = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %bb.ci

bb.f:                                             ; preds = %bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.du = load i8, ptr %i.dt, align 8, !range !153, !noundef !4 ; 2 uses
  %i.dv = load ptr, ptr %i.ds, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !4 ; 9 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %3 = load i64, ptr %i.dy, align 8, !noundef !4
  %4 = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.dz = load i64, ptr %4, align 8, !noundef !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %.not215 = icmp eq i64 %i.dx, 0                 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.v, i64 33 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.sroa.5196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 %3, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef %i.dx, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.eh = load i64, ptr %i.n, align 8, !range !154, !noundef !4
  %i.ei = trunc nuw i64 %i.eh to i1
  br i1 %i.ei, label %bb.dx, label %bb.dy, !prof !130

bb.g:                                             ; preds = %bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.el = load i8, ptr %i.ek, align 8, !range !153, !noundef !4 ; 2 uses
  %i.em = load ptr, ptr %i.ej, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !noundef !4 ; 9 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %5 = load i64, ptr %i.ep, align 8, !noundef !4
  %6 = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.eq = load i64, ptr %6, align 8, !noundef !4
  %i.er = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %.not213 = icmp eq i64 %i.eo, 0                 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.s, i64 33 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.4201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.sroa.5202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 %5, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %i.eo, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ey = load i64, ptr %i.m, align 8, !range !154, !noundef !4
  %i.ez = trunc nuw i64 %i.ey to i1
  br i1 %i.ez, label %bb.eo, label %bb.ep, !prof !130

bb.h:                                             ; preds = %bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !nonnull !4, !align !142, !noundef !4 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %7 = load i64, ptr %i.fc, align 8, !noundef !4
  %8 = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.fd = load i64, ptr %8, align 8, !noundef !4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %7, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.555)
  %i.fi = load i64, ptr %i.fb, align 8, !range !154, !noundef !4
  %i.fj = trunc nuw i64 %i.fi to i1
  br i1 %i.fj, label %bb.ff, label %bb.fg

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !155, !noalias !158, !noundef !4 ; 3 uses
  %i.fm = load i64, ptr %1, align 8, !range !160, !alias.scope !155, !noalias !158, !noundef !4
  %i.fn = icmp eq i64 %i.fl, %i.fm
  br i1 %i.fn, label %bb.j, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEE8push_mutBO_.exit

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEE8grow_oneB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEE8push_mutBO_.exit unwind label %bb.k, !noalias !158

bb.k:                                             ; preds = %bb.j
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay) #15
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCscdodAO9FK5_5alloc6string6StringEECsaaRuwTSDeTG_9pep508_rs.exit, %bb.eb, %bb.es, %bb.fj, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.fo, %bb.k ], [ %i.rm, %bb.es ], [ %.pn227.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit ], [ %.pn220.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCscdodAO9FK5_5alloc6string6StringEECsaaRuwTSDeTG_9pep508_rs.exit ], [ %i.pw, %bb.eb ], [ %i.sx, %bb.fj ]
  resume { ptr, i32 } %common.resume.op

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEE8push_mutBO_.exit: ; preds = %bb.i, %bb.j
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !155, !noalias !158, !nonnull !4, !noundef !4
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %i.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fs, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  %i.ft = add i64 %i.fl, 1
  store i64 %i.ft, ptr %i.fk, align 8, !alias.scope !155, !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit: ; preds = %.body, %bb.m
  %.pn227.pn = phi { ptr, i32 } [ %i.fu, %bb.m ], [ %.pn227, %.body ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1y_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %common.resume unwind label %bb.bl

bb.m:                                             ; preds = %.invoke515
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit

bb.n:                                             ; preds = %.lr.ph455, %.backedge
  %i.fv = phi ptr [ %i.bp, %.lr.ph455 ], [ %i.lm, %.backedge ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  store ptr %i.fw, ptr %i.bn, align 8, !alias.scope !161, !noalias !146
  %.sroa.6347.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.sroa.6347.8.copyload = load i64, ptr %.sroa.6347.8..sroa_idx, align 8, !noalias !161
  %.sroa.7348.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7348.8..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 %.sroa.6347.8.copyload, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.fx = load i64, ptr %i.br, align 8, !alias.scope !166, !noalias !169, !noundef !4 ; 2 uses
  %i.fy = icmp ugt i64 %i.fx, 1
  %i.fz = load i64, ptr %i.bs, align 8, !alias.scope !166, !noalias !169
  %.sink9.i.i = select i1 %i.fy, i64 %i.fz, i64 %i.fx
  %i.ga = icmp eq i64 %.sink9.i.i, 0
  br i1 %i.ga, label %_RINvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify16range_inequalityNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEB6_.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !172
  invoke void @_RNvMs0_Cs6fe3SNoHupJ_14version_rangesINtB5_6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionE14bounding_rangeCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.as)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.o
  %i.gb = load i64, ptr %i.i, align 8, !range !129, !noalias !172, !noundef !4
  %i.gc = icmp eq i64 %i.gb, 2
  %.val.i = load i64, ptr %i.bt, align 8, !range !28, !noalias !172
  %i.gd = icmp eq i64 %.val.i, 2
  %or.cond.i = select i1 %i.gc, i1 %i.gd, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !172
  br i1 %or.cond.i, label %_RNvXs1h_NtNtCs4NRVxsYgnAr_4core3ops5rangeINtB6_5BoundRNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtNtBa_3cmp9PartialEq2eqCsaaRuwTSDeTG_9pep508_rs.exit18.thread.i, label %_RINvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify16range_inequalityNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEB6_.exit.thread

_RNvXs1h_NtNtCs4NRVxsYgnAr_4core3ops5rangeINtB6_5BoundRNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtNtBa_3cmp9PartialEq2eqCsaaRuwTSDeTG_9pep508_rs.exit18.thread.i: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !172
  store i64 0, ptr %i.h, align 8, !noalias !172
  store ptr inttoptr (i64 8 to ptr), ptr %i.bu, align 8, !noalias !172
  store i64 0, ptr %i.bv, align 8, !noalias !172
  %i.ge = invoke { ptr, ptr } @_RNvMs3_Cs6fe3SNoHupJ_14version_rangesINtB5_6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionE4iterCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.as)
          to label %bb.q unwind label %.loopexit.split-lp.i, !noalias !173 ; 2 uses

.loopexit.i:                                      ; preds = %bb.ac, %bb.z, %bb.r
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp.i:                             ; preds = %_RNvXs1h_NtNtCs4NRVxsYgnAr_4core3ops5rangeINtB6_5BoundRNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtNtBa_3cmp9PartialEq2eqCsaaRuwTSDeTG_9pep508_rs.exit18.thread.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef align 8 dereferenceable(24) %i.h) #15
          to label %.body unwind label %bb.ae, !noalias !173

bb.q:                                             ; preds = %_RNvXs1h_NtNtCs4NRVxsYgnAr_4core3ops5rangeINtB6_5BoundRNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtNtBa_3cmp9PartialEq2eqCsaaRuwTSDeTG_9pep508_rs.exit18.thread.i
  %i.gf = extractvalue { ptr, ptr } %i.ge, 0
  %i.gg = extractvalue { ptr, ptr } %i.ge, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !172
  store ptr %i.gf, ptr %i.g, align 8, !noalias !172
  store ptr %i.gg, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !172
  store ptr null, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !172
  br label %bb.r

bb.r:                                             ; preds = %bb.ad, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !172
  invoke void @_RNvXs5_NtCsjuSkmafxH5F_9itertools10tuple_implINtB5_12TupleWindowsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterTINtNtNtB1a_3ops5range5BoundNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEB2h_EENCNvMs3_Cs6fe3SNoHupJ_14version_rangesINtB3F_6RangesB2I_E4iter0ETTRB2h_B4B_EB4A_EENtNtNtB18_6traits8iterator8Iterator4nextCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.s unwind label %.loopexit.i, !noalias !173

bb.s:                                             ; preds = %bb.r
  %i.gh = load ptr, ptr %i.f, align 8, !noalias !172, !noundef !4
  %.not4.i = icmp eq ptr %i.gh, null
  br i1 %.not4.i, label %_RINvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify16range_inequalityNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEB6_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gi = load ptr, ptr %i.bw, align 8, !noalias !172, !nonnull !4, !align !142, !noundef !4 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !range !28, !noalias !173, !noundef !4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 3 uses
  %i.gl = icmp eq i64 %i.gj, 1
  br i1 %i.gl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gm = load ptr, ptr %i.bx, align 8, !noalias !172, !nonnull !4, !align !142, !noundef !4 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !range !28, !noalias !173, !noundef !4
  %i.go = icmp eq i64 %i.gn, 1
  br i1 %i.go, label %bb.y, label %bb.v

bb.v:                                             ; preds = %_RNvXs8_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7VersionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, %.noexc.i, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !172
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit.i unwind label %bb.w, !noalias !173

bb.w:                                             ; preds = %bb.v
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.x, !noalias !173

bb.x:                                             ; preds = %bb.w
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !173
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.noexc233 unwind label %.loopexit.split-lp.loopexit

.noexc233:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEECsaaRuwTSDeTG_9pep508_rs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !172
  br label %_RINvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify16range_inequalityNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEB6_.exit.thread

bb.y:                                             ; preds = %bb.u
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.gs = load ptr, ptr %i.gk, align 8, !alias.scope !174, !noalias !179, !nonnull !4, !noundef !4 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !range !28, !noalias !180, !noundef !4
  %.not.i.i = icmp eq i64 %i.gu, 2
  br i1 %.not.i.i, label %bb.aa, label %bb.z, !prof !181

bb.z:                                             ; preds = %bb.aa, %bb.y
  %i.gv = invoke noundef i8 @_RNvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7Version8cmp_slow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gr)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !173

.noexc.i:                                         ; preds = %bb.z
  %i.gw = icmp eq i8 %i.gv, 0
  br i1 %i.gw, label %bb.ab, label %bb.v

bb.aa:                                            ; preds = %bb.y
  %i.gx = load ptr, ptr %i.gr, align 8, !alias.scope !177, !noalias !182, !nonnull !4, !noundef !4 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !range !28, !noalias !180, !noundef !4
  %.not1.i.i = icmp eq i64 %i.gz, 2
  br i1 %.not1.i.i, label %_RNvXs8_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7VersionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, label %bb.z, !prof !181

_RNvXs8_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7VersionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.aa
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 56
  %i.hb = load i64, ptr %i.ha, align 8, !noalias !180, !noundef !4
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 56
end_hunk_0
begin_hunk_1_@_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11collect_dnf:bb.a
  br i1 %.not217, label %.loopexit430, label %bb.dm

bb.dm:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree14MarkerOperatorNtNtCscdodAO9FK5_5alloc6string6StringEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2x_5ChainINtB3_8IntoIterBI_EB3d_ENtNtNtB2B_6traits8iterator8Iterator4next0EBP_.exit.thread403, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree14MarkerOperatorNtNtCscdodAO9FK5_5alloc6string6StringEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2x_5ChainINtB3_8IntoIterBI_EB3d_ENtNtNtB2B_6traits8iterator8Iterator4next0EBP_.exit
  %.sroa.0338.0408 = phi i8 [ %.sroa.0353.0.extract.trunc, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree14MarkerOperatorNtNtCscdodAO9FK5_5alloc6string6StringEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2x_5ChainINtB3_8IntoIterBI_EB3d_ENtNtNtB2B_6traits8iterator8Iterator4next0EBP_.exit.thread403 ], [ %.sroa.0338.0.copyload339, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree14MarkerOperatorNtNtCscdodAO9FK5_5alloc6string6StringEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2x_5ChainINtB3_8IntoIterBI_EB3d_ENtNtNtB2B_6traits8iterator8Iterator4next0EBP_.exit ]
  %.sroa.6342.0407 = phi i64 [ %i.oz, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree14MarkerOperatorNtNtCscdodAO9FK5_5alloc6string6StringEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2x_5ChainINtB3_8IntoIterBI_EB3d_ENtNtNtB2B_6traits8iterator8Iterator4next0EBP_.exit.thread403 ], [ %i.pb, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree14MarkerOperatorNtNtCscdodAO9FK5_5alloc6string6StringEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2x_5ChainINtB3_8IntoIterBI_EB3d_ENtNtNtB2B_6traits8iterator8Iterator4next0EBP_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 %.sroa.6342.0407, ptr %i.z, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.pc = load i8, ptr %i.dh, align 8, !range !153, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %bb.dq unwind label %bb.dp

.loopexit430:                                     ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree14MarkerOperatorNtNtCscdodAO9FK5_5alloc6string6StringEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2x_5ChainINtB3_8IntoIterBI_EB3d_ENtNtNtB2B_6traits8iterator8Iterator4next0EBP_.exit, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree14MarkerOperatorNtNtCscdodAO9FK5_5alloc6string6StringEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1z_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree14MarkerOperatorNtNtCscdodAO9FK5_5alloc6string6StringEEB1d_EEB1I_(ptr noalias noundef align 8 dereferenceable(64) %i.aa)
          to label %bb.dn unwind label %.loopexit431

bb.dn:                                            ; preds = %.loopexit430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke fastcc void @_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11collect_dnf(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
          to label %bb.do unwind label %.loopexit431

bb.do:                                            ; preds = %bb.dn
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionE8truncateBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ox)
          to label %bb.dh unwind label %.loopexit431

bb.dp:                                            ; preds = %bb.dm
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %.body302

.body302:                                         ; preds = %bb.ds, %bb.dp
  %eh.lpad-body303 = phi { ptr, i32 } [ %i.pd, %bb.dp ], [ %i.ph, %bb.ds ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef align 8 dereferenceable(24) %i.z) #15
          to label %.body305 unwind label %bb.bl

bb.dq:                                            ; preds = %bb.dm
  store i8 %i.pc, ptr %i.dp, align 1
  store i8 %.sroa.0338.0408, ptr %i.dq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  store i64 4, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.pe = load i64, ptr %i.dg, align 8, !alias.scope !296, !noalias !299, !noundef !4 ; 3 uses
  %i.pf = load i64, ptr %2, align 8, !range !160, !alias.scope !296, !noalias !299, !noundef !4
  %i.pg = icmp eq i64 %i.pe, %i.pf
  br i1 %i.pg, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.du unwind label %bb.ds, !noalias !299

bb.ds:                                            ; preds = %bb.dr
  %i.ph = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.y) #15
          to label %.body302 unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.pi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.du:                                            ; preds = %bb.dr, %bb.dq
  %i.pj = load ptr, ptr %i.dl, align 8, !alias.scope !296, !noalias !299, !nonnull !4, !noundef !4
  %i.pk = getelementptr inbounds nuw [40 x i8], ptr %i.pj, i64 %i.pe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.pk, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  %i.pl = add i64 %i.pe, 1
  store i64 %i.pl, ptr %i.dg, align 8, !alias.scope !296, !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsaaRuwTSDeTG_9pep508_rs.exit.i unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.pm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body305 unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.pn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsaaRuwTSDeTG_9pep508_rs.exit.i: ; preds = %bb.du
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsaaRuwTSDeTG_9pep508_rs.exit unwind label %bb.dl

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsaaRuwTSDeTG_9pep508_rs.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsaaRuwTSDeTG_9pep508_rs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.dk

bb.dx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit315, %bb.f
  %i.po = load i64, ptr %i.ea, align 8, !range !301, !noundef !4
  %i.pp = load i64, ptr %i.eb, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.po, i64 %i.pp) #16
  unreachable

bb.dy:                                            ; preds = %bb.f
  %i.pq = load i64, ptr %i.ea, align 8, !range !160, !noundef !4 ; 2 uses
  %i.pr = load ptr, ptr %i.eb, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ps = icmp ule i64 %i.dx, %i.pq
  tail call void @llvm.assume(i1 %i.ps)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %.not215, label %bb.dz, label %bb.ed

bb.dz:                                            ; preds = %bb.ed, %bb.dy
  store i8 %i.du, ptr %i.ec, align 1
  store i8 7, ptr %i.ed, align 8
  store i64 %i.pq, ptr %i.ee, align 8
  store ptr %i.pr, ptr %.sroa.4195.0..sroa_idx, align 8
  store i64 %i.dx, ptr %.sroa.5196.0..sroa_idx, align 8
  store i64 4, ptr %i.v, align 8
  %i.pt = load i64, ptr %i.ef, align 8, !alias.scope !302, !noalias !305, !noundef !4 ; 3 uses
  %i.pu = load i64, ptr %2, align 8, !range !160, !alias.scope !302, !noalias !305, !noundef !4
  %i.pv = icmp eq i64 %i.pt, %i.pu
  br i1 %i.pv, label %bb.ea, label %bb.ee

bb.ea:                                            ; preds = %bb.dz
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ee unwind label %bb.eb, !noalias !305

bb.eb:                                            ; preds = %bb.ek, %bb.ea
  %i.pw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v) #15
          to label %common.resume unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.px = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.ed:                                            ; preds = %bb.dy
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pr, ptr nonnull align 1 %i.dv, i64 %i.dx, i1 false)
  br label %bb.dz

bb.ee:                                            ; preds = %bb.ea, %bb.dz
  %i.py = load ptr, ptr %i.eg, align 8, !alias.scope !302, !noalias !305, !nonnull !4, !noundef !4
  %i.pz = getelementptr inbounds nuw [40 x i8], ptr %i.py, i64 %i.pt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.pz, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false)
  %i.qa = add i64 %i.pt, 1
  store i64 %i.qa, ptr %i.ef, align 8, !alias.scope !302, !noalias !305
  call fastcc void @_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11collect_dnf(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.qb = load i64, ptr %i.ef, align 8, !noundef !4 ; 3 uses
  %i.qc = icmp eq i64 %i.qb, 0
  br i1 %i.qc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit315, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.qd = add nsw i64 %i.qb, -1                   ; 3 uses
  store i64 %i.qd, ptr %i.ef, align 8
  %i.qe = load i64, ptr %2, align 8, !range !160, !noundef !4
  %i.qf = icmp samesign ult i64 %i.qd, %i.qe
  call void @llvm.assume(i1 %i.qf)
  %i.qg = load ptr, ptr %i.eg, align 8, !nonnull !4, !noundef !4
  %i.qh = icmp ult i64 %i.qb, 230584300921369397
  call void @llvm.assume(i1 %i.qh)
  %i.qi = getelementptr inbounds nuw [40 x i8], ptr %i.qg, i64 %i.qd
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.qi, i64 40, i1 false)
  %.pr413 = load i64, ptr %i.u, align 8, !alias.scope !307
  %i.qj = icmp eq i64 %.pr413, -1
  br i1 %i.qj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit315, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.u)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit315

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit315: ; preds = %bb.ee, %bb.eg, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 %i.dz, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef %i.dx, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.qk = load i64, ptr %i.n, align 8, !range !154, !noundef !4
  %i.ql = trunc nuw i64 %i.qk to i1
  br i1 %i.ql, label %bb.dx, label %bb.eh, !prof !130

bb.eh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit315
  %i.qm = load i64, ptr %i.ea, align 8, !range !160, !noundef !4 ; 2 uses
  %i.qn = load ptr, ptr %i.eb, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.qo = icmp ule i64 %i.dx, %i.qm
  call void @llvm.assume(i1 %i.qo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %.not215, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qn, ptr nonnull align 1 %i.dv, i64 %i.dx, i1 false)
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  store i8 %i.du, ptr %i.ec, align 1
  store i8 8, ptr %i.ed, align 8
  store i64 %i.qm, ptr %i.ee, align 8
  store ptr %i.qn, ptr %.sroa.4195.0..sroa_idx, align 8
  store i64 %i.dx, ptr %.sroa.5196.0..sroa_idx, align 8
  store i64 4, ptr %i.v, align 8
  %i.qp = load i64, ptr %i.ef, align 8, !alias.scope !302, !noalias !305, !noundef !4 ; 3 uses
  %i.qq = load i64, ptr %2, align 8, !range !160, !alias.scope !302, !noalias !305, !noundef !4
  %i.qr = icmp eq i64 %i.qp, %i.qq
  br i1 %i.qr, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.el unwind label %bb.eb, !noalias !305

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.qs = load ptr, ptr %i.eg, align 8, !alias.scope !302, !noalias !305, !nonnull !4, !noundef !4
  %i.qt = getelementptr inbounds nuw [40 x i8], ptr %i.qs, i64 %i.qp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.qt, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false)
  %i.qu = add i64 %i.qp, 1
  store i64 %i.qu, ptr %i.ef, align 8, !alias.scope !302, !noalias !305
  call fastcc void @_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11collect_dnf(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.qv = load i64, ptr %i.ef, align 8, !noundef !4 ; 3 uses
  %i.qw = icmp eq i64 %i.qv, 0
  br i1 %i.qw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit315.1, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.qx = add nsw i64 %i.qv, -1                   ; 3 uses
  store i64 %i.qx, ptr %i.ef, align 8
  %i.qy = load i64, ptr %2, align 8, !range !160, !noundef !4
  %i.qz = icmp samesign ult i64 %i.qx, %i.qy
  call void @llvm.assume(i1 %i.qz)
  %i.ra = load ptr, ptr %i.eg, align 8, !nonnull !4, !noundef !4
  %i.rb = icmp ult i64 %i.qv, 230584300921369397
  call void @llvm.assume(i1 %i.rb)
  %i.rc = getelementptr inbounds nuw [40 x i8], ptr %i.ra, i64 %i.qx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.rc, i64 40, i1 false)
  %.pr413.1 = load i64, ptr %i.u, align 8, !alias.scope !307
  %i.rd = icmp eq i64 %.pr413.1, -1
  br i1 %i.rd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit315.1, label %bb.en

bb.en:                                            ; preds = %bb.em
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.u)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit315.1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit315.1: ; preds = %bb.el, %bb.en, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.c

bb.eo:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit324, %bb.g
  %i.re = load i64, ptr %i.er, align 8, !range !301, !noundef !4
  %i.rf = load i64, ptr %i.es, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.re, i64 %i.rf) #16
  unreachable

bb.ep:                                            ; preds = %bb.g
  %i.rg = load i64, ptr %i.er, align 8, !range !160, !noundef !4 ; 2 uses
  %i.rh = load ptr, ptr %i.es, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ri = icmp ule i64 %i.eo, %i.rg
  tail call void @llvm.assume(i1 %i.ri)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %.not213, label %bb.eq, label %bb.eu

bb.eq:                                            ; preds = %bb.eu, %bb.ep
  store i8 %i.el, ptr %i.et, align 1
  store i8 9, ptr %i.eu, align 8
  store i64 %i.rg, ptr %i.ev, align 8
  store ptr %i.rh, ptr %.sroa.4201.0..sroa_idx, align 8
  store i64 %i.eo, ptr %.sroa.5202.0..sroa_idx, align 8
  store i64 4, ptr %i.s, align 8
  %i.rj = load i64, ptr %i.ew, align 8, !alias.scope !310, !noalias !313, !noundef !4 ; 3 uses
  %i.rk = load i64, ptr %2, align 8, !range !160, !alias.scope !310, !noalias !313, !noundef !4
  %i.rl = icmp eq i64 %i.rj, %i.rk
  br i1 %i.rl, label %bb.er, label %bb.ev

bb.er:                                            ; preds = %bb.eq
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ev unwind label %bb.es, !noalias !313

bb.es:                                            ; preds = %bb.fb, %bb.er
  %i.rm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.s) #15
          to label %common.resume unwind label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.rn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.eu:                                            ; preds = %bb.ep
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rh, ptr nonnull align 1 %i.em, i64 %i.eo, i1 false)
  br label %bb.eq

bb.ev:                                            ; preds = %bb.er, %bb.eq
  %i.ro = load ptr, ptr %i.ex, align 8, !alias.scope !310, !noalias !313, !nonnull !4, !noundef !4
  %i.rp = getelementptr inbounds nuw [40 x i8], ptr %i.ro, i64 %i.rj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.rp, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 40, i1 false)
  %i.rq = add i64 %i.rj, 1
  store i64 %i.rq, ptr %i.ew, align 8, !alias.scope !310, !noalias !313
  call fastcc void @_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11collect_dnf(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.rr = load i64, ptr %i.ew, align 8, !noundef !4 ; 3 uses
  %i.rs = icmp eq i64 %i.rr, 0
  br i1 %i.rs, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit324, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.rt = add nsw i64 %i.rr, -1                   ; 3 uses
  store i64 %i.rt, ptr %i.ew, align 8
  %i.ru = load i64, ptr %2, align 8, !range !160, !noundef !4
  %i.rv = icmp samesign ult i64 %i.rt, %i.ru
  call void @llvm.assume(i1 %i.rv)
  %i.rw = load ptr, ptr %i.ex, align 8, !nonnull !4, !noundef !4
  %i.rx = icmp ult i64 %i.rr, 230584300921369397
  call void @llvm.assume(i1 %i.rx)
  %i.ry = getelementptr inbounds nuw [40 x i8], ptr %i.rw, i64 %i.rt
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.ry, i64 40, i1 false)
  %.pr419 = load i64, ptr %i.r, align 8, !alias.scope !315
  %i.rz = icmp eq i64 %.pr419, -1
  br i1 %i.rz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit324, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit324

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit324: ; preds = %bb.ev, %bb.ex, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 %i.eq, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %i.eo, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.sa = load i64, ptr %i.m, align 8, !range !154, !noundef !4
  %i.sb = trunc nuw i64 %i.sa to i1
  br i1 %i.sb, label %bb.eo, label %bb.ey, !prof !130

bb.ey:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit324
  %i.sc = load i64, ptr %i.er, align 8, !range !160, !noundef !4 ; 2 uses
  %i.sd = load ptr, ptr %i.es, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.se = icmp ule i64 %i.eo, %i.sc
  call void @llvm.assume(i1 %i.se)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %.not213, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sd, ptr nonnull align 1 %i.em, i64 %i.eo, i1 false)
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  store i8 %i.el, ptr %i.et, align 1
  store i8 10, ptr %i.eu, align 8
  store i64 %i.sc, ptr %i.ev, align 8
  store ptr %i.sd, ptr %.sroa.4201.0..sroa_idx, align 8
  store i64 %i.eo, ptr %.sroa.5202.0..sroa_idx, align 8
  store i64 4, ptr %i.s, align 8
  %i.sf = load i64, ptr %i.ew, align 8, !alias.scope !310, !noalias !313, !noundef !4 ; 3 uses
  %i.sg = load i64, ptr %2, align 8, !range !160, !alias.scope !310, !noalias !313, !noundef !4
  %i.sh = icmp eq i64 %i.sf, %i.sg
  br i1 %i.sh, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.fc unwind label %bb.es, !noalias !313

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.si = load ptr, ptr %i.ex, align 8, !alias.scope !310, !noalias !313, !nonnull !4, !noundef !4
  %i.sj = getelementptr inbounds nuw [40 x i8], ptr %i.si, i64 %i.sf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.sj, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 40, i1 false)
  %i.sk = add i64 %i.sf, 1
  store i64 %i.sk, ptr %i.ew, align 8, !alias.scope !310, !noalias !313
  call fastcc void @_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11collect_dnf(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.sl = load i64, ptr %i.ew, align 8, !noundef !4 ; 3 uses
  %i.sm = icmp eq i64 %i.sl, 0
  br i1 %i.sm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit324.1, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.sn = add nsw i64 %i.sl, -1                   ; 3 uses
  store i64 %i.sn, ptr %i.ew, align 8
  %i.so = load i64, ptr %2, align 8, !range !160, !noundef !4
  %i.sp = icmp samesign ult i64 %i.sn, %i.so
  call void @llvm.assume(i1 %i.sp)
  %i.sq = load ptr, ptr %i.ex, align 8, !nonnull !4, !noundef !4
  %i.sr = icmp ult i64 %i.sl, 230584300921369397
  call void @llvm.assume(i1 %i.sr)
  %i.ss = getelementptr inbounds nuw [40 x i8], ptr %i.sq, i64 %i.sn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.ss, i64 40, i1 false)
  %.pr419.1 = load i64, ptr %i.r, align 8, !alias.scope !315
  %i.st = icmp eq i64 %.pr419.1, -1
  br i1 %i.st, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit324.1, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit324.1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit324.1: ; preds = %bb.fc, %bb.fe, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.c

bb.ff:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fe)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.555, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.fh

bb.fg:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fe)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.555, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.fh

bb.fh:                                            ; preds = %bb.ff, %bb.fg
  %.sroa.054.0 = phi i64 [ 1, %bb.ff ], [ 0, %bb.fg ]
  store i8 0, ptr %i.ff, align 8
  store i64 %.sroa.054.0, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.555.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.555, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.555)
  %i.su = load i64, ptr %i.fg, align 8, !alias.scope !318, !noalias !321, !noundef !4 ; 3 uses
  %i.sv = load i64, ptr %2, align 8, !range !160, !alias.scope !318, !noalias !321, !noundef !4
  %i.sw = icmp eq i64 %i.su, %i.sv
  br i1 %i.sw, label %bb.fi, label %bb.fl

bb.fi:                                            ; preds = %bb.fh
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.fl unwind label %bb.fj, !noalias !321

bb.fj:                                            ; preds = %bb.fr, %bb.fi
  %i.sx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.p) #15
          to label %common.resume unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.sy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.fl:                                            ; preds = %bb.fi, %bb.fh
  %i.sz = load ptr, ptr %i.fh, align 8, !alias.scope !318, !noalias !321, !nonnull !4, !noundef !4
  %i.ta = getelementptr inbounds nuw [40 x i8], ptr %i.sz, i64 %i.su
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ta, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  %i.tb = add i64 %i.su, 1
  store i64 %i.tb, ptr %i.fg, align 8, !alias.scope !318, !noalias !321
  call fastcc void @_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11collect_dnf(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.tc = load i64, ptr %i.fg, align 8, !noundef !4 ; 3 uses
  %i.td = icmp eq i64 %i.tc, 0
  br i1 %i.td, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit333, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.te = add nsw i64 %i.tc, -1                   ; 3 uses
  store i64 %i.te, ptr %i.fg, align 8
  %i.tf = load i64, ptr %2, align 8, !range !160, !noundef !4
  %i.tg = icmp samesign ult i64 %i.te, %i.tf
  call void @llvm.assume(i1 %i.tg)
  %i.th = load ptr, ptr %i.fh, align 8, !nonnull !4, !noundef !4
  %i.ti = icmp ult i64 %i.tc, 230584300921369397
  call void @llvm.assume(i1 %i.ti)
  %i.tj = getelementptr inbounds nuw [40 x i8], ptr %i.th, i64 %i.te
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.tj, i64 40, i1 false)
  %.pr425 = load i64, ptr %i.o, align 8, !alias.scope !323
  %i.tk = icmp eq i64 %.pr425, -1
  br i1 %i.tk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit333, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit333

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit333: ; preds = %bb.fl, %bb.fn, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %i.fd, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.555)
  %i.tl = load i64, ptr %i.fb, align 8, !range !154, !noundef !4
  %i.tm = trunc nuw i64 %i.tl to i1
  br i1 %i.tm, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fe)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.555, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.fq

bb.fp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fe)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.555, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.sroa.054.0.1 = phi i64 [ 1, %bb.fp ], [ 0, %bb.fo ]
  store i8 1, ptr %i.ff, align 8
  store i64 %.sroa.054.0.1, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.555.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.555, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.555)
  %i.tn = load i64, ptr %i.fg, align 8, !alias.scope !318, !noalias !321, !noundef !4 ; 3 uses
  %i.to = load i64, ptr %2, align 8, !range !160, !alias.scope !318, !noalias !321, !noundef !4
  %i.tp = icmp eq i64 %i.tn, %i.to
  br i1 %i.tp, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.fs unwind label %bb.fj, !noalias !321

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.tq = load ptr, ptr %i.fh, align 8, !alias.scope !318, !noalias !321, !nonnull !4, !noundef !4
  %i.tr = getelementptr inbounds nuw [40 x i8], ptr %i.tq, i64 %i.tn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.tr, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  %i.ts = add i64 %i.tn, 1
  store i64 %i.ts, ptr %i.fg, align 8, !alias.scope !318, !noalias !321
  call fastcc void @_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11collect_dnf(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.tt = load i64, ptr %i.fg, align 8, !noundef !4 ; 3 uses
  %i.tu = icmp eq i64 %i.tt, 0
  br i1 %i.tu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit333.1, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.tv = add nsw i64 %i.tt, -1                   ; 3 uses
  store i64 %i.tv, ptr %i.fg, align 8
  %i.tw = load i64, ptr %2, align 8, !range !160, !noundef !4
  %i.tx = icmp samesign ult i64 %i.tv, %i.tw
  call void @llvm.assume(i1 %i.tx)
  %i.ty = load ptr, ptr %i.fh, align 8, !nonnull !4, !noundef !4
  %i.tz = icmp ult i64 %i.tt, 230584300921369397
  call void @llvm.assume(i1 %i.tz)
  %i.ua = getelementptr inbounds nuw [40 x i8], ptr %i.ty, i64 %i.tv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.ua, i64 40, i1 false)
  %.pr425.1 = load i64, ptr %i.o, align 8, !alias.scope !323
  %i.ub = icmp eq i64 %.pr425.1, -1
  br i1 %i.ub, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit333.1, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit333.1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_.exit333.1: ; preds = %bb.fs, %bb.fu, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify6to_dnf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 0, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.n, align 8
  invoke fastcc void @_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11collect_dnf(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %i.j, ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #15
          to label %.body unwind label %bb.bx

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB1d_.exit unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bu, %.body.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterjEEECsaaRuwTSDeTG_9pep508_rs.exit.thread.i, %bb.y, %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.b ], [ %i.p, %bb.d ], [ %lpad.phi131.i, %bb.bu ], [ %lpad.loopexit142.i, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.dh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterjEEECsaaRuwTSDeTG_9pep508_rs.exit.thread.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %i.j) #15
          to label %bb.by unwind label %bb.bx

.loopexit:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterjEECsaaRuwTSDeTG_9pep508_rs.exit63.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.e, %._crit_edge200.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB1d_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.r = load i64, ptr %i.l, align 8, !alias.scope !326, !noundef !4 ; 5 uses
  %i.s = icmp ult i64 %i.r, 384307168202282326
  call void @llvm.assume(i1 %i.s)
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %._crit_edge189.thread.i, label %.lr.ph188.i

._crit_edge189.thread.i:                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB1d_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !326
  store i64 0, ptr %i.e, align 8, !noalias !326
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !noalias !326
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.u, align 8, !noalias !326
  br label %._crit_edge197.i

.lr.ph188.i:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB1d_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 6 uses
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.idx203.i = mul nuw nsw i64 %i.r, 24           ; 2 uses
  br label %bb.g

.lr.ph196.i:                                      ; preds = %.noexc5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !326
  store i64 0, ptr %i.e, align 8, !noalias !326
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8, !noalias !326
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  store i64 0, ptr %i.y, align 8, !noalias !326
  %i.z = load ptr, ptr %i.k, align 8, !alias.scope !326, !nonnull !4, !noundef !4 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx203.i
  br label %.lr.ph193.i

bb.g:                                             ; preds = %.noexc5, %.lr.ph188.i
  %.sroa.038.0186.i = phi i64 [ 0, %.lr.ph188.i ], [ %i.ab, %.noexc5 ] ; 3 uses
  %i.ab = add nuw nsw i64 %.sroa.038.0186.i, 1    ; 2 uses
  %i.ac = load ptr, ptr %i.k, align 8, !alias.scope !326, !nonnull !4, !noundef !4 ; 3 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.sroa.038.0186.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !326
  store i64 0, ptr %i.h, align 8, !noalias !326
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !326
  store i64 0, ptr %i.w, align 8, !noalias !326
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !326, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !326, !noundef !4 ; 2 uses
  %.idx201.i = mul nuw nsw i64 %i.ah, 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx201.i
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %._crit_edge.thread.i, label %.lr.ph183.split.preheader.i

._crit_edge197.loopexit.i:                        ; preds = %.backedge.i
  %.pre247.i = load ptr, ptr %i.x, align 8, !noalias !326
  %.pre248.i = load i64, ptr %i.e, align 8, !range !160, !noalias !326
  %.pre249.i = load i64, ptr %i.y, align 8, !noalias !326
  br label %._crit_edge197.i

._crit_edge197.i:                                 ; preds = %._crit_edge197.loopexit.i, %._crit_edge189.thread.i
  %i.ak = phi i64 [ %.pre249.i, %._crit_edge197.loopexit.i ], [ 0, %._crit_edge189.thread.i ] ; 3 uses
  %i.al = phi i64 [ %.pre248.i, %._crit_edge197.loopexit.i ], [ 0, %._crit_edge189.thread.i ]
  %i.am = phi ptr [ %.pre247.i, %._crit_edge197.loopexit.i ], [ inttoptr (i64 8 to ptr), %._crit_edge189.thread.i ] ; 3 uses
  %i.an = icmp ult i64 %i.ak, 1152921504606846976
  call void @llvm.assume(i1 %i.an)
  %.idx207.i = shl nuw nsw i64 %i.ak, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx207.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !326
  store ptr %i.am, ptr %i.d, align 8, !noalias !326
  %.sroa.230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.am, ptr %.sroa.230.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.331.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.al, ptr %.sroa.331.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store ptr %i.ao, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !326
  %i.ap = icmp eq i64 %i.ak, 0
  br i1 %i.ap, label %._crit_edge200.i, label %.lr.ph199.i

end_hunk_1
