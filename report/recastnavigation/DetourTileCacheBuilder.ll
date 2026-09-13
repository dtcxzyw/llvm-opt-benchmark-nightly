Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourTileCacheBuilder?download=true
inline.NumInlined: 236
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN21dtTileCacheCompressorD2Ev:bb.a
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN21dtTileCacheCompressorD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #4

; Function Attrs: nounwind uwtable
define noundef ptr @_Z26dtAllocTileCacheContourSetP16dtTileCacheAlloc(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 16) #15, !call_target !28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind uwtable
define void @_Z25dtFreeTileCacheContourSetP16dtTileCacheAllocP21dtTileCacheContourSet(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !46
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = load ptr, ptr %0, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.e) #15, !call_target !41
  %i.i = load ptr, ptr %0, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) #15, !call_target !41
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50
  %i.p = load ptr, ptr %0, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.o) #15, !call_target !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i32, ptr %1, align 8, !tbaa !46
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %bb.b, label %._crit_edge

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @_Z24dtAllocTileCachePolyMeshP16dtTileCacheAlloc(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 48) #15, !call_target !28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define void @_Z23dtFreeTileCachePolyMeshP16dtTileCacheAllocP19dtTileCachePolyMesh(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = load ptr, ptr %0, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.b) #15, !call_target !41
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = load ptr, ptr %0, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.g) #15, !call_target !41
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.m = load ptr, ptr %0, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.l) #15, !call_target !41
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.r = load ptr, ptr %0, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.q) #15, !call_target !41
  %i.u = load ptr, ptr %0, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) #15, !call_target !41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define noundef range(i32 1073741824, -2147483631) i32 @_Z23dtBuildTileCacheRegionsP16dtTileCacheAllocR16dtTileCacheLayeri(ptr noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca [256 x i8], align 16              ; 17 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load i8, ptr %i.d, align 4, !tbaa !62    ; 13 uses
  %i.f = zext i8 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 49
  %i.h = load i8, ptr %i.g, align 1, !tbaa !63    ; 5 uses
  %i.i = zext i8 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 14 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.l = zext i8 %i.e to i64                      ; 2 uses
  %i.m = zext i8 %i.h to i64
  %i.n = mul nuw nsw i64 %i.m, %i.l
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 -1, i64 %i.n, i1 false)
  %i.o = shl nuw nsw i64 %i.l, 2                  ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.o) #15, !call_target !28, !inline_history !102 ; 16 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZN12dtFixedArrayI16dtLayerSweepSpanED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.s, i8 0, i64 %i.o, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.not239337.not = icmp eq i8 %i.h, 0            ; 2 uses
  br i1 %.not239337.not, label %.critedge254.thread, label %.lr.ph340

.lr.ph340:                                        ; preds = %bb.b
  %.not372.a = icmp eq i8 %i.e, 0
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.v = zext i8 %i.e to i64                      ; 5 uses
  %wide.trip.count396 = zext i8 %i.h to i64
  %wide.trip.count = zext i8 %i.e to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %exitcond.peel.not = icmp eq i8 %i.e, 1
  %xtraiter = and i64 %i.v, 1
  %i.z = icmp eq i8 %i.e, 1
  %unroll_iter = and i64 %i.v, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod545 = trunc i8 %i.e to i1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph340, %.critedge._crit_edge
  %indvars.iv394 = phi i64 [ 0, %.lr.ph340 ], [ %indvars.iv.next395, %.critedge._crit_edge ] ; 5 uses
  %.0216338 = phi i8 [ 0, %.lr.ph340 ], [ %.1217.lcssa485, %.critedge._crit_edge ] ; 5 uses
  %.not236 = icmp eq i8 %.0216338, 0
  br i1 %.not236, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = zext i8 %.0216338 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.aa, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %.not372.a, label %.critedge._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ab = mul nuw nsw i64 %indvars.iv394, %i.v    ; 5 uses
  %i.ac = add nsw i64 %i.ab, -1
  %i.ad = add nsw i64 %indvars.iv394, -1
  %i.ae = mul nsw i64 %i.ad, %i.v                 ; 4 uses
  %.not251 = icmp eq i64 %indvars.iv394, 0        ; 2 uses
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !65  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ab ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !66
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i8 -1, ptr %i.w, align 1, !tbaa !115
  store i16 0, ptr %i.s, align 2, !tbaa !116
  br i1 %.not251, label %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread.peel, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !66
  %.not.i255.peel = icmp eq i8 %i.aj, %i.al
  br i1 %.not.i255.peel, label %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.peel, label %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread.peel

_Z11isConnectedRK16dtTileCacheLayeriii.exit257.peel: ; preds = %bb.g
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !67  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ab
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !66
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !66
  %i.as = zext i8 %i.ar to i32
  %i.at = sub nsw i32 %i.ap, %i.as
  %i.au = tail call noundef i32 @llvm.abs.i32(i32 %i.at, i1 true)
  %.not317.peel = icmp sgt i32 %i.au, %2
  br i1 %.not317.peel, label %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread.peel, label %bb.h

bb.h:                                             ; preds = %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.peel
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ae
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !66  ; 4 uses
  %.not252.peel = icmp eq i8 %i.ax, -1
  br i1 %.not252.peel, label %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load i16, ptr %i.s, align 2, !tbaa !116 ; 2 uses
  %i.az = icmp eq i16 %i.ay, 0
  br i1 %i.az, label %.thread480, label %bb.j

.thread480:                                       ; preds = %bb.i
  store i8 %i.ax, ptr %i.y, align 1, !tbaa !115
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !115
  %i.ba = icmp eq i8 %.pre, %i.ax
  br i1 %i.ba, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 -1, ptr %i.x, align 1, !tbaa !115
  br label %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread.peel

bb.l:                                             ; preds = %.thread480, %bb.j
  %i.bb = add i16 %i.ay, 1
  store i16 %i.bb, ptr %i.s, align 2, !tbaa !116
  %i.bc = zext i8 %i.ax to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !66
  %i.bf = add i8 %i.be, 1
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !66
  br label %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread.peel

_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread.peel: ; preds = %bb.l, %bb.k, %bb.h, %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.peel, %bb.g, %bb.f
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ab
  store i8 0, ptr %i.bh, align 1, !tbaa !66
  br label %bb.m

bb.m:                                             ; preds = %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread.peel, %.lr.ph
  %.2214.peel = phi i8 [ 1, %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread.peel ], [ 0, %.lr.ph ] ; 2 uses
  br i1 %exitcond.peel.not, label %.preheader323, label %.peel.next

.preheader323:                                    ; preds = %bb.w, %bb.m
  %.0212.lcssa = phi i8 [ %.2214.peel, %bb.m ], [ %.2214, %bb.w ] ; 2 uses
  %.not238.not330.not = icmp eq i8 %.0212.lcssa, 0
  br i1 %.not238.not330.not, label %.lr.ph336, label %.lr.ph333.preheader

.lr.ph333.preheader:                              ; preds = %.preheader323
  %wide.trip.count387 = zext i8 %.0212.lcssa to i64
  br label %.lr.ph333

.peel.next:                                       ; preds = %bb.m, %bb.w
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 1, %bb.m ] ; 4 uses
  %.0212326 = phi i8 [ %.2214, %bb.w ], [ %.2214.peel, %bb.m ] ; 5 uses
  %i.bi = add nuw nsw i64 %indvars.iv, %i.ab      ; 4 uses
  %i.bj = load ptr, ptr %i.t, align 8, !tbaa !65  ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !66  ; 2 uses
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.w, label %bb.n

bb.n:                                             ; preds = %.peel.next
  %i.bn = add nsw i64 %i.ac, %indvars.iv          ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !66
  %.not.i = icmp eq i8 %i.bl, %i.bp
  br i1 %.not.i, label %_Z11isConnectedRK16dtTileCacheLayeriii.exit, label %.thread

_Z11isConnectedRK16dtTileCacheLayeriii.exit:      ; preds = %bb.n
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !67  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bi
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !66
  %i.bt = zext i8 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bn
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !66
  %i.bw = zext i8 %i.bv to i32
  %i.bx = sub nsw i32 %i.bt, %i.bw
  %i.by = tail call noundef i32 @llvm.abs.i32(i32 %i.bx, i1 true)
  %.not316 = icmp sgt i32 %i.by, %2
  br i1 %.not316, label %.thread, label %bb.o

bb.o:                                             ; preds = %_Z11isConnectedRK16dtTileCacheLayeriii.exit
  %i.bz = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bn
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !66  ; 2 uses
  %i.cc = icmp eq i8 %i.cb, -1
  br i1 %i.cc, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.n, %_Z11isConnectedRK16dtTileCacheLayeriii.exit, %bb.o
  %i.cd = add i8 %.0212326, 1
  %i.ce = zext i8 %.0212326 to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 3
  store i8 -1, ptr %i.cg, align 1, !tbaa !115
  store i16 0, ptr %i.cf, align 2, !tbaa !116
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o
  %.1213 = phi i8 [ %i.cd, %.thread ], [ %.0212326, %bb.o ]
  %.1210 = phi i8 [ %.0212326, %.thread ], [ %i.cb, %bb.o ] ; 2 uses
  %3 = add nsw i64 %indvars.iv, %i.ae             ; 3 uses
  br i1 %.not251, label %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = load i8, ptr %i.bk, align 1, !tbaa !66
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 %3
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !66
  %.not.i255 = icmp eq i8 %i.ch, %i.cj
  br i1 %.not.i255, label %_Z11isConnectedRK16dtTileCacheLayeriii.exit257, label %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread

_Z11isConnectedRK16dtTileCacheLayeriii.exit257:   ; preds = %bb.q
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !67  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.bi
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !66
  %i.cn = zext i8 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 %3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !66
  %i.cq = zext i8 %i.cp to i32
  %i.cr = sub nsw i32 %i.cn, %i.cq
  %i.cs = tail call noundef i32 @llvm.abs.i32(i32 %i.cr, i1 true)
  %.not317 = icmp sgt i32 %i.cs, %2
  br i1 %.not317, label %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread, label %bb.r

bb.r:                                             ; preds = %_Z11isConnectedRK16dtTileCacheLayeriii.exit257
  %i.ct = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %3
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !66  ; 4 uses
  %.not252 = icmp eq i8 %i.cv, -1
  br i1 %.not252, label %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = zext i8 %.1210 to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cw ; 4 uses
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !116 ; 2 uses
  %i.cz = icmp eq i16 %i.cy, 0
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 3 ; 2 uses
  br i1 %i.cz, label %.thread483, label %bb.t

.thread483:                                       ; preds = %bb.s
  store i8 %i.cv, ptr %i.da, align 1, !tbaa !115
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %.pre461 = load i8, ptr %i.da, align 1, !tbaa !115
  %i.db = icmp eq i8 %.pre461, %i.cv
  br i1 %i.db, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.thread483, %bb.t
  %i.dc = add i16 %i.cy, 1
  store i16 %i.dc, ptr %i.cx, align 2, !tbaa !116
  %i.dd = zext i8 %i.cv to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dd ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !66
  %i.dg = add i8 %i.df, 1
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !66
  br label %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread

bb.v:                                             ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 3
  store i8 -1, ptr %i.dh, align 1, !tbaa !115
  br label %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread

_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread: ; preds = %bb.q, %bb.r, %bb.v, %bb.u, %_Z11isConnectedRK16dtTileCacheLayeriii.exit257, %bb.p
  %i.di = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.bi
  store i8 %.1210, ptr %i.dj, align 1, !tbaa !66
  br label %bb.w

