Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/recording_replay?download=true
inline.NumInlined: 743
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b2RecCaptureKeyframe:bb.a
  %.pre = load i32, ptr %i.l, align 8, !tbaa !90
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.q = phi i32 [ %.165, %._crit_edge ], [ %.pre, %bb.a ] ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.m, align 8, !tbaa !79
  %i.t = add i64 %i.s, %i.k
  %i.u = load i64, ptr %i.n, align 8, !tbaa !78
  %i.v = icmp ugt i64 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.w = load i32, ptr %i.o, align 4, !tbaa !81
  %i.x = shl nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.o, align 4, !tbaa !81
  br label %.lr.ph

._crit_edge:                                      ; preds = %b2FreeKeyframe.exit
  %.not = icmp slt i32 %.165, %i.bb
  store i32 %.165, ptr %i.l, align 8, !tbaa !90
  store i64 %.1, ptr %i.m, align 8, !tbaa !79
  br i1 %.not, label %bb.b, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %b2FreeKeyframe.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %b2FreeKeyframe.exit ] ; 2 uses
  %.06373 = phi i64 [ 0, %.lr.ph.preheader ], [ %.1, %b2FreeKeyframe.exit ] ; 3 uses
  %.06472 = phi i32 [ 0, %.lr.ph.preheader ], [ %.165, %b2FreeKeyframe.exit ] ; 4 uses
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !91   ; 2 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %indvars.iv ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !101
  %i.ac = load i32, ptr %i.o, align 4, !tbaa !81
  %i.ad = srem i32 %i.ab, %i.ac
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.af = sext i32 %.06472 to i64
  %i.ag = getelementptr inbounds [48 x i8], ptr %i.y, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false), !tbaa.struct !347
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !94
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !96
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = add i64 %.06373, %i.aj
  %i.ap = add i64 %i.ao, %i.an
  %i.aq = add nsw i32 %.06472, 1
  br label %b2FreeKeyframe.exit

bb.e:                                             ; preds = %.lr.ph
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !93
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !94
  %i.au = sext i32 %i.at to i64
  call void @b2Free(ptr noundef %i.ar, i64 noundef %i.au) #19
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !95 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %b2FreeKeyframe.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !96
  %i.az = shl nsw i32 %i.ay, 3
  %i.ba = sext i32 %i.az to i64
  call void @b2Free(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #19
  br label %b2FreeKeyframe.exit

b2FreeKeyframe.exit:                              ; preds = %bb.f, %bb.e, %bb.d
  %.165 = phi i32 [ %i.aq, %bb.d ], [ %.06472, %bb.e ], [ %.06472, %bb.f ] ; 5 uses
  %.1 = phi i64 [ %i.ap, %bb.d ], [ %.06373, %bb.e ], [ %.06373, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = load i32, ptr %i.l, align 8, !tbaa !90  ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %.lr.ph, label %._crit_edge, !llvm.loop !342

.critedge:                                        ; preds = %._crit_edge, %bb.b, %bb.c
  %i.be = phi i32 [ %i.q, %bb.c ], [ %.165, %._crit_edge ], [ %i.q, %bb.b ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !30 ; 3 uses
  %.not.i69.not = icmp slt i32 %i.be, %i.bg
  br i1 %.not.i69.not, label %.critedge.b2RecGrow.exit_crit_edge, label %bb.g

.critedge.b2RecGrow.exit_crit_edge:               ; preds = %.critedge
  %.pre79 = load ptr, ptr %i.p, align 8, !tbaa !91
  br label %b2RecGrow.exit

bb.g:                                             ; preds = %.critedge
  %i.bh = add nsw i32 %i.be, 1
  %i.bi = icmp eq i32 %i.bg, 0
  %i.bj = shl nsw i32 %i.bg, 1
  %spec.select.i = select i1 %i.bi, i32 8, i32 %i.bj
  %.0.i = call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.bh) ; 2 uses
  %i.bk = sext i32 %.0.i to i64
  %i.bl = mul nsw i64 %i.bk, 48
  %i.bm = call ptr @b2Alloc(i64 noundef %i.bl) #19 ; 3 uses
  %i.bn = load ptr, ptr %i.p, align 8, !tbaa !35  ; 3 uses
  %.not26.i = icmp eq ptr %i.bn, null
  br i1 %.not26.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = icmp sgt i32 %i.be, 0
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bp = zext nneg i32 %i.be to i64
  %i.bq = mul nuw nsw i64 %i.bp, 48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr nonnull align 1 %i.bn, i64 %i.bq, i1 false)
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.br = phi ptr [ %.pre.i, %bb.i ], [ %i.bn, %bb.h ]
  %i.bs = load i32, ptr %i.bf, align 4, !tbaa !30
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul nsw i64 %i.bt, 48
  call void @b2Free(ptr noundef %i.br, i64 noundef %i.bu) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  store ptr %i.bm, ptr %i.p, align 8, !tbaa !35
  store i32 %.0.i, ptr %i.bf, align 4, !tbaa !30
  %.pre80 = load i32, ptr %i.l, align 8, !tbaa !90
  br label %b2RecGrow.exit

b2RecGrow.exit:                                   ; preds = %.critedge.b2RecGrow.exit_crit_edge, %bb.k
  %i.bv = phi i32 [ %i.be, %.critedge.b2RecGrow.exit_crit_edge ], [ %.pre80, %bb.k ] ; 2 uses
  %i.bw = phi ptr [ %.pre79, %.critedge.b2RecGrow.exit_crit_edge ], [ %i.bm, %bb.k ]
  %i.bx = sext i32 %i.bv to i64
  %i.by = getelementptr inbounds [48 x i8], ptr %i.bw, i64 %i.bx ; 8 uses
  %i.bz = load ptr, ptr %1, align 8, !tbaa !348
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !93
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load <2 x i32>, ptr %i.h, align 8, !tbaa !30
  %i.cc = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.cc, ptr %i.ca, align 8, !tbaa !30
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !100 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !101
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !66
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 20
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !102
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !62
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 36
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !103
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !69, !range !21, !noundef !97
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  store i8 %i.cn, ptr %i.co, align 8, !tbaa !104
  %i.cp = load i32, ptr %i.d, align 8, !tbaa !85
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !96
  %i.cr = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  store ptr null, ptr %i.cr, align 8, !tbaa !95
  %.not68 = icmp eq i32 %i.e, 0
  br i1 %.not68, label %bb.m, label %bb.l

bb.l:                                             ; preds = %b2RecGrow.exit
  %i.cs = call ptr @b2Alloc(i64 noundef %i.g) #19 ; 2 uses
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !95
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cs, ptr align 4 %i.cu, i64 %i.g, i1 false)
  %.pre81 = load i32, ptr %i.l, align 8, !tbaa !90
  %.pre82 = load i32, ptr %i.cd, align 8, !tbaa !100
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %b2RecGrow.exit
  %i.cv = phi i32 [ %.pre82, %bb.l ], [ %i.ce, %b2RecGrow.exit ]
  %i.cw = phi i32 [ %.pre81, %bb.l ], [ %i.bv, %b2RecGrow.exit ]
  %i.cx = load i64, ptr %i.m, align 8, !tbaa !79
  %i.cy = add i64 %i.cx, %i.k
  store i64 %i.cy, ptr %i.m, align 8, !tbaa !79
  %i.cz = add nsw i32 %i.cw, 1
  store i32 %i.cz, ptr %i.l, align 8, !tbaa !90
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.cv, ptr %i.da, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 256) i32 @b2RecDispatchOne(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.b2RecArgs_WorldExplode, align 8 ; 5 uses
  %2 = alloca %struct.b2RecArgs_CreateBody, align 8 ; 6 uses
  %3 = alloca %struct.b2RecArgs_CreateCircleShape, align 8 ; 8 uses
  %4 = alloca %struct.b2RecArgs_CreateCapsuleShape, align 8 ; 7 uses
  %5 = alloca %struct.b2Capsule, align 4          ; 5 uses
  %6 = alloca %struct.b2RecArgs_CreateSegmentShape, align 8 ; 7 uses
  %7 = alloca %struct.b2RecArgs_CreatePolygonShape, align 8 ; 7 uses
  %8 = alloca %struct.b2Polygon, align 4          ; 5 uses
  %9 = alloca %struct.b2RecArgs_CreateChainSegmentShape, align 8 ; 7 uses
  %10 = alloca %struct.b2ChainSegment, align 4    ; 5 uses
  %11 = alloca %struct.b2RecArgs_ShapeSetSurfaceMaterial, align 8 ; 5 uses
  %12 = alloca %struct.b2RecArgs_ShapeSetFilter, align 8 ; 5 uses
  %13 = alloca %struct.b2RecArgs_ShapeSetCircle, align 8 ; 5 uses
  %14 = alloca %struct.b2RecArgs_ShapeSetCapsule, align 8 ; 4 uses
  %15 = alloca %struct.b2Capsule, align 4         ; 5 uses
  %16 = alloca %struct.b2RecArgs_ShapeSetSegment, align 8 ; 4 uses
  %17 = alloca %struct.b2RecArgs_ShapeSetPolygon, align 8 ; 4 uses
  %18 = alloca %struct.b2Polygon, align 4         ; 5 uses
  %19 = alloca %struct.b2RecArgs_ShapeSetChainSegment, align 8 ; 4 uses
  %20 = alloca %struct.b2ChainSegment, align 4    ; 5 uses
  %21 = alloca %struct.b2RecArgs_CreateChain, align 8 ; 6 uses
  %22 = alloca %struct.b2RecArgs_ChainSetSurfaceMaterial, align 8 ; 6 uses
  %23 = alloca %struct.b2RecArgs_CreateDistanceJoint, align 8 ; 6 uses
  %24 = alloca %struct.b2RecArgs_CreateFilterJoint, align 8 ; 6 uses
  %25 = alloca %struct.b2FilterJointDef, align 8  ; 5 uses
  %26 = alloca %struct.b2RecArgs_CreateMotorJoint, align 8 ; 6 uses
  %27 = alloca %struct.b2RecArgs_CreateMoverJoint, align 8 ; 6 uses
  %28 = alloca %struct.b2RecArgs_CreatePogoJoint, align 8 ; 6 uses
  %29 = alloca %struct.b2RecArgs_CreatePrismaticJoint, align 8 ; 6 uses
  %30 = alloca %struct.b2RecArgs_CreateRevoluteJoint, align 8 ; 6 uses
  %31 = alloca %struct.b2RecArgs_CreateWeldJoint, align 8 ; 6 uses
  %32 = alloca %struct.b2RecArgs_CreateWheelJoint, align 8 ; 6 uses
  %33 = alloca %struct.b2RecArgs_QueryOverlapAABB, align 8 ; 9 uses
  %34 = alloca %struct.b2RecArgs_QueryOverlapShape, align 8 ; 9 uses
  %35 = alloca %struct.b2RecArgs_QueryCastRay, align 8 ; 8 uses
  %36 = alloca %struct.b2RecArgs_QueryCastShape, align 8 ; 10 uses
  %37 = alloca %struct.b2RecArgs_QueryCollideMover, align 8 ; 9 uses
  %38 = alloca %struct.b2Capsule, align 4         ; 5 uses
  %39 = alloca %struct.b2RecArgs_QueryCastRayClosest, align 8 ; 8 uses
  %40 = alloca %struct.b2RecArgs_QueryCastMover, align 8 ; 10 uses
  %41 = alloca %struct.b2Capsule, align 4         ; 5 uses
  %42 = alloca %struct.b2RecArgs_ShapeTestPoint, align 8 ; 5 uses
  %43 = alloca %struct.b2RecArgs_ShapeRayCast, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 356 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 258 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18   ; 61 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 101 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19   ; 8 uses
  %.not = icmp slt i32 %i.c, %i.e
  br i1 %.not, label %bb.b, label %b2RecR_WORLDID.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 284 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noundef !97
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %b2RecR_WORLDID.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.j = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = add nsw i64 %i.k, 3
  %i.m = sext i32 %i.e to i64                     ; 42 uses
  %.not2742 = icmp sgt i64 %i.l, %i.m
  br i1 %.not2742, label %b2RecR_U24.exit.thread, label %bb.d

b2RecR_U24.exit.thread:                           ; preds = %bb.c
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sext i32 %i.c to i64
  %i.o = getelementptr inbounds i8, ptr %i.i, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !23    ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.k ; 2 uses
  %i.s = load i16, ptr %i.r, align 1
  %i.t = zext i16 %i.s to i32
  %i.u = getelementptr i8, ptr %i.r, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !23
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 16
  %i.y = or disjoint i32 %i.x, %i.t               ; 3 uses
  %i.z = add nsw i32 %i.c, 4                      ; 24 uses
  store i32 %i.z, ptr %i.b, align 4, !tbaa !18
  %i.aa = zext i8 %i.p to i32                     ; 3 uses
  switch i8 %i.p, label %bb.ma [
    i8 1, label %bb.e
    i8 -128, label %bb.f
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
    i8 5, label %bb.l
    i8 6, label %bb.n
    i8 7, label %bb.p
    i8 8, label %bb.s
    i8 9, label %bb.u
    i8 10, label %bb.w
    i8 11, label %bb.y
    i8 12, label %bb.z
    i8 16, label %bb.ab
    i8 17, label %bb.ae
    i8 32, label %bb.ag
    i8 33, label %bb.ai
    i8 34, label %bb.ak
    i8 35, label %bb.am
    i8 36, label %bb.ao
    i8 37, label %bb.aq
    i8 38, label %bb.as
    i8 39, label %bb.au
    i8 40, label %bb.aw
    i8 41, label %bb.ay
    i8 42, label %bb.ba
    i8 43, label %bb.bc
    i8 44, label %bb.be
    i8 45, label %bb.bg
    i8 46, label %bb.bi
    i8 47, label %bb.bk
    i8 48, label %bb.bm
    i8 49, label %bb.bo
    i8 50, label %bb.bq
    i8 51, label %bb.bs
    i8 52, label %bb.bu
    i8 53, label %bb.bw
    i8 54, label %bb.by
    i8 55, label %bb.ca
    i8 56, label %bb.cc
    i8 57, label %bb.ce
    i8 58, label %bb.cg
    i8 59, label %bb.ci
    i8 60, label %bb.ck
    i8 61, label %bb.cm
    i8 64, label %bb.co
    i8 65, label %bb.cq
    i8 66, label %bb.ct
    i8 67, label %bb.cv
    i8 68, label %bb.cy
    i8 69, label %bb.db
    i8 80, label %bb.dd
    i8 81, label %bb.df
    i8 82, label %bb.dh
    i8 83, label %bb.dj
    i8 84, label %bb.dl
    i8 85, label %bb.do
    i8 86, label %bb.dr
    i8 87, label %bb.dt
    i8 88, label %bb.dv
    i8 89, label %bb.dx
    i8 90, label %bb.dz
    i8 91, label %bb.eb
    i8 92, label %bb.ee
    i8 93, label %bb.eg
    i8 94, label %bb.ej
    i8 95, label %bb.em
    i8 112, label %bb.eo
    i8 113, label %bb.er
    i8 114, label %bb.et
    i8 -112, label %bb.ev
    i8 -111, label %bb.ex
    i8 -110, label %bb.ez
    i8 -109, label %bb.fb
    i8 -108, label %bb.fd
    i8 -107, label %bb.ff
    i8 -106, label %bb.fh
    i8 -105, label %bb.fj
    i8 -104, label %bb.fl
    i8 -103, label %bb.fo
    i8 -102, label %bb.fq
    i8 -101, label %bb.fs
    i8 -100, label %bb.fu
    i8 -99, label %bb.fw
    i8 -98, label %bb.fy
    i8 -97, label %bb.ga
    i8 -96, label %bb.gc
    i8 -95, label %bb.ge
    i8 -94, label %bb.gg
    i8 -93, label %bb.gi
    i8 -92, label %bb.gl
    i8 -91, label %bb.go
    i8 -90, label %bb.gq
    i8 -89, label %bb.gs
    i8 -88, label %bb.gu
    i8 -87, label %bb.gw
    i8 -86, label %bb.gy
    i8 -85, label %bb.ha
    i8 -84, label %bb.hc
    i8 -83, label %bb.he
    i8 -82, label %bb.hg
    i8 -81, label %bb.hi
    i8 -80, label %bb.hl
    i8 -79, label %bb.hn
    i8 -78, label %bb.hp
    i8 -77, label %bb.hs
    i8 -76, label %bb.hu
    i8 -75, label %bb.hw
    i8 -74, label %bb.hy
    i8 -73, label %bb.ib
    i8 -72, label %bb.id
    i8 -71, label %bb.if
    i8 -70, label %bb.ih
    i8 -69, label %bb.ij
    i8 -68, label %bb.il
    i8 -67, label %bb.in
    i8 -66, label %bb.ip
    i8 -65, label %bb.ir
    i8 -64, label %bb.it
    i8 -63, label %bb.iw
    i8 -62, label %bb.iy
    i8 -61, label %bb.ja
    i8 -60, label %bb.jc
    i8 -59, label %bb.je
    i8 -58, label %bb.jg
    i8 -57, label %bb.ji
    i8 -56, label %bb.jk
    i8 -55, label %bb.jm
    i8 -54, label %bb.jo
    i8 -53, label %bb.jr
    i8 -52, label %bb.jt
    i8 -51, label %bb.jv
    i8 -50, label %bb.jx
    i8 -49, label %bb.jz
    i8 -48, label %bb.kc
    i8 -47, label %bb.ke
    i8 -46, label %bb.kg
    i8 -45, label %bb.ki
    i8 -44, label %bb.kk
    i8 -43, label %bb.km
    i8 -42, label %bb.ko
    i8 -41, label %bb.kq
    i8 -32, label %bb.ks
    i8 -31, label %bb.kv
    i8 -30, label %bb.ky
    i8 -29, label %bb.lb
    i8 -28, label %bb.le
    i8 -27, label %bb.lj
    i8 -26, label %bb.lm
    i8 -25, label %bb.lr
    i8 -24, label %bb.lu
    i8 -15, label %bb.lx
    i8 -14, label %bb.ly
  ]

end_hunk_0
begin_hunk_1_@b2RecDispatchOne:bb.a
  %.sroa.23.0.insert.ext.i.i1507 = zext i16 %i.sp to i64
  %.sroa.23.0.insert.shift.i.i1508 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1507, 32
  %i.sq = and i64 %i.se, -281470681743361
  %.sroa.02.0.insert.insert.i.i1509 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1508, %i.sq
  tail call void @b2Body_EnableContactEvents(i64 %.sroa.02.0.insert.insert.i.i1509, i1 noundef zeroext %i.sn) #19
  br label %b2RecR_WORLDID.exit

bb.ck:                                            ; preds = %bb.d
  %i.sr = tail call i64 @b2RecR_BODYID(ptr noundef nonnull %i.a)
  %i.ss = load i32, ptr %i.b, align 4, !tbaa !18  ; 3 uses
  %i.st = sext i32 %i.ss to i64
  %i.su = load i32, ptr %i.d, align 8, !tbaa !19
  %.not.i.i1510 = icmp slt i32 %i.ss, %i.su
  br i1 %.not.i.i1510, label %b2RecRdrCheck.exit.i.i1514, label %b2RecRdrCheck.exit.thread.i.i1512

b2RecRdrCheck.exit.thread.i.i1512:                ; preds = %bb.ck
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit

b2RecRdrCheck.exit.i.i1514:                       ; preds = %bb.ck
  %.pre.i.i1515 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21
  %i.sv = trunc nuw i8 %.pre.i.i1515 to i1
  br i1 %i.sv, label %bb.cl, label %b2RecR_WORLDID.exit

bb.cl:                                            ; preds = %b2RecRdrCheck.exit.i.i1514
  %i.sw = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.sx = add nsw i32 %i.ss, 1
  store i32 %i.sx, ptr %i.b, align 4, !tbaa !18
  %i.sy = getelementptr inbounds i8, ptr %i.sw, i64 %i.st
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !23
  %i.ta = icmp ne i8 %i.sz, 0
  %i.tb = getelementptr i8, ptr %0, i64 88
  %.val973 = load i16, ptr %i.tb, align 8, !tbaa !105
  %i.tc = add i16 %.val973, -1
  %.sroa.23.0.insert.ext.i.i1517 = zext i16 %i.tc to i64
  %.sroa.23.0.insert.shift.i.i1518 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1517, 32
  %i.td = and i64 %i.sr, -281470681743361
  %.sroa.02.0.insert.insert.i.i1519 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1518, %i.td
  tail call void @b2Body_EnableHitEvents(i64 %.sroa.02.0.insert.insert.i.i1519, i1 noundef zeroext %i.ta) #19
  br label %b2RecR_WORLDID.exit

bb.cm:                                            ; preds = %bb.d
  %i.te = tail call i64 @b2RecR_BODYID(ptr noundef nonnull %i.a)
  %i.tf = load i32, ptr %i.b, align 4, !tbaa !18  ; 2 uses
  %i.tg = sext i32 %i.tf to i64                   ; 2 uses
  %i.th = add nsw i64 %i.tg, 4
  %i.ti = load i32, ptr %i.d, align 8, !tbaa !19
  %i.tj = sext i32 %i.ti to i64
  %i.tk = icmp sgt i64 %i.th, %i.tj
  br i1 %i.tk, label %b2RecRdrCheck.exit.thread.i.i1522, label %b2RecRdrCheck.exit.i.i1520

b2RecRdrCheck.exit.thread.i.i1522:                ; preds = %bb.cm
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit

b2RecRdrCheck.exit.i.i1520:                       ; preds = %bb.cm
  %.pre.i.i1521 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21
  %i.tl = trunc nuw i8 %.pre.i.i1521 to i1
  br i1 %i.tl, label %bb.cn, label %b2RecR_WORLDID.exit

bb.cn:                                            ; preds = %b2RecRdrCheck.exit.i.i1520
  %i.tm = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.tn = getelementptr inbounds i8, ptr %i.tm, i64 %i.tg
  %i.to = load float, ptr %i.tn, align 1
  %i.tp = add nsw i32 %i.tf, 4
  store i32 %i.tp, ptr %i.b, align 4, !tbaa !18
  %i.tq = getelementptr i8, ptr %0, i64 88
  %.val976 = load i16, ptr %i.tq, align 8, !tbaa !105
  %i.tr = add i16 %.val976, -1
  %.sroa.23.0.insert.ext.i.i1524 = zext i16 %i.tr to i64
  %.sroa.23.0.insert.shift.i.i1525 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1524, 32
  %i.ts = and i64 %i.te, -281470681743361
  %.sroa.02.0.insert.insert.i.i1526 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1525, %i.ts
  tail call void @b2Body_SetSafetyFactor(i64 %.sroa.02.0.insert.insert.i.i1526, float noundef %i.to) #19
  br label %b2RecR_WORLDID.exit

bb.co:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.tt = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.tt, i8 0, i64 104, i1 false)
  %i.tu = tail call i64 @b2RecR_BODYID(ptr noundef nonnull %i.a)
  store i64 %i.tu, ptr %3, align 8
  %i.tv = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @b2RecR_SHAPEDEF(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeDef) align 8 %i.tv, ptr noundef nonnull %i.a)
  %i.tw = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.tx = load i32, ptr %i.b, align 4, !tbaa !18  ; 2 uses
  %i.ty = sext i32 %i.tx to i64                   ; 2 uses
  %i.tz = add nsw i64 %i.ty, 12
  %i.ua = load i32, ptr %i.d, align 8, !tbaa !19
  %i.ub = sext i32 %i.ua to i64
  %i.uc = icmp sgt i64 %i.tz, %i.ub
  br i1 %i.uc, label %b2RecRdrCheck.exit.thread.i.i1529, label %b2RecRdrCheck.exit.i.i1527

