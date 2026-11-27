Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/x509_trs?download=true
inline.NumInlined: 15
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"/opt-bench/work/aws-lc/aws-lc/crypto/x509/x509_trs.c\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"SSL Client\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"SSL Server\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"S/MIME email\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Object Signer\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"TSA server\00", align 1
@trstandard = internal constant [6 x { i32, i32, ptr, ptr, i32, [4 x i8], ptr }] [{ i32, i32, ptr, ptr, i32, [4 x i8], ptr } { i32 1, i32 0, ptr @trust_compat, ptr @.str.1, i32 0, [4 x i8] zeroinitializer, ptr null }, { i32, i32, ptr, ptr, i32, [4 x i8], ptr } { i32 2, i32 0, ptr @trust_1oidany, ptr @.str.2, i32 130, [4 x i8] zeroinitializer, ptr null }, { i32, i32, ptr, ptr, i32, [4 x i8], ptr } { i32 3, i32 0, ptr @trust_1oidany, ptr @.str.3, i32 129, [4 x i8] zeroinitializer, ptr null }, { i32, i32, ptr, ptr, i32, [4 x i8], ptr } { i32 4, i32 0, ptr @trust_1oidany, ptr @.str.4, i32 132, [4 x i8] zeroinitializer, ptr null }, { i32, i32, ptr, ptr, i32, [4 x i8], ptr } { i32 5, i32 0, ptr @trust_1oidany, ptr @.str.5, i32 131, [4 x i8] zeroinitializer, ptr null }, { i32, i32, ptr, ptr, i32, [4 x i8], ptr } { i32 8, i32 0, ptr @trust_1oidany, ptr @.str.6, i32 133, [4 x i8] zeroinitializer, ptr null }], align 16
@switch.table.X509_TRUST_get_by_id = private unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 -1, i32 -1, i32 5], align 4

