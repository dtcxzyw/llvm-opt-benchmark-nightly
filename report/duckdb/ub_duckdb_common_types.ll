inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 157
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 231
begin_hunk_0_@_ZN6duckdb13NumericHelper12FormatSignedINS_9hugeint_tEEENS_8string_tET_RNS_6VectorE:bb.a
  %.sink26.i = phi i64 [ -2, %bb.p ], [ -1, %bb.o ]
  %.sink.i = phi i8 [ %i.bx, %bb.p ], [ %i.bn, %bb.o ]
  %i.by = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 %.sink26.i ; 2 uses
  store i8 %.sink.i, ptr %i.by, align 1, !tbaa !153
  br label %bb.r

bb.q:                                             ; preds = %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit
  %i.bz = call noundef ptr @_ZN6duckdb13NumericHelper14FormatUnsignedINS_9hugeint_tEEEPcT_S3_(i64 %.sroa.013.0, i64 %.sroa.7.0, ptr noundef nonnull %i.au)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit
  %.0 = phi ptr [ %i.by, %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit ], [ %i.bz, %bb.q ]
  br i1 %i.a, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds i8, ptr %.0, i64 -1
  store i8 45, ptr %i.ca, align 1, !tbaa !153
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cb = load i32, ptr %6, align 8, !tbaa !153   ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 13
  br i1 %i.cc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cd = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cd
  %i.cf = sub nuw nsw i64 12, %i.cd
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ce, i8 0, i64 %i.cf, i1 false)
  %.fca.1.load.pre = load ptr, ptr %i.ao, align 8
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

bb.v:                                             ; preds = %bb.t
  %i.cg = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 1
  store i32 %i.ch, ptr %i.ar, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

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
  %.1.lcssa = phi ptr [ %i.al, %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit ], [ %scevgep43, %.lr.ph.preheader ] ; 2 uses
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
  %3 = and i64 %i.j, 4294967295
  %.sink6.i.i = select i1 %i.i, i64 %i.h, i64 %3
  %.sink5.i.i = select i1 %i.i, i64 %.sroa.09.034, i64 %.sroa.411.035
  %i.k = lshr i64 %.sink5.i.i, %.sink6.i.i
  %i.l = and i64 %i.k, 1
  %spec.select.i = or disjoint i64 %i.l, %i.g
  %.not28.i = icmp ugt i64 %i.g, 99999999999999999 ; 2 uses
  %.neg = select i1 %.not28.i, i64 -100000000000000000, i64 0
  %spec.select34.i = add i64 %spec.select.i, %.neg ; 4 uses
  %i.m = zext i1 %.not28.i to i64
  %.sroa.018.1.i = or disjoint i64 %i.e, %i.m     ; 3 uses
  %.not.wide.i = icmp eq i64 %i.h, 0
  br i1 %.not.wide.i, label %_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm.exit, label %bb.b, !llvm.loop !293

_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm.exit: ; preds = %bb.b
  %i.n = icmp ugt i64 %spec.select34.i, 99
  br i1 %i.n, label %.lr.ph.i16, label %._crit_edge.i14

.lr.ph.i16:                                       ; preds = %_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm.exit, %.lr.ph.i16
  %.01720.i = phi i64 [ %i.q, %.lr.ph.i16 ], [ %spec.select34.i, %_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm.exit ] ; 3 uses
  %.01819.i = phi ptr [ %i.w, %.lr.ph.i16 ], [ %.01333, %_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm.exit ] ; 2 uses
  %i.o = urem i64 %.01720.i, 100
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = udiv i64 %.01720.i, 100                  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !153
  %i.u = getelementptr inbounds i8, ptr %.01819.i, i64 -1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !153
  %i.v = load i8, ptr %i.r, align 1, !tbaa !153
  %i.w = getelementptr inbounds i8, ptr %.01819.i, i64 -2 ; 3 uses
  store i8 %i.v, ptr %i.w, align 1, !tbaa !153
  %i.x = icmp ugt i64 %.01720.i, 9999
  br i1 %i.x, label %.lr.ph.i16, label %._crit_edge.i14, !llvm.loop !291

._crit_edge.i14:                                  ; preds = %.lr.ph.i16, %_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm.exit
  %.018.lcssa.i = phi ptr [ %.01333, %_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm.exit ], [ %i.w, %.lr.ph.i16 ] ; 3 uses
  %.017.lcssa.i = phi i64 [ %spec.select34.i, %_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm.exit ], [ %i.q, %.lr.ph.i16 ] ; 3 uses
  %i.y = icmp samesign ult i64 %.017.lcssa.i, 10
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i14
  %i.z = or disjoint i64 %.017.lcssa.i, 48
  %i.aa = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIcmLb0EE7ConvertEm(i64 noundef %i.z)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit

bb.d:                                             ; preds = %._crit_edge.i14
  %i.ab = shl nuw nsw i64 %.017.lcssa.i, 1
  %i.ac = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.ab) ; 2 uses
  %i.ad = add i32 %i.ac, 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !153
  %i.ah = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 -1
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !153
  %i.ai = zext i32 %i.ac to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !153
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit

_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit: ; preds = %bb.c, %bb.d
  %.sink26.i = phi i64 [ -2, %bb.d ], [ -1, %bb.c ] ; 2 uses
  %.sink.i15 = phi i8 [ %i.ak, %bb.d ], [ %i.aa, %bb.c ]
  %i.al = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 %.sink26.i ; 3 uses
  store i8 %.sink.i15, ptr %i.al, align 1, !tbaa !153
  %i.am = ptrtoint ptr %.01333 to i64             ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = icmp slt i32 %i.ap, 17
  br i1 %i.aq, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit
  %scevgep = getelementptr i8, ptr %.018.lcssa.i, i64 -1
  %i.ar = add i64 %i.an, 16
  %i.as = sub i64 %i.ar, %i.am
  %i.at = and i64 %i.as, 4294967295               ; 2 uses
  %i.au = sub nuw nsw i64 %.sink26.i, %i.at
  %scevgep43 = getelementptr i8, ptr %scevgep, i64 %i.au ; 2 uses
  %i.av = add nuw nsw i64 %i.at, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep43, i8 48, i64 %i.av, i1 false), !tbaa !153
  br label %.loopexit

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.013.lcssa = phi ptr [ %2, %bb.a ], [ %.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.09.0.lcssa = phi i64 [ %0, %bb.a ], [ %.sroa.018.1.i, %.loopexit ] ; 3 uses
  %i.aw = icmp ugt i64 %.sroa.09.0.lcssa, 99
  br i1 %i.aw, label %.lr.ph.i22, label %._crit_edge.i17

.lr.ph.i22:                                       ; preds = %._crit_edge, %.lr.ph.i22
  %.01720.i23 = phi i64 [ %i.ba, %.lr.ph.i22 ], [ %.sroa.09.0.lcssa, %._crit_edge ] ; 3 uses
  %.01819.i24 = phi ptr [ %i.bj, %.lr.ph.i22 ], [ %.013.lcssa, %._crit_edge ] ; 2 uses
  %i.ax = urem i64 %.01720.i23, 100
  %i.ay = shl nuw nsw i64 %i.ax, 1
  %i.az = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.ay) ; 2 uses
  %i.ba = udiv i64 %.01720.i23, 100               ; 2 uses
  %i.bb = add i32 %i.az, 1
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !153
  %i.bf = getelementptr inbounds i8, ptr %.01819.i24, i64 -1
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !153
  %i.bg = zext i32 %i.az to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !153
  %i.bj = getelementptr inbounds i8, ptr %.01819.i24, i64 -2 ; 3 uses
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !153
  %i.bk = icmp ugt i64 %.01720.i23, 9999
  br i1 %i.bk, label %.lr.ph.i22, label %._crit_edge.i17, !llvm.loop !291

