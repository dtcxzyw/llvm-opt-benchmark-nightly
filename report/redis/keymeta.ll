inline.NumInlined: 16
inline.NumDeleted: 5
begin_hunk_0_@rdbSaveKeyMetadata:bb.a
bb.s:                                             ; preds = %bb.r
  %i.az = sext i32 %.7 to i64
  %i.ba = call i32 @rdbSaveLen(ptr noundef %0, i64 noundef %i.az) #16
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %.thread68, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !13  ; 2 uses
  %i.bd = call fastcc i64 @sdslen(ptr noundef %i.bc)
  %i.be = call i64 @rdbWriteRaw(ptr noundef %0, ptr noundef %i.bc, i64 noundef %i.bd) #16
  %i.bf = icmp eq i64 %i.be, -1
  br i1 %i.bf, label %.thread68, label %bb.u

.thread68.sink.split:                             ; preds = %bb.h, %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.thread68

.thread68:                                        ; preds = %.thread68.sink.split, %bb.r, %bb.s, %bb.t
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q, %.thread68
  %.0 = phi i32 [ 0, %bb.q ], [ -1, %.thread68 ], [ 0, %bb.t ]
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !13
  call void @sdsfree(ptr noundef %i.bg) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  %.1 = phi i32 [ %.0, %bb.u ], [ 0, %bb.a ]
  ret i32 %.1
}