bb.w:                                             ; preds = %.peel.next, %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread
  %.2214 = phi i8 [ %.1213, %_Z11isConnectedRK16dtTileCacheLayeriii.exit257.thread ], [ %.0212326, %.peel.next ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader323, label %.peel.next, !llvm.loop !103

.lr.ph336:                                        ; preds = %bb.aa, %.preheader323
  %.1217.lcssa = phi i8 [ %.0216338, %.preheader323 ], [ %.2218, %bb.aa ] ; 3 uses
  %i.dk = mul nuw nsw i64 %indvars.iv394, %i.v    ; 3 uses
  br i1 %i.z, label %.epil.preheader, label %.lr.ph336.new

.lr.ph333:                                        ; preds = %.lr.ph333.preheader, %bb.aa
  %indvars.iv385 = phi i64 [ 0, %.lr.ph333.preheader ], [ %indvars.iv.next386, %bb.aa ] ; 2 uses
  %.1217331 = phi i8 [ %.0216338, %.lr.ph333.preheader ], [ %.2218, %bb.aa ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv385 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 3
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !115 ; 3 uses
  %.not237 = icmp eq i8 %i.dn, -1
  br i1 %.not237, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph333
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !66
  %i.dr = load i16, ptr %i.dl, align 2, !tbaa !116
  %i.ds = zext i8 %i.dq to i16
  %i.dt = icmp eq i16 %i.dr, %i.ds
  br i1 %i.dt, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph333
  %i.du = icmp eq i8 %.1217331, -1
  br i1 %i.du, label %.critedge254, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dv = add nuw i8 %.1217331, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.z
  %.sink = phi i8 [ %.1217331, %bb.z ], [ %i.dn, %bb.x ]
  %.2218 = phi i8 [ %i.dv, %bb.z ], [ %.1217331, %bb.x ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store i8 %.sink, ptr %i.dw, align 2, !tbaa !117
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 1 ; 2 uses
  %exitcond388.not = icmp eq i64 %indvars.iv.next386, %wide.trip.count387
  br i1 %exitcond388.not, label %.lr.ph336, label %.lr.ph333

.lr.ph336.new:                                    ; preds = %.lr.ph336, %.critedge.1
  %indvars.iv389 = phi i64 [ %indvars.iv.next390.1, %.critedge.1 ], [ 0, %.lr.ph336 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.critedge.1 ], [ 0, %.lr.ph336 ]
  %i.dx = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %indvars.iv389
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dk ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !66  ; 2 uses
  %.not248 = icmp eq i8 %i.ea, -1
  br i1 %.not248, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph336.new
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !117
  store i8 %i.ee, ptr %i.dz, align 1, !tbaa !66
  br label %.critedge

.critedge:                                        ; preds = %bb.ab, %.lr.ph336.new
  %i.ef = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %indvars.iv389
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.dk ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !66  ; 2 uses
  %.not248.1 = icmp eq i8 %i.ej, -1
  br i1 %.not248.1, label %.critedge.1, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  %i.en = load i8, ptr %i.em, align 2, !tbaa !117
  store i8 %i.en, ptr %i.ei, align 1, !tbaa !66
  br label %.critedge.1

.critedge.1:                                      ; preds = %bb.ac, %.critedge
  %indvars.iv.next390.1 = add nuw nsw i64 %indvars.iv389, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge._crit_edge.loopexit.unr-lcssa, label %.lr.ph336.new

.critedge._crit_edge.loopexit.unr-lcssa:          ; preds = %.critedge.1
  br i1 %lcmp.mod.not, label %.critedge._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge._crit_edge.loopexit.unr-lcssa, %.lr.ph336
  %indvars.iv389.epil.init = phi i64 [ 0, %.lr.ph336 ], [ %indvars.iv.next390.1, %.critedge._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod545)
  %i.eo = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %indvars.iv389.epil.init
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.dk ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !66  ; 2 uses
  %.not248.epil = icmp eq i8 %i.er, -1
  br i1 %.not248.epil, label %.critedge._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %.epil.preheader
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  %i.ev = load i8, ptr %i.eu, align 2, !tbaa !117
  store i8 %i.ev, ptr %i.eq, align 1, !tbaa !66
  br label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge._crit_edge.loopexit.unr-lcssa, %bb.ad, %.epil.preheader, %bb.e
  %.1217.lcssa485 = phi i8 [ %.0216338, %bb.e ], [ %.1217.lcssa, %.epil.preheader ], [ %.1217.lcssa, %bb.ad ], [ %.1217.lcssa, %.critedge._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv.next395 = add nuw nsw i64 %indvars.iv394, 1 ; 2 uses
  %exitcond397.not = icmp eq i64 %indvars.iv.next395, %wide.trip.count396
  br i1 %exitcond397.not, label %.critedge254.thread, label %bb.c

.critedge254.thread:                              ; preds = %.critedge._crit_edge, %bb.b
  %.0216.lcssa = phi i8 [ 0, %bb.b ], [ %.1217.lcssa485, %.critedge._crit_edge ] ; 11 uses
  %i.ew = zext i8 %.0216.lcssa to i64             ; 4 uses
  %i.ex = mul nuw nsw i64 %i.ew, 24               ; 2 uses
  %i.ey = load ptr, ptr %0, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = tail call noundef ptr %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ex) #15, !call_target !28, !inline_history !104 ; 71 uses
  %.not240 = icmp eq ptr %i.fb, null
  br i1 %.not240, label %_ZN12dtFixedArrayI21dtLayerMonotoneRegionED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %.critedge254.thread
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fb, i8 0, i64 %i.ex, i1 false)
  %.not374.a = icmp eq i8 %.0216.lcssa, 0         ; 3 uses
  br i1 %.not374.a, label %.preheader322, label %.lr.ph343.preheader

.lr.ph343.preheader:                              ; preds = %bb.ae
  %wide.trip.count401 = zext i8 %.0216.lcssa to i64 ; 2 uses
  %xtraiter546 = and i64 %wide.trip.count401, 7   ; 3 uses
  %i.fc = icmp ult i8 %.0216.lcssa, 8
  br i1 %i.fc, label %.lr.ph343.epil.preheader, label %.lr.ph343.preheader.new

.lr.ph343.preheader.new:                          ; preds = %.lr.ph343.preheader
  %unroll_iter549 = and i64 %wide.trip.count401, 248
  br label %.lr.ph343

.preheader322.loopexit.unr-lcssa:                 ; preds = %.lr.ph343
  %lcmp.mod547.not = icmp eq i64 %xtraiter546, 0
  br i1 %lcmp.mod547.not, label %.preheader322, label %.lr.ph343.epil.preheader

.lr.ph343.epil.preheader:                         ; preds = %.preheader322.loopexit.unr-lcssa, %.lr.ph343.preheader
  %indvars.iv398.epil.init = phi i64 [ 0, %.lr.ph343.preheader ], [ %indvars.iv.next399.7, %.preheader322.loopexit.unr-lcssa ]
  %lcmp.mod548 = icmp ne i64 %xtraiter546, 0
  tail call void @llvm.assume(i1 %lcmp.mod548)
  br label %.lr.ph343.epil

.lr.ph343.epil:                                   ; preds = %.lr.ph343.epil, %.lr.ph343.epil.preheader
  %indvars.iv398.epil = phi i64 [ %indvars.iv398.epil.init, %.lr.ph343.epil.preheader ], [ %indvars.iv.next399.epil, %.lr.ph343.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph343.epil.preheader ], [ %epil.iter.next, %.lr.ph343.epil ]
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv398.epil
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 21
  store i8 -1, ptr %i.fe, align 1, !tbaa !119
  %indvars.iv.next399.epil = add nuw nsw i64 %indvars.iv398.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter546
  br i1 %epil.iter.cmp.not, label %.preheader322, label %.lr.ph343.epil, !llvm.loop !105

.preheader322:                                    ; preds = %.preheader322.loopexit.unr-lcssa, %.lr.ph343.epil, %bb.ae
  br i1 %.not239337.not, label %.preheader320, label %.preheader321.lr.ph

.preheader321.lr.ph:                              ; preds = %.preheader322
  %.not376 = icmp eq i8 %i.e, 0
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not376, label %.preheader320, label %.preheader321.preheader

.preheader321.preheader:                          ; preds = %.preheader321.lr.ph
  %i.fh = zext i8 %i.e to i64                     ; 4 uses
  %wide.trip.count416 = zext i8 %i.h to i64
  %wide.trip.count406 = zext i8 %i.e to i64
  %xtraiter552 = and i64 %i.fh, 1
  %i.fi = icmp eq i8 %i.e, 1
  %unroll_iter556 = and i64 %i.fh, 254
  %lcmp.mod554.not = icmp eq i64 %xtraiter552, 0
  %lcmp.mod555 = trunc i8 %i.e to i1
  br label %.preheader321

.lr.ph343:                                        ; preds = %.lr.ph343, %.lr.ph343.preheader.new
  %indvars.iv398 = phi i64 [ 0, %.lr.ph343.preheader.new ], [ %indvars.iv.next399.7, %.lr.ph343 ] ; 9 uses
  %niter550 = phi i64 [ 0, %.lr.ph343.preheader.new ], [ %niter550.next.7, %.lr.ph343 ]
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv398
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 21
  store i8 -1, ptr %i.fk, align 1, !tbaa !119
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv398
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 45
  store i8 -1, ptr %i.fm, align 1, !tbaa !119
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv398
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 69
  store i8 -1, ptr %i.fo, align 1, !tbaa !119
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv398
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 93
  store i8 -1, ptr %i.fq, align 1, !tbaa !119
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv398
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 117
  store i8 -1, ptr %i.fs, align 1, !tbaa !119
  %i.ft = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv398
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 141
  store i8 -1, ptr %i.fu, align 1, !tbaa !119
  %i.fv = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv398
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 165
  store i8 -1, ptr %i.fw, align 1, !tbaa !119
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv398
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 189
  store i8 -1, ptr %i.fy, align 1, !tbaa !119
  %indvars.iv.next399.7 = add nuw nsw i64 %indvars.iv398, 8 ; 2 uses
  %niter550.next.7 = add i64 %niter550, 8         ; 2 uses
  %niter550.ncmp.7 = icmp eq i64 %niter550.next.7, %unroll_iter549
  br i1 %niter550.ncmp.7, label %.preheader322.loopexit.unr-lcssa, label %.lr.ph343

.preheader321:                                    ; preds = %.preheader321.preheader, %._crit_edge
  %indvars.iv413 = phi i64 [ 0, %.preheader321.preheader ], [ %indvars.iv.next414, %._crit_edge ] ; 4 uses
  %i.fz = mul nuw nsw i64 %indvars.iv413, %i.fh
  %4 = add nsw i64 %indvars.iv413, -1
  %5 = mul nsw i64 %4, %i.fh
  %.not245 = icmp eq i64 %indvars.iv413, 0
  br i1 %.not245, label %.lr.ph345.split.us, label %.lr.ph345.split

.lr.ph345.split.us:                               ; preds = %.preheader321
  %i.ga = load ptr, ptr %i.j, align 8, !tbaa !64  ; 3 uses
  br i1 %i.fi, label %.epil.preheader551, label %.lr.ph345.split.us.new

.lr.ph345.split.us.new:                           ; preds = %.lr.ph345.split.us, %_ZL13addUniqueLastPhRhh.exit265.us.1
  %indvars.iv408 = phi i64 [ %indvars.iv.next409.1, %_ZL13addUniqueLastPhRhh.exit265.us.1 ], [ 0, %.lr.ph345.split.us ] ; 4 uses
  %niter557 = phi i64 [ %niter557.next.1, %_ZL13addUniqueLastPhRhh.exit265.us.1 ], [ 0, %.lr.ph345.split.us ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %indvars.iv408
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !66  ; 2 uses
  %i.gd = icmp eq i8 %i.gc, -1
  br i1 %i.gd, label %_ZL13addUniqueLastPhRhh.exit265.us, label %bb.af

bb.af:                                            ; preds = %.lr.ph345.split.us.new
  %i.ge = zext i8 %i.gc to i64
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.ge ; 3 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !120
  %i.gh = add nsw i32 %i.gg, 1
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !120
  %i.gi = load ptr, ptr %i.ff, align 8, !tbaa !65
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv408
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !66
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 22
  store i8 %i.gk, ptr %i.gl, align 2, !tbaa !121
  br label %_ZL13addUniqueLastPhRhh.exit265.us

_ZL13addUniqueLastPhRhh.exit265.us:               ; preds = %bb.af, %.lr.ph345.split.us.new
  %indvars.iv.next409 = or disjoint i64 %indvars.iv408, 1 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ga, i64 %indvars.iv.next409
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !66  ; 2 uses
  %i.go = icmp eq i8 %i.gn, -1
  br i1 %i.go, label %_ZL13addUniqueLastPhRhh.exit265.us.1, label %bb.ag

bb.ag:                                            ; preds = %_ZL13addUniqueLastPhRhh.exit265.us
  %i.gp = zext i8 %i.gn to i64
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.gp ; 3 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !120
  %i.gs = add nsw i32 %i.gr, 1
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !120
  %i.gt = load ptr, ptr %i.ff, align 8, !tbaa !65
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.next409
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !66
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 22
  store i8 %i.gv, ptr %i.gw, align 2, !tbaa !121
  br label %_ZL13addUniqueLastPhRhh.exit265.us.1

_ZL13addUniqueLastPhRhh.exit265.us.1:             ; preds = %bb.ag, %_ZL13addUniqueLastPhRhh.exit265.us
  %indvars.iv.next409.1 = add nuw nsw i64 %indvars.iv408, 2 ; 2 uses
  %niter557.next.1 = add i64 %niter557, 2         ; 2 uses
  %niter557.ncmp.1 = icmp eq i64 %niter557.next.1, %unroll_iter556
  br i1 %niter557.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph345.split.us.new

.preheader320:                                    ; preds = %._crit_edge, %.preheader321.lr.ph, %.preheader322
  br i1 %.not374.a, label %._crit_edge359.thread, label %.lr.ph348.preheader

._crit_edge359.thread:                            ; preds = %.preheader320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  br label %.preheader318.preheader

.preheader318.preheader.loopexit.unr-lcssa:       ; preds = %.lr.ph362
  %lcmp.mod574.not = icmp eq i64 %xtraiter572, 0
  br i1 %lcmp.mod574.not, label %.preheader318.preheader, label %.lr.ph362.epil.preheader

.lr.ph362.epil.preheader:                         ; preds = %.preheader318.preheader.loopexit.unr-lcssa, %._crit_edge359
  %indvars.iv438.epil.init = phi i64 [ 0, %._crit_edge359 ], [ %indvars.iv.next439.3, %.preheader318.preheader.loopexit.unr-lcssa ]
  %lcmp.mod575 = icmp ne i64 %xtraiter572, 0
  tail call void @llvm.assume(i1 %lcmp.mod575)
  br label %.lr.ph362.epil

.lr.ph362.epil:                                   ; preds = %.lr.ph362.epil, %.lr.ph362.epil.preheader
  %indvars.iv438.epil = phi i64 [ %indvars.iv438.epil.init, %.lr.ph362.epil.preheader ], [ %indvars.iv.next439.epil, %.lr.ph362.epil ] ; 2 uses
  %epil.iter573 = phi i64 [ 0, %.lr.ph362.epil.preheader ], [ %epil.iter573.next, %.lr.ph362.epil ]
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv438.epil
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 21
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !119
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ha
  store i8 1, ptr %i.hb, align 1, !tbaa !66
  %indvars.iv.next439.epil = add nuw nsw i64 %indvars.iv438.epil, 1
  %epil.iter573.next = add i64 %epil.iter573, 1   ; 2 uses
  %epil.iter573.cmp.not = icmp eq i64 %epil.iter573.next, %xtraiter572
  br i1 %epil.iter573.cmp.not, label %.preheader318.preheader, label %.lr.ph362.epil, !llvm.loop !106

.preheader318.preheader:                          ; preds = %.preheader318.preheader.loopexit.unr-lcssa, %.lr.ph362.epil, %._crit_edge359.thread
  br label %.preheader318

.lr.ph348.preheader:                              ; preds = %.preheader320
  %wide.trip.count421 = zext i8 %.0216.lcssa to i64 ; 9 uses
  %xtraiter558 = and i64 %wide.trip.count421, 7   ; 3 uses
  %i.hc = icmp ult i8 %.0216.lcssa, 8
  br i1 %i.hc, label %.lr.ph348.epil.preheader, label %.lr.ph348.preheader.new

.lr.ph348.preheader.new:                          ; preds = %.lr.ph348.preheader
  %unroll_iter562 = and i64 %wide.trip.count421, 248
  br label %.lr.ph348

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZL13addUniqueLastPhRhh.exit265.us.1
  br i1 %lcmp.mod554.not, label %._crit_edge, label %.epil.preheader551

.epil.preheader551:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph345.split.us
  %indvars.iv408.epil.init = phi i64 [ 0, %.lr.ph345.split.us ], [ %indvars.iv.next409.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod555)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %indvars.iv408.epil.init
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !66  ; 2 uses
  %i.hf = icmp eq i8 %i.he, -1
  br i1 %i.hf, label %._crit_edge, label %bb.ah

bb.ah:                                            ; preds = %.epil.preheader551
  %i.hg = zext i8 %i.he to i64
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.hg ; 3 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !120
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !120
  %i.hk = load ptr, ptr %i.ff, align 8, !tbaa !65
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %indvars.iv408.epil.init
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !66
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 22
  store i8 %i.hm, ptr %i.hn, align 2, !tbaa !121
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZL13addUniqueLastPhRhh.exit265, %._crit_edge.loopexit.unr-lcssa, %bb.ah, %.epil.preheader551
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count416
  br i1 %exitcond417.not, label %.preheader320, label %.preheader321

.lr.ph345.split:                                  ; preds = %.preheader321, %_ZL13addUniqueLastPhRhh.exit265
  %indvars.iv403 = phi i64 [ %indvars.iv.next404, %_ZL13addUniqueLastPhRhh.exit265 ], [ 0, %.preheader321 ] ; 3 uses
  %i.ho = add nuw nsw i64 %indvars.iv403, %i.fz   ; 3 uses
  %i.hp = load ptr, ptr %i.j, align 8, !tbaa !64  ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ho
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !66  ; 5 uses
  %i.hs = icmp eq i8 %i.hr, -1
  br i1 %i.hs, label %_ZL13addUniqueLastPhRhh.exit265, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph345.split
  %i.ht = zext i8 %i.hr to i64
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.ht ; 5 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !120
  %i.hw = add nsw i32 %i.hv, 1
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !120
  %i.hx = load ptr, ptr %i.ff, align 8, !tbaa !65 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ho
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !66  ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 22
  store i8 %i.hz, ptr %i.ia, align 2, !tbaa !121
  %i.ib = add nuw nsw i64 %indvars.iv403, %5      ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !66
  %.not.i258 = icmp eq i8 %i.hz, %i.id
  br i1 %.not.i258, label %_Z11isConnectedRK16dtTileCacheLayeriii.exit260, label %_ZL13addUniqueLastPhRhh.exit265

_Z11isConnectedRK16dtTileCacheLayeriii.exit260:   ; preds = %bb.ai
  %i.ie = load ptr, ptr %i.fg, align 8, !tbaa !67 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ho
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !66
  %i.ih = zext i8 %i.ig to i32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ib
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !66
  %i.ik = zext i8 %i.ij to i32
  %i.il = sub nsw i32 %i.ih, %i.ik
  %i.im = tail call noundef i32 @llvm.abs.i32(i32 %i.il, i1 true)
  %.not315 = icmp sgt i32 %i.im, %2
  br i1 %.not315, label %_ZL13addUniqueLastPhRhh.exit265, label %bb.aj

bb.aj:                                            ; preds = %_Z11isConnectedRK16dtTileCacheLayeriii.exit260
  %i.in = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ib
  %i.io = load i8, ptr %i.in, align 1, !tbaa !66  ; 5 uses
  %.not246 = icmp eq i8 %i.io, -1
  %.not247 = icmp eq i8 %i.io, %i.hr
  %or.cond = or i1 %.not246, %.not247
  br i1 %or.cond, label %_ZL13addUniqueLastPhRhh.exit265, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hu, i64 4 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hu, i64 20 ; 3 uses
  %i.ir = load i8, ptr %i.iq, align 4, !tbaa !66  ; 2 uses
  %.not.i261 = icmp eq i8 %i.ir, 0
  br i1 %.not.i261, label %._crit_edge.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.is = zext i8 %i.ir to i64                    ; 2 uses
  %i.it = getelementptr i8, ptr %i.ip, i64 %i.is
  %i.iu = getelementptr i8, ptr %i.it, i64 -1
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !66
  %i.iw = icmp eq i8 %i.iv, %i.io
  br i1 %i.iw, label %_ZL13addUniqueLastPhRhh.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.al, %bb.ak
  %.pre-phi.i = phi i64 [ %i.is, %bb.al ], [ 0, %bb.ak ]
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.pre-phi.i
  store i8 %i.io, ptr %i.ix, align 1, !tbaa !66
  %i.iy = load i8, ptr %i.iq, align 4, !tbaa !66
  %i.iz = add i8 %i.iy, 1
  store i8 %i.iz, ptr %i.iq, align 4, !tbaa !66
  br label %_ZL13addUniqueLastPhRhh.exit

_ZL13addUniqueLastPhRhh.exit:                     ; preds = %bb.al, %._crit_edge.i
  %i.ja = zext i8 %i.io to i64
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.ja ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 20 ; 3 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !66  ; 2 uses
  %.not.i262 = icmp eq i8 %i.je, 0
  br i1 %.not.i262, label %._crit_edge.i263, label %bb.am

bb.am:                                            ; preds = %_ZL13addUniqueLastPhRhh.exit
  %i.jf = zext i8 %i.je to i64                    ; 2 uses
  %i.jg = getelementptr i8, ptr %i.jc, i64 %i.jf
  %i.jh = getelementptr i8, ptr %i.jg, i64 -1
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !66
  %i.jj = icmp eq i8 %i.ji, %i.hr
  br i1 %i.jj, label %_ZL13addUniqueLastPhRhh.exit265, label %._crit_edge.i263

._crit_edge.i263:                                 ; preds = %bb.am, %_ZL13addUniqueLastPhRhh.exit
  %.pre-phi.i264 = phi i64 [ %i.jf, %bb.am ], [ 0, %_ZL13addUniqueLastPhRhh.exit ]
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.pre-phi.i264
  store i8 %i.hr, ptr %i.jk, align 1, !tbaa !66
  %i.jl = load i8, ptr %i.jd, align 1, !tbaa !66
  %i.jm = add i8 %i.jl, 1
  store i8 %i.jm, ptr %i.jd, align 1, !tbaa !66
  br label %_ZL13addUniqueLastPhRhh.exit265

_ZL13addUniqueLastPhRhh.exit265:                  ; preds = %bb.ai, %._crit_edge.i263, %bb.am, %_Z11isConnectedRK16dtTileCacheLayeriii.exit260, %bb.aj, %.lr.ph345.split
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %exitcond407.not = icmp eq i64 %indvars.iv.next404, %wide.trip.count406
  br i1 %exitcond407.not, label %._crit_edge, label %.lr.ph345.split

.lr.ph358.unr-lcssa:                              ; preds = %.lr.ph348
  %lcmp.mod560.not = icmp eq i64 %xtraiter558, 0
  br i1 %lcmp.mod560.not, label %.lr.ph358, label %.lr.ph348.epil.preheader

.lr.ph348.epil.preheader:                         ; preds = %.lr.ph358.unr-lcssa, %.lr.ph348.preheader
  %indvars.iv418.epil.init = phi i64 [ 0, %.lr.ph348.preheader ], [ %indvars.iv.next419.7, %.lr.ph358.unr-lcssa ]
  %lcmp.mod561 = icmp ne i64 %xtraiter558, 0
  tail call void @llvm.assume(i1 %lcmp.mod561)
  br label %.lr.ph348.epil

.lr.ph348.epil:                                   ; preds = %.lr.ph348.epil, %.lr.ph348.epil.preheader
  %indvars.iv418.epil = phi i64 [ %indvars.iv418.epil.init, %.lr.ph348.epil.preheader ], [ %indvars.iv.next419.epil, %.lr.ph348.epil ] ; 3 uses
  %epil.iter559 = phi i64 [ 0, %.lr.ph348.epil.preheader ], [ %epil.iter559.next, %.lr.ph348.epil ]
  %i.jn = trunc i64 %indvars.iv418.epil to i8
  %i.jo = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv418.epil
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 21
  store i8 %i.jn, ptr %i.jp, align 1, !tbaa !119
  %indvars.iv.next419.epil = add nuw nsw i64 %indvars.iv418.epil, 1
  %epil.iter559.next = add i64 %epil.iter559, 1   ; 2 uses
  %epil.iter559.cmp.not = icmp eq i64 %epil.iter559.next, %xtraiter558
  br i1 %epil.iter559.cmp.not, label %.lr.ph358, label %.lr.ph348.epil, !llvm.loop !107

.lr.ph358:                                        ; preds = %.lr.ph348.epil, %.lr.ph358.unr-lcssa
  %wide.trip.count436 = zext i8 %.0216.lcssa to i64 ; 2 uses
  %min.iters.check = icmp ult i8 %.0216.lcssa, 8
  %min.iters.check491 = icmp ult i8 %.0216.lcssa, 16
  %i.jq = and i64 %wide.trip.count421, 8
  %n.vec = and i64 %wide.trip.count421, 240       ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count421
  %min.epilog.iters.check.not.not = icmp eq i64 %i.jq, 0
  %n.vec522 = and i64 %wide.trip.count421, 248    ; 3 uses
  %cmp.n543 = icmp eq i64 %n.vec522, %wide.trip.count421
  br label %bb.an

.lr.ph348:                                        ; preds = %.lr.ph348, %.lr.ph348.preheader.new
  %indvars.iv418 = phi i64 [ 0, %.lr.ph348.preheader.new ], [ %indvars.iv.next419.7, %.lr.ph348 ] ; 10 uses
  %niter563 = phi i64 [ 0, %.lr.ph348.preheader.new ], [ %niter563.next.7, %.lr.ph348 ]
  %i.jr = trunc i64 %indvars.iv418 to i8
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv418
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 21
  store i8 %i.jr, ptr %i.jt, align 1, !tbaa !119
  %indvars.iv.next419 = or disjoint i64 %indvars.iv418, 1 ; 2 uses
  %i.ju = trunc i64 %indvars.iv.next419 to i8
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv.next419
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 21
  store i8 %i.ju, ptr %i.jw, align 1, !tbaa !119
  %indvars.iv.next419.1 = or disjoint i64 %indvars.iv418, 2 ; 2 uses
  %i.jx = trunc i64 %indvars.iv.next419.1 to i8
  %i.jy = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv.next419.1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 21
  store i8 %i.jx, ptr %i.jz, align 1, !tbaa !119
  %indvars.iv.next419.2 = or disjoint i64 %indvars.iv418, 3 ; 2 uses
  %i.ka = trunc i64 %indvars.iv.next419.2 to i8
  %i.kb = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv.next419.2
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 21
  store i8 %i.ka, ptr %i.kc, align 1, !tbaa !119
  %indvars.iv.next419.3 = or disjoint i64 %indvars.iv418, 4 ; 2 uses
  %i.kd = trunc i64 %indvars.iv.next419.3 to i8
  %i.ke = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv.next419.3
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 21
  store i8 %i.kd, ptr %i.kf, align 1, !tbaa !119
  %indvars.iv.next419.4 = or disjoint i64 %indvars.iv418, 5 ; 2 uses
  %i.kg = trunc i64 %indvars.iv.next419.4 to i8
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv.next419.4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 21
  store i8 %i.kg, ptr %i.ki, align 1, !tbaa !119
  %indvars.iv.next419.5 = or disjoint i64 %indvars.iv418, 6 ; 2 uses
  %i.kj = trunc i64 %indvars.iv.next419.5 to i8
  %i.kk = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv.next419.5
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 21
  store i8 %i.kj, ptr %i.kl, align 1, !tbaa !119
  %indvars.iv.next419.6 = or disjoint i64 %indvars.iv418, 7 ; 2 uses
  %i.km = trunc i64 %indvars.iv.next419.6 to i8
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv.next419.6
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 21
  store i8 %i.km, ptr %i.ko, align 1, !tbaa !119
  %indvars.iv.next419.7 = add nuw nsw i64 %indvars.iv418, 8 ; 2 uses
  %niter563.next.7 = add i64 %niter563, 8         ; 2 uses
  %niter563.ncmp.7 = icmp eq i64 %niter563.next.7, %unroll_iter562
  br i1 %niter563.ncmp.7, label %.lr.ph358.unr-lcssa, label %.lr.ph348

._crit_edge359:                                   ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %xtraiter572 = and i64 %wide.trip.count421, 3   ; 3 uses
  %i.kp = icmp ult i8 %.0216.lcssa, 4
  br i1 %i.kp, label %.lr.ph362.epil.preheader, label %._crit_edge359.new

._crit_edge359.new:                               ; preds = %._crit_edge359
  %unroll_iter576 = and i64 %wide.trip.count421, 252
  br label %.lr.ph362

bb.an:                                            ; preds = %.lr.ph358, %.loopexit
  %indvars.iv433 = phi i64 [ 0, %.lr.ph358 ], [ %indvars.iv.next434, %.loopexit ] ; 2 uses
  %i.kq = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv433 ; 5 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 20
  %i.ks = load i8, ptr %i.kr, align 4, !tbaa !122 ; 2 uses
  %.not379 = icmp eq i8 %i.ks, 0
  br i1 %.not379, label %.loopexit, label %.lr.ph353

.lr.ph353:                                        ; preds = %bb.an
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 21
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !119 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kq, i64 22
  %wide.trip.count426 = zext i8 %i.ks to i64
  br label %bb.ao

._crit_edge354:                                   ; preds = %bb.at
  %.not243 = icmp eq i32 %.2201, -1
  br i1 %.not243, label %.loopexit, label %iter.check

bb.ao:                                            ; preds = %.lr.ph353, %bb.at
  %indvars.iv423 = phi i64 [ 0, %.lr.ph353 ], [ %indvars.iv.next424, %bb.at ] ; 2 uses
  %.0198350 = phi i32 [ 0, %.lr.ph353 ], [ %.2, %bb.at ] ; 5 uses
  %.0199349 = phi i32 [ -1, %.lr.ph353 ], [ %.2201, %bb.at ] ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 %indvars.iv423
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !66  ; 2 uses
  %i.kz = zext i8 %i.ky to i64
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.kz ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 21
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !119 ; 4 uses
  %i.ld = icmp eq i8 %i.kv, %i.lc
  br i1 %i.ld, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.le = load i8, ptr %i.kw, align 2, !tbaa !121
  %i.lf = getelementptr inbounds nuw i8, ptr %i.la, i64 22
  %i.lg = load i8, ptr %i.lf, align 2, !tbaa !121
  %.not244 = icmp eq i8 %i.le, %i.lg
  br i1 %.not244, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.lh = load i32, ptr %i.la, align 4, !tbaa !120 ; 2 uses
  %i.li = icmp sgt i32 %i.lh, %.0198350
  br i1 %i.li, label %.lr.ph22.i, label %bb.at

.lr.ph22.i:                                       ; preds = %bb.aq, %.loopexit.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.loopexit.i ], [ 0, %bb.aq ] ; 2 uses
end_hunk_0
begin_hunk_1_@_Z24dtBuildTileCachePolyMeshP16dtTileCacheAllocR21dtTileCacheContourSetR19dtTileCachePolyMesh:bb.a

bb.q:                                             ; preds = %bb.t, %.lr.ph.i
  %.03647.i = phi i16 [ %.03645.i, %.lr.ph.i ], [ %.036.i, %bb.t ] ; 2 uses
  %i.ek = zext i16 %.03647.i to i64               ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ek, 6
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx.i ; 3 uses
  %i.em = load i16, ptr %i.el, align 2, !tbaa !77
  %i.en = icmp eq i16 %i.em, %i.dy
  br i1 %i.en, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !77
  %i.eq = icmp eq i16 %i.ep, %i.ee
  br i1 %i.eq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  %i.es = load i16, ptr %i.er, align 2, !tbaa !77
  %i.et = zext i16 %i.es to i32
  %.reass.i.reass.reass = add i32 %i.et, %invariant.op
  %i.eu = icmp ult i32 %.reass.i.reass.reass, 5
  br i1 %i.eu, label %_ZL9addVertextttPtS_S_Ri.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.ek
  %.036.i = load i16, ptr %i.ev, align 2, !tbaa !77 ; 2 uses
  %.not.i = icmp eq i16 %.036.i, -1
  br i1 %.not.i, label %._crit_edge.i, label %bb.q

._crit_edge.i:                                    ; preds = %bb.t, %.lr.ph368
  %i.ew = load i32, ptr %i.bt, align 4, !tbaa !76 ; 3 uses
  %i.ex = trunc i32 %i.ew to i16                  ; 2 uses
  %i.ey = add nsw i32 %i.ew, 1
  store i32 %i.ey, ptr %i.bt, align 4, !tbaa !76
  %i.ez = and i32 %i.ew, 65535                    ; 2 uses
  %i.fa = mul nuw nsw i32 %i.ez, 3
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.ef, i64 %i.fb ; 3 uses
  store i16 %i.dy, ptr %i.fc, align 2, !tbaa !77
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  store i16 %i.eb, ptr %i.fd, align 2, !tbaa !77
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i16 %i.ee, ptr %i.fe, align 2, !tbaa !77
  %i.ff = zext nneg i32 %i.ez to i64
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.ff
  store i16 %.03645.i, ptr %i.fg, align 2, !tbaa !77
  store i16 %i.ex, ptr %i.ei, align 2, !tbaa !77
  br label %_ZL9addVertextttPtS_S_Ri.exit

_ZL9addVertextttPtS_S_Ri.exit:                    ; preds = %bb.s, %._crit_edge.i
  %.2.i = phi i16 [ %i.ex, %._crit_edge.i ], [ %.03647.i, %bb.s ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv437
  store i16 %.2.i, ptr %i.fh, align 2, !tbaa !77
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dw, i64 3
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !66
  %.not257 = icmp sgt i8 %i.fj, -1
  br i1 %.not257, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZL9addVertextttPtS_S_Ri.exit
  %i.fk = zext i16 %.2.i to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.fk
  store i8 1, ptr %i.fl, align 1, !tbaa !66
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZL9addVertextttPtS_S_Ri.exit
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %i.fm = load i32, ptr %i.dd, align 8, !tbaa !73
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %indvars.iv.next438, %i.fn
  br i1 %i.fo, label %.lr.ph368, label %._crit_edge369

._crit_edge374:                                   ; preds = %bb.y
  %.not251 = icmp eq i32 %.1211, 0
  br i1 %.not251, label %.loopexit347, label %.preheader349.preheader

.preheader349.preheader:                          ; preds = %._crit_edge374
  %i.fp = icmp sgt i32 %.1211, 1
  br i1 %i.fp, label %.lr.ph396.preheader, label %.preheader346

.lr.ph373:                                        ; preds = %.lr.ph373.preheader, %bb.y
  %indvars.iv440 = phi i64 [ 0, %.lr.ph373.preheader ], [ %indvars.iv.next441, %bb.y ] ; 2 uses
  %.0210370 = phi i32 [ 0, %.lr.ph373.preheader ], [ %.1211, %bb.y ] ; 4 uses
  %.idx = mul nuw nsw i64 %indvars.iv440, 6
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx ; 3 uses
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !77 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 2 ; 2 uses
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !77 ; 2 uses
  %.not254 = icmp eq i16 %i.fr, %i.ft
  br i1 %.not254, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.lr.ph373
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 4 ; 2 uses
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !77 ; 2 uses
  %.not255 = icmp eq i16 %i.fr, %i.fv
  %.not256 = icmp eq i16 %i.ft, %i.fv
  %or.cond = or i1 %.not255, %.not256
  br i1 %or.cond, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fw = zext i16 %i.fr to i64
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !77
  %i.fz = mul nsw i32 %.0210370, 6
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.ga ; 3 uses
  store i16 %i.fy, ptr %i.gb, align 2, !tbaa !77
  %i.gc = load i16, ptr %i.fs, align 2, !tbaa !77
  %i.gd = zext i16 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.gd
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !77
  %i.gg = getelementptr i8, ptr %i.gb, i64 2
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !77
  %i.gh = load i16, ptr %i.fu, align 2, !tbaa !77
  %i.gi = zext i16 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.gi
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !77
  %i.gl = getelementptr i8, ptr %i.gb, i64 4
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !77
  %i.gm = add nsw i32 %.0210370, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.lr.ph373
  %.1211 = phi i32 [ %i.gm, %bb.x ], [ %.0210370, %.lr.ph373 ], [ %.0210370, %bb.w ] ; 5 uses
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 1 ; 2 uses
  %exitcond444.not = icmp eq i64 %indvars.iv.next441, %wide.trip.count443
  br i1 %exitcond444.not, label %._crit_edge374, label %.lr.ph373

.lr.ph396.preheader:                              ; preds = %.preheader349.preheader, %.preheader349
  %.2212558 = phi i32 [ %i.gn, %.preheader349 ], [ %.1211, %.preheader349.preheader ] ; 4 uses
  %i.gn = add nsw i32 %.2212558, -1               ; 4 uses
  %wide.trip.count455 = zext nneg i32 %i.gn to i64
  %i.go = load ptr, ptr %i.ba, align 8, !tbaa !53
  %wide.trip.count450 = zext nneg i32 %.2212558 to i64
  br label %.lr.ph383

.loopexit:                                        ; preds = %bb.ab
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1
  %exitcond456.not = icmp eq i64 %indvars.iv.next453, %wide.trip.count455
  br i1 %exitcond456.not, label %._crit_edge397, label %.lr.ph383

._crit_edge397:                                   ; preds = %.loopexit
  %i.gp = icmp sgt i32 %.2208, 0
  br i1 %i.gp, label %.preheader349, label %.preheader346

.lr.ph383:                                        ; preds = %.loopexit, %.lr.ph396.preheader
  %indvars.iv452 = phi i64 [ 0, %.lr.ph396.preheader ], [ %indvars.iv.next453, %.loopexit ] ; 3 uses
  %indvars.iv445 = phi i64 [ 1, %.lr.ph396.preheader ], [ %indvars.iv.next446, %.loopexit ] ; 2 uses
  %.0194393 = phi i32 [ 0, %.lr.ph396.preheader ], [ %.2196, %.loopexit ]
  %.0197392 = phi i32 [ 0, %.lr.ph396.preheader ], [ %.2199, %.loopexit ]
  %.0200391 = phi i32 [ 0, %.lr.ph396.preheader ], [ %.2202, %.loopexit ]
  %.0203390 = phi i32 [ 0, %.lr.ph396.preheader ], [ %.2205, %.loopexit ]
  %.0206389 = phi i32 [ 0, %.lr.ph396.preheader ], [ %.2208, %.loopexit ]
  %.idx515 = mul nuw nsw i64 %indvars.iv452, 12
  %i.gq = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx515
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1 ; 2 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv452 to i32
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph383, %bb.ab
  %indvars.iv447 = phi i64 [ %indvars.iv445, %.lr.ph383 ], [ %indvars.iv.next448, %bb.ab ] ; 3 uses
  %.1195380 = phi i32 [ %.0194393, %.lr.ph383 ], [ %.2196, %bb.ab ]
  %.1198379 = phi i32 [ %.0197392, %.lr.ph383 ], [ %.2199, %bb.ab ]
  %.1201378 = phi i32 [ %.0200391, %.lr.ph383 ], [ %.2202, %bb.ab ]
  %.1204377 = phi i32 [ %.0203390, %.lr.ph383 ], [ %.2205, %bb.ab ]
  %.1207376 = phi i32 [ %.0206389, %.lr.ph383 ], [ %.2208, %bb.ab ] ; 2 uses
  %.idx516 = mul nuw nsw i64 %indvars.iv447, 12
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #15
  %i.gt = call fastcc noundef i32 @_ZL17getPolyMergeValuePtS_PKtRiS2_(ptr noundef nonnull %i.gq, ptr noundef nonnull %i.gs, ptr noundef %i.go, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n) ; 2 uses
  %i.gu = icmp sgt i32 %i.gt, %.1207376
  br i1 %i.gu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gv = load i32, ptr %i.m, align 4, !tbaa !76
  %i.gw = load i32, ptr %i.n, align 4, !tbaa !76
  %i.gx = trunc nuw nsw i64 %indvars.iv447 to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.2208 = phi i32 [ %i.gt, %bb.aa ], [ %.1207376, %bb.z ] ; 3 uses
  %.2205 = phi i32 [ %i.gr, %bb.aa ], [ %.1204377, %bb.z ] ; 3 uses
  %.2202 = phi i32 [ %i.gx, %bb.aa ], [ %.1201378, %bb.z ] ; 3 uses
  %.2199 = phi i32 [ %i.gv, %bb.aa ], [ %.1198379, %bb.z ] ; 3 uses
  %.2196 = phi i32 [ %i.gw, %bb.aa ], [ %.1195380, %bb.z ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1 ; 2 uses
  %exitcond451.not = icmp eq i64 %indvars.iv.next448, %wide.trip.count450
  br i1 %exitcond451.not, label %.loopexit, label %bb.z

.preheader349:                                    ; preds = %._crit_edge397
  %i.gy = mul nsw i32 %.2202, 6
  %i.gz = sext i32 %i.gy to i64
  %i.ha = mul nsw i32 %.2205, 6
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.hb
  %i.hd = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.gz ; 2 uses
  tail call fastcc void @_ZL10mergePolysPtS_ii(ptr noundef nonnull %i.hc, ptr noundef nonnull %i.hd, i32 noundef %.2199, i32 noundef %.2196)
  %i.he = mul nuw nsw i32 %i.gn, 6
  %3 = zext nneg i32 %i.he to i64
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.hd, ptr noundef nonnull align 2 dereferenceable(12) %i.hf, i64 12, i1 false)
  %i.hg = icmp sgt i32 %.2212558, 2
  br i1 %i.hg, label %.lr.ph396.preheader, label %.preheader346

.preheader346:                                    ; preds = %._crit_edge397, %.preheader349, %.preheader349.preheader
  %.2212.lcssa = phi i32 [ %.1211, %.preheader349.preheader ], [ %.2212558, %._crit_edge397 ], [ %i.gn, %.preheader349 ] ; 2 uses
  %.not253405 = icmp sgt i32 %.2212.lcssa, 0
  br i1 %.not253405, label %.lr.ph407, label %.loopexit347

.lr.ph407:                                        ; preds = %.preheader346
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dd, i64 17
  %wide.trip.count465 = zext nneg i32 %.2212.lcssa to i64
  %.pre = load i32, ptr %i.bu, align 8, !tbaa !138
  %.pre477 = load i8, ptr %i.hh, align 1, !tbaa !74
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ad
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 2 uses
  %exitcond466.not = icmp eq i64 %indvars.iv.next462, %wide.trip.count465
  br i1 %exitcond466.not, label %.loopexit347, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph407, %bb.ac
  %i.hi = phi i32 [ %.pre, %.lr.ph407 ], [ %i.ii, %bb.ac ] ; 2 uses
  %indvars.iv461 = phi i64 [ 0, %.lr.ph407 ], [ %indvars.iv.next462, %bb.ac ] ; 2 uses
  %i.hj = load ptr, ptr %i.bi, align 8, !tbaa !54
  %i.hk = mul nsw i32 %i.hi, 12
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %i.hl ; 6 uses
  %.idx517 = mul nuw nsw i64 %indvars.iv461, 12
  %i.hn = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx517 ; 6 uses
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !77
  store i16 %i.ho, ptr %i.hm, align 2, !tbaa !77
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !77
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  store i16 %i.hq, ptr %i.hr, align 2, !tbaa !77
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !77
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !77
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hn, i64 6
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !77
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hm, i64 6
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !77
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !77
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store i16 %i.hz, ptr %i.ia, align 2, !tbaa !77
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 10
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !77
  %i.id = getelementptr inbounds nuw i8, ptr %i.hm, i64 10
  store i16 %i.ic, ptr %i.id, align 2, !tbaa !77
  %i.ie = load ptr, ptr %i.bn, align 8, !tbaa !56
  %i.if = sext i32 %i.hi to i64
  %i.ig = getelementptr inbounds i8, ptr %i.ie, i64 %i.if
  store i8 %.pre477, ptr %i.ig, align 1, !tbaa !66
  %i.ih = load i32, ptr %i.bu, align 8, !tbaa !138 ; 2 uses
  %i.ii = add nsw i32 %i.ih, 1                    ; 2 uses
  store i32 %i.ii, ptr %i.bu, align 8, !tbaa !138
  %.not252 = icmp slt i32 %i.ih, %.0231.lcssa
  br i1 %.not252, label %bb.ac, label %_ZN12dtFixedArrayItED2Ev.exit

.loopexit347:                                     ; preds = %bb.ac, %._crit_edge369, %.preheader346, %bb.p, %._crit_edge374
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 1 ; 2 uses
  %i.ij = load i32, ptr %1, align 8, !tbaa !46
  %i.ik = sext i32 %i.ij to i64
  %.not258 = icmp slt i64 %indvars.iv.next468, %i.ik
  br i1 %.not258, label %bb.p, label %.critedge.preheader

bb.ae:                                            ; preds = %.lr.ph419, %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread
  %i.il = phi i32 [ %i.da, %.lr.ph419 ], [ %i.zj, %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread ] ; 4 uses
  %.0184418 = phi i32 [ 0, %.lr.ph419 ], [ %i.zk, %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread ] ; 9 uses
  %i.im = sext i32 %.0184418 to i64               ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %i.ae, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !66
  %.not259 = icmp eq i8 %i.io, 0
  br i1 %.not259, label %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ip = trunc i32 %.0184418 to i16              ; 14 uses
  %.val = load i32, ptr %i.bu, align 8            ; 3 uses
  %.val261 = load ptr, ptr %i.bi, align 8         ; 2 uses
  %i.iq = icmp sgt i32 %.val, 0
  br i1 %i.iq, label %.lr.ph19.preheader.i, label %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread

.lr.ph19.preheader.i:                             ; preds = %bb.af
  %wide.trip.count53.i = zext nneg i32 %.val to i64 ; 2 uses
  %broadcast.splatinsert613 = insertelement <4 x i16> poison, i16 %i.ip, i64 0
  %broadcast.splat614 = shufflevector <4 x i16> %broadcast.splatinsert613, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %.lr.ph19.i

._crit_edge20.i:                                  ; preds = %._crit_edge.thread.i
  %i.ir = icmp slt i32 %.179.i, 3
  %i.is = icmp sgt i32 %.181.lcssa88.i, 24
  %i.it = select i1 %i.ir, i1 true, i1 %i.is
  br i1 %i.it, label %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread, label %bb.al

.lr.ph19.i:                                       ; preds = %._crit_edge.thread.i, %.lr.ph19.preheader.i
  %indvars.iv50.i = phi i64 [ 0, %.lr.ph19.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.thread.i ] ; 2 uses
  %.07816.i = phi i32 [ 0, %.lr.ph19.preheader.i ], [ %.179.i, %._crit_edge.thread.i ]
  %.08015.i = phi i32 [ 0, %.lr.ph19.preheader.i ], [ %.181.lcssa88.i, %._crit_edge.thread.i ] ; 3 uses
  %.idx.i263 = mul nuw nsw i64 %indvars.iv50.i, 24
  %i.iu = getelementptr inbounds nuw i8, ptr %.val261, i64 %.idx.i263 ; 8 uses
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !77
  %i.iw = icmp eq i16 %i.iv, -1
  br i1 %i.iw, label %._crit_edge.thread.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph19.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 2
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !77
  %i.iz = icmp eq i16 %i.iy, -1
  br i1 %i.iz, label %.lr.ph.preheader.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !77
  %i.jc = icmp eq i16 %i.jb, -1
  br i1 %i.jc, label %.lr.ph.preheader.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iu, i64 6
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !77
  %i.jf = icmp eq i16 %i.je, -1
  br i1 %i.jf, label %.lr.ph.preheader.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !77
  %i.ji = icmp eq i16 %i.jh, -1
  br i1 %i.ji, label %.lr.ph.preheader.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iu, i64 10
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !77
  %i.jl = icmp eq i16 %i.jk, -1
  %spec.select.i.i = select i1 %i.jl, i32 5, i32 6
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.ph.i = phi i32 [ 4, %bb.aj ], [ 2, %bb.ah ], [ %spec.select.i.i, %bb.ak ], [ 1, %bb.ag ], [ 3, %bb.ai ] ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.ph.i to i64 ; 3 uses
  %min.iters.check610 = icmp samesign ult i32 %.ph.i, 4
  br i1 %min.iters.check610, label %.lr.ph.i264.preheader, label %vector.body615

vector.body615:                                   ; preds = %.lr.ph.preheader.i
  %i.jm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.08015.i, i64 0
  %n.vec612 = and i64 %wide.trip.count.i, 4       ; 2 uses
  %wide.load619 = load <4 x i16>, ptr %i.iu, align 2, !tbaa !77
  %i.jn = freeze <4 x i16> %wide.load619
  %i.jo = icmp eq <4 x i16> %i.jn, %broadcast.splat614 ; 2 uses
  %i.jp = zext <4 x i1> %i.jo to <4 x i32>
  %i.jq = add <4 x i32> %i.jm, %i.jp
  %i.jr = bitcast <4 x i1> %i.jo to i4
  %i.js = tail call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %i.jr)
  %i.jt = zext nneg i4 %i.js to i32               ; 2 uses
  %i.ju = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jq) ; 2 uses
  %cmp.n622 = icmp eq i64 %n.vec612, %wide.trip.count.i
  br i1 %cmp.n622, label %._crit_edge.i265, label %.lr.ph.i264.preheader

.lr.ph.i264.preheader:                            ; preds = %.lr.ph.preheader.i, %vector.body615
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec612, %vector.body615 ]
  %.07510.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.jt, %vector.body615 ]
  %.1819.i.ph = phi i32 [ %.08015.i, %.lr.ph.preheader.i ], [ %i.ju, %vector.body615 ]
  br label %.lr.ph.i264

