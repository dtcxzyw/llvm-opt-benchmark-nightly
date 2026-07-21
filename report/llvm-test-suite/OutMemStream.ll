inline.NumInlined: 36
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GUID = type { i32, i16, i16, [8 x i8] }

$_ZN13COutMemStream14QueryInterfaceERK4GUIDPPv = comdat any

$_ZN13COutMemStream6AddRefEv = comdat any

$_ZN13COutMemStream7ReleaseEv = comdat any

$_ZN13COutMemStreamD2Ev = comdat any

$_ZN13COutMemStreamD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv = comdat any

$_ZTI10IOutStream = comdat any

$_ZTS10IOutStream = comdat any

$_ZTI20ISequentialOutStream = comdat any

$_ZTS20ISequentialOutStream = comdat any

$_ZTI8IUnknown = comdat any

$_ZTS8IUnknown = comdat any

$_ZTI13CMyUnknownImp = comdat any

$_ZTS13CMyUnknownImp = comdat any

$_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE = comdat any

$_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE = comdat any

$_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE = comdat any

$_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE = comdat any

$_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE = comdat any

@_ZTV13COutMemStream = dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTI13COutMemStream, ptr @_ZN13COutMemStream14QueryInterfaceERK4GUIDPPv, ptr @_ZN13COutMemStream6AddRefEv, ptr @_ZN13COutMemStream7ReleaseEv, ptr @_ZN13COutMemStreamD2Ev, ptr @_ZN13COutMemStreamD0Ev, ptr @_ZN13COutMemStream5WriteEPKvjPj, ptr @_ZN13COutMemStream4SeekExjPy, ptr @_ZN13COutMemStream7SetSizeEy] }, align 8
@_ZTI13COutMemStream = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS13COutMemStream, i32 0, i32 2, ptr @_ZTI10IOutStream, i64 2, ptr @_ZTI13CMyUnknownImp, i64 2050 }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTS13COutMemStream = dso_local constant [16 x i8] c"13COutMemStream\00", align 1
@_ZTI10IOutStream = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10IOutStream, ptr @_ZTI20ISequentialOutStream }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS10IOutStream = linkonce_odr dso_local constant [13 x i8] c"10IOutStream\00", comdat, align 1
@_ZTI20ISequentialOutStream = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS20ISequentialOutStream, ptr @_ZTI8IUnknown }, comdat, align 8
@_ZTS20ISequentialOutStream = linkonce_odr dso_local constant [23 x i8] c"20ISequentialOutStream\00", comdat, align 1
@_ZTI8IUnknown = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS8IUnknown }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS8IUnknown = linkonce_odr dso_local constant [10 x i8] c"8IUnknown\00", comdat, align 1
@_ZTI13CMyUnknownImp = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13CMyUnknownImp }, comdat, align 8
@_ZTS13CMyUnknownImp = linkonce_odr dso_local constant [16 x i8] c"13CMyUnknownImp\00", comdat, align 1
@IID_IUnknown = external local_unnamed_addr global %struct.GUID, align 4
@_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE, ptr @_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv] }, comdat, align 8
@_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE, ptr @_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE }, comdat, align 8
@_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE = linkonce_odr dso_local constant [46 x i8] c"N8NWindows16NSynchronization14CBaseEventWFMOE\00", comdat, align 1
@_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE }, comdat, align 8
@_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE = linkonce_odr dso_local constant [47 x i8] c"N8NWindows16NSynchronization15CBaseHandleWFMOE\00", comdat, align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13COutMemStream4FreeEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  tail call void @_ZN14CMemLockBlocks4FreeEP18CMemBlockManagerMt(ptr noundef nonnull align 8 dereferenceable(41) %i.a, ptr noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 1, ptr %i.d, align 8, !tbaa !31
  ret void
}

declare void @_ZN14CMemLockBlocks4FreeEP18CMemBlockManagerMt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13COutMemStream4InitEv(ptr noundef nonnull align 8 dereferenceable(168) initializes((40, 42), (89, 90)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(89) %i.b) #10 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.d, align 1, !tbaa !33
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(89) %i.e) #10 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %i.g, align 1, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.h, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  tail call void @_ZN14CMemLockBlocks4FreeEP18CMemBlockManagerMt(ptr noundef nonnull align 8 dereferenceable(41) %i.i, ptr noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 1, ptr %i.l, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13COutMemStream10DetachDataER14CMemLockBlocks(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  tail call void @_ZN14CMemLockBlocks6DetachERS_P18CMemBlockManagerMt(ptr noundef nonnull align 8 dereferenceable(41) %i.a, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef %i.c)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !8
  tail call void @_ZN14CMemLockBlocks4FreeEP18CMemBlockManagerMt(ptr noundef nonnull align 8 dereferenceable(41) %i.a, ptr noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 1, ptr %i.e, align 8, !tbaa !31
  ret void
}

