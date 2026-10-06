Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_compression?download=true
inline.NumInlined: 14179
inline.NumDeleted: 6830
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 157
begin_hunk_0_@_ZN6duckdb15BitpackingStateINS_10uhugeint_tENS_9hugeint_tEE5FlushINS_21EmptyBitpackingWriterEEEbv:bb.a

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb15BitpackingStateINS_10uhugeint_tENS_9hugeint_tEE24SubtractFrameOfReferenceIS2_EEvPT_S5_.exit
  %i.ca = phi i64 [ %.pre, %bb.n ], [ %i.bs, %_ZN6duckdb15BitpackingStateINS_10uhugeint_tENS_9hugeint_tEE24SubtractFrameOfReferenceIS2_EEvPT_S5_.exit ]
  %.0.i.i = phi i64 [ %i.bz, %bb.n ], [ %i.bt, %_ZN6duckdb15BitpackingStateINS_10uhugeint_tENS_9hugeint_tEE24SubtractFrameOfReferenceIS2_EEvPT_S5_.exit ]
  %i.cb = zext i8 %.05.i.i to i64
  %i.cc = mul i64 %.0.i.i, %i.cb
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = add i64 %i.cd, %i.ca
  store i64 %i.ce, ptr %i.bq, align 8, !tbaa !1340
  br label %bb.q

.thread:                                          ; preds = %..thread_crit_edge, %bb.k
  %i.cf = phi i8 [ %.pre62, %..thread_crit_edge ], [ %i.ay, %bb.k ]
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %.thread.thread, label %bb.q

.thread.thread:                                   ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthINS_10uhugeint_tELb0EEEhT_.exit41, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.ch = load <2 x i64>, ptr %i.q, align 8, !tbaa !116
  store <2 x i64> %i.ch, ptr %2, align 16, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef 0)
  %i.ci = call noundef zeroext i1 @_ZNK6duckdb10uhugeint_teqERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.ci, label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthINS_10uhugeint_tELb0EEEhT_.exit49, label %.preheader.i.i43

.preheader.i.i43:                                 ; preds = %.thread.thread
  %i.cj = call noundef zeroext i1 @_ZNK6duckdb10uhugeint_tcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.cj, label %.lr.ph.i.i45, label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthINS_10uhugeint_tELb0EEEhT_.exit49

.lr.ph.i.i45:                                     ; preds = %.preheader.i.i43, %.lr.ph.i.i45
  %.06.i.i46 = phi i8 [ %i.ck, %.lr.ph.i.i45 ], [ 0, %.preheader.i.i43 ]
  %i.ck = add i8 %.06.i.i46, 1                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 1)
  %i.cl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_trSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.cm = call noundef zeroext i1 @_ZNK6duckdb10uhugeint_tcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.cm, label %.lr.ph.i.i45, label %._crit_edge.i.i47, !llvm.loop !82

._crit_edge.i.i47:                                ; preds = %.lr.ph.i.i45
  %i.cn = icmp ugt i8 %i.ck, 112
  %spec.select.i.i48 = select i1 %i.cn, i8 -128, i8 %i.ck
  %i.co = zext i8 %spec.select.i.i48 to i64
  br label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthINS_10uhugeint_tELb0EEEhT_.exit49

