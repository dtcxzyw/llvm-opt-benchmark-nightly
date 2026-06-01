inline.NumInlined: 68
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UAmbiguousConverter = type { ptr, i16 }
%struct.UConverterToUnicodeArgs = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UConverterFromUnicodeArgs = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UConverter = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, [7 x i8], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], [32 x i8], [2 x i16], [2 x i16], [32 x i16], i32, [19 x i16], [31 x i8], i8, i8, i8, i32 }

@.str = private unnamed_addr constant [4 x i8] c"IBM\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"UTF-32LE\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"UTF-32BE\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"SCSU\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"BOCU-1\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"UTF-7\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"UTF-EBCDIC\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ibm-\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZL19ambiguousConverters = internal constant [11 x %struct.UAmbiguousConverter] [%struct.UAmbiguousConverter { ptr @.str.12, i16 165 }, %struct.UAmbiguousConverter { ptr @.str.13, i16 165 }, %struct.UAmbiguousConverter { ptr @.str.14, i16 165 }, %struct.UAmbiguousConverter { ptr @.str.15, i16 165 }, %struct.UAmbiguousConverter { ptr @.str.16, i16 165 }, %struct.UAmbiguousConverter { ptr @.str.17, i16 165 }, %struct.UAmbiguousConverter { ptr @.str.18, i16 8361 }, %struct.UAmbiguousConverter { ptr @.str.19, i16 8361 }, %struct.UAmbiguousConverter { ptr @.str.20, i16 8361 }, %struct.UAmbiguousConverter { ptr @.str.21, i16 8361 }, %struct.UAmbiguousConverter { ptr @.str.22, i16 8361 }], align 16
@.str.12 = private unnamed_addr constant [18 x i8] c"ibm-897_P100-1995\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"ibm-942_P120-1999\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"ibm-943_P130-1999\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"ibm-946_P100-1995\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"ibm-33722_P120-1999\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"ibm-1041_P100-1995\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"ibm-944_P100-1995\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"ibm-949_P110-1999\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"ibm-1363_P110-1997\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"ISO_2022,locale=ko,version=0\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"ibm-1088_P100-1995\00", align 1
@switch.table.ucnv_isFixedWidth_78 = private unnamed_addr constant [31 x i8] c"\01\01\00\00\00\00\00\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @ucnv_open_78(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @ucnv_createConverter_78(ptr noundef null, ptr noundef %0, ptr noundef nonnull %1) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @ucnv_createConverter_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @ucnv_openPackage_78(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ucnv_createConverterFromPackage_78(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %i.a
}

