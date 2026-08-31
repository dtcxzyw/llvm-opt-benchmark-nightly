Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/epd?download=true
inline.NumInlined: 158
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EpDoubleStruct = type { %union.EpTypeUnion, i32 }
%union.EpTypeUnion = type { double }

@.str.1 = private unnamed_addr constant [5 x i8] c"-Inf\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%e\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"+0%d\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"+%d\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"-0%d\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"-%d\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%E\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"E%d\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @EpdAlloc() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @EpdCmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !8
  %i.b = load double, ptr %1, align 8, !tbaa !8
  %i.c = fcmp une double %i.a, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !9
  %.not = icmp ne i32 %i.e, %i.g
  %spec.select = zext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @EpdFree(ptr noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define void @EpdGetString(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.EpDoubleStruct, align 8     ; 6 uses
  %3 = alloca %struct.EpDoubleStruct, align 8     ; 5 uses
  %i.a = load double, ptr %0, align 8             ; 4 uses
  %i.b = bitcast double %i.a to i64               ; 5 uses
  %or.cond10.i.not = icmp eq i64 %i.b, -2251799813685248
  br i1 %or.cond10.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 5136718, ptr %1, align 1
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.c = tail call double @llvm.fabs.f64(double %i.a)
  %or.cond6.i = fcmp une double %i.c, +inf
  br i1 %or.cond6.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not15 = icmp sgt i64 %i.b, -1
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  store i32 6712905, ptr %1, align 1
  br label %bb.r

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %4 = and i64 %i.b, 9221120237041090559
  %or.cond7.i.i.i = icmp ne i64 %4, 9218868437227405312
  %5 = and i64 %i.b, -9221120237041090560
  %or.cond9.not.i.i.i = icmp eq i64 %5, 2251799813685248
  %or.cond.not.i.i.not.i = or i1 %or.cond7.i.i.i, %or.cond9.not.i.i.i
  tail call void @llvm.assume(i1 %or.cond.not.i.i.not.i)
  %i.d = fcmp une double %i.a, 0.000000e+00
  br i1 %i.d, label %bb.h, label %EpdGetValueAndDecimalExponent.exit

bb.h:                                             ; preds = %bb.g
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !9
  call void @EpdPow2Decimal(i32 noundef %i.g, ptr noundef nonnull %3)
  %i.h = load i64, ptr %3, align 8                ; 3 uses
  %or.cond10.i.i20.not.i.i = icmp eq i64 %i.h, -2251799813685248
  %i.i = bitcast i64 %i.h to double               ; 2 uses
  br i1 %or.cond10.i.i20.not.i.i, label %EpdGetValueAndDecimalExponent.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %or.cond6.i.i23.i.i = fcmp une double %i.j, +inf
  br i1 %or.cond6.i.i23.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = xor i64 %i.h, %i.b
  %i.l = and i64 %i.k, -9223372036854775808
  %i.m = or disjoint i64 %i.l, 9218868437227405312
  %i.n = bitcast i64 %i.m to double
  br label %EpdGetValueAndDecimalExponent.exit

bb.k:                                             ; preds = %bb.i
  %i.o = fmul double %i.a, %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !9
  store double %i.o, ptr %2, align 8, !tbaa !8
  store i32 %i.q, ptr %i.e, align 8, !tbaa !9
  call void @EpdNormalizeDecimal(ptr noundef nonnull %2)
  %.pre.i = load double, ptr %2, align 8, !tbaa !8
  %.pre9.i = load i32, ptr %i.e, align 8, !tbaa !9
  br label %EpdGetValueAndDecimalExponent.exit

EpdGetValueAndDecimalExponent.exit:               ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %.017 = phi double [ -qnan, %bb.h ], [ 0.000000e+00, %bb.g ], [ %.pre.i, %bb.k ], [ %i.n, %bb.j ]
  %.0 = phi i32 [ 0, %bb.h ], [ 0, %bb.g ], [ %.pre9.i, %bb.k ], [ 0, %bb.j ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.r = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %.017) #19 ; 0 uses
  %strchr = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 101) ; 2 uses
  %i.s = icmp sgt i32 %.0, -1
  br i1 %i.s, label %bb.l, label %bb.o

bb.l:                                             ; preds = %EpdGetValueAndDecimalExponent.exit
  %i.t = icmp samesign ult i32 %.0, 10
  %i.u = getelementptr inbounds nuw i8, ptr %strchr, i64 1 ; 2 uses
  br i1 %i.t, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.v = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.0) #19 ; 0 uses
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.w = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %.0) #19 ; 0 uses
  br label %bb.r

