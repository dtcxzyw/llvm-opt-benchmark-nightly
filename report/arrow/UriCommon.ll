Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/UriCommon?download=true
inline.NumInlined: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@uriSafeToPointToA = local_unnamed_addr constant ptr @.str, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@uriConstPwdA = local_unnamed_addr constant ptr @.str.1, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@uriConstParentA = local_unnamed_addr constant ptr @.str.2, align 8
@.str.3 = private unnamed_addr constant [2 x i32] [i32 88, i32 0], align 4
@uriSafeToPointToW = local_unnamed_addr constant ptr @.str.3, align 8
@.str.4 = private unnamed_addr constant [2 x i32] [i32 46, i32 0], align 4
@uriConstPwdW = local_unnamed_addr constant ptr @.str.4, align 8
@.str.5 = private unnamed_addr constant [3 x i32] [i32 46, i32 46, i32 0], align 4
@uriConstParentW = local_unnamed_addr constant ptr @.str.5, align 8
@switch.table.uriHexdigToIntW = private unnamed_addr constant [55 x i8] c"\00\01\02\03\04\05\06\07\08\09\00\00\00\00\00\00\00\0A\0B\0C\0D\0E\0F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\0B\0C\0D\0E\0F", align 1
@switch.table.uriHexToLetterW = private unnamed_addr constant [15 x i8] c"0123456789ABCDE", align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @uriResetUriA(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 0, i64 160, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 2) i32 @uriCompareRangeA(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %not. = xor i1 %i.a, true
  %i.c = zext i1 %not. to i32
  %not.30 = xor i1 %i.b, true
  %.neg31 = sext i1 %not.30 to i32
  %i.d = add nsw i32 %.neg31, %i.c
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !55     ; 4 uses
  %2 = icmp eq ptr %i.e, null
  %.pre = load ptr, ptr %1, align 8, !tbaa !55    ; 4 uses
  %3 = icmp eq ptr %.pre, null
  %or.cond37 = select i1 %2, i1 true, i1 %3
  br i1 %or.cond37, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %4 = icmp ne ptr %i.e, null
  %i.f = zext i1 %4 to i32
  %i.g = icmp ne ptr %.pre, null
  %.neg29 = sext i1 %i.g to i32
  %i.h = add nsw i32 %.neg29, %i.f
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %.pre to i64
  %.neg = sub i64 %i.r, %i.q
  %.neg28 = trunc i64 %.neg to i32
  %i.s = add i32 %.neg28, %i.n                    ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp slt i32 %i.s, 0
  br i1 %i.u, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call i32 @strncmp(ptr noundef nonnull %i.e, ptr noundef nonnull %.pre, i64 noundef %i.m) #10 ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not = icmp ne i32 %i.v, 0
  %. = sext i1 %.not to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.h, %bb.d ], [ 1, %bb.g ], [ 1, %bb.e ], [ -1, %bb.f ], [ %., %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uriRemoveDotSegmentsA(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.c = load i32, ptr %i.b, align 4, !tbaa !15
  %i.d = tail call i32 @uriRemoveDotSegmentsExA(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.c, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uriRemoveDotSegmentsExA(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !59
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %.not242 = icmp eq i32 %2, 0                    ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 19 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread297, %bb.c
  %.0190 = phi ptr [ %i.c, %bb.c ], [ %.6, %.thread297 ] ; 25 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0190, i64 8 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 6 uses
  %i.k = load ptr, ptr %.0190, align 8, !tbaa !19 ; 14 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  switch i32 %i.o, label %.thread301 [
    i32 1, label %bb.e
    i32 2, label %bb.x
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.k, align 1, !tbaa !20
  %i.q = icmp eq i8 %i.p, 46
  br i1 %i.q, label %bb.f, label %.thread301

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.0190, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0190, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21   ; 8 uses
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.w = icmp ne ptr %.0190, %i.v
  %.not246 = icmp eq ptr %i.u, null
  %or.cond = select i1 %i.w, i1 true, i1 %.not246
  br i1 %or.cond, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !19   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18   ; 2 uses
  %i.aa = icmp ult ptr %i.x, %i.z
  br i1 %i.aa, label %.lr.ph, label %.thread261

bb.i:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.0336, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.ab, %i.z
  br i1 %exitcond.not, label %.thread261, label %.lr.ph, !llvm.loop !57

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.0336 = phi ptr [ %i.ab, %bb.i ], [ %i.x, %bb.h ] ; 2 uses
  %i.ac = load i8, ptr %.0336, align 1, !tbaa !20
  %i.ad = icmp eq i8 %i.ac, 58
  br i1 %i.ad, label %.thread301, label %bb.i

bb.j:                                             ; preds = %bb.g, %bb.f
  %.not248 = icmp eq ptr %i.u, null
  br i1 %.not248, label %bb.p, label %.thread261

.thread261:                                       ; preds = %bb.i, %bb.h, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.s, ptr %i.ae, align 8, !tbaa !59
  %i.af = icmp eq ptr %i.s, null
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread261
  store ptr %i.u, ptr %i.b, align 8, !tbaa !16
  br label %bb.m

bb.l:                                             ; preds = %.thread261
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.u, ptr %i.ag, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not253 = icmp eq ptr %i.k, %i.j
  %or.cond314 = or i1 %.not242, %.not253
  br i1 %or.cond314, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !24
  tail call void %i.ah(ptr noundef %3, ptr noundef nonnull %i.k) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !24
  tail call void %i.ai(ptr noundef %3, ptr noundef nonnull %.0190) #11
  br label %.thread297

bb.p:                                             ; preds = %bb.j
  %.not250 = icmp eq ptr %i.k, %i.j
  %or.cond315 = or i1 %.not242, %.not250
  br i1 %or.cond315, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !24
  tail call void %i.aj(ptr noundef %3, ptr noundef nonnull %i.k) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ak = icmp eq ptr %i.s, null
  br i1 %i.ak, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !25
  %.not5.i = icmp eq ptr %i.am, null
  br i1 %.not5.i, label %bb.t, label %uriIsHostSetA.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26
  %.not6.i = icmp eq ptr %i.ao, null
  br i1 %.not6.i, label %bb.u, label %uriIsHostSetA.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !27
  %.not7.i = icmp eq ptr %i.aq, null
  br i1 %.not7.i, label %uriIsHostSetA.exit, label %uriIsHostSetA.exit.thread

end_hunk_0
begin_hunk_1_@uriCopyAuthorityA:bb.a
bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %.not32 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %.not32, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.p, align 8, !tbaa !26
  %i.q = load ptr, ptr %2, align 8, !tbaa !32
  %i.r = tail call ptr %i.q(ptr noundef nonnull %2, i64 noundef 16) #11 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.r, ptr %i.s, align 8, !tbaa !27
  %i.t = icmp eq ptr %i.r, null
  br i1 %i.t, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.r, ptr noundef nonnull align 1 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !35
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !33
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !33
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.b, %bb.h
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.h ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uriFixAmbiguityA(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 6 uses
  %.not26 = icmp eq ptr %i.d, null                ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not26, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.h, label %.thread

bb.d:                                             ; preds = %bb.a
  br i1 %.not26, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 3 uses
  %.not27 = icmp eq ptr %i.j, null
  br i1 %.not27, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.s = load ptr, ptr %1, align 8, !tbaa !32
  %i.t = tail call ptr %i.s(ptr noundef nonnull %1, i64 noundef 32) #11 ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !21
  store ptr @.str.1, ptr %i.t, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.1, i64 1), ptr %i.y, align 8, !tbaa !18
  store ptr %i.t, ptr %i.v, align 8, !tbaa !16
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.h, %bb.d, %bb.e, %bb.f, %bb.g, %bb.i
  %.0 = phi i32 [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @uriFixEmptyTrailSegmentA(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %uriIsHostSetA.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %.not5.i = icmp eq ptr %i.d, null
  br i1 %.not5.i, label %bb.c, label %uriIsHostSetA.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %.not6.i = icmp eq ptr %i.f, null
  br i1 %.not6.i, label %bb.d, label %uriIsHostSetA.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %.not7.i = icmp eq ptr %i.h, null
  br i1 %.not7.i, label %uriIsHostSetA.exit, label %uriIsHostSetA.exit.thread

uriIsHostSetA.exit:                               ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %.not14 = icmp eq ptr %i.j, null
  br i1 %.not14, label %bb.e, label %uriIsHostSetA.exit.thread

bb.e:                                             ; preds = %uriIsHostSetA.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16   ; 5 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %uriIsHostSetA.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %uriIsHostSetA.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.h, label %uriIsHostSetA.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24
  tail call void %i.u(ptr noundef %1, ptr noundef nonnull %i.l) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %uriIsHostSetA.exit.thread

uriIsHostSetA.exit.thread:                        ; preds = %bb.b, %bb.c, %bb.d, %bb.h, %bb.g, %bb.f, %bb.e, %uriIsHostSetA.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @uriResetUriW(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 0, i64 160, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define range(i32 -1, 2) i32 @uriCompareRangeW(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %not. = xor i1 %i.a, true
  %i.c = zext i1 %not. to i32
  %not.28 = xor i1 %i.b, true
  %.neg29 = sext i1 %not.28 to i32
  %i.d = add nsw i32 %.neg29, %i.c
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !61     ; 4 uses
  %2 = icmp eq ptr %i.e, null
  %.pre = load ptr, ptr %1, align 8, !tbaa !61    ; 4 uses
  %3 = icmp eq ptr %.pre, null
  %or.cond35 = select i1 %2, i1 true, i1 %3
  br i1 %or.cond35, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %4 = icmp ne ptr %i.e, null
  %i.f = zext i1 %4 to i32
  %i.g = icmp ne ptr %.pre, null
  %.neg = sext i1 %i.g to i32
  %i.h = add nsw i32 %.neg, %i.f
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %.pre to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 2
  %i.v = trunc i64 %i.u to i32
  %i.w = sub nsw i32 %i.o, %i.v                   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = icmp slt i32 %i.w, 0
  br i1 %i.y, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = tail call i32 @wcsncmp(ptr noundef nonnull %i.e, ptr noundef nonnull %.pre, i64 noundef %i.n) #10 ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not = icmp ne i32 %i.z, 0
  %. = sext i1 %.not to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.h, %bb.d ], [ 1, %bb.g ], [ 1, %bb.e ], [ -1, %bb.f ], [ %., %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcsncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uriRemoveDotSegmentsW(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.c = load i32, ptr %i.b, align 4, !tbaa !41
  %i.d = tail call i32 @uriRemoveDotSegmentsExW(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.c, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uriRemoveDotSegmentsExW(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !65
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %.not242 = icmp eq i32 %2, 0                    ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 19 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread297, %bb.c
  %.0190 = phi ptr [ %i.c, %bb.c ], [ %.6, %.thread297 ] ; 25 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0190, i64 8 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44   ; 6 uses
  %i.k = load ptr, ptr %.0190, align 8, !tbaa !45 ; 14 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 2
  %i.p = trunc i64 %i.o to i32
  switch i32 %i.p, label %.thread301 [
    i32 1, label %bb.e
    i32 2, label %bb.x
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.k, align 4, !tbaa !6
  %i.r = icmp eq i32 %i.q, 46
  br i1 %i.r, label %bb.f, label %.thread301

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.0190, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0190, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46   ; 8 uses
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.x = icmp ne ptr %.0190, %i.w
  %.not246 = icmp eq ptr %i.v, null
  %or.cond = select i1 %i.x, i1 true, i1 %.not246
  br i1 %or.cond, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !45   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !44  ; 2 uses
  %i.ab = icmp ult ptr %i.y, %i.aa
  br i1 %i.ab, label %.lr.ph, label %.thread261

bb.i:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.0336, i64 4 ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.aa
  br i1 %i.ad, label %.lr.ph, label %.thread261, !llvm.loop !63

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.0336 = phi ptr [ %i.ac, %bb.i ], [ %i.y, %bb.h ] ; 2 uses
  %i.ae = load i32, ptr %.0336, align 4, !tbaa !6
  %i.af = icmp eq i32 %i.ae, 58
  br i1 %i.af, label %.thread301, label %bb.i

bb.j:                                             ; preds = %bb.g, %bb.f
  %.not248 = icmp eq ptr %i.v, null
  br i1 %.not248, label %bb.p, label %.thread261

.thread261:                                       ; preds = %bb.i, %bb.h, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.t, ptr %i.ag, align 8, !tbaa !65
  %i.ah = icmp eq ptr %i.t, null
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread261
  store ptr %i.v, ptr %i.b, align 8, !tbaa !42
  br label %bb.m

bb.l:                                             ; preds = %.thread261
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.v, ptr %i.ai, align 8, !tbaa !46
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not253 = icmp eq ptr %i.k, %i.j
  %or.cond314 = or i1 %.not242, %.not253
  br i1 %or.cond314, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !24
  tail call void %i.aj(ptr noundef %3, ptr noundef nonnull %i.k) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !24
  tail call void %i.ak(ptr noundef %3, ptr noundef nonnull %.0190) #11
  br label %.thread297

bb.p:                                             ; preds = %bb.j
  %.not250 = icmp eq ptr %i.k, %i.j
  %or.cond315 = or i1 %.not242, %.not250
  br i1 %or.cond315, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !24
  tail call void %i.al(ptr noundef %3, ptr noundef nonnull %i.k) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.am = icmp eq ptr %i.t, null
  br i1 %i.am, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47
  %.not5.i = icmp eq ptr %i.ao, null
  br i1 %.not5.i, label %bb.t, label %uriIsHostSetW.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48
  %.not6.i = icmp eq ptr %i.aq, null
  br i1 %.not6.i, label %bb.u, label %uriIsHostSetW.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !49
end_hunk_1