._crit_edge.i265:                                 ; preds = %.lr.ph.i264, %vector.body615
  %.282.i.lcssa = phi i32 [ %i.ju, %vector.body615 ], [ %.282.i, %.lr.ph.i264 ]
  %.176.i.lcssa = phi i32 [ %i.jt, %vector.body615 ], [ %.176.i, %.lr.ph.i264 ] ; 2 uses
  %.not.i266 = icmp eq i32 %.176.i.lcssa, 0
  %.neg.i = xor i32 %.176.i.lcssa, -1
  %i.jv = add nsw i32 %.ph.i, %.neg.i
  %spec.select101.i = select i1 %.not.i266, i32 0, i32 %i.jv
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i265, %.lr.ph19.i
  %.181.lcssa88.i = phi i32 [ %.282.i.lcssa, %._crit_edge.i265 ], [ %.08015.i, %.lr.ph19.i ] ; 2 uses
  %i.jw = phi i32 [ %spec.select101.i, %._crit_edge.i265 ], [ 0, %.lr.ph19.i ]
  %.179.i = add nsw i32 %i.jw, %.07816.i          ; 2 uses
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next51.i, %wide.trip.count53.i
  br i1 %exitcond54.not.i, label %._crit_edge20.i, label %.lr.ph19.i

.lr.ph.i264:                                      ; preds = %.lr.ph.i264.preheader, %.lr.ph.i264
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i264 ], [ %indvars.iv.i.ph, %.lr.ph.i264.preheader ] ; 2 uses
  %.07510.i = phi i32 [ %.176.i, %.lr.ph.i264 ], [ %.07510.i.ph, %.lr.ph.i264.preheader ]
  %.1819.i = phi i32 [ %.282.i, %.lr.ph.i264 ], [ %.1819.i.ph, %.lr.ph.i264.preheader ]
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %indvars.iv.i
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !77
  %.fr.i = freeze i16 %i.jy
  %i.jz = icmp eq i16 %.fr.i, %i.ip
  %i.ka = zext i1 %i.jz to i32                    ; 2 uses
  %.282.i = add nsw i32 %.1819.i, %i.ka           ; 2 uses
  %.176.i = add i32 %.07510.i, %i.ka              ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i265, label %.lr.ph.i264, !llvm.loop !131

