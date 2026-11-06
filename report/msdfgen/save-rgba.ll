Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/save-rgba?download=true
inline.NumInlined: 50
inline.NumDeleted: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.msdfgen::BitmapConstSection" = type { ptr, i32, i32, i32, i32 }
%"struct.msdfgen::BitmapConstSection.0" = type { ptr, i32, i32, i32, i32 }
%"struct.msdfgen::BitmapConstSection.1" = type { ptr, i32, i32, i32, i32 }
%"struct.msdfgen::BitmapConstSection.2" = type { ptr, i32, i32, i32, i32 }
%"struct.msdfgen::BitmapConstSection.3" = type { ptr, i32, i32, i32, i32 }
%"struct.msdfgen::BitmapConstSection.4" = type { ptr, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef zeroext i1 @_ZN7msdfgen8saveRgbaENS_18BitmapConstSectionIhLi1EEEPKc(ptr nofree noundef byval(%"struct.msdfgen::BitmapConstSection") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !20   ; 4 uses
  %i.g = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 4 uses
  %.not.i = icmp ne ptr %i.g, null                ; 2 uses
  br i1 %.not.i, label %bb.b, label %_ZN7msdfgen14RgbaFileOutputD2Ev.exit16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 1094862674, ptr %i.a, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.d)
  store i32 %2, ptr %i.h, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.f)
  store i32 %3, ptr %i.i, align 4, !tbaa !11
  %i.j = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef nonnull %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 -16777216, ptr %i.b, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  %.not.i13 = icmp eq i32 %i.l, 1
  br i1 %.not.i13, label %_ZN7msdfgen18BitmapConstSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %i.o = add nsw i32 %i.f, -1
  %i.p = mul nsw i32 %i.n, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !23
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  store ptr %i.s, ptr %0, align 8, !tbaa !23
  %i.t = sub nsw i32 0, %i.n
  store i32 %i.t, ptr %i.m, align 8, !tbaa !22
  br label %_ZN7msdfgen18BitmapConstSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit: ; preds = %bb.b, %bb.c
  %i.u = icmp sgt i32 %i.f, 0
  br i1 %i.u, label %.lr.ph28, label %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit

.lr.ph28:                                         ; preds = %_ZN7msdfgen18BitmapConstSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !22
  %i.y = zext nneg i32 %i.d to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ab = sext i32 %i.x to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  %i.ac = icmp sgt i32 %i.d, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph28, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.ad = mul nsw i64 %indvars.iv, %i.ab
  %i.ae = getelementptr inbounds i8, ptr %i.v, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.y
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit, label %bb.d, !llvm.loop !16

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.026 = phi ptr [ %i.ai, %.lr.ph ], [ %i.ae, %bb.d ] ; 2 uses
  %i.ag = load i8, ptr %.026, align 1, !tbaa !11  ; 3 uses
  store i8 %i.ag, ptr %i.z, align 2, !tbaa !11
  store i8 %i.ag, ptr %i.aa, align 1, !tbaa !11
  store i8 %i.ag, ptr %i.b, align 4, !tbaa !11
  %i.ah = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.g) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.026, i64 1 ; 2 uses
  %i.aj = icmp ult ptr %i.ai, %i.af
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !17

_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit:         ; preds = %._crit_edge, %_ZN7msdfgen18BitmapConstSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  %i.ak = tail call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  br label %_ZN7msdfgen14RgbaFileOutputD2Ev.exit16

_ZN7msdfgen14RgbaFileOutputD2Ev.exit16:           ; preds = %bb.a, %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit
  ret i1 %.not.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef zeroext i1 @_ZN7msdfgen8saveRgbaENS_18BitmapConstSectionIhLi3EEEPKc(ptr nofree noundef byval(%"struct.msdfgen::BitmapConstSection.0") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28   ; 4 uses
  %i.g = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 4 uses
  %.not.i = icmp ne ptr %i.g, null                ; 2 uses
  br i1 %.not.i, label %bb.b, label %_ZN7msdfgen14RgbaFileOutputD2Ev.exit18

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 1094862674, ptr %i.a, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.d)
  store i32 %2, ptr %i.h, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.f)
  store i32 %3, ptr %i.i, align 4, !tbaa !11
  %i.j = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef nonnull %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 -16777216, ptr %i.b, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %.not.i15 = icmp eq i32 %i.l, 1
  br i1 %.not.i15, label %_ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %i.o = add nsw i32 %i.f, -1
  %i.p = mul nsw i32 %i.n, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !31
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  store ptr %i.s, ptr %0, align 8, !tbaa !31
  %i.t = sub nsw i32 0, %i.n
  store i32 %i.t, ptr %i.m, align 8, !tbaa !30
  br label %_ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit: ; preds = %bb.b, %bb.c
  %i.u = icmp sgt i32 %i.f, 0
  br i1 %i.u, label %.lr.ph30, label %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit

