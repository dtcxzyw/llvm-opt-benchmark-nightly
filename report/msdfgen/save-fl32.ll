Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/save-fl32?download=true
inline.NumInlined: 8
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.msdfgen::BitmapConstSection" = type { ptr, i32, i32, i32, i32 }
%"struct.msdfgen::BitmapConstSection.0" = type { ptr, i32, i32, i32, i32 }
%"struct.msdfgen::BitmapConstSection.1" = type { ptr, i32, i32, i32, i32 }
%"struct.msdfgen::BitmapConstSection.2" = type { ptr, i32, i32, i32, i32 }

$_ZN7msdfgen8saveFl32ILi1EEEbNS_18BitmapConstSectionIfXT_EEEPKc = comdat any

$_ZN7msdfgen8saveFl32ILi2EEEbNS_18BitmapConstSectionIfXT_EEEPKc = comdat any

$_ZN7msdfgen8saveFl32ILi3EEEbNS_18BitmapConstSectionIfXT_EEEPKc = comdat any

$_ZN7msdfgen8saveFl32ILi4EEEbNS_18BitmapConstSectionIfXT_EEEPKc = comdat any

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@__const._ZN7msdfgen8saveFl32ILi4EEEbNS_18BitmapConstSectionIfXT_EEEPKc.header = private unnamed_addr constant <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 70, i8 76, i8 51, i8 50, [12 x i8] zeroinitializer }>, align 16

; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZN7msdfgen8saveFl32ILi1EEEbNS_18BitmapConstSectionIfXT_EEEPKc(ptr noundef byval(%"struct.msdfgen::BitmapConstSection") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 4 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %._ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge, label %bb.c

._ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !16
  br label %_ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !17
  %.fr.i = freeze i32 %i.f                        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16   ; 2 uses
  %i.i = add nsw i32 %i.h, -1
  %i.j = mul nsw i32 %i.i, %.fr.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !18
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  store ptr %i.m, ptr %0, align 8, !tbaa !18
  %i.n = sub i32 0, %.fr.i
  %2 = zext i32 %i.n to i64
  store i64 %2, ptr %i.e, align 8
  br label %_ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit: ; preds = %._ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge, %bb.c
  %i.o = phi i32 [ %.pre, %._ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN7msdfgen8saveFl32ILi4EEEbNS_18BitmapConstSectionIfXT_EEEPKc.header, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !19   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 1, ptr %i.t, align 4, !tbaa !11
  %i.u = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 16, ptr noundef nonnull %i.b) ; 0 uses
  %i.v = icmp sgt i32 %i.o, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !17
  %i.z = sext i32 %i.r to i64
  %i.aa = sext i32 %i.y to i64
  %wide.trip.count = zext nneg i32 %i.o to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %_ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.ab = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.ac = mul nsw i64 %indvars.iv, %i.aa
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ac
  %i.ae = tail call i64 @fwrite(ptr noundef %i.ad, i64 noundef 4, i64 noundef %i.z, ptr noundef nonnull %i.b) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !13

bb.e:                                             ; preds = %bb.a, %._crit_edge
  ret i1 %.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZN7msdfgen8saveFl32ILi2EEEbNS_18BitmapConstSectionIfXT_EEEPKc(ptr noundef byval(%"struct.msdfgen::BitmapConstSection.0") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 4 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %._ZN7msdfgen18BitmapConstSectionIfLi2EE8reorientENS_16YAxisOrientationE.exit_crit_edge, label %bb.c

._ZN7msdfgen18BitmapConstSectionIfLi2EE8reorientENS_16YAxisOrientationE.exit_crit_edge: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !23
  br label %_ZN7msdfgen18BitmapConstSectionIfLi2EE8reorientENS_16YAxisOrientationE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %.fr.i = freeze i32 %i.f                        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !23   ; 2 uses
  %i.i = add nsw i32 %i.h, -1
  %i.j = mul nsw i32 %i.i, %.fr.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !25
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  store ptr %i.m, ptr %0, align 8, !tbaa !25
  %i.n = sub i32 0, %.fr.i
  %2 = zext i32 %i.n to i64
  store i64 %2, ptr %i.e, align 8
  br label %_ZN7msdfgen18BitmapConstSectionIfLi2EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIfLi2EE8reorientENS_16YAxisOrientationE.exit: ; preds = %._ZN7msdfgen18BitmapConstSectionIfLi2EE8reorientENS_16YAxisOrientationE.exit_crit_edge, %bb.c
  %i.o = phi i32 [ %.pre, %._ZN7msdfgen18BitmapConstSectionIfLi2EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN7msdfgen8saveFl32ILi4EEEbNS_18BitmapConstSectionIfXT_EEEPKc.header, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 2, ptr %i.t, align 4, !tbaa !11
  %i.u = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 16, ptr noundef nonnull %i.b) ; 0 uses
  %i.v = icmp sgt i32 %i.o, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN7msdfgen18BitmapConstSectionIfLi2EE8reorientENS_16YAxisOrientationE.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !24
  %i.z = shl nsw i32 %i.r, 1
  %i.aa = sext i32 %i.z to i64
  %i.ab = sext i32 %i.y to i64
  %wide.trip.count = zext nneg i32 %i.o to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %_ZN7msdfgen18BitmapConstSectionIfLi2EE8reorientENS_16YAxisOrientationE.exit
  %i.ac = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.ad = mul nsw i64 %indvars.iv, %i.ab
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ad
  %i.af = tail call i64 @fwrite(ptr noundef %i.ae, i64 noundef 4, i64 noundef %i.aa, ptr noundef nonnull %i.b) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !20

bb.e:                                             ; preds = %bb.a, %._crit_edge
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZN7msdfgen8saveFl32ILi3EEEbNS_18BitmapConstSectionIfXT_EEEPKc(ptr noundef byval(%"struct.msdfgen::BitmapConstSection.1") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 4 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %._ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge, label %bb.c

._ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !30
  br label %_ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31
  %.fr.i = freeze i32 %i.f                        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !30   ; 2 uses
  %i.i = add nsw i32 %i.h, -1
  %i.j = mul nsw i32 %i.i, %.fr.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !32
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  store ptr %i.m, ptr %0, align 8, !tbaa !32
  %i.n = sub i32 0, %.fr.i
  %2 = zext i32 %i.n to i64
  store i64 %2, ptr %i.e, align 8
  br label %_ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit: ; preds = %._ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge, %bb.c
  %i.o = phi i32 [ %.pre, %._ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN7msdfgen8saveFl32ILi4EEEbNS_18BitmapConstSectionIfXT_EEEPKc.header, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !33   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 3, ptr %i.t, align 4, !tbaa !11
  %i.u = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 16, ptr noundef nonnull %i.b) ; 0 uses
  %i.v = icmp sgt i32 %i.o, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !31
  %i.z = mul nsw i32 %i.r, 3
  %i.aa = sext i32 %i.z to i64
  %i.ab = sext i32 %i.y to i64
  %wide.trip.count = zext nneg i32 %i.o to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %_ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit
  %i.ac = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.ad = mul nsw i64 %indvars.iv, %i.ab
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ad
  %i.af = tail call i64 @fwrite(ptr noundef %i.ae, i64 noundef 4, i64 noundef %i.aa, ptr noundef nonnull %i.b) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !27

bb.e:                                             ; preds = %bb.a, %._crit_edge
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZN7msdfgen8saveFl32ILi4EEEbNS_18BitmapConstSectionIfXT_EEEPKc(ptr noundef byval(%"struct.msdfgen::BitmapConstSection.2") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 4 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %._ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge, label %bb.c

._ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !37
  br label %_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !38
  %.fr.i = freeze i32 %i.f                        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !37   ; 2 uses
  %i.i = add nsw i32 %i.h, -1
  %i.j = mul nsw i32 %i.i, %.fr.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !39
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  store ptr %i.m, ptr %0, align 8, !tbaa !39
  %i.n = sub i32 0, %.fr.i
  %2 = zext i32 %i.n to i64
  store i64 %2, ptr %i.e, align 8
  br label %_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit: ; preds = %._ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge, %bb.c
  %i.o = phi i32 [ %.pre, %._ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN7msdfgen8saveFl32ILi4EEEbNS_18BitmapConstSectionIfXT_EEEPKc.header, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 4, ptr %i.t, align 4, !tbaa !11
  %i.u = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 16, ptr noundef nonnull %i.b) ; 0 uses
  %i.v = icmp sgt i32 %i.o, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !38
  %i.z = shl nsw i32 %i.r, 2
  %i.aa = sext i32 %i.z to i64
  %i.ab = sext i32 %i.y to i64
  %wide.trip.count = zext nneg i32 %i.o to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit
  %i.ac = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.ad = mul nsw i64 %indvars.iv, %i.ab
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ad
  %i.af = tail call i64 @fwrite(ptr noundef %i.ae, i64 noundef 4, i64 noundef %i.aa, ptr noundef nonnull %i.b) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !34

bb.e:                                             ; preds = %bb.a, %._crit_edge
  ret i1 %.not
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 float", !8, i64 0}
!10 = !{!"_ZTSN7msdfgen16YAxisOrientationE", !4, i64 0}
!11 = !{!4, !4, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!"_ZTSN7msdfgen18BitmapConstSectionIfLi1EEE", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 20}
!15 = !{!14, !10, i64 20}
!16 = !{!14, !5, i64 12}
!17 = !{!14, !5, i64 16}
!18 = !{!14, !9, i64 0}
!19 = !{!14, !5, i64 8}
!20 = distinct !{!20, !12}
!21 = !{!"_ZTSN7msdfgen18BitmapConstSectionIfLi2EEE", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 20}
!22 = !{!21, !10, i64 20}
!23 = !{!21, !5, i64 12}
!24 = !{!21, !5, i64 16}
!25 = !{!21, !9, i64 0}
!26 = !{!21, !5, i64 8}
!27 = distinct !{!27, !12}
!28 = !{!"_ZTSN7msdfgen18BitmapConstSectionIfLi3EEE", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 20}
!29 = !{!28, !10, i64 20}
!30 = !{!28, !5, i64 12}
!31 = !{!28, !5, i64 16}
!32 = !{!28, !9, i64 0}
!33 = !{!28, !5, i64 8}
!34 = distinct !{!34, !12}
!35 = !{!"_ZTSN7msdfgen18BitmapConstSectionIfLi4EEE", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 20}
!36 = !{!35, !10, i64 20}
!37 = !{!35, !5, i64 12}
!38 = !{!35, !5, i64 16}
!39 = !{!35, !9, i64 0}
!40 = !{!35, !5, i64 8}
end_hunk_0
