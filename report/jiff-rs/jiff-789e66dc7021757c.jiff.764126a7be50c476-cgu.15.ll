Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.15?download=true
inline.NumInlined: 264
inline.NumDeleted: 141
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner14CachedTimeZoneEBL_:bb.a
    i64 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 4, label %bb.c
    i64 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 -4      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = invoke noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.f)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  store ptr %i.i, ptr %i.b, align 8
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !128
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i

bb.d:                                             ; preds = %.noexc
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i: ; preds = %bb.d, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %.val, i64 -5      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = invoke noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.l)
          to label %.noexc2 unwind label %bb.g

.noexc2:                                          ; preds = %bb.e
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  store ptr %i.o, ptr %i.a, align 8
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !129
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i

bb.f:                                             ; preds = %.noexc2
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i: ; preds = %bb.f, %.noexc2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !133, !nonnull !4, !noundef !4
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !133
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameEBL_.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner17ZoneInfoNameInnerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameEBL_.exit unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i, %bb.a, %bb.a, %bb.a, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !137, !nonnull !4, !noundef !4
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !137
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameEBL_.exit5

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner17ZoneInfoNameInnerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameEBL_.exit5

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameEBL_.exit5: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit, %bb.i
  ret void

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameEBL_.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #1 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = tail call noundef i8 @_RNvXs8_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.04.0) ; 2 uses
  %.not.i.i = icmp ne i8 %i.n, -2
  %i.o = icmp slt i8 %i.n, 0
  %.sroa.0.0.i.i = and i1 %.not.i.i, %i.o         ; 2 uses
  %i.p = tail call noundef i8 @_RNvXs8_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.08.0) ; 2 uses
  %.not.i.i12 = icmp ne i8 %i.p, -2
  %i.q = icmp slt i8 %i.p, 0
  %.sroa.0.0.i.i13 = and i1 %.not.i.i12, %i.q
  %i.r = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i13
  br i1 %i.r, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB19_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call noundef i8 @_RNvXs8_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.04.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.08.0) ; 2 uses
  %.not.i.i14 = icmp ne i8 %i.s, -2
  %i.t = icmp slt i8 %i.s, 0
  %.sroa.0.0.i.i15 = and i1 %.not.i.i14, %i.t
  %i.u = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i15
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB19_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYBW_NtNtBa_3cmp10PartialOrd2ltEB16_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.co, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1d_.exit
  %.sroa.021.0 = phi i8 [ %i.bh, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1d_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1d_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1c_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName7reverseBE_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = tail call noundef i8 @_RNvXs8_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n), !noalias !149 ; 2 uses
  %.not.i.i.i = icmp ne i8 %i.q, -2
  %i.r = icmp slt i8 %i.q, 0
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.r     ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %.sroa.0.0.i.i.i, label %.preheader.i, label %.preheader21.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName7reverseBE_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.sroa.01.0.i23.i = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader21.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %6 = add nsw i64 %.sroa.01.0.i23.i, -1          ; 2 uses
  %7 = icmp samesign ult i64 %6, %i.m
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %6
  %i.t = tail call noundef i8 @_RNvXs8_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %8), !noalias !149 ; 2 uses
  %.not.i.i7.i = icmp ne i8 %i.t, -2
  %i.u = icmp slt i8 %i.t, 0
  %.sroa.0.0.i.i8.i = and i1 %.not.i.i7.i, %i.u
  br i1 %.sroa.0.0.i.i8.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1c_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1c_.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i26.i = phi i64 [ %i.z, %bb.m ], [ 2, %.preheader.i ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %9 = add nsw i64 %.sroa.01.1.i26.i, -1          ; 2 uses
  %10 = icmp samesign ult i64 %9, %i.m
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %9
  %i.x = tail call noundef i8 @_RNvXs8_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %11), !noalias !149 ; 2 uses
  %.not.i.i9.i = icmp ne i8 %i.x, -2
  %i.y = icmp slt i8 %i.x, 0
  %.sroa.0.0.i.i10.i = and i1 %.not.i.i9.i, %i.y
  br i1 %.sroa.0.0.i.i10.i, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1c_.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.z = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.z, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1c_.exit.i, label %.lr.ph27.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1c_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph27.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1c_.exit.i
  br i1 %.sroa.0.0.i.i.i, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName7reverseBE_.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.ab = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1d_.exit

