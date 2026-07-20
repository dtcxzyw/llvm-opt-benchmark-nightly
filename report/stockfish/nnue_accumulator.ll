inline.NumInlined: 647
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 43
begin_hunk_0
$_ZN9Stockfish4Eval4NNUE16AccumulatorStack13evaluate_sideINS1_8Features11FullThreatsELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEERNS1_17AccumulatorCaches5CacheIXT0_EEE = comdat any

$_ZN9Stockfish4Eval4NNUE16AccumulatorStack8evaluateILj128EEEvRKNS_8PositionERKNS1_18FeatureTransformerIXT_EEERNS1_17AccumulatorCaches5CacheIXT_EEE = comdat any

$_ZN9Stockfish4Eval4NNUE16AccumulatorStack13evaluate_sideINS1_8Features11HalfKAv2_hmELj128EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEERNS1_17AccumulatorCaches5CacheIXT0_EEE = comdat any

$_ZN9Stockfish4Eval4NNUE16AccumulatorStack26forward_update_incrementalINS1_8Features11HalfKAv2_hmELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm = comdat any

$_ZN9Stockfish4Eval4NNUE16AccumulatorStack27backward_update_incrementalINS1_8Features11HalfKAv2_hmELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm = comdat any

$_ZN9Stockfish4Eval4NNUE16AccumulatorStack26forward_update_incrementalINS1_8Features11FullThreatsELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm = comdat any

$_ZN9Stockfish4Eval4NNUE16AccumulatorStack26forward_update_incrementalINS1_8Features11HalfKAv2_hmELj128EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm = comdat any

$_ZN9Stockfish4Eval4NNUE16AccumulatorStack27backward_update_incrementalINS1_8Features11HalfKAv2_hmELj128EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm = comdat any

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef nonnull align 64 dereferenceable(4871) ptr @_ZNK9Stockfish4Eval4NNUE16AccumulatorStack6latestINS1_8Features11HalfKAv2_hmEEERKNS1_16AccumulatorStateIT_EEv(ptr noundef nonnull align 64 dereferenceable(2529288) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2529280
  %i.b = load i64, ptr %i.a, align 64, !tbaa !11
  %i.c = getelementptr [4928 x i8], ptr %0, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -4928
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef nonnull align 64 dereferenceable(5280) ptr @_ZNK9Stockfish4Eval4NNUE16AccumulatorStack6latestINS1_8Features11FullThreatsEEERKNS1_16AccumulatorStateIT_EEv(ptr noundef nonnull align 64 dereferenceable(2529288) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2529280
  %i.b = load i64, ptr %i.a, align 64, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1211904
  %i.d = getelementptr [5312 x i8], ptr %i.c, i64 %i.b
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack8evaluateILj1024EEEvRKNS_8PositionERKNS1_18FeatureTransformerIXT_EEERNS1_17AccumulatorCaches5CacheIXT_EEE(ptr noundef nonnull align 64 dereferenceable(2529288) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 64 dereferenceable(278528) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack13evaluate_sideINS1_8Features11HalfKAv2_hmELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEERNS1_17AccumulatorCaches5CacheIXT0_EEE(ptr noundef nonnull align 64 dereferenceable(2529288) %0, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 64 dereferenceable(278528) %3) #11
  tail call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack13evaluate_sideINS1_8Features11FullThreatsELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEERNS1_17AccumulatorCaches5CacheIXT0_EEE(ptr noundef nonnull align 64 dereferenceable(2529288) %0, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 64 dereferenceable(278528) %3) #11
  tail call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack13evaluate_sideINS1_8Features11HalfKAv2_hmELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEERNS1_17AccumulatorCaches5CacheIXT0_EEE(ptr noundef nonnull align 64 dereferenceable(2529288) %0, i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 64 dereferenceable(278528) %3) #11
  tail call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack13evaluate_sideINS1_8Features11FullThreatsELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEERNS1_17AccumulatorCaches5CacheIXT0_EEE(ptr noundef nonnull align 64 dereferenceable(2529288) %0, i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 64 dereferenceable(278528) %3) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack13evaluate_sideINS1_8Features11HalfKAv2_hmELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEERNS1_17AccumulatorCaches5CacheIXT0_EEE(ptr noundef nonnull align 64 dereferenceable(2529288) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 64 dereferenceable(278528) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %5 = alloca %"class.Stockfish::ValueList.26", align 8 ; 26 uses
  %6 = alloca %"class.Stockfish::ValueList.26", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2529280 ; 2 uses
  %i.b = load i64, ptr %i.a, align 64, !tbaa !11
  %i.c = zext i8 %1 to i64                        ; 8 uses
  %.010.i244 = add i64 %i.b, -1                   ; 3 uses
  %.not.i245 = icmp eq i64 %.010.i244, 0
  br i1 %.not.i245, label %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %.010.i = add i64 %.010.i246, -1                ; 3 uses
  %.not.i = icmp eq i64 %.010.i, 0
  br i1 %.not.i, label %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit, label %.lr.ph, !llvm.loop !16

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.010.i246 = phi i64 [ %.010.i, %bb.b ], [ %.010.i244, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw [4928 x i8], ptr %0, i64 %.010.i246 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4160
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18, !range !20, !noundef !21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4864
  %i.j = tail call noundef zeroext i1 @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm16requires_refreshERKNS_10DirtyPieceENS_5ColorE(ptr noundef nonnull align 1 dereferenceable(7) %i.i, i8 noundef zeroext %1) #11
  br i1 %i.j, label %._ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit_crit_edge249, label %bb.b, !llvm.loop !16

._ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit_crit_edge249: ; preds = %bb.c
  br label %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit, !llvm.loop !16

_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit: ; preds = %.lr.ph, %bb.b, %._ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit_crit_edge249, %bb.a
  %.010.i.lcssa = phi i64 [ %.010.i244, %bb.a ], [ %.010.i246, %._ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit_crit_edge249 ], [ %.010.i246, %.lr.ph ], [ %.010.i, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4928 x i8], ptr %0, i64 %.010.i.lcssa
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4160
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c
  %i.n = load i8, ptr %i.m, align 1, !tbaa !18, !range !20, !noundef !21
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit
  tail call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack26forward_update_incrementalINS1_8Features11HalfKAv2_hmELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm(ptr noundef nonnull align 64 dereferenceable(2529288) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 64 dereferenceable(131188224) %3, i64 noundef %.010.i.lcssa) #11
  br label %bb.f

bb.e:                                             ; preds = %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit
  %i.p = load i64, ptr %i.a, align 64, !tbaa !11
  %i.q = getelementptr [4928 x i8], ptr %0, i64 %i.p ; 3 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -4928
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.c
  %i.u = load i64, ptr %i.t, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.w = load i64, ptr %i.v, align 8, !tbaa !22
  %i.x = and i64 %i.w, %i.u
  %i.y = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.x, i1 true) ; 3 uses
  %i.z = trunc nuw nsw i64 %i.y to i8             ; 2 uses
  %i.aa = getelementptr inbounds nuw [4352 x i8], ptr %4, i64 %i.y
  %i.ab = getelementptr inbounds nuw [2176 x i8], ptr %i.aa, i64 %i.c ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 2080 ; 3 uses
  %i.af = load <32 x i8>, ptr %i.ae, align 32, !tbaa !23
  %i.ag = load <32 x i8>, ptr %2, align 8, !tbaa !23
  %i.ah = icmp eq <32 x i8> %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 2112
  %i.aj = load <32 x i8>, ptr %i.ai, align 64, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = load <32 x i8>, ptr %i.ak, align 8, !tbaa !23
  %i.am = icmp eq <32 x i8> %i.aj, %i.al
  %i.an = shufflevector <32 x i1> %i.ah, <32 x i1> %i.am, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ao = bitcast <64 x i1> %i.an to i64
  %i.ap = xor i64 %i.ao, -1                       ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 2144 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 32, !tbaa !24
  %i.as = and i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !22
  %i.av = and i64 %i.au, %i.ap                    ; 3 uses
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.as) ; 2 uses
  %i.ax = icmp eq i64 %i.as, 0
  br i1 %i.ax, label %.preheader185.i, label %.lr.ph.i

.preheader185.i:                                  ; preds = %.lr.ph.i, %bb.e
  %i.ay = phi i64 [ 0, %bb.e ], [ %i.aw, %.lr.ph.i ] ; 13 uses
  store i64 %i.ay, ptr %i.ac, align 8
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.av) ; 2 uses
  %i.ba = icmp eq i64 %i.av, 0
  br i1 %i.ba, label %._crit_edge.i, label %.lr.ph199.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.0194.i = phi i64 [ %i.bf, %.lr.ph.i ], [ %i.as, %bb.e ] ; 3 uses
  %i.bb = phi i64 [ %i.bj, %.lr.ph.i ], [ 0, %bb.e ] ; 2 uses
  %i.bc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0194.i, i1 true) ; 2 uses
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  %i.be = add i64 %.0194.i, -1
  %i.bf = and i64 %i.be, %.0194.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bc
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !29
  %i.bi = tail call noundef i32 @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm10make_indexENS_5ColorENS_6SquareENS_5PieceES5_(i8 noundef zeroext %1, i8 noundef zeroext %i.bd, i8 noundef zeroext %i.bh, i8 noundef zeroext %i.z) #11
  %i.bj = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bb
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !31
  %exitcond = icmp eq i64 %i.bj, %i.aw
  br i1 %exitcond, label %.preheader185.i, label %.lr.ph.i, !llvm.loop !32

.lr.ph199.i:                                      ; preds = %.preheader185.i, %.lr.ph199.i
  %.0173198.i = phi i64 [ %i.bp, %.lr.ph199.i ], [ %i.av, %.preheader185.i ] ; 3 uses
  %i.bl = phi i64 [ %i.bt, %.lr.ph199.i ], [ 0, %.preheader185.i ] ; 2 uses
  %i.bm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0173198.i, i1 true) ; 2 uses
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  %i.bo = add i64 %.0173198.i, -1
  %i.bp = and i64 %i.bo, %.0173198.i
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bm
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !29
  %i.bs = tail call noundef i32 @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm10make_indexENS_5ColorENS_6SquareENS_5PieceES5_(i8 noundef zeroext %1, i8 noundef zeroext %i.bn, i8 noundef zeroext %i.br, i8 noundef zeroext %i.z) #11
  %i.bt = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bl
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !31
  %exitcond135 = icmp eq i64 %i.bt, %i.az
  br i1 %exitcond135, label %._crit_edge.i, label %.lr.ph199.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %.lr.ph199.i, %.preheader185.i
  %.lcssa196.i = phi i64 [ 0, %.preheader185.i ], [ %i.az, %.lr.ph199.i ] ; 10 uses
  store i64 %.lcssa196.i, ptr %i.ad, align 8
  %i.bv = load i64, ptr %i.at, align 8, !tbaa !22
  store i64 %i.bv, ptr %i.aq, align 32, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(1048) %2, i64 64, i1 false), !tbaa.struct !34
  %i.bw = getelementptr i8, ptr %i.q, i64 -768
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.c
  store i8 1, ptr %i.bx, align 1, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 2048
  %i.bz = trunc nuw nsw i64 %i.ay to i32          ; 3 uses
  %i.ca = trunc nuw nsw i64 %.lcssa196.i to i32   ; 2 uses
  %i.cb = tail call i32 @llvm.umin.i32(i32 %i.ca, i32 %i.bz) ; 3 uses
  %.not357.i = icmp eq i32 %i.cb, 0
  %i.cc = mul nuw nsw i64 %i.y, 4352
  %i.cd = mul nuw nsw i64 %i.c, 2176
  %i.ce = shl nuw nsw i64 %i.c, 11
  %i.cf = getelementptr i8, ptr %i.r, i64 %i.ce
  %i.cg = getelementptr nuw i8, ptr %4, i64 %i.cc
  %i.ch = getelementptr nuw i8, ptr %i.cg, i64 %i.cd
  %wide.trip.count.i = zext nneg i32 %i.cb to i64 ; 6 uses
  %i.ci = icmp samesign ult i64 %.lcssa196.i, %i.ay
  %i.cj = sub nsw i64 %i.ay, %wide.trip.count.i
  %i.ck = add nsw i64 %i.ay, -1
  %i.cl = add nsw i64 %.lcssa196.i, -1
  %xtraiter = and i64 %i.cj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %wide.trip.count.i
  %indvars.iv.next252.i.prol = add nuw nsw i64 %wide.trip.count.i, 1
  %i.cn = icmp eq i64 %i.ck, %wide.trip.count.i
  br label %.preheader184.i

.preheader179.i:                                  ; preds = %.preheader181.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ab, i64 2048 ; 2 uses
  %.not = icmp eq i64 %i.ay, 0                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 127911936 ; 27 uses
  %.not16 = icmp eq i64 %.lcssa196.i, 0
  %i.cq = load <8 x i32>, ptr %i.co, align 64, !tbaa !23 ; 6 uses
  br i1 %.not16, label %.preheader179.split.i, label %.preheader178.us.i

