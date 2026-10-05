Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/interpolator-56d967fe735a7d80.interpolator.a3d334810cd9a4d-cgu.0?download=true
inline.NumInlined: 302
inline.NumDeleted: 49
begin_hunk_0_@_RNvMs_NtCsSv8PdaUzvZ_12interpolator6parserNtB4_14FormatArgument8from_str:bb.a
  br label %_RNvNtCsSv8PdaUzvZ_12interpolator6parser9alignment.exit47

bb.as:                                            ; preds = %_RNvNtCsSv8PdaUzvZ_12interpolator6parser9alignment.exit47
  store i64 0, ptr %0, align 8
  %.sroa.3228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.3228.0..sroa_idx, align 8
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 3, ptr %.sroa.5230.0..sroa_idx, align 8
  %.sroa.7232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.z, ptr %.sroa.7232.0..sroa_idx, align 8
  %.sroa.8233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.14.0.i, ptr %.sroa.8233.0..sroa_idx, align 8
  %.sroa.9234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %.sroa.9234.0..sroa_idx, align 8
  %.sroa.10235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 0, ptr %.sroa.10235.0..sroa_idx, align 1
  %.sroa.11236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i8 2, ptr %.sroa.11236.0..sroa_idx, align 2
  %.sroa.12237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 123
  store i8 %.sroa.24.1, ptr %.sroa.12237.0..sroa_idx, align 1
  br label %bb.bl