bb.o:                                             ; preds = %EpdGetValueAndDecimalExponent.exit
  %i.x = sub nsw i32 0, %.0                       ; 2 uses
  %i.y = icmp samesign ugt i32 %.0, -10
  %i.z = getelementptr inbounds nuw i8, ptr %strchr, i64 1 ; 2 uses
  br i1 %i.y, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aa = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.x) #19 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ab = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.x) #19 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.q, %bb.p, %bb.e, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @IsNanDouble(double noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = bitcast double %0 to i64
  %or.cond10 = icmp eq i64 %i.a, -2251799813685248
  %.0 = zext i1 %or.cond10 to i32
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -1, 2) i32 @IsInfDouble(double noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = bitcast double %0 to i64
  %i.b = tail call double @llvm.fabs.f64(double %0)
  %or.cond6 = fcmp oeq double %i.b, +inf
  %i.c = icmp sgt i64 %i.a, -1
  %. = select i1 %i.c, i32 1, i32 -1
  %.0 = select i1 %or.cond6, i32 %., i32 0
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define void @EpdGetValueAndDecimalExponent(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %3 = alloca %struct.EpDoubleStruct, align 8     ; 6 uses
  %4 = alloca %struct.EpDoubleStruct, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = and i64 %i.a, 9221120237041090559
  %or.cond7.i.i = icmp ne i64 %i.b, 9218868437227405312
  %i.c = and i64 %i.a, -9221120237041090560
  %or.cond9.not.i.i = icmp eq i64 %i.c, 2251799813685248
  %or.cond.not.i.i.not = or i1 %or.cond7.i.i, %or.cond9.not.i.i
  %i.d = bitcast i64 %i.a to double               ; 3 uses
  br i1 %or.cond.not.i.i.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp une double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !9
  call void @EpdPow2Decimal(i32 noundef %i.h, ptr noundef nonnull %4)
  %or.cond10.i.i.not.i = icmp eq i64 %i.a, -2251799813685248
  br i1 %or.cond10.i.i.not.i, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %4, align 8                ; 3 uses
  %or.cond10.i.i20.not.i = icmp eq i64 %i.i, -2251799813685248
  %i.j = bitcast i64 %i.i to double               ; 2 uses
  br i1 %or.cond10.i.i20.not.i, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call double @llvm.fabs.f64(double %i.d)
  %or.cond6.i.i.i = fcmp une double %i.k, +inf
  %i.l = tail call double @llvm.fabs.f64(double %i.j)
  %or.cond6.i.i23.i = fcmp une double %i.l, +inf
  %or.cond.i = and i1 %or.cond6.i.i.i, %or.cond6.i.i23.i
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = xor i64 %i.i, %i.a
  %i.n = and i64 %i.m, -9223372036854775808
  %i.o = or disjoint i64 %i.n, 9218868437227405312
  %i.p = bitcast i64 %i.o to double
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.q = fmul double %i.d, %i.j
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !9
  store double %i.q, ptr %3, align 8, !tbaa !8
  store i32 %i.s, ptr %i.f, align 8, !tbaa !9
  call void @EpdNormalizeDecimal(ptr noundef nonnull %3)
  %.pre = load double, ptr %3, align 8, !tbaa !8
  %.pre9 = load i32, ptr %i.f, align 8, !tbaa !9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %.sink12 = phi double [ 0.000000e+00, %bb.b ], [ %.pre, %bb.g ], [ %i.p, %bb.f ], [ -qnan, %bb.d ], [ -qnan, %bb.c ]
  %.sink = phi i32 [ 0, %bb.b ], [ %.pre9, %bb.g ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ]
  store double %.sink12, ptr %1, align 8, !tbaa !11
  store i32 %.sink, ptr %2, align 4, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @EpdConvert(double noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %1) local_unnamed_addr #9 {
bb.a:
  store double %0, ptr %1, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !9
  %.cast = bitcast double %0 to i64               ; 4 uses
  %i.b = and i64 %.cast, 9221120237041090559
  %or.cond7.i.i = icmp ne i64 %i.b, 9218868437227405312
  %i.c = and i64 %.cast, -9221120237041090560
  %or.cond9.not.i.i = icmp eq i64 %i.c, 2251799813685248
  %or.cond.not.i.not.i = or i1 %or.cond7.i.i, %or.cond9.not.i.i
  br i1 %or.cond.not.i.not.i, label %bb.b, label %EpdNormalize.exit

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %.cast, 52
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 2047                       ; 2 uses
  %i.g = icmp eq i32 %i.f, 1023
  br i1 %i.g, label %EpdNormalize.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.f, -1023
  %i.i = and i64 %.cast, -9218868437227405313
  %i.j = or disjoint i64 %i.i, 4607182418800017408
  store i64 %i.j, ptr %1, align 8
  store i32 %i.h, ptr %i.a, align 8, !tbaa !9
  br label %EpdNormalize.exit

EpdNormalize.exit:                                ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @EpdNormalize(ptr nofree noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !8      ; 4 uses
  %i.b = and i64 %i.a, 9221120237041090559
  %or.cond7.i = icmp ne i64 %i.b, 9218868437227405312
  %i.c = and i64 %i.a, -9221120237041090560
  %or.cond9.not.i = icmp eq i64 %i.c, 2251799813685248
  %or.cond.not.i.not = or i1 %or.cond7.i, %or.cond9.not.i
  br i1 %or.cond.not.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !9
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.a, 52
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 2047                       ; 2 uses
  %i.h = icmp eq i32 %i.g, 1023
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.g, -1023
  %i.j = and i64 %i.a, -9218868437227405313
  %i.k = or disjoint i64 %i.j, 4607182418800017408
  store i64 %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !9
  %i.n = add nsw i32 %i.i, %i.m
  store i32 %i.n, ptr %i.l, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @EpdMultiply(ptr nofree noundef captures(none) %0, double noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %or.cond10.i.i.not = icmp eq i64 %i.a, -2251799813685248
  %i.b = bitcast i64 %i.a to double               ; 2 uses
  br i1 %or.cond10.i.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = bitcast double %1 to i64                 ; 6 uses
  %or.cond10.i.not = icmp eq i64 %i.c, -2251799813685248
  br i1 %or.cond10.i.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 -2251799813685248, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !9
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.e = tail call double @llvm.fabs.f64(double %i.b)
  %or.cond6.i.i = fcmp une double %i.e, +inf
  %i.f = tail call double @llvm.fabs.f64(double %1)
  %or.cond6.i = fcmp une double %i.f, +inf
  %or.cond = and i1 %or.cond6.i, %or.cond6.i.i
  br i1 %or.cond, label %bb.e, label %EpdConvert.exit

EpdConvert.exit:                                  ; preds = %bb.d
  %i.g = xor i64 %i.a, %i.c
  %i.h = and i64 %i.g, -9223372036854775808
  %i.i = or disjoint i64 %i.h, 9218868437227405312
  store i64 %i.i, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !9
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = and i64 %i.c, 9221120237041090559
  %or.cond7.i.i.i22 = icmp ne i64 %i.k, 9218868437227405312
  %i.l = and i64 %i.c, -9221120237041090560
  %or.cond9.not.i.i.i23 = icmp eq i64 %i.l, 2251799813685248
  %or.cond.not.i.not.i.i24 = or i1 %or.cond7.i.i.i22, %or.cond9.not.i.i.i23
  br i1 %or.cond.not.i.not.i.i24, label %bb.f, label %EpdConvert.exit25

bb.f:                                             ; preds = %bb.e
  %i.m = lshr i64 %i.c, 52
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = and i32 %i.n, 2047                       ; 2 uses
  %i.p = icmp eq i32 %i.o, 1023
  br i1 %i.p, label %EpdConvert.exit25, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = add nsw i32 %i.o, -1023
  %i.r = and i64 %i.c, -9218868437227405313
  %i.s = or disjoint i64 %i.r, 4607182418800017408
  %i.t = bitcast i64 %i.s to double
  br label %EpdConvert.exit25

EpdConvert.exit25:                                ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.8.0 = phi i32 [ 0, %bb.f ], [ %i.q, %bb.g ], [ 0, %bb.e ]
  %.sroa.0.1 = phi double [ %1, %bb.f ], [ %i.t, %bb.g ], [ %1, %bb.e ]
  %i.u = fmul double %.sroa.0.1, %i.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !9
  %i.x = add nsw i32 %i.w, %.sroa.8.0
  store double %i.u, ptr %0, align 8, !tbaa !8
  store i32 %i.x, ptr %i.v, align 8, !tbaa !9
  tail call void @EpdNormalize(ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %EpdConvert.exit25, %EpdConvert.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @EpdIsNan(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !8
  %or.cond10.i = icmp eq i64 %i.a, -2251799813685248
  %.0.i = zext i1 %or.cond10.i to i32
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @EpdMakeNan(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0) local_unnamed_addr #9 {
bb.a:
  store i64 -2251799813685248, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @EpdIsInf(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !8   ; 2 uses
  %i.b = bitcast double %i.a to i64
  %i.c = tail call double @llvm.fabs.f64(double %i.a)
  %or.cond6.i = fcmp oeq double %i.c, +inf
  %i.d = icmp sgt i64 %i.b, -1
  %..i = select i1 %i.d, i32 1, i32 -1
  %.0.i = select i1 %or.cond6.i, i32 %..i, i32 0
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @EpdMakeInf(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = and i32 %1, 1
  %i.b = zext nneg i32 %i.a to i64
  %i.c = shl nuw i64 %i.b, 63
  %i.d = or disjoint i64 %i.c, 9218868437227405312
  store i64 %i.d, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @EpdMultiply2(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %or.cond10.i.i.not = icmp eq i64 %i.a, -2251799813685248
  %i.b = bitcast i64 %i.a to double               ; 2 uses
  br i1 %or.cond10.i.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8                ; 3 uses
  %or.cond10.i.i20.not = icmp eq i64 %i.c, -2251799813685248
  %i.d = bitcast i64 %i.c to double               ; 2 uses
  br i1 %or.cond10.i.i20.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 -2251799813685248, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !9
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = tail call double @llvm.fabs.f64(double %i.b)
  %or.cond6.i.i = fcmp une double %i.f, +inf
  %i.g = tail call double @llvm.fabs.f64(double %i.d)
  %or.cond6.i.i23 = fcmp une double %i.g, +inf
  %or.cond = and i1 %or.cond6.i.i, %or.cond6.i.i23
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = xor i64 %i.a, %i.c
  %i.i = and i64 %i.h, -9223372036854775808
  %i.j = or disjoint i64 %i.i, 9218868437227405312
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !9
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = fmul double %i.b, %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !9
  %i.q = add nsw i32 %i.p, %i.n
  store double %i.l, ptr %0, align 8, !tbaa !8
  store i32 %i.q, ptr %i.m, align 8, !tbaa !9
  tail call void @EpdNormalize(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @EpdMultiply2Decimal(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %or.cond10.i.i.not = icmp eq i64 %i.a, -2251799813685248
  %i.b = bitcast i64 %i.a to double               ; 2 uses
  br i1 %or.cond10.i.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8                ; 3 uses
  %or.cond10.i.i20.not = icmp eq i64 %i.c, -2251799813685248
  %i.d = bitcast i64 %i.c to double               ; 2 uses
  br i1 %or.cond10.i.i20.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 -2251799813685248, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !9
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = tail call double @llvm.fabs.f64(double %i.b)
  %or.cond6.i.i = fcmp une double %i.f, +inf
  %i.g = tail call double @llvm.fabs.f64(double %i.d)
  %or.cond6.i.i23 = fcmp une double %i.g, +inf
  %or.cond = and i1 %or.cond6.i.i, %or.cond6.i.i23
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = xor i64 %i.a, %i.c
  %i.i = and i64 %i.h, -9223372036854775808
  %i.j = or disjoint i64 %i.i, 9218868437227405312
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !9
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = fmul double %i.b, %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !9
  %i.q = add nsw i32 %i.p, %i.n
  store double %i.l, ptr %0, align 8, !tbaa !8
  store i32 %i.q, ptr %i.m, align 8, !tbaa !9
  tail call void @EpdNormalizeDecimal(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @EpdNormalizeDecimal(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load double, ptr %0, align 8, !tbaa !8   ; 2 uses
  %i.d = bitcast double %i.c to i64               ; 2 uses
  %i.e = and i64 %i.d, 9221120237041090559
  %or.cond7.i = icmp ne i64 %i.e, 9218868437227405312
  %i.f = and i64 %i.d, -9221120237041090560
  %or.cond9.not.i = icmp eq i64 %i.f, 2251799813685248
  %or.cond.not.i.not = or i1 %or.cond7.i, %or.cond9.not.i
  br i1 %or.cond.not.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.h = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %i.c) #19 ; 0 uses
  %strchr.i = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 69)
  %i.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %strchr.i, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.b) #19 ; 0 uses
  %i.j = load i32, ptr %i.b, align 4, !tbaa !13   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.k = sitofp i32 %i.j to double
  %i.l = call double @pow(double noundef 1.000000e+01, double noundef %i.k) #19
  %i.m = load double, ptr %0, align 8, !tbaa !8
  %i.n = fdiv double %i.m, %i.l
  store double %i.n, ptr %0, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !9
  %i.q = add nsw i32 %i.p, %i.j
  store i32 %i.q, ptr %i.o, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @EpdMultiply3(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %or.cond10.i.i.not = icmp eq i64 %i.a, -2251799813685248
  %i.b = bitcast i64 %i.a to double               ; 2 uses
  br i1 %or.cond10.i.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8                ; 3 uses
  %or.cond10.i.i18.not = icmp eq i64 %i.c, -2251799813685248
  %i.d = bitcast i64 %i.c to double               ; 2 uses
  br i1 %or.cond10.i.i18.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 -2251799813685248, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !9
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = tail call double @llvm.fabs.f64(double %i.b)
  %or.cond6.i.i = fcmp une double %i.f, +inf
  %i.g = tail call double @llvm.fabs.f64(double %i.d)
  %or.cond6.i.i21 = fcmp une double %i.g, +inf
  %or.cond = and i1 %or.cond6.i.i, %or.cond6.i.i21
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = xor i64 %i.a, %i.c
  %i.i = and i64 %i.h, -9223372036854775808
  %i.j = or disjoint i64 %i.i, 9218868437227405312
  store i64 %i.j, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !9
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = fmul double %i.b, %i.d
  store double %i.l, ptr %2, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !9
  %i.q = add nsw i32 %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !9
  tail call void @EpdNormalize(ptr noundef nonnull %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @EpdMultiply3Decimal(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %or.cond10.i.i.not = icmp eq i64 %i.a, -2251799813685248
  %i.b = bitcast i64 %i.a to double               ; 2 uses
  br i1 %or.cond10.i.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8                ; 3 uses
  %or.cond10.i.i18.not = icmp eq i64 %i.c, -2251799813685248
  %i.d = bitcast i64 %i.c to double               ; 2 uses
  br i1 %or.cond10.i.i18.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 -2251799813685248, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !9
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = tail call double @llvm.fabs.f64(double %i.b)
  %or.cond6.i.i = fcmp une double %i.f, +inf
  %i.g = tail call double @llvm.fabs.f64(double %i.d)
  %or.cond6.i.i21 = fcmp une double %i.g, +inf
  %or.cond = and i1 %or.cond6.i.i, %or.cond6.i.i21
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = xor i64 %i.a, %i.c
  %i.i = and i64 %i.h, -9223372036854775808
  %i.j = or disjoint i64 %i.i, 9218868437227405312
  store i64 %i.j, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !9
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = fmul double %i.b, %i.d
  store double %i.l, ptr %2, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !9
  %i.q = add nsw i32 %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !9
  tail call void @EpdNormalizeDecimal(ptr noundef nonnull %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @EpdDivide(ptr nofree noundef captures(none) %0, double noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %or.cond10.i.i.not = icmp eq i64 %i.a, -2251799813685248
  %i.b = bitcast i64 %i.a to double               ; 2 uses
  br i1 %or.cond10.i.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = bitcast double %1 to i64                 ; 9 uses
  %or.cond10.i.not = icmp eq i64 %i.c, -2251799813685248
  br i1 %or.cond10.i.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 -2251799813685248, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !9
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.e = tail call double @llvm.fabs.f64(double %i.b)
  %or.cond6.i.i = fcmp une double %i.e, +inf      ; 2 uses
  %i.f = tail call double @llvm.fabs.f64(double %1)
  %or.cond6.i = fcmp une double %i.f, +inf        ; 2 uses
  %or.cond = and i1 %or.cond6.i, %or.cond6.i.i
  br i1 %or.cond, label %bb.i, label %EpdConvert.exit

EpdConvert.exit:                                  ; preds = %bb.d
  %i.g = and i64 %i.c, 9221120237041090559
  %or.cond7.i.i.i = icmp eq i64 %i.g, 9218868437227405312
  %i.h = and i64 %i.c, -9221120237041090560
  %or.cond9.not.i.i.i = icmp ne i64 %i.h, 2251799813685248
  %or.cond.not.i.not.i.i.not50 = and i1 %or.cond7.i.i.i, %or.cond9.not.i.i.i
  %i.i = and i64 %i.c, 9218868437227405312
  %i.j = icmp eq i64 %i.i, 4607182418800017408
  %or.cond49 = or i1 %i.j, %or.cond.not.i.not.i.i.not50
  %i.k = and i64 %i.c, -9218868437227405313
  %i.l = or disjoint i64 %i.k, 4607182418800017408
  %i.m = bitcast i64 %i.l to double
  %.sroa.0.0 = select i1 %or.cond49, double %1, double %i.m ; 2 uses
  br i1 %or.cond6.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %EpdConvert.exit
  br i1 %or.cond6.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 -2251799813685248, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.n, align 8, !tbaa !9
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.o = bitcast double %.sroa.0.0 to i64
  %i.p = xor i64 %i.a, %i.o
  %i.q = and i64 %i.p, -9223372036854775808
  %i.r = or disjoint i64 %i.q, 9218868437227405312
  store i64 %i.r, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !9
  br label %bb.n

bb.h:                                             ; preds = %EpdConvert.exit
  %i.t = bitcast double %.sroa.0.0 to i64
  %i.u = xor i64 %i.a, %i.t
  %i.v = and i64 %i.u, -9223372036854775808
  store i64 %i.v, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !9
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.x = fcmp oeq double %1, 0.000000e+00
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 -2251799813685248, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.y, align 8, !tbaa !9
  br label %bb.n
end_hunk_0
begin_hunk_1_@EpdSubtract2:bb.a
  br i1 %i.r, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.s = sub nsw i32 %i.o, %i.q                   ; 2 uses
  %i.t = icmp slt i32 %i.s, 1024
  br i1 %i.t, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %ldexp51 = tail call double @ldexp(double 1.000000e+00, i32 %i.s)
  %i.u = fdiv double %i.d, %ldexp51
  %i.v = fsub double %i.b, %i.u
  br label %bb.r

bb.m:                                             ; preds = %bb.j
  %i.w = icmp slt i32 %i.o, %i.q
  br i1 %i.w, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.x = sub nsw i32 %i.q, %i.o                   ; 2 uses
  %i.y = icmp slt i32 %i.x, 1024
  br i1 %i.y, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %ldexp = tail call double @ldexp(double 1.000000e+00, i32 %i.x)
  %i.z = fdiv double %i.b, %ldexp
  %i.aa = fsub double %i.z, %i.d
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ab = fneg double %i.d
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.ac = fsub double %i.b, %i.d
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.l, %bb.k, %bb.q
  %.2 = phi double [ %i.ac, %bb.q ], [ %i.b, %bb.k ], [ %i.v, %bb.l ], [ %i.aa, %bb.o ], [ %i.ab, %bb.p ]
  %.0 = phi i32 [ %i.o, %bb.q ], [ %i.o, %bb.k ], [ %i.o, %bb.l ], [ %i.q, %bb.o ], [ %i.q, %bb.p ]
  store double %.2, ptr %0, align 8, !tbaa !8
  store i32 %.0, ptr %i.n, align 8, !tbaa !9
  tail call void @EpdNormalize(ptr noundef nonnull %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.h, %bb.g, %bb.i, %.thread, %bb.r, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @EpdSubtract3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %or.cond10.i.i.not = icmp eq i64 %i.a, -2251799813685248
  %i.b = bitcast i64 %i.a to double               ; 5 uses
  br i1 %or.cond10.i.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8                ; 4 uses
  %or.cond10.i.i60.not = icmp eq i64 %i.c, -2251799813685248
  %i.d = bitcast i64 %i.c to double               ; 5 uses
  br i1 %or.cond10.i.i60.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 -2251799813685248, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !9
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.f = tail call double @llvm.fabs.f64(double %i.b)
  %or.cond6.i.i = fcmp une double %i.f, +inf
  %i.g = tail call double @llvm.fabs.f64(double %i.d)
  %or.cond6.i.i63 = fcmp une double %i.g, +inf    ; 2 uses
  br i1 %or.cond6.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %or.cond6.i.i63, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.d
  br i1 %or.cond6.i.i63, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = xor i64 %i.c, %i.a
  %i.i = icmp sgt i64 %i.h, -1
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 %i.a, ptr %2, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.k, ptr %i.l, align 8, !tbaa !9
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  store i64 -2251799813685248, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.m, align 8, !tbaa !9
  br label %bb.t

bb.j:                                             ; preds = %bb.e
  %i.n = and i64 %i.c, -9223372036854775808
  %i.o = xor i64 %i.n, -4503599627370496
  store i64 %i.o, ptr %2, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.p, align 8, !tbaa !9
  br label %bb.t

bb.k:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !9    ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !9    ; 6 uses
  %i.u = icmp sgt i32 %i.r, %i.t
  br i1 %i.u, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.v = sub nsw i32 %i.r, %i.t                   ; 2 uses
  %i.w = icmp slt i32 %i.v, 1024
  br i1 %i.w, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %ldexp56 = tail call double @ldexp(double 1.000000e+00, i32 %i.v)
  %i.x = fdiv double %i.d, %ldexp56
  %i.y = fsub double %i.b, %i.x
  br label %bb.s

bb.n:                                             ; preds = %bb.k
  %i.z = icmp slt i32 %i.r, %i.t
  br i1 %i.z, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aa = sub nsw i32 %i.t, %i.r                  ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 1024
  br i1 %i.ab, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %ldexp = tail call double @ldexp(double 1.000000e+00, i32 %i.aa)
  %i.ac = fdiv double %i.b, %ldexp
  %i.ad = fsub double %i.ac, %i.d
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ae = fneg double %i.d
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.af = fsub double %i.b, %i.d
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.m, %bb.l, %bb.r
  %.2 = phi double [ %i.af, %bb.r ], [ %i.b, %bb.l ], [ %i.y, %bb.m ], [ %i.ad, %bb.p ], [ %i.ae, %bb.q ]
  %.0 = phi i32 [ %i.r, %bb.r ], [ %i.r, %bb.l ], [ %i.r, %bb.m ], [ %i.t, %bb.p ], [ %i.t, %bb.q ]
  store double %.2, ptr %2, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.0, ptr %i.ag, align 8, !tbaa !9
  tail call void @EpdNormalize(ptr noundef nonnull %2)
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.j, %bb.s, %bb.c
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: write, errnomem: write) uwtable
define void @EpdPow2(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #13 {
bb.a:
  %2 = alloca %struct.EpDoubleStruct, align 8     ; 5 uses
  %3 = alloca %struct.EpDoubleStruct, align 8     ; 5 uses
  %i.a = icmp slt i32 %0, 1024
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %ldexp = tail call double @ldexp(double 1.000000e+00, i32 %0) ; 2 uses
  store double %ldexp, ptr %1, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !9
  %.cast.i = bitcast double %ldexp to i64         ; 4 uses
  %i.c = and i64 %.cast.i, 9221120237041090559
  %or.cond7.i.i.i = icmp ne i64 %i.c, 9218868437227405312
  %i.d = and i64 %.cast.i, -9221120237041090560
  %or.cond9.not.i.i.i = icmp eq i64 %i.d, 2251799813685248
  %or.cond.not.i.not.i.i = or i1 %or.cond7.i.i.i, %or.cond9.not.i.i.i
  br i1 %or.cond.not.i.not.i.i, label %bb.c, label %EpdConvert.exit

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %.cast.i, 52
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 2047                       ; 2 uses
  %i.h = icmp eq i32 %i.g, 1023
  br i1 %i.h, label %EpdConvert.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.g, -1023
  %i.j = and i64 %.cast.i, -9218868437227405313
  %i.k = or disjoint i64 %i.j, 4607182418800017408
  store i64 %i.k, ptr %1, align 8
  store i32 %i.i, ptr %i.b, align 8, !tbaa !9
  br label %EpdConvert.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.l = lshr i32 %0, 1                           ; 2 uses
  %i.m = sub nuw nsw i32 %0, %i.l
  call void @EpdPow2(i32 noundef %i.l, ptr noundef nonnull %2)
  call void @EpdPow2(i32 noundef %i.m, ptr noundef nonnull %3)
  %i.n = load i64, ptr %2, align 8                ; 3 uses
  %or.cond10.i.i.not.i = icmp eq i64 %i.n, -2251799813685248
  %i.o = bitcast i64 %i.n to double               ; 2 uses
  br i1 %or.cond10.i.i.not.i, label %EpdMultiply3.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %3, align 8                ; 3 uses
  %or.cond10.i.i18.not.i = icmp eq i64 %i.p, -2251799813685248
  %i.q = bitcast i64 %i.p to double               ; 2 uses
  br i1 %or.cond10.i.i18.not.i, label %EpdMultiply3.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call double @llvm.fabs.f64(double %i.o)
  %or.cond6.i.i.i = fcmp une double %i.r, +inf
  %i.s = tail call double @llvm.fabs.f64(double %i.q)
  %or.cond6.i.i21.i = fcmp une double %i.s, +inf
  %or.cond.i = and i1 %or.cond6.i.i.i, %or.cond6.i.i21.i
  br i1 %or.cond.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = xor i64 %i.p, %i.n
  %i.u = and i64 %i.t, -9223372036854775808
  %i.v = or disjoint i64 %i.u, 9218868437227405312
  store i64 %i.v, ptr %1, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !9
  br label %EpdMultiply3.exit

bb.i:                                             ; preds = %bb.g
  %i.x = fmul double %i.o, %i.q                   ; 2 uses
  store double %i.x, ptr %1, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !9
  %i.ac = add nsw i32 %i.ab, %i.z                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !9
  %i.ae = bitcast double %i.x to i64              ; 4 uses
  %i.af = and i64 %i.ae, 9221120237041090559
  %or.cond7.i.i = icmp ne i64 %i.af, 9218868437227405312
  %i.ag = and i64 %i.ae, -9221120237041090560
  %or.cond9.not.i.i = icmp eq i64 %i.ag, 2251799813685248
  %or.cond.not.i.not.i = or i1 %or.cond7.i.i, %or.cond9.not.i.i
  br i1 %or.cond.not.i.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ad, align 8, !tbaa !9
  br label %EpdMultiply3.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = lshr i64 %i.ae, 52
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 2047                     ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 1023
  br i1 %i.ak, label %EpdMultiply3.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = and i64 %i.ae, -9218868437227405313
  %i.am = or disjoint i64 %i.al, 4607182418800017408
  store i64 %i.am, ptr %1, align 8
  %i.an = add i32 %i.ac, -1023
  %i.ao = add i32 %i.an, %i.aj
  store i32 %i.ao, ptr %i.ad, align 8, !tbaa !9
  br label %EpdMultiply3.exit

EpdMultiply3.exit:                                ; preds = %bb.e, %bb.f, %bb.l, %bb.k, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %EpdConvert.exit

EpdConvert.exit:                                  ; preds = %bb.d, %bb.c, %bb.b, %EpdMultiply3.exit
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @EpdPow2Decimal(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [24 x i8], align 16               ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.EpDoubleStruct, align 8     ; 5 uses
  %3 = alloca %struct.EpDoubleStruct, align 8     ; 5 uses
  %i.e = icmp slt i32 %0, 1024
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %ldexp = tail call double @ldexp(double 1.000000e+00, i32 %0) ; 3 uses
  store double %ldexp, ptr %1, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !9
  %i.g = bitcast double %ldexp to i64             ; 2 uses
  %i.h = and i64 %i.g, 9221120237041090559
  %or.cond7.i.i = icmp ne i64 %i.h, 9218868437227405312
  %i.i = and i64 %i.g, -9221120237041090560
  %or.cond9.not.i.i = icmp eq i64 %i.i, 2251799813685248
  %or.cond.not.i.not.i = or i1 %or.cond7.i.i, %or.cond9.not.i.i
  br i1 %or.cond.not.i.not.i, label %bb.c, label %EpdNormalizeDecimal.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.j = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %ldexp) #19 ; 0 uses
  %strchr.i.i = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 69)
  %i.k = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %strchr.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.d) #19 ; 0 uses
  %i.l = load i32, ptr %i.d, align 4, !tbaa !13   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.m = sitofp i32 %i.l to double
  %i.n = call double @pow(double noundef 1.000000e+01, double noundef %i.m) #19
  %i.o = load double, ptr %1, align 8, !tbaa !8
  %i.p = fdiv double %i.o, %i.n
  store double %i.p, ptr %1, align 8, !tbaa !8
  %i.q = load i32, ptr %i.f, align 8, !tbaa !9
  %i.r = add nsw i32 %i.q, %i.l
  store i32 %i.r, ptr %i.f, align 8, !tbaa !9
  br label %EpdNormalizeDecimal.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.s = lshr i32 %0, 1                           ; 2 uses
  %i.t = sub nuw nsw i32 %0, %i.s
  call void @EpdPow2Decimal(i32 noundef %i.s, ptr noundef nonnull %2)
  call void @EpdPow2Decimal(i32 noundef %i.t, ptr noundef nonnull %3)
  %i.u = load i64, ptr %2, align 8                ; 3 uses
  %or.cond10.i.i.not.i = icmp eq i64 %i.u, -2251799813685248
  %i.v = bitcast i64 %i.u to double               ; 2 uses
  br i1 %or.cond10.i.i.not.i, label %EpdMultiply3Decimal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %3, align 8                ; 3 uses
  %or.cond10.i.i18.not.i = icmp eq i64 %i.w, -2251799813685248
  %i.x = bitcast i64 %i.w to double               ; 2 uses
  br i1 %or.cond10.i.i18.not.i, label %EpdMultiply3Decimal.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = tail call double @llvm.fabs.f64(double %i.v)
  %or.cond6.i.i.i = fcmp une double %i.y, +inf
  %i.z = tail call double @llvm.fabs.f64(double %i.x)
  %or.cond6.i.i21.i = fcmp une double %i.z, +inf
  %or.cond.i = and i1 %or.cond6.i.i.i, %or.cond6.i.i21.i
  br i1 %or.cond.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = xor i64 %i.w, %i.u
  %i.ab = and i64 %i.aa, -9223372036854775808
  %i.ac = or disjoint i64 %i.ab, 9218868437227405312
  store i64 %i.ac, ptr %1, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.ad, align 8, !tbaa !9
  br label %EpdMultiply3Decimal.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = fmul double %i.v, %i.x                  ; 3 uses
  store double %i.ae, ptr %1, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !9
  %i.aj = add nsw i32 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !9
  %i.al = bitcast double %i.ae to i64             ; 2 uses
  %i.am = and i64 %i.al, 9221120237041090559
  %or.cond7.i.i10 = icmp ne i64 %i.am, 9218868437227405312
  %i.an = and i64 %i.al, -9221120237041090560
  %or.cond9.not.i.i11 = icmp eq i64 %i.an, 2251799813685248
  %or.cond.not.i.not.i12 = or i1 %or.cond7.i.i10, %or.cond9.not.i.i11
  br i1 %or.cond.not.i.not.i12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ak, align 8, !tbaa !9
  br label %EpdMultiply3Decimal.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.ao = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %i.ae) #19 ; 0 uses
  %strchr.i.i13 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 69)
  %i.ap = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %strchr.i.i13, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.b) #19 ; 0 uses
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !13  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ar = sitofp i32 %i.aq to double
  %i.as = call double @pow(double noundef 1.000000e+01, double noundef %i.ar) #19
  %i.at = load double, ptr %1, align 8, !tbaa !8
  %i.au = fdiv double %i.at, %i.as
  store double %i.au, ptr %1, align 8, !tbaa !8
  %i.av = load i32, ptr %i.ak, align 8, !tbaa !9
  %i.aw = add nsw i32 %i.av, %i.aq
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !9
  br label %EpdMultiply3Decimal.exit

EpdMultiply3Decimal.exit:                         ; preds = %bb.d, %bb.e, %bb.j, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %EpdNormalizeDecimal.exit

EpdNormalizeDecimal.exit:                         ; preds = %bb.b, %bb.c, %EpdMultiply3Decimal.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @IsNanOrInfDouble(double noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 2 uses
  %i.b = and i64 %i.a, 9221120237041090559
  %or.cond7 = icmp eq i64 %i.b, 9218868437227405312
  %i.c = and i64 %i.a, -9221120237041090560
  %or.cond9.not = icmp ne i64 %i.c, 2251799813685248
  %or.cond.not = and i1 %or.cond7, %or.cond9.not
  %.0 = zext i1 %or.cond.not to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2048) i32 @EpdGetExponent(double noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = bitcast double %0 to i64
  %i.b = lshr i64 %i.a, 52
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = and i32 %i.c, 2047
  ret i32 %i.d
}

; Function Attrs: nofree nounwind uwtable
define i32 @EpdGetExponentDecimal(double noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %0) #19 ; 0 uses
  %strchr = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 69)
  %i.d = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %strchr, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.b) #19 ; 0 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @EpdIsNanOrInf(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.b = and i64 %i.a, 9221120237041090559
  %or.cond7.i = icmp eq i64 %i.b, 9218868437227405312
  %i.c = and i64 %i.a, -9221120237041090560
  %or.cond9.not.i = icmp ne i64 %i.c, 2251799813685248
  %or.cond.not.i = and i1 %or.cond7.i, %or.cond9.not.i
  %.0.i = zext i1 %or.cond.not.i to i32
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @EpdIsZero(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !8
  %i.b = fcmp oeq double %i.a, 0.000000e+00
  %. = zext i1 %i.b to i32
  ret i32 %.
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double, i32) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !5, i64 8}
!10 = !{!"EpDoubleStruct", !6, i64 0, !5, i64 8}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!5, !5, i64 0}
end_hunk_1