.preheader177.us.i:                               ; preds = %.preheader177.us.i, %.preheader177.us.i.preheader.new
  %indvars.iv283.i = phi i64 [ 0, %.preheader177.us.i.preheader.new ], [ %indvars.iv.next284.i.7, %.preheader177.us.i ] ; 9 uses
  %i.cr = phi <8 x i32> [ %.ph, %.preheader177.us.i.preheader.new ], [ %i.eu, %.preheader177.us.i ]
  %niter317 = phi i64 [ 0, %.preheader177.us.i.preheader.new ], [ %niter317.next.7, %.preheader177.us.i ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv283.i
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !31
  %i.cu = zext i32 %i.ct to i64
  %.idx174.us.i = shl nuw nsw i64 %i.cu, 5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx174.us.i
  %i.cw = load <8 x i32>, ptr %i.cv, align 32, !tbaa !23
  %i.cx = add <8 x i32> %i.cw, %i.cr
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv283.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !31
  %i.db = zext i32 %i.da to i64
  %.idx174.us.i.1 = shl nuw nsw i64 %i.db, 5
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx174.us.i.1
  %i.dd = load <8 x i32>, ptr %i.dc, align 32, !tbaa !23
  %i.de = add <8 x i32> %i.dd, %i.cx
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv283.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !31
  %i.di = zext i32 %i.dh to i64
  %.idx174.us.i.2 = shl nuw nsw i64 %i.di, 5
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx174.us.i.2
  %i.dk = load <8 x i32>, ptr %i.dj, align 32, !tbaa !23
  %i.dl = add <8 x i32> %i.dk, %i.de
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv283.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !31
  %i.dp = zext i32 %i.do to i64
  %.idx174.us.i.3 = shl nuw nsw i64 %i.dp, 5
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx174.us.i.3
  %i.dr = load <8 x i32>, ptr %i.dq, align 32, !tbaa !23
  %i.ds = add <8 x i32> %i.dr, %i.dl
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv283.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !31
  %i.dw = zext i32 %i.dv to i64
  %.idx174.us.i.4 = shl nuw nsw i64 %i.dw, 5
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx174.us.i.4
  %i.dy = load <8 x i32>, ptr %i.dx, align 32, !tbaa !23
  %i.dz = add <8 x i32> %i.dy, %i.ds
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv283.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !31
  %i.ed = zext i32 %i.ec to i64
  %.idx174.us.i.5 = shl nuw nsw i64 %i.ed, 5
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx174.us.i.5
  %i.ef = load <8 x i32>, ptr %i.ee, align 32, !tbaa !23
  %i.eg = add <8 x i32> %i.ef, %i.dz
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv283.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !31
  %i.ek = zext i32 %i.ej to i64
  %.idx174.us.i.6 = shl nuw nsw i64 %i.ek, 5
  %i.el = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx174.us.i.6
  %i.em = load <8 x i32>, ptr %i.el, align 32, !tbaa !23
  %i.en = add <8 x i32> %i.em, %i.eg
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv283.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 28
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !31
  %i.er = zext i32 %i.eq to i64
  %.idx174.us.i.7 = shl nuw nsw i64 %i.er, 5
  %i.es = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx174.us.i.7
  %i.et = load <8 x i32>, ptr %i.es, align 32, !tbaa !23
  %i.eu = add <8 x i32> %i.et, %i.en              ; 3 uses
  %indvars.iv.next284.i.7 = add nuw nsw i64 %indvars.iv283.i, 8 ; 2 uses
  %niter317.next.7 = add i64 %niter317, 8         ; 2 uses
  %niter317.ncmp.7 = icmp eq i64 %niter317.next.7, %unroll_iter316
  br i1 %niter317.ncmp.7, label %.split.sink.split.i.loopexit251.unr-lcssa, label %.preheader177.us.i, !llvm.loop !35

.lr.ph220.us.i:                                   ; preds = %.lr.ph220.us.i, %.lr.ph220.us.i.preheader.new
  %indvars.iv278.i = phi i64 [ 0, %.lr.ph220.us.i.preheader.new ], [ %indvars.iv.next279.i.7, %.lr.ph220.us.i ] ; 9 uses
  %i.ev = phi <8 x i32> [ %i.cq, %.lr.ph220.us.i.preheader.new ], [ %i.gy, %.lr.ph220.us.i ]
  %niter = phi i64 [ 0, %.lr.ph220.us.i.preheader.new ], [ %niter.next.7, %.lr.ph220.us.i ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv278.i
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !31
  %i.ey = zext i32 %i.ex to i64
  %.idx175.us.i = shl nuw nsw i64 %i.ey, 5
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us.i
  %i.fa = load <8 x i32>, ptr %i.ez, align 32, !tbaa !23
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv278.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !31
  %i.fe = zext i32 %i.fd to i64
  %.idx175.us.i.1 = shl nuw nsw i64 %i.fe, 5
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us.i.1
  %i.fg = load <8 x i32>, ptr %i.ff, align 32, !tbaa !23
  %i.fh = add <8 x i32> %i.fa, %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv278.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !31
  %i.fl = zext i32 %i.fk to i64
  %.idx175.us.i.2 = shl nuw nsw i64 %i.fl, 5
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us.i.2
  %i.fn = load <8 x i32>, ptr %i.fm, align 32, !tbaa !23
  %i.fo = add <8 x i32> %i.fh, %i.fn
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv278.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !31
  %i.fs = zext i32 %i.fr to i64
  %.idx175.us.i.3 = shl nuw nsw i64 %i.fs, 5
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us.i.3
  %i.fu = load <8 x i32>, ptr %i.ft, align 32, !tbaa !23
  %i.fv = add <8 x i32> %i.fo, %i.fu
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv278.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !31
  %i.fz = zext i32 %i.fy to i64
  %.idx175.us.i.4 = shl nuw nsw i64 %i.fz, 5
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us.i.4
  %i.gb = load <8 x i32>, ptr %i.ga, align 32, !tbaa !23
  %i.gc = add <8 x i32> %i.fv, %i.gb
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv278.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !31
  %i.gg = zext i32 %i.gf to i64
  %.idx175.us.i.5 = shl nuw nsw i64 %i.gg, 5
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us.i.5
  %i.gi = load <8 x i32>, ptr %i.gh, align 32, !tbaa !23
  %i.gj = add <8 x i32> %i.gc, %i.gi
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv278.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !31
  %i.gn = zext i32 %i.gm to i64
  %.idx175.us.i.6 = shl nuw nsw i64 %i.gn, 5
  %i.go = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us.i.6
  %i.gp = load <8 x i32>, ptr %i.go, align 32, !tbaa !23
  %i.gq = add <8 x i32> %i.gj, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv278.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 28
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !31
  %i.gu = zext i32 %i.gt to i64
  %.idx175.us.i.7 = shl nuw nsw i64 %i.gu, 5
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us.i.7
  %i.gw = load <8 x i32>, ptr %i.gv, align 32, !tbaa !23
  %i.gx = add <8 x i32> %i.gq, %i.gw
  %i.gy = sub <8 x i32> %i.ev, %i.gx              ; 3 uses
  %indvars.iv.next279.i.7 = add nuw nsw i64 %indvars.iv278.i, 8 ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader177.us.i.preheader.loopexit.unr-lcssa, label %.lr.ph220.us.i, !llvm.loop !36

.preheader178.us.i:                               ; preds = %.preheader179.i
  br i1 %.not, label %.preheader177.us.i.preheader, label %.lr.ph220.us.i.preheader

.lr.ph220.us.i.preheader:                         ; preds = %.preheader178.us.i
  %xtraiter305 = and i64 %i.ay, 7                 ; 3 uses
  %i.gz = icmp samesign ult i64 %i.ay, 8
  br i1 %i.gz, label %.lr.ph220.us.i.epil.preheader, label %.lr.ph220.us.i.preheader.new

.lr.ph220.us.i.preheader.new:                     ; preds = %.lr.ph220.us.i.preheader
  %unroll_iter = and i64 %i.ay, 120
  br label %.lr.ph220.us.i

.preheader177.us.i.preheader.loopexit.unr-lcssa:  ; preds = %.lr.ph220.us.i
  %lcmp.mod306.not = icmp eq i64 %xtraiter305, 0
  br i1 %lcmp.mod306.not, label %.preheader177.us.i.preheader, label %.lr.ph220.us.i.epil.preheader

.lr.ph220.us.i.epil.preheader:                    ; preds = %.preheader177.us.i.preheader.loopexit.unr-lcssa, %.lr.ph220.us.i.preheader
  %indvars.iv278.i.epil.init = phi i64 [ 0, %.lr.ph220.us.i.preheader ], [ %indvars.iv.next279.i.7, %.preheader177.us.i.preheader.loopexit.unr-lcssa ]
  %.epil.init = phi <8 x i32> [ %i.cq, %.lr.ph220.us.i.preheader ], [ %i.gy, %.preheader177.us.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod308 = icmp ne i64 %xtraiter305, 0
  tail call void @llvm.assume(i1 %lcmp.mod308)
  br label %.lr.ph220.us.i.epil

.lr.ph220.us.i.epil:                              ; preds = %.lr.ph220.us.i.epil, %.lr.ph220.us.i.epil.preheader
  %indvars.iv278.i.epil = phi i64 [ %indvars.iv.next279.i.epil, %.lr.ph220.us.i.epil ], [ %indvars.iv278.i.epil.init, %.lr.ph220.us.i.epil.preheader ] ; 2 uses
  %i.ha = phi <8 x i32> [ %i.hg, %.lr.ph220.us.i.epil ], [ %.epil.init, %.lr.ph220.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph220.us.i.epil ], [ 0, %.lr.ph220.us.i.epil.preheader ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv278.i.epil
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !31
  %i.hd = zext i32 %i.hc to i64
  %.idx175.us.i.epil = shl nuw nsw i64 %i.hd, 5
  %i.he = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us.i.epil
  %i.hf = load <8 x i32>, ptr %i.he, align 32, !tbaa !23
  %i.hg = sub <8 x i32> %i.ha, %i.hf              ; 2 uses
  %indvars.iv.next279.i.epil = add nuw nsw i64 %indvars.iv278.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter305
  br i1 %epil.iter.cmp.not, label %.preheader177.us.i.preheader, label %.lr.ph220.us.i.epil, !llvm.loop !37

.preheader177.us.i.preheader:                     ; preds = %.preheader177.us.i.preheader.loopexit.unr-lcssa, %.lr.ph220.us.i.epil, %.preheader178.us.i
  %.ph = phi <8 x i32> [ %i.cq, %.preheader178.us.i ], [ %i.gy, %.preheader177.us.i.preheader.loopexit.unr-lcssa ], [ %i.hg, %.lr.ph220.us.i.epil ] ; 2 uses
  %xtraiter309 = and i64 %.lcssa196.i, 7          ; 3 uses
  %i.hh = icmp samesign ult i64 %.lcssa196.i, 8
  br i1 %i.hh, label %.preheader177.us.i.epil.preheader, label %.preheader177.us.i.preheader.new

.preheader177.us.i.preheader.new:                 ; preds = %.preheader177.us.i.preheader
  %unroll_iter316 = and i64 %.lcssa196.i, 120
  br label %.preheader177.us.i

.preheader179.split.i:                            ; preds = %.preheader179.i
  br i1 %.not, label %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_132update_accumulator_refresh_cacheILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11HalfKAv2_hmEEERNS1_17AccumulatorCaches5CacheIXT_EEE.exit, label %.preheader178.us232.i.preheader

.preheader178.us232.i.preheader:                  ; preds = %.preheader179.split.i
  %xtraiter318 = and i64 %i.ay, 7                 ; 3 uses
  %i.hi = icmp samesign ult i64 %i.ay, 8
  br i1 %i.hi, label %.preheader178.us232.i.epil.preheader, label %.preheader178.us232.i.preheader.new

.preheader178.us232.i.preheader.new:              ; preds = %.preheader178.us232.i.preheader
  %unroll_iter325 = and i64 %i.ay, 120
  br label %.preheader178.us232.i

.preheader178.us232.i:                            ; preds = %.preheader178.us232.i, %.preheader178.us232.i.preheader.new
  %indvars.iv273.i = phi i64 [ 0, %.preheader178.us232.i.preheader.new ], [ %indvars.iv.next274.i.7, %.preheader178.us232.i ] ; 9 uses
  %i.hj = phi <8 x i32> [ %i.cq, %.preheader178.us232.i.preheader.new ], [ %i.jm, %.preheader178.us232.i ]
  %niter326 = phi i64 [ 0, %.preheader178.us232.i.preheader.new ], [ %niter326.next.7, %.preheader178.us232.i ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv273.i
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !31
  %i.hm = zext i32 %i.hl to i64
  %.idx175.us226.i = shl nuw nsw i64 %i.hm, 5
  %i.hn = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us226.i
  %i.ho = load <8 x i32>, ptr %i.hn, align 32, !tbaa !23
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv273.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !31
  %i.hs = zext i32 %i.hr to i64
  %.idx175.us226.i.1 = shl nuw nsw i64 %i.hs, 5
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us226.i.1
  %i.hu = load <8 x i32>, ptr %i.ht, align 32, !tbaa !23
  %i.hv = add <8 x i32> %i.ho, %i.hu
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv273.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !31
  %i.hz = zext i32 %i.hy to i64
  %.idx175.us226.i.2 = shl nuw nsw i64 %i.hz, 5
  %i.ia = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us226.i.2
  %i.ib = load <8 x i32>, ptr %i.ia, align 32, !tbaa !23
  %i.ic = add <8 x i32> %i.hv, %i.ib
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv273.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !31
  %i.ig = zext i32 %i.if to i64
  %.idx175.us226.i.3 = shl nuw nsw i64 %i.ig, 5
  %i.ih = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us226.i.3
  %i.ii = load <8 x i32>, ptr %i.ih, align 32, !tbaa !23
  %i.ij = add <8 x i32> %i.ic, %i.ii
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv273.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load i32, ptr %i.il, align 8, !tbaa !31
  %i.in = zext i32 %i.im to i64
  %.idx175.us226.i.4 = shl nuw nsw i64 %i.in, 5
  %i.io = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us226.i.4
  %i.ip = load <8 x i32>, ptr %i.io, align 32, !tbaa !23
  %i.iq = add <8 x i32> %i.ij, %i.ip
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv273.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 20
  %i.it = load i32, ptr %i.is, align 4, !tbaa !31
  %i.iu = zext i32 %i.it to i64
  %.idx175.us226.i.5 = shl nuw nsw i64 %i.iu, 5
  %i.iv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us226.i.5
  %i.iw = load <8 x i32>, ptr %i.iv, align 32, !tbaa !23
  %i.ix = add <8 x i32> %i.iq, %i.iw
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv273.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !31
  %i.jb = zext i32 %i.ja to i64
  %.idx175.us226.i.6 = shl nuw nsw i64 %i.jb, 5
  %i.jc = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us226.i.6
  %i.jd = load <8 x i32>, ptr %i.jc, align 32, !tbaa !23
  %i.je = add <8 x i32> %i.ix, %i.jd
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv273.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 28
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !31
  %i.ji = zext i32 %i.jh to i64
  %.idx175.us226.i.7 = shl nuw nsw i64 %i.ji, 5
  %i.jj = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us226.i.7
  %i.jk = load <8 x i32>, ptr %i.jj, align 32, !tbaa !23
  %i.jl = add <8 x i32> %i.je, %i.jk
  %i.jm = sub <8 x i32> %i.hj, %i.jl              ; 3 uses
  %indvars.iv.next274.i.7 = add nuw nsw i64 %indvars.iv273.i, 8 ; 2 uses
  %niter326.next.7 = add nuw nsw i64 %niter326, 8 ; 2 uses
  %niter326.ncmp.7 = icmp eq i64 %niter326.next.7, %unroll_iter325
  br i1 %niter326.ncmp.7, label %.split.sink.split.i.loopexit.unr-lcssa, label %.preheader178.us232.i, !llvm.loop !36

.preheader184.i:                                  ; preds = %.preheader181.i, %._crit_edge.i
  %exitcond272.not.i = phi i1 [ false, %._crit_edge.i ], [ true, %.preheader181.i ]
  %indvar.i = phi i64 [ 0, %._crit_edge.i ], [ 1024, %.preheader181.i ] ; 2 uses
  %.0143218.i = phi ptr [ %i.by, %._crit_edge.i ], [ %i.vl, %.preheader181.i ] ; 9 uses
  %scevgep267.i = getelementptr i8, ptr %i.cf, i64 %indvar.i ; 16 uses
  %scevgep263.i = getelementptr nuw i8, ptr %i.ch, i64 %indvar.i ; 17 uses
  %.sroa.0.0.copyload.i = load <32 x i16>, ptr %scevgep263.i, align 64, !tbaa !23 ; 2 uses
  %.sroa.11.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep263.i, i64 64 ; 2 uses
  %.sroa.11.0.copyload.i = load <32 x i16>, ptr %.sroa.11.0.scevgep.sroa_idx.i, align 64, !tbaa !23 ; 2 uses
  %.sroa.17.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep263.i, i64 128 ; 2 uses
  %.sroa.17.0.copyload.i = load <32 x i16>, ptr %.sroa.17.0.scevgep.sroa_idx.i, align 64, !tbaa !23 ; 2 uses
  %.sroa.23.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep263.i, i64 192 ; 2 uses
  %.sroa.23.0.copyload.i = load <32 x i16>, ptr %.sroa.23.0.scevgep.sroa_idx.i, align 64, !tbaa !23 ; 2 uses
  %.sroa.29.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep263.i, i64 256 ; 2 uses
  %.sroa.29.0.copyload.i = load <32 x i16>, ptr %.sroa.29.0.scevgep.sroa_idx.i, align 64, !tbaa !23 ; 2 uses
  %.sroa.35.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep263.i, i64 320 ; 2 uses
  %.sroa.35.0.copyload.i = load <32 x i16>, ptr %.sroa.35.0.scevgep.sroa_idx.i, align 64, !tbaa !23 ; 2 uses
  %.sroa.41.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep263.i, i64 384 ; 2 uses
  %.sroa.41.0.copyload.i = load <32 x i16>, ptr %.sroa.41.0.scevgep.sroa_idx.i, align 64, !tbaa !23 ; 2 uses
  %.sroa.47.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep263.i, i64 448 ; 2 uses
  %.sroa.47.0.copyload.i = load <32 x i16>, ptr %.sroa.47.0.scevgep.sroa_idx.i, align 64, !tbaa !23 ; 2 uses
  %.sroa.53.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep263.i, i64 512 ; 2 uses
  %.sroa.53.0.copyload.i = load <32 x i16>, ptr %.sroa.53.0.scevgep.sroa_idx.i, align 64, !tbaa !23 ; 2 uses
  %.sroa.59.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep263.i, i64 576 ; 2 uses
  %.sroa.59.0.copyload.i = load <32 x i16>, ptr %.sroa.59.0.scevgep.sroa_idx.i, align 64, !tbaa !23 ; 2 uses
  %.sroa.65.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep263.i, i64 640 ; 2 uses
  %.sroa.65.0.copyload.i = load <32 x i16>, ptr %.sroa.65.0.scevgep.sroa_idx.i, align 64, !tbaa !23 ; 2 uses
  %.sroa.71.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep263.i, i64 704 ; 2 uses
  %.sroa.71.0.copyload.i = load <32 x i16>, ptr %.sroa.71.0.scevgep.sroa_idx.i, align 64, !tbaa !23 ; 2 uses
  %.sroa.77.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep263.i, i64 768 ; 2 uses
  %.sroa.77.0.copyload.i = load <32 x i16>, ptr %.sroa.77.0.scevgep.sroa_idx.i, align 64, !tbaa !23 ; 2 uses
  %.sroa.83.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep263.i, i64 832 ; 2 uses
  %.sroa.83.0.copyload.i = load <32 x i16>, ptr %.sroa.83.0.scevgep.sroa_idx.i, align 64, !tbaa !23 ; 2 uses
  %.sroa.89.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep263.i, i64 896 ; 2 uses
  %.sroa.89.0.copyload.i = load <32 x i16>, ptr %.sroa.89.0.scevgep.sroa_idx.i, align 64, !tbaa !23 ; 2 uses
  %.sroa.95.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep263.i, i64 960 ; 2 uses
  %.sroa.95.0.copyload.i = load <32 x i16>, ptr %.sroa.95.0.scevgep.sroa_idx.i, align 64, !tbaa !23 ; 2 uses
  br i1 %.not357.i, label %.preheader183.i, label %.lr.ph204.i

.preheader183.i:                                  ; preds = %.lr.ph204.i, %.preheader184.i
  %.sroa.95.0.i = phi <32 x i16> [ %.sroa.95.0.copyload.i, %.preheader184.i ], [ %i.pi, %.lr.ph204.i ] ; 3 uses
  %.sroa.89.0.i = phi <32 x i16> [ %.sroa.89.0.copyload.i, %.preheader184.i ], [ %i.pc, %.lr.ph204.i ] ; 3 uses
  %.sroa.83.0.i = phi <32 x i16> [ %.sroa.83.0.copyload.i, %.preheader184.i ], [ %i.ow, %.lr.ph204.i ] ; 3 uses
  %.sroa.77.0.i = phi <32 x i16> [ %.sroa.77.0.copyload.i, %.preheader184.i ], [ %i.oq, %.lr.ph204.i ] ; 3 uses
  %.sroa.71.0.i = phi <32 x i16> [ %.sroa.71.0.copyload.i, %.preheader184.i ], [ %i.ok, %.lr.ph204.i ] ; 3 uses
  %.sroa.65.0.i = phi <32 x i16> [ %.sroa.65.0.copyload.i, %.preheader184.i ], [ %i.oe, %.lr.ph204.i ] ; 3 uses
  %.sroa.59.0.i = phi <32 x i16> [ %.sroa.59.0.copyload.i, %.preheader184.i ], [ %i.ny, %.lr.ph204.i ] ; 3 uses
  %.sroa.53.0.i = phi <32 x i16> [ %.sroa.53.0.copyload.i, %.preheader184.i ], [ %i.ns, %.lr.ph204.i ] ; 3 uses
  %.sroa.47.0.i = phi <32 x i16> [ %.sroa.47.0.copyload.i, %.preheader184.i ], [ %i.nm, %.lr.ph204.i ] ; 3 uses
  %.sroa.41.0.i = phi <32 x i16> [ %.sroa.41.0.copyload.i, %.preheader184.i ], [ %i.ng, %.lr.ph204.i ] ; 3 uses
  %.sroa.35.0.i = phi <32 x i16> [ %.sroa.35.0.copyload.i, %.preheader184.i ], [ %i.na, %.lr.ph204.i ] ; 3 uses
  %.sroa.29.0.i = phi <32 x i16> [ %.sroa.29.0.copyload.i, %.preheader184.i ], [ %i.mu, %.lr.ph204.i ] ; 3 uses
  %.sroa.23.0.i = phi <32 x i16> [ %.sroa.23.0.copyload.i, %.preheader184.i ], [ %i.mo, %.lr.ph204.i ] ; 3 uses
  %.sroa.17.0.i = phi <32 x i16> [ %.sroa.17.0.copyload.i, %.preheader184.i ], [ %i.mi, %.lr.ph204.i ] ; 3 uses
  %.sroa.11.0.i = phi <32 x i16> [ %.sroa.11.0.copyload.i, %.preheader184.i ], [ %i.mc, %.lr.ph204.i ] ; 3 uses
  %.sroa.0.0.i = phi <32 x i16> [ %.sroa.0.0.copyload.i, %.preheader184.i ], [ %i.lw, %.lr.ph204.i ] ; 3 uses
  br i1 %i.ci, label %.lr.ph210.i.preheader, label %.preheader182.i

.lr.ph210.i.preheader:                            ; preds = %.preheader183.i
  br i1 %lcmp.mod.not, label %.lr.ph210.i.prol.loopexit, label %.lr.ph210.i.prol

.lr.ph210.i.prol:                                 ; preds = %.lr.ph210.i.preheader
  %i.jn = load i32, ptr %i.cm, align 4, !tbaa !31
  %i.jo = zext i32 %i.jn to i64
  %.idx158.i.prol = shl nuw nsw i64 %i.jo, 11
  %i.jp = getelementptr inbounds nuw i8, ptr %.0143218.i, i64 %.idx158.i.prol ; 16 uses
  %i.jq = load <32 x i16>, ptr %i.jp, align 64, !tbaa !23
  %i.jr = sub <32 x i16> %.sroa.0.0.i, %i.jq      ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 64
  %i.jt = load <32 x i16>, ptr %i.js, align 64, !tbaa !23
  %i.ju = sub <32 x i16> %.sroa.11.0.i, %i.jt     ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jp, i64 128
  %i.jw = load <32 x i16>, ptr %i.jv, align 64, !tbaa !23
  %i.jx = sub <32 x i16> %.sroa.17.0.i, %i.jw     ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jp, i64 192
  %i.jz = load <32 x i16>, ptr %i.jy, align 64, !tbaa !23
  %i.ka = sub <32 x i16> %.sroa.23.0.i, %i.jz     ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jp, i64 256
  %i.kc = load <32 x i16>, ptr %i.kb, align 64, !tbaa !23
  %i.kd = sub <32 x i16> %.sroa.29.0.i, %i.kc     ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jp, i64 320
  %i.kf = load <32 x i16>, ptr %i.ke, align 64, !tbaa !23
  %i.kg = sub <32 x i16> %.sroa.35.0.i, %i.kf     ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jp, i64 384
  %i.ki = load <32 x i16>, ptr %i.kh, align 64, !tbaa !23
  %i.kj = sub <32 x i16> %.sroa.41.0.i, %i.ki     ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jp, i64 448
  %i.kl = load <32 x i16>, ptr %i.kk, align 64, !tbaa !23
  %i.km = sub <32 x i16> %.sroa.47.0.i, %i.kl     ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jp, i64 512
  %i.ko = load <32 x i16>, ptr %i.kn, align 64, !tbaa !23
  %i.kp = sub <32 x i16> %.sroa.53.0.i, %i.ko     ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jp, i64 576
  %i.kr = load <32 x i16>, ptr %i.kq, align 64, !tbaa !23
  %i.ks = sub <32 x i16> %.sroa.59.0.i, %i.kr     ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jp, i64 640
  %i.ku = load <32 x i16>, ptr %i.kt, align 64, !tbaa !23
  %i.kv = sub <32 x i16> %.sroa.65.0.i, %i.ku     ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jp, i64 704
  %i.kx = load <32 x i16>, ptr %i.kw, align 64, !tbaa !23
  %i.ky = sub <32 x i16> %.sroa.71.0.i, %i.kx     ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jp, i64 768
  %i.la = load <32 x i16>, ptr %i.kz, align 64, !tbaa !23
  %i.lb = sub <32 x i16> %.sroa.77.0.i, %i.la     ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jp, i64 832
  %i.ld = load <32 x i16>, ptr %i.lc, align 64, !tbaa !23
  %i.le = sub <32 x i16> %.sroa.83.0.i, %i.ld     ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jp, i64 896
  %i.lg = load <32 x i16>, ptr %i.lf, align 64, !tbaa !23
  %i.lh = sub <32 x i16> %.sroa.89.0.i, %i.lg     ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.jp, i64 960
  %i.lj = load <32 x i16>, ptr %i.li, align 64, !tbaa !23
  %i.lk = sub <32 x i16> %.sroa.95.0.i, %i.lj     ; 2 uses
  br label %.lr.ph210.i.prol.loopexit

.lr.ph210.i.prol.loopexit:                        ; preds = %.lr.ph210.i.prol, %.lr.ph210.i.preheader
  %.lcssa285.unr = phi <32 x i16> [ poison, %.lr.ph210.i.preheader ], [ %i.jr, %.lr.ph210.i.prol ]
  %.lcssa284.unr = phi <32 x i16> [ poison, %.lr.ph210.i.preheader ], [ %i.ju, %.lr.ph210.i.prol ]
  %.lcssa283.unr = phi <32 x i16> [ poison, %.lr.ph210.i.preheader ], [ %i.jx, %.lr.ph210.i.prol ]
  %.lcssa282.unr = phi <32 x i16> [ poison, %.lr.ph210.i.preheader ], [ %i.ka, %.lr.ph210.i.prol ]
  %.lcssa281.unr = phi <32 x i16> [ poison, %.lr.ph210.i.preheader ], [ %i.kd, %.lr.ph210.i.prol ]
  %.lcssa280.unr = phi <32 x i16> [ poison, %.lr.ph210.i.preheader ], [ %i.kg, %.lr.ph210.i.prol ]
  %.lcssa279.unr = phi <32 x i16> [ poison, %.lr.ph210.i.preheader ], [ %i.kj, %.lr.ph210.i.prol ]
  %.lcssa278.unr = phi <32 x i16> [ poison, %.lr.ph210.i.preheader ], [ %i.km, %.lr.ph210.i.prol ]
  %.lcssa277.unr = phi <32 x i16> [ poison, %.lr.ph210.i.preheader ], [ %i.kp, %.lr.ph210.i.prol ]
  %.lcssa276.unr = phi <32 x i16> [ poison, %.lr.ph210.i.preheader ], [ %i.ks, %.lr.ph210.i.prol ]
  %.lcssa275.unr = phi <32 x i16> [ poison, %.lr.ph210.i.preheader ], [ %i.kv, %.lr.ph210.i.prol ]
  %.lcssa274.unr = phi <32 x i16> [ poison, %.lr.ph210.i.preheader ], [ %i.ky, %.lr.ph210.i.prol ]
  %.lcssa273.unr = phi <32 x i16> [ poison, %.lr.ph210.i.preheader ], [ %i.lb, %.lr.ph210.i.prol ]
  %.lcssa272.unr = phi <32 x i16> [ poison, %.lr.ph210.i.preheader ], [ %i.le, %.lr.ph210.i.prol ]
  %.lcssa271.unr = phi <32 x i16> [ poison, %.lr.ph210.i.preheader ], [ %i.lh, %.lr.ph210.i.prol ]
  %.lcssa270.unr = phi <32 x i16> [ poison, %.lr.ph210.i.preheader ], [ %i.lk, %.lr.ph210.i.prol ]
  %.sroa.95.3.i.unr = phi <32 x i16> [ %.sroa.95.0.i, %.lr.ph210.i.preheader ], [ %i.lk, %.lr.ph210.i.prol ]
  %.sroa.89.3.i.unr = phi <32 x i16> [ %.sroa.89.0.i, %.lr.ph210.i.preheader ], [ %i.lh, %.lr.ph210.i.prol ]
  %.sroa.83.3.i.unr = phi <32 x i16> [ %.sroa.83.0.i, %.lr.ph210.i.preheader ], [ %i.le, %.lr.ph210.i.prol ]
  %.sroa.77.3.i.unr = phi <32 x i16> [ %.sroa.77.0.i, %.lr.ph210.i.preheader ], [ %i.lb, %.lr.ph210.i.prol ]
  %.sroa.71.3.i.unr = phi <32 x i16> [ %.sroa.71.0.i, %.lr.ph210.i.preheader ], [ %i.ky, %.lr.ph210.i.prol ]
  %.sroa.65.3.i.unr = phi <32 x i16> [ %.sroa.65.0.i, %.lr.ph210.i.preheader ], [ %i.kv, %.lr.ph210.i.prol ]
  %.sroa.59.3.i.unr = phi <32 x i16> [ %.sroa.59.0.i, %.lr.ph210.i.preheader ], [ %i.ks, %.lr.ph210.i.prol ]
  %.sroa.53.3.i.unr = phi <32 x i16> [ %.sroa.53.0.i, %.lr.ph210.i.preheader ], [ %i.kp, %.lr.ph210.i.prol ]
  %.sroa.47.3.i.unr = phi <32 x i16> [ %.sroa.47.0.i, %.lr.ph210.i.preheader ], [ %i.km, %.lr.ph210.i.prol ]
  %.sroa.41.3.i.unr = phi <32 x i16> [ %.sroa.41.0.i, %.lr.ph210.i.preheader ], [ %i.kj, %.lr.ph210.i.prol ]
  %.sroa.35.3.i.unr = phi <32 x i16> [ %.sroa.35.0.i, %.lr.ph210.i.preheader ], [ %i.kg, %.lr.ph210.i.prol ]
  %.sroa.29.3.i.unr = phi <32 x i16> [ %.sroa.29.0.i, %.lr.ph210.i.preheader ], [ %i.kd, %.lr.ph210.i.prol ]
  %.sroa.23.3.i.unr = phi <32 x i16> [ %.sroa.23.0.i, %.lr.ph210.i.preheader ], [ %i.ka, %.lr.ph210.i.prol ]
  %.sroa.17.3.i.unr = phi <32 x i16> [ %.sroa.17.0.i, %.lr.ph210.i.preheader ], [ %i.jx, %.lr.ph210.i.prol ]
  %.sroa.11.3.i.unr = phi <32 x i16> [ %.sroa.11.0.i, %.lr.ph210.i.preheader ], [ %i.ju, %.lr.ph210.i.prol ]
  %.sroa.0.3.i.unr = phi <32 x i16> [ %.sroa.0.0.i, %.lr.ph210.i.preheader ], [ %i.jr, %.lr.ph210.i.prol ]
  %indvars.iv251.i.unr = phi i64 [ %wide.trip.count.i, %.lr.ph210.i.preheader ], [ %indvars.iv.next252.i.prol, %.lr.ph210.i.prol ]
  br i1 %i.cn, label %.preheader182.i, label %.lr.ph210.i

.lr.ph204.i:                                      ; preds = %.preheader184.i, %.lr.ph204.i
  %.sroa.95.1.i = phi <32 x i16> [ %i.pi, %.lr.ph204.i ], [ %.sroa.95.0.copyload.i, %.preheader184.i ]
  %.sroa.89.1.i = phi <32 x i16> [ %i.pc, %.lr.ph204.i ], [ %.sroa.89.0.copyload.i, %.preheader184.i ]
  %.sroa.83.1.i = phi <32 x i16> [ %i.ow, %.lr.ph204.i ], [ %.sroa.83.0.copyload.i, %.preheader184.i ]
  %.sroa.77.1.i = phi <32 x i16> [ %i.oq, %.lr.ph204.i ], [ %.sroa.77.0.copyload.i, %.preheader184.i ]
  %.sroa.71.1.i = phi <32 x i16> [ %i.ok, %.lr.ph204.i ], [ %.sroa.71.0.copyload.i, %.preheader184.i ]
  %.sroa.65.1.i = phi <32 x i16> [ %i.oe, %.lr.ph204.i ], [ %.sroa.65.0.copyload.i, %.preheader184.i ]
  %.sroa.59.1.i = phi <32 x i16> [ %i.ny, %.lr.ph204.i ], [ %.sroa.59.0.copyload.i, %.preheader184.i ]
  %.sroa.53.1.i = phi <32 x i16> [ %i.ns, %.lr.ph204.i ], [ %.sroa.53.0.copyload.i, %.preheader184.i ]
  %.sroa.47.1.i = phi <32 x i16> [ %i.nm, %.lr.ph204.i ], [ %.sroa.47.0.copyload.i, %.preheader184.i ]
  %.sroa.41.1.i = phi <32 x i16> [ %i.ng, %.lr.ph204.i ], [ %.sroa.41.0.copyload.i, %.preheader184.i ]
  %.sroa.35.1.i = phi <32 x i16> [ %i.na, %.lr.ph204.i ], [ %.sroa.35.0.copyload.i, %.preheader184.i ]
  %.sroa.29.1.i = phi <32 x i16> [ %i.mu, %.lr.ph204.i ], [ %.sroa.29.0.copyload.i, %.preheader184.i ]
  %.sroa.23.1.i = phi <32 x i16> [ %i.mo, %.lr.ph204.i ], [ %.sroa.23.0.copyload.i, %.preheader184.i ]
  %.sroa.17.1.i = phi <32 x i16> [ %i.mi, %.lr.ph204.i ], [ %.sroa.17.0.copyload.i, %.preheader184.i ]
  %.sroa.11.1.i = phi <32 x i16> [ %i.mc, %.lr.ph204.i ], [ %.sroa.11.0.copyload.i, %.preheader184.i ]
  %.sroa.0.1.i = phi <32 x i16> [ %i.lw, %.lr.ph204.i ], [ %.sroa.0.0.copyload.i, %.preheader184.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph204.i ], [ 0, %.preheader184.i ] ; 3 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !31
  %i.ln = zext i32 %i.lm to i64
  %.idx159.i = shl nuw nsw i64 %i.ln, 11
  %i.lo = getelementptr inbounds nuw i8, ptr %.0143218.i, i64 %.idx159.i ; 16 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !31
  %i.lr = zext i32 %i.lq to i64
  %.idx160.i = shl nuw nsw i64 %i.lr, 11
  %i.ls = getelementptr inbounds nuw i8, ptr %.0143218.i, i64 %.idx160.i ; 16 uses
  %i.lt = load <32 x i16>, ptr %i.ls, align 64, !tbaa !23
  %i.lu = add <32 x i16> %i.lt, %.sroa.0.1.i
  %i.lv = load <32 x i16>, ptr %i.lo, align 64, !tbaa !23
  %i.lw = sub <32 x i16> %i.lu, %i.lv             ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 64
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lo, i64 64
  %i.lz = load <32 x i16>, ptr %i.lx, align 64, !tbaa !23
  %i.ma = add <32 x i16> %i.lz, %.sroa.11.1.i
  %i.mb = load <32 x i16>, ptr %i.ly, align 64, !tbaa !23
  %i.mc = sub <32 x i16> %i.ma, %i.mb             ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.ls, i64 128
  %i.me = getelementptr inbounds nuw i8, ptr %i.lo, i64 128
  %i.mf = load <32 x i16>, ptr %i.md, align 64, !tbaa !23
  %i.mg = add <32 x i16> %i.mf, %.sroa.17.1.i
  %i.mh = load <32 x i16>, ptr %i.me, align 64, !tbaa !23
  %i.mi = sub <32 x i16> %i.mg, %i.mh             ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ls, i64 192
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lo, i64 192
  %i.ml = load <32 x i16>, ptr %i.mj, align 64, !tbaa !23
  %i.mm = add <32 x i16> %i.ml, %.sroa.23.1.i
  %i.mn = load <32 x i16>, ptr %i.mk, align 64, !tbaa !23
  %i.mo = sub <32 x i16> %i.mm, %i.mn             ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ls, i64 256
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lo, i64 256
  %i.mr = load <32 x i16>, ptr %i.mp, align 64, !tbaa !23
  %i.ms = add <32 x i16> %i.mr, %.sroa.29.1.i
  %i.mt = load <32 x i16>, ptr %i.mq, align 64, !tbaa !23
  %i.mu = sub <32 x i16> %i.ms, %i.mt             ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ls, i64 320
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lo, i64 320
  %i.mx = load <32 x i16>, ptr %i.mv, align 64, !tbaa !23
  %i.my = add <32 x i16> %i.mx, %.sroa.35.1.i
  %i.mz = load <32 x i16>, ptr %i.mw, align 64, !tbaa !23
  %i.na = sub <32 x i16> %i.my, %i.mz             ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ls, i64 384
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lo, i64 384
  %i.nd = load <32 x i16>, ptr %i.nb, align 64, !tbaa !23
  %i.ne = add <32 x i16> %i.nd, %.sroa.41.1.i
  %i.nf = load <32 x i16>, ptr %i.nc, align 64, !tbaa !23
  %i.ng = sub <32 x i16> %i.ne, %i.nf             ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ls, i64 448
  %i.ni = getelementptr inbounds nuw i8, ptr %i.lo, i64 448
  %i.nj = load <32 x i16>, ptr %i.nh, align 64, !tbaa !23
  %i.nk = add <32 x i16> %i.nj, %.sroa.47.1.i
  %i.nl = load <32 x i16>, ptr %i.ni, align 64, !tbaa !23
  %i.nm = sub <32 x i16> %i.nk, %i.nl             ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ls, i64 512
  %i.no = getelementptr inbounds nuw i8, ptr %i.lo, i64 512
  %i.np = load <32 x i16>, ptr %i.nn, align 64, !tbaa !23
  %i.nq = add <32 x i16> %i.np, %.sroa.53.1.i
  %i.nr = load <32 x i16>, ptr %i.no, align 64, !tbaa !23
  %i.ns = sub <32 x i16> %i.nq, %i.nr             ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ls, i64 576
  %i.nu = getelementptr inbounds nuw i8, ptr %i.lo, i64 576
  %i.nv = load <32 x i16>, ptr %i.nt, align 64, !tbaa !23
  %i.nw = add <32 x i16> %i.nv, %.sroa.59.1.i
  %i.nx = load <32 x i16>, ptr %i.nu, align 64, !tbaa !23
  %i.ny = sub <32 x i16> %i.nw, %i.nx             ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ls, i64 640
  %i.oa = getelementptr inbounds nuw i8, ptr %i.lo, i64 640
  %i.ob = load <32 x i16>, ptr %i.nz, align 64, !tbaa !23
  %i.oc = add <32 x i16> %i.ob, %.sroa.65.1.i
  %i.od = load <32 x i16>, ptr %i.oa, align 64, !tbaa !23
  %i.oe = sub <32 x i16> %i.oc, %i.od             ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.ls, i64 704
  %i.og = getelementptr inbounds nuw i8, ptr %i.lo, i64 704
  %i.oh = load <32 x i16>, ptr %i.of, align 64, !tbaa !23
  %i.oi = add <32 x i16> %i.oh, %.sroa.71.1.i
  %i.oj = load <32 x i16>, ptr %i.og, align 64, !tbaa !23
  %i.ok = sub <32 x i16> %i.oi, %i.oj             ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ls, i64 768
  %i.om = getelementptr inbounds nuw i8, ptr %i.lo, i64 768
  %i.on = load <32 x i16>, ptr %i.ol, align 64, !tbaa !23
  %i.oo = add <32 x i16> %i.on, %.sroa.77.1.i
  %i.op = load <32 x i16>, ptr %i.om, align 64, !tbaa !23
  %i.oq = sub <32 x i16> %i.oo, %i.op             ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.ls, i64 832
  %i.os = getelementptr inbounds nuw i8, ptr %i.lo, i64 832
  %i.ot = load <32 x i16>, ptr %i.or, align 64, !tbaa !23
  %i.ou = add <32 x i16> %i.ot, %.sroa.83.1.i
  %i.ov = load <32 x i16>, ptr %i.os, align 64, !tbaa !23
  %i.ow = sub <32 x i16> %i.ou, %i.ov             ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ls, i64 896
  %i.oy = getelementptr inbounds nuw i8, ptr %i.lo, i64 896
  %i.oz = load <32 x i16>, ptr %i.ox, align 64, !tbaa !23
  %i.pa = add <32 x i16> %i.oz, %.sroa.89.1.i
  %i.pb = load <32 x i16>, ptr %i.oy, align 64, !tbaa !23
  %i.pc = sub <32 x i16> %i.pa, %i.pb             ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ls, i64 960
  %i.pe = getelementptr inbounds nuw i8, ptr %i.lo, i64 960
  %i.pf = load <32 x i16>, ptr %i.pd, align 64, !tbaa !23
  %i.pg = add <32 x i16> %i.pf, %.sroa.95.1.i
  %i.ph = load <32 x i16>, ptr %i.pe, align 64, !tbaa !23
  %i.pi = sub <32 x i16> %i.pg, %i.ph             ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader183.i, label %.lr.ph204.i, !llvm.loop !39

.preheader182.i:                                  ; preds = %.lr.ph210.i.prol.loopexit, %.lr.ph210.i, %.preheader183.i
  %.sroa.95.2.i = phi <32 x i16> [ %.sroa.95.0.i, %.preheader183.i ], [ %.lcssa270.unr, %.lr.ph210.i.prol.loopexit ], [ %i.vk, %.lr.ph210.i ] ; 3 uses
  %.sroa.89.2.i = phi <32 x i16> [ %.sroa.89.0.i, %.preheader183.i ], [ %.lcssa271.unr, %.lr.ph210.i.prol.loopexit ], [ %i.vg, %.lr.ph210.i ] ; 3 uses
  %.sroa.83.2.i = phi <32 x i16> [ %.sroa.83.0.i, %.preheader183.i ], [ %.lcssa272.unr, %.lr.ph210.i.prol.loopexit ], [ %i.vc, %.lr.ph210.i ] ; 3 uses
  %.sroa.77.2.i = phi <32 x i16> [ %.sroa.77.0.i, %.preheader183.i ], [ %.lcssa273.unr, %.lr.ph210.i.prol.loopexit ], [ %i.uy, %.lr.ph210.i ] ; 3 uses
  %.sroa.71.2.i = phi <32 x i16> [ %.sroa.71.0.i, %.preheader183.i ], [ %.lcssa274.unr, %.lr.ph210.i.prol.loopexit ], [ %i.uu, %.lr.ph210.i ] ; 3 uses
  %.sroa.65.2.i = phi <32 x i16> [ %.sroa.65.0.i, %.preheader183.i ], [ %.lcssa275.unr, %.lr.ph210.i.prol.loopexit ], [ %i.uq, %.lr.ph210.i ] ; 3 uses
  %.sroa.59.2.i = phi <32 x i16> [ %.sroa.59.0.i, %.preheader183.i ], [ %.lcssa276.unr, %.lr.ph210.i.prol.loopexit ], [ %i.um, %.lr.ph210.i ] ; 3 uses
  %.sroa.53.2.i = phi <32 x i16> [ %.sroa.53.0.i, %.preheader183.i ], [ %.lcssa277.unr, %.lr.ph210.i.prol.loopexit ], [ %i.ui, %.lr.ph210.i ] ; 3 uses
  %.sroa.47.2.i = phi <32 x i16> [ %.sroa.47.0.i, %.preheader183.i ], [ %.lcssa278.unr, %.lr.ph210.i.prol.loopexit ], [ %i.ue, %.lr.ph210.i ] ; 3 uses
  %.sroa.41.2.i = phi <32 x i16> [ %.sroa.41.0.i, %.preheader183.i ], [ %.lcssa279.unr, %.lr.ph210.i.prol.loopexit ], [ %i.ua, %.lr.ph210.i ] ; 3 uses
  %.sroa.35.2.i = phi <32 x i16> [ %.sroa.35.0.i, %.preheader183.i ], [ %.lcssa280.unr, %.lr.ph210.i.prol.loopexit ], [ %i.tw, %.lr.ph210.i ] ; 3 uses
  %.sroa.29.2.i = phi <32 x i16> [ %.sroa.29.0.i, %.preheader183.i ], [ %.lcssa281.unr, %.lr.ph210.i.prol.loopexit ], [ %i.ts, %.lr.ph210.i ] ; 3 uses
  %.sroa.23.2.i = phi <32 x i16> [ %.sroa.23.0.i, %.preheader183.i ], [ %.lcssa282.unr, %.lr.ph210.i.prol.loopexit ], [ %i.to, %.lr.ph210.i ] ; 3 uses
  %.sroa.17.2.i = phi <32 x i16> [ %.sroa.17.0.i, %.preheader183.i ], [ %.lcssa283.unr, %.lr.ph210.i.prol.loopexit ], [ %i.tk, %.lr.ph210.i ] ; 3 uses
  %.sroa.11.2.i = phi <32 x i16> [ %.sroa.11.0.i, %.preheader183.i ], [ %.lcssa284.unr, %.lr.ph210.i.prol.loopexit ], [ %i.tg, %.lr.ph210.i ] ; 3 uses
  %.sroa.0.2.i = phi <32 x i16> [ %.sroa.0.0.i, %.preheader183.i ], [ %.lcssa285.unr, %.lr.ph210.i.prol.loopexit ], [ %i.tc, %.lr.ph210.i ] ; 3 uses
  %.1.lcssa.i = phi i32 [ %i.cb, %.preheader183.i ], [ %i.bz, %.lr.ph210.i ], [ %i.bz, %.lr.ph210.i.prol.loopexit ] ; 2 uses
  %i.pj = icmp slt i32 %.1.lcssa.i, %i.ca
  br i1 %i.pj, label %.lr.ph214.preheader.i, label %.preheader181.i

.lr.ph214.preheader.i:                            ; preds = %.preheader182.i
  %i.pk = zext i32 %.1.lcssa.i to i64             ; 5 uses
  %i.pl = sub nsw i64 %.lcssa196.i, %i.pk
  %xtraiter303 = and i64 %i.pl, 1
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  br i1 %lcmp.mod304.not, label %.lr.ph214.i.prol.loopexit, label %.lr.ph214.i.prol

.lr.ph214.i.prol:                                 ; preds = %.lr.ph214.preheader.i
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.pk
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !31
  %i.po = zext i32 %i.pn to i64
  %.idx.i.prol = shl nuw nsw i64 %i.po, 11
  %i.pp = getelementptr inbounds nuw i8, ptr %.0143218.i, i64 %.idx.i.prol ; 16 uses
  %i.pq = load <32 x i16>, ptr %i.pp, align 64, !tbaa !23
  %i.pr = add <32 x i16> %i.pq, %.sroa.0.2.i      ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 64
  %i.pt = load <32 x i16>, ptr %i.ps, align 64, !tbaa !23
  %i.pu = add <32 x i16> %i.pt, %.sroa.11.2.i     ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pp, i64 128
  %i.pw = load <32 x i16>, ptr %i.pv, align 64, !tbaa !23
  %i.px = add <32 x i16> %i.pw, %.sroa.17.2.i     ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pp, i64 192
  %i.pz = load <32 x i16>, ptr %i.py, align 64, !tbaa !23
  %i.qa = add <32 x i16> %i.pz, %.sroa.23.2.i     ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pp, i64 256
  %i.qc = load <32 x i16>, ptr %i.qb, align 64, !tbaa !23
  %i.qd = add <32 x i16> %i.qc, %.sroa.29.2.i     ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pp, i64 320
  %i.qf = load <32 x i16>, ptr %i.qe, align 64, !tbaa !23
  %i.qg = add <32 x i16> %i.qf, %.sroa.35.2.i     ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pp, i64 384
  %i.qi = load <32 x i16>, ptr %i.qh, align 64, !tbaa !23
  %i.qj = add <32 x i16> %i.qi, %.sroa.41.2.i     ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pp, i64 448
  %i.ql = load <32 x i16>, ptr %i.qk, align 64, !tbaa !23
  %i.qm = add <32 x i16> %i.ql, %.sroa.47.2.i     ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pp, i64 512
  %i.qo = load <32 x i16>, ptr %i.qn, align 64, !tbaa !23
  %i.qp = add <32 x i16> %i.qo, %.sroa.53.2.i     ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pp, i64 576
  %i.qr = load <32 x i16>, ptr %i.qq, align 64, !tbaa !23
  %i.qs = add <32 x i16> %i.qr, %.sroa.59.2.i     ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pp, i64 640
  %i.qu = load <32 x i16>, ptr %i.qt, align 64, !tbaa !23
  %i.qv = add <32 x i16> %i.qu, %.sroa.65.2.i     ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.pp, i64 704
  %i.qx = load <32 x i16>, ptr %i.qw, align 64, !tbaa !23
  %i.qy = add <32 x i16> %i.qx, %.sroa.71.2.i     ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.pp, i64 768
  %i.ra = load <32 x i16>, ptr %i.qz, align 64, !tbaa !23
  %i.rb = add <32 x i16> %i.ra, %.sroa.77.2.i     ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.pp, i64 832
  %i.rd = load <32 x i16>, ptr %i.rc, align 64, !tbaa !23
  %i.re = add <32 x i16> %i.rd, %.sroa.83.2.i     ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.pp, i64 896
  %i.rg = load <32 x i16>, ptr %i.rf, align 64, !tbaa !23
  %i.rh = add <32 x i16> %i.rg, %.sroa.89.2.i     ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.pp, i64 960
  %i.rj = load <32 x i16>, ptr %i.ri, align 64, !tbaa !23
  %i.rk = add <32 x i16> %i.rj, %.sroa.95.2.i     ; 2 uses
  %indvars.iv.next261.i.prol = add nuw nsw i64 %i.pk, 1
  br label %.lr.ph214.i.prol.loopexit

.lr.ph214.i.prol.loopexit:                        ; preds = %.lr.ph214.i.prol, %.lr.ph214.preheader.i
  %.lcssa301.unr = phi <32 x i16> [ poison, %.lr.ph214.preheader.i ], [ %i.pr, %.lr.ph214.i.prol ]
  %.lcssa300.unr = phi <32 x i16> [ poison, %.lr.ph214.preheader.i ], [ %i.pu, %.lr.ph214.i.prol ]
  %.lcssa299.unr = phi <32 x i16> [ poison, %.lr.ph214.preheader.i ], [ %i.px, %.lr.ph214.i.prol ]
  %.lcssa298.unr = phi <32 x i16> [ poison, %.lr.ph214.preheader.i ], [ %i.qa, %.lr.ph214.i.prol ]
  %.lcssa297.unr = phi <32 x i16> [ poison, %.lr.ph214.preheader.i ], [ %i.qd, %.lr.ph214.i.prol ]
  %.lcssa296.unr = phi <32 x i16> [ poison, %.lr.ph214.preheader.i ], [ %i.qg, %.lr.ph214.i.prol ]
  %.lcssa295.unr = phi <32 x i16> [ poison, %.lr.ph214.preheader.i ], [ %i.qj, %.lr.ph214.i.prol ]
  %.lcssa294.unr = phi <32 x i16> [ poison, %.lr.ph214.preheader.i ], [ %i.qm, %.lr.ph214.i.prol ]
  %.lcssa293.unr = phi <32 x i16> [ poison, %.lr.ph214.preheader.i ], [ %i.qp, %.lr.ph214.i.prol ]
  %.lcssa292.unr = phi <32 x i16> [ poison, %.lr.ph214.preheader.i ], [ %i.qs, %.lr.ph214.i.prol ]
  %.lcssa291.unr = phi <32 x i16> [ poison, %.lr.ph214.preheader.i ], [ %i.qv, %.lr.ph214.i.prol ]
  %.lcssa290.unr = phi <32 x i16> [ poison, %.lr.ph214.preheader.i ], [ %i.qy, %.lr.ph214.i.prol ]
  %.lcssa289.unr = phi <32 x i16> [ poison, %.lr.ph214.preheader.i ], [ %i.rb, %.lr.ph214.i.prol ]
  %.lcssa288.unr = phi <32 x i16> [ poison, %.lr.ph214.preheader.i ], [ %i.re, %.lr.ph214.i.prol ]
  %.lcssa287.unr = phi <32 x i16> [ poison, %.lr.ph214.preheader.i ], [ %i.rh, %.lr.ph214.i.prol ]
  %.lcssa286.unr = phi <32 x i16> [ poison, %.lr.ph214.preheader.i ], [ %i.rk, %.lr.ph214.i.prol ]
  %.sroa.95.5.i.unr = phi <32 x i16> [ %.sroa.95.2.i, %.lr.ph214.preheader.i ], [ %i.rk, %.lr.ph214.i.prol ]
  %.sroa.89.5.i.unr = phi <32 x i16> [ %.sroa.89.2.i, %.lr.ph214.preheader.i ], [ %i.rh, %.lr.ph214.i.prol ]
  %.sroa.83.5.i.unr = phi <32 x i16> [ %.sroa.83.2.i, %.lr.ph214.preheader.i ], [ %i.re, %.lr.ph214.i.prol ]
  %.sroa.77.5.i.unr = phi <32 x i16> [ %.sroa.77.2.i, %.lr.ph214.preheader.i ], [ %i.rb, %.lr.ph214.i.prol ]
  %.sroa.71.5.i.unr = phi <32 x i16> [ %.sroa.71.2.i, %.lr.ph214.preheader.i ], [ %i.qy, %.lr.ph214.i.prol ]
  %.sroa.65.5.i.unr = phi <32 x i16> [ %.sroa.65.2.i, %.lr.ph214.preheader.i ], [ %i.qv, %.lr.ph214.i.prol ]
  %.sroa.59.5.i.unr = phi <32 x i16> [ %.sroa.59.2.i, %.lr.ph214.preheader.i ], [ %i.qs, %.lr.ph214.i.prol ]
  %.sroa.53.5.i.unr = phi <32 x i16> [ %.sroa.53.2.i, %.lr.ph214.preheader.i ], [ %i.qp, %.lr.ph214.i.prol ]
  %.sroa.47.5.i.unr = phi <32 x i16> [ %.sroa.47.2.i, %.lr.ph214.preheader.i ], [ %i.qm, %.lr.ph214.i.prol ]
  %.sroa.41.5.i.unr = phi <32 x i16> [ %.sroa.41.2.i, %.lr.ph214.preheader.i ], [ %i.qj, %.lr.ph214.i.prol ]
  %.sroa.35.5.i.unr = phi <32 x i16> [ %.sroa.35.2.i, %.lr.ph214.preheader.i ], [ %i.qg, %.lr.ph214.i.prol ]
  %.sroa.29.5.i.unr = phi <32 x i16> [ %.sroa.29.2.i, %.lr.ph214.preheader.i ], [ %i.qd, %.lr.ph214.i.prol ]
  %.sroa.23.5.i.unr = phi <32 x i16> [ %.sroa.23.2.i, %.lr.ph214.preheader.i ], [ %i.qa, %.lr.ph214.i.prol ]
  %.sroa.17.5.i.unr = phi <32 x i16> [ %.sroa.17.2.i, %.lr.ph214.preheader.i ], [ %i.px, %.lr.ph214.i.prol ]
  %.sroa.11.5.i.unr = phi <32 x i16> [ %.sroa.11.2.i, %.lr.ph214.preheader.i ], [ %i.pu, %.lr.ph214.i.prol ]
  %.sroa.0.5.i.unr = phi <32 x i16> [ %.sroa.0.2.i, %.lr.ph214.preheader.i ], [ %i.pr, %.lr.ph214.i.prol ]
  %indvars.iv260.i.unr = phi i64 [ %i.pk, %.lr.ph214.preheader.i ], [ %indvars.iv.next261.i.prol, %.lr.ph214.i.prol ]
  %i.rl = icmp eq i64 %i.cl, %i.pk
  br i1 %i.rl, label %.preheader181.i, label %.lr.ph214.i

.lr.ph210.i:                                      ; preds = %.lr.ph210.i.prol.loopexit, %.lr.ph210.i
  %.sroa.95.3.i = phi <32 x i16> [ %i.vk, %.lr.ph210.i ], [ %.sroa.95.3.i.unr, %.lr.ph210.i.prol.loopexit ]
  %.sroa.89.3.i = phi <32 x i16> [ %i.vg, %.lr.ph210.i ], [ %.sroa.89.3.i.unr, %.lr.ph210.i.prol.loopexit ]
  %.sroa.83.3.i = phi <32 x i16> [ %i.vc, %.lr.ph210.i ], [ %.sroa.83.3.i.unr, %.lr.ph210.i.prol.loopexit ]
  %.sroa.77.3.i = phi <32 x i16> [ %i.uy, %.lr.ph210.i ], [ %.sroa.77.3.i.unr, %.lr.ph210.i.prol.loopexit ]
  %.sroa.71.3.i = phi <32 x i16> [ %i.uu, %.lr.ph210.i ], [ %.sroa.71.3.i.unr, %.lr.ph210.i.prol.loopexit ]
  %.sroa.65.3.i = phi <32 x i16> [ %i.uq, %.lr.ph210.i ], [ %.sroa.65.3.i.unr, %.lr.ph210.i.prol.loopexit ]
  %.sroa.59.3.i = phi <32 x i16> [ %i.um, %.lr.ph210.i ], [ %.sroa.59.3.i.unr, %.lr.ph210.i.prol.loopexit ]
  %.sroa.53.3.i = phi <32 x i16> [ %i.ui, %.lr.ph210.i ], [ %.sroa.53.3.i.unr, %.lr.ph210.i.prol.loopexit ]
  %.sroa.47.3.i = phi <32 x i16> [ %i.ue, %.lr.ph210.i ], [ %.sroa.47.3.i.unr, %.lr.ph210.i.prol.loopexit ]
  %.sroa.41.3.i = phi <32 x i16> [ %i.ua, %.lr.ph210.i ], [ %.sroa.41.3.i.unr, %.lr.ph210.i.prol.loopexit ]
  %.sroa.35.3.i = phi <32 x i16> [ %i.tw, %.lr.ph210.i ], [ %.sroa.35.3.i.unr, %.lr.ph210.i.prol.loopexit ]
  %.sroa.29.3.i = phi <32 x i16> [ %i.ts, %.lr.ph210.i ], [ %.sroa.29.3.i.unr, %.lr.ph210.i.prol.loopexit ]
  %.sroa.23.3.i = phi <32 x i16> [ %i.to, %.lr.ph210.i ], [ %.sroa.23.3.i.unr, %.lr.ph210.i.prol.loopexit ]
  %.sroa.17.3.i = phi <32 x i16> [ %i.tk, %.lr.ph210.i ], [ %.sroa.17.3.i.unr, %.lr.ph210.i.prol.loopexit ]
  %.sroa.11.3.i = phi <32 x i16> [ %i.tg, %.lr.ph210.i ], [ %.sroa.11.3.i.unr, %.lr.ph210.i.prol.loopexit ]
  %.sroa.0.3.i = phi <32 x i16> [ %i.tc, %.lr.ph210.i ], [ %.sroa.0.3.i.unr, %.lr.ph210.i.prol.loopexit ]
  %indvars.iv251.i = phi i64 [ %indvars.iv.next252.i.1, %.lr.ph210.i ], [ %indvars.iv251.i.unr, %.lr.ph210.i.prol.loopexit ] ; 3 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv251.i
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !31
  %i.ro = zext i32 %i.rn to i64
  %.idx158.i = shl nuw nsw i64 %i.ro, 11
  %i.rp = getelementptr inbounds nuw i8, ptr %.0143218.i, i64 %.idx158.i ; 16 uses
  %i.rq = load <32 x i16>, ptr %i.rp, align 64, !tbaa !23
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 64
  %i.rs = load <32 x i16>, ptr %i.rr, align 64, !tbaa !23
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 128
  %i.ru = load <32 x i16>, ptr %i.rt, align 64, !tbaa !23
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rp, i64 192
  %i.rw = load <32 x i16>, ptr %i.rv, align 64, !tbaa !23
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rp, i64 256
  %i.ry = load <32 x i16>, ptr %i.rx, align 64, !tbaa !23
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rp, i64 320
  %i.sa = load <32 x i16>, ptr %i.rz, align 64, !tbaa !23
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rp, i64 384
  %i.sc = load <32 x i16>, ptr %i.sb, align 64, !tbaa !23
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rp, i64 448
  %i.se = load <32 x i16>, ptr %i.sd, align 64, !tbaa !23
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rp, i64 512
  %i.sg = load <32 x i16>, ptr %i.sf, align 64, !tbaa !23
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rp, i64 576
  %i.si = load <32 x i16>, ptr %i.sh, align 64, !tbaa !23
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rp, i64 640
  %i.sk = load <32 x i16>, ptr %i.sj, align 64, !tbaa !23
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rp, i64 704
  %i.sm = load <32 x i16>, ptr %i.sl, align 64, !tbaa !23
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rp, i64 768
  %i.so = load <32 x i16>, ptr %i.sn, align 64, !tbaa !23
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rp, i64 832
  %i.sq = load <32 x i16>, ptr %i.sp, align 64, !tbaa !23
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rp, i64 896
  %i.ss = load <32 x i16>, ptr %i.sr, align 64, !tbaa !23
  %i.st = getelementptr inbounds nuw i8, ptr %i.rp, i64 960
  %i.su = load <32 x i16>, ptr %i.st, align 64, !tbaa !23
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv251.i
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 4
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !31
  %i.sy = zext i32 %i.sx to i64
  %.idx158.i.1 = shl nuw nsw i64 %i.sy, 11
  %i.sz = getelementptr inbounds nuw i8, ptr %.0143218.i, i64 %.idx158.i.1 ; 16 uses
  %i.ta = load <32 x i16>, ptr %i.sz, align 64, !tbaa !23
  %i.tb = add <32 x i16> %i.rq, %i.ta
  %i.tc = sub <32 x i16> %.sroa.0.3.i, %i.tb      ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 64
  %i.te = load <32 x i16>, ptr %i.td, align 64, !tbaa !23
  %i.tf = add <32 x i16> %i.rs, %i.te
  %i.tg = sub <32 x i16> %.sroa.11.3.i, %i.tf     ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.sz, i64 128
  %i.ti = load <32 x i16>, ptr %i.th, align 64, !tbaa !23
  %i.tj = add <32 x i16> %i.ru, %i.ti
  %i.tk = sub <32 x i16> %.sroa.17.3.i, %i.tj     ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sz, i64 192
  %i.tm = load <32 x i16>, ptr %i.tl, align 64, !tbaa !23
  %i.tn = add <32 x i16> %i.rw, %i.tm
  %i.to = sub <32 x i16> %.sroa.23.3.i, %i.tn     ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sz, i64 256
  %i.tq = load <32 x i16>, ptr %i.tp, align 64, !tbaa !23
  %i.tr = add <32 x i16> %i.ry, %i.tq
  %i.ts = sub <32 x i16> %.sroa.29.3.i, %i.tr     ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.sz, i64 320
  %i.tu = load <32 x i16>, ptr %i.tt, align 64, !tbaa !23
  %i.tv = add <32 x i16> %i.sa, %i.tu
  %i.tw = sub <32 x i16> %.sroa.35.3.i, %i.tv     ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.sz, i64 384
  %i.ty = load <32 x i16>, ptr %i.tx, align 64, !tbaa !23
  %i.tz = add <32 x i16> %i.sc, %i.ty
  %i.ua = sub <32 x i16> %.sroa.41.3.i, %i.tz     ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.sz, i64 448
  %i.uc = load <32 x i16>, ptr %i.ub, align 64, !tbaa !23
  %i.ud = add <32 x i16> %i.se, %i.uc
  %i.ue = sub <32 x i16> %.sroa.47.3.i, %i.ud     ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.sz, i64 512
  %i.ug = load <32 x i16>, ptr %i.uf, align 64, !tbaa !23
  %i.uh = add <32 x i16> %i.sg, %i.ug
  %i.ui = sub <32 x i16> %.sroa.53.3.i, %i.uh     ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.sz, i64 576
  %i.uk = load <32 x i16>, ptr %i.uj, align 64, !tbaa !23
  %i.ul = add <32 x i16> %i.si, %i.uk
  %i.um = sub <32 x i16> %.sroa.59.3.i, %i.ul     ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.sz, i64 640
  %i.uo = load <32 x i16>, ptr %i.un, align 64, !tbaa !23
  %i.up = add <32 x i16> %i.sk, %i.uo
  %i.uq = sub <32 x i16> %.sroa.65.3.i, %i.up     ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.sz, i64 704
  %i.us = load <32 x i16>, ptr %i.ur, align 64, !tbaa !23
  %i.ut = add <32 x i16> %i.sm, %i.us
end_hunk_0
begin_hunk_1_@_ZN9Stockfish4Eval4NNUE16AccumulatorStack13evaluate_sideINS1_8Features11HalfKAv2_hmELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEERNS1_17AccumulatorCaches5CacheIXT0_EEE:bb.a
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !31
  %i.xo = zext i32 %i.xn to i64
  %.idx.i.1 = shl nuw nsw i64 %i.xo, 11
  %i.xp = getelementptr inbounds nuw i8, ptr %.0143218.i, i64 %.idx.i.1 ; 16 uses
  %i.xq = load <32 x i16>, ptr %i.xp, align 64, !tbaa !23
  %i.xr = add <32 x i16> %i.xq, %i.vr             ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xp, i64 64
  %i.xt = load <32 x i16>, ptr %i.xs, align 64, !tbaa !23
  %i.xu = add <32 x i16> %i.xt, %i.vu             ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xp, i64 128
  %i.xw = load <32 x i16>, ptr %i.xv, align 64, !tbaa !23
  %i.xx = add <32 x i16> %i.xw, %i.vx             ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xp, i64 192
  %i.xz = load <32 x i16>, ptr %i.xy, align 64, !tbaa !23
  %i.ya = add <32 x i16> %i.xz, %i.wa             ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xp, i64 256
  %i.yc = load <32 x i16>, ptr %i.yb, align 64, !tbaa !23
  %i.yd = add <32 x i16> %i.yc, %i.wd             ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xp, i64 320
  %i.yf = load <32 x i16>, ptr %i.ye, align 64, !tbaa !23
  %i.yg = add <32 x i16> %i.yf, %i.wg             ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xp, i64 384
  %i.yi = load <32 x i16>, ptr %i.yh, align 64, !tbaa !23
  %i.yj = add <32 x i16> %i.yi, %i.wj             ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xp, i64 448
  %i.yl = load <32 x i16>, ptr %i.yk, align 64, !tbaa !23
  %i.ym = add <32 x i16> %i.yl, %i.wm             ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xp, i64 512
  %i.yo = load <32 x i16>, ptr %i.yn, align 64, !tbaa !23
  %i.yp = add <32 x i16> %i.yo, %i.wp             ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.xp, i64 576
  %i.yr = load <32 x i16>, ptr %i.yq, align 64, !tbaa !23
  %i.ys = add <32 x i16> %i.yr, %i.ws             ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.xp, i64 640
  %i.yu = load <32 x i16>, ptr %i.yt, align 64, !tbaa !23
  %i.yv = add <32 x i16> %i.yu, %i.wv             ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.xp, i64 704
  %i.yx = load <32 x i16>, ptr %i.yw, align 64, !tbaa !23
  %i.yy = add <32 x i16> %i.yx, %i.wy             ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.xp, i64 768
  %i.za = load <32 x i16>, ptr %i.yz, align 64, !tbaa !23
  %i.zb = add <32 x i16> %i.za, %i.xb             ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.xp, i64 832
  %i.zd = load <32 x i16>, ptr %i.zc, align 64, !tbaa !23
  %i.ze = add <32 x i16> %i.zd, %i.xe             ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.xp, i64 896
  %i.zg = load <32 x i16>, ptr %i.zf, align 64, !tbaa !23
  %i.zh = add <32 x i16> %i.zg, %i.xh             ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.xp, i64 960
  %i.zj = load <32 x i16>, ptr %i.zi, align 64, !tbaa !23
  %i.zk = add <32 x i16> %i.zj, %i.xk             ; 2 uses
  %indvars.iv.next261.i.1 = add nuw nsw i64 %indvars.iv260.i, 2 ; 2 uses
  %exitcond136.not.1 = icmp eq i64 %indvars.iv.next261.i.1, %.lcssa196.i
  br i1 %exitcond136.not.1, label %.preheader181.i, label %.lr.ph214.i, !llvm.loop !42

.split.sink.split.i.loopexit.unr-lcssa:           ; preds = %.preheader178.us232.i
  %lcmp.mod322.not = icmp eq i64 %xtraiter318, 0
  br i1 %lcmp.mod322.not, label %.split.sink.split.i, label %.preheader178.us232.i.epil.preheader

.preheader178.us232.i.epil.preheader:             ; preds = %.split.sink.split.i.loopexit.unr-lcssa, %.preheader178.us232.i.preheader
  %indvars.iv273.i.epil.init = phi i64 [ 0, %.preheader178.us232.i.preheader ], [ %indvars.iv.next274.i.7, %.split.sink.split.i.loopexit.unr-lcssa ]
  %.epil.init321 = phi <8 x i32> [ %i.cq, %.preheader178.us232.i.preheader ], [ %i.jm, %.split.sink.split.i.loopexit.unr-lcssa ]
  %lcmp.mod324 = icmp ne i64 %xtraiter318, 0
  tail call void @llvm.assume(i1 %lcmp.mod324)
  br label %.preheader178.us232.i.epil

.preheader178.us232.i.epil:                       ; preds = %.preheader178.us232.i.epil, %.preheader178.us232.i.epil.preheader
  %indvars.iv273.i.epil = phi i64 [ %indvars.iv.next274.i.epil, %.preheader178.us232.i.epil ], [ %indvars.iv273.i.epil.init, %.preheader178.us232.i.epil.preheader ] ; 2 uses
  %i.zl = phi <8 x i32> [ %i.zr, %.preheader178.us232.i.epil ], [ %.epil.init321, %.preheader178.us232.i.epil.preheader ]
  %epil.iter319 = phi i64 [ %epil.iter319.next, %.preheader178.us232.i.epil ], [ 0, %.preheader178.us232.i.epil.preheader ]
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv273.i.epil
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !31
  %i.zo = zext i32 %i.zn to i64
  %.idx175.us226.i.epil = shl nuw nsw i64 %i.zo, 5
  %i.zp = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx175.us226.i.epil
  %i.zq = load <8 x i32>, ptr %i.zp, align 32, !tbaa !23
  %i.zr = sub <8 x i32> %i.zl, %i.zq              ; 2 uses
  %indvars.iv.next274.i.epil = add nuw nsw i64 %indvars.iv273.i.epil, 1
  %epil.iter319.next = add i64 %epil.iter319, 1   ; 2 uses
  %epil.iter319.cmp.not = icmp eq i64 %epil.iter319.next, %xtraiter318
  br i1 %epil.iter319.cmp.not, label %.split.sink.split.i, label %.preheader178.us232.i.epil, !llvm.loop !43

.split.sink.split.i.loopexit251.unr-lcssa:        ; preds = %.preheader177.us.i
  %lcmp.mod313.not = icmp eq i64 %xtraiter309, 0
  br i1 %lcmp.mod313.not, label %.split.sink.split.i, label %.preheader177.us.i.epil.preheader

.preheader177.us.i.epil.preheader:                ; preds = %.split.sink.split.i.loopexit251.unr-lcssa, %.preheader177.us.i.preheader
  %indvars.iv283.i.epil.init = phi i64 [ 0, %.preheader177.us.i.preheader ], [ %indvars.iv.next284.i.7, %.split.sink.split.i.loopexit251.unr-lcssa ]
  %.epil.init312 = phi <8 x i32> [ %.ph, %.preheader177.us.i.preheader ], [ %i.eu, %.split.sink.split.i.loopexit251.unr-lcssa ]
  %lcmp.mod315 = icmp ne i64 %xtraiter309, 0
  tail call void @llvm.assume(i1 %lcmp.mod315)
  br label %.preheader177.us.i.epil

.preheader177.us.i.epil:                          ; preds = %.preheader177.us.i.epil, %.preheader177.us.i.epil.preheader
  %indvars.iv283.i.epil = phi i64 [ %indvars.iv.next284.i.epil, %.preheader177.us.i.epil ], [ %indvars.iv283.i.epil.init, %.preheader177.us.i.epil.preheader ] ; 2 uses
  %i.zs = phi <8 x i32> [ %i.zy, %.preheader177.us.i.epil ], [ %.epil.init312, %.preheader177.us.i.epil.preheader ]
  %epil.iter310 = phi i64 [ %epil.iter310.next, %.preheader177.us.i.epil ], [ 0, %.preheader177.us.i.epil.preheader ]
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv283.i.epil
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !31
  %i.zv = zext i32 %i.zu to i64
  %.idx174.us.i.epil = shl nuw nsw i64 %i.zv, 5
  %i.zw = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx174.us.i.epil
  %i.zx = load <8 x i32>, ptr %i.zw, align 32, !tbaa !23
  %i.zy = add <8 x i32> %i.zx, %i.zs              ; 2 uses
  %indvars.iv.next284.i.epil = add nuw nsw i64 %indvars.iv283.i.epil, 1
  %epil.iter310.next = add i64 %epil.iter310, 1   ; 2 uses
  %epil.iter310.cmp.not = icmp eq i64 %epil.iter310.next, %xtraiter309
  br i1 %epil.iter310.cmp.not, label %.split.sink.split.i, label %.preheader177.us.i.epil, !llvm.loop !44

.split.sink.split.i:                              ; preds = %.split.sink.split.i.loopexit251.unr-lcssa, %.preheader177.us.i.epil, %.split.sink.split.i.loopexit.unr-lcssa, %.preheader178.us232.i.epil
  %.lcssa359.sink.i = phi <8 x i32> [ %i.zr, %.preheader178.us232.i.epil ], [ %i.jm, %.split.sink.split.i.loopexit.unr-lcssa ], [ %i.eu, %.split.sink.split.i.loopexit251.unr-lcssa ], [ %i.zy, %.preheader177.us.i.epil ] ; 2 uses
  store <8 x i32> %.lcssa359.sink.i, ptr %i.co, align 64, !tbaa !23
  br label %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_132update_accumulator_refresh_cacheILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11HalfKAv2_hmEEERNS1_17AccumulatorCaches5CacheIXT_EEE.exit

_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_132update_accumulator_refresh_cacheILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11HalfKAv2_hmEEERNS1_17AccumulatorCaches5CacheIXT_EEE.exit: ; preds = %.preheader179.split.i, %.split.sink.split.i
  %.sink.i = phi <8 x i32> [ %i.cq, %.preheader179.split.i ], [ %.lcssa359.sink.i, %.split.sink.split.i ]
  %i.zz = getelementptr i8, ptr %i.q, i64 -832
  %i.aaa = getelementptr inbounds nuw [32 x i8], ptr %i.zz, i64 %i.c
  store <8 x i32> %.sink.i, ptr %i.aaa, align 32, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  tail call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack27backward_update_incrementalINS1_8Features11HalfKAv2_hmELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm(ptr noundef nonnull align 64 dereferenceable(2529288) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 64 dereferenceable(131188224) %3, i64 noundef %.010.i.lcssa) #11
  br label %bb.f

bb.f:                                             ; preds = %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_132update_accumulator_refresh_cacheILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11HalfKAv2_hmEEERNS1_17AccumulatorCaches5CacheIXT_EEE.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack13evaluate_sideINS1_8Features11FullThreatsELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEERNS1_17AccumulatorCaches5CacheIXT0_EEE(ptr noundef nonnull align 64 dereferenceable(2529288) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 64 dereferenceable(278528) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %5 = alloca %"class.Stockfish::ValueList.36", align 8 ; 5 uses
  %6 = alloca %"class.Stockfish::ValueList.36", align 8 ; 5 uses
  %7 = alloca %"struct.Stockfish::Eval::NNUE::(anonymous namespace)::AccumulatorUpdateContext.37", align 8 ; 7 uses
  %8 = alloca %"class.Stockfish::ValueList.36", align 8 ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2529280 ; 3 uses
  %i.b = load i64, ptr %i.a, align 64, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1217216 ; 3 uses
  %i.d = zext i8 %1 to i64                        ; 7 uses
  %.010.i142 = add i64 %i.b, -1                   ; 3 uses
  %.not.i143 = icmp eq i64 %.010.i142, 0
  br i1 %.not.i143, label %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11FullThreatsELj1024EEEmNS_5ColorE.exit, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %.010.i = add i64 %.010.i144, -1                ; 3 uses
  %.not.i = icmp eq i64 %.010.i, 0
  br i1 %.not.i, label %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11FullThreatsELj1024EEEmNS_5ColorE.exit, label %.lr.ph, !llvm.loop !45

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.010.i144 = phi i64 [ %.010.i, %bb.b ], [ %.010.i142, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw [5312 x i8], ptr %i.c, i64 %.010.i144 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4160
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  %i.h = load i8, ptr %i.g, align 1, !tbaa !18, !range !20, !noundef !21
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11FullThreatsELj1024EEEmNS_5ColorE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4864
  %i.k = tail call noundef zeroext i1 @_ZN9Stockfish4Eval4NNUE8Features11FullThreats16requires_refreshERKNS_12DirtyThreatsENS_5ColorE(ptr noundef nonnull align 8 dereferenceable(416) %i.j, i8 noundef zeroext %1) #11
  br i1 %i.k, label %._ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11FullThreatsELj1024EEEmNS_5ColorE.exit_crit_edge147, label %bb.b, !llvm.loop !45

._ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11FullThreatsELj1024EEEmNS_5ColorE.exit_crit_edge147: ; preds = %bb.c
  br label %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11FullThreatsELj1024EEEmNS_5ColorE.exit, !llvm.loop !45

_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11FullThreatsELj1024EEEmNS_5ColorE.exit: ; preds = %.lr.ph, %bb.b, %._ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11FullThreatsELj1024EEEmNS_5ColorE.exit_crit_edge147, %bb.a
  %.010.i.lcssa = phi i64 [ %.010.i142, %bb.a ], [ %.010.i144, %._ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11FullThreatsELj1024EEEmNS_5ColorE.exit_crit_edge147 ], [ %.010.i144, %.lr.ph ], [ %.010.i, %bb.b ] ; 4 uses
  %i.l = getelementptr inbounds nuw [5312 x i8], ptr %i.c, i64 %.010.i.lcssa
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4160
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18, !range !20, !noundef !21
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11FullThreatsELj1024EEEmNS_5ColorE.exit
  tail call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack26forward_update_incrementalINS1_8Features11FullThreatsELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm(ptr noundef nonnull align 64 dereferenceable(2529288) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 64 dereferenceable(131188224) %3, i64 noundef %.010.i.lcssa) #11
  br label %_ZN9Stockfish4Eval4NNUE16AccumulatorStack27backward_update_incrementalINS1_8Features11FullThreatsELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm.exit

bb.e:                                             ; preds = %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11FullThreatsELj1024EEEmNS_5ColorE.exit
  %i.q = load i64, ptr %i.a, align 64, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1211904
  %i.s = getelementptr [5312 x i8], ptr %i.r, i64 %i.q ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 512 ; 2 uses
  store i64 0, ptr %i.t, align 8, !tbaa !46
  call void @_ZN9Stockfish4Eval4NNUE8Features11FullThreats21append_active_indicesENS_5ColorERKNS_8PositionERNS_9ValueListIjLm128EEE(i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 8 dereferenceable(520) %8) #11
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4160
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.d
  store i8 1, ptr %i.v, align 1, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 46139392 ; 3 uses
  %i.x = load i64, ptr %i.t, align 8, !tbaa !46   ; 10 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = shl nuw nsw i64 %i.d, 11
  %scevgep91.i = getelementptr i8, ptr %i.s, i64 %i.aa ; 33 uses
  br i1 %i.z, label %.split.us.preheader.i, label %.preheader69.split81.preheader.i

.split.us.preheader.i:                            ; preds = %bb.e
  %wide.trip.count.i = and i64 %i.x, 2147483647
  %i.ab = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.x, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.preheader71.us.i.epil.preheader, label %.split.us.preheader.i.new

.split.us.preheader.i.new:                        ; preds = %.split.us.preheader.i
  %unroll_iter = and i64 %i.x, 2147483646
  br label %.preheader71.us.i

.preheader71.us.1.i:                              ; preds = %.preheader71.us.1.i, %..preheader70_crit_edge.us.preheader.i.new
  %.sroa.70.1.i = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i.new ], [ %i.fj, %.preheader71.us.1.i ]
  %.sroa.66.1.i = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i.new ], [ %i.ff, %.preheader71.us.1.i ]
  %.sroa.62.1.i = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i.new ], [ %i.fb, %.preheader71.us.1.i ]
  %.sroa.58.1.i = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i.new ], [ %i.ex, %.preheader71.us.1.i ]
  %.sroa.54.1.i = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i.new ], [ %i.et, %.preheader71.us.1.i ]
  %.sroa.50.1.i = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i.new ], [ %i.ep, %.preheader71.us.1.i ]
  %.sroa.46.1.i = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i.new ], [ %i.el, %.preheader71.us.1.i ]
  %.sroa.42.1.i = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i.new ], [ %i.eh, %.preheader71.us.1.i ]
  %.sroa.38.1.i = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i.new ], [ %i.ed, %.preheader71.us.1.i ]
  %.sroa.34.1.i = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i.new ], [ %i.dz, %.preheader71.us.1.i ]
  %.sroa.30.1.i = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i.new ], [ %i.dv, %.preheader71.us.1.i ]
  %.sroa.26.1.i = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i.new ], [ %i.dr, %.preheader71.us.1.i ]
  %.sroa.22.1.i = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i.new ], [ %i.dn, %.preheader71.us.1.i ]
  %.sroa.18.1.i = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i.new ], [ %i.dj, %.preheader71.us.1.i ]
  %.sroa.14.1.i = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i.new ], [ %i.df, %.preheader71.us.1.i ]
  %.sroa.0.1.i = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i.new ], [ %i.db, %.preheader71.us.1.i ]
  %indvars.iv.1.i = phi i64 [ 0, %..preheader70_crit_edge.us.preheader.i.new ], [ %indvars.iv.next.1.i.1, %.preheader71.us.1.i ] ; 3 uses
  %niter219 = phi i64 [ 0, %..preheader70_crit_edge.us.preheader.i.new ], [ %niter219.next.1, %.preheader71.us.1.i ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.1.i
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !31
  %i.af = zext i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.ag ; 16 uses
  %i.ai = load <32 x i8>, ptr %i.ah, align 32, !tbaa !23
  %i.aj = sext <32 x i8> %i.ai to <32 x i16>
  %i.ak = add <32 x i16> %.sroa.0.1.i, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.am = load <32 x i8>, ptr %i.al, align 32, !tbaa !23
  %i.an = sext <32 x i8> %i.am to <32 x i16>
  %i.ao = add <32 x i16> %.sroa.14.1.i, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aq = load <32 x i8>, ptr %i.ap, align 32, !tbaa !23
  %i.ar = sext <32 x i8> %i.aq to <32 x i16>
  %i.as = add <32 x i16> %.sroa.18.1.i, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.au = load <32 x i8>, ptr %i.at, align 32, !tbaa !23
  %i.av = sext <32 x i8> %i.au to <32 x i16>
  %i.aw = add <32 x i16> %.sroa.22.1.i, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.ay = load <32 x i8>, ptr %i.ax, align 32, !tbaa !23
  %i.az = sext <32 x i8> %i.ay to <32 x i16>
  %i.ba = add <32 x i16> %.sroa.26.1.i, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.bc = load <32 x i8>, ptr %i.bb, align 32, !tbaa !23
  %i.bd = sext <32 x i8> %i.bc to <32 x i16>
  %i.be = add <32 x i16> %.sroa.30.1.i, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 192
  %i.bg = load <32 x i8>, ptr %i.bf, align 32, !tbaa !23
  %i.bh = sext <32 x i8> %i.bg to <32 x i16>
  %i.bi = add <32 x i16> %.sroa.34.1.i, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 224
  %i.bk = load <32 x i8>, ptr %i.bj, align 32, !tbaa !23
  %i.bl = sext <32 x i8> %i.bk to <32 x i16>
  %i.bm = add <32 x i16> %.sroa.38.1.i, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 256
  %i.bo = load <32 x i8>, ptr %i.bn, align 32, !tbaa !23
  %i.bp = sext <32 x i8> %i.bo to <32 x i16>
  %i.bq = add <32 x i16> %.sroa.42.1.i, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 288
  %i.bs = load <32 x i8>, ptr %i.br, align 32, !tbaa !23
  %i.bt = sext <32 x i8> %i.bs to <32 x i16>
  %i.bu = add <32 x i16> %.sroa.46.1.i, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ah, i64 320
  %i.bw = load <32 x i8>, ptr %i.bv, align 32, !tbaa !23
  %i.bx = sext <32 x i8> %i.bw to <32 x i16>
  %i.by = add <32 x i16> %.sroa.50.1.i, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 352
  %i.ca = load <32 x i8>, ptr %i.bz, align 32, !tbaa !23
  %i.cb = sext <32 x i8> %i.ca to <32 x i16>
  %i.cc = add <32 x i16> %.sroa.54.1.i, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 384
  %i.ce = load <32 x i8>, ptr %i.cd, align 32, !tbaa !23
  %i.cf = sext <32 x i8> %i.ce to <32 x i16>
  %i.cg = add <32 x i16> %.sroa.58.1.i, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ah, i64 416
  %i.ci = load <32 x i8>, ptr %i.ch, align 32, !tbaa !23
  %i.cj = sext <32 x i8> %i.ci to <32 x i16>
  %i.ck = add <32 x i16> %.sroa.62.1.i, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ah, i64 448
  %i.cm = load <32 x i8>, ptr %i.cl, align 32, !tbaa !23
  %i.cn = sext <32 x i8> %i.cm to <32 x i16>
  %i.co = add <32 x i16> %.sroa.66.1.i, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ah, i64 480
  %i.cq = load <32 x i8>, ptr %i.cp, align 32, !tbaa !23
  %i.cr = sext <32 x i8> %i.cq to <32 x i16>
  %i.cs = add <32 x i16> %.sroa.70.1.i, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.1.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !31
  %i.cw = zext i32 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 10
  %i.cy = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.cx ; 16 uses
  %i.cz = load <32 x i8>, ptr %i.cy, align 32, !tbaa !23
  %i.da = sext <32 x i8> %i.cz to <32 x i16>
  %i.db = add <32 x i16> %i.ak, %i.da             ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.dd = load <32 x i8>, ptr %i.dc, align 32, !tbaa !23
  %i.de = sext <32 x i8> %i.dd to <32 x i16>
  %i.df = add <32 x i16> %i.ao, %i.de             ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.dh = load <32 x i8>, ptr %i.dg, align 32, !tbaa !23
  %i.di = sext <32 x i8> %i.dh to <32 x i16>
  %i.dj = add <32 x i16> %i.as, %i.di             ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %i.dl = load <32 x i8>, ptr %i.dk, align 32, !tbaa !23
  %i.dm = sext <32 x i8> %i.dl to <32 x i16>
  %i.dn = add <32 x i16> %i.aw, %i.dm             ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cy, i64 128
  %i.dp = load <32 x i8>, ptr %i.do, align 32, !tbaa !23
  %i.dq = sext <32 x i8> %i.dp to <32 x i16>
  %i.dr = add <32 x i16> %i.ba, %i.dq             ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cy, i64 160
  %i.dt = load <32 x i8>, ptr %i.ds, align 32, !tbaa !23
  %i.du = sext <32 x i8> %i.dt to <32 x i16>
  %i.dv = add <32 x i16> %i.be, %i.du             ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cy, i64 192
  %i.dx = load <32 x i8>, ptr %i.dw, align 32, !tbaa !23
  %i.dy = sext <32 x i8> %i.dx to <32 x i16>
  %i.dz = add <32 x i16> %i.bi, %i.dy             ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cy, i64 224
  %i.eb = load <32 x i8>, ptr %i.ea, align 32, !tbaa !23
  %i.ec = sext <32 x i8> %i.eb to <32 x i16>
  %i.ed = add <32 x i16> %i.bm, %i.ec             ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cy, i64 256
  %i.ef = load <32 x i8>, ptr %i.ee, align 32, !tbaa !23
  %i.eg = sext <32 x i8> %i.ef to <32 x i16>
  %i.eh = add <32 x i16> %i.bq, %i.eg             ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cy, i64 288
  %i.ej = load <32 x i8>, ptr %i.ei, align 32, !tbaa !23
  %i.ek = sext <32 x i8> %i.ej to <32 x i16>
  %i.el = add <32 x i16> %i.bu, %i.ek             ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.cy, i64 320
  %i.en = load <32 x i8>, ptr %i.em, align 32, !tbaa !23
  %i.eo = sext <32 x i8> %i.en to <32 x i16>
  %i.ep = add <32 x i16> %i.by, %i.eo             ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cy, i64 352
  %i.er = load <32 x i8>, ptr %i.eq, align 32, !tbaa !23
  %i.es = sext <32 x i8> %i.er to <32 x i16>
  %i.et = add <32 x i16> %i.cc, %i.es             ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cy, i64 384
  %i.ev = load <32 x i8>, ptr %i.eu, align 32, !tbaa !23
  %i.ew = sext <32 x i8> %i.ev to <32 x i16>
  %i.ex = add <32 x i16> %i.cg, %i.ew             ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cy, i64 416
  %i.ez = load <32 x i8>, ptr %i.ey, align 32, !tbaa !23
  %i.fa = sext <32 x i8> %i.ez to <32 x i16>
  %i.fb = add <32 x i16> %i.ck, %i.fa             ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cy, i64 448
  %i.fd = load <32 x i8>, ptr %i.fc, align 32, !tbaa !23
  %i.fe = sext <32 x i8> %i.fd to <32 x i16>
  %i.ff = add <32 x i16> %i.co, %i.fe             ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cy, i64 480
  %i.fh = load <32 x i8>, ptr %i.fg, align 32, !tbaa !23
  %i.fi = sext <32 x i8> %i.fh to <32 x i16>
  %i.fj = add <32 x i16> %i.cs, %i.fi             ; 3 uses
  %indvars.iv.next.1.i.1 = add nuw nsw i64 %indvars.iv.1.i, 2 ; 2 uses
  %niter219.next.1 = add i64 %niter219, 2         ; 2 uses
  %niter219.ncmp.1 = icmp eq i64 %niter219.next.1, %unroll_iter218
  br i1 %niter219.ncmp.1, label %.preheader69.split81.us.preheader.i.unr-lcssa, label %.preheader71.us.1.i, !llvm.loop !48

.preheader71.us.i:                                ; preds = %.preheader71.us.i, %.split.us.preheader.i.new
  %.sroa.70.0.i = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i.new ], [ %i.kq, %.preheader71.us.i ]
  %.sroa.66.0.i = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i.new ], [ %i.km, %.preheader71.us.i ]
  %.sroa.62.0.i = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i.new ], [ %i.ki, %.preheader71.us.i ]
  %.sroa.58.0.i = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i.new ], [ %i.ke, %.preheader71.us.i ]
  %.sroa.54.0.i = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i.new ], [ %i.ka, %.preheader71.us.i ]
  %.sroa.50.0.i = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i.new ], [ %i.jw, %.preheader71.us.i ]
  %.sroa.46.0.i = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i.new ], [ %i.js, %.preheader71.us.i ]
  %.sroa.42.0.i = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i.new ], [ %i.jo, %.preheader71.us.i ]
  %.sroa.38.0.i = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i.new ], [ %i.jk, %.preheader71.us.i ]
  %.sroa.34.0.i = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i.new ], [ %i.jg, %.preheader71.us.i ]
  %.sroa.30.0.i = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i.new ], [ %i.jc, %.preheader71.us.i ]
  %.sroa.26.0.i = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i.new ], [ %i.iy, %.preheader71.us.i ]
  %.sroa.22.0.i = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i.new ], [ %i.iu, %.preheader71.us.i ]
  %.sroa.18.0.i = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i.new ], [ %i.iq, %.preheader71.us.i ]
  %.sroa.14.0.i = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i.new ], [ %i.im, %.preheader71.us.i ]
  %.sroa.0.0.i = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i.new ], [ %i.ii, %.preheader71.us.i ]
  %indvars.iv.i = phi i64 [ 0, %.split.us.preheader.i.new ], [ %indvars.iv.next.i.1, %.preheader71.us.i ] ; 3 uses
  %niter = phi i64 [ 0, %.split.us.preheader.i.new ], [ %niter.next.1, %.preheader71.us.i ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.i
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !31
  %i.fm = zext i32 %i.fl to i64
  %i.fn = shl nuw nsw i64 %i.fm, 10
  %i.fo = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.fn ; 16 uses
  %i.fp = load <32 x i8>, ptr %i.fo, align 32, !tbaa !23
  %i.fq = sext <32 x i8> %i.fp to <32 x i16>
  %i.fr = add <32 x i16> %.sroa.0.0.i, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.ft = load <32 x i8>, ptr %i.fs, align 32, !tbaa !23
  %i.fu = sext <32 x i8> %i.ft to <32 x i16>
  %i.fv = add <32 x i16> %.sroa.14.0.i, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  %i.fx = load <32 x i8>, ptr %i.fw, align 32, !tbaa !23
  %i.fy = sext <32 x i8> %i.fx to <32 x i16>
  %i.fz = add <32 x i16> %.sroa.18.0.i, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fo, i64 96
  %i.gb = load <32 x i8>, ptr %i.ga, align 32, !tbaa !23
  %i.gc = sext <32 x i8> %i.gb to <32 x i16>
  %i.gd = add <32 x i16> %.sroa.22.0.i, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fo, i64 128
  %i.gf = load <32 x i8>, ptr %i.ge, align 32, !tbaa !23
  %i.gg = sext <32 x i8> %i.gf to <32 x i16>
  %i.gh = add <32 x i16> %.sroa.26.0.i, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fo, i64 160
  %i.gj = load <32 x i8>, ptr %i.gi, align 32, !tbaa !23
  %i.gk = sext <32 x i8> %i.gj to <32 x i16>
  %i.gl = add <32 x i16> %.sroa.30.0.i, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fo, i64 192
  %i.gn = load <32 x i8>, ptr %i.gm, align 32, !tbaa !23
  %i.go = sext <32 x i8> %i.gn to <32 x i16>
  %i.gp = add <32 x i16> %.sroa.34.0.i, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fo, i64 224
  %i.gr = load <32 x i8>, ptr %i.gq, align 32, !tbaa !23
  %i.gs = sext <32 x i8> %i.gr to <32 x i16>
  %i.gt = add <32 x i16> %.sroa.38.0.i, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fo, i64 256
  %i.gv = load <32 x i8>, ptr %i.gu, align 32, !tbaa !23
  %i.gw = sext <32 x i8> %i.gv to <32 x i16>
  %i.gx = add <32 x i16> %.sroa.42.0.i, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fo, i64 288
  %i.gz = load <32 x i8>, ptr %i.gy, align 32, !tbaa !23
  %i.ha = sext <32 x i8> %i.gz to <32 x i16>
  %i.hb = add <32 x i16> %.sroa.46.0.i, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fo, i64 320
  %i.hd = load <32 x i8>, ptr %i.hc, align 32, !tbaa !23
  %i.he = sext <32 x i8> %i.hd to <32 x i16>
  %i.hf = add <32 x i16> %.sroa.50.0.i, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fo, i64 352
  %i.hh = load <32 x i8>, ptr %i.hg, align 32, !tbaa !23
  %i.hi = sext <32 x i8> %i.hh to <32 x i16>
  %i.hj = add <32 x i16> %.sroa.54.0.i, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fo, i64 384
  %i.hl = load <32 x i8>, ptr %i.hk, align 32, !tbaa !23
  %i.hm = sext <32 x i8> %i.hl to <32 x i16>
  %i.hn = add <32 x i16> %.sroa.58.0.i, %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fo, i64 416
  %i.hp = load <32 x i8>, ptr %i.ho, align 32, !tbaa !23
  %i.hq = sext <32 x i8> %i.hp to <32 x i16>
  %i.hr = add <32 x i16> %.sroa.62.0.i, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fo, i64 448
  %i.ht = load <32 x i8>, ptr %i.hs, align 32, !tbaa !23
  %i.hu = sext <32 x i8> %i.ht to <32 x i16>
  %i.hv = add <32 x i16> %.sroa.66.0.i, %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fo, i64 480
  %i.hx = load <32 x i8>, ptr %i.hw, align 32, !tbaa !23
  %i.hy = sext <32 x i8> %i.hx to <32 x i16>
  %i.hz = add <32 x i16> %.sroa.70.0.i, %i.hy
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !31
  %i.id = zext i32 %i.ic to i64
  %i.ie = shl nuw nsw i64 %i.id, 10
  %i.if = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ie ; 16 uses
  %i.ig = load <32 x i8>, ptr %i.if, align 32, !tbaa !23
  %i.ih = sext <32 x i8> %i.ig to <32 x i16>
  %i.ii = add <32 x i16> %i.fr, %i.ih             ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ik = load <32 x i8>, ptr %i.ij, align 32, !tbaa !23
  %i.il = sext <32 x i8> %i.ik to <32 x i16>
  %i.im = add <32 x i16> %i.fv, %i.il             ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.if, i64 64
  %i.io = load <32 x i8>, ptr %i.in, align 32, !tbaa !23
  %i.ip = sext <32 x i8> %i.io to <32 x i16>
  %i.iq = add <32 x i16> %i.fz, %i.ip             ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.if, i64 96
  %i.is = load <32 x i8>, ptr %i.ir, align 32, !tbaa !23
  %i.it = sext <32 x i8> %i.is to <32 x i16>
  %i.iu = add <32 x i16> %i.gd, %i.it             ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.if, i64 128
  %i.iw = load <32 x i8>, ptr %i.iv, align 32, !tbaa !23
  %i.ix = sext <32 x i8> %i.iw to <32 x i16>
  %i.iy = add <32 x i16> %i.gh, %i.ix             ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.if, i64 160
  %i.ja = load <32 x i8>, ptr %i.iz, align 32, !tbaa !23
  %i.jb = sext <32 x i8> %i.ja to <32 x i16>
  %i.jc = add <32 x i16> %i.gl, %i.jb             ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.if, i64 192
  %i.je = load <32 x i8>, ptr %i.jd, align 32, !tbaa !23
  %i.jf = sext <32 x i8> %i.je to <32 x i16>
  %i.jg = add <32 x i16> %i.gp, %i.jf             ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.if, i64 224
  %i.ji = load <32 x i8>, ptr %i.jh, align 32, !tbaa !23
  %i.jj = sext <32 x i8> %i.ji to <32 x i16>
  %i.jk = add <32 x i16> %i.gt, %i.jj             ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.if, i64 256
  %i.jm = load <32 x i8>, ptr %i.jl, align 32, !tbaa !23
  %i.jn = sext <32 x i8> %i.jm to <32 x i16>
  %i.jo = add <32 x i16> %i.gx, %i.jn             ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.if, i64 288
  %i.jq = load <32 x i8>, ptr %i.jp, align 32, !tbaa !23
  %i.jr = sext <32 x i8> %i.jq to <32 x i16>
  %i.js = add <32 x i16> %i.hb, %i.jr             ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.if, i64 320
  %i.ju = load <32 x i8>, ptr %i.jt, align 32, !tbaa !23
  %i.jv = sext <32 x i8> %i.ju to <32 x i16>
  %i.jw = add <32 x i16> %i.hf, %i.jv             ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.if, i64 352
  %i.jy = load <32 x i8>, ptr %i.jx, align 32, !tbaa !23
  %i.jz = sext <32 x i8> %i.jy to <32 x i16>
  %i.ka = add <32 x i16> %i.hj, %i.jz             ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.if, i64 384
  %i.kc = load <32 x i8>, ptr %i.kb, align 32, !tbaa !23
  %i.kd = sext <32 x i8> %i.kc to <32 x i16>
  %i.ke = add <32 x i16> %i.hn, %i.kd             ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.if, i64 416
  %i.kg = load <32 x i8>, ptr %i.kf, align 32, !tbaa !23
  %i.kh = sext <32 x i8> %i.kg to <32 x i16>
  %i.ki = add <32 x i16> %i.hr, %i.kh             ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.if, i64 448
  %i.kk = load <32 x i8>, ptr %i.kj, align 32, !tbaa !23
  %i.kl = sext <32 x i8> %i.kk to <32 x i16>
  %i.km = add <32 x i16> %i.hv, %i.kl             ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.if, i64 480
  %i.ko = load <32 x i8>, ptr %i.kn, align 32, !tbaa !23
  %i.kp = sext <32 x i8> %i.ko to <32 x i16>
  %i.kq = add <32 x i16> %i.hz, %i.kp             ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader70_crit_edge.us.preheader.i.unr-lcssa, label %.preheader71.us.i, !llvm.loop !48

..preheader70_crit_edge.us.preheader.i.unr-lcssa: ; preds = %.preheader71.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..preheader70_crit_edge.us.preheader.i, label %.preheader71.us.i.epil.preheader

.preheader71.us.i.epil.preheader:                 ; preds = %..preheader70_crit_edge.us.preheader.i.unr-lcssa, %.split.us.preheader.i
  %.sroa.70.0.i.epil.init = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i ], [ %i.kq, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ]
  %.sroa.66.0.i.epil.init = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i ], [ %i.km, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ]
  %.sroa.62.0.i.epil.init = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i ], [ %i.ki, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ]
  %.sroa.58.0.i.epil.init = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i ], [ %i.ke, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ]
  %.sroa.54.0.i.epil.init = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i ], [ %i.ka, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ]
  %.sroa.50.0.i.epil.init = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i ], [ %i.jw, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ]
  %.sroa.46.0.i.epil.init = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i ], [ %i.js, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ]
  %.sroa.42.0.i.epil.init = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i ], [ %i.jo, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ]
  %.sroa.38.0.i.epil.init = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i ], [ %i.jk, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ]
  %.sroa.34.0.i.epil.init = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i ], [ %i.jg, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ]
  %.sroa.30.0.i.epil.init = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i ], [ %i.jc, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ]
  %.sroa.26.0.i.epil.init = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i ], [ %i.iy, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ]
  %.sroa.22.0.i.epil.init = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i ], [ %i.iu, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ]
  %.sroa.18.0.i.epil.init = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i ], [ %i.iq, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ]
  %.sroa.14.0.i.epil.init = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i ], [ %i.im, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ]
  %.sroa.0.0.i.epil.init = phi <32 x i16> [ zeroinitializer, %.split.us.preheader.i ], [ %i.ii, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 0, %.split.us.preheader.i ], [ %indvars.iv.next.i.1, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ]
  %lcmp.mod198 = trunc i64 %i.x to i1
  call void @llvm.assume(i1 %lcmp.mod198)
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.i.epil.init
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !31
  %i.kt = zext i32 %i.ks to i64
  %i.ku = shl nuw nsw i64 %i.kt, 10
  %i.kv = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ku ; 16 uses
  %i.kw = load <32 x i8>, ptr %i.kv, align 32, !tbaa !23
  %i.kx = sext <32 x i8> %i.kw to <32 x i16>
  %i.ky = add <32 x i16> %.sroa.0.0.i.epil.init, %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.la = load <32 x i8>, ptr %i.kz, align 32, !tbaa !23
  %i.lb = sext <32 x i8> %i.la to <32 x i16>
  %i.lc = add <32 x i16> %.sroa.14.0.i.epil.init, %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kv, i64 64
  %i.le = load <32 x i8>, ptr %i.ld, align 32, !tbaa !23
  %i.lf = sext <32 x i8> %i.le to <32 x i16>
  %i.lg = add <32 x i16> %.sroa.18.0.i.epil.init, %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kv, i64 96
  %i.li = load <32 x i8>, ptr %i.lh, align 32, !tbaa !23
  %i.lj = sext <32 x i8> %i.li to <32 x i16>
  %i.lk = add <32 x i16> %.sroa.22.0.i.epil.init, %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kv, i64 128
  %i.lm = load <32 x i8>, ptr %i.ll, align 32, !tbaa !23
  %i.ln = sext <32 x i8> %i.lm to <32 x i16>
  %i.lo = add <32 x i16> %.sroa.26.0.i.epil.init, %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kv, i64 160
  %i.lq = load <32 x i8>, ptr %i.lp, align 32, !tbaa !23
  %i.lr = sext <32 x i8> %i.lq to <32 x i16>
  %i.ls = add <32 x i16> %.sroa.30.0.i.epil.init, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kv, i64 192
  %i.lu = load <32 x i8>, ptr %i.lt, align 32, !tbaa !23
  %i.lv = sext <32 x i8> %i.lu to <32 x i16>
  %i.lw = add <32 x i16> %.sroa.34.0.i.epil.init, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kv, i64 224
  %i.ly = load <32 x i8>, ptr %i.lx, align 32, !tbaa !23
  %i.lz = sext <32 x i8> %i.ly to <32 x i16>
  %i.ma = add <32 x i16> %.sroa.38.0.i.epil.init, %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kv, i64 256
  %i.mc = load <32 x i8>, ptr %i.mb, align 32, !tbaa !23
  %i.md = sext <32 x i8> %i.mc to <32 x i16>
  %i.me = add <32 x i16> %.sroa.42.0.i.epil.init, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.kv, i64 288
  %i.mg = load <32 x i8>, ptr %i.mf, align 32, !tbaa !23
  %i.mh = sext <32 x i8> %i.mg to <32 x i16>
  %i.mi = add <32 x i16> %.sroa.46.0.i.epil.init, %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %i.kv, i64 320
  %i.mk = load <32 x i8>, ptr %i.mj, align 32, !tbaa !23
  %i.ml = sext <32 x i8> %i.mk to <32 x i16>
  %i.mm = add <32 x i16> %.sroa.50.0.i.epil.init, %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %i.kv, i64 352
  %i.mo = load <32 x i8>, ptr %i.mn, align 32, !tbaa !23
  %i.mp = sext <32 x i8> %i.mo to <32 x i16>
  %i.mq = add <32 x i16> %.sroa.54.0.i.epil.init, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %i.kv, i64 384
  %i.ms = load <32 x i8>, ptr %i.mr, align 32, !tbaa !23
  %i.mt = sext <32 x i8> %i.ms to <32 x i16>
  %i.mu = add <32 x i16> %.sroa.58.0.i.epil.init, %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.kv, i64 416
  %i.mw = load <32 x i8>, ptr %i.mv, align 32, !tbaa !23
  %i.mx = sext <32 x i8> %i.mw to <32 x i16>
  %i.my = add <32 x i16> %.sroa.62.0.i.epil.init, %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kv, i64 448
  %i.na = load <32 x i8>, ptr %i.mz, align 32, !tbaa !23
  %i.nb = sext <32 x i8> %i.na to <32 x i16>
  %i.nc = add <32 x i16> %.sroa.66.0.i.epil.init, %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kv, i64 480
  %i.ne = load <32 x i8>, ptr %i.nd, align 32, !tbaa !23
  %i.nf = sext <32 x i8> %i.ne to <32 x i16>
  %i.ng = add <32 x i16> %.sroa.70.0.i.epil.init, %i.nf
  br label %..preheader70_crit_edge.us.preheader.i