declare ptr @ucnv_createConverterFromPackage_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @ucnv_openU_78(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [60 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %ucnv_open_78.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %ucnv_open_78.exit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @ucnv_createConverter_78(ptr noundef null, ptr noundef null, ptr noundef nonnull %1) #14
  br label %ucnv_open_78.exit

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i32 @u_strlen_78(ptr noundef nonnull %0) #14
  %i.h = icmp sgt i32 %i.g, 59
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %1, align 4
  br label %ucnv_open_78.exit

bb.g:                                             ; preds = %bb.e
  %i.i = call ptr @u_austrcpy_78(ptr noundef nonnull %i.a, ptr noundef nonnull %0) #14
  %i.j = load i32, ptr %1, align 4
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %ucnv_open_78.exit

bb.h:                                             ; preds = %bb.g
  %i.l = call ptr @ucnv_createConverter_78(ptr noundef null, ptr noundef %i.i, ptr noundef nonnull %1) #14
  br label %ucnv_open_78.exit

ucnv_open_78.exit:                                ; preds = %bb.h, %bb.g, %bb.d, %bb.a, %bb.b, %bb.f
  %.0 = phi ptr [ null, %bb.g ], [ null, %bb.a ], [ null, %bb.f ], [ null, %bb.b ], [ %i.f, %bb.d ], [ %i.l, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.0
}

declare i32 @u_strlen_78(ptr noundef) local_unnamed_addr #2

declare ptr @u_austrcpy_78(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @ucnv_openCCSID_78(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [60 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = icmp eq ptr %2, null
  %.0.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %cond.i = icmp eq i32 %1, 0
  br i1 %cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.10, i64 5, i1 false) #14
  br label %_ZL23ucnv_copyPlatformStringPc18UConverterPlatform.exit

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 16
  br label %_ZL23ucnv_copyPlatformStringPc18UConverterPlatform.exit

_ZL23ucnv_copyPlatformStringPc18UConverterPlatform.exit: ; preds = %bb.d, %bb.e
  %.0.i.sroa.phi = phi ptr [ %.0.i.sroa.gep, %bb.d ], [ %i.a, %bb.e ]
  %i.e = call i32 @T_CString_integerToString_78(ptr noundef nonnull %.0.i.sroa.phi, i32 noundef %0, i32 noundef 10) #14 ; 0 uses
  %i.f = call ptr @ucnv_createConverter_78(ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %2) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %_ZL23ucnv_copyPlatformStringPc18UConverterPlatform.exit
  %.0 = phi ptr [ %i.f, %_ZL23ucnv_copyPlatformStringPc18UConverterPlatform.exit ], [ null, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.0
}

declare i32 @T_CString_integerToString_78(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @ucnv_safeClone_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %4 = alloca %struct.UConverterToUnicodeArgs, align 8 ; 7 uses
  %5 = alloca %struct.UConverterFromUnicodeArgs, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store i16 56, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 1, ptr %i.d, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  store i16 56, ptr %5, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 1, ptr %i.e, align 2
  %i.f = icmp eq ptr %3, null
  br i1 %i.f, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 4
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.ai

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %0, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %3, align 4
  br label %bb.ai

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not80 = icmp eq ptr %i.o, null
  br i1 %.not80, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.b, align 4
  %i.p = call noundef ptr %i.o(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %3) #14 ; 0 uses
  %i.q = load i32, ptr %3, align 4
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.ai

bb.g:                                             ; preds = %bb.e
  store i32 288, ptr %i.b, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.s = icmp eq ptr %2, null
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.a, align 4
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.t = load i32, ptr %2, align 4                ; 3 uses
  store i32 %i.t, ptr %i.a, align 4
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %bb.k, label %bb.l

end_hunk_0
begin_hunk_1_@ucnv_detectUnicodeSignature_78:bb.a
  %or.cond57 = select i1 %or.cond53, i1 %i.ai, i1 false
  br i1 %or.cond57, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.aj = icmp eq i8 %.3..3., 56
  %.4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.4..4. = load i8, ptr %.4..4..sroa_idx, align 1
  %i.ak = icmp eq i8 %.4..4., 45
  %or.cond61 = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond61, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  br i1 %i.g, label %.cont143, label %.else124

.else124:                                         ; preds = %bb.w
  store i32 5, ptr %2, align 4
  br label %.cont143

bb.x:                                             ; preds = %bb.v
  switch i8 %.3..3., label %bb.ab [
    i8 57, label %bb.y
    i8 56, label %bb.y
    i8 47, label %bb.y
    i8 43, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.x
  br i1 %i.g, label %.cont143, label %.else121

.else121:                                         ; preds = %bb.y
  store i32 4, ptr %2, align 4
  br label %.cont143

bb.z:                                             ; preds = %bb.u
  %i.al = icmp eq i8 %.0.161165175, -35
  %i.am = icmp eq i8 %.1.160166174, 115
  %or.cond77 = select i1 %i.al, i1 %i.am, i1 false
  %i.an = icmp eq i8 %.2.176, 102
  %or.cond81 = select i1 %or.cond77, i1 %i.an, i1 false
  %i.ao = icmp eq i8 %.3..3., 115
  %or.cond85 = select i1 %or.cond81, i1 %i.ao, i1 false
  br i1 %or.cond85, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br i1 %i.g, label %.cont143, label %.else

.else:                                            ; preds = %bb.aa
  store i32 4, ptr %2, align 4
  br label %.cont143

bb.ab:                                            ; preds = %bb.x, %bb.z
  br i1 %i.g, label %.cont143, label %.else118

.else118:                                         ; preds = %bb.ab
  store i32 0, ptr %2, align 4
  br label %.cont143

.cont143:                                         ; preds = %.else118, %bb.ab, %.else, %bb.aa, %.else121, %bb.y, %.else124, %bb.w, %.else127, %bb.t, %.else130, %bb.r, %.else133, %bb.p, %.else136, %bb.n, %.else139, %bb.l, %.else142, %bb.k, %.else145, %bb.h, %bb.a, %bb.b, %bb.d
  %.0111 = phi ptr [ @.str.8, %.else121 ], [ null, %bb.d ], [ null, %bb.a ], [ @.str.1, %.else145 ], [ @.str.2, %.else142 ], [ @.str.3, %.else139 ], [ @.str.4, %.else136 ], [ @.str.5, %.else133 ], [ @.str.6, %.else130 ], [ @.str.7, %.else127 ], [ @.str.8, %.else124 ], [ @.str.9, %.else ], [ null, %bb.b ], [ @.str.1, %bb.h ], [ @.str.2, %bb.k ], [ @.str.3, %bb.l ], [ @.str.4, %bb.n ], [ @.str.5, %bb.p ], [ @.str.6, %bb.r ], [ @.str.7, %bb.t ], [ @.str.8, %bb.w ], [ @.str.8, %bb.y ], [ @.str.9, %bb.aa ], [ null, %bb.ab ], [ null, %.else118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.0111
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -127, 130) i32 @ucnv_fromUCountPending_78(ptr noundef readonly captures(address_is_null) %0, ptr noundef captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %1, align 4
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = icmp samesign ult i32 %i.f, 65536
  %i.i = select i1 %i.h, i32 1, i32 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 281
  %i.k = load i8, ptr %i.j, align 1
  %i.l = sext i8 %i.k to i32
  %i.m = add nsw i32 %i.i, %i.l
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 281
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = icmp slt i8 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = sext i8 %i.o to i32
  %i.r = sub nsw i32 0, %i.q
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.t = load i32, ptr %i.s, align 4
  %i.u = icmp sgt i32 %i.t, 0
  %. = zext i1 %i.u to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a, %bb.b, %bb.h, %bb.f, %bb.d
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.d ], [ %i.m, %bb.f ], [ %i.r, %bb.h ], [ %., %bb.i ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 129) i32 @ucnv_toUCountPending_78(ptr noundef readonly captures(address_is_null) %0, ptr noundef captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %1, align 4
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 282
  %i.f = load i8, ptr %i.e, align 2               ; 3 uses
  %i.g = sext i8 %i.f to i32                      ; 2 uses
  %i.h = icmp sgt i8 %i.f, 0
  br i1 %i.h, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp slt i8 %i.f, 0
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = sub nsw i32 0, %i.g
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i8, ptr %i.k, align 8
  %narrow = tail call i8 @llvm.smax.i8(i8 %i.l, i8 0)
  %spec.select = zext nneg i8 %narrow to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.a, %bb.b, %bb.g, %bb.d
  %.0 = phi i32 [ %i.g, %bb.e ], [ -1, %bb.d ], [ -1, %bb.a ], [ %i.j, %bb.g ], [ %spec.select, %bb.h ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local signext range(i8 0, 2) i8 @ucnv_isFixedWidth_78(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %1, align 4
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 69
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @ucnv_MBCSGetType_78(ptr noundef nonnull %0) #14
  br label %ucnv_getType_78.exit

bb.f:                                             ; preds = %bb.d
  %i.l = sext i8 %i.i to i32
  br label %ucnv_getType_78.exit

ucnv_getType_78.exit:                             ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.k, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %2 = icmp ult i32 %.0.i, 31
  br i1 %2, label %bb.g, label %bb.h

bb.g:                                             ; preds = %ucnv_getType_78.exit
  %3 = zext nneg i32 %.0.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ucnv_isFixedWidth_78, i64 %3
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.h

bb.h:                                             ; preds = %ucnv_getType_78.exit, %bb.g, %bb.a, %bb.c
  %.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.c ], [ %switch.load, %bb.g ], [ 0, %ucnv_getType_78.exit ]
  ret i8 %.0
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare ptr @ucnv_createAlgorithmicConverter_78(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{ptr @ucnv_resetFromUnicode_78, ptr @_ZL6_resetP10UConverter21UConverterResetChoicea}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{ptr @_ZL6_resetP10UConverter21UConverterResetChoicea}
!9 = !{ptr @ucnv_getName_78}
!10 = distinct !{null}
!11 = distinct !{!11, !7, !12, !13}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"branch_weights", i32 4, i32 28}
!15 = distinct !{!15, !7, !12, !13}
!16 = distinct !{!16, !7, !13, !12}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7, !12, !13}
!19 = distinct !{!19, !7, !13, !12}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7, !12, !13}
!23 = !{!"branch_weights", i32 4, i32 12}
!24 = distinct !{!24, !7, !12, !13}
!25 = distinct !{!25, !7, !13, !12}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7, !12, !13}
!28 = distinct !{!28, !7, !13, !12}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = !{ptr @ucnv_resetToUnicode_78, ptr @_ZL6_resetP10UConverter21UConverterResetChoicea}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7, !12, !13}
!36 = distinct !{!36, !7, !12, !13}
!37 = distinct !{!37, !7, !13, !12}
end_hunk_1