bb.at:                                            ; preds = %_RNvNtCsSv8PdaUzvZ_12interpolator6parser9alignment.exit47
  %i.et = load ptr, ptr %1, align 8
  %i.eu = load i8, ptr %i.et, align 1
  switch i8 %i.eu, label %.thread388 [
    i8 43, label %bb.au
    i8 45, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at, %bb.av
  %.sroa.21.1.ph = phi i8 [ 1, %bb.av ], [ 0, %bb.at ] ; 2 uses
  call void @_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step(i64 1, ptr nonnull align 8 %1, ptr nonnull align 8 %2)
  %.pr = load i64, ptr %i.i, align 8              ; 2 uses
  %i.ev = icmp eq i64 %.pr, 0
  br i1 %i.ev, label %bb.aw, label %.thread388

bb.av:                                            ; preds = %bb.at
  br label %bb.au

bb.aw:                                            ; preds = %bb.au
  store i64 0, ptr %0, align 8
  %.sroa.3241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.3241.0..sroa_idx, align 8
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 3, ptr %.sroa.5243.0..sroa_idx, align 8
  %.sroa.7245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.z, ptr %.sroa.7245.0..sroa_idx, align 8
  %.sroa.8246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.14.0.i, ptr %.sroa.8246.0..sroa_idx, align 8
  %.sroa.9247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %.sroa.9247.0..sroa_idx, align 8
  %.sroa.10248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 0, ptr %.sroa.10248.0..sroa_idx, align 1
  %.sroa.11249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i8 %.sroa.21.1.ph, ptr %.sroa.11249.0..sroa_idx, align 2
  %.sroa.12250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 123
  store i8 %.sroa.24.1, ptr %.sroa.12250.0..sroa_idx, align 1
  br label %bb.bl

.thread388:                                       ; preds = %bb.at, %bb.au
  %.sroa.21.1390 = phi i8 [ %.sroa.21.1.ph, %bb.au ], [ 2, %bb.at ]
  %i.ew = phi i64 [ %.pr, %bb.au ], [ %i.eq, %bb.at ]
  %i.ex = load ptr, ptr %1, align 8               ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = icmp eq i8 %i.ey, 35
  br i1 %i.ez, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %.thread388
  %i.fa = phi i64 [ %.pre370, %bb.ay ], [ %i.ew, %.thread388 ]
  %i.fb = phi ptr [ %.pre, %bb.ay ], [ %i.ex, %.thread388 ]
  %.sroa.17.1 = phi i8 [ 1, %bb.ay ], [ 0, %.thread388 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 48, ptr %i.b, align 4
  %i.fc = call zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsdB6qrhj7hiN_9addr2line(ptr %i.fb, i64 %i.fa, ptr nonnull %i.b, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.fc, label %bb.ba, label %bb.az

bb.ay:                                            ; preds = %.thread388
  call void @_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step(i64 1, ptr nonnull align 8 %1, ptr nonnull align 8 %2)
  %.pre = load ptr, ptr %1, align 8
  %.pre370 = load i64, ptr %i.i, align 8
  br label %bb.ax

bb.az:                                            ; preds = %bb.ba, %bb.ax
  %.sroa.19.1 = phi i8 [ 1, %bb.ba ], [ 0, %bb.ax ]
  %i.fd = load ptr, ptr %1, align 8
  %i.fe = load i64, ptr %i.i, align 8
  %i.ff = call zeroext i1 @_RINvMNtCs4NRVxsYgnAr_4core3stre11starts_withNCNvMs_NtCsSv8PdaUzvZ_12interpolator6parserNtBN_14FormatArgument8from_strs0_0EBP_(ptr %i.fd, i64 %i.fe)
  br i1 %i.ff, label %bb.bc, label %bb.bb

bb.ba:                                            ; preds = %bb.ax
  call void @_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step(i64 1, ptr nonnull align 8 %1, ptr nonnull align 8 %2)
  br label %bb.az

bb.bb:                                            ; preds = %bb.be, %bb.az
  %.sroa.7.1 = phi i64 [ %i.fm, %bb.be ], [ undef, %bb.az ]
  %.sroa.0.1 = phi i64 [ 1, %bb.be ], [ 0, %bb.az ]
  %i.fg = load ptr, ptr %1, align 8
  %i.fh = load i64, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 46, ptr %i.a, align 4
  %i.fi = call zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsdB6qrhj7hiN_9addr2line(ptr %i.fg, i64 %i.fh, ptr nonnull %i.a, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.fi, label %bb.bg, label %bb.bf

bb.bc:                                            ; preds = %bb.az
  call fastcc void @_RINvNtCsSv8PdaUzvZ_12interpolator6parser12parse_numberjNtNtB4_5error10ParseErrorEB4_(ptr noalias align 8 %i.f, ptr nonnull align 8 %1, ptr nonnull align 8 %2, i64 %i.g, ptr nonnull @_RNcNtNtNtCsSv8PdaUzvZ_12interpolator5error10ParseError12InvalidWidth0B7_)
  %i.fj = load i8, ptr %i.f, align 8              ; 2 uses
  %.not.i48 = icmp eq i8 %i.fj, -1
  br i1 %.not.i48, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.sroa.4254.0..sroa_idx255 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.2304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2304.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4254.0..sroa_idx255, i64 7, i1 false)
  %.sroa.4256.0..sroa_idx257 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4256.0.copyload258 = load i64, ptr %.sroa.4256.0..sroa_idx257, align 8
  %.sroa.6259.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4306.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6259.0..sroa_idx260, i64 32, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.fj, ptr %i.fk, align 8
  %.sroa.3305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4256.0.copyload258, ptr %.sroa.3305.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.bl

bb.be:                                            ; preds = %bb.bc
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fm = load i64, ptr %i.fl, align 8
  br label %bb.bb

bb.bf:                                            ; preds = %bb.bi, %bb.bb
  %.sroa.10.1 = phi i64 [ %i.ft, %bb.bi ], [ undef, %bb.bb ]
  %.sroa.8.1 = phi i64 [ 1, %bb.bi ], [ 0, %bb.bb ]
  call fastcc void @_RNvMNtCsSv8PdaUzvZ_12interpolator6parserNtB2_9TraitSpec8from_str(ptr noalias align 8 %i.d, ptr nonnull align 8 %1, ptr nonnull align 8 %2, i64 %i.g)
  %i.fn = load i64, ptr %i.d, align 8             ; 2 uses
  %i.fo = icmp eq i64 %i.fn, -1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.fo, label %bb.bj, label %bb.bk

bb.bg:                                            ; preds = %bb.bb
  call void @_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step(i64 1, ptr nonnull align 8 %1, ptr nonnull align 8 %2)
  call fastcc void @_RINvNtCsSv8PdaUzvZ_12interpolator6parser12parse_numberjNtNtB4_5error10ParseErrorEB4_(ptr noalias align 8 %i.e, ptr nonnull align 8 %1, ptr nonnull align 8 %2, i64 %i.g, ptr nonnull @_RNcNtNtNtCsSv8PdaUzvZ_12interpolator5error10ParseError16InvalidPrecision0B7_)
  %i.fq = load i8, ptr %i.e, align 8              ; 2 uses
  %.not.i49 = icmp eq i8 %i.fq, -1
  br i1 %.not.i49, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.sroa.4267.0..sroa_idx268 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.2300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2300.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4267.0..sroa_idx268, i64 7, i1 false)
  %.sroa.4269.0..sroa_idx270 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4269.0.copyload271 = load i64, ptr %.sroa.4269.0..sroa_idx270, align 8
  %.sroa.6272.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4302.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6272.0..sroa_idx273, i64 32, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.fq, ptr %i.fr, align 8
  %.sroa.3301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4269.0.copyload271, ptr %.sroa.3301.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  %i.fs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ft = load i64, ptr %i.fs, align 8
  br label %bb.bf

bb.bj:                                            ; preds = %bb.bf
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fu, ptr noundef nonnull align 8 dereferenceable(48) %i.fp, i64 48, i1 false)
  store i64 2, ptr %0, align 8
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bf
  %.sroa.6282.0..sroa_idx283 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.2285.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2285, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2285.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6282.0..sroa_idx283, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2285, ptr noundef nonnull align 8 dereferenceable(48) %i.fp, i64 48, i1 false)
  br label %bb.r