declare void @rioInitWithBuffer(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @sdsempty() local_unnamed_addr #6

declare i64 @rdbWriteRaw(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @sdslen(ptr nofree noundef readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val = load i8, ptr %i.a, align 1, !tbaa !13   ; 2 uses
  %i.b = and i8 %.val, 7
  switch i8 %i.b, label %bb.g [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = zext i8 %i.f to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !108
  %i.j = zext i16 %i.i to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  ret i64 %.0
}

declare i32 @rdbSaveLen(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @sdssubstr(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @sdsfree(ptr noundef) local_unnamed_addr #6

declare i32 @rdbSaveType(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @keyMetaOnAof(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.RedisModuleIO, align 8      ; 11 uses
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %sum.shift = lshr i64 %i.a, 33
  %i.b = trunc nuw nsw i64 %sum.shift to i32
  %i.c = and i32 %i.b, 127                        ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.critedge, label %.preheader, !prof !27

.preheader:                                       ; preds = %bb.a
  %i.e = and i64 %i.a, 4294967296
  %.not = icmp eq i64 %i.e, 0
  %spec.select.v = select i1 %.not, i64 -8, i64 -16
  %spec.select = getelementptr inbounds i8, ptr %2, i64 %spec.select.v
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.k
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.130 = phi ptr [ %spec.select, %.preheader ], [ %.332, %bb.k ] ; 3 uses
  %.028 = phi i32 [ %i.c, %.preheader ], [ %i.ab, %bb.k ] ; 2 uses
  %i.m = and i32 %.028, 1
  %.not37 = icmp eq i32 %i.m, 0
  br i1 %.not37, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.p = load i32, ptr %i.o, align 8, !tbaa !14
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.e, label %bb.d, !prof !27

bb.d:                                             ; preds = %bb.c
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 663) #16
  call void @abort() #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %.130, align 8, !tbaa !22  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !34
  %.not38 = icmp eq i64 %i.r, %i.t
  br i1 %.not38, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !109  ; 2 uses
  %.not39 = icmp eq ptr %i.v, null
  br i1 %.not39, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %0, ptr %i.f, align 8, !tbaa !92
  store ptr %i.w, ptr %i.g, align 8, !tbaa !96
  store i64 0, ptr %4, align 8, !tbaa !97
  store i32 0, ptr %i.h, align 8, !tbaa !98
  store ptr %1, ptr %i.i, align 8, !tbaa !99
  store i32 %3, ptr %i.j, align 8, !tbaa !100
  store ptr null, ptr %i.k, align 8, !tbaa !101
  store ptr null, ptr %i.l, align 8, !tbaa !102
  call void %i.v(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef %i.r) #16
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !101  ; 2 uses
  %.not40 = icmp eq ptr %i.x, null
  br i1 %.not40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @moduleFreeContext(ptr noundef nonnull %i.x) #16
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !101
  call void @zfree(ptr noundef %i.y) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = load i32, ptr %i.h, align 8, !tbaa !98
  %.not41 = icmp eq i32 %i.z, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br i1 %.not41, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.e
  %i.aa = getelementptr inbounds i8, ptr %.130, i64 -8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.332 = phi ptr [ %i.aa, %bb.j ], [ %.130, %bb.b ]
  %i.ab = lshr i32 %.028, 1                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not42 = icmp eq i32 %i.ab, 0
  br i1 %.not42, label %.critedge, label %bb.b, !llvm.loop !110

.critedge:                                        ; preds = %bb.k, %bb.i, %bb.a
  %.6 = phi i32 [ 1, %bb.a ], [ 0, %bb.i ], [ 1, %bb.k ]
  ret i32 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @keyMetaTransition(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %sum.shift = lshr i64 %i.a, 33
  %i.b = trunc nuw nsw i64 %sum.shift to i32      ; 13 uses
  %i.c = and i32 %i.b, 127
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8                ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not29 = icmp eq i64 %i.f, 0
  %.023.v = select i1 %.not29, i64 -8, i64 -16
  %.023 = getelementptr inbounds i8, ptr %1, i64 %.023.v ; 4 uses
  %i.g = and i64 %i.a, 4294967296
  %.not = icmp eq i64 %i.g, 0
  %spec.select.v = select i1 %.not, i64 -8, i64 -16
  %spec.select = getelementptr inbounds i8, ptr %0, i64 %spec.select.v ; 5 uses
  %sum.shift30 = lshr i64 %i.e, 33                ; 2 uses
  %i.h = trunc nuw nsw i64 %sum.shift30 to i32    ; 7 uses
  %i.i = and i32 %i.b, 1
  %.not31 = icmp eq i32 %i.i, 0
  br i1 %.not31, label %11, label %2

2:                                                ; preds = %bb.b
  %3 = and i32 %i.h, 1
  %.not32 = icmp eq i32 %3, 0
  br i1 %.not32, label %9, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %spec.select, align 8, !tbaa !22
  %6 = getelementptr inbounds i8, ptr %.023, i64 -8
  store i64 %5, ptr %.023, align 8, !tbaa !22
  %7 = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 200), align 8, !tbaa !34
  %8 = getelementptr inbounds i8, ptr %spec.select, i64 -8
  store i64 %7, ptr %spec.select, align 8, !tbaa !22
  br label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %spec.select, i64 -8
  br label %15

11:                                               ; preds = %bb.b
  %12 = and i64 %sum.shift30, 1
  %13 = sub nsw i64 0, %12
  %14 = getelementptr inbounds [8 x i8], ptr %.023, i64 %13
  br label %15

15:                                               ; preds = %4, %9, %11
  %.226 = phi ptr [ %8, %4 ], [ %10, %9 ], [ %spec.select, %11 ] ; 5 uses
  %.2 = phi ptr [ %6, %4 ], [ %.023, %9 ], [ %14, %11 ] ; 4 uses
  %.mask = and i32 %i.b, 126
  %.not33 = icmp eq i32 %.mask, 0
  br i1 %.not33, label %.loopexit, label %16

16:                                               ; preds = %15
  %17 = lshr i32 %i.h, 1
  %18 = and i32 %i.b, 2
  %.not31.1 = icmp eq i32 %18, 0
  %19 = and i32 %17, 1                            ; 2 uses
  br i1 %.not31.1, label %28, label %20

20:                                               ; preds = %16
  %.not32.1 = icmp eq i32 %19, 0
  br i1 %.not32.1, label %26, label %21

21:                                               ; preds = %20
  %22 = load i64, ptr %.226, align 8, !tbaa !22
  %23 = getelementptr inbounds i8, ptr %.2, i64 -8
  store i64 %22, ptr %.2, align 8, !tbaa !22
  %24 = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 352), align 16, !tbaa !34
  %25 = getelementptr inbounds i8, ptr %.226, i64 -8
  store i64 %24, ptr %.226, align 8, !tbaa !22
  br label %32

26:                                               ; preds = %20
  %27 = getelementptr inbounds i8, ptr %.226, i64 -8
  br label %32

28:                                               ; preds = %16
  %29 = zext nneg i32 %19 to i64
  %30 = sub nsw i64 0, %29
  %31 = getelementptr inbounds [8 x i8], ptr %.2, i64 %30
  br label %32

32:                                               ; preds = %28, %26, %21
  %.226.1 = phi ptr [ %25, %21 ], [ %27, %26 ], [ %.226, %28 ] ; 5 uses
  %.2.1 = phi ptr [ %23, %21 ], [ %.2, %26 ], [ %31, %28 ] ; 4 uses
  %.mask36 = and i32 %i.b, 124
  %.not33.1 = icmp eq i32 %.mask36, 0
  br i1 %.not33.1, label %.loopexit, label %33

33:                                               ; preds = %32
  %34 = lshr i32 %i.h, 2
  %35 = and i32 %i.b, 4
  %.not31.2 = icmp eq i32 %35, 0
  %36 = and i32 %34, 1                            ; 2 uses
  br i1 %.not31.2, label %45, label %37

37:                                               ; preds = %33
  %.not32.2 = icmp eq i32 %36, 0
  br i1 %.not32.2, label %43, label %38

38:                                               ; preds = %37
  %39 = load i64, ptr %.226.1, align 8, !tbaa !22
  %40 = getelementptr inbounds i8, ptr %.2.1, i64 -8
  store i64 %39, ptr %.2.1, align 8, !tbaa !22
  %41 = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 504), align 8, !tbaa !34
  %42 = getelementptr inbounds i8, ptr %.226.1, i64 -8
  store i64 %41, ptr %.226.1, align 8, !tbaa !22
  br label %49

43:                                               ; preds = %37
  %44 = getelementptr inbounds i8, ptr %.226.1, i64 -8
  br label %49

45:                                               ; preds = %33
  %46 = zext nneg i32 %36 to i64
  %47 = sub nsw i64 0, %46
  %48 = getelementptr inbounds [8 x i8], ptr %.2.1, i64 %47
  br label %49

49:                                               ; preds = %45, %43, %38
  %.226.2 = phi ptr [ %42, %38 ], [ %44, %43 ], [ %.226.1, %45 ] ; 5 uses
  %.2.2 = phi ptr [ %40, %38 ], [ %.2.1, %43 ], [ %48, %45 ] ; 4 uses
  %.mask37 = and i32 %i.b, 120
  %.not33.2 = icmp eq i32 %.mask37, 0
  br i1 %.not33.2, label %.loopexit, label %50

50:                                               ; preds = %49
  %51 = lshr i32 %i.h, 3
  %52 = and i32 %i.b, 8
  %.not31.3 = icmp eq i32 %52, 0
  %53 = and i32 %51, 1                            ; 2 uses
  br i1 %.not31.3, label %62, label %54

54:                                               ; preds = %50
  %.not32.3 = icmp eq i32 %53, 0
  br i1 %.not32.3, label %60, label %55

55:                                               ; preds = %54
  %56 = load i64, ptr %.226.2, align 8, !tbaa !22
  %57 = getelementptr inbounds i8, ptr %.2.2, i64 -8
  store i64 %56, ptr %.2.2, align 8, !tbaa !22
  %58 = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 656), align 16, !tbaa !34
  %59 = getelementptr inbounds i8, ptr %.226.2, i64 -8
  store i64 %58, ptr %.226.2, align 8, !tbaa !22
  br label %66

60:                                               ; preds = %54
  %61 = getelementptr inbounds i8, ptr %.226.2, i64 -8
  br label %66

62:                                               ; preds = %50
  %63 = zext nneg i32 %53 to i64
  %64 = sub nsw i64 0, %63
  %65 = getelementptr inbounds [8 x i8], ptr %.2.2, i64 %64
  br label %66

66:                                               ; preds = %62, %60, %55
  %.226.3 = phi ptr [ %59, %55 ], [ %61, %60 ], [ %.226.2, %62 ] ; 5 uses
  %.2.3 = phi ptr [ %57, %55 ], [ %.2.2, %60 ], [ %65, %62 ] ; 4 uses
  %.mask38 = and i32 %i.b, 112
  %.not33.3 = icmp eq i32 %.mask38, 0
  br i1 %.not33.3, label %.loopexit, label %67

67:                                               ; preds = %66
  %68 = lshr i32 %i.h, 4
  %69 = and i32 %i.b, 16
  %.not31.4 = icmp eq i32 %69, 0
  %70 = and i32 %68, 1                            ; 2 uses
  br i1 %.not31.4, label %79, label %71

71:                                               ; preds = %67
  %.not32.4 = icmp eq i32 %70, 0
  br i1 %.not32.4, label %77, label %72

72:                                               ; preds = %71
  %73 = load i64, ptr %.226.3, align 8, !tbaa !22
  %74 = getelementptr inbounds i8, ptr %.2.3, i64 -8
  store i64 %73, ptr %.2.3, align 8, !tbaa !22
  %75 = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 808), align 8, !tbaa !34
  %76 = getelementptr inbounds i8, ptr %.226.3, i64 -8
  store i64 %75, ptr %.226.3, align 8, !tbaa !22
  br label %83

77:                                               ; preds = %71
  %78 = getelementptr inbounds i8, ptr %.226.3, i64 -8
  br label %83

79:                                               ; preds = %67
  %80 = zext nneg i32 %70 to i64
  %81 = sub nsw i64 0, %80
  %82 = getelementptr inbounds [8 x i8], ptr %.2.3, i64 %81
  br label %83

83:                                               ; preds = %79, %77, %72
  %.226.4 = phi ptr [ %76, %72 ], [ %78, %77 ], [ %.226.3, %79 ] ; 5 uses
  %.2.4 = phi ptr [ %74, %72 ], [ %.2.3, %77 ], [ %82, %79 ] ; 4 uses
  %.mask39 = and i32 %i.b, 96
  %.not33.4 = icmp eq i32 %.mask39, 0
  br i1 %.not33.4, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %83
  %84 = lshr i32 %i.h, 5
  %i.j = and i32 %i.b, 32
  %.not31.a = icmp eq i32 %i.j, 0
  %i.k = and i32 %84, 1                           ; 2 uses
  br i1 %.not31.a, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not32.a = icmp eq i32 %i.k, 0
  br i1 %.not32.a, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %.226.4, align 8, !tbaa !22
  %i.m = getelementptr inbounds i8, ptr %.2.4, i64 -8
  store i64 %i.l, ptr %.2.4, align 8, !tbaa !22
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 960), align 16, !tbaa !34
  %i.o = getelementptr inbounds i8, ptr %.226.4, i64 -8
  store i64 %i.n, ptr %.226.4, align 8, !tbaa !22
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %.226.4, i64 -8
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.k to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %.2.4, i64 %i.r
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.226.a = phi ptr [ %i.o, %bb.e ], [ %i.p, %bb.f ], [ %.226.4, %bb.g ] ; 2 uses
  %.2.a = phi ptr [ %i.m, %bb.e ], [ %.2.4, %bb.f ], [ %i.s, %bb.g ]
  %.mask40 = and i32 %i.b, 64
  %.not33.5 = icmp eq i32 %.mask40, 0
  %85 = and i32 %i.h, 64
  %.not33.a = icmp eq i32 %85, 0
  %or.cond = select i1 %.not33.5, i1 true, i1 %.not33.a
  br i1 %or.cond, label %.loopexit, label %86

86:                                               ; preds = %bb.h
  %87 = load i64, ptr %.226.a, align 8, !tbaa !22
  store i64 %87, ptr %.2.a, align 8, !tbaa !22
  %88 = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1112), align 8, !tbaa !34
  store i64 %88, ptr %.226.a, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %15, %32, %49, %66, %83, %bb.h, %86, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 8) i32 @keyMetaClassCreate(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %keyMetaClassEncode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !111
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #18
  %.not.i = icmp ne i64 %i.c, 4
  %or.cond.i = icmp ugt i32 %2, 31
  %or.cond42.i = or i1 %or.cond.i, %.not.i
  br i1 %or.cond42.i, label %keyMetaClassEncode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 1                ; 6 uses
  %sext.i = shl i32 %i.d, 24
  %i.e = ashr exact i32 %sext.i, 24
  %memchr.5.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.15, i32 %i.e, i64 65) ; 2 uses
  %.not41.not.5.i = icmp eq ptr %memchr.5.i, null
  br i1 %.not41.not.5.i, label %keyMetaClassEncode.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = shl i32 %i.d, 16
  %i.g = ashr i32 %i.f, 24
  %memchr.6.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.15, i32 %i.g, i64 65) ; 2 uses
  %.not41.not.6.i = icmp eq ptr %memchr.6.i, null
  br i1 %.not41.not.6.i, label %keyMetaClassEncode.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = shl i32 %i.d, 8
  %i.i = ashr i32 %i.h, 24
  %memchr.7.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.15, i32 %i.i, i64 65) ; 2 uses
  %.not41.not.7.i = icmp eq ptr %memchr.7.i, null
  br i1 %.not41.not.7.i, label %keyMetaClassEncode.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = ashr i32 %i.d, 24
  %memchr.8.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.15, i32 %i.j, i64 65) ; 2 uses
  %.not41.not.8.i = icmp eq ptr %memchr.8.i, null
  br i1 %.not41.not.8.i, label %keyMetaClassEncode.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = ptrtoint ptr %memchr.5.i to i64
  %i.l = sub i64 %i.k, ptrtoint (ptr @.str.15 to i64) ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = shl i32 %i.m, 12
  %i.o = ptrtoint ptr %memchr.6.i to i64
  %i.p = sub i64 %i.o, ptrtoint (ptr @.str.15 to i64) ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = shl i32 %i.q, 6
  %i.s = or i32 %i.r, %i.n
  %i.t = ptrtoint ptr %memchr.7.i to i64
  %i.u = sub i64 %i.t, ptrtoint (ptr @.str.15 to i64) ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = or i32 %i.s, %i.v
  %i.x = ptrtoint ptr %memchr.8.i to i64
  %i.y = sub i64 %i.x, ptrtoint (ptr @.str.15 to i64) ; 2 uses
  %i.z = shl i64 %i.l, 18
  %i.aa = shl i64 %i.p, 12
  %i.ab = or i64 %i.z, %i.aa
  %i.ac = or i64 %i.ab, 3396598633594880
  %i.ad = shl i64 %i.u, 6
  %i.ae = or i64 %i.ad, %i.ac
  %i.af = or i64 %i.ae, %i.y
  %i.ag = trunc i64 %i.y to i32
  %i.ah = shl i32 %i.w, 14
  %i.ai = shl i32 %i.ag, 8
  %i.aj = or i32 %i.ah, %i.ai
  %i.ak = shl nuw nsw i32 %2, 3
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = trunc i64 %i.b to i32
  %i.an = and i32 %i.am, 7
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = shl i64 %i.af, 10
  %i.aq = zext nneg i32 %2 to i64
  %i.ar = or disjoint i64 %i.ap, %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.as = call fastcc i32 @keyMetaClassLookupByName(ptr noundef nonnull %1, ptr noundef %i.a) ; 2 uses
  %i.at = load i32, ptr %i.a, align 4, !tbaa !9
  %.not32 = icmp eq i32 %i.at, 0
  br i1 %.not32, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.au = icmp eq i32 %i.as, -1
  br i1 %i.au, label %.preheader.preheader, label %bb.i, !prof !27