declare void @_ZN14CMemLockBlocks6DetachERS_P18CMemBlockManagerMt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN13COutMemStream17WriteToRealStreamEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = tail call noundef i32 @_ZNK10CMemBlocks13WriteToStreamEmP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef %i.e, ptr noundef %i.g) ; 2 uses
  %.not.not = icmp eq i32 %i.h, 0
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !8
  tail call void @_ZN14CMemLockBlocks4FreeEP18CMemBlockManagerMt(ptr noundef nonnull align 8 dereferenceable(41) %i.a, ptr noundef %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef i32 @_ZNK10CMemBlocks13WriteToStreamEmP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN13COutMemStream5WriteEPKvjPj(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !35, !range !39, !noundef !40
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %.loopexit.split

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null                    ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %3, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, <2 x i64> <i64 48, i64 72>
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.not45113 = icmp eq i32 %2, 0
  br i1 %.not45113, label %.loopexit.split, label %.outer.split.preheader

.outer.split.preheader:                           ; preds = %bb.e, %.outer
  %.033.ph115 = phi ptr [ %i.al, %.outer ], [ %1, %bb.e ] ; 3 uses
  %.036.ph114 = phi i32 [ %i.am, %.outer ], [ %2, %bb.e ] ; 3 uses
  %.pre = load i32, ptr %i.n, align 4, !tbaa !43
  br label %.outer.split

.outer.split:                                     ; preds = %.outer.split.preheader, %bb.q
  %i.u = phi i32 [ %.pre, %.outer.split.preheader ], [ %i.cc, %bb.q ]
  %i.v = load i64, ptr %i.l, align 8, !tbaa !44   ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = icmp sgt i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.outer.split
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !45
  %sext = shl i64 %i.v, 32
  %i.z = ashr exact i64 %sext, 29
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !47  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !36
  %i.ah = sub i64 %i.ag, %i.ac
  %i.ai = zext i32 %.036.ph114 to i64
  %spec.select = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ai) ; 4 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %.033.ph115, i64 %spec.select, i1 false)
  %.pre84 = trunc nuw i64 %spec.select to i32     ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %3, align 4, !tbaa !4
  %i.ak = add i32 %i.aj, %.pre84
  store i32 %i.ak, ptr %3, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.033.ph115, i64 %spec.select
  %i.am = sub i32 %.036.ph114, %.pre84            ; 2 uses
  %i.an = load i64, ptr %i.s, align 8, !tbaa !47
  %i.ao = add i64 %i.an, %spec.select             ; 3 uses
  store i64 %i.ao, ptr %i.s, align 8, !tbaa !47
  %i.ap = load i64, ptr %i.l, align 8, !tbaa !44  ; 2 uses
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !36 ; 2 uses
  %i.at = mul i64 %i.as, %i.ap
  %i.au = add i64 %i.at, %i.ao                    ; 2 uses
  %i.av = load i64, ptr %i.t, align 8, !tbaa !48
  %i.aw = icmp ugt i64 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  store i64 %i.au, ptr %i.t, align 8, !tbaa !48
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.ax = icmp eq i64 %i.ao, %i.as
  br i1 %i.ax, label %bb.j, label %.outer

bb.j:                                             ; preds = %bb.i
  %i.ay = add i64 %i.ap, 1
  store i64 %i.ay, ptr %i.l, align 8, !tbaa !44
  store i64 0, ptr %i.s, align 8, !tbaa !47
  br label %.outer

.outer:                                           ; preds = %bb.j, %bb.i
  %.not45 = icmp eq i32 %i.am, 0
  br i1 %.not45, label %.loopexit.split, label %.outer.split.preheader

