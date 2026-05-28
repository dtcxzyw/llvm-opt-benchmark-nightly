inline.NumInlined: 22
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i64 }
%"struct.std::atomic.3" = type { %"struct.std::__atomic_base.2" }
%"struct.std::__atomic_base.2" = type { i8 }
%"class.v8::internal::trap_handler::MetadataLock" = type { i8 }
%"class.v8::internal::trap_handler::SandboxRecordsLock" = type { i8 }

@_ZN12_GLOBAL__N_115gNextCodeObjectE = internal unnamed_addr global i64 0, align 8
@_ZN2v88internal12trap_handler15gNumCodeObjectsE = external local_unnamed_addr global i64, align 8
@_ZN2v88internal12trap_handler12gCodeObjectsE = external local_unnamed_addr global ptr, align 8
@_ZN2v88internal12trap_handler19gSandboxRecordsHeadE = external local_unnamed_addr global ptr, align 8
@_ZN2v88internal12trap_handler19gRecoveredTrapCountE = external local_unnamed_addr global %"struct.std::atomic", align 8
@_ZN2v88internal12trap_handler25g_is_trap_handler_enabledE = hidden local_unnamed_addr global i8 0, align 1
@_ZN2v88internal12trap_handler25g_can_enable_trap_handlerE = hidden global %"struct.std::atomic.3" { %"struct.std::__atomic_base.2" { i8 1 } }, align 1
@_ZN2v88internal12trap_handler11gLandingPadE = external local_unnamed_addr global %"struct.std::atomic", align 8
@_ZN2v88internal12trap_handler16TrapHandlerGuard10is_active_E = external thread_local local_unnamed_addr global i8, align 1

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_ZN2v88internal12trap_handler17CreateHandlerDataEmmmPKNS1_24ProtectedInstructionDataE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %2, 2                            ; 2 uses
  %i.b = add i64 %i.a, 24
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #13 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %0, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %2, ptr %i.f, align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 4 %3, i64 %i.a, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret ptr %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden noundef range(i32 -1, -2147483648) i32 @_ZN2v88internal12trap_handler19RegisterHandlerDataEmmmPKNS1_24ProtectedInstructionDataE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.v8::internal::trap_handler::MetadataLock", align 1 ; 4 uses
  %i.a = shl i64 %2, 2                            ; 2 uses
  %i.b = add i64 %i.a, 24
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #13 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN2v88internal12trap_handler17CreateHandlerDataEmmmPKNS1_24ProtectedInstructionDataE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %0, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %2, ptr %i.f, align 8
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr readonly align 4 %3, i64 %i.a, i1 false)
  br label %bb.d

_ZN2v88internal12trap_handler17CreateHandlerDataEmmmPKNS1_24ProtectedInstructionDataE.exit: ; preds = %bb.a
  tail call void @abort() #14
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.c
  %.not.i.i = icmp eq ptr @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E, null ; 2 uses
  br i1 %.not.i.i, label %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i, label %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i

_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i: ; preds = %bb.d
  %i.h = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN2v88internal12trap_handler16TrapHandlerGuard10is_active_E) ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !range !5, !noundef !6
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit

_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i: ; preds = %bb.d
  tail call void @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E() #15
  %i.k = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN2v88internal12trap_handler16TrapHandlerGuard10is_active_E) ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !range !5, !noundef !6
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i, %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i
  tail call void asm sideeffect "int3", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !7
  tail call void asm sideeffect "ud2", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !8
  unreachable

bb.f:                                             ; preds = %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i
  tail call void @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E() #15
  br label %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit

_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit: ; preds = %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i, %bb.f
  %i.n = phi ptr [ %i.k, %bb.f ], [ %i.h, %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i ]
  store i8 1, ptr %i.n, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN2v88internal12trap_handler12MetadataLockC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  %i.o = load i64, ptr @_ZN12_GLOBAL__N_115gNextCodeObjectE, align 8 ; 7 uses
  %i.p = load i64, ptr @_ZN2v88internal12trap_handler15gNumCodeObjectsE, align 8
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit
  %.not = icmp eq i64 %i.o, 0
  %i.r = shl i64 %i.o, 1
  %i.s = call i64 @llvm.umin.i64(i64 %i.r, i64 2147483647)
  %spec.store.select = select i1 %.not, i64 1024, i64 %i.s ; 8 uses
  %.not30 = icmp eq i64 %spec.store.select, %i.o
  br i1 %.not30, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.c) #15
  br label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr @_ZN2v88internal12trap_handler12gCodeObjectsE, align 8
  %i.u = shl nuw nsw i64 %spec.store.select, 4
  %i.v = call ptr @realloc(ptr noundef %i.t, i64 noundef %i.u) #16 ; 3 uses
  store ptr %i.v, ptr @_ZN2v88internal12trap_handler12gCodeObjectsE, align 8
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @abort() #14
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.x = load i64, ptr @_ZN2v88internal12trap_handler15gNumCodeObjectsE, align 8 ; 7 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x
  %i.z = sub i64 %spec.store.select, %i.x
  %i.aa = shl i64 %i.z, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.y, i8 0, i64 %i.aa, i1 false)
  %i.ab = icmp ult i64 %i.x, %spec.store.select
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.ac = sub nuw i64 %spec.store.select, %i.x
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.033.prol = phi i64 [ %i.ad, %.lr.ph.prol ], [ %i.x, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ad = add nuw nsw i64 %.033.prol, 1           ; 3 uses
  %i.ae = load ptr, ptr @_ZN2v88internal12trap_handler12gCodeObjectsE, align 8
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.033.prol
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.ad, ptr %i.ag, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !9

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.033.unr = phi i64 [ %i.x, %.lr.ph.preheader ], [ %i.ad, %.lr.ph.prol ]
  %i.ah = sub i64 %i.x, %spec.store.select
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.033 = phi i64 [ %i.av, %.lr.ph ], [ %.033.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.aj = add nuw nsw i64 %.033, 1                ; 2 uses
  %i.ak = load ptr, ptr @_ZN2v88internal12trap_handler12gCodeObjectsE, align 8
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %.033
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.aj, ptr %i.am, align 8
  %i.an = add nuw nsw i64 %.033, 2                ; 2 uses
  %i.ao = load ptr, ptr @_ZN2v88internal12trap_handler12gCodeObjectsE, align 8
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.aj
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.an, ptr %i.aq, align 8
  %i.ar = add nuw nsw i64 %.033, 3                ; 2 uses
  %i.as = load ptr, ptr @_ZN2v88internal12trap_handler12gCodeObjectsE, align 8
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.ar, ptr %i.au, align 8
  %i.av = add nuw nsw i64 %.033, 4                ; 3 uses
  %i.aw = load ptr, ptr @_ZN2v88internal12trap_handler12gCodeObjectsE, align 8
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.ar
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.av, ptr %i.ay, align 8
  %exitcond.not.3 = icmp eq i64 %i.av, %spec.store.select
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.j
  store i64 %spec.store.select, ptr @_ZN2v88internal12trap_handler15gNumCodeObjectsE, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit
  %i.az = load ptr, ptr @_ZN2v88internal12trap_handler12gCodeObjectsE, align 8
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.o ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8
  store i64 %i.bc, ptr @_ZN12_GLOBAL__N_115gNextCodeObjectE, align 8
  %i.bd = icmp ult i64 %i.o, 2147483648
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.c, ptr %i.ba, align 8
  %i.be = trunc nuw nsw i64 %i.o to i32
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.c) #15
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m, %bb.l
  %.1 = phi i32 [ %i.be, %bb.l ], [ -1, %bb.m ], [ -1, %.thread ]
  call void @_ZN2v88internal12trap_handler12MetadataLockD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br i1 %.not.i.i, label %_ZN2v88internal12trap_handler16TrapHandlerGuardD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E() #15
  br label %_ZN2v88internal12trap_handler16TrapHandlerGuardD2Ev.exit

_ZN2v88internal12trap_handler16TrapHandlerGuardD2Ev.exit: ; preds = %bb.n, %bb.o
  %i.bf = call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN2v88internal12trap_handler16TrapHandlerGuard10is_active_E)
  store i8 0, ptr %i.bf, align 1
  ret i32 %.1
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare void @_ZN2v88internal12trap_handler12MetadataLockC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind
declare void @_ZN2v88internal12trap_handler12MetadataLockD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden void @_ZN2v88internal12trap_handler18ReleaseHandlerDataEi(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %"class.v8::internal::trap_handler::MetadataLock", align 1 ; 4 uses
  %i.a = icmp eq i32 %0, -1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E, null ; 2 uses
  br i1 %.not.i.i, label %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i, label %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i

_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i: ; preds = %bb.b
  %i.b = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN2v88internal12trap_handler16TrapHandlerGuard10is_active_E) ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !5, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit

_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i: ; preds = %bb.b
  tail call void @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E() #15
  %i.e = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN2v88internal12trap_handler16TrapHandlerGuard10is_active_E) ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i, %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i
  tail call void asm sideeffect "int3", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !7
  tail call void asm sideeffect "ud2", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !8
  unreachable

bb.d:                                             ; preds = %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i
  tail call void @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E() #15
  br label %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit

_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit: ; preds = %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i, %bb.d
  %i.h = phi ptr [ %i.e, %bb.d ], [ %i.b, %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i ]
  store i8 1, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZN2v88internal12trap_handler12MetadataLockC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #15
  %i.i = load ptr, ptr @_ZN2v88internal12trap_handler12gCodeObjectsE, align 8
  %i.j = sext i32 %0 to i64                       ; 3 uses
  %i.k = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  store ptr null, ptr %i.k, align 8
  %i.m = load i64, ptr @_ZN12_GLOBAL__N_115gNextCodeObjectE, align 8
  %i.n = load ptr, ptr @_ZN2v88internal12trap_handler12gCodeObjectsE, align 8
  %i.o = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.m, ptr %i.p, align 8
  store i64 %i.j, ptr @_ZN12_GLOBAL__N_115gNextCodeObjectE, align 8
  call void @_ZN2v88internal12trap_handler12MetadataLockD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br i1 %.not.i.i, label %_ZN2v88internal12trap_handler16TrapHandlerGuardD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit
  call void @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E() #15
  br label %_ZN2v88internal12trap_handler16TrapHandlerGuardD2Ev.exit

_ZN2v88internal12trap_handler16TrapHandlerGuardD2Ev.exit: ; preds = %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit, %bb.e
  %i.q = call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN2v88internal12trap_handler16TrapHandlerGuard10is_active_E)
  store i8 0, ptr %i.q, align 1
  call void @free(ptr noundef %i.l) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN2v88internal12trap_handler16TrapHandlerGuardD2Ev.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal12trap_handler17RegisterV8SandboxEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.v8::internal::trap_handler::SandboxRecordsLock", align 1 ; 4 uses
  %.not.i.i = icmp eq ptr @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E, null ; 2 uses
  br i1 %.not.i.i, label %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i, label %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i

_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i: ; preds = %bb.a
  %i.a = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN2v88internal12trap_handler16TrapHandlerGuard10is_active_E) ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit

_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i: ; preds = %bb.a
  tail call void @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E() #15
  %i.d = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN2v88internal12trap_handler16TrapHandlerGuard10is_active_E) ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !5, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i, %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i
  tail call void asm sideeffect "int3", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !7
  tail call void asm sideeffect "ud2", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !8
  unreachable

bb.c:                                             ; preds = %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i
  tail call void @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E() #15
  br label %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit

_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit: ; preds = %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i, %bb.c
  %i.g = phi ptr [ %i.d, %bb.c ], [ %i.a, %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i ]
  store i8 1, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN2v88internal12trap_handler18SandboxRecordsLockC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #15
  %i.h = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #13 ; 5 uses
  %i.i = icmp ne ptr %i.h, null                   ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit
  store i64 %0, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %1, ptr %i.j, align 8
  %i.k = load ptr, ptr @_ZN2v88internal12trap_handler19gSandboxRecordsHeadE, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.k, ptr %i.l, align 8
  store ptr %i.h, ptr @_ZN2v88internal12trap_handler19gSandboxRecordsHeadE, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit, %bb.d
  call void @_ZN2v88internal12trap_handler18SandboxRecordsLockD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %.not.i.i, label %_ZN2v88internal12trap_handler16TrapHandlerGuardD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E() #15
  br label %_ZN2v88internal12trap_handler16TrapHandlerGuardD2Ev.exit

_ZN2v88internal12trap_handler16TrapHandlerGuardD2Ev.exit: ; preds = %bb.e, %bb.f
  %i.m = call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN2v88internal12trap_handler16TrapHandlerGuard10is_active_E)
  store i8 0, ptr %i.m, align 1
  ret i1 %i.i
}

declare void @_ZN2v88internal12trap_handler18SandboxRecordsLockC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2v88internal12trap_handler18SandboxRecordsLockD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden void @_ZN2v88internal12trap_handler19UnregisterV8SandboxEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.v8::internal::trap_handler::SandboxRecordsLock", align 1 ; 4 uses
  %.not.i.i = icmp eq ptr @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E, null ; 2 uses
  br i1 %.not.i.i, label %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i, label %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i

_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i: ; preds = %bb.a
  %i.a = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN2v88internal12trap_handler16TrapHandlerGuard10is_active_E) ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit

_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i: ; preds = %bb.a
  tail call void @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E() #15
  %i.d = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN2v88internal12trap_handler16TrapHandlerGuard10is_active_E) ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !5, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i, %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i
  tail call void asm sideeffect "int3", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !7
  tail call void asm sideeffect "ud2", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !8
  unreachable

bb.c:                                             ; preds = %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i
  tail call void @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E() #15
  br label %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit

_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit: ; preds = %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i, %bb.c
  %i.g = phi ptr [ %i.d, %bb.c ], [ %i.a, %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i ]
  store i8 1, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN2v88internal12trap_handler18SandboxRecordsLockC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #15
  %.01220 = load ptr, ptr @_ZN2v88internal12trap_handler19gSandboxRecordsHeadE, align 8 ; 4 uses
  %.not21 = icmp eq ptr %.01220, null
  br i1 %.not21, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit
  %i.h = load i64, ptr %.01220, align 8
  %i.i = icmp eq i64 %i.h, %0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph31

.lr.ph:                                           ; preds = %.lr.ph31
  %i.j = load i64, ptr %.012, align 8
  %i.k = icmp eq i64 %i.j, %0
  br i1 %i.k, label %.lr.ph._crit_edge, label %.lr.ph31, !llvm.loop !13