_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthINS_10uhugeint_tELb0EEEhT_.exit49: ; preds = %.thread.thread, %.preheader.i.i43, %._crit_edge.i.i47
  %.05.i.i44 = phi i64 [ 0, %.thread.thread ], [ 0, %.preheader.i.i43 ], [ %i.co, %._crit_edge.i.i47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32784
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1325
  %i.cr = load <2 x i64>, ptr %i.p, align 8, !tbaa !116
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !1328
  %.not.i50 = icmp eq i64 %i.cs, 0
  br i1 %.not.i50, label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit55, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthINS_10uhugeint_tELb0EEEhT_.exit49, %.lr.ph.i51
  %.04.i53 = phi i64 [ %i.cv, %.lr.ph.i51 ], [ 0, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthINS_10uhugeint_tELb0EEEhT_.exit49 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store <2 x i64> %i.cr, ptr %1, align 16, !tbaa !116
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.04.i53
  %i.cu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_tmIERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.cv = add nuw i64 %.04.i53, 1                 ; 2 uses
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !1328 ; 4 uses
  %i.cx = icmp ult i64 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph.i51, label %_ZN6duckdb15BitpackingStateINS_10uhugeint_tENS_9hugeint_tEE24SubtractFrameOfReferenceIS1_EEvPT_S5_.exit, !llvm.loop !84

_ZN6duckdb15BitpackingStateINS_10uhugeint_tENS_9hugeint_tEE24SubtractFrameOfReferenceIS1_EEvPT_S5_.exit: ; preds = %.lr.ph.i51
  %i.cy = trunc i64 %i.cw to i32
  %i.cz = and i32 %i.cy, 31                       ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit55, label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb15BitpackingStateINS_10uhugeint_tENS_9hugeint_tEE24SubtractFrameOfReferenceIS1_EEvPT_S5_.exit
  %i.db = add i64 %i.cw, 32
  %i.dc = call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.cz)
  %i.dd = sub i64 %i.db, %i.dc
  br label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit55

_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit55: ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthINS_10uhugeint_tELb0EEEhT_.exit49, %_ZN6duckdb15BitpackingStateINS_10uhugeint_tENS_9hugeint_tEE24SubtractFrameOfReferenceIS1_EEvPT_S5_.exit, %bb.p
  %.0.i.i54 = phi i64 [ %i.dd, %bb.p ], [ %i.cw, %_ZN6duckdb15BitpackingStateINS_10uhugeint_tENS_9hugeint_tEE24SubtractFrameOfReferenceIS1_EEvPT_S5_.exit ], [ 0, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthINS_10uhugeint_tELb0EEEhT_.exit49 ]
  %i.de = mul i64 %.0.i.i54, %.05.i.i44
  %i.df = lshr i64 %i.de, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 67616 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !1340
  %i.di = add i64 %i.dh, 24
  %i.dj = add i64 %i.di, %i.df
  store i64 %i.dj, ptr %i.dg, align 8, !tbaa !1340
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %.thread, %bb.a, %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit55, %bb.i, %bb.e
  %.1 = phi i1 [ true, %bb.o ], [ true, %bb.e ], [ true, %bb.i ], [ true, %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit55 ], [ true, %bb.a ], [ false, %.thread ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK6duckdb10uhugeint_tltERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15BitpackingStateINS_10uhugeint_tENS_9hugeint_tEE19CalculateDeltaStatsEv(ptr noundef nonnull align 8 dereferenceable(67751) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %"struct.duckdb::hugeint_t", align 16 ; 5 uses
  %2 = alloca %"struct.duckdb::hugeint_t", align 16 ; 5 uses
  %3 = alloca %"struct.duckdb::hugeint_t", align 16 ; 5 uses
  %4 = alloca %"struct.duckdb::hugeint_t", align 16 ; 5 uses
  %5 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 67648
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store i64 -1, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9223372036854775807, ptr %i.b, align 8
  %i.c = call { i64, i64 } @_ZNK6duckdb9hugeint_tcvNS_10uhugeint_tEEv(ptr noundef nonnull align 8 dereferenceable(16) %6) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  store i64 %i.d, ptr %5, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = extractvalue { i64, i64 } %i.c, 1
  store i64 %i.f, ptr %i.e, align 8
  %i.g = call noundef zeroext i1 @_ZNK6duckdb10uhugeint_tgtERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %i.g, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 67608 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1328 ; 2 uses
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 67744
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1326, !range !147, !noundef !148
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.c
  %i.n = icmp sgt i64 %i.i, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 67748 ; 2 uses
  store i8 1, ptr %i.o, align 4, !tbaa !1342
  br label %.lr.ph56

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32784 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32792
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.053 = phi i64 [ 0, %.lr.ph ], [ %i.ai, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !1325
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.053
  %i.v = call { i64, i64 } @_ZNK6duckdb10uhugeint_tcvNS_9hugeint_tEEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  store i64 %i.w, ptr %7, align 8
  %i.x = extractvalue { i64, i64 } %i.v, 1
  store i64 %i.x, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !1325
  %i.z = getelementptr [16 x i8], ptr %i.y, i64 %.053
  %i.aa = getelementptr i8, ptr %i.z, i64 -16
  %i.ab = call { i64, i64 } @_ZNK6duckdb10uhugeint_tcvNS_9hugeint_tEEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  store i64 %i.ac, ptr %8, align 8
  %i.ad = extractvalue { i64, i64 } %i.ab, 1
  store i64 %i.ad, ptr %i.r, align 8
  %i.ae = call { i64, i64 } @_ZNK6duckdb9hugeint_tmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = extractvalue { i64, i64 } %i.ae, 1
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.053 ; 2 uses
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !116
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ag, ptr %.sroa.435.0..sroa_idx, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.ai = add nuw nsw i64 %.053, 1                ; 2 uses
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !1328 ; 2 uses
  %i.ak = icmp slt i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %._crit_edge, !llvm.loop !3189

._crit_edge:                                      ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 67748 ; 3 uses
  store i8 1, ptr %i.al, align 4, !tbaa !1342
  %i.am = icmp ugt i64 %i.aj, 1
  br i1 %i.am, label %.lr.ph56, label %._crit_edge57.thread

._crit_edge57.thread:                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 67680 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !465
  br label %bb.f

.lr.ph56:                                         ; preds = %._crit_edge.thread, %._crit_edge
  %i.ap = phi ptr [ %i.o, %._crit_edge.thread ], [ %i.al, %._crit_edge ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 67696 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32792
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 67680 ; 2 uses
  br label %bb.e

._crit_edge57:                                    ; preds = %bb.e
  %.pre = load i8, ptr %i.ap, align 4, !tbaa !1342, !range !147
  %i.at = trunc nuw i8 %.pre to i1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 67680 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !465
  br i1 %i.at, label %bb.f, label %.critedge

bb.e:                                             ; preds = %.lr.ph56, %bb.e
  %.04454 = phi i64 [ 1, %.lr.ph56 ], [ %i.bn, %bb.e ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %.04454 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ax = load <2 x i64>, ptr %i.aq, align 8, !tbaa !116
  store <2 x i64> %i.ax, ptr %3, align 16
  %i.ay = load <2 x i64>, ptr %i.aw, align 8, !tbaa !116
  store <2 x i64> %i.ay, ptr %4, align 16
  %i.az = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tgtERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.ba = load <2 x i64>, ptr %3, align 16
  %i.bb = load <2 x i64>, ptr %4, align 16
  %i.bc = insertelement <2 x i1> poison, i1 %i.az, i64 0
  %i.bd = shufflevector <2 x i1> %i.bc, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.be = select <2 x i1> %i.bd, <2 x i64> %i.ba, <2 x i64> %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store <2 x i64> %i.be, ptr %i.aq, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bf = load <2 x i64>, ptr %i.as, align 8, !tbaa !116
  store <2 x i64> %i.bf, ptr %1, align 16
  %i.bg = load <2 x i64>, ptr %i.aw, align 8, !tbaa !116
  store <2 x i64> %i.bg, ptr %2, align 16
  %i.bh = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tltERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.bi = load <2 x i64>, ptr %1, align 16
  %i.bj = load <2 x i64>, ptr %2, align 16
  %i.bk = insertelement <2 x i1> poison, i1 %i.bh, i64 0
  %i.bl = shufflevector <2 x i1> %i.bk, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bm = select <2 x i1> %i.bl, <2 x i64> %i.bi, <2 x i64> %i.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.bm, ptr %i.as, align 8, !tbaa !116
  %i.bn = add nuw i64 %.04454, 1                  ; 2 uses
  %i.bo = load i64, ptr %i.h, align 8, !tbaa !1328
  %i.bp = icmp ult i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.e, label %._crit_edge57, !llvm.loop !3190

bb.f:                                             ; preds = %._crit_edge57.thread, %._crit_edge57
  %i.bq = phi ptr [ %i.an, %._crit_edge57.thread ], [ %i.au, %._crit_edge57 ] ; 2 uses
  %i.br = phi ptr [ %i.al, %._crit_edge57.thread ], [ %i.ap, %._crit_edge57 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 67696
  %.sroa.06.0.copyload = load i64, ptr %i.bs, align 8, !tbaa !116
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 67704
  %.sroa.27.0.copyload = load i64, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !116
  %.sroa.04.0.copyload = load i64, ptr %i.bq, align 8, !tbaa !116
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 67688 ; 2 uses
  %.sroa.25.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !116
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 67712
  %i.bu = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationINS_9hugeint_tES2_S2_EEbT_T0_RT1_(i64 %.sroa.06.0.copyload, i64 %.sroa.27.0.copyload, i64 %.sroa.04.0.copyload, i64 %.sroa.25.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.bt) ; 2 uses
  %i.bv = zext i1 %i.bu to i8
  store i8 %i.bv, ptr %i.br, align 4, !tbaa !1342
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32784
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1325
  %i.by = call { i64, i64 } @_ZNK6duckdb10uhugeint_tcvNS_9hugeint_tEEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) ; 2 uses
  %i.bz = extractvalue { i64, i64 } %i.by, 0
  %i.ca = extractvalue { i64, i64 } %i.by, 1
  %.sroa.0.0.copyload = load i64, ptr %i.bq, align 8, !tbaa !116
  %.sroa.2.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !116
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 67728
  %i.cc = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationINS_9hugeint_tES2_S2_EEbT_T0_RT1_(i64 %i.bz, i64 %i.ca, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.cb)
  %i.cd = zext i1 %i.cc to i8
  br label %bb.h

.critedge:                                        ; preds = %._crit_edge57
  store i8 0, ptr %i.ap, align 4, !tbaa !1342
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.g, %bb.f
  %i.ce = phi ptr [ %i.br, %bb.f ], [ %i.br, %bb.g ], [ %i.ap, %.critedge ]
  %i.cf = phi i8 [ 0, %bb.f ], [ %i.cd, %bb.g ], [ 0, %.critedge ]
  store i8 %i.cf, ptr %i.ce, align 4, !tbaa !1342
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.h
  ret void
}

declare noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationINS_10uhugeint_tES2_S2_EEbT_T0_RT1_(i64, i64, i64, i64, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK6duckdb10uhugeint_tcvbEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_trSERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateINS_10uhugeint_tELb1ENS_9hugeint_tEEC2ERNS_24ColumnDataCheckpointDataERKNS_15CompressionInfoE(ptr noundef nonnull align 8 dereferenceable(67832) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %4 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 4 uses
  %5 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %2, align 8, !tbaa !214
  store i64 %i.b, ptr %i.a, align 8, !tbaa !214
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb26BitpackingCompressionStateINS_10uhugeint_tELb1ENS_9hugeint_tEEE, i64 16), ptr %0, align 8, !tbaa !142
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !223
  %i.d = tail call noundef nonnull align 8 dereferenceable(193) ptr @_ZN6duckdb24ColumnDataCheckpointData22GetCompressionFunctionENS_15CompressionTypeE(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef zeroext 6)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !640
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 67688 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 67830 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.i, align 2, !tbaa !1324
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 0)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(67751) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !465
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32864
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1325
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 67712
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 67760
  store i64 -1, ptr %i.n, align 8, !tbaa !116
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 67768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 -1, i64 16, i1 false)
  store i64 9223372036854775807, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !tbaa !116
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 67728
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 67776
  store i64 0, ptr %i.p, align 8, !tbaa !116
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 67784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store i64 -9223372036854775808, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef 0)
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 67808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !465
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 67824
  store i8 1, ptr %i.r, align 8, !tbaa !1326
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 67825
  store i8 1, ptr %i.s, align 1, !tbaa !1327
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 67826
  store i64 0, ptr %i.h, align 8, !tbaa !1328
  store i32 0, ptr %i.t, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0)
          to label %.noexc11 unwind label %bb.h

.noexc11:                                         ; preds = %.noexc10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 67744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !465
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 0)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %.noexc11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 67792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !465
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  invoke void @_ZN6duckdb26BitpackingCompressionStateINS_10uhugeint_tELb1ENS_9hugeint_tEE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(67832) %0)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 67704
  store ptr %0, ptr %i.w, align 8, !tbaa !3191
  %i.x = invoke noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.y = invoke noundef zeroext i8 @_ZN6duckdb8Settings3GetINS_26ForceBitpackingModeSettingENS_16DatabaseInstanceEEENSt9enable_ifIXsr3std7is_enumINT_11RETURN_TYPEEEE5valueES6_E4typeERKT0_(ptr noundef nonnull align 1 %i.x)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  store i8 %i.y, ptr %i.i, align 2, !tbaa !3192
  ret void

