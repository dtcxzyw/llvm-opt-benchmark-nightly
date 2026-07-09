inline.NumInlined: 935
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE14updateOverflowEiia:bb.a
bb.i:                                             ; preds = %_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE6resizeEm.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = sub nuw i64 %.pre-phi7.i, %i.ad
  tail call void @_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.ag)
  %.pre3.i = load i16, ptr %i.g, align 8, !tbaa !61
  %.pre4.i = load ptr, ptr %i.x, align 8, !tbaa !47
  %.pre8.i = sext i16 %.pre3.i to i64
  br label %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11addOverflowEia.exit

bb.j:                                             ; preds = %_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEE6resizeEm.exit.i
  %i.ah = icmp ult i64 %.pre-phi7.i, %i.ad
  br i1 %i.ah, label %bb.k, label %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11addOverflowEia.exit

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.pre-phi7.i ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.z, %i.ai
  br i1 %.not.i.i2.i, label %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11addOverflowEia.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !46
  br label %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11addOverflowEia.exit

_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11addOverflowEia.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %.pre-phi9.i = phi i64 [ %.pre8.i, %bb.i ], [ %.pre-phi.i, %bb.j ], [ %.pre-phi.i, %bb.k ], [ %.pre-phi.i, %bb.l ]
  %i.aj = phi ptr [ %.pre4.i, %bb.i ], [ %i.aa, %bb.j ], [ %i.aa, %bb.k ], [ %i.aa, %bb.l ]
  %i.ak = trunc i32 %1 to i16
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %.pre-phi9.i
  store i16 %i.ak, ptr %i.am, align 2, !tbaa !60
  %i.an = load i16, ptr %i.g, align 8, !tbaa !61
  %i.ao = sext i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ao
  store i8 %i.b, ptr %i.ap, align 1, !tbaa !30
  %i.aq = load i16, ptr %i.g, align 8, !tbaa !61
  %i.ar = add i16 %i.aq, 1
  store i16 %i.ar, ptr %i.g, align 8, !tbaa !61
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  br i1 %.not11, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.at = load i16, ptr %i.as, align 8, !tbaa !61
  %i.au = sext i16 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.au
  %i.ay = getelementptr i8, ptr %i.ax, i64 -2
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !60
  %i.ba = sext i32 %2 to i64                      ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.ba
  store i16 %i.az, ptr %i.bb, align 2, !tbaa !60
  %i.bc = load i16, ptr %i.as, align 8, !tbaa !61
  %i.bd = sext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !47 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.bd
  %i.bh = getelementptr i8, ptr %i.bg, i64 -1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ba
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !30
  %i.bk = load i16, ptr %i.as, align 8, !tbaa !61
  %i.bl = add i16 %i.bk, -1
  store i16 %i.bl, ptr %i.as, align 8, !tbaa !61
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11addOverflowEia.exit, %bb.m, %bb.n
  %.0 = phi i8 [ %3, %bb.m ], [ %3, %bb.n ], [ 15, %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11addOverflowEia.exit ], [ 15, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE14removeOverflowEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !61
  %i.c = sext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = getelementptr [2 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr i8, ptr %i.f, i64 -2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !60
  %i.i = sext i32 %1 to i64                       ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.i
  store i16 %i.h, ptr %i.j, align 2, !tbaa !60
  %i.k = load i16, ptr %i.a, align 8, !tbaa !61
  %i.l = sext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 %i.l
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  store i8 %i.q, ptr %i.r, align 1, !tbaa !30
  %i.s = load i16, ptr %i.a, align 8, !tbaa !61
  %i.t = add i16 %i.s, -1
  store i16 %i.t, ptr %i.a, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE13mergeWithSimdERKNS5_7HllViewEa(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef signext %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.104, align 8            ; 11 uses
  %4 = alloca %class.anon.102, align 8            ; 11 uses
  %i.a = alloca i8, align 1                       ; 2 uses
  %5 = alloca %class.anon.9, align 8              ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %6 = alloca %"struct.std::pair.10", align 32    ; 4 uses
  %7 = alloca %"struct.std::pair.10", align 32    ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %i.e = alloca [32 x i8], align 16               ; 4 uses
  %i.f = alloca [32 x i8], align 16               ; 4 uses
  %i.g = alloca [32 x i8], align 16               ; 4 uses
  store i8 %2, ptr %i.a, align 1, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load <32 x i8>, ptr %i.h, align 1        ; 2 uses
  %i.j = shufflevector <32 x i8> %i.i, <32 x i8> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.k = load <1 x i8>, ptr %1, align 8
  %i.l = shufflevector <1 x i8> %i.k, <1 x i8> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.m = insertelement <32 x i8> poison, i8 %2, i64 0
  %i.n = shufflevector <32 x i8> %i.m, <32 x i8> poison, <32 x i32> zeroinitializer ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %0, ptr %5, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.o, align 8, !tbaa !112
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.p, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 0, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !3
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.t = bitcast <32 x i8> %i.i to i256
  %i.u = lshr i256 %i.t, 184
  %i.v = trunc i256 %i.u to i64
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %.not174 = icmp eq ptr %i.s, %i.w
  br i1 %.not174, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.894.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.995.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.1096.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.1197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.8134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.9135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.10136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.11137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load i32, ptr %i.b, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.aa = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i32 %i.aa

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.ab = phi ptr [ %i.w, %.lr.ph ], [ %i.cn, %bb.f ]
  %i.ac = phi i64 [ 0, %.lr.ph ], [ %i.cl, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac ; 3 uses
  %i.ae = load <16 x i16>, ptr %i.ad, align 1, !tbaa !30, !noalias !114
  %i.af = lshr <16 x i16> %i.ae, splat (i16 4)
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !98
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.ac ; 2 uses
  %i.ai = load <16 x i16>, ptr %i.ah, align 1, !tbaa !30, !noalias !123
  %i.aj = lshr <16 x i16> %i.ai, splat (i16 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ak = bitcast <16 x i16> %i.af to <32 x i8>
  %i.al = and <32 x i8> %i.ak, splat (i8 15)      ; 2 uses
  %i.am = icmp eq <32 x i8> %i.al, splat (i8 15)
  %i.an = add <32 x i8> %i.al, %i.j               ; 2 uses
  %i.ao = bitcast <16 x i16> %i.aj to <32 x i8>
  %i.ap = and <32 x i8> %i.ao, splat (i8 15)      ; 2 uses
  %i.aq = icmp eq <32 x i8> %i.ap, splat (i8 15)
  %i.ar = or <32 x i1> %i.am, %i.aq
  %i.as = bitcast <32 x i1> %i.ar to i32
  %i.at = zext i32 %i.as to i64
  %i.au = add <32 x i8> %i.ap, %i.l               ; 2 uses
  %i.av = call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.an, <32 x i8> %i.au) ; 2 uses
  %i.aw = sub <32 x i8> %i.av, %i.n               ; 2 uses
  store <32 x i8> %i.aw, ptr %6, align 32, !alias.scope !132
  store i64 %i.at, ptr %i.y, align 32, !tbaa !135, !alias.scope !132
  %i.ax = icmp eq <32 x i8> %i.av, %i.n
  %i.ay = bitcast <32 x i1> %i.ax to i32
  %i.az = call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ay)
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !3
  %i.bb = add nsw i32 %i.az, %i.ba
  %i.bc = load <32 x i8>, ptr %i.ad, align 1, !tbaa !30, !noalias !141
  %i.bd = load <32 x i8>, ptr %i.ah, align 1, !tbaa !30, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.be = and <32 x i8> %i.bc, splat (i8 15)      ; 2 uses
  %i.bf = icmp eq <32 x i8> %i.be, splat (i8 15)
  %i.bg = add <32 x i8> %i.be, %i.j               ; 2 uses
  %i.bh = and <32 x i8> %i.bd, splat (i8 15)      ; 2 uses
  %i.bi = icmp eq <32 x i8> %i.bh, splat (i8 15)
  %i.bj = or <32 x i1> %i.bf, %i.bi
  %i.bk = bitcast <32 x i1> %i.bj to i32
  %i.bl = zext i32 %i.bk to i64
  %i.bm = add <32 x i8> %i.bh, %i.l               ; 2 uses
  %i.bn = call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.bg, <32 x i8> %i.bm) ; 2 uses
  %i.bo = sub <32 x i8> %i.bn, %i.n               ; 2 uses
  store <32 x i8> %i.bo, ptr %7, align 32, !alias.scope !159
  store i64 %i.bl, ptr %i.z, align 32, !tbaa !135, !alias.scope !159
  %i.bp = icmp eq <32 x i8> %i.bn, %i.n
  %i.bq = bitcast <32 x i1> %i.bp to i32
  %i.br = call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bq)
  %i.bs = add nsw i32 %i.br, %i.bb
  store i32 %i.bs, ptr %i.b, align 4, !tbaa !3
  %i.bt = bitcast <32 x i8> %i.aw to <8 x i32>
  %i.bu = shl <8 x i32> %i.bt, splat (i32 4)
  %8 = bitcast <8 x i32> %i.bu to <4 x i64>
  %9 = and <4 x i64> %8, splat (i64 -1085102592571150096)
  %i.bv = bitcast <32 x i8> %i.bo to <4 x i64>
  %i.bw = or <4 x i64> %9, %i.bv
  store <4 x i64> %i.bw, ptr %i.ad, align 1, !tbaa !30
  %i.bx = load i64, ptr %i.y, align 32, !tbaa !162 ; 2 uses
  %.not = icmp eq i64 %i.bx, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store <32 x i8> %i.an, ptr %i.d, align 16, !tbaa !30
  store <32 x i8> %i.au, ptr %i.e, align 16, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i8 1, ptr %4, align 8
  store ptr %i.y, ptr %.sroa.490.0..sroa_idx, align 8
  store ptr %i.c, ptr %.sroa.591.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.692.0..sroa_idx, align 8
  store ptr %5, ptr %.sroa.793.0..sroa_idx, align 8
  store ptr %i.d, ptr %.sroa.894.0..sroa_idx, align 8
  store ptr %i.e, ptr %.sroa.995.0..sroa_idx, align 8
  store ptr %1, ptr %.sroa.1096.0..sroa_idx, align 8
  store ptr %i.b, ptr %.sroa.1197.0..sroa_idx, align 8
  %i.by = and i64 %i.bx, 4294967295               ; 2 uses
  %.not.i43.i = icmp eq i64 %i.by, 0
  br i1 %.not.i43.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_6common3hll8DenseHllINS0_19HashStringAllocatorEE13mergeWithSimdERKNS8_7HllViewEaEUlT_E_EEvPKmiibSC_EUlimE_ZNS3_ISD_EEvSF_iibSC_EUliE_EEviiSC_T0_.exit, label %.preheader.i44.i

.preheader.i44.i:                                 ; preds = %bb.c, %.preheader.i44.i
  %.011.i45.i = phi i64 [ %i.cc, %.preheader.i44.i ], [ %i.by, %bb.c ] ; 3 uses
  %i.bz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i, i1 true)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  call void @_ZZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE13mergeWithSimdERKNS5_7HllViewEaENKUlT_E_clIiEEDaS9_(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.591.0..sroa_idx, i32 noundef %i.ca)
  %i.cb = add nsw i64 %.011.i45.i, -1
  %i.cc = and i64 %i.cb, %.011.i45.i              ; 2 uses
  %.not10.i46.i = icmp eq i64 %i.cc, 0
  br i1 %.not10.i46.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_6common3hll8DenseHllINS0_19HashStringAllocatorEE13mergeWithSimdERKNS8_7HllViewEaEUlT_E_EEvPKmiibSC_EUlimE_ZNS3_ISD_EEvSF_iibSC_EUliE_EEviiSC_T0_.exit, label %.preheader.i44.i, !llvm.loop !163

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_6common3hll8DenseHllINS0_19HashStringAllocatorEE13mergeWithSimdERKNS8_7HllViewEaEUlT_E_EEvPKmiibSC_EUlimE_ZNS3_ISD_EEvSF_iibSC_EUliE_EEviiSC_T0_.exit: ; preds = %.preheader.i44.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_6common3hll8DenseHllINS0_19HashStringAllocatorEE13mergeWithSimdERKNS8_7HllViewEaEUlT_E_EEvPKmiibSC_EUlimE_ZNS3_ISD_EEvSF_iibSC_EUliE_EEviiSC_T0_.exit, %bb.b
  %i.cd = load i64, ptr %i.z, align 32, !tbaa !162 ; 2 uses
  %.not15 = icmp eq i64 %i.cd, 0
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store <32 x i8> %i.bg, ptr %i.f, align 16, !tbaa !30
  store <32 x i8> %i.bm, ptr %i.g, align 16, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i8 1, ptr %3, align 8
  store ptr %i.z, ptr %.sroa.4130.0..sroa_idx, align 8
  store ptr %i.c, ptr %.sroa.5131.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.6132.0..sroa_idx, align 8
  store ptr %5, ptr %.sroa.7133.0..sroa_idx, align 8
  store ptr %i.f, ptr %.sroa.8134.0..sroa_idx, align 8
  store ptr %i.g, ptr %.sroa.9135.0..sroa_idx, align 8
  store ptr %1, ptr %.sroa.10136.0..sroa_idx, align 8
  store ptr %i.b, ptr %.sroa.11137.0..sroa_idx, align 8
  %i.ce = and i64 %i.cd, 4294967295               ; 2 uses
  %.not.i43.i17 = icmp eq i64 %i.ce, 0
  br i1 %.not.i43.i17, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_6common3hll8DenseHllINS0_19HashStringAllocatorEE13mergeWithSimdERKNS8_7HllViewEaEUlT_E0_EEvPKmiibSC_EUlimE_ZNS3_ISD_EEvSF_iibSC_EUliE_EEviiSC_T0_.exit, label %.preheader.i44.i18