bb.bl:                                            ; preds = %bb.bj, %bb.bh, %bb.bd, %bb.aw, %bb.as, %bb.an, %bb.ak, %bb.ac, %bb.ab, %bb.r, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsSv8PdaUzvZ_12interpolator6parser21collect_parenthesized(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr nofree align 8 captures(none) %1, ptr nofree align 8 captures(none) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = load ptr, ptr %1, align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i, %bb.a
  %.sroa.23.0.i = phi ptr [ %i.c, %bb.a ], [ %.sroa.23.1.i, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i ] ; 8 uses
  %.sroa.14.0.i = phi i64 [ 0, %bb.a ], [ %i.as, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i ] ; 13 uses
  %i.g = ptrtoint ptr %.sroa.23.0.i to i64
  %i.h = icmp eq ptr %.sroa.23.0.i, %i.f
  br i1 %i.h, label %bb.k, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.23.0.i, i64 1 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.23.0.i, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i.i.i
  %i.j = load i8, ptr %.sroa.23.0.i, align 1      ; 5 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = and i8 %i.j, 31
  %i.m = zext nneg i8 %i.l to i32                 ; 3 uses
  %i.n = icmp eq ptr %i.i, %i.f
  br i1 %i.n, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit15.thread.i.i.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = zext nneg i8 %i.j to i32
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.23.0.i, i64 2 ; 3 uses
  %i.q = load i8, ptr %i.i, align 1
  %i.r = shl nuw nsw i32 %i.m, 6
  %i.s = and i8 %i.q, 63
  %i.t = zext nneg i8 %i.s to i32                 ; 2 uses
  %i.u = or disjoint i32 %i.r, %i.t
  %i.v = icmp samesign ugt i8 %i.j, -33
  br i1 %i.v, label %bb.g, label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit15.thread.i.i.i: ; preds = %bb.d
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsSv8PdaUzvZ_12interpolator(ptr nonnull align 8 @3) #21
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.w = icmp eq ptr %i.p, %i.f
  br i1 %i.w, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit17.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.23.0.i, i64 3 ; 3 uses
  %i.y = load i8, ptr %i.p, align 1
  %i.z = shl nuw nsw i32 %i.t, 6
  %i.aa = and i8 %i.y, 63
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.z, %i.ab             ; 2 uses
  %i.ad = shl nuw nsw i32 %i.m, 12
  %i.ae = or disjoint i32 %i.ac, %i.ad
  %i.af = icmp samesign ugt i8 %i.j, -17
  br i1 %i.af, label %bb.i, label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit17.thread.i.i.i: ; preds = %bb.g
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsSv8PdaUzvZ_12interpolator(ptr nonnull align 8 @4) #21
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp eq ptr %i.x, %i.f
  br i1 %i.ag, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit19.thread.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.23.0.i, i64 4
  %i.ai = load i8, ptr %i.x, align 1
  %i.aj = shl nuw nsw i32 %i.m, 18
  %i.ak = and i32 %i.aj, 1835008
  %i.al = shl nuw nsw i32 %i.ac, 6
  %i.am = and i8 %i.ai, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = or disjoint i32 %i.ao, %i.ak
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit19.thread.i.i.i: ; preds = %bb.i
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsSv8PdaUzvZ_12interpolator(ptr nonnull align 8 @5) #21
  unreachable

_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i: ; preds = %bb.j, %bb.h, %bb.f, %bb.e
  %.sroa.23.1.i = phi ptr [ %i.i, %bb.e ], [ %i.ah, %bb.j ], [ %i.x, %bb.h ], [ %i.p, %bb.f ] ; 2 uses
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.o, %bb.e ], [ %i.ap, %bb.j ], [ %i.ae, %bb.h ], [ %i.u, %bb.f ]
  %i.aq = ptrtoint ptr %.sroa.23.1.i to i64
  %i.ar = sub i64 %.sroa.14.0.i, %i.g
  %i.as = add i64 %i.ar, %i.aq
  %cond.i = icmp eq i32 %.sroa.4.0.i.ph.i.i, 35
  br i1 %cond.i, label %bb.b, label %bb.l

bb.k:                                             ; preds = %bb.b, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i.i.i
  store i8 2, ptr %0, align 8
  %.sroa.2.i.sroa.3.0..sroa.2.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.2.i.sroa.3.0..sroa.2.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.2.i.sroa.5.0..sroa.2.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.2.i.sroa.5.0..sroa.2.0..sroa_idx.i.sroa_idx, align 8
  br label %bb.r

bb.l:                                             ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i
  %i.at = icmp eq i64 %.sroa.14.0.i, 0            ; 2 uses
  br i1 %i.at, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i.i = icmp ult i64 %.sroa.14.0.i, %i.e
  br i1 %.not.i.i.i.i, label %bb.n, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.m
  %i.au = icmp ne i64 %.sroa.14.0.i, %i.e
  %.not.i.i.i2 = icmp eq ptr %i.c, null
  %or.cond.i.i.i = or i1 %.not.i.i.i2, %i.au
  br i1 %or.cond.i.i.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i.i, label %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.14.0.i
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = icmp slt i8 %i.aw, -64
  %.not.old.i.i.i = icmp eq ptr %i.c, null
  %or.cond6.i.i.i = or i1 %.not.old.i.i.i, %i.ax
  br i1 %or.cond6.i.i.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i.i, label %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i.i: ; preds = %bb.l
  %.not.old.old.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.old.old.i.i.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i.i, label %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i.i: ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i.i, %bb.n, %.split.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr %i.c, i64 %i.e, i64 %.sroa.14.0.i, i64 %i.e, ptr nonnull align 8 @31) #22
  unreachable

