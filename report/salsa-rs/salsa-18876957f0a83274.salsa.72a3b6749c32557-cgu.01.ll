Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.01?download=true
inline.NumInlined: 295
inline.NumDeleted: 129
begin_hunk_0_@_RNvMs1_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions29discard_edges_if_never_change:bb.a
    i8 0, label %bb.c
    i8 1, label %_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra11clear_edges.exit
    i8 2, label %_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra11clear_edges.exit
    i8 3, label %_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra6origin.exit
  ], !prof !222

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #27, !noalias !223
  unreachable

default.unreachable:                              ; preds = %bb.b
  unreachable

_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra6origin.exit: ; preds = %bb.b
  %i.h = and i8 %i.f, 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra6origin.exit
  %i.j = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsC8CapfvpQ1_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads.exit, label %bb.e, !prof !46

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zEBX_(ptr noundef nonnull align 8 @_RNvNvNtCsC8CapfvpQ1_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
  br label %_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads.exit

bb.f:                                             ; preds = %_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra6origin.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.m = load ptr, ptr %i.l, align 1, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  br label %_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads.exit

_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i1 = phi ptr [ %i.n, %bb.f ], [ @_RNvNvNtCsC8CapfvpQ1_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.d ], [ @_RNvNvNtCsC8CapfvpQ1_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.e ]
  %i.o = load ptr, ptr %.sroa.0.0.i1, align 8, !nonnull !4, !noundef !4
  %i.p = load i64, ptr %i.o, align 8, !noundef !4
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra11clear_edges.exit

bb.g:                                             ; preds = %_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.s = tail call noundef zeroext i1 @_RNvMs4_NtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB5_28AtomicInputAccumulatedValues4load(ptr noundef nonnull %i.r)
  br i1 %i.s, label %_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra11clear_edges.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 3 uses
  %i.u = load i32, ptr %i.t, align 1, !alias.scope !224, !noundef !4
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra11clear_edges.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load i8, ptr %i.e, align 8, !alias.scope !224, !noundef !4 ; 2 uses
  %i.x = and i8 %i.w, 3                           ; 4 uses
  switch i8 %i.x, label %bb.l [
    i8 0, label %bb.j
    i8 1, label %bb.k
  ], !prof !227

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #27, !noalias !224
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull inttoptr (i64 73 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27, !noalias !224
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.y = and i8 %i.w, 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %.thread.i, label %bb.m

.thread.i:                                        ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_14OriginAndExtra21new_derived_with_kindINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterNtB6_9QueryEdgeKj0_EEB8_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ab = load ptr, ptr %i.aa, align 1, !alias.scope !224, !nonnull !4, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !224
  call fastcc void @_RNvMs3_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_24QueryRevisionsExtraInner5empty(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.b), !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %.sroa.014.i, ptr noundef nonnull align 8 dereferenceable(50) %i.ab, i64 50, i1 false), !noalias !224
  %.sroa.4.0..sroa.05.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 50
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa.05.0..sroa_idx.i, align 2, !noalias !224 ; 3 uses
  %.sroa.5.0..sroa.05.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 51
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.7.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.5.0..sroa.05.0..sroa_idx.i, i64 5, i1 false), !noalias !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !224
  %.not.i.i = icmp eq i8 %.sroa.4.0.copyload.i, 2
  br i1 %.not.i.i, label %_RINvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_14OriginAndExtra21new_derived_with_kindINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterNtB6_9QueryEdgeKj0_EEB8_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.a, ptr noundef nonnull align 8 dereferenceable(50) %.sroa.014.i, i64 50, i1 false), !noalias !232
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  store i8 %.sroa.4.0.copyload.i, ptr %.sroa.515.0..sroa_idx.i, align 2, !noalias !232
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.7.i, i64 5, i1 false), !noalias !232
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !233
  %i.ac = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #28, !noalias !233 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.o, label %_RINvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterNtB6_9QueryEdgeKj0_EEB8_.exit.i.i, !prof !15

.thread.i.i.i:                                    ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local24QueryRevisionsExtraInnerEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #29
          to label %common.resume.i unwind label %bb.p, !noalias !239

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #27
          to label %.noexc29.i.i.i unwind label %.thread.i.i.i, !noalias !240

.noexc29.i.i.i:                                   ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %.thread.i.i.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !239
  unreachable