bb.p:                                             ; preds = %bb.i
  %..i11.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1f_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i11.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #21
  %i.ac = shl nuw nsw i64 %..i11.i, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1d_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName7reverseBE_.exit.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i, %middle.block, %.preheader21.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i435054.i, %middle.block ], [ %.sroa.0.0.i435054.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i ]
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1d_.exit

bb.q:                                             ; preds = %bb.n
  %i.ag = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %.not.i.i12.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i12.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName7reverseBE_.exit.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.preheader.i.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.ah = phi i64 [ %i.ag, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i435054.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i435054.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ah, 4
  br i1 %min.iters.check, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.preheader.i.i.i
  %n.vec = and i64 %i.ah, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = xor i64 %index, -1
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.al = getelementptr [8 x i8], ptr %i.ai, i64 %i.aj ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ak, align 8, !alias.scope !152, !noalias !153
  %wide.load54 = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !152, !noalias !153
  %i.an = getelementptr i8, ptr %i.al, i64 -8
  %i.ao = getelementptr i8, ptr %i.al, i64 -24
  %wide.load55 = load <2 x i64>, ptr %i.an, align 8, !alias.scope !154, !noalias !155
  %wide.load56 = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !154, !noalias !155
  %reverse = shufflevector <2 x i64> %wide.load55, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse57 = shufflevector <2 x i64> %wide.load56, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x i64> %reverse, ptr %i.ak, align 8, !alias.scope !152, !noalias !153
  store <2 x i64> %reverse57, ptr %i.ap, align 8, !alias.scope !152, !noalias !153
  %i.aq = getelementptr i8, ptr %i.al, i64 -8
  %i.ar = getelementptr i8, ptr %i.al, i64 -24
  %reverse58 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x ptr> %wide.load54, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse58, ptr %i.aq, align 8, !alias.scope !154, !noalias !155
  store <2 x ptr> %reverse59, ptr %i.ar, align 8, !alias.scope !154, !noalias !155
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName7reverseBE_.exit.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i.preheader

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i.preheader, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.ay, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i.preheader ] ; 3 uses
  %i.at = xor i64 %.sroa.0.016.i.i.i, -1
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.ai, i64 %i.at ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !alias.scope !152, !noalias !153, !nonnull !4, !noundef !4
  %i.ax = load i64, ptr %i.av, align 8, !alias.scope !154, !noalias !155
  store i64 %i.ax, ptr %i.au, align 8, !alias.scope !152, !noalias !153
  store ptr %i.aw, ptr %i.av, align 8, !alias.scope !154, !noalias !155
  %i.ay = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName7reverseBE_.exit.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit11.i.i.i, !llvm.loop !148

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1d_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName7reverseBE_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.af, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName7reverseBE_.exit.i ], [ %i.ad, %bb.p ], [ %i.ab, %bb.o ] ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1
  %i.ba = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bb = sub nsw i64 %factor, %i.az
  %i.bc = add nuw nsw i64 %i.ba, %factor
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false)
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit
  %.sroa.02.136 = phi i64 [ %i.bi, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bi = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bk, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bm, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !4 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 5 uses
  %i.bq = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 5 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs ; 3 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.023.135 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.135
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bz = shl nuw nsw i64 %i.br, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bv, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1f_(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 1152921504606846976) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #21
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bp
  %i.cg = or i64 %i.bq, 1
  %i.ch = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1f_(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 1152921504606846976) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYBX_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 1152921504606846976) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.bp, ptr noalias nofree noundef nonnull %5)
  %i.cl = shl nuw nsw i64 %i.br, 1
  %i.cm = or disjoint i64 %i.cl, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cm, %bb.x ], [ %i.bz, %bb.t ] ; 2 uses
  %i.cn = icmp ugt i64 %i.bi, 1
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.co = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cp = lshr i64 %.sroa.018.0, 1
  %i.cq = add nuw i64 %i.cp, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cr = and i64 %.sroa.023.1.lcssa, 1
end_hunk_0