_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit: ; preds = %.split.i.i.i.i, %bb.n, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.14.0.i
  %i.az = sub nuw i64 %i.e, %.sroa.14.0.i
  store ptr %i.ay, ptr %1, align 8
  store i64 %i.az, ptr %i.d, align 8
  %i.ba = load i64, ptr %2, align 8
  %i.bb = add i64 %i.ba, %.sroa.14.0.i
  store i64 %i.bb, ptr %2, align 8
  %i.bc = load ptr, ptr %1, align 8
  %i.bd = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 40, ptr %i.b, align 4
  %i.be = call zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsdB6qrhj7hiN_9addr2line(ptr %i.bc, i64 %i.bd, ptr nonnull %i.b, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.be, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit
  %i.bf = load i64, ptr %2, align 8
  store i8 2, ptr %0, align 8
  %.sroa.266.sroa.1.0..sroa.266.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %.sroa.266.sroa.1.0..sroa.266.0..sroa_idx.sroa_idx, align 8
  %.sroa.266.sroa.3.0..sroa.266.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bf, ptr %.sroa.266.sroa.3.0..sroa.266.0..sroa_idx.sroa_idx, align 8
  %.sroa.266.sroa.4.0..sroa.266.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @28, ptr %.sroa.266.sroa.4.0..sroa.266.0..sroa_idx.sroa_idx, align 8
  %.sroa.266.sroa.5.0..sroa.266.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %.sroa.266.sroa.5.0..sroa.266.0..sroa_idx.sroa_idx, align 8
  br label %bb.r

bb.p:                                             ; preds = %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit
  %i.bg = load ptr, ptr %1, align 8               ; 5 uses
  %i.bh = load i64, ptr %i.d, align 8             ; 5 uses
  %.not.i.i.i.i3 = icmp ugt i64 %i.bh, 1
  br i1 %.not.i.i.i.i3, label %bb.q, label %.split.i.i.i.i4

.split.i.i.i.i4:                                  ; preds = %bb.p
  %i.bi = icmp ne i64 %i.bh, 1
  %.not.i.i.i5 = icmp eq ptr %i.bg, null
  %or.cond.i.i.i6 = select i1 %i.bi, i1 true, i1 %.not.i.i.i5
  br i1 %or.cond.i.i.i6, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i.i7, label %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit10

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = icmp slt i8 %i.bk, -64
  %.not.old.i.i.i8 = icmp eq ptr %i.bg, null
  %or.cond6.i.i.i9 = select i1 %i.bl, i1 true, i1 %.not.old.i.i.i8
  br i1 %or.cond6.i.i.i9, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i.i7, label %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit10

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i.i7: ; preds = %bb.q, %.split.i.i.i.i4
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr %i.bg, i64 %i.bh, i64 1, i64 %i.bh, ptr nonnull align 8 @31) #22
  unreachable

_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit10: ; preds = %.split.i.i.i.i4, %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bn = add i64 %i.bh, -1
  store ptr %i.bm, ptr %1, align 8
  store i64 %i.bn, ptr %i.d, align 8
  %i.bo = load i64, ptr %2, align 8               ; 2 uses
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %2, align 8
  %i.bq = load ptr, ptr %1, align 8               ; 6 uses
  %i.br = load i64, ptr %i.d, align 8             ; 4 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.ap, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit, %bb.o, %bb.k
  ret void