bb.g:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %.noexc11, %.noexc10, %.noexc, %bb.b, %bb.e, %bb.d, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.z, %bb.g ]
  call void @_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingCompressionStateINS_10uhugeint_tELb1ENS_9hugeint_tEE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(67832) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.183", align 8 ; 8 uses
  %2 = alloca %"class.duckdb::BufferHandle", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1344, !nonnull !148, !align !213
  %i.c = tail call noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b) ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !1344, !nonnull !148, !align !213
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb24ColumnDataCheckpointData7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3193, !nonnull !148, !align !213
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !261, !nonnull !148, !align !213 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.m = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.n = sub i64 %i.k, %i.m
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !261, !nonnull !148, !align !213
  call void @_ZN6duckdb13ColumnSegment22CreateTransientSegmentERNS_16DatabaseInstanceERKNS_19CompressionFunctionERKNS_11LogicalTypeEmRNS_12BlockManagerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.183") align 8 %1, ptr noundef nonnull align 1 %i.c, ptr noundef nonnull align 8 dereferenceable(193) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(144) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !290
  store ptr null, ptr %1, align 8, !tbaa !290
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !290  ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !290
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.a
  call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.r) #30
  call void @_ZdlPv(ptr noundef nonnull %i.r) #32
  br label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.c)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.t = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !142
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2) #30 ; 0 uses
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !423
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !427
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !1345
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
end_hunk_0