b2RecRdrCheck.exit.thread.i.i1529:                ; preds = %bb.co
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_CIRCLE.exit.thread

b2RecRdrCheck.exit.i.i1527:                       ; preds = %bb.co
  %.pre.i.i1528 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21
  %i.ud = trunc nuw i8 %.pre.i.i1528 to i1
  br i1 %i.ud, label %bb.cp, label %b2RecR_CIRCLE.exit.thread

bb.cp:                                            ; preds = %b2RecRdrCheck.exit.i.i1527
  %i.ue = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.uf = getelementptr inbounds i8, ptr %i.ue, i64 %i.ty ; 2 uses
  %.sroa.0.0.copyload1.i = load <2 x float>, ptr %i.uf, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %.sroa.3.0.copyload.i = load float, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.ug = add nsw i32 %i.tx, 12
  store i32 %i.ug, ptr %i.b, align 4, !tbaa !18
  store <2 x float> %.sroa.0.0.copyload1.i, ptr %i.tw, align 8, !tbaa !28
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 104
  store float %.sroa.3.0.copyload.i, ptr %.sroa.4157.0..sroa_idx, align 8, !tbaa !28
  call fastcc void @b2RecDispatch_CreateCircleShape(ptr noundef %3, ptr noundef nonnull %i.a)
  br label %b2RecR_CIRCLE.exit.thread

b2RecR_CIRCLE.exit.thread:                        ; preds = %b2RecRdrCheck.exit.thread.i.i1529, %b2RecRdrCheck.exit.i.i1527, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %b2RecR_WORLDID.exit

bb.cq:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.uh = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.uh, i8 0, i64 112, i1 false)
  %i.ui = tail call i64 @b2RecR_BODYID(ptr noundef nonnull %i.a)
  store i64 %i.ui, ptr %4, align 8
  %i.uj = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @b2RecR_SHAPEDEF(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeDef) align 8 %i.uj, ptr noundef nonnull %i.a)
  %i.uk = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ul = load i32, ptr %i.b, align 4, !tbaa !18, !noalias !365 ; 2 uses
  %i.um = sext i32 %i.ul to i64                   ; 2 uses
  %i.un = add nsw i64 %i.um, 20
  %i.uo = load i32, ptr %i.d, align 8, !tbaa !19, !noalias !365
  %i.up = sext i32 %i.uo to i64
  %i.uq = icmp sgt i64 %i.un, %i.up
  br i1 %i.uq, label %b2RecRdrCheck.exit.thread.i.i1532, label %b2RecRdrCheck.exit.i.i1530

b2RecRdrCheck.exit.thread.i.i1532:                ; preds = %bb.cq
  store i8 0, ptr %i.f, align 8, !tbaa !20, !noalias !365
  br label %b2RecR_CAPSULE.exit

b2RecRdrCheck.exit.i.i1530:                       ; preds = %bb.cq
  %.pre.i.i1531 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noalias !365
  %i.ur = trunc nuw i8 %.pre.i.i1531 to i1
  br i1 %i.ur, label %bb.cr, label %b2RecR_CAPSULE.exit

b2RecR_CAPSULE.exit:                              ; preds = %b2RecRdrCheck.exit.thread.i.i1532, %b2RecRdrCheck.exit.i.i1530
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.cs

bb.cr:                                            ; preds = %b2RecRdrCheck.exit.i.i1530
  %i.us = load ptr, ptr %i.a, align 8, !tbaa !22, !noalias !365
  %i.ut = getelementptr inbounds i8, ptr %i.us, i64 %i.um
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 1 dereferenceable(20) %i.ut, i64 20, i1 false)
  %i.uu = add nsw i32 %i.ul, 20
  store i32 %i.uu, ptr %i.b, align 4, !tbaa !18, !noalias !365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.uk, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !107
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call fastcc void @b2RecDispatch_CreateCapsuleShape(ptr noundef %4, ptr noundef nonnull %i.a)
  br label %bb.cs

bb.cs:                                            ; preds = %b2RecR_CAPSULE.exit, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %b2RecR_WORLDID.exit

bb.ct:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.uv = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.uv, i8 0, i64 104, i1 false)
  %i.uw = tail call i64 @b2RecR_BODYID(ptr noundef nonnull %i.a)
  store i64 %i.uw, ptr %6, align 8
  %i.ux = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @b2RecR_SHAPEDEF(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeDef) align 8 %i.ux, ptr noundef nonnull %i.a)
  %i.uy = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.uz = load i32, ptr %i.b, align 4, !tbaa !18  ; 2 uses
  %i.va = sext i32 %i.uz to i64                   ; 2 uses
  %i.vb = add nsw i64 %i.va, 16
  %i.vc = load i32, ptr %i.d, align 8, !tbaa !19
  %i.vd = sext i32 %i.vc to i64
  %i.ve = icmp sgt i64 %i.vb, %i.vd
  br i1 %i.ve, label %b2RecRdrCheck.exit.thread.i.i1541, label %b2RecRdrCheck.exit.i.i1533

b2RecRdrCheck.exit.thread.i.i1541:                ; preds = %bb.ct
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_SEGMENT.exit.thread

b2RecRdrCheck.exit.i.i1533:                       ; preds = %bb.ct
  %.pre.i.i1534 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21
  %i.vf = trunc nuw i8 %.pre.i.i1534 to i1
  br i1 %i.vf, label %bb.cu, label %b2RecR_SEGMENT.exit.thread

bb.cu:                                            ; preds = %b2RecRdrCheck.exit.i.i1533
  %i.vg = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.vh = getelementptr inbounds i8, ptr %i.vg, i64 %i.va ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.vh, align 1
  %.sroa.3.0..sroa_idx.i1539 = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %.sroa.3.0.copyload.i1540 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i1539, align 1
  %i.vi = add nsw i32 %i.uz, 16
  store i32 %i.vi, ptr %i.b, align 4, !tbaa !18
  %44 = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> %.sroa.3.0.copyload.i1540, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %44, ptr %i.uy, align 8, !tbaa !28
  call fastcc void @b2RecDispatch_CreateSegmentShape(ptr noundef %6, ptr noundef nonnull %i.a)
  br label %b2RecR_SEGMENT.exit.thread

b2RecR_SEGMENT.exit.thread:                       ; preds = %b2RecRdrCheck.exit.thread.i.i1541, %b2RecRdrCheck.exit.i.i1533, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %b2RecR_WORLDID.exit

bb.cv:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.vj = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.vj, i8 0, i64 232, i1 false)
  %i.vk = tail call i64 @b2RecR_BODYID(ptr noundef nonnull %i.a)
  store i64 %i.vk, ptr %7, align 8
  %i.vl = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @b2RecR_SHAPEDEF(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeDef) align 8 %i.vl, ptr noundef nonnull %i.a)
  %i.vm = getelementptr inbounds nuw i8, ptr %7, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.vn = load i32, ptr %i.b, align 4, !tbaa !18, !noalias !366 ; 2 uses
  %i.vo = sext i32 %i.vn to i64                   ; 2 uses
  %i.vp = add nsw i64 %i.vo, 144
  %i.vq = load i32, ptr %i.d, align 8, !tbaa !19, !noalias !366
  %i.vr = sext i32 %i.vq to i64
  %i.vs = icmp sgt i64 %i.vp, %i.vr
  br i1 %i.vs, label %b2RecRdrCheck.exit.thread.i.i1544, label %b2RecRdrCheck.exit.i.i1542

b2RecRdrCheck.exit.thread.i.i1544:                ; preds = %bb.cv
  store i8 0, ptr %i.f, align 8, !tbaa !20, !noalias !366
  br label %b2RecR_POLYGON.exit

b2RecRdrCheck.exit.i.i1542:                       ; preds = %bb.cv
  %.pre.i.i1543 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noalias !366
  %i.vt = trunc nuw i8 %.pre.i.i1543 to i1
  br i1 %i.vt, label %bb.cw, label %b2RecR_POLYGON.exit

b2RecR_POLYGON.exit:                              ; preds = %b2RecRdrCheck.exit.thread.i.i1544, %b2RecRdrCheck.exit.i.i1542
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.cx

bb.cw:                                            ; preds = %b2RecRdrCheck.exit.i.i1542
  %i.vu = load ptr, ptr %i.a, align 8, !tbaa !22, !noalias !366
  %i.vv = getelementptr inbounds i8, ptr %i.vu, i64 %i.vo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %8, ptr noundef nonnull align 1 dereferenceable(144) %i.vv, i64 144, i1 false)
  %i.vw = add nsw i32 %i.vn, 144
  store i32 %i.vw, ptr %i.b, align 4, !tbaa !18, !noalias !366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.vm, ptr noundef nonnull align 4 dereferenceable(144) %8, i64 144, i1 false), !tbaa.struct !367
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call fastcc void @b2RecDispatch_CreatePolygonShape(ptr noundef %7, ptr noundef nonnull %i.a)
  br label %bb.cx

bb.cx:                                            ; preds = %b2RecR_POLYGON.exit, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %b2RecR_WORLDID.exit

bb.cy:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.vx = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.vx, i8 0, i64 128, i1 false)
  %i.vy = tail call i64 @b2RecR_BODYID(ptr noundef nonnull %i.a)
  store i64 %i.vy, ptr %9, align 8
  %i.vz = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @b2RecR_SHAPEDEF(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeDef) align 8 %i.vz, ptr noundef nonnull %i.a)
  %i.wa = getelementptr inbounds nuw i8, ptr %9, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.wb = load i32, ptr %i.b, align 4, !tbaa !18, !noalias !368 ; 2 uses
  %i.wc = sext i32 %i.wb to i64                   ; 2 uses
  %i.wd = add nsw i64 %i.wc, 36
  %i.we = load i32, ptr %i.d, align 8, !tbaa !19, !noalias !368
  %i.wf = sext i32 %i.we to i64
  %i.wg = icmp sgt i64 %i.wd, %i.wf
  br i1 %i.wg, label %b2RecRdrCheck.exit.thread.i.i1547, label %b2RecRdrCheck.exit.i.i1545

b2RecRdrCheck.exit.thread.i.i1547:                ; preds = %bb.cy
  store i8 0, ptr %i.f, align 8, !tbaa !20, !noalias !368
  br label %b2RecR_CHAINSEG.exit

b2RecRdrCheck.exit.i.i1545:                       ; preds = %bb.cy
  %.pre.i.i1546 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noalias !368
  %i.wh = trunc nuw i8 %.pre.i.i1546 to i1
  br i1 %i.wh, label %bb.cz, label %b2RecR_CHAINSEG.exit

b2RecR_CHAINSEG.exit:                             ; preds = %b2RecRdrCheck.exit.thread.i.i1547, %b2RecRdrCheck.exit.i.i1545
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.da

bb.cz:                                            ; preds = %b2RecRdrCheck.exit.i.i1545
  %i.wi = load ptr, ptr %i.a, align 8, !tbaa !22, !noalias !368
  %i.wj = getelementptr inbounds i8, ptr %i.wi, i64 %i.wc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %10, ptr noundef nonnull align 1 dereferenceable(36) %i.wj, i64 36, i1 false)
  %i.wk = add nsw i32 %i.wb, 36
  store i32 %i.wk, ptr %i.b, align 4, !tbaa !18, !noalias !368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.wa, ptr noundef nonnull align 4 dereferenceable(36) %10, i64 36, i1 false), !tbaa.struct !369
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call fastcc void @b2RecDispatch_CreateChainSegmentShape(ptr noundef %9, ptr noundef nonnull %i.a)
  br label %bb.da

bb.da:                                            ; preds = %b2RecR_CHAINSEG.exit, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %b2RecR_WORLDID.exit

bb.db:                                            ; preds = %bb.d
  %i.wl = tail call i64 @b2RecR_SHAPEID(ptr noundef nonnull %i.a)
  %i.wm = load i32, ptr %i.b, align 4, !tbaa !18  ; 3 uses
  %i.wn = sext i32 %i.wm to i64
  %i.wo = load i32, ptr %i.d, align 8, !tbaa !19
  %.not.i.i1548 = icmp slt i32 %i.wm, %i.wo
  br i1 %.not.i.i1548, label %b2RecRdrCheck.exit.i.i1552, label %b2RecRdrCheck.exit.thread.i.i1550

b2RecRdrCheck.exit.thread.i.i1550:                ; preds = %bb.db
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit

b2RecRdrCheck.exit.i.i1552:                       ; preds = %bb.db
  %.pre.i.i1553 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21
  %i.wp = trunc nuw i8 %.pre.i.i1553 to i1
  br i1 %i.wp, label %bb.dc, label %b2RecR_WORLDID.exit

bb.dc:                                            ; preds = %b2RecRdrCheck.exit.i.i1552
  %i.wq = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.wr = add nsw i32 %i.wm, 1
  store i32 %i.wr, ptr %i.b, align 4, !tbaa !18
  %i.ws = getelementptr inbounds i8, ptr %i.wq, i64 %i.wn
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !23
  %i.wu = icmp ne i8 %i.wt, 0
  %i.wv = getelementptr i8, ptr %0, i64 88
  %.val979 = load i16, ptr %i.wv, align 8, !tbaa !105
  %i.ww = add i16 %.val979, -1
  %.sroa.23.0.insert.ext.i.i1555 = zext i16 %i.ww to i64
  %.sroa.23.0.insert.shift.i.i1556 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1555, 32
  %i.wx = and i64 %i.wl, -281470681743361
  %.sroa.02.0.insert.insert.i.i1557 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1556, %i.wx
  tail call void @b2DestroyShape(i64 %.sroa.02.0.insert.insert.i.i1557, i1 noundef zeroext %i.wu) #19
  br label %b2RecR_WORLDID.exit

bb.dd:                                            ; preds = %bb.d
  %i.wy = tail call i64 @b2RecR_SHAPEID(ptr noundef nonnull %i.a)
  %i.wz = load i32, ptr %i.b, align 4, !tbaa !18  ; 4 uses
  %i.xa = sext i32 %i.wz to i64                   ; 2 uses
  %i.xb = add nsw i64 %i.xa, 4
  %i.xc = load i32, ptr %i.d, align 8, !tbaa !19  ; 3 uses
  %i.xd = sext i32 %i.xc to i64
  %i.xe = icmp sgt i64 %i.xb, %i.xd
  br i1 %i.xe, label %b2RecRdrCheck.exit.thread.i.i1560, label %b2RecRdrCheck.exit.i.i1558

b2RecRdrCheck.exit.thread.i.i1560:                ; preds = %bb.dd
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_F32.exit1561

b2RecRdrCheck.exit.i.i1558:                       ; preds = %bb.dd
  %.pre.i.i1559 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21
  %i.xf = trunc nuw i8 %.pre.i.i1559 to i1
  br i1 %i.xf, label %b2RecR_F32.exit1561.thread, label %b2RecR_F32.exit1561

b2RecR_F32.exit1561:                              ; preds = %b2RecRdrCheck.exit.thread.i.i1560, %b2RecRdrCheck.exit.i.i1558
  %.not.i.i1562 = icmp slt i32 %i.wz, %i.xc
  br i1 %.not.i.i1562, label %b2RecR_WORLDID.exit, label %b2RecRdrCheck.exit.thread.i.i1564

b2RecR_F32.exit1561.thread:                       ; preds = %b2RecRdrCheck.exit.i.i1558
  %i.xg = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.xh = getelementptr inbounds i8, ptr %i.xg, i64 %i.xa
  %i.xi = load float, ptr %i.xh, align 1
  %i.xj = add nsw i32 %i.wz, 4                    ; 3 uses
  store i32 %i.xj, ptr %i.b, align 4, !tbaa !18
  %.not.i.i15622846 = icmp slt i32 %i.xj, %i.xc
  br i1 %.not.i.i15622846, label %bb.de, label %b2RecRdrCheck.exit.thread.i.i1564

b2RecRdrCheck.exit.thread.i.i1564:                ; preds = %b2RecR_F32.exit1561.thread, %b2RecR_F32.exit1561
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit

bb.de:                                            ; preds = %b2RecR_F32.exit1561.thread
  %.pre2646 = sext i32 %i.xj to i64
  %i.xk = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.xl = add nsw i32 %i.wz, 5
  store i32 %i.xl, ptr %i.b, align 4, !tbaa !18
  %i.xm = getelementptr inbounds i8, ptr %i.xk, i64 %.pre2646
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !23
  %i.xo = icmp ne i8 %i.xn, 0
  %i.xp = getelementptr i8, ptr %0, i64 88
  %.val980 = load i16, ptr %i.xp, align 8, !tbaa !105
  %i.xq = add i16 %.val980, -1
  %.sroa.23.0.insert.ext.i.i1569 = zext i16 %i.xq to i64
  %.sroa.23.0.insert.shift.i.i1570 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1569, 32
  %i.xr = and i64 %i.wy, -281470681743361
  %.sroa.02.0.insert.insert.i.i1571 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1570, %i.xr
  tail call void @b2Shape_SetDensity(i64 %.sroa.02.0.insert.insert.i.i1571, float noundef %i.xi, i1 noundef zeroext %i.xo) #19
  br label %b2RecR_WORLDID.exit

bb.df:                                            ; preds = %bb.d
  %i.xs = tail call i64 @b2RecR_SHAPEID(ptr noundef nonnull %i.a)
  %i.xt = load i32, ptr %i.b, align 4, !tbaa !18  ; 2 uses
  %i.xu = sext i32 %i.xt to i64                   ; 2 uses
  %i.xv = add nsw i64 %i.xu, 4
  %i.xw = load i32, ptr %i.d, align 8, !tbaa !19
  %i.xx = sext i32 %i.xw to i64
  %i.xy = icmp sgt i64 %i.xv, %i.xx
  br i1 %i.xy, label %b2RecRdrCheck.exit.thread.i.i1574, label %b2RecRdrCheck.exit.i.i1572

b2RecRdrCheck.exit.thread.i.i1574:                ; preds = %bb.df
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit
end_hunk_1
begin_hunk_2_@b2RecDispatchOne:bb.a
  %.sroa.23.0.insert.shift.i.i1617 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1616, 32
  %i.aba = and i64 %i.aao, -281470681743361
  %.sroa.02.0.insert.insert.i.i1618 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1617, %i.aba
  tail call void @b2Shape_EnableContactEvents(i64 %.sroa.02.0.insert.insert.i.i1618, i1 noundef zeroext %i.aax) #19
  br label %b2RecR_WORLDID.exit

bb.dv:                                            ; preds = %bb.d
  %i.abb = tail call i64 @b2RecR_SHAPEID(ptr noundef nonnull %i.a)
  %i.abc = load i32, ptr %i.b, align 4, !tbaa !18 ; 3 uses
  %i.abd = sext i32 %i.abc to i64
  %i.abe = load i32, ptr %i.d, align 8, !tbaa !19
  %.not.i.i1619 = icmp slt i32 %i.abc, %i.abe
  br i1 %.not.i.i1619, label %b2RecRdrCheck.exit.i.i1623, label %b2RecRdrCheck.exit.thread.i.i1621

b2RecRdrCheck.exit.thread.i.i1621:                ; preds = %bb.dv
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit

b2RecRdrCheck.exit.i.i1623:                       ; preds = %bb.dv
  %.pre.i.i1624 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21
  %i.abf = trunc nuw i8 %.pre.i.i1624 to i1
  br i1 %i.abf, label %bb.dw, label %b2RecR_WORLDID.exit

bb.dw:                                            ; preds = %b2RecRdrCheck.exit.i.i1623
  %i.abg = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.abh = add nsw i32 %i.abc, 1
  store i32 %i.abh, ptr %i.b, align 4, !tbaa !18
  %i.abi = getelementptr inbounds i8, ptr %i.abg, i64 %i.abd
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !23
  %i.abk = icmp ne i8 %i.abj, 0
  %i.abl = getelementptr i8, ptr %0, i64 88
  %.val1000 = load i16, ptr %i.abl, align 8, !tbaa !105
  %i.abm = add i16 %.val1000, -1
  %.sroa.23.0.insert.ext.i.i1626 = zext i16 %i.abm to i64
  %.sroa.23.0.insert.shift.i.i1627 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1626, 32
  %i.abn = and i64 %i.abb, -281470681743361
  %.sroa.02.0.insert.insert.i.i1628 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1627, %i.abn
  tail call void @b2Shape_EnablePreSolveEvents(i64 %.sroa.02.0.insert.insert.i.i1628, i1 noundef zeroext %i.abk) #19
  br label %b2RecR_WORLDID.exit

bb.dx:                                            ; preds = %bb.d
  %i.abo = tail call i64 @b2RecR_SHAPEID(ptr noundef nonnull %i.a)
  %i.abp = load i32, ptr %i.b, align 4, !tbaa !18 ; 3 uses
  %i.abq = sext i32 %i.abp to i64
  %i.abr = load i32, ptr %i.d, align 8, !tbaa !19
  %.not.i.i1629 = icmp slt i32 %i.abp, %i.abr
  br i1 %.not.i.i1629, label %b2RecRdrCheck.exit.i.i1633, label %b2RecRdrCheck.exit.thread.i.i1631

b2RecRdrCheck.exit.thread.i.i1631:                ; preds = %bb.dx
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit

b2RecRdrCheck.exit.i.i1633:                       ; preds = %bb.dx
  %.pre.i.i1634 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21
  %i.abs = trunc nuw i8 %.pre.i.i1634 to i1
  br i1 %i.abs, label %bb.dy, label %b2RecR_WORLDID.exit

bb.dy:                                            ; preds = %b2RecRdrCheck.exit.i.i1633
  %i.abt = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.abu = add nsw i32 %i.abp, 1
  store i32 %i.abu, ptr %i.b, align 4, !tbaa !18
  %i.abv = getelementptr inbounds i8, ptr %i.abt, i64 %i.abq
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !23
  %i.abx = icmp ne i8 %i.abw, 0
  %i.aby = getelementptr i8, ptr %0, i64 88
  %.val1003 = load i16, ptr %i.aby, align 8, !tbaa !105
  %i.abz = add i16 %.val1003, -1
  %.sroa.23.0.insert.ext.i.i1636 = zext i16 %i.abz to i64
  %.sroa.23.0.insert.shift.i.i1637 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1636, 32
  %i.aca = and i64 %i.abo, -281470681743361
  %.sroa.02.0.insert.insert.i.i1638 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1637, %i.aca
  tail call void @b2Shape_EnableHitEvents(i64 %.sroa.02.0.insert.insert.i.i1638, i1 noundef zeroext %i.abx) #19
  br label %b2RecR_WORLDID.exit

bb.dz:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.acb = tail call i64 @b2RecR_SHAPEID(ptr noundef nonnull %i.a) ; 2 uses
  store i64 %i.acb, ptr %13, align 8
  %i.acc = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.acd = load i32, ptr %i.b, align 4, !tbaa !18 ; 2 uses
  %i.ace = sext i32 %i.acd to i64                 ; 2 uses
  %i.acf = add nsw i64 %i.ace, 12
  %i.acg = load i32, ptr %i.d, align 8, !tbaa !19
  %i.ach = sext i32 %i.acg to i64
  %i.aci = icmp sgt i64 %i.acf, %i.ach
  br i1 %i.aci, label %b2RecRdrCheck.exit.thread.i.i1648, label %b2RecRdrCheck.exit.i.i1639

b2RecRdrCheck.exit.thread.i.i1648:                ; preds = %bb.dz
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_CIRCLE.exit1649.thread

b2RecRdrCheck.exit.i.i1639:                       ; preds = %bb.dz
  %.pre.i.i1640 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21
  %i.acj = trunc nuw i8 %.pre.i.i1640 to i1
  br i1 %i.acj, label %bb.ea, label %b2RecR_CIRCLE.exit1649.thread

bb.ea:                                            ; preds = %b2RecRdrCheck.exit.i.i1639
  %i.ack = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.acl = getelementptr inbounds i8, ptr %i.ack, i64 %i.ace ; 2 uses
  %.sroa.0.0.copyload1.i1645 = load <2 x float>, ptr %i.acl, align 1
  %.sroa.3.0..sroa_idx.i1646 = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  %.sroa.3.0.copyload.i1647 = load float, ptr %.sroa.3.0..sroa_idx.i1646, align 1
  %i.acm = add nsw i32 %i.acd, 12
  store i32 %i.acm, ptr %i.b, align 4, !tbaa !18
  store <2 x float> %.sroa.0.0.copyload1.i1645, ptr %i.acc, align 8, !tbaa !28
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store float %.sroa.3.0.copyload.i1647, ptr %.sroa.4133.0..sroa_idx, align 8, !tbaa !28
  %i.acn = getelementptr i8, ptr %0, i64 88
  %.val1004 = load i16, ptr %i.acn, align 8, !tbaa !105
  %i.aco = add i16 %.val1004, -1
  %.sroa.23.0.insert.ext.i.i1650 = zext i16 %i.aco to i64
  %.sroa.23.0.insert.shift.i.i1651 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1650, 32
  %i.acp = and i64 %i.acb, -281470681743361
  %.sroa.02.0.insert.insert.i.i1652 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1651, %i.acp
  call void @b2Shape_SetCircle(i64 %.sroa.02.0.insert.insert.i.i1652, ptr noundef nonnull %i.acc) #19
  br label %b2RecR_CIRCLE.exit1649.thread

b2RecR_CIRCLE.exit1649.thread:                    ; preds = %b2RecRdrCheck.exit.thread.i.i1648, %b2RecRdrCheck.exit.i.i1639, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %b2RecR_WORLDID.exit

bb.eb:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.acq = tail call i64 @b2RecR_SHAPEID(ptr noundef nonnull %i.a) ; 2 uses
  store i64 %i.acq, ptr %14, align 8
  %i.acr = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.acs = load i32, ptr %i.b, align 4, !tbaa !18, !noalias !370 ; 2 uses
  %i.act = sext i32 %i.acs to i64                 ; 2 uses
  %i.acu = add nsw i64 %i.act, 20
  %i.acv = load i32, ptr %i.d, align 8, !tbaa !19, !noalias !370
  %i.acw = sext i32 %i.acv to i64
  %i.acx = icmp sgt i64 %i.acu, %i.acw
  br i1 %i.acx, label %b2RecRdrCheck.exit.thread.i.i1655, label %b2RecRdrCheck.exit.i.i1653

b2RecRdrCheck.exit.thread.i.i1655:                ; preds = %bb.eb
  store i8 0, ptr %i.f, align 8, !tbaa !20, !noalias !370
  br label %b2RecR_CAPSULE.exit1656

b2RecRdrCheck.exit.i.i1653:                       ; preds = %bb.eb
  %.pre.i.i1654 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noalias !370
  %i.acy = trunc nuw i8 %.pre.i.i1654 to i1
  br i1 %i.acy, label %bb.ec, label %b2RecR_CAPSULE.exit1656

b2RecR_CAPSULE.exit1656:                          ; preds = %b2RecRdrCheck.exit.thread.i.i1655, %b2RecRdrCheck.exit.i.i1653
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.ed

bb.ec:                                            ; preds = %b2RecRdrCheck.exit.i.i1653
  %i.acz = load ptr, ptr %i.a, align 8, !tbaa !22, !noalias !370
  %i.ada = getelementptr inbounds i8, ptr %i.acz, i64 %i.act
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %15, ptr noundef nonnull align 1 dereferenceable(20) %i.ada, i64 20, i1 false)
  %i.adb = add nsw i32 %i.acs, 20
  store i32 %i.adb, ptr %i.b, align 4, !tbaa !18, !noalias !370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.acr, ptr noundef nonnull align 4 dereferenceable(20) %15, i64 20, i1 false), !tbaa.struct !107
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.adc = getelementptr i8, ptr %0, i64 88
  %.val1005 = load i16, ptr %i.adc, align 8, !tbaa !105
  %i.add = add i16 %.val1005, -1
  %.sroa.23.0.insert.ext.i.i1657 = zext i16 %i.add to i64
  %.sroa.23.0.insert.shift.i.i1658 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1657, 32
  %i.ade = and i64 %i.acq, -281470681743361
  %.sroa.02.0.insert.insert.i.i1659 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1658, %i.ade
  call void @b2Shape_SetCapsule(i64 %.sroa.02.0.insert.insert.i.i1659, ptr noundef nonnull %i.acr) #19
  br label %bb.ed

bb.ed:                                            ; preds = %b2RecR_CAPSULE.exit1656, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %b2RecR_WORLDID.exit

bb.ee:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.adf = tail call i64 @b2RecR_SHAPEID(ptr noundef nonnull %i.a) ; 2 uses
  store i64 %i.adf, ptr %16, align 8
  %i.adg = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.adh = load i32, ptr %i.b, align 4, !tbaa !18 ; 2 uses
  %i.adi = sext i32 %i.adh to i64                 ; 2 uses
  %i.adj = add nsw i64 %i.adi, 16
  %i.adk = load i32, ptr %i.d, align 8, !tbaa !19
  %i.adl = sext i32 %i.adk to i64
  %i.adm = icmp sgt i64 %i.adj, %i.adl
  br i1 %i.adm, label %b2RecRdrCheck.exit.thread.i.i1669, label %b2RecRdrCheck.exit.i.i1660

b2RecRdrCheck.exit.thread.i.i1669:                ; preds = %bb.ee
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_SEGMENT.exit1670.thread

b2RecRdrCheck.exit.i.i1660:                       ; preds = %bb.ee
  %.pre.i.i1661 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21
  %i.adn = trunc nuw i8 %.pre.i.i1661 to i1
  br i1 %i.adn, label %bb.ef, label %b2RecR_SEGMENT.exit1670.thread

