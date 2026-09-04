Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil8datetimeNtB2_8DateTime8to_zoned:bb.a
bb.q:                                             ; preds = %bb.p
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #53
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneECsl8pJiQOn4hA_9coreutils.exit

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.et = getelementptr i8, ptr %2, i64 -21       ; 2 uses
  store ptr %i.et, ptr %i.a, align 8
  %i.eu = atomicrmw sub ptr %i.et, i64 1 release, align 8, !noalias !34401
  %i.ev = icmp eq i64 %i.eu, 1
  br i1 %i.ev, label %bb.s, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #53
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneECsl8pJiQOn4hA_9coreutils.exit

bb.t:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34402
  store i32 0, ptr %i.d, align 8, !noalias !34402
  %.sroa.6.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %.sroa.13.0.i, ptr %.sroa.6.0..sroa_idx.i65, align 4, !noalias !34402
  %i.ew = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error11jcore_range(i32 7167) #53, !noalias !34402
  %i.ex = call noundef ptr @_RNvXs_NtNtNtCs3JjgEOiFeOI_4jiff5error2tz6offsetNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) #45, !noalias !34402
  %i.ey = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ew, ptr noundef %i.ex) #53, !noalias !34402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34402
  br label %bb.n

bb.u:                                             ; preds = %bb.i
  %i.ez = add i32 %.sroa.02.0.extract.trunc.i61, -1000000000
  %.sroa.021.0.i.i69 = select i1 %or.cond3.not.i.i62, i32 %i.ez, i32 %.sroa.02.0.extract.trunc.i61 ; 5 uses
  switch i64 %i.o, label %bb.v [
    i64 1, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit
    i64 2, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit
    i64 3, label %bb.w
    i64 0, label %bb.y
    i64 4, label %bb.z
    i64 5, label %bb.aa
  ]

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.fa = trunc i64 %i.n to i32
  %i.fb = ashr i32 %i.fa, 4                       ; 2 uses
  %i.fc = add nsw i32 %i.fb, 93599
  %or.cond.i.i85 = icmp ult i32 %i.fc, 187199
  br i1 %or.cond.i.i85, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit, label %bb.x, !prof !59

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @930, ptr noundef nonnull inttoptr (i64 25 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @932) #50
  unreachable

bb.y:                                             ; preds = %bb.u
  %i.fd = call noundef i32 @_RNvMNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %2, i64 noundef %.sroa.05.0.i.i63, i32 noundef %.sroa.021.0.i.i69) #45
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit

bb.z:                                             ; preds = %bb.u
  %i.fe = getelementptr i8, ptr %2, i64 -4
  %i.ff = call noundef i32 @_RNvMNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.fe, i64 noundef %.sroa.05.0.i.i63, i32 noundef %.sroa.021.0.i.i69) #45
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit

bb.aa:                                            ; preds = %bb.u
  %i.fg = getelementptr i8, ptr %2, i64 -5
  %i.fh = call noundef i32 @_RNvMs0_NtNtCscxuc9kp9KZq_9jiff_core2tz5posixNtB5_8TimeZone9to_offset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fg, i64 noundef %.sroa.05.0.i.i63, i32 noundef %.sroa.021.0.i.i69) #45
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit

_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit: ; preds = %bb.u, %bb.u, %bb.w, %bb.y, %bb.z, %bb.aa
  %.sroa.0.0.i84 = phi i32 [ %i.fh, %bb.aa ], [ 0, %bb.u ], [ 0, %bb.u ], [ %i.fd, %bb.y ], [ %i.ff, %bb.z ], [ %i.fb, %bb.w ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call fastcc void @_RNvMNtNtCscxuc9kp9KZq_9jiff_core2tz6offsetNtB2_6Offset11to_datetime(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.m, i32 noundef %.sroa.0.0.i84, i64 noundef %.sroa.05.0.i.i63, i32 noundef %.sroa.021.0.i.i69) #51
  %i.fi = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.029.0.copyload = load i32, ptr %i.fi, align 8
  %.sroa.032.0.copyload = load i64, ptr %i.m, align 8
  store i32 %.sroa.029.0.copyload, ptr %.sroa.7103.0..sroa_idx, align 4
  store i64 %.sroa.032.0.copyload, ptr %1, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.m

bb.ab:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34403
  store i32 0, ptr %i.c, align 8, !noalias !34403
  %.sroa.6.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.sroa.13.0.i, ptr %.sroa.6.0..sroa_idx.i78, align 4, !noalias !34403
  %i.fj = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error11jcore_range(i32 7167) #53, !noalias !34403
  %i.fk = call noundef ptr @_RNvXs_NtNtNtCs3JjgEOiFeOI_4jiff5error2tz6offsetNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c) #45, !noalias !34403
  %i.fl = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.fj, ptr noundef %i.fk) #53, !noalias !34403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34403
  br label %bb.n

bb.ac:                                            ; preds = %bb.j
  %i.fm = add i32 %.sroa.02.0.extract.trunc.i74, -1000000000
  %.sroa.021.0.i.i82 = select i1 %or.cond3.not.i.i75, i32 %i.fm, i32 %.sroa.02.0.extract.trunc.i74 ; 5 uses
  switch i64 %i.o, label %bb.ad [
    i64 1, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit88
    i64 2, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit88
    i64 3, label %bb.ae
    i64 0, label %bb.ag
    i64 4, label %bb.ah
    i64 5, label %bb.ai
  ]

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.fn = trunc i64 %i.n to i32
  %i.fo = ashr i32 %i.fn, 4                       ; 2 uses
  %i.fp = add nsw i32 %i.fo, 93599
  %or.cond.i.i87 = icmp ult i32 %i.fp, 187199
  br i1 %or.cond.i.i87, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit88, label %bb.af, !prof !59

bb.af:                                            ; preds = %bb.ae
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @930, ptr noundef nonnull inttoptr (i64 25 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @932) #50
  unreachable

bb.ag:                                            ; preds = %bb.ac
  %i.fq = call noundef i32 @_RNvMNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %2, i64 noundef %.sroa.05.0.i.i76, i32 noundef %.sroa.021.0.i.i82) #45
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit88

bb.ah:                                            ; preds = %bb.ac
  %i.fr = getelementptr i8, ptr %2, i64 -4
  %i.fs = call noundef i32 @_RNvMNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.fr, i64 noundef %.sroa.05.0.i.i76, i32 noundef %.sroa.021.0.i.i82) #45
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit88

bb.ai:                                            ; preds = %bb.ac
  %i.ft = getelementptr i8, ptr %2, i64 -5
  %i.fu = call noundef i32 @_RNvMs0_NtNtCscxuc9kp9KZq_9jiff_core2tz5posixNtB5_8TimeZone9to_offset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ft, i64 noundef %.sroa.05.0.i.i76, i32 noundef %.sroa.021.0.i.i82) #45
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit88

