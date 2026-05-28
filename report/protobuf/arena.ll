inline.NumInlined: 106
inline.NumDeleted: 37
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.upb_SizedPtr = type { ptr, i64 }

@g_max_block_size = internal unnamed_addr global i64 32768, align 8

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @upb_Arena_SetMaxBlockSize(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  store atomic i64 %0, ptr @g_max_block_size monotonic, align 8
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define hidden i64 @upb_Arena_SpaceAllocated(ptr noundef captures(none) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = and i64 %i.c, 1
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.preheader.preheader

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02331 = phi i64 [ %i.i, %.lr.ph ], [ 0, %bb.a ]
  %.02430 = phi i64 [ %i.l, %.lr.ph ], [ 0, %bb.a ]
  %.02629 = phi i64 [ %i.k, %.lr.ph ], [ %i.c, %bb.a ]
  %i.f = inttoptr i64 %.02629 to ptr              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, %.02331                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = add i64 %.02430, 1                       ; 2 uses
  %i.m = and i64 %i.k, 1
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %.preheader.preheader, !llvm.loop !7

.preheader.preheader:                             ; preds = %.lr.ph, %bb.a
  %.134.ph = phi i64 [ 0, %bb.a ], [ %i.i, %.lr.ph ]
  %.12533.ph = phi i64 [ 0, %bb.a ], [ %i.l, %.lr.ph ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.035 = phi ptr [ %i.s, %.preheader ], [ %i.a, %.preheader.preheader ] ; 2 uses
  %.134 = phi i64 [ %i.q, %.preheader ], [ %.134.ph, %.preheader.preheader ]
  %.12533 = phi i64 [ %i.t, %.preheader ], [ %.12533.ph, %.preheader.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %.035, i64 24
  %i.p = load atomic i64, ptr %i.o monotonic, align 8
  %i.q = add i64 %i.p, %.134                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.035, i64 48
  %i.s = load atomic ptr, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = add i64 %.12533, 1                       ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !9

bb.b:                                             ; preds = %.preheader
  %.not28 = icmp eq ptr %1, null
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.t, ptr %1, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i64 %i.q
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: norecurse nounwind uwtable
define hidden i32 @upb_Arena_DebugRefCount(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_upb_Arena_FindRoot.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr %i.a acquire, align 8
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 3 uses
  %i.h = and i64 %i.g, 1
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.preheader, label %_upb_Arena_FindRoot.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.k = phi i64 [ %i.p, %.lr.ph.i ], [ %i.g, %.lr.ph.i.preheader ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i ], [ %i.e, %.lr.ph.i.preheader ]
  %.019.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.j, %.lr.ph.i.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %.019.i, i64 40
  store atomic i64 %i.k, ptr %i.m release, align 8
  %i.n = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 3 uses
  %i.q = and i64 %i.p, 1
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.i, label %_upb_Arena_FindRoot.exit, !llvm.loop !12

_upb_Arena_FindRoot.exit:                         ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.b, %bb.a ], [ %i.g, %bb.b ], [ %i.p, %.lr.ph.i ]
  %i.s = lshr i64 %.sroa.3.0.i, 1
  %i.t = trunc i64 %i.s to i32
  ret i32 %i.t
}

; Function Attrs: nounwind uwtable
define hidden ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.upb_SizedPtr, align 8       ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %upb_Arena_Malloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %.not95 = icmp eq ptr %i.d, null                ; 3 uses
  br i1 %.not95, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = load ptr, ptr %0, align 8, !tbaa !23
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = shl i64 %i.f, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.080 = phi i64 [ %i.l, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %.079 = phi i64 [ %i.m, %bb.c ], [ 256, %bb.b ] ; 2 uses
  %i.n = load atomic i64, ptr @g_max_block_size monotonic, align 8 ; 5 uses
  %i.o = icmp uge i64 %.079, %i.n
  %i.p = tail call i64 @llvm.umin.i64(i64 %.079, i64 %i.n) ; 2 uses
  %i.q = add i64 %i.p, -16
  %i.r = tail call i64 @llvm.usub.sat.i64(i64 %i.q, i64 %1) ; 2 uses
  %i.s = icmp ule i64 %.080, %i.r
  %or.cond.not102 = select i1 %.not95, i1 true, i1 %i.s
  %brmerge = select i1 %or.cond.not102, i1 true, i1 %i.o
  br i1 %brmerge, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !24
  %i.v = shl i64 %i.u, 1
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.n) ; 2 uses
  %i.x = add i64 %i.w, -16
  %i.y = tail call i64 @llvm.usub.sat.i64(i64 %i.x, i64 %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.083 = phi i64 [ %i.y, %bb.e ], [ %i.r, %bb.d ]
  %.081 = phi i64 [ %i.w, %bb.e ], [ %i.p, %bb.d ]
  %.not96 = icmp ult i64 %.080, %.083
  %or.cond100 = select i1 %.not95, i1 true, i1 %.not96 ; 2 uses
  %.pre = add i64 %1, 16                          ; 4 uses
  br i1 %or.cond100, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.f
  %i.z = tail call i64 @llvm.umax.i64(i64 %.pre, i64 %.081)
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not97 = icmp ugt i64 %.pre, %i.n
  br i1 %.not97, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !24
  %i.ac = lshr i64 %1, 1
  %i.ad = add i64 %i.ab, %i.ac
  %i.ae = lshr i64 %i.n, 1
  %. = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.ae)
  store i64 %., ptr %i.aa, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g, %bb.h
  %.pre-phi = phi i64 [ %i.z, %._crit_edge ], [ %.pre, %bb.g ], [ %.pre, %bb.h ] ; 2 uses
  %i.af = and i64 %i.b, -2
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !25
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.aj = call ptr %i.ai(ptr noundef nonnull %i.ag, ptr noundef null, i64 noundef 0, i64 noundef %.pre-phi, ptr noundef nonnull %i.ah) #11, !inline_history !29 ; 10 uses
  %.not.i = icmp eq ptr %i.aj, null
  %i.ak = load i64, ptr %i.ah, align 8
  %i.al = call i64 @llvm.umax.i64(i64 %i.ak, i64 %.pre-phi) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %.not.i, label %upb_Arena_Malloc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = load atomic i64, ptr %i.am monotonic, align 8
  %i.ao = add i64 %i.an, %i.al
  store atomic i64 %i.ao, ptr %i.am monotonic, align 8
  br i1 %or.cond100, label %bb.l, label %bb.k, !prof !30

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.al, ptr %i.ap, align 8, !tbaa !18
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !31
  store ptr %i.aj, ptr %i.aq, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br label %upb_Arena_Malloc.exit

bb.l:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.al, ptr %i.at, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.al, ptr %i.au, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !17
  store ptr %i.aw, ptr %i.aj, align 8, !tbaa !31
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !17
  store ptr %i.av, ptr %0, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !20
  %i.az = add i64 %1, 7
  %i.ba = and i64 %i.az, -8                       ; 3 uses
  %gepdiff = add nsw i64 %i.al, -16
  %i.bb = icmp ult i64 %gepdiff, %i.ba
  br i1 %i.bb, label %bb.m, label %bb.n, !prof !32

bb.m:                                             ; preds = %bb.l
  %i.bc = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, i64 noundef %i.ba), !inline_history !33
  br label %upb_Arena_Malloc.exit

bb.n:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba
  store ptr %i.bd, ptr %0, align 8, !tbaa !23
  br label %upb_Arena_Malloc.exit

upb_Arena_Malloc.exit:                            ; preds = %bb.n, %bb.m, %bb.i, %bb.k, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.i ], [ %i.as, %bb.k ], [ %i.bc, %bb.m ], [ %i.av, %bb.n ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @upb_Arena_Init(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread44, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, 7
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = sub i64 %i.c, %i.a
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %i.d) ; 3 uses
  %i.f = icmp ult i64 %i.e, 80
  %.not36 = icmp eq i64 %i.c, 0                   ; 2 uses
  %spec.select = or i1 %.not36, %i.f
  br i1 %spec.select, label %bb.c, label %bb.d, !prof !34

bb.c:                                             ; preds = %bb.b
  %spec.select49 = select i1 %.not36, i64 %i.e, i64 0
  br label %.thread44

.thread44:                                        ; preds = %bb.c, %bb.a
  %i.g = phi i64 [ %spec.select49, %bb.c ], [ %1, %bb.a ]
  %i.h = tail call fastcc ptr @_upb_Arena_InitSlow(ptr noundef %2, i64 noundef %i.g)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = inttoptr i64 %i.c to ptr                 ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 3, ptr %i.k, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr null, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = or disjoint i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %i.p, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 128, ptr %i.r, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr null, ptr %i.s, align 8, !tbaa !39
  %i.t = ptrtoint ptr %2 to i64
  %i.u = or i64 %i.t, 1
  store i64 %i.u, ptr %i.j, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store ptr %i.v, ptr %i.i, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread44
  %.0 = phi ptr [ %i.h, %.thread44 ], [ %i.i, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @_upb_Arena_InitSlow(ptr noundef %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.upb_SizedPtr, align 8       ; 3 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp ult i64 %i.a, 256
  %i.c = and i64 %i.a, -8
  %i.d = add i64 %i.c, 96
  %i.e = select i1 %i.b, i64 352, i64 %i.d        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !25
  %i.g = load ptr, ptr %0, align 8, !tbaa !27
  %i.h = call ptr %i.g(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull %i.f) #11, !inline_history !29 ; 16 uses
  %.not.i = icmp eq ptr %i.h, null
  %i.i = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %.not.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call i64 @llvm.umax.i64(i64 %i.i, i64 %i.e) ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.l = ptrtoint ptr %0 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 %i.j, ptr %i.n, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 3, ptr %i.o, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr null, ptr %i.p, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = or i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %i.j, ptr %i.t, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr null, ptr %i.v, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.j, ptr %i.w, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store ptr null, ptr %i.h, align 8, !tbaa !31
  store ptr %i.h, ptr %i.u, align 8, !tbaa !17
  store ptr %i.x, ptr %i.k, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !20
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.k, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @upb_Arena_Free(ptr noundef captures(address) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load atomic i64, ptr %i.b acquire, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.013 = phi i64 [ %i.c, %bb.a ], [ %i.af, %bb.h ] ; 3 uses
  %.0 = phi ptr [ %i.a, %bb.a ], [ %.1.lcssa, %bb.h ]
  %i.d = and i64 %.013, 1
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.11417 = phi i64 [ %i.h, %.lr.ph ], [ %.013, %bb.b ]
  %i.f = inttoptr i64 %.11417 to ptr              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 3 uses
  %i.i = and i64 %i.h, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.114.lcssa = phi i64 [ %.013, %bb.b ], [ %i.h, %.lr.ph ] ; 3 uses
  %.1.lcssa = phi ptr [ %.0, %bb.b ], [ %i.f, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.114.lcssa, 3
  br i1 %i.k, label %.preheader, label %bb.h

.preheader:                                       ; preds = %._crit_edge
  %.not.i24 = icmp eq ptr %.1.lcssa, null
  br i1 %.not.i24, label %_upb_Arena_DoFree.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.preheader, %bb.g
  %.0.i25 = phi ptr [ %i.m, %bb.g ], [ %.1.lcssa, %.preheader ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i25, i64 48
  %i.m = load atomic ptr, ptr %i.l monotonic, align 8 ; 2 uses
  %.0.val.i = load i64, ptr %.0.i25, align 8, !tbaa !13
  %i.n = and i64 %.0.val.i, -2
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i25, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i25, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44   ; 2 uses
  %.not25.i19 = icmp eq ptr %i.q, null
  br i1 %.not25.i19, label %._crit_edge23, label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph26, %bb.e
  %.021.i20 = phi ptr [ %i.t, %bb.e ], [ %i.q, %.lr.ph26 ] ; 4 uses
  %i.t = load ptr, ptr %.021.i20, align 8, !tbaa !31 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.021.i20, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !18   ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph22
  %i.x = getelementptr inbounds nuw i8, ptr %.021.i20, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45
  tail call void @upb_Arena_Free(ptr noundef %i.y), !inline_history !48
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph22
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.aa = tail call ptr %i.z(ptr noundef nonnull %i.o, ptr noundef nonnull %.021.i20, i64 noundef range(i64 1, 0) %i.v, i64 noundef 0, ptr noundef null) #11, !inline_history !49 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not25.i = icmp eq ptr %i.t, null
  br i1 %.not25.i, label %._crit_edge23, label %.lr.ph22, !llvm.loop !50

._crit_edge23:                                    ; preds = %bb.e, %.lr.ph26
  %.not26.i = icmp eq ptr %i.s, null
  br i1 %.not26.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge23
  tail call void %i.s(ptr noundef %i.o) #11, !inline_history !51
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge23
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_upb_Arena_DoFree.exit, label %.lr.ph26, !llvm.loop !52

bb.h:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 40
  %i.ac = add i64 %.114.lcssa, -2
  %i.ad = cmpxchg weak ptr %i.ab, i64 %.114.lcssa, i64 %i.ac release acquire, align 8 ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  %i.af = extractvalue { i64, i1 } %i.ad, 0
  br i1 %i.ae, label %_upb_Arena_DoFree.exit, label %bb.b

_upb_Arena_DoFree.exit:                           ; preds = %bb.h, %bb.g, %.preheader
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden void @_upb_Arena_UpdateParentTail(ptr noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = or i64 %i.b, 1
  %i.g = cmpxchg ptr %i.c, i64 %i.d, i64 %i.f release monotonic, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @upb_Arena_SetAllocCleanup(ptr noundef writeonly captures(none) initializes((48, 56)) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.a, align 8, !tbaa !44
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define hidden noundef zeroext i1 @upb_Arena_Fuse(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_upb_Arena_FixupRefs.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val11 = load i64, ptr %i.b, align 8, !tbaa !13
  %i.c = trunc i64 %.val11 to i1
  br i1 %i.c, label %_upb_Arena_FixupRefs.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val = load i64, ptr %i.d, align 8, !tbaa !13
  %i.e = trunc i64 %.val to i1
  br i1 %i.e, label %_upb_Arena_FixupRefs.exit.thread, label %.preheader.outer

.preheader.outer:                                 ; preds = %bb.c, %bb.j
  %.019.ph = phi ptr [ %.sroa.0.0.i.i, %bb.j ], [ %i.b, %bb.c ]
  %.017.ph = phi ptr [ %.sroa.0.0.i34.i, %bb.j ], [ %i.d, %bb.c ]
  %.0.ph = phi i64 [ %i.az, %bb.j ], [ 0, %bb.c ] ; 3 uses
  %i.f = icmp eq i64 %.0.ph, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.outer
  %.019 = phi ptr [ %.019.ph, %.preheader.outer ], [ %.019.be, %.preheader.backedge ] ; 4 uses
  %.017 = phi ptr [ %.017.ph, %.preheader.outer ], [ %.017.be, %.preheader.backedge ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.019, i64 40 ; 2 uses
  %i.h = load atomic i64, ptr %i.g monotonic, align 8 ; 2 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_upb_Arena_FindRoot.exit.i, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.j = load atomic i64, ptr %i.g acquire, align 8
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 3 uses
  %i.n = and i64 %i.m, 1
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i, label %_upb_Arena_FindRoot.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.p = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.k, %bb.d ]
  %.019.i.i = phi ptr [ %i.q, %.lr.ph.i.i ], [ %.019, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 40
  store atomic i64 %i.p, ptr %i.r release, align 8
  %i.s = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 3 uses
  %i.v = and i64 %i.u, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.i, label %_upb_Arena_FindRoot.exit.i, !llvm.loop !12

_upb_Arena_FindRoot.exit.i:                       ; preds = %.lr.ph.i.i, %bb.d, %.preheader
  %.sroa.0.0.i.i = phi ptr [ %.019, %.preheader ], [ %i.k, %bb.d ], [ %i.s, %.lr.ph.i.i ] ; 8 uses
  %.sroa.3.0.i.i = phi i64 [ %i.h, %.preheader ], [ %i.m, %bb.d ], [ %i.u, %.lr.ph.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.017, i64 40 ; 2 uses
  %i.y = load atomic i64, ptr %i.x monotonic, align 8 ; 2 uses
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %_upb_Arena_FindRoot.exit40.i, label %bb.e

bb.e:                                             ; preds = %_upb_Arena_FindRoot.exit.i
  %i.aa = load atomic i64, ptr %i.x acquire, align 8
  %i.ab = inttoptr i64 %i.aa to ptr               ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 3 uses
  %i.ae = and i64 %i.ad, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i38.i, label %_upb_Arena_FindRoot.exit40.i

.lr.ph.i38.i:                                     ; preds = %bb.e, %.lr.ph.i38.i
  %i.ag = phi i64 [ %i.al, %.lr.ph.i38.i ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ah = phi ptr [ %i.aj, %.lr.ph.i38.i ], [ %i.ab, %bb.e ]
  %.019.i39.i = phi ptr [ %i.ah, %.lr.ph.i38.i ], [ %.017, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.019.i39.i, i64 40
  store atomic i64 %i.ag, ptr %i.ai release, align 8
  %i.aj = inttoptr i64 %i.ag to ptr               ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 3 uses
  %i.am = and i64 %i.al, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i38.i, label %_upb_Arena_FindRoot.exit40.i, !llvm.loop !12

_upb_Arena_FindRoot.exit40.i:                     ; preds = %.lr.ph.i38.i, %bb.e, %_upb_Arena_FindRoot.exit.i
  %.sroa.0.0.i34.i = phi ptr [ %.017, %_upb_Arena_FindRoot.exit.i ], [ %i.ab, %bb.e ], [ %i.aj, %.lr.ph.i38.i ] ; 7 uses
  %.sroa.3.0.i35.i = phi i64 [ %i.y, %_upb_Arena_FindRoot.exit.i ], [ %i.ad, %bb.e ], [ %i.al, %.lr.ph.i38.i ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.0.0.i.i, %.sroa.0.0.i34.i
  br i1 %i.ao, label %_upb_Arena_DoFuse.exit, label %bb.f

bb.f:                                             ; preds = %_upb_Arena_FindRoot.exit40.i
  %i.ap = icmp ugt ptr %.sroa.0.0.i.i, %.sroa.0.0.i34.i
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.i.i, %bb.g ], [ %.sroa.0.0.i34.i, %bb.f ] ; 3 uses
  %.sroa.10.0.i = phi i64 [ %.sroa.3.0.i.i, %bb.g ], [ %.sroa.3.0.i35.i, %bb.f ] ; 2 uses
  %.sroa.016.0.i = phi ptr [ %.sroa.0.0.i34.i, %bb.g ], [ %.sroa.0.0.i.i, %bb.f ] ; 5 uses
  %.sroa.13.0.i = phi i64 [ %.sroa.3.0.i35.i, %bb.g ], [ %.sroa.3.0.i.i, %bb.f ] ; 2 uses
  %i.aq = and i64 %.sroa.10.0.i, -2               ; 2 uses
  %i.ar = add i64 %.sroa.13.0.i, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i, i64 40
  %i.at = cmpxchg ptr %i.as, i64 %.sroa.13.0.i, i64 %i.ar release acquire, align 8
  %i.au = extractvalue { i64, i1 } %i.at, 1
  br i1 %i.au, label %bb.i, label %.preheader.backedge

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 40
  %i.aw = ptrtoint ptr %.sroa.016.0.i to i64
  %i.ax = cmpxchg ptr %i.av, i64 %.sroa.10.0.i, i64 %i.aw release acquire, align 8
  %i.ay = extractvalue { i64, i1 } %i.ax, 1
  br i1 %i.ay, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = add i64 %i.aq, %.0.ph
  br label %.preheader.outer

bb.k:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i, i64 56 ; 3 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = trunc i64 %i.bb to i1
  %i.bd = xor i64 %i.bb, 1
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = select i1 %i.bc, ptr %i.be, ptr %.sroa.016.0.i ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load atomic ptr, ptr %i.bg acquire, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i, %bb.k
  %.016.i.i.i = phi ptr [ %i.bh, %bb.k ], [ %i.bn, %._crit_edge.i.i.i ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.bf, %bb.k ], [ %.1.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %.not18.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not18.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.i.i.i
  %.11719.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %.016.i.i.i, %bb.l ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.11719.i.i.i, i64 48
  %i.bj = load atomic ptr, ptr %i.bi acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !53

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.l
  %.1.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.l ], [ %.11719.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1.lcssa.i.i.i, i64 48
  %i.bl = cmpxchg weak ptr %i.bk, ptr null, ptr %.sroa.0.0.i release acquire, align 8 ; 2 uses
  %i.bm = extractvalue { ptr, i1 } %i.bl, 1
  %i.bn = extractvalue { ptr, i1 } %i.bl, 0
  br i1 %i.bm, label %_upb_Arena_LinkForward.exit.i.i, label %bb.l, !llvm.loop !54

_upb_Arena_LinkForward.exit.i.i:                  ; preds = %._crit_edge.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 56 ; 2 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8
  %i.bq = load atomic i64, ptr %i.ba monotonic, align 8 ; 2 uses
  %i.br = trunc i64 %i.bq to i1
  br i1 %i.br, label %bb.m, label %_upb_Arena_DoFuseArenaLists.exit.i

bb.m:                                             ; preds = %_upb_Arena_LinkForward.exit.i.i
  %i.bs = or i64 %i.bp, 1
  %i.bt = cmpxchg ptr %i.ba, i64 %i.bq, i64 %i.bs release monotonic, align 8 ; 0 uses
  br label %_upb_Arena_DoFuseArenaLists.exit.i

_upb_Arena_DoFuseArenaLists.exit.i:               ; preds = %bb.m, %_upb_Arena_LinkForward.exit.i.i
  %i.bu = ptrtoint ptr %.1.lcssa.i.i.i to i64
  store atomic i64 %i.bu, ptr %i.bo release, align 8
  br label %_upb_Arena_DoFuse.exit

_upb_Arena_DoFuse.exit:                           ; preds = %_upb_Arena_DoFuseArenaLists.exit.i, %_upb_Arena_FindRoot.exit40.i
  %.120 = phi ptr [ %.019, %_upb_Arena_FindRoot.exit40.i ], [ %.sroa.0.0.i.i, %_upb_Arena_DoFuseArenaLists.exit.i ] ; 2 uses
  %.118 = phi ptr [ %.017, %_upb_Arena_FindRoot.exit40.i ], [ %.sroa.0.0.i34.i, %_upb_Arena_DoFuseArenaLists.exit.i ] ; 2 uses
  %.1.i = phi ptr [ %.sroa.0.0.i.i, %_upb_Arena_FindRoot.exit40.i ], [ %.sroa.016.0.i, %_upb_Arena_DoFuseArenaLists.exit.i ]
  br i1 %i.f, label %_upb_Arena_FixupRefs.exit.thread, label %bb.n

bb.n:                                             ; preds = %_upb_Arena_DoFuse.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %.1.i, i64 40 ; 2 uses
  %i.bw = load atomic i64, ptr %i.bv monotonic, align 8 ; 3 uses
  %i.bx = and i64 %i.bw, 1
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.preheader.backedge, label %_upb_Arena_FixupRefs.exit

.preheader.backedge:                              ; preds = %bb.n, %bb.h, %_upb_Arena_FixupRefs.exit
  %.019.be = phi ptr [ %.120, %bb.n ], [ %.sroa.0.0.i.i, %bb.h ], [ %.120, %_upb_Arena_FixupRefs.exit ]
  %.017.be = phi ptr [ %.118, %bb.n ], [ %.sroa.0.0.i34.i, %bb.h ], [ %.118, %_upb_Arena_FixupRefs.exit ]
  br label %.preheader

_upb_Arena_FixupRefs.exit:                        ; preds = %bb.n
  %i.bz = sub i64 %i.bw, %.0.ph
  %i.ca = cmpxchg ptr %i.bv, i64 %i.bw, i64 %i.bz monotonic monotonic, align 8
  %i.cb = extractvalue { i64, i1 } %i.ca, 1
  br i1 %i.cb, label %_upb_Arena_FixupRefs.exit.thread, label %.preheader.backedge

_upb_Arena_FixupRefs.exit.thread:                 ; preds = %_upb_Arena_DoFuse.exit, %_upb_Arena_FixupRefs.exit, %bb.c, %bb.b, %bb.a
  %.3 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ true, %_upb_Arena_FixupRefs.exit ], [ true, %_upb_Arena_DoFuse.exit ]
  ret i1 %.3
}

; Function Attrs: norecurse nounwind uwtable
define hidden noundef zeroext i1 @upb_Arena_IsFused(ptr noundef captures(address) %0, ptr noundef captures(address) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_upb_Arena_FindRoot.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load atomic i64, ptr %i.c acquire, align 8
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = and i64 %i.i, 1
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %_upb_Arena_FindRoot.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.l = phi i64 [ %i.q, %.lr.ph.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i ], [ %i.g, %bb.c ]
  %.019.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.b, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.019.i, i64 40
  store atomic i64 %i.l, ptr %i.n release, align 8
  %i.o = inttoptr i64 %i.l to ptr                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %_upb_Arena_FindRoot.exit, !llvm.loop !12

_upb_Arena_FindRoot.exit:                         ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.b ], [ %i.g, %bb.c ], [ %i.o, %.lr.ph.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_upb_Arena_FindRoot.exit37, %_upb_Arena_FindRoot.exit
  %.018 = phi ptr [ %i.t, %_upb_Arena_FindRoot.exit ], [ %.sroa.0.0.i24, %_upb_Arena_FindRoot.exit37 ] ; 3 uses
  %.016 = phi ptr [ %.sroa.0.0.i, %_upb_Arena_FindRoot.exit ], [ %.sroa.0.0.i31, %_upb_Arena_FindRoot.exit37 ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.018, i64 40 ; 2 uses
  %i.v = load atomic i64, ptr %i.u monotonic, align 8
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %_upb_Arena_FindRoot.exit30, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load atomic i64, ptr %i.u acquire, align 8
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = and i64 %i.aa, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i28, label %_upb_Arena_FindRoot.exit30

.lr.ph.i28:                                       ; preds = %bb.e, %.lr.ph.i28
  %i.ad = phi i64 [ %i.ai, %.lr.ph.i28 ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ae = phi ptr [ %i.ag, %.lr.ph.i28 ], [ %i.y, %bb.e ]
  %.019.i29 = phi ptr [ %i.ae, %.lr.ph.i28 ], [ %.018, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %.019.i29, i64 40
  store atomic i64 %i.ad, ptr %i.af release, align 8
  %i.ag = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = and i64 %i.ai, 1
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i28, label %_upb_Arena_FindRoot.exit30, !llvm.loop !12

_upb_Arena_FindRoot.exit30:                       ; preds = %.lr.ph.i28, %bb.d, %bb.e
  %.sroa.0.0.i24 = phi ptr [ %.018, %bb.d ], [ %i.y, %bb.e ], [ %i.ag, %.lr.ph.i28 ] ; 2 uses
  %i.al = icmp eq ptr %.016, %.sroa.0.0.i24       ; 3 uses
  br i1 %i.al, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_upb_Arena_FindRoot.exit30
  %i.am = getelementptr inbounds nuw i8, ptr %.016, i64 40 ; 2 uses
  %i.an = load atomic i64, ptr %i.am monotonic, align 8
  %i.ao = trunc i64 %i.an to i1
  br i1 %i.ao, label %_upb_Arena_FindRoot.exit37, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load atomic i64, ptr %i.am acquire, align 8
  %i.aq = inttoptr i64 %i.ap to ptr               ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = and i64 %i.as, 1
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i35, label %_upb_Arena_FindRoot.exit37

.lr.ph.i35:                                       ; preds = %bb.g, %.lr.ph.i35
  %i.av = phi i64 [ %i.ba, %.lr.ph.i35 ], [ %i.as, %bb.g ] ; 2 uses
  %i.aw = phi ptr [ %i.ay, %.lr.ph.i35 ], [ %i.aq, %bb.g ]
  %.019.i36 = phi ptr [ %i.aw, %.lr.ph.i35 ], [ %.016, %bb.g ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.019.i36, i64 40
  store atomic i64 %i.av, ptr %i.ax release, align 8
  %i.ay = inttoptr i64 %i.av to ptr               ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = and i64 %i.ba, 1
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i35, label %_upb_Arena_FindRoot.exit37, !llvm.loop !12

_upb_Arena_FindRoot.exit37:                       ; preds = %.lr.ph.i35, %bb.f, %bb.g
  %.sroa.0.0.i31 = phi ptr [ %.016, %bb.f ], [ %i.aq, %bb.g ], [ %i.ay, %.lr.ph.i35 ] ; 2 uses
  %.not = icmp eq ptr %.016, %.sroa.0.0.i31
  br i1 %.not, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %_upb_Arena_FindRoot.exit37, %_upb_Arena_FindRoot.exit30, %bb.a
  %.3 = phi i1 [ true, %bb.a ], [ %i.al, %_upb_Arena_FindRoot.exit30 ], [ %i.al, %_upb_Arena_FindRoot.exit37 ]
  ret i1 %.3
}

; Function Attrs: norecurse nounwind uwtable
define hidden noundef zeroext i1 @upb_Arena_IncRefFor(ptr noundef captures(none) %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !13
  %i.b = trunc i64 %.val to i1                    ; 2 uses
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %_upb_Arena_FindRoot.exit
  %.sroa.02.0 = phi ptr [ %.sroa.0.0.i, %_upb_Arena_FindRoot.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 40 ; 2 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_upb_Arena_FindRoot.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = load atomic i64, ptr %i.c acquire, align 8
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 3 uses
  %i.j = and i64 %i.i, 1
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %_upb_Arena_FindRoot.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.l = phi i64 [ %i.q, %.lr.ph.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i ], [ %i.g, %bb.b ]
  %.019.i = phi ptr [ %i.m, %.lr.ph.i ], [ %.sroa.02.0, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %.019.i, i64 40
  store atomic i64 %i.l, ptr %i.n release, align 8
  %i.o = inttoptr i64 %i.l to ptr                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 3 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %_upb_Arena_FindRoot.exit, !llvm.loop !12

_upb_Arena_FindRoot.exit:                         ; preds = %.lr.ph.i, %.preheader, %bb.b
  %.sroa.0.0.i = phi ptr [ %.sroa.02.0, %.preheader ], [ %i.g, %bb.b ], [ %i.o, %.lr.ph.i ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ %i.d, %.preheader ], [ %i.i, %bb.b ], [ %i.q, %.lr.ph.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 40
  %i.u = or i64 %.sroa.3.0.i, 1
  %i.v = add i64 %i.u, 2
  %i.w = cmpxchg weak ptr %i.t, i64 %.sroa.3.0.i, i64 %i.v monotonic monotonic, align 8
  %i.x = extractvalue { i64, i1 } %i.w, 1
  br i1 %i.x, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_upb_Arena_FindRoot.exit, %bb.a
  %.0 = xor i1 %i.b, true
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define hidden void @upb_Arena_DecRefFor(ptr noundef captures(address) %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #3 {
bb.a:
  tail call void @upb_Arena_Free(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @upb_Arena_RefArena(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.b = trunc i64 %.val to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %0, align 8, !tbaa !23  ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val11.i = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.d = ptrtoint ptr %.val11.i to i64
  %i.e = ptrtoint ptr %.val.i to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ult i64 %i.f, 24
  br i1 %i.g, label %upb_Arena_Malloc.exit, label %upb_Arena_Malloc.exit.thread, !prof !32

upb_Arena_Malloc.exit.thread:                     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  store ptr %i.h, ptr %0, align 8, !tbaa !23
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  br label %bb.c

upb_Arena_Malloc.exit:                            ; preds = %bb.b
  %i.i = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, i64 noundef 24), !inline_history !33 ; 2 uses
  %.not.not = icmp eq ptr %i.i, null
  br i1 %.not.not, label %bb.e, label %upb_Arena_Malloc.exit._crit_edge

upb_Arena_Malloc.exit._crit_edge:                 ; preds = %upb_Arena_Malloc.exit
  %.val.i15.pre = load i64, ptr %i.a, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %upb_Arena_Malloc.exit._crit_edge, %upb_Arena_Malloc.exit.thread
  %.val.i15 = phi i64 [ %.val, %upb_Arena_Malloc.exit.thread ], [ %.val.i15.pre, %upb_Arena_Malloc.exit._crit_edge ]
  %.0.i19 = phi ptr [ %.val.i, %upb_Arena_Malloc.exit.thread ], [ %i.i, %upb_Arena_Malloc.exit._crit_edge ] ; 4 uses
  %i.j = trunc i64 %.val.i15 to i1
  br i1 %i.j, label %upb_Arena_IncRefFor.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %_upb_Arena_FindRoot.exit.i
  %.sroa.02.0.i = phi ptr [ %.sroa.0.0.i.i, %_upb_Arena_FindRoot.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 40 ; 2 uses
  %i.l = load atomic i64, ptr %i.k monotonic, align 8 ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_upb_Arena_FindRoot.exit.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.n = load atomic i64, ptr %i.k acquire, align 8
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 3 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i, label %_upb_Arena_FindRoot.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.t = phi i64 [ %i.y, %.lr.ph.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.u = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.o, %bb.d ]
  %.019.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.02.0.i, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 40
  store atomic i64 %i.t, ptr %i.v release, align 8
  %i.w = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 3 uses
  %i.z = and i64 %i.y, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i.i, label %_upb_Arena_FindRoot.exit.i, !llvm.loop !12

_upb_Arena_FindRoot.exit.i:                       ; preds = %.lr.ph.i.i, %bb.d, %.preheader.i
  %.sroa.0.0.i.i = phi ptr [ %.sroa.02.0.i, %.preheader.i ], [ %i.o, %bb.d ], [ %i.w, %.lr.ph.i.i ] ; 2 uses
  %.sroa.3.0.i.i = phi i64 [ %i.l, %.preheader.i ], [ %i.q, %bb.d ], [ %i.y, %.lr.ph.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.ac = or i64 %.sroa.3.0.i.i, 1
  %i.ad = add i64 %i.ac, 2
  %i.ae = cmpxchg weak ptr %i.ab, i64 %.sroa.3.0.i.i, i64 %i.ad monotonic monotonic, align 8
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %upb_Arena_IncRefFor.exit, label %.preheader.i

upb_Arena_IncRefFor.exit:                         ; preds = %_upb_Arena_FindRoot.exit.i, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !17
  store ptr %i.ah, ptr %.0.i19, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i19, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !56
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i19, i64 16
  store ptr %1, ptr %i.aj, align 8, !tbaa !45
  store ptr %.0.i19, ptr %i.ag, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %upb_Arena_IncRefFor.exit, %upb_Arena_Malloc.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %upb_Arena_Malloc.exit ], [ true, %upb_Arena_IncRefFor.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @upb_Arena_GetUpbAlloc(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !13
  %i.b = and i64 %.val, -2
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_upb_Arena_SwapIn_dont_copy_me__upb_internal_use_only(ptr noundef captures(none) initializes((0, 40)) %0, ptr noundef captures(none) %1) local_unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic i64 %i.b, ptr %i.c monotonic, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_upb_Arena_SwapOut_dont_copy_me__upb_internal_use_only(ptr noundef captures(none) initializes((0, 40)) %0, ptr noundef captures(none) %1) local_unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic i64 %i.b, ptr %i.c monotonic, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @_upb_Arena_WasLastAlloc(ptr noundef readonly captures(none) %0, ptr noundef readnone captures(address) %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.01419 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01419, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = icmp eq i64 %i.e, 0
  %i.g = load ptr, ptr %.01419, align 8, !tbaa !31 ; 5 uses
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.preheader
  %cond = icmp eq ptr %i.g, null
  br i1 %cond, label %.loopexit, label %.preheader, !llvm.loop !57

.critedge:                                        ; preds = %.preheader
  %i.h = icmp ne ptr %i.g, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = icmp eq ptr %1, %i.i
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.critedge
  %i.k = add i64 %2, 7
  %i.l = and i64 %i.k, -8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18
  %i.o = add i64 %i.n, -16
  %i.p = icmp eq i64 %i.l, %i.o
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.critedge, %bb.a
  %.0 = phi i1 [ false, %.critedge ], [ false, %bb.a ], [ %i.p, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

attributes #0 = { mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = distinct !{!12, !8}
!13 = !{!14, !11, i64 0}
!14 = !{!"upb_ArenaInternal", !11, i64 0, !15, i64 8, !11, i64 16, !5, i64 24, !16, i64 32, !5, i64 40, !5, i64 48, !5, i64 56}
!15 = !{!"p1 _ZTS12upb_MemBlock", !16, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!14, !15, i64 8}
!18 = !{!19, !11, i64 8}
!19 = !{!"upb_MemBlock", !15, i64 0, !11, i64 8}
!20 = !{!21, !22, i64 8}
!21 = !{!"upb_Arena", !22, i64 0, !22, i64 8}
!22 = !{!"p1 omnipotent char", !16, i64 0}
!23 = !{!21, !22, i64 0}
!24 = !{!14, !11, i64 16}
!25 = !{!26, !11, i64 8}
!26 = !{!"", !16, i64 0, !11, i64 8}
!27 = !{!28, !16, i64 0}
!28 = !{!"upb_alloc", !16, i64 0}
!29 = distinct !{null}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{!19, !15, i64 0}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = distinct !{null}
!34 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!35 = !{!5, !5, i64 0}
!36 = !{!37, !15, i64 24}
!37 = !{!"", !21, i64 0, !14, i64 16}
!38 = !{!37, !11, i64 32}
!39 = !{!37, !16, i64 48}
!40 = !{!37, !11, i64 16}
!41 = !{!37, !22, i64 0}
!42 = !{!37, !22, i64 8}
!43 = distinct !{!43, !8}
!44 = !{!14, !16, i64 32}
!45 = !{!46, !47, i64 16}
!46 = !{!"upb_ArenaRef", !19, i64 0, !47, i64 16}
!47 = !{!"p1 _ZTS9upb_Arena", !16, i64 0}
!48 = distinct !{ptr @upb_Arena_DecRefFor, null}
!49 = distinct !{null, null}
!50 = distinct !{!50, !8}
!51 = distinct !{null}
!52 = distinct !{!52, !8}
!53 = distinct !{!53, !8}
!54 = distinct !{!54, !8}
!55 = !{!46, !15, i64 0}
!56 = !{!46, !11, i64 8}
!57 = distinct !{!57, !8}
end_hunk_0