._crit_edge.i17:                                  ; preds = %.lr.ph.i22, %._crit_edge
  %.018.lcssa.i18 = phi ptr [ %.013.lcssa, %._crit_edge ], [ %i.bj, %.lr.ph.i22 ] ; 2 uses
  %.017.lcssa.i19 = phi i64 [ %.sroa.09.0.lcssa, %._crit_edge ], [ %i.ba, %.lr.ph.i22 ] ; 3 uses
  %i.bl = icmp samesign ult i64 %.017.lcssa.i19, 10
  br i1 %i.bl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i17
  %i.bm = or disjoint i64 %.017.lcssa.i19, 48
  %i.bn = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIcmLb0EE7ConvertEm(i64 noundef %i.bm)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit25

bb.f:                                             ; preds = %._crit_edge.i17
  %i.bo = shl nuw nsw i64 %.017.lcssa.i19, 1
  %i.bp = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.bo) ; 2 uses
  %i.bq = add i32 %i.bp, 1
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !153
  %i.bu = getelementptr inbounds i8, ptr %.018.lcssa.i18, i64 -1
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !153
  %i.bv = zext i32 %i.bp to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !153
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit25

_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit25: ; preds = %bb.e, %bb.f
  %.sink26.i20 = phi i64 [ -2, %bb.f ], [ -1, %bb.e ]
  %.sink.i21 = phi i8 [ %i.bx, %bb.f ], [ %i.bn, %bb.e ]
  %i.by = getelementptr inbounds i8, ptr %.018.lcssa.i18, i64 %.sink26.i20 ; 2 uses
  store i8 %.sink.i21, ptr %i.by, align 1, !tbaa !153
  ret ptr %i.by
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

.lr.ph:                                           ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.sroa.6.156 = phi i64 [ %.sroa.6.0, %.lr.ph ], [ %.sroa.7.0.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ] ; 3 uses
  %.sroa.042.155 = phi i64 [ %.sroa.042.0, %.lr.ph ], [ %.sroa.018.0.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ] ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.6.156, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i

.preheader.i.i:                                   ; preds = %bb.l
  %.not1117.i.i = icmp eq i64 %.sroa.042.155, 0
  br i1 %.not1117.i.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i.i, %bb.l
  %.sink43.i = phi i64 [ %.sroa.6.156, %bb.l ], [ %.sroa.042.155, %.preheader.i.i ]
  %.sink.i = phi i64 [ 128, %bb.l ], [ 64, %.preheader.i.i ]
  %i.ah = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink43.i, i1 true)
  %i.ai = sub nuw nsw i64 %.sink.i, %i.ah
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ai, %.lr.ph.i ], [ %i.am, %bb.m ] ; 3 uses
  %spec.select35.i = phi i64 [ 0, %.lr.ph.i ], [ %spec.select34.i, %bb.m ]
  %.sroa.7.032.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ak, %bb.m ]
  %.sroa.018.031.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.018.1.i, %bb.m ] ; 2 uses
  %i.aj = shl i64 %.sroa.018.031.i, 1
  %i.ak = call i64 @llvm.fshl.i64(i64 %.sroa.7.032.i, i64 %.sroa.018.031.i, i64 1) ; 2 uses
  %i.al = shl i64 %spec.select35.i, 1             ; 2 uses
  %i.am = add nsw i64 %indvars.iv.i, -1           ; 3 uses
  %i.an = icmp ult i64 %indvars.iv.i, 65          ; 2 uses
  %i.ao = add nsw i64 %indvars.iv.i, 4294967231
  %8 = and i64 %i.ao, 4294967295
  %.sink6.i.i = select i1 %i.an, i64 %i.am, i64 %8
  %.sink5.i.i = select i1 %i.an, i64 %.sroa.042.155, i64 %.sroa.6.156
  %i.ap = lshr i64 %.sink5.i.i, %.sink6.i.i
  %i.aq = and i64 %i.ap, 1
  %spec.select.i = or disjoint i64 %i.aq, %i.al
  %.not28.i = icmp ugt i64 %i.al, 9               ; 2 uses
  %.neg = select i1 %.not28.i, i64 -10, i64 0
  %spec.select34.i = add i64 %spec.select.i, %.neg ; 2 uses
  %i.ar = zext i1 %.not28.i to i64
  %.sroa.018.1.i = or disjoint i64 %i.aj, %i.ar   ; 2 uses
  %.not.wide.i = icmp eq i64 %i.am, 0
  br i1 %.not.wide.i, label %.loopexit.loopexit, label %bb.m, !llvm.loop !293

.loopexit.loopexit:                               ; preds = %bb.m
  %i.as = trunc i64 %spec.select34.i to i8
  %i.at = add i8 %i.as, 48
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader.i.i
  %.0 = phi i8 [ 48, %.preheader.i.i ], [ %i.at, %.loopexit.loopexit ]
  %.sroa.018.0.lcssa.i = phi i64 [ 0, %.preheader.i.i ], [ %.sroa.018.1.i, %.loopexit.loopexit ] ; 2 uses
  %.sroa.7.0.lcssa.i = phi i64 [ 0, %.preheader.i.i ], [ %i.ak, %.loopexit.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  store ptr %i.ad, ptr %7, align 8, !tbaa !151
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, i8 noundef signext %.0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit: ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.au = load i64, ptr %i.d, align 8, !tbaa !152, !noalias !294 ; 2 uses
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !152, !noalias !294
  %i.aw = sub i64 4611686018427387903, %i.av
  %i.ax = icmp ult i64 %i.aw, %i.au
  br i1 %i.ax, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.432) #49
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  %i.ay = load ptr, ptr %5, align 8, !tbaa !89, !noalias !294
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.ay, i64 noundef %i.au)
          to label %.noexc15 unwind label %.loopexit48 ; 6 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.af, ptr %6, align 8, !tbaa !151, !alias.scope !294
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !89 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 5 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.o:                                             ; preds = %.noexc15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !152 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false)
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc15
  store ptr %i.ba, ptr %6, align 8, !tbaa !89, !alias.scope !294
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !153
  store i64 %i.bh, ptr %i.af, align 8, !tbaa !153, !alias.scope !294
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !152
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %i.bi = phi i64 [ %i.be, %bb.o ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.bi, ptr %i.ag, align 8, !tbaa !152, !alias.scope !294
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !89
  store i64 0, ptr %i.bj, align 8, !tbaa !152
  store i8 0, ptr %i.bb, align 8, !tbaa !153
  %i.bk = load ptr, ptr %5, align 8, !tbaa !89    ; 6 uses
  %i.bl = icmp eq ptr %i.bk, %i.c
  %i.bm = load ptr, ptr %6, align 8, !tbaa !89    ; 5 uses
  %i.bn = icmp eq ptr %i.bm, %i.af                ; 2 uses
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.p
  br i1 %i.bn, label %bb.q, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.p
  br i1 %i.bn, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bo = load i64, ptr %i.ag, align 8, !tbaa !152 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  switch i64 %i.bo, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !153
  store i8 %i.bq, ptr %i.bk, align 1, !tbaa !153
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr align 1 %i.bm, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.br = load i64, ptr %i.ag, align 8, !tbaa !152 ; 2 uses
  store i64 %i.br, ptr %i.d, align 8, !tbaa !152
  %i.bs = load ptr, ptr %5, align 8, !tbaa !89
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  store i8 0, ptr %i.bt, align 1, !tbaa !153
  %.pre.i16 = load ptr, ptr %6, align 8, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bm, ptr %5, align 8, !tbaa !89
  %i.bu = load <2 x i64>, ptr %i.ag, align 8, !tbaa !153
  store <2 x i64> %i.bu, ptr %i.d, align 8, !tbaa !153
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bv = load i64, ptr %i.c, align 8, !tbaa !153
  store ptr %i.bm, ptr %5, align 8, !tbaa !89
  %i.bw = load <2 x i64>, ptr %i.ag, align 8, !tbaa !153
  store <2 x i64> %i.bw, ptr %i.d, align 8, !tbaa !153
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bk, ptr %6, align 8, !tbaa !89
  store i64 %i.bv, ptr %i.af, align 8, !tbaa !153
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.af, ptr %6, align 8, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.t, %bb.u
  %i.bx = phi ptr [ %.pre.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bk, %bb.t ], [ %i.af, %bb.u ]
  store i64 0, ptr %i.ag, align 8, !tbaa !152
  store i8 0, ptr %i.bx, align 1, !tbaa !153
  %i.by = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.af
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.by) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %i.ca = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.ad
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ca) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  %i.cc = icmp ne i64 %.sroa.018.0.lcssa.i, 0
  %i.cd = icmp ne i64 %.sroa.7.0.lcssa.i, 0
  %or.cond = select i1 %i.cc, i1 true, i1 %i.cd
  br i1 %or.cond, label %bb.l, label %._crit_edge, !llvm.loop !297

