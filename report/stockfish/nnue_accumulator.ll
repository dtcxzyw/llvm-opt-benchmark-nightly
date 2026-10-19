Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/nnue_accumulator?download=true
inline.NumInlined: 647
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 43
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.Stockfish::ValueList.26" = type { [32 x i32], i64 }
%"class.Stockfish::ValueList.36" = type { [128 x i32], i64 }
%"struct.Stockfish::Eval::NNUE::(anonymous namespace)::AccumulatorUpdateContext.37" = type { i8, ptr, ptr, ptr }
%"struct.Stockfish::Eval::NNUE::Features::FullThreats::FusedUpdateData" = type <{ i64, i64, i8, [7 x i8] }>

$_ZNK9Stockfish4Eval4NNUE16AccumulatorStack6latestINS1_8Features11HalfKAv2_hmEEERKNS1_16AccumulatorStateIT_EEv = comdat any

$_ZNK9Stockfish4Eval4NNUE16AccumulatorStack6latestINS1_8Features11FullThreatsEEERKNS1_16AccumulatorStateIT_EEv = comdat any

$_ZN9Stockfish4Eval4NNUE16AccumulatorStack8evaluateILj1024EEEvRKNS_8PositionERKNS1_18FeatureTransformerIXT_EEERNS1_17AccumulatorCaches5CacheIXT_EEE = comdat any

$_ZN9Stockfish4Eval4NNUE16AccumulatorStack13evaluate_sideINS1_8Features11HalfKAv2_hmELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEERNS1_17AccumulatorCaches5CacheIXT0_EEE = comdat any

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
  %i.b = load i64, ptr %i.a, align 64, !tbaa !17
  %i.c = getelementptr [4928 x i8], ptr %0, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -4928
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef nonnull align 64 dereferenceable(5280) ptr @_ZNK9Stockfish4Eval4NNUE16AccumulatorStack6latestINS1_8Features11FullThreatsEEERKNS1_16AccumulatorStateIT_EEv(ptr noundef nonnull align 64 dereferenceable(2529288) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2529280
  %i.b = load i64, ptr %i.a, align 64, !tbaa !17
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
  %i.b = load i64, ptr %i.a, align 64, !tbaa !17
  %i.c = zext i8 %1 to i64                        ; 7 uses
  %.010.i244 = add i64 %i.b, -1                   ; 3 uses
  %.not.i245 = icmp eq i64 %.010.i244, 0
  br i1 %.not.i245, label %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %.010.i = add i64 %.010.i246, -1                ; 3 uses
  %.not.i = icmp eq i64 %.010.i, 0
  br i1 %.not.i, label %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit, label %.lr.ph, !llvm.loop !49

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.010.i246 = phi i64 [ %.010.i, %bb.b ], [ %.010.i244, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw [4928 x i8], ptr %0, i64 %.010.i246 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4160
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  %i.g = load i8, ptr %i.f, align 1, !tbaa !20, !range !21, !noundef !22
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4864
  %i.j = tail call noundef zeroext i1 @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm16requires_refreshERKNS_10DirtyPieceENS_5ColorE(ptr noundef nonnull align 1 dereferenceable(7) %i.i, i8 noundef zeroext %1) #11
  br i1 %i.j, label %._ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit_crit_edge249, label %bb.b, !llvm.loop !49

._ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit_crit_edge249: ; preds = %bb.c
  br label %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit, !llvm.loop !49

_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit: ; preds = %.lr.ph, %bb.b, %._ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit_crit_edge249, %bb.a
  %.010.i.lcssa = phi i64 [ %.010.i244, %bb.a ], [ %.010.i246, %._ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit_crit_edge249 ], [ %.010.i246, %.lr.ph ], [ %.010.i, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4928 x i8], ptr %0, i64 %.010.i.lcssa
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4160
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c
  %i.n = load i8, ptr %i.m, align 1, !tbaa !20, !range !21, !noundef !22
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit
  tail call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack26forward_update_incrementalINS1_8Features11HalfKAv2_hmELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm(ptr noundef nonnull align 64 dereferenceable(2529288) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 64 dereferenceable(131188224) %3, i64 noundef %.010.i.lcssa) #11
  br label %bb.k

bb.e:                                             ; preds = %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj1024EEEmNS_5ColorE.exit
  %i.p = load i64, ptr %i.a, align 64, !tbaa !17
  %i.q = getelementptr [4928 x i8], ptr %0, i64 %i.p ; 3 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -4928
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.c
  %i.u = load i64, ptr %i.t, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.w = load i64, ptr %i.v, align 8, !tbaa !23
  %i.x = and i64 %i.w, %i.u
  %i.y = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.x, i1 true) ; 2 uses
  %i.z = trunc nuw nsw i64 %i.y to i8             ; 2 uses
  %i.aa = getelementptr inbounds nuw [4352 x i8], ptr %4, i64 %i.y
  %i.ab = getelementptr inbounds nuw [2176 x i8], ptr %i.aa, i64 %i.c ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 3 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 2080 ; 3 uses
  %i.af = load <32 x i8>, ptr %i.ae, align 32, !tbaa !26
  %i.ag = load <32 x i8>, ptr %2, align 8, !tbaa !26
  %i.ah = icmp eq <32 x i8> %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 2112
  %i.aj = load <32 x i8>, ptr %i.ai, align 64, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = load <32 x i8>, ptr %i.ak, align 8, !tbaa !26
  %i.am = icmp eq <32 x i8> %i.aj, %i.al
  %i.an = shufflevector <32 x i1> %i.ah, <32 x i1> %i.am, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ao = bitcast <64 x i1> %i.an to i64
  %i.ap = xor i64 %i.ao, -1                       ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 2144 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 32, !tbaa !63
  %i.as = and i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !23
  %i.av = and i64 %i.au, %i.ap                    ; 3 uses
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.as) ; 3 uses
  %i.ax = icmp eq i64 %i.as, 0
  br i1 %i.ax, label %.preheader185.i, label %.lr.ph.i