bb.al:                                            ; preds = %._crit_edge20.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #15
  br label %.lr.ph38.i
end_hunk_1
begin_hunk_2_@_Z24dtBuildTileCachePolyMeshP16dtTileCacheAllocR21dtTileCacheContourSetR19dtTileCachePolyMesh:bb.a
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qy, i64 4
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !77
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  store i16 %i.rc, ptr %i.rd, align 2, !tbaa !77
  %indvars.iv.next480.i.1 = add nuw nsw i64 %indvars.iv479.i, 2 ; 3 uses
  %.idx559.i.1 = mul nuw nsw i64 %indvars.iv.next480.i.1, 6
  %i.re = getelementptr inbounds nuw i8, ptr %i.ql, i64 %.idx559.i.1 ; 2 uses
  %.idx560.i.1 = mul nuw nsw i64 %indvars.iv.next480.i, 6
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ql, i64 %.idx560.i.1 ; 2 uses
  %i.rg = load <2 x i16>, ptr %i.re, align 2, !tbaa !77
  store <2 x i16> %i.rg, ptr %i.rf, align 2, !tbaa !77
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !77
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  store i16 %i.ri, ptr %i.rj, align 2, !tbaa !77
  %exitcond483.not.i.1 = icmp eq i64 %indvars.iv.next480.i.1, %wide.trip.count482.i
  br i1 %exitcond483.not.i.1, label %._crit_edge383.i, label %.lr.ph382.i.new