bb.v:                                             ; preds = %.loopexit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

.loopexit48:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp, %.loopexit48
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit48 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cf = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ad
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.cf) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.v ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %lpad.phi, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %.body

end_hunk_0
begin_hunk_1_@_ZN6duckdb15DecimalToString6FormatINS_9hugeint_tEEENS_8string_tET_hhRNS_6VectorE:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q
  %i.s = sub nuw nsw i64 12, %i.q
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.s, i1 false)
  %.fca.1.load.pre = load ptr, ptr %i.i, align 8
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

bb.d:                                             ; preds = %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit
  %i.t = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.u = load i32, ptr %i.t, align 1
  store i32 %i.u, ptr %i.l, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

_ZN6duckdb8string_t8FinalizeEv.exit:              ; preds = %bb.c, %bb.d
  %.fca.1.load = phi ptr [ %.fca.1.load.pre, %bb.c ], [ %i.t, %bb.d ]
  %.fca.0.load = load i64, ptr %5, align 8
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.fca.0.load, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15DecimalToString13FormatDecimalINS_9hugeint_tEEEvT_hhPcm(i64 %0, i64 %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %8 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 3 uses
  %i.c = icmp slt i64 %1, 0
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i64 %1, -9223372036854775808
  %i.e = icmp ne i64 %0, 0
  %or.cond.not.i.i = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond.not.i.i, label %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit, label %_ZN6duckdb7Hugeint9TryNegateENS_9hugeint_tERS1_.exit.i

_ZN6duckdb7Hugeint9TryNegateENS_9hugeint_tERS1_.exit.i: ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.440, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %_ZN6duckdb7Hugeint9TryNegateENS_9hugeint_tERS1_.exit.i
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %_ZN6duckdb7Hugeint9TryNegateENS_9hugeint_tERS1_.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %6, align 8, !tbaa !89     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn9.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn10.i, %bb.f ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn9.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit: ; preds = %bb.b
  %i.l = sub i64 0, %0
  %i.m = xor i64 %1, -1
  %i.n = icmp eq i64 %0, 0
  %i.o = zext i1 %i.n to i64
  %i.p = add nuw nsw i64 %i.o, %i.m
  store i8 45, ptr %4, align 1, !tbaa !153
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit, %bb.a
  %.sroa.5.0 = phi i64 [ %i.p, %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.l, %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit ], [ %0, %bb.a ] ; 2 uses
  %i.q = icmp eq i8 %3, 0
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = tail call noundef ptr @_ZN6duckdb13NumericHelper14FormatUnsignedINS_9hugeint_tEEEPcT_S3_(i64 %.sroa.0.0, i64 %.sroa.5.0, ptr noundef %i.b) ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  %i.s = zext i8 %3 to i64                        ; 4 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 %i.s ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.t, align 16, !tbaa !108
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !108
  %i.u = call { i64, i64 } @_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_(i64 %.sroa.0.0, i64 %.sroa.5.0, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %8) ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1
  %.sroa.01.0.copyload = load i64, ptr %8, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %i.x = tail call noundef ptr @_ZN6duckdb13NumericHelper14FormatUnsignedINS_9hugeint_tEEEPcT_S3_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, ptr noundef %i.b) ; 4 uses
  %i.y = sub nsw i64 0, %i.s
  %i.z = getelementptr inbounds i8, ptr %i.b, i64 %i.y
  %i.aa = icmp ugt ptr %i.x, %i.z
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.ab = ptrtoaddr ptr %i.x to i64               ; 2 uses
  %i.ac = add i64 %5, %i.a
  %i.ad = add i64 %i.ab, %i.s
  %i.ae = sub i64 %i.ac, %i.ad
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.ae ; 2 uses
  %i.af = add i64 %i.ab, %i.s
  %i.ag = add i64 %5, %i.a
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %i.ah, i1 false), !tbaa !153
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.k
  %.0.lcssa = phi ptr [ %i.x, %bb.k ], [ %scevgep, %.lr.ph.preheader ]
  %i.ai = getelementptr inbounds i8, ptr %.0.lcssa, i64 -1 ; 2 uses
  store i8 46, ptr %i.ai, align 1, !tbaa !153
  %i.aj = icmp ugt i8 %2, %3
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.ak = tail call noundef ptr @_ZN6duckdb13NumericHelper14FormatUnsignedINS_9hugeint_tEEEPcT_S3_(i64 %i.v, i64 %i.w, ptr noundef nonnull %i.ai) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define { i64, i64 } @_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm(i64 %0, i64 %1, i64 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %3) local_unnamed_addr #18 align 2 {
bb.a:
  store i64 0, ptr %3, align 8, !tbaa !108
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.preheader.i, label %.lr.ph

.preheader.i:                                     ; preds = %bb.a
  %.not1117.i = icmp eq i64 %0, 0
  br i1 %.not1117.i, label %_ZN6duckdbL25PositiveHugeintHighestBitENS_9hugeint_tE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i, %bb.a
  %.sink43 = phi i64 [ %1, %bb.a ], [ %0, %.preheader.i ]
  %.sink = phi i64 [ 128, %bb.a ], [ 64, %.preheader.i ]
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink43, i1 true)
  %i.b = sub nsw i64 %.sink, %i.a
  %i.c = and i64 %i.b, 255
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store i64 %spec.select34, ptr %3, align 8, !tbaa !108
  br label %_ZN6duckdbL25PositiveHugeintHighestBitENS_9hugeint_tE.exit