..preheader70_crit_edge.us.preheader.i:           ; preds = %..preheader70_crit_edge.us.preheader.i.unr-lcssa, %.preheader71.us.i.epil.preheader
  %.lcssa180 = phi <32 x i16> [ %i.ii, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ], [ %i.ky, %.preheader71.us.i.epil.preheader ]
  %.lcssa179 = phi <32 x i16> [ %i.im, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ], [ %i.lc, %.preheader71.us.i.epil.preheader ]
  %.lcssa178 = phi <32 x i16> [ %i.iq, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ], [ %i.lg, %.preheader71.us.i.epil.preheader ]
  %.lcssa177 = phi <32 x i16> [ %i.iu, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ], [ %i.lk, %.preheader71.us.i.epil.preheader ]
  %.lcssa176 = phi <32 x i16> [ %i.iy, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ], [ %i.lo, %.preheader71.us.i.epil.preheader ]
  %.lcssa175 = phi <32 x i16> [ %i.jc, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ], [ %i.ls, %.preheader71.us.i.epil.preheader ]
  %.lcssa174 = phi <32 x i16> [ %i.jg, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ], [ %i.lw, %.preheader71.us.i.epil.preheader ]
  %.lcssa173 = phi <32 x i16> [ %i.jk, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ], [ %i.ma, %.preheader71.us.i.epil.preheader ]
  %.lcssa172 = phi <32 x i16> [ %i.jo, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ], [ %i.me, %.preheader71.us.i.epil.preheader ]
  %.lcssa171 = phi <32 x i16> [ %i.js, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ], [ %i.mi, %.preheader71.us.i.epil.preheader ]
  %.lcssa170 = phi <32 x i16> [ %i.jw, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ], [ %i.mm, %.preheader71.us.i.epil.preheader ]
  %.lcssa169 = phi <32 x i16> [ %i.ka, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ], [ %i.mq, %.preheader71.us.i.epil.preheader ]
  %.lcssa168 = phi <32 x i16> [ %i.ke, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ], [ %i.mu, %.preheader71.us.i.epil.preheader ]
  %.lcssa167 = phi <32 x i16> [ %i.ki, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ], [ %i.my, %.preheader71.us.i.epil.preheader ]
  %.lcssa166 = phi <32 x i16> [ %i.km, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ], [ %i.nc, %.preheader71.us.i.epil.preheader ]
  %.lcssa165 = phi <32 x i16> [ %i.kq, %..preheader70_crit_edge.us.preheader.i.unr-lcssa ], [ %i.ng, %.preheader71.us.i.epil.preheader ]
  store <32 x i16> %.lcssa180, ptr %scevgep91.i, align 64, !tbaa !23
  %.sroa.14.0.scevgep91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep91.i, i64 64
  store <32 x i16> %.lcssa179, ptr %.sroa.14.0.scevgep91.sroa_idx.i, align 64, !tbaa !23
  %.sroa.18.0.scevgep91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep91.i, i64 128
  store <32 x i16> %.lcssa178, ptr %.sroa.18.0.scevgep91.sroa_idx.i, align 64, !tbaa !23
  %.sroa.22.0.scevgep91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep91.i, i64 192
  store <32 x i16> %.lcssa177, ptr %.sroa.22.0.scevgep91.sroa_idx.i, align 64, !tbaa !23
  %.sroa.26.0.scevgep91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep91.i, i64 256
  store <32 x i16> %.lcssa176, ptr %.sroa.26.0.scevgep91.sroa_idx.i, align 64, !tbaa !23
  %.sroa.30.0.scevgep91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep91.i, i64 320
  store <32 x i16> %.lcssa175, ptr %.sroa.30.0.scevgep91.sroa_idx.i, align 64, !tbaa !23
  %.sroa.34.0.scevgep91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep91.i, i64 384
  store <32 x i16> %.lcssa174, ptr %.sroa.34.0.scevgep91.sroa_idx.i, align 64, !tbaa !23
  %.sroa.38.0.scevgep91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep91.i, i64 448
  store <32 x i16> %.lcssa173, ptr %.sroa.38.0.scevgep91.sroa_idx.i, align 64, !tbaa !23
  %.sroa.42.0.scevgep91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep91.i, i64 512
  store <32 x i16> %.lcssa172, ptr %.sroa.42.0.scevgep91.sroa_idx.i, align 64, !tbaa !23
  %.sroa.46.0.scevgep91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep91.i, i64 576
  store <32 x i16> %.lcssa171, ptr %.sroa.46.0.scevgep91.sroa_idx.i, align 64, !tbaa !23
  %.sroa.50.0.scevgep91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep91.i, i64 640
  store <32 x i16> %.lcssa170, ptr %.sroa.50.0.scevgep91.sroa_idx.i, align 64, !tbaa !23
  %.sroa.54.0.scevgep91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep91.i, i64 704
  store <32 x i16> %.lcssa169, ptr %.sroa.54.0.scevgep91.sroa_idx.i, align 64, !tbaa !23
  %.sroa.58.0.scevgep91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep91.i, i64 768
  store <32 x i16> %.lcssa168, ptr %.sroa.58.0.scevgep91.sroa_idx.i, align 64, !tbaa !23
  %.sroa.62.0.scevgep91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep91.i, i64 832
  store <32 x i16> %.lcssa167, ptr %.sroa.62.0.scevgep91.sroa_idx.i, align 64, !tbaa !23
  %.sroa.66.0.scevgep91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep91.i, i64 896
  store <32 x i16> %.lcssa166, ptr %.sroa.66.0.scevgep91.sroa_idx.i, align 64, !tbaa !23
  %.sroa.70.0.scevgep91.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep91.i, i64 960
  store <32 x i16> %.lcssa165, ptr %.sroa.70.0.scevgep91.sroa_idx.i, align 64, !tbaa !23
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 46139904 ; 3 uses
  %xtraiter199 = and i64 %i.x, 1
  %i.ni = icmp eq i64 %i.ab, 0
  br i1 %i.ni, label %.preheader71.us.1.i.epil.preheader, label %..preheader70_crit_edge.us.preheader.i.new

