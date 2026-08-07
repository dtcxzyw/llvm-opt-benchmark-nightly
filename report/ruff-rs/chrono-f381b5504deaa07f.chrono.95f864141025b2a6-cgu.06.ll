inline.NumInlined: 99
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB2_8TimeZone3new:bb.a

bb.x:                                             ; preds = %.invoke, %bb.l
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone8TimeZoneEBL_(ptr noalias noundef align 8 dereferenceable(120) %i.b) #16
          to label %bb.aa unwind label %bb.z

.loopexit:                                        ; preds = %.lr.ph.i, %bb.w, %bb.t, %bb.b, %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info5ErrorEBJ_.exit.i, %bb.f, %bb.a, %bb.c, %.split.i, %bb.q, %bb.p, %bb.n, %bb.j
  %.sroa.24.1.ph = phi i64 [ 19, %bb.b ], [ 22, %bb.j ], [ 62, %bb.n ], [ 62, %bb.p ], [ 62, %bb.q ], [ 62, %.split.i ], [ 19, %bb.c ], [ 19, %bb.t ], [ 42, %bb.a ], [ 22, %bb.f ], [ %i.cl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info5ErrorEBJ_.exit.i ], [ 62, %bb.m ], [ 29, %.lr.ph.i ], [ 18, %bb.w ]
  %.sroa.165.1.ph = phi ptr [ @22, %bb.b ], [ @16, %bb.j ], [ @24, %bb.n ], [ @24, %bb.p ], [ @24, %bb.q ], [ @24, %.split.i ], [ @22, %bb.c ], [ @22, %bb.t ], [ @21, %bb.a ], [ @16, %bb.f ], [ %i.cj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info5ErrorEBJ_.exit.i ], [ @24, %bb.m ], [ @26, %.lr.ph.i ], [ @25, %bb.w ]
  %.sroa.0.1.ph = phi i8 [ 11, %bb.b ], [ 11, %bb.j ], [ 11, %bb.n ], [ 11, %bb.p ], [ 11, %bb.q ], [ 11, %.split.i ], [ 11, %bb.c ], [ 11, %bb.t ], [ 11, %bb.a ], [ 11, %bb.f ], [ %.sroa.0.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info5ErrorEBJ_.exit.i ], [ 11, %bb.m ], [ 11, %bb.w ], [ 11, %.lr.ph.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.1.ph, ptr %i.dj, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.426.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16, i64 7, i1 false)
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.165.1.ph, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.24.1.ph, ptr %.sroa.628.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone8TimeZoneEBL_(ptr noalias noundef align 8 dereferenceable(120) %i.b)
  br label %bb.y