.preheader.i44.i18:                               ; preds = %bb.e, %.preheader.i44.i18
  %.011.i45.i19 = phi i64 [ %i.ci, %.preheader.i44.i18 ], [ %i.ce, %bb.e ] ; 3 uses
  %i.cf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i19, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  call void @_ZZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE13mergeWithSimdERKNS5_7HllViewEaENKUlT_E0_clIiEEDaS9_(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5131.0..sroa_idx, i32 noundef %i.cg)
  %i.ch = add nsw i64 %.011.i45.i19, -1
  %i.ci = and i64 %i.ch, %.011.i45.i19            ; 2 uses
  %.not10.i46.i20 = icmp eq i64 %i.ci, 0
  br i1 %.not10.i46.i20, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_6common3hll8DenseHllINS0_19HashStringAllocatorEE13mergeWithSimdERKNS8_7HllViewEaEUlT_E0_EEvPKmiibSC_EUlimE_ZNS3_ISD_EEvSF_iibSC_EUliE_EEviiSC_T0_.exit, label %.preheader.i44.i18, !llvm.loop !164

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_6common3hll8DenseHllINS0_19HashStringAllocatorEE13mergeWithSimdERKNS8_7HllViewEaEUlT_E0_EEvPKmiibSC_EUlimE_ZNS3_ISD_EEvSF_iibSC_EUliE_EEviiSC_T0_.exit: ; preds = %.preheader.i44.i18, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  br label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_6common3hll8DenseHllINS0_19HashStringAllocatorEE13mergeWithSimdERKNS8_7HllViewEaEUlT_E0_EEvPKmiibSC_EUlimE_ZNS3_ISD_EEvSF_iibSC_EUliE_EEviiSC_T0_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.cj = load i32, ptr %i.c, align 4, !tbaa !3
  %i.ck = add i32 %i.cj, 32                       ; 2 uses
  store i32 %i.ck, ptr %i.c, align 4, !tbaa !3
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.cn = load ptr, ptr %i.q, align 8, !tbaa !47  ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = icmp ugt i64 %i.cq, %i.cl
  br i1 %i.cr, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !165
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE15mergeWithScalarERKNS5_7HllViewEa(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef signext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.s = phi ptr [ %i.d, %.lr.ph ], [ %i.ae, %bb.c ]
  %.081 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.c ]
  %.02980 = phi i32 [ 0, %.lr.ph ], [ %i.aa, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 1, !tbaa !30
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !30
  %i.y = sext i8 %i.u to i32
  %i.z = sext i8 %i.x to i32
  %i.aa = add i32 %.02980, 2                      ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE14updateOverflowEiia.exit
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv
  store i8 %i.iz, ptr %i.ac, align 1, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !47  ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp ugt i64 %i.ah, %indvars.iv.next
  br i1 %i.ai, label %bb.b, label %._crit_edge, !llvm.loop !166

bb.d:                                             ; preds = %bb.b, %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE14updateOverflowEiia.exit
  %.178 = phi i32 [ %.081, %bb.b ], [ %spec.select, %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE14updateOverflowEiia.exit ]
  %.13077 = phi i32 [ %.02980, %bb.b ], [ %i.ja, %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE14updateOverflowEiia.exit ] ; 4 uses
  %.03276 = phi i32 [ 4, %bb.b ], [ %i.jb, %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE14updateOverflowEiia.exit ] ; 3 uses
  %.03375 = phi i8 [ 0, %bb.b ], [ %i.iz, %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE14updateOverflowEiia.exit ]
  %i.aj = ashr i32 %i.y, %.03276
  %i.ak = trunc nsw i32 %i.aj to i8
  %i.al = and i8 %i.ak, 15                        ; 2 uses
  %i.am = ashr i32 %i.z, %.03276
  %i.an = trunc nsw i32 %i.am to i8
  %i.ao = and i8 %i.an, 15                        ; 2 uses
  %i.ap = load i8, ptr %i.f, align 1, !tbaa !7
  %i.aq = add i8 %i.ap, %i.al                     ; 5 uses
  %i.ar = load i8, ptr %1, align 8, !tbaa !96
  %i.as = add i8 %i.ar, %i.ao                     ; 2 uses
  %i.at = icmp eq i8 %i.al, 15
  br i1 %i.at, label %bb.e, label %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.au = load i16, ptr %i.g, align 8, !tbaa !61  ; 2 uses
  %i.av = icmp sgt i16 %i.au, 0
  br i1 %i.av, label %.lr.ph.i.i, label %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %wide.trip.count.i.i = zext nneg i16 %i.au to i64
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 5 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.i.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !60
  %i.az = zext i16 %i.ay to i32
  %i.ba = icmp eq i32 %.13077, %i.az
  br i1 %i.ba, label %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit.thread.i, label %bb.f, !llvm.loop !66

_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit.i: ; preds = %bb.f
  %i.bb = trunc i64 %indvars.iv.i.i to i32        ; 2 uses
  %sext.mask27.i = and i64 %indvars.iv.i.i, 65535
  %.not.i = icmp eq i64 %sext.mask27.i, 65535
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE14updateOverflowEiia:bb.a
  %.pre2.i = sext i16 %.pre.i to i64
  %.pre3.i = add nsw i64 %.pre2.i, 1
  br label %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11addOverflowEia.exit

bb.f:                                             ; preds = %bb.d
  %i.v = icmp ult i64 %i.j, %i.r
  br i1 %i.v, label %bb.g, label %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11addOverflowEia.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.j ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.w
  br i1 %.not.i.i.i, label %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11addOverflowEia.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.w, ptr %i.l, align 8, !tbaa !285
  br label %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11addOverflowEia.exit

_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11addOverflowEia.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.pre-phi4.i = phi i64 [ %.pre3.i, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.j, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZNSt6vectorIaN8facebook5velox6memory12StlAllocatorIaEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef %.pre-phi4.i)
  %i.y = trunc i32 %1 to i16
  %i.z = load i16, ptr %i.g, align 8, !tbaa !284
  %i.aa = sext i16 %i.z to i64
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !286
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.aa
  store i16 %i.y, ptr %i.ac, align 2, !tbaa !60
  %i.ad = load i16, ptr %i.g, align 8, !tbaa !284
  %i.ae = sext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !272
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 %i.b, ptr %i.ah, align 1, !tbaa !30
  %i.ai = load i16, ptr %i.g, align 8, !tbaa !284
  %i.aj = add i16 %i.ai, 1
  store i16 %i.aj, ptr %i.g, align 8, !tbaa !284
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  br i1 %.not11, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !284
  %i.am = sext i16 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !286 ; 2 uses
  %i.ap = getelementptr [2 x i8], ptr %i.ao, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 -2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !60
  %i.as = sext i32 %2 to i64                      ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.as
  store i16 %i.ar, ptr %i.at, align 2, !tbaa !60
  %i.au = load i16, ptr %i.ak, align 8, !tbaa !284
  %i.av = sext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !272 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.av
  %i.az = getelementptr i8, ptr %i.ay, i64 -1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.as
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !30
  %i.bc = load i16, ptr %i.ak, align 8, !tbaa !284
  %i.bd = add i16 %i.bc, -1
  store i16 %i.bd, ptr %i.ak, align 8, !tbaa !284
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11addOverflowEia.exit, %bb.i, %bb.j
  %.0 = phi i8 [ %3, %bb.i ], [ %3, %bb.j ], [ 15, %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11addOverflowEia.exit ], [ 15, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE14removeOverflowEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !284
  %i.c = sext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !286  ; 2 uses
  %i.f = getelementptr [2 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr i8, ptr %i.f, i64 -2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !60
  %i.i = sext i32 %1 to i64                       ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.i
  store i16 %i.h, ptr %i.j, align 2, !tbaa !60
  %i.k = load i16, ptr %i.a, align 8, !tbaa !284
  %i.l = sext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !272  ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 %i.l
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  store i8 %i.q, ptr %i.r, align 1, !tbaa !30
  %i.s = load i16, ptr %i.a, align 8, !tbaa !284
  %i.t = add i16 %i.s, -1
  store i16 %i.t, ptr %i.a, align 8, !tbaa !284
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE13mergeWithSimdERKNS6_7HllViewEa(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef signext %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.108, align 8            ; 11 uses
  %4 = alloca %class.anon.106, align 8            ; 11 uses
  %i.a = alloca i8, align 1                       ; 2 uses
  %5 = alloca %class.anon.24, align 8             ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %6 = alloca %"struct.std::pair.10", align 32    ; 4 uses
  %7 = alloca %"struct.std::pair.10", align 32    ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %i.e = alloca [32 x i8], align 16               ; 4 uses
  %i.f = alloca [32 x i8], align 16               ; 4 uses
  %i.g = alloca [32 x i8], align 16               ; 4 uses
  store i8 %2, ptr %i.a, align 1, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load <32 x i8>, ptr %i.h, align 1        ; 2 uses
  %i.j = shufflevector <32 x i8> %i.i, <32 x i8> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.k = load <1 x i8>, ptr %1, align 8
  %i.l = shufflevector <1 x i8> %i.k, <1 x i8> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.m = insertelement <32 x i8> poison, i8 %2, i64 0
  %i.n = shufflevector <32 x i8> %i.m, <32 x i8> poison, <32 x i32> zeroinitializer ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %0, ptr %5, align 8, !tbaa !350
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.o, align 8, !tbaa !354
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.p, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 0, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !3
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !289
  %i.t = bitcast <32 x i8> %i.i to i256
  %i.u = lshr i256 %i.t, 184
  %i.v = trunc i256 %i.u to i64
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %.not174 = icmp eq ptr %i.s, %i.w
  br i1 %.not174, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.894.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.995.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.1096.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.1197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.8134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.9135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.10136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.11137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load i32, ptr %i.b, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.aa = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i32 %i.aa

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.ab = phi ptr [ %i.w, %.lr.ph ], [ %i.cn, %bb.f ]
  %i.ac = phi i64 [ 0, %.lr.ph ], [ %i.cl, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac ; 3 uses
  %i.ae = load <16 x i16>, ptr %i.ad, align 1, !tbaa !30, !noalias !355
  %i.af = lshr <16 x i16> %i.ae, splat (i16 4)
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !340
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.ac ; 2 uses
  %i.ai = load <16 x i16>, ptr %i.ah, align 1, !tbaa !30, !noalias !364
  %i.aj = lshr <16 x i16> %i.ai, splat (i16 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ak = bitcast <16 x i16> %i.af to <32 x i8>
  %i.al = and <32 x i8> %i.ak, splat (i8 15)      ; 2 uses
  %i.am = icmp eq <32 x i8> %i.al, splat (i8 15)
  %i.an = add <32 x i8> %i.al, %i.j               ; 2 uses
  %i.ao = bitcast <16 x i16> %i.aj to <32 x i8>
  %i.ap = and <32 x i8> %i.ao, splat (i8 15)      ; 2 uses
  %i.aq = icmp eq <32 x i8> %i.ap, splat (i8 15)
  %i.ar = or <32 x i1> %i.am, %i.aq
  %i.as = bitcast <32 x i1> %i.ar to i32
  %i.at = zext i32 %i.as to i64
  %i.au = add <32 x i8> %i.ap, %i.l               ; 2 uses
  %i.av = call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.an, <32 x i8> %i.au) ; 2 uses
  %i.aw = sub <32 x i8> %i.av, %i.n               ; 2 uses
  store <32 x i8> %i.aw, ptr %6, align 32, !alias.scope !373
  store i64 %i.at, ptr %i.y, align 32, !tbaa !135, !alias.scope !373
  %i.ax = icmp eq <32 x i8> %i.av, %i.n
  %i.ay = bitcast <32 x i1> %i.ax to i32
  %i.az = call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ay)
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !3
  %i.bb = add nsw i32 %i.az, %i.ba
  %i.bc = load <32 x i8>, ptr %i.ad, align 1, !tbaa !30, !noalias !376
  %i.bd = load <32 x i8>, ptr %i.ah, align 1, !tbaa !30, !noalias !385
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.be = and <32 x i8> %i.bc, splat (i8 15)      ; 2 uses
  %i.bf = icmp eq <32 x i8> %i.be, splat (i8 15)
  %i.bg = add <32 x i8> %i.be, %i.j               ; 2 uses
  %i.bh = and <32 x i8> %i.bd, splat (i8 15)      ; 2 uses
  %i.bi = icmp eq <32 x i8> %i.bh, splat (i8 15)
  %i.bj = or <32 x i1> %i.bf, %i.bi
  %i.bk = bitcast <32 x i1> %i.bj to i32
  %i.bl = zext i32 %i.bk to i64
  %i.bm = add <32 x i8> %i.bh, %i.l               ; 2 uses
  %i.bn = call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.bg, <32 x i8> %i.bm) ; 2 uses
  %i.bo = sub <32 x i8> %i.bn, %i.n               ; 2 uses
  store <32 x i8> %i.bo, ptr %7, align 32, !alias.scope !394
  store i64 %i.bl, ptr %i.z, align 32, !tbaa !135, !alias.scope !394
  %i.bp = icmp eq <32 x i8> %i.bn, %i.n
  %i.bq = bitcast <32 x i1> %i.bp to i32
  %i.br = call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bq)
  %i.bs = add nsw i32 %i.br, %i.bb
  store i32 %i.bs, ptr %i.b, align 4, !tbaa !3
  %i.bt = bitcast <32 x i8> %i.aw to <8 x i32>
  %i.bu = shl <8 x i32> %i.bt, splat (i32 4)
  %8 = bitcast <8 x i32> %i.bu to <4 x i64>
  %9 = and <4 x i64> %8, splat (i64 -1085102592571150096)
  %i.bv = bitcast <32 x i8> %i.bo to <4 x i64>
  %i.bw = or <4 x i64> %9, %i.bv
  store <4 x i64> %i.bw, ptr %i.ad, align 1, !tbaa !30
  %i.bx = load i64, ptr %i.y, align 32, !tbaa !162 ; 2 uses
  %.not = icmp eq i64 %i.bx, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store <32 x i8> %i.an, ptr %i.d, align 16, !tbaa !30
  store <32 x i8> %i.au, ptr %i.e, align 16, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i8 1, ptr %4, align 8
  store ptr %i.y, ptr %.sroa.490.0..sroa_idx, align 8
  store ptr %i.c, ptr %.sroa.591.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.692.0..sroa_idx, align 8
  store ptr %5, ptr %.sroa.793.0..sroa_idx, align 8
  store ptr %i.d, ptr %.sroa.894.0..sroa_idx, align 8
  store ptr %i.e, ptr %.sroa.995.0..sroa_idx, align 8
  store ptr %1, ptr %.sroa.1096.0..sroa_idx, align 8
  store ptr %i.b, ptr %.sroa.1197.0..sroa_idx, align 8
  %i.by = and i64 %i.bx, 4294967295               ; 2 uses
  %.not.i43.i = icmp eq i64 %i.by, 0
  br i1 %.not.i43.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_6common3hll8DenseHllINS0_6memory10MemoryPoolEE13mergeWithSimdERKNS9_7HllViewEaEUlT_E_EEvPKmiibSD_EUlimE_ZNS3_ISE_EEvSG_iibSD_EUliE_EEviiSD_T0_.exit, label %.preheader.i44.i

.preheader.i44.i:                                 ; preds = %bb.c, %.preheader.i44.i
  %.011.i45.i = phi i64 [ %i.cc, %.preheader.i44.i ], [ %i.by, %bb.c ] ; 3 uses
  %i.bz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i, i1 true)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  call void @_ZZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE13mergeWithSimdERKNS6_7HllViewEaENKUlT_E_clIiEEDaSA_(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.591.0..sroa_idx, i32 noundef %i.ca)
  %i.cb = add nsw i64 %.011.i45.i, -1
  %i.cc = and i64 %i.cb, %.011.i45.i              ; 2 uses
  %.not10.i46.i = icmp eq i64 %i.cc, 0
  br i1 %.not10.i46.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_6common3hll8DenseHllINS0_6memory10MemoryPoolEE13mergeWithSimdERKNS9_7HllViewEaEUlT_E_EEvPKmiibSD_EUlimE_ZNS3_ISE_EEvSG_iibSD_EUliE_EEviiSD_T0_.exit, label %.preheader.i44.i, !llvm.loop !397

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_6common3hll8DenseHllINS0_6memory10MemoryPoolEE13mergeWithSimdERKNS9_7HllViewEaEUlT_E_EEvPKmiibSD_EUlimE_ZNS3_ISE_EEvSG_iibSD_EUliE_EEviiSD_T0_.exit: ; preds = %.preheader.i44.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_6common3hll8DenseHllINS0_6memory10MemoryPoolEE13mergeWithSimdERKNS9_7HllViewEaEUlT_E_EEvPKmiibSD_EUlimE_ZNS3_ISE_EEvSG_iibSD_EUliE_EEviiSD_T0_.exit, %bb.b
  %i.cd = load i64, ptr %i.z, align 32, !tbaa !162 ; 2 uses
  %.not15 = icmp eq i64 %i.cd, 0
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store <32 x i8> %i.bg, ptr %i.f, align 16, !tbaa !30
  store <32 x i8> %i.bm, ptr %i.g, align 16, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i8 1, ptr %3, align 8
  store ptr %i.z, ptr %.sroa.4130.0..sroa_idx, align 8
  store ptr %i.c, ptr %.sroa.5131.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.6132.0..sroa_idx, align 8
  store ptr %5, ptr %.sroa.7133.0..sroa_idx, align 8
  store ptr %i.f, ptr %.sroa.8134.0..sroa_idx, align 8
  store ptr %i.g, ptr %.sroa.9135.0..sroa_idx, align 8
  store ptr %1, ptr %.sroa.10136.0..sroa_idx, align 8
  store ptr %i.b, ptr %.sroa.11137.0..sroa_idx, align 8
  %i.ce = and i64 %i.cd, 4294967295               ; 2 uses
  %.not.i43.i17 = icmp eq i64 %i.ce, 0
  br i1 %.not.i43.i17, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_6common3hll8DenseHllINS0_6memory10MemoryPoolEE13mergeWithSimdERKNS9_7HllViewEaEUlT_E0_EEvPKmiibSD_EUlimE_ZNS3_ISE_EEvSG_iibSD_EUliE_EEviiSD_T0_.exit, label %.preheader.i44.i18

.preheader.i44.i18:                               ; preds = %bb.e, %.preheader.i44.i18
  %.011.i45.i19 = phi i64 [ %i.ci, %.preheader.i44.i18 ], [ %i.ce, %bb.e ] ; 3 uses
  %i.cf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i19, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  call void @_ZZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE13mergeWithSimdERKNS6_7HllViewEaENKUlT_E0_clIiEEDaSA_(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5131.0..sroa_idx, i32 noundef %i.cg)
  %i.ch = add nsw i64 %.011.i45.i19, -1
  %i.ci = and i64 %i.ch, %.011.i45.i19            ; 2 uses
  %.not10.i46.i20 = icmp eq i64 %i.ci, 0
  br i1 %.not10.i46.i20, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_6common3hll8DenseHllINS0_6memory10MemoryPoolEE13mergeWithSimdERKNS9_7HllViewEaEUlT_E0_EEvPKmiibSD_EUlimE_ZNS3_ISE_EEvSG_iibSD_EUliE_EEviiSD_T0_.exit, label %.preheader.i44.i18, !llvm.loop !398

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_6common3hll8DenseHllINS0_6memory10MemoryPoolEE13mergeWithSimdERKNS9_7HllViewEaEUlT_E0_EEvPKmiibSD_EUlimE_ZNS3_ISE_EEvSG_iibSD_EUliE_EEviiSD_T0_.exit: ; preds = %.preheader.i44.i18, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  br label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_6common3hll8DenseHllINS0_6memory10MemoryPoolEE13mergeWithSimdERKNS9_7HllViewEaEUlT_E0_EEvPKmiibSD_EUlimE_ZNS3_ISE_EEvSG_iibSD_EUliE_EEviiSD_T0_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.cj = load i32, ptr %i.c, align 4, !tbaa !3
  %i.ck = add i32 %i.cj, 32                       ; 2 uses
  store i32 %i.ck, ptr %i.c, align 4, !tbaa !3
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !289
  %i.cn = load ptr, ptr %i.q, align 8, !tbaa !272 ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = icmp ugt i64 %i.cq, %i.cl
  br i1 %i.cr, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !399
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE15mergeWithScalarERKNS6_7HllViewEa(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef signext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !272  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.s = phi ptr [ %i.d, %.lr.ph ], [ %i.ae, %bb.c ]
  %.059 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.c ]
  %.02958 = phi i32 [ 0, %.lr.ph ], [ %i.aa, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 1, !tbaa !30
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !340
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !30
  %i.y = sext i8 %i.u to i32
  %i.z = sext i8 %i.x to i32
  %i.aa = add i32 %.02958, 2                      ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE14updateOverflowEiia.exit
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !272
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv
  store i8 %i.jd, ptr %i.ac, align 1, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !289
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !272 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp ugt i64 %i.ah, %indvars.iv.next
  br i1 %i.ai, label %bb.b, label %._crit_edge, !llvm.loop !400

bb.d:                                             ; preds = %bb.b, %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE14updateOverflowEiia.exit
  %.156 = phi i32 [ %.059, %bb.b ], [ %spec.select, %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE14updateOverflowEiia.exit ]
  %.13055 = phi i32 [ %.02958, %bb.b ], [ %i.je, %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE14updateOverflowEiia.exit ] ; 4 uses
  %.03254 = phi i32 [ 4, %bb.b ], [ %i.jf, %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE14updateOverflowEiia.exit ] ; 3 uses
  %.03353 = phi i8 [ 0, %bb.b ], [ %i.jd, %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE14updateOverflowEiia.exit ]
  %i.aj = ashr i32 %i.y, %.03254
  %i.ak = trunc nsw i32 %i.aj to i8
  %i.al = and i8 %i.ak, 15                        ; 2 uses
  %i.am = ashr i32 %i.z, %.03254
  %i.an = trunc nsw i32 %i.am to i8
  %i.ao = and i8 %i.an, 15                        ; 2 uses
  %i.ap = load i8, ptr %i.f, align 1, !tbaa !244
  %i.aq = add i8 %i.ap, %i.al                     ; 5 uses
  %i.ar = load i8, ptr %1, align 8, !tbaa !338
  %i.as = add i8 %i.ar, %i.ao                     ; 2 uses
  %i.at = icmp eq i8 %i.al, 15
  br i1 %i.at, label %bb.e, label %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.au = load i16, ptr %i.g, align 8, !tbaa !284 ; 2 uses
  %i.av = icmp sgt i16 %i.au, 0
  br i1 %i.av, label %.lr.ph.i.i, label %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %wide.trip.count.i.i = zext nneg i16 %i.au to i64
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !286
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 5 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.i.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !60
  %i.az = zext i16 %i.ay to i32
  %i.ba = icmp eq i32 %.13055, %i.az
  br i1 %i.ba, label %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit.thread.i, label %bb.f, !llvm.loop !329

_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit.i: ; preds = %bb.f
  %i.bb = trunc i64 %indvars.iv.i.i to i32        ; 2 uses
end_hunk_1
