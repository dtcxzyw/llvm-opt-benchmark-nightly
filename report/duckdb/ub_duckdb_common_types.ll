Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN6duckdb13NumericHelper12FormatSignedINS_9hugeint_tEEENS_8string_tET_RNS_6VectorE:bb.a

_ZN6duckdb8string_t8FinalizeEv.exit:              ; preds = %bb.v, %bb.u, %_ZN6duckdb12StringVector9AddStringERNS_6VectorEPKc.exit
  %.fca.1.load = phi ptr [ %i.cg, %bb.v ], [ %.fca.1.load.pre, %bb.u ], [ %.fca.1.load.i.i.i.i.i.i, %_ZN6duckdb12StringVector9AddStringERNS_6VectorEPKc.exit ]
  %.fca.0.load = load i64, ptr %6, align 8
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.fca.0.load, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb9hugeint_teqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !290
  %i.b = load i64, ptr %1, align 8, !tbaa !290
  %i.c = icmp eq i64 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !288
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !288
  %i.h = icmp eq i64 %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %.sroa.0 = alloca %struct.anon, align 8         ; 6 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #51 ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  store i32 %i.b, ptr %.sroa.0, align 8, !tbaa !153
  %i.c = icmp ult i32 %i.b, 13
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.0.4..sroa_idx16 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.4..sroa_idx16, i8 0, i64 12, i1 false)
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %_ZN6duckdb8string_tC2EPKcj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %i.a, 15
  %.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.4..sroa_idx, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  %.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..pre = load ptr, ptr %.sroa.0.8..sroa_idx, align 8
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 1
  %.sroa.0.4..sroa_idx15 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  store i32 %i.f, ptr %.sroa.0.4..sroa_idx15, align 4
  br label %_ZN6duckdb8string_tC2EPKcj.exit

_ZN6duckdb8string_tC2EPKcj.exit:                  ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.8..sroa.0.8..sroa.0.8. = phi ptr [ null, %bb.b ], [ %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..pre, %bb.c ], [ %1, %bb.d ] ; 2 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load i64, ptr %.sroa.0, align 8 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. to i32
  %i.g = icmp ult i32 %.sroa.0.0.extract.trunc.i, 13
  br i1 %i.g, label %_ZN6duckdb12StringVector9AddStringERNS_6VectorENS_8string_tE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb8string_tC2EPKcj.exit
  %i.h = tail call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., 4294967295 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.k = tail call { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0        ; 3 uses
  store i64 %i.l, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.n = extractvalue { i64, ptr } %i.k, 1        ; 2 uses
  store ptr %i.n, ptr %i.m, align 8
  %i.o = trunc i64 %i.l to i32
  %i.p = icmp ult i32 %i.o, 13                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.r = select i1 %i.p, ptr %i.q, ptr %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr readonly align 1 %.sroa.0.8..sroa.0.8..sroa.0.8., i64 %i.j, i1 false)
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = and i64 %i.l, 15                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  %i.u = sub nuw nsw i64 12, %i.s
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.u, i1 false)
  %.fca.1.load.pre.i.i.i.i.i = load ptr, ptr %i.m, align 8
  br label %_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit.i

bb.g:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.w = load i32, ptr %i.v, align 1
  store i32 %i.w, ptr %i.q, align 4
  br label %_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit.i

_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit.i: ; preds = %bb.g, %bb.f
  %.fca.1.load.i.i.i.i.i = phi ptr [ %.fca.1.load.pre.i.i.i.i.i, %bb.f ], [ %i.v, %bb.g ]
  %.fca.0.load.i.i.i.i.i = load i64, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN6duckdb12StringVector9AddStringERNS_6VectorENS_8string_tE.exit

