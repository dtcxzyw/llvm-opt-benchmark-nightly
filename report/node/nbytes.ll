Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/nbytes?download=true
inline.NumInlined: 32
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@_ZN6nbytes14unbase64_tableE = dso_local local_unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF>\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF?\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@_ZN6nbytes11unhex_tableE = dso_local local_unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@.str = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN6nbytes11SwapBytes16EPcm(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = trunc i64 %1 to i1                      ; 2 uses
  %i.a = icmp ne i64 %1, 0
  %or.cond = xor i1 %i.a, %.not
  br i1 %or.cond, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.a
  %umax = tail call i64 @llvm.umax.i64(i64 %1, i64 2)
  %i.b = add i64 %umax, -1
  %i.c = lshr i64 %i.b, 1
  %i.d = add nuw i64 %i.c, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %1, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %1, 31
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 12
  %n.vec = and i64 %i.d, -16                      ; 4 uses
  %i.f = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = shl nuw i64 %index, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.h, align 1
  %wide.load14 = load <8 x i16>, ptr %i.i, align 1
  %i.j = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.k = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load14)
  store <8 x i16> %i.j, ptr %i.h, align 1
  store <8 x i16> %i.k, ptr %i.i, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !8

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.d, -4                     ; 3 uses
  %i.m = shl i64 %n.vec15, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %i.n = shl nuw i64 %index16, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %wide.load17 = load <4 x i16>, ptr %i.o, align 1
  %i.p = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load17)
  store <4 x i16> %i.p, ptr %i.o, align 1
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.q = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.d, %n.vec15
  br i1 %cmp.n19, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.ph = phi i64 [ 0, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.012 = phi i64 [ %i.t, %.lr.ph ], [ %.012.ph, %.lr.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.012 ; 2 uses
  %.0.copyload = load i16, ptr %i.r, align 1
  %i.s = tail call i16 @llvm.bswap.i16(i16 %.0.copyload)
  store i16 %i.s, ptr %i.r, align 1
  %i.t = add nuw i64 %.012, 2                     ; 2 uses
  %i.u = icmp ult i64 %i.t, %1
  br i1 %i.u, label %.lr.ph, label %.loopexit, !llvm.loop !13

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.011 = xor i1 %.not, true
  ret i1 %.011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN6nbytes11SwapBytes32EPcm(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 3
  %.not = icmp eq i64 %i.a, 0                     ; 2 uses
  %i.b = icmp ne i64 %1, 0
  %or.cond = and i1 %.not, %i.b
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add i64 %1, -4                           ; 2 uses
  %i.d = lshr exact i64 %i.c, 2
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.c, 28
  br i1 %min.iters.check, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 9223372036854775800      ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = shl nuw i64 %index, 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.h, align 1
  %wide.load15 = load <4 x i32>, ptr %i.i, align 1
  %i.j = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.k = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load15)
  store <4 x i32> %i.j, ptr %i.h, align 1
  store <4 x i32> %i.k, ptr %i.i, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader16, %.lr.ph
  %.014 = phi i64 [ %i.o, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader16 ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.014 ; 2 uses
  %.0.copyload = load i32, ptr %i.m, align 1
  %i.n = tail call i32 @llvm.bswap.i32(i32 %.0.copyload)
  store i32 %i.n, ptr %i.m, align 1
  %i.o = add nuw i64 %.014, 4                     ; 2 uses
  %i.p = icmp ult i64 %i.o, %1
  br i1 %i.p, label %.lr.ph, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.a
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN6nbytes11SwapBytes64EPcm(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 7
  %.not = icmp eq i64 %i.a, 0                     ; 2 uses
  %i.b = icmp ne i64 %1, 0
  %or.cond = and i1 %.not, %i.b
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add i64 %1, -8                           ; 2 uses
  %i.d = lshr exact i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.c, 24
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.e, 4611686018427387900
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.018 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.r, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.018 ; 2 uses
  %.0.copyload = load i64, ptr %i.g, align 1
  %i.h = tail call i64 @llvm.bswap.i64(i64 %.0.copyload)
  store i64 %i.h, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.0.copyload.1 = load i64, ptr %i.j, align 1
  %i.k = tail call i64 @llvm.bswap.i64(i64 %.0.copyload.1)
  store i64 %i.k, ptr %i.j, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.0.copyload.2 = load i64, ptr %i.m, align 1
  %i.n = tail call i64 @llvm.bswap.i64(i64 %.0.copyload.2)
  store i64 %i.n, ptr %i.m, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %.0.copyload.3 = load i64, ptr %i.p, align 1
  %i.q = tail call i64 @llvm.bswap.i64(i64 %.0.copyload.3)
  store i64 %i.q, ptr %i.p, align 1
  %i.r = add nuw i64 %.018, 32                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !16

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.018.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.r, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod19 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.018.epil = phi i64 [ %i.u, %.lr.ph.epil ], [ %.018.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.018.epil ; 2 uses
  %.0.copyload.epil = load i64, ptr %i.s, align 1
  %i.t = tail call i64 @llvm.bswap.i64(i64 %.0.copyload.epil)
  store i64 %i.t, ptr %i.s, align 1
  %i.u = add nuw i64 %.018.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !17

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i64 0, -1) i64 @_ZN6nbytes9HexEncodeEPKcmPcm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %1, 1                            ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = add i64 %i.a, -2                         ; 3 uses
  %i.c = lshr exact i64 %i.b, 1                   ; 3 uses
  %i.d = add nuw i64 %i.c, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.b, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = getelementptr i8, ptr %2, i64 %i.a
  %i.f = getelementptr i8, ptr %0, i64 %i.c
  %i.g = getelementptr i8, ptr %i.f, i64 1
  %bound0 = icmp ult ptr %2, %i.g
  %bound1 = icmp ult ptr %0, %i.e
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check18 = icmp ult i64 %i.b, 30
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %i.d, 12
  %n.vec = and i64 %i.d, -16                      ; 5 uses
  %i.i = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = shl nuw i64 %index, 1                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.load = load <8 x i8>, ptr %i.k, align 1, !alias.scope !24 ; 3 uses
  %wide.load19 = load <8 x i8>, ptr %i.l, align 1, !alias.scope !24 ; 3 uses
  %i.m = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.n = lshr <8 x i8> %wide.load19, splat (i8 4)
  %i.o = icmp ugt <8 x i8> %wide.load, splat (i8 -97)
  %i.p = icmp ugt <8 x i8> %wide.load19, splat (i8 -97)
  %i.q = select <8 x i1> %i.o, <8 x i8> splat (i8 87), <8 x i8> splat (i8 48)
  %i.r = select <8 x i1> %i.p, <8 x i8> splat (i8 87), <8 x i8> splat (i8 48)
  %i.s = add nuw nsw <8 x i8> %i.q, %i.m
  %i.t = add nuw nsw <8 x i8> %i.r, %i.n
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = and <8 x i8> %wide.load, splat (i8 15)   ; 2 uses
  %i.y = and <8 x i8> %wide.load19, splat (i8 15) ; 2 uses
  %i.z = icmp samesign ugt <8 x i8> %i.x, splat (i8 9)
  %i.aa = icmp samesign ugt <8 x i8> %i.y, splat (i8 9)
  %i.ab = select <8 x i1> %i.z, <8 x i8> splat (i8 87), <8 x i8> splat (i8 48)
  %i.ac = select <8 x i1> %i.aa, <8 x i8> splat (i8 87), <8 x i8> splat (i8 48)
  %i.ad = add nuw nsw <8 x i8> %i.ab, %i.x
  %i.ae = add nuw nsw <8 x i8> %i.ac, %i.y
  %interleaved.vec = shufflevector <8 x i8> %i.s, <8 x i8> %i.ad, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.u, align 1, !alias.scope !25, !noalias !24
  %interleaved.vec20 = shufflevector <8 x i8> %i.t, <8 x i8> %i.ae, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec20, ptr %i.w, align 1, !alias.scope !25, !noalias !24
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !21
end_hunk_0
begin_hunk_1_@_ZN6nbytes10ForceAsciiEPKcPcm:bb.a
  %min.iters.check89 = icmp ult i64 %.042, 48
  %.088 = ptrtoaddr ptr %.0 to i64
  %.04187 = ptrtoaddr ptr %.041 to i64
  %i.cx = sub i64 %.088, %.04187
  %diff.check91 = icmp ugt i64 %i.cx, -32
  %or.cond = select i1 %min.iters.check89, i1 true, i1 %diff.check91
  br i1 %or.cond, label %.lr.ph.preheader103, label %vector.ph92

vector.ph92:                                      ; preds = %.lr.ph.preheader
  %n.vec93 = and i64 %i.cw, 2305843009213693948   ; 3 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph92
  %index95 = phi i64 [ 0, %vector.ph92 ], [ %index.next98, %vector.body94 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index95 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load96 = load <2 x i64>, ptr %i.cy, align 8
  %wide.load97 = load <2 x i64>, ptr %i.cz, align 8
  %i.da = and <2 x i64> %wide.load96, splat (i64 9187201950435737471)
  %i.db = and <2 x i64> %wide.load97, splat (i64 9187201950435737471)
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.041, i64 %index95 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x i64> %i.da, ptr %i.dc, align 8
  store <2 x i64> %i.db, ptr %i.dd, align 8
  %index.next98 = add nuw i64 %index95, 4         ; 2 uses
  %i.de = icmp eq i64 %index.next98, %n.vec93
  br i1 %i.de, label %middle.block99, label %vector.body94, !llvm.loop !43

middle.block99:                                   ; preds = %vector.body94
  %cmp.n100 = icmp eq i64 %i.cw, %n.vec93
  br i1 %cmp.n100, label %._crit_edge, label %.lr.ph.preheader103

.lr.ph.preheader103:                              ; preds = %.lr.ph.preheader, %middle.block99
  %.04064.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec93, %middle.block99 ] ; 3 uses
  %xtraiter105 = and i64 %i.cw, 3                 ; 2 uses
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader103, %.lr.ph.prol
  %.04064.prol = phi i64 [ %i.dj, %.lr.ph.prol ], [ %.04064.ph, %.lr.ph.preheader103 ] ; 3 uses
  %prol.iter107 = phi i64 [ %prol.iter107.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader103 ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %.04064.prol
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = and i64 %i.dg, 9187201950435737471
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.041, i64 %.04064.prol
  store i64 %i.dh, ptr %i.di, align 8
  %i.dj = add nuw nsw i64 %.04064.prol, 1         ; 2 uses
  %prol.iter107.next = add i64 %prol.iter107, 1   ; 2 uses
  %prol.iter107.cmp.not = icmp eq i64 %prol.iter107.next, %xtraiter105
  br i1 %prol.iter107.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !44

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader103
  %.04064.unr = phi i64 [ %.04064.ph, %.lr.ph.preheader103 ], [ %i.dj, %.lr.ph.prol ]
  %i.dk = sub nsw i64 %.04064.ph, %i.cw
  %i.dl = icmp ugt i64 %i.dk, -4
  br i1 %i.dl, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block99
  %i.dm = and i64 %.042, 7                        ; 7 uses
  %.not46 = icmp eq i64 %i.dm, 0
  br i1 %.not46, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i58

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.04064 = phi i64 [ %i.eg, %.lr.ph ], [ %.04064.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %.04064
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = and i64 %i.do, 9187201950435737471
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.041, i64 %.04064
  store i64 %i.dp, ptr %i.dq, align 8
  %i.dr = add nuw nsw i64 %.04064, 1              ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = and i64 %i.dt, 9187201950435737471
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.041, i64 %i.dr
  store i64 %i.du, ptr %i.dv, align 8
  %i.dw = add nuw nsw i64 %.04064, 2              ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = and i64 %i.dy, 9187201950435737471
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.041, i64 %i.dw
  store i64 %i.dz, ptr %i.ea, align 8
  %i.eb = add nuw nsw i64 %.04064, 3              ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = and i64 %i.ed, 9187201950435737471
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.041, i64 %i.eb
  store i64 %i.ee, ptr %i.ef, align 8
  %i.eg = add nuw nsw i64 %.04064, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eg, %i.cw
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !45

.lr.ph.i58:                                       ; preds = %._crit_edge
  %i.eh = and i64 %.042, -8                       ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0, i64 %i.eh ; 7 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.041, i64 %i.eh ; 7 uses
  %i.ek = load i8, ptr %i.ei, align 1
  %i.el = and i8 %i.ek, 127
  store i8 %i.el, ptr %i.ej, align 1
  %exitcond.not.i60 = icmp eq i64 %i.dm, 1
  br i1 %exitcond.not.i60, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i58.1

.lr.ph.i58.1:                                     ; preds = %.lr.ph.i58
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = and i8 %i.en, 127
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  store i8 %i.eo, ptr %i.ep, align 1
  %exitcond.not.i60.1 = icmp eq i64 %i.dm, 2
  br i1 %exitcond.not.i60.1, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i58.2

.lr.ph.i58.2:                                     ; preds = %.lr.ph.i58.1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = and i8 %i.er, 127
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  store i8 %i.es, ptr %i.et, align 1
  %exitcond.not.i60.2 = icmp eq i64 %i.dm, 3
  br i1 %exitcond.not.i60.2, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i58.3

.lr.ph.i58.3:                                     ; preds = %.lr.ph.i58.2
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 3
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = and i8 %i.ev, 127
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ej, i64 3
  store i8 %i.ew, ptr %i.ex, align 1
  %exitcond.not.i60.3 = icmp eq i64 %i.dm, 4
  br i1 %exitcond.not.i60.3, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i58.4

.lr.ph.i58.4:                                     ; preds = %.lr.ph.i58.3
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = and i8 %i.ez, 127
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i8 %i.fa, ptr %i.fb, align 1
  %exitcond.not.i60.4 = icmp eq i64 %i.dm, 5
  br i1 %exitcond.not.i60.4, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i58.5

.lr.ph.i58.5:                                     ; preds = %.lr.ph.i58.4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ei, i64 5
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = and i8 %i.fd, 127
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ej, i64 5
  store i8 %i.fe, ptr %i.ff, align 1
  %exitcond.not.i60.5 = icmp eq i64 %i.dm, 6
  br i1 %exitcond.not.i60.5, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i58.6

.lr.ph.i58.6:                                     ; preds = %.lr.ph.i58.5
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ei, i64 6
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = and i8 %i.fh, 127
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ej, i64 6
  store i8 %i.fi, ptr %i.fj, align 1
  br label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit

_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod109.not, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.v, %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit.loopexit.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter108, 0
  tail call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.06.i.epil = phi i64 [ %i.fo, %.lr.ph.i.epil ], [ %.06.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.epil
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = and i8 %i.fl, 127
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 %.06.i.epil
  store i8 %i.fm, ptr %i.fn, align 1
  %i.fo = add nuw nsw i64 %.06.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter108
  br i1 %epil.iter.cmp.not, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i.epil, !llvm.loop !46

_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit:           ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53, %.lr.ph.i58, %.lr.ph.i58.1, %.lr.ph.i58.2, %.lr.ph.i58.3, %.lr.ph.i58.4, %.lr.ph.i58.5, %.lr.ph.i58.6, %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %middle.block, %vec.epilog.middle.block, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { noreturn nounwind }
attributes #8 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = !{!"branch_weights", i32 4, i32 12}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!"branch_weights", i32 4, i32 28}
!11 = distinct !{!11, !5, !6, !7}
!12 = distinct !{!12, !5, !6, !7}
!13 = distinct !{!13, !5, !7, !6}
!14 = distinct !{!14, !5, !6, !7}
!15 = distinct !{!15, !5, !7, !6}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, i1 false, !"LVerDomain"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !5, !6, !7}
!22 = distinct !{!22, !5, !6, !7}
!23 = distinct !{!23, !5, !6}
!24 = !{!19}
!25 = !{!20}
!26 = distinct !{!26, i1 false, !"LVerDomain"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !5, !6, !7}
!30 = distinct !{!30, !5, !6, !7}
!31 = distinct !{!31, !5, !6}
!32 = !{!27}
!33 = !{!28}
!34 = distinct !{!34, !5, !6, !7}
!35 = distinct !{!35, !5, !6, !7}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !5, !6}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5, !6, !7}
!40 = distinct !{!40, !5, !6, !7}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !5, !6}
!43 = distinct !{!43, !5, !6, !7}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !5, !6}
!46 = distinct !{!46, !9}
end_hunk_1
