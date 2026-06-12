inline.NumInlined: 7
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZTI18CInBufferException = comdat any

$_ZTS18CInBufferException = comdat any

$_ZTI16CSystemException = comdat any

$_ZTS16CSystemException = comdat any

@_ZTI18CInBufferException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18CInBufferException, ptr @_ZTI16CSystemException }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS18CInBufferException = linkonce_odr dso_local constant [21 x i8] c"18CInBufferException\00", comdat, align 1
@_ZTI16CSystemException = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS16CSystemException }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS16CSystemException = linkonce_odr dso_local constant [19 x i8] c"16CSystemException\00", comdat, align 1

@_ZN9CInBufferC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN9CInBufferC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9CInBufferC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(45) initializes((0, 32), (40, 44)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.a, align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9CInBuffer6CreateEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(45) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %1, i32 1) ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not = icmp ne ptr %i.b, null
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %3 = load i32, ptr %2, align 8
  %i.c = icmp eq i32 %3, %spec.store.select
  %or.cond = select i1 %.not, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @MidFree(ptr noundef %i.b)
  store ptr null, ptr %i.a, align 8, !tbaa !16
  store i32 %spec.store.select, ptr %2, align 8, !tbaa !8
  %i.d = zext i32 %spec.store.select to i64
  %i.e = tail call ptr @MidAlloc(i64 noundef %i.d) ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !16
  %i.f = icmp ne ptr %i.e, null
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9CInBuffer4FreeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(45) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  tail call void @MidFree(ptr noundef %i.b)
  store ptr null, ptr %i.a, align 8, !tbaa !16
  ret void
}

declare ptr @MidAlloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @MidFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9CInBuffer9SetStreamEP19ISequentialInStream(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(45) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %.not6.i = icmp eq ptr %i.f, null
  br i1 %.not6.i, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !inline_history !19 ; 0 uses
  br label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit

_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit: ; preds = %bb.c, %bb.d
  store ptr %1, ptr %i.a, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN9CInBuffer4InitEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(45) initializes((0, 16), (32, 40), (44, 45)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %i.e, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9CInBuffer9ReadBlockEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(45) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !24, !range !25, !noundef !26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21
  %i.m = add i64 %i.j, %i.l
  store i64 %i.m, ptr %i.k, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !8
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.g, i32 noundef %i.q, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = call ptr @__cxa_allocate_exception(i64 4) #8 ; 2 uses
  store i32 %i.u, ptr %i.v, align 4, !tbaa !27
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI18CInBufferException, ptr null) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !22
  %i.x = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !23
  %i.ab = icmp eq i32 %i.x, 0                     ; 2 uses
  %i.ac = zext i1 %i.ab to i8
  store i8 %i.ac, ptr %i.b, align 4, !tbaa !24
  %i.ad = xor i1 %i.ab, true
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i1 [ %i.ad, %bb.d ], [ false, %bb.a ]
  ret i1 %.0
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(45) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !24, !range !25, !noundef !26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN9CInBuffer9ReadBlockEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21
  %i.m = add i64 %i.j, %i.l
  store i64 %i.m, ptr %i.k, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !8
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.g, i32 noundef %i.q, ptr noundef nonnull %i.a), !inline_history !29 ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZN9CInBuffer9ReadBlockEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = call ptr @__cxa_allocate_exception(i64 4) #8 ; 2 uses
  store i32 %i.u, ptr %i.v, align 4, !tbaa !27
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI18CInBufferException, ptr null) #9
  unreachable

_ZN9CInBuffer9ReadBlockEv.exit:                   ; preds = %bb.b
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !22
  %i.x = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !23
  %i.ab = icmp eq i32 %i.x, 0                     ; 2 uses
  %i.ac = zext i1 %i.ab to i8
  store i8 %i.ac, ptr %i.b, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %i.ab, label %_ZN9CInBuffer9ReadBlockEv.exit.thread, label %bb.d

_ZN9CInBuffer9ReadBlockEv.exit.thread:            ; preds = %bb.a, %_ZN9CInBuffer9ReadBlockEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !21
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !21
  br label %bb.e

bb.d:                                             ; preds = %_ZN9CInBuffer9ReadBlockEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.ag, ptr %0, align 8, !tbaa !22
  %i.ah = load i8, ptr %i.w, align 1, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN9CInBuffer9ReadBlockEv.exit.thread
end_hunk_0