..preheader70_crit_edge.us.preheader.i.new:       ; preds = %..preheader70_crit_edge.us.preheader.i
  %unroll_iter218 = and i64 %i.x, 2147483646
  br label %.preheader71.us.1.i

.preheader69.split81.preheader.i:                 ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(2048) %scevgep91.i, i8 0, i64 2048, i1 false)
  br label %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_131update_threats_accumulator_fullILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11FullThreatsEEE.exit

.preheader69.split81.us.preheader.i.unr-lcssa:    ; preds = %.preheader71.us.1.i
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.preheader69.split81.us.preheader.i, label %.preheader71.us.1.i.epil.preheader

.preheader71.us.1.i.epil.preheader:               ; preds = %.preheader69.split81.us.preheader.i.unr-lcssa, %..preheader70_crit_edge.us.preheader.i
  %.sroa.70.1.i.epil.init = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i ], [ %i.fj, %.preheader69.split81.us.preheader.i.unr-lcssa ]
  %.sroa.66.1.i.epil.init = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i ], [ %i.ff, %.preheader69.split81.us.preheader.i.unr-lcssa ]
  %.sroa.62.1.i.epil.init = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i ], [ %i.fb, %.preheader69.split81.us.preheader.i.unr-lcssa ]
  %.sroa.58.1.i.epil.init = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i ], [ %i.ex, %.preheader69.split81.us.preheader.i.unr-lcssa ]
  %.sroa.54.1.i.epil.init = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i ], [ %i.et, %.preheader69.split81.us.preheader.i.unr-lcssa ]
  %.sroa.50.1.i.epil.init = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i ], [ %i.ep, %.preheader69.split81.us.preheader.i.unr-lcssa ]
  %.sroa.46.1.i.epil.init = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i ], [ %i.el, %.preheader69.split81.us.preheader.i.unr-lcssa ]
  %.sroa.42.1.i.epil.init = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i ], [ %i.eh, %.preheader69.split81.us.preheader.i.unr-lcssa ]
  %.sroa.38.1.i.epil.init = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i ], [ %i.ed, %.preheader69.split81.us.preheader.i.unr-lcssa ]
  %.sroa.34.1.i.epil.init = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i ], [ %i.dz, %.preheader69.split81.us.preheader.i.unr-lcssa ]
  %.sroa.30.1.i.epil.init = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i ], [ %i.dv, %.preheader69.split81.us.preheader.i.unr-lcssa ]
  %.sroa.26.1.i.epil.init = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i ], [ %i.dr, %.preheader69.split81.us.preheader.i.unr-lcssa ]
  %.sroa.22.1.i.epil.init = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i ], [ %i.dn, %.preheader69.split81.us.preheader.i.unr-lcssa ]
  %.sroa.18.1.i.epil.init = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i ], [ %i.dj, %.preheader69.split81.us.preheader.i.unr-lcssa ]
  %.sroa.14.1.i.epil.init = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i ], [ %i.df, %.preheader69.split81.us.preheader.i.unr-lcssa ]
  %.sroa.0.1.i.epil.init = phi <32 x i16> [ zeroinitializer, %..preheader70_crit_edge.us.preheader.i ], [ %i.db, %.preheader69.split81.us.preheader.i.unr-lcssa ]
  %indvars.iv.1.i.epil.init = phi i64 [ 0, %..preheader70_crit_edge.us.preheader.i ], [ %indvars.iv.next.1.i.1, %.preheader69.split81.us.preheader.i.unr-lcssa ]
  %lcmp.mod217 = trunc i64 %i.x to i1
  call void @llvm.assume(i1 %lcmp.mod217)
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.1.i.epil.init
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !31
  %i.nl = zext i32 %i.nk to i64
  %i.nm = shl nuw nsw i64 %i.nl, 10
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.nm ; 16 uses
  %i.no = load <32 x i8>, ptr %i.nn, align 32, !tbaa !23
  %i.np = sext <32 x i8> %i.no to <32 x i16>
  %i.nq = add <32 x i16> %.sroa.0.1.i.epil.init, %i.np
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.ns = load <32 x i8>, ptr %i.nr, align 32, !tbaa !23
  %i.nt = sext <32 x i8> %i.ns to <32 x i16>
  %i.nu = add <32 x i16> %.sroa.14.1.i.epil.init, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nw = load <32 x i8>, ptr %i.nv, align 32, !tbaa !23
  %i.nx = sext <32 x i8> %i.nw to <32 x i16>
  %i.ny = add <32 x i16> %.sroa.18.1.i.epil.init, %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nn, i64 96
  %i.oa = load <32 x i8>, ptr %i.nz, align 32, !tbaa !23
  %i.ob = sext <32 x i8> %i.oa to <32 x i16>
  %i.oc = add <32 x i16> %.sroa.22.1.i.epil.init, %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %i.nn, i64 128
  %i.oe = load <32 x i8>, ptr %i.od, align 32, !tbaa !23
  %i.of = sext <32 x i8> %i.oe to <32 x i16>
  %i.og = add <32 x i16> %.sroa.26.1.i.epil.init, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nn, i64 160
  %i.oi = load <32 x i8>, ptr %i.oh, align 32, !tbaa !23
  %i.oj = sext <32 x i8> %i.oi to <32 x i16>
  %i.ok = add <32 x i16> %.sroa.30.1.i.epil.init, %i.oj
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nn, i64 192
  %i.om = load <32 x i8>, ptr %i.ol, align 32, !tbaa !23
  %i.on = sext <32 x i8> %i.om to <32 x i16>
  %i.oo = add <32 x i16> %.sroa.34.1.i.epil.init, %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %i.nn, i64 224
  %i.oq = load <32 x i8>, ptr %i.op, align 32, !tbaa !23
  %i.or = sext <32 x i8> %i.oq to <32 x i16>
  %i.os = add <32 x i16> %.sroa.38.1.i.epil.init, %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nn, i64 256
  %i.ou = load <32 x i8>, ptr %i.ot, align 32, !tbaa !23
  %i.ov = sext <32 x i8> %i.ou to <32 x i16>
  %i.ow = add <32 x i16> %.sroa.42.1.i.epil.init, %i.ov
  %i.ox = getelementptr inbounds nuw i8, ptr %i.nn, i64 288
  %i.oy = load <32 x i8>, ptr %i.ox, align 32, !tbaa !23
  %i.oz = sext <32 x i8> %i.oy to <32 x i16>
  %i.pa = add <32 x i16> %.sroa.46.1.i.epil.init, %i.oz
  %i.pb = getelementptr inbounds nuw i8, ptr %i.nn, i64 320
  %i.pc = load <32 x i8>, ptr %i.pb, align 32, !tbaa !23
  %i.pd = sext <32 x i8> %i.pc to <32 x i16>
  %i.pe = add <32 x i16> %.sroa.50.1.i.epil.init, %i.pd
  %i.pf = getelementptr inbounds nuw i8, ptr %i.nn, i64 352
  %i.pg = load <32 x i8>, ptr %i.pf, align 32, !tbaa !23
  %i.ph = sext <32 x i8> %i.pg to <32 x i16>
  %i.pi = add <32 x i16> %.sroa.54.1.i.epil.init, %i.ph
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nn, i64 384
  %i.pk = load <32 x i8>, ptr %i.pj, align 32, !tbaa !23
  %i.pl = sext <32 x i8> %i.pk to <32 x i16>
  %i.pm = add <32 x i16> %.sroa.58.1.i.epil.init, %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %i.nn, i64 416
  %i.po = load <32 x i8>, ptr %i.pn, align 32, !tbaa !23
  %i.pp = sext <32 x i8> %i.po to <32 x i16>
  %i.pq = add <32 x i16> %.sroa.62.1.i.epil.init, %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.nn, i64 448
  %i.ps = load <32 x i8>, ptr %i.pr, align 32, !tbaa !23
  %i.pt = sext <32 x i8> %i.ps to <32 x i16>
  %i.pu = add <32 x i16> %.sroa.66.1.i.epil.init, %i.pt
  %i.pv = getelementptr inbounds nuw i8, ptr %i.nn, i64 480
  %i.pw = load <32 x i8>, ptr %i.pv, align 32, !tbaa !23
  %i.px = sext <32 x i8> %i.pw to <32 x i16>
  %i.py = add <32 x i16> %.sroa.70.1.i.epil.init, %i.px
  br label %.preheader69.split81.us.preheader.i