_ZN6duckdbL25PositiveHugeintHighestBitENS_9hugeint_tE.exit: ; preds = %.preheader.i, %._crit_edge
  %.sroa.018.0.lcssa = phi i64 [ %.sroa.018.1, %._crit_edge ], [ 0, %.preheader.i ]
  %.sroa.7.0.lcssa = phi i64 [ %i.e, %._crit_edge ], [ 0, %.preheader.i ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.018.0.lcssa, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.7.0.lcssa, 1
  ret { i64, i64 } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.c, %.lr.ph ], [ %i.g, %bb.b ] ; 3 uses
  %spec.select35 = phi i64 [ 0, %.lr.ph ], [ %spec.select34, %bb.b ]
  %.sroa.7.032 = phi i64 [ 0, %.lr.ph ], [ %i.e, %bb.b ]
  %.sroa.018.031 = phi i64 [ 0, %.lr.ph ], [ %.sroa.018.1, %bb.b ] ; 2 uses
  %i.d = shl i64 %.sroa.018.031, 1
  %i.e = tail call i64 @llvm.fshl.i64(i64 %.sroa.7.032, i64 %.sroa.018.031, i64 1) ; 2 uses
  %i.f = shl i64 %spec.select35, 1
  %i.g = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.h = icmp ult i64 %indvars.iv, 65             ; 2 uses
  %i.i = add nsw i64 %indvars.iv, 4294967231
  %4 = and i64 %i.i, 4294967295
  %.sink6.i = select i1 %i.h, i64 %i.g, i64 %4
  %.sink5.i = select i1 %i.h, i64 %0, i64 %1
  %i.j = lshr i64 %.sink5.i, %.sink6.i
  %i.k = and i64 %i.j, 1
  %spec.select = or disjoint i64 %i.f, %i.k       ; 2 uses
  %.not28 = icmp uge i64 %spec.select, %2         ; 2 uses
  %i.l = select i1 %.not28, i64 %2, i64 0
  %spec.select34 = sub nuw i64 %spec.select, %i.l ; 2 uses
  %i.m = zext i1 %.not28 to i64
  %.sroa.018.1 = or disjoint i64 %i.d, %i.m       ; 2 uses
  %.not.wide = icmp eq i64 %i.g, 0
  br i1 %.not.wide, label %._crit_edge, label %bb.b, !llvm.loop !293
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 11 uses
  %8 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %9 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %11 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %13 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::hugeint_t", align 8 ; 3 uses
  %15 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %16 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %17 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %15, i64 noundef 0)
  %i.a = load i64, ptr %15, align 8, !tbaa !290
  %i.b = icmp eq i64 %2, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !288
  %i.e = icmp eq i64 %3, %i.d
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %0, ptr %4, align 8, !tbaa !108
  %.sroa.861.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %.sroa.861.0..sroa_idx, align 8, !tbaa !108
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef 0)
  %.fca.0.load.pre = load i64, ptr %14, align 8
  %.fca.1.gep.phi.trans.insert = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.fca.1.load.pre = load i64, ptr %.fca.1.gep.phi.trans.insert, align 8
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %0, 0                        ; 2 uses
  %i.h = icmp eq i64 %1, -9223372036854775808
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %2, 0                        ; 2 uses
  %i.k = icmp eq i64 %3, -9223372036854775808
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %bb.f, label %bb.j

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.m = icmp eq i64 %2, 0
  %i.n = icmp eq i64 %3, -9223372036854775808
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 0), !inline_history !310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !311
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef 1), !inline_history !310
  br label %_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %0, ptr %4, align 8, !tbaa !108
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %.sroa.586.0..sroa_idx, align 8, !tbaa !108
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef 0), !inline_history !310
  br label %_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit

bb.g:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef 1), !inline_history !310
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !288
  %i.r = or disjoint i64 %i.q, -9223372036854775808
  %i.s = load i64, ptr %9, align 8, !tbaa !290
  %i.t = call { i64, i64 } @_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_(i64 %i.s, i64 %i.r, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !310 ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0
  store i64 %i.u, ptr %7, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.w = extractvalue { i64, i64 } %i.t, 1
  store i64 %i.w, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  %.sroa.03.0.copyload.i = load i64, ptr %4, align 8, !tbaa !108
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.sroa.24.0.copyload.i = load i64, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !108
  %i.x = call { i64, i64 } @_ZN6duckdb3AbsENS_9hugeint_tE(i64 %.sroa.03.0.copyload.i, i64 %.sroa.24.0.copyload.i), !inline_history !310 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0        ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.x, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef 1), !inline_history !310
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !288
  %i.ac = add nsw i64 %i.ab, %i.z
  %i.ad = load i64, ptr %10, align 8, !tbaa !290
  %i.ae = add i64 %i.ad, %i.y                     ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.y
  %i.ag = zext i1 %i.af to i64
  %i.ah = add nsw i64 %i.ac, %i.ag
  %i.ai = call { i64, i64 } @_ZN6duckdb3AbsENS_9hugeint_tE(i64 %2, i64 %3), !inline_history !310 ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ai, 0
  %i.ak = extractvalue { i64, i64 } %i.ai, 1
  %i.al = icmp eq i64 %i.ae, %i.aj
  %i.am = icmp eq i64 %i.ah, %i.ak
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 0)
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !288 ; 2 uses
  %i.aq = icmp sgt i64 %3, %i.ap
  %i.ar = icmp eq i64 %3, %i.ap
  %i.as = load i64, ptr %5, align 8, !tbaa !290
  %i.at = icmp ugt i64 %2, %i.as
  %i.au = select i1 %i.ar, i1 %i.at, i1 false
  %i.av = select i1 %i.aq, i1 true, i1 %i.au
  %i.aw = zext i1 %i.av to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 0)
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !288 ; 2 uses
  %i.az = icmp slt i64 %3, %i.ay
  %i.ba = icmp eq i64 %3, %i.ay
  %i.bb = load i64, ptr %6, align 8, !tbaa !290
  %i.bc = icmp ult i64 %2, %i.bb
  %i.bd = select i1 %i.ba, i1 %i.bc, i1 false
  %i.be = select i1 %i.az, i1 true, i1 %i.bd
  %.neg.i = sext i1 %i.be to i64
  %i.bf = add nsw i64 %.neg.i, %i.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %i.bf), !inline_history !310
  %i.bg = load i64, ptr %i.v, align 8, !tbaa !288
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !288
  %i.bj = sub i64 %i.bg, %i.bi
  %i.bk = load i64, ptr %7, align 8, !tbaa !290   ; 2 uses
  %i.bl = load i64, ptr %11, align 8, !tbaa !290  ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = icmp ugt i64 %i.bl, %i.bk
  %.neg.i.i40 = sext i1 %i.bn to i64
  %i.bo = add i64 %i.bj, %.neg.i.i40
  store i64 %i.bm, ptr %7, align 8, !tbaa !108
  store i64 %i.bo, ptr %i.v, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef 0), !inline_history !310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !311
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br label %_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef 1), !inline_history !310
  %i.bp = load i64, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !288
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !288
  %i.bs = sub i64 %i.bp, %i.br
  %i.bt = load i64, ptr %4, align 8, !tbaa !290   ; 2 uses
  %i.bu = load i64, ptr %13, align 8, !tbaa !290  ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = icmp ugt i64 %i.bu, %i.bt
  %.neg.i.i39 = sext i1 %i.bw to i64
  %i.bx = add i64 %i.bs, %.neg.i.i39
  store i64 %i.bv, ptr %4, align 8, !tbaa !108
  store i64 %i.bx, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  br label %_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit

_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit: ; preds = %bb.e, %bb.f, %bb.h, %bb.i
  %.fca.0.load.i = load i64, ptr %7, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.s

bb.j:                                             ; preds = %bb.d
  %i.by = icmp slt i64 %1, 0                      ; 3 uses
  %i.bz = icmp slt i64 %3, 0                      ; 2 uses
  %i.ca = sub i64 0, %0
  %i.cb = xor i64 %1, -1
  %i.cc = zext i1 %i.g to i64
  %i.cd = add nuw nsw i64 %i.cc, %i.cb
  %.sroa.059.0 = select i1 %i.by, i64 %i.ca, i64 %0 ; 3 uses
  %.sroa.861.0 = select i1 %i.by, i64 %i.cd, i64 %1 ; 3 uses
  %i.ce = sub i64 0, %2
  %i.cf = xor i64 %3, -1
  %i.cg = zext i1 %i.j to i64
  %i.ch = add nuw nsw i64 %i.cg, %i.cf
  %.sroa.047.0 = select i1 %i.bz, i64 %i.ce, i64 %2 ; 3 uses
  %.sroa.8.0 = select i1 %i.bz, i64 %i.ch, i64 %3 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %.not.i = icmp eq i64 %.sroa.861.0, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br i1 %.not.i, label %.preheader.i, label %.lr.ph

