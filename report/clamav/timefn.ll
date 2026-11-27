Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/timefn?download=true
inline.NumInlined: 11
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str = private unnamed_addr constant [33 x i32] [i32 37, i32 117, i32 45, i32 37, i32 48, i32 50, i32 117, i32 45, i32 37, i32 48, i32 50, i32 117, i32 32, i32 37, i32 48, i32 50, i32 117, i32 58, i32 37, i32 48, i32 50, i32 117, i32 58, i32 37, i32 48, i32 50, i32 117, i32 44, i32 37, i32 48, i32 57, i32 117, i32 0], align 4
@.str.1 = private unnamed_addr constant [23 x i32] [i32 37, i32 117, i32 45, i32 37, i32 48, i32 50, i32 117, i32 45, i32 37, i32 48, i32 50, i32 117, i32 32, i32 37, i32 48, i32 50, i32 117, i32 58, i32 37, i32 48, i32 50, i32 117, i32 0], align 4
@.str.2 = private unnamed_addr constant [17 x i32] [i32 63, i32 63, i32 63, i32 63, i32 45, i32 63, i32 63, i32 45, i32 63, i32 63, i32 32, i32 63, i32 63, i32 58, i32 63, i32 63, i32 0], align 4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7RarTime8GetLocalEP12RarLocalTime(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef writeonly captures(none) initializes((0, 36)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = load i64, ptr %0, align 8, !tbaa !10
  %i.c = add i64 %i.b, 6802270473709551616
  %i.d = udiv i64 %i.c, 1000000000
  store i64 %i.d, ptr %i.a, align 8, !tbaa !11
  %i.e = call ptr @localtime(ptr noundef nonnull %i.a) #13 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load <4 x i32>, ptr %i.f, align 8, !tbaa !12
  %i.h = add nsw <4 x i32> %i.g, <i32 0, i32 0, i32 1, i32 1900>
  %i.i = shufflevector <4 x i32> %i.h, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.i, ptr %1, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load <2 x i32>, ptr %i.e, align 8, !tbaa !12
  %i.l = shufflevector <2 x i32> %i.k, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.l, ptr %i.j, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = load <2 x i32>, ptr %i.m, align 8, !tbaa !12
  store <2 x i32> %i.o, ptr %i.n, align 4, !tbaa !12
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  %i.q = urem i64 %i.p, 1000000000
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.r, ptr %i.s, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 0, 18446744074) i64 @_ZN7RarTime7GetUnixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !10
  %i.b = add i64 %i.a, 6802270473709551616
  %i.c = udiv i64 %i.b, 1000000000
  ret i64 %i.c
}

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define void @_ZN7RarTime8SetLocalEP12RarLocalTime(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %struct.tm, align 16                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <4 x i32>, ptr %i.a, align 4, !tbaa !12
  %i.c = shufflevector <4 x i32> %i.b, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.c, ptr %2, align 16, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load <2 x i32>, ptr %1, align 4, !tbaa !12
  %i.f = add <2 x i32> %i.e, <i32 -1900, i32 -1>
  %i.g = shufflevector <2 x i32> %i.f, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.g, ptr %i.d, align 16, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 -1, ptr %i.h, align 16, !tbaa !18
  %i.i = call i64 @mktime(ptr noundef nonnull %2) #13
  %i.j = mul i64 %i.i, 1000000000
  %i.k = add i64 %i.j, -6802270473709551616
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14
  %i.n = zext i32 %i.m to i64
  %i.o = add i64 %i.k, %i.n
  store i64 %i.o, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7RarTime7SetUnixEl(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = mul i64 %1, 1000000000
  %i.b = add i64 %i.a, -6802270473709551616
  store i64 %i.b, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 0, 184467440737095517) i64 @_ZN7RarTime6GetWinEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !10
  %i.b = udiv i64 %i.a, 100
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7RarTime6SetWinEm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = mul i64 %1, 100
  store i64 %i.a, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN7RarTime9GetUnixNSEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !10
  %i.b = add i64 %i.a, 6802270473709551616
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7RarTime9SetUnixNSEm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = add i64 %1, -6802270473709551616
  store i64 %i.a, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN7RarTime6GetDosEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = load i64, ptr %0, align 8, !tbaa !10
  %i.c = add i64 %i.b, 6802270473709551616
  %i.d = udiv i64 %i.c, 1000000000
  store i64 %i.d, ptr %i.a, align 8, !tbaa !11
  %i.e = call ptr @localtime(ptr noundef nonnull %i.a) #13 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !23
  %i.p = load i32, ptr %i.e, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.q = lshr i32 %i.p, 1
  %i.r = shl i32 %i.o, 5
  %i.s = shl i32 %i.m, 11
  %i.t = shl i32 %i.k, 16
  %i.u = shl i32 %i.i, 21
  %i.v = add i32 %i.u, 2097152
  %i.w = shl i32 %i.g, 25
  %i.x = add i32 %i.w, 1610612736
  %i.y = or i32 %i.t, %i.x
  %i.z = or i32 %i.y, %i.v
  %i.aa = or i32 %i.z, %i.s
  %i.ab = or i32 %i.aa, %i.r
  %i.ac = or i32 %i.ab, %i.q
  ret i32 %i.ac
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define void @_ZN7RarTime6SetDosEj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %struct.tm, align 8                 ; 10 uses
  %i.a = shl i32 %1, 1
  %i.b = and i32 %i.a, 62
  %i.c = lshr i32 %1, 5
  %i.d = and i32 %i.c, 63
  %i.e = lshr i32 %1, 11
  %i.f = and i32 %i.e, 31
  %i.g = lshr i32 %1, 16
  %i.h = and i32 %i.g, 31
  %i.i = lshr i32 %1, 21
  %i.j = and i32 %i.i, 15
  %i.k = lshr i32 %1, 25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i32 %i.b, ptr %2, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.d, ptr %i.l, align 4, !tbaa !23
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.f, ptr %3, align 8, !tbaa !22
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.h, ptr %4, align 4, !tbaa !21
  %i.m = add nsw i32 %i.j, -1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.m, ptr %i.n, align 8, !tbaa !20
  %i.o = add nuw nsw i32 %i.k, 80
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.o, ptr %i.p, align 4, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 -1, ptr %i.q, align 8, !tbaa !18
  %i.r = call i64 @mktime(ptr noundef nonnull %2) #13
  %i.s = mul i64 %i.r, 1000000000
  %i.t = add i64 %i.s, -6802270473709551616
  store i64 %i.t, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7RarTime7GetTextEPwmb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = add i64 %i.b, 6802270473709551616
  %i.d = udiv i64 %i.c, 1000000000
  store i64 %i.d, ptr %i.a, align 8, !tbaa !11
  %i.e = call ptr @localtime(ptr noundef nonnull %i.a) #13 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !19
  %i.h = add nsw i32 %i.g, 1900                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !20
  %i.k = add nsw i32 %i.j, 1                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !22   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !23   ; 2 uses
  %i.r = load i32, ptr %i.e, align 8, !tbaa !24
  %i.s = load i64, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = urem i64 %i.s, 1000000000
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str, i32 noundef %i.h, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.u) #13 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.w = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.1, i32 noundef %i.h, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q) #13 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef %1, ptr noundef nonnull @.str.2, i64 noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind
declare i32 @swprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @_Z8wcsncpyzPwPKwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN7RarTime10SetIsoTextEPKw(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %struct.tm, align 8                 ; 9 uses
  %i.a = alloca [6 x i32], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = load i32, ptr %1, align 4, !tbaa !26     ; 2 uses
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.e
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load <2 x i32>, ptr %.phi.trans.insert16, align 16, !tbaa !12
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre19 = load i32, ptr %.phi.trans.insert18, align 4, !tbaa !12
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre21 = load i32, ptr %.phi.trans.insert20, align 8, !tbaa !12
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre23 = load i32, ptr %.phi.trans.insert22, align 4, !tbaa !12
  %.pre24 = load i32, ptr %i.a, align 16, !tbaa !12
  %i.d = tail call i32 @llvm.umax.i32(i32 %.pre21, i32 1)
  %i.e = tail call i32 @llvm.usub.sat.i32(i32 %.pre23, i32 1)
  %i.f = add i32 %.pre24, -1900
  %i.g = shufflevector <2 x i32> %i.c, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.h = phi i32 [ %i.f, %._crit_edge.loopexit ], [ -1900, %bb.a ]
  %i.i = phi i32 [ %i.e, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.j = phi i32 [ %i.d, %._crit_edge.loopexit ], [ 1, %bb.a ]
  %i.k = phi i32 [ %.pre19, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.l = phi <2 x i32> [ %i.g, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <2 x i32> %i.l, ptr %2, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.k, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.j, ptr %i.n, align 4, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.i, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.h, ptr %i.p, align 4, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 -1, ptr %i.q, align 8, !tbaa !18
  %i.r = call i64 @mktime(ptr noundef nonnull %2) #13
  %i.s = mul i64 %i.r, 1000000000
  %i.t = add i64 %i.s, -6802270473709551616
  store i64 %i.t, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.u = phi i32 [ %i.al, %bb.e ], [ %i.b, %bb.a ]
  %.015 = phi i32 [ %.1, %bb.e ], [ 0, %bb.a ]    ; 4 uses
  %.01014 = phi ptr [ %i.ak, %bb.e ], [ %1, %bb.a ] ; 2 uses
  %i.v = tail call noundef zeroext i1 @_Z7IsDigiti(i32 noundef %i.u)
  br i1 %i.v, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.w = icmp ult i32 %.015, 4
  %i.x = add i32 %.015, -4
  %i.y = lshr i32 %i.x, 1
  %i.z = add nuw i32 %i.y, 1
  %i.aa = select i1 %i.w, i32 0, i32 %i.z         ; 2 uses
  %i.ab = icmp ult i32 %i.aa, 6
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !12
  %i.af = mul nsw i32 %i.ae, 10
  %i.ag = load i32, ptr %.01014, align 4, !tbaa !26
  %i.ah = add i32 %i.ag, -48
  %i.ai = add i32 %i.ah, %i.af
  store i32 %i.ai, ptr %i.ad, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aj = add i32 %.015, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.1 = phi i32 [ %i.aj, %bb.d ], [ %.015, %.lr.ph ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.01014, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !26 ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !28
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare noundef zeroext i1 @_Z7IsDigiti(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN7RarTime10SetAgeTextEPKw(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !26     ; 2 uses
  %.not22 = icmp eq i32 %i.b, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.h
  %i.c = zext i32 %.2 to i64
  %i.d = mul nsw i64 %i.c, -1000000000
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.019.lcssa = phi i64 [ 0, %bb.a ], [ %i.d, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.e = call i64 @time(ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !11
  %i.g = mul i64 %i.f, 1000000000
  %i.h = add i64 %i.g, -6802270473709551616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.i = add i64 %i.h, %.019.lcssa
  store i64 %i.i, ptr %0, align 8, !tbaa !10
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %i.j = phi i32 [ %i.z, %bb.h ], [ %i.b, %bb.a ] ; 3 uses
  %.025 = phi i32 [ %i.w, %bb.h ], [ 0, %bb.a ]
  %.01824 = phi i32 [ %.1, %bb.h ], [ 0, %bb.a ]  ; 5 uses
  %.01923 = phi i32 [ %.2, %bb.h ], [ 0, %bb.a ]  ; 6 uses
  %i.k = tail call noundef zeroext i1 @_Z7IsDigiti(i32 noundef %i.j)
  br i1 %i.k, label %bb.b, label %bb.c

end_hunk_0