.preheader69.split81.us.preheader.i:              ; preds = %.preheader69.split81.us.preheader.i.unr-lcssa, %.preheader71.us.1.i.epil.preheader
  %.lcssa164 = phi <32 x i16> [ %i.db, %.preheader69.split81.us.preheader.i.unr-lcssa ], [ %i.nq, %.preheader71.us.1.i.epil.preheader ]
  %.lcssa163 = phi <32 x i16> [ %i.df, %.preheader69.split81.us.preheader.i.unr-lcssa ], [ %i.nu, %.preheader71.us.1.i.epil.preheader ]
  %.lcssa162 = phi <32 x i16> [ %i.dj, %.preheader69.split81.us.preheader.i.unr-lcssa ], [ %i.ny, %.preheader71.us.1.i.epil.preheader ]
  %.lcssa161 = phi <32 x i16> [ %i.dn, %.preheader69.split81.us.preheader.i.unr-lcssa ], [ %i.oc, %.preheader71.us.1.i.epil.preheader ]
  %.lcssa160 = phi <32 x i16> [ %i.dr, %.preheader69.split81.us.preheader.i.unr-lcssa ], [ %i.og, %.preheader71.us.1.i.epil.preheader ]
  %.lcssa159 = phi <32 x i16> [ %i.dv, %.preheader69.split81.us.preheader.i.unr-lcssa ], [ %i.ok, %.preheader71.us.1.i.epil.preheader ]
  %.lcssa158 = phi <32 x i16> [ %i.dz, %.preheader69.split81.us.preheader.i.unr-lcssa ], [ %i.oo, %.preheader71.us.1.i.epil.preheader ]
  %.lcssa157 = phi <32 x i16> [ %i.ed, %.preheader69.split81.us.preheader.i.unr-lcssa ], [ %i.os, %.preheader71.us.1.i.epil.preheader ]
  %.lcssa156 = phi <32 x i16> [ %i.eh, %.preheader69.split81.us.preheader.i.unr-lcssa ], [ %i.ow, %.preheader71.us.1.i.epil.preheader ]
  %.lcssa155 = phi <32 x i16> [ %i.el, %.preheader69.split81.us.preheader.i.unr-lcssa ], [ %i.pa, %.preheader71.us.1.i.epil.preheader ]
  %.lcssa154 = phi <32 x i16> [ %i.ep, %.preheader69.split81.us.preheader.i.unr-lcssa ], [ %i.pe, %.preheader71.us.1.i.epil.preheader ]
  %.lcssa153 = phi <32 x i16> [ %i.et, %.preheader69.split81.us.preheader.i.unr-lcssa ], [ %i.pi, %.preheader71.us.1.i.epil.preheader ]
  %.lcssa152 = phi <32 x i16> [ %i.ex, %.preheader69.split81.us.preheader.i.unr-lcssa ], [ %i.pm, %.preheader71.us.1.i.epil.preheader ]
  %.lcssa151 = phi <32 x i16> [ %i.fb, %.preheader69.split81.us.preheader.i.unr-lcssa ], [ %i.pq, %.preheader71.us.1.i.epil.preheader ]
  %.lcssa150 = phi <32 x i16> [ %i.ff, %.preheader69.split81.us.preheader.i.unr-lcssa ], [ %i.pu, %.preheader71.us.1.i.epil.preheader ]
  %.lcssa149 = phi <32 x i16> [ %i.fj, %.preheader69.split81.us.preheader.i.unr-lcssa ], [ %i.py, %.preheader71.us.1.i.epil.preheader ]
  %scevgep91.1.i = getelementptr i8, ptr %scevgep91.i, i64 1024
  store <32 x i16> %.lcssa164, ptr %scevgep91.1.i, align 64, !tbaa !23
  %.sroa.14.0.scevgep91.1.sroa_idx.i = getelementptr i8, ptr %scevgep91.i, i64 1088
  store <32 x i16> %.lcssa163, ptr %.sroa.14.0.scevgep91.1.sroa_idx.i, align 64, !tbaa !23
  %.sroa.18.0.scevgep91.1.sroa_idx.i = getelementptr i8, ptr %scevgep91.i, i64 1152
  store <32 x i16> %.lcssa162, ptr %.sroa.18.0.scevgep91.1.sroa_idx.i, align 64, !tbaa !23
  %.sroa.22.0.scevgep91.1.sroa_idx.i = getelementptr i8, ptr %scevgep91.i, i64 1216
  store <32 x i16> %.lcssa161, ptr %.sroa.22.0.scevgep91.1.sroa_idx.i, align 64, !tbaa !23
  %.sroa.26.0.scevgep91.1.sroa_idx.i = getelementptr i8, ptr %scevgep91.i, i64 1280
  store <32 x i16> %.lcssa160, ptr %.sroa.26.0.scevgep91.1.sroa_idx.i, align 64, !tbaa !23
  %.sroa.30.0.scevgep91.1.sroa_idx.i = getelementptr i8, ptr %scevgep91.i, i64 1344
  store <32 x i16> %.lcssa159, ptr %.sroa.30.0.scevgep91.1.sroa_idx.i, align 64, !tbaa !23
  %.sroa.34.0.scevgep91.1.sroa_idx.i = getelementptr i8, ptr %scevgep91.i, i64 1408
  store <32 x i16> %.lcssa158, ptr %.sroa.34.0.scevgep91.1.sroa_idx.i, align 64, !tbaa !23
  %.sroa.38.0.scevgep91.1.sroa_idx.i = getelementptr i8, ptr %scevgep91.i, i64 1472
  store <32 x i16> %.lcssa157, ptr %.sroa.38.0.scevgep91.1.sroa_idx.i, align 64, !tbaa !23
  %.sroa.42.0.scevgep91.1.sroa_idx.i = getelementptr i8, ptr %scevgep91.i, i64 1536
  store <32 x i16> %.lcssa156, ptr %.sroa.42.0.scevgep91.1.sroa_idx.i, align 64, !tbaa !23
  %.sroa.46.0.scevgep91.1.sroa_idx.i = getelementptr i8, ptr %scevgep91.i, i64 1600
  store <32 x i16> %.lcssa155, ptr %.sroa.46.0.scevgep91.1.sroa_idx.i, align 64, !tbaa !23
  %.sroa.50.0.scevgep91.1.sroa_idx.i = getelementptr i8, ptr %scevgep91.i, i64 1664
  store <32 x i16> %.lcssa154, ptr %.sroa.50.0.scevgep91.1.sroa_idx.i, align 64, !tbaa !23
  %.sroa.54.0.scevgep91.1.sroa_idx.i = getelementptr i8, ptr %scevgep91.i, i64 1728
  store <32 x i16> %.lcssa153, ptr %.sroa.54.0.scevgep91.1.sroa_idx.i, align 64, !tbaa !23
  %.sroa.58.0.scevgep91.1.sroa_idx.i = getelementptr i8, ptr %scevgep91.i, i64 1792
  store <32 x i16> %.lcssa152, ptr %.sroa.58.0.scevgep91.1.sroa_idx.i, align 64, !tbaa !23
  %.sroa.62.0.scevgep91.1.sroa_idx.i = getelementptr i8, ptr %scevgep91.i, i64 1856
  store <32 x i16> %.lcssa151, ptr %.sroa.62.0.scevgep91.1.sroa_idx.i, align 64, !tbaa !23
  %.sroa.66.0.scevgep91.1.sroa_idx.i = getelementptr i8, ptr %scevgep91.i, i64 1920
  store <32 x i16> %.lcssa150, ptr %.sroa.66.0.scevgep91.1.sroa_idx.i, align 64, !tbaa !23
  %.sroa.70.0.scevgep91.1.sroa_idx.i = getelementptr i8, ptr %scevgep91.i, i64 1984
  store <32 x i16> %.lcssa149, ptr %.sroa.70.0.scevgep91.1.sroa_idx.i, align 64, !tbaa !23
  %i.pz = getelementptr inbounds nuw i8, ptr %3, i64 128632832 ; 9 uses
  %xtraiter220 = and i64 %i.x, 7                  ; 3 uses
  %i.qa = icmp ult i64 %i.ab, 7
  br i1 %i.qa, label %.preheader68.us.i.epil.preheader, label %.preheader69.split81.us.preheader.i.new