.lr.ph31:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0122330 = phi ptr [ %.012, %.lr.ph ], [ %.01220, %.lr.ph.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0122330, i64 16
  %.012 = load ptr, ptr %i.l, align 8             ; 4 uses
  %.not = icmp eq ptr %.012, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !13

.critedge:                                        ; preds = %.lr.ph31, %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit
  call void asm sideeffect "int3", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !14
  call void asm sideeffect "ud2", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !15
  unreachable

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.01223.lcssa = phi ptr [ %.01220, %.lr.ph.preheader ], [ %.012, %.lr.ph ] ; 3 uses
  %.022.lcssa = phi ptr [ null, %.lr.ph.preheader ], [ %.0122330, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01223.lcssa, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, %1
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph._crit_edge
  call void asm sideeffect "int3", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !16
  call void asm sideeffect "ud2", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !17
  unreachable

bb.e:                                             ; preds = %.lr.ph._crit_edge
  %.not13 = icmp eq ptr %.022.lcssa, null
  %i.p = getelementptr inbounds nuw i8, ptr %.01223.lcssa, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.022.lcssa, i64 16
  store ptr %i.q, ptr %i.r, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store ptr %i.q, ptr @_ZN2v88internal12trap_handler19gSandboxRecordsHeadE, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @free(ptr noundef nonnull %.01223.lcssa) #15
  call void @_ZN2v88internal12trap_handler18SandboxRecordsLockD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %.not.i.i, label %_ZN2v88internal12trap_handler16TrapHandlerGuardD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E() #15
  br label %_ZN2v88internal12trap_handler16TrapHandlerGuardD2Ev.exit

_ZN2v88internal12trap_handler16TrapHandlerGuardD2Ev.exit: ; preds = %bb.h, %bb.i
  %i.s = call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN2v88internal12trap_handler16TrapHandlerGuard10is_active_E)
  store i8 0, ptr %i.s, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v88internal12trap_handler21GetRecoveredTrapCountEv() local_unnamed_addr #10 {
bb.a:
  %i.a = load atomic i64, ptr @_ZN2v88internal12trap_handler19gRecoveredTrapCountE monotonic, align 8
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal12trap_handler17EnableTrapHandlerEb(i1 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = atomicrmw xchg ptr @_ZN2v88internal12trap_handler25g_can_enable_trap_handlerE, i8 0 monotonic, align 1
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "int3", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !18
  tail call void asm sideeffect "ud2", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !19
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E, null ; 2 uses
  br i1 %.not.i.i, label %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i, label %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i

_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i: ; preds = %bb.c
  %i.c = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN2v88internal12trap_handler16TrapHandlerGuard10is_active_E) ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !range !5, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit

_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i: ; preds = %bb.c
  tail call void @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E() #15
  %i.f = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN2v88internal12trap_handler16TrapHandlerGuard10is_active_E) ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !5, !noundef !6
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i, %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i
  tail call void asm sideeffect "int3", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !7
  tail call void asm sideeffect "ud2", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !8
  unreachable

bb.e:                                             ; preds = %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.thread.i
  tail call void @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E() #15
  br label %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit

_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit: ; preds = %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i, %bb.e
  %i.i = phi ptr [ %i.f, %bb.e ], [ %i.c, %_ZTWN2v88internal12trap_handler16TrapHandlerGuard10is_active_E.exit.i ]
  store i8 1, ptr %i.i, align 1
  br i1 %0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit
  %i.j = tail call noundef zeroext i1 @_ZN2v88internal12trap_handler26RegisterDefaultTrapHandlerEv() #15 ; 2 uses
  %i.k = zext i1 %i.j to i8
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit, %bb.f
  %storemerge = phi i8 [ %i.k, %bb.f ], [ 1, %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit ]
  %.0 = phi i1 [ %i.j, %bb.f ], [ true, %_ZN2v88internal12trap_handler16TrapHandlerGuardC2Ev.exit ]
  store i8 %storemerge, ptr @_ZN2v88internal12trap_handler25g_is_trap_handler_enabledE, align 1
  br i1 %.not.i.i, label %_ZN2v88internal12trap_handler16TrapHandlerGuardD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E() #15
  br label %_ZN2v88internal12trap_handler16TrapHandlerGuardD2Ev.exit

_ZN2v88internal12trap_handler16TrapHandlerGuardD2Ev.exit: ; preds = %bb.g, %bb.h
  %i.l = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN2v88internal12trap_handler16TrapHandlerGuard10is_active_E)
  store i8 0, ptr %i.l, align 1
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN2v88internal12trap_handler26RegisterDefaultTrapHandlerEv() local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal12trap_handler13SetLandingPadEm(i64 noundef %0) local_unnamed_addr #10 {
bb.a:
  store atomic i64 %0, ptr @_ZN2v88internal12trap_handler11gLandingPadE seq_cst, align 8
  ret void
}

declare extern_weak void @_ZTHN2v88internal12trap_handler16TrapHandlerGuard10is_active_E() #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{i64 2150861447}
!8 = !{i64 2150861468}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{i64 2150861931}
!15 = !{i64 2150861952}
!16 = !{i64 2150862313}
!17 = !{i64 2150862334}
!18 = !{i64 2150862689}
!19 = !{i64 2150862710}
end_hunk_0