; Function Attrs: nounwind uwtable
define range(i32 1, 4) i32 @X509_check_trust(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %X509_TRUST_get_by_id.exit [
    i32 -1, label %trust_compat.exit
    i32 0, label %bb.b
    i32 1, label %call.0
    i32 2, label %call.1
    i32 3, label %call.2
    i32 4, label %call.3
    i32 5, label %call.4
    i32 8, label %X509_TRUST_get_by_id.exit.a
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 152
  %.val17 = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.b = tail call fastcc i32 @obj_trust(i32 noundef 910, ptr %.val17) ; 2 uses
  %.not = icmp eq i32 %i.b, 3
  br i1 %.not, label %3, label %trust_compat.exit

3:                                                ; preds = %bb.b
  %4 = tail call i32 @x509v3_cache_extensions(ptr noundef nonnull %0) #4
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %trust_compat.exit, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load i32, ptr %6, align 8, !tbaa !23
  %8 = and i32 %7, 8192
  %.not2.i = icmp eq i32 %8, 0
  %..i = select i1 %.not2.i, i32 3, i32 1
  br label %trust_compat.exit

X509_TRUST_get_by_id.exit:                        ; preds = %bb.a
  %9 = getelementptr i8, ptr %0, i64 152
  %.val = load ptr, ptr %9, align 8, !tbaa !22
  %10 = tail call fastcc i32 @obj_trust(i32 noundef %1, ptr %.val)
  br label %trust_compat.exit

call.0:                                           ; preds = %bb.a
  %11 = tail call i32 @x509v3_cache_extensions(ptr noundef %0) #4
  %.not.i28 = icmp eq i32 %11, 0
  br i1 %.not.i28, label %trust_compat.exit, label %12

12:                                               ; preds = %call.0
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %14 = load i32, ptr %13, align 8, !tbaa !23
  %15 = and i32 %14, 8192
  %.not2.i29 = icmp eq i32 %15, 0
  %..i30 = select i1 %.not2.i29, i32 3, i32 1
  br label %trust_compat.exit

call.1:                                           ; preds = %bb.a
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %17 = load ptr, ptr %16, align 8, !tbaa !22     ; 4 uses
  %.not.i32 = icmp eq ptr %17, null
  br i1 %.not.i32, label %bb.c, label %18

18:                                               ; preds = %call.1
  %19 = load ptr, ptr %17, align 8, !tbaa !26
  %.not8.i = icmp eq ptr %19, null
  br i1 %.not8.i, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %22 = load ptr, ptr %21, align 8, !tbaa !27
  %.not9.i = icmp eq ptr %22, null
  br i1 %.not9.i, label %bb.c, label %23

23:                                               ; preds = %20, %18
  %24 = tail call fastcc i32 @obj_trust(i32 noundef 130, ptr nonnull %17)
  br label %trust_compat.exit

bb.c:                                             ; preds = %20, %call.1
  %i.c = tail call i32 @x509v3_cache_extensions(ptr noundef nonnull %0) #4
  %.not.i.a = icmp eq i32 %i.c, 0
  br i1 %.not.i.a, label %trust_compat.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23
  %i.f = and i32 %i.e, 8192
  %.not2.i.a = icmp eq i32 %i.f, 0
  %..i.a = select i1 %.not2.i.a, i32 3, i32 1
  br label %trust_compat.exit

call.2:                                           ; preds = %bb.a
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %26 = load ptr, ptr %25, align 8, !tbaa !22     ; 4 uses
  %.not.i34 = icmp eq ptr %26, null
  br i1 %.not.i34, label %34, label %27

27:                                               ; preds = %call.2
  %28 = load ptr, ptr %26, align 8, !tbaa !26
  %.not8.i35 = icmp eq ptr %28, null
  br i1 %.not8.i35, label %29, label %32

29:                                               ; preds = %27
  %30 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %31 = load ptr, ptr %30, align 8, !tbaa !27
  %.not9.i37 = icmp eq ptr %31, null
  br i1 %.not9.i37, label %34, label %32

32:                                               ; preds = %29, %27
  %33 = tail call fastcc i32 @obj_trust(i32 noundef 129, ptr nonnull %26)
  br label %trust_compat.exit

34:                                               ; preds = %29, %call.2
  %35 = tail call i32 @x509v3_cache_extensions(ptr noundef nonnull %0) #4
  %.not.i.i38 = icmp eq i32 %35, 0
  br i1 %.not.i.i38, label %trust_compat.exit, label %bb.e

bb.e:                                             ; preds = %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %37 = load i32, ptr %36, align 8, !tbaa !23
  %38 = and i32 %37, 8192
  %.not2.i.i39 = icmp eq i32 %38, 0
  %..i.i40 = select i1 %.not2.i.i39, i32 3, i32 1
  br label %trust_compat.exit

call.3:                                           ; preds = %bb.a
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %40 = load ptr, ptr %39, align 8, !tbaa !22     ; 4 uses
  %.not.i42 = icmp eq ptr %40, null
  br i1 %.not.i42, label %47, label %41

41:                                               ; preds = %call.3
  %42 = load ptr, ptr %40, align 8, !tbaa !26
  %.not8.i43 = icmp eq ptr %42, null
  br i1 %.not8.i43, label %43, label %.loopexit.fold.split.i

43:                                               ; preds = %41
  %44 = getelementptr inbounds nuw i8, ptr %40, i64 8
  %45 = load ptr, ptr %44, align 8, !tbaa !27
  %.not9.i45 = icmp eq ptr %45, null
  br i1 %.not9.i45, label %47, label %.loopexit.fold.split.i

.loopexit.fold.split.i:                           ; preds = %43, %41
  %46 = tail call fastcc i32 @obj_trust(i32 noundef 132, ptr nonnull %40)
  br label %trust_compat.exit

47:                                               ; preds = %43, %call.3
  %48 = tail call i32 @x509v3_cache_extensions(ptr noundef nonnull %0) #4
  %.not.i.i46 = icmp eq i32 %48, 0
  br i1 %.not.i.i46, label %trust_compat.exit, label %.loopexit.fold.split14.i

.loopexit.fold.split14.i:                         ; preds = %47
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %50 = load i32, ptr %49, align 8, !tbaa !23
  %51 = and i32 %50, 8192
  %.not2.i.i47 = icmp eq i32 %51, 0
  %..i.i48 = select i1 %.not2.i.i47, i32 3, i32 1
  br label %trust_compat.exit

call.4:                                           ; preds = %bb.a
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %53 = load ptr, ptr %52, align 8, !tbaa !22     ; 4 uses
  %.not.i50 = icmp eq ptr %53, null
  br i1 %.not.i50, label %60, label %54

54:                                               ; preds = %call.4
  %55 = load ptr, ptr %53, align 8, !tbaa !26
  %.not8.i51 = icmp eq ptr %55, null
  br i1 %.not8.i51, label %56, label %.loopexit.fold.split15.i

56:                                               ; preds = %54
  %57 = getelementptr inbounds nuw i8, ptr %53, i64 8
  %58 = load ptr, ptr %57, align 8, !tbaa !27
  %.not9.i53 = icmp eq ptr %58, null
  br i1 %.not9.i53, label %60, label %.loopexit.fold.split15.i

.loopexit.fold.split15.i:                         ; preds = %56, %54
  %59 = tail call fastcc i32 @obj_trust(i32 noundef 131, ptr nonnull %53)
  br label %trust_compat.exit

60:                                               ; preds = %56, %call.4
  %61 = tail call i32 @x509v3_cache_extensions(ptr noundef nonnull %0) #4
  %.not.i.i54 = icmp eq i32 %61, 0
  br i1 %.not.i.i54, label %trust_compat.exit, label %.loopexit.fold.split16.i

.loopexit.fold.split16.i:                         ; preds = %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %63 = load i32, ptr %62, align 8, !tbaa !23
  %64 = and i32 %63, 8192
  %.not2.i.i55 = icmp eq i32 %64, 0
  %..i.i56 = select i1 %.not2.i.i55, i32 3, i32 1
  br label %trust_compat.exit

X509_TRUST_get_by_id.exit.a:                      ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val.a = load ptr, ptr %i.g, align 8, !tbaa !22 ; 4 uses
  %.not.i58 = icmp eq ptr %.val.a, null
  br i1 %.not.i58, label %72, label %65

65:                                               ; preds = %X509_TRUST_get_by_id.exit.a
  %66 = load ptr, ptr %.val.a, align 8, !tbaa !26
  %.not8.i59 = icmp eq ptr %66, null
  br i1 %.not8.i59, label %67, label %70

67:                                               ; preds = %65
  %68 = getelementptr inbounds nuw i8, ptr %.val.a, i64 8
  %69 = load ptr, ptr %68, align 8, !tbaa !27
  %.not9.i61 = icmp eq ptr %69, null
  br i1 %.not9.i61, label %72, label %70

70:                                               ; preds = %67, %65
  %71 = tail call fastcc i32 @obj_trust(i32 noundef 133, ptr nonnull %.val.a)
  br label %trust_compat.exit

72:                                               ; preds = %67, %X509_TRUST_get_by_id.exit.a
  %73 = tail call i32 @x509v3_cache_extensions(ptr noundef nonnull %0) #4
  %.not.i.i62 = icmp eq i32 %73, 0
  br i1 %.not.i.i62, label %trust_compat.exit, label %bb.f

bb.f:                                             ; preds = %72
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %75 = load i32, ptr %74, align 8, !tbaa !23
  %76 = and i32 %75, 8192
  %.not2.i.i63 = icmp eq i32 %76, 0
  %..i.i64 = select i1 %.not2.i.i63, i32 3, i32 1
  br label %trust_compat.exit

trust_compat.exit:                                ; preds = %bb.f, %72, %70, %.loopexit.fold.split16.i, %60, %.loopexit.fold.split15.i, %.loopexit.fold.split14.i, %47, %.loopexit.fold.split.i, %bb.e, %34, %32, %bb.d, %bb.c, %23, %12, %call.0, %bb.a, %5, %3, %X509_TRUST_get_by_id.exit, %bb.b
  %.2 = phi i32 [ %i.b, %bb.b ], [ 1, %bb.a ], [ 3, %3 ], [ %10, %X509_TRUST_get_by_id.exit ], [ %..i, %5 ], [ 3, %60 ], [ 3, %call.0 ], [ 3, %bb.c ], [ 3, %34 ], [ 3, %47 ], [ %..i30, %12 ], [ %24, %23 ], [ %..i.a, %bb.d ], [ %33, %32 ], [ %..i.i40, %bb.e ], [ %46, %.loopexit.fold.split.i ], [ %..i.i48, %.loopexit.fold.split14.i ], [ %59, %.loopexit.fold.split15.i ], [ %..i.i56, %.loopexit.fold.split16.i ], [ %71, %70 ], [ %..i.i64, %bb.f ], [ 3, %72 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 1, 4) i32 @obj_trust(i32 noundef %0, ptr nofree readonly captures(address_is_null) %.152.val) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %.152.val, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.152.val, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not20 = icmp eq ptr %i.b, null
  br i1 %.not20, label %.loopexit2, label %.preheader1

.preheader1:                                      ; preds = %bb.b
  %i.c = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.b) #4
  %.not9 = icmp eq i64 %i.c, 0
  br i1 %.not9, label %.loopexit2, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.d = add nuw i64 %.04, 1                      ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.f = tail call i64 @OPENSSL_sk_num(ptr noundef %i.e) #4
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %.lr.ph, label %.loopexit2, !llvm.loop !30

.lr.ph:                                           ; preds = %.preheader1, %bb.c
  %.04 = phi i64 [ %i.d, %bb.c ], [ 0, %.preheader1 ] ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.i = tail call ptr @OPENSSL_sk_value(ptr noundef %i.h, i64 noundef %.04) #4
  %i.j = tail call i32 @OBJ_obj2nid(ptr noundef %i.i) #4
  %i.k = icmp eq i32 %i.j, %0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit2:                                       ; preds = %bb.c, %.preheader1, %bb.b
  %i.l = load ptr, ptr %.152.val, align 8, !tbaa !26 ; 2 uses
  %.not21 = icmp eq ptr %i.l, null
  br i1 %.not21, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit2
  %i.m = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.l) #4
  %.not10 = icmp eq i64 %i.m, 0
  br i1 %.not10, label %.loopexit, label %.lr.ph6