.preheader69.split81.us.preheader.i.new:          ; preds = %.preheader69.split81.us.preheader.i
  %unroll_iter224 = and i64 %i.x, 2147483640
  br label %.preheader68.us.i

.preheader68.us.i:                                ; preds = %.preheader68.us.i, %.preheader69.split81.us.preheader.i.new
  %indvars.iv97.i = phi i64 [ 0, %.preheader69.split81.us.preheader.i.new ], [ %indvars.iv.next98.i.7, %.preheader68.us.i ] ; 9 uses
  %i.qb = phi <8 x i32> [ zeroinitializer, %.preheader69.split81.us.preheader.i.new ], [ %i.se, %.preheader68.us.i ]
  %niter225 = phi i64 [ 0, %.preheader69.split81.us.preheader.i.new ], [ %niter225.next.7, %.preheader68.us.i ]
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv97.i
  %i.qd = load i32, ptr %i.qc, align 8, !tbaa !31
  %i.qe = zext i32 %i.qd to i64
  %.idx.us.i = shl nuw nsw i64 %i.qe, 5
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pz, i64 %.idx.us.i
  %i.qg = load <8 x i32>, ptr %i.qf, align 32, !tbaa !23
  %i.qh = add <8 x i32> %i.qg, %i.qb
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv97.i
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !31
  %i.ql = zext i32 %i.qk to i64
  %.idx.us.i.1 = shl nuw nsw i64 %i.ql, 5
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pz, i64 %.idx.us.i.1
  %i.qn = load <8 x i32>, ptr %i.qm, align 32, !tbaa !23
  %i.qo = add <8 x i32> %i.qn, %i.qh
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv97.i
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !31
  %i.qs = zext i32 %i.qr to i64
  %.idx.us.i.2 = shl nuw nsw i64 %i.qs, 5
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pz, i64 %.idx.us.i.2
  %i.qu = load <8 x i32>, ptr %i.qt, align 32, !tbaa !23
  %i.qv = add <8 x i32> %i.qu, %i.qo
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv97.i
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 12
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !31
  %i.qz = zext i32 %i.qy to i64
  %.idx.us.i.3 = shl nuw nsw i64 %i.qz, 5
  %i.ra = getelementptr inbounds nuw i8, ptr %i.pz, i64 %.idx.us.i.3
  %i.rb = load <8 x i32>, ptr %i.ra, align 32, !tbaa !23
  %i.rc = add <8 x i32> %i.rb, %i.qv
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv97.i
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !31
  %i.rg = zext i32 %i.rf to i64
  %.idx.us.i.4 = shl nuw nsw i64 %i.rg, 5
  %i.rh = getelementptr inbounds nuw i8, ptr %i.pz, i64 %.idx.us.i.4
  %i.ri = load <8 x i32>, ptr %i.rh, align 32, !tbaa !23
  %i.rj = add <8 x i32> %i.ri, %i.rc
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv97.i
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 20
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !31
  %i.rn = zext i32 %i.rm to i64
  %.idx.us.i.5 = shl nuw nsw i64 %i.rn, 5
  %i.ro = getelementptr inbounds nuw i8, ptr %i.pz, i64 %.idx.us.i.5
  %i.rp = load <8 x i32>, ptr %i.ro, align 32, !tbaa !23
  %i.rq = add <8 x i32> %i.rp, %i.rj
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv97.i
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 24
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !31
  %i.ru = zext i32 %i.rt to i64
  %.idx.us.i.6 = shl nuw nsw i64 %i.ru, 5
  %i.rv = getelementptr inbounds nuw i8, ptr %i.pz, i64 %.idx.us.i.6
  %i.rw = load <8 x i32>, ptr %i.rv, align 32, !tbaa !23
  %i.rx = add <8 x i32> %i.rw, %i.rq
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv97.i
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 28
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !31
  %i.sb = zext i32 %i.sa to i64
  %.idx.us.i.7 = shl nuw nsw i64 %i.sb, 5
  %i.sc = getelementptr inbounds nuw i8, ptr %i.pz, i64 %.idx.us.i.7
  %i.sd = load <8 x i32>, ptr %i.sc, align 32, !tbaa !23
  %i.se = add <8 x i32> %i.sd, %i.rx              ; 3 uses
  %indvars.iv.next98.i.7 = add nuw nsw i64 %indvars.iv97.i, 8 ; 2 uses
  %niter225.next.7 = add i64 %niter225, 8         ; 2 uses
  %niter225.ncmp.7 = icmp eq i64 %niter225.next.7, %unroll_iter224
  br i1 %niter225.ncmp.7, label %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_131update_threats_accumulator_fullILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11FullThreatsEEE.exit.loopexit.unr-lcssa, label %.preheader68.us.i, !llvm.loop !49
end_hunk_1
begin_hunk_2_@_ZN9Stockfish4Eval4NNUE16AccumulatorStack26forward_update_incrementalINS1_8Features11FullThreatsELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm:bb.a
  %5 = alloca %"class.Stockfish::ValueList.36", align 8 ; 5 uses
  %6 = alloca %"class.Stockfish::ValueList.36", align 8 ; 5 uses
  %7 = alloca %"struct.Stockfish::Eval::NNUE::(anonymous namespace)::AccumulatorUpdateContext.37", align 8 ; 7 uses
  %8 = alloca %"struct.Stockfish::Eval::NNUE::Features::FullThreats::FusedUpdateData", align 8 ; 6 uses
  %9 = alloca %"class.Stockfish::ValueList.36", align 8 ; 6 uses
  %10 = alloca %"class.Stockfish::ValueList.36", align 8 ; 6 uses
  %11 = alloca %"struct.Stockfish::Eval::NNUE::(anonymous namespace)::AccumulatorUpdateContext.37", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.b = zext i8 %1 to i64                        ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22
  %i.g = and i64 %i.f, %i.d
  %i.h = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.g, i1 true)
  %i.i = trunc nuw nsw i64 %i.h to i8             ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2529280 ; 2 uses
  %.035 = add i64 %4, 1                           ; 2 uses
  %i.k = load i64, ptr %i.j, align 64, !tbaa !11  ; 2 uses
  %i.l = icmp ult i64 %.035, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1217216 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 512
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 512
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 512
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.y = phi i64 [ %i.k, %.lr.ph ], [ %i.av, %bb.f ]
  %.037 = phi i64 [ %.035, %.lr.ph ], [ %.0, %bb.f ] ; 3 uses
  %.0.in36 = phi i64 [ %4, %.lr.ph ], [ %.3, %bb.f ] ; 3 uses
  %i.z = add i64 %.0.in36, 2                      ; 4 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  br i1 %i.aa, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [4928 x i8], ptr %0, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 4867
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !85  ; 3 uses
  %.not = icmp eq i8 %i.ad, 64
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw [5312 x i8], ptr %i.m, i64 %.037 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 5272
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !95
  %i.ah = zext nneg i8 %i.ad to i64
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not32 = icmp eq i64 %i.aj, 0
  br i1 %.not32, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw [5312 x i8], ptr %i.m, i64 %i.z ; 3 uses
  %i.al = getelementptr inbounds nuw [5312 x i8], ptr %i.m, i64 %.0.in36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %8, i8 0, i64 16, i1 false)
  store i8 %i.ad, ptr %i.n, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store i64 0, ptr %i.o, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store i64 0, ptr %i.p, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 4864
  call void @_ZN9Stockfish4Eval4NNUE8Features11FullThreats22append_changed_indicesENS_5ColorENS_6SquareERKNS_12DirtyThreatsERNS_9ValueListIjLm128EEESB_PNS3_15FusedUpdateDataEb(i8 noundef zeroext %1, i8 noundef zeroext %i.i, ptr noundef nonnull align 8 dereferenceable(416) %i.am, ptr noundef nonnull align 8 dereferenceable(520) %9, ptr noundef nonnull align 8 dereferenceable(520) %10, ptr noundef nonnull %8, i1 noundef zeroext true) #11
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4864
  call void @_ZN9Stockfish4Eval4NNUE8Features11FullThreats22append_changed_indicesENS_5ColorENS_6SquareERKNS_12DirtyThreatsERNS_9ValueListIjLm128EEESB_PNS3_15FusedUpdateDataEb(i8 noundef zeroext %1, i8 noundef zeroext %i.i, ptr noundef nonnull align 8 dereferenceable(416) %i.an, ptr noundef nonnull align 8 dereferenceable(520) %9, ptr noundef nonnull align 8 dereferenceable(520) %10, ptr noundef nonnull %8, i1 noundef zeroext false) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  store i8 %1, ptr %11, align 8, !tbaa !51, !alias.scope !106
  store ptr %3, ptr %i.q, align 8, !tbaa !60, !alias.scope !106
  store ptr %i.al, ptr %i.r, align 8, !tbaa !61, !alias.scope !106
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !61, !alias.scope !106
  call fastcc void @_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_124AccumulatorUpdateContextINS1_8Features11FullThreatsELj1024EE5applyERKNS_9ValueListIjLm128EEESA_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(520) %10, ptr noundef nonnull align 8 dereferenceable(520) %9)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4160
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.b
  store i8 1, ptr %i.ap, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.f