..preheader185_crit_edge.i:                       ; preds = %.lr.ph.i
  store i64 %i.aw, ptr %i.ac, align 8
  %i.ay = trunc nuw nsw i64 %i.aw to i32
  br label %.preheader185.i

.preheader185.i:                                  ; preds = %..preheader185_crit_edge.i, %bb.e
  %i.az = phi i32 [ %i.ay, %..preheader185_crit_edge.i ], [ 0, %bb.e ] ; 6 uses
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.av) ; 3 uses
  %i.bb = icmp eq i64 %i.av, 0
  br i1 %i.bb, label %bb.f, label %.lr.ph197.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %tcphi = phi i64 [ %tcdec, %.lr.ph.i ], [ %i.aw, %bb.e ]
  %i.bc = phi i64 [ %i.bk, %.lr.ph.i ], [ 0, %bb.e ] ; 2 uses
  %.0193.i = phi i64 [ %i.bg, %.lr.ph.i ], [ %i.as, %bb.e ] ; 3 uses
  %i.bd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0193.i, i1 true) ; 2 uses
  %i.be = trunc nuw nsw i64 %i.bd to i8
  %i.bf = add i64 %.0193.i, -1
  %i.bg = and i64 %i.bf, %.0193.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bd
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !30
  %i.bj = tail call noundef i32 @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm10make_indexENS_5ColorENS_6SquareENS_5PieceES5_(i8 noundef zeroext %1, i8 noundef zeroext %i.be, i8 noundef zeroext %i.bi, i8 noundef zeroext %i.z) #11
  %i.bk = add nuw nsw i64 %i.bc, 1
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bc
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !31
  %tcdec = add nsw i64 %tcphi, -1                 ; 2 uses
  %exitcond = icmp eq i64 %tcdec, 0
  br i1 %exitcond, label %..preheader185_crit_edge.i, label %.lr.ph.i, !llvm.loop !50

.lr.ph197.i:                                      ; preds = %.preheader185.i, %.lr.ph197.i
  %tcphi137 = phi i64 [ %tcdec138, %.lr.ph197.i ], [ %i.ba, %.preheader185.i ]
  %i.bm = phi i64 [ %i.bu, %.lr.ph197.i ], [ 0, %.preheader185.i ] ; 2 uses
  %.0173196.i = phi i64 [ %i.bq, %.lr.ph197.i ], [ %i.av, %.preheader185.i ] ; 3 uses
  %i.bn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0173196.i, i1 true) ; 2 uses
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  %i.bp = add i64 %.0173196.i, -1
  %i.bq = and i64 %i.bp, %.0173196.i
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 %i.bn
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !30
  %i.bt = tail call noundef i32 @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm10make_indexENS_5ColorENS_6SquareENS_5PieceES5_(i8 noundef zeroext %1, i8 noundef zeroext %i.bo, i8 noundef zeroext %i.bs, i8 noundef zeroext %i.z) #11
  %i.bu = add nuw nsw i64 %i.bm, 1
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bm
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !31
  %tcdec138 = add nsw i64 %tcphi137, -1           ; 2 uses
  %exitcond137 = icmp eq i64 %tcdec138, 0
  br i1 %exitcond137, label %._crit_edge.i, label %.lr.ph197.i, !llvm.loop !51

._crit_edge.i:                                    ; preds = %.lr.ph197.i
  store i64 %i.ba, ptr %i.ad, align 8
  %i.bw = trunc nuw nsw i64 %i.ba to i32
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %.preheader185.i
  %i.bx = phi i32 [ %i.bw, %._crit_edge.i ], [ 0, %.preheader185.i ] ; 3 uses
  %i.by = load i64, ptr %i.at, align 8, !tbaa !23
  store i64 %i.by, ptr %i.aq, align 32, !tbaa !63
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(1048) %2, i64 64, i1 false), !tbaa.struct !32
  %i.bz = getelementptr i8, ptr %i.q, i64 -768
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.c
  store i8 1, ptr %i.ca, align 1, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 2048
  %i.cc = getelementptr [2048 x i8], ptr %i.r, i64 %i.c
  %i.cd = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 %i.az) ; 6 uses
  %.not = icmp eq i32 %i.cd, 0
  %wide.trip.count.i = zext i32 %i.cd to i64      ; 3 uses
  %wide.trip.count250.i = zext i32 %i.az to i64   ; 3 uses
  %i.ce = icmp slt i32 %i.cd, %i.az
  %i.cf = zext nneg i32 %i.cd to i64              ; 3 uses
  %wide.trip.count = zext i32 %i.bx to i64        ; 3 uses
  %i.cg = sub nsw i64 %wide.trip.count250.i, %wide.trip.count.i
  %smax = tail call i32 @llvm.smax.i32(i32 %i.az, i32 %i.cd)
  %i.ch = zext nneg i32 %smax to i64              ; 2 uses
  %i.ci = sub nsw i64 %wide.trip.count, %i.ch
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cf
  %indvars.iv.next248.i.prol = add nuw nsw i64 %i.cf, 1
  %i.ck = add nsw i64 %wide.trip.count250.i, -1
  %i.cl = icmp eq i64 %i.ck, %wide.trip.count.i
  %xtraiter303 = and i64 %i.ci, 1
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  %i.cm = add nsw i64 %wide.trip.count, -1
  %i.cn = icmp eq i64 %i.cm, %i.ch
  br label %.preheader184.i

.preheader179.i:                                  ; preds = %.preheader181.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ab, i64 2048 ; 2 uses
  %i.cp = load i64, ptr %i.ac, align 8, !tbaa !25 ; 7 uses
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = icmp sgt i32 %i.cq, 0                   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 127911936 ; 27 uses
  %i.ct = load i64, ptr %i.ad, align 8, !tbaa !25 ; 4 uses
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = icmp sgt i32 %i.cu, 0
  %i.cw = load <8 x i32>, ptr %i.co, align 64, !tbaa !26 ; 6 uses
  br i1 %i.cv, label %.preheader178.us.i, label %.preheader179.split.i