_ZN6duckdb12StringVector9AddStringERNS_6VectorENS_8string_tE.exit: ; preds = %_ZN6duckdb8string_tC2EPKcj.exit, %_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit.i
  %.pn13.i = phi i64 [ %.fca.0.load.i.i.i.i.i, %_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit.i ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., %_ZN6duckdb8string_tC2EPKcj.exit ]
  %.pn11.i = phi ptr [ %.fca.1.load.i.i.i.i.i, %_ZN6duckdb18VectorStringBuffer9AddStringENS_8string_tE.exit.i ], [ %.sroa.0.8..sroa.0.8..sroa.0.8., %_ZN6duckdb8string_tC2EPKcj.exit ]
  %.pn.i = insertvalue { i64, ptr } poison, i64 %.pn13.i, 0
  %.fca.1.insert.merged.i = insertvalue { i64, ptr } %.pn.i, ptr %.pn11.i, 1
  ret { i64, ptr } %.fca.1.insert.merged.i
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp ult i64 %1, 13
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = tail call { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef %1) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 2 uses
  %.sroa.3.0.extract.shift = and i64 %i.e, -4294967296
  %i.f = extractvalue { i64, ptr } %i.d, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.34.0 = phi ptr [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.3.0 = phi i64 [ %.sroa.3.0.extract.shift, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0.in = phi i64 [ %i.e, %bb.b ], [ %1, %bb.a ]
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.0.in, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.3.0
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.34.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN6duckdb13NumericHelper14FormatUnsignedINS_9hugeint_tEEEPcT_S3_(i64 %0, i64 %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph.i, label %._crit_edge

.loopexit:                                        ; preds = %.lr.ph.preheader, %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit
  %.1.lcssa = phi ptr [ %i.am, %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit ], [ %scevgep43, %.lr.ph.preheader ] ; 2 uses
  %i.b = icmp sgt i64 %i.f, 0
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge, !llvm.loop !292

.lr.ph.i:                                         ; preds = %bb.a, %.loopexit
  %.sroa.411.035 = phi i64 [ %i.f, %.loopexit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.09.034 = phi i64 [ %.sroa.018.1.i, %.loopexit ], [ %0, %bb.a ]
  %.01333 = phi ptr [ %.1.lcssa, %.loopexit ], [ %2, %bb.a ] ; 3 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.411.035, i1 true)
  %i.d = sub nuw nsw i64 128, %i.c
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.d, %.lr.ph.i ], [ %i.h, %bb.b ] ; 3 uses
  %spec.select35.i = phi i64 [ 0, %.lr.ph.i ], [ %spec.select34.i, %bb.b ]
  %.sroa.7.032.i = phi i64 [ 0, %.lr.ph.i ], [ %i.f, %bb.b ]
  %.sroa.018.031.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.018.1.i, %bb.b ] ; 2 uses
  %i.e = shl i64 %.sroa.018.031.i, 1
  %i.f = tail call i64 @llvm.fshl.i64(i64 %.sroa.7.032.i, i64 %.sroa.018.031.i, i64 1) ; 3 uses
  %i.g = shl i64 %spec.select35.i, 1              ; 2 uses
  %i.h = add nsw i64 %indvars.iv.i, -1            ; 3 uses
  %i.i = icmp ult i64 %indvars.iv.i, 65           ; 2 uses
  %i.j = add nsw i64 %indvars.iv.i, 4294967231
  %i.k = and i64 %i.j, 4294967295
  %.sink6.i.i = select i1 %i.i, i64 %i.h, i64 %i.k
  %.sink5.i.i = select i1 %i.i, i64 %.sroa.09.034, i64 %.sroa.411.035
  %i.l = lshr i64 %.sink5.i.i, %.sink6.i.i
  %i.m = and i64 %i.l, 1
  %spec.select.i = or disjoint i64 %i.m, %i.g
  %.not28.i = icmp ugt i64 %i.g, 99999999999999999 ; 2 uses
  %.neg = select i1 %.not28.i, i64 -100000000000000000, i64 0
  %spec.select34.i = add i64 %spec.select.i, %.neg ; 4 uses
  %i.n = zext i1 %.not28.i to i64
  %.sroa.018.1.i = or disjoint i64 %i.e, %i.n     ; 3 uses
  %.not.wide.i = icmp eq i64 %i.h, 0
  br i1 %.not.wide.i, label %_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm.exit, label %bb.b, !llvm.loop !293

_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm.exit: ; preds = %bb.b
  %i.o = icmp ugt i64 %spec.select34.i, 99
  br i1 %i.o, label %.lr.ph.i16, label %._crit_edge.i14

.lr.ph.i16:                                       ; preds = %_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm.exit, %.lr.ph.i16
  %.01720.i = phi i64 [ %i.r, %.lr.ph.i16 ], [ %spec.select34.i, %_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm.exit ] ; 3 uses
  %.01819.i = phi ptr [ %i.x, %.lr.ph.i16 ], [ %.01333, %_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm.exit ] ; 2 uses
  %i.p = urem i64 %.01720.i, 100
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = udiv i64 %.01720.i, 100                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.q ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !153
  %i.v = getelementptr inbounds i8, ptr %.01819.i, i64 -1
  store i8 %i.u, ptr %i.v, align 1, !tbaa !153
  %i.w = load i8, ptr %i.s, align 1, !tbaa !153
  %i.x = getelementptr inbounds i8, ptr %.01819.i, i64 -2 ; 3 uses
  store i8 %i.w, ptr %i.x, align 1, !tbaa !153
  %i.y = icmp ugt i64 %.01720.i, 9999
  br i1 %i.y, label %.lr.ph.i16, label %._crit_edge.i14, !llvm.loop !291

._crit_edge.i14:                                  ; preds = %.lr.ph.i16, %_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm.exit
  %.018.lcssa.i = phi ptr [ %.01333, %_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm.exit ], [ %i.x, %.lr.ph.i16 ] ; 3 uses
  %.017.lcssa.i = phi i64 [ %spec.select34.i, %_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm.exit ], [ %i.r, %.lr.ph.i16 ] ; 3 uses
  %i.z = icmp samesign ult i64 %.017.lcssa.i, 10
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i14
  %i.aa = or disjoint i64 %.017.lcssa.i, 48
  %i.ab = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIcmLb0EE7ConvertEm(i64 noundef %i.aa)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit

bb.d:                                             ; preds = %._crit_edge.i14
  %i.ac = shl nuw nsw i64 %.017.lcssa.i, 1
  %i.ad = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.ac) ; 2 uses
  %i.ae = add i32 %i.ad, 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !153
  %i.ai = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 -1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !153
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !153
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit

_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit: ; preds = %bb.c, %bb.d
  %.sink26.i = phi i64 [ -2, %bb.d ], [ -1, %bb.c ] ; 2 uses
  %.sink.i15 = phi i8 [ %i.al, %bb.d ], [ %i.ab, %bb.c ]
  %i.am = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 %.sink26.i ; 3 uses
  store i8 %.sink.i15, ptr %i.am, align 1, !tbaa !153
  %i.an = ptrtoint ptr %.01333 to i64             ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = icmp slt i32 %i.aq, 17
  br i1 %i.ar, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit
  %scevgep = getelementptr i8, ptr %.018.lcssa.i, i64 -1
  %i.as = add i64 %i.ao, 16
  %i.at = sub i64 %i.as, %i.an
  %i.au = and i64 %i.at, 4294967295               ; 2 uses
  %i.av = sub nuw nsw i64 %.sink26.i, %i.au
  %scevgep43 = getelementptr i8, ptr %scevgep, i64 %i.av ; 2 uses
  %i.aw = add nuw nsw i64 %i.au, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep43, i8 48, i64 %i.aw, i1 false), !tbaa !153
  br label %.loopexit

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.013.lcssa = phi ptr [ %2, %bb.a ], [ %.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.09.0.lcssa = phi i64 [ %0, %bb.a ], [ %.sroa.018.1.i, %.loopexit ] ; 3 uses
  %i.ax = icmp ugt i64 %.sroa.09.0.lcssa, 99
  br i1 %i.ax, label %.lr.ph.i22, label %._crit_edge.i17

.lr.ph.i22:                                       ; preds = %._crit_edge, %.lr.ph.i22
  %.01720.i23 = phi i64 [ %i.bb, %.lr.ph.i22 ], [ %.sroa.09.0.lcssa, %._crit_edge ] ; 3 uses
  %.01819.i24 = phi ptr [ %i.bk, %.lr.ph.i22 ], [ %.013.lcssa, %._crit_edge ] ; 2 uses
  %i.ay = urem i64 %.01720.i23, 100
  %i.az = shl nuw nsw i64 %i.ay, 1
  %i.ba = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.az) ; 2 uses
  %i.bb = udiv i64 %.01720.i23, 100               ; 2 uses
  %i.bc = add i32 %i.ba, 1
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !153
  %i.bg = getelementptr inbounds i8, ptr %.01819.i24, i64 -1
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !153
  %i.bh = zext i32 %i.ba to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !153
  %i.bk = getelementptr inbounds i8, ptr %.01819.i24, i64 -2 ; 3 uses
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !153
  %i.bl = icmp ugt i64 %.01720.i23, 9999
  br i1 %i.bl, label %.lr.ph.i22, label %._crit_edge.i17, !llvm.loop !291