.thread:                                          ; preds = %bb.c, %bb.d, %bb.b
  %i.aq = getelementptr inbounds nuw [5312 x i8], ptr %i.m, i64 %.037 ; 3 uses
  %i.ar = getelementptr inbounds nuw [5312 x i8], ptr %i.m, i64 %.0.in36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i64 0, ptr %i.t, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store i64 0, ptr %i.u, align 8, !tbaa !46
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4864
  call void @_ZN9Stockfish4Eval4NNUE8Features11FullThreats22append_changed_indicesENS_5ColorENS_6SquareERKNS_12DirtyThreatsERNS_9ValueListIjLm128EEESB_PNS3_15FusedUpdateDataEb(i8 noundef zeroext %1, i8 noundef zeroext %i.i, ptr noundef nonnull align 8 dereferenceable(416) %i.as, ptr noundef nonnull align 8 dereferenceable(520) %5, ptr noundef nonnull align 8 dereferenceable(520) %6, ptr noundef null, i1 noundef zeroext false) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store i8 %1, ptr %7, align 8, !tbaa !51, !alias.scope !109
  store ptr %3, ptr %i.v, align 8, !tbaa !60, !alias.scope !109
  store ptr %i.ar, ptr %i.w, align 8, !tbaa !61, !alias.scope !109
  store ptr %i.aq, ptr %i.x, align 8, !tbaa !61, !alias.scope !109
  call fastcc void @_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_124AccumulatorUpdateContextINS1_8Features11FullThreatsELj1024EE5applyERKNS_9ValueListIjLm128EEESA_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(520) %6, ptr noundef nonnull align 8 dereferenceable(520) %5)
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4160
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.b
  store i8 1, ptr %i.au, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %.3 = phi i64 [ %.037, %.thread ], [ %i.z, %bb.e ] ; 2 uses
  %.0 = add nuw i64 %.3, 1                        ; 2 uses
  %i.av = load i64, ptr %i.j, align 64, !tbaa !11 ; 2 uses
  %i.aw = icmp ult i64 %.0, %i.av
  br i1 %i.aw, label %bb.b, label %._crit_edge, !llvm.loop !112
}

declare noundef zeroext i1 @_ZN9Stockfish4Eval4NNUE8Features11FullThreats16requires_refreshERKNS_12DirtyThreatsENS_5ColorE(ptr noundef nonnull align 8 dereferenceable(416), i8 noundef zeroext) local_unnamed_addr #6

declare void @_ZN9Stockfish4Eval4NNUE8Features11FullThreats22append_changed_indicesENS_5ColorENS_6SquareERKNS_12DirtyThreatsERNS_9ValueListIjLm128EEESB_PNS3_15FusedUpdateDataEb(i8 noundef zeroext, i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(416), ptr noundef nonnull align 8 dereferenceable(520), ptr noundef nonnull align 8 dereferenceable(520), ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_124AccumulatorUpdateContextINS1_8Features11FullThreatsELj1024EE5applyERKNS_9ValueListIjLm128EEESA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %2) unnamed_addr #8 align 2 !type !113 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115, !nonnull !21, !align !116 ; 2 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !51
  %i.d = zext i8 %i.c to i64                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117, !nonnull !21, !align !116 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !118, !nonnull !21, !align !116
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 46139392
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 512 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.l = shl nuw nsw i64 %i.d, 11
  br label %.preheader112

.preheader109:                                    ; preds = %.preheader110
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4096
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.d
  %i.o = load <8 x i32>, ptr %i.n, align 32, !tbaa !23 ; 3 uses
  %i.p = load i64, ptr %i.j, align 8, !tbaa !46   ; 4 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph127, label %.preheader106

.preheader112:                                    ; preds = %bb.a, %.preheader110
  %exitcond149.not = phi i1 [ false, %bb.a ], [ true, %.preheader110 ]
  %indvar = phi i64 [ 0, %bb.a ], [ 1024, %.preheader110 ]
  %.090125 = phi ptr [ %i.i, %bb.a ], [ %i.ko, %.preheader110 ] ; 7 uses
  %i.s = or disjoint i64 %i.l, %indvar            ; 2 uses
  %scevgep144 = getelementptr i8, ptr %i.f, i64 %i.s ; 16 uses
  %scevgep = getelementptr nuw i8, ptr %i.b, i64 %i.s ; 16 uses
  %.sroa.0.0.copyload = load <32 x i16>, ptr %scevgep, align 64, !tbaa !23 ; 3 uses
  %.sroa.8.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 64
  %.sroa.8.0.copyload = load <32 x i16>, ptr %.sroa.8.0.scevgep.sroa_idx, align 64, !tbaa !23 ; 3 uses
  %.sroa.12.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 128
  %.sroa.12.0.copyload = load <32 x i16>, ptr %.sroa.12.0.scevgep.sroa_idx, align 64, !tbaa !23 ; 3 uses
  %.sroa.16.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 192
  %.sroa.16.0.copyload = load <32 x i16>, ptr %.sroa.16.0.scevgep.sroa_idx, align 64, !tbaa !23 ; 3 uses
  %.sroa.20.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 256
  %.sroa.20.0.copyload = load <32 x i16>, ptr %.sroa.20.0.scevgep.sroa_idx, align 64, !tbaa !23 ; 3 uses
  %.sroa.24.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 320
  %.sroa.24.0.copyload = load <32 x i16>, ptr %.sroa.24.0.scevgep.sroa_idx, align 64, !tbaa !23 ; 3 uses
  %.sroa.28.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 384
  %.sroa.28.0.copyload = load <32 x i16>, ptr %.sroa.28.0.scevgep.sroa_idx, align 64, !tbaa !23 ; 3 uses
  %.sroa.32.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 448
  %.sroa.32.0.copyload = load <32 x i16>, ptr %.sroa.32.0.scevgep.sroa_idx, align 64, !tbaa !23 ; 3 uses
  %.sroa.36.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 512
  %.sroa.36.0.copyload = load <32 x i16>, ptr %.sroa.36.0.scevgep.sroa_idx, align 64, !tbaa !23 ; 3 uses
  %.sroa.40.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 576
  %.sroa.40.0.copyload = load <32 x i16>, ptr %.sroa.40.0.scevgep.sroa_idx, align 64, !tbaa !23 ; 3 uses
  %.sroa.44.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 640
  %.sroa.44.0.copyload = load <32 x i16>, ptr %.sroa.44.0.scevgep.sroa_idx, align 64, !tbaa !23 ; 3 uses
  %.sroa.48.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 704
  %.sroa.48.0.copyload = load <32 x i16>, ptr %.sroa.48.0.scevgep.sroa_idx, align 64, !tbaa !23 ; 3 uses
  %.sroa.52.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 768
  %.sroa.52.0.copyload = load <32 x i16>, ptr %.sroa.52.0.scevgep.sroa_idx, align 64, !tbaa !23 ; 3 uses
  %.sroa.56.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 832
  %.sroa.56.0.copyload = load <32 x i16>, ptr %.sroa.56.0.scevgep.sroa_idx, align 64, !tbaa !23 ; 3 uses
  %.sroa.60.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 896
  %.sroa.60.0.copyload = load <32 x i16>, ptr %.sroa.60.0.scevgep.sroa_idx, align 64, !tbaa !23 ; 3 uses
  %.sroa.64.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 960
  %.sroa.64.0.copyload = load <32 x i16>, ptr %.sroa.64.0.scevgep.sroa_idx, align 64, !tbaa !23 ; 3 uses
  %i.t = load i64, ptr %i.j, align 8, !tbaa !46   ; 5 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.preheader, label %.preheader111

.lr.ph.preheader:                                 ; preds = %.preheader112
  %wide.trip.count = and i64 %i.t, 2147483647
  %xtraiter = and i64 %i.t, 1
  %i.w = icmp eq i64 %wide.trip.count, 1
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.t, 2147483646
  br label %.lr.ph

.preheader111.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader111, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader111.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.64.1.epil.init = phi <32 x i16> [ %.sroa.64.0.copyload, %.lr.ph.preheader ], [ %i.hx, %.preheader111.loopexit.unr-lcssa ]
  %.sroa.60.1.epil.init = phi <32 x i16> [ %.sroa.60.0.copyload, %.lr.ph.preheader ], [ %i.hs, %.preheader111.loopexit.unr-lcssa ]
  %.sroa.56.1.epil.init = phi <32 x i16> [ %.sroa.56.0.copyload, %.lr.ph.preheader ], [ %i.hn, %.preheader111.loopexit.unr-lcssa ]
  %.sroa.52.1.epil.init = phi <32 x i16> [ %.sroa.52.0.copyload, %.lr.ph.preheader ], [ %i.hi, %.preheader111.loopexit.unr-lcssa ]
  %.sroa.48.1.epil.init = phi <32 x i16> [ %.sroa.48.0.copyload, %.lr.ph.preheader ], [ %i.hd, %.preheader111.loopexit.unr-lcssa ]
  %.sroa.44.1.epil.init = phi <32 x i16> [ %.sroa.44.0.copyload, %.lr.ph.preheader ], [ %i.gy, %.preheader111.loopexit.unr-lcssa ]
  %.sroa.40.1.epil.init = phi <32 x i16> [ %.sroa.40.0.copyload, %.lr.ph.preheader ], [ %i.gt, %.preheader111.loopexit.unr-lcssa ]
  %.sroa.36.1.epil.init = phi <32 x i16> [ %.sroa.36.0.copyload, %.lr.ph.preheader ], [ %i.go, %.preheader111.loopexit.unr-lcssa ]
  %.sroa.32.1.epil.init = phi <32 x i16> [ %.sroa.32.0.copyload, %.lr.ph.preheader ], [ %i.gj, %.preheader111.loopexit.unr-lcssa ]
  %.sroa.28.1.epil.init = phi <32 x i16> [ %.sroa.28.0.copyload, %.lr.ph.preheader ], [ %i.ge, %.preheader111.loopexit.unr-lcssa ]
  %.sroa.24.1.epil.init = phi <32 x i16> [ %.sroa.24.0.copyload, %.lr.ph.preheader ], [ %i.fz, %.preheader111.loopexit.unr-lcssa ]
  %.sroa.20.1.epil.init = phi <32 x i16> [ %.sroa.20.0.copyload, %.lr.ph.preheader ], [ %i.fu, %.preheader111.loopexit.unr-lcssa ]
  %.sroa.16.1.epil.init = phi <32 x i16> [ %.sroa.16.0.copyload, %.lr.ph.preheader ], [ %i.fp, %.preheader111.loopexit.unr-lcssa ]
  %.sroa.12.1.epil.init = phi <32 x i16> [ %.sroa.12.0.copyload, %.lr.ph.preheader ], [ %i.fk, %.preheader111.loopexit.unr-lcssa ]
  %.sroa.8.1.epil.init = phi <32 x i16> [ %.sroa.8.0.copyload, %.lr.ph.preheader ], [ %i.ff, %.preheader111.loopexit.unr-lcssa ]
  %.sroa.0.1.epil.init = phi <32 x i16> [ %.sroa.0.0.copyload, %.lr.ph.preheader ], [ %i.fa, %.preheader111.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader111.loopexit.unr-lcssa ]
  %lcmp.mod310 = trunc i64 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod310)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.y = load i32, ptr %i.x, align 4, !tbaa !31
  %i.z = zext i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 10
  %i.ab = getelementptr inbounds nuw i8, ptr %.090125, i64 %i.aa ; 16 uses
  %i.ac = load <32 x i8>, ptr %i.ab, align 32, !tbaa !23
  %i.ad = sext <32 x i8> %i.ac to <32 x i16>
  %i.ae = sub <32 x i16> %.sroa.0.1.epil.init, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ag = load <32 x i8>, ptr %i.af, align 32, !tbaa !23
  %i.ah = sext <32 x i8> %i.ag to <32 x i16>
  %i.ai = sub <32 x i16> %.sroa.8.1.epil.init, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ak = load <32 x i8>, ptr %i.aj, align 32, !tbaa !23
  %i.al = sext <32 x i8> %i.ak to <32 x i16>
  %i.am = sub <32 x i16> %.sroa.12.1.epil.init, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ao = load <32 x i8>, ptr %i.an, align 32, !tbaa !23
  %i.ap = sext <32 x i8> %i.ao to <32 x i16>
  %i.aq = sub <32 x i16> %.sroa.16.1.epil.init, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.as = load <32 x i8>, ptr %i.ar, align 32, !tbaa !23
  %i.at = sext <32 x i8> %i.as to <32 x i16>
  %i.au = sub <32 x i16> %.sroa.20.1.epil.init, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %i.aw = load <32 x i8>, ptr %i.av, align 32, !tbaa !23
  %i.ax = sext <32 x i8> %i.aw to <32 x i16>
  %i.ay = sub <32 x i16> %.sroa.24.1.epil.init, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.ba = load <32 x i8>, ptr %i.az, align 32, !tbaa !23
  %i.bb = sext <32 x i8> %i.ba to <32 x i16>
  %i.bc = sub <32 x i16> %.sroa.28.1.epil.init, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 224
  %i.be = load <32 x i8>, ptr %i.bd, align 32, !tbaa !23
  %i.bf = sext <32 x i8> %i.be to <32 x i16>
  %i.bg = sub <32 x i16> %.sroa.32.1.epil.init, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 256
  %i.bi = load <32 x i8>, ptr %i.bh, align 32, !tbaa !23
  %i.bj = sext <32 x i8> %i.bi to <32 x i16>
  %i.bk = sub <32 x i16> %.sroa.36.1.epil.init, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 288
  %i.bm = load <32 x i8>, ptr %i.bl, align 32, !tbaa !23
  %i.bn = sext <32 x i8> %i.bm to <32 x i16>
  %i.bo = sub <32 x i16> %.sroa.40.1.epil.init, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 320
  %i.bq = load <32 x i8>, ptr %i.bp, align 32, !tbaa !23
  %i.br = sext <32 x i8> %i.bq to <32 x i16>
  %i.bs = sub <32 x i16> %.sroa.44.1.epil.init, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 352
  %i.bu = load <32 x i8>, ptr %i.bt, align 32, !tbaa !23
  %i.bv = sext <32 x i8> %i.bu to <32 x i16>
  %i.bw = sub <32 x i16> %.sroa.48.1.epil.init, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ab, i64 384
  %i.by = load <32 x i8>, ptr %i.bx, align 32, !tbaa !23
  %i.bz = sext <32 x i8> %i.by to <32 x i16>
  %i.ca = sub <32 x i16> %.sroa.52.1.epil.init, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ab, i64 416
  %i.cc = load <32 x i8>, ptr %i.cb, align 32, !tbaa !23
  %i.cd = sext <32 x i8> %i.cc to <32 x i16>
  %i.ce = sub <32 x i16> %.sroa.56.1.epil.init, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ab, i64 448
  %i.cg = load <32 x i8>, ptr %i.cf, align 32, !tbaa !23
  %i.ch = sext <32 x i8> %i.cg to <32 x i16>
  %i.ci = sub <32 x i16> %.sroa.60.1.epil.init, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ab, i64 480
  %i.ck = load <32 x i8>, ptr %i.cj, align 32, !tbaa !23
  %i.cl = sext <32 x i8> %i.ck to <32 x i16>
  %i.cm = sub <32 x i16> %.sroa.64.1.epil.init, %i.cl
  br label %.preheader111