bb.d:                                             ; preds = %.lr.ph6
  %i.n = add nuw i64 %.15, 1                      ; 2 uses
  %i.o = load ptr, ptr %.152.val, align 8, !tbaa !26
  %i.p = tail call i64 @OPENSSL_sk_num(ptr noundef %i.o) #4
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %.lr.ph6, label %.loopexit, !llvm.loop !31

.lr.ph6:                                          ; preds = %.preheader, %bb.d
  %.15 = phi i64 [ %i.n, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.r = load ptr, ptr %.152.val, align 8, !tbaa !26
  %i.s = tail call ptr @OPENSSL_sk_value(ptr noundef %i.r, i64 noundef %.15) #4
  %i.t = tail call i32 @OBJ_obj2nid(ptr noundef %i.s) #4
  %i.u = icmp eq i32 %i.t, %0
  br i1 %i.u, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph6, %bb.d, %.preheader, %.loopexit2, %bb.a
  %.018 = phi i32 [ 3, %bb.a ], [ 3, %.preheader ], [ 3, %.loopexit2 ], [ 3, %bb.d ], [ 1, %.lr.ph6 ], [ 2, %.lr.ph ]
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define internal range(i32 1, 4) i32 @trust_compat(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %1) #4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  %i.d = and i32 %i.c, 8192
  %.not2 = icmp eq i32 %i.d, 0
  %. = select i1 %.not2, i32 3, i32 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ 3, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -1, 6) i32 @X509_TRUST_get_by_id(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 8
  br i1 %i.a, label %switch.lookup, label %.loopexit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.X509_TRUST_get_by_id, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %switch.lookup
  %i.c = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @X509_TRUST_get0(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %0, 5
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [40 x i8], ptr @trstandard, i64 %i.b
  %.0 = select i1 %i.a, ptr null, ptr %i.c
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @X509_TRUST_get_count() local_unnamed_addr #1 {
bb.a:
  ret i32 6
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_TRUST_set(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %X509_TRUST_get_by_id.exit [
    i32 1, label %.loopexit.fold.split.i
    i32 2, label %.loopexit.fold.split.i
    i32 3, label %.loopexit.fold.split.i
    i32 4, label %.loopexit.fold.split.i
    i32 5, label %.loopexit.fold.split.i
    i32 8, label %.loopexit.fold.split.i
  ]

X509_TRUST_get_by_id.exit:                        ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 113, ptr noundef nonnull @.str, i32 noundef 77) #4
  br label %bb.b

.loopexit.fold.split.i:                           ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store i32 %1, ptr %0, align 4, !tbaa !33
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.fold.split.i, %X509_TRUST_get_by_id.exit
  %.0 = phi i32 [ 0, %X509_TRUST_get_by_id.exit ], [ 1, %.loopexit.fold.split.i ]
  ret i32 %.0
}

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @X509_TRUST_get_flags(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @X509_TRUST_get0_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @X509_TRUST_get_trust(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !36
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @X509_TRUST_cleanup() local_unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 1, 4) i32 @trust_1oidany(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !37
  %i.h = tail call fastcc i32 @obj_trust(i32 noundef %i.g, ptr nonnull %i.b)
  br label %trust_compat.exit

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.i = tail call i32 @x509v3_cache_extensions(ptr noundef nonnull %1) #4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %trust_compat.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !23
  %i.l = and i32 %i.k, 8192
  %.not2.i = icmp eq i32 %i.l, 0
  %..i = select i1 %.not2.i, i32 3, i32 1
  br label %trust_compat.exit

trust_compat.exit:                                ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ %i.h, %bb.d ], [ %..i, %bb.f ], [ 3, %bb.e ]
  ret i32 %.0
}

declare i32 @x509v3_cache_extensions(ptr noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #2

declare i64 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS13X509_algor_st", !8, i64 0}
!10 = !{!"p1 _ZTS14asn1_string_st", !8, i64 0}
!11 = !{!"x509_sig_info_st", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!12 = !{!"p1 _ZTS13stack_st_void", !8, i64 0}
!13 = !{!"crypto_ex_data_st", !12, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!"p1 _ZTS18AUTHORITY_KEYID_st", !8, i64 0}
!16 = !{!"p1 _ZTS19stack_st_DIST_POINT", !8, i64 0}
!17 = !{!"p1 _ZTS21stack_st_GENERAL_NAME", !8, i64 0}
!18 = !{!"p1 _ZTS19NAME_CONSTRAINTS_st", !8, i64 0}
!19 = !{!"p1 _ZTS16x509_cert_aux_st", !8, i64 0}
!20 = !{!"p1 _ZTS16crypto_buffer_st", !8, i64 0}
!21 = !{!"x509_st", !8, i64 0, !9, i64 8, !10, i64 16, !11, i64 24, !5, i64 40, !13, i64 48, !14, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !10, i64 80, !15, i64 88, !16, i64 96, !17, i64 104, !18, i64 112, !4, i64 120, !19, i64 152, !20, i64 160, !4, i64 168}
!22 = !{!21, !19, i64 152}
!23 = !{!21, !5, i64 64}
!24 = !{!"p1 _ZTS20stack_st_ASN1_OBJECT", !8, i64 0}
!25 = !{!"x509_cert_aux_st", !24, i64 0, !24, i64 8, !10, i64 16, !10, i64 24}
!26 = !{!25, !24, i64 0}
!27 = !{!25, !24, i64 8}
!28 = !{!"p1 omnipotent char", !8, i64 0}
!29 = !{!"x509_trust_st", !5, i64 0, !5, i64 4, !8, i64 8, !28, i64 16, !5, i64 24, !8, i64 32}
!30 = distinct !{!30, !32}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!5, !5, i64 0}
!34 = !{!29, !5, i64 4}
!35 = !{!29, !28, i64 16}
!36 = !{!29, !5, i64 0}
!37 = !{!29, !5, i64 24}
end_hunk_0