.preheader357.i:                                  ; preds = %._crit_edge387.i, %._crit_edge383.i
  %i.rk = icmp sgt i32 %.4220.ph.i, 0
  br i1 %i.rk, label %.lr.ph392.preheader.i, label %._crit_edge393.i

.lr.ph392.preheader.i:                            ; preds = %.preheader357.i
  %wide.trip.count497.i = zext nneg i32 %.4220.ph.i to i64
  br label %.lr.ph392.i

bb.be:                                            ; preds = %._crit_edge387.i, %.lr.ph390.i
  %indvars.iv489.i = phi i64 [ 0, %.lr.ph390.i ], [ %indvars.iv.next490.i, %._crit_edge387.i ] ; 2 uses
  %.idx561.i = mul nuw nsw i64 %indvars.iv489.i, 24
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qx, i64 %.idx561.i ; 12 uses
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !77
  %i.rn = icmp eq i16 %i.rm, -1
  br i1 %i.rn, label %._crit_edge387.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 2
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !77
  %i.rq = icmp eq i16 %i.rp, -1
  br i1 %i.rq, label %.lr.ph386.preheader.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.rs = load i16, ptr %i.rr, align 2, !tbaa !77
  %i.rt = icmp eq i16 %i.rs, -1
  br i1 %i.rt, label %.lr.ph386.preheader.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rl, i64 6
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !77
  %i.rw = icmp eq i16 %i.rv, -1
  br i1 %i.rw, label %.lr.ph386.preheader.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !77
  %i.rz = icmp eq i16 %i.ry, -1
  br i1 %i.rz, label %.lr.ph386.preheader.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rl, i64 10
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !77
  %i.sc = icmp eq i16 %i.sb, -1
  %i.sd = select i1 %i.sc, i64 5, i64 6
  br label %.lr.ph386.preheader.i

.lr.ph386.preheader.i:                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %.ph570.i = phi i64 [ 4, %bb.bi ], [ 2, %bb.bg ], [ %i.sd, %bb.bj ], [ 1, %bb.bf ], [ 3, %bb.bh ] ; 4 uses
  %min.iters.check567 = icmp samesign ult i64 %.ph570.i, 4
  br i1 %min.iters.check567, label %.lr.ph386.i.preheader, label %vector.ph568

vector.ph568:                                     ; preds = %.lr.ph386.preheader.i
  %n.vec569 = and i64 %.ph570.i, 4                ; 2 uses
  %wide.load = load <4 x i16>, ptr %i.rl, align 2, !tbaa !77 ; 5 uses
  %i.se = icmp ugt <4 x i16> %wide.load, %broadcast.splat571 ; 4 uses
  %i.sf = extractelement <4 x i1> %i.se, i64 0
  br i1 %i.sf, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.ph568
  %i.sg = extractelement <4 x i16> %wide.load, i64 0
  %i.sh = add i16 %i.sg, -1
  store i16 %i.sh, ptr %i.rl, align 2, !tbaa !77
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.ph568
  %i.si = extractelement <4 x i1> %i.se, i64 1
  br i1 %i.si, label %pred.store.if574, label %pred.store.continue575