bb.s:                                             ; preds = %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit44, %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit10
  %i.bs = phi i64 [ %.pre200, %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit44 ], [ %i.br, %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit10 ]
  %i.bt = phi ptr [ %.pre, %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit44 ], [ %i.bq, %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit10 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 41, ptr %i.a, align 4
  %i.bu = call zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsdB6qrhj7hiN_9addr2line(ptr %i.bt, i64 %i.bs, ptr nonnull %i.a, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.bu, label %bb.aa, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.s
  %.pre201.a = load ptr, ptr %1, align 8
  %.pre203 = load i64, ptr %i.d, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.al, %..loopexit_crit_edge, %bb.aa
  %i.bv = phi i64 [ %.pre203, %..loopexit_crit_edge ], [ %i.de, %bb.aa ], [ %i.de, %bb.al ] ; 9 uses
  %i.bw = phi ptr [ %.pre201.a, %..loopexit_crit_edge ], [ %.pre202, %bb.aa ], [ %.pre202, %bb.al ] ; 8 uses
  %i.bx = icmp samesign eq i64 %i.bv, 0
  br i1 %i.bx, label %bb.ap, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i.i: ; preds = %.loopexit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %.not.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i, label %bb.ap, label %bb.t

bb.t:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i.i
  %i.bz = load i8, ptr %i.bw, align 1             ; 4 uses
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc8len_utf8CsSv8PdaUzvZ_12interpolator.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = and i8 %i.bz, 31
  %i.cc = zext nneg i8 %i.cb to i32               ; 3 uses
  %i.cd = icmp samesign eq i64 %i.bv, 1
  br i1 %i.cd, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit15.thread.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.cf = load i8, ptr %i.by, align 1
  %i.cg = shl nuw nsw i32 %i.cc, 6
  %i.ch = and i8 %i.cf, 63
  %i.ci = zext nneg i8 %i.ch to i32               ; 2 uses
  %i.cj = or disjoint i32 %i.cg, %i.ci
  %i.ck = icmp samesign ugt i8 %i.bz, -33
  br i1 %i.ck, label %bb.w, label %bb.aq

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit15.thread.i.i: ; preds = %bb.u
  call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsSv8PdaUzvZ_12interpolator(ptr nonnull align 8 @3) #21
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.cl = icmp samesign eq i64 %i.bv, 2
  br i1 %i.cl, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit17.thread.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  %i.cn = load i8, ptr %i.ce, align 1
  %i.co = shl nuw nsw i32 %i.ci, 6
  %i.cp = and i8 %i.cn, 63
  %i.cq = zext nneg i8 %i.cp to i32
  %i.cr = or disjoint i32 %i.co, %i.cq            ; 2 uses
  %i.cs = shl nuw nsw i32 %i.cc, 12
  %i.ct = or disjoint i32 %i.cr, %i.cs
  %i.cu = icmp samesign ugt i8 %i.bz, -17
  br i1 %i.cu, label %bb.y, label %bb.aq

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit17.thread.i.i: ; preds = %bb.w
  call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsSv8PdaUzvZ_12interpolator(ptr nonnull align 8 @4) #21
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.cv = icmp samesign eq i64 %i.bv, 3
  br i1 %i.cv, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit19.thread.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = load i8, ptr %i.cm, align 1
  %i.cx = shl nuw nsw i32 %i.cc, 18
  %i.cy = and i32 %i.cx, 1835008
  %i.cz = shl nuw nsw i32 %i.cr, 6
  %i.da = and i8 %i.cw, 63
  %i.db = zext nneg i8 %i.da to i32
  %i.dc = or disjoint i32 %i.cz, %i.db
  %i.dd = or disjoint i32 %i.dc, %i.cy
  br label %bb.aq

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit19.thread.i.i: ; preds = %bb.y
  call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsSv8PdaUzvZ_12interpolator(ptr nonnull align 8 @5) #21
  unreachable

bb.aa:                                            ; preds = %bb.s
  %i.de = load i64, ptr %i.d, align 8             ; 12 uses
  %i.df = icmp ugt i64 %i.de, %.sroa.14.0.i
  %.pre202 = load ptr, ptr %1, align 8            ; 13 uses
  br i1 %i.df, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i.i13 = icmp ugt i64 %i.de, 1
  br i1 %.not.i.i.i13, label %bb.ac, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.ab
  %.not.i.i14 = icmp eq ptr %.pre202, null
  br i1 %.not.i.i14, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsSv8PdaUzvZ_12interpolator.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %.pre202, i64 1
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = icmp slt i8 %i.dh, -64
  %.not.old.i.i = icmp eq ptr %.pre202, null
  %or.cond6.i.i = select i1 %i.di, i1 true, i1 %.not.old.i.i
  br i1 %or.cond6.i.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsSv8PdaUzvZ_12interpolator.exit

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i: ; preds = %bb.ac, %.split.i.i.i
  %.lcssa178 = phi ptr [ %.pre202, %bb.ac ], [ null, %.split.i.i.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr %.lcssa178, i64 %i.de, i64 1, i64 %i.de, ptr nonnull align 8 @29) #22
  unreachable

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsSv8PdaUzvZ_12interpolator.exit: ; preds = %.split.i.i.i, %bb.ac
  %i.dj = getelementptr i8, ptr %.pre202, i64 %i.de ; 4 uses
  br i1 %i.at, label %.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsSv8PdaUzvZ_12interpolator.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %.pre202, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.al
  %.sroa.073.0 = phi ptr [ %.sroa.073.1, %bb.al ], [ %i.dk, %.preheader.preheader ] ; 6 uses
  %.sroa.875.0 = phi i64 [ %i.eu, %bb.al ], [ %.sroa.14.0.i, %.preheader.preheader ]
  %i.dl = icmp eq ptr %.sroa.073.0, %i.dj
  br i1 %i.dl, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeNtNtNtBc_3str4iter5CharsENtNtNtBa_6traits8iterator8Iterator3allNCNvNtCsSv8PdaUzvZ_12interpolator6parser21collect_parenthesizeds_0EB20_.exit.thread142, label %bb.ad

bb.ad:                                            ; preds = %.preheader
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.073.0, i64 1 ; 3 uses
  %i.dn = load i8, ptr %.sroa.073.0, align 1      ; 5 uses
  %i.do = icmp sgt i8 %i.dn, -1
  br i1 %i.do, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dp = and i8 %i.dn, 31
  %i.dq = zext nneg i8 %i.dp to i32               ; 3 uses
  %i.dr = icmp eq ptr %i.dm, %i.dj
  br i1 %i.dr, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit15.thread.i.i.i50, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ds = zext nneg i8 %i.dn to i32
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.073.0, i64 2 ; 3 uses
  %i.du = load i8, ptr %i.dm, align 1
  %i.dv = shl nuw nsw i32 %i.dq, 6
  %i.dw = and i8 %i.du, 63
  %i.dx = zext nneg i8 %i.dw to i32               ; 2 uses
  %i.dy = or disjoint i32 %i.dv, %i.dx
  %i.dz = icmp samesign ugt i8 %i.dn, -33
  br i1 %i.dz, label %bb.ah, label %bb.al

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit15.thread.i.i.i50: ; preds = %bb.ae
  call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsSv8PdaUzvZ_12interpolator(ptr nonnull align 8 @3) #21
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.ea = icmp eq ptr %i.dt, %i.dj
  br i1 %i.ea, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit17.thread.i.i.i49, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.073.0, i64 3 ; 3 uses
  %i.ec = load i8, ptr %i.dt, align 1
  %i.ed = shl nuw nsw i32 %i.dx, 6
  %i.ee = and i8 %i.ec, 63
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = or disjoint i32 %i.ed, %i.ef            ; 2 uses
  %i.eh = shl nuw nsw i32 %i.dq, 12
  %i.ei = or disjoint i32 %i.eg, %i.eh
  %i.ej = icmp samesign ugt i8 %i.dn, -17
  br i1 %i.ej, label %bb.aj, label %bb.al

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit17.thread.i.i.i49: ; preds = %bb.ah
  call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsSv8PdaUzvZ_12interpolator(ptr nonnull align 8 @4) #21
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.ek = icmp eq ptr %i.eb, %i.dj
  br i1 %i.ek, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit19.thread.i.i.i48, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.073.0, i64 4
  %i.em = load i8, ptr %i.eb, align 1
  %i.en = shl nuw nsw i32 %i.dq, 18
  %i.eo = and i32 %i.en, 1835008
  %i.ep = shl nuw nsw i32 %i.eg, 6
  %i.eq = and i8 %i.em, 63
  %i.er = zext nneg i8 %i.eq to i32
  %i.es = or disjoint i32 %i.ep, %i.er
  %i.et = or disjoint i32 %i.es, %i.eo
  br label %bb.al

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit19.thread.i.i.i48: ; preds = %bb.aj
  call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsSv8PdaUzvZ_12interpolator(ptr nonnull align 8 @5) #21
  unreachable

bb.al:                                            ; preds = %bb.ak, %bb.ai, %bb.ag, %bb.af
  %.sroa.073.1 = phi ptr [ %i.dm, %bb.af ], [ %i.el, %bb.ak ], [ %i.eb, %bb.ai ], [ %i.dt, %bb.ag ]
  %.sroa.0.0.i.i.ph.i = phi i32 [ %i.ds, %bb.af ], [ %i.et, %bb.ak ], [ %i.ei, %bb.ai ], [ %i.dy, %bb.ag ]
  %i.eu = add i64 %.sroa.875.0, -1                ; 2 uses
  %i.ev = icmp ne i32 %.sroa.0.0.i.i.ph.i, 35     ; 2 uses
  %i.ew = icmp eq i64 %i.eu, 0
  %i.ex = zext i1 %i.ev to i8
  %spec.select.i.i = select i1 %i.ev, i8 1, i8 2
  %.sroa.0.0.i.i47 = select i1 %i.ew, i8 %i.ex, i8 %spec.select.i.i
  switch i8 %.sroa.0.0.i.i47, label %.loopexit [
    i8 2, label %.preheader
    i8 0, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeNtNtNtBc_3str4iter5CharsENtNtNtBa_6traits8iterator8Iterator3allNCNvNtCsSv8PdaUzvZ_12interpolator6parser21collect_parenthesizeds_0EB20_.exit.thread142
  ]

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeNtNtNtBc_3str4iter5CharsENtNtNtBa_6traits8iterator8Iterator3allNCNvNtCsSv8PdaUzvZ_12interpolator6parser21collect_parenthesizeds_0EB20_.exit.thread142: ; preds = %bb.al, %.preheader
  %i.ey = add nuw i64 %.sroa.14.0.i, 1
  br label %.thread

.thread:                                          ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsSv8PdaUzvZ_12interpolator.exit, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeNtNtNtBc_3str4iter5CharsENtNtNtBa_6traits8iterator8Iterator3allNCNvNtCsSv8PdaUzvZ_12interpolator6parser21collect_parenthesizeds_0EB20_.exit.thread142
  %i.ez = phi i64 [ %i.ey, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeNtNtNtBc_3str4iter5CharsENtNtNtBa_6traits8iterator8Iterator3allNCNvNtCsSv8PdaUzvZ_12interpolator6parser21collect_parenthesizeds_0EB20_.exit.thread142 ], [ 1, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsSv8PdaUzvZ_12interpolator.exit ] ; 7 uses
  %.not.i.i.i.i16 = icmp ult i64 %i.ez, %i.de
  br i1 %.not.i.i.i.i16, label %bb.am, label %.split.i.i.i.i17

.split.i.i.i.i17:                                 ; preds = %.thread
  %i.fa = icmp ne i64 %i.ez, %i.de
  %.not.i.i.i18 = icmp eq ptr %.pre202, null
  %or.cond.i.i.i19 = select i1 %i.fa, i1 true, i1 %.not.i.i.i18
  br i1 %or.cond.i.i.i19, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i.i20, label %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit25

bb.am:                                            ; preds = %.thread
  %i.fb = getelementptr inbounds nuw i8, ptr %.pre202, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = icmp slt i8 %i.fc, -64
  %.not.old.i.i.i21 = icmp eq ptr %.pre202, null
  %or.cond6.i.i.i22 = select i1 %i.fd, i1 true, i1 %.not.old.i.i.i21
  br i1 %or.cond6.i.i.i22, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i.i20, label %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit25

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i.i20: ; preds = %bb.am, %.split.i.i.i.i17
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr %.pre202, i64 %i.de, i64 %i.ez, i64 %i.de, ptr nonnull align 8 @31) #22
  unreachable

_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit25: ; preds = %.split.i.i.i.i17, %bb.am
  %i.fe = getelementptr inbounds nuw i8, ptr %.pre202, i64 %i.ez
  %i.ff = sub nuw i64 %i.de, %i.ez
  store ptr %i.fe, ptr %1, align 8
  store i64 %i.ff, ptr %i.d, align 8
  %i.fg = load i64, ptr %2, align 8
  %i.fh = add i64 %i.fg, %i.ez                    ; 2 uses
  store i64 %i.fh, ptr %2, align 8
  %i.fi = add i64 %i.fh, -2                       ; 2 uses
  %i.fj = add i64 %i.bo, %.sroa.14.0.i            ; 2 uses
  %i.fk = sub i64 %i.fi, %i.fj                    ; 5 uses
  %i.fl = icmp eq i64 %i.fi, %i.fj
  br i1 %i.fl, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i, label %bb.an

bb.an:                                            ; preds = %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit25
  %.not.i.i.i26 = icmp ult i64 %i.fk, %i.br
  br i1 %.not.i.i.i26, label %bb.ao, label %.split.i.i.i27

.split.i.i.i27:                                   ; preds = %bb.an
  %i.fm = icmp ne i64 %i.fk, %i.br
  %.not.i.i28 = icmp eq ptr %i.bq, null
  %or.cond.i.i29 = select i1 %i.fm, i1 true, i1 %.not.i.i28
  br i1 %or.cond.i.i29, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit

bb.ao:                                            ; preds = %bb.an
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.fk
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = icmp sgt i8 %i.fo, -65
  br i1 %i.fp, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i: ; preds = %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit25
  %.not.old.i.i30 = icmp eq ptr %i.bq, null
  br i1 %.not.old.i.i30, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i: ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i, %bb.ao, %.split.i.i.i27
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr %i.bq, i64 %i.br, i64 0, i64 %i.fk, ptr nonnull align 8 @30) #22
  unreachable

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit: ; preds = %.split.i.i.i27, %bb.ao, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bq, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fk, ptr %i.fr, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.r