_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit88: ; preds = %bb.ac, %bb.ac, %bb.ae, %bb.ag, %bb.ah, %bb.ai
  %.sroa.0.0.i86 = phi i32 [ %i.fu, %bb.ai ], [ 0, %bb.ac ], [ 0, %bb.ac ], [ %i.fq, %bb.ag ], [ %i.fs, %bb.ah ], [ %i.fo, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call fastcc void @_RNvMNtNtCscxuc9kp9KZq_9jiff_core2tz6offsetNtB2_6Offset11to_datetime(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.l, i32 noundef %.sroa.0.0.i86, i64 noundef %.sroa.05.0.i.i76, i32 noundef %.sroa.021.0.i.i82) #51
  %i.fv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.035.0.copyload = load i32, ptr %i.fv, align 8
  %.sroa.038.0.copyload = load i64, ptr %i.l, align 8
  store i32 %.sroa.035.0.copyload, ptr %.sroa.7103.0..sroa_idx, align 4
  store i64 %.sroa.038.0.copyload, ptr %1, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.m

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i, %bb.n, %bb.n, %bb.n, %bb.n, %bb.m
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCscxuc9kp9KZq_9jiff_core2tz6offsetNtB2_6Offset11to_datetime(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = add nsw i64 %i.a, 378683424000
  %i.c = add i64 %i.b, %2                         ; 2 uses
  %i.d = udiv i64 %i.c, 86400
  %i.e = trunc i64 %i.d to i32                    ; 6 uses
  %i.f = urem i64 %i.c, 86400                     ; 2 uses
  %i.g = trunc nuw nsw i64 %i.f to i32            ; 2 uses
  %i.h = icmp slt i32 %3, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 0
  %i.i = add nsw i32 %3, 1000000000               ; 2 uses
  br i1 %.not, label %.thread, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.a
  %.sroa.09.0 = phi i32 [ %i.m, %bb.d ], [ %i.g, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i32 [ %i.i, %bb.d ], [ %3, %bb.a ] ; 3 uses
  %i.j = add i32 %i.e, -11323
  %or.cond = icmp ult i32 %i.j, 7304484
  br i1 %or.cond, label %bb.f, label %bb.e, !prof !59

.thread:                                          ; preds = %bb.b
  %i.k = add i32 %i.e, -1
  %i.l = add i32 %i.e, -11324
  %or.cond54 = icmp ult i32 %i.l, 7304484
  br i1 %or.cond54, label %.thread67, label %bb.e, !prof !59

bb.d:                                             ; preds = %bb.b
  %i.m = add nsw i32 %i.g, -1
  br label %bb.c

bb.e:                                             ; preds = %.thread, %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @901, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @903) #50
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.n = icmp eq i32 %.sroa.09.0, 0
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = udiv i32 %.sroa.09.0, 3600               ; 2 uses
  %i.p = urem i32 %.sroa.09.0, 3600               ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %.thread67

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread67
  %.sroa.06.05665 = phi i32 [ %i.e, %bb.f ], [ %i.e, %bb.g ], [ %.sroa.06.0566471, %.thread67 ]
  %.sroa.0.05763 = phi i32 [ %.sroa.0.0, %bb.f ], [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0576272, %.thread67 ] ; 2 uses
  %.sroa.041.0.shrunk = phi i32 [ 0, %bb.f ], [ %i.o, %bb.g ], [ %4, %.thread67 ]
  %.sroa.043.0 = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %i.y, %.thread67 ]
  %or.cond2 = icmp ult i32 %.sroa.0.05763, 1000000000
  br i1 %or.cond2, label %bb.j, label %bb.i, !prof !59

.thread67:                                        ; preds = %.thread, %bb.g
  %i.r = phi i32 [ %i.p, %bb.g ], [ 3599, %.thread ]
  %4 = phi i32 [ %i.o, %bb.g ], [ 23, %.thread ]
  %.sroa.0.0576272 = phi i32 [ %.sroa.0.0, %bb.g ], [ %i.i, %.thread ]
  %.sroa.06.0566471 = phi i32 [ %i.e, %bb.g ], [ %i.k, %.thread ]
  %.lhs.trunc = trunc nuw nsw i32 %i.r to i16     ; 2 uses
  %i.s = udiv i16 %.lhs.trunc, 60
  %i.t = zext nneg i16 %i.s to i64
  %i.u = urem i16 %.lhs.trunc, 60
  %i.v = zext nneg i16 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 48
  %i.x = shl nuw nsw i64 %i.t, 40
  %i.y = or disjoint i64 %i.w, %i.x
  br label %bb.h

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @904, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @905) #50
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.z = shl nuw nsw i32 %.sroa.06.05665, 2
  %i.aa = add nuw nsw i32 %i.z, 33266051          ; 2 uses
  %i.ab = urem i32 %i.aa, 146097
  %i.ac = or i32 %i.ab, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = mul nuw nsw i64 %i.ad, 2939745          ; 2 uses
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = udiv i32 %i.af, 11758980
  %i.ah = mul nuw nsw i32 %i.ag, 2141
  %i.ai = add nuw nsw i32 %i.ah, 197913           ; 3 uses
  %.lhs.trunc.i = trunc i32 %i.ai to i16
  %i.aj = udiv i16 %.lhs.trunc.i, 2141
  %.zext.i = zext nneg i16 %i.aj to i32
  %.sroa.3.0.insert.ext.i = shl nuw nsw i32 %.zext.i, 24
  %.sroa.3.0.insert.shift.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i, 16777216
  %i.ak = icmp ugt i32 %i.af, -696719417          ; 2 uses
  %i.al = and i32 %i.ai, 4128768
  %i.am = add nuw nsw i32 %i.al, 15990784
  %.sroa.2.0.insert.ext.i = select i1 %i.ak, i32 %i.am, i32 %i.ai
  %.sroa.2.0.insert.shift.i = and i32 %.sroa.2.0.insert.ext.i, 16711680
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %i.an = udiv i32 %i.aa, 146097
  %i.ao = mul nuw nsw i32 %i.an, 100
  %i.ap = add nuw nsw i32 %i.ao, 32736
  %i.aq = lshr i64 %i.ae, 32
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = add nuw nsw i32 %i.ap, %i.ar
  %i.at = zext i1 %i.ak to i32
  %i.au = add nuw nsw i32 %i.as, %i.at
  %.sroa.0.0.insert.ext.i = and i32 %i.au, 65535
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %.sroa.440.0.insert.ext = zext nneg i32 %.sroa.041.0.shrunk to i64
  %.sroa.440.0.insert.shift = shl nuw nsw i64 %.sroa.440.0.insert.ext, 32
  %.sroa.039.0.insert.ext = zext nneg i32 %.sroa.0.05763 to i64
  %.sroa.440.0.insert.insert = or i64 %.sroa.043.0, %.sroa.039.0.insert.ext
  %.sroa.039.0.insert.insert = or i64 %.sroa.440.0.insert.insert, %.sroa.440.0.insert.shift
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.av, align 4
  store i64 %.sroa.039.0.insert.insert, ptr %0, align 4
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB2_6Finder3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 2, -9223372036854775808) %2) unnamed_addr #4 {
bb.a:
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.a = icmp samesign ult i64 %2, 4
  br i1 %i.a, label %.lr.ph.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %2, 9223372036854775804
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.new
  %.sroa.0.05.i = phi i64 [ 0, %.new ], [ %i.y, %.lr.ph.i ]
  %.sroa.02.04.i = phi ptr [ %1, %.new ], [ %i.t, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i, i64 1
  %i.c = load i8, ptr %.sroa.02.04.i, align 1, !alias.scope !34411, !noundef !12
  %i.d = and i8 %i.c, 63
  %i.e = zext nneg i8 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = or i64 %i.f, %.sroa.0.05.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i, i64 2
  %i.i = load i8, ptr %i.b, align 1, !alias.scope !34411, !noundef !12
  %i.j = and i8 %i.i, 63
  %i.k = zext nneg i8 %i.j to i64
  %i.l = shl nuw i64 1, %i.k
  %i.m = or i64 %i.l, %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i, i64 3
  %i.o = load i8, ptr %i.h, align 1, !alias.scope !34411, !noundef !12
  %i.p = and i8 %i.o, 63
  %i.q = zext nneg i8 %i.p to i64
  %i.r = shl nuw i64 1, %i.q
  %i.s = or i64 %i.r, %i.m
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i, i64 4 ; 2 uses
  %i.u = load i8, ptr %i.n, align 1, !alias.scope !34411, !noundef !12
  %i.v = and i8 %i.u, 63
  %i.w = zext nneg i8 %i.v to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = or i64 %i.x, %i.s                        ; 3 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvMs3_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit.unr-lcssa, label %.lr.ph.i

_RNvMs3_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs3_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_RNvMs3_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit.unr-lcssa, %bb.a
  %.sroa.0.05.i.epil.init = phi i64 [ 0, %bb.a ], [ %i.y, %_RNvMs3_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit.unr-lcssa ]
  %.sroa.02.04.i.epil.init = phi ptr [ %1, %bb.a ], [ %i.t, %_RNvMs3_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.0.05.i.epil = phi i64 [ %i.ae, %.lr.ph.i.epil ], [ %.sroa.0.05.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.sroa.02.04.i.epil = phi ptr [ %i.z, %.lr.ph.i.epil ], [ %.sroa.02.04.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.epil, i64 1
  %i.aa = load i8, ptr %.sroa.02.04.i.epil, align 1, !alias.scope !34411, !noundef !12
  %i.ab = and i8 %i.aa, 63
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = or i64 %i.ad, %.sroa.0.05.i.epil        ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs3_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit, label %.lr.ph.i.epil, !llvm.loop !34406

_RNvMs3_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit: ; preds = %.lr.ph.i.epil, %_RNvMs3_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit.unr-lcssa
  %.lcssa37 = phi i64 [ %i.y, %_RNvMs3_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit.unr-lcssa ], [ %i.ae, %.lr.ph.i.epil ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34412)
  br label %.split.i

.split.i:                                         ; preds = %bb.g, %_RNvMs3_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit
  %i.af = phi i64 [ %i.au, %bb.g ], [ 1, %_RNvMs3_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit ]
  %.sroa.0.031.i = phi i64 [ %.sroa.0.1.i, %bb.g ], [ 0, %_RNvMs3_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit ] ; 4 uses
  %.sroa.5.030.i = phi i64 [ %.sroa.5.1.i, %bb.g ], [ 1, %_RNvMs3_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit ] ; 3 uses
  %.sroa.05.029.i = phi i64 [ %.sroa.05.1.i, %bb.g ], [ 1, %_RNvMs3_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit ] ; 4 uses
  %.sroa.012.028.i = phi i64 [ %.sroa.012.1.i, %bb.g ], [ 0, %_RNvMs3_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit ] ; 2 uses
  %i.ag = add i64 %.sroa.012.028.i, %.sroa.0.031.i ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %2
  br i1 %i.ah, label %bb.b, label %.split33.us.i

bb.b:                                             ; preds = %.split.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !34412, !noundef !12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !34412, !noundef !12 ; 2 uses
  %i.am = icmp ult i8 %i.al, %i.aj
  br i1 %i.am, label %bb.f, label %bb.c

.split33.us.i:                                    ; preds = %.split.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef range(i64 2, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @939) #50, !noalias !34412
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.an = icmp ugt i8 %i.al, %i.aj
  %i.ao = add i64 %.sroa.012.028.i, 1             ; 3 uses
  br i1 %i.an, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = icmp eq i64 %i.ao, %.sroa.5.030.i       ; 2 uses
  %spec.select.i = select i1 %i.ap, i64 0, i64 %i.ao
  %i.aq = select i1 %i.ap, i64 %.sroa.5.030.i, i64 0
  %spec.select25.i = add i64 %i.aq, %.sroa.05.029.i
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ar = add i64 %i.ao, %.sroa.05.029.i          ; 2 uses
  %i.as = sub i64 %i.ar, %.sroa.0.031.i
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.at = add i64 %.sroa.05.029.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.012.1.i = phi i64 [ 0, %bb.f ], [ 0, %bb.e ], [ %spec.select.i, %bb.d ] ; 2 uses
  %.sroa.05.1.i = phi i64 [ %i.at, %bb.f ], [ %i.ar, %bb.e ], [ %spec.select25.i, %bb.d ] ; 2 uses
  %.sroa.5.1.i = phi i64 [ 1, %bb.f ], [ %i.as, %bb.e ], [ %.sroa.5.030.i, %bb.d ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.05.029.i, %bb.f ], [ %.sroa.0.031.i, %bb.e ], [ %.sroa.0.031.i, %bb.d ] ; 3 uses
  %i.au = add i64 %.sroa.05.1.i, %.sroa.012.1.i   ; 2 uses
  %i.av = icmp ult i64 %i.au, %2
  br i1 %i.av, label %.split.i, label %_RNvMs1_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit

_RNvMs1_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit: ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34413)
  br label %.split.us.i

.split.us.i:                                      ; preds = %bb.m, %_RNvMs1_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit
  %i.aw = phi i64 [ %i.bl, %bb.m ], [ 1, %_RNvMs1_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit ]
  %.sroa.0.031.us.i = phi i64 [ %.sroa.0.1.us.i, %bb.m ], [ 0, %_RNvMs1_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit ] ; 4 uses
  %.sroa.5.030.us.i = phi i64 [ %.sroa.5.1.us.i, %bb.m ], [ 1, %_RNvMs1_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit ] ; 3 uses
  %.sroa.05.029.us.i = phi i64 [ %.sroa.05.1.us.i, %bb.m ], [ 1, %_RNvMs1_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit ] ; 4 uses
  %.sroa.012.028.us.i = phi i64 [ %.sroa.012.1.us.i, %bb.m ], [ 0, %_RNvMs1_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit ] ; 2 uses
  %i.ax = add i64 %.sroa.012.028.us.i, %.sroa.0.031.us.i ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %2
  br i1 %i.ay, label %bb.h, label %.split33.us.i7

bb.h:                                             ; preds = %.split.us.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !34413, !noundef !12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !34413, !noundef !12 ; 2 uses
  %i.bd = icmp ugt i8 %i.bc, %i.ba
  br i1 %i.bd, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = icmp ult i8 %i.bc, %i.ba
  %i.bf = add i64 %.sroa.012.028.us.i, 1          ; 3 uses
  br i1 %i.be, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp eq i64 %i.bf, %.sroa.5.030.us.i    ; 2 uses
  %spec.select.us.i = select i1 %i.bg, i64 0, i64 %i.bf
  %i.bh = select i1 %i.bg, i64 %.sroa.5.030.us.i, i64 0
  %spec.select25.us.i = add i64 %i.bh, %.sroa.05.029.us.i
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.bi = add i64 %i.bf, %.sroa.05.029.us.i       ; 2 uses
  %i.bj = sub i64 %i.bi, %.sroa.0.031.us.i
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.bk = add i64 %.sroa.05.029.us.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.012.1.us.i = phi i64 [ 0, %bb.l ], [ 0, %bb.k ], [ %spec.select.us.i, %bb.j ] ; 2 uses
  %.sroa.05.1.us.i = phi i64 [ %i.bk, %bb.l ], [ %i.bi, %bb.k ], [ %spec.select25.us.i, %bb.j ] ; 2 uses
  %.sroa.5.1.us.i = phi i64 [ 1, %bb.l ], [ %i.bj, %bb.k ], [ %.sroa.5.030.us.i, %bb.j ] ; 2 uses
  %.sroa.0.1.us.i = phi i64 [ %.sroa.05.029.us.i, %bb.l ], [ %.sroa.0.031.us.i, %bb.k ], [ %.sroa.0.031.us.i, %bb.j ] ; 3 uses
  %i.bl = add i64 %.sroa.05.1.us.i, %.sroa.012.1.us.i ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %2
  br i1 %i.bm, label %.split.us.i, label %_RNvMs1_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit8

.split33.us.i7:                                   ; preds = %.split.us.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef range(i64 2, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @939) #50, !noalias !34413
  unreachable

_RNvMs1_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit8: ; preds = %bb.m
  %i.bn = icmp ugt i64 %.sroa.0.1.i, %.sroa.0.1.us.i
  %.6 = tail call i64 @llvm.umax.i64(i64 %.sroa.0.1.i, i64 %.sroa.0.1.us.i) ; 2 uses
  %.sroa.03.0 = select i1 %i.bn, i64 %.sroa.5.1.i, i64 %.sroa.5.1.us.i
  %i.bo = tail call { i64, i64 } @_RNvMs0_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all6twowayNtB5_5Shift7forward(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.03.0, i64 noundef %.6) #45 ; 2 uses
  %i.bp = extractvalue { i64, i64 } %i.bo, 0
  %i.bq = extractvalue { i64, i64 } %i.bo, 1
  store i64 %i.bp, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
