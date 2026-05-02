inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN6duckdb8Geometry10FromBinaryERKNS_8string_tERS1_RNS_6VectorEb:bb.a
  br i1 %.not7888.i.not, label %_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread, label %.lr.ph94.i

.lr.ph94.i:                                       ; preds = %bb.a, %.loopexit.i
  %.sroa.21.093.i = phi i1 [ %.sroa.21.2.i, %.loopexit.i ], [ false, %bb.a ]
  %.sroa.0.sroa.18.092.i = phi i1 [ %36, %.loopexit.i ], [ false, %bb.a ]
  %.sroa.21.093.i.a = phi i1 [ %35, %.loopexit.i ], [ false, %bb.a ]
  %.sroa.0.sroa.14.090.i = phi i1 [ %37, %.loopexit.i ], [ false, %bb.a ]
  %.sroa.0.sroa.0.089.i = phi i32 [ %.sroa.0.sroa.0.2.i, %.loopexit.i ], [ 0, %bb.a ] ; 4 uses
  %i.ab = call fastcc noundef zeroext i8 @_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIhLb1EEET_v(ptr noundef nonnull align 8 dereferenceable(24) %30)
  %i.ac = icmp eq i8 %i.ab, 1                     ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb8Geometry10FromBinaryERKNS_8string_tERS1_RNS_6VectorEb:bb.a
  %i.ai = and i32 %i.ad, 536870912
  %.not.i = icmp eq i32 %i.ai, 0
  %i.aj = trunc i16 %i.af to i1
  %i.ak = or i1 %i.ag, %i.aj                      ; 2 uses
  %i.al = and i16 %i.af, 2
  %i.am = zext nneg i16 %i.al to i32
  %i.an = or disjoint i32 %i.ah, %i.am
  %i.ao = icmp ne i32 %i.an, 0                    ; 2 uses
  br i1 %.not.i, label %bb.b, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph94.i
end_hunk_1
begin_hunk_2_@_ZN6duckdb8Geometry10FromBinaryERKNS_8string_tERS1_RNS_6VectorEb:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.21.2.i = phi i1 [ %.sroa.21.093.i, %bb.b ], [ true, %bb.c ] ; 2 uses
  %i.ap = select i1 %i.ak, i64 3, i64 2
  %i.aq = zext i1 %i.ao to i64
  %i.ar = add nuw nsw i64 %i.ap, %i.aq
  %i.as = shl nuw nsw i64 %i.ar, 3                ; 5 uses
  %35 = or i1 %.sroa.21.093.i.a, %i.ak            ; 2 uses
  %36 = or i1 %.sroa.0.sroa.18.092.i, %i.ao       ; 2 uses
  %i.at = xor i1 %i.ac, true
  %37 = or i1 %.sroa.0.sroa.14.090.i, %i.at       ; 2 uses
  %38 = add i32 %.sroa.0.sroa.0.089.i, 5          ; 2 uses
  switch i16 %i.ae, label %_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread329 [
    i16 1, label %bb.e
    i16 2, label %bb.f
    i16 3, label %bb.g
end_hunk_2
begin_hunk_3_@_ZN6duckdb8Geometry10FromBinaryERKNS_8string_tERS1_RNS_6VectorEb:bb.a
  ]

bb.e:                                             ; preds = %bb.d
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm(ptr noundef nonnull align 8 dereferenceable(24) %30, i64 noundef %i.as)
  %i.au = trunc nuw nsw i64 %i.as to i32
  %i.av = add i32 %38, %i.au
  br label %.loopexit.i

bb.f:                                             ; preds = %bb.d
end_hunk_3
begin_hunk_4_@_ZN6duckdb8Geometry10FromBinaryERKNS_8string_tERS1_RNS_6VectorEb:bb.a
  %.not78.i = icmp ult ptr %.val.i, %.val51.i
  br i1 %.not78.i, label %.lr.ph94.i, label %_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread329

_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread329: ; preds = %bb.d, %.loopexit.i
  %.sroa.0.sroa.0.3.ph.i = phi i32 [ %.sroa.0.sroa.0.2.i, %.loopexit.i ], [ %38, %bb.d ]
  %.not = phi i1 [ true, %.loopexit.i ], [ false, %bb.d ]
  %.sroa.0.sroa.20.2.ph.i = phi i64 [ 0, %.loopexit.i ], [ 72057594037927936, %bb.d ]
  %39 = select i1 %36, i64 281474976710656, i64 0
  %40 = select i1 %35, i64 1099511627776, i64 0
  %41 = select i1 %37, i64 4294967296, i64 0
  %i.dd = zext i32 %.sroa.0.sroa.0.3.ph.i to i64
  %42 = or disjoint i64 %40, %41
  %43 = or disjoint i64 %42, %39
  %44 = or disjoint i64 %43, %i.dd
  %i.de = or disjoint i64 %44, %.sroa.0.sroa.20.2.ph.i
  br i1 %.not, label %_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread329
  br i1 %3, label %bb.s, label %bb.cw

bb.s:                                             ; preds = %bb.r
end_hunk_4
begin_hunk_5_@_ZN6duckdb8Geometry10FromBinaryERKNS_8string_tERS1_RNS_6VectorEb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #49
  br label %common.resume

_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread: ; preds = %bb.a, %_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread329
  %.sroa.0.sroa.0.0.insert.insert.i49 = phi i64 [ %i.de, %_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread329 ], [ 0, %bb.a ] ; 2 uses
  %.sroa.21.3.i48 = phi i1 [ %.sroa.21.2.i, %_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread329 ], [ false, %bb.a ]
  %i.dl = and i64 %.sroa.0.sroa.0.0.insert.insert.i49, 4294967296
end_hunk_5
begin_hunk_6_@_ZN10duckdb_fmt2v68internal21parse_float_type_specINS1_13error_handlerEcEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_:bb.a
  %.sroa.2.1 = phi i32 [ %i.t, %bb.d ], [ %i.i, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3511
  %5 = or i32 %i.h, %i.v
  %.not49 = icmp eq i32 %5, 0
  %i.w = select i1 %.not49, i32 0, i32 536870912
  %i.x = and i32 %.sroa.2.1, -536870914
  %i.y = or disjoint i32 %i.x, %i.w
  %i.z = or disjoint i32 %i.y, 1
end_hunk_6
begin_hunk_7_@_ZN10duckdb_fmt2v68internal21parse_float_type_specINS1_13error_handlerEcEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_:bb.a
  %.sroa.2.2 = phi i32 [ %i.aa, %bb.f ], [ %i.i, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3511
  %6 = or i32 %i.h, %i.ac
  %.not = icmp eq i32 %6, 0
  %i.ad = select i1 %.not, i32 0, i32 536870912
  %i.ae = and i32 %.sroa.2.2, -536870915
  %i.af = or disjoint i32 %i.ae, %i.ad
  %i.ag = or disjoint i32 %i.af, 2
end_hunk_7
