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
  br label %bb.j

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

.preheader185.loopexit.i:                         ; preds = %.lr.ph.i
  store i64 %i.aw, ptr %i.ac, align 8
  %i.ay = trunc nuw nsw i64 %i.aw to i32
  br label %.preheader185.i

.preheader185.i:                                  ; preds = %.preheader185.loopexit.i, %bb.e
  %i.az = phi i32 [ %i.ay, %.preheader185.loopexit.i ], [ 0, %bb.e ] ; 6 uses
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.av) ; 3 uses
  %i.bb = icmp eq i64 %i.av, 0
  br i1 %i.bb, label %._crit_edge.i, label %.lr.ph196.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.bc = phi i64 [ %i.bk, %.lr.ph.i ], [ 0, %bb.e ] ; 2 uses
  %.0193.i = phi i64 [ %i.bg, %.lr.ph.i ], [ %i.as, %bb.e ] ; 3 uses
  %i.bd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0193.i, i1 true) ; 2 uses
  %i.be = trunc nuw nsw i64 %i.bd to i8
  %i.bf = add i64 %.0193.i, -1
  %i.bg = and i64 %i.bf, %.0193.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bd
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !30
  %i.bj = tail call noundef i32 @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm10make_indexENS_5ColorENS_6SquareENS_5PieceES5_(i8 noundef zeroext %1, i8 noundef zeroext %i.be, i8 noundef zeroext %i.bi, i8 noundef zeroext %i.z) #11
  %i.bk = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bc
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !31
  %exitcond = icmp eq i64 %i.bk, %i.aw
  br i1 %exitcond, label %.preheader185.loopexit.i, label %.lr.ph.i, !llvm.loop !50

.lr.ph196.i:                                      ; preds = %.preheader185.i, %.lr.ph196.i
  %i.bm = phi i64 [ %i.bu, %.lr.ph196.i ], [ 0, %.preheader185.i ] ; 2 uses
  %.0173195.i = phi i64 [ %i.bq, %.lr.ph196.i ], [ %i.av, %.preheader185.i ] ; 3 uses
  %i.bn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0173195.i, i1 true) ; 2 uses
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  %i.bp = add i64 %.0173195.i, -1
  %i.bq = and i64 %i.bp, %.0173195.i
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 %i.bn
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !30
  %i.bt = tail call noundef i32 @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm10make_indexENS_5ColorENS_6SquareENS_5PieceES5_(i8 noundef zeroext %1, i8 noundef zeroext %i.bo, i8 noundef zeroext %i.bs, i8 noundef zeroext %i.z) #11
  %i.bu = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bm
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !31
  %exitcond137 = icmp eq i64 %i.bu, %i.ba
  br i1 %exitcond137, label %._crit_edge.loopexit.i, label %.lr.ph196.i, !llvm.loop !51

._crit_edge.loopexit.i:                           ; preds = %.lr.ph196.i
  store i64 %i.ba, ptr %i.ad, align 8
  %i.bw = trunc nuw nsw i64 %i.ba to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader185.i
  %i.bx = phi i32 [ %i.bw, %._crit_edge.loopexit.i ], [ 0, %.preheader185.i ] ; 3 uses
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
  %wide.trip.count245.i = zext i32 %i.az to i64   ; 3 uses
  %i.ce = icmp slt i32 %i.cd, %i.az
  %i.cf = zext nneg i32 %i.cd to i64              ; 3 uses
  %wide.trip.count = zext i32 %i.bx to i64        ; 3 uses
  %i.cg = sub nsw i64 %wide.trip.count245.i, %wide.trip.count.i
  %smax = tail call i32 @llvm.smax.i32(i32 %i.az, i32 %i.cd)
  %i.ch = zext nneg i32 %smax to i64              ; 2 uses
  %i.ci = sub nsw i64 %wide.trip.count, %i.ch
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cf
  %indvars.iv.next243.i.prol = add nuw nsw i64 %i.cf, 1
  %i.ck = add nsw i64 %wide.trip.count245.i, -1
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