.lr.ph30:                                         ; preds = %_ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !30
  %i.y = mul nsw i32 %i.d, 3
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ac = sext i32 %i.x to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  %i.ad = icmp sgt i32 %i.d, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph30, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.ae = mul nsw i64 %indvars.iv, %i.ac
  %i.af = getelementptr inbounds i8, ptr %i.v, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.z
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit, label %bb.d, !llvm.loop !24

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.028 = phi ptr [ %i.an, %.lr.ph ], [ %i.af, %bb.d ] ; 4 uses
  %i.ah = load i8, ptr %.028, align 1, !tbaa !11
  store i8 %i.ah, ptr %i.b, align 4, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %.028, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  store i8 %i.aj, ptr %i.aa, align 1, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %.028, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !11
  store i8 %i.al, ptr %i.ab, align 2, !tbaa !11
  %i.am = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.g) ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.028, i64 3 ; 2 uses
  %i.ao = icmp ult ptr %i.an, %i.ag
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !25

_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit:         ; preds = %._crit_edge, %_ZN7msdfgen18BitmapConstSectionIhLi3EE8reorientENS_16YAxisOrientationE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  %i.ap = tail call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  br label %_ZN7msdfgen14RgbaFileOutputD2Ev.exit18

_ZN7msdfgen14RgbaFileOutputD2Ev.exit18:           ; preds = %bb.a, %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit
  ret i1 %.not.i
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef zeroext i1 @_ZN7msdfgen8saveRgbaENS_18BitmapConstSectionIhLi4EEEPKc(ptr nofree noundef byval(%"struct.msdfgen::BitmapConstSection.1") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !35   ; 4 uses
  %i.f = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 4 uses
  %.not.i = icmp ne ptr %i.f, null                ; 2 uses
  br i1 %.not.i, label %bb.b, label %_ZN7msdfgen14RgbaFileOutputD2Ev.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 1094862674, ptr %i.a, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.c)
  store i32 %2, ptr %i.g, align 4, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.e)
  store i32 %3, ptr %i.h, align 4, !tbaa !11
  %i.i = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef nonnull %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !36
  %.not.i5 = icmp eq i32 %i.k, 1
  br i1 %.not.i5, label %_ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %i.n = add nsw i32 %i.e, -1
  %i.o = mul nsw i32 %i.m, %i.n
  %i.p = load ptr, ptr %0, align 8, !tbaa !38
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q
  store ptr %i.r, ptr %0, align 8, !tbaa !38
  %i.s = sub nsw i32 0, %i.m
  store i32 %i.s, ptr %i.l, align 8, !tbaa !37
  br label %_ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit: ; preds = %bb.b, %bb.c
  %i.t = icmp sgt i32 %i.e, 0
  br i1 %i.t, label %.lr.ph, label %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit

.lr.ph:                                           ; preds = %_ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !37
  %i.x = shl nsw i32 %i.c, 2
  %i.y = sext i32 %i.x to i64
  %i.z = sext i32 %i.w to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.aa = mul nsw i64 %indvars.iv, %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 %i.aa
  %i.ac = tail call i64 @fwrite(ptr noundef %i.ab, i64 noundef 1, i64 noundef %i.y, ptr noundef nonnull %i.f) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit, label %bb.d, !llvm.loop !32

_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit:         ; preds = %bb.d, %_ZN7msdfgen18BitmapConstSectionIhLi4EE8reorientENS_16YAxisOrientationE.exit
  %i.ad = tail call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  br label %_ZN7msdfgen14RgbaFileOutputD2Ev.exit