.preheader.i:                                     ; preds = %bb.j
  %.not1117.i = icmp eq i64 %.sroa.059.0, 0
  br i1 %.not1117.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i, %bb.j
  %.sroa.059.0.sink = phi i64 [ %.sroa.861.0, %bb.j ], [ %.sroa.059.0, %.preheader.i ]
  %.sink = phi i64 [ 128, %bb.j ], [ 64, %.preheader.i ]
  %i.cj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.059.0.sink, i1 true)
  %i.ck = sub nsw i64 %.sink, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cn = and i64 %i.ck, 255
  br label %bb.k

._crit_edge:                                      ; preds = %bb.o, %.preheader.i
  %i.co = phi i64 [ 0, %.preheader.i ], [ %.sroa.25.0.copyload93, %bb.o ] ; 2 uses
  %i.cp = phi i64 [ 0, %.preheader.i ], [ %.sroa.04.0.copyload91, %bb.o ] ; 3 uses
  %.lobit33 = xor i64 %3, %1
  %.not34 = icmp sgt i64 %.lobit33, -1
  br i1 %.not34, label %bb.q, label %bb.p

bb.k:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.25.0.copyload = phi i64 [ 0, %.lr.ph ], [ %.sroa.25.0.copyload93, %bb.o ]
  %.sroa.04.0.copyload = phi i64 [ 0, %.lr.ph ], [ %.sroa.04.0.copyload91, %bb.o ] ; 2 uses
  %indvars.iv = phi i64 [ %i.cn, %.lr.ph ], [ %i.cu, %bb.o ] ; 3 uses
  %i.cq = shl i64 %.sroa.04.0.copyload, 1         ; 3 uses
  %i.cr = call i64 @llvm.fshl.i64(i64 %.sroa.25.0.copyload, i64 %.sroa.04.0.copyload, i64 1) ; 2 uses
  %.sroa.01.0.copyload = load i64, ptr %4, align 8, !tbaa !108 ; 2 uses
  %.sroa.22.0.copyload = load i64, ptr %i.ci, align 8, !tbaa !108
  %i.cs = shl i64 %.sroa.01.0.copyload, 1         ; 2 uses
  %i.ct = call i64 @llvm.fshl.i64(i64 %.sroa.22.0.copyload, i64 %.sroa.01.0.copyload, i64 1) ; 2 uses
  store i64 %i.cs, ptr %4, align 8, !tbaa !108
  store i64 %i.ct, ptr %i.ci, align 8, !tbaa !108
  %i.cu = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.cv = icmp ult i64 %indvars.iv, 65            ; 2 uses
  %i.cw = add nsw i64 %indvars.iv, 4294967231
  %18 = and i64 %i.cw, 4294967295
  %.sink6.i = select i1 %i.cv, i64 %i.cu, i64 %18
  %.sink5.i = select i1 %i.cv, i64 %.sroa.059.0, i64 %.sroa.861.0
  %i.cx = shl nuw i64 1, %.sink6.i
  %i.cy = and i64 %i.cx, %.sink5.i
  %.0.i.not = icmp eq i64 %i.cy, 0
  br i1 %.0.i.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef 1)
  %i.cz = load i64, ptr %i.ci, align 8, !tbaa !288
  %i.da = load i64, ptr %i.cl, align 8, !tbaa !288
  %i.db = add nsw i64 %i.da, %i.cz
  %i.dc = load i64, ptr %4, align 8, !tbaa !290   ; 2 uses
  %i.dd = load i64, ptr %16, align 8, !tbaa !290
  %i.de = add i64 %i.dd, %i.dc                    ; 3 uses
  %i.df = icmp ult i64 %i.de, %i.dc
  %i.dg = zext i1 %i.df to i64
  %i.dh = add nsw i64 %i.db, %i.dg                ; 2 uses
  store i64 %i.de, ptr %4, align 8, !tbaa !108
  store i64 %i.dh, ptr %i.ci, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #46
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.di = phi i64 [ %i.de, %bb.l ], [ %i.cs, %bb.k ] ; 3 uses
  %i.dj = phi i64 [ %i.dh, %bb.l ], [ %i.ct, %bb.k ] ; 3 uses
  %i.dk = icmp sgt i64 %i.dj, %.sroa.8.0
  %i.dl = icmp eq i64 %i.dj, %.sroa.8.0
  %i.dm = icmp uge i64 %i.di, %.sroa.047.0
  %i.dn = select i1 %i.dl, i1 %i.dm, i1 false
  %i.do = select i1 %i.dk, i1 true, i1 %i.dn
  br i1 %i.do, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dp = sub i64 %i.dj, %.sroa.8.0
  %i.dq = sub i64 %i.di, %.sroa.047.0
  %i.dr = icmp ugt i64 %.sroa.047.0, %i.di
  %.neg.i.i = sext i1 %i.dr to i64
  %i.ds = add i64 %i.dp, %.neg.i.i
  store i64 %i.dq, ptr %4, align 8, !tbaa !108
  store i64 %i.ds, ptr %i.ci, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef 1)
  %i.dt = load i64, ptr %i.cm, align 8, !tbaa !288
  %i.du = add nsw i64 %i.dt, %i.cr
  %i.dv = load i64, ptr %17, align 8, !tbaa !290
  %i.dw = add i64 %i.dv, %i.cq                    ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.cq
  %i.dy = zext i1 %i.dx to i64
  %i.dz = add nsw i64 %i.du, %i.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #46
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sroa.25.0.copyload93 = phi i64 [ %i.cr, %bb.m ], [ %i.dz, %bb.n ] ; 2 uses
  %.sroa.04.0.copyload91 = phi i64 [ %i.cq, %bb.m ], [ %i.dw, %bb.n ] ; 2 uses
  %.not.wide = icmp eq i64 %i.cu, 0
  br i1 %.not.wide, label %._crit_edge, label %bb.k, !llvm.loop !312