.preheader.preheader:                             ; preds = %bb.h
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 296), align 8, !tbaa !14
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit, label %.preheader.1

bb.i:                                             ; preds = %bb.h
  tail call void @_serverAssert(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 752) #16
  tail call void @abort() #17
  unreachable

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 448), align 16, !tbaa !14
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 600), align 8, !tbaa !14
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 752), align 16, !tbaa !14
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 904), align 8, !tbaa !14
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1056), align 16, !tbaa !14
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1208), align 8, !tbaa !14
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.loopexit, label %.thread

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.g
  %.128 = phi i32 [ %i.as, %bb.g ], [ 1, %.preheader.preheader ], [ 2, %.preheader.1 ], [ 3, %.preheader.2 ], [ 4, %.preheader.3 ], [ 5, %.preheader.4 ], [ 6, %.preheader.5 ], [ 7, %.preheader.6 ] ; 2 uses
  %i.bj = sext i32 %.128 to i64
  %i.bk = getelementptr inbounds [152 x i8], ptr @keyMetaClass, i64 %i.bj ; 10 uses
  store i32 %i.d, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i8 0, ptr %i.bl, align 4, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bn, ptr noundef nonnull align 1 dereferenceable(5) @.str.16, i64 5, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 21
  store i32 %i.d, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 25
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store i64 %i.ar, ptr %i.bo, align 8, !tbaa !112
  store ptr %0, ptr %i.bm, align 8, !tbaa !113
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  store i32 1, ptr %i.bp, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 148
  store i32 %i.ao, ptr %i.bq, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.br, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 104, i1 false), !tbaa.struct !114
  br label %.thread