common.resume.i:                                  ; preds = %bb.q, %.thread.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ah, %bb.q ], [ %i.ae, %.thread.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterNtB6_9QueryEdgeKj0_EEB8_.exit.i.i: ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.ac, ptr noundef nonnull align 8 dereferenceable(50) %.sroa.014.i, i64 50, i1 false), !noalias !232
  %.sroa.515.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 50
  store i8 %.sroa.4.0.copyload.i, ptr %.sroa.515.0..sroa_idx16.i, align 2, !noalias !232
  %.sroa.7.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.7.0..sroa_idx18.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.7.i, i64 5, i1 false), !noalias !232
  %i.ag = or disjoint i8 %i.x, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !228
  br label %_RINvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_14OriginAndExtra21new_derived_with_kindINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterNtB6_9QueryEdgeKj0_EEB8_.exit.i

_RINvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_14OriginAndExtra21new_derived_with_kindINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterNtB6_9QueryEdgeKj0_EEB8_.exit.i: ; preds = %_RINvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterNtB6_9QueryEdgeKj0_EEB8_.exit.i.i, %bb.m, %.thread.i
  %.sroa.6.0.i = phi ptr [ %i.ac, %_RINvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterNtB6_9QueryEdgeKj0_EEB8_.exit.i.i ], [ inttoptr (i64 4 to ptr), %.thread.i ], [ inttoptr (i64 4 to ptr), %bb.m ] ; 2 uses
  %.sroa.0.0.i2 = phi i8 [ %i.ag, %_RINvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterNtB6_9QueryEdgeKj0_EEB8_.exit.i.i ], [ %i.x, %.thread.i ], [ %i.x, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  invoke void @_RNvXsb_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull readonly dereferenceable(13) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local14OriginAndExtraEBF_.exit.i unwind label %bb.q

bb.q:                                             ; preds = %_RINvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_14OriginAndExtra21new_derived_with_kindINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterNtB6_9QueryEdgeKj0_EEB8_.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  store i8 %.sroa.0.0.i2, ptr %i.e, align 8, !alias.scope !224
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store ptr %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 1, !alias.scope !224
  store i32 0, ptr %i.t, align 1, !alias.scope !224
  br label %common.resume.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local14OriginAndExtraEBF_.exit.i: ; preds = %_RINvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_14OriginAndExtra21new_derived_with_kindINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterNtB6_9QueryEdgeKj0_EEB8_.exit.i
  store i8 %.sroa.0.0.i2, ptr %i.e, align 8, !alias.scope !224
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store ptr %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx10.i, align 1, !alias.scope !224
  store i32 0, ptr %i.t, align 1, !alias.scope !224
  br label %_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra11clear_edges.exit

_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra11clear_edges.exit: ; preds = %bb.b, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local14OriginAndExtraEBF_.exit.i, %bb.h, %bb.g, %bb.a, %_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_19QueryRevisionsExtra3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, i16 noundef %4, i1 noundef zeroext %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  store i64 %2, ptr %i.b, align 8
  store i64 %3, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = icmp ne i64 %i.d, 0
  %brmerge = or i1 %5, %i.e
  %i.f = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.g = inttoptr i64 %3 to ptr
  br i1 %brmerge, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  invoke void @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE13shrink_to_fitBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.critedge.critedge unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !noundef !4
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.g, align 8, !noundef !4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = icmp eq i16 %4, 0
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 0, ptr %.sroa.02.sroa.4.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 2
  %i.m = icmp eq i64 %3, ptrtoint (ptr @_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER to i64)
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit, label %bb.f, !prof !46

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvCsa3bo7ChGFM8_8thin_vec18drop_non_singletonNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit_crit_edge unwind label %bb.g

._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit_crit_edge: ; preds = %bb.f
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !241
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit32

bb.h:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !246, !nonnull !4, !noundef !4
  %i.q = icmp eq ptr %i.p, @_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit32, label %bb.i, !prof !46

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvCsa3bo7ChGFM8_8thin_vec18drop_non_singletonNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit32 unwind label %bb.l

.critedge.critedge:                               ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.010.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.016.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.02.sroa.0.sroa.3.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.016.0.copyload, ptr %.sroa.02.sroa.0.sroa.3.0..sroa_idx18, align 8
  %.sroa.02.sroa.3.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.010.0.copyload, ptr %.sroa.02.sroa.3.0..sroa_idx12, align 8
  %.sroa.02.sroa.4.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 %4, ptr %.sroa.02.sroa.4.0..sroa_idx14, align 8
  %.sroa.3.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 0, ptr %.sroa.3.0..sroa_idx5, align 2
  br label %.critedge

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit_crit_edge, %bb.e
  %i.r = phi ptr [ %.pre, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit_crit_edge ], [ %i.f, %bb.e ]
  %i.s = icmp eq ptr %i.r, @_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit, label %bb.j, !prof !46

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit
  invoke void @_RINvCsa3bo7ChGFM8_8thin_vec18drop_non_singletonTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBO_2id2IdEEBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit35

.critedge:                                        ; preds = %.critedge.critedge, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1h_11accumulator11accumulated14AnyAccumulatedEL_EENtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalEB1h_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 24, i64 noundef 16)
  br label %.critedge

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit35, %bb.m, %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit32: ; preds = %bb.h, %bb.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.i ], [ %i.o, %bb.h ] ; 2 uses
  %i.w = load ptr, ptr %i.b, align 8, !alias.scope !253, !nonnull !4, !noundef !4
  %i.x = icmp eq ptr %i.w, @_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit35, label %bb.m, !prof !46

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit32
  invoke void @_RINvCsa3bo7ChGFM8_8thin_vec18drop_non_singletonTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBO_2id2IdEEBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit35 unwind label %bb.l

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit35
  resume { ptr, i32 } %.pn28

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit35: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit32, %bb.m, %bb.k
  %.pn28 = phi { ptr, i32 } [ %i.t, %bb.k ], [ %.pn, %bb.m ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit32 ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1h_11accumulator11accumulated14AnyAccumulatedEL_EENtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalEB1h_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 24, i64 noundef 16)
          to label %bb.n unwind label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_24QueryRevisionsExtraInner5empty(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = invoke noundef i64 @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE13with_capacityBL_(i64 noundef 0)
          to label %bb.c unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit: ; preds = %bb.e, %bb.f, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.h, %bb.f ], [ %i.h, %bb.e ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1h_11accumulator11accumulated14AnyAccumulatedEL_EENtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalEB1h_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 24, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_map14AccumulatedMapEBH_.exit unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit

bb.c:                                             ; preds = %bb.a
  store i64 %i.c, ptr %i.a, align 8
  %i.f = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsC8CapfvpQ1_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsE15get_or_try_initNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zEBX_.exit, label %bb.d, !prof !46

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zEBX_(ptr noundef nonnull align 8 @_RNvNvNtCsC8CapfvpQ1_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsE15get_or_try_initNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zEBX_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.h, %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !alias.scope !258, !nonnull !4, !noundef !4
  %i.j = icmp eq ptr %i.i, @_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit, label %bb.f, !prof !46

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvCsa3bo7ChGFM8_8thin_vec18drop_non_singletonTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBO_2id2IdEEBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit unwind label %bb.j

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsE15get_or_try_initNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zEBX_.exit: ; preds = %bb.c, %bb.d
  %i.k = load ptr, ptr @_RNvNvNtCsC8CapfvpQ1_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, align 8, !nonnull !4, !noundef !4
  %i.l = icmp eq ptr %i.k, @_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER
  br i1 %i.l, label %bb.h, label %bb.g, !prof !46

bb.g:                                             ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsE15get_or_try_initNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zEBX_.exit
  %i.m = invoke noundef i64 @_RINvNvXsp_Csa3bo7ChGFM8_8thin_vecINtB8_7ThinVecpENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone19clone_non_singletonNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEB1P_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNvNtCsC8CapfvpQ1_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsE15get_or_try_initNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zEBX_.exit
  %i.n = invoke noundef i64 @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE13with_capacityBK_(i64 noundef 0)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.04.0 = phi i64 [ %i.m, %bb.g ], [ %i.n, %bb.h ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.a, align 8
  store i64 %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 0, ptr %i.s, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_map14AccumulatedMapEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 8 ptr @_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions11accumulated(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !noundef !4
  %i.c = and i8 %i.b, 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_map14AccumulatedMapE6filterNCNvMs5_NtBP_11zalsa_localNtB28_14QueryRevisions11accumulateds_0EBP_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load ptr, ptr %i.e, align 1, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !263, !noundef !4
  %.not4.i = icmp eq i64 %i.h, 0
  %..i = select i1 %.not4.i, ptr null, ptr %i.f
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_map14AccumulatedMapE6filterNCNvMs5_NtBP_11zalsa_localNtB28_14QueryRevisions11accumulateds_0EBP_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_map14AccumulatedMapE6filterNCNvMs5_NtBP_11zalsa_localNtB28_14QueryRevisions11accumulateds_0EBP_.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi ptr [ %..i, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs5_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