.preheader111:                                    ; preds = %.lr.ph.epil.preheader, %.preheader111.loopexit.unr-lcssa, %.preheader112
  %.sroa.64.0 = phi <32 x i16> [ %.sroa.64.0.copyload, %.preheader112 ], [ %i.hx, %.preheader111.loopexit.unr-lcssa ], [ %i.cm, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.60.0 = phi <32 x i16> [ %.sroa.60.0.copyload, %.preheader112 ], [ %i.hs, %.preheader111.loopexit.unr-lcssa ], [ %i.ci, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.56.0 = phi <32 x i16> [ %.sroa.56.0.copyload, %.preheader112 ], [ %i.hn, %.preheader111.loopexit.unr-lcssa ], [ %i.ce, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.52.0 = phi <32 x i16> [ %.sroa.52.0.copyload, %.preheader112 ], [ %i.hi, %.preheader111.loopexit.unr-lcssa ], [ %i.ca, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.48.0 = phi <32 x i16> [ %.sroa.48.0.copyload, %.preheader112 ], [ %i.hd, %.preheader111.loopexit.unr-lcssa ], [ %i.bw, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.44.0 = phi <32 x i16> [ %.sroa.44.0.copyload, %.preheader112 ], [ %i.gy, %.preheader111.loopexit.unr-lcssa ], [ %i.bs, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.40.0 = phi <32 x i16> [ %.sroa.40.0.copyload, %.preheader112 ], [ %i.gt, %.preheader111.loopexit.unr-lcssa ], [ %i.bo, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.36.0 = phi <32 x i16> [ %.sroa.36.0.copyload, %.preheader112 ], [ %i.go, %.preheader111.loopexit.unr-lcssa ], [ %i.bk, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.32.0 = phi <32 x i16> [ %.sroa.32.0.copyload, %.preheader112 ], [ %i.gj, %.preheader111.loopexit.unr-lcssa ], [ %i.bg, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.28.0 = phi <32 x i16> [ %.sroa.28.0.copyload, %.preheader112 ], [ %i.ge, %.preheader111.loopexit.unr-lcssa ], [ %i.bc, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.24.0 = phi <32 x i16> [ %.sroa.24.0.copyload, %.preheader112 ], [ %i.fz, %.preheader111.loopexit.unr-lcssa ], [ %i.ay, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.20.0 = phi <32 x i16> [ %.sroa.20.0.copyload, %.preheader112 ], [ %i.fu, %.preheader111.loopexit.unr-lcssa ], [ %i.au, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.16.0 = phi <32 x i16> [ %.sroa.16.0.copyload, %.preheader112 ], [ %i.fp, %.preheader111.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.12.0 = phi <32 x i16> [ %.sroa.12.0.copyload, %.preheader112 ], [ %i.fk, %.preheader111.loopexit.unr-lcssa ], [ %i.am, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.8.0 = phi <32 x i16> [ %.sroa.8.0.copyload, %.preheader112 ], [ %i.ff, %.preheader111.loopexit.unr-lcssa ], [ %i.ai, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.0.0 = phi <32 x i16> [ %.sroa.0.0.copyload, %.preheader112 ], [ %i.fa, %.preheader111.loopexit.unr-lcssa ], [ %i.ae, %.lr.ph.epil.preheader ] ; 3 uses
  %i.cn = load i64, ptr %i.k, align 8, !tbaa !46  ; 5 uses
  %i.co = trunc i64 %i.cn to i32
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph122.preheader, label %.preheader110

.lr.ph122.preheader:                              ; preds = %.preheader111
  %wide.trip.count142 = and i64 %i.cn, 2147483647
  %xtraiter311 = and i64 %i.cn, 1
  %i.cq = icmp eq i64 %wide.trip.count142, 1
  br i1 %i.cq, label %.lr.ph122.epil.preheader, label %.lr.ph122.preheader.new

.lr.ph122.preheader.new:                          ; preds = %.lr.ph122.preheader
  %unroll_iter330 = and i64 %i.cn, 2147483646
  br label %.lr.ph122

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.64.1 = phi <32 x i16> [ %.sroa.64.0.copyload, %.lr.ph.preheader.new ], [ %i.hx, %.lr.ph ]
  %.sroa.60.1 = phi <32 x i16> [ %.sroa.60.0.copyload, %.lr.ph.preheader.new ], [ %i.hs, %.lr.ph ]
  %.sroa.56.1 = phi <32 x i16> [ %.sroa.56.0.copyload, %.lr.ph.preheader.new ], [ %i.hn, %.lr.ph ]
  %.sroa.52.1 = phi <32 x i16> [ %.sroa.52.0.copyload, %.lr.ph.preheader.new ], [ %i.hi, %.lr.ph ]
  %.sroa.48.1 = phi <32 x i16> [ %.sroa.48.0.copyload, %.lr.ph.preheader.new ], [ %i.hd, %.lr.ph ]
  %.sroa.44.1 = phi <32 x i16> [ %.sroa.44.0.copyload, %.lr.ph.preheader.new ], [ %i.gy, %.lr.ph ]
  %.sroa.40.1 = phi <32 x i16> [ %.sroa.40.0.copyload, %.lr.ph.preheader.new ], [ %i.gt, %.lr.ph ]
  %.sroa.36.1 = phi <32 x i16> [ %.sroa.36.0.copyload, %.lr.ph.preheader.new ], [ %i.go, %.lr.ph ]
  %.sroa.32.1 = phi <32 x i16> [ %.sroa.32.0.copyload, %.lr.ph.preheader.new ], [ %i.gj, %.lr.ph ]
  %.sroa.28.1 = phi <32 x i16> [ %.sroa.28.0.copyload, %.lr.ph.preheader.new ], [ %i.ge, %.lr.ph ]
  %.sroa.24.1 = phi <32 x i16> [ %.sroa.24.0.copyload, %.lr.ph.preheader.new ], [ %i.fz, %.lr.ph ]
  %.sroa.20.1 = phi <32 x i16> [ %.sroa.20.0.copyload, %.lr.ph.preheader.new ], [ %i.fu, %.lr.ph ]
  %.sroa.16.1 = phi <32 x i16> [ %.sroa.16.0.copyload, %.lr.ph.preheader.new ], [ %i.fp, %.lr.ph ]
  %.sroa.12.1 = phi <32 x i16> [ %.sroa.12.0.copyload, %.lr.ph.preheader.new ], [ %i.fk, %.lr.ph ]
  %.sroa.8.1 = phi <32 x i16> [ %.sroa.8.0.copyload, %.lr.ph.preheader.new ], [ %i.ff, %.lr.ph ]
  %.sroa.0.1 = phi <32 x i16> [ %.sroa.0.0.copyload, %.lr.ph.preheader.new ], [ %i.fa, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !31
  %i.ct = zext i32 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 10
  %i.cv = getelementptr inbounds nuw i8, ptr %.090125, i64 %i.cu ; 16 uses
  %i.cw = load <32 x i8>, ptr %i.cv, align 32, !tbaa !23
  %i.cx = sext <32 x i8> %i.cw to <32 x i16>
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cz = load <32 x i8>, ptr %i.cy, align 32, !tbaa !23
  %i.da = sext <32 x i8> %i.cz to <32 x i16>
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.dc = load <32 x i8>, ptr %i.db, align 32, !tbaa !23
  %i.dd = sext <32 x i8> %i.dc to <32 x i16>
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 96
  %i.df = load <32 x i8>, ptr %i.de, align 32, !tbaa !23
  %i.dg = sext <32 x i8> %i.df to <32 x i16>
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 128
  %i.di = load <32 x i8>, ptr %i.dh, align 32, !tbaa !23
  %i.dj = sext <32 x i8> %i.di to <32 x i16>
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cv, i64 160
  %i.dl = load <32 x i8>, ptr %i.dk, align 32, !tbaa !23
  %i.dm = sext <32 x i8> %i.dl to <32 x i16>
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cv, i64 192
  %i.do = load <32 x i8>, ptr %i.dn, align 32, !tbaa !23
  %i.dp = sext <32 x i8> %i.do to <32 x i16>
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cv, i64 224
  %i.dr = load <32 x i8>, ptr %i.dq, align 32, !tbaa !23
  %i.ds = sext <32 x i8> %i.dr to <32 x i16>
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cv, i64 256
  %i.du = load <32 x i8>, ptr %i.dt, align 32, !tbaa !23
  %i.dv = sext <32 x i8> %i.du to <32 x i16>
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cv, i64 288
  %i.dx = load <32 x i8>, ptr %i.dw, align 32, !tbaa !23
  %i.dy = sext <32 x i8> %i.dx to <32 x i16>
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cv, i64 320
  %i.ea = load <32 x i8>, ptr %i.dz, align 32, !tbaa !23
  %i.eb = sext <32 x i8> %i.ea to <32 x i16>
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cv, i64 352
  %i.ed = load <32 x i8>, ptr %i.ec, align 32, !tbaa !23
  %i.ee = sext <32 x i8> %i.ed to <32 x i16>
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cv, i64 384
  %i.eg = load <32 x i8>, ptr %i.ef, align 32, !tbaa !23
  %i.eh = sext <32 x i8> %i.eg to <32 x i16>
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cv, i64 416
  %i.ej = load <32 x i8>, ptr %i.ei, align 32, !tbaa !23
  %i.ek = sext <32 x i8> %i.ej to <32 x i16>
  %i.el = getelementptr inbounds nuw i8, ptr %i.cv, i64 448
  %i.em = load <32 x i8>, ptr %i.el, align 32, !tbaa !23
  %i.en = sext <32 x i8> %i.em to <32 x i16>
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cv, i64 480
  %i.ep = load <32 x i8>, ptr %i.eo, align 32, !tbaa !23
  %i.eq = sext <32 x i8> %i.ep to <32 x i16>
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !31
  %i.eu = zext i32 %i.et to i64
  %i.ev = shl nuw nsw i64 %i.eu, 10
  %i.ew = getelementptr inbounds nuw i8, ptr %.090125, i64 %i.ev ; 16 uses
  %i.ex = load <32 x i8>, ptr %i.ew, align 32, !tbaa !23
  %i.ey = sext <32 x i8> %i.ex to <32 x i16>
  %i.ez = add nsw <32 x i16> %i.cx, %i.ey
  %i.fa = sub <32 x i16> %.sroa.0.1, %i.ez        ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.fc = load <32 x i8>, ptr %i.fb, align 32, !tbaa !23
  %i.fd = sext <32 x i8> %i.fc to <32 x i16>
  %i.fe = add nsw <32 x i16> %i.da, %i.fd
  %i.ff = sub <32 x i16> %.sroa.8.1, %i.fe        ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.fh = load <32 x i8>, ptr %i.fg, align 32, !tbaa !23
  %i.fi = sext <32 x i8> %i.fh to <32 x i16>
  %i.fj = add nsw <32 x i16> %i.dd, %i.fi
  %i.fk = sub <32 x i16> %.sroa.12.1, %i.fj       ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  %i.fm = load <32 x i8>, ptr %i.fl, align 32, !tbaa !23
  %i.fn = sext <32 x i8> %i.fm to <32 x i16>
  %i.fo = add nsw <32 x i16> %i.dg, %i.fn
  %i.fp = sub <32 x i16> %.sroa.16.1, %i.fo       ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ew, i64 128
  %i.fr = load <32 x i8>, ptr %i.fq, align 32, !tbaa !23
  %i.fs = sext <32 x i8> %i.fr to <32 x i16>
  %i.ft = add nsw <32 x i16> %i.dj, %i.fs
  %i.fu = sub <32 x i16> %.sroa.20.1, %i.ft       ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ew, i64 160
  %i.fw = load <32 x i8>, ptr %i.fv, align 32, !tbaa !23
  %i.fx = sext <32 x i8> %i.fw to <32 x i16>
  %i.fy = add nsw <32 x i16> %i.dm, %i.fx
  %i.fz = sub <32 x i16> %.sroa.24.1, %i.fy       ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ew, i64 192
  %i.gb = load <32 x i8>, ptr %i.ga, align 32, !tbaa !23
  %i.gc = sext <32 x i8> %i.gb to <32 x i16>
  %i.gd = add nsw <32 x i16> %i.dp, %i.gc
  %i.ge = sub <32 x i16> %.sroa.28.1, %i.gd       ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ew, i64 224
  %i.gg = load <32 x i8>, ptr %i.gf, align 32, !tbaa !23
  %i.gh = sext <32 x i8> %i.gg to <32 x i16>
  %i.gi = add nsw <32 x i16> %i.ds, %i.gh
  %i.gj = sub <32 x i16> %.sroa.32.1, %i.gi       ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ew, i64 256
  %i.gl = load <32 x i8>, ptr %i.gk, align 32, !tbaa !23
  %i.gm = sext <32 x i8> %i.gl to <32 x i16>
  %i.gn = add nsw <32 x i16> %i.dv, %i.gm
  %i.go = sub <32 x i16> %.sroa.36.1, %i.gn       ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ew, i64 288
  %i.gq = load <32 x i8>, ptr %i.gp, align 32, !tbaa !23
  %i.gr = sext <32 x i8> %i.gq to <32 x i16>
  %i.gs = add nsw <32 x i16> %i.dy, %i.gr
  %i.gt = sub <32 x i16> %.sroa.40.1, %i.gs       ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ew, i64 320
  %i.gv = load <32 x i8>, ptr %i.gu, align 32, !tbaa !23
  %i.gw = sext <32 x i8> %i.gv to <32 x i16>
  %i.gx = add nsw <32 x i16> %i.eb, %i.gw
  %i.gy = sub <32 x i16> %.sroa.44.1, %i.gx       ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ew, i64 352
  %i.ha = load <32 x i8>, ptr %i.gz, align 32, !tbaa !23
  %i.hb = sext <32 x i8> %i.ha to <32 x i16>
  %i.hc = add nsw <32 x i16> %i.ee, %i.hb
  %i.hd = sub <32 x i16> %.sroa.48.1, %i.hc       ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ew, i64 384
  %i.hf = load <32 x i8>, ptr %i.he, align 32, !tbaa !23
  %i.hg = sext <32 x i8> %i.hf to <32 x i16>
  %i.hh = add nsw <32 x i16> %i.eh, %i.hg
  %i.hi = sub <32 x i16> %.sroa.52.1, %i.hh       ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ew, i64 416
  %i.hk = load <32 x i8>, ptr %i.hj, align 32, !tbaa !23
  %i.hl = sext <32 x i8> %i.hk to <32 x i16>
  %i.hm = add nsw <32 x i16> %i.ek, %i.hl
  %i.hn = sub <32 x i16> %.sroa.56.1, %i.hm       ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ew, i64 448
  %i.hp = load <32 x i8>, ptr %i.ho, align 32, !tbaa !23
  %i.hq = sext <32 x i8> %i.hp to <32 x i16>
  %i.hr = add nsw <32 x i16> %i.en, %i.hq
  %i.hs = sub <32 x i16> %.sroa.60.1, %i.hr       ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ew, i64 480
  %i.hu = load <32 x i8>, ptr %i.ht, align 32, !tbaa !23
  %i.hv = sext <32 x i8> %i.hu to <32 x i16>
  %i.hw = add nsw <32 x i16> %i.eq, %i.hv
  %i.hx = sub <32 x i16> %.sroa.64.1, %i.hw       ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader111.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !119

.preheader110.loopexit.unr-lcssa:                 ; preds = %.lr.ph122
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %.preheader110, label %.lr.ph122.epil.preheader

.lr.ph122.epil.preheader:                         ; preds = %.preheader110.loopexit.unr-lcssa, %.lr.ph122.preheader
  %.sroa.64.3.epil.init = phi <32 x i16> [ %.sroa.64.0, %.lr.ph122.preheader ], [ %i.pv, %.preheader110.loopexit.unr-lcssa ]
  %.sroa.60.3.epil.init = phi <32 x i16> [ %.sroa.60.0, %.lr.ph122.preheader ], [ %i.pr, %.preheader110.loopexit.unr-lcssa ]
  %.sroa.56.3.epil.init = phi <32 x i16> [ %.sroa.56.0, %.lr.ph122.preheader ], [ %i.pn, %.preheader110.loopexit.unr-lcssa ]
  %.sroa.52.3.epil.init = phi <32 x i16> [ %.sroa.52.0, %.lr.ph122.preheader ], [ %i.pj, %.preheader110.loopexit.unr-lcssa ]
  %.sroa.48.3.epil.init = phi <32 x i16> [ %.sroa.48.0, %.lr.ph122.preheader ], [ %i.pf, %.preheader110.loopexit.unr-lcssa ]
  %.sroa.44.3.epil.init = phi <32 x i16> [ %.sroa.44.0, %.lr.ph122.preheader ], [ %i.pb, %.preheader110.loopexit.unr-lcssa ]
  %.sroa.40.3.epil.init = phi <32 x i16> [ %.sroa.40.0, %.lr.ph122.preheader ], [ %i.ox, %.preheader110.loopexit.unr-lcssa ]
  %.sroa.36.3.epil.init = phi <32 x i16> [ %.sroa.36.0, %.lr.ph122.preheader ], [ %i.ot, %.preheader110.loopexit.unr-lcssa ]
  %.sroa.32.3.epil.init = phi <32 x i16> [ %.sroa.32.0, %.lr.ph122.preheader ], [ %i.op, %.preheader110.loopexit.unr-lcssa ]
  %.sroa.28.3.epil.init = phi <32 x i16> [ %.sroa.28.0, %.lr.ph122.preheader ], [ %i.ol, %.preheader110.loopexit.unr-lcssa ]
  %.sroa.24.3.epil.init = phi <32 x i16> [ %.sroa.24.0, %.lr.ph122.preheader ], [ %i.oh, %.preheader110.loopexit.unr-lcssa ]
  %.sroa.20.3.epil.init = phi <32 x i16> [ %.sroa.20.0, %.lr.ph122.preheader ], [ %i.od, %.preheader110.loopexit.unr-lcssa ]
  %.sroa.16.3.epil.init = phi <32 x i16> [ %.sroa.16.0, %.lr.ph122.preheader ], [ %i.nz, %.preheader110.loopexit.unr-lcssa ]
  %.sroa.12.3.epil.init = phi <32 x i16> [ %.sroa.12.0, %.lr.ph122.preheader ], [ %i.nv, %.preheader110.loopexit.unr-lcssa ]
  %.sroa.8.3.epil.init = phi <32 x i16> [ %.sroa.8.0, %.lr.ph122.preheader ], [ %i.nr, %.preheader110.loopexit.unr-lcssa ]
  %.sroa.0.3.epil.init = phi <32 x i16> [ %.sroa.0.0, %.lr.ph122.preheader ], [ %i.nn, %.preheader110.loopexit.unr-lcssa ]
  %indvars.iv139.epil.init = phi i64 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next140.1, %.preheader110.loopexit.unr-lcssa ]
  %lcmp.mod329 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod329)
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv139.epil.init
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !31
  %i.ia = zext i32 %i.hz to i64
  %i.ib = shl nuw nsw i64 %i.ia, 10
  %i.ic = getelementptr inbounds nuw i8, ptr %.090125, i64 %i.ib ; 16 uses
  %i.id = load <32 x i8>, ptr %i.ic, align 32, !tbaa !23
  %i.ie = sext <32 x i8> %i.id to <32 x i16>
  %i.if = add <32 x i16> %.sroa.0.3.epil.init, %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.ih = load <32 x i8>, ptr %i.ig, align 32, !tbaa !23
  %i.ii = sext <32 x i8> %i.ih to <32 x i16>
  %i.ij = add <32 x i16> %.sroa.8.3.epil.init, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ic, i64 64
  %i.il = load <32 x i8>, ptr %i.ik, align 32, !tbaa !23
  %i.im = sext <32 x i8> %i.il to <32 x i16>
  %i.in = add <32 x i16> %.sroa.12.3.epil.init, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.ic, i64 96
  %i.ip = load <32 x i8>, ptr %i.io, align 32, !tbaa !23
  %i.iq = sext <32 x i8> %i.ip to <32 x i16>
  %i.ir = add <32 x i16> %.sroa.16.3.epil.init, %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ic, i64 128
  %i.it = load <32 x i8>, ptr %i.is, align 32, !tbaa !23
  %i.iu = sext <32 x i8> %i.it to <32 x i16>
  %i.iv = add <32 x i16> %.sroa.20.3.epil.init, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ic, i64 160
  %i.ix = load <32 x i8>, ptr %i.iw, align 32, !tbaa !23
  %i.iy = sext <32 x i8> %i.ix to <32 x i16>
  %i.iz = add <32 x i16> %.sroa.24.3.epil.init, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ic, i64 192
  %i.jb = load <32 x i8>, ptr %i.ja, align 32, !tbaa !23
  %i.jc = sext <32 x i8> %i.jb to <32 x i16>
  %i.jd = add <32 x i16> %.sroa.28.3.epil.init, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %i.ic, i64 224
  %i.jf = load <32 x i8>, ptr %i.je, align 32, !tbaa !23
  %i.jg = sext <32 x i8> %i.jf to <32 x i16>
  %i.jh = add <32 x i16> %.sroa.32.3.epil.init, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ic, i64 256
  %i.jj = load <32 x i8>, ptr %i.ji, align 32, !tbaa !23
  %i.jk = sext <32 x i8> %i.jj to <32 x i16>
  %i.jl = add <32 x i16> %.sroa.36.3.epil.init, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ic, i64 288
  %i.jn = load <32 x i8>, ptr %i.jm, align 32, !tbaa !23
  %i.jo = sext <32 x i8> %i.jn to <32 x i16>
  %i.jp = add <32 x i16> %.sroa.40.3.epil.init, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ic, i64 320
  %i.jr = load <32 x i8>, ptr %i.jq, align 32, !tbaa !23
  %i.js = sext <32 x i8> %i.jr to <32 x i16>
  %i.jt = add <32 x i16> %.sroa.44.3.epil.init, %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ic, i64 352
  %i.jv = load <32 x i8>, ptr %i.ju, align 32, !tbaa !23
  %i.jw = sext <32 x i8> %i.jv to <32 x i16>
  %i.jx = add <32 x i16> %.sroa.48.3.epil.init, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ic, i64 384
  %i.jz = load <32 x i8>, ptr %i.jy, align 32, !tbaa !23
  %i.ka = sext <32 x i8> %i.jz to <32 x i16>
  %i.kb = add <32 x i16> %.sroa.52.3.epil.init, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ic, i64 416
  %i.kd = load <32 x i8>, ptr %i.kc, align 32, !tbaa !23
  %i.ke = sext <32 x i8> %i.kd to <32 x i16>
  %i.kf = add <32 x i16> %.sroa.56.3.epil.init, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ic, i64 448
  %i.kh = load <32 x i8>, ptr %i.kg, align 32, !tbaa !23
  %i.ki = sext <32 x i8> %i.kh to <32 x i16>
  %i.kj = add <32 x i16> %.sroa.60.3.epil.init, %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ic, i64 480
  %i.kl = load <32 x i8>, ptr %i.kk, align 32, !tbaa !23
  %i.km = sext <32 x i8> %i.kl to <32 x i16>
  %i.kn = add <32 x i16> %.sroa.64.3.epil.init, %i.km
  br label %.preheader110

.preheader110:                                    ; preds = %.lr.ph122.epil.preheader, %.preheader110.loopexit.unr-lcssa, %.preheader111
  %.sroa.64.2 = phi <32 x i16> [ %.sroa.64.0, %.preheader111 ], [ %i.pv, %.preheader110.loopexit.unr-lcssa ], [ %i.kn, %.lr.ph122.epil.preheader ]
  %.sroa.60.2 = phi <32 x i16> [ %.sroa.60.0, %.preheader111 ], [ %i.pr, %.preheader110.loopexit.unr-lcssa ], [ %i.kj, %.lr.ph122.epil.preheader ]
  %.sroa.56.2 = phi <32 x i16> [ %.sroa.56.0, %.preheader111 ], [ %i.pn, %.preheader110.loopexit.unr-lcssa ], [ %i.kf, %.lr.ph122.epil.preheader ]
  %.sroa.52.2 = phi <32 x i16> [ %.sroa.52.0, %.preheader111 ], [ %i.pj, %.preheader110.loopexit.unr-lcssa ], [ %i.kb, %.lr.ph122.epil.preheader ]
  %.sroa.48.2 = phi <32 x i16> [ %.sroa.48.0, %.preheader111 ], [ %i.pf, %.preheader110.loopexit.unr-lcssa ], [ %i.jx, %.lr.ph122.epil.preheader ]
  %.sroa.44.2 = phi <32 x i16> [ %.sroa.44.0, %.preheader111 ], [ %i.pb, %.preheader110.loopexit.unr-lcssa ], [ %i.jt, %.lr.ph122.epil.preheader ]
  %.sroa.40.2 = phi <32 x i16> [ %.sroa.40.0, %.preheader111 ], [ %i.ox, %.preheader110.loopexit.unr-lcssa ], [ %i.jp, %.lr.ph122.epil.preheader ]
  %.sroa.36.2 = phi <32 x i16> [ %.sroa.36.0, %.preheader111 ], [ %i.ot, %.preheader110.loopexit.unr-lcssa ], [ %i.jl, %.lr.ph122.epil.preheader ]
  %.sroa.32.2 = phi <32 x i16> [ %.sroa.32.0, %.preheader111 ], [ %i.op, %.preheader110.loopexit.unr-lcssa ], [ %i.jh, %.lr.ph122.epil.preheader ]
  %.sroa.28.2 = phi <32 x i16> [ %.sroa.28.0, %.preheader111 ], [ %i.ol, %.preheader110.loopexit.unr-lcssa ], [ %i.jd, %.lr.ph122.epil.preheader ]
  %.sroa.24.2 = phi <32 x i16> [ %.sroa.24.0, %.preheader111 ], [ %i.oh, %.preheader110.loopexit.unr-lcssa ], [ %i.iz, %.lr.ph122.epil.preheader ]
  %.sroa.20.2 = phi <32 x i16> [ %.sroa.20.0, %.preheader111 ], [ %i.od, %.preheader110.loopexit.unr-lcssa ], [ %i.iv, %.lr.ph122.epil.preheader ]
  %.sroa.16.2 = phi <32 x i16> [ %.sroa.16.0, %.preheader111 ], [ %i.nz, %.preheader110.loopexit.unr-lcssa ], [ %i.ir, %.lr.ph122.epil.preheader ]
  %.sroa.12.2 = phi <32 x i16> [ %.sroa.12.0, %.preheader111 ], [ %i.nv, %.preheader110.loopexit.unr-lcssa ], [ %i.in, %.lr.ph122.epil.preheader ]
  %.sroa.8.2 = phi <32 x i16> [ %.sroa.8.0, %.preheader111 ], [ %i.nr, %.preheader110.loopexit.unr-lcssa ], [ %i.ij, %.lr.ph122.epil.preheader ]
  %.sroa.0.2 = phi <32 x i16> [ %.sroa.0.0, %.preheader111 ], [ %i.nn, %.preheader110.loopexit.unr-lcssa ], [ %i.if, %.lr.ph122.epil.preheader ]
  store <32 x i16> %.sroa.0.2, ptr %scevgep144, align 64, !tbaa !23
  %.sroa.8.0.scevgep144.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep144, i64 64
  store <32 x i16> %.sroa.8.2, ptr %.sroa.8.0.scevgep144.sroa_idx, align 64, !tbaa !23
  %.sroa.12.0.scevgep144.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep144, i64 128
  store <32 x i16> %.sroa.12.2, ptr %.sroa.12.0.scevgep144.sroa_idx, align 64, !tbaa !23
  %.sroa.16.0.scevgep144.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep144, i64 192
  store <32 x i16> %.sroa.16.2, ptr %.sroa.16.0.scevgep144.sroa_idx, align 64, !tbaa !23
  %.sroa.20.0.scevgep144.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep144, i64 256
  store <32 x i16> %.sroa.20.2, ptr %.sroa.20.0.scevgep144.sroa_idx, align 64, !tbaa !23
  %.sroa.24.0.scevgep144.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep144, i64 320
  store <32 x i16> %.sroa.24.2, ptr %.sroa.24.0.scevgep144.sroa_idx, align 64, !tbaa !23
  %.sroa.28.0.scevgep144.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep144, i64 384
  store <32 x i16> %.sroa.28.2, ptr %.sroa.28.0.scevgep144.sroa_idx, align 64, !tbaa !23
  %.sroa.32.0.scevgep144.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep144, i64 448
  store <32 x i16> %.sroa.32.2, ptr %.sroa.32.0.scevgep144.sroa_idx, align 64, !tbaa !23
  %.sroa.36.0.scevgep144.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep144, i64 512
  store <32 x i16> %.sroa.36.2, ptr %.sroa.36.0.scevgep144.sroa_idx, align 64, !tbaa !23
  %.sroa.40.0.scevgep144.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep144, i64 576
  store <32 x i16> %.sroa.40.2, ptr %.sroa.40.0.scevgep144.sroa_idx, align 64, !tbaa !23
  %.sroa.44.0.scevgep144.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep144, i64 640
  store <32 x i16> %.sroa.44.2, ptr %.sroa.44.0.scevgep144.sroa_idx, align 64, !tbaa !23
  %.sroa.48.0.scevgep144.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep144, i64 704
  store <32 x i16> %.sroa.48.2, ptr %.sroa.48.0.scevgep144.sroa_idx, align 64, !tbaa !23
  %.sroa.52.0.scevgep144.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep144, i64 768
  store <32 x i16> %.sroa.52.2, ptr %.sroa.52.0.scevgep144.sroa_idx, align 64, !tbaa !23
  %.sroa.56.0.scevgep144.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep144, i64 832
  store <32 x i16> %.sroa.56.2, ptr %.sroa.56.0.scevgep144.sroa_idx, align 64, !tbaa !23
  %.sroa.60.0.scevgep144.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep144, i64 896
  store <32 x i16> %.sroa.60.2, ptr %.sroa.60.0.scevgep144.sroa_idx, align 64, !tbaa !23
  %.sroa.64.0.scevgep144.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep144, i64 960
  store <32 x i16> %.sroa.64.2, ptr %.sroa.64.0.scevgep144.sroa_idx, align 64, !tbaa !23
  %i.ko = getelementptr inbounds nuw i8, ptr %.090125, i64 512
  br i1 %exitcond149.not, label %.preheader109, label %.preheader112, !llvm.loop !120

.lr.ph122:                                        ; preds = %.lr.ph122, %.lr.ph122.preheader.new
  %.sroa.64.3 = phi <32 x i16> [ %.sroa.64.0, %.lr.ph122.preheader.new ], [ %i.pv, %.lr.ph122 ]
  %.sroa.60.3 = phi <32 x i16> [ %.sroa.60.0, %.lr.ph122.preheader.new ], [ %i.pr, %.lr.ph122 ]
  %.sroa.56.3 = phi <32 x i16> [ %.sroa.56.0, %.lr.ph122.preheader.new ], [ %i.pn, %.lr.ph122 ]
  %.sroa.52.3 = phi <32 x i16> [ %.sroa.52.0, %.lr.ph122.preheader.new ], [ %i.pj, %.lr.ph122 ]
  %.sroa.48.3 = phi <32 x i16> [ %.sroa.48.0, %.lr.ph122.preheader.new ], [ %i.pf, %.lr.ph122 ]
  %.sroa.44.3 = phi <32 x i16> [ %.sroa.44.0, %.lr.ph122.preheader.new ], [ %i.pb, %.lr.ph122 ]
  %.sroa.40.3 = phi <32 x i16> [ %.sroa.40.0, %.lr.ph122.preheader.new ], [ %i.ox, %.lr.ph122 ]
  %.sroa.36.3 = phi <32 x i16> [ %.sroa.36.0, %.lr.ph122.preheader.new ], [ %i.ot, %.lr.ph122 ]
  %.sroa.32.3 = phi <32 x i16> [ %.sroa.32.0, %.lr.ph122.preheader.new ], [ %i.op, %.lr.ph122 ]
  %.sroa.28.3 = phi <32 x i16> [ %.sroa.28.0, %.lr.ph122.preheader.new ], [ %i.ol, %.lr.ph122 ]
  %.sroa.24.3 = phi <32 x i16> [ %.sroa.24.0, %.lr.ph122.preheader.new ], [ %i.oh, %.lr.ph122 ]
  %.sroa.20.3 = phi <32 x i16> [ %.sroa.20.0, %.lr.ph122.preheader.new ], [ %i.od, %.lr.ph122 ]
  %.sroa.16.3 = phi <32 x i16> [ %.sroa.16.0, %.lr.ph122.preheader.new ], [ %i.nz, %.lr.ph122 ]
  %.sroa.12.3 = phi <32 x i16> [ %.sroa.12.0, %.lr.ph122.preheader.new ], [ %i.nv, %.lr.ph122 ]
  %.sroa.8.3 = phi <32 x i16> [ %.sroa.8.0, %.lr.ph122.preheader.new ], [ %i.nr, %.lr.ph122 ]
  %.sroa.0.3 = phi <32 x i16> [ %.sroa.0.0, %.lr.ph122.preheader.new ], [ %i.nn, %.lr.ph122 ]
  %indvars.iv139 = phi i64 [ 0, %.lr.ph122.preheader.new ], [ %indvars.iv.next140.1, %.lr.ph122 ] ; 3 uses
  %niter331 = phi i64 [ 0, %.lr.ph122.preheader.new ], [ %niter331.next.1, %.lr.ph122 ]
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv139
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !31
  %i.kr = zext i32 %i.kq to i64
  %i.ks = shl nuw nsw i64 %i.kr, 10
  %i.kt = getelementptr inbounds nuw i8, ptr %.090125, i64 %i.ks ; 16 uses
  %i.ku = load <32 x i8>, ptr %i.kt, align 32, !tbaa !23
  %i.kv = sext <32 x i8> %i.ku to <32 x i16>
  %i.kw = add <32 x i16> %.sroa.0.3, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.ky = load <32 x i8>, ptr %i.kx, align 32, !tbaa !23
  %i.kz = sext <32 x i8> %i.ky to <32 x i16>
  %i.la = add <32 x i16> %.sroa.8.3, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 64
  %i.lc = load <32 x i8>, ptr %i.lb, align 32, !tbaa !23
  %i.ld = sext <32 x i8> %i.lc to <32 x i16>
  %i.le = add <32 x i16> %.sroa.12.3, %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kt, i64 96
  %i.lg = load <32 x i8>, ptr %i.lf, align 32, !tbaa !23
  %i.lh = sext <32 x i8> %i.lg to <32 x i16>
  %i.li = add <32 x i16> %.sroa.16.3, %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kt, i64 128
  %i.lk = load <32 x i8>, ptr %i.lj, align 32, !tbaa !23
  %i.ll = sext <32 x i8> %i.lk to <32 x i16>
  %i.lm = add <32 x i16> %.sroa.20.3, %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kt, i64 160
  %i.lo = load <32 x i8>, ptr %i.ln, align 32, !tbaa !23
  %i.lp = sext <32 x i8> %i.lo to <32 x i16>
  %i.lq = add <32 x i16> %.sroa.24.3, %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kt, i64 192
  %i.ls = load <32 x i8>, ptr %i.lr, align 32, !tbaa !23
  %i.lt = sext <32 x i8> %i.ls to <32 x i16>
  %i.lu = add <32 x i16> %.sroa.28.3, %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kt, i64 224
  %i.lw = load <32 x i8>, ptr %i.lv, align 32, !tbaa !23
  %i.lx = sext <32 x i8> %i.lw to <32 x i16>
  %i.ly = add <32 x i16> %.sroa.32.3, %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kt, i64 256
  %i.ma = load <32 x i8>, ptr %i.lz, align 32, !tbaa !23
  %i.mb = sext <32 x i8> %i.ma to <32 x i16>
  %i.mc = add <32 x i16> %.sroa.36.3, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.kt, i64 288
  %i.me = load <32 x i8>, ptr %i.md, align 32, !tbaa !23
  %i.mf = sext <32 x i8> %i.me to <32 x i16>
  %i.mg = add <32 x i16> %.sroa.40.3, %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.kt, i64 320
  %i.mi = load <32 x i8>, ptr %i.mh, align 32, !tbaa !23
  %i.mj = sext <32 x i8> %i.mi to <32 x i16>
  %i.mk = add <32 x i16> %.sroa.44.3, %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kt, i64 352
  %i.mm = load <32 x i8>, ptr %i.ml, align 32, !tbaa !23
  %i.mn = sext <32 x i8> %i.mm to <32 x i16>
  %i.mo = add <32 x i16> %.sroa.48.3, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %i.kt, i64 384
  %i.mq = load <32 x i8>, ptr %i.mp, align 32, !tbaa !23
  %i.mr = sext <32 x i8> %i.mq to <32 x i16>
  %i.ms = add <32 x i16> %.sroa.52.3, %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %i.kt, i64 416
  %i.mu = load <32 x i8>, ptr %i.mt, align 32, !tbaa !23
  %i.mv = sext <32 x i8> %i.mu to <32 x i16>
end_hunk_2