.thread:                                          ; preds = %.preheader.6, %.loopexit
  %.0 = phi i32 [ %.128, %.loopexit ], [ 0, %.preheader.6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %keyMetaClassEncode.exit.thread

keyMetaClassEncode.exit.thread:                   ; preds = %.thread, %bb.b, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ %.0, %.thread ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @keyMetaClassRelease(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = add i32 %0, -1
  %or.cond = icmp ult i32 %i.a, 7
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.d, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @keyMetaSetMetadata(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = add i32 %2, -1
  %i.d = icmp ult i32 %i.c, 7
  br i1 %i.d, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 795) #16
  tail call void @abort() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %2 to i64
  %i.f = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = shl nuw nsw i32 1, %2                    ; 2 uses
  %i.m = and i32 %i.l, %i.k
  %.not53 = icmp eq i32 %i.m, 0
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @kvobjMetaRef(ptr noundef nonnull %1, i32 noundef %2) #16
  store i64 %3, ptr %i.n, align 8, !tbaa !22
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.o = tail call ptr @kvobjGetKey(ptr noundef nonnull %1) #16 ; 4 uses
  %i.p = tail call i32 @getKeySlot(ptr noundef %i.o) #16 ; 7 uses
  %i.q = load i64, ptr %1, align 8
  %i.r = and i64 %i.q, 15
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !116
  %i.v = tail call i64 @estoreRemove(ptr noundef %i.u, i32 noundef %i.p, ptr noundef nonnull %1) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.051 = phi i64 [ %i.v, %bb.g ], [ 281474976710656, %bb.f ] ; 2 uses
  %i.w = tail call i64 @kvobjGetExpire(ptr noundef nonnull %1) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.x = load ptr, ptr %0, align 8, !tbaa !117
  %i.y = tail call ptr @kvstoreDictFindLink(ptr noundef %i.x, i32 noundef %i.p, ptr noundef %i.o, ptr noundef null) #16 ; 2 uses
  store ptr %i.y, ptr %i.a, align 8, !tbaa !118
  %.not54 = icmp eq ptr %i.y, null
  br i1 %.not54, label %bb.i, label %bb.j, !prof !120

bb.i:                                             ; preds = %bb.h
  tail call void @_serverAssert(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 827) #16
  tail call void @abort() #17
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !118
  %.not55 = icmp eq i64 %i.w, -1                  ; 2 uses
  br i1 %.not55, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !121
  %i.ab = tail call ptr @kvstoreDictFindLink(ptr noundef %i.aa, i32 noundef %i.p, ptr noundef %i.o, ptr noundef null) #16 ; 2 uses
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !118
  %.not56 = icmp eq ptr %i.ab, null
  br i1 %.not56, label %bb.l, label %bb.m, !prof !120

bb.l:                                             ; preds = %bb.k
  tail call void @_serverAssert(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 833) #16
  tail call void @abort() #17
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !122
  %.not57 = icmp eq i32 %i.ac, 0
  br i1 %.not57, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call i64 @kvobjAllocSize(ptr noundef nonnull %1) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i64 [ %i.ad, %bb.n ], [ 0, %bb.m ]
  %i.ae = load i64, ptr %1, align 8
  %i.af = lshr i64 %i.ae, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = and i32 %i.ag, 255
  %i.ai = or i32 %i.ah, %i.l
  %i.aj = tail call ptr @kvobjSet(ptr noundef %i.o, ptr noundef nonnull %1, i32 noundef %i.ai) #16 ; 8 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !117
  call void @kvstoreDictSetAtLink(ptr noundef %i.ak, i32 noundef %i.p, ptr noundef %i.aj, ptr noundef nonnull %i.a, i32 noundef 0) #16
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !122
  %.not58 = icmp eq i32 %i.al, 0
  br i1 %.not58, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = call i64 @kvobjAllocSize(ptr noundef %i.aj) #16
  call void @updateSlotAllocSize(ptr noundef nonnull %0, i32 noundef %i.p, ptr noundef %i.aj, i64 noundef %.0, i64 noundef %i.am) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.an = call ptr @kvobjMetaRef(ptr noundef %i.aj, i32 noundef %2) #16
  store i64 %3, ptr %i.an, align 8, !tbaa !22
  br i1 %.not55, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 -8
  store i64 %i.w, ptr %i.ao, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !121
  call void @kvstoreDictSetAtLink(ptr noundef %i.aq, i32 noundef %i.p, ptr noundef %i.aj, ptr noundef nonnull %i.b, i32 noundef 0) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not60 = icmp eq i64 %.051, 281474976710656
  br i1 %.not60, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !116
  call void @estoreAdd(ptr noundef %i.as, i32 noundef %i.p, ptr noundef %i.aj, i64 noundef %.051) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.c, %bb.u, %bb.e
  %.050 = phi ptr [ %i.aj, %bb.u ], [ %1, %bb.e ], [ null, %bb.c ]
  ret ptr %.050
}

declare ptr @kvobjMetaRef(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @getKeySlot(ptr noundef) local_unnamed_addr #6

declare i64 @estoreRemove(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i64 @kvobjGetExpire(ptr noundef) local_unnamed_addr #6

declare ptr @kvstoreDictFindLink(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #6

declare ptr @kvobjSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @kvstoreDictSetAtLink(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @estoreAdd(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @keyMetaGetMetadata(i32 noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = add i32 %0, -1
  %i.b = icmp ult i32 %i.a, 7
  br i1 %i.b, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 864) #16
  tail call void @abort() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14
  %.not = icmp eq i32 %i.f, 1
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %1, align 8
  %i.h = lshr i64 %i.g, 32
  %i.i = trunc nuw i64 %i.h to i32
  %i.j = shl nuw nsw i32 1, %0
  %i.k = and i32 %i.j, %i.i
  %.not9 = icmp eq i32 %i.k, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @kvobjMetaRef(ptr noundef nonnull %1, i32 noundef %0) #16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !22
  store i64 %i.m, ptr %2, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @keyMetaResetModuleValues(ptr nofree noundef captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 4294967296
  %.not = icmp eq i64 %i.b, 0
  %spec.select.v = select i1 %.not, i64 -8, i64 -16
  %spec.select = getelementptr inbounds i8, ptr %0, i64 %spec.select.v ; 3 uses
  %sum.shift = lshr i64 %i.a, 33
  %i.c = trunc nuw nsw i64 %sum.shift to i32      ; 12 uses
  %i.d = and i32 %i.c, 1
  %.not12 = icmp eq i32 %i.d, 0
  br i1 %.not12, label %4, label %1

1:                                                ; preds = %bb.a
  %2 = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 200), align 8, !tbaa !34
  %3 = getelementptr inbounds i8, ptr %spec.select, i64 -8
  store i64 %2, ptr %spec.select, align 8, !tbaa !22
  br label %4

4:                                                ; preds = %1, %bb.a
  %.2 = phi ptr [ %3, %1 ], [ %spec.select, %bb.a ] ; 3 uses
  %5 = and i32 %i.c, 126
  %.not13 = icmp eq i32 %5, 0
  br i1 %.not13, label %bb.e, label %6

6:                                                ; preds = %4
  %7 = and i32 %i.c, 2
  %.not12.1 = icmp eq i32 %7, 0
  br i1 %.not12.1, label %11, label %8

8:                                                ; preds = %6
  %9 = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 352), align 16, !tbaa !34
  %10 = getelementptr inbounds i8, ptr %.2, i64 -8
  store i64 %9, ptr %.2, align 8, !tbaa !22
  br label %11

11:                                               ; preds = %8, %6
  %.2.1 = phi ptr [ %10, %8 ], [ %.2, %6 ]        ; 3 uses
  %12 = and i32 %i.c, 124
  %.not13.1 = icmp eq i32 %12, 0
  br i1 %.not13.1, label %bb.e, label %13

13:                                               ; preds = %11
  %14 = and i32 %i.c, 4
  %.not12.2 = icmp eq i32 %14, 0
  br i1 %.not12.2, label %18, label %15

15:                                               ; preds = %13
  %16 = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 504), align 8, !tbaa !34
  %17 = getelementptr inbounds i8, ptr %.2.1, i64 -8
  store i64 %16, ptr %.2.1, align 8, !tbaa !22
  br label %18

18:                                               ; preds = %15, %13
  %.2.2 = phi ptr [ %17, %15 ], [ %.2.1, %13 ]    ; 3 uses
  %19 = and i32 %i.c, 120
  %.not13.2 = icmp eq i32 %19, 0
  br i1 %.not13.2, label %bb.e, label %20

20:                                               ; preds = %18
  %21 = and i32 %i.c, 8
  %.not12.3 = icmp eq i32 %21, 0
  br i1 %.not12.3, label %25, label %22

22:                                               ; preds = %20
  %23 = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 656), align 16, !tbaa !34
  %24 = getelementptr inbounds i8, ptr %.2.2, i64 -8
  store i64 %23, ptr %.2.2, align 8, !tbaa !22
  br label %25

25:                                               ; preds = %22, %20
  %.2.3 = phi ptr [ %24, %22 ], [ %.2.2, %20 ]    ; 3 uses
  %26 = and i32 %i.c, 112
  %.not13.3 = icmp eq i32 %26, 0
  br i1 %.not13.3, label %bb.e, label %27

27:                                               ; preds = %25
  %28 = and i32 %i.c, 16
  %.not12.4 = icmp eq i32 %28, 0
  br i1 %.not12.4, label %bb.b, label %29

29:                                               ; preds = %27
  %30 = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 808), align 8, !tbaa !34
  %31 = getelementptr inbounds i8, ptr %.2.3, i64 -8
  store i64 %30, ptr %.2.3, align 8, !tbaa !22
  br label %bb.b

bb.b:                                             ; preds = %29, %27
  %.1 = phi ptr [ %31, %29 ], [ %.2.3, %27 ]      ; 3 uses
  %i.e = and i32 %i.c, 96
  %.not12.a = icmp eq i32 %i.e, 0
  br i1 %.not12.a, label %bb.e, label %32

32:                                               ; preds = %bb.b
  %33 = and i32 %i.c, 32
  %.not12.5 = icmp eq i32 %33, 0
  br i1 %.not12.5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %32
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 960), align 16, !tbaa !34
  %i.g = getelementptr inbounds i8, ptr %.1, i64 -8
  store i64 %i.f, ptr %.1, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %32
  %.2.a = phi ptr [ %i.g, %bb.c ], [ %.1, %32 ]
  %34 = and i32 %i.c, 64
  %.not13.a = icmp eq i32 %34, 0
  br i1 %.not13.a, label %bb.e, label %35

35:                                               ; preds = %bb.d
  %36 = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1112), align 8, !tbaa !34
  store i64 %36, ptr %.2.a, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %35, %bb.d, %bb.b, %25, %18, %11, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !10, i64 144}