bb.ap:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i.i, %.loopexit
  store i8 2, ptr %0, align 8
  %.sroa.2.i31.sroa.3.0..sroa.2.0..sroa_idx.i33.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.2.i31.sroa.3.0..sroa.2.0..sroa_idx.i33.sroa_idx, align 8
  %.sroa.2.i31.sroa.5.0..sroa.2.0..sroa_idx.i33.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %.sroa.2.i31.sroa.5.0..sroa.2.0..sroa_idx.i33.sroa_idx, align 4
  %.sroa.2.i31.sroa.6.0..sroa.2.0..sroa_idx.i33.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.2.i31.sroa.6.0..sroa.2.0..sroa_idx.i33.sroa_idx, align 8
  br label %bb.r

bb.aq:                                            ; preds = %bb.z, %bb.x, %bb.v
  %.sroa.0.0.i.i123129.ph = phi i32 [ %i.cj, %bb.v ], [ %i.ct, %bb.x ], [ %i.dd, %bb.z ] ; 3 uses
  %i.fs = icmp samesign ult i32 %.sroa.0.0.i.i123129.ph, 128
  br i1 %i.fs, label %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc8len_utf8CsSv8PdaUzvZ_12interpolator.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ft = icmp samesign ult i32 %.sroa.0.0.i.i123129.ph, 2048
  br i1 %i.ft, label %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc8len_utf8CsSv8PdaUzvZ_12interpolator.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fu = icmp samesign ult i32 %.sroa.0.0.i.i123129.ph, 65536
  %..i.i = select i1 %i.fu, i64 3, i64 4
  br label %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc8len_utf8CsSv8PdaUzvZ_12interpolator.exit