bb.p:                                             ; preds = %._crit_edge
  %i.ea = sub i64 0, %i.cp
  %i.eb = xor i64 %i.co, -1
  %i.ec = icmp eq i64 %i.cp, 0
  %i.ed = zext i1 %i.ec to i64
  %i.ee = add nsw i64 %i.eb, %i.ed
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  %.fca.1.load98 = phi i64 [ %i.ee, %bb.p ], [ %i.co, %._crit_edge ] ; 2 uses
  %.fca.0.load96 = phi i64 [ %i.ea, %bb.p ], [ %i.cp, %._crit_edge ] ; 2 uses
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ef = load i64, ptr %4, align 8, !tbaa !290   ; 2 uses
  %i.eg = sub i64 0, %i.ef
  store i64 %i.eg, ptr %4, align 8, !tbaa !290
  %i.eh = load i64, ptr %i.ci, align 8, !tbaa !288
  %i.ei = xor i64 %i.eh, -1
  %i.ej = icmp eq i64 %i.ef, 0
  %i.ek = zext i1 %i.ej to i64
  %i.el = add nsw i64 %i.ei, %i.ek
  store i64 %i.el, ptr %i.ci, align 8, !tbaa !288
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit, %bb.b
  %.fca.1.load = phi i64 [ %.fca.1.load98, %bb.q ], [ %.fca.1.load98, %bb.r ], [ %.fca.1.load.i, %_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit ], [ %.fca.1.load.pre, %bb.b ]
  %.fca.0.load = phi i64 [ %.fca.0.load96, %bb.q ], [ %.fca.0.load96, %bb.r ], [ %.fca.0.load.i, %_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit ], [ %.fca.0.load.pre, %bb.b ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb15ConflictManagerC2ENS_19VerifyExistenceTypeEmNS_12optional_ptrINS_12ConflictInfoELb1EEE(ptr noundef nonnull align 8 dereferenceable(328) initializes((0, 1), (8, 25), (32, 80)) %0, i8 noundef zeroext %1, i64 noundef %2, ptr %3) unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 %1, ptr %0, align 8, !tbaa !313
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !336
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !337
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.c, align 8, !tbaa !338
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  store ptr %i.f, ptr %i.e, align 8, !tbaa !339
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 1, ptr %i.g, align 8, !tbaa !340
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.l, ptr %i.k, align 8, !tbaa !341
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 1, ptr %i.m, align 8, !tbaa !342
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.o, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.q, i8 0, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.p, i8 0, i64 17, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ConflictManager12FinishLookupEv(ptr noundef nonnull align 8 dereferenceable(328) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !338
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_12ConflictInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !343
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !344, !nonnull !74, !align !75
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !347
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !348
  %i.k = icmp ne ptr %i.j, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = zext i1 %i.k to i8
  store i8 %i.m, ptr %i.l, align 8, !tbaa !350
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ConflictManager10IsConflictENS_16LookupResultTypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(328) %0, i8 noundef zeroext %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  switch i8 %1, label %bb.d [
    i8 2, label %bb.b
    i8 1, label %bb.i
    i8 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef zeroext i1 @_ZNK6duckdb15ConflictManager11IgnoreNullsEv(ptr noundef nonnull align 8 dereferenceable(328) %0)
  %not. = xor i1 %i.a, true
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.k unwind label %bb.g

end_hunk_1
begin_hunk_2_@_ZNK6duckdb9hugeint_tcvaEv:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext i16 @_ZNK6duckdb9hugeint_tcvsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !290
  %i.a = trunc i64 %.val to i16
  ret i16 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6duckdb9hugeint_tcviEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !290
  %i.a = trunc i64 %.val to i32
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK6duckdb9hugeint_tcvlEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !290
  ret i64 %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_tcvNS_10uhugeint_tEEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !288
  %i.c = load i64, ptr %0, align 8, !tbaa !290
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.b, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb9hugeint_t8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  tail call void @_ZN6duckdb7Hugeint8ToStringB5cxx11ENS_9hugeint_tE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_tmlERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !108
  %i.a = zext i64 %.sroa.0.0.copyload to i128
  %i.b = zext i64 %.sroa.4.0.copyload to i128
  %i.c = shl nuw i128 %i.b, 64
  %i.d = or disjoint i128 %i.c, %i.a
  %i.e = zext i64 %.sroa.0.0.copyload.i to i128
  %i.f = zext i64 %.sroa.2.0.copyload.i to i128
  %i.g = shl nuw i128 %i.f, 64
  %i.h = or disjoint i128 %i.g, %i.e
  %i.i = mul i128 %i.h, %i.d                      ; 2 uses
  %i.j = lshr i128 %i.i, 64
  %i.k = trunc nuw i128 %i.j to i64
  %i.l = trunc i128 %i.i to i64
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.l, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.k, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb8Uhugeint6DivModENS_10uhugeint_tES1_RS1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 9 uses
  %6 = alloca %"struct.duckdb::uhugeint_t", align 16 ; 9 uses
  %7 = alloca %"struct.duckdb::uhugeint_t", align 16 ; 9 uses
  %8 = alloca %"struct.duckdb::uhugeint_t", align 16 ; 16 uses
  %9 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 4 uses
  %11 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 6 uses
  %13 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %15 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %16 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %17 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %18 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %19 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef 0)
  %.sroa.0.0.copyload.i = load i64, ptr %9, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !108
  %i.a = icmp eq i64 %2, %.sroa.0.0.copyload.i
  %i.b = icmp eq i64 %3, %.sroa.2.0.copyload.i
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %0, ptr %4, align 8, !tbaa !108
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !108
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 0)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !311
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef 1)
  %.sroa.0.0.copyload.i13 = load i64, ptr %11, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.2.0.copyload.i15 = load i64, ptr %.sroa.2.0..sroa_idx.i14, align 8, !tbaa !108
  %i.d = icmp eq i64 %2, %.sroa.0.0.copyload.i13
  %i.e = icmp eq i64 %3, %.sroa.2.0.copyload.i15
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %0, ptr %8, align 16, !tbaa !108
  %.sroa.10.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %1, ptr %.sroa.10.0..sroa_idx71, align 8, !tbaa !108
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %0, %2
  %i.h = icmp eq i64 %1, %3                       ; 2 uses
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 1)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef 0)
  %.sroa.0.0.copyload.i25 = load i64, ptr %12, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2.0.copyload.i27 = load i64, ptr %.sroa.2.0..sroa_idx.i26, align 8, !tbaa !108
  %i.j = icmp eq i64 %0, %.sroa.0.0.copyload.i25
  %i.k = icmp eq i64 %1, %.sroa.2.0.copyload.i27
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = icmp ult i64 %1, %3
  %i.n = icmp ult i64 %0, %2
  %i.o = select i1 %i.h, i1 %i.n, i1 false
  %i.p = select i1 %i.m, i1 true, i1 %i.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br i1 %i.p, label %bb.i, label %bb.j

.critedge:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.h
  store i64 %0, ptr %4, align 8, !tbaa !108
  %.sroa.10.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %.sroa.10.0..sroa_idx73, align 8, !tbaa !108
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 0)
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 0)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.preheader.i, label %.lr.ph

.preheader.i:                                     ; preds = %bb.j
  %.not1117.i = icmp eq i64 %0, 0
  br i1 %.not1117.i, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i, %bb.j
  %.sink99 = phi i64 [ %1, %bb.j ], [ %0, %.preheader.i ]
  %.sink = phi i64 [ 128, %bb.j ], [ 64, %.preheader.i ]
  %i.q = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink99, i1 true)
  %i.r = sub nsw i64 %.sink, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.2.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ad = and i64 %i.r, 255
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.aj
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph ], [ %indvars.iv.next, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ae = load i64, ptr %13, align 8, !tbaa !304  ; 6 uses
  %i.af = load i64, ptr %i.s, align 8, !tbaa !833
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = icmp ugt i64 %i.ae, 127
  %or.cond.i.i = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef 0)
  br label %_ZN6duckdb10uhugeint_tlSERKS0_.exit

bb.m:                                             ; preds = %bb.k
  switch i64 %i.ae, label %bb.p [
    i64 0, label %bb.n
    i64 64, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull readonly align 16 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !311
  br label %_ZN6duckdb10uhugeint_tlSERKS0_.exit

bb.o:                                             ; preds = %bb.m
  %i.ai = load i64, ptr %8, align 16, !tbaa !304
  store i64 0, ptr %7, align 16, !tbaa !304
  store i64 %i.ai, ptr %i.t, align 8, !tbaa !833
  br label %_ZN6duckdb10uhugeint_tlSERKS0_.exit

bb.p:                                             ; preds = %bb.m
  %i.aj = icmp samesign ult i64 %i.ae, 64
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ak = load i64, ptr %i.u, align 8, !tbaa !833
  %i.al = load i64, ptr %8, align 16, !tbaa !304  ; 2 uses
  %i.am = call i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.al, i64 %i.ae)
  %i.an = shl i64 %i.al, %i.ae
  store i64 %i.an, ptr %7, align 16, !tbaa !304
  store i64 %i.am, ptr %i.t, align 8, !tbaa !833
  br label %_ZN6duckdb10uhugeint_tlSERKS0_.exit