.lr.ph218.us.i:                                   ; preds = %.lr.ph218.us.i, %.lr.ph218.us.preheader.i.new
  %indvars.iv273.i = phi i64 [ 0, %.lr.ph218.us.preheader.i.new ], [ %indvars.iv.next274.i.7, %.lr.ph218.us.i ] ; 9 uses
  %i.cx = phi <8 x i32> [ %i.cw, %.lr.ph218.us.preheader.i.new ], [ %i.fa, %.lr.ph218.us.i ]
  %niter317 = phi i64 [ 0, %.lr.ph218.us.preheader.i.new ], [ %niter317.next.7, %.lr.ph218.us.i ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv273.i
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !31
  %i.da = zext i32 %i.cz to i64
  %.idx175.us.i = shl nuw nsw i64 %i.da, 5
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx175.us.i
  %i.dc = load <8 x i32>, ptr %i.db, align 32, !tbaa !26
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv273.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !31
  %i.dg = zext i32 %i.df to i64
  %.idx175.us.i.1 = shl nuw nsw i64 %i.dg, 5
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx175.us.i.1
  %i.di = load <8 x i32>, ptr %i.dh, align 32, !tbaa !26
  %i.dj = add <8 x i32> %i.dc, %i.di
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv273.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !31
  %i.dn = zext i32 %i.dm to i64
  %.idx175.us.i.2 = shl nuw nsw i64 %i.dn, 5
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx175.us.i.2
  %i.dp = load <8 x i32>, ptr %i.do, align 32, !tbaa !26
  %i.dq = add <8 x i32> %i.dj, %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv273.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !31
  %i.du = zext i32 %i.dt to i64
  %.idx175.us.i.3 = shl nuw nsw i64 %i.du, 5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx175.us.i.3
  %i.dw = load <8 x i32>, ptr %i.dv, align 32, !tbaa !26
  %i.dx = add <8 x i32> %i.dq, %i.dw
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv273.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !31
  %i.eb = zext i32 %i.ea to i64
  %.idx175.us.i.4 = shl nuw nsw i64 %i.eb, 5
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx175.us.i.4
  %i.ed = load <8 x i32>, ptr %i.ec, align 32, !tbaa !26
  %i.ee = add <8 x i32> %i.dx, %i.ed
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv273.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !31
  %i.ei = zext i32 %i.eh to i64
  %.idx175.us.i.5 = shl nuw nsw i64 %i.ei, 5
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx175.us.i.5
  %i.ek = load <8 x i32>, ptr %i.ej, align 32, !tbaa !26
  %i.el = add <8 x i32> %i.ee, %i.ek
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv273.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !31
  %i.ep = zext i32 %i.eo to i64
  %.idx175.us.i.6 = shl nuw nsw i64 %i.ep, 5
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx175.us.i.6
  %i.er = load <8 x i32>, ptr %i.eq, align 32, !tbaa !26
  %i.es = add <8 x i32> %i.el, %i.er
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv273.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 28
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !31
  %i.ew = zext i32 %i.ev to i64
  %.idx175.us.i.7 = shl nuw nsw i64 %i.ew, 5
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx175.us.i.7
  %i.ey = load <8 x i32>, ptr %i.ex, align 32, !tbaa !26
  %i.ez = add <8 x i32> %i.es, %i.ey
  %i.fa = sub <8 x i32> %i.cx, %i.ez              ; 3 uses
  %indvars.iv.next274.i.7 = add nuw nsw i64 %indvars.iv273.i, 8 ; 2 uses
  %niter317.next.7 = add i64 %niter317, 8         ; 2 uses
  %niter317.ncmp.7 = icmp eq i64 %niter317.next.7, %unroll_iter316
  br i1 %niter317.ncmp.7, label %.preheader177.us.i.loopexit.unr-lcssa, label %.lr.ph218.us.i, !llvm.loop !52

bb.g:                                             ; preds = %bb.g, %.preheader177.us.i.new
  %indvars.iv278.i = phi i64 [ 0, %.preheader177.us.i.new ], [ %indvars.iv.next279.i.7, %bb.g ] ; 9 uses
  %i.fb = phi <8 x i32> [ %.lcssa187.us.i, %.preheader177.us.i.new ], [ %i.he, %bb.g ]
  %niter327 = phi i64 [ 0, %.preheader177.us.i.new ], [ %niter327.next.7, %bb.g ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv278.i
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !31
  %i.fe = zext i32 %i.fd to i64
  %.idx174.us.i = shl nuw nsw i64 %i.fe, 5
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx174.us.i
  %i.fg = load <8 x i32>, ptr %i.ff, align 32, !tbaa !26
  %i.fh = add <8 x i32> %i.fg, %i.fb
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv278.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !31
  %i.fl = zext i32 %i.fk to i64
  %.idx174.us.i.1 = shl nuw nsw i64 %i.fl, 5
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx174.us.i.1
  %i.fn = load <8 x i32>, ptr %i.fm, align 32, !tbaa !26
  %i.fo = add <8 x i32> %i.fn, %i.fh
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv278.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !31
  %i.fs = zext i32 %i.fr to i64
  %.idx174.us.i.2 = shl nuw nsw i64 %i.fs, 5
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx174.us.i.2
  %i.fu = load <8 x i32>, ptr %i.ft, align 32, !tbaa !26
  %i.fv = add <8 x i32> %i.fu, %i.fo
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv278.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !31
  %i.fz = zext i32 %i.fy to i64
  %.idx174.us.i.3 = shl nuw nsw i64 %i.fz, 5
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx174.us.i.3
  %i.gb = load <8 x i32>, ptr %i.ga, align 32, !tbaa !26
  %i.gc = add <8 x i32> %i.gb, %i.fv
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv278.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !31
  %i.gg = zext i32 %i.gf to i64
  %.idx174.us.i.4 = shl nuw nsw i64 %i.gg, 5
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx174.us.i.4
  %i.gi = load <8 x i32>, ptr %i.gh, align 32, !tbaa !26
  %i.gj = add <8 x i32> %i.gi, %i.gc
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv278.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 20
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !31
  %i.gn = zext i32 %i.gm to i64
  %.idx174.us.i.5 = shl nuw nsw i64 %i.gn, 5
  %i.go = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx174.us.i.5
  %i.gp = load <8 x i32>, ptr %i.go, align 32, !tbaa !26
  %i.gq = add <8 x i32> %i.gp, %i.gj
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv278.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !31
  %i.gu = zext i32 %i.gt to i64
  %.idx174.us.i.6 = shl nuw nsw i64 %i.gu, 5
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx174.us.i.6
  %i.gw = load <8 x i32>, ptr %i.gv, align 32, !tbaa !26
  %i.gx = add <8 x i32> %i.gw, %i.gq
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv278.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 28
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !31
  %i.hb = zext i32 %i.ha to i64
  %.idx174.us.i.7 = shl nuw nsw i64 %i.hb, 5
  %i.hc = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx174.us.i.7
  %i.hd = load <8 x i32>, ptr %i.hc, align 32, !tbaa !26
  %i.he = add <8 x i32> %i.hd, %i.gx              ; 3 uses
  %indvars.iv.next279.i.7 = add nuw nsw i64 %indvars.iv278.i, 8 ; 2 uses
  %niter327.next.7 = add i64 %niter327, 8         ; 2 uses
  %niter327.ncmp.7 = icmp eq i64 %niter327.next.7, %unroll_iter326
  br i1 %niter327.ncmp.7, label %.split.sink.split.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !53

.preheader177.us.i.loopexit.unr-lcssa:            ; preds = %.lr.ph218.us.i
  %lcmp.mod313.not = icmp eq i64 %xtraiter309, 0
  br i1 %lcmp.mod313.not, label %.preheader177.us.i, label %.lr.ph218.us.i.epil.preheader

end_hunk_0
begin_hunk_1_@_ZN9Stockfish4Eval4NNUE16AccumulatorStack13evaluate_sideINS1_8Features11FullThreatsELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEERNS1_17AccumulatorCaches5CacheIXT0_EEE:bb.a
  %i.se = load <8 x i32>, ptr %i.sd, align 32, !tbaa !26
  %i.sf = add <8 x i32> %i.se, %i.ry              ; 3 uses
  %indvars.iv.next98.i.7 = add nuw nsw i64 %indvars.iv97.i, 8 ; 2 uses
  %niter225.next.7 = add i64 %niter225, 8         ; 2 uses
  %niter225.ncmp.7 = icmp eq i64 %niter225.next.7, %unroll_iter224
  br i1 %niter225.ncmp.7, label %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_131update_threats_accumulator_fullILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11FullThreatsEEE.exit.loopexit.unr-lcssa, label %.preheader68.us.i, !llvm.loop !66

_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_131update_threats_accumulator_fullILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11FullThreatsEEE.exit.loopexit.unr-lcssa: ; preds = %.preheader68.us.i
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod221.not, label %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_131update_threats_accumulator_fullILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11FullThreatsEEE.exit, label %.preheader68.us.i.epil.preheader

.preheader68.us.i.epil.preheader:                 ; preds = %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_131update_threats_accumulator_fullILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11FullThreatsEEE.exit.loopexit.unr-lcssa, %.preheader69.split81.us.preheader.i
  %indvars.iv97.i.epil.init = phi i64 [ 0, %.preheader69.split81.us.preheader.i ], [ %indvars.iv.next98.i.7, %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_131update_threats_accumulator_fullILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11FullThreatsEEE.exit.loopexit.unr-lcssa ]
  %.epil.init = phi <8 x i32> [ zeroinitializer, %.preheader69.split81.us.preheader.i ], [ %i.sf, %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_131update_threats_accumulator_fullILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11FullThreatsEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod223 = icmp ne i64 %xtraiter220, 0
  call void @llvm.assume(i1 %lcmp.mod223)
  br label %.preheader68.us.i.epil

.preheader68.us.i.epil:                           ; preds = %.preheader68.us.i.epil, %.preheader68.us.i.epil.preheader
  %indvars.iv97.i.epil = phi i64 [ %indvars.iv97.i.epil.init, %.preheader68.us.i.epil.preheader ], [ %indvars.iv.next98.i.epil, %.preheader68.us.i.epil ] ; 2 uses
  %i.sg = phi <8 x i32> [ %.epil.init, %.preheader68.us.i.epil.preheader ], [ %i.sm, %.preheader68.us.i.epil ]
  %epil.iter = phi i64 [ 0, %.preheader68.us.i.epil.preheader ], [ %epil.iter.next, %.preheader68.us.i.epil ]
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv97.i.epil
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !31
  %i.sj = zext i32 %i.si to i64
  %.idx.us.i.epil = shl nuw nsw i64 %i.sj, 5
  %i.sk = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx.us.i.epil
  %i.sl = load <8 x i32>, ptr %i.sk, align 32, !tbaa !26
  %i.sm = add <8 x i32> %i.sl, %i.sg              ; 2 uses
  %indvars.iv.next98.i.epil = add nuw nsw i64 %indvars.iv97.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter220
  br i1 %epil.iter.cmp.not, label %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_131update_threats_accumulator_fullILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11FullThreatsEEE.exit, label %.preheader68.us.i.epil, !llvm.loop !67

_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_131update_threats_accumulator_fullILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11FullThreatsEEE.exit: ; preds = %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_131update_threats_accumulator_fullILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11FullThreatsEEE.exit.loopexit.unr-lcssa, %.preheader68.us.i.epil, %.preheader69.split81.preheader.i
  %storemerge.i = phi <8 x i32> [ zeroinitializer, %.preheader69.split81.preheader.i ], [ %i.sf, %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_131update_threats_accumulator_fullILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11FullThreatsEEE.exit.loopexit.unr-lcssa ], [ %i.sm, %.preheader68.us.i.epil ]
  %i.sn = getelementptr inbounds nuw i8, ptr %i.s, i64 4096
  %i.so = getelementptr inbounds nuw [32 x i8], ptr %i.sn, i64 %i.d
  store <8 x i32> %storemerge.i, ptr %i.so, align 32, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.sp = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %i.d
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !23
  %i.ss = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !23
  %i.su = and i64 %i.st, %i.sr
  %i.sv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.su, i1 true)
  %i.sw = trunc nuw nsw i64 %i.sv to i8
  %i.sx = load i64, ptr %i.a, align 64, !tbaa !17
  %i.sy = add nsw i64 %i.sx, -2                   ; 2 uses
  %.not10.i = icmp slt i64 %i.sy, %.010.i.lcssa
  br i1 %.not10.i, label %_ZN9Stockfish4Eval4NNUE16AccumulatorStack27backward_update_incrementalINS1_8Features11FullThreatsELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_131update_threats_accumulator_fullILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11FullThreatsEEE.exit
  %i.sz = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.ta = getelementptr inbounds nuw i8, ptr %6, i64 512
  %i.tb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.tc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.td = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.011.i = phi i64 [ %i.sy, %.lr.ph.i ], [ %i.tj, %bb.f ] ; 3 uses
  %i.te = getelementptr [5312 x i8], ptr %i.c, i64 %.011.i ; 4 uses
  %i.tf = getelementptr i8, ptr %i.te, i64 5312
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i64 0, ptr %i.sz, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store i64 0, ptr %i.ta, align 8, !tbaa !35
  %i.tg = getelementptr i8, ptr %i.te, i64 10176
  call void @_ZN9Stockfish4Eval4NNUE8Features11FullThreats22append_changed_indicesENS_5ColorENS_6SquareERKNS_12DirtyThreatsERNS_9ValueListIjLm128EEESB_PNS3_15FusedUpdateDataEb(i8 noundef zeroext %1, i8 noundef zeroext %i.sw, ptr noundef nonnull align 8 dereferenceable(416) %i.tg, ptr noundef nonnull align 8 dereferenceable(520) %6, ptr noundef nonnull align 8 dereferenceable(520) %5, ptr noundef null, i1 noundef zeroext false) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store i8 %1, ptr %7, align 8, !tbaa !41, !alias.scope !71
  store ptr %3, ptr %i.tb, align 8, !tbaa !42, !alias.scope !71
  store ptr %i.tf, ptr %i.tc, align 8, !tbaa !43, !alias.scope !71
  store ptr %i.te, ptr %i.td, align 8, !tbaa !43, !alias.scope !71
  call fastcc void @_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_124AccumulatorUpdateContextINS1_8Features11FullThreatsELj1024EE5applyERKNS_9ValueListIjLm128EEESA_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(520) %6, ptr noundef nonnull align 8 dereferenceable(520) %5)
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 4160
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.d
  store i8 1, ptr %i.ti, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.tj = add nsw i64 %.011.i, -1
  %.not.not.i = icmp sgt i64 %.011.i, %.010.i.lcssa
  br i1 %.not.not.i, label %bb.f, label %_ZN9Stockfish4Eval4NNUE16AccumulatorStack27backward_update_incrementalINS1_8Features11FullThreatsELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm.exit, !llvm.loop !70

_ZN9Stockfish4Eval4NNUE16AccumulatorStack27backward_update_incrementalINS1_8Features11FullThreatsELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm.exit: ; preds = %bb.f, %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_131update_threats_accumulator_fullILj1024EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11FullThreatsEEE.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack8evaluateILj128EEEvRKNS_8PositionERKNS1_18FeatureTransformerIXT_EEERNS1_17AccumulatorCaches5CacheIXT_EEE(ptr noundef nonnull align 64 dereferenceable(2529288) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 64 dereferenceable(49152) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack13evaluate_sideINS1_8Features11HalfKAv2_hmELj128EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEERNS1_17AccumulatorCaches5CacheIXT0_EEE(ptr noundef nonnull align 64 dereferenceable(2529288) %0, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 64 dereferenceable(49152) %3) #11
  tail call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack13evaluate_sideINS1_8Features11HalfKAv2_hmELj128EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEERNS1_17AccumulatorCaches5CacheIXT0_EEE(ptr noundef nonnull align 64 dereferenceable(2529288) %0, i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 64 dereferenceable(49152) %3) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack13evaluate_sideINS1_8Features11HalfKAv2_hmELj128EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEERNS1_17AccumulatorCaches5CacheIXT0_EEE(ptr noundef nonnull align 64 dereferenceable(2529288) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 64 dereferenceable(49152) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %5 = alloca %"class.Stockfish::ValueList.26", align 8 ; 36 uses
  %6 = alloca %"class.Stockfish::ValueList.26", align 8 ; 27 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2529280 ; 2 uses
  %i.b = load i64, ptr %i.a, align 64, !tbaa !17
  %i.c = zext i8 %1 to i64                        ; 7 uses
  %.010.i91 = add i64 %i.b, -1                    ; 3 uses
  %.not.i92 = icmp eq i64 %.010.i91, 0
  br i1 %.not.i92, label %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj128EEEmNS_5ColorE.exit, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %.010.i = add i64 %.010.i93, -1                 ; 3 uses
  %.not.i = icmp eq i64 %.010.i, 0
  br i1 %.not.i, label %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj128EEEmNS_5ColorE.exit, label %.lr.ph, !llvm.loop !72

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.010.i93 = phi i64 [ %.010.i, %bb.b ], [ %.010.i91, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw [4928 x i8], ptr %0, i64 %.010.i93 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4800
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  %i.g = load i8, ptr %i.f, align 1, !tbaa !20, !range !21, !noundef !22
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj128EEEmNS_5ColorE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4864
  %i.j = tail call noundef zeroext i1 @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm16requires_refreshERKNS_10DirtyPieceENS_5ColorE(ptr noundef nonnull align 1 dereferenceable(7) %i.i, i8 noundef zeroext %1) #11
  br i1 %i.j, label %._ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj128EEEmNS_5ColorE.exit_crit_edge96, label %bb.b, !llvm.loop !72

._ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj128EEEmNS_5ColorE.exit_crit_edge96: ; preds = %bb.c
  br label %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj128EEEmNS_5ColorE.exit, !llvm.loop !72

_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj128EEEmNS_5ColorE.exit: ; preds = %.lr.ph, %bb.b, %._ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj128EEEmNS_5ColorE.exit_crit_edge96, %bb.a
  %.010.i.lcssa = phi i64 [ %.010.i91, %bb.a ], [ %.010.i93, %._ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj128EEEmNS_5ColorE.exit_crit_edge96 ], [ %.010.i93, %.lr.ph ], [ %.010.i, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4928 x i8], ptr %0, i64 %.010.i.lcssa
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4800
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c
  %i.n = load i8, ptr %i.m, align 1, !tbaa !20, !range !21, !noundef !22
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj128EEEmNS_5ColorE.exit
  tail call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack26forward_update_incrementalINS1_8Features11HalfKAv2_hmELj128EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm(ptr noundef nonnull align 64 dereferenceable(2529288) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 64 dereferenceable(6488448) %3, i64 noundef %.010.i.lcssa) #11
  br label %bb.j

bb.e:                                             ; preds = %_ZNK9Stockfish4Eval4NNUE16AccumulatorStack28find_last_usable_accumulatorINS1_8Features11HalfKAv2_hmELj128EEEmNS_5ColorE.exit
  %i.p = load i64, ptr %i.a, align 64, !tbaa !17
  %i.q = getelementptr [4928 x i8], ptr %0, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.c
  %i.t = load i64, ptr %i.s, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23
  %i.w = and i64 %i.v, %i.t
  %i.x = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.w, i1 true) ; 2 uses
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = getelementptr inbounds nuw [768 x i8], ptr %4, i64 %i.x
  %i.aa = getelementptr inbounds nuw [384 x i8], ptr %i.z, i64 %i.c ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 288 ; 3 uses
  %i.ae = load <32 x i8>, ptr %i.ad, align 32, !tbaa !26
  %i.af = load <32 x i8>, ptr %2, align 8, !tbaa !26
  %i.ag = icmp eq <32 x i8> %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 320
  %i.ai = load <32 x i8>, ptr %i.ah, align 64, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = load <32 x i8>, ptr %i.aj, align 8, !tbaa !26
  %i.al = icmp eq <32 x i8> %i.ai, %i.ak
  %i.am = shufflevector <32 x i1> %i.ag, <32 x i1> %i.al, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.an = bitcast <64 x i1> %i.am to i64
  %i.ao = xor i64 %i.an, -1                       ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 352 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 32, !tbaa !88
  %i.ar = and i64 %i.aq, %i.ao                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !23
  %i.au = and i64 %i.at, %i.ao                    ; 3 uses
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ar) ; 3 uses
  %i.aw = icmp eq i64 %i.ar, 0
  br i1 %i.aw, label %.preheader186.i, label %.lr.ph.i

..preheader186_crit_edge.i:                       ; preds = %.lr.ph.i
  store i64 %i.av, ptr %i.ab, align 8
  %i.ax = trunc nuw nsw i64 %i.av to i32
  br label %.preheader186.i

.preheader186.i:                                  ; preds = %..preheader186_crit_edge.i, %bb.e
  %i.ay = phi i32 [ %i.ax, %..preheader186_crit_edge.i ], [ 0, %bb.e ] ; 10 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.au) ; 3 uses
  %i.ba = icmp eq i64 %i.au, 0
  br i1 %i.ba, label %.preheader185.i, label %.lr.ph198.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %tcphi = phi i64 [ %tcdec, %.lr.ph.i ], [ %i.av, %bb.e ]
  %i.bb = phi i64 [ %i.bj, %.lr.ph.i ], [ 0, %bb.e ] ; 2 uses
  %.0194.i = phi i64 [ %i.bf, %.lr.ph.i ], [ %i.ar, %bb.e ] ; 3 uses
  %i.bc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0194.i, i1 true) ; 2 uses
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  %i.be = add i64 %.0194.i, -1
  %i.bf = and i64 %i.be, %.0194.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bc
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !30
  %i.bi = tail call noundef i32 @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm10make_indexENS_5ColorENS_6SquareENS_5PieceES5_(i8 noundef zeroext %1, i8 noundef zeroext %i.bd, i8 noundef zeroext %i.bh, i8 noundef zeroext %i.y) #11
  %i.bj = add nuw nsw i64 %i.bb, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bb
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !31
  %tcdec = add nsw i64 %tcphi, -1                 ; 2 uses
  %exitcond = icmp eq i64 %tcdec, 0
  br i1 %exitcond, label %..preheader186_crit_edge.i, label %.lr.ph.i, !llvm.loop !73

