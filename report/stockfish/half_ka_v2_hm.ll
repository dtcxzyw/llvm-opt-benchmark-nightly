Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/half_ka_v2_hm?download=true
inline.NumInlined: 24
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

$_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm9OrientTBLE = comdat any

$_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm16PieceSquareIndexE = comdat any

$_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm11KingBucketsE = comdat any

@_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm9OrientTBLE = linkonce_odr dso_local local_unnamed_addr constant [64 x i32] [i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0], comdat, align 16
@_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm16PieceSquareIndexE = linkonce_odr dso_local local_unnamed_addr constant [2 x [16 x i32]] [[16 x i32] [i32 0, i32 0, i32 128, i32 256, i32 384, i32 512, i32 640, i32 0, i32 0, i32 64, i32 192, i32 320, i32 448, i32 576, i32 640, i32 0], [16 x i32] [i32 0, i32 64, i32 192, i32 320, i32 448, i32 576, i32 640, i32 0, i32 0, i32 0, i32 128, i32 256, i32 384, i32 512, i32 640, i32 0]], comdat, align 16
@_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm11KingBucketsE = linkonce_odr dso_local local_unnamed_addr constant [64 x i32] [i32 19712, i32 20416, i32 21120, i32 21824, i32 21824, i32 21120, i32 20416, i32 19712, i32 16896, i32 17600, i32 18304, i32 19008, i32 19008, i32 18304, i32 17600, i32 16896, i32 14080, i32 14784, i32 15488, i32 16192, i32 16192, i32 15488, i32 14784, i32 14080, i32 11264, i32 11968, i32 12672, i32 13376, i32 13376, i32 12672, i32 11968, i32 11264, i32 8448, i32 9152, i32 9856, i32 10560, i32 10560, i32 9856, i32 9152, i32 8448, i32 5632, i32 6336, i32 7040, i32 7744, i32 7744, i32 7040, i32 6336, i32 5632, i32 2816, i32 3520, i32 4224, i32 4928, i32 4928, i32 4224, i32 3520, i32 2816, i32 0, i32 704, i32 1408, i32 2112, i32 2112, i32 1408, i32 704, i32 0], comdat, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm10make_indexENS_5ColorENS_6SquareENS_5PieceES5_(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i8 %0 to i32
  %i.b = mul nuw nsw i32 %i.a, 56                 ; 2 uses
  %i.c = zext i8 %1 to i32
  %i.d = zext i8 %3 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm9OrientTBLE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11
  %i.g = xor i32 %i.f, %i.c
  %i.h = xor i32 %i.g, %i.b
  %i.i = zext i8 %0 to i64
  %i.j = getelementptr inbounds nuw [64 x i8], ptr @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm16PieceSquareIndexE, i64 %i.i
  %i.k = zext i8 %2 to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11
  %i.n = add i32 %i.h, %i.m
  %i.o = zext i8 %3 to i32
  %i.p = xor i32 %i.b, %i.o
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm11KingBucketsE, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  %i.t = add i32 %i.n, %i.s
  ret i32 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm21append_active_indicesENS_5ColorERKNS_8PositionERNS_9ValueListIjLm32EEE(i8 noundef zeroext %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not10 = icmp eq i64 %i.b, 0
  br i1 %.not10, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = zext i8 %0 to i64                        ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  %i.i = and i64 %i.d, %i.h
  %i.j = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.i, i1 true) ; 2 uses
  %i.k = zext i8 %0 to i32
  %i.l = mul nuw nsw i32 %i.k, 56                 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm9OrientTBLE, i64 %i.j
  %i.n = load i32, ptr %i.m, align 4, !tbaa !11
  %i.o = getelementptr inbounds nuw [64 x i8], ptr @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm16PieceSquareIndexE, i64 %i.f
  %i.p = zext nneg i32 %i.l to i64
  %i.q = xor i64 %i.j, %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm11KingBucketsE, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %.promoted = load i64, ptr %i.t, align 8, !tbaa !14
  %invariant.op = xor i32 %i.n, %i.l
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.u = phi i64 [ %.promoted, %.lr.ph ], [ %i.ag, %bb.b ] ; 2 uses
  %.011 = phi i64 [ %i.b, %.lr.ph ], [ %i.y, %bb.b ] ; 3 uses
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011, i1 true) ; 2 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = add i64 %.011, -1
  %i.y = and i64 %i.x, %.011                      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !21
  %.reass.reass.reass = xor i32 %i.w, %invariant.op
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !11
  %i.ae = add i32 %.reass.reass.reass, %i.ad
  %i.af = add i32 %i.ae, %i.s
  %i.ag = add i64 %i.u, 1                         ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.u
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !11
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.b
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm22append_changed_indicesENS_5ColorENS_6SquareERKNS_10DirtyPieceERNS_9ValueListIjLm32EEESB_(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(7) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !23
  %i.c = load i8, ptr %2, align 1, !tbaa !18
  %i.d = zext i8 %0 to i32
  %i.e = mul nuw nsw i32 %i.d, 56                 ; 5 uses
  %i.f = zext i8 %i.b to i32
  %i.g = zext i8 %1 to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm9OrientTBLE, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11   ; 4 uses
  %i.j = xor i32 %i.e, %i.f
  %i.k = xor i32 %i.j, %i.i
  %i.l = zext i8 %0 to i64
  %i.m = getelementptr inbounds nuw [64 x i8], ptr @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm16PieceSquareIndexE, i64 %i.l ; 3 uses
  %i.n = zext i8 %i.c to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !11
  %i.q = zext i8 %1 to i32
  %i.r = xor i32 %i.e, %i.q
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm11KingBucketsE, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !11   ; 3 uses
  %i.v = add i32 %i.u, %i.p                       ; 2 uses
  %i.w = add i32 %i.v, %i.k
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !14   ; 2 uses
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.y
  store i32 %i.w, ptr %i.aa, align 4, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !24  ; 2 uses
  %.not = icmp eq i8 %i.ac, 64
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = zext i8 %i.ac to i32
  %i.ae = xor i32 %i.e, %i.ad
  %i.af = xor i32 %i.ae, %i.i
  %i.ag = add i32 %i.v, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !14 ; 2 uses
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ai
  store i32 %i.ag, ptr %i.ak, align 4, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !25  ; 2 uses
  %.not22 = icmp eq i8 %i.am, 64
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !26
  %i.ap = zext i8 %i.am to i32
  %i.aq = xor i32 %i.e, %i.ap
  %i.ar = xor i32 %i.aq, %i.i
  %i.as = zext i8 %i.ao to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !11
  %i.av = add i32 %i.ar, %i.u
  %i.aw = add i32 %i.av, %i.au
  %i.ax = load i64, ptr %i.x, align 8, !tbaa !14  ; 2 uses
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.x, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ax
  store i32 %i.aw, ptr %i.az, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !27  ; 2 uses
  %.not23 = icmp eq i8 %i.bb, 64
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !28
  %i.be = zext i8 %i.bb to i32
  %i.bf = xor i32 %i.e, %i.be
  %i.bg = xor i32 %i.bf, %i.i
  %i.bh = zext i8 %i.bd to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !11
  %i.bk = add i32 %i.bg, %i.u
  %i.bl = add i32 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !14 ; 2 uses
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bn
  store i32 %i.bl, ptr %i.bp, align 4, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm16requires_refreshERKNS_10DirtyPieceENS_5ColorE(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(7) %0, i8 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !18
  %i.b = shl i8 %1, 3
  %i.c = or disjoint i8 %i.b, 6
  %i.d = icmp eq i8 %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"ThinLTO", i32 0}
!4 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260706082120+bf74249b5ecd-1~exp1~20260706082130.1707)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!"_ZTSN9Stockfish9ValueListIjLm32EEE", !7, i64 0, !12, i64 128}
!14 = !{!13, !12, i64 128}
!15 = !{!"_ZTSN9Stockfish5PieceE", !7, i64 0}
!16 = !{!"_ZTSN9Stockfish6SquareE", !7, i64 0}
!17 = !{!"_ZTSN9Stockfish10DirtyPieceE", !15, i64 0, !16, i64 1, !16, i64 2, !16, i64 3, !16, i64 4, !15, i64 5, !15, i64 6}
!18 = !{!17, !15, i64 0}
!19 = distinct !{!19, !22}
!20 = !{!12, !12, i64 0}
!21 = !{!15, !15, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!17, !16, i64 1}
!24 = !{!17, !16, i64 2}
!25 = !{!17, !16, i64 3}
!26 = !{!17, !15, i64 5}
!27 = !{!17, !16, i64 4}
!28 = !{!17, !15, i64 6}
end_hunk_0