bb.r:                                             ; preds = %bb.p
  %i.ao = load i64, ptr %8, align 16, !tbaa !304
  %i.ap = add nsw i64 %i.ae, -64
  %i.aq = shl i64 %i.ao, %i.ap
  store i64 0, ptr %7, align 16, !tbaa !304
  store i64 %i.aq, ptr %i.t, align 8, !tbaa !833
  br label %_ZN6duckdb10uhugeint_tlSERKS0_.exit

_ZN6duckdb10uhugeint_tlSERKS0_.exit:              ; preds = %bb.l, %bb.n, %bb.o, %bb.q, %bb.r
  %i.ar = load <2 x i64>, ptr %7, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store <2 x i64> %i.ar, ptr %8, align 16, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.as = load i64, ptr %14, align 8, !tbaa !304  ; 6 uses
  %i.at = load i64, ptr %i.v, align 8, !tbaa !833
  %i.au = icmp ne i64 %i.at, 0
  %i.av = icmp ugt i64 %i.as, 127
  %or.cond.i.i34 = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond.i.i34, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN6duckdb10uhugeint_tlSERKS0_.exit
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 0)
  br label %_ZN6duckdb10uhugeint_tlSERKS0_.exit39

bb.t:                                             ; preds = %_ZN6duckdb10uhugeint_tlSERKS0_.exit
  switch i64 %i.as, label %bb.w [
    i64 0, label %bb.u
    i64 64, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull readonly align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !311
  br label %_ZN6duckdb10uhugeint_tlSERKS0_.exit39

bb.v:                                             ; preds = %bb.t
  %i.aw = load i64, ptr %4, align 8, !tbaa !304
  store i64 0, ptr %6, align 16, !tbaa !304
  store i64 %i.aw, ptr %i.w, align 8, !tbaa !833
  br label %_ZN6duckdb10uhugeint_tlSERKS0_.exit39

bb.w:                                             ; preds = %bb.t
  %i.ax = icmp samesign ult i64 %i.as, 64
  br i1 %i.ax, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ay = load i64, ptr %i.x, align 8, !tbaa !833
  %i.az = load i64, ptr %4, align 8, !tbaa !304   ; 2 uses
  %i.ba = call i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.az, i64 %i.as)
  %i.bb = shl i64 %i.az, %i.as
  store i64 %i.bb, ptr %6, align 16, !tbaa !304
  store i64 %i.ba, ptr %i.w, align 8, !tbaa !833
  br label %_ZN6duckdb10uhugeint_tlSERKS0_.exit39

bb.y:                                             ; preds = %bb.w
  %i.bc = load i64, ptr %4, align 8, !tbaa !304
  %i.bd = add nsw i64 %i.as, -64
  %i.be = shl i64 %i.bc, %i.bd
  store i64 0, ptr %6, align 16, !tbaa !304
  store i64 %i.be, ptr %i.w, align 8, !tbaa !833
  br label %_ZN6duckdb10uhugeint_tlSERKS0_.exit39

_ZN6duckdb10uhugeint_tlSERKS0_.exit39:            ; preds = %bb.s, %bb.u, %bb.v, %bb.x, %bb.y
  %i.bf = load <2 x i64>, ptr %6, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x i64> %i.bf, ptr %4, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #46
  %i.bg = add nuw nsw i64 %indvars.iv, 4294967295
  %20 = and i64 %i.bg, 4294967295
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %15, i64 noundef %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bh = load i64, ptr %15, align 8, !tbaa !304  ; 6 uses
  %i.bi = load i64, ptr %i.y, align 8, !tbaa !833
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = icmp ugt i64 %i.bh, 127
  %or.cond.i = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %or.cond.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN6duckdb10uhugeint_tlSERKS0_.exit39
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 0)
  %.fca.0.load.i.pre = load i64, ptr %5, align 8
  %.fca.1.load.i.pre = load i64, ptr %i.z, align 8
  br label %_ZNK6duckdb10uhugeint_trsERKS0_.exit

bb.aa:                                            ; preds = %_ZN6duckdb10uhugeint_tlSERKS0_.exit39
  switch i64 %i.bh, label %bb.ad [
    i64 0, label %bb.ab
    i64 64, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  store i64 %0, ptr %5, align 8, !tbaa !108
  br label %_ZNK6duckdb10uhugeint_trsERKS0_.exit

bb.ac:                                            ; preds = %bb.aa
  store i64 %1, ptr %5, align 8, !tbaa !304
  br label %_ZNK6duckdb10uhugeint_trsERKS0_.exit

bb.ad:                                            ; preds = %bb.aa
  %i.bl = icmp samesign ult i64 %i.bh, 64
  br i1 %i.bl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bm = lshr i64 %1, %i.bh
  %i.bn = call i64 @llvm.fshr.i64(i64 %1, i64 %0, i64 %i.bh) ; 2 uses
  store i64 %i.bn, ptr %5, align 8, !tbaa !304
  br label %_ZNK6duckdb10uhugeint_trsERKS0_.exit

bb.af:                                            ; preds = %bb.ad
  %i.bo = add nsw i64 %i.bh, -64
  %i.bp = lshr i64 %1, %i.bo                      ; 2 uses
  store i64 %i.bp, ptr %5, align 8, !tbaa !304
  br label %_ZNK6duckdb10uhugeint_trsERKS0_.exit

_ZNK6duckdb10uhugeint_trsERKS0_.exit:             ; preds = %bb.z, %bb.ab, %bb.ac, %bb.ae, %bb.af
  %.fca.1.load.i = phi i64 [ %.fca.1.load.i.pre, %bb.z ], [ %1, %bb.ab ], [ 0, %bb.ac ], [ %i.bm, %bb.ae ], [ 0, %bb.af ]
  %.fca.0.load.i = phi i64 [ %.fca.0.load.i.pre, %bb.z ], [ %0, %bb.ab ], [ %1, %bb.ac ], [ %i.bn, %bb.ae ], [ %i.bp, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef 1)
  %i.bq = load i64, ptr %16, align 8, !tbaa !304
  %i.br = and i64 %i.bq, %.fca.0.load.i
  %i.bs = load i64, ptr %i.aa, align 8, !tbaa !833
  %i.bt = and i64 %i.bs, %.fca.1.load.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef 0)
  %.sroa.0.0.copyload.i45 = load i64, ptr %17, align 8, !tbaa !108
  %.sroa.2.0.copyload.i47 = load i64, ptr %.sroa.2.0..sroa_idx.i46, align 8, !tbaa !108
  %i.bu = icmp ne i64 %i.br, %.sroa.0.0.copyload.i45
  %i.bv = icmp ne i64 %i.bt, %.sroa.2.0.copyload.i47
  %.not8.i.i = select i1 %i.bu, i1 true, i1 %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  br i1 %.not8.i.i, label %bb.ag, label %_ZNK6duckdb10uhugeint_trsERKS0_.exit._crit_edge