pred.store.if574:                                 ; preds = %pred.store.continue
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rl, i64 2
  %i.sk = extractelement <4 x i16> %wide.load, i64 1
  %i.sl = add i16 %i.sk, -1
  store i16 %i.sl, ptr %i.sj, align 2, !tbaa !77
  br label %pred.store.continue575

pred.store.continue575:                           ; preds = %pred.store.if574, %pred.store.continue
  %i.sm = extractelement <4 x i1> %i.se, i64 2
  br i1 %i.sm, label %pred.store.if576, label %pred.store.continue577

pred.store.if576:                                 ; preds = %pred.store.continue575
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.so = extractelement <4 x i16> %wide.load, i64 2
  %i.sp = add i16 %i.so, -1
  store i16 %i.sp, ptr %i.sn, align 2, !tbaa !77
  br label %pred.store.continue577

pred.store.continue577:                           ; preds = %pred.store.if576, %pred.store.continue575
  %i.sq = extractelement <4 x i1> %i.se, i64 3
  br i1 %i.sq, label %pred.store.if578, label %pred.store.continue579

pred.store.if578:                                 ; preds = %pred.store.continue577
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rl, i64 6
  %i.ss = extractelement <4 x i16> %wide.load, i64 3
  %i.st = add i16 %i.ss, -1
  store i16 %i.st, ptr %i.sr, align 2, !tbaa !77
  br label %pred.store.continue579

pred.store.continue579:                           ; preds = %pred.store.if578, %pred.store.continue577
  %cmp.n582 = icmp eq i64 %.ph570.i, %n.vec569
  br i1 %cmp.n582, label %._crit_edge387.i, label %.lr.ph386.i.preheader

.lr.ph386.i.preheader:                            ; preds = %.lr.ph386.preheader.i, %pred.store.continue579
  %indvars.iv484.i.ph = phi i64 [ 0, %.lr.ph386.preheader.i ], [ %n.vec569, %pred.store.continue579 ]
  br label %.lr.ph386.i

._crit_edge387.i:                                 ; preds = %bb.bl, %pred.store.continue579, %bb.be
  %indvars.iv.next490.i = add nuw nsw i64 %indvars.iv489.i, 1 ; 2 uses
  %exitcond493.not.i = icmp eq i64 %indvars.iv.next490.i, %wide.trip.count492.i
  br i1 %exitcond493.not.i, label %.preheader357.i, label %bb.be

.lr.ph386.i:                                      ; preds = %.lr.ph386.i.preheader, %bb.bl
  %indvars.iv484.i = phi i64 [ %indvars.iv.next485.i, %bb.bl ], [ %indvars.iv484.i.ph, %.lr.ph386.i.preheader ] ; 2 uses
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.rl, i64 %indvars.iv484.i ; 2 uses
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !77 ; 2 uses
  %i.sw = icmp ugt i16 %i.sv, %i.ip
  br i1 %i.sw, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph386.i
  %i.sx = add i16 %i.sv, -1
  store i16 %i.sx, ptr %i.su, align 2, !tbaa !77
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.lr.ph386.i
  %indvars.iv.next485.i = add nuw nsw i64 %indvars.iv484.i, 1 ; 2 uses
  %exitcond488.not.i = icmp eq i64 %indvars.iv.next485.i, %.ph570.i
  br i1 %exitcond488.not.i, label %._crit_edge387.i, label %.lr.ph386.i, !llvm.loop !135

._crit_edge393.i:                                 ; preds = %bb.bp, %.preheader357.i
  %i.sy = icmp eq i32 %.4220.ph.i, 0
  br i1 %i.sy, label %.preheader, label %.preheader606.i

.lr.ph392.i:                                      ; preds = %bb.bp, %.lr.ph392.preheader.i
  %indvars.iv494.i = phi i64 [ 0, %.lr.ph392.preheader.i ], [ %indvars.iv.next495.i, %bb.bp ] ; 2 uses
  %.idx562.i = mul nuw nsw i64 %indvars.iv494.i, 6
  %i.sz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx562.i ; 3 uses
  %i.ta = load i16, ptr %i.sz, align 2, !tbaa !77 ; 2 uses
  %i.tb = icmp ugt i16 %i.ta, %i.ip
  br i1 %i.tb, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph392.i
  %i.tc = add i16 %i.ta, -1
  store i16 %i.tc, ptr %i.sz, align 2, !tbaa !77
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph392.i
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 2 ; 2 uses
  %i.te = load i16, ptr %i.td, align 2, !tbaa !77 ; 2 uses
  %i.tf = icmp ugt i16 %i.te, %i.ip
  br i1 %i.tf, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.tg = add i16 %i.te, -1
  store i16 %i.tg, ptr %i.td, align 2, !tbaa !77
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %indvars.iv.next495.i = add nuw nsw i64 %indvars.iv494.i, 1 ; 2 uses
  %exitcond498.not.i = icmp eq i64 %indvars.iv.next495.i, %wide.trip.count497.i
  br i1 %exitcond498.not.i, label %._crit_edge393.i, label %.lr.ph392.i

.preheader606.i:                                  ; preds = %._crit_edge393.i
  %i.th = load i16, ptr %i.a, align 16, !tbaa !77 ; 2 uses
  store i16 %i.th, ptr %i.b, align 16, !tbaa !77
  %i.ti = load i16, ptr %i.db, align 4, !tbaa !77
  store i16 %i.ti, ptr %i.c, align 16, !tbaa !77
  br label %._crit_edge402.i

._crit_edge402.i:                                 ; preds = %.si.unfold.true.i, %.preheader606.i
  %.pre530.i = phi i16 [ %i.th, %.preheader606.i ], [ %.pre530533.i, %.si.unfold.true.i ] ; 2 uses
  %.0323.i = phi i32 [ 1, %.preheader606.i ], [ %.3326.ph.i, %.si.unfold.true.i ] ; 2 uses
  %.0322.i = phi i32 [ 1, %.preheader606.i ], [ %.3.ph.i, %.si.unfold.true.i ]
  %.6222.i = phi i32 [ %.4220.ph.i, %.preheader606.i ], [ %.9225.ph.i, %.si.unfold.true.i ] ; 2 uses
  %.not297394.i = icmp sgt i32 %.6222.i, 0
  br i1 %.not297394.i, label %.lr.ph401.i, label %._crit_edge402.jt24.i

.lr.ph401.i:                                      ; preds = %._crit_edge402.i, %bb.bv
  %.pre530534.i = phi i16 [ %.pre530533.i, %bb.bv ], [ %.pre530.i, %._crit_edge402.i ]
  %i.tj = phi i16 [ %i.vi, %bb.bv ], [ %.pre530.i, %._crit_edge402.i ] ; 2 uses
  %.7223399.i = phi i32 [ %.9225.ph.i, %bb.bv ], [ %.6222.i, %._crit_edge402.i ] ; 3 uses
  %.0256398.i = phi i32 [ %i.vj, %bb.bv ], [ 0, %._crit_edge402.i ] ; 3 uses
  %.0259397.i = phi i1 [ %.2261.ph.i, %bb.bv ], [ false, %._crit_edge402.i ]
  %.1396.i = phi i32 [ %.3.ph.i, %bb.bv ], [ %.0322.i, %._crit_edge402.i ] ; 5 uses
  %.1324395.i = phi i32 [ %.3326.ph.i, %bb.bv ], [ %.0323.i, %._crit_edge402.i ] ; 7 uses
  %i.tk = mul nsw i32 %.0256398.i, 3
  %i.tl = sext i32 %i.tk to i64
  %i.tm = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.tl ; 4 uses
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !77 ; 3 uses
  %i.to = getelementptr i8, ptr %i.tm, i64 2      ; 2 uses
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !77 ; 2 uses
  %i.tq = getelementptr i8, ptr %i.tm, i64 4      ; 2 uses
  %i.tr = load i16, ptr %i.tq, align 2, !tbaa !77 ; 2 uses
  %i.ts = icmp eq i16 %i.tj, %i.tp
  br i1 %i.ts, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %.lr.ph401.i
  %i.tt = icmp sgt i32 %.1324395.i, 47
  br i1 %i.tt, label %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.tu = icmp sgt i32 %.1324395.i, 0
  br i1 %i.tu, label %.lr.ph.preheader.i.i, label %_ZL9pushFronttPtRi.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.br
  %i.tv = shl nuw nsw i32 %.1324395.i, 1          ; 2 uses
  %i.tw = zext nneg i32 %i.tv to i64              ; 3 uses
  %i.tx = add nsw i32 %i.tv, -2
  %i.ty = zext nneg i32 %i.tx to i64              ; 2 uses
  %i.tz = sub nuw nsw i64 %i.tw, %i.ty
  %scevgep.i.i = getelementptr i8, ptr %i.b, i64 %i.tz
  %i.ua = add nsw i64 %i.tw, -2
  %i.ub = sub nsw i64 %i.ua, %i.ty
  %scevgep10.i.i = getelementptr i8, ptr %i.b, i64 %i.ub
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %scevgep.i.i, ptr align 2 %scevgep10.i.i, i64 %i.tw, i1 false), !tbaa !77
  br label %_ZL9pushFronttPtRi.exit.i

_ZL9pushFronttPtRi.exit.i:                        ; preds = %.lr.ph.preheader.i.i, %bb.br
  store i16 %i.tn, ptr %i.b, align 16, !tbaa !77
  %i.uc = icmp sgt i32 %.1396.i, 0
  br i1 %i.uc, label %.lr.ph.preheader.i310.i, label %_ZL9pushFronttPtRi.exit313.i

.lr.ph.preheader.i310.i:                          ; preds = %_ZL9pushFronttPtRi.exit.i
  %i.ud = shl nuw i32 %.1396.i, 1                 ; 2 uses
  %i.ue = zext i32 %i.ud to i64                   ; 3 uses
  %i.uf = add i32 %i.ud, -2
  %i.ug = zext i32 %i.uf to i64                   ; 2 uses
  %i.uh = sub nuw nsw i64 %i.ue, %i.ug
  %scevgep.i311.i = getelementptr i8, ptr %i.c, i64 %i.uh
  %i.ui = add nsw i64 %i.ue, -2
  %i.uj = sub nsw i64 %i.ui, %i.ug
  %scevgep10.i312.i = getelementptr i8, ptr %i.c, i64 %i.uj
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %scevgep.i311.i, ptr align 2 %scevgep10.i312.i, i64 %i.ue, i1 false), !tbaa !77
  br label %_ZL9pushFronttPtRi.exit313.i

_ZL9pushFronttPtRi.exit313.i:                     ; preds = %.lr.ph.preheader.i310.i, %_ZL9pushFronttPtRi.exit.i
  store i16 %i.tr, ptr %i.c, align 16, !tbaa !77
  br label %.critedge305.i

bb.bs:                                            ; preds = %.lr.ph401.i
  %i.uk = sext i32 %.1324395.i to i64
  %i.ul = getelementptr [2 x i8], ptr %i.b, i64 %i.uk ; 2 uses
  %i.um = getelementptr i8, ptr %i.ul, i64 -2
  %i.un = load i16, ptr %i.um, align 2, !tbaa !77
  %i.uo = icmp eq i16 %i.un, %i.tn
  br i1 %i.uo, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.up = icmp sgt i32 %.1324395.i, 47
  br i1 %i.up, label %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i16 %i.tp, ptr %i.ul, align 2, !tbaa !77
  %i.uq = sext i32 %.1396.i to i64
  %i.ur = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.uq
  store i16 %i.tr, ptr %i.ur, align 2, !tbaa !77
  %.pre.i269 = load i16, ptr %i.b, align 16, !tbaa !77
  br label %.critedge305.i

.critedge305.i:                                   ; preds = %bb.bu, %_ZL9pushFronttPtRi.exit313.i
  %i.us = phi i16 [ %.pre.i269, %bb.bu ], [ %i.tn, %_ZL9pushFronttPtRi.exit313.i ] ; 2 uses
  %.2.i270 = add nsw i32 %.1396.i, 1
  %.2325.i = add nsw i32 %.1324395.i, 1
  %i.ut = mul i32 %.7223399.i, 3                  ; 3 uses
  %i.uu = add i32 %i.ut, -3
  %i.uv = sext i32 %i.uu to i64
  %i.uw = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.uv
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !77
  store i16 %i.ux, ptr %i.tm, align 2, !tbaa !77
  %i.uy = add i32 %i.ut, -2
  %i.uz = sext i32 %i.uy to i64
  %i.va = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.uz
  %i.vb = load i16, ptr %i.va, align 2, !tbaa !77
  store i16 %i.vb, ptr %i.to, align 2, !tbaa !77
  %i.vc = add i32 %i.ut, -1
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.vd
  %i.vf = load i16, ptr %i.ve, align 2, !tbaa !77
  store i16 %i.vf, ptr %i.tq, align 2, !tbaa !77
  %i.vg = add nsw i32 %.7223399.i, -1
  %i.vh = add nsw i32 %.0256398.i, -1
  br label %bb.bv