.lr.ph198.i:                                      ; preds = %.preheader186.i, %.lr.ph198.i
  %tcphi53 = phi i64 [ %tcdec54, %.lr.ph198.i ], [ %i.az, %.preheader186.i ]
  %i.bl = phi i64 [ %i.bt, %.lr.ph198.i ], [ 0, %.preheader186.i ] ; 2 uses
  %.0173197.i = phi i64 [ %i.bp, %.lr.ph198.i ], [ %i.au, %.preheader186.i ] ; 3 uses
  %i.bm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0173197.i, i1 true) ; 2 uses
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  %i.bo = add i64 %.0173197.i, -1
  %i.bp = and i64 %i.bo, %.0173197.i
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bm
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !30
  %i.bs = tail call noundef i32 @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm10make_indexENS_5ColorENS_6SquareENS_5PieceES5_(i8 noundef zeroext %1, i8 noundef zeroext %i.bn, i8 noundef zeroext %i.br, i8 noundef zeroext %i.y) #11
  %i.bt = add nuw nsw i64 %i.bl, 1
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bl
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !31
  %tcdec54 = add nsw i64 %tcphi53, -1             ; 2 uses
  %exitcond53 = icmp eq i64 %tcdec54, 0
  br i1 %exitcond53, label %._crit_edge.i, label %.lr.ph198.i, !llvm.loop !74

