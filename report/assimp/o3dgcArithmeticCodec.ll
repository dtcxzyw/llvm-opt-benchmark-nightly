inline.NumInlined: 26
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"invalid codec buffer size\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"cannot set buffer while encoding or decoding\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot start encoder\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"no code buffer set\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"cannot start decoder\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"cannot read code from file\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"code buffer overflow\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"invalid to stop encoder\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"cannot write compressed data to file\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"invalid to stop decoder\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"invalid bit probability\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"invalid number of data symbols\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"invalid symbol probability\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"invalid probabilities\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [32 x i8] c"\0A\0A -> Arithmetic coding error: \00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"\0A Execution terminated!\0A\00", align 1

@_ZN5o3dgc16Arithmetic_CodecC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5o3dgc16Arithmetic_CodecC2Ev
@_ZN5o3dgc16Arithmetic_CodecC1EjPh = hidden unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN5o3dgc16Arithmetic_CodecC2EjPh
@_ZN5o3dgc16Arithmetic_CodecD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5o3dgc16Arithmetic_CodecD2Ev
@_ZN5o3dgc16Static_Bit_ModelC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5o3dgc16Static_Bit_ModelC2Ev
@_ZN5o3dgc18Adaptive_Bit_ModelC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5o3dgc18Adaptive_Bit_ModelC2Ev
@_ZN5o3dgc17Static_Data_ModelC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5o3dgc17Static_Data_ModelC2Ev
@_ZN5o3dgc17Static_Data_ModelD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5o3dgc17Static_Data_ModelD2Ev
@_ZN5o3dgc19Adaptive_Data_ModelC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5o3dgc19Adaptive_Data_ModelC2Ev
@_ZN5o3dgc19Adaptive_Data_ModelC1Ej = hidden unnamed_addr alias void (ptr, i32), ptr @_ZN5o3dgc19Adaptive_Data_ModelC2Ej
@_ZN5o3dgc19Adaptive_Data_ModelD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5o3dgc19Adaptive_Data_ModelD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5o3dgc16Arithmetic_Codec7put_bitEj(ptr noundef nonnull align 8 captures(none) dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 1                         ; 4 uses
  store i32 %i.c, ptr %i.a, align 8
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %thread-pre-split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = add i32 %i.e, %i.c                       ; 2 uses
  store i32 %i.f, ptr %i.d, align 8
  %i.g = icmp ugt i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %.05.i = getelementptr inbounds i8, ptr %i.i, i64 -1 ; 3 uses
  %i.j = load i8, ptr %.05.i, align 1             ; 2 uses
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %.lr.ph.i, label %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.06.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.05.i, %bb.c ] ; 2 uses
  store i8 0, ptr %.06.i, align 1
  %.0.i = getelementptr inbounds i8, ptr %.06.i, i64 -1 ; 3 uses
  %i.l = load i8, ptr %.0.i, align 1              ; 2 uses
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %.lr.ph.i, label %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit, !llvm.loop !3