bb.bv:                                            ; preds = %.critedge305.i, %bb.bs
  %.pre530533.i = phi i16 [ %.pre530534.i, %bb.bs ], [ %i.us, %.critedge305.i ] ; 2 uses
  %i.vi = phi i16 [ %i.tj, %bb.bs ], [ %i.us, %.critedge305.i ]
  %.3326.ph.i = phi i32 [ %.1324395.i, %bb.bs ], [ %.2325.i, %.critedge305.i ] ; 3 uses
  %.3.ph.i = phi i32 [ %.1396.i, %bb.bs ], [ %.2.i270, %.critedge305.i ] ; 2 uses
  %.2261.ph.i = phi i1 [ %.0259397.i, %bb.bs ], [ true, %.critedge305.i ] ; 2 uses
  %.2258.ph.i = phi i32 [ %.0256398.i, %bb.bs ], [ %i.vh, %.critedge305.i ]
  %.9225.ph.i = phi i32 [ %.7223399.i, %bb.bs ], [ %i.vg, %.critedge305.i ] ; 3 uses
  %i.vj = add nsw i32 %.2258.ph.i, 1              ; 2 uses
  %.not297.i = icmp slt i32 %i.vj, %.9225.ph.i
  br i1 %.not297.i, label %.lr.ph401.i, label %.si.unfold.true.i

.si.unfold.true.i:                                ; preds = %bb.bv
  br i1 %.2261.ph.i, label %._crit_edge402.i, label %._crit_edge402.jt24.i

._crit_edge402.jt24.i:                            ; preds = %.si.unfold.true.i, %._crit_edge402.i
  %.5.i = phi i32 [ %.0323.i, %._crit_edge402.i ], [ %.3326.ph.i, %.si.unfold.true.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.vk = icmp sgt i32 %.5.i, 0
  br i1 %i.vk, label %.lr.ph425.i, label %._crit_edge426.i

.lr.ph425.i:                                      ; preds = %._crit_edge402.jt24.i
  %i.vl = load ptr, ptr %i.ba, align 8, !tbaa !53
  %wide.trip.count502.i = zext nneg i32 %.5.i to i64
  br label %bb.bw

._crit_edge426.i:                                 ; preds = %bb.bw, %._crit_edge402.jt24.i
  %i.vm = call fastcc noundef i32 @_ZL11triangulateiPKhPtS1_(i32 noundef %.5.i, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d) ; 2 uses
  %spec.select306.i = tail call i32 @llvm.abs.i32(i32 %i.vm, i1 true) ; 3 uses
  %i.vn = icmp samesign ugt i32 %spec.select306.i, 48
  br i1 %i.vn, label %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread534, label %bb.bx

_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread534: ; preds = %._crit_edge426.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN12dtFixedArrayItED2Ev.exit

bb.bw:                                            ; preds = %bb.bw, %.lr.ph425.i
  %indvars.iv499.i = phi i64 [ 0, %.lr.ph425.i ], [ %indvars.iv.next500.i, %bb.bw ] ; 5 uses
  %i.vo = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv499.i
  %i.vp = load i16, ptr %i.vo, align 2, !tbaa !77
  %i.vq = zext i16 %i.vp to i64
  %.idx.i268 = mul nuw nsw i64 %i.vq, 6
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vl, i64 %.idx.i268 ; 3 uses
  %i.vs = load i16, ptr %i.vr, align 2, !tbaa !77
  %i.vt = trunc i16 %i.vs to i8
  %i.vu = shl nuw nsw i64 %indvars.iv499.i, 2
  %i.vv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.vu ; 4 uses
  store i8 %i.vt, ptr %i.vv, align 4, !tbaa !66
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vr, i64 2
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !77
  %i.vy = trunc i16 %i.vx to i8
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vv, i64 1
  store i8 %i.vy, ptr %i.vz, align 1, !tbaa !66
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vr, i64 4
  %i.wb = load i16, ptr %i.wa, align 2, !tbaa !77
  %i.wc = trunc i16 %i.wb to i8
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vv, i64 2
  store i8 %i.wc, ptr %i.wd, align 2, !tbaa !66
  %i.we = getelementptr inbounds nuw i8, ptr %i.vv, i64 3
  store i8 0, ptr %i.we, align 1, !tbaa !66
  %i.wf = trunc i64 %indvars.iv499.i to i16
  %i.wg = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv499.i
  store i16 %i.wf, ptr %i.wg, align 2, !tbaa !77
  %indvars.iv.next500.i = add nuw nsw i64 %indvars.iv499.i, 1 ; 2 uses
  %exitcond503.not.i = icmp eq i64 %indvars.iv.next500.i, %wide.trip.count502.i
  br i1 %exitcond503.not.i, label %._crit_edge426.i, label %bb.bw

bb.bx:                                            ; preds = %._crit_edge426.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  %i.wh = mul nuw nsw i32 %spec.select306.i, 12
  %i.wi = zext nneg i32 %i.wh to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.g, i8 -1, i64 %i.wi, i1 false)
  %.not472.i = icmp eq i32 %i.vm, 0
  br i1 %.not472.i, label %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread537, label %.lr.ph430.preheader.i

.lr.ph430.preheader.i:                            ; preds = %bb.bx
  %wide.trip.count507.i = zext nneg i32 %spec.select306.i to i64
  br label %.lr.ph430.i

._crit_edge431.i:                                 ; preds = %bb.ca
  %.not298.i = icmp eq i32 %.1246.i, 0
  br i1 %.not298.i, label %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread537, label %.preheader354.i.preheader

.preheader354.i.preheader:                        ; preds = %._crit_edge431.i
  %i.wj = icmp sgt i32 %.1246.i, 1
  br i1 %i.wj, label %.lr.ph453.preheader.i.lr.ph, label %.preheader.i267

.lr.ph453.preheader.i.lr.ph:                      ; preds = %.preheader354.i.preheader
  %i.wk = load ptr, ptr %i.ba, align 8, !tbaa !53
  %i.wl = zext nneg i32 %.1246.i to i64
  br label %.lr.ph453.preheader.i

.lr.ph430.i:                                      ; preds = %bb.ca, %.lr.ph430.preheader.i
  %indvars.iv504.i = phi i64 [ 0, %.lr.ph430.preheader.i ], [ %indvars.iv.next505.i, %bb.ca ] ; 2 uses
  %.0245427.i = phi i32 [ 0, %.lr.ph430.preheader.i ], [ %.1246.i, %bb.ca ] ; 5 uses
  %.idx563.i = mul nuw nsw i64 %indvars.iv504.i, 6
  %i.wm = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx563.i ; 3 uses
  %i.wn = load i16, ptr %i.wm, align 2, !tbaa !77 ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 2
  %i.wp = load i16, ptr %i.wo, align 2, !tbaa !77 ; 3 uses
  %.not301.i = icmp eq i16 %i.wn, %i.wp
  br i1 %.not301.i, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %.lr.ph430.i
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wm, i64 4
  %i.wr = load i16, ptr %i.wq, align 2, !tbaa !77 ; 3 uses
  %.not302.i = icmp eq i16 %i.wn, %i.wr
  %.not303.i = icmp eq i16 %i.wp, %i.wr
  %or.cond.i = or i1 %.not302.i, %.not303.i
  br i1 %or.cond.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ws = zext i16 %i.wn to i64                   ; 2 uses
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ws
  %i.wu = load i16, ptr %i.wt, align 2, !tbaa !77
  %i.wv = mul nsw i32 %.0245427.i, 6
  %i.ww = sext i32 %i.wv to i64
  %i.wx = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.ww ; 3 uses
  store i16 %i.wu, ptr %i.wx, align 4, !tbaa !77
  %i.wy = zext i16 %i.wp to i64
  %i.wz = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.wy
  %i.xa = load i16, ptr %i.wz, align 2, !tbaa !77
  %i.xb = getelementptr i8, ptr %i.wx, i64 2
  store i16 %i.xa, ptr %i.xb, align 2, !tbaa !77
  %i.xc = zext i16 %i.wr to i64
  %i.xd = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.xc
  %i.xe = load i16, ptr %i.xd, align 2, !tbaa !77
  %i.xf = getelementptr i8, ptr %i.wx, i64 4
  store i16 %i.xe, ptr %i.xf, align 4, !tbaa !77
  %i.xg = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ws
  %i.xh = load i16, ptr %i.xg, align 2, !tbaa !77
  %i.xi = trunc i16 %i.xh to i8
  %i.xj = sext i32 %.0245427.i to i64
  %i.xk = getelementptr inbounds i8, ptr %i.h, i64 %i.xj
  store i8 %i.xi, ptr %i.xk, align 1, !tbaa !66
  %i.xl = add nsw i32 %.0245427.i, 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %.lr.ph430.i
  %.1246.i = phi i32 [ %i.xl, %bb.bz ], [ %.0245427.i, %.lr.ph430.i ], [ %.0245427.i, %bb.by ] ; 5 uses
end_hunk_2
begin_hunk_3_@_Z24dtBuildTileCachePolyMeshP16dtTileCacheAllocR21dtTileCacheContourSetR19dtTileCachePolyMesh:bb.a
  br label %_ZN12dtFixedArrayItED2Ev.exit287

_ZN12dtFixedArrayItED2Ev.exit287:                 ; preds = %bb.m, %_ZN12dtFixedArrayItED2Ev.exit285
  %.13 = phi i32 [ %.12, %_ZN12dtFixedArrayItED2Ev.exit285 ], [ -2147483644, %bb.m ]
  %i.zw = load ptr, ptr %0, align 8, !tbaa !18
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 32
  %i.zy = load ptr, ptr %i.zx, align 8
  tail call void %i.zy(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ci) #15, !call_target !41, !inline_history !3
  br label %_ZN12dtFixedArrayItED2Ev.exit289

_ZN12dtFixedArrayItED2Ev.exit289:                 ; preds = %bb.l, %_ZN12dtFixedArrayItED2Ev.exit287
  %.14 = phi i32 [ %.13, %_ZN12dtFixedArrayItED2Ev.exit287 ], [ -2147483644, %bb.l ]
  %i.zz = load ptr, ptr %0, align 8, !tbaa !18
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 32
  %i.aab = load ptr, ptr %i.aaa, align 8
  tail call void %i.aab(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cc) #15, !call_target !41, !inline_history !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  br label %_ZN12dtFixedArrayIhED2Ev.exit

_ZN12dtFixedArrayIhED2Ev.exit:                    ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %._crit_edge, %_ZN12dtFixedArrayItED2Ev.exit289
  %.15 = phi i32 [ %.14, %_ZN12dtFixedArrayItED2Ev.exit289 ], [ -2147483644, %bb.j ], [ -2147483644, %bb.i ], [ -2147483644, %bb.h ], [ -2147483644, %._crit_edge ], [ -2147483644, %bb.k ]
  %i.aac = load ptr, ptr %0, align 8, !tbaa !18
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 32
  %i.aae = load ptr, ptr %i.aad, align 8
  tail call void %i.aae(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ae) #15, !call_target !41, !inline_history !4
  ret i32 %.15
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @_ZL11triangulateiPKhPtS1_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge140

.preheader128:                                    ; preds = %bb.c
  %i.b = icmp sgt i32 %0, 3
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge140

.preheader.preheader:                             ; preds = %.preheader128
  %scevgep146 = getelementptr i8, ptr %2, i64 2
  %i.c = add nsw i32 %0, -2
  %i.d = zext nneg i32 %0 to i64
  %i.e = add nsw i32 %0, -4
  br label %.preheader

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0108131 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.f = add nuw nsw i32 %.0108131, 1             ; 4 uses
  %i.g = icmp slt i32 %i.f, %0
  %i.h = select i1 %i.g, i32 %i.f, i32 0          ; 2 uses
  %i.i = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.j = icmp slt i32 %i.i, %0
  %i.k = select i1 %i.j, i32 %i.i, i32 0
  %i.l = tail call fastcc noundef zeroext i1 @_ZL8diagonaliiiPKhPKt(i32 noundef %.0108131, i32 noundef %i.k, i32 noundef %0, ptr noundef %1, ptr noundef %2)
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.m = zext nneg i32 %i.h to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !77
  %i.p = or i16 %i.o, -32768
  store i16 %i.p, ptr %i.n, align 2, !tbaa !77
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %exitcond.not = icmp eq i32 %i.f, %0
  br i1 %exitcond.not, label %.preheader128, label %.lr.ph

.preheader:                                       ; preds = %.preheader.preheader, %bb.i
  %indvars.iv151 = phi i64 [ %i.d, %.preheader.preheader ], [ %indvars.iv.next152, %bb.i ] ; 6 uses
  %.0109139 = phi ptr [ %3, %.preheader.preheader ], [ %i.cc, %bb.i ] ; 4 uses
  %.0111138 = phi i32 [ 0, %.preheader.preheader ], [ %i.cd, %bb.i ] ; 4 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.g
  %.not121 = icmp eq i32 %.2, -1
  br i1 %.not121, label %.thread, label %bb.h