bb.ef:                                            ; preds = %b2RecRdrCheck.exit.i.i1660
  %i.ado = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.adp = getelementptr inbounds i8, ptr %i.ado, i64 %i.adi ; 2 uses
  %.sroa.0.0.copyload.i1666 = load <2 x float>, ptr %i.adp, align 1
  %.sroa.3.0..sroa_idx.i1667 = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  %.sroa.3.0.copyload.i1668 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i1667, align 1
  %i.adq = add nsw i32 %i.adh, 16
  store i32 %i.adq, ptr %i.b, align 4, !tbaa !18
  %45 = shufflevector <2 x float> %.sroa.0.0.copyload.i1666, <2 x float> %.sroa.3.0.copyload.i1668, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %45, ptr %i.adg, align 8, !tbaa !28
  %i.adr = getelementptr i8, ptr %0, i64 88
  %.val1006 = load i16, ptr %i.adr, align 8, !tbaa !105
  %i.ads = add i16 %.val1006, -1
  %.sroa.23.0.insert.ext.i.i1671 = zext i16 %i.ads to i64
  %.sroa.23.0.insert.shift.i.i1672 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1671, 32
  %i.adt = and i64 %i.adf, -281470681743361
  %.sroa.02.0.insert.insert.i.i1673 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1672, %i.adt
  call void @b2Shape_SetSegment(i64 %.sroa.02.0.insert.insert.i.i1673, ptr noundef nonnull %i.adg) #19
  br label %b2RecR_SEGMENT.exit1670.thread

b2RecR_SEGMENT.exit1670.thread:                   ; preds = %b2RecRdrCheck.exit.thread.i.i1669, %b2RecRdrCheck.exit.i.i1660, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %b2RecR_WORLDID.exit

bb.eg:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.adu = tail call i64 @b2RecR_SHAPEID(ptr noundef nonnull %i.a) ; 2 uses
  store i64 %i.adu, ptr %17, align 8
  %i.adv = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  %i.adw = load i32, ptr %i.b, align 4, !tbaa !18, !noalias !371 ; 2 uses
  %i.adx = sext i32 %i.adw to i64                 ; 2 uses
  %i.ady = add nsw i64 %i.adx, 144
  %i.adz = load i32, ptr %i.d, align 8, !tbaa !19, !noalias !371
  %i.aea = sext i32 %i.adz to i64
  %i.aeb = icmp sgt i64 %i.ady, %i.aea
  br i1 %i.aeb, label %b2RecRdrCheck.exit.thread.i.i1676, label %b2RecRdrCheck.exit.i.i1674

b2RecRdrCheck.exit.thread.i.i1676:                ; preds = %bb.eg
  store i8 0, ptr %i.f, align 8, !tbaa !20, !noalias !371
  br label %b2RecR_POLYGON.exit1677

b2RecRdrCheck.exit.i.i1674:                       ; preds = %bb.eg
  %.pre.i.i1675 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noalias !371
  %i.aec = trunc nuw i8 %.pre.i.i1675 to i1
  br i1 %i.aec, label %bb.eh, label %b2RecR_POLYGON.exit1677

b2RecR_POLYGON.exit1677:                          ; preds = %b2RecRdrCheck.exit.thread.i.i1676, %b2RecRdrCheck.exit.i.i1674
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br label %bb.ei

bb.eh:                                            ; preds = %b2RecRdrCheck.exit.i.i1674
  %i.aed = load ptr, ptr %i.a, align 8, !tbaa !22, !noalias !371
  %i.aee = getelementptr inbounds i8, ptr %i.aed, i64 %i.adx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %18, ptr noundef nonnull align 1 dereferenceable(144) %i.aee, i64 144, i1 false)
  %i.aef = add nsw i32 %i.adw, 144
  store i32 %i.aef, ptr %i.b, align 4, !tbaa !18, !noalias !371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.adv, ptr noundef nonnull align 4 dereferenceable(144) %18, i64 144, i1 false), !tbaa.struct !367
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.aeg = getelementptr i8, ptr %0, i64 88
  %.val1007 = load i16, ptr %i.aeg, align 8, !tbaa !105
  %i.aeh = add i16 %.val1007, -1
  %.sroa.23.0.insert.ext.i.i1678 = zext i16 %i.aeh to i64
  %.sroa.23.0.insert.shift.i.i1679 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1678, 32
  %i.aei = and i64 %i.adu, -281470681743361
  %.sroa.02.0.insert.insert.i.i1680 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1679, %i.aei
  call void @b2Shape_SetPolygon(i64 %.sroa.02.0.insert.insert.i.i1680, ptr noundef nonnull %i.adv) #19
  br label %bb.ei

bb.ei:                                            ; preds = %b2RecR_POLYGON.exit1677, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %b2RecR_WORLDID.exit

bb.ej:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.aej = tail call i64 @b2RecR_SHAPEID(ptr noundef nonnull %i.a) ; 2 uses
  store i64 %i.aej, ptr %19, align 8
  %i.aek = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %i.ael = load i32, ptr %i.b, align 4, !tbaa !18, !noalias !372 ; 2 uses
  %i.aem = sext i32 %i.ael to i64                 ; 2 uses
  %i.aen = add nsw i64 %i.aem, 36
  %i.aeo = load i32, ptr %i.d, align 8, !tbaa !19, !noalias !372
  %i.aep = sext i32 %i.aeo to i64
  %i.aeq = icmp sgt i64 %i.aen, %i.aep
  br i1 %i.aeq, label %b2RecRdrCheck.exit.thread.i.i1683, label %b2RecRdrCheck.exit.i.i1681

b2RecRdrCheck.exit.thread.i.i1683:                ; preds = %bb.ej
  store i8 0, ptr %i.f, align 8, !tbaa !20, !noalias !372
  br label %b2RecR_CHAINSEG.exit1684

b2RecRdrCheck.exit.i.i1681:                       ; preds = %bb.ej
  %.pre.i.i1682 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noalias !372
  %i.aer = trunc nuw i8 %.pre.i.i1682 to i1
  br i1 %i.aer, label %bb.ek, label %b2RecR_CHAINSEG.exit1684

b2RecR_CHAINSEG.exit1684:                         ; preds = %b2RecRdrCheck.exit.thread.i.i1683, %b2RecRdrCheck.exit.i.i1681
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br label %bb.el

bb.ek:                                            ; preds = %b2RecRdrCheck.exit.i.i1681
  %i.aes = load ptr, ptr %i.a, align 8, !tbaa !22, !noalias !372
  %i.aet = getelementptr inbounds i8, ptr %i.aes, i64 %i.aem
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %20, ptr noundef nonnull align 1 dereferenceable(36) %i.aet, i64 36, i1 false)
  %i.aeu = add nsw i32 %i.ael, 36
  store i32 %i.aeu, ptr %i.b, align 4, !tbaa !18, !noalias !372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.aek, ptr noundef nonnull align 4 dereferenceable(36) %20, i64 36, i1 false), !tbaa.struct !369
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %i.aev = getelementptr i8, ptr %0, i64 88
  %.val1008 = load i16, ptr %i.aev, align 8, !tbaa !105
  %i.aew = add i16 %.val1008, -1
  %.sroa.23.0.insert.ext.i.i1685 = zext i16 %i.aew to i64
  %.sroa.23.0.insert.shift.i.i1686 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1685, 32
  %i.aex = and i64 %i.aej, -281470681743361
  %.sroa.02.0.insert.insert.i.i1687 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1686, %i.aex
  call void @b2Shape_SetChainSegment(i64 %.sroa.02.0.insert.insert.i.i1687, ptr noundef nonnull %i.aek) #19
  br label %bb.el

bb.el:                                            ; preds = %b2RecR_CHAINSEG.exit1684, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %b2RecR_WORLDID.exit

bb.em:                                            ; preds = %bb.d
  %i.aey = tail call i64 @b2RecR_SHAPEID(ptr noundef nonnull %i.a)
  %i.aez = tail call <2 x float> @b2RecR_VEC2(ptr noundef nonnull %i.a)
  %i.afa = load i32, ptr %i.b, align 4, !tbaa !18 ; 6 uses
  %i.afb = sext i32 %i.afa to i64                 ; 2 uses
  %i.afc = add nsw i64 %i.afb, 4
  %i.afd = load i32, ptr %i.d, align 8, !tbaa !19 ; 3 uses
  %i.afe = sext i32 %i.afd to i64                 ; 2 uses
  %i.aff = icmp sgt i64 %i.afc, %i.afe
  br i1 %i.aff, label %b2RecRdrCheck.exit.thread.i.i1694, label %b2RecRdrCheck.exit.i.i1688

b2RecRdrCheck.exit.i.i1688:                       ; preds = %bb.em
  %.pre.i.i1689 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21
  %i.afg = trunc nuw i8 %.pre.i.i1689 to i1
  br i1 %i.afg, label %b2RecR_F32.exit1691, label %b2RecR_F32.exit1695

b2RecR_F32.exit1691:                              ; preds = %b2RecRdrCheck.exit.i.i1688
  %i.afh = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.afi = getelementptr inbounds i8, ptr %i.afh, i64 %i.afb
  %i.afj = load float, ptr %i.afi, align 1
  %i.afk = add nsw i32 %i.afa, 4                  ; 3 uses
  store i32 %i.afk, ptr %i.b, align 4, !tbaa !18
  %.pre2648 = sext i32 %i.afk to i64              ; 2 uses
  %.pre2650 = add nsw i64 %.pre2648, 4
  %i.afl = icmp sgt i64 %.pre2650, %i.afe
  br i1 %i.afl, label %b2RecRdrCheck.exit.thread.i.i1694, label %b2RecR_F32.exit1695.thread

b2RecRdrCheck.exit.thread.i.i1694:                ; preds = %bb.em, %b2RecR_F32.exit1691
  %i.afm = phi i32 [ %i.afk, %b2RecR_F32.exit1691 ], [ %i.afa, %bb.em ]
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_F32.exit1695

b2RecR_F32.exit1695:                              ; preds = %b2RecRdrCheck.exit.i.i1688, %b2RecRdrCheck.exit.thread.i.i1694
  %i.afn = phi i32 [ %i.afm, %b2RecRdrCheck.exit.thread.i.i1694 ], [ %i.afa, %b2RecRdrCheck.exit.i.i1688 ]
  %.not.i.i1696 = icmp slt i32 %i.afn, %i.afd
  br i1 %.not.i.i1696, label %b2RecR_WORLDID.exit, label %b2RecRdrCheck.exit.thread.i.i1698

b2RecR_F32.exit1695.thread:                       ; preds = %b2RecR_F32.exit1691
  %i.afo = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.afp = getelementptr inbounds i8, ptr %i.afo, i64 %.pre2648
  %i.afq = load float, ptr %i.afp, align 1
  %i.afr = add nsw i32 %i.afa, 8                  ; 3 uses
  store i32 %i.afr, ptr %i.b, align 4, !tbaa !18
  %.not.i.i16962879 = icmp slt i32 %i.afr, %i.afd
  br i1 %.not.i.i16962879, label %bb.en, label %b2RecRdrCheck.exit.thread.i.i1698

b2RecRdrCheck.exit.thread.i.i1698:                ; preds = %b2RecR_F32.exit1695.thread, %b2RecR_F32.exit1695
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit

bb.en:                                            ; preds = %b2RecR_F32.exit1695.thread
  %.pre2652 = sext i32 %i.afr to i64
  %i.afs = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.aft = add nsw i32 %i.afa, 9
  store i32 %i.aft, ptr %i.b, align 4, !tbaa !18
  %i.afu = getelementptr inbounds i8, ptr %i.afs, i64 %.pre2652
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !23
  %i.afw = icmp ne i8 %i.afv, 0
  %i.afx = getelementptr i8, ptr %0, i64 88
  %.val1009 = load i16, ptr %i.afx, align 8, !tbaa !105
  %i.afy = add i16 %.val1009, -1
  %.sroa.23.0.insert.ext.i.i1703 = zext i16 %i.afy to i64
  %.sroa.23.0.insert.shift.i.i1704 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1703, 32
  %i.afz = and i64 %i.aey, -281470681743361
  %.sroa.02.0.insert.insert.i.i1705 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1704, %i.afz
  tail call void @b2Shape_ApplyWind(i64 %.sroa.02.0.insert.insert.i.i1705, <2 x float> %i.aez, float noundef %i.afj, float noundef %i.afq, i1 noundef zeroext %i.afw) #19
  br label %b2RecR_WORLDID.exit

bb.eo:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.aga = getelementptr inbounds nuw i8, ptr %21, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aga, i8 0, i64 72, i1 false)
  %i.agb = tail call i64 @b2RecR_BODYID(ptr noundef nonnull %i.a)
  store i64 %i.agb, ptr %21, align 8
  %i.agc = getelementptr inbounds nuw i8, ptr %21, i64 8
  call void @b2RecR_CHAINDEF(ptr dead_on_unwind nonnull writable sret(%struct.b2ChainDef) align 8 %i.agc, ptr noundef nonnull %i.a)
  %i.agd = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noundef !97
  %i.age = trunc nuw i8 %i.agd to i1
  br i1 %i.age, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  call fastcc void @b2RecDispatch_CreateChain(ptr noundef %21, ptr noundef nonnull %i.a)
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %b2RecR_WORLDID.exit

end_hunk_2
begin_hunk_3_@b2RecDispatchOne:bb.a

b2RecRdrCheck.exit.i.i2197:                       ; preds = %bb.ki
  %.pre.i.i2198 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21
  %i.bqp = trunc nuw i8 %.pre.i.i2198 to i1
  br i1 %i.bqp, label %bb.kj, label %b2RecR_WORLDID.exit

bb.kj:                                            ; preds = %b2RecRdrCheck.exit.i.i2197
  %i.bqq = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.bqr = add nsw i32 %i.bqm, 1
  store i32 %i.bqr, ptr %i.b, align 4, !tbaa !18
  %i.bqs = getelementptr inbounds i8, ptr %i.bqq, i64 %i.bqn
  %i.bqt = load i8, ptr %i.bqs, align 1, !tbaa !23
  %i.bqu = icmp ne i8 %i.bqt, 0
  %i.bqv = getelementptr i8, ptr %0, i64 88
  %.val1173 = load i16, ptr %i.bqv, align 8, !tbaa !105
  %i.bqw = add i16 %.val1173, -1
  %.sroa.23.0.insert.ext.i.i2200 = zext i16 %i.bqw to i64
  %.sroa.23.0.insert.shift.i.i2201 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i2200, 32
  %i.bqx = and i64 %i.bql, -281470681743361
  %.sroa.02.0.insert.insert.i.i2202 = or disjoint i64 %.sroa.23.0.insert.shift.i.i2201, %i.bqx
  tail call void @b2WheelJoint_EnableLimit(i64 %.sroa.02.0.insert.insert.i.i2202, i1 noundef zeroext %i.bqu) #19
  br label %b2RecR_WORLDID.exit

bb.kk:                                            ; preds = %bb.d
  %i.bqy = tail call i64 @b2RecR_JOINTID(ptr noundef nonnull %i.a)
  %i.bqz = load i32, ptr %i.b, align 4, !tbaa !18 ; 3 uses
  %i.bra = sext i32 %i.bqz to i64                 ; 2 uses
  %i.brb = add nsw i64 %i.bra, 4
  %i.brc = load i32, ptr %i.d, align 8, !tbaa !19
  %i.brd = sext i32 %i.brc to i64                 ; 2 uses
  %i.bre = icmp sgt i64 %i.brb, %i.brd
  br i1 %i.bre, label %b2RecRdrCheck.exit.thread.i.i2209, label %b2RecRdrCheck.exit.i.i2203

b2RecRdrCheck.exit.i.i2203:                       ; preds = %bb.kk
  %.pre.i.i2204 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21
  %i.brf = trunc nuw i8 %.pre.i.i2204 to i1
  br i1 %i.brf, label %b2RecR_F32.exit2206, label %b2RecR_WORLDID.exit

b2RecR_F32.exit2206:                              ; preds = %b2RecRdrCheck.exit.i.i2203
  %i.brg = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.brh = getelementptr inbounds i8, ptr %i.brg, i64 %i.bra
  %i.bri = load float, ptr %i.brh, align 1
  %i.brj = add nsw i32 %i.bqz, 4                  ; 2 uses
  store i32 %i.brj, ptr %i.b, align 4, !tbaa !18
  %.pre2674 = sext i32 %i.brj to i64              ; 2 uses
  %.pre2676 = add nsw i64 %.pre2674, 4
  %i.brk = icmp sgt i64 %.pre2676, %i.brd
  br i1 %i.brk, label %b2RecRdrCheck.exit.thread.i.i2209, label %bb.kl

b2RecRdrCheck.exit.thread.i.i2209:                ; preds = %bb.kk, %b2RecR_F32.exit2206
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit

bb.kl:                                            ; preds = %b2RecR_F32.exit2206
  %i.brl = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.brm = getelementptr inbounds i8, ptr %i.brl, i64 %.pre2674
  %i.brn = load float, ptr %i.brm, align 1
  %i.bro = add nsw i32 %i.bqz, 8
  store i32 %i.bro, ptr %i.b, align 4, !tbaa !18
  %i.brp = getelementptr i8, ptr %0, i64 88
  %.val1174 = load i16, ptr %i.brp, align 8, !tbaa !105
  %i.brq = add i16 %.val1174, -1
  %.sroa.23.0.insert.ext.i.i2211 = zext i16 %i.brq to i64
  %.sroa.23.0.insert.shift.i.i2212 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i2211, 32
  %i.brr = and i64 %i.bqy, -281470681743361
  %.sroa.02.0.insert.insert.i.i2213 = or disjoint i64 %.sroa.23.0.insert.shift.i.i2212, %i.brr
  tail call void @b2WheelJoint_SetLimits(i64 %.sroa.02.0.insert.insert.i.i2213, float noundef %i.bri, float noundef %i.brn) #19
  br label %b2RecR_WORLDID.exit

bb.km:                                            ; preds = %bb.d
  %i.brs = tail call i64 @b2RecR_JOINTID(ptr noundef nonnull %i.a)
  %i.brt = load i32, ptr %i.b, align 4, !tbaa !18 ; 3 uses
  %i.bru = sext i32 %i.brt to i64
  %i.brv = load i32, ptr %i.d, align 8, !tbaa !19
  %.not.i.i2214 = icmp slt i32 %i.brt, %i.brv
  br i1 %.not.i.i2214, label %b2RecRdrCheck.exit.i.i2218, label %b2RecRdrCheck.exit.thread.i.i2216

b2RecRdrCheck.exit.thread.i.i2216:                ; preds = %bb.km
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit

b2RecRdrCheck.exit.i.i2218:                       ; preds = %bb.km
  %.pre.i.i2219 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21
  %i.brw = trunc nuw i8 %.pre.i.i2219 to i1
  br i1 %i.brw, label %bb.kn, label %b2RecR_WORLDID.exit

bb.kn:                                            ; preds = %b2RecRdrCheck.exit.i.i2218
  %i.brx = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.bry = add nsw i32 %i.brt, 1
  store i32 %i.bry, ptr %i.b, align 4, !tbaa !18
  %i.brz = getelementptr inbounds i8, ptr %i.brx, i64 %i.bru
  %i.bsa = load i8, ptr %i.brz, align 1, !tbaa !23
  %i.bsb = icmp ne i8 %i.bsa, 0
  %i.bsc = getelementptr i8, ptr %0, i64 88
  %.val1177 = load i16, ptr %i.bsc, align 8, !tbaa !105
  %i.bsd = add i16 %.val1177, -1
  %.sroa.23.0.insert.ext.i.i2221 = zext i16 %i.bsd to i64
  %.sroa.23.0.insert.shift.i.i2222 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i2221, 32
  %i.bse = and i64 %i.brs, -281470681743361
  %.sroa.02.0.insert.insert.i.i2223 = or disjoint i64 %.sroa.23.0.insert.shift.i.i2222, %i.bse
  tail call void @b2WheelJoint_EnableMotor(i64 %.sroa.02.0.insert.insert.i.i2223, i1 noundef zeroext %i.bsb) #19
  br label %b2RecR_WORLDID.exit

bb.ko:                                            ; preds = %bb.d
  %i.bsf = tail call i64 @b2RecR_JOINTID(ptr noundef nonnull %i.a)
  %i.bsg = load i32, ptr %i.b, align 4, !tbaa !18 ; 2 uses
  %i.bsh = sext i32 %i.bsg to i64                 ; 2 uses
  %i.bsi = add nsw i64 %i.bsh, 4
  %i.bsj = load i32, ptr %i.d, align 8, !tbaa !19
  %i.bsk = sext i32 %i.bsj to i64
  %i.bsl = icmp sgt i64 %i.bsi, %i.bsk
  br i1 %i.bsl, label %b2RecRdrCheck.exit.thread.i.i2226, label %b2RecRdrCheck.exit.i.i2224

b2RecRdrCheck.exit.thread.i.i2226:                ; preds = %bb.ko
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit

b2RecRdrCheck.exit.i.i2224:                       ; preds = %bb.ko
  %.pre.i.i2225 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21
  %i.bsm = trunc nuw i8 %.pre.i.i2225 to i1
  br i1 %i.bsm, label %bb.kp, label %b2RecR_WORLDID.exit

bb.kp:                                            ; preds = %b2RecRdrCheck.exit.i.i2224
  %i.bsn = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.bso = getelementptr inbounds i8, ptr %i.bsn, i64 %i.bsh
  %i.bsp = load float, ptr %i.bso, align 1
  %i.bsq = add nsw i32 %i.bsg, 4
  store i32 %i.bsq, ptr %i.b, align 4, !tbaa !18
  %i.bsr = getelementptr i8, ptr %0, i64 88
  %.val1180 = load i16, ptr %i.bsr, align 8, !tbaa !105
  %i.bss = add i16 %.val1180, -1
  %.sroa.23.0.insert.ext.i.i2228 = zext i16 %i.bss to i64
  %.sroa.23.0.insert.shift.i.i2229 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i2228, 32
  %i.bst = and i64 %i.bsf, -281470681743361
  %.sroa.02.0.insert.insert.i.i2230 = or disjoint i64 %.sroa.23.0.insert.shift.i.i2229, %i.bst
  tail call void @b2WheelJoint_SetMotorSpeed(i64 %.sroa.02.0.insert.insert.i.i2230, float noundef %i.bsp) #19
  br label %b2RecR_WORLDID.exit

bb.kq:                                            ; preds = %bb.d
  %i.bsu = tail call i64 @b2RecR_JOINTID(ptr noundef nonnull %i.a)
  %i.bsv = load i32, ptr %i.b, align 4, !tbaa !18 ; 2 uses
  %i.bsw = sext i32 %i.bsv to i64                 ; 2 uses
  %i.bsx = add nsw i64 %i.bsw, 4
  %i.bsy = load i32, ptr %i.d, align 8, !tbaa !19
  %i.bsz = sext i32 %i.bsy to i64
  %i.bta = icmp sgt i64 %i.bsx, %i.bsz
  br i1 %i.bta, label %b2RecRdrCheck.exit.thread.i.i2233, label %b2RecRdrCheck.exit.i.i2231

b2RecRdrCheck.exit.thread.i.i2233:                ; preds = %bb.kq
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit

b2RecRdrCheck.exit.i.i2231:                       ; preds = %bb.kq
  %.pre.i.i2232 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21
  %i.btb = trunc nuw i8 %.pre.i.i2232 to i1
  br i1 %i.btb, label %bb.kr, label %b2RecR_WORLDID.exit

bb.kr:                                            ; preds = %b2RecRdrCheck.exit.i.i2231
  %i.btc = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.btd = getelementptr inbounds i8, ptr %i.btc, i64 %i.bsw
  %i.bte = load float, ptr %i.btd, align 1
  %i.btf = add nsw i32 %i.bsv, 4
  store i32 %i.btf, ptr %i.b, align 4, !tbaa !18
  %i.btg = getelementptr i8, ptr %0, i64 88
  %.val1183 = load i16, ptr %i.btg, align 8, !tbaa !105
  %i.bth = add i16 %.val1183, -1
  %.sroa.23.0.insert.ext.i.i2235 = zext i16 %i.bth to i64
  %.sroa.23.0.insert.shift.i.i2236 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i2235, 32
  %i.bti = and i64 %i.bsu, -281470681743361
  %.sroa.02.0.insert.insert.i.i2237 = or disjoint i64 %.sroa.23.0.insert.shift.i.i2236, %i.bti
  tail call void @b2WheelJoint_SetMaxMotorTorque(i64 %.sroa.02.0.insert.insert.i.i2237, float noundef %i.bte) #19
  br label %b2RecR_WORLDID.exit

bb.ks:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  %i.btj = getelementptr inbounds nuw i8, ptr %33, i64 24
  store i64 0, ptr %i.btj, align 8
  %i.btk = sext i32 %i.z to i64                   ; 2 uses
  %i.btl = add nsw i64 %i.btk, 4
  %i.btm = icmp sgt i64 %i.btl, %i.m
  br i1 %i.btm, label %b2RecRdrCheck.exit.thread.i.i2241, label %b2RecRdrCheck.exit.i.i2238

b2RecRdrCheck.exit.thread.i.i2241:                ; preds = %bb.ks
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit2242

b2RecRdrCheck.exit.i.i2238:                       ; preds = %bb.ks
  %i.btn = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.bto = getelementptr inbounds i8, ptr %i.btn, i64 %i.btk
  %i.btp = load i32, ptr %i.bto, align 1          ; 2 uses
  %i.btq = add nsw i32 %i.c, 8
  store i32 %i.btq, ptr %i.b, align 4, !tbaa !18
  %i.btr = tail call i32 @llvm.fshl.i32(i32 %i.btp, i32 %i.btp, i32 16)
  br label %b2RecR_WORLDID.exit2242

b2RecR_WORLDID.exit2242:                          ; preds = %b2RecRdrCheck.exit.thread.i.i2241, %b2RecRdrCheck.exit.i.i2238
  %.0.i.i2240 = phi i32 [ %i.btr, %b2RecRdrCheck.exit.i.i2238 ], [ 0, %b2RecRdrCheck.exit.thread.i.i2241 ]
  store i32 %.0.i.i2240, ptr %33, align 8, !tbaa !67
  %i.bts = getelementptr inbounds nuw i8, ptr %33, i64 4
  %i.btt = tail call <2 x float> @b2RecR_POSITION(ptr noundef nonnull %i.a)
  %i.btu = tail call { <2 x float>, <2 x float> } @b2RecR_AABB(ptr noundef nonnull %i.a) ; 2 uses
  %i.btv = extractvalue { <2 x float>, <2 x float> } %i.btu, 0
  %i.btw = extractvalue { <2 x float>, <2 x float> } %i.btu, 1
  %46 = shufflevector <2 x float> %i.btt, <2 x float> %i.btv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %46, ptr %i.bts, align 4, !tbaa !28
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 20
  store <2 x float> %i.btw, ptr %.sroa.438.0..sroa_idx, align 4, !tbaa !28
  %i.btx = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.bty = tail call { i64, i64 } @b2RecR_QUERYFILTER(ptr noundef nonnull %i.a) ; 2 uses
  %i.btz = extractvalue { i64, i64 } %i.bty, 0
  %i.bua = extractvalue { i64, i64 } %i.bty, 1
  store i64 %i.btz, ptr %i.btx, align 8, !tbaa !33
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 40
  store i64 %i.bua, ptr %.sroa.436.0..sroa_idx, align 8, !tbaa !33
  %i.bub = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noundef !97
  %i.buc = trunc nuw i8 %i.bub to i1
  br i1 %i.buc, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %b2RecR_WORLDID.exit2242
  call fastcc void @b2RecDispatch_QueryOverlapAABB(ptr noundef %33, ptr noundef nonnull %i.a)
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %b2RecR_WORLDID.exit2242
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  br label %b2RecR_WORLDID.exit

bb.kv:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  %i.bud = getelementptr inbounds nuw i8, ptr %34, i64 80
  store i64 0, ptr %i.bud, align 8
  %i.bue = sext i32 %i.z to i64                   ; 2 uses
  %i.buf = add nsw i64 %i.bue, 4
  %i.bug = icmp sgt i64 %i.buf, %i.m
  br i1 %i.bug, label %b2RecRdrCheck.exit.thread.i.i2246, label %b2RecRdrCheck.exit.i.i2243

b2RecRdrCheck.exit.thread.i.i2246:                ; preds = %bb.kv
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit2247

b2RecRdrCheck.exit.i.i2243:                       ; preds = %bb.kv
  %i.buh = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.bui = getelementptr inbounds i8, ptr %i.buh, i64 %i.bue
  %i.buj = load i32, ptr %i.bui, align 1          ; 2 uses
  %i.buk = add nsw i32 %i.c, 8
  store i32 %i.buk, ptr %i.b, align 4, !tbaa !18
  %i.bul = tail call i32 @llvm.fshl.i32(i32 %i.buj, i32 %i.buj, i32 16)
  br label %b2RecR_WORLDID.exit2247

b2RecR_WORLDID.exit2247:                          ; preds = %b2RecRdrCheck.exit.thread.i.i2246, %b2RecRdrCheck.exit.i.i2243
  %.0.i.i2245 = phi i32 [ %i.bul, %b2RecRdrCheck.exit.i.i2243 ], [ 0, %b2RecRdrCheck.exit.thread.i.i2246 ]
  store i32 %.0.i.i2245, ptr %34, align 8, !tbaa !67
  %i.bum = getelementptr inbounds nuw i8, ptr %34, i64 4
  %i.bun = tail call <2 x float> @b2RecR_POSITION(ptr noundef nonnull %i.a)
  store <2 x float> %i.bun, ptr %i.bum, align 4, !tbaa !28
  %i.buo = getelementptr inbounds nuw i8, ptr %34, i64 12
  call void @b2RecR_SHAPEPROXY(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %i.buo, ptr noundef nonnull %i.a)
  %i.bup = getelementptr inbounds nuw i8, ptr %34, i64 88
  %i.buq = tail call { i64, i64 } @b2RecR_QUERYFILTER(ptr noundef nonnull %i.a) ; 2 uses
  %i.bur = extractvalue { i64, i64 } %i.buq, 0
  %i.bus = extractvalue { i64, i64 } %i.buq, 1
  store i64 %i.bur, ptr %i.bup, align 8, !tbaa !33
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 96
  store i64 %i.bus, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !33
  %i.but = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noundef !97
  %i.buu = trunc nuw i8 %i.but to i1
  br i1 %i.buu, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %b2RecR_WORLDID.exit2247
  call fastcc void @b2RecDispatch_QueryOverlapShape(ptr noundef %34, ptr noundef nonnull %i.a)
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %b2RecR_WORLDID.exit2247
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  br label %b2RecR_WORLDID.exit

bb.ky:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  %i.buv = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 0, ptr %i.buv, align 8
  %i.buw = sext i32 %i.z to i64                   ; 2 uses
  %i.bux = add nsw i64 %i.buw, 4
  %i.buy = icmp sgt i64 %i.bux, %i.m
  br i1 %i.buy, label %b2RecRdrCheck.exit.thread.i.i2251, label %b2RecRdrCheck.exit.i.i2248

b2RecRdrCheck.exit.thread.i.i2251:                ; preds = %bb.ky
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit2252

b2RecRdrCheck.exit.i.i2248:                       ; preds = %bb.ky
  %i.buz = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.bva = getelementptr inbounds i8, ptr %i.buz, i64 %i.buw
  %i.bvb = load i32, ptr %i.bva, align 1          ; 2 uses
  %i.bvc = add nsw i32 %i.c, 8
  store i32 %i.bvc, ptr %i.b, align 4, !tbaa !18
  %i.bvd = tail call i32 @llvm.fshl.i32(i32 %i.bvb, i32 %i.bvb, i32 16)
  br label %b2RecR_WORLDID.exit2252

b2RecR_WORLDID.exit2252:                          ; preds = %b2RecRdrCheck.exit.thread.i.i2251, %b2RecRdrCheck.exit.i.i2248
  %.0.i.i2250 = phi i32 [ %i.bvd, %b2RecRdrCheck.exit.i.i2248 ], [ 0, %b2RecRdrCheck.exit.thread.i.i2251 ]
  store i32 %.0.i.i2250, ptr %35, align 8, !tbaa !67
  %i.bve = getelementptr inbounds nuw i8, ptr %35, i64 4
  %i.bvf = tail call <2 x float> @b2RecR_POSITION(ptr noundef nonnull %i.a)
  %47 = tail call <2 x float> @b2RecR_VEC2(ptr noundef nonnull %i.a)
  %48 = shufflevector <2 x float> %i.bvf, <2 x float> %47, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %48, ptr %i.bve, align 4, !tbaa !28
  %i.bvg = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.bvh = tail call { i64, i64 } @b2RecR_QUERYFILTER(ptr noundef nonnull %i.a) ; 2 uses
  %i.bvi = extractvalue { i64, i64 } %i.bvh, 0
  %i.bvj = extractvalue { i64, i64 } %i.bvh, 1
  store i64 %i.bvi, ptr %i.bvg, align 8, !tbaa !33
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i64 %i.bvj, ptr %.sroa.427.0..sroa_idx, align 8, !tbaa !33
  %i.bvk = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noundef !97
  %i.bvl = trunc nuw i8 %i.bvk to i1
  br i1 %i.bvl, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %b2RecR_WORLDID.exit2252
  call fastcc void @b2RecDispatch_QueryCastRay(ptr noundef %35, ptr noundef nonnull %i.a)
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %b2RecR_WORLDID.exit2252
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  br label %b2RecR_WORLDID.exit

bb.lb:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  %i.bvm = getelementptr inbounds nuw i8, ptr %36, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bvm, i8 0, i64 16, i1 false)
  %i.bvn = sext i32 %i.z to i64                   ; 2 uses
  %i.bvo = add nsw i64 %i.bvn, 4
  %i.bvp = icmp sgt i64 %i.bvo, %i.m
  br i1 %i.bvp, label %b2RecRdrCheck.exit.thread.i.i2256, label %b2RecRdrCheck.exit.i.i2253

b2RecRdrCheck.exit.thread.i.i2256:                ; preds = %bb.lb
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit2257

b2RecRdrCheck.exit.i.i2253:                       ; preds = %bb.lb
  %i.bvq = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.bvr = getelementptr inbounds i8, ptr %i.bvq, i64 %i.bvn
  %i.bvs = load i32, ptr %i.bvr, align 1          ; 2 uses
  %i.bvt = add nsw i32 %i.c, 8
  store i32 %i.bvt, ptr %i.b, align 4, !tbaa !18
  %i.bvu = tail call i32 @llvm.fshl.i32(i32 %i.bvs, i32 %i.bvs, i32 16)
  br label %b2RecR_WORLDID.exit2257

b2RecR_WORLDID.exit2257:                          ; preds = %b2RecRdrCheck.exit.thread.i.i2256, %b2RecRdrCheck.exit.i.i2253
  %.0.i.i2255 = phi i32 [ %i.bvu, %b2RecRdrCheck.exit.i.i2253 ], [ 0, %b2RecRdrCheck.exit.thread.i.i2256 ]
  store i32 %.0.i.i2255, ptr %36, align 8, !tbaa !67
  %i.bvv = getelementptr inbounds nuw i8, ptr %36, i64 4
  %i.bvw = tail call <2 x float> @b2RecR_POSITION(ptr noundef nonnull %i.a)
  store <2 x float> %i.bvw, ptr %i.bvv, align 4, !tbaa !28
  %i.bvx = getelementptr inbounds nuw i8, ptr %36, i64 12
  call void @b2RecR_SHAPEPROXY(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %i.bvx, ptr noundef nonnull %i.a)
  %i.bvy = getelementptr inbounds nuw i8, ptr %36, i64 84
  %i.bvz = tail call <2 x float> @b2RecR_VEC2(ptr noundef nonnull %i.a)
  store <2 x float> %i.bvz, ptr %i.bvy, align 4, !tbaa !28
  %i.bwa = getelementptr inbounds nuw i8, ptr %36, i64 96
  %i.bwb = tail call { i64, i64 } @b2RecR_QUERYFILTER(ptr noundef nonnull %i.a) ; 2 uses
  %i.bwc = extractvalue { i64, i64 } %i.bwb, 0
  %i.bwd = extractvalue { i64, i64 } %i.bwb, 1
  store i64 %i.bwc, ptr %i.bwa, align 8, !tbaa !33
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 104
  store i64 %i.bwd, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !33
  %i.bwe = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noundef !97
  %i.bwf = trunc nuw i8 %i.bwe to i1
  br i1 %i.bwf, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %b2RecR_WORLDID.exit2257
  call fastcc void @b2RecDispatch_QueryCastShape(ptr noundef %36, ptr noundef nonnull %i.a)
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %b2RecR_WORLDID.exit2257
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  br label %b2RecR_WORLDID.exit

