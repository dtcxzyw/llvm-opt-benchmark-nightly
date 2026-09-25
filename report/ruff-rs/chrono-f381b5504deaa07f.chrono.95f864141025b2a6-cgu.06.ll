Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/chrono-f381b5504deaa07f.chrono.95f864141025b2a6-cgu.06?download=true
inline.NumInlined: 99
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB2_8TimeZone9from_file:bb.a
  %i.f = extractvalue { i64, ptr } %i.d, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.i = load i64, ptr %i.c, align 8, !noundef !3
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
  br i1 %.not, label %bb.s, label %bb.e

bb.d:                                             ; preds = %bb.s, %.loopexit, %bb.t, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.b = add nsw i64 %4, -3
  %spec.select.i.i = icmp ult i64 %i.b, 5
  br i1 %spec.select.i.i, label %.lr.ph.preheader.i, label %.loopexit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.c = trunc nuw i64 %4 to i56
  %i.d = load i8, ptr %3, align 1, !alias.scope !77, !noalias !78, !noundef !3 ; 4 uses
  %i.e = add i8 %i.d, -48
  %or.cond.i = icmp ult i8 %i.e, 10
  %i.f = and i8 %i.d, -33
  %i.g = add i8 %i.f, -65
  %i.h = icmp ult i8 %i.g, 26
  %or.cond16.i = or i1 %or.cond.i, %i.h
  br i1 %or.cond16.i, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.r, %bb.r, %.lr.ph.preheader.i
  %.sroa.0.1.insert.ext = zext i8 %i.d to i56
  %.sroa.0.1.insert.shift = shl nuw nsw i56 %.sroa.0.1.insert.ext, 8
  %.sroa.0.1.insert.insert = or disjoint i56 %.sroa.0.1.insert.shift, %i.c ; 2 uses
  %exitcond.not.i = icmp eq i64 %4, 1
  br i1 %exitcond.not.i, label %bb.t, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !77, !noalias !78, !noundef !3 ; 4 uses
  %i.k = add i8 %i.j, -48
  %or.cond.i.1 = icmp ult i8 %i.k, 10
  %i.l = and i8 %i.j, -33
  %i.m = add i8 %i.l, -65
  %i.n = icmp ult i8 %i.m, 26
  %or.cond16.i.1 = or i1 %or.cond.i.1, %i.n
  br i1 %or.cond16.i.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  switch i8 %i.j, label %.loopexit [
    i8 43, label %bb.h
    i8 45, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %.lr.ph.i.1
  %.sroa.0.2.insert.ext = zext i8 %i.j to i56
  %.sroa.0.2.insert.shift = shl nuw nsw i56 %.sroa.0.2.insert.ext, 16
  %.sroa.0.2.insert.insert = or disjoint i56 %.sroa.0.1.insert.insert, %.sroa.0.2.insert.shift ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %4, 2
  br i1 %exitcond.not.i.1, label %bb.t, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !77, !noalias !78, !noundef !3 ; 4 uses
  %i.q = add i8 %i.p, -48
  %or.cond.i.2 = icmp ult i8 %i.q, 10
  %i.r = and i8 %i.p, -33
  %i.s = add i8 %i.r, -65
  %i.t = icmp ult i8 %i.s, 26
  %or.cond16.i.2 = or i1 %or.cond.i.2, %i.t
  br i1 %or.cond16.i.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.2
  switch i8 %i.p, label %.loopexit [
    i8 43, label %bb.j
    i8 45, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %.lr.ph.i.2
  %.sroa.0.3.insert.ext = zext i8 %i.p to i56
  %.sroa.0.3.insert.shift = shl nuw nsw i56 %.sroa.0.3.insert.ext, 24
  %.sroa.0.3.insert.insert = or disjoint i56 %.sroa.0.2.insert.insert, %.sroa.0.3.insert.shift ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %4, 3
  br i1 %exitcond.not.i.2, label %bb.t, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !77, !noalias !78, !noundef !3 ; 4 uses
  %i.w = add i8 %i.v, -48
  %or.cond.i.3 = icmp ult i8 %i.w, 10
  %i.x = and i8 %i.v, -33
  %i.y = add i8 %i.x, -65
  %i.z = icmp ult i8 %i.y, 26
  %or.cond16.i.3 = or i1 %or.cond.i.3, %i.z
  br i1 %or.cond16.i.3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.3
  switch i8 %i.v, label %.loopexit [
    i8 43, label %bb.l
    i8 45, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %.lr.ph.i.3
  %.sroa.0.4.insert.ext = zext i8 %i.v to i56
  %.sroa.0.4.insert.shift = shl nuw nsw i56 %.sroa.0.4.insert.ext, 32
  %.sroa.0.4.insert.insert = or disjoint i56 %.sroa.0.3.insert.insert, %.sroa.0.4.insert.shift ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %4, 4
  br i1 %exitcond.not.i.3, label %bb.t, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !77, !noalias !78, !noundef !3 ; 4 uses
  %i.ac = add i8 %i.ab, -48
  %or.cond.i.4 = icmp ult i8 %i.ac, 10
  %i.ad = and i8 %i.ab, -33
  %i.ae = add i8 %i.ad, -65
  %i.af = icmp ult i8 %i.ae, 26
  %or.cond16.i.4 = or i1 %or.cond.i.4, %i.af
  br i1 %or.cond16.i.4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.4
  switch i8 %i.ab, label %.loopexit [
    i8 43, label %bb.n
    i8 45, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %.lr.ph.i.4
  %.sroa.0.5.insert.ext = zext i8 %i.ab to i56
  %.sroa.0.5.insert.shift = shl nuw nsw i56 %.sroa.0.5.insert.ext, 40
  %.sroa.0.5.insert.mask = and i56 %.sroa.0.4.insert.insert, -280375465082881
  %.sroa.0.5.insert.insert = or disjoint i56 %.sroa.0.5.insert.mask, %.sroa.0.5.insert.shift ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %4, 5
  br i1 %exitcond.not.i.4, label %bb.t, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !77, !noalias !78, !noundef !3 ; 4 uses
  %i.ai = add i8 %i.ah, -48
  %or.cond.i.5 = icmp ult i8 %i.ai, 10
  %i.aj = and i8 %i.ah, -33
  %i.ak = add i8 %i.aj, -65
  %i.al = icmp ult i8 %i.ak, 26
  %or.cond16.i.5 = or i1 %or.cond.i.5, %i.al
  br i1 %or.cond16.i.5, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.5
  switch i8 %i.ah, label %.loopexit [
    i8 43, label %bb.p
    i8 45, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %.lr.ph.i.5
  %.sroa.0.6.insert.ext = zext i8 %i.ah to i56
  %.sroa.0.6.insert.shift = shl nuw i56 %.sroa.0.6.insert.ext, 48
  %.sroa.0.6.insert.mask = and i56 %.sroa.0.5.insert.insert, 281474976710655
  %.sroa.0.6.insert.insert = or disjoint i56 %.sroa.0.6.insert.mask, %.sroa.0.6.insert.shift ; 4 uses
  %exitcond.not.i.5 = icmp eq i64 %4, 6
  br i1 %exitcond.not.i.5, label %bb.t, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !77, !noalias !78, !noundef !3 ; 6 uses
  %i.ao = add i8 %i.an, -48
  %or.cond.i.6 = icmp ult i8 %i.ao, 10
  %i.ap = and i8 %i.an, -33
  %i.aq = add i8 %i.ap, -65
  %i.ar = icmp ult i8 %i.aq, 26
  %or.cond16.i.6 = or i1 %or.cond.i.6, %i.ar
  br i1 %or.cond16.i.6, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.6
  switch i8 %i.an, label %.loopexit [
    i8 43, label %bb.t
    i8 45, label %bb.t
  ]

bb.r:                                             ; preds = %.lr.ph.preheader.i
  switch i8 %i.d, label %.loopexit [
    i8 43, label %bb.f
    i8 45, label %bb.f
  ]

bb.s:                                             ; preds = %bb.c
  %i.as = zext i1 %2 to i8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.at, align 4
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.as, ptr %.sroa.517.0..sroa_idx, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.d

.loopexit:                                        ; preds = %bb.r, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.e
  %.sroa.11.0.ph = phi ptr [ @7, %bb.e ], [ @9, %bb.q ], [ @9, %bb.o ], [ @9, %bb.m ], [ @9, %bb.k ], [ @9, %bb.i ], [ @9, %bb.g ], [ @9, %bb.r ]
  %.sroa.17.0.ph = phi i64 [ 51, %bb.e ], [ 36, %bb.q ], [ 36, %bb.o ], [ 36, %bb.m ], [ 36, %bb.k ], [ 36, %bb.i ], [ 36, %bb.g ], [ 36, %bb.r ]
  %i.au = ptrtoint ptr %.sroa.11.0.ph to i64
  store i8 2, ptr %0, align 8
  %.sroa.435.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.au, ptr %.sroa.435.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.17.0.ph, ptr %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  br label %bb.d

bb.t:                                             ; preds = %.lr.ph.i.6, %bb.q, %bb.q, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f
  %.sroa.0.0 = phi i56 [ %.sroa.0.1.insert.insert, %bb.f ], [ %.sroa.0.2.insert.insert, %bb.h ], [ %.sroa.0.3.insert.insert, %bb.j ], [ %.sroa.0.4.insert.insert, %bb.l ], [ %.sroa.0.5.insert.insert, %bb.n ], [ %.sroa.0.6.insert.insert, %bb.p ], [ %.sroa.0.6.insert.insert, %bb.q ], [ %.sroa.0.6.insert.insert, %bb.q ], [ %.sroa.0.6.insert.insert, %.lr.ph.i.6 ]
  %.sroa.12.0 = phi i8 [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.p ], [ %i.an, %bb.q ], [ %i.an, %bb.q ], [ %i.an, %.lr.ph.i.6 ]
  %i.av = zext i1 %2 to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.aw, align 4
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.422.sroa.4.0..sroa.422.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 %.sroa.0.0, ptr %.sroa.422.sroa.4.0..sroa.422.0..sroa_idx.sroa_idx, align 1
  %.sroa.422.sroa.4.0..sroa.422.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.12.0, ptr %.sroa.422.sroa.4.0..sroa.422.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.av, ptr %.sroa.523.0..sroa_idx, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs3_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneNameINtNtCs4NRVxsYgnAr_4core7convert5AsRefeE6as_ref(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.a = load i8, ptr %0, align 1, !alias.scope !81, !noundef !3 ; 2 uses
  %switch.tableidx.i = add i8 %i.a, -3
  %i.b = icmp ult i8 %switch.tableidx.i, 5
  br i1 %i.b, label %_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneName8as_bytes.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #17, !noalias !81
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.a = load i8, ptr %0, align 1, !alias.scope !88, !noundef !3 ; 2 uses
  %switch.tableidx.i.i = add i8 %i.a, -3
  %i.b = icmp ult i8 %switch.tableidx.i.i, 5
  br i1 %i.b, label %_RNvXs3_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_12TimeZoneNameINtNtCs4NRVxsYgnAr_4core7convert5AsRefeE6as_ref.exit, label %bb.b, !prof !10

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
end_hunk_0