_RNvMs_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB4_11TimeZoneRef8validate.exit: ; preds = %bb.q, %.split.i, %._crit_edge97.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %_RNvMs_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB4_11TimeZoneRef8validate.exit, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.z:                                             ; preds = %bb.x
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.aa:                                            ; preds = %bb.x
  resume { ptr, i32 } %i.di
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB2_8TimeZone3utc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15
  %_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed = tail call align 4 dereferenceable_or_null(16) ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 16, i64 4) ; 2 uses
  %i.d = icmp eq ptr %_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed, null
  br i1 %i.d, label %bb.b, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 16) #17
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10TransitionEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #16
          to label %bb.e unwind label %bb.d

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.g, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 117
  store i8 -1, ptr %.sroa.3.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB2_8TimeZone5local(ptr dead_on_unwind noalias noundef writable sret([120 x i8]) align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB2_8TimeZone13from_posix_tz(ptr noalias noundef align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB2_8TimeZone13from_posix_tz(ptr noalias noundef align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 9)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB2_8TimeZone9from_file(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %i.d = invoke { i64, ptr } @_RNvXsa_NtCs2AWtUsOyxgP_3std2fsNtB5_4FileNtNtB7_2io4Read11read_to_end(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECscShS5OxKAqE_6chrono(ptr noalias noundef align 8 dereferenceable(24) %i.a) #16
          to label %common.resume unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, ptr } %i.d, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.i = load i64, ptr %i.c, align 8, !noundef !4
  invoke void @_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parser5parse(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.i)
          to label %_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB2_8TimeZone12from_tz_data.exit unwind label %bb.b

_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB2_8TimeZone12from_tz_data.exit: ; preds = %bb.d
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECscShS5OxKAqE_6chrono.exit6 unwind label %bb.e

bb.e:                                             ; preds = %_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB2_8TimeZone12from_tz_data.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.j, %bb.e ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECscShS5OxKAqE_6chrono.exit6: ; preds = %_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB2_8TimeZone12from_tz_data.exit, %bb.g
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, ptr } %i.d, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 6, ptr %i.m, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %.sroa.47.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECscShS5OxKAqE_6chrono.exit6 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.j:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvMs5_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_13LocalTimeType3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noalias noundef readonly captures(address_is_null) %3, i64 %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %1, -2147483648
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @11, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 18, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.q, label %bb.e

bb.d:                                             ; preds = %bb.q, %bb.r, %bb.s, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.b = add nsw i64 %4, -3
  %spec.select.i.i = icmp ult i64 %i.b, 5
  br i1 %spec.select.i.i, label %.lr.ph.preheader.i, label %bb.r

.lr.ph.preheader.i:                               ; preds = %bb.e
  %5 = trunc nuw i64 %4 to i56
  %i.c = load i8, ptr %3, align 1, !alias.scope !73, !noalias !76, !noundef !4 ; 4 uses
  %i.d = add i8 %i.c, -48
  %or.cond.i = icmp ult i8 %i.d, 10
  %i.e = and i8 %i.c, -33
  %i.f = add i8 %i.e, -65
  %i.g = icmp ult i8 %i.f, 26
  %or.cond16.i = or i1 %or.cond.i, %i.g
  br i1 %or.cond16.i, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.p, %bb.p, %.lr.ph.preheader.i
  %.sroa.0.1.insert.ext = zext i8 %i.c to i56
  %.sroa.0.1.insert.shift = shl nuw nsw i56 %.sroa.0.1.insert.ext, 8
  %.sroa.0.1.insert.insert = or disjoint i56 %.sroa.0.1.insert.shift, %5 ; 2 uses
  %exitcond.not.i = icmp eq i64 %4, 1
  br i1 %exitcond.not.i, label %bb.s, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !73, !noalias !76, !noundef !4 ; 4 uses
  %i.j = add i8 %i.i, -48
  %or.cond.1.i = icmp ult i8 %i.j, 10
  %i.k = and i8 %i.i, -33
  %i.l = add i8 %i.k, -65
  %i.m = icmp ult i8 %i.l, 26
  %or.cond16.1.i = or i1 %or.cond.1.i, %i.m
  br i1 %or.cond16.1.i, label %6, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1.i
  switch i8 %i.i, label %bb.r [
    i8 43, label %6
    i8 45, label %6
  ]

6:                                                ; preds = %bb.g, %bb.g, %.lr.ph.1.i
  %.sroa.0.2.insert.ext = zext i8 %i.i to i56
  %.sroa.0.2.insert.shift = shl nuw nsw i56 %.sroa.0.2.insert.ext, 16
  %.sroa.0.2.insert.insert = or disjoint i56 %.sroa.0.1.insert.insert, %.sroa.0.2.insert.shift ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %4, 2
  br i1 %exitcond.not.i.1, label %bb.s, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %6
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !73, !noalias !76, !noundef !4 ; 4 uses
  %i.p = add i8 %i.o, -48
  %or.cond.2.i = icmp ult i8 %i.p, 10
  %i.q = and i8 %i.o, -33
  %i.r = add i8 %i.q, -65
  %i.s = icmp ult i8 %i.r, 26
  %or.cond16.2.i = or i1 %or.cond.2.i, %i.s
  br i1 %or.cond16.2.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.2.i
  switch i8 %i.o, label %bb.r [
    i8 43, label %bb.i
    i8 45, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %.lr.ph.2.i
  %.sroa.0.3.insert.ext = zext i8 %i.o to i56
  %.sroa.0.3.insert.shift = shl nuw nsw i56 %.sroa.0.3.insert.ext, 24
  %.sroa.0.3.insert.insert = or disjoint i56 %.sroa.0.2.insert.insert, %.sroa.0.3.insert.shift ; 2 uses
  %exitcond19.2.not.i = icmp eq i64 %4, 3
  br i1 %exitcond19.2.not.i, label %bb.s, label %.lr.ph.3.i

.lr.ph.3.i:                                       ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !73, !noalias !76, !noundef !4 ; 4 uses
  %i.v = add i8 %i.u, -48
  %or.cond.3.i = icmp ult i8 %i.v, 10
  %i.w = and i8 %i.u, -33
  %i.x = add i8 %i.w, -65
  %i.y = icmp ult i8 %i.x, 26
  %or.cond16.3.i = or i1 %or.cond.3.i, %i.y
  br i1 %or.cond16.3.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.3.i
  switch i8 %i.u, label %bb.r [
    i8 43, label %bb.k
    i8 45, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %.lr.ph.3.i
  %.sroa.0.4.insert.ext = zext i8 %i.u to i56
  %.sroa.0.4.insert.shift = shl nuw nsw i56 %.sroa.0.4.insert.ext, 32
  %.sroa.0.4.insert.insert = or disjoint i56 %.sroa.0.3.insert.insert, %.sroa.0.4.insert.shift ; 2 uses
  %exitcond19.3.not.i = icmp eq i64 %4, 4
  br i1 %exitcond19.3.not.i, label %bb.s, label %.lr.ph.4.i

.lr.ph.4.i:                                       ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !73, !noalias !76, !noundef !4 ; 4 uses
  %i.ab = add i8 %i.aa, -48
  %or.cond.4.i = icmp ult i8 %i.ab, 10
  %i.ac = and i8 %i.aa, -33
  %i.ad = add i8 %i.ac, -65
  %i.ae = icmp ult i8 %i.ad, 26
  %or.cond16.4.i = or i1 %or.cond.4.i, %i.ae
  br i1 %or.cond16.4.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.4.i
  switch i8 %i.aa, label %bb.r [
    i8 43, label %bb.m
    i8 45, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %.lr.ph.4.i
  %.sroa.0.5.insert.ext = zext i8 %i.aa to i56
  %.sroa.0.5.insert.shift = shl nuw nsw i56 %.sroa.0.5.insert.ext, 40
  %.sroa.0.5.insert.mask = and i56 %.sroa.0.4.insert.insert, -280375465082881
  %.sroa.0.5.insert.insert = or disjoint i56 %.sroa.0.5.insert.mask, %.sroa.0.5.insert.shift ; 2 uses
  %exitcond19.4.not.i = icmp eq i64 %4, 5
  br i1 %exitcond19.4.not.i, label %bb.s, label %.lr.ph.5.i

.lr.ph.5.i:                                       ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !73, !noalias !76, !noundef !4 ; 4 uses
  %i.ah = add i8 %i.ag, -48
  %or.cond.5.i = icmp ult i8 %i.ah, 10
  %i.ai = and i8 %i.ag, -33
  %i.aj = add i8 %i.ai, -65
  %i.ak = icmp ult i8 %i.aj, 26
  %or.cond16.5.i = or i1 %or.cond.5.i, %i.ak
  br i1 %or.cond16.5.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.5.i
  switch i8 %i.ag, label %bb.r [
    i8 43, label %bb.o
    i8 45, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %.lr.ph.5.i
  %.sroa.0.6.insert.ext = zext i8 %i.ag to i56
  %.sroa.0.6.insert.shift = shl nuw i56 %.sroa.0.6.insert.ext, 48
  %.sroa.0.6.insert.mask = and i56 %.sroa.0.5.insert.insert, 281474976710655
  %.sroa.0.6.insert.insert = or disjoint i56 %.sroa.0.6.insert.mask, %.sroa.0.6.insert.shift ; 4 uses
  %exitcond19.5.not.i = icmp eq i64 %4, 6
  br i1 %exitcond19.5.not.i, label %bb.s, label %.lr.ph.6.i

.lr.ph.6.i:                                       ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !73, !noalias !76, !noundef !4 ; 6 uses
  %i.an = add i8 %i.am, -48
  %or.cond.6.i = icmp ult i8 %i.an, 10
  %i.ao = and i8 %i.am, -33
  %i.ap = add i8 %i.ao, -65
  %i.aq = icmp ult i8 %i.ap, 26
  %or.cond16.6.i = or i1 %or.cond.6.i, %i.aq
  br i1 %or.cond16.6.i, label %bb.s, label %7

7:                                                ; preds = %.lr.ph.6.i
  switch i8 %i.am, label %bb.r [
    i8 43, label %bb.s
    i8 45, label %bb.s
  ]

bb.p:                                             ; preds = %.lr.ph.preheader.i
  switch i8 %i.c, label %bb.r [
    i8 43, label %bb.f
    i8 45, label %bb.f
  ]

bb.q:                                             ; preds = %bb.c
  %i.ar = zext i1 %2 to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.as, align 4
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ar, ptr %.sroa.517.0..sroa_idx, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.r:                                             ; preds = %bb.p, %bb.g, %bb.h, %bb.j, %bb.l, %bb.n, %7, %bb.e
  %.sink = phi ptr [ @7, %bb.e ], [ @9, %7 ], [ @9, %bb.n ], [ @9, %bb.l ], [ @9, %bb.j ], [ @9, %bb.h ], [ @9, %bb.g ], [ @9, %bb.p ]
  %.sroa.16.0.ph = phi i64 [ 51, %bb.e ], [ 36, %7 ], [ 36, %bb.n ], [ 36, %bb.l ], [ 36, %bb.j ], [ 36, %bb.h ], [ 36, %bb.g ], [ 36, %bb.p ]
  %8 = ptrtoint ptr %.sink to i64
  store i8 2, ptr %0, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %8, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.16.0.ph, ptr %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  br label %bb.d

bb.s:                                             ; preds = %.lr.ph.6.i, %7, %7, %bb.o, %bb.m, %bb.k, %bb.i, %6, %bb.f
  %.sroa.0.0 = phi i56 [ %.sroa.0.1.insert.insert, %bb.f ], [ %.sroa.0.2.insert.insert, %6 ], [ %.sroa.0.3.insert.insert, %bb.i ], [ %.sroa.0.4.insert.insert, %bb.k ], [ %.sroa.0.5.insert.insert, %bb.m ], [ %.sroa.0.6.insert.insert, %bb.o ], [ %.sroa.0.6.insert.insert, %7 ], [ %.sroa.0.6.insert.insert, %7 ], [ %.sroa.0.6.insert.insert, %.lr.ph.6.i ]
  %.sroa.12.0 = phi i8 [ 0, %bb.f ], [ 0, %6 ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %bb.o ], [ %i.am, %7 ], [ %i.am, %7 ], [ %i.am, %.lr.ph.6.i ]
  %i.at = zext i1 %2 to i8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.au, align 4
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.422.sroa.4.0..sroa.422.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 %.sroa.0.0, ptr %.sroa.422.sroa.4.0..sroa.422.0..sroa_idx.sroa_idx, align 1
  %.sroa.422.sroa.4.0..sroa.422.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.12.0, ptr %.sroa.422.sroa.4.0..sroa.422.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.at, ptr %.sroa.523.0..sroa_idx, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs3_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneNameINtNtCs4NRVxsYgnAr_4core7convert5AsRefeE6as_ref(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.a = load i8, ptr %0, align 1, !alias.scope !78, !noundef !4 ; 2 uses
  %switch.tableidx.i = add i8 %i.a, -3
  %i.b = icmp ult i8 %switch.tableidx.i, 5
  br i1 %i.b, label %_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneName8as_bytes.exit, label %bb.b, !prof !81

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #17, !noalias !78
  unreachable

_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneName8as_bytes.exit: ; preds = %bb.a
  %switch.offset.i = zext nneg i8 %i.a to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %switch.offset.i, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneNameNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.a = load i8, ptr %0, align 1, !alias.scope !88, !noundef !4 ; 2 uses
  %switch.tableidx.i.i = add i8 %i.a, -3
  %i.b = icmp ult i8 %switch.tableidx.i.i, 5
  br i1 %i.b, label %_RNvXs3_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneNameINtNtCs4NRVxsYgnAr_4core7convert5AsRefeE6as_ref.exit, label %bb.b, !prof !81

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #17, !noalias !88
  unreachable

_RNvXs3_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneNameINtNtCs4NRVxsYgnAr_4core7convert5AsRefeE6as_ref.exit: ; preds = %bb.a
  %switch.offset.i.i = zext nneg i8 %i.a to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = tail call noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %switch.offset.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10LeapSecondENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10TransitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone13LocalTimeTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCscShS5OxKAqE_6chrono(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10LeapSecondENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10TransitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone13LocalTimeTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCscShS5OxKAqE_6chrono(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path11is_absolute(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscShS5OxKAqE_6chrono(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinRBw_ECscShS5OxKAqE_6chrono(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs2AWtUsOyxgP_3std2fsNtB6_4File4openNtNtB8_4path7PathBufECscShS5OxKAqE_6chrono(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs2AWtUsOyxgP_3std2fsNtB6_4File4openRNtNtB8_4path4PathECscShS5OxKAqE_6chrono(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parser5parse(ptr dead_on_unwind noalias noundef writable sret([120 x i8]) align 8 captures(address) dereferenceable(120), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNCNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtBM_8TimeZone13from_posix_tz0EBU_(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB2_14TransitionRule14from_tz_string(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs2AWtUsOyxgP_3std2fs4readReECscShS5OxKAqE_6chrono(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsa_NtCs2AWtUsOyxgP_3std2fsNtB5_4FileNtNtB7_2io4Read11read_to_end(ptr noalias noundef align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB2_14TransitionRule20find_local_time_type(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(48), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB2_14TransitionRule31find_local_time_type_from_local(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ssub.sat.i64(i64, i64) #10

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) local_unnamed_addr #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!4 = !{}
!5 = !{i64 8}
!6 = !{i64 0, i64 -9223372036854775808}
!7 = !{i64 1, i64 536870913}
!8 = !{i64 0, i64 2}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{i32 0, i32 2}
!11 = !{i64 0, i64 -9223372036854775807}
!12 = !{i32 0, i32 -1}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtNtB11_2io5error5ErrorEECscShS5OxKAqE_6chrono: argument 0"}
!15 = distinct !{!15, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtNtB11_2io5error5ErrorEECscShS5OxKAqE_6chrono"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB2_8TimeZone3utc: argument 0"}
!18 = distinct !{!18, !"_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB2_8TimeZone3utc"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECscShS5OxKAqE_6chrono: argument 0"}
!21 = distinct !{!21, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECscShS5OxKAqE_6chrono"}
!22 = !{i64 -1, i64 -9223372036854775808}
!23 = !{i8 -1, i8 16}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info5ErrorEEB1z_: argument 0"}
!26 = distinct !{!26, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info5ErrorEEB1z_"}
!27 = !{i8 -1, i8 3}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_RNvMs_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB4_11TimeZoneRef20find_local_time_type: argument 0"}
!30 = distinct !{!30, !"_RNvMs_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB4_11TimeZoneRef20find_local_time_type"}
!31 = !{!29, !32}
!32 = distinct !{!32, !30, !"_RNvMs_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB4_11TimeZoneRef20find_local_time_type: argument 1"}
!33 = !{!34, !29, !32}
!34 = distinct !{!34, !35, !"_RNvMs_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB4_11TimeZoneRef27unix_time_to_unix_leap_time: argument 0"}
!35 = distinct !{!35, !"_RNvMs_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB4_11TimeZoneRef27unix_time_to_unix_leap_time"}
!36 = !{!32}
!37 = !{!38, !40}
!38 = distinct !{!38, !39, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10Transition16binary_search_byNCINvB2_20binary_search_by_keyxNvMs0_Bx_Bv_14unix_leap_timeE0EBF_: argument 0"}
!39 = distinct !{!39, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10Transition16binary_search_byNCINvB2_20binary_search_by_keyxNvMs0_Bx_Bv_14unix_leap_timeE0EBF_"}
!40 = distinct !{!40, !41, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10Transition20binary_search_by_keyxNvMs0_Bx_Bv_14unix_leap_timeEBF_: argument 0"}
!41 = distinct !{!41, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10Transition20binary_search_by_keyxNvMs0_Bx_Bv_14unix_leap_timeEBF_"}
!42 = !{!43, !29, !32}
!43 = distinct !{!43, !39, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10Transition16binary_search_byNCINvB2_20binary_search_by_keyxNvMs0_Bx_Bv_14unix_leap_timeE0EBF_: argument 1"}
!44 = !{i64 4}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_RNvMs_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB4_11TimeZoneRef31find_local_time_type_from_local: argument 0"}
!47 = distinct !{!47, !"_RNvMs_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB4_11TimeZoneRef31find_local_time_type_from_local"}
!48 = !{!49}
!49 = distinct !{!49, !47, !"_RNvMs_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB4_11TimeZoneRef31find_local_time_type_from_local: argument 2"}
!50 = !{i32 1, i32 0}
!51 = !{!46, !52}
!52 = distinct !{!52, !47, !"_RNvMs_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB4_11TimeZoneRef31find_local_time_type_from_local: argument 1"}
!53 = !{!46, !52, !49}
!54 = !{!52, !49}
!55 = !{i8 -1, i8 5}
!56 = !{i8 0, i8 16}
!57 = !{!58, !60}
!58 = distinct !{!58, !59, !"_RNvMs_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB4_11TimeZoneRef8validate: argument 0"}
!59 = distinct !{!59, !"_RNvMs_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB4_11TimeZoneRef8validate"}
!60 = distinct !{!60, !59, !"_RNvMs_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB4_11TimeZoneRef8validate: argument 1"}
!61 = !{!62, !64}
!62 = distinct !{!62, !63, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10LeapSecond16binary_search_byNCINvB2_20binary_search_by_keyxNvMs1_Bx_Bv_14unix_leap_timeE0EBF_: argument 0"}
!63 = distinct !{!63, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10LeapSecond16binary_search_byNCINvB2_20binary_search_by_keyxNvMs1_Bx_Bv_14unix_leap_timeE0EBF_"}
!64 = distinct !{!64, !65, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10LeapSecond20binary_search_by_keyxNvMs1_Bx_Bv_14unix_leap_timeEBF_: argument 0"}
!65 = distinct !{!65, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10LeapSecond20binary_search_by_keyxNvMs1_Bx_Bv_14unix_leap_timeEBF_"}
!66 = !{!67, !68, !58, !60}
!67 = distinct !{!67, !63, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10LeapSecond16binary_search_byNCINvB2_20binary_search_by_keyxNvMs1_Bx_Bv_14unix_leap_timeE0EBF_: argument 1"}
!68 = distinct !{!68, !69, !"_RNvMs_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB4_11TimeZoneRef27unix_leap_time_to_unix_time: argument 0"}
!69 = distinct !{!69, !"_RNvMs_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB4_11TimeZoneRef27unix_leap_time_to_unix_time"}
!70 = !{!68, !58, !60}
!71 = !{i8 0, i8 2}
!72 = !{!60}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneName3new: argument 1"}
!75 = distinct !{!75, !"_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneName3new"}
!76 = !{!77}
!77 = distinct !{!77, !75, !"_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneName3new: argument 0"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneName8as_bytes: argument 0"}
!80 = distinct !{!80, !"_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneName8as_bytes"}
!81 = !{!"branch_weights", i32 10000, i32 1}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_RNvXs3_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneNameINtNtCs4NRVxsYgnAr_4core7convert5AsRefeE6as_ref: argument 0"}
!84 = distinct !{!84, !"_RNvXs3_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneNameINtNtCs4NRVxsYgnAr_4core7convert5AsRefeE6as_ref"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneName8as_bytes: argument 0"}
!87 = distinct !{!87, !"_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneName8as_bytes"}
!88 = !{!86, !83}
end_hunk_0