bb.k:                                             ; preds = %.outer.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store <2 x ptr> %4, ptr %i.a, align 16, !tbaa !49
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  store ptr %i.ba, ptr %i.o, align 16, !tbaa !49
  %i.bb = load i8, ptr %i.q, align 8, !tbaa !31, !range !39, !noundef !40
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = select i1 %i.bc, i32 3, i32 2
  %i.be = call noundef i32 @_Z22WaitForMultipleObjectsjPKPN8NWindows16NSynchronization15CBaseHandleWFMOEij(i32 noundef %i.bd, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef -1)
  switch i32 %i.be, label %.thread [
    i32 0, label %bb.l
    i32 1, label %bb.m
    i32 2, label %bb.q
  ]

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !51
  br label %.thread

bb.m:                                             ; preds = %bb.k
  store i8 1, ptr %i.c, align 8, !tbaa !35
  %i.bh = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !36
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.bm = call noundef i32 @_ZNK10CMemBlocks13WriteToStreamEmP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 noundef %i.bj, ptr noundef %i.bl) ; 2 uses
  %.not.not.i = icmp eq i32 %i.bm, 0
  br i1 %.not.not.i, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bn = load ptr, ptr %i.p, align 8, !tbaa !8
  call void @_ZN14CMemLockBlocks4FreeEP18CMemBlockManagerMt(ptr noundef nonnull align 8 dereferenceable(41) %i.m, ptr noundef %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !38 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef i32 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %.033.ph115, i32 noundef %.036.ph114, ptr noundef nonnull %i.b)
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = load i32, ptr %i.b, align 4, !tbaa !4
  %i.bu = load i32, ptr %3, align 4, !tbaa !4
  %i.bv = add i32 %i.bu, %i.bt
  store i32 %i.bv, ptr %3, align 4, !tbaa !4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.l, %bb.p
  %.2.ph = phi i32 [ %i.bm, %bb.m ], [ %i.bs, %bb.p ], [ %i.bg, %bb.l ], [ -2147467259, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.loopexit.split

bb.q:                                             ; preds = %bb.k
  %i.bw = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.bx = call noundef ptr @_ZN18CMemBlockManagerMt13AllocateBlockEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bw)
  call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.m)
  %i.by = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.bz = load i32, ptr %i.n, align 4, !tbaa !43  ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.ca
  store ptr %i.bx, ptr %i.cb, align 8, !tbaa !46
  %i.cc = add nsw i32 %i.bz, 1                    ; 3 uses
  store i32 %i.cc, ptr %i.n, align 4, !tbaa !43
  %i.cd = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr [8 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !46
  %.not50 = icmp eq ptr %i.ch, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %.not50, label %.loopexit.split, label %.outer.split

.loopexit.split:                                  ; preds = %.outer, %bb.q, %bb.e, %.thread, %bb.b
  %.3 = phi i32 [ %i.k, %bb.b ], [ %.2.ph, %.thread ], [ 0, %bb.e ], [ -2147467259, %bb.q ], [ 0, %.outer ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare noundef i32 @_Z22WaitForMultipleObjectsjPKPN8NWindows16NSynchronization15CBaseHandleWFMOEij(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN18CMemBlockManagerMt13AllocateBlockEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN13COutMemStream4SeekExjPy(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !35, !range !39, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %1, i32 noundef %2, ptr noundef %3)
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  switch i32 %2, label %bb.j [
    i32 1, label %bb.e
    i32 0, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %.not12 = icmp eq i64 %1, 0
  br i1 %.not12, label %bb.h, label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.not13 = icmp eq ptr %3, null
  br i1 %.not13, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !36
  %i.r = mul i64 %i.q, %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !47
  %i.u = add i64 %i.r, %i.t
  store i64 %i.u, ptr %3, align 8, !tbaa !53
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.d, %bb.f, %bb.e, %bb.b, %bb.c
  %.0 = phi i32 [ -2147467263, %bb.f ], [ %i.j, %bb.c ], [ -2147467259, %bb.b ], [ -2147467263, %bb.d ], [ -2147467263, %bb.e ], [ 0, %bb.i ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN13COutMemStream7SetSizeEy(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !35, !range !39, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %1, ptr %i.k, align 8, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ %i.j, %bb.c ], [ -2147467259, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN13COutMemStream14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 4, !tbaa !54
  %i.b = load i8, ptr @IID_IUnknown, align 4, !tbaa !54
  %.not.i = icmp eq i8 %i.a, %i.b
  br i1 %.not.i, label %bb.b, label %_ZeqRK4GUIDS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !54
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 1), align 1, !tbaa !54
  %.not.1.i = icmp eq i8 %i.d, %i.e
  br i1 %.not.1.i, label %bb.c, label %_ZeqRK4GUIDS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !54
end_hunk_0