bb.le:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  %i.bwg = getelementptr inbounds nuw i8, ptr %37, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bwg, i8 0, i64 40, i1 false)
  %i.bwh = sext i32 %i.z to i64                   ; 2 uses
  %i.bwi = add nsw i64 %i.bwh, 4
  %i.bwj = icmp sgt i64 %i.bwi, %i.m
  br i1 %i.bwj, label %b2RecRdrCheck.exit.thread.i.i2261, label %b2RecRdrCheck.exit.i.i2258

b2RecRdrCheck.exit.thread.i.i2261:                ; preds = %bb.le
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit2262

b2RecRdrCheck.exit.i.i2258:                       ; preds = %bb.le
  %i.bwk = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.bwl = getelementptr inbounds i8, ptr %i.bwk, i64 %i.bwh
  %i.bwm = load i32, ptr %i.bwl, align 1          ; 2 uses
  %i.bwn = add nsw i32 %i.c, 8
  store i32 %i.bwn, ptr %i.b, align 4, !tbaa !18
  %i.bwo = tail call i32 @llvm.fshl.i32(i32 %i.bwm, i32 %i.bwm, i32 16)
  br label %b2RecR_WORLDID.exit2262

b2RecR_WORLDID.exit2262:                          ; preds = %b2RecRdrCheck.exit.thread.i.i2261, %b2RecRdrCheck.exit.i.i2258
  %.0.i.i2260 = phi i32 [ %i.bwo, %b2RecRdrCheck.exit.i.i2258 ], [ 0, %b2RecRdrCheck.exit.thread.i.i2261 ]
  store i32 %.0.i.i2260, ptr %37, align 8, !tbaa !67
  %i.bwp = getelementptr inbounds nuw i8, ptr %37, i64 4
  %i.bwq = tail call <2 x float> @b2RecR_POSITION(ptr noundef nonnull %i.a)
  store <2 x float> %i.bwq, ptr %i.bwp, align 4, !tbaa !28
  %i.bwr = getelementptr inbounds nuw i8, ptr %37, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.bws = load i32, ptr %i.b, align 4, !tbaa !18, !noalias !376 ; 2 uses
  %i.bwt = sext i32 %i.bws to i64                 ; 2 uses
  %i.bwu = add nsw i64 %i.bwt, 20
  %i.bwv = load i32, ptr %i.d, align 8, !tbaa !19, !noalias !376
  %i.bww = sext i32 %i.bwv to i64
  %i.bwx = icmp sgt i64 %i.bwu, %i.bww
  br i1 %i.bwx, label %b2RecRdrCheck.exit.thread.i.i2265, label %b2RecRdrCheck.exit.i.i2263

b2RecRdrCheck.exit.thread.i.i2265:                ; preds = %b2RecR_WORLDID.exit2262
  store i8 0, ptr %i.f, align 8, !tbaa !20, !noalias !376
  br label %bb.lf

b2RecRdrCheck.exit.i.i2263:                       ; preds = %b2RecR_WORLDID.exit2262
  %.pre.i.i2264 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noalias !376
  %i.bwy = trunc nuw i8 %.pre.i.i2264 to i1
  br i1 %i.bwy, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %b2RecRdrCheck.exit.i.i2263, %b2RecRdrCheck.exit.thread.i.i2265
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %38, i8 0, i64 20, i1 false), !alias.scope !376
  br label %b2RecR_CAPSULE.exit2266

bb.lg:                                            ; preds = %b2RecRdrCheck.exit.i.i2263
  %i.bwz = load ptr, ptr %i.a, align 8, !tbaa !22, !noalias !376
  %i.bxa = getelementptr inbounds i8, ptr %i.bwz, i64 %i.bwt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %38, ptr noundef nonnull align 1 dereferenceable(20) %i.bxa, i64 20, i1 false)
  %i.bxb = add nsw i32 %i.bws, 20
  store i32 %i.bxb, ptr %i.b, align 4, !tbaa !18, !noalias !376
  br label %b2RecR_CAPSULE.exit2266

b2RecR_CAPSULE.exit2266:                          ; preds = %bb.lf, %bb.lg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bwr, ptr noundef nonnull align 4 dereferenceable(20) %38, i64 20, i1 false), !tbaa.struct !107
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  %i.bxc = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.bxd = tail call { i64, i64 } @b2RecR_QUERYFILTER(ptr noundef nonnull %i.a) ; 2 uses
  %i.bxe = extractvalue { i64, i64 } %i.bxd, 0
  %i.bxf = extractvalue { i64, i64 } %i.bxd, 1
  store i64 %i.bxe, ptr %i.bxc, align 8, !tbaa !33
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %37, i64 40
  store i64 %i.bxf, ptr %.sroa.418.0..sroa_idx, align 8, !tbaa !33
  %i.bxg = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noundef !97
  %i.bxh = trunc nuw i8 %i.bxg to i1
  br i1 %i.bxh, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %b2RecR_CAPSULE.exit2266
  call fastcc void @b2RecDispatch_QueryCollideMover(ptr noundef %37, ptr noundef nonnull %i.a)
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %b2RecR_CAPSULE.exit2266
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  br label %b2RecR_WORLDID.exit

bb.lj:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  %i.bxi = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i64 0, ptr %i.bxi, align 8
  %i.bxj = sext i32 %i.z to i64                   ; 2 uses
  %i.bxk = add nsw i64 %i.bxj, 4
  %i.bxl = icmp sgt i64 %i.bxk, %i.m
  br i1 %i.bxl, label %b2RecRdrCheck.exit.thread.i.i2270, label %b2RecRdrCheck.exit.i.i2267

b2RecRdrCheck.exit.thread.i.i2270:                ; preds = %bb.lj
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit2271

b2RecRdrCheck.exit.i.i2267:                       ; preds = %bb.lj
  %i.bxm = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.bxn = getelementptr inbounds i8, ptr %i.bxm, i64 %i.bxj
  %i.bxo = load i32, ptr %i.bxn, align 1          ; 2 uses
  %i.bxp = add nsw i32 %i.c, 8
  store i32 %i.bxp, ptr %i.b, align 4, !tbaa !18
  %i.bxq = tail call i32 @llvm.fshl.i32(i32 %i.bxo, i32 %i.bxo, i32 16)
  br label %b2RecR_WORLDID.exit2271

b2RecR_WORLDID.exit2271:                          ; preds = %b2RecRdrCheck.exit.thread.i.i2270, %b2RecRdrCheck.exit.i.i2267
  %.0.i.i2269 = phi i32 [ %i.bxq, %b2RecRdrCheck.exit.i.i2267 ], [ 0, %b2RecRdrCheck.exit.thread.i.i2270 ]
  store i32 %.0.i.i2269, ptr %39, align 8, !tbaa !67
  %i.bxr = getelementptr inbounds nuw i8, ptr %39, i64 4
  %i.bxs = tail call <2 x float> @b2RecR_POSITION(ptr noundef nonnull %i.a)
  %49 = tail call <2 x float> @b2RecR_VEC2(ptr noundef nonnull %i.a)
  %50 = shufflevector <2 x float> %i.bxs, <2 x float> %49, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %50, ptr %i.bxr, align 4, !tbaa !28
  %i.bxt = getelementptr inbounds nuw i8, ptr %39, i64 24
  %i.bxu = tail call { i64, i64 } @b2RecR_QUERYFILTER(ptr noundef nonnull %i.a) ; 2 uses
  %i.bxv = extractvalue { i64, i64 } %i.bxu, 0
  %i.bxw = extractvalue { i64, i64 } %i.bxu, 1
  store i64 %i.bxv, ptr %i.bxt, align 8, !tbaa !33
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %39, i64 32
  store i64 %i.bxw, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !33
  %i.bxx = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noundef !97
  %i.bxy = trunc nuw i8 %i.bxx to i1
  br i1 %i.bxy, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %b2RecR_WORLDID.exit2271
  call fastcc void @b2RecDispatch_QueryCastRayClosest(ptr noundef %39, ptr noundef nonnull %i.a)
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %b2RecR_WORLDID.exit2271
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  br label %b2RecR_WORLDID.exit

bb.lm:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  %i.bxz = getelementptr inbounds nuw i8, ptr %40, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bxz, i8 0, i64 48, i1 false)
  %i.bya = sext i32 %i.z to i64                   ; 2 uses
  %i.byb = add nsw i64 %i.bya, 4
  %i.byc = icmp sgt i64 %i.byb, %i.m
  br i1 %i.byc, label %b2RecRdrCheck.exit.thread.i.i2275, label %b2RecRdrCheck.exit.i.i2272

b2RecRdrCheck.exit.thread.i.i2275:                ; preds = %bb.lm
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit2276

b2RecRdrCheck.exit.i.i2272:                       ; preds = %bb.lm
  %i.byd = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.bye = getelementptr inbounds i8, ptr %i.byd, i64 %i.bya
  %i.byf = load i32, ptr %i.bye, align 1          ; 2 uses
  %i.byg = add nsw i32 %i.c, 8
  store i32 %i.byg, ptr %i.b, align 4, !tbaa !18
  %i.byh = tail call i32 @llvm.fshl.i32(i32 %i.byf, i32 %i.byf, i32 16)
  br label %b2RecR_WORLDID.exit2276

b2RecR_WORLDID.exit2276:                          ; preds = %b2RecRdrCheck.exit.thread.i.i2275, %b2RecRdrCheck.exit.i.i2272
  %.0.i.i2274 = phi i32 [ %i.byh, %b2RecRdrCheck.exit.i.i2272 ], [ 0, %b2RecRdrCheck.exit.thread.i.i2275 ]
  store i32 %.0.i.i2274, ptr %40, align 8, !tbaa !67
  %i.byi = getelementptr inbounds nuw i8, ptr %40, i64 4
  %i.byj = tail call <2 x float> @b2RecR_POSITION(ptr noundef nonnull %i.a)
  store <2 x float> %i.byj, ptr %i.byi, align 4, !tbaa !28
  %i.byk = getelementptr inbounds nuw i8, ptr %40, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.byl = load i32, ptr %i.b, align 4, !tbaa !18, !noalias !377 ; 2 uses
  %i.bym = sext i32 %i.byl to i64                 ; 2 uses
  %i.byn = add nsw i64 %i.bym, 20
  %i.byo = load i32, ptr %i.d, align 8, !tbaa !19, !noalias !377
  %i.byp = sext i32 %i.byo to i64
  %i.byq = icmp sgt i64 %i.byn, %i.byp
  br i1 %i.byq, label %b2RecRdrCheck.exit.thread.i.i2279, label %b2RecRdrCheck.exit.i.i2277

b2RecRdrCheck.exit.thread.i.i2279:                ; preds = %b2RecR_WORLDID.exit2276
  store i8 0, ptr %i.f, align 8, !tbaa !20, !noalias !377
  br label %bb.ln

b2RecRdrCheck.exit.i.i2277:                       ; preds = %b2RecR_WORLDID.exit2276
  %.pre.i.i2278 = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noalias !377
  %i.byr = trunc nuw i8 %.pre.i.i2278 to i1
  br i1 %i.byr, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %b2RecRdrCheck.exit.i.i2277, %b2RecRdrCheck.exit.thread.i.i2279
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %41, i8 0, i64 20, i1 false), !alias.scope !377
  br label %b2RecR_CAPSULE.exit2280

bb.lo:                                            ; preds = %b2RecRdrCheck.exit.i.i2277
  %i.bys = load ptr, ptr %i.a, align 8, !tbaa !22, !noalias !377
  %i.byt = getelementptr inbounds i8, ptr %i.bys, i64 %i.bym
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %41, ptr noundef nonnull align 1 dereferenceable(20) %i.byt, i64 20, i1 false)
  %i.byu = add nsw i32 %i.byl, 20
  store i32 %i.byu, ptr %i.b, align 4, !tbaa !18, !noalias !377
  br label %b2RecR_CAPSULE.exit2280

b2RecR_CAPSULE.exit2280:                          ; preds = %bb.ln, %bb.lo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.byk, ptr noundef nonnull align 4 dereferenceable(20) %41, i64 20, i1 false), !tbaa.struct !107
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  %i.byv = getelementptr inbounds nuw i8, ptr %40, i64 32
  %i.byw = tail call <2 x float> @b2RecR_VEC2(ptr noundef nonnull %i.a)
  store <2 x float> %i.byw, ptr %i.byv, align 8, !tbaa !28
  %i.byx = getelementptr inbounds nuw i8, ptr %40, i64 40
  %i.byy = tail call { i64, i64 } @b2RecR_QUERYFILTER(ptr noundef nonnull %i.a) ; 2 uses
  %i.byz = extractvalue { i64, i64 } %i.byy, 0
  %i.bza = extractvalue { i64, i64 } %i.byy, 1
  store i64 %i.byz, ptr %i.byx, align 8, !tbaa !33
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 48
  store i64 %i.bza, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !33
  %i.bzb = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noundef !97
  %i.bzc = trunc nuw i8 %i.bzb to i1
  br i1 %i.bzc, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %b2RecR_CAPSULE.exit2280
  call fastcc void @b2RecDispatch_QueryCastMover(ptr noundef %40, ptr noundef nonnull %i.a)
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %b2RecR_CAPSULE.exit2280
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  br label %b2RecR_WORLDID.exit

bb.lr:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  %i.bzd = tail call i64 @b2RecR_SHAPEID(ptr noundef nonnull %i.a)
  store i64 %i.bzd, ptr %42, align 8
  %i.bze = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.bzf = tail call <2 x float> @b2RecR_POSITION(ptr noundef nonnull %i.a)
  store <2 x float> %i.bzf, ptr %i.bze, align 8, !tbaa !28
  %i.bzg = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noundef !97
  %i.bzh = trunc nuw i8 %i.bzg to i1
  br i1 %i.bzh, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  call fastcc void @b2RecDispatch_ShapeTestPoint(ptr noundef %42, ptr noundef nonnull %i.a)
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %bb.lr
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  br label %b2RecR_WORLDID.exit

bb.lu:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  %i.bzi = tail call i64 @b2RecR_SHAPEID(ptr noundef nonnull %i.a)
  store i64 %i.bzi, ptr %43, align 8
  %i.bzj = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.bzk = tail call <2 x float> @b2RecR_POSITION(ptr noundef nonnull %i.a)
  %51 = tail call <2 x float> @b2RecR_VEC2(ptr noundef nonnull %i.a)
  %52 = shufflevector <2 x float> %i.bzk, <2 x float> %51, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %52, ptr %i.bzj, align 8, !tbaa !28
  %i.bzl = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noundef !97
  %i.bzm = trunc nuw i8 %i.bzl to i1
  br i1 %i.bzm, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  call fastcc void @b2RecDispatch_ShapeRayCast(ptr noundef %43, ptr noundef nonnull %i.a)
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.lu
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  br label %b2RecR_WORLDID.exit

bb.lx:                                            ; preds = %bb.d
  %i.bzn = sext i32 %i.c to i64
  %i.bzo = add nsw i64 %i.bzn, 8
  %.not2743 = icmp sgt i64 %i.bzo, %i.m
  br i1 %.not2743, label %b2RecR_U64.exit2290.thread, label %b2RecR_WORLDID.exit2285.thread

b2RecR_WORLDID.exit2285.thread:                   ; preds = %bb.lx
  %i.bzp = add nsw i32 %i.c, 8                    ; 2 uses
  store i32 %i.bzp, ptr %i.b, align 4, !tbaa !18
  %.pre2678 = sext i32 %i.bzp to i64              ; 2 uses
  %i.bzq = add nsw i64 %.pre2678, 8
  %i.bzr = icmp sgt i64 %i.bzq, %i.m
  br i1 %i.bzr, label %b2RecR_U64.exit2290.thread, label %b2RecRdrCheck.exit.i2286.thread

b2RecR_U64.exit2290.thread:                       ; preds = %bb.lx, %b2RecR_WORLDID.exit2285.thread
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit

b2RecRdrCheck.exit.i2286.thread:                  ; preds = %b2RecR_WORLDID.exit2285.thread
  %i.bzs = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.bzt = getelementptr inbounds i8, ptr %i.bzs, i64 %.pre2678
  %i.bzu = load i64, ptr %i.bzt, align 1
  %i.bzv = add nsw i32 %i.c, 16
  store i32 %i.bzv, ptr %i.b, align 4, !tbaa !18
  tail call fastcc void @b2RecDispatch_StateHash(i64 %i.bzu, ptr noundef nonnull %i.a)
  br label %b2RecR_WORLDID.exit

bb.ly:                                            ; preds = %bb.d
  %i.bzw = tail call { <2 x float>, <2 x float> } @b2RecR_AABB(ptr noundef nonnull %i.a) ; 2 uses
  %i.bzx = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noundef !97
  %i.bzy = trunc nuw i8 %i.bzx to i1
  br i1 %i.bzy, label %bb.lz, label %b2RecR_WORLDID.exit

bb.lz:                                            ; preds = %bb.ly
  %i.bzz = extractvalue { <2 x float>, <2 x float> } %i.bzw, 1
  %i.caa = extractvalue { <2 x float>, <2 x float> } %i.bzw, 0
  %i.cab = getelementptr i8, ptr %0, i64 152
  %.val1185 = load ptr, ptr %i.cab, align 8, !tbaa !106
  %i.cac = getelementptr inbounds nuw i8, ptr %.val1185, i64 44
  %53 = shufflevector <2 x float> %i.caa, <2 x float> %i.bzz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %53, ptr %i.cac, align 4, !tbaa !28
  br label %b2RecR_WORLDID.exit

bb.ma:                                            ; preds = %bb.d
  %i.cad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.aa, i32 noundef %i.y) ; 0 uses
  %i.cae = load i32, ptr %i.d, align 8, !tbaa !19
  %i.caf = sub nsw i32 %i.cae, %i.z
  %i.cag = icmp ugt i32 %i.y, %i.caf
  br i1 %i.cag, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %bb.ma
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %b2RecR_WORLDID.exit