.lr.ph215.us.i:                                   ; preds = %.lr.ph215.us.i, %.lr.ph215.us.preheader.i.new
  %indvars.iv268.i.a = phi i64 [ 0, %.lr.ph215.us.preheader.i.new ], [ %indvars.iv.next269.i.7.a, %.lr.ph215.us.i ] ; 9 uses
  %i.cx = phi <8 x i32> [ %i.cw, %.lr.ph215.us.preheader.i.new ], [ %i.fa, %.lr.ph215.us.i ]
  %niter317 = phi i64 [ 0, %.lr.ph215.us.preheader.i.new ], [ %niter317.next.7, %.lr.ph215.us.i ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv268.i.a
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !31
  %i.da = zext i32 %i.cz to i64
  %.idx175.us.i = shl nuw nsw i64 %i.da, 5
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx175.us.i
  %i.dc = load <8 x i32>, ptr %i.db, align 32, !tbaa !26
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv268.i.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !31
  %i.dg = zext i32 %i.df to i64
  %.idx175.us.i.1 = shl nuw nsw i64 %i.dg, 5
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx175.us.i.1
  %i.di = load <8 x i32>, ptr %i.dh, align 32, !tbaa !26
  %i.dj = add <8 x i32> %i.dc, %i.di
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv268.i.a
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !31
  %i.dn = zext i32 %i.dm to i64
  %.idx175.us.i.2 = shl nuw nsw i64 %i.dn, 5
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx175.us.i.2
  %i.dp = load <8 x i32>, ptr %i.do, align 32, !tbaa !26
  %i.dq = add <8 x i32> %i.dj, %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv268.i.a
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !31
  %i.du = zext i32 %i.dt to i64
  %.idx175.us.i.3 = shl nuw nsw i64 %i.du, 5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx175.us.i.3
  %i.dw = load <8 x i32>, ptr %i.dv, align 32, !tbaa !26
  %i.dx = add <8 x i32> %i.dq, %i.dw
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv268.i.a
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !31
  %i.eb = zext i32 %i.ea to i64
  %.idx175.us.i.4 = shl nuw nsw i64 %i.eb, 5
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx175.us.i.4
  %i.ed = load <8 x i32>, ptr %i.ec, align 32, !tbaa !26
  %i.ee = add <8 x i32> %i.dx, %i.ed
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv268.i.a
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !31
  %i.ei = zext i32 %i.eh to i64
  %.idx175.us.i.5 = shl nuw nsw i64 %i.ei, 5
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx175.us.i.5
  %i.ek = load <8 x i32>, ptr %i.ej, align 32, !tbaa !26
  %i.el = add <8 x i32> %i.ee, %i.ek
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv268.i.a
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !31
  %i.ep = zext i32 %i.eo to i64
  %.idx175.us.i.6 = shl nuw nsw i64 %i.ep, 5
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx175.us.i.6
  %i.er = load <8 x i32>, ptr %i.eq, align 32, !tbaa !26
  %i.es = add <8 x i32> %i.el, %i.er
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv268.i.a
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 28
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !31
  %i.ew = zext i32 %i.ev to i64
  %.idx175.us.i.7 = shl nuw nsw i64 %i.ew, 5
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx175.us.i.7
  %i.ey = load <8 x i32>, ptr %i.ex, align 32, !tbaa !26
  %i.ez = add <8 x i32> %i.es, %i.ey
  %i.fa = sub <8 x i32> %i.cx, %i.ez              ; 3 uses
  %indvars.iv.next269.i.7.a = add nuw nsw i64 %indvars.iv268.i.a, 8 ; 2 uses
  %niter317.next.7 = add i64 %niter317, 8         ; 2 uses
  %niter317.ncmp.7 = icmp eq i64 %niter317.next.7, %unroll_iter316
  br i1 %niter317.ncmp.7, label %.preheader177.us.i.loopexit.unr-lcssa, label %.lr.ph215.us.i, !llvm.loop !52

bb.f:                                             ; preds = %bb.f, %.preheader177.us.i.new
  %indvars.iv273.i = phi i64 [ 0, %.preheader177.us.i.new ], [ %indvars.iv.next274.i.7, %bb.f ] ; 9 uses
  %i.fb = phi <8 x i32> [ %.lcssa187.us.i, %.preheader177.us.i.new ], [ %i.he, %bb.f ]
  %niter327 = phi i64 [ 0, %.preheader177.us.i.new ], [ %niter327.next.7, %bb.f ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv273.i
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !31
  %i.fe = zext i32 %i.fd to i64
  %.idx174.us.i = shl nuw nsw i64 %i.fe, 5
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx174.us.i
  %i.fg = load <8 x i32>, ptr %i.ff, align 32, !tbaa !26
  %i.fh = add <8 x i32> %i.fg, %i.fb
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv273.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !31
  %i.fl = zext i32 %i.fk to i64
  %.idx174.us.i.1 = shl nuw nsw i64 %i.fl, 5
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx174.us.i.1
  %i.fn = load <8 x i32>, ptr %i.fm, align 32, !tbaa !26
  %i.fo = add <8 x i32> %i.fn, %i.fh
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv273.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !31
  %i.fs = zext i32 %i.fr to i64
  %.idx174.us.i.2 = shl nuw nsw i64 %i.fs, 5
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx174.us.i.2
  %i.fu = load <8 x i32>, ptr %i.ft, align 32, !tbaa !26
  %i.fv = add <8 x i32> %i.fu, %i.fo
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv273.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !31
  %i.fz = zext i32 %i.fy to i64
  %.idx174.us.i.3 = shl nuw nsw i64 %i.fz, 5
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx174.us.i.3
  %i.gb = load <8 x i32>, ptr %i.ga, align 32, !tbaa !26
  %i.gc = add <8 x i32> %i.gb, %i.fv
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv273.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !31
  %i.gg = zext i32 %i.gf to i64
  %.idx174.us.i.4 = shl nuw nsw i64 %i.gg, 5
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx174.us.i.4
  %i.gi = load <8 x i32>, ptr %i.gh, align 32, !tbaa !26
  %i.gj = add <8 x i32> %i.gi, %i.gc
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv273.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 20
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !31
  %i.gn = zext i32 %i.gm to i64
  %.idx174.us.i.5 = shl nuw nsw i64 %i.gn, 5
  %i.go = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx174.us.i.5
  %i.gp = load <8 x i32>, ptr %i.go, align 32, !tbaa !26
  %i.gq = add <8 x i32> %i.gp, %i.gj
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv273.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !31
  %i.gu = zext i32 %i.gt to i64
  %.idx174.us.i.6 = shl nuw nsw i64 %i.gu, 5
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx174.us.i.6
  %i.gw = load <8 x i32>, ptr %i.gv, align 32, !tbaa !26
  %i.gx = add <8 x i32> %i.gw, %i.gq
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv273.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 28
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !31
  %i.hb = zext i32 %i.ha to i64
  %.idx174.us.i.7 = shl nuw nsw i64 %i.hb, 5
  %i.hc = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx174.us.i.7
  %i.hd = load <8 x i32>, ptr %i.hc, align 32, !tbaa !26
  %i.he = add <8 x i32> %i.hd, %i.gx              ; 3 uses
  %indvars.iv.next274.i.7 = add nuw nsw i64 %indvars.iv273.i, 8 ; 2 uses
  %niter327.next.7 = add i64 %niter327, 8         ; 2 uses
  %niter327.ncmp.7 = icmp eq i64 %niter327.next.7, %unroll_iter326
  br i1 %niter327.ncmp.7, label %.split.sink.split.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !53

.preheader177.us.i.loopexit.unr-lcssa:            ; preds = %.lr.ph215.us.i
  %lcmp.mod313.not = icmp eq i64 %xtraiter309, 0
  br i1 %lcmp.mod313.not, label %.preheader177.us.i, label %.lr.ph215.us.i.epil.preheader

.lr.ph215.us.i.epil.preheader:                    ; preds = %.preheader177.us.i.loopexit.unr-lcssa, %.lr.ph215.us.preheader.i
  %indvars.iv268.i.epil.init.a = phi i64 [ 0, %.lr.ph215.us.preheader.i ], [ %indvars.iv.next269.i.7.a, %.preheader177.us.i.loopexit.unr-lcssa ]
  %.epil.init312 = phi <8 x i32> [ %i.cw, %.lr.ph215.us.preheader.i ], [ %i.fa, %.preheader177.us.i.loopexit.unr-lcssa ]
  %lcmp.mod315 = icmp ne i64 %xtraiter309, 0
end_hunk_0
begin_hunk_1_@_ZN9Stockfish4Eval4NNUE16AccumulatorStack13evaluate_sideINS1_8Features11FullThreatsELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEERNS1_17AccumulatorCaches5CacheIXT0_EEE:bb.a
  store <32 x i16> %.lcssa159, ptr %.sroa.30.0..sroa_idx156.i, align 64, !tbaa !26
  %.sroa.34.0..sroa_idx166.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1408
  store <32 x i16> %.lcssa158, ptr %.sroa.34.0..sroa_idx166.i, align 64, !tbaa !26
  %.sroa.38.0..sroa_idx176.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1472
  store <32 x i16> %.lcssa157, ptr %.sroa.38.0..sroa_idx176.i, align 64, !tbaa !26
  %.sroa.42.0..sroa_idx186.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1536
  store <32 x i16> %.lcssa156, ptr %.sroa.42.0..sroa_idx186.i, align 64, !tbaa !26
  %.sroa.46.0..sroa_idx196.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1600
  store <32 x i16> %.lcssa155, ptr %.sroa.46.0..sroa_idx196.i, align 64, !tbaa !26
  %.sroa.50.0..sroa_idx206.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1664
  store <32 x i16> %.lcssa154, ptr %.sroa.50.0..sroa_idx206.i, align 64, !tbaa !26
  %.sroa.54.0..sroa_idx216.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1728
  store <32 x i16> %.lcssa153, ptr %.sroa.54.0..sroa_idx216.i, align 64, !tbaa !26
  %.sroa.58.0..sroa_idx226.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1792
  store <32 x i16> %.lcssa152, ptr %.sroa.58.0..sroa_idx226.i, align 64, !tbaa !26
  %.sroa.62.0..sroa_idx236.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1856
  store <32 x i16> %.lcssa151, ptr %.sroa.62.0..sroa_idx236.i, align 64, !tbaa !26
  %.sroa.66.0..sroa_idx246.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1920
  store <32 x i16> %.lcssa150, ptr %.sroa.66.0..sroa_idx246.i, align 64, !tbaa !26
  %.sroa.70.0..sroa_idx256.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1984
  store <32 x i16> %.lcssa149, ptr %.sroa.70.0..sroa_idx256.i, align 64, !tbaa !26
  %i.qa = getelementptr inbounds nuw i8, ptr %3, i64 128632832 ; 9 uses
  %xtraiter220 = and i64 %i.y, 7                  ; 3 uses
  %i.qb = icmp ult i64 %i.ab, 7
  br i1 %i.qb, label %.preheader68.us.i.epil.preheader, label %.preheader69.split81.us.preheader.i.new

.preheader69.split81.us.preheader.i.new:          ; preds = %.preheader69.split81.us.preheader.i
  %unroll_iter224 = and i64 %i.y, 2147483640
  br label %.preheader68.us.i

.preheader68.us.i:                                ; preds = %.preheader68.us.i, %.preheader69.split81.us.preheader.i.new
  %indvars.iv97.i = phi i64 [ 0, %.preheader69.split81.us.preheader.i.new ], [ %indvars.iv.next98.i.7, %.preheader68.us.i ] ; 9 uses
  %i.qc = phi <8 x i32> [ zeroinitializer, %.preheader69.split81.us.preheader.i.new ], [ %i.sf, %.preheader68.us.i ]
  %niter225 = phi i64 [ 0, %.preheader69.split81.us.preheader.i.new ], [ %niter225.next.7, %.preheader68.us.i ]
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv97.i
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !31
  %i.qf = zext i32 %i.qe to i64
  %.idx.us.i = shl nuw nsw i64 %i.qf, 5
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx.us.i
  %i.qh = load <8 x i32>, ptr %i.qg, align 32, !tbaa !26
  %i.qi = add <8 x i32> %i.qh, %i.qc
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv97.i
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !31
  %i.qm = zext i32 %i.ql to i64
  %.idx.us.i.1 = shl nuw nsw i64 %i.qm, 5
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx.us.i.1
  %i.qo = load <8 x i32>, ptr %i.qn, align 32, !tbaa !26
  %i.qp = add <8 x i32> %i.qo, %i.qi
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv97.i
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !31
  %i.qt = zext i32 %i.qs to i64
  %.idx.us.i.2 = shl nuw nsw i64 %i.qt, 5
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx.us.i.2
  %i.qv = load <8 x i32>, ptr %i.qu, align 32, !tbaa !26
  %i.qw = add <8 x i32> %i.qv, %i.qp
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv97.i
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 12
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !31
  %i.ra = zext i32 %i.qz to i64
  %.idx.us.i.3 = shl nuw nsw i64 %i.ra, 5
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx.us.i.3
  %i.rc = load <8 x i32>, ptr %i.rb, align 32, !tbaa !26
  %i.rd = add <8 x i32> %i.rc, %i.qw
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv97.i
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rg = load i32, ptr %i.rf, align 8, !tbaa !31
  %i.rh = zext i32 %i.rg to i64
  %.idx.us.i.4 = shl nuw nsw i64 %i.rh, 5
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx.us.i.4
  %i.rj = load <8 x i32>, ptr %i.ri, align 32, !tbaa !26
  %i.rk = add <8 x i32> %i.rj, %i.rd
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv97.i
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 20
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !31
  %i.ro = zext i32 %i.rn to i64
  %.idx.us.i.5 = shl nuw nsw i64 %i.ro, 5
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx.us.i.5
  %i.rq = load <8 x i32>, ptr %i.rp, align 32, !tbaa !26
  %i.rr = add <8 x i32> %i.rq, %i.rk
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv97.i
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 24
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !31
  %i.rv = zext i32 %i.ru to i64
  %.idx.us.i.6 = shl nuw nsw i64 %i.rv, 5
  %i.rw = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx.us.i.6
  %i.rx = load <8 x i32>, ptr %i.rw, align 32, !tbaa !26
  %i.ry = add <8 x i32> %i.rx, %i.rr
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv97.i
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 28
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !31
  %i.sc = zext i32 %i.sb to i64
  %.idx.us.i.7 = shl nuw nsw i64 %i.sc, 5
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx.us.i.7
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
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 288 ; 3 uses
  %i.ac = load <32 x i8>, ptr %i.ab, align 32, !tbaa !26
  %i.ad = load <32 x i8>, ptr %2, align 8, !tbaa !26
  %i.ae = icmp eq <32 x i8> %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 320
  %i.ag = load <32 x i8>, ptr %i.af, align 64, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load <32 x i8>, ptr %i.ah, align 8, !tbaa !26
  %i.aj = icmp eq <32 x i8> %i.ag, %i.ai
  %i.ak = shufflevector <32 x i1> %i.ae, <32 x i1> %i.aj, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.al = bitcast <64 x i1> %i.ak to i64
  %i.am = xor i64 %i.al, -1                       ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 352 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 32, !tbaa !88
  %i.ap = and i64 %i.ao, %i.am                    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !23
  %i.as = and i64 %i.ar, %i.am                    ; 3 uses
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ap) ; 3 uses
  %i.au = icmp eq i64 %i.ap, 0
  br i1 %i.au, label %.preheader186.i, label %.lr.ph.i

.preheader186.loopexit.i:                         ; preds = %.lr.ph.i
  store i64 %i.at, ptr %7, align 8
  %i.av = trunc nuw nsw i64 %i.at to i32
  br label %.preheader186.i

.preheader186.i:                                  ; preds = %.preheader186.loopexit.i, %bb.e
  %i.aw = phi i32 [ %i.av, %.preheader186.loopexit.i ], [ 0, %bb.e ] ; 10 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.as) ; 3 uses
  %i.ay = icmp eq i64 %i.as, 0
  br i1 %i.ay, label %._crit_edge.i, label %.lr.ph197.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.az = phi i64 [ %i.bh, %.lr.ph.i ], [ 0, %bb.e ] ; 2 uses
  %.0194.i = phi i64 [ %i.bd, %.lr.ph.i ], [ %i.ap, %bb.e ] ; 3 uses
  %i.ba = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0194.i, i1 true) ; 2 uses
  %i.bb = trunc nuw nsw i64 %i.ba to i8
  %i.bc = add i64 %.0194.i, -1
  %i.bd = and i64 %i.bc, %.0194.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ba
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !30
  %i.bg = tail call noundef i32 @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm10make_indexENS_5ColorENS_6SquareENS_5PieceES5_(i8 noundef zeroext %1, i8 noundef zeroext %i.bb, i8 noundef zeroext %i.bf, i8 noundef zeroext %i.y) #11
  %i.bh = add nuw nsw i64 %i.az, 1                ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.az
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !31
  %exitcond = icmp eq i64 %i.bh, %i.at
  br i1 %exitcond, label %.preheader186.loopexit.i, label %.lr.ph.i, !llvm.loop !73

