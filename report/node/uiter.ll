inline.NumInlined: 23
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UCharIterator = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@_ZL14stringIterator = internal unnamed_addr constant %struct.UCharIterator { ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @_ZL22stringIteratorGetIndexP13UCharIterator19UCharIteratorOrigin, ptr @_ZL18stringIteratorMoveP13UCharIteratori19UCharIteratorOrigin, ptr @_ZL21stringIteratorHasNextP13UCharIterator, ptr @_ZL25stringIteratorHasPreviousP13UCharIterator, ptr @_ZL21stringIteratorCurrentP13UCharIterator, ptr @_ZL18stringIteratorNextP13UCharIterator, ptr @_ZL22stringIteratorPreviousP13UCharIterator, ptr null, ptr @_ZL22stringIteratorGetStatePK13UCharIterator, ptr @_ZL22stringIteratorSetStateP13UCharIteratorjP10UErrorCode }, align 8
@_ZL12noopIterator = internal unnamed_addr constant %struct.UCharIterator { ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @_ZL12noopGetIndexP13UCharIterator19UCharIteratorOrigin, ptr @_ZL8noopMoveP13UCharIteratori19UCharIteratorOrigin, ptr @_ZL11noopHasNextP13UCharIterator, ptr @_ZL11noopHasNextP13UCharIterator, ptr @_ZL11noopCurrentP13UCharIterator, ptr @_ZL11noopCurrentP13UCharIterator, ptr @_ZL11noopCurrentP13UCharIterator, ptr null, ptr @_ZL12noopGetStatePK13UCharIterator, ptr @_ZL12noopSetStateP13UCharIteratorjP10UErrorCode }, align 8
@_ZL15utf16BEIterator = internal unnamed_addr constant %struct.UCharIterator { ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @_ZL22stringIteratorGetIndexP13UCharIterator19UCharIteratorOrigin, ptr @_ZL18stringIteratorMoveP13UCharIteratori19UCharIteratorOrigin, ptr @_ZL21stringIteratorHasNextP13UCharIterator, ptr @_ZL25stringIteratorHasPreviousP13UCharIterator, ptr @_ZL22utf16BEIteratorCurrentP13UCharIterator, ptr @_ZL19utf16BEIteratorNextP13UCharIterator, ptr @_ZL23utf16BEIteratorPreviousP13UCharIterator, ptr null, ptr @_ZL22stringIteratorGetStatePK13UCharIterator, ptr @_ZL22stringIteratorSetStateP13UCharIteratorjP10UErrorCode }, align 8
@_ZL24characterIteratorWrapper = internal unnamed_addr constant %struct.UCharIterator { ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @_ZL25characterIteratorGetIndexP13UCharIterator19UCharIteratorOrigin, ptr @_ZL21characterIteratorMoveP13UCharIteratori19UCharIteratorOrigin, ptr @_ZL24characterIteratorHasNextP13UCharIterator, ptr @_ZL28characterIteratorHasPreviousP13UCharIterator, ptr @_ZL24characterIteratorCurrentP13UCharIterator, ptr @_ZL21characterIteratorNextP13UCharIterator, ptr @_ZL25characterIteratorPreviousP13UCharIterator, ptr null, ptr @_ZL25characterIteratorGetStatePK13UCharIterator, ptr @_ZL25characterIteratorSetStateP13UCharIteratorjP10UErrorCode }, align 8
@_ZL19replaceableIterator = internal unnamed_addr constant %struct.UCharIterator { ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @_ZL22stringIteratorGetIndexP13UCharIterator19UCharIteratorOrigin, ptr @_ZL18stringIteratorMoveP13UCharIteratori19UCharIteratorOrigin, ptr @_ZL21stringIteratorHasNextP13UCharIterator, ptr @_ZL25stringIteratorHasPreviousP13UCharIterator, ptr @_ZL26replaceableIteratorCurrentP13UCharIterator, ptr @_ZL23replaceableIteratorNextP13UCharIterator, ptr @_ZL27replaceableIteratorPreviousP13UCharIterator, ptr null, ptr @_ZL22stringIteratorGetStatePK13UCharIterator, ptr @_ZL22stringIteratorSetStateP13UCharIteratorjP10UErrorCode }, align 8
@_ZL12utf8Iterator = internal unnamed_addr constant %struct.UCharIterator { ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @_ZL20utf8IteratorGetIndexP13UCharIterator19UCharIteratorOrigin, ptr @_ZL16utf8IteratorMoveP13UCharIteratori19UCharIteratorOrigin, ptr @_ZL19utf8IteratorHasNextP13UCharIterator, ptr @_ZL23utf8IteratorHasPreviousP13UCharIterator, ptr @_ZL19utf8IteratorCurrentP13UCharIterator, ptr @_ZL16utf8IteratorNextP13UCharIterator, ptr @_ZL20utf8IteratorPreviousP13UCharIterator, ptr null, ptr @_ZL20utf8IteratorGetStatePK13UCharIterator, ptr @_ZL20utf8IteratorSetStateP13UCharIteratorjP10UErrorCode }, align 8
@.str = private unnamed_addr constant [17 x i8] c" 000000000000\1000\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\00\00\00\00\00\00\00\00\1E\0F\0F\0F\00\00\00\00\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @uiter_setString_78(ptr noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ne ptr %1, null
  %i.b = icmp sgt i32 %2, -2
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) @_ZL14stringIterator, i64 112, i1 false)
  store ptr %1, ptr %0, align 8
  %i.c = icmp sgt i32 %2, -1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @u_strlen_78(ptr noundef nonnull %1) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ %i.d, %bb.d ], [ %2, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sink, ptr %i.f, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) @_ZL12noopIterator, i64 112, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @u_strlen_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @uiter_setUTF16BE_78(ptr noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not19 = icmp eq ptr %1, null
  br i1 %.not19, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = icmp eq i32 %2, -1
  br i1 %i.a, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) @_ZL15utf16BEIterator, i64 112, i1 false)
  store ptr %1, ptr %0, align 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.f, label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.e = and i32 %2, -2147483647
  %or.cond = icmp eq i32 %i.e, 0
  br i1 %or.cond, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.f = lshr exact i32 %2, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) @_ZL15utf16BEIterator, i64 112, i1 false)
  store ptr %1, ptr %0, align 8
  br label %_ZL14utf16BE_strlenPKc.exit

bb.f:                                             ; preds = %.thread
  %i.g = tail call i32 @u_strlen_78(ptr noundef nonnull %1) #13
  br label %_ZL14utf16BE_strlenPKc.exit

.preheader.i:                                     ; preds = %.thread, %.critedge.i
  %.0.i = phi ptr [ %i.l, %.critedge.i ], [ %1, %.thread ] ; 4 uses
  %i.h = load i8, ptr %.0.i, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %.preheader.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %bb.h, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  br label %.preheader.i, !llvm.loop !5

bb.h:                                             ; preds = %bb.g
  %i.m = ptrtoint ptr %.0.i to i64
  %i.n = sub i64 %i.m, %i.b
  %i.o = sdiv i64 %i.n, 2
  %i.p = trunc i64 %i.o to i32
  br label %_ZL14utf16BE_strlenPKc.exit