._crit_edge.i:                                    ; preds = %.lr.ph198.i
  store i64 %i.az, ptr %i.ac, align 8
  %i.bv = trunc nuw nsw i64 %i.az to i32
  br label %.preheader185.i

.preheader185.i:                                  ; preds = %._crit_edge.i, %.preheader186.i
  %i.bw = phi i32 [ %i.bv, %._crit_edge.i ], [ 0, %.preheader186.i ] ; 7 uses
  %i.bx = load i64, ptr %i.as, align 8, !tbaa !23
  store i64 %i.bx, ptr %i.ap, align 32, !tbaa !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(1048) %2, i64 64, i1 false), !tbaa.struct !32
  %i.by = getelementptr i8, ptr %i.q, i64 -128
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.c
  store i8 1, ptr %i.bz, align 1, !tbaa !20
  %.sroa.0.0.copyload.i = load <32 x i16>, ptr %i.aa, align 64, !tbaa !26 ; 3 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  %.sroa.11.0.copyload.i = load <32 x i16>, ptr %.sroa.11.0..sroa_idx.i, align 64, !tbaa !26 ; 3 uses
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 128 ; 2 uses
  %.sroa.17.0.copyload.i = load <32 x i16>, ptr %.sroa.17.0..sroa_idx.i, align 64, !tbaa !26 ; 3 uses
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 192 ; 2 uses
  %.sroa.23.0.copyload.i = load <32 x i16>, ptr %.sroa.23.0..sroa_idx.i, align 64, !tbaa !26 ; 3 uses
  %i.ca = getelementptr i8, ptr %i.q, i64 -704
  %.0156216.i = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 28 uses
  %i.cb = getelementptr [256 x i8], ptr %i.ca, i64 %i.c ; 4 uses
  %i.cc = tail call i32 @llvm.umin.i32(i32 %i.bw, i32 %i.ay) ; 5 uses
  %.not = icmp eq i32 %i.cc, 0
  br i1 %.not, label %.preheader184.i, label %.lr.ph204.preheader.i