_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit: ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi ptr [ %.05.i, %bb.c ], [ %.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i8 [ %i.j, %bb.c ], [ %i.l, %.lr.ph.i ]
  %i.n = add nuw i8 %.lcssa.i, 1
  store i8 %i.n, ptr %.0.lcssa.i, align 1
  %.pr.pre = load i32, ptr %i.a, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.b, %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit, %bb.a
  %i.o = phi i32 [ %i.c, %bb.a ], [ %.pr.pre, %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit ], [ %i.c, %bb.b ]
  %i.p = icmp ult i32 %i.o, 16777216
  br i1 %i.p, label %bb.d, label %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit

bb.d:                                             ; preds = %thread-pre-split
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.shift.i = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre.i = load i8, ptr %.shift.i, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %2 = phi i8 [ %4, %bb.e ], [ %.pre.i, %bb.d ]
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %i.r, align 8
  store i8 %2, ptr %i.s, align 1
  %i.u = load i32, ptr %i.q, align 8
  %i.v = shl i32 %i.u, 8                          ; 2 uses
  store i32 %i.v, ptr %i.q, align 8
  %i.w = load i32, ptr %i.a, align 8
  %i.x = shl i32 %i.w, 8                          ; 2 uses
  store i32 %i.x, ptr %i.a, align 8
  %i.y = icmp ult i32 %i.x, 16777216
  %3 = lshr i32 %i.v, 24
  %4 = trunc nuw i32 %3 to i8
  br i1 %i.y, label %bb.e, label %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit, !llvm.loop !5

_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit: ; preds = %bb.e, %thread-pre-split
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN5o3dgc16Arithmetic_Codec7get_bitEv(ptr noundef nonnull align 8 captures(none) dereferenceable(44) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = lshr i32 %i.b, 1                         ; 4 uses
  store i32 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = icmp uge i32 %i.e, %i.c                  ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw i32 %i.e, %i.c                   ; 2 uses
  store i32 %i.g, ptr %i.d, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.promoted.i = phi i32 [ %i.g, %bb.b ], [ %i.e, %bb.a ]
  %i.h = icmp ult i32 %i.b, 33554432
  br i1 %i.h, label %bb.d, label %_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted1.i = load ptr, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.j = phi i32 [ %i.r, %bb.e ], [ %i.c, %bb.d ] ; 2 uses
  %i.k = phi ptr [ %i.n, %bb.e ], [ %.promoted1.i, %bb.d ]
  %i.l = phi i32 [ %i.q, %bb.e ], [ %.promoted.i, %bb.d ]
  %i.m = shl i32 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 3 uses
  store ptr %i.n, ptr %i.i, align 8
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 2 uses
  store i32 %i.q, ptr %i.d, align 4
  %i.r = shl nuw i32 %i.j, 8                      ; 2 uses
  store i32 %i.r, ptr %i.a, align 8
  %i.s = icmp ult i32 %i.j, 65536
  br i1 %i.s, label %bb.e, label %_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit, !llvm.loop !6

_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit: ; preds = %bb.e, %bb.c
  %i.t = zext i1 %i.f to i32
  ret i32 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5o3dgc16Arithmetic_Codec8put_bitsEjj(ptr noundef nonnull align 8 captures(none) dereferenceable(44) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = lshr i32 %i.d, %2                        ; 3 uses
  store i32 %i.e, ptr %i.c, align 8
  %i.f = mul i32 %i.e, %1
  %i.g = add i32 %i.f, %i.b                       ; 2 uses
  store i32 %i.g, ptr %i.a, align 8
  %i.h = icmp ugt i32 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %.05.i = getelementptr inbounds i8, ptr %i.j, i64 -1 ; 3 uses
  %i.k = load i8, ptr %.05.i, align 1             ; 2 uses
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %.lr.ph.i, label %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.06.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.05.i, %bb.b ] ; 2 uses
  store i8 0, ptr %.06.i, align 1
  %.0.i = getelementptr inbounds i8, ptr %.06.i, i64 -1 ; 3 uses
  %i.m = load i8, ptr %.0.i, align 1              ; 2 uses
  %i.n = icmp eq i8 %i.m, -1
  br i1 %i.n, label %.lr.ph.i, label %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit, !llvm.loop !3

_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit: ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi ptr [ %.05.i, %bb.b ], [ %.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i8 [ %i.k, %bb.b ], [ %i.m, %.lr.ph.i ]
  %i.o = add nuw i8 %.lcssa.i, 1
  store i8 %i.o, ptr %.0.lcssa.i, align 1
  %.pr = load i32, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit, %bb.a
  %i.p = phi i32 [ %.pr, %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit ], [ %i.e, %bb.a ]
  %i.q = icmp ult i32 %i.p, 16777216
  br i1 %i.q, label %bb.d, label %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit

bb.d:                                             ; preds = %bb.c
  %.shift.i = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre.i = load i8, ptr %.shift.i, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %3 = phi i8 [ %5, %bb.e ], [ %.pre.i, %bb.d ]
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %i.r, align 8
  store i8 %3, ptr %i.s, align 1
  %i.u = load i32, ptr %i.a, align 8
  %i.v = shl i32 %i.u, 8                          ; 2 uses
  store i32 %i.v, ptr %i.a, align 8
  %i.w = load i32, ptr %i.c, align 8
  %i.x = shl i32 %i.w, 8                          ; 2 uses
  store i32 %i.x, ptr %i.c, align 8
  %i.y = icmp ult i32 %i.x, 16777216
  %4 = lshr i32 %i.v, 24
  %5 = trunc nuw i32 %4 to i8
  br i1 %i.y, label %bb.e, label %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit, !llvm.loop !5

_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit: ; preds = %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN5o3dgc16Arithmetic_Codec8get_bitsEj(ptr noundef nonnull align 8 captures(none) dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = lshr i32 %i.d, %1                        ; 6 uses
  store i32 %i.e, ptr %i.c, align 8
  %i.f = udiv i32 %i.b, %i.e                      ; 2 uses
  %i.g = mul i32 %i.f, %i.e                       ; 0 uses
  %.recomposed = urem i32 %i.b, %i.e              ; 2 uses
  store i32 %.recomposed, ptr %i.a, align 4
  %i.h = icmp ult i32 %i.e, 16777216
  br i1 %i.h, label %bb.b, label %_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted1.i = load ptr, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i32 [ %i.r, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.k = phi ptr [ %i.n, %bb.c ], [ %.promoted1.i, %bb.b ]
  %i.l = phi i32 [ %i.q, %bb.c ], [ %.recomposed, %bb.b ]
  %i.m = shl i32 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 3 uses
  store ptr %i.n, ptr %i.i, align 8
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 2 uses
  store i32 %i.q, ptr %i.a, align 4
  %i.r = shl nuw i32 %i.j, 8                      ; 2 uses
  store i32 %i.r, ptr %i.c, align 8
  %i.s = icmp ult i32 %i.j, 65536
  br i1 %i.s, label %bb.c, label %_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit, !llvm.loop !6

_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit: ; preds = %bb.c, %bb.a
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 captures(none) dereferenceable(44) %0, i32 noundef %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i32 %i.c, 13
  %i.e = mul i32 %i.d, %i.a                       ; 4 uses
  %i.f = icmp eq i32 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.e, ptr %i.b, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = add i32 %i.h, %i.e                       ; 2 uses
  store i32 %i.i, ptr %i.g, align 8
  %i.j = sub i32 %i.c, %i.e                       ; 2 uses
  store i32 %i.j, ptr %i.b, align 8
  %i.k = icmp ugt i32 %i.h, %i.i
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %.05.i = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 3 uses
  %i.n = load i8, ptr %.05.i, align 1             ; 2 uses
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %.lr.ph.i, label %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.06.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.05.i, %bb.d ] ; 2 uses
  store i8 0, ptr %.06.i, align 1
  %.0.i = getelementptr inbounds i8, ptr %.06.i, i64 -1 ; 3 uses
  %i.p = load i8, ptr %.0.i, align 1              ; 2 uses
  %i.q = icmp eq i8 %i.p, -1
  br i1 %i.q, label %.lr.ph.i, label %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit, !llvm.loop !3

_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit: ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi ptr [ %.05.i, %bb.d ], [ %.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i8 [ %i.n, %bb.d ], [ %i.p, %.lr.ph.i ]
  %i.r = add nuw i8 %.lcssa.i, 1
  store i8 %i.r, ptr %.0.lcssa.i, align 1
  %.pr = load i32, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit, %bb.b
  %i.s = phi i32 [ %i.j, %bb.c ], [ %.pr, %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit ], [ %i.e, %bb.b ]
  %i.t = icmp ult i32 %i.s, 16777216
  br i1 %i.t, label %bb.f, label %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.shift.i = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre.i = load i8, ptr %.shift.i, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %3 = phi i8 [ %5, %bb.g ], [ %.pre.i, %bb.f ]
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.x, ptr %i.v, align 8
  store i8 %3, ptr %i.w, align 1
  %i.y = load i32, ptr %i.u, align 8
  %i.z = shl i32 %i.y, 8                          ; 2 uses
  store i32 %i.z, ptr %i.u, align 8
  %i.aa = load i32, ptr %i.b, align 8
  %i.ab = shl i32 %i.aa, 8                        ; 2 uses
  store i32 %i.ab, ptr %i.b, align 8
  %i.ac = icmp ult i32 %i.ab, 16777216
  %4 = lshr i32 %i.z, 24
  %5 = trunc nuw i32 %4 to i8
  br i1 %i.ac, label %bb.g, label %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit, !llvm.loop !5

_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit: ; preds = %bb.g, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 captures(none) dereferenceable(44) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i32 %i.c, 13
  %i.e = mul i32 %i.d, %i.a                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = icmp uge i32 %i.g, %i.e                  ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i32 %i.g, %i.e                   ; 2 uses
  store i32 %i.i, ptr %i.f, align 4
  %i.j = sub i32 %i.c, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.promoted.i = phi i32 [ %i.i, %bb.b ], [ %i.g, %bb.a ]
  %storemerge = phi i32 [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  store i32 %storemerge, ptr %i.b, align 8
  %i.k = icmp ult i32 %storemerge, 16777216
  br i1 %i.k, label %bb.d, label %_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted1.i = load ptr, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.m = phi i32 [ %i.u, %bb.e ], [ %storemerge, %bb.d ] ; 2 uses
  %i.n = phi ptr [ %i.q, %bb.e ], [ %.promoted1.i, %bb.d ]
  %i.o = phi i32 [ %i.t, %bb.e ], [ %.promoted.i, %bb.d ]
  %i.p = shl i32 %i.o, 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  store ptr %i.q, ptr %i.l, align 8
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = or disjoint i32 %i.p, %i.s               ; 2 uses
  store i32 %i.t, ptr %i.f, align 4
  %i.u = shl nuw i32 %i.m, 8                      ; 2 uses
  store i32 %i.u, ptr %i.b, align 8
  %i.v = icmp ult i32 %i.m, 65536
  br i1 %i.v, label %bb.e, label %_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit, !llvm.loop !6

_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit: ; preds = %bb.e, %bb.c
  %i.w = zext i1 %i.h to i32
  ret i32 %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 captures(none) dereferenceable(44) %0, i32 noundef %1, ptr noundef nonnull align 4 captures(none) dereferenceable(20) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = lshr i32 %i.d, 13
  %i.f = mul i32 %i.e, %i.b                       ; 3 uses
  %i.g = icmp eq i32 %1, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.f, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4
  br label %thread-pre-split

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = add i32 %i.l, %i.f                       ; 2 uses
  store i32 %i.m, ptr %i.k, align 8
  %i.n = sub i32 %i.d, %i.f                       ; 2 uses
  store i32 %i.n, ptr %i.c, align 8
  %i.o = icmp ugt i32 %i.l, %i.m
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %.05.i = getelementptr inbounds i8, ptr %i.q, i64 -1 ; 3 uses
  %i.r = load i8, ptr %.05.i, align 1             ; 2 uses
  %i.s = icmp eq i8 %i.r, -1
  br i1 %i.s, label %.lr.ph.i, label %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.06.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.05.i, %bb.d ] ; 2 uses
  store i8 0, ptr %.06.i, align 1
  %.0.i = getelementptr inbounds i8, ptr %.06.i, i64 -1 ; 3 uses
  %i.t = load i8, ptr %.0.i, align 1              ; 2 uses
  %i.u = icmp eq i8 %i.t, -1
  br i1 %i.u, label %.lr.ph.i, label %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit, !llvm.loop !3

_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit: ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi ptr [ %.05.i, %bb.d ], [ %.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i8 [ %i.r, %bb.d ], [ %i.t, %.lr.ph.i ]
  %i.v = add nuw i8 %.lcssa.i, 1
  store i8 %i.v, ptr %.0.lcssa.i, align 1
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.b, %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit
  %.pr = load i32, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.c
  %i.w = phi i32 [ %.pr, %thread-pre-split ], [ %i.n, %bb.c ]
  %i.x = icmp ult i32 %i.w, 16777216
  br i1 %i.x, label %bb.f, label %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.shift.i = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre.i = load i8, ptr %.shift.i, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %3 = phi i8 [ %5, %bb.g ], [ %.pre.i, %bb.f ]
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %i.z, align 8
  store i8 %3, ptr %i.aa, align 1
  %i.ac = load i32, ptr %i.y, align 8
  %i.ad = shl i32 %i.ac, 8                        ; 2 uses
  store i32 %i.ad, ptr %i.y, align 8
  %i.ae = load i32, ptr %i.c, align 8
  %i.af = shl i32 %i.ae, 8                        ; 2 uses
  store i32 %i.af, ptr %i.c, align 8
  %i.ag = icmp ult i32 %i.af, 16777216
  %4 = lshr i32 %i.ad, 24
  %5 = trunc nuw i32 %4 to i8
  br i1 %i.ag, label %bb.g, label %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit, !llvm.loop !5

_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit: ; preds = %bb.g, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = add i32 %i.ai, -1                       ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 4
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit
  %i.al = load i32, ptr %2, align 4               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add i32 %i.an, %i.al                    ; 4 uses
  store i32 %i.ao, ptr %i.am, align 4
  %i.ap = icmp ugt i32 %i.ao, 8192
  br i1 %i.ap, label %bb.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.pre.i9 = load i32, ptr %.phi.trans.insert.i, align 4
  br label %_ZN5o3dgc18Adaptive_Bit_Model6updateEv.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = add i32 %i.ao, 1
  %i.ar = lshr i32 %i.aq, 1                       ; 5 uses
  store i32 %i.ar, ptr %i.am, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = add i32 %i.at, 1
  %i.av = lshr i32 %i.au, 1                       ; 3 uses
  store i32 %i.av, ptr %i.as, align 4
  %i.aw = icmp eq i32 %i.av, %i.ar
  br i1 %i.aw, label %bb.j, label %_ZN5o3dgc18Adaptive_Bit_Model6updateEv.exit

bb.j:                                             ; preds = %bb.i
  %i.ax = add nuw i32 %i.ar, 1                    ; 2 uses
  store i32 %i.ax, ptr %i.am, align 4
  br label %_ZN5o3dgc18Adaptive_Bit_Model6updateEv.exit

_ZN5o3dgc18Adaptive_Bit_Model6updateEv.exit:      ; preds = %._crit_edge.i, %bb.i, %bb.j
  %i.ay = phi i32 [ %i.av, %bb.i ], [ %i.ar, %bb.j ], [ %.pre.i9, %._crit_edge.i ]
  %i.az = phi i32 [ %i.ar, %bb.i ], [ %i.ax, %bb.j ], [ %i.ao, %._crit_edge.i ]
  %i.ba = udiv i32 -2147483648, %i.az
  %i.bb = mul i32 %i.ba, %i.ay
  %i.bc = lshr i32 %i.bb, 18
  store i32 %i.bc, ptr %i.a, align 4
  %i.bd = mul i32 %i.al, 5
  %i.be = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 259)
  %spec.select.i = lshr i32 %i.be, 2              ; 2 uses
  store i32 %spec.select.i, ptr %2, align 4
  store i32 %spec.select.i, ptr %i.ah, align 4
  br label %bb.k

bb.k:                                             ; preds = %_ZN5o3dgc18Adaptive_Bit_Model6updateEv.exit, %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN5o3dgc18Adaptive_Bit_Model6updateEv(ptr noundef nonnull align 4 captures(none) dereferenceable(20) initializes((4, 12)) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = add i32 %i.c, %i.a                       ; 4 uses
  store i32 %i.d, ptr %i.b, align 4
  %i.e = icmp ugt i32 %i.d, 8192
  br i1 %i.e, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = add i32 %i.d, 1
  %i.g = lshr i32 %i.f, 1                         ; 5 uses
  store i32 %i.g, ptr %i.b, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add i32 %i.i, 1
  %i.k = lshr i32 %i.j, 1                         ; 3 uses
  store i32 %i.k, ptr %i.h, align 4
  %i.l = icmp eq i32 %i.k, %i.g
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i32 %i.g, 1                      ; 2 uses
  store i32 %i.m, ptr %i.b, align 4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b, %bb.c
  %i.n = phi i32 [ %i.k, %bb.b ], [ %i.g, %bb.c ], [ %.pre, %._crit_edge ]
  %i.o = phi i32 [ %i.g, %bb.b ], [ %i.m, %bb.c ], [ %i.d, %._crit_edge ]
  %i.p = udiv i32 -2147483648, %i.o
  %i.q = mul i32 %i.n, %i.p
  %i.r = lshr i32 %i.q, 18
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.r, ptr %i.s, align 4
  %i.t = mul i32 %i.a, 5
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.t, i32 259)
  %spec.select = lshr i32 %i.u, 2                 ; 2 uses
  store i32 %spec.select, ptr %0, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %spec.select, ptr %i.v, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 captures(none) dereferenceable(44) %0, ptr noundef nonnull align 4 captures(none) dereferenceable(20) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = lshr i32 %i.d, 13
  %i.f = mul i32 %i.e, %i.b                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp uge i32 %i.h, %i.f                  ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.f, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4
  %.pr = load i32, ptr %i.c, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = sub nuw i32 %i.h, %i.f
  store i32 %i.m, ptr %i.g, align 4
  %i.n = sub i32 %i.d, %i.f                       ; 2 uses
  store i32 %i.n, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi i32 [ %i.n, %bb.c ], [ %.pr, %bb.b ] ; 2 uses
  %i.p = icmp ult i32 %i.o, 16777216
  br i1 %i.p, label %bb.e, label %_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted.i = load i32, ptr %i.g, align 4
  %.promoted1.i = load ptr, ptr %i.q, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.r = phi i32 [ %i.z, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %i.s = phi ptr [ %i.v, %bb.f ], [ %.promoted1.i, %bb.e ]
  %i.t = phi i32 [ %i.y, %bb.f ], [ %.promoted.i, %bb.e ]
  %i.u = shl i32 %i.t, 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  store ptr %i.v, ptr %i.q, align 8
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = or disjoint i32 %i.u, %i.x               ; 2 uses
  store i32 %i.y, ptr %i.g, align 4
  %i.z = shl nuw i32 %i.r, 8                      ; 2 uses
  store i32 %i.z, ptr %i.c, align 8
  %i.aa = icmp ult i32 %i.r, 65536
  br i1 %i.aa, label %bb.f, label %_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit, !llvm.loop !6

_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit: ; preds = %bb.f, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit
  %i.af = load i32, ptr %1, align 4               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = add i32 %i.ah, %i.af                    ; 4 uses
  store i32 %i.ai, ptr %i.ag, align 4
  %i.aj = icmp ugt i32 %i.ai, 8192
  br i1 %i.aj, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4
  br label %_ZN5o3dgc18Adaptive_Bit_Model6updateEv.exit

bb.h:                                             ; preds = %bb.g
  %i.ak = add i32 %i.ai, 1
  %i.al = lshr i32 %i.ak, 1                       ; 5 uses
  store i32 %i.al, ptr %i.ag, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add i32 %i.an, 1
  %i.ap = lshr i32 %i.ao, 1                       ; 3 uses
  store i32 %i.ap, ptr %i.am, align 4
  %i.aq = icmp eq i32 %i.ap, %i.al
  br i1 %i.aq, label %bb.i, label %_ZN5o3dgc18Adaptive_Bit_Model6updateEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ar = add nuw i32 %i.al, 1                    ; 2 uses
  store i32 %i.ar, ptr %i.ag, align 4
  br label %_ZN5o3dgc18Adaptive_Bit_Model6updateEv.exit

_ZN5o3dgc18Adaptive_Bit_Model6updateEv.exit:      ; preds = %._crit_edge.i, %bb.h, %bb.i
  %i.as = phi i32 [ %i.ap, %bb.h ], [ %i.al, %bb.i ], [ %.pre.i, %._crit_edge.i ]
  %i.at = phi i32 [ %i.al, %bb.h ], [ %i.ar, %bb.i ], [ %i.ai, %._crit_edge.i ]
  %i.au = udiv i32 -2147483648, %i.at
  %i.av = mul i32 %i.au, %i.as
  %i.aw = lshr i32 %i.av, 18
  store i32 %i.aw, ptr %i.a, align 4
  %i.ax = mul i32 %i.af, 5
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 259)
  %spec.select.i = lshr i32 %i.ay, 2              ; 2 uses
  store i32 %spec.select.i, ptr %1, align 4
  store i32 %spec.select.i, ptr %i.ab, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZN5o3dgc18Adaptive_Bit_Model6updateEv.exit, %_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit
  %i.az = zext i1 %i.i to i32
  ret i32 %i.az
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_17Static_Data_ModelE(ptr noundef nonnull align 8 captures(none) dereferenceable(44) %0, i32 noundef %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %1, %i.d
  %i.f = load ptr, ptr %2, align 8
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = lshr i32 %i.k, 15                        ; 4 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = mul i32 %i.l, %i.i                       ; 2 uses
  %i.n = add i32 %i.m, %i.b                       ; 2 uses
  store i32 %i.n, ptr %i.a, align 8
  %i.o = sub i32 %i.k, %i.m
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 %i.l, ptr %i.j, align 8
  %i.p = mul i32 %i.l, %i.i
  %i.q = add i32 %i.p, %i.b                       ; 2 uses
  store i32 %i.q, ptr %i.a, align 8
  %i.r = load ptr, ptr %2, align 8
  %i.s = add i32 %1, 1
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %i.w = sub i32 %i.v, %i.i
  %i.x = mul i32 %i.w, %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.x, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.y = phi i32 [ %i.q, %bb.c ], [ %i.n, %bb.b ]
  store i32 %.sink, ptr %i.j, align 8
  %i.z = icmp ugt i32 %i.b, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %.05.i = getelementptr inbounds i8, ptr %i.ab, i64 -1 ; 3 uses
  %i.ac = load i8, ptr %.05.i, align 1            ; 2 uses
  %i.ad = icmp eq i8 %i.ac, -1
  br i1 %i.ad, label %.lr.ph.i, label %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.06.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.05.i, %bb.e ] ; 2 uses
  store i8 0, ptr %.06.i, align 1
  %.0.i = getelementptr inbounds i8, ptr %.06.i, i64 -1 ; 3 uses
  %i.ae = load i8, ptr %.0.i, align 1             ; 2 uses
  %i.af = icmp eq i8 %i.ae, -1
  br i1 %i.af, label %.lr.ph.i, label %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit, !llvm.loop !3

_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit: ; preds = %.lr.ph.i, %bb.e
  %.0.lcssa.i = phi ptr [ %.05.i, %bb.e ], [ %.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i8 [ %i.ac, %bb.e ], [ %i.ae, %.lr.ph.i ]
  %i.ag = add nuw i8 %.lcssa.i, 1
  store i8 %i.ag, ptr %.0.lcssa.i, align 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit, %bb.d
  %i.ah = phi i32 [ %.pre, %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit ], [ %.sink, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = icmp ult i32 %i.ah, 16777216
  br i1 %i.aj, label %bb.g, label %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit

bb.g:                                             ; preds = %bb.f
  %.shift.i = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre.i = load i8, ptr %.shift.i, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %3 = phi i8 [ %5, %bb.h ], [ %.pre.i, %bb.g ]
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.am, ptr %i.ak, align 8
  store i8 %3, ptr %i.al, align 1
  %i.an = load i32, ptr %i.a, align 8
  %i.ao = shl i32 %i.an, 8                        ; 2 uses
  store i32 %i.ao, ptr %i.a, align 8
  %i.ap = load i32, ptr %i.ai, align 8
  %i.aq = shl i32 %i.ap, 8                        ; 2 uses
  store i32 %i.aq, ptr %i.ai, align 8
  %i.ar = icmp ult i32 %i.aq, 16777216
  %4 = lshr i32 %i.ao, 24
  %5 = trunc nuw i32 %4 to i8
  br i1 %i.ar, label %bb.h, label %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit, !llvm.loop !5

_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit: ; preds = %bb.h, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_17Static_Data_ModelE(ptr noundef nonnull align 8 captures(none) dereferenceable(44) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = lshr i32 %i.b, 15                        ; 4 uses
  store i32 %i.g, ptr %i.a, align 8
  %i.h = udiv i32 %i.f, %i.g                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load i32, ptr %i.i, align 4
  %i.k = lshr i32 %i.h, %i.j                      ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %i.p = add i32 %i.k, 1
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add i32 %i.s, 1                          ; 2 uses
  %i.u = add i32 %i.o, 1                          ; 2 uses
  %i.v = icmp ugt i32 %i.t, %i.u
  %.pre = load ptr, ptr %1, align 8               ; 3 uses
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.056 = phi i32 [ %..0, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.03855 = phi i32 [ %.038., %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.w = add i32 %.056, %.03855
  %i.x = lshr i32 %i.w, 1                         ; 3 uses
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp ugt i32 %i.aa, %i.h                ; 2 uses
  %.038. = select i1 %i.ab, i32 %.03855, i32 %i.x ; 3 uses
  %..0 = select i1 %i.ab, i32 %i.x, i32 %.056     ; 2 uses
  %i.ac = add i32 %.038., 1                       ; 2 uses
  %i.ad = icmp ugt i32 %..0, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.038.lcssa = phi i32 [ %i.o, %bb.b ], [ %.038., %.lr.ph ] ; 4 uses
  %.lcssa = phi i32 [ %i.u, %bb.b ], [ %i.ac, %.lr.ph ]
  %i.ae = zext i32 %.038.lcssa to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = mul i32 %i.ag, %i.g                     ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aj = load i32, ptr %i.ai, align 4
  %.not54 = icmp eq i32 %.038.lcssa, %i.aj
  br i1 %.not54, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ak = zext i32 %.lcssa to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = mul i32 %i.am, %i.g
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.ao = lshr i32 %i.b, 15                       ; 2 uses
  store i32 %i.ao, ptr %i.a, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  %i.ar = lshr i32 %i.aq, 1
  %i.as = load ptr, ptr %1, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = load i32, ptr %i.at, align 4            ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.146 = phi i32 [ %i.b, %bb.d ], [ %..146, %bb.e ]
  %.042 = phi i32 [ 0, %bb.d ], [ %.042., %bb.e ]
  %.240 = phi i32 [ 0, %bb.d ], [ %.240..037, %bb.e ]
  %.037 = phi i32 [ %i.ar, %bb.d ], [ %i.bb, %bb.e ] ; 3 uses
  %.2 = phi i32 [ %i.aq, %bb.d ], [ %.037..2, %bb.e ]
  %i.av = zext nneg i32 %.037 to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = mul i32 %i.ax, %i.ao                    ; 3 uses
  %i.az = icmp ugt i32 %i.ay, %i.au               ; 4 uses
  %..146 = select i1 %i.az, i32 %i.ay, i32 %.146  ; 2 uses
  %.042. = select i1 %i.az, i32 %.042, i32 %i.ay  ; 2 uses
  %.240..037 = select i1 %i.az, i32 %.240, i32 %.037 ; 4 uses
  %.037..2 = select i1 %i.az, i32 %.037, i32 %.2  ; 2 uses
  %i.ba = add i32 %.240..037, %.037..2
  %i.bb = lshr i32 %i.ba, 1                       ; 2 uses
  %.not53 = icmp eq i32 %i.bb, %.240..037
  br i1 %.not53, label %.loopexit, label %bb.e, !llvm.loop !8

.loopexit:                                        ; preds = %bb.e, %._crit_edge, %bb.c
  %i.bc = phi i32 [ %i.f, %._crit_edge ], [ %i.f, %bb.c ], [ %i.au, %bb.e ]
  %.348 = phi i32 [ %i.b, %._crit_edge ], [ %i.an, %bb.c ], [ %..146, %bb.e ]
  %.244 = phi i32 [ %i.ah, %._crit_edge ], [ %i.ah, %bb.c ], [ %.042., %bb.e ] ; 2 uses
  %.4 = phi i32 [ %.038.lcssa, %._crit_edge ], [ %.038.lcssa, %bb.c ], [ %.240..037, %bb.e ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.be = sub i32 %i.bc, %.244                    ; 2 uses
  store i32 %i.be, ptr %i.bd, align 4
  %i.bf = sub i32 %.348, %.244                    ; 3 uses
  store i32 %i.bf, ptr %i.a, align 8
  %i.bg = icmp ult i32 %i.bf, 16777216
  br i1 %i.bg, label %bb.f, label %_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit

bb.f:                                             ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted1.i = load ptr, ptr %i.bh, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.bi = phi i32 [ %i.bq, %bb.g ], [ %i.bf, %bb.f ] ; 2 uses
  %i.bj = phi ptr [ %i.bm, %bb.g ], [ %.promoted1.i, %bb.f ]
  %i.bk = phi i32 [ %i.bp, %bb.g ], [ %i.be, %bb.f ]
  %i.bl = shl i32 %i.bk, 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 3 uses
  store ptr %i.bm, ptr %i.bh, align 8
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bl, %i.bo            ; 2 uses
  store i32 %i.bp, ptr %i.bd, align 4
  %i.bq = shl nuw i32 %i.bi, 8                    ; 2 uses
  store i32 %i.bq, ptr %i.a, align 8
  %i.br = icmp ult i32 %i.bi, 65536
  br i1 %i.br, label %bb.g, label %_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit, !llvm.loop !6

_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit: ; preds = %bb.g, %.loopexit
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 captures(none) dereferenceable(44) %0, i32 noundef %1, ptr noundef nonnull align 8 captures(none) dereferenceable(52) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %1, %i.d
  %i.f = load ptr, ptr %2, align 8
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = lshr i32 %i.k, 15                        ; 4 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = mul i32 %i.l, %i.i                       ; 2 uses
  %i.n = add i32 %i.m, %i.b                       ; 2 uses
  store i32 %i.n, ptr %i.a, align 8
  %i.o = sub i32 %i.k, %i.m
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 %i.l, ptr %i.j, align 8
  %i.p = mul i32 %i.l, %i.i
  %i.q = add i32 %i.p, %i.b                       ; 2 uses
  store i32 %i.q, ptr %i.a, align 8
  %i.r = load ptr, ptr %2, align 8
  %i.s = add i32 %1, 1
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %i.w = sub i32 %i.v, %i.i
  %i.x = mul i32 %i.w, %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.x, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.y = phi i32 [ %i.q, %bb.c ], [ %i.n, %bb.b ]
  store i32 %.sink, ptr %i.j, align 8
  %i.z = icmp ugt i32 %i.b, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %.05.i = getelementptr inbounds i8, ptr %i.ab, i64 -1 ; 3 uses
  %i.ac = load i8, ptr %.05.i, align 1            ; 2 uses
  %i.ad = icmp eq i8 %i.ac, -1
  br i1 %i.ad, label %.lr.ph.i, label %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.06.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.05.i, %bb.e ] ; 2 uses
  store i8 0, ptr %.06.i, align 1
  %.0.i = getelementptr inbounds i8, ptr %.06.i, i64 -1 ; 3 uses
  %i.ae = load i8, ptr %.0.i, align 1             ; 2 uses
  %i.af = icmp eq i8 %i.ae, -1
  br i1 %i.af, label %.lr.ph.i, label %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit, !llvm.loop !3

_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit: ; preds = %.lr.ph.i, %bb.e
  %.0.lcssa.i = phi ptr [ %.05.i, %bb.e ], [ %.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i8 [ %i.ac, %bb.e ], [ %i.ae, %.lr.ph.i ]
  %i.ag = add nuw i8 %.lcssa.i, 1
  store i8 %i.ag, ptr %.0.lcssa.i, align 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit, %bb.d
  %i.ah = phi i32 [ %.pre, %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit ], [ %.sink, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = icmp ult i32 %i.ah, 16777216
  br i1 %i.aj, label %bb.g, label %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit

bb.g:                                             ; preds = %bb.f
  %.shift.i = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre.i = load i8, ptr %.shift.i, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %3 = phi i8 [ %5, %bb.h ], [ %.pre.i, %bb.g ]
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.am, ptr %i.ak, align 8
  store i8 %3, ptr %i.al, align 1
  %i.an = load i32, ptr %i.a, align 8
  %i.ao = shl i32 %i.an, 8                        ; 2 uses
  store i32 %i.ao, ptr %i.a, align 8
  %i.ap = load i32, ptr %i.ai, align 8
  %i.aq = shl i32 %i.ap, 8                        ; 2 uses
  store i32 %i.aq, ptr %i.ai, align 8
  %i.ar = icmp ult i32 %i.aq, 16777216
  %4 = lshr i32 %i.ao, 24
  %5 = trunc nuw i32 %4 to i8
  br i1 %i.ar, label %bb.h, label %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit, !llvm.loop !5

_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit: ; preds = %bb.h, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = zext i32 %1 to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = add i32 %i.az, -1                       ; 2 uses
  store i32 %i.ba, ptr %i.ay, align 8
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = add i32 %i.bf, %i.bd                    ; 3 uses
  store i32 %i.bg, ptr %i.be, align 8
  %i.bh = icmp ugt i32 %i.bg, 32768
  br i1 %i.bh, label %.lr.ph.i17, label %..loopexit35.i_crit_edge

..loopexit35.i_crit_edge:                         ; preds = %bb.i
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.pre21 = load i32, ptr %.phi.trans.insert20, align 4
  br label %.loopexit35.i

.lr.ph.i17:                                       ; preds = %bb.i
  store i32 0, ptr %i.be, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 36
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i17
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.bj = load ptr, ptr %i.as, align 8
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = add i32 %i.bl, 1
  %i.bn = lshr i32 %i.bm, 1                       ; 2 uses
  store i32 %i.bn, ptr %i.bk, align 4
  %i.bo = load i32, ptr %i.be, align 8
  %i.bp = add i32 %i.bo, %i.bn                    ; 2 uses
  store i32 %i.bp, ptr %i.be, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bq = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = icmp samesign ult i64 %indvars.iv.next.i, %i.br
  br i1 %i.bs, label %bb.j, label %.loopexit35.i, !llvm.loop !9

.loopexit35.i:                                    ; preds = %bb.j, %..loopexit35.i_crit_edge
  %i.bt = phi i32 [ %.pre21, %..loopexit35.i_crit_edge ], [ %i.bq, %bb.j ]
  %i.bu = phi i32 [ %i.bg, %..loopexit35.i_crit_edge ], [ %i.bp, %bb.j ]
  %i.bv = udiv i32 -2147483648, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.not55.i = icmp eq i32 %i.bt, 0
  br i1 %.not55.i, label %_ZN5o3dgc19Adaptive_Data_Model6updateEb.exit, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.loopexit35.i, %.lr.ph52.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %.lr.ph52.i ], [ 0, %.loopexit35.i ] ; 3 uses
  %.02949.i = phi i32 [ %i.ce, %.lr.ph52.i ], [ 0, %.loopexit35.i ] ; 2 uses
  %i.bx = mul i32 %.02949.i, %i.bv
  %i.by = lshr i32 %i.bx, 16
  %i.bz = load ptr, ptr %2, align 8
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv64.i
  store i32 %i.by, ptr %i.ca, align 4
  %i.cb = load ptr, ptr %i.as, align 8
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv64.i
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = add i32 %i.cd, %.02949.i
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %i.cf = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = icmp samesign ult i64 %indvars.iv.next65.i, %i.cg
  br i1 %i.ch, label %.lr.ph52.i, label %_ZN5o3dgc19Adaptive_Data_Model6updateEb.exit.loopexit, !llvm.loop !10

_ZN5o3dgc19Adaptive_Data_Model6updateEb.exit.loopexit: ; preds = %.lr.ph52.i
  %i.ci = shl i32 %i.cf, 3
  %i.cj = add i32 %i.ci, 48
  br label %_ZN5o3dgc19Adaptive_Data_Model6updateEb.exit

_ZN5o3dgc19Adaptive_Data_Model6updateEb.exit:     ; preds = %_ZN5o3dgc19Adaptive_Data_Model6updateEb.exit.loopexit, %.loopexit35.i
  %i.ck = phi i32 [ %i.cj, %_ZN5o3dgc19Adaptive_Data_Model6updateEb.exit.loopexit ], [ 48, %.loopexit35.i ]
  %i.cl = load i32, ptr %i.bc, align 4
  %i.cm = mul i32 %i.cl, 5
  %i.cn = lshr i32 %i.cm, 2
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.cn, i32 %i.ck) ; 2 uses
  store i32 %spec.store.select.i, ptr %i.bc, align 4
  store i32 %spec.store.select.i, ptr %i.ay, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN5o3dgc19Adaptive_Data_Model6updateEb.exit, %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN5o3dgc19Adaptive_Data_Model6updateEb(ptr noundef nonnull align 8 captures(none) dereferenceable(52) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add i32 %i.d, %i.b                       ; 3 uses
  store i32 %i.e, ptr %i.c, align 8
  %i.f = icmp ugt i32 %i.e, 32768
  br i1 %i.f, label %.lr.ph, label %.loopexit35

.lr.ph:                                           ; preds = %bb.a
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add i32 %i.k, 1
  %i.m = lshr i32 %i.l, 1                         ; 2 uses
  store i32 %i.m, ptr %i.j, align 4
  %i.n = load i32, ptr %i.c, align 8
  %i.o = add i32 %i.n, %i.m                       ; 2 uses
  store i32 %i.o, ptr %i.c, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.g, align 4
  %i.q = zext i32 %i.p to i64
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %.loopexit35, !llvm.loop !9

.loopexit35:                                      ; preds = %bb.b, %bb.a
  %i.s = phi i32 [ %i.e, %bb.a ], [ %i.o, %bb.b ]
  %i.t = udiv i32 -2147483648, %i.s               ; 2 uses
  br i1 %1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit35
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4
  %.not54 = icmp eq i32 %i.y, 0
  br i1 %.not54, label %._crit_edge43.thread, label %.lr.ph42

._crit_edge43.thread:                             ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  store i32 0, ptr %i.aa, align 4
  br label %.lr.ph48.preheader

.lr.ph42:                                         ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %.loopexit35
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %.not55 = icmp eq i32 %i.af, 0
  br i1 %.not55, label %.loopexit, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph52, %bb.e
  %indvars.iv64 = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next65, %bb.e ] ; 3 uses
  %.02949 = phi i32 [ 0, %.lr.ph52 ], [ %i.ao, %bb.e ] ; 2 uses
  %i.ah = mul i32 %.02949, %i.t
  %i.ai = lshr i32 %i.ah, 16
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv64
  store i32 %i.ai, ptr %i.ak, align 4
  %i.al = load ptr, ptr %i.ag, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add i32 %i.an, %.02949
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.ap = load i32, ptr %i.ae, align 4
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp samesign ult i64 %indvars.iv.next65, %i.aq
  br i1 %i.ar, label %bb.e, label %.loopexit, !llvm.loop !10

bb.f:                                             ; preds = %.lr.ph42, %._crit_edge
  %indvars.iv61 = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next62, %._crit_edge ] ; 5 uses
  %.13040 = phi i32 [ 0, %.lr.ph42 ], [ %i.az, %._crit_edge ] ; 2 uses
  %.03139 = phi i32 [ 0, %.lr.ph42 ], [ %.132.lcssa, %._crit_edge ] ; 3 uses
  %i.as = mul i32 %.13040, %i.t
  %i.at = lshr i32 %i.as, 16
  %i.au = load ptr, ptr %0, align 8
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv61
  store i32 %i.at, ptr %i.av, align 4
end_hunk_0
begin_hunk_1_@_Znam

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5o3dgc16Arithmetic_Codec13start_encoderEv(ptr noundef nonnull align 8 captures(none) dereferenceable(44) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.2) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.3) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  store i32 1, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.g, align 8
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5o3dgc16Arithmetic_Codec13start_decoderEv(ptr noundef nonnull align 8 captures(none) dereferenceable(44) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.4) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.3) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  store i32 2, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.f, align 8
  %i.g = load ptr, ptr %0, align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8
  %i.j = load i8, ptr %i.g, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw i32 %i.k, 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 16
  %i.q = or disjoint i32 %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 8
  %i.v = or disjoint i32 %i.q, %i.u
  %i.w = load i8, ptr %i.h, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = or disjoint i32 %i.v, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.y, ptr %i.z, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5o3dgc16Arithmetic_Codec14read_from_fileEP8_IO_FILE(ptr noundef nonnull align 8 captures(none) dereferenceable(44) %0, ptr noundef captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.010 = phi i32 [ 0, %bb.a ], [ %i.e, %bb.d ]
  %.0 = phi i32 [ 0, %bb.a ], [ %i.f, %bb.d ]     ; 2 uses
  %i.a = tail call i32 @getc(ptr noundef %1)      ; 3 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.5) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = and i32 %i.a, 127
  %i.d = shl i32 %i.c, %.0
  %i.e = or i32 %i.d, %.010                       ; 3 uses
  %i.f = add i32 %.0, 7
  %i.g = and i32 %i.a, 128
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.b, !llvm.loop !18

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp ugt i32 %i.e, %i.i
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.6) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %0, align 8
  %i.l = zext i32 %i.e to i64                     ; 2 uses
  %i.m = tail call i64 @fread(ptr noundef %i.k, i64 noundef 1, i64 noundef %i.l, ptr noundef %1)
  %.not13 = icmp eq i64 %i.m, %i.l
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.5) #15
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.4) #15
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.p = load i32, ptr %i.h, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.l, label %_ZN5o3dgc16Arithmetic_Codec13start_decoderEv.exit

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZN5o3dgc16Arithmetic_Codec13start_decoderEv.exit: ; preds = %bb.k
  store i32 2, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.r, align 8
  %i.s = load ptr, ptr %0, align 8                ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %i.u, align 8
  %i.v = load i8, ptr %i.s, align 1
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw i32 %i.w, 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 16
  %i.ac = or disjoint i32 %i.ab, %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 8
  %i.ah = or disjoint i32 %i.ac, %i.ag
  %i.ai = load i8, ptr %i.t, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ak, ptr %i.al, align 4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5o3dgc16Arithmetic_Codec12stop_encoderEv(ptr noundef nonnull align 8 captures(none) dereferenceable(44) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.7) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp ugt i32 %i.f, 33554432              ; 2 uses
  %storemerge3.v = select i1 %i.g, i32 16777216, i32 8388608
  %storemerge3 = add i32 %storemerge3.v, %i.d     ; 3 uses
  %storemerge = select i1 %i.g, i32 8388608, i32 32768
  store i32 %storemerge3, ptr %i.c, align 8
  store i32 %storemerge, ptr %i.e, align 8
  %i.h = icmp ugt i32 %i.d, %storemerge3
  %1 = lshr i32 %storemerge3, 24
  %2 = trunc nuw i32 %1 to i8
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %.05.i = getelementptr inbounds i8, ptr %i.j, i64 -1 ; 3 uses
  %i.k = load i8, ptr %.05.i, align 1             ; 2 uses
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %.lr.ph.i, label %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.06.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.05.i, %bb.d ] ; 2 uses
  store i8 0, ptr %.06.i, align 1
  %.0.i = getelementptr inbounds i8, ptr %.06.i, i64 -1 ; 3 uses
  %i.m = load i8, ptr %.0.i, align 1              ; 2 uses
  %i.n = icmp eq i8 %i.m, -1
  br i1 %i.n, label %.lr.ph.i, label %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit, !llvm.loop !3

_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit: ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi ptr [ %.05.i, %bb.d ], [ %.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i8 [ %i.k, %bb.d ], [ %i.m, %.lr.ph.i ]
  %i.o = add nuw i8 %.lcssa.i, 1
  store i8 %i.o, ptr %.0.lcssa.i, align 1
  %.shift.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 27
  %.pre.i.pre = load i8, ptr %.shift.i.phi.trans.insert, align 1
  br label %bb.e

bb.e:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit, %bb.c
  %.pre.i = phi i8 [ %.pre.i.pre, %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit ], [ %2, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %3 = phi i8 [ %5, %bb.f ], [ %.pre.i, %bb.e ]
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.r, ptr %i.p, align 8
  store i8 %3, ptr %i.q, align 1
  %i.s = load i32, ptr %i.c, align 8
  %i.t = shl i32 %i.s, 8                          ; 2 uses
  store i32 %i.t, ptr %i.c, align 8
  %i.u = load i32, ptr %i.e, align 8
  %i.v = shl i32 %i.u, 8                          ; 2 uses
  store i32 %i.v, ptr %i.e, align 8
  %i.w = icmp ult i32 %i.v, 16777216
  %4 = lshr i32 %i.t, 24
  %5 = trunc nuw i32 %4 to i8
  br i1 %i.w, label %bb.f, label %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit, !llvm.loop !5

_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit: ; preds = %bb.f
  %i.x = load ptr, ptr %i.p, align 8
  %i.y = load ptr, ptr %0, align 8
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp ult i32 %i.ae, %i.ac
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.6) #15
  unreachable

bb.h:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit
  ret i32 %i.ac
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5o3dgc16Arithmetic_Codec13write_to_fileEP8_IO_FILE(ptr noundef nonnull align 8 captures(none) dereferenceable(44) %0, ptr noundef captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5o3dgc16Arithmetic_Codec12stop_encoderEv(ptr noundef nonnull align 8 dereferenceable(44) %0) ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.014 = phi i32 [ 0, %bb.a ], [ %i.g, %bb.d ]
  %.013 = phi i32 [ %i.a, %bb.a ], [ %i.c, %bb.d ] ; 2 uses
  %i.b = and i32 %.013, 127                       ; 2 uses
  %i.c = lshr i32 %.013, 7                        ; 2 uses
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = or disjoint i32 %i.b, 128
  %spec.select = select i1 %.not, i32 %i.b, i32 %i.d
  %i.e = tail call i32 @putc(i32 noundef %spec.select, ptr noundef %1)
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.8) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw nsw i32 %.014, 1                 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b, !llvm.loop !19

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %0, align 8
  %i.i = zext i32 %i.a to i64                     ; 2 uses
  %i.j = tail call i64 @fwrite(ptr noundef %i.h, i64 noundef 1, i64 noundef %i.i, ptr noundef %1)
  %.not17 = icmp eq i64 %i.j, %i.i
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.8) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.k = add i32 %i.g, %i.a
  ret i32 %i.k
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5o3dgc16Arithmetic_Codec12stop_decoderEv(ptr noundef nonnull align 8 captures(none) dereferenceable(44) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.9) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5o3dgc16Static_Bit_ModelC2Ev(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0) unnamed_addr #4 align 2 {
bb.a:
  store i32 4096, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5o3dgc16Static_Bit_Model17set_probability_0Ed(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %0, double noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = fcmp olt double %1, 1.000000e-04
  %i.b = fcmp ogt double %1, 9.999000e-01
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.10) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = fmul double %1, 8.192000e+03
  %i.d = fptoui double %i.c to i32
  store i32 %i.d, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5o3dgc18Adaptive_Bit_ModelC2Ev(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(20) initializes((0, 20)) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.a, align 4
  store <4 x i32> <i32 4, i32 4, i32 4096, i32 1>, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5o3dgc18Adaptive_Bit_Model5resetEv(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(20) initializes((0, 20)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.a, align 4
  store <4 x i32> <i32 4, i32 4, i32 4096, i32 1>, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5o3dgc17Static_Data_ModelC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 20)) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.a, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5o3dgc17Static_Data_ModelD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5o3dgc17Static_Data_Model16set_distributionEjPKd(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = add i32 %1, -2049
  %or.cond = icmp ult i32 %i.a, -2047
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.11) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, %1
  br i1 %.not, label %.lr.ph53, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %1, ptr %i.b, align 8
  %i.d = add nsw i32 %1, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.d, ptr %i.e, align 4
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #16
  %.pre = load i32, ptr %i.b, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = phi i32 [ %.pre, %bb.e ], [ %1, %bb.d ]  ; 8 uses
  %i.i = icmp ugt i32 %i.h, 16
  br i1 %i.i, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.f, %.preheader
  %.0 = phi i32 [ %i.m, %.preheader ], [ 3, %bb.f ] ; 4 uses
  %i.j = add i32 %.0, 2
  %i.k = shl nuw i32 1, %i.j
  %i.l = icmp ugt i32 %i.h, %i.k
  %i.m = add i32 %.0, 1
  br i1 %i.l, label %.preheader, label %bb.g, !llvm.loop !20

bb.g:                                             ; preds = %.preheader
end_hunk_1