.lr.ph197.i:                                      ; preds = %.preheader186.i, %.lr.ph197.i
  %i.bj = phi i64 [ %i.br, %.lr.ph197.i ], [ 0, %.preheader186.i ] ; 2 uses
  %.0173196.i = phi i64 [ %i.bn, %.lr.ph197.i ], [ %i.as, %.preheader186.i ] ; 3 uses
  %i.bk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0173196.i, i1 true) ; 2 uses
  %i.bl = trunc nuw nsw i64 %i.bk to i8
  %i.bm = add i64 %.0173196.i, -1
  %i.bn = and i64 %i.bm, %.0173196.i
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %i.bk
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !30
  %i.bq = tail call noundef i32 @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm10make_indexENS_5ColorENS_6SquareENS_5PieceES5_(i8 noundef zeroext %1, i8 noundef zeroext %i.bl, i8 noundef zeroext %i.bp, i8 noundef zeroext %i.y) #11
  %i.br = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bj
  store i32 %i.bq, ptr %i.bs, align 4, !tbaa !31
  %exitcond53 = icmp eq i64 %i.br, %i.ax
  br i1 %exitcond53, label %._crit_edge.loopexit.i, label %.lr.ph197.i, !llvm.loop !74

._crit_edge.loopexit.i:                           ; preds = %.lr.ph197.i
  store i64 %i.ax, ptr %8, align 8
  %i.bt = trunc nuw nsw i64 %i.ax to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader186.i
  %i.bu = phi i32 [ %i.bt, %._crit_edge.loopexit.i ], [ 0, %.preheader186.i ] ; 7 uses
  %i.bv = load i64, ptr %i.aq, align 8, !tbaa !23
  store i64 %i.bv, ptr %i.an, align 32, !tbaa !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(1048) %2, i64 64, i1 false), !tbaa.struct !32
  %i.bw = getelementptr i8, ptr %i.q, i64 -128
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.c
  store i8 1, ptr %i.bx, align 1, !tbaa !20
  %.sroa.0.0.copyload.i = load <32 x i16>, ptr %i.aa, align 64, !tbaa !26 ; 3 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  %.sroa.11.0.copyload.i = load <32 x i16>, ptr %.sroa.11.0..sroa_idx.i, align 64, !tbaa !26 ; 3 uses
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 128 ; 2 uses
  %.sroa.17.0.copyload.i = load <32 x i16>, ptr %.sroa.17.0..sroa_idx.i, align 64, !tbaa !26 ; 3 uses
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 192 ; 2 uses
  %.sroa.23.0.copyload.i = load <32 x i16>, ptr %.sroa.23.0..sroa_idx.i, align 64, !tbaa !26 ; 3 uses
  %i.by = getelementptr i8, ptr %i.q, i64 -704
  %.0156213.i = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 28 uses
  %i.bz = getelementptr [256 x i8], ptr %i.by, i64 %i.c ; 4 uses
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 %i.aw) ; 5 uses
  %.not = icmp eq i32 %i.ca, 0
  br i1 %.not, label %.preheader184.i, label %.lr.ph201.preheader.i