bb.e:                                             ; preds = %.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.0104133 = phi i32 [ -1, %.preheader ], [ %.2, %bb.g ] ; 2 uses
  %.0105132 = phi i32 [ -1, %.preheader ], [ %.2107, %bb.g ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.q = icmp samesign ult i64 %indvars.iv.next, %indvars.iv151
  %i.r = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.s = select i1 %i.q, i32 %i.r, i32 0          ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !77
  %.not122 = icmp sgt i16 %i.v, -1
  br i1 %.not122, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.x = load i16, ptr %i.w, align 2, !tbaa !77
  %i.y = and i16 %i.x, 32767
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa ; 2 uses
  %i.ac = add nuw nsw i32 %i.s, 1                 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp samesign ugt i64 %indvars.iv151, %i.ad
  %i.af = zext nneg i32 %i.ac to i64
  %i.ag = select i1 %i.ae, i64 %i.af, i64 0
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !77
  %i.aj = and i16 %i.ai, 32767
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !66
  %i.ao = zext i8 %i.an to i32
  %i.ap = load i8, ptr %i.ab, align 1, !tbaa !66
  %i.aq = zext i8 %i.ap to i32
  %i.ar = sub nsw i32 %i.ao, %i.aq                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !66
  %i.au = zext i8 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !66
  %i.ax = zext i8 %i.aw to i32
  %i.ay = sub nsw i32 %i.au, %i.ax                ; 2 uses
  %i.az = mul nsw i32 %i.ar, %i.ar
  %i.ba = mul nsw i32 %i.ay, %i.ay
  %i.bb = add nuw nsw i32 %i.ba, %i.az            ; 2 uses
  %i.bc = icmp slt i32 %.0105132, 0
  %i.bd = icmp slt i32 %i.bb, %.0105132
  %or.cond = select i1 %i.bc, i1 true, i1 %i.bd   ; 2 uses
  %.1106 = select i1 %or.cond, i32 %i.bb, i32 %.0105132
  %i.be = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %or.cond, i32 %i.be, i32 %.0104133
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2107 = phi i32 [ %.1106, %bb.f ], [ %.0105132, %bb.e ]
  %.2 = phi i32 [ %.1, %bb.f ], [ %.0104133, %bb.e ] ; 4 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next, %indvars.iv151
  br i1 %exitcond145.not, label %bb.d, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.bf = sub nsw i32 0, %.0111138
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.bg = add nuw nsw i32 %.2, 1                  ; 4 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp sgt i64 %indvars.iv151, %i.bh
  %i.bj = select i1 %i.bi, i32 %i.bg, i32 0       ; 5 uses
  %i.bk = add nsw i32 %i.bj, 1                    ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp sgt i64 %indvars.iv151, %i.bl
  %i.bn = sext i32 %.2 to i64
  %i.bo = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !77
  %i.bq = and i16 %i.bp, 32767
  %i.br = getelementptr inbounds nuw i8, ptr %.0109139, i64 2
  store i16 %i.bq, ptr %.0109139, align 2, !tbaa !77
  %i.bs = sext i32 %i.bj to i64                   ; 3 uses
  %i.bt = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !77
  %i.bv = and i16 %i.bu, 32767
  %i.bw = getelementptr inbounds nuw i8, ptr %.0109139, i64 4
  store i16 %i.bv, ptr %i.br, align 2, !tbaa !77
  %i.bx = sext i32 %i.bk to i64
  %i.by = select i1 %i.bm, i64 %i.bx, i64 0
  %i.bz = getelementptr inbounds [2 x i8], ptr %2, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !77
  %i.cb = and i16 %i.ca, 32767
  %i.cc = getelementptr inbounds nuw i8, ptr %.0109139, i64 6 ; 2 uses
  store i16 %i.cb, ptr %i.bw, align 2, !tbaa !77
  %i.cd = add nuw nsw i32 %.0111138, 1
  %indvars.iv.next152 = add nsw i64 %indvars.iv151, -1 ; 5 uses
  %i.ce = icmp sgt i64 %indvars.iv.next152, %i.bs
  br i1 %i.ce, label %._crit_edge, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.h
  %i.cf = trunc nuw nsw i64 %indvars.iv.next152 to i32 ; 2 uses
  br label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.cg = shl nsw i64 %i.bs, 1                    ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.cg
  %scevgep147 = getelementptr i8, ptr %scevgep146, i64 %i.cg
  %i.ch = add i32 %.0111138, %i.bj
  %i.ci = sub i32 %i.c, %i.ch
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 1
  %i.cl = add nuw nsw i64 %i.ck, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, ptr noundef nonnull align 2 dereferenceable(1) %scevgep147, i64 %i.cl, i1 false), !tbaa !77
  %i.cm = icmp sgt i32 %i.bj, 0                   ; 2 uses
  %i.cn = trunc nuw nsw i64 %indvars.iv.next152 to i32 ; 2 uses
  %spec.select = select i1 %i.cm, i32 %i.bg, i32 %i.bj
  %spec.select163 = select i1 %i.cm, i32 %i.bg, i32 %i.cn
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.co = phi i32 [ %i.cf, %._crit_edge.thread ], [ %i.cn, %._crit_edge ] ; 3 uses
  %spec.store.select161 = phi i32 [ 0, %._crit_edge.thread ], [ %spec.select, %._crit_edge ] ; 3 uses
  %i.cp = phi i32 [ %i.cf, %._crit_edge.thread ], [ %spec.select163, %._crit_edge ] ; 2 uses
  %i.cq = add nsw i32 %i.cp, -1                   ; 3 uses
  %4 = icmp samesign ugt i32 %i.cp, 1
  %.v.i123 = select i1 %4, i32 %i.cq, i32 %i.co
  %i.cr = add nsw i32 %.v.i123, -1
  %i.cs = tail call fastcc noundef zeroext i1 @_ZL8diagonaliiiPKhPKt(i32 noundef %i.cr, i32 noundef %spec.store.select161, i32 noundef %i.co, ptr noundef %1, ptr noundef nonnull %2)
  %i.ct = sext i32 %i.cq to i64
  %i.cu = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ct ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !77
  %i.cw = and i16 %i.cv, 32767
  %masksel = select i1 %i.cs, i16 -32768, i16 0
  %.sink = or disjoint i16 %i.cw, %masksel
  store i16 %.sink, ptr %i.cu, align 2, !tbaa !77
  %i.cx = add nsw i32 %spec.store.select161, 1    ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp sgt i64 %indvars.iv.next152, %i.cy
  %i.da = select i1 %i.cz, i32 %i.cx, i32 0
  %i.db = tail call fastcc noundef zeroext i1 @_ZL8diagonaliiiPKhPKt(i32 noundef %i.cq, i32 noundef %i.da, i32 noundef %i.co, ptr noundef %1, ptr noundef nonnull %2)
  %i.dc = sext i32 %spec.store.select161 to i64
  %i.dd = getelementptr inbounds [2 x i8], ptr %2, i64 %i.dc ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !77
  %i.df = and i16 %i.de, 32767
  %masksel165 = select i1 %i.db, i16 -32768, i16 0
  %.sink164 = or disjoint i16 %i.df, %masksel165
  store i16 %.sink164, ptr %i.dd, align 2, !tbaa !77
  %exitcond154.not = icmp eq i32 %.0111138, %i.e
  br i1 %exitcond154.not, label %._crit_edge140.loopexit, label %.preheader

._crit_edge140.loopexit:                          ; preds = %bb.i
  %i.dg = add nsw i32 %0, -2
  br label %._crit_edge140

._crit_edge140:                                   ; preds = %bb.a, %._crit_edge140.loopexit, %.preheader128
  %.0111.lcssa = phi i32 [ 1, %.preheader128 ], [ %i.dg, %._crit_edge140.loopexit ], [ 1, %bb.a ]
  %.0109.lcssa = phi ptr [ %3, %.preheader128 ], [ %i.cc, %._crit_edge140.loopexit ], [ %3, %bb.a ] ; 3 uses
  %i.dh = load i16, ptr %2, align 2, !tbaa !77
  %i.di = and i16 %i.dh, 32767
  %i.dj = getelementptr inbounds nuw i8, ptr %.0109.lcssa, i64 2
  store i16 %i.di, ptr %.0109.lcssa, align 2, !tbaa !77
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !77
  %i.dm = and i16 %i.dl, 32767
  %i.dn = getelementptr inbounds nuw i8, ptr %.0109.lcssa, i64 4
  store i16 %i.dm, ptr %i.dj, align 2, !tbaa !77
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !77
  %i.dq = and i16 %i.dp, 32767
  store i16 %i.dq, ptr %i.dn, align 2, !tbaa !77
  br label %bb.j

bb.j:                                             ; preds = %.thread, %._crit_edge140
  %.2115 = phi i32 [ %i.bf, %.thread ], [ %.0111.lcssa, %._crit_edge140 ]
  ret i32 %.2115
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @_ZL17getPolyMergeValuePtS_PKtRiS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) unnamed_addr #7 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !77
  %i.b = icmp eq i16 %i.a, -1
  br i1 %i.b, label %_ZL14countPolyVertsPKt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !77
  %i.e = icmp eq i16 %i.d, -1
  br i1 %i.e, label %_ZL14countPolyVertsPKt.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i16, ptr %i.f, align 2, !tbaa !77
  %i.h = icmp eq i16 %i.g, -1
  br i1 %i.h, label %_ZL14countPolyVertsPKt.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.j = load i16, ptr %i.i, align 2, !tbaa !77
  %i.k = icmp eq i16 %i.j, -1
  br i1 %i.k, label %_ZL14countPolyVertsPKt.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i16, ptr %i.l, align 2, !tbaa !77
  %i.n = icmp eq i16 %i.m, -1
  br i1 %i.n, label %_ZL14countPolyVertsPKt.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.p = load i16, ptr %i.o, align 2, !tbaa !77
  %i.q = icmp eq i16 %i.p, -1
  %spec.select.i = select i1 %i.q, i32 5, i32 6
  br label %_ZL14countPolyVertsPKt.exit

_ZL14countPolyVertsPKt.exit:                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %i.r = phi i32 [ 0, %bb.a ], [ 3, %bb.d ], [ 1, %bb.b ], [ %spec.select.i, %bb.f ], [ 2, %bb.c ], [ 4, %bb.e ] ; 8 uses
  %i.s = load i16, ptr %1, align 2, !tbaa !77
  %i.t = icmp eq i16 %i.s, -1
  br i1 %i.t, label %_ZL14countPolyVertsPKt.exit90, label %bb.g

bb.g:                                             ; preds = %_ZL14countPolyVertsPKt.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !77
  %i.w = icmp eq i16 %i.v, -1
  br i1 %i.w, label %_ZL14countPolyVertsPKt.exit90, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i16, ptr %i.x, align 2, !tbaa !77
  %i.z = icmp eq i16 %i.y, -1
  br i1 %i.z, label %_ZL14countPolyVertsPKt.exit90, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !77
  %i.ac = icmp eq i16 %i.ab, -1
  br i1 %i.ac, label %_ZL14countPolyVertsPKt.exit90, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !77
  %i.af = icmp eq i16 %i.ae, -1
  br i1 %i.af, label %_ZL14countPolyVertsPKt.exit90, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !77
  %i.ai = icmp eq i16 %i.ah, -1
  %spec.select.i89 = select i1 %i.ai, i32 5, i32 6
  br label %_ZL14countPolyVertsPKt.exit90

_ZL14countPolyVertsPKt.exit90:                    ; preds = %_ZL14countPolyVertsPKt.exit, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %i.aj = phi i32 [ 0, %_ZL14countPolyVertsPKt.exit ], [ 3, %bb.i ], [ 1, %bb.g ], [ %spec.select.i89, %bb.k ], [ 2, %bb.h ], [ 4, %bb.j ] ; 30 uses
  %i.ak = add nuw nsw i32 %i.aj, %i.r
  %i.al = icmp samesign ugt i32 %i.ak, 8
  br i1 %i.al, label %.thread, label %bb.l

bb.l:                                             ; preds = %_ZL14countPolyVertsPKt.exit90
  store i32 -1, ptr %3, align 4, !tbaa !76
  store i32 -1, ptr %4, align 4, !tbaa !76
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.am = zext nneg i32 %i.r to i64               ; 2 uses
  %.not130 = icmp eq i32 %i.r, 1
  br i1 %.not130, label %.lr.ph.peel, label %.lr.ph.preheader.split

.lr.ph.preheader.split:                           ; preds = %.lr.ph.preheader
  %exitcond.not125 = icmp eq i32 %i.aj, 0
  %i.an = icmp ne i32 %i.aj, 1
  %i.ao = zext i1 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ao
  %exitcond.not = icmp eq i32 %i.aj, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ar = icmp eq i32 %i.aj, 2
  %i.as = select i1 %i.ar, i64 0, i64 2
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.as
  %exitcond.not.1 = icmp eq i32 %i.aj, 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = icmp eq i32 %i.aj, 3
  %i.aw = select i1 %i.av, i64 0, i64 3
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw
  %exitcond.not.2 = icmp eq i32 %i.aj, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.az = icmp eq i32 %i.aj, 4
  %i.ba = select i1 %i.az, i64 0, i64 4
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ba
  %exitcond.not.3 = icmp eq i32 %i.aj, 4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = icmp eq i32 %i.aj, 5
  %i.be = select i1 %i.bd, i64 0, i64 5
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.be
  %exitcond.not.4 = icmp eq i32 %i.aj, 5
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bh = icmp eq i32 %i.aj, 6
  %i.bi = select i1 %i.bh, i64 0, i64 6
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bi
  %exitcond.not.5 = icmp eq i32 %i.aj, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bm = add nsw i64 %i.am, -2
  br label %.lr.ph

.lr.ph.peel:                                      ; preds = %.lr.ph.preheader, %.loopexit
  %i.bn = phi i32 [ -1, %.lr.ph.preheader ], [ %i.fj, %.loopexit ] ; 8 uses
  %i.bo = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next115, %.loopexit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !77 ; 2 uses
  %indvars.iv.next115.peel = add nuw nsw i64 %i.bo, 1 ; 2 uses
  %i.br = icmp eq i64 %indvars.iv.next115.peel, %i.am
  %i.bs = select i1 %i.br, i64 0, i64 %indvars.iv.next115.peel
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !77 ; 2 uses
  %spec.select.peel = tail call i16 @llvm.umin.i16(i16 %i.bq, i16 %i.bu) ; 7 uses
  %spec.select105.peel = tail call i16 @llvm.umax.i16(i16 %i.bq, i16 %i.bu) ; 7 uses
  %exitcond.not125.peel = icmp eq i32 %i.aj, 0
  br i1 %exitcond.not125.peel, label %._crit_edge, label %.lr.ph127.peel

.lr.ph127.peel:                                   ; preds = %.lr.ph.peel
  %i.bv = load i16, ptr %1, align 2, !tbaa !77    ; 2 uses
  %i.bw = icmp ne i32 %i.aj, 1
  %i.bx = zext i1 %i.bw to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bx
end_hunk_3