._crit_edge.i17:                                  ; preds = %.lr.ph.i22, %._crit_edge
  %.018.lcssa.i18 = phi ptr [ %.013.lcssa, %._crit_edge ], [ %i.bk, %.lr.ph.i22 ] ; 2 uses
  %.017.lcssa.i19 = phi i64 [ %.sroa.09.0.lcssa, %._crit_edge ], [ %i.bb, %.lr.ph.i22 ] ; 3 uses
  %i.bm = icmp samesign ult i64 %.017.lcssa.i19, 10
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i17
  %i.bn = or disjoint i64 %.017.lcssa.i19, 48
  %i.bo = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIcmLb0EE7ConvertEm(i64 noundef %i.bn)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit25

bb.f:                                             ; preds = %._crit_edge.i17
  %i.bp = shl nuw nsw i64 %.017.lcssa.i19, 1
  %i.bq = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.bp) ; 2 uses
  %i.br = add i32 %i.bq, 1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !153
  %i.bv = getelementptr inbounds i8, ptr %.018.lcssa.i18, i64 -1
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !153
  %i.bw = zext i32 %i.bq to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !153
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit25

_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit25: ; preds = %bb.e, %bb.f
  %.sink26.i20 = phi i64 [ -2, %bb.f ], [ -1, %bb.e ]
  %.sink.i21 = phi i8 [ %i.by, %bb.f ], [ %i.bo, %bb.e ]
  %i.bz = getelementptr inbounds i8, ptr %.018.lcssa.i18, i64 %.sink26.i20 ; 2 uses
  store i8 %.sink.i21, ptr %i.bz, align 1, !tbaa !153
  ret ptr %i.bz
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13NumericHelper8ToStringINS_9hugeint_tEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6duckdb7Hugeint8ToStringB5cxx11ENS_9hugeint_tE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, i64 %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7Hugeint8ToStringB5cxx11ENS_9hugeint_tE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, i64 %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 0, ptr %i.d, align 8, !tbaa !152
  store i8 0, ptr %i.c, align 8, !tbaa !153
  %i.e = icmp eq i64 %1, 0                        ; 2 uses
  %i.f = icmp eq i64 %2, -9223372036854775808
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  br i1 %i.g, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i64 40, ptr %i.b, align 8, !tbaa !108
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %0, align 8, !tbaa !89
  %i.j = load i64, ptr %i.b, align 8, !tbaa !108  ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.i, ptr noundef nonnull align 1 dereferenceable(40) @.str.20, i64 40, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !152
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.b:                                             ; preds = %.noexc.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.n = icmp slt i64 %2, 0                       ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ne i64 %2, -9223372036854775808
  %i.p = icmp ne i64 %1, 0
  %or.cond.not.i.i = or i1 %i.p, %i.o
  br i1 %or.cond.not.i.i, label %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit, label %_ZN6duckdb7Hugeint9TryNegateENS_9hugeint_tERS1_.exit.i

_ZN6duckdb7Hugeint9TryNegateENS_9hugeint_tERS1_.exit.i: ; preds = %bb.d
  %i.q = call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.440, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.e:                                             ; preds = %_ZN6duckdb7Hugeint9TryNegateENS_9hugeint_tERS1_.exit.i
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.i unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %_ZN6duckdb7Hugeint9TryNegateENS_9hugeint_tERS1_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.t) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br i1 %.0.i, label %bb.h, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br i1 %.0.i, label %bb.h, label %.body

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.q) #46
  br label %.body

bb.i:                                             ; preds = %bb.f
  unreachable

_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit: ; preds = %bb.d
  %i.w = sub i64 0, %1
  %i.x = xor i64 %2, -1
  %i.y = zext i1 %i.e to i64
  %i.z = add nuw nsw i64 %i.y, %i.x
  br label %bb.k

bb.j:                                             ; preds = %.noexc.i31
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit, %bb.c
  %.sroa.042.0 = phi i64 [ %i.w, %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit ], [ %1, %bb.c ] ; 2 uses
  %.sroa.6.0 = phi i64 [ %i.z, %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit ], [ %2, %bb.c ] ; 2 uses
  %i.ab = icmp ne i64 %.sroa.042.0, 0
  %i.ac = icmp ne i64 %.sroa.6.0, 0
  %or.cond54 = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond54, label %.lr.ph, label %._crit_edge.i.i24
end_hunk_0