_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc8len_utf8CsSv8PdaUzvZ_12interpolator.exit: ; preds = %bb.t, %bb.aq, %bb.ar, %bb.as
  %.sroa.0.0.i.i34 = phi i64 [ 2, %bb.ar ], [ %..i.i, %bb.as ], [ 1, %bb.aq ], [ 1, %bb.t ] ; 7 uses
  %.not.i.i.i.i35 = icmp ult i64 %.sroa.0.0.i.i34, %i.bv
  br i1 %.not.i.i.i.i35, label %bb.at, label %.split.i.i.i.i36

.split.i.i.i.i36:                                 ; preds = %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc8len_utf8CsSv8PdaUzvZ_12interpolator.exit
  %.not = icmp eq i64 %.sroa.0.0.i.i34, %i.bv
  br i1 %.not, label %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit44, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i.i39

bb.at:                                            ; preds = %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc8len_utf8CsSv8PdaUzvZ_12interpolator.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.sroa.0.0.i.i34
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = icmp slt i8 %i.fw, -64
  br i1 %i.fx, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i.i39, label %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit44

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i.i39: ; preds = %bb.at, %.split.i.i.i.i36
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr nonnull %i.bw, i64 %i.bv, i64 %.sroa.0.0.i.i34, i64 %i.bv, ptr nonnull align 8 @31) #22
  unreachable