.lr.ph216.us.i:                                   ; preds = %.lr.ph216.us.i, %.lr.ph216.us.preheader.i.new
  %indvars.iv266.i.a = phi i64 [ 0, %.lr.ph216.us.preheader.i.new ], [ %indvars.iv.next267.i.7.a, %.lr.ph216.us.i ] ; 9 uses
  %i.cb = phi <8 x i32> [ %i.vf, %.lr.ph216.us.preheader.i.new ], [ %i.ee, %.lr.ph216.us.i ]
  %niter130 = phi i64 [ 0, %.lr.ph216.us.preheader.i.new ], [ %niter130.next.7, %.lr.ph216.us.i ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv266.i.a
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !31
  %i.ce = zext i32 %i.cd to i64
  %.idx175.us.i = shl nuw nsw i64 %i.ce, 5
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx175.us.i
  %i.cg = load <8 x i32>, ptr %i.cf, align 32, !tbaa !26
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv266.i.a
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !31
  %i.ck = zext i32 %i.cj to i64
  %.idx175.us.i.1 = shl nuw nsw i64 %i.ck, 5
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx175.us.i.1
  %i.cm = load <8 x i32>, ptr %i.cl, align 32, !tbaa !26
  %i.cn = add <8 x i32> %i.cg, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv266.i.a
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !31
  %i.cr = zext i32 %i.cq to i64
  %.idx175.us.i.2 = shl nuw nsw i64 %i.cr, 5
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx175.us.i.2
  %i.ct = load <8 x i32>, ptr %i.cs, align 32, !tbaa !26
  %i.cu = add <8 x i32> %i.cn, %i.ct
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv266.i.a
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !31
  %i.cy = zext i32 %i.cx to i64
  %.idx175.us.i.3 = shl nuw nsw i64 %i.cy, 5
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx175.us.i.3
  %i.da = load <8 x i32>, ptr %i.cz, align 32, !tbaa !26
  %i.db = add <8 x i32> %i.cu, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv266.i.a
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !31
  %i.df = zext i32 %i.de to i64
  %.idx175.us.i.4 = shl nuw nsw i64 %i.df, 5
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx175.us.i.4
  %i.dh = load <8 x i32>, ptr %i.dg, align 32, !tbaa !26
  %i.di = add <8 x i32> %i.db, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv266.i.a
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !31
  %i.dm = zext i32 %i.dl to i64
  %.idx175.us.i.5 = shl nuw nsw i64 %i.dm, 5
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx175.us.i.5
  %i.do = load <8 x i32>, ptr %i.dn, align 32, !tbaa !26
  %i.dp = add <8 x i32> %i.di, %i.do
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv266.i.a
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !31
  %i.dt = zext i32 %i.ds to i64
  %.idx175.us.i.6 = shl nuw nsw i64 %i.dt, 5
  %i.du = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx175.us.i.6
  %i.dv = load <8 x i32>, ptr %i.du, align 32, !tbaa !26
  %i.dw = add <8 x i32> %i.dp, %i.dv
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv266.i.a
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 28
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !31
  %i.ea = zext i32 %i.dz to i64
  %.idx175.us.i.7 = shl nuw nsw i64 %i.ea, 5
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx175.us.i.7
  %i.ec = load <8 x i32>, ptr %i.eb, align 32, !tbaa !26
  %i.ed = add <8 x i32> %i.dw, %i.ec
  %i.ee = sub <8 x i32> %i.cb, %i.ed              ; 3 uses
  %indvars.iv.next267.i.7.a = add nuw nsw i64 %indvars.iv266.i.a, 8 ; 2 uses
  %niter130.next.7 = add i64 %niter130, 8         ; 2 uses
  %niter130.ncmp.7 = icmp eq i64 %niter130.next.7, %unroll_iter129
  br i1 %niter130.ncmp.7, label %.preheader177.us.i.loopexit.unr-lcssa, label %.lr.ph216.us.i, !llvm.loop !75

bb.f:                                             ; preds = %bb.f, %.preheader177.us.i.new
  %indvars.iv271.i = phi i64 [ 0, %.preheader177.us.i.new ], [ %indvars.iv.next272.i.7, %bb.f ] ; 9 uses
  %i.ef = phi <8 x i32> [ %.lcssa188.us.i, %.preheader177.us.i.new ], [ %i.gi, %bb.f ]
  %niter139 = phi i64 [ 0, %.preheader177.us.i.new ], [ %niter139.next.7, %bb.f ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv271.i
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !31
  %i.ei = zext i32 %i.eh to i64
  %.idx174.us.i = shl nuw nsw i64 %i.ei, 5
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx174.us.i
  %i.ek = load <8 x i32>, ptr %i.ej, align 32, !tbaa !26
  %i.el = add <8 x i32> %i.ek, %i.ef
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv271.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !31
  %i.ep = zext i32 %i.eo to i64
  %.idx174.us.i.1 = shl nuw nsw i64 %i.ep, 5
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx174.us.i.1
  %i.er = load <8 x i32>, ptr %i.eq, align 32, !tbaa !26
  %i.es = add <8 x i32> %i.er, %i.el
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv271.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !31
  %i.ew = zext i32 %i.ev to i64
  %.idx174.us.i.2 = shl nuw nsw i64 %i.ew, 5
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx174.us.i.2
  %i.ey = load <8 x i32>, ptr %i.ex, align 32, !tbaa !26
  %i.ez = add <8 x i32> %i.ey, %i.es
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv271.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !31
  %i.fd = zext i32 %i.fc to i64
  %.idx174.us.i.3 = shl nuw nsw i64 %i.fd, 5
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx174.us.i.3
  %i.ff = load <8 x i32>, ptr %i.fe, align 32, !tbaa !26
  %i.fg = add <8 x i32> %i.ff, %i.ez
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv271.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !31
  %i.fk = zext i32 %i.fj to i64
  %.idx174.us.i.4 = shl nuw nsw i64 %i.fk, 5
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx174.us.i.4
  %i.fm = load <8 x i32>, ptr %i.fl, align 32, !tbaa !26
  %i.fn = add <8 x i32> %i.fm, %i.fg
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv271.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 20
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !31
  %i.fr = zext i32 %i.fq to i64
  %.idx174.us.i.5 = shl nuw nsw i64 %i.fr, 5
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx174.us.i.5
  %i.ft = load <8 x i32>, ptr %i.fs, align 32, !tbaa !26
  %i.fu = add <8 x i32> %i.ft, %i.fn
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv271.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !31
  %i.fy = zext i32 %i.fx to i64
  %.idx174.us.i.6 = shl nuw nsw i64 %i.fy, 5
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx174.us.i.6
  %i.ga = load <8 x i32>, ptr %i.fz, align 32, !tbaa !26
  %i.gb = add <8 x i32> %i.ga, %i.fu
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv271.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 28
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !31
  %i.gf = zext i32 %i.ge to i64
  %.idx174.us.i.7 = shl nuw nsw i64 %i.gf, 5
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx174.us.i.7
  %i.gh = load <8 x i32>, ptr %i.gg, align 32, !tbaa !26
  %i.gi = add <8 x i32> %i.gh, %i.gb              ; 3 uses
  %indvars.iv.next272.i.7 = add nuw nsw i64 %indvars.iv271.i, 8 ; 2 uses
  %niter139.next.7 = add i64 %niter139, 8         ; 2 uses
  %niter139.ncmp.7 = icmp eq i64 %niter139.next.7, %unroll_iter138
  br i1 %niter139.ncmp.7, label %.split.sink.split.i.loopexit98.unr-lcssa, label %bb.f, !llvm.loop !76

.preheader177.us.i.loopexit.unr-lcssa:            ; preds = %.lr.ph216.us.i
  %lcmp.mod126.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod126.not, label %.preheader177.us.i, label %.lr.ph216.us.i.epil.preheader

.lr.ph216.us.i.epil.preheader:                    ; preds = %.preheader177.us.i.loopexit.unr-lcssa, %.lr.ph216.us.preheader.i
  %indvars.iv266.i.epil.init.a = phi i64 [ 0, %.lr.ph216.us.preheader.i ], [ %indvars.iv.next267.i.7.a, %.preheader177.us.i.loopexit.unr-lcssa ]
  %.epil.init = phi <8 x i32> [ %i.vf, %.lr.ph216.us.preheader.i ], [ %i.ee, %.preheader177.us.i.loopexit.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter124, 0
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %.lr.ph216.us.i.epil

.lr.ph216.us.i.epil:                              ; preds = %.lr.ph216.us.i.epil, %.lr.ph216.us.i.epil.preheader
  %indvars.iv266.i.epil.a = phi i64 [ %indvars.iv266.i.epil.init.a, %.lr.ph216.us.i.epil.preheader ], [ %indvars.iv.next267.i.epil.a, %.lr.ph216.us.i.epil ] ; 2 uses
  %i.gj = phi <8 x i32> [ %.epil.init, %.lr.ph216.us.i.epil.preheader ], [ %i.gp, %.lr.ph216.us.i.epil ]
  %epil.iter125 = phi i64 [ 0, %.lr.ph216.us.i.epil.preheader ], [ %epil.iter125.next, %.lr.ph216.us.i.epil ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv266.i.epil.a
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !31
  %i.gm = zext i32 %i.gl to i64
  %.idx175.us.i.epil = shl nuw nsw i64 %i.gm, 5
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.idx175.us.i.epil
  %i.go = load <8 x i32>, ptr %i.gn, align 32, !tbaa !26
  %i.gp = sub <8 x i32> %i.gj, %i.go              ; 2 uses
  %indvars.iv.next267.i.epil.a = add nuw nsw i64 %indvars.iv266.i.epil.a, 1
  %epil.iter125.next = add i64 %epil.iter125, 1   ; 2 uses
  %epil.iter125.cmp.not = icmp eq i64 %epil.iter125.next, %xtraiter124
  br i1 %epil.iter125.cmp.not, label %.preheader177.us.i, label %.lr.ph216.us.i.epil, !llvm.loop !77

.preheader177.us.i:                               ; preds = %.preheader177.us.i.loopexit.unr-lcssa, %.lr.ph216.us.i.epil, %.preheader178.us.i
  %.lcssa188.us.i = phi <8 x i32> [ %i.vf, %.preheader178.us.i ], [ %i.ee, %.preheader177.us.i.loopexit.unr-lcssa ], [ %i.gp, %.lr.ph216.us.i.epil ] ; 2 uses
  %wide.trip.count274.i.a = zext nneg i32 %i.bu to i64 ; 2 uses
  %xtraiter131 = and i64 %wide.trip.count274.i.a, 7 ; 3 uses
end_hunk_1