_ZNK6duckdb10uhugeint_trsERKS0_.exit._crit_edge:  ; preds = %_ZNK6duckdb10uhugeint_trsERKS0_.exit
  %.sroa.01.0.copyload.i48.pre = load i64, ptr %4, align 8, !tbaa !108
  %.sroa.22.0.copyload.i50.pre = load i64, ptr %i.x, align 8, !tbaa !108
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNK6duckdb10uhugeint_trsERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %18, i64 noundef 1)
  %i.bw = load i64, ptr %i.x, align 8, !tbaa !833
  %i.bx = load i64, ptr %i.ab, align 8, !tbaa !833
  %i.by = add i64 %i.bx, %i.bw
  %i.bz = load i64, ptr %4, align 8, !tbaa !304   ; 2 uses
  %i.ca = load i64, ptr %18, align 8, !tbaa !304
  %i.cb = add i64 %i.ca, %i.bz                    ; 3 uses
  %i.cc = icmp ult i64 %i.cb, %i.bz
  %i.cd = zext i1 %i.cc to i64
  %i.ce = add i64 %i.by, %i.cd                    ; 2 uses
  store i64 %i.cb, ptr %4, align 8, !tbaa !108
  store i64 %i.ce, ptr %i.x, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #46
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK6duckdb10uhugeint_trsERKS0_.exit._crit_edge, %bb.ag
  %.sroa.22.0.copyload.i50 = phi i64 [ %.sroa.22.0.copyload.i50.pre, %_ZNK6duckdb10uhugeint_trsERKS0_.exit._crit_edge ], [ %i.ce, %bb.ag ] ; 3 uses
  %.sroa.01.0.copyload.i48 = phi i64 [ %.sroa.01.0.copyload.i48.pre, %_ZNK6duckdb10uhugeint_trsERKS0_.exit._crit_edge ], [ %i.cb, %bb.ag ] ; 3 uses
  %i.cf = icmp ugt i64 %.sroa.22.0.copyload.i50, %3
  %i.cg = icmp eq i64 %.sroa.22.0.copyload.i50, %3
  %i.ch = icmp uge i64 %.sroa.01.0.copyload.i48, %2
  %i.ci = select i1 %i.cg, i1 %i.ch, i1 false
  %i.cj = select i1 %i.cf, i1 true, i1 %i.ci
  br i1 %i.cj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ck = sub i64 %.sroa.22.0.copyload.i50, %3
  %i.cl = sub i64 %.sroa.01.0.copyload.i48, %2
  %i.cm = icmp ugt i64 %2, %.sroa.01.0.copyload.i48
  %.neg.i.i = sext i1 %i.cm to i64
  %i.cn = add i64 %i.ck, %.neg.i.i
  store i64 %i.cl, ptr %4, align 8, !tbaa !108
  store i64 %i.cn, ptr %i.x, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef 1)
  %i.co = load i64, ptr %i.u, align 8, !tbaa !833
  %i.cp = load i64, ptr %i.ac, align 8, !tbaa !833
  %i.cq = add i64 %i.cp, %i.co
  %i.cr = load i64, ptr %8, align 16, !tbaa !304  ; 2 uses
  %i.cs = load i64, ptr %19, align 8, !tbaa !304
  %i.ct = add i64 %i.cs, %i.cr                    ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cr
  %i.cv = zext i1 %i.cu to i64
  %i.cw = add i64 %i.cq, %i.cv
  store i64 %i.ct, ptr %8, align 16, !tbaa !108
  store i64 %i.cw, ptr %i.u, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #46
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cx = and i64 %indvars.iv.next, 255
  %.not = icmp eq i64 %i.cx, 0
  br i1 %.not, label %.loopexit, label %bb.k, !llvm.loop !836

.loopexit:                                        ; preds = %bb.aj, %.preheader.i, %bb.i, %bb.f, %bb.d, %bb.b
  %.fca.0.load = load i64, ptr %8, align 16
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8Uhugeint13NegateInPlaceILb0EEEvRNS_10uhugeint_tE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !833
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !833
  %i.e = sub i64 %i.b, %i.d
  %i.f = load i64, ptr %1, align 8, !tbaa !304    ; 2 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !304    ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.g, %i.f
  %.neg.i.i = sext i1 %i.i to i64
  %i.j = add i64 %i.e, %.neg.i.i
  store i64 %i.h, ptr %1, align 8, !tbaa !108
  store i64 %i.j, ptr %i.a, align 8, !tbaa !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !311
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_tmIERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !833
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !833
  %i.e = sub i64 %i.b, %i.d
  %i.f = load i64, ptr %0, align 8, !tbaa !304    ; 2 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !304    ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.g, %i.f
  %.neg.i = sext i1 %i.i to i64
  %i.j = add i64 %i.e, %.neg.i
  store i64 %i.h, ptr %0, align 8, !tbaa !108
  store i64 %i.j, ptr %i.a, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb8Uhugeint9TryNegateENS_10uhugeint_tERS1_(i64 %0, i64 %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !833
  %i.c = sub i64 %i.b, %1
  %i.d = load i64, ptr %3, align 8, !tbaa !304    ; 2 uses
  %i.e = sub i64 %i.d, %0
  %i.f = icmp ugt i64 %0, %i.d
  %.neg.i.i.i = sext i1 %i.f to i64
  %i.g = add i64 %i.c, %.neg.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  store i64 %i.e, ptr %2, align 8, !tbaa !108
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !108
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb8Uhugeint11TryMultiplyENS_10uhugeint_tES1_RS1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = zext i64 %0 to i128
  %i.b = zext i64 %1 to i128
  %i.c = shl nuw i128 %i.b, 64
  %i.d = or disjoint i128 %i.c, %i.a
  %i.e = zext i64 %2 to i128
  %i.f = zext i64 %3 to i128
  %i.g = shl nuw i128 %i.f, 64
  %i.h = or disjoint i128 %i.g, %i.e
  %i.i = tail call { i128, i1 } @llvm.umul.with.overflow.i128(i128 %i.d, i128 %i.h) ; 2 uses
  %i.j = extractvalue { i128, i1 } %i.i, 1        ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i128, i1 } %i.i, 0        ; 2 uses
  %i.l = lshr i128 %i.k, 64
  %i.m = trunc nuw i128 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !833
  %i.o = trunc i128 %i.k to i64
  store i64 %i.o, ptr %4, align 8, !tbaa !304
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = xor i1 %i.j, true
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i64 } @_ZN6duckdb8Uhugeint8MultiplyILb0EEENS_10uhugeint_tES2_S2_(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = zext i64 %0 to i128
  %i.b = zext i64 %1 to i128
  %i.c = shl nuw i128 %i.b, 64
  %i.d = or disjoint i128 %i.c, %i.a
  %i.e = zext i64 %2 to i128
  %i.f = zext i64 %3 to i128
  %i.g = shl nuw i128 %i.f, 64
  %i.h = or disjoint i128 %i.g, %i.e
  %i.i = mul i128 %i.h, %i.d                      ; 2 uses
  %i.j = lshr i128 %i.i, 64
  %i.k = trunc nuw i128 %i.j to i64
  %i.l = trunc i128 %i.i to i64
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.l, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.k, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN6duckdb4SignENS_10uhugeint_tE(i64 %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !108 ; 2 uses
  %i.a = icmp ugt i64 %1, %.sroa.2.0.copyload.i
  %i.b = icmp eq i64 %1, %.sroa.2.0.copyload.i
  %i.c = icmp ugt i64 %0, %.sroa.0.0.copyload.i
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = select i1 %i.a, i1 true, i1 %i.d
  %i.f = zext i1 %i.e to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_tgtERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %i.a = icmp ugt i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.b = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.c = icmp ugt i64 %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = select i1 %i.a, i1 true, i1 %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i64 } @_ZN6duckdb3AbsENS_10uhugeint_tE(i64 %0, i64 %1) local_unnamed_addr #9 {
bb.a:
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_teqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  %i.a = icmp eq i64 %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.b = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_tltERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %i.a = icmp ult i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.b = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.c = icmp ult i64 %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = select i1 %i.a, i1 true, i1 %i.d
  ret i1 %i.e
end_hunk_2