_ZL14utf16BE_strlenPKc.exit:                      ; preds = %bb.h, %bb.f, %bb.e
  %.08.i.sink = phi i32 [ %i.f, %bb.e ], [ %i.g, %bb.f ], [ %i.p, %bb.h ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.08.i.sink, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.08.i.sink, ptr %i.r, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.d, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) @_ZL12noopIterator, i64 112, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %_ZL14utf16BE_strlenPKc.exit, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiter_setCharacterIterator_78(ptr noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7 = icmp eq ptr %1, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) @_ZL24characterIteratorWrapper, i64 112, i1 false)
  store ptr %1, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) @_ZL12noopIterator, i64 112, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @uiter_setReplaceable_78(ptr noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not10 = icmp eq ptr %1, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) @_ZL19replaceableIterator, i64 112, i1 false)
  store ptr %1, ptr %0, align 8
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1) #13, !inline_history !7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.d, ptr %i.f, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) @_ZL12noopIterator, i64 112, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @uiter_setUTF8_78(ptr noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ne ptr %1, null
  %i.b = icmp sgt i32 %2, -2
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) @_ZL12utf8Iterator, i64 112, i1 false)
  store ptr %1, ptr %0, align 8
  %i.c = icmp sgt i32 %2, -1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %i.e = trunc i64 %i.d to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ %i.e, %bb.d ], [ %2, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sink, ptr %i.f, align 4
  %i.g = icmp slt i32 %.sink, 2
  %spec.select = select i1 %i.g, i32 %.sink, i32 -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %spec.select, ptr %i.h, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) @_ZL12noopIterator, i64 112, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @uiter_current32_78(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef %0) #13 ; 7 uses
  %i.d = and i32 %i.c, -2048
  %i.e = icmp eq i32 %i.d, 55296
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 1024
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1) #13 ; 0 uses
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull %0) #13 ; 2 uses
  %i.m = and i32 %i.l, -1024
  %i.n = icmp eq i32 %i.m, 56320
  %i.o = shl nuw nsw i32 %i.c, 10
  %i.p = add nsw i32 %i.o, -56613888
  %i.q = add nuw nsw i32 %i.p, %i.l
  %.0 = select i1 %i.n, i32 %i.q, i32 %i.c
  %i.r = load ptr, ptr %i.h, align 8
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 1) #13 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i32 %i.u(ptr noundef nonnull %0) #13 ; 3 uses
  %i.w = and i32 %i.v, -1024
  %i.x = icmp eq i32 %i.w, 55296
  %i.y = shl nuw nsw i32 %i.v, 10
  %i.z = add nuw nsw i32 %i.c, -56613888
  %i.aa = add nsw i32 %i.z, %i.y
  %.1 = select i1 %i.x, i32 %i.aa, i32 %i.c       ; 2 uses
  %i.ab = icmp sgt i32 %i.v, -1
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i32 %i.ad(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  %.2 = phi i32 [ %.0, %bb.c ], [ %.1, %bb.e ], [ %.1, %bb.d ], [ %i.c, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @uiter_next32_78(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef %0) #13 ; 5 uses
  %i.d = and i32 %i.c, -1024
  %i.e = icmp eq i32 %i.d, 55296
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull %0) #13 ; 3 uses
  %i.h = and i32 %i.g, -1024
  %i.i = icmp eq i32 %i.h, 56320
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i32 %i.c, 10
  %i.k = add nsw i32 %i.j, -56613888
  %i.l = add nuw nsw i32 %i.k, %i.g
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.m = icmp sgt i32 %i.g, -1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 1) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  %.0 = phi i32 [ %i.l, %bb.c ], [ %i.c, %bb.e ], [ %i.c, %bb.d ], [ %i.c, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @uiter_previous32_78(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef %0) #13 ; 5 uses
  %i.d = and i32 %i.c, -1024
  %i.e = icmp eq i32 %i.d, 56320
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull %0) #13 ; 3 uses
  %i.h = and i32 %i.g, -1024
  %i.i = icmp eq i32 %i.h, 55296
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i32 %i.g, 10
  %i.k = add nuw nsw i32 %i.c, -56613888
  %i.l = add nsw i32 %i.k, %i.j
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.m = icmp sgt i32 %i.g, -1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  %.0 = phi i32 [ %i.l, %bb.c ], [ %i.c, %bb.e ], [ %i.c, %bb.d ], [ %i.c, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @uiter_getState_78(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef i32 %i.c(ptr noundef nonnull %0) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.e, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @uiter_setState_78(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %2, align 4
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 16, ptr %2, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void %i.f(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZL22stringIteratorGetIndexP13UCharIterator19UCharIteratorOrigin(ptr noundef readonly captures(none) %0, i32 noundef %1) #6 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 3, label %bb.g
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.f ], [ %i.h, %bb.e ], [ %i.b, %bb.b ], [ %i.d, %bb.c ], [ %i.f, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @_ZL18stringIteratorMoveP13UCharIteratori19UCharIteratorOrigin(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #3 {
bb.a:
  switch i32 %2, label %bb.i [
    i32 3, label %bb.f
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = add nsw i32 %i.b, %1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add nsw i32 %i.e, %1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add nsw i32 %i.h, %1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = add nsw i32 %i.k, %1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.l, %bb.e ], [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ %i.i, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp slt i32 %.0, %i.n
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.0, i32 %i.q)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %spec.select, %bb.g ], [ %i.n, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.1, ptr %i.r, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.018 = phi i32 [ %.1, %bb.h ], [ -1, %bb.a ]
  ret i32 %.018
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZL21stringIteratorHasNextP13UCharIterator(ptr noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.b, %i.d
  %i.f = zext i1 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZL25stringIteratorHasPreviousP13UCharIterator(ptr noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sgt i32 %i.b, %i.d
  %i.f = zext i1 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL21stringIteratorCurrentP13UCharIterator(ptr noundef readonly captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2
  %i.j = zext i16 %i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL18stringIteratorNextP13UCharIterator(ptr noundef captures(none) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = add nsw i32 %i.b, 1
  store i32 %i.g, ptr %i.a, align 8
  %i.h = sext i32 %i.b to i64
  %i.i = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL22stringIteratorPreviousP13UCharIterator(ptr noundef captures(none) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.g, ptr %i.a, align 8
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZL22stringIteratorGetStatePK13UCharIterator(ptr noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZL22stringIteratorSetStateP13UCharIteratorjP10UErrorCode(ptr noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef captures(address_is_null) %2) #3 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %2, align 4
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %1, %i.f
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp slt i32 %i.i, %1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 8, ptr %2, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.k, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.g, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZL12noopGetIndexP13UCharIterator19UCharIteratorOrigin(ptr readnone captures(none) %0, i32 %1) #9 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZL8noopMoveP13UCharIteratori19UCharIteratorOrigin(ptr readnone captures(none) %0, i32 %1, i32 %2) #9 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef signext i8 @_ZL11noopHasNextP13UCharIterator(ptr readnone captures(none) %0) #9 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZL11noopCurrentP13UCharIterator(ptr readnone captures(none) %0) #9 {
bb.a:
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZL12noopGetStatePK13UCharIterator(ptr readnone captures(none) %0) #9 {
bb.a:
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZL12noopSetStateP13UCharIteratorjP10UErrorCode(ptr readnone captures(none) %0, i32 %1, ptr noundef writeonly captures(none) initializes((0, 4)) %2) #10 {
bb.a:
  store i32 16, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL22utf16BEIteratorCurrentP13UCharIterator(ptr noundef readonly captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8
  %i.f = shl nsw i32 %i.b, 1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %.val, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = getelementptr i8, ptr %i.h, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.o, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL19utf16BEIteratorNextP13UCharIterator(ptr noundef captures(none) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8
  %.val = load ptr, ptr %0, align 8
  %i.g = shl nsw i32 %i.b, 1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %.val, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8
  %i.m = getelementptr i8, ptr %i.i, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = or disjoint i32 %i.l, %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.p, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL23utf16BEIteratorPreviousP13UCharIterator(ptr noundef captures(none) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.f, ptr %i.a, align 8
  %.val = load ptr, ptr %0, align 8
  %i.g = shl nsw i32 %i.f, 1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %.val, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8
  %i.m = getelementptr i8, ptr %i.i, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = or disjoint i32 %i.l, %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.p, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZL25characterIteratorGetIndexP13UCharIterator19UCharIteratorOrigin(ptr noundef readonly captures(none) %0, i32 noundef %1) #7 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 3, label %bb.g
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.i = load i32, ptr %i.h, align 4
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.f ], [ %i.l, %bb.e ], [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ %i.i, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL21characterIteratorMoveP13UCharIteratori19UCharIteratorOrigin(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  switch i32 %2, label %bb.e [
    i32 3, label %bb.b
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i16 %i.d(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %1) #13 ; 0 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %1, i32 noundef %2) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8                ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = add nsw i32 %i.p, %1
  %i.r = load ptr, ptr %i.n, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i16 %i.t(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i32 noundef %i.q) #13 ; 0 uses
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.x, %bb.d ], [ %i.h, %bb.b ], [ %i.m, %bb.c ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef signext i8 @_ZL24characterIteratorHasNextP13UCharIterator(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef signext i8 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  ret i8 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef signext i8 @_ZL28characterIteratorHasPreviousP13UCharIterator(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef signext i8 %i.d(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #13
  ret i8 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL24characterIteratorCurrentP13UCharIterator(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i16 %i.d(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #13 ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %.not = icmp eq i16 %i.e, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef signext i8 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #13
  %.not4 = icmp eq i8 %i.k, 0
  %spec.select = select i1 %.not4, i32 -1, i32 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.f, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL21characterIteratorNextP13UCharIterator(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef signext i8 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i16 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #13
  %i.k = zext i16 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL25characterIteratorPreviousP13UCharIterator(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef signext i8 %i.d(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #13
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i16 %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #13
  %i.k = zext i16 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZL25characterIteratorGetStatePK13UCharIterator(ptr noundef readonly captures(none) %0) #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL25characterIteratorSetStateP13UCharIteratorjP10UErrorCode(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef captures(address_is_null) %2) #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %0, align 8                ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %2, align 4
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp slt i32 %1, %i.h
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp slt i32 %i.k, %1
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 8, ptr %2, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.m = load ptr, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i16 %i.o(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %1) #13 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %bb.h, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL26replaceableIteratorCurrentP13UCharIterator(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i16 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.b) #13, !inline_history !8
  %i.k = zext i16 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL23replaceableIteratorNextP13UCharIterator(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = add nsw i32 %i.b, 1
  store i32 %i.g, ptr %i.a, align 8
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i16 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.b) #13, !inline_history !8
  %i.l = zext i16 %i.k to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL27replaceableIteratorPreviousP13UCharIterator(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.g, ptr %i.a, align 8
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i16 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.g) #13, !inline_history !8
  %i.l = zext i16 %i.k to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZL20utf8IteratorGetIndexP13UCharIterator19UCharIteratorOrigin(ptr noundef captures(none) %0, i32 noundef %1) #11 {
bb.a:
  switch i32 %1, label %bb.ba [
    i32 3, label %bb.bb
    i32 0, label %bb.bb
    i32 1, label %bb.b
    i32 2, label %bb.t
    i32 4, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.bb

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 6 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph234, label %._crit_edge235

.lr.ph234:                                        ; preds = %bb.c, %bb.q
  %.0156232 = phi i32 [ %i.bm, %bb.q ], [ 0, %bb.c ] ; 2 uses
  %.0162231 = phi i32 [ %.5167, %bb.q ], [ 0, %bb.c ] ; 3 uses
  %i.h = add nsw i32 %.0162231, 1                 ; 10 uses
  %i.i = sext i32 %.0162231 to i64
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1               ; 6 uses
  %i.l = zext i8 %i.k to i32                      ; 3 uses
  %i.m = icmp sgt i8 %i.k, -1
  %.not214 = icmp eq i32 %i.h, %i.f
  %or.cond = select i1 %i.m, i1 true, i1 %.not214
  br i1 %or.cond, label %bb.q, label %bb.d

bb.d:                                             ; preds = %.lr.ph234
  %i.n = icmp samesign ugt i8 %i.k, -33
  br i1 %i.n, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.o = icmp samesign ult i8 %i.k, -16
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = and i32 %i.l, 15                         ; 2 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @.str, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = sext i32 %i.h to i64
  %i.v = getelementptr inbounds i8, ptr %i.d, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %i.x = lshr i8 %i.w, 5
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 1, %i.y
  %i.aa = and i32 %i.z, %i.t
  %.not217 = icmp eq i32 %i.aa, 0
  br i1 %.not217, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = and i8 %i.w, 63
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.ac = add nsw i32 %i.l, -240                  ; 2 uses
  %i.ad = icmp samesign ult i8 %i.k, -11
  br i1 %i.ad, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ae = sext i32 %i.h to i64
  %i.af = getelementptr inbounds i8, ptr %i.d, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %i.ai = lshr i32 %i.ah, 4
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = sext i8 %i.al to i32
  %i.an = shl nuw nsw i32 1, %i.ac
  %i.ao = and i32 %i.an, %i.am
  %.not215 = icmp eq i32 %i.ao, 0
  br i1 %.not215, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = add nsw i32 %.0162231, 2                ; 4 uses
  %.not216 = icmp eq i32 %i.ap, %i.f
  br i1 %.not216, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = shl nuw nsw i32 %i.ac, 6
  %i.ar = and i32 %i.ah, 63
  %i.as = or disjoint i32 %i.ar, %i.aq
  %i.at = sext i32 %i.ap to i64
  %i.au = getelementptr inbounds i8, ptr %i.d, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = xor i8 %i.av, -128                      ; 2 uses
  %i.ax = icmp ult i8 %i.aw, 64
  br i1 %i.ax, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.g, %bb.k
  %.1163 = phi i32 [ %i.h, %bb.g ], [ %i.ap, %bb.k ]
  %.0158 = phi i32 [ %i.p, %bb.g ], [ %i.as, %bb.k ]
  %.0155 = phi i8 [ %i.ab, %bb.g ], [ %i.aw, %bb.k ]
  %i.ay = shl nuw nsw i32 %.0158, 6
  %i.az = zext nneg i8 %.0155 to i32
  %i.ba = or disjoint i32 %i.ay, %i.az
  %i.bb = add nsw i32 %.1163, 1                   ; 2 uses
  %.not218 = icmp eq i32 %i.bb, %i.f
  br i1 %.not218, label %.thread, label %bb.o

bb.m:                                             ; preds = %bb.d
  %i.bc = icmp samesign ugt i8 %i.k, -63
  br i1 %i.bc, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bd = and i32 %i.l, 31
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.2164 = phi i32 [ %i.bb, %bb.l ], [ %i.h, %bb.n ] ; 3 uses
  %.1159 = phi i32 [ %i.ba, %bb.l ], [ %i.bd, %bb.n ]
  %i.be = sext i32 %.2164 to i64
  %i.bf = getelementptr inbounds i8, ptr %i.d, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp slt i8 %i.bg, -64
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = add nsw i32 %.2164, 1
  %i.bj = icmp samesign ult i32 %.1159, 1024
  %i.bk = select i1 %i.bj, i32 1, i32 2
  br label %bb.q

.thread:                                          ; preds = %bb.l, %bb.j
  %i.bl = add nuw nsw i32 %.0156232, 1
  br label %._crit_edge235

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.i, %bb.h, %bb.f, %.lr.ph234
  %.5167 = phi i32 [ %i.h, %.lr.ph234 ], [ %i.bi, %bb.p ], [ %.2164, %bb.o ], [ %i.h, %bb.h ], [ %i.h, %bb.f ], [ %i.ap, %bb.k ], [ %i.h, %bb.m ], [ %i.h, %bb.i ] ; 3 uses
  %.3161 = phi i32 [ 1, %.lr.ph234 ], [ %i.bk, %bb.p ], [ 1, %bb.o ], [ 1, %bb.h ], [ 1, %bb.f ], [ 1, %bb.k ], [ 1, %bb.m ], [ 1, %bb.i ]
  %i.bm = add nuw nsw i32 %.3161, %.0156232       ; 2 uses
  %i.bn = icmp slt i32 %.5167, %i.f
  br i1 %i.bn, label %.lr.ph234, label %._crit_edge235, !llvm.loop !9

._crit_edge235:                                   ; preds = %bb.q, %.thread, %bb.c
  %.0162.lcssa = phi i32 [ 0, %bb.c ], [ %i.f, %.thread ], [ %.5167, %bb.q ] ; 2 uses
  %.0156.lcssa = phi i32 [ 0, %bb.c ], [ %i.bl, %.thread ], [ %i.bm, %bb.q ] ; 2 uses
  store i32 %.0162.lcssa, ptr %i.e, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = icmp eq i32 %.0162.lcssa, %i.bp
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge235
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.0156.lcssa, ptr %i.br, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge235
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bt = load i32, ptr %i.bs, align 8
  %.not213 = icmp ne i32 %i.bt, 0
  %i.bu = sext i1 %.not213 to i32
  %spec.select = add nsw i32 %.0156.lcssa, %i.bu  ; 2 uses
  store i32 %spec.select, ptr %i.a, align 8
  br label %bb.bb

bb.t:                                             ; preds = %bb.a, %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8            ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %bb.u, label %bb.bb

bb.u:                                             ; preds = %bb.t
  %i.by = load ptr, ptr %0, align 8               ; 10 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8            ; 2 uses
  %i.cb = icmp slt i32 %i.ca, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4            ; 7 uses
  br i1 %i.cb, label %bb.v, label %bb.ak

bb.v:                                             ; preds = %bb.u
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v, %bb.aj
  %.0142223 = phi i32 [ %i.ek, %bb.aj ], [ 0, %bb.v ] ; 2 uses
  %.0143222 = phi i32 [ %.5, %bb.aj ], [ 0, %bb.v ] ; 3 uses
  %i.cf = add nsw i32 %.0143222, 1                ; 10 uses
  %i.cg = sext i32 %.0143222 to i64
  %i.ch = getelementptr inbounds i8, ptr %i.by, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1             ; 6 uses
  %i.cj = zext i8 %i.ci to i32                    ; 3 uses
  %i.ck = icmp sgt i8 %i.ci, -1
  %.not208 = icmp eq i32 %i.cf, %i.cd
  %or.cond220 = select i1 %i.ck, i1 true, i1 %.not208
  br i1 %or.cond220, label %bb.aj, label %bb.w

bb.w:                                             ; preds = %.lr.ph
end_hunk_0
begin_hunk_1_@_ZL20utf8IteratorGetIndexP13UCharIterator19UCharIteratorOrigin:bb.a
  %i.ea = icmp samesign ugt i8 %i.ci, -63
  br i1 %i.ea, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.eb = and i32 %i.cj, 31
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.1147 = phi i32 [ %i.dy, %bb.ae ], [ %i.eb, %bb.ag ]
  %.2145 = phi i32 [ %i.dz, %bb.ae ], [ %i.cf, %bb.ag ] ; 3 uses
  %i.ec = sext i32 %.2145 to i64
  %i.ed = getelementptr inbounds i8, ptr %i.by, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = icmp slt i8 %i.ee, -64
  br i1 %i.ef, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eg = add nsw i32 %.2145, 1
  %i.eh = icmp samesign ult i32 %.1147, 1024
  %i.ei = select i1 %i.eh, i32 1, i32 2
  br label %bb.aj

.thread265:                                       ; preds = %bb.ae, %bb.ac
  %i.ej = add nuw nsw i32 %.0142223, 1
  br label %._crit_edge

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.aa, %bb.y, %.lr.ph
  %.3149 = phi i32 [ 1, %.lr.ph ], [ %i.ei, %bb.ai ], [ 1, %bb.ah ], [ 1, %bb.af ], [ 1, %bb.aa ], [ 1, %bb.ad ], [ 1, %bb.y ], [ 1, %bb.ab ]
  %.5 = phi i32 [ %i.cf, %.lr.ph ], [ %i.eg, %bb.ai ], [ %.2145, %bb.ah ], [ %i.cf, %bb.af ], [ %i.cf, %bb.aa ], [ %i.dn, %bb.ad ], [ %i.cf, %bb.y ], [ %i.cf, %bb.ab ] ; 3 uses
  %i.ek = add nuw nsw i32 %.3149, %.0142223       ; 2 uses
  %i.el = icmp slt i32 %.5, %i.cd
  br i1 %i.el, label %.lr.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.aj, %.thread265, %bb.v
  %.0143.lcssa = phi i32 [ 0, %bb.v ], [ %i.cd, %.thread265 ], [ %.5, %bb.aj ] ; 2 uses
  %.0142.lcssa = phi i32 [ 0, %bb.v ], [ %i.ej, %.thread265 ], [ %i.ek, %bb.aj ] ; 2 uses
  store i32 %.0143.lcssa, ptr %i.cc, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = load i32, ptr %i.em, align 8
  %.not202 = icmp ne i32 %i.en, 0
  %i.eo = sext i1 %.not202 to i32
  %i.ep = add nsw i32 %.0142.lcssa, %i.eo
  store i32 %i.ep, ptr %i.bz, align 8
  br label %bb.al

bb.ak:                                            ; preds = %bb.u
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.er = load i32, ptr %i.eq, align 8
  %.not = icmp ne i32 %i.er, 0
  %i.es = zext i1 %.not to i32
  %spec.select219 = add nuw nsw i32 %i.ca, %i.es
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge
  %.6 = phi i32 [ %.0143.lcssa, %._crit_edge ], [ %i.cd, %bb.ak ] ; 2 uses
  %.1 = phi i32 [ %.0142.lcssa, %._crit_edge ], [ %spec.select219, %bb.ak ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eu = load i32, ptr %i.et, align 4            ; 5 uses
  %i.ev = icmp slt i32 %.6, %i.eu
  br i1 %i.ev, label %.lr.ph228, label %._crit_edge229

.lr.ph228:                                        ; preds = %bb.al, %bb.az
  %.2226 = phi i32 [ %i.hb, %bb.az ], [ %.1, %bb.al ] ; 2 uses
  %.7225 = phi i32 [ %.12, %bb.az ], [ %.6, %bb.al ] ; 3 uses
  %i.ew = add nsw i32 %.7225, 1                   ; 10 uses
  %i.ex = sext i32 %.7225 to i64
  %i.ey = getelementptr inbounds i8, ptr %i.by, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1             ; 6 uses
  %i.fa = zext i8 %i.ez to i32                    ; 3 uses
  %i.fb = icmp sgt i8 %i.ez, -1
  %.not203 = icmp eq i32 %i.ew, %i.eu
  %or.cond221 = select i1 %i.fb, i1 true, i1 %.not203
  br i1 %or.cond221, label %bb.az, label %bb.am

bb.am:                                            ; preds = %.lr.ph228
  %i.fc = icmp samesign ugt i8 %i.ez, -33
  br i1 %i.fc, label %bb.an, label %bb.av

bb.an:                                            ; preds = %bb.am
  %i.fd = icmp samesign ult i8 %i.ez, -16
  br i1 %i.fd, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.fe = and i32 %i.fa, 15                       ; 2 uses
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = zext i8 %i.fh to i32
  %i.fj = sext i32 %i.ew to i64
  %i.fk = getelementptr inbounds i8, ptr %i.by, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1             ; 2 uses
  %i.fm = lshr i8 %i.fl, 5
  %i.fn = zext nneg i8 %i.fm to i32
  %i.fo = shl nuw nsw i32 1, %i.fn
  %i.fp = and i32 %i.fo, %i.fi
  %.not206 = icmp eq i32 %i.fp, 0
  br i1 %.not206, label %bb.az, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fq = and i8 %i.fl, 63
  br label %bb.au

bb.aq:                                            ; preds = %bb.an
  %i.fr = add nsw i32 %i.fa, -240                 ; 2 uses
  %i.fs = icmp samesign ult i8 %i.ez, -11
  br i1 %i.fs, label %bb.ar, label %bb.az

bb.ar:                                            ; preds = %bb.aq
  %i.ft = sext i32 %i.ew to i64
  %i.fu = getelementptr inbounds i8, ptr %i.by, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = zext i8 %i.fv to i32                    ; 2 uses
  %i.fx = lshr i32 %i.fw, 4
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = sext i8 %i.ga to i32
  %i.gc = shl nuw nsw i32 1, %i.fr
  %i.gd = and i32 %i.gc, %i.gb
  %.not204 = icmp eq i32 %i.gd, 0
  br i1 %.not204, label %bb.az, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ge = add nsw i32 %.7225, 2                   ; 4 uses
  %.not205 = icmp eq i32 %i.ge, %i.eu
  br i1 %.not205, label %.thread270, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gf = shl nuw nsw i32 %i.fr, 6
  %i.gg = and i32 %i.fw, 63
  %i.gh = or disjoint i32 %i.gg, %i.gf
  %i.gi = sext i32 %i.ge to i64
  %i.gj = getelementptr inbounds i8, ptr %i.by, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1
  %i.gl = xor i8 %i.gk, -128                      ; 2 uses
  %i.gm = icmp ult i8 %i.gl, 64
  br i1 %i.gm, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.ap, %bb.at
  %.4150 = phi i32 [ %i.fe, %bb.ap ], [ %i.gh, %bb.at ]
  %.8 = phi i32 [ %i.ew, %bb.ap ], [ %i.ge, %bb.at ]
  %.0 = phi i8 [ %i.fq, %bb.ap ], [ %i.gl, %bb.at ]
  %i.gn = shl nuw nsw i32 %.4150, 6
  %i.go = zext nneg i8 %.0 to i32
  %i.gp = or disjoint i32 %i.gn, %i.go
  %i.gq = add nsw i32 %.8, 1                      ; 2 uses
  %.not207 = icmp eq i32 %i.gq, %i.eu
  br i1 %.not207, label %.thread270, label %bb.ax

bb.av:                                            ; preds = %bb.am
  %i.gr = icmp samesign ugt i8 %i.ez, -63
  br i1 %i.gr, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.gs = and i32 %i.fa, 31
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %.5151 = phi i32 [ %i.gp, %bb.au ], [ %i.gs, %bb.aw ]
  %.9 = phi i32 [ %i.gq, %bb.au ], [ %i.ew, %bb.aw ] ; 3 uses
  %i.gt = sext i32 %.9 to i64
  %i.gu = getelementptr inbounds i8, ptr %i.by, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1
  %i.gw = icmp slt i8 %i.gv, -64
  br i1 %i.gw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gx = add nsw i32 %.9, 1
  %i.gy = icmp samesign ult i32 %.5151, 1024
  %i.gz = select i1 %i.gy, i32 1, i32 2
  br label %bb.az

.thread270:                                       ; preds = %bb.au, %bb.as
  %i.ha = add nsw i32 %.2226, 1
  br label %._crit_edge229

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.aq, %bb.ao, %.lr.ph228
  %.7153 = phi i32 [ 1, %.lr.ph228 ], [ %i.gz, %bb.ay ], [ 1, %bb.ax ], [ 1, %bb.av ], [ 1, %bb.aq ], [ 1, %bb.at ], [ 1, %bb.ao ], [ 1, %bb.ar ]
  %.12 = phi i32 [ %i.ew, %.lr.ph228 ], [ %i.gx, %bb.ay ], [ %.9, %bb.ax ], [ %i.ew, %bb.av ], [ %i.ew, %bb.aq ], [ %i.ge, %bb.at ], [ %i.ew, %bb.ao ], [ %i.ew, %bb.ar ] ; 2 uses
  %i.hb = add nsw i32 %.7153, %.2226              ; 2 uses
  %i.hc = icmp slt i32 %.12, %i.eu
  br i1 %i.hc, label %.lr.ph228, label %._crit_edge229, !llvm.loop !11

._crit_edge229:                                   ; preds = %bb.az, %.thread270, %bb.al
  %.2.lcssa = phi i32 [ %.1, %bb.al ], [ %i.ha, %.thread270 ], [ %i.hb, %bb.az ] ; 2 uses
  store i32 %.2.lcssa, ptr %i.bv, align 8
  br label %bb.bb

bb.ba:                                            ; preds = %bb.a
  br label %bb.bb

bb.bb:                                            ; preds = %bb.t, %._crit_edge229, %bb.b, %bb.s, %bb.a, %bb.a, %bb.ba
  %.0154 = phi i32 [ -1, %bb.ba ], [ %i.b, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ], [ %spec.select, %bb.s ], [ %.2.lcssa, %._crit_edge229 ], [ %i.bw, %bb.t ]
  ret i32 %.0154
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL16utf8IteratorMoveP13UCharIteratori19UCharIteratorOrigin(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  switch i32 %2, label %bb.bc [
    i32 3, label %bb.g
    i32 0, label %bb.g
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.c, %1
  br label %bb.g

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %i.g, %1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.n, align 8
  %i.o = icmp sgt i32 %1, -1
  br i1 %i.o, label %bb.bc, label %bb.q

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.a, %bb.a
  %.0144 = phi i32 [ %1, %bb.a ], [ %i.e, %bb.c ], [ %1, %bb.a ], [ %i.i, %bb.e ] ; 6 uses
  %i.p = icmp slt i32 %.0144, 1
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.s, align 8
  br label %bb.bc

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8              ; 7 uses
  %or.cond = icmp ugt i32 %i.u, %.0144
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = load i32, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.x, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.z, align 8
  br label %bb.bc

bb.k:                                             ; preds = %bb.i
  %i.aa = load i32, ptr %i.v, align 8             ; 5 uses
  %i.ab = icmp slt i32 %i.aa, 0
  %i.ac = lshr i32 %i.aa, 1
  %i.ad = icmp samesign ult i32 %.0144, %i.ac
  %or.cond188 = or i1 %i.ab, %i.ad
  br i1 %or.cond188, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.af, align 4
  store i32 0, ptr %i.v, align 8
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp sgt i32 %i.u, -1
  br i1 %i.ag, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ah = sub nsw i32 %i.u, %.0144
  %i.ai = sub nsw i32 %.0144, %i.aa
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %i.u, ptr %i.v, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.al, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.an, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.l
  %i.ao = phi i32 [ %i.aa, %bb.m ], [ %i.aa, %bb.n ], [ %i.u, %bb.o ], [ 0, %bb.l ] ; 3 uses
  %i.ap = sub nsw i32 %.0144, %i.ao               ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.bc, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p
  %.phi.trans.insert210 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre211 = load i32, ptr %.phi.trans.insert210, align 4
  br label %bb.u

.critedge:                                        ; preds = %bb.b
  %.old = icmp eq i32 %1, 0
  br i1 %.old, label %bb.bc, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.q

bb.q:                                             ; preds = %.critedge._crit_edge, %bb.f
  %i.ar = phi i32 [ %i.c, %.critedge._crit_edge ], [ -1, %bb.f ]
  %i.as = phi i32 [ %.pre, %.critedge._crit_edge ], [ %i.l, %bb.f ] ; 3 uses
  %i.at = sub nsw i32 0, %1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.not177 = icmp sgt i32 %i.as, %i.at
  br i1 %.not177, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.av, align 8
  store i32 0, ptr %i.au, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.aw, align 8
  br label %bb.bc

bb.s:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = sub nsw i32 %i.ay, %i.as
  %.not178 = icmp slt i32 %1, %i.az
  br i1 %.not178, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load i32, ptr %i.ba, align 8            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bb, ptr %i.bc, align 8
  store i32 %i.ay, ptr %i.au, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.bd, align 8
  %i.be = icmp sgt i32 %i.bb, -1
  %spec.select = select i1 %i.be, i32 %i.bb, i32 -2
  br label %bb.bc

bb.u:                                             ; preds = %._crit_edge, %bb.s
  %.promoted = phi i32 [ %.pre211, %._crit_edge ], [ %i.as, %bb.s ] ; 5 uses
  %i.bf = phi i32 [ %i.ao, %._crit_edge ], [ %i.ar, %bb.s ] ; 6 uses
  %.0150 = phi i32 [ %i.ap, %._crit_edge ], [ %1, %bb.s ] ; 5 uses
  %i.bg = load ptr, ptr %0, align 8               ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bj = icmp sgt i32 %.0150, 0
  br i1 %i.bj, label %bb.v, label %bb.as

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bl = load i32, ptr %i.bk, align 4            ; 12 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8
  %.not181 = icmp eq i32 %i.bn, 0
  br i1 %.not181, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bm, align 8
  %i.bo = add nsw i32 %i.bf, 1
  %i.bp = add nsw i32 %.0150, -1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1151 = phi i32 [ %i.bp, %bb.w ], [ %.0150, %bb.v ] ; 2 uses
  %.1 = phi i32 [ %i.bo, %bb.w ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bq = icmp ne i32 %.1151, 0
  %i.br = icmp slt i32 %.promoted, %i.bl
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %i.bs, label %.lr.ph205, label %.loopexit

.lr.ph205:                                        ; preds = %bb.x, %.thread
  %.2204 = phi i32 [ %i.eg, %.thread ], [ %.1, %bb.x ] ; 2 uses
  %.2152203 = phi i32 [ %i.eh, %.thread ], [ %.1151, %bb.x ] ; 2 uses
  %i.bt = phi i32 [ %i.ef, %.thread ], [ %.promoted, %bb.x ] ; 3 uses
  %i.bu = add nsw i32 %i.bt, 1                    ; 10 uses
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds i8, ptr %i.bg, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1             ; 6 uses
  %i.by = zext i8 %i.bx to i32                    ; 3 uses
  %i.bz = icmp sgt i8 %i.bx, -1
  %.not182 = icmp eq i32 %i.bu, %i.bl
  %or.cond195 = select i1 %i.bz, i1 true, i1 %.not182
  br i1 %or.cond195, label %.thread, label %bb.y

bb.y:                                             ; preds = %.lr.ph205
  %i.ca = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.ca, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %bb.y
  %i.cb = icmp samesign ult i8 %i.bx, -16
  br i1 %i.cb, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.cc = and i32 %i.by, 15                       ; 2 uses
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @.str, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i32
  %i.ch = sext i32 %i.bu to i64
  %i.ci = getelementptr inbounds i8, ptr %i.bg, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1             ; 2 uses
  %i.ck = lshr i8 %i.cj, 5
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 1, %i.cl
  %i.cn = and i32 %i.cm, %i.cg
  %.not185 = icmp eq i32 %i.cn, 0
  br i1 %.not185, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = and i8 %i.cj, 63
  br label %bb.ag

bb.ac:                                            ; preds = %bb.z
  %i.cp = add nsw i32 %i.by, -240                 ; 2 uses
  %i.cq = icmp samesign ult i8 %i.bx, -11
  br i1 %i.cq, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.cr = sext i32 %i.bu to i64
  %i.cs = getelementptr inbounds i8, ptr %i.bg, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i32                    ; 2 uses
  %i.cv = lshr i32 %i.cu, 4
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = sext i8 %i.cy to i32
  %i.da = shl nuw nsw i32 1, %i.cp
  %i.db = and i32 %i.da, %i.cz
  %.not183 = icmp eq i32 %i.db, 0
  br i1 %.not183, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dc = add nsw i32 %i.bt, 2                    ; 4 uses
  %.not184 = icmp eq i32 %i.dc, %i.bl
  br i1 %.not184, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dd = shl nuw nsw i32 %i.cp, 6
  %i.de = and i32 %i.cu, 63
  %i.df = or disjoint i32 %i.de, %i.dd
  %i.dg = sext i32 %i.dc to i64
  %i.dh = getelementptr inbounds i8, ptr %i.bg, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = xor i8 %i.di, -128                      ; 2 uses
  %i.dk = icmp ult i8 %i.dj, 64
  br i1 %i.dk, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.ab, %bb.af
  %i.dl = phi i32 [ %i.bu, %bb.ab ], [ %i.dc, %bb.af ]
  %.0145 = phi i32 [ %i.cc, %bb.ab ], [ %i.df, %bb.af ]
  %.0 = phi i8 [ %i.co, %bb.ab ], [ %i.dj, %bb.af ]
  %i.dm = shl nuw nsw i32 %.0145, 6
  %i.dn = zext nneg i8 %.0 to i32
  %i.do = or disjoint i32 %i.dm, %i.dn
  %i.dp = add nsw i32 %i.dl, 1                    ; 2 uses
  %.not186 = icmp eq i32 %i.dp, %i.bl
  br i1 %.not186, label %.thread, label %bb.aj

bb.ah:                                            ; preds = %bb.y
  %i.dq = icmp samesign ugt i8 %i.bx, -63
  br i1 %i.dq, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.dr = and i32 %i.by, 31
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %i.ds = phi i32 [ %i.dp, %bb.ag ], [ %i.bu, %bb.ai ] ; 3 uses
  %.1146 = phi i32 [ %i.do, %bb.ag ], [ %i.dr, %bb.ai ] ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %i.bg, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = xor i8 %i.dv, -128                      ; 2 uses
  %i.dx = icmp ult i8 %i.dw, 64
  br i1 %i.dx, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  %i.dy = add nsw i32 %i.ds, 1                    ; 3 uses
  %i.dz = icmp samesign ult i32 %.1146, 1024
  br i1 %i.dz, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ea = icmp sgt i32 %.2152203, 1
  br i1 %i.ea, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eb = zext nneg i8 %i.dw to i32
  %i.ec = shl nuw nsw i32 %.1146, 6
  %i.ed = or disjoint i32 %i.ec, %i.eb
  store i32 %i.ed, ptr %i.bm, align 8
  %i.ee = add nsw i32 %.2204, 1
  br label %.loopexit

.thread:                                          ; preds = %bb.al, %bb.ak, %.lr.ph205, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %.sink242 = phi i32 [ 1, %bb.ak ], [ 1, %bb.aa ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.aj ], [ 1, %.lr.ph205 ], [ 2, %bb.al ]
  %.sink = phi i32 [ -1, %bb.ak ], [ -1, %bb.aa ], [ -1, %bb.ac ], [ -1, %bb.ad ], [ -1, %bb.ae ], [ -1, %bb.af ], [ -1, %bb.ag ], [ -1, %bb.ah ], [ -1, %bb.aj ], [ -1, %.lr.ph205 ], [ -2, %bb.al ]
  %i.ef = phi i32 [ %i.dy, %bb.ak ], [ %i.bu, %bb.aa ], [ %i.bu, %bb.ac ], [ %i.bu, %bb.ad ], [ %i.bl, %bb.ae ], [ %i.dc, %bb.af ], [ %i.bl, %bb.ag ], [ %i.bu, %bb.ah ], [ %i.ds, %bb.aj ], [ %i.bu, %.lr.ph205 ], [ %i.dy, %bb.al ] ; 3 uses
  %i.eg = add nsw i32 %.2204, %.sink242           ; 2 uses
  %i.eh = add nsw i32 %.2152203, %.sink           ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, 0
  %i.ej = icmp slt i32 %i.ef, %i.bl
  %i.ek = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %i.ek, label %.lr.ph205, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %.thread, %bb.x, %bb.am
  %i.el = phi i32 [ -1, %bb.am ], [ 0, %bb.x ], [ 0, %.thread ]
  %i.em = phi i32 [ 1, %bb.am ], [ 0, %bb.x ], [ 0, %.thread ]
  %i.en = phi i32 [ %i.dy, %bb.am ], [ %.promoted, %bb.x ], [ %i.ef, %.thread ] ; 2 uses
  %.4 = phi i32 [ %i.ee, %bb.am ], [ %.1, %bb.x ], [ %i.eg, %.thread ] ; 6 uses
  %i.eo = icmp eq i32 %i.en, %i.bl
  br i1 %i.eo, label %bb.an, label %thread-pre-split

bb.an:                                            ; preds = %.loopexit
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8            ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.es = icmp sgt i32 %i.bf, -1
  br i1 %i.es, label %bb.ap, label %thread-pre-split

bb.ap:                                            ; preds = %bb.ao
  %i.et = add nsw i32 %.4, %i.em
  store i32 %i.et, ptr %i.ep, align 8
  br label %thread-pre-split

bb.aq:                                            ; preds = %bb.an
  %i.eu = icmp slt i32 %i.bf, 0
  br i1 %i.eu, label %bb.ar, label %thread-pre-split

bb.ar:                                            ; preds = %bb.aq
  %i.ev = add nsw i32 %i.eq, %i.el                ; 2 uses
  store i32 %i.ev, ptr %i.bh, align 8
  br label %bb.ay

bb.as:                                            ; preds = %bb.u
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 8
  %.not180 = icmp eq i32 %i.ex, 0
  br i1 %.not180, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.ew, align 8
  %i.ey = add nsw i32 %.promoted, -4
  %i.ez = add nsw i32 %i.bf, -1
  %i.fa = add nsw i32 %.0150, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fb = phi i32 [ %i.ey, %bb.at ], [ %.promoted, %bb.as ] ; 3 uses
  %.4154 = phi i32 [ %i.fa, %bb.at ], [ %.0150, %bb.as ] ; 2 uses
  %.5 = phi i32 [ %i.ez, %bb.at ], [ %i.bf, %bb.as ] ; 2 uses
  %i.fc = icmp slt i32 %.4154, 0
  %i.fd = icmp sgt i32 %i.fb, 0
  %i.fe = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %i.fe, label %.lr.ph, label %thread-pre-split

.lr.ph:                                           ; preds = %bb.au, %.thread193
  %i.ff = phi i32 [ %i.fv, %.thread193 ], [ %i.fb, %bb.au ]
  %.6200 = phi i32 [ %i.fs, %.thread193 ], [ %.5, %bb.au ] ; 2 uses
  %.5155199 = phi i32 [ %i.ft, %.thread193 ], [ %.4154, %bb.au ] ; 2 uses
  %i.fg = add nsw i32 %i.ff, -1                   ; 2 uses
  store i32 %i.fg, ptr %i.a, align 4
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1             ; 2 uses
  %i.fk = icmp sgt i8 %i.fj, -1
  br i1 %i.fk, label %.thread193, label %bb.av

bb.av:                                            ; preds = %.lr.ph
  %i.fl = zext i8 %i.fj to i32
  %i.fm = call i32 @utf8_prevCharSafeBody_78(ptr noundef nonnull %i.bg, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef %i.fl, i8 noundef signext -3) #13 ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 65536
  br i1 %i.fn, label %.thread193, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fo = icmp slt i32 %.5155199, -1
  br i1 %i.fo, label %.thread193, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fp = load i32, ptr %i.a, align 4
  %i.fq = add nsw i32 %i.fp, 4
  store i32 %i.fm, ptr %i.ew, align 8
  %i.fr = add nsw i32 %.6200, -1
  br label %thread-pre-split

.thread193:                                       ; preds = %bb.aw, %bb.av, %.lr.ph
  %.sink244 = phi i32 [ -1, %bb.av ], [ -1, %.lr.ph ], [ -2, %bb.aw ]
  %.sink243 = phi i32 [ 1, %bb.av ], [ 1, %.lr.ph ], [ 2, %bb.aw ]
  %i.fs = add nsw i32 %.6200, %.sink244           ; 2 uses
  %i.ft = add nsw i32 %.5155199, %.sink243        ; 2 uses
  %i.fu = icmp slt i32 %i.ft, 0
  %i.fv = load i32, ptr %i.a, align 4             ; 3 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  %i.fx = select i1 %i.fu, i1 %i.fw, i1 false
  br i1 %i.fx, label %.lr.ph, label %thread-pre-split, !llvm.loop !13

thread-pre-split:                                 ; preds = %.thread193, %bb.au, %bb.ax, %bb.ap, %bb.aq, %.loopexit, %bb.ao
  %i.fy = phi i32 [ %i.bl, %bb.ao ], [ %i.bl, %bb.aq ], [ %i.en, %.loopexit ], [ %i.bl, %bb.ap ], [ %i.fq, %bb.ax ], [ %i.fb, %bb.au ], [ %i.fv, %.thread193 ]
  %.8.ph = phi i32 [ %.4, %bb.ao ], [ %.4, %bb.aq ], [ %.4, %.loopexit ], [ %.4, %bb.ap ], [ %i.fr, %bb.ax ], [ %.5, %bb.au ], [ %i.fs, %.thread193 ]
  %.pr = load i32, ptr %i.bh, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %thread-pre-split, %bb.ar
  %i.fz = phi i32 [ %i.fy, %thread-pre-split ], [ %i.bl, %bb.ar ] ; 4 uses
  %i.ga = phi i32 [ %.pr, %thread-pre-split ], [ %i.ev, %bb.ar ]
  %.8 = phi i32 [ %.8.ph, %thread-pre-split ], [ %.4, %bb.ar ] ; 2 uses
  store i32 %i.fz, ptr %i.bi, align 4
  %i.gb = icmp sgt i32 %i.ga, -1
  br i1 %i.gb, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 %.8, ptr %i.bh, align 8
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  %i.gc = icmp slt i32 %i.fz, 2
  br i1 %i.gc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 %i.fz, ptr %i.bh, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %.critedge, %bb.p, %bb.a, %bb.f, %bb.bb, %bb.az, %bb.t, %bb.r, %bb.j, %bb.h
  %.0142 = phi i32 [ -2, %bb.f ], [ 0, %bb.h ], [ %i.u, %bb.j ], [ -1, %bb.a ], [ %.8, %bb.az ], [ %i.fz, %bb.bb ], [ -2, %.critedge ], [ %i.ao, %bb.p ], [ 0, %bb.r ], [ %spec.select, %bb.t ], [ -2, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0142
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZL19utf8IteratorHasNextP13UCharIterator(ptr noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i8 [ 1, %bb.a ], [ %i.i, %bb.b ]
  ret i8 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZL23utf8IteratorHasPreviousP13UCharIterator(ptr noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = zext i1 %i.c to i8
  ret i8 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL19utf8IteratorCurrentP13UCharIterator(ptr noundef readonly captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.b, 1023
  %i.d = or disjoint i32 %i.c, 56320
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4              ; 4 uses
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8                ; 5 uses
  %i.k = add nsw i32 %i.f, 1                      ; 5 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1               ; 6 uses
  %i.o = zext i8 %i.n to i32                      ; 4 uses
  %i.p = icmp sgt i8 %i.n, -1
  br i1 %i.p, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not56 = icmp eq i32 %i.k, %i.h
  br i1 %.not56, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp samesign ugt i8 %i.n, -33
  br i1 %i.q, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.r = icmp samesign ult i8 %i.n, -16
  br i1 %i.r, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.s = and i32 %i.o, 15                         ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @.str, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i32
  %i.x = sext i32 %i.k to i64
  %i.y = getelementptr inbounds i8, ptr %i.j, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1               ; 2 uses
  %i.aa = lshr i8 %i.z, 5
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 1, %i.ab
  %i.ad = and i32 %i.ac, %i.w
  %.not59 = icmp eq i32 %i.ad, 0
  br i1 %.not59, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = and i8 %i.z, 63
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.o, -240                  ; 2 uses
  %i.ag = icmp samesign ult i8 %i.n, -11
  br i1 %i.ag, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ah = sext i32 %i.k to i64
  %i.ai = getelementptr inbounds i8, ptr %i.j, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = lshr i32 %i.ak, 4
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = sext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 1, %i.af
  %i.ar = and i32 %i.aq, %i.ap
  %.not57 = icmp eq i32 %i.ar, 0
  br i1 %.not57, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = add nsw i32 %i.f, 2                     ; 3 uses
  %.not58 = icmp eq i32 %i.as, %i.h
  br i1 %.not58, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = shl nuw nsw i32 %i.af, 6
  %i.au = and i32 %i.ak, 63
  %i.av = or disjoint i32 %i.au, %i.at
  %i.aw = sext i32 %i.as to i64
  %i.ax = getelementptr inbounds i8, ptr %i.j, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = xor i8 %i.ay, -128                      ; 2 uses
  %i.ba = icmp ult i8 %i.az, 64
  br i1 %i.ba, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.i, %bb.m
  %.042 = phi i32 [ %i.s, %bb.i ], [ %i.av, %bb.m ]
  %.041 = phi i32 [ %i.k, %bb.i ], [ %i.as, %bb.m ]
  %.0 = phi i8 [ %i.ae, %bb.i ], [ %i.az, %bb.m ]
  %i.bb = shl nuw nsw i32 %.042, 6
  %i.bc = zext nneg i8 %.0 to i32
  %i.bd = or disjoint i32 %i.bb, %i.bc
  %i.be = add nsw i32 %.041, 1                    ; 2 uses
  %.not60 = icmp eq i32 %i.be, %i.h
  br i1 %.not60, label %.thread, label %bb.q

bb.o:                                             ; preds = %bb.f
  %i.bf = icmp samesign ugt i8 %i.n, -63
  br i1 %i.bf, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bg = and i32 %i.o, 31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.143 = phi i32 [ %i.bd, %bb.n ], [ %i.bg, %bb.p ]
  %.1 = phi i32 [ %i.be, %bb.n ], [ %i.k, %bb.p ]
  %i.bh = sext i32 %.1 to i64
  %i.bi = getelementptr inbounds i8, ptr %i.j, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = xor i8 %i.bj, -128                      ; 2 uses
  %i.bl = icmp ult i8 %i.bk, 64
  br i1 %i.bl, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %.143.fr = freeze i32 %.143                     ; 3 uses
  %i.bm = zext nneg i8 %i.bk to i32
  %i.bn = shl nuw nsw i32 %.143.fr, 6
  %i.bo = or disjoint i32 %i.bn, %i.bm
  %i.bp = icmp ult i32 %.143.fr, 1024
  %i.bq = lshr i32 %.143.fr, 4
  %i.br = add nuw nsw i32 %i.bq, 55232
  %spec.select = select i1 %i.bp, i32 %i.bo, i32 %i.br
  br label %.thread

.thread:                                          ; preds = %bb.r, %bb.e, %bb.h, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.q, %bb.d, %bb.c, %bb.b
  %.145 = phi i32 [ %i.d, %bb.b ], [ -1, %bb.c ], [ %spec.select, %bb.r ], [ %i.o, %bb.d ], [ 65533, %bb.e ], [ 65533, %bb.h ], [ 65533, %bb.j ], [ 65533, %bb.k ], [ 65533, %bb.l ], [ 65533, %bb.m ], [ 65533, %bb.n ], [ 65533, %bb.o ], [ 65533, %bb.q ]
  ret i32 %.145
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL16utf8IteratorNextP13UCharIterator(ptr noundef captures(none) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.b, 1023
  %i.d = or disjoint i32 %i.c, 56320              ; 2 uses
  store i32 0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw nsw i32 %i.f, 1
  store i32 %i.h, ptr %i.e, align 8
  br label %bb.ab

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.j = load i32, ptr %i.i, align 4              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4              ; 9 uses
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.ab

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %0, align 8                ; 5 uses
  %i.o = add nsw i32 %i.j, 1                      ; 11 uses
  store i32 %i.o, ptr %i.i, align 4
  %i.p = sext i32 %i.j to i64
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1               ; 6 uses
  %i.s = zext i8 %i.r to i32                      ; 4 uses
  %i.t = icmp sgt i8 %i.r, -1
  br i1 %i.t, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not78 = icmp eq i32 %i.o, %i.l
  br i1 %.not78, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp samesign ugt i8 %i.r, -33
  br i1 %i.u, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.v = icmp samesign ult i8 %i.r, -16
  br i1 %i.v, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = and i32 %i.s, 15                         ; 2 uses
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @.str, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = sext i32 %i.o to i64
  %i.ac = getelementptr inbounds i8, ptr %i.n, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1             ; 2 uses
  %i.ae = lshr i8 %i.ad, 5
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 1, %i.af
  %i.ah = and i32 %i.ag, %i.aa
  %.not81 = icmp eq i32 %i.ah, 0
  br i1 %.not81, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = and i8 %i.ad, 63
  br label %bb.o

bb.k:                                             ; preds = %bb.h
  %i.aj = add nsw i32 %i.s, -240                  ; 2 uses
  %i.ak = icmp samesign ult i8 %i.r, -11
  br i1 %i.ak, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.al = sext i32 %i.o to i64
  %i.am = getelementptr inbounds i8, ptr %i.n, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32                    ; 2 uses
  %i.ap = lshr i32 %i.ao, 4
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = sext i8 %i.as to i32
  %i.au = shl nuw nsw i32 1, %i.aj
  %i.av = and i32 %i.au, %i.at
  %.not79 = icmp eq i32 %i.av, 0
  br i1 %.not79, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = add nsw i32 %i.j, 2                     ; 5 uses
  store i32 %i.aw, ptr %i.i, align 4
  %.not80 = icmp eq i32 %i.aw, %i.l
  br i1 %.not80, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = shl nuw nsw i32 %i.aj, 6
  %i.ay = and i32 %i.ao, 63
  %i.az = or disjoint i32 %i.ay, %i.ax
  %i.ba = sext i32 %i.aw to i64
  %i.bb = getelementptr inbounds i8, ptr %i.n, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = xor i8 %i.bc, -128                      ; 2 uses
  %i.be = icmp ult i8 %i.bd, 64
  br i1 %i.be, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.j, %bb.n
  %i.bf = phi i32 [ %i.o, %bb.j ], [ %i.aw, %bb.n ]
  %.064 = phi i32 [ %i.w, %bb.j ], [ %i.az, %bb.n ]
  %.0 = phi i8 [ %i.ai, %bb.j ], [ %i.bd, %bb.n ]
  %i.bg = shl nuw nsw i32 %.064, 6
  %i.bh = zext nneg i8 %.0 to i32
  %i.bi = or disjoint i32 %i.bg, %i.bh
  %i.bj = add nsw i32 %i.bf, 1                    ; 3 uses
  store i32 %i.bj, ptr %i.i, align 4
  %.not82 = icmp eq i32 %i.bj, %i.l
  br i1 %.not82, label %bb.t, label %bb.r

bb.p:                                             ; preds = %bb.g
  %i.bk = icmp samesign ugt i8 %i.r, -63
  br i1 %i.bk, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bl = and i32 %i.s, 31
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.bm = phi i32 [ %i.bj, %bb.o ], [ %i.o, %bb.q ] ; 3 uses
  %.1 = phi i32 [ %i.bi, %bb.o ], [ %i.bl, %bb.q ]
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.n, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = xor i8 %i.bp, -128                      ; 2 uses
  %i.br = icmp ult i8 %i.bq, 64
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = zext nneg i8 %i.bq to i32
  %i.bt = shl nuw nsw i32 %.1, 6
  %i.bu = or disjoint i32 %i.bt, %i.bs
  %i.bv = add nsw i32 %i.bm, 1                    ; 2 uses
  store i32 %i.bv, ptr %i.i, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.f, %bb.e
  %i.bw = phi i32 [ %i.o, %bb.e ], [ %i.bv, %bb.s ], [ %i.bm, %bb.r ], [ %i.o, %bb.p ], [ %i.l, %bb.o ], [ %i.aw, %bb.n ], [ %i.l, %bb.m ], [ %i.o, %bb.l ], [ %i.o, %bb.k ], [ %i.o, %bb.i ], [ %i.l, %bb.f ] ; 2 uses
  %.3 = phi i32 [ %i.s, %bb.e ], [ %i.bu, %bb.s ], [ 65533, %bb.r ], [ 65533, %bb.p ], [ 65533, %bb.o ], [ 65533, %bb.n ], [ 65533, %bb.m ], [ 65533, %bb.l ], [ 65533, %bb.k ], [ 65533, %bb.i ], [ 65533, %bb.f ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8            ; 3 uses
  %i.bz = icmp sgt i32 %i.by, -1
  br i1 %i.bz, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ca = add nuw nsw i32 %i.by, 1                ; 2 uses
  store i32 %i.ca, ptr %i.bx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = icmp slt i32 %i.cc, 0
  %i.ce = icmp eq i32 %i.bw, %i.l
  %or.cond = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.cf = icmp samesign ult i32 %.3, 65536
  %i.cg = add nuw nsw i32 %i.by, 2
  %i.ch = select i1 %i.cf, i32 %i.ca, i32 %i.cg
  store i32 %i.ch, ptr %i.cb, align 8
  br label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.ci = icmp eq i32 %i.bw, %i.l
  br i1 %i.ci, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = load i32, ptr %i.cj, align 8            ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, -1
  br i1 %i.cl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cm = icmp samesign ugt i32 %.3, 65535
  %i.cn = sext i1 %i.cm to i32
  %i.co = add nsw i32 %i.ck, %i.cn
  store i32 %i.co, ptr %i.bx, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.y, %bb.u, %bb.v
  %i.cp = icmp samesign ult i32 %.3, 65536
  br i1 %i.cp, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 %.3, ptr %i.a, align 8
  %i.cq = lshr i32 %.3, 10
  %i.cr = add nuw nsw i32 %i.cq, 55232
  br label %bb.ab

bb.ab:                                            ; preds = %bb.d, %bb.aa, %bb.z, %bb.b, %bb.c
  %.166 = phi i32 [ %.3, %bb.z ], [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %i.cr, %bb.aa ], [ -1, %bb.d ]
  ret i32 %.166
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 -2147483648, 65536) i32 @_ZL20utf8IteratorPreviousP13UCharIterator(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %i.b, 10
  %i.d = add nuw nsw i32 %i.c, 55232
  store i32 0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add nsw i32 %i.f, -4
  store i32 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = and i32 %i.d, 65535
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8                ; 2 uses
  %i.q = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.q, ptr %i.m, align 4
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = icmp sgt i8 %i.t, -1
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 @utf8_prevCharSafeBody_78(ptr noundef nonnull %i.p, i32 noundef 0, ptr noundef nonnull %i.m, i32 noundef %i.u, i8 noundef signext -3) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i32 [ %i.u, %bb.f ], [ %i.w, %bb.g ]  ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.y, -1
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.m, align 4             ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 2
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp sgt i32 %.0, 65535
  %i.ae = zext i1 %i.ad to i32
  %i.af = add nsw i32 %i.ab, %i.ae
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.k
  %.sink = phi i32 [ %i.af, %bb.k ], [ %i.aa, %bb.i ]
  store i32 %.sink, ptr %i.x, align 8
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.j
  %i.ag = icmp slt i32 %.0, 65536
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.m, align 4
  %i.ai = add nsw i32 %i.ah, 4
  store i32 %i.ai, ptr %i.m, align 4
  store i32 %.0, ptr %i.a, align 8
  %i.aj = and i32 %.0, 1023
  %i.ak = or disjoint i32 %i.aj, 56320
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.m, %bb.l, %bb.d
  %.1 = phi i32 [ %i.l, %bb.d ], [ %.0, %bb.l ], [ %i.ak, %bb.m ], [ -1, %bb.e ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZL20utf8IteratorGetStatePK13UCharIterator(ptr noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = shl i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp ne i32 %i.e, 0
  %i.f = zext i1 %.not to i32
  %spec.select = or disjoint i32 %i.c, %i.f
  ret i32 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL20utf8IteratorSetStateP13UCharIteratorjP10UErrorCode(ptr noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef captures(address_is_null) %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %2, align 4
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = shl i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not.i = icmp ne i32 %i.j, 0
  %i.k = zext i1 %.not.i to i32
  %spec.select.i = or disjoint i32 %i.h, %i.k
  %i.l = icmp eq i32 %1, %spec.select.i
  br i1 %i.l, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.m = lshr i32 %1, 1                           ; 4 uses
  %i.n = trunc i32 %1 to i1
  %i.o = and i32 %1, -7
  %or.cond = icmp eq i32 %i.o, 1
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp slt i32 %i.q, %i.m
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g
  store i32 8, ptr %2, align 4
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  store i32 %i.m, ptr %i.f, align 4
  %i.s = icmp ult i32 %1, 4
  %spec.select = select i1 %i.s, i32 %i.m, i32 -1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %spec.select, ptr %i.t, align 8
  br i1 %i.n, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.i, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.v, ptr %i.a, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = zext i8 %i.y to i32
  %i.ab = call i32 @utf8_prevCharSafeBody_78(ptr noundef nonnull %i.u, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef %i.aa, i8 noundef signext -3) #13 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 65536
  br i1 %i.ac, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.k, %bb.l
  store i32 8, ptr %2, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.ab, ptr %i.i, align 8
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.e, %bb.n, %bb.a, %bb.b
  ret void
}

declare i32 @utf8_prevCharSafeBody_78(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
end_hunk_1