_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit44: ; preds = %.split.i.i.i.i36, %bb.at
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.sroa.0.0.i.i34
  %i.fz = sub nuw i64 %i.bv, %.sroa.0.0.i.i34
  store ptr %i.fy, ptr %1, align 8
  store i64 %i.fz, ptr %i.d, align 8
  %i.ga = load i64, ptr %2, align 8
  %i.gb = add i64 %i.ga, %.sroa.0.0.i.i34
  store i64 %i.gb, ptr %2, align 8
  %.pre = load ptr, ptr %1, align 8
  %.pre200 = load i64, ptr %i.d, align 8
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step(i64 %0, ptr nofree align 8 captures(none) %1, ptr nofree align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 5 uses
  %i.d = icmp eq i64 %0, 0
  br i1 %i.d, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ult i64 %0, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.b
  %i.e = icmp ne i64 %0, %i.c
  %.not.i.i = icmp eq ptr %i.a, null
  %or.cond.i.i = select i1 %i.e, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsSv8PdaUzvZ_12interpolator.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %0
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp slt i8 %i.g, -64
  %.not.old.i.i = icmp eq ptr %i.a, null
  %or.cond6.i.i = select i1 %i.h, i1 true, i1 %.not.old.i.i
  br i1 %or.cond6.i.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsSv8PdaUzvZ_12interpolator.exit

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i: ; preds = %bb.a
  %.not.old.old.i.i = icmp eq ptr %i.a, null
  br i1 %.not.old.old.i.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsSv8PdaUzvZ_12interpolator.exit

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i: ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i, %bb.c, %.split.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr %i.a, i64 %i.c, i64 %0, i64 %i.c, ptr nonnull align 8 @31) #22
  unreachable

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsSv8PdaUzvZ_12interpolator.exit: ; preds = %.split.i.i.i, %bb.c, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %0
  %i.j = sub nuw i64 %i.c, %0
  store ptr %i.i, ptr %1, align 8
  store i64 %i.j, ptr %i.b, align 8
  %i.k = load i64, ptr %2, align 8
  %i.l = add i64 %i.k, %0
  store i64 %i.l, ptr %2, align 8
  ret void
}

; Function Attrs: cold inlinehint noreturn nounwind nonlazybind uwtable
define internal fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsSv8PdaUzvZ_12interpolator(ptr align 8 %0) unnamed_addr #13 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_nounwind_fmt(ptr nonnull @32, ptr nonnull inttoptr (i64 399 to ptr), i1 zeroext false, ptr align 8 %0) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXNtCsSv8PdaUzvZ_12interpolator11formattableNtB2_11PlainStringNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_fmtCsSv8PdaUzvZ_12interpolator.exit:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCskyMLgGZzWrX_14rustc_demangle, ptr %.sroa.2.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr %i.b, ptr align 8 %i.d, ptr nonnull @33, ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i8 @_RNvXNtNtCs4NRVxsYgnAr_4core3ops12control_flowINtB2_11ControlFlowIBI_uEENtNtB4_9try_trait3Try11from_outputCsSv8PdaUzvZ_12interpolator() unnamed_addr #7 {
bb.a:
  ret i8 2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i8 @_RNvXNtNtCs4NRVxsYgnAr_4core3ops12control_flowINtB2_11ControlFlowIBI_uEENtNtB4_9try_trait3Try6branchCsSv8PdaUzvZ_12interpolator(i8 returned %0) unnamed_addr #7 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RNvXNtNtCs4NRVxsYgnAr_4core3ops12control_flowINtB2_11ControlFlowuENtNtB4_9try_trait3Try11from_outputCsSv8PdaUzvZ_12interpolator() unnamed_addr #7 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define zeroext i1 @_RNvXNtNtCs4NRVxsYgnAr_4core3ops12control_flowINtB2_11ControlFlowuENtNtB4_9try_trait3Try6branchCsSv8PdaUzvZ_12interpolator(i1 returned zeroext %0) unnamed_addr #7 {
bb.a:
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_CsSv8PdaUzvZ_12interpolatorNtB5_11IterContextNtB5_7Context3get(ptr sret([40 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, i64 %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !42, !nonnull !42
  tail call void %i.f(ptr sret([40 x i8]) align 8 %0, ptr %i.b, ptr %2, i64 %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_0