bb.mc:                                            ; preds = %bb.ma
  %i.cah = add nsw i32 %i.z, %i.y
  store i32 %i.cah, ptr %i.b, align 4, !tbaa !18
  br label %b2RecR_WORLDID.exit

b2RecR_WORLDID.exit:                              ; preds = %b2RecRdrCheck.exit.thread.i.i2233, %b2RecRdrCheck.exit.i.i2231, %b2RecRdrCheck.exit.thread.i.i2226, %b2RecRdrCheck.exit.i.i2224, %b2RecRdrCheck.exit.thread.i.i2216, %b2RecRdrCheck.exit.i.i2218, %b2RecRdrCheck.exit.i.i2203, %b2RecRdrCheck.exit.thread.i.i2209, %b2RecRdrCheck.exit.thread.i.i2195, %b2RecRdrCheck.exit.i.i2197, %b2RecRdrCheck.exit.thread.i.i2188, %b2RecRdrCheck.exit.i.i2186, %b2RecRdrCheck.exit.thread.i.i2181, %b2RecRdrCheck.exit.i.i2179, %b2RecRdrCheck.exit.thread.i.i2171, %b2RecRdrCheck.exit.i.i2173, %b2RecRdrCheck.exit.thread.i.i2159, %b2RecRdrCheck.exit.i.i2157, %b2RecRdrCheck.exit.thread.i.i2152, %b2RecRdrCheck.exit.i.i2150, %b2RecRdrCheck.exit.thread.i.i2145, %b2RecRdrCheck.exit.i.i2143, %b2RecRdrCheck.exit.thread.i.i2138, %b2RecRdrCheck.exit.i.i2136, %b2RecRdrCheck.exit.thread.i.i2126, %b2RecRdrCheck.exit.i.i2124, %b2RecRdrCheck.exit.thread.i.i2119, %b2RecRdrCheck.exit.i.i2117, %b2RecRdrCheck.exit.thread.i.i2109, %b2RecRdrCheck.exit.i.i2111, %b2RecRdrCheck.exit.i.i2096, %b2RecRdrCheck.exit.thread.i.i2102, %b2RecRdrCheck.exit.thread.i.i2088, %b2RecRdrCheck.exit.i.i2090, %b2RecRdrCheck.exit.thread.i.i2081, %b2RecRdrCheck.exit.i.i2079, %b2RecRdrCheck.exit.thread.i.i2074, %b2RecRdrCheck.exit.i.i2072, %b2RecRdrCheck.exit.thread.i.i2067, %b2RecRdrCheck.exit.i.i2065, %b2RecRdrCheck.exit.thread.i.i2057, %b2RecRdrCheck.exit.i.i2059, %b2RecRdrCheck.exit.thread.i.i2045, %b2RecRdrCheck.exit.i.i2043, %b2RecRdrCheck.exit.thread.i.i2038, %b2RecRdrCheck.exit.i.i2036, %b2RecRdrCheck.exit.thread.i.i2028, %b2RecRdrCheck.exit.i.i2030, %b2RecRdrCheck.exit.i.i2015, %b2RecRdrCheck.exit.thread.i.i2021, %b2RecRdrCheck.exit.thread.i.i2007, %b2RecRdrCheck.exit.i.i2009, %b2RecRdrCheck.exit.thread.i.i2000, %b2RecRdrCheck.exit.i.i1998, %b2RecRdrCheck.exit.thread.i.i1993, %b2RecRdrCheck.exit.i.i1991, %b2RecRdrCheck.exit.thread.i.i1986, %b2RecRdrCheck.exit.i.i1984, %b2RecRdrCheck.exit.thread.i.i1976, %b2RecRdrCheck.exit.i.i1978, %b2RecRdrCheck.exit.thread.i.i1964, %b2RecRdrCheck.exit.i.i1962, %b2RecRdrCheck.exit.thread.i.i1957, %b2RecRdrCheck.exit.i.i1955, %b2RecRdrCheck.exit.thread.i.i1950, %b2RecRdrCheck.exit.i.i1948, %b2RecRdrCheck.exit.thread.i.i1927, %b2RecRdrCheck.exit.i.i1925, %b2RecRdrCheck.exit.thread.i.i1920, %b2RecRdrCheck.exit.i.i1918, %b2RecRdrCheck.exit.thread.i.i1913, %b2RecRdrCheck.exit.i.i1911, %b2RecRdrCheck.exit.thread.i.i1906, %b2RecRdrCheck.exit.i.i1904, %b2RecRdrCheck.exit.thread.i.i1899, %b2RecRdrCheck.exit.i.i1897, %b2RecRdrCheck.exit.thread.i.i1892, %b2RecRdrCheck.exit.i.i1890, %b2RecRdrCheck.exit.thread.i.i1885, %b2RecRdrCheck.exit.i.i1883, %b2RecRdrCheck.exit.thread.i.i1878, %b2RecRdrCheck.exit.i.i1876, %b2RecRdrCheck.exit.thread.i.i1871, %b2RecRdrCheck.exit.i.i1869, %b2RecRdrCheck.exit.thread.i.i1851, %b2RecRdrCheck.exit.i.i1849, %b2RecRdrCheck.exit.thread.i.i1844, %b2RecRdrCheck.exit.i.i1842, %b2RecRdrCheck.exit.thread.i.i1834, %b2RecRdrCheck.exit.i.i1836, %b2RecRdrCheck.exit.i.i1821, %b2RecRdrCheck.exit.thread.i.i1827, %b2RecRdrCheck.exit.thread.i.i1813, %b2RecRdrCheck.exit.i.i1815, %b2RecRdrCheck.exit.thread.i.i1806, %b2RecRdrCheck.exit.i.i1804, %b2RecRdrCheck.exit.thread.i.i1799, %b2RecRdrCheck.exit.i.i1797, %b2RecRdrCheck.exit.i.i1786, %b2RecRdrCheck.exit.thread.i.i1792, %b2RecRdrCheck.exit.thread.i.i1778, %b2RecRdrCheck.exit.i.i1780, %b2RecRdrCheck.exit.thread.i.i1771, %b2RecRdrCheck.exit.i.i1769, %b2RecRdrCheck.exit.thread.i.i1759, %b2RecRdrCheck.exit.i.i1757, %b2RecRdrCheck.exit.thread.i.i1752, %b2RecRdrCheck.exit.i.i1750, %b2RecRdrCheck.exit.i.i1739, %b2RecRdrCheck.exit.thread.i.i1745, %b2RecRdrCheck.exit.thread.i.i1728, %b2RecRdrCheck.exit.i.i1730, %b2RecR_F32.exit1695, %b2RecRdrCheck.exit.thread.i.i1698, %b2RecRdrCheck.exit.thread.i.i1631, %b2RecRdrCheck.exit.i.i1633, %b2RecRdrCheck.exit.thread.i.i1621, %b2RecRdrCheck.exit.i.i1623, %b2RecRdrCheck.exit.thread.i.i1611, %b2RecRdrCheck.exit.i.i1613, %b2RecRdrCheck.exit.thread.i.i1601, %b2RecRdrCheck.exit.i.i1603, %b2RecRdrCheck.exit.thread.i1589, %b2RecRdrCheck.exit.i1586, %b2RecRdrCheck.exit.thread.i.i1581, %b2RecRdrCheck.exit.i.i1579, %b2RecRdrCheck.exit.thread.i.i1574, %b2RecRdrCheck.exit.i.i1572, %b2RecR_F32.exit1561, %b2RecRdrCheck.exit.thread.i.i1564, %b2RecRdrCheck.exit.thread.i.i1550, %b2RecRdrCheck.exit.i.i1552, %b2RecRdrCheck.exit.thread.i.i1522, %b2RecRdrCheck.exit.i.i1520, %b2RecRdrCheck.exit.thread.i.i1512, %b2RecRdrCheck.exit.i.i1514, %b2RecRdrCheck.exit.thread.i.i1502, %b2RecRdrCheck.exit.i.i1504, %b2RecRdrCheck.exit.thread.i.i1492, %b2RecRdrCheck.exit.i.i1494, %b2RecRdrCheck.exit.thread.i.i1482, %b2RecRdrCheck.exit.i.i1484, %b2RecRdrCheck.exit.thread.i.i1466, %b2RecRdrCheck.exit.i.i1464, %b2RecRdrCheck.exit.thread.i.i1456, %b2RecRdrCheck.exit.i.i1458, %b2RecRdrCheck.exit.thread.i.i1443, %b2RecRdrCheck.exit.i.i1445, %b2RecRdrCheck.exit.thread.i.i1436, %b2RecRdrCheck.exit.i.i1434, %b2RecRdrCheck.exit.thread.i.i1429, %b2RecRdrCheck.exit.i.i1427, %b2RecRdrCheck.exit.thread.i.i1422, %b2RecRdrCheck.exit.i.i1420, %b2RecR_F32.exit1403, %b2RecRdrCheck.exit.thread.i.i1406, %b2RecRdrCheck.exit.thread.i.i1392, %b2RecRdrCheck.exit.i.i1394, %b2RecRdrCheck.exit.thread.i.i1382, %b2RecRdrCheck.exit.i.i1384, %b2RecR_F32.exit1366, %b2RecRdrCheck.exit.thread.i.i1369, %b2RecRdrCheck.exit.thread.i.i1355, %b2RecRdrCheck.exit.i.i1357, %b2RecRdrCheck.exit.thread.i.i1345, %b2RecRdrCheck.exit.i.i1347, %b2RecR_F32.exit1332, %b2RecRdrCheck.exit.thread.i.i1335, %b2RecRdrCheck.exit.thread.i.i1324, %b2RecRdrCheck.exit.i.i1322, %b2RecRdrCheck.exit.thread.i.i1314, %b2RecRdrCheck.exit.i.i1311, %b2RecR_WORLDID.exit1290, %b2RecRdrCheck.exit.thread.i.i1293, %b2RecR_WORLDID.exit1215, %b2RecRdrCheck.exit.thread.i.i1218, %b2RecR_WORLDID.exit1206, %b2RecRdrCheck.exit.thread.i.i1207, %b2RecR_U64.exit2290.thread, %b2RecR_WORLDID.exit1302.thread, %b2RecR_F32.exit1285, %b2RecR_F32.exit1276, %b2RecR_F32.exit1267, %b2RecR_F32.exit1240, %b2RecR_F32.exit1231, %b2RecR_I32.exit, %b2RecR_U24.exit.thread, %bb.kn, %bb.kj, %bb.kd, %bb.jj, %bb.jf, %bb.ix, %bb.io, %bb.ik, %bb.ic, %bb.gd, %bb.fz, %bb.fr, %bb.fc, %bb.en, %bb.dy, %bb.dw, %bb.du, %bb.ds, %bb.de, %bb.dc, %bb.cl, %bb.cj, %bb.ch, %bb.cf, %bb.bv, %bb.br, %bb.bf, %bb.bd, %bb.bb, %bb.ax, %bb.av, %bb.at, %bb.ar, %b2RecRdrCheck.exit.i.i, %b2RecRdrCheck.exit.thread.i.i, %bb.ly, %bb.lz, %b2RecRdrCheck.exit.i2286.thread, %bb.kr, %bb.kp, %bb.kl, %bb.kh, %bb.kf, %bb.jy, %bb.jw, %bb.ju, %bb.js, %bb.jn, %bb.jl, %bb.jh, %bb.jd, %bb.jb, %bb.iz, %bb.is, %bb.iq, %bb.im, %bb.ii, %bb.ig, %bb.ie, %bb.hx, %bb.hv, %bb.ht, %bb.hn, %bb.ho, %bb.hl, %bb.hm, %bb.hh, %bb.hf, %bb.hd, %bb.hb, %bb.gz, %bb.gx, %bb.gv, %bb.gt, %bb.gr, %bb.go, %bb.gp, %bb.gh, %bb.gf, %bb.gb, %bb.fx, %bb.fv, %bb.ft, %bb.fp, %bb.fk, %bb.fi, %bb.fg, %bb.fd, %bb.fe, %bb.ez, %bb.fa, %bb.ex, %bb.ey, %bb.ev, %bb.ew, %bb.er, %bb.es, %bb.dk, %bb.di, %bb.dg, %bb.cn, %bb.cc, %bb.cd, %bb.ca, %bb.cb, %bb.by, %bb.bz, %bb.bx, %bb.bs, %bb.bt, %bb.bp, %bb.bn, %bb.bl, %bb.bi, %bb.bj, %bb.bg, %bb.bh, %bb.ay, %bb.az, %bb.ap, %bb.am, %bb.an, %bb.al, %bb.ai, %bb.aj, %bb.ag, %bb.ah, %bb.ae, %bb.af, %bb.aa, %b2RecRdrCheck.exit.i.i1295.thread, %bb.x, %bb.v, %bb.t, %b2RecR_WORLDID.exit1245, %bb.o, %bb.m, %bb.k, %b2RecRdrCheck.exit.i.i1220.thread, %b2RecRdrCheck.exit.i.i1209.thread, %bb.g, %bb.r, %bb.ad, %b2RecR_CIRCLE.exit.thread, %bb.cs, %b2RecR_SEGMENT.exit.thread, %bb.cx, %bb.da, %bb.dn, %bb.dq, %b2RecR_CIRCLE.exit1649.thread, %bb.ed, %b2RecR_SEGMENT.exit1670.thread, %bb.ei, %bb.el, %bb.eq, %b2RecR_I32.exit1713.thread, %bb.fn, %bb.gk, %bb.gn, %bb.hk, %bb.hr, %bb.ia, %bb.iv, %bb.jq, %bb.kb, %bb.ku, %bb.kx, %bb.la, %bb.ld, %bb.li, %bb.ll, %bb.lq, %bb.lt, %bb.lw, %bb.mc, %bb.mb, %bb.a, %bb.b
  %.2 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ 212, %b2RecRdrCheck.exit.i.i2203 ], [ -1, %b2RecR_U24.exit.thread ], [ %i.aa, %bb.mb ], [ %i.aa, %bb.mc ], [ 241, %b2RecR_U64.exit2290.thread ], [ 214, %b2RecRdrCheck.exit.thread.i.i2226 ], [ 232, %bb.lw ], [ 231, %bb.lt ], [ 230, %bb.lq ], [ 229, %bb.ll ], [ 228, %bb.li ], [ 227, %bb.ld ], [ 226, %bb.la ], [ 225, %bb.kx ], [ 224, %bb.ku ], [ 213, %b2RecRdrCheck.exit.thread.i.i2216 ], [ 211, %b2RecRdrCheck.exit.thread.i.i2195 ], [ 210, %b2RecRdrCheck.exit.thread.i.i2188 ], [ 209, %b2RecRdrCheck.exit.thread.i.i2181 ], [ 206, %b2RecRdrCheck.exit.thread.i.i2159 ], [ 208, %b2RecRdrCheck.exit.thread.i.i2171 ], [ 205, %b2RecRdrCheck.exit.thread.i.i2152 ], [ 198, %b2RecRdrCheck.exit.i.i2096 ], [ 207, %bb.kb ], [ 204, %b2RecRdrCheck.exit.thread.i.i2145 ], [ 203, %b2RecRdrCheck.exit.thread.i.i2138 ], [ 201, %b2RecRdrCheck.exit.thread.i.i2126 ], [ 200, %b2RecRdrCheck.exit.thread.i.i2119 ], [ 202, %bb.jq ], [ 199, %b2RecRdrCheck.exit.thread.i.i2109 ], [ 197, %b2RecRdrCheck.exit.thread.i.i2088 ], [ 196, %b2RecRdrCheck.exit.thread.i.i2081 ], [ 195, %b2RecRdrCheck.exit.thread.i.i2074 ], [ 191, %b2RecRdrCheck.exit.thread.i.i2045 ], [ 194, %b2RecRdrCheck.exit.thread.i.i2067 ], [ 193, %b2RecRdrCheck.exit.thread.i.i2057 ], [ 190, %b2RecRdrCheck.exit.thread.i.i2038 ], [ 188, %b2RecRdrCheck.exit.i.i2015 ], [ 192, %bb.iv ], [ 189, %b2RecRdrCheck.exit.thread.i.i2028 ], [ 187, %b2RecRdrCheck.exit.thread.i.i2007 ], [ 186, %b2RecRdrCheck.exit.thread.i.i2000 ], [ 185, %b2RecRdrCheck.exit.thread.i.i1993 ], [ 181, %b2RecRdrCheck.exit.thread.i.i1964 ], [ 184, %b2RecRdrCheck.exit.thread.i.i1986 ], [ 183, %b2RecRdrCheck.exit.thread.i.i1976 ], [ 180, %b2RecRdrCheck.exit.thread.i.i1957 ], [ 159, %b2RecRdrCheck.exit.i.i1821 ], [ 182, %bb.ia ], [ 179, %b2RecRdrCheck.exit.thread.i.i1950 ], [ 174, %b2RecRdrCheck.exit.thread.i.i1927 ], [ 177, %bb.hn ], [ 178, %bb.hr ], [ 176, %bb.hl ], [ 173, %b2RecRdrCheck.exit.thread.i.i1920 ], [ 175, %bb.hk ], [ 172, %b2RecRdrCheck.exit.thread.i.i1913 ], [ 171, %b2RecRdrCheck.exit.thread.i.i1906 ], [ 170, %b2RecRdrCheck.exit.thread.i.i1899 ], [ 169, %b2RecRdrCheck.exit.thread.i.i1892 ], [ 168, %b2RecRdrCheck.exit.thread.i.i1885 ], [ 167, %b2RecRdrCheck.exit.thread.i.i1878 ], [ 166, %b2RecRdrCheck.exit.thread.i.i1871 ], [ 162, %b2RecRdrCheck.exit.thread.i.i1851 ], [ 165, %bb.go ], [ 161, %b2RecRdrCheck.exit.thread.i.i1844 ], [ 164, %bb.gn ], [ 163, %bb.gk ], [ 160, %b2RecRdrCheck.exit.thread.i.i1834 ], [ 158, %b2RecRdrCheck.exit.thread.i.i1813 ], [ 157, %b2RecRdrCheck.exit.thread.i.i1806 ], [ 156, %b2RecRdrCheck.exit.thread.i.i1799 ], [ 153, %b2RecRdrCheck.exit.thread.i.i1771 ], [ 155, %b2RecRdrCheck.exit.i.i1786 ], [ 154, %b2RecRdrCheck.exit.thread.i.i1778 ], [ 151, %b2RecRdrCheck.exit.thread.i.i1759 ], [ 95, %b2RecR_F32.exit1695 ], [ 150, %b2RecRdrCheck.exit.thread.i.i1752 ], [ 152, %bb.fn ], [ 149, %b2RecRdrCheck.exit.i.i1739 ], [ 147, %b2RecRdrCheck.exit.thread.i.i1728 ], [ 148, %bb.fd ], [ 146, %bb.ez ], [ 89, %b2RecRdrCheck.exit.thread.i.i1631 ], [ 145, %bb.ex ], [ 144, %bb.ev ], [ 113, %bb.er ], [ 114, %b2RecR_I32.exit1713.thread ], [ 82, %b2RecRdrCheck.exit.thread.i.i1581 ], [ 112, %bb.eq ], [ 88, %b2RecRdrCheck.exit.thread.i.i1621 ], [ 94, %bb.el ], [ 93, %bb.ei ], [ 92, %b2RecR_SEGMENT.exit1670.thread ], [ 91, %bb.ed ], [ 90, %b2RecR_CIRCLE.exit1649.thread ], [ 87, %b2RecRdrCheck.exit.thread.i.i1611 ], [ 86, %b2RecRdrCheck.exit.thread.i.i1601 ], [ 83, %b2RecRdrCheck.exit.thread.i1589 ], [ 69, %b2RecRdrCheck.exit.thread.i.i1550 ], [ 85, %bb.dq ], [ 84, %bb.dn ], [ 81, %b2RecRdrCheck.exit.thread.i.i1574 ], [ 80, %b2RecR_F32.exit1561 ], [ 60, %b2RecRdrCheck.exit.thread.i.i1512 ], [ 61, %b2RecRdrCheck.exit.thread.i.i1522 ], [ 59, %b2RecRdrCheck.exit.thread.i.i1502 ], [ 68, %bb.da ], [ 67, %bb.cx ], [ 66, %b2RecR_SEGMENT.exit.thread ], [ 65, %bb.cs ], [ 64, %b2RecR_CIRCLE.exit.thread ], [ 56, %bb.cc ], [ 58, %b2RecRdrCheck.exit.thread.i.i1492 ], [ 57, %b2RecRdrCheck.exit.thread.i.i1482 ], [ 53, %b2RecRdrCheck.exit.thread.i.i1466 ], [ 50, %b2RecRdrCheck.exit.thread.i.i1443 ], [ 55, %bb.ca ], [ 54, %bb.by ], [ 52, %b2RecRdrCheck.exit.thread.i.i1456 ], [ 51, %bb.bs ], [ 49, %b2RecRdrCheck.exit.thread.i.i1436 ], [ 48, %b2RecRdrCheck.exit.thread.i.i1429 ], [ 43, %b2RecRdrCheck.exit.thread.i.i1392 ], [ 47, %b2RecRdrCheck.exit.thread.i.i1422 ], [ 44, %b2RecR_F32.exit1403 ], [ 46, %bb.bi ], [ 45, %bb.bg ], [ 41, %bb.ay ], [ 42, %b2RecRdrCheck.exit.thread.i.i1382 ], [ 40, %b2RecR_F32.exit1366 ], [ 39, %b2RecRdrCheck.exit.thread.i.i1355 ], [ 34, %b2RecRdrCheck.exit.thread.i.i1314 ], [ 38, %b2RecRdrCheck.exit.thread.i.i1345 ], [ 37, %b2RecR_F32.exit1332 ], [ 36, %b2RecRdrCheck.exit.thread.i.i1324 ], [ 1, %b2RecRdrCheck.exit.i.i ], [ 35, %bb.am ], [ 11, %b2RecR_WORLDID.exit1290 ], [ 33, %bb.ai ], [ 32, %bb.ag ], [ 17, %bb.ae ], [ 12, %b2RecR_WORLDID.exit1302.thread ], [ 16, %bb.ad ], [ 3, %b2RecR_WORLDID.exit1215 ], [ 10, %b2RecR_F32.exit1285 ], [ 9, %b2RecR_F32.exit1276 ], [ 8, %b2RecR_F32.exit1267 ], [ 6, %b2RecR_WORLDID.exit1245 ], [ 7, %bb.r ], [ 5, %b2RecR_F32.exit1240 ], [ 4, %b2RecR_F32.exit1231 ], [ 2, %b2RecR_WORLDID.exit1206 ], [ 211, %bb.kj ], [ 128, %b2RecR_I32.exit ], [ 242, %bb.ly ], [ 242, %bb.lz ], [ 128, %bb.g ], [ 2, %b2RecRdrCheck.exit.i.i1209.thread ], [ 3, %b2RecRdrCheck.exit.i.i1220.thread ], [ 4, %bb.k ], [ 5, %bb.m ], [ 6, %bb.o ], [ 8, %bb.t ], [ 9, %bb.v ], [ 10, %bb.x ], [ 11, %b2RecRdrCheck.exit.i.i1295.thread ], [ 12, %bb.aa ], [ 17, %bb.af ], [ 32, %bb.ah ], [ 33, %bb.aj ], [ 34, %bb.al ], [ 35, %bb.an ], [ 36, %bb.ap ], [ 41, %bb.az ], [ 45, %bb.bh ], [ 46, %bb.bj ], [ 47, %bb.bl ], [ 48, %bb.bn ], [ 49, %bb.bp ], [ 51, %bb.bt ], [ 53, %bb.bx ], [ 54, %bb.bz ], [ 55, %bb.cb ], [ 56, %bb.cd ], [ 61, %bb.cn ], [ 81, %bb.dg ], [ 82, %bb.di ], [ 83, %bb.dk ], [ 113, %bb.es ], [ 144, %bb.ew ], [ 145, %bb.ey ], [ 146, %bb.fa ], [ 148, %bb.fe ], [ 149, %bb.fg ], [ 150, %bb.fi ], [ 151, %bb.fk ], [ 153, %bb.fp ], [ 155, %bb.ft ], [ 156, %bb.fv ], [ 157, %bb.fx ], [ 159, %bb.gb ], [ 161, %bb.gf ], [ 162, %bb.gh ], [ 165, %bb.gp ], [ 166, %bb.gr ], [ 167, %bb.gt ], [ 168, %bb.gv ], [ 169, %bb.gx ], [ 170, %bb.gz ], [ 171, %bb.hb ], [ 172, %bb.hd ], [ 173, %bb.hf ], [ 174, %bb.hh ], [ 176, %bb.hm ], [ 177, %bb.ho ], [ 179, %bb.ht ], [ 180, %bb.hv ], [ 181, %bb.hx ], [ 184, %bb.ie ], [ 185, %bb.ig ], [ 186, %bb.ii ], [ 188, %bb.im ], [ 190, %bb.iq ], [ 191, %bb.is ], [ 194, %bb.iz ], [ 195, %bb.jb ], [ 196, %bb.jd ], [ 198, %bb.jh ], [ 200, %bb.jl ], [ 201, %bb.jn ], [ 203, %bb.js ], [ 204, %bb.ju ], [ 205, %bb.jw ], [ 206, %bb.jy ], [ 209, %bb.kf ], [ 210, %bb.kh ], [ 212, %bb.kl ], [ 214, %bb.kp ], [ 215, %bb.kr ], [ 241, %b2RecRdrCheck.exit.i2286.thread ], [ 1, %b2RecRdrCheck.exit.thread.i.i ], [ 213, %bb.kn ], [ 37, %bb.ar ], [ 38, %bb.at ], [ 39, %bb.av ], [ 40, %bb.ax ], [ 42, %bb.bb ], [ 43, %bb.bd ], [ 44, %bb.bf ], [ 50, %bb.br ], [ 52, %bb.bv ], [ 57, %bb.cf ], [ 58, %bb.ch ], [ 59, %bb.cj ], [ 60, %bb.cl ], [ 69, %bb.dc ], [ 80, %bb.de ], [ 86, %bb.ds ], [ 87, %bb.du ], [ 88, %bb.dw ], [ 89, %bb.dy ], [ 95, %bb.en ], [ 147, %bb.fc ], [ 154, %bb.fr ], [ 158, %bb.fz ], [ 160, %bb.gd ], [ 183, %bb.ic ], [ 187, %bb.ik ], [ 189, %bb.io ], [ 193, %bb.ix ], [ 197, %bb.jf ], [ 199, %bb.jj ], [ 208, %bb.kd ], [ 2, %b2RecRdrCheck.exit.thread.i.i1207 ], [ 3, %b2RecRdrCheck.exit.thread.i.i1218 ], [ 11, %b2RecRdrCheck.exit.thread.i.i1293 ], [ 34, %b2RecRdrCheck.exit.i.i1311 ], [ 36, %b2RecRdrCheck.exit.i.i1322 ], [ 37, %b2RecRdrCheck.exit.thread.i.i1335 ], [ 38, %b2RecRdrCheck.exit.i.i1347 ], [ 39, %b2RecRdrCheck.exit.i.i1357 ], [ 40, %b2RecRdrCheck.exit.thread.i.i1369 ], [ 42, %b2RecRdrCheck.exit.i.i1384 ], [ 43, %b2RecRdrCheck.exit.i.i1394 ], [ 44, %b2RecRdrCheck.exit.thread.i.i1406 ], [ 47, %b2RecRdrCheck.exit.i.i1420 ], [ 48, %b2RecRdrCheck.exit.i.i1427 ], [ 49, %b2RecRdrCheck.exit.i.i1434 ], [ 50, %b2RecRdrCheck.exit.i.i1445 ], [ 52, %b2RecRdrCheck.exit.i.i1458 ], [ 53, %b2RecRdrCheck.exit.i.i1464 ], [ 57, %b2RecRdrCheck.exit.i.i1484 ], [ 58, %b2RecRdrCheck.exit.i.i1494 ], [ 59, %b2RecRdrCheck.exit.i.i1504 ], [ 60, %b2RecRdrCheck.exit.i.i1514 ], [ 61, %b2RecRdrCheck.exit.i.i1520 ], [ 69, %b2RecRdrCheck.exit.i.i1552 ], [ 80, %b2RecRdrCheck.exit.thread.i.i1564 ], [ 81, %b2RecRdrCheck.exit.i.i1572 ], [ 82, %b2RecRdrCheck.exit.i.i1579 ], [ 83, %b2RecRdrCheck.exit.i1586 ], [ 86, %b2RecRdrCheck.exit.i.i1603 ], [ 87, %b2RecRdrCheck.exit.i.i1613 ], [ 88, %b2RecRdrCheck.exit.i.i1623 ], [ 89, %b2RecRdrCheck.exit.i.i1633 ], [ 95, %b2RecRdrCheck.exit.thread.i.i1698 ], [ 147, %b2RecRdrCheck.exit.i.i1730 ], [ 149, %b2RecRdrCheck.exit.thread.i.i1745 ], [ 150, %b2RecRdrCheck.exit.i.i1750 ], [ 151, %b2RecRdrCheck.exit.i.i1757 ], [ 153, %b2RecRdrCheck.exit.i.i1769 ], [ 154, %b2RecRdrCheck.exit.i.i1780 ], [ 155, %b2RecRdrCheck.exit.thread.i.i1792 ], [ 156, %b2RecRdrCheck.exit.i.i1797 ], [ 157, %b2RecRdrCheck.exit.i.i1804 ], [ 158, %b2RecRdrCheck.exit.i.i1815 ], [ 159, %b2RecRdrCheck.exit.thread.i.i1827 ], [ 160, %b2RecRdrCheck.exit.i.i1836 ], [ 161, %b2RecRdrCheck.exit.i.i1842 ], [ 162, %b2RecRdrCheck.exit.i.i1849 ], [ 166, %b2RecRdrCheck.exit.i.i1869 ], [ 167, %b2RecRdrCheck.exit.i.i1876 ], [ 168, %b2RecRdrCheck.exit.i.i1883 ], [ 169, %b2RecRdrCheck.exit.i.i1890 ], [ 170, %b2RecRdrCheck.exit.i.i1897 ], [ 171, %b2RecRdrCheck.exit.i.i1904 ], [ 172, %b2RecRdrCheck.exit.i.i1911 ], [ 173, %b2RecRdrCheck.exit.i.i1918 ], [ 174, %b2RecRdrCheck.exit.i.i1925 ], [ 179, %b2RecRdrCheck.exit.i.i1948 ], [ 180, %b2RecRdrCheck.exit.i.i1955 ], [ 181, %b2RecRdrCheck.exit.i.i1962 ], [ 183, %b2RecRdrCheck.exit.i.i1978 ], [ 184, %b2RecRdrCheck.exit.i.i1984 ], [ 185, %b2RecRdrCheck.exit.i.i1991 ], [ 186, %b2RecRdrCheck.exit.i.i1998 ], [ 187, %b2RecRdrCheck.exit.i.i2009 ], [ 188, %b2RecRdrCheck.exit.thread.i.i2021 ], [ 189, %b2RecRdrCheck.exit.i.i2030 ], [ 190, %b2RecRdrCheck.exit.i.i2036 ], [ 191, %b2RecRdrCheck.exit.i.i2043 ], [ 193, %b2RecRdrCheck.exit.i.i2059 ], [ 194, %b2RecRdrCheck.exit.i.i2065 ], [ 195, %b2RecRdrCheck.exit.i.i2072 ], [ 196, %b2RecRdrCheck.exit.i.i2079 ], [ 197, %b2RecRdrCheck.exit.i.i2090 ], [ 198, %b2RecRdrCheck.exit.thread.i.i2102 ], [ 199, %b2RecRdrCheck.exit.i.i2111 ], [ 200, %b2RecRdrCheck.exit.i.i2117 ], [ 201, %b2RecRdrCheck.exit.i.i2124 ], [ 203, %b2RecRdrCheck.exit.i.i2136 ], [ 204, %b2RecRdrCheck.exit.i.i2143 ], [ 205, %b2RecRdrCheck.exit.i.i2150 ], [ 206, %b2RecRdrCheck.exit.i.i2157 ], [ 208, %b2RecRdrCheck.exit.i.i2173 ], [ 209, %b2RecRdrCheck.exit.i.i2179 ], [ 210, %b2RecRdrCheck.exit.i.i2186 ], [ 211, %b2RecRdrCheck.exit.i.i2197 ], [ 212, %b2RecRdrCheck.exit.thread.i.i2209 ], [ 213, %b2RecRdrCheck.exit.i.i2218 ], [ 214, %b2RecRdrCheck.exit.i.i2224 ], [ 215, %b2RecRdrCheck.exit.i.i2231 ], [ 215, %b2RecRdrCheck.exit.thread.i.i2233 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define void @b2RecPlayer_Restart(ptr nofree noundef captures(none) initializes((96, 97)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load i32, ptr %i.d, align 8, !tbaa !84
  %i.f = load i32, ptr %i.a, align 8
  %i.g = tail call zeroext i1 @b2World_Restore(i32 %i.f, ptr noundef %i.c, i32 noundef %i.e) #19
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.h, align 8, !tbaa !68
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.j, ptr %i.k, align 4, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.l, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 0, ptr %i.m, align 1, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.n, align 8, !tbaa !100
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 -1, ptr %i.o, align 4, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.p, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.q, align 8, !tbaa !98
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 0, ptr %i.r, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.t = load i32, ptr %i.s, align 8, !tbaa !77   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.t, ptr %i.u, align 8, !tbaa !85
  %i.v = icmp sgt i32 %i.t, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !86
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76
  %i.aa = shl nuw nsw i32 %i.t, 3
  %i.ab = zext nneg i32 %i.aa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.x, ptr align 4 %i.z, i64 %i.ab, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

declare zeroext i1 @b2World_Restore(i32, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @b2RecPlayer_GetWorldId(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload, %bb.b ], [ 0, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @b2RecPlayer_GetFrame(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define void @b2RecPlayer_SeekFrame(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0) ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load i32, ptr %i.b, align 8, !tbaa !90   ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.g = icmp eq i32 %i.c, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.f

._crit_edge.unr-lcssa:                            ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.02631.epil.init = phi ptr [ null, %.lr.ph ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 4 uses
  %lcmp.mod47 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %indvars.iv.epil.init ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !101  ; 2 uses
  %i.k = icmp slt i32 %i.j, %spec.store.select
  br i1 %i.k, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.epil.preheader
  %i.l = icmp eq ptr %.02631.epil.init, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.02631.epil.init, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !101
  %i.o = icmp sgt i32 %i.j, %i.n
  br i1 %i.o, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.d, %bb.e, %._crit_edge.unr-lcssa
  %.1.lcssa = phi ptr [ %.1.1, %._crit_edge.unr-lcssa ], [ %i.h, %bb.e ], [ %.02631.epil.init, %bb.d ], [ %.02631.epil.init, %.epil.preheader ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !100  ; 2 uses
  %i.r = icmp slt i32 %spec.store.select, %i.q
  %.not30 = icmp eq ptr %.1.lcssa, null           ; 2 uses
  br i1 %i.r, label %bb.o, label %bb.t

._crit_edge.thread:                               ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !100
  %i.u = icmp slt i32 %spec.store.select, %i.t
  br i1 %i.u, label %.thread, label %b2RecPlayer_Restart.exit

bb.f:                                             ; preds = %bb.n, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.n ] ; 3 uses
  %.02631 = phi ptr [ null, %.lr.ph.new ], [ %.1.1, %bb.n ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.n ]
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !101  ; 2 uses
  %i.y = icmp slt i32 %i.x, %spec.store.select
  br i1 %i.y, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.z = icmp eq ptr %.02631, null
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.02631, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !101
  %i.ac = icmp sgt i32 %i.x, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.j
end_hunk_3