.lr.ph219.us.i:                                   ; preds = %.lr.ph219.us.i, %.lr.ph219.us.preheader.i.new
  %indvars.iv271.i = phi i64 [ 0, %.lr.ph219.us.preheader.i.new ], [ %indvars.iv.next272.i.7, %.lr.ph219.us.i ] ; 9 uses
  %i.cd = phi <8 x i32> [ %i.vh, %.lr.ph219.us.preheader.i.new ], [ %i.eg, %.lr.ph219.us.i ]
  %niter130 = phi i64 [ 0, %.lr.ph219.us.preheader.i.new ], [ %niter130.next.7, %.lr.ph219.us.i ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv271.i
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !31
  %i.cg = zext i32 %i.cf to i64
  %.idx175.us.i = shl nuw nsw i64 %i.cg, 5
  %i.ch = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx175.us.i
  %i.ci = load <8 x i32>, ptr %i.ch, align 32, !tbaa !26
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv271.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !31
  %i.cm = zext i32 %i.cl to i64
  %.idx175.us.i.1 = shl nuw nsw i64 %i.cm, 5
  %i.cn = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx175.us.i.1
  %i.co = load <8 x i32>, ptr %i.cn, align 32, !tbaa !26
  %i.cp = add <8 x i32> %i.ci, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv271.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !31
  %i.ct = zext i32 %i.cs to i64
  %.idx175.us.i.2 = shl nuw nsw i64 %i.ct, 5
  %i.cu = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx175.us.i.2
  %i.cv = load <8 x i32>, ptr %i.cu, align 32, !tbaa !26
  %i.cw = add <8 x i32> %i.cp, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv271.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !31
  %i.da = zext i32 %i.cz to i64
  %.idx175.us.i.3 = shl nuw nsw i64 %i.da, 5
  %i.db = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx175.us.i.3
  %i.dc = load <8 x i32>, ptr %i.db, align 32, !tbaa !26
  %i.dd = add <8 x i32> %i.cw, %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv271.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !31
  %i.dh = zext i32 %i.dg to i64
  %.idx175.us.i.4 = shl nuw nsw i64 %i.dh, 5
  %i.di = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx175.us.i.4
  %i.dj = load <8 x i32>, ptr %i.di, align 32, !tbaa !26
  %i.dk = add <8 x i32> %i.dd, %i.dj
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv271.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !31
  %i.do = zext i32 %i.dn to i64
  %.idx175.us.i.5 = shl nuw nsw i64 %i.do, 5
  %i.dp = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx175.us.i.5
  %i.dq = load <8 x i32>, ptr %i.dp, align 32, !tbaa !26
  %i.dr = add <8 x i32> %i.dk, %i.dq
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv271.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !31
  %i.dv = zext i32 %i.du to i64
  %.idx175.us.i.6 = shl nuw nsw i64 %i.dv, 5
  %i.dw = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx175.us.i.6
  %i.dx = load <8 x i32>, ptr %i.dw, align 32, !tbaa !26
  %i.dy = add <8 x i32> %i.dr, %i.dx
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv271.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 28
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !31
  %i.ec = zext i32 %i.eb to i64
  %.idx175.us.i.7 = shl nuw nsw i64 %i.ec, 5
  %i.ed = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx175.us.i.7
  %i.ee = load <8 x i32>, ptr %i.ed, align 32, !tbaa !26
  %i.ef = add <8 x i32> %i.dy, %i.ee
  %i.eg = sub <8 x i32> %i.cd, %i.ef              ; 3 uses
  %indvars.iv.next272.i.7 = add nuw nsw i64 %indvars.iv271.i, 8 ; 2 uses
  %niter130.next.7 = add i64 %niter130, 8         ; 2 uses
  %niter130.ncmp.7 = icmp eq i64 %niter130.next.7, %unroll_iter129
  br i1 %niter130.ncmp.7, label %.preheader177.us.i.loopexit.unr-lcssa, label %.lr.ph219.us.i, !llvm.loop !75

bb.f:                                             ; preds = %bb.f, %.preheader177.us.i.new
  %indvars.iv276.i = phi i64 [ 0, %.preheader177.us.i.new ], [ %indvars.iv.next277.i.7, %bb.f ] ; 9 uses
  %i.eh = phi <8 x i32> [ %.lcssa188.us.i, %.preheader177.us.i.new ], [ %i.gk, %bb.f ]
  %niter139 = phi i64 [ 0, %.preheader177.us.i.new ], [ %niter139.next.7, %bb.f ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv276.i
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !31
  %i.ek = zext i32 %i.ej to i64
  %.idx174.us.i = shl nuw nsw i64 %i.ek, 5
  %i.el = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx174.us.i
  %i.em = load <8 x i32>, ptr %i.el, align 32, !tbaa !26
  %i.en = add <8 x i32> %i.em, %i.eh
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv276.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !31
  %i.er = zext i32 %i.eq to i64
  %.idx174.us.i.1 = shl nuw nsw i64 %i.er, 5
  %i.es = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx174.us.i.1
  %i.et = load <8 x i32>, ptr %i.es, align 32, !tbaa !26
  %i.eu = add <8 x i32> %i.et, %i.en
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv276.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !31
  %i.ey = zext i32 %i.ex to i64
  %.idx174.us.i.2 = shl nuw nsw i64 %i.ey, 5
  %i.ez = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx174.us.i.2
  %i.fa = load <8 x i32>, ptr %i.ez, align 32, !tbaa !26
  %i.fb = add <8 x i32> %i.fa, %i.eu
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv276.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !31
  %i.ff = zext i32 %i.fe to i64
  %.idx174.us.i.3 = shl nuw nsw i64 %i.ff, 5
  %i.fg = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx174.us.i.3
  %i.fh = load <8 x i32>, ptr %i.fg, align 32, !tbaa !26
  %i.fi = add <8 x i32> %i.fh, %i.fb
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv276.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !31
  %i.fm = zext i32 %i.fl to i64
  %.idx174.us.i.4 = shl nuw nsw i64 %i.fm, 5
  %i.fn = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx174.us.i.4
  %i.fo = load <8 x i32>, ptr %i.fn, align 32, !tbaa !26
  %i.fp = add <8 x i32> %i.fo, %i.fi
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv276.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !31
  %i.ft = zext i32 %i.fs to i64
  %.idx174.us.i.5 = shl nuw nsw i64 %i.ft, 5
  %i.fu = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx174.us.i.5
  %i.fv = load <8 x i32>, ptr %i.fu, align 32, !tbaa !26
  %i.fw = add <8 x i32> %i.fv, %i.fp
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv276.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !31
  %i.ga = zext i32 %i.fz to i64
  %.idx174.us.i.6 = shl nuw nsw i64 %i.ga, 5
  %i.gb = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx174.us.i.6
  %i.gc = load <8 x i32>, ptr %i.gb, align 32, !tbaa !26
  %i.gd = add <8 x i32> %i.gc, %i.fw
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv276.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 28
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !31
  %i.gh = zext i32 %i.gg to i64
  %.idx174.us.i.7 = shl nuw nsw i64 %i.gh, 5
  %i.gi = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx174.us.i.7
  %i.gj = load <8 x i32>, ptr %i.gi, align 32, !tbaa !26
  %i.gk = add <8 x i32> %i.gj, %i.gd              ; 3 uses
  %indvars.iv.next277.i.7 = add nuw nsw i64 %indvars.iv276.i, 8 ; 2 uses
  %niter139.next.7 = add i64 %niter139, 8         ; 2 uses
  %niter139.ncmp.7 = icmp eq i64 %niter139.next.7, %unroll_iter138
  br i1 %niter139.ncmp.7, label %.split.sink.split.i.loopexit98.unr-lcssa, label %bb.f, !llvm.loop !76

.preheader177.us.i.loopexit.unr-lcssa:            ; preds = %.lr.ph219.us.i
  %lcmp.mod126.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod126.not, label %.preheader177.us.i, label %.lr.ph219.us.i.epil.preheader

.lr.ph219.us.i.epil.preheader:                    ; preds = %.preheader177.us.i.loopexit.unr-lcssa, %.lr.ph219.us.preheader.i
  %indvars.iv271.i.epil.init = phi i64 [ 0, %.lr.ph219.us.preheader.i ], [ %indvars.iv.next272.i.7, %.preheader177.us.i.loopexit.unr-lcssa ]
  %.epil.init = phi <8 x i32> [ %i.vh, %.lr.ph219.us.preheader.i ], [ %i.eg, %.preheader177.us.i.loopexit.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter124, 0
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %.lr.ph219.us.i.epil

.lr.ph219.us.i.epil:                              ; preds = %.lr.ph219.us.i.epil, %.lr.ph219.us.i.epil.preheader
  %indvars.iv271.i.epil = phi i64 [ %indvars.iv271.i.epil.init, %.lr.ph219.us.i.epil.preheader ], [ %indvars.iv.next272.i.epil, %.lr.ph219.us.i.epil ] ; 2 uses
  %i.gl = phi <8 x i32> [ %.epil.init, %.lr.ph219.us.i.epil.preheader ], [ %i.gr, %.lr.ph219.us.i.epil ]
  %epil.iter125 = phi i64 [ 0, %.lr.ph219.us.i.epil.preheader ], [ %epil.iter125.next, %.lr.ph219.us.i.epil ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv271.i.epil
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !31
  %i.go = zext i32 %i.gn to i64
  %.idx175.us.i.epil = shl nuw nsw i64 %i.go, 5
  %i.gp = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx175.us.i.epil
  %i.gq = load <8 x i32>, ptr %i.gp, align 32, !tbaa !26
  %i.gr = sub <8 x i32> %i.gl, %i.gq              ; 2 uses
  %indvars.iv.next272.i.epil = add nuw nsw i64 %indvars.iv271.i.epil, 1
  %epil.iter125.next = add i64 %epil.iter125, 1   ; 2 uses
  %epil.iter125.cmp.not = icmp eq i64 %epil.iter125.next, %xtraiter124
  br i1 %epil.iter125.cmp.not, label %.preheader177.us.i, label %.lr.ph219.us.i.epil, !llvm.loop !77

end_hunk_1
