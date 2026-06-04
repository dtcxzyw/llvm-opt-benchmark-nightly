inline.NumInlined: 32
inline.NumDeleted: 21
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
define dso_local noundef zeroext i1 @_ZN6nbytes11SwapBytes16EPcm(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 1
  %.not = icmp eq i64 %i.a, 0                     ; 2 uses
  %i.b = icmp ne i64 %1, 0
  %or.cond = and i1 %.not, %i.b
  br i1 %or.cond, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.a
  %i.c = add i64 %1, -2                           ; 3 uses
  %i.d = lshr exact i64 %i.c, 1
  %i.e = add nuw i64 %i.d, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.c, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.c, 30
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.e, 12
  %n.vec = and i64 %i.e, -16                      ; 4 uses
  %i.f = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = shl i64 %index, 1
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
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.e, -4                     ; 3 uses
  %i.m = shl i64 %n.vec16, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 2 uses
  %i.n = shl i64 %index17, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %wide.load18 = load <4 x i16>, ptr %i.o, align 1
  %i.p = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load18)
  store <4 x i16> %i.p, ptr %i.o, align 1
  %index.next19 = add nuw i64 %index17, 4         ; 2 uses
  %i.q = icmp eq i64 %index.next19, %n.vec16
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.e, %n.vec16
  br i1 %cmp.n20, label %.loopexit, label %.lr.ph.preheader

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
  br i1 %i.u, label %.lr.ph, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN6nbytes11SwapBytes32EPcm(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
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
  %i.g = shl i64 %index, 2
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
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !12

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
  br i1 %i.p, label %.lr.ph, label %.loopexit, !llvm.loop !13

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.a
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN6nbytes11SwapBytes64EPcm(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
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
  %min.iters.check = icmp ult i64 %i.c, 24
  br i1 %min.iters.check, label %.lr.ph.preheader20, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 4611686018427387900
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %.018 = phi i64 [ 0, %vector.ph ], [ %11, %vector.body ] ; 5 uses
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 %.018 ; 2 uses
  %.0.copyload = load i64, ptr %2, align 1
  %3 = tail call i64 @llvm.bswap.i64(i64 %.0.copyload)
  store i64 %3, ptr %2, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.0.copyload.1 = load i64, ptr %i.g, align 1
  %4 = tail call i64 @llvm.bswap.i64(i64 %.0.copyload.1)
  store i64 %4, ptr %i.g, align 1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.0.copyload.2 = load i64, ptr %6, align 1
  %7 = tail call i64 @llvm.bswap.i64(i64 %.0.copyload.2)
  store i64 %7, ptr %6, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.0.copyload.3 = load i64, ptr %9, align 1
  %10 = tail call i64 @llvm.bswap.i64(i64 %.0.copyload.3)
  store i64 %10, ptr %9, align 1
  %11 = add nuw i64 %.018, 32                     ; 2 uses
  %index.next = add i64 %index, 4                 ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %xtraiter, 0
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader20

.lr.ph.preheader20:                               ; preds = %middle.block, %.lr.ph.preheader
  %.018.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %11, %middle.block ]
  %lcmp.mod19 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader20
  %.018.epil = phi i64 [ %12, %.lr.ph ], [ %.018.ph, %.lr.ph.preheader20 ] ; 2 uses
  %.018.a = phi i64 [ %i.k, %.lr.ph ], [ 0, %.lr.ph.preheader20 ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.018.epil ; 2 uses
  %.0.copyload.a = load i64, ptr %i.i, align 1
  %i.j = tail call i64 @llvm.bswap.i64(i64 %.0.copyload.a)
  store i64 %i.j, ptr %i.i, align 1
  %12 = add nuw i64 %.018.epil, 8
  %i.k = add i64 %.018.a, 1                       ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %i.k, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph, !llvm.loop !15

.loopexit:                                        ; preds = %middle.block, %.lr.ph, %bb.a
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i64 0, -1) i64 @_ZN6nbytes9HexEncodeEPKcmPcm(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
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
  %scevgep = getelementptr i8, ptr %2, i64 %i.a
  %i.e = getelementptr i8, ptr %0, i64 %i.c
  %scevgep17 = getelementptr i8, ptr %i.e, i64 1
  %bound0 = icmp ult ptr %2, %scevgep17
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check18 = icmp ult i64 %i.b, 30
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.d, 12
  %n.vec = and i64 %i.d, -16                      ; 5 uses
  %i.f = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 1                        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %wide.load = load <8 x i8>, ptr %i.h, align 1, !alias.scope !17 ; 3 uses
  %wide.load19 = load <8 x i8>, ptr %i.i, align 1, !alias.scope !17 ; 3 uses
  %i.j = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.k = lshr <8 x i8> %wide.load19, splat (i8 4)
  %i.l = icmp ugt <8 x i8> %wide.load, splat (i8 -97)
  %i.m = icmp ugt <8 x i8> %wide.load19, splat (i8 -97)
  %i.n = select <8 x i1> %i.l, <8 x i8> splat (i8 87), <8 x i8> splat (i8 48)
  %i.o = select <8 x i1> %i.m, <8 x i8> splat (i8 87), <8 x i8> splat (i8 48)
  %i.p = add nuw nsw <8 x i8> %i.n, %i.j
  %i.q = add nuw nsw <8 x i8> %i.o, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = and <8 x i8> %wide.load, splat (i8 15)   ; 2 uses
  %i.v = and <8 x i8> %wide.load19, splat (i8 15) ; 2 uses
  %i.w = icmp samesign ugt <8 x i8> %i.u, splat (i8 9)
  %i.x = icmp samesign ugt <8 x i8> %i.v, splat (i8 9)
  %i.y = select <8 x i1> %i.w, <8 x i8> splat (i8 87), <8 x i8> splat (i8 48)
  %i.z = select <8 x i1> %i.x, <8 x i8> splat (i8 87), <8 x i8> splat (i8 48)
  %i.aa = add nuw nsw <8 x i8> %i.y, %i.u
  %i.ab = add nuw nsw <8 x i8> %i.z, %i.v
  %interleaved.vec = shufflevector <8 x i8> %i.p, <8 x i8> %i.aa, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.r, align 1, !alias.scope !20, !noalias !17
  %interleaved.vec20 = shufflevector <8 x i8> %i.q, <8 x i8> %i.ab, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec20, ptr %i.t, align 1, !alias.scope !20, !noalias !17
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.d, -4                     ; 4 uses
  %i.ad = shl i64 %n.vec22, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = shl i64 %index23, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %index23
  %wide.load24 = load <4 x i8>, ptr %i.af, align 1, !alias.scope !17 ; 3 uses
  %i.ag = lshr <4 x i8> %wide.load24, splat (i8 4)
  %i.ah = icmp ugt <4 x i8> %wide.load24, splat (i8 -97)
  %i.ai = select <4 x i1> %i.ah, <4 x i8> splat (i8 87), <4 x i8> splat (i8 48)
  %i.aj = add nuw nsw <4 x i8> %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  %i.al = and <4 x i8> %wide.load24, splat (i8 15) ; 2 uses
  %i.am = icmp samesign ugt <4 x i8> %i.al, splat (i8 9)
  %i.an = select <4 x i1> %i.am, <4 x i8> splat (i8 87), <4 x i8> splat (i8 48)
  %i.ao = add nuw nsw <4 x i8> %i.an, %i.al
  %interleaved.vec25 = shufflevector <4 x i8> %i.aj, <4 x i8> %i.ao, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec25, ptr %i.ak, align 1, !alias.scope !20, !noalias !17
  %index.next26 = add nuw i64 %index23, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next26, %n.vec22
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.d, %n.vec22
  br i1 %cmp.n27, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.f, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  %.01315.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec22, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret i64 %i.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.016 = phi i64 [ %i.bd, %.lr.ph ], [ %.016.ph, %.lr.ph.preheader ] ; 2 uses
  %.01315 = phi i64 [ %i.bc, %.lr.ph ], [ %.01315.ph, %.lr.ph.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.01315
  %i.ar = load i8, ptr %i.aq, align 1             ; 3 uses
  %i.as = lshr i8 %i.ar, 4
  %i.at = icmp ugt i8 %i.ar, -97
  %i.au = select i1 %i.at, i8 87, i8 48
  %i.av = add nuw nsw i8 %i.au, %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %.016 ; 2 uses
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = and i8 %i.ar, 15                        ; 2 uses
  %i.ay = icmp samesign ugt i8 %i.ax, 9
  %i.az = select i1 %i.ay, i8 87, i8 48
  %i.ba = add nuw nsw i8 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = add nuw nsw i64 %.01315, 1
  %i.bd = add nuw i64 %.016, 2
  %exitcond.not = icmp eq i64 %.01315, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6nbytes9HexEncodeB5cxx11EPKcm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = shl i64 %2, 1                            ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp ugt i64 %i.a, 15
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.a, 0
  br i1 %i.d, label %bb.c, label %.thread7.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #7
  unreachable

.thread7.i.i:                                     ; preds = %bb.b
  %i.e = or disjoint i64 %i.a, 1
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #8 ; 2 uses
  store ptr %i.f, ptr %0, align 8
  store i64 %i.a, ptr %i.b, align 8
  br label %iter.check

bb.d:                                             ; preds = %bb.a
  %cond = icmp eq i64 %i.a, 0
  br i1 %cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit, label %iter.check

iter.check:                                       ; preds = %bb.d, %.thread7.i.i
  %i.g = phi ptr [ %i.f, %.thread7.i.i ], [ %i.b, %bb.d ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 0, i64 %i.a, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.a
  store i8 0, ptr %i.i, align 1
  %i.j = load ptr, ptr %0, align 8                ; 6 uses
  %i.k = add nsw i64 %i.a, -2                     ; 3 uses
  %i.l = lshr exact i64 %i.k, 1                   ; 3 uses
  %i.m = add nuw i64 %i.l, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.k, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.a
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %scevgep6 = getelementptr i8, ptr %i.n, i64 1
  %bound0 = icmp ult ptr %i.j, %scevgep6
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %i.k, 30
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.m, 12
  %n.vec = and i64 %i.m, -16                      ; 5 uses
  %i.o = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl i64 %index, 1                        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %wide.load = load <8 x i8>, ptr %i.q, align 1, !alias.scope !25 ; 3 uses
  %wide.load8 = load <8 x i8>, ptr %i.r, align 1, !alias.scope !25 ; 3 uses
  %i.s = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.t = lshr <8 x i8> %wide.load8, splat (i8 4)
  %i.u = icmp ugt <8 x i8> %wide.load, splat (i8 -97)
  %i.v = icmp ugt <8 x i8> %wide.load8, splat (i8 -97)
  %i.w = select <8 x i1> %i.u, <8 x i8> splat (i8 87), <8 x i8> splat (i8 48)
  %i.x = select <8 x i1> %i.v, <8 x i8> splat (i8 87), <8 x i8> splat (i8 48)
  %i.y = add nuw nsw <8 x i8> %i.w, %i.s
  %i.z = add nuw nsw <8 x i8> %i.x, %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = and <8 x i8> %wide.load, splat (i8 15)  ; 2 uses
  %i.ae = and <8 x i8> %wide.load8, splat (i8 15) ; 2 uses
  %i.af = icmp samesign ugt <8 x i8> %i.ad, splat (i8 9)
  %i.ag = icmp samesign ugt <8 x i8> %i.ae, splat (i8 9)
  %i.ah = select <8 x i1> %i.af, <8 x i8> splat (i8 87), <8 x i8> splat (i8 48)
  %i.ai = select <8 x i1> %i.ag, <8 x i8> splat (i8 87), <8 x i8> splat (i8 48)
  %i.aj = add nuw nsw <8 x i8> %i.ah, %i.ad
  %i.ak = add nuw nsw <8 x i8> %i.ai, %i.ae
  %interleaved.vec = shufflevector <8 x i8> %i.y, <8 x i8> %i.aj, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.aa, align 1, !alias.scope !28, !noalias !25
  %interleaved.vec9 = shufflevector <8 x i8> %i.z, <8 x i8> %i.ak, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec9, ptr %i.ac, align 1, !alias.scope !28, !noalias !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN6nbytes9HexEncodeEPKcmPcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %i.m, -4                     ; 4 uses
  %i.am = shl i64 %n.vec11, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %i.an = shl i64 %index12, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %index12
  %wide.load13 = load <4 x i8>, ptr %i.ao, align 1, !alias.scope !25 ; 3 uses
  %i.ap = lshr <4 x i8> %wide.load13, splat (i8 4)
  %i.aq = icmp ugt <4 x i8> %wide.load13, splat (i8 -97)
  %i.ar = select <4 x i1> %i.aq, <4 x i8> splat (i8 87), <4 x i8> splat (i8 48)
  %i.as = add nuw nsw <4 x i8> %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.an
  %i.au = and <4 x i8> %wide.load13, splat (i8 15) ; 2 uses
  %i.av = icmp samesign ugt <4 x i8> %i.au, splat (i8 9)
  %i.aw = select <4 x i1> %i.av, <4 x i8> splat (i8 87), <4 x i8> splat (i8 48)
  %i.ax = add nuw nsw <4 x i8> %i.aw, %i.au
  %interleaved.vec14 = shufflevector <4 x i8> %i.as, <4 x i8> %i.ax, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec14, ptr %i.at, align 1, !alias.scope !28, !noalias !25
  %index.next15 = add nuw i64 %index12, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next15, %n.vec11
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.m, %n.vec11
  br i1 %cmp.n16, label %_ZN6nbytes9HexEncodeEPKcmPcm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.01315.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ]
  br label %.lr.ph.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.az, align 8
  store i8 0, ptr %i.b, align 8
  br label %_ZN6nbytes9HexEncodeEPKcmPcm.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.016.i = phi i64 [ %i.bn, %.lr.ph.i ], [ %.016.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01315.i = phi i64 [ %i.bm, %.lr.ph.i ], [ %.01315.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %.01315.i
  %i.bb = load i8, ptr %i.ba, align 1             ; 3 uses
  %i.bc = lshr i8 %i.bb, 4
  %i.bd = icmp ugt i8 %i.bb, -97
  %i.be = select i1 %i.bd, i8 87, i8 48
  %i.bf = add nuw nsw i8 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 %.016.i ; 2 uses
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bh = and i8 %i.bb, 15                        ; 2 uses
  %i.bi = icmp samesign ugt i8 %i.bh, 9
  %i.bj = select i1 %i.bi, i8 87, i8 48
  %i.bk = add nuw nsw i8 %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bm = add nuw nsw i64 %.01315.i, 1
  %i.bn = add nuw i64 %.016.i, 2
  %exitcond.not.i = icmp eq i64 %.01315.i, %i.l
  br i1 %exitcond.not.i, label %_ZN6nbytes9HexEncodeEPKcmPcm.exit, label %.lr.ph.i, !llvm.loop !32

_ZN6nbytes9HexEncodeEPKcmPcm.exit:                ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN6nbytes14ForceAsciiSlowEPKcPcm(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %min.iters.check = icmp ult i64 %2, 4
  %i.c = sub i64 %i.a, %i.b
  %diff.check = icmp ult i64 %i.c, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp ult i64 %2, 32
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <16 x i8>, ptr %i.d, align 1
  %wide.load8 = load <16 x i8>, ptr %i.e, align 1
  %i.f = and <16 x i8> %wide.load, splat (i8 127)
  %i.g = and <16 x i8> %wide.load8, splat (i8 127)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <16 x i8> %i.f, ptr %i.h, align 1
  store <16 x i8> %i.g, ptr %i.i, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %2, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index11
  %wide.load12 = load <4 x i8>, ptr %i.k, align 1
  %i.l = and <4 x i8> %wide.load12, splat (i8 127)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %index11
  store <4 x i8> %i.l, ptr %i.m, align 1
  %index.next13 = add nuw i64 %index11, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next13, %n.vec10
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec10
  br i1 %cmp.n14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.06.prol = phi i64 [ %i.s, %.lr.ph.prol ], [ %.06.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.06.prol
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 127
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.06.prol
  store i8 %i.q, ptr %i.r, align 1
  %i.s = add nuw i64 %.06.prol, 1                 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !36

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.06.unr = phi i64 [ %.06.ph, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %i.t = sub i64 %.06.ph, %2
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.06 = phi i64 [ %i.ao, %.lr.ph ], [ %.06.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.06
  %i.w = load i8, ptr %i.v, align 1
  %i.x = and i8 %i.w, 127
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.06
  store i8 %i.x, ptr %i.y, align 1
  %i.z = add nuw i64 %.06, 1                      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, 127
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = add nuw i64 %.06, 2                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = and i8 %i.ag, 127
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = add nuw i64 %.06, 3                     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = and i8 %i.al, 127
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = add nuw i64 %.06, 4                     ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ao, %2
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN6nbytes10ForceAsciiEPKcPcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter106 = and i64 %2, 3                    ; 3 uses
  %i.b = icmp ult i64 %2, 4
  br i1 %i.b, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %2, 12
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.06.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.v, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 127
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.06.i
  store i8 %i.e, ptr %i.f, align 1
  %i.g = or disjoint i64 %.06.i, 1                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  %i.j = and i8 %i.i, 127
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  store i8 %i.j, ptr %i.k, align 1
  %i.l = or disjoint i64 %.06.i, 2                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1
  %i.o = and i8 %i.n, 127
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  store i8 %i.o, ptr %i.p, align 1
  %i.q = or disjoint i64 %.06.i, 3                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = and i8 %i.s, 127
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  store i8 %i.t, ptr %i.u, align 1
  %i.v = add nuw nsw i64 %.06.i, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !38

bb.c:                                             ; preds = %bb.a
  %i.w = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.x, 7                          ; 9 uses
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 7
  %i.ac = icmp eq i32 %i.y, %i.ab
  br i1 %i.ac, label %.lr.ph.i48, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.d
  %i.ad = sub i64 %i.z, %i.w
  %diff.check = icmp ult i64 %i.ad, 32
  br i1 %diff.check, label %.lr.ph.i53.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i64 %2, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <16 x i8>, ptr %i.ae, align 1
  %wide.load77 = load <16 x i8>, ptr %i.af, align 1
  %i.ag = and <16 x i8> %wide.load, splat (i8 127)
  %i.ah = and <16 x i8> %wide.load77, splat (i8 127)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <16 x i8> %i.ag, ptr %i.ai, align 1
  store <16 x i8> %i.ah, ptr %i.aj, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i53.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec79 = and i64 %2, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index80 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next82, %vec.epilog.vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %index80
  %wide.load81 = load <4 x i8>, ptr %i.al, align 1
  %i.am = and <4 x i8> %wide.load81, splat (i8 127)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %index80
  store <4 x i8> %i.am, ptr %i.an, align 1
  %index.next82 = add nuw i64 %index80, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next82, %n.vec79
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i64 %2, %n.vec79
  br i1 %cmp.n83, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i53.preheader

.lr.ph.i53.preheader:                             ; preds = %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i54.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec79, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i53.prol.loopexit, label %.lr.ph.i53.prol

.lr.ph.i53.prol:                                  ; preds = %.lr.ph.i53.preheader, %.lr.ph.i53.prol
  %.06.i54.prol = phi i64 [ %i.at, %.lr.ph.i53.prol ], [ %.06.i54.ph, %.lr.ph.i53.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i53.prol ], [ 0, %.lr.ph.i53.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i54.prol
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = and i8 %i.aq, 127
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %.06.i54.prol
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = add nuw i64 %.06.i54.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i53.prol.loopexit, label %.lr.ph.i53.prol, !llvm.loop !41

.lr.ph.i53.prol.loopexit:                         ; preds = %.lr.ph.i53.prol, %.lr.ph.i53.preheader
  %.06.i54.unr = phi i64 [ %.06.i54.ph, %.lr.ph.i53.preheader ], [ %i.at, %.lr.ph.i53.prol ]
  %i.au = sub i64 %.06.i54.ph, %2
  %i.av = icmp ugt i64 %i.au, -4
  br i1 %i.av, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i53

.lr.ph.i48:                                       ; preds = %bb.d
  %i.aw = sub nuw nsw i32 8, %i.y
  %i.ax = zext nneg i32 %i.aw to i64              ; 3 uses
  %i.ay = load i8, ptr %0, align 1
  %i.az = and i8 %i.ay, 127
  store i8 %i.az, ptr %1, align 1
  %exitcond.not.i50 = icmp eq i32 %i.y, 7
  br i1 %exitcond.not.i50, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit51, label %.lr.ph.i48.1

.lr.ph.i48.1:                                     ; preds = %.lr.ph.i48
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = and i8 %i.bb, 127
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.bc, ptr %i.bd, align 1
  %exitcond.not.i50.1 = icmp eq i32 %i.y, 6
  br i1 %exitcond.not.i50.1, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit51, label %.lr.ph.i48.2

.lr.ph.i48.2:                                     ; preds = %.lr.ph.i48.1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = and i8 %i.bf, 127
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.bg, ptr %i.bh, align 1
  %exitcond.not.i50.2 = icmp eq i32 %i.y, 5
  br i1 %exitcond.not.i50.2, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit51, label %.lr.ph.i48.3

.lr.ph.i48.3:                                     ; preds = %.lr.ph.i48.2
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = and i8 %i.bj, 127
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.bk, ptr %i.bl, align 1
  %exitcond.not.i50.3 = icmp eq i32 %i.y, 4
  br i1 %exitcond.not.i50.3, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit51, label %.lr.ph.i48.4

.lr.ph.i48.4:                                     ; preds = %.lr.ph.i48.3
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = and i8 %i.bn, 127
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.bo, ptr %i.bp, align 1
  %exitcond.not.i50.4 = icmp eq i32 %i.y, 3
  br i1 %exitcond.not.i50.4, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit51, label %.lr.ph.i48.5

.lr.ph.i48.5:                                     ; preds = %.lr.ph.i48.4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = and i8 %i.br, 127
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.bs, ptr %i.bt, align 1
  %exitcond.not.i50.5 = icmp eq i32 %i.y, 2
  br i1 %exitcond.not.i50.5, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit51, label %.lr.ph.i48.6

.lr.ph.i48.6:                                     ; preds = %.lr.ph.i48.5
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = and i8 %i.bv, 127
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.bw, ptr %i.bx, align 1
  br label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit51

_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit51:         ; preds = %.lr.ph.i48.6, %.lr.ph.i48.5, %.lr.ph.i48.4, %.lr.ph.i48.3, %.lr.ph.i48.2, %.lr.ph.i48.1, %.lr.ph.i48
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.ca = sub nuw i64 %2, %i.ax
  br label %.lr.ph.preheader

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53
  %.06.i54 = phi i64 [ %i.cu, %.lr.ph.i53 ], [ %.06.i54.unr, %.lr.ph.i53.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i54
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = and i8 %i.cc, 127
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %.06.i54
  store i8 %i.cd, ptr %i.ce, align 1
  %i.cf = add nuw i64 %.06.i54, 1                 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = and i8 %i.ch, 127
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = add nuw i64 %.06.i54, 2                 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = and i8 %i.cm, 127
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck
  store i8 %i.cn, ptr %i.co, align 1
  %i.cp = add nuw i64 %.06.i54, 3                 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = and i8 %i.cr, 127
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  store i8 %i.cs, ptr %i.ct, align 1
  %i.cu = add nuw i64 %.06.i54, 4                 ; 2 uses
  %exitcond.not.i55.3 = icmp eq i64 %i.cu, %2
  br i1 %exitcond.not.i55.3, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i53, !llvm.loop !42

.lr.ph.preheader:                                 ; preds = %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit51, %bb.c
  %.041 = phi i64 [ %i.ca, %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit51 ], [ %2, %bb.c ] ; 4 uses
  %.040 = phi ptr [ %i.bz, %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit51 ], [ %1, %bb.c ] ; 8 uses
  %.0 = phi ptr [ %i.by, %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit51 ], [ %0, %bb.c ] ; 8 uses
  %i.cv = lshr i64 %.041, 3                       ; 5 uses
  %min.iters.check88 = icmp ult i64 %.041, 32
  %.086 = ptrtoaddr ptr %.0 to i64
  %.04085 = ptrtoaddr ptr %.040 to i64
  %i.cw = sub i64 %.04085, %.086
  %diff.check87 = icmp ult i64 %i.cw, 32
  %or.cond = select i1 %min.iters.check88, i1 true, i1 %diff.check87
  br i1 %or.cond, label %.lr.ph.preheader101, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph.preheader
  %n.vec91 = and i64 %i.cv, 2305843009213693948   ; 3 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph89
  %index93 = phi i64 [ 0, %vector.ph89 ], [ %index.next96, %vector.body92 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index93 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load94 = load <2 x i64>, ptr %i.cx, align 8
  %wide.load95 = load <2 x i64>, ptr %i.cy, align 8
  %i.cz = and <2 x i64> %wide.load94, splat (i64 9187201950435737471)
  %i.da = and <2 x i64> %wide.load95, splat (i64 9187201950435737471)
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.040, i64 %index93 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <2 x i64> %i.cz, ptr %i.db, align 8
  store <2 x i64> %i.da, ptr %i.dc, align 8
  %index.next96 = add nuw i64 %index93, 4         ; 2 uses
  %i.dd = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.dd, label %middle.block97, label %vector.body92, !llvm.loop !43

middle.block97:                                   ; preds = %vector.body92
  %cmp.n98 = icmp eq i64 %i.cv, %n.vec91
  br i1 %cmp.n98, label %._crit_edge, label %.lr.ph.preheader101

.lr.ph.preheader101:                              ; preds = %.lr.ph.preheader, %middle.block97
  %.04264.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec91, %middle.block97 ] ; 3 uses
  %xtraiter103 = and i64 %i.cv, 3                 ; 2 uses
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader101, %.lr.ph.prol
  %.04264.prol = phi i64 [ %i.di, %.lr.ph.prol ], [ %.04264.ph, %.lr.ph.preheader101 ] ; 3 uses
  %prol.iter105 = phi i64 [ %prol.iter105.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader101 ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %.04264.prol
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = and i64 %i.df, 9187201950435737471
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.040, i64 %.04264.prol
  store i64 %i.dg, ptr %i.dh, align 8
  %i.di = add nuw nsw i64 %.04264.prol, 1         ; 2 uses
  %prol.iter105.next = add i64 %prol.iter105, 1   ; 2 uses
  %prol.iter105.cmp.not = icmp eq i64 %prol.iter105.next, %xtraiter103
  br i1 %prol.iter105.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !44

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader101
  %.04264.unr = phi i64 [ %.04264.ph, %.lr.ph.preheader101 ], [ %i.di, %.lr.ph.prol ]
  %i.dj = sub nsw i64 %.04264.ph, %i.cv
  %i.dk = icmp ugt i64 %i.dj, -4
  br i1 %i.dk, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block97
  %i.dl = and i64 %.041, 7                        ; 7 uses
  %.not46 = icmp eq i64 %i.dl, 0
  br i1 %.not46, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i58

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.04264 = phi i64 [ %i.ef, %.lr.ph ], [ %.04264.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %.04264
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = and i64 %i.dn, 9187201950435737471
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.040, i64 %.04264
  store i64 %i.do, ptr %i.dp, align 8
  %i.dq = add nuw nsw i64 %.04264, 1              ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = and i64 %i.ds, 9187201950435737471
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.040, i64 %i.dq
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = add nuw nsw i64 %.04264, 2              ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = and i64 %i.dx, 9187201950435737471
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.040, i64 %i.dv
  store i64 %i.dy, ptr %i.dz, align 8
  %i.ea = add nuw nsw i64 %.04264, 3              ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = and i64 %i.ec, 9187201950435737471
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.040, i64 %i.ea
  store i64 %i.ed, ptr %i.ee, align 8
  %i.ef = add nuw nsw i64 %.04264, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ef, %i.cv
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !45

.lr.ph.i58:                                       ; preds = %._crit_edge
  %i.eg = and i64 %.041, -8                       ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0, i64 %i.eg ; 7 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.040, i64 %i.eg ; 7 uses
  %i.ej = load i8, ptr %i.eh, align 1
  %i.ek = and i8 %i.ej, 127
  store i8 %i.ek, ptr %i.ei, align 1
  %exitcond.not.i60 = icmp eq i64 %i.dl, 1
  br i1 %exitcond.not.i60, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i58.1

.lr.ph.i58.1:                                     ; preds = %.lr.ph.i58
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.em = load i8, ptr %i.el, align 1
  %i.en = and i8 %i.em, 127
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store i8 %i.en, ptr %i.eo, align 1
  %exitcond.not.i60.1 = icmp eq i64 %i.dl, 2
  br i1 %exitcond.not.i60.1, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i58.2

.lr.ph.i58.2:                                     ; preds = %.lr.ph.i58.1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = and i8 %i.eq, 127
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  store i8 %i.er, ptr %i.es, align 1
  %exitcond.not.i60.2 = icmp eq i64 %i.dl, 3
  br i1 %exitcond.not.i60.2, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i58.3

.lr.ph.i58.3:                                     ; preds = %.lr.ph.i58.2
  %i.et = getelementptr inbounds nuw i8, ptr %i.eh, i64 3
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = and i8 %i.eu, 127
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 3
  store i8 %i.ev, ptr %i.ew, align 1
  %exitcond.not.i60.3 = icmp eq i64 %i.dl, 4
  br i1 %exitcond.not.i60.3, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i58.4

.lr.ph.i58.4:                                     ; preds = %.lr.ph.i58.3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = and i8 %i.ey, 127
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store i8 %i.ez, ptr %i.fa, align 1
  %exitcond.not.i60.4 = icmp eq i64 %i.dl, 5
  br i1 %exitcond.not.i60.4, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i58.5

.lr.ph.i58.5:                                     ; preds = %.lr.ph.i58.4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eh, i64 5
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = and i8 %i.fc, 127
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ei, i64 5
  store i8 %i.fd, ptr %i.fe, align 1
  %exitcond.not.i60.5 = icmp eq i64 %i.dl, 6
  br i1 %exitcond.not.i60.5, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i58.6

.lr.ph.i58.6:                                     ; preds = %.lr.ph.i58.5
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eh, i64 6
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = and i8 %i.fg, 127
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ei, i64 6
  store i8 %i.fh, ptr %i.fi, align 1
  br label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit

_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.v, %_ZN6nbytes14ForceAsciiSlowEPKcPcm.exit.loopexit.unr-lcssa ]
  %lcmp.mod108 = icmp ne i64 %xtraiter106, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.06.i.epil = phi i64 [ %i.fn, %.lr.ph.i.epil ], [ %.06.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.epil
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = and i8 %i.fk, 127
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 %.06.i.epil
  store i8 %i.fl, ptr %i.fm, align 1
  %i.fn = add nuw nsw i64 %.06.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter106
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
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6, !7, !8}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = !{!"branch_weights", i32 4, i32 12}
!10 = distinct !{!10, !6, !7, !8}
!11 = distinct !{!11, !6, !8, !7}
!12 = distinct !{!12, !6, !7, !8}
!13 = distinct !{!13, !6, !8, !7}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !6, !7, !8}
!23 = distinct !{!23, !6, !7, !8}
!24 = distinct !{!24, !6, !7}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !6, !7, !8}
!31 = distinct !{!31, !6, !7, !8}
!32 = distinct !{!32, !6, !7}
!33 = distinct !{!33, !6, !7, !8}
!34 = !{!"branch_weights", i32 4, i32 28}
!35 = distinct !{!35, !6, !7, !8}
!36 = distinct !{!36, !16}
!37 = distinct !{!37, !6, !7}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6, !7, !8}
!40 = distinct !{!40, !6, !7, !8}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !6, !7}
!43 = distinct !{!43, !6, !7, !8}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !6, !7}
!46 = distinct !{!46, !16}
end_hunk_0