_ZN7msdfgen14RgbaFileOutputD2Ev.exit:             ; preds = %bb.a, %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit
  ret i1 %.not.i
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef zeroext i1 @_ZN7msdfgen8saveRgbaENS_18BitmapConstSectionIfLi1EEEPKc(ptr nofree noundef byval(%"struct.msdfgen::BitmapConstSection.2") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43   ; 4 uses
  %i.g = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 4 uses
  %.not.i = icmp ne ptr %i.g, null                ; 2 uses
  br i1 %.not.i, label %bb.b, label %_ZN7msdfgen14RgbaFileOutputD2Ev.exit16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 1094862674, ptr %i.a, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.d)
  store i32 %2, ptr %i.h, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.f)
  store i32 %3, ptr %i.i, align 4, !tbaa !11
  %i.j = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef nonnull %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 -16777216, ptr %i.b, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !44
  %.not.i13 = icmp eq i32 %i.l, 1
  br i1 %.not.i13, label %_ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !45   ; 2 uses
  %i.o = add nsw i32 %i.f, -1
  %i.p = mul nsw i32 %i.n, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !46
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r
  store ptr %i.s, ptr %0, align 8, !tbaa !46
  %i.t = sub nsw i32 0, %i.n
  store i32 %i.t, ptr %i.m, align 8, !tbaa !45
  br label %_ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit: ; preds = %bb.b, %bb.c
  %i.u = icmp sgt i32 %i.f, 0
  br i1 %i.u, label %.lr.ph28, label %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit

.lr.ph28:                                         ; preds = %_ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !45
  %i.y = sext i32 %i.d to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ab = sext i32 %i.x to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  %.idx = shl nuw nsw i64 %i.y, 2
  %i.ac = icmp sgt i32 %i.d, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph28, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.ad = mul nsw i64 %indvars.iv, %i.ab
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit, label %bb.d, !llvm.loop !39

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.026 = phi ptr [ %i.ar, %.lr.ph ], [ %i.ae, %bb.d ] ; 2 uses
  %i.ag = load float, ptr %.026, align 4, !tbaa !15 ; 4 uses
  %i.ah = fcmp oge float %i.ag, 0.000000e+00
  %i.ai = fcmp ole float %i.ag, 1.000000e+00
  %or.cond.i.i = and i1 %i.ah, %i.ai
  %i.aj = fcmp ogt float %i.ag, 0.000000e+00
  %i.ak = uitofp i1 %i.aj to float
  %i.al = select i1 %or.cond.i.i, float %i.ag, float %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float -2.550000e+02, float 2.555000e+02)
  %i.an = fptosi float %i.am to i32
  %i.ao = trunc i32 %i.an to i8
  %i.ap = xor i8 %i.ao, -1                        ; 3 uses
  store i8 %i.ap, ptr %i.z, align 2, !tbaa !11
  store i8 %i.ap, ptr %i.aa, align 1, !tbaa !11
  store i8 %i.ap, ptr %i.b, align 4, !tbaa !11
  %i.aq = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.g) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.026, i64 4 ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.af
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !40

_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit:         ; preds = %._crit_edge, %_ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  %i.at = tail call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  br label %_ZN7msdfgen14RgbaFileOutputD2Ev.exit16

_ZN7msdfgen14RgbaFileOutputD2Ev.exit16:           ; preds = %bb.a, %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit
  ret i1 %.not.i
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef zeroext i1 @_ZN7msdfgen8saveRgbaENS_18BitmapConstSectionIfLi3EEEPKc(ptr nofree noundef byval(%"struct.msdfgen::BitmapConstSection.3") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !51   ; 4 uses
  %i.g = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 4 uses
  %.not.i = icmp ne ptr %i.g, null                ; 2 uses
  br i1 %.not.i, label %bb.b, label %_ZN7msdfgen14RgbaFileOutputD2Ev.exit20

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 1094862674, ptr %i.a, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.d)
  store i32 %2, ptr %i.h, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.f)
  store i32 %3, ptr %i.i, align 4, !tbaa !11
  %i.j = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef nonnull %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 -16777216, ptr %i.b, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !52
  %.not.i15 = icmp eq i32 %i.l, 1
  br i1 %.not.i15, label %_ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %i.o = add nsw i32 %i.f, -1
  %i.p = mul nsw i32 %i.n, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !54
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r
  store ptr %i.s, ptr %0, align 8, !tbaa !54
  %i.t = sub nsw i32 0, %i.n
  store i32 %i.t, ptr %i.m, align 8, !tbaa !53
  br label %_ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit: ; preds = %bb.b, %bb.c
  %i.u = icmp sgt i32 %i.f, 0
  br i1 %i.u, label %.lr.ph32, label %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit

.lr.ph32:                                         ; preds = %_ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !53
  %i.y = mul nsw i32 %i.d, 3
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ac = sext i32 %i.x to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  %.idx = shl nsw i64 %i.z, 2
  %i.ad = icmp sgt i32 %i.d, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph32, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.ae = mul nsw i64 %indvars.iv, %i.ac
  %i.af = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %.idx
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit, label %bb.d, !llvm.loop !47

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.030 = phi ptr [ %i.bo, %.lr.ph ], [ %i.af, %bb.d ] ; 4 uses
  %i.ah = load float, ptr %.030, align 4, !tbaa !15 ; 4 uses
  %i.ai = fcmp oge float %i.ah, 0.000000e+00
  %i.aj = fcmp ole float %i.ah, 1.000000e+00
  %or.cond.i.i = and i1 %i.ai, %i.aj
  %i.ak = fcmp ogt float %i.ah, 0.000000e+00
  %i.al = uitofp i1 %i.ak to float
  %i.am = select i1 %or.cond.i.i, float %i.ah, float %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float -2.550000e+02, float 2.555000e+02)
  %i.ao = fptosi float %i.an to i32
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = xor i8 %i.ap, -1
  store i8 %i.aq, ptr %i.b, align 4, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %.030, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !15 ; 4 uses
  %i.at = fcmp oge float %i.as, 0.000000e+00
  %i.au = fcmp ole float %i.as, 1.000000e+00
  %or.cond.i.i16 = and i1 %i.at, %i.au
  %i.av = fcmp ogt float %i.as, 0.000000e+00
  %i.aw = uitofp i1 %i.av to float
  %i.ax = select i1 %or.cond.i.i16, float %i.as, float %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ax, float -2.550000e+02, float 2.555000e+02)
  %i.az = fptosi float %i.ay to i32
  %i.ba = trunc i32 %i.az to i8
  %i.bb = xor i8 %i.ba, -1
  store i8 %i.bb, ptr %i.aa, align 1, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %.030, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !15 ; 4 uses
  %i.be = fcmp oge float %i.bd, 0.000000e+00
  %i.bf = fcmp ole float %i.bd, 1.000000e+00
  %or.cond.i.i17 = and i1 %i.be, %i.bf
  %i.bg = fcmp ogt float %i.bd, 0.000000e+00
  %i.bh = uitofp i1 %i.bg to float
  %i.bi = select i1 %or.cond.i.i17, float %i.bd, float %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float -2.550000e+02, float 2.555000e+02)
  %i.bk = fptosi float %i.bj to i32
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = xor i8 %i.bl, -1
  store i8 %i.bm, ptr %i.ab, align 2, !tbaa !11
  %i.bn = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.g) ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.030, i64 12 ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %i.ag
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !llvm.loop !48

_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit:         ; preds = %._crit_edge, %_ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  %i.bq = tail call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  br label %_ZN7msdfgen14RgbaFileOutputD2Ev.exit20

_ZN7msdfgen14RgbaFileOutputD2Ev.exit20:           ; preds = %bb.a, %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit
  ret i1 %.not.i
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef zeroext i1 @_ZN7msdfgen8saveRgbaENS_18BitmapConstSectionIfLi4EEEPKc(ptr nofree noundef byval(%"struct.msdfgen::BitmapConstSection.4") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !58   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !59   ; 4 uses
  %i.g = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 4 uses
  %.not.i = icmp ne ptr %i.g, null                ; 2 uses
  br i1 %.not.i, label %bb.b, label %_ZN7msdfgen14RgbaFileOutputD2Ev.exit22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 1094862674, ptr %i.a, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.d)
  store i32 %2, ptr %i.h, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.f)
  store i32 %3, ptr %i.i, align 4, !tbaa !11
  %i.j = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef nonnull %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !60
  %.not.i16 = icmp eq i32 %i.l, 1
  br i1 %.not.i16, label %_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %i.o = add nsw i32 %i.f, -1
  %i.p = mul nsw i32 %i.n, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !62
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r
  store ptr %i.s, ptr %0, align 8, !tbaa !62
  %i.t = sub nsw i32 0, %i.n
  store i32 %i.t, ptr %i.m, align 8, !tbaa !61
  br label %_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit: ; preds = %bb.b, %bb.c
  %i.u = icmp sgt i32 %i.f, 0
  br i1 %i.u, label %.lr.ph34, label %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit

.lr.ph34:                                         ; preds = %_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !62
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !61
  %i.y = shl nsw i32 %i.d, 2
  %i.z = sext i32 %i.y to i64
  %i.aa = sext i32 %i.x to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  %.idx = shl nsw i64 %i.z, 2
  %i.ab = icmp sgt i32 %i.d, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph34, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.ac = mul nsw i64 %indvars.iv, %i.aa
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit, label %bb.d, !llvm.loop !55

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.032 = phi ptr [ %i.ar, %.lr.ph ], [ %i.ad, %bb.d ] ; 2 uses
  %i.af = load <4 x float>, ptr %.032, align 4, !tbaa !15 ; 4 uses
  %i.ag = fcmp oge <4 x float> %i.af, zeroinitializer
  %i.ah = fcmp ole <4 x float> %i.af, splat (float 1.000000e+00)
  %i.ai = and <4 x i1> %i.ag, %i.ah
  %i.aj = fcmp ogt <4 x float> %i.af, zeroinitializer
  %i.ak = uitofp <4 x i1> %i.aj to <4 x float>
  %i.al = select <4 x i1> %i.ai, <4 x float> %i.af, <4 x float> %i.ak
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> splat (float -2.550000e+02), <4 x float> splat (float 2.555000e+02))
  %i.an = fptosi <4 x float> %i.am to <4 x i32>
  %i.ao = trunc <4 x i32> %i.an to <4 x i8>
  %i.ap = xor <4 x i8> %i.ao, splat (i8 -1)
  store <4 x i8> %i.ap, ptr %i.b, align 4, !tbaa !11
  %i.aq = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.g) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.032, i64 16 ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.ae
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !56

_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit:         ; preds = %._crit_edge, %_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  %i.at = tail call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  br label %_ZN7msdfgen14RgbaFileOutputD2Ev.exit22

_ZN7msdfgen14RgbaFileOutputD2Ev.exit22:           ; preds = %bb.a, %_ZN7msdfgen14RgbaFileOutputC2EPKcjj.exit
  ret i1 %.not.i
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

attributes #0 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSN7msdfgen16YAxisOrientationE", !4, i64 0}
!11 = !{!4, !4, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"p1 float", !8, i64 0}
!14 = !{!"float", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = !{!"_ZTSN7msdfgen18BitmapConstSectionIhLi1EEE", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 20}
!19 = !{!18, !5, i64 8}
!20 = !{!18, !5, i64 12}
!21 = !{!18, !10, i64 20}
!22 = !{!18, !5, i64 16}
!23 = !{!18, !9, i64 0}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = !{!"_ZTSN7msdfgen18BitmapConstSectionIhLi3EEE", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 20}
!27 = !{!26, !5, i64 8}
!28 = !{!26, !5, i64 12}
!29 = !{!26, !10, i64 20}
!30 = !{!26, !5, i64 16}
!31 = !{!26, !9, i64 0}
!32 = distinct !{!32, !12}
!33 = !{!"_ZTSN7msdfgen18BitmapConstSectionIhLi4EEE", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 20}
!34 = !{!33, !5, i64 8}
!35 = !{!33, !5, i64 12}
!36 = !{!33, !10, i64 20}
!37 = !{!33, !5, i64 16}
!38 = !{!33, !9, i64 0}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = !{!"_ZTSN7msdfgen18BitmapConstSectionIfLi1EEE", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 20}
!42 = !{!41, !5, i64 8}
!43 = !{!41, !5, i64 12}
!44 = !{!41, !10, i64 20}
!45 = !{!41, !5, i64 16}
!46 = !{!41, !13, i64 0}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = !{!"_ZTSN7msdfgen18BitmapConstSectionIfLi3EEE", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 20}
!50 = !{!49, !5, i64 8}
!51 = !{!49, !5, i64 12}
!52 = !{!49, !10, i64 20}
!53 = !{!49, !5, i64 16}
!54 = !{!49, !13, i64 0}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
!57 = !{!"_ZTSN7msdfgen18BitmapConstSectionIfLi4EEE", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 20}
!58 = !{!57, !5, i64 8}
!59 = !{!57, !5, i64 12}
!60 = !{!57, !10, i64 20}
!61 = !{!57, !5, i64 16}
!62 = !{!57, !13, i64 0}
end_hunk_0
