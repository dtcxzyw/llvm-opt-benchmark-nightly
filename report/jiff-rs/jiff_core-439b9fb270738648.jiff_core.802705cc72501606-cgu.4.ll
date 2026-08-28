Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_core-439b9fb270738648.jiff_core.802705cc72501606-cgu.4?download=true
inline.NumInlined: 54
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs6_NtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB5_6OffsetNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt:bb.a
bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsb09rMIQFAXO_9jiff_core, ptr %.sroa.415.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %i.ab, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.ac = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !7, !align !23, !noundef !7
  %i.af = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae, ptr noundef nonnull @26, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsb09rMIQFAXO_9jiff_core, ptr %.sroa.458.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.ag, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %i.ah, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.466.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.d, ptr %i.ai, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.470.0..sroa_idx, align 8
  %i.aj = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !7, !align !23, !noundef !7
  %i.am = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al, ptr noundef nonnull @22, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsb09rMIQFAXO_9jiff_core, ptr %.sroa.434.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %i.an, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.438.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.ao, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.442.0..sroa_idx, align 8
  %i.ap = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !7, !align !23, !noundef !7
  %i.as = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, ptr noundef nonnull @27, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs9_NtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB5_14AmbiguousErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = load i16, ptr %0, align 4, !range !90, !noundef !7
  switch i16 %i.g, label %default.unreachable39 [
    i16 0, label %bb.b
    i16 1, label %bb.c
    i16 2, label %bb.d
  ]

default.unreachable39:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = tail call noundef zeroext i1 @_RNvXs7_NtCsb09rMIQFAXO_9jiff_core6boundsNtB5_10RangeErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !noundef !7
  store i32 %i.k, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 4, !noundef !7
  store i32 %i.m, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs6_NtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB5_6OffsetNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.n, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs6_NtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB5_6OffsetNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.o = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !7, !align !23, !noundef !7
  %i.r = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noundef nonnull @28, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !noundef !7
  store i32 %i.t, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 4, !noundef !7
  store i32 %i.v, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs6_NtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB5_6OffsetNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.w, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs6_NtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB5_6OffsetNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  %i.x = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !7, !align !23, !noundef !7
  %i.aa = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noundef nonnull @29, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.b ], [ %i.r, %bb.c ], [ %i.aa, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCsb09rMIQFAXO_9jiff_core9timestampNtB4_9TimestampNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !noundef !7 ; 3 uses
  %i.g = add i64 %i.d, 378683424000               ; 2 uses
  %i.h = udiv i64 %i.g, 86400
  %i.i = trunc i64 %i.h to i32                    ; 6 uses
  %i.j = urem i64 %i.g, 86400                     ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32            ; 2 uses
  %i.l = icmp slt i32 %i.f, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %i.j, 0
  %i.m = add nsw i32 %i.f, 1000000000             ; 2 uses
  br i1 %.not.i, label %.thread.i, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.a
  %.sroa.09.0.i = phi i32 [ %i.q, %bb.d ], [ %i.k, %bb.a ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %i.m, %bb.d ], [ %i.f, %bb.a ] ; 3 uses
  %i.n = add i32 %i.i, -11323
  %or.cond.i = icmp ult i32 %i.n, 7304484
  br i1 %or.cond.i, label %bb.f, label %bb.e, !prof !91

.thread.i:                                        ; preds = %bb.b
  %i.o = add nsw i32 %i.i, -1
  %i.p = add i32 %i.i, -11324
  %or.cond54.i = icmp ult i32 %i.p, 7304484
  br i1 %or.cond54.i, label %.thread67.i, label %bb.e, !prof !91

bb.d:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.k, -1
  br label %bb.c

bb.e:                                             ; preds = %.thread.i, %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21, !noalias !92
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.r = icmp eq i32 %.sroa.09.0.i, 0
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = udiv i32 %.sroa.09.0.i, 3600
  %i.t = trunc nuw nsw i32 %i.s to i8             ; 2 uses
  %i.u = urem i32 %.sroa.09.0.i, 3600             ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %.thread67.i

bb.h:                                             ; preds = %.thread67.i, %bb.g, %bb.f
  %.sroa.06.05665.i = phi i32 [ %i.i, %bb.f ], [ %i.i, %bb.g ], [ %.sroa.06.0566471.i, %.thread67.i ]
  %.sroa.0.05763.i = phi i32 [ %.sroa.0.0.i, %bb.f ], [ %.sroa.0.0.i, %bb.g ], [ %.sroa.0.0576272.i, %.thread67.i ] ; 2 uses
  %.sroa.041.0.i = phi i8 [ 0, %bb.f ], [ %i.t, %bb.g ], [ %i.x, %.thread67.i ]
  %.sroa.043.0.i = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %2, %.thread67.i ]
  %or.cond2.i = icmp ult i32 %.sroa.0.05763.i, 1000000000
  br i1 %or.cond2.i, label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB2_6Offset11to_datetime.exit, label %bb.i, !prof !91

.thread67.i:                                      ; preds = %bb.g, %.thread.i
  %i.w = phi i32 [ %i.u, %bb.g ], [ 3599, %.thread.i ]
  %i.x = phi i8 [ %i.t, %bb.g ], [ 23, %.thread.i ]
  %.sroa.0.0576272.i = phi i32 [ %.sroa.0.0.i, %bb.g ], [ %i.m, %.thread.i ]
  %.sroa.06.0566471.i = phi i32 [ %i.i, %bb.g ], [ %i.o, %.thread.i ]
  %.lhs.trunc.i = trunc nuw nsw i32 %i.w to i16   ; 2 uses
  %i.y = udiv i16 %.lhs.trunc.i, 60
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = urem i16 %.lhs.trunc.i, 60
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 48
  %i.ad = shl nuw nsw i64 %i.z, 40
  %2 = or disjoint i64 %i.ac, %i.ad
  br label %bb.h

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #21, !noalias !92
  unreachable

_RNvMNtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB2_6Offset11to_datetime.exit: ; preds = %bb.h
  %i.ae = shl nuw nsw i32 %.sroa.06.05665.i, 2
  %i.af = add nuw nsw i32 %i.ae, 33266051         ; 2 uses
  %i.ag = urem i32 %i.af, 146097
  %i.ah = or i32 %i.ag, 3
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = mul nuw nsw i64 %i.ai, 2939745          ; 2 uses
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = udiv i32 %i.ak, 11758980
  %i.am = mul nuw nsw i32 %i.al, 2141
  %i.an = add nuw nsw i32 %i.am, 197913           ; 3 uses
  %.lhs.trunc.i.i = trunc i32 %i.an to i16
  %i.ao = udiv i16 %.lhs.trunc.i.i, 2141
  %.zext.i.i = zext nneg i16 %i.ao to i32
  %.sroa.3.0.insert.ext.i.i = shl nuw nsw i32 %.zext.i.i, 24
  %.sroa.3.0.insert.shift.i.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 16777216
  %i.ap = icmp ugt i32 %i.ak, -696719417          ; 2 uses
  %i.aq = and i32 %i.an, 4128768
  %i.ar = add nuw nsw i32 %i.aq, 15990784
  %.sroa.2.0.insert.ext.i.i = select i1 %i.ap, i32 %i.ar, i32 %i.an
  %.sroa.2.0.insert.shift.i.i = and i32 %.sroa.2.0.insert.ext.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %i.as = udiv i32 %i.af, 146097
  %i.at = mul nuw nsw i32 %i.as, 100
  %i.au = add nuw nsw i32 %i.at, 32736
  %i.av = lshr i64 %i.aj, 32
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = add nuw nsw i32 %i.au, %i.aw
  %i.ay = zext i1 %i.ap to i32
  %i.az = add nuw nsw i32 %i.ax, %i.ay
  %.sroa.0.0.insert.ext.i.i = and i32 %i.az, 65535
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.440.0.insert.ext.i = zext nneg i8 %.sroa.041.0.i to i64
  %.sroa.440.0.insert.shift.i = shl nuw nsw i64 %.sroa.440.0.insert.ext.i, 32
  %.sroa.039.0.insert.ext.i = zext nneg i32 %.sroa.0.05763.i to i64
  %.sroa.440.0.insert.insert.i = or i64 %.sroa.043.0.i, %.sroa.039.0.insert.ext.i
  %.sroa.039.0.insert.insert.i = or i64 %.sroa.440.0.insert.insert.i, %.sroa.440.0.insert.shift.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !98
  store i32 %.sroa.0.0.insert.insert.i.i, ptr %i.c, align 4, !noalias !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98
  store i64 %.sroa.039.0.insert.insert.i, ptr %i.b, align 8, !noalias !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98
  store ptr %i.c, ptr %i.a, align 8, !noalias !98
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_NtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB4_4DateNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !98
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ba, align 8, !noalias !98
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs_NtNtCsb09rMIQFAXO_9jiff_core5civil4timeNtB4_4TimeNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !98
  %i.bb = load ptr, ptr %1, align 8, !alias.scope !95, !noalias !100, !nonnull !7, !noundef !7
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !95, !noalias !100, !nonnull !7, !align !23, !noundef !7
  %i.be = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bd, ptr noundef nonnull @34, ptr noundef nonnull %i.a), !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98
  br i1 %i.be, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB2_6Offset11to_datetime.exit
  %i.bf = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB2_6Offset11to_datetime.exit, %bb.j
  %.sroa.0.0 = phi i1 [ %i.bf, %bb.j ], [ true, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB2_6Offset11to_datetime.exit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCsb09rMIQFAXO_9jiff_core5civil8datetimeNtB4_8DateTimeNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4
  store i32 %i.e, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load i64, ptr %0, align 4
  store i64 %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_NtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB4_4DateNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.g, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs_NtNtCsb09rMIQFAXO_9jiff_core5civil4timeNtB4_4TimeNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.h = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !align !23, !noundef !7
  %i.k = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @34, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.k
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBH_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit.i
  %.sroa.0.07.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.07.i ; 3 uses
  %i.g = add nuw nsw i64 %.sroa.0.07.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.h = load i8, ptr %i.f, align 8, !range !17, !alias.scope !110, !noundef !7
  %switch.i.i.i = icmp samesign ult i8 %i.h, 2
  br i1 %switch.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val1.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !110, !noundef !7 ; 2 uses
  %i.j = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !110, !nonnull !7, !noundef !7
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #17, !noalias !110
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.l = icmp eq i64 %i.g, %i.d
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBH_.exit, label %.lr.ph.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif13LocalTimeTypeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif14TransitionInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif8DateTimeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9TimestampENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsb09rMIQFAXO_9jiff_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif13LocalTimeTypeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif14TransitionInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif8DateTimeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9TimestampENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs609xDM2Krl3_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #11

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsb09rMIQFAXO_9jiff_core(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsb09rMIQFAXO_9jiff_core6bounds14RangeErrorKindNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