!15 = !{!"KeyMetaClass", !11, i64 0, !16, i64 8, !20, i64 40, !10, i64 144, !10, i64 148}
!16 = !{!"ModuleEntityId", !17, i64 0, !11, i64 8, !19, i64 24}
!17 = !{!"p1 _ZTS11RedisModule", !18, i64 0}
!18 = !{!"any pointer", !11, i64 0}
!19 = !{!"long", !11, i64 0}
!20 = !{!"KeyMetaClassConf", !19, i64 0, !19, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96}
!21 = !{!20, !19, i64 8}
!22 = !{!19, !19, i64 0}
!23 = !{!24, !25, i64 2}
!24 = !{!"KeyMetaSpec", !25, i64 0, !25, i64 2, !11, i64 8}
!25 = !{!"short", !11, i64 0}
!26 = !{!24, !25, i64 0}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!29, !30, i64 0}
!29 = !{!"RedisModuleKeyOptCtx", !30, i64 0, !30, i64 8, !10, i64 16, !10, i64 20}
!30 = !{!"p1 _ZTS11redisObject", !18, i64 0}
!31 = !{!29, !30, i64 8}
!32 = !{!29, !10, i64 16}
!33 = !{!29, !10, i64 20}
!34 = !{!15, !19, i64 48}
!35 = !{!15, !18, i64 56}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!39, !10, i64 72}
!39 = !{!"redisDb", !40, i64 0, !40, i64 8, !41, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !10, i64 72, !43, i64 80, !19, i64 88}
!40 = !{!"p1 _ZTS8_kvstore", !18, i64 0}
!41 = !{!"p1 _ZTS7_estore", !18, i64 0}
!42 = !{!"p1 _ZTS4dict", !18, i64 0}
!43 = !{!"long long", !11, i64 0}
!44 = !{!15, !18, i64 64}
!45 = distinct !{!45, !37}
!46 = !{!15, !18, i64 72}
!47 = distinct !{!47, !37}
!48 = !{!15, !18, i64 80}
!49 = distinct !{!49, !37}
!50 = !{!15, !18, i64 88}
!51 = distinct !{!51, !37}
!52 = distinct !{!52, !37}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 _ZTS4_rio", !18, i64 0}
!55 = !{!56, !10, i64 6416}
!56 = !{!"redisServer", !10, i64 0, !19, i64 8, !57, i64 16, !57, i64 24, !58, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !60, i64 64, !42, i64 72, !42, i64 80, !61, i64 88, !62, i64 96, !10, i64 104, !10, i64 108, !11, i64 112, !11, i64 116, !43, i64 120, !11, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !57, i64 144, !10, i64 152, !10, i64 156, !11, i64 160, !10, i64 204, !19, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !57, i64 232, !57, i64 240, !10, i64 248, !10, i64 252, !19, i64 256, !11, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !63, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !11, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !11, i64 336, !10, i64 464, !57, i64 472, !57, i64 480, !10, i64 488, !11, i64 496, !10, i64 1328, !64, i64 1336, !63, i64 1440, !63, i64 1448, !63, i64 1456, !63, i64 1464, !63, i64 1472, !63, i64 1480, !63, i64 1488, !66, i64 1496, !66, i64 1504, !18, i64 1512, !62, i64 1520, !10, i64 1528, !62, i64 1536, !10, i64 1544, !63, i64 1552, !11, i64 1560, !11, i64 1624, !42, i64 1880, !11, i64 1888, !10, i64 1896, !10, i64 1900, !11, i64 1904, !10, i64 2416, !10, i64 2420, !67, i64 2424, !10, i64 2448, !43, i64 2456, !10, i64 2464, !10, i64 2468, !10, i64 2472, !10, i64 2476, !10, i64 2480, !19, i64 2488, !19, i64 2496, !19, i64 2504, !19, i64 2512, !19, i64 2520, !19, i64 2528, !43, i64 2536, !43, i64 2544, !43, i64 2552, !43, i64 2560, !43, i64 2568, !43, i64 2576, !69, i64 2584, !43, i64 2592, !43, i64 2600, !43, i64 2608, !43, i64 2616, !43, i64 2624, !43, i64 2632, !19, i64 2640, !43, i64 2648, !43, i64 2656, !43, i64 2664, !43, i64 2672, !43, i64 2680, !43, i64 2688, !43, i64 2696, !43, i64 2704, !19, i64 2712, !19, i64 2720, !19, i64 2728, !43, i64 2736, !43, i64 2744, !43, i64 2752, !43, i64 2760, !43, i64 2768, !69, i64 2776, !43, i64 2784, !43, i64 2792, !43, i64 2800, !43, i64 2808, !43, i64 2816, !63, i64 2824, !43, i64 2832, !43, i64 2840, !19, i64 2848, !70, i64 2856, !11, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !19, i64 2976, !19, i64 2984, !19, i64 2992, !19, i64 3000, !19, i64 3008, !19, i64 3016, !19, i64 3024, !19, i64 3032, !69, i64 3040, !11, i64 3048, !19, i64 3080, !43, i64 3088, !43, i64 3096, !43, i64 3104, !11, i64 3112, !11, i64 4136, !11, i64 5160, !43, i64 5168, !43, i64 5176, !43, i64 5184, !43, i64 5192, !11, i64 5200, !43, i64 6264, !43, i64 6272, !19, i64 6280, !43, i64 6288, !43, i64 6296, !19, i64 6304, !11, i64 6312, !71, i64 6408, !10, i64 6416, !10, i64 6420, !10, i64 6424, !10, i64 6428, !10, i64 6432, !10, i64 6436, !10, i64 6440, !10, i64 6444, !10, i64 6448, !10, i64 6452, !10, i64 6456, !10, i64 6460, !10, i64 6464, !19, i64 6472, !10, i64 6480, !10, i64 6484, !10, i64 6488, !10, i64 6492, !19, i64 6496, !19, i64 6504, !10, i64 6512, !10, i64 6516, !10, i64 6520, !10, i64 6524, !10, i64 6528, !10, i64 6532, !57, i64 6536, !11, i64 6544, !10, i64 6616, !10, i64 6620, !10, i64 6624, !72, i64 6632, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660, !10, i64 6664, !10, i64 6668, !10, i64 6672, !57, i64 6680, !57, i64 6688, !10, i64 6696, !10, i64 6700, !19, i64 6704, !19, i64 6712, !19, i64 6720, !19, i64 6728, !19, i64 6736, !10, i64 6744, !10, i64 6748, !57, i64 6752, !10, i64 6760, !10, i64 6764, !43, i64 6768, !43, i64 6776, !19, i64 6784, !19, i64 6792, !19, i64 6800, !10, i64 6808, !10, i64 6812, !19, i64 6816, !10, i64 6824, !10, i64 6828, !10, i64 6832, !10, i64 6836, !10, i64 6840, !19, i64 6848, !10, i64 6856, !11, i64 6860, !11, i64 6864, !18, i64 6872, !10, i64 6880, !43, i64 6888, !43, i64 6896, !43, i64 6904, !43, i64 6912, !10, i64 6920, !73, i64 6928, !10, i64 6936, !57, i64 6944, !10, i64 6952, !10, i64 6956, !10, i64 6960, !19, i64 6968, !19, i64 6976, !19, i64 6984, !19, i64 6992, !10, i64 7000, !10, i64 7004, !10, i64 7008, !10, i64 7012, !10, i64 7016, !10, i64 7020, !74, i64 7024, !10, i64 7032, !10, i64 7036, !57, i64 7040, !10, i64 7048, !10, i64 7052, !10, i64 7056, !11, i64 7060, !10, i64 7068, !75, i64 7072, !10, i64 7088, !57, i64 7096, !10, i64 7104, !57, i64 7112, !10, i64 7120, !10, i64 7124, !10, i64 7128, !10, i64 7132, !10, i64 7136, !10, i64 7140, !10, i64 7144, !11, i64 7148, !11, i64 7189, !43, i64 7232, !43, i64 7240, !11, i64 7248, !43, i64 7256, !10, i64 7264, !10, i64 7268, !77, i64 7272, !43, i64 7280, !43, i64 7288, !78, i64 7296, !19, i64 7344, !19, i64 7352, !10, i64 7360, !10, i64 7364, !10, i64 7368, !10, i64 7372, !10, i64 7376, !10, i64 7380, !10, i64 7384, !10, i64 7388, !10, i64 7392, !19, i64 7400, !63, i64 7408, !19, i64 7416, !57, i64 7424, !57, i64 7432, !57, i64 7440, !10, i64 7448, !10, i64 7452, !66, i64 7456, !66, i64 7464, !10, i64 7472, !10, i64 7476, !10, i64 7480, !10, i64 7484, !19, i64 7488, !19, i64 7496, !19, i64 7504, !19, i64 7512, !19, i64 7520, !79, i64 7528, !79, i64 7536, !10, i64 7544, !57, i64 7552, !19, i64 7560, !10, i64 7568, !10, i64 7572, !10, i64 7576, !19, i64 7584, !19, i64 7592, !10, i64 7600, !10, i64 7604, !10, i64 7608, !10, i64 7612, !57, i64 7616, !10, i64 7624, !10, i64 7628, !11, i64 7632, !43, i64 7680, !10, i64 7688, !63, i64 7696, !10, i64 7704, !43, i64 7712, !43, i64 7720, !19, i64 7728, !19, i64 7736, !10, i64 7744, !43, i64 7752, !19, i64 7760, !10, i64 7768, !10, i64 7772, !10, i64 7776, !10, i64 7780, !10, i64 7784, !43, i64 7792, !11, i64 7800, !10, i64 7812, !10, i64 7816, !10, i64 7820, !11, i64 7824, !63, i64 7872, !63, i64 7880, !10, i64 7888, !19, i64 7896, !63, i64 7904, !63, i64 7912, !10, i64 7920, !10, i64 7924, !10, i64 7928, !10, i64 7932, !19, i64 7936, !19, i64 7944, !19, i64 7952, !19, i64 7960, !19, i64 7968, !19, i64 7976, !19, i64 7984, !19, i64 7992, !19, i64 8000, !43, i64 8008, !43, i64 8016, !43, i64 8024, !10, i64 8032, !10, i64 8036, !11, i64 8040, !19, i64 8048, !11, i64 8056, !43, i64 8064, !43, i64 8072, !10, i64 8080, !19, i64 8088, !43, i64 8096, !19, i64 8104, !43, i64 8112, !40, i64 8120, !42, i64 8128, !10, i64 8136, !40, i64 8144, !10, i64 8152, !10, i64 8156, !10, i64 8160, !10, i64 8164, !43, i64 8168, !43, i64 8176, !57, i64 8184, !43, i64 8192, !43, i64 8200, !43, i64 8208, !10, i64 8216, !80, i64 8224, !10, i64 8232, !10, i64 8236, !10, i64 8240, !10, i64 8244, !10, i64 8248, !57, i64 8256, !57, i64 8264, !57, i64 8272, !10, i64 8280, !10, i64 8284, !10, i64 8288, !10, i64 8292, !10, i64 8296, !10, i64 8300, !10, i64 8304, !10, i64 8308, !43, i64 8312, !10, i64 8320, !10, i64 8324, !10, i64 8328, !43, i64 8336, !10, i64 8344, !10, i64 8348, !10, i64 8352, !10, i64 8356, !10, i64 8360, !10, i64 8364, !10, i64 8368, !10, i64 8372, !10, i64 8376, !43, i64 8384, !42, i64 8392, !57, i64 8400, !19, i64 8408, !57, i64 8416, !10, i64 8424, !81, i64 8432, !10, i64 8472, !19, i64 8480, !10, i64 8488, !10, i64 8492, !10, i64 8496, !82, i64 8504, !57, i64 8624, !57, i64 8632, !57, i64 8640, !57, i64 8648, !83, i64 8656, !43, i64 8664, !10, i64 8672, !57, i64 8680, !10, i64 8688, !10, i64 8692, !10, i64 8696, !19, i64 8704, !10, i64 8712, !10, i64 8716, !57, i64 8720, !10, i64 8728, !10, i64 8732}
!57 = !{!"p1 omnipotent char", !18, i64 0}
!58 = !{!"p2 omnipotent char", !59, i64 0}
!59 = !{!"any p2 pointer", !18, i64 0}
!60 = !{!"p1 _ZTS7redisDb", !18, i64 0}
!61 = !{!"p1 _ZTS11aeEventLoop", !18, i64 0}
!62 = !{!"p1 _ZTS3rax", !18, i64 0}
!63 = !{!"p1 _ZTS4list", !18, i64 0}
!64 = !{!"connListener", !11, i64 0, !10, i64 64, !58, i64 72, !10, i64 80, !10, i64 84, !65, i64 88, !18, i64 96}
!65 = !{!"p1 _ZTS14ConnectionType", !18, i64 0}
!66 = !{!"p1 _ZTS6client", !18, i64 0}
!67 = !{!"pendingCommandPool", !68, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!68 = !{!"p2 _ZTS14pendingCommand", !59, i64 0}
!69 = !{!"double", !11, i64 0}
!70 = !{!"malloc_stats", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80}
!71 = !{!"p1 _ZTS11hotkeyStats", !18, i64 0}
!72 = !{!"p1 double", !18, i64 0}
!73 = !{!"p1 _ZTS9saveparam", !18, i64 0}
!74 = !{!"p2 _ZTS10connection", !59, i64 0}
!75 = !{!"redisOpArray", !76, i64 0, !10, i64 8, !10, i64 12}
!76 = !{!"p1 _ZTS7redisOp", !18, i64 0}
!77 = !{!"p1 _ZTS11replBacklog", !18, i64 0}
!78 = !{!"replDataBuf", !63, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40}
!79 = !{!"p1 _ZTS10connection", !18, i64 0}
!80 = !{!"p1 _ZTS12clusterState", !18, i64 0}
!81 = !{!"aclInfo", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32}
!82 = !{!"redisTLSContextConfig", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !10, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116}
!83 = !{!"p1 _ZTS14sentinelConfig", !18, i64 0}
!84 = !{!85, !19, i64 48}
!85 = !{!"_rio", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !11, i64 72}
!86 = !{!85, !19, i64 64}
!87 = !{!85, !18, i64 0}
!88 = distinct !{null}
!89 = !{!85, !18, i64 32}
!90 = !{!85, !19, i64 56}
!91 = !{!15, !18, i64 96}
!92 = !{!93, !54, i64 8}
!93 = !{!"RedisModuleIO", !19, i64 0, !54, i64 8, !94, i64 16, !10, i64 24, !95, i64 32, !30, i64 40, !10, i64 48, !57, i64 56}
!94 = !{!"p1 _ZTS14ModuleEntityId", !18, i64 0}
!95 = !{!"p1 _ZTS14RedisModuleCtx", !18, i64 0}
!96 = !{!93, !94, i64 16}
!97 = !{!93, !19, i64 0}
!98 = !{!93, !10, i64 24}
!99 = !{!93, !30, i64 40}
!100 = !{!93, !10, i64 48}
!101 = !{!93, !95, i64 32}
!102 = !{!93, !57, i64 56}
!103 = distinct !{!103, !37}
!104 = !{ptr @keyMetaSpecCleanup}
!105 = !{!15, !18, i64 104}
!106 = !{!15, !10, i64 148}
!107 = distinct !{!107, !37}
!108 = !{!25, !25, i64 0}
!109 = !{!15, !18, i64 112}
!110 = distinct !{!110, !37}
!111 = !{!20, !19, i64 0}
!112 = !{!15, !19, i64 32}
!113 = !{!15, !17, i64 8}
!114 = !{i64 0, i64 8, !22, i64 8, i64 8, !22, i64 16, i64 8, !115, i64 24, i64 8, !115, i64 32, i64 8, !115, i64 40, i64 8, !115, i64 48, i64 8, !115, i64 56, i64 8, !115, i64 64, i64 8, !115, i64 72, i64 8, !115, i64 80, i64 8, !115, i64 88, i64 8, !115, i64 96, i64 8, !115}
!115 = !{!18, !18, i64 0}
!116 = !{!39, !41, i64 16}
!117 = !{!39, !40, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"p2 _ZTS9dictEntry", !59, i64 0}
!120 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!121 = !{!39, !40, i64 8}
!122 = !{!56, !10, i64 6644}
end_hunk_0
