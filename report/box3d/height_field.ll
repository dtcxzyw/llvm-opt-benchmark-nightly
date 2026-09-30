Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/height_field?download=true
inline.NumInlined: 203
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b3Transform = type { %struct.b3Vec3, %struct.b3Quat }
%struct.b3Vec3 = type { float, float, float }
%struct.b3Quat = type { %struct.b3Vec3, float }
%struct.b3Triangle = type { [3 x %struct.b3Vec3], i32, i32, i32, i32 }
%struct.b3AABB = type { %struct.b3Vec3, %struct.b3Vec3 }
%struct.b3CastOutput = type { %struct.b3Vec3, %struct.b3Vec3, float, i32, i32, i32, i32, i8 }
%struct.b3ShapeCastInput = type { %struct.b3ShapeProxy, %struct.b3Vec3, float, i8 }
%struct.b3ShapeProxy = type { ptr, i32, float }
%struct.b3ShapeCastPairInput = type { %struct.b3ShapeProxy, %struct.b3ShapeProxy, %struct.b3Transform, %struct.b3Vec3, float, i8 }
%struct.b3DistanceInput = type { %struct.b3ShapeProxy, %struct.b3ShapeProxy, %struct.b3Transform, i8 }
%struct.b3SimplexCache = type { float, i16, [4 x i8], [4 x i8] }
%struct.b3DistanceOutput = type { %struct.b3Vec3, %struct.b3Vec3, %struct.b3Vec3, float, i32, i32 }
%struct.b3HeightFieldDef = type { ptr, ptr, %struct.b3Vec3, i32, i32, float, float, i8 }

@b3Transform_identity = internal unnamed_addr constant %struct.b3Transform { %struct.b3Vec3 zeroinitializer, %struct.b3Quat { %struct.b3Vec3 zeroinitializer, float 1.000000e+00 } }, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%.9f %.9f %.9f\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%.9f %.9f\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%.9f\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%f %f %f\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%f %f\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%f\00", align 1

; Function Attrs: nounwind uwtable
define noundef ptr @b3CreateHeightField(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16   ; 4 uses
  %i.e = mul nsw i32 %i.d, %i.b                   ; 5 uses
  %i.f = add nsw i32 %i.b, -1                     ; 3 uses
  %i.g = add nsw i32 %i.d, -1                     ; 3 uses
  %i.h = mul nsw i32 %i.g, %i.f                   ; 6 uses
  %i.i = shl nsw i32 %i.h, 1
  %i.j = sext i32 %i.e to i64                     ; 3 uses
  %i.k = shl nsw i64 %i.j, 1
  %i.l = add nsw i64 %i.k, 6
  %i.m = and i64 %i.l, -8
  %i.n = add nsw i64 %i.m, 96                     ; 3 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = sext i32 %i.h to i64
  %i.q = add nsw i64 %i.p, 7
  %i.r = and i64 %i.q, -8
  %i.s = add nsw i64 %i.n, %i.r                   ; 3 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = sext i32 %i.i to i64
  %i.v = add nsw i64 %i.u, 6
  %i.w = and i64 %i.v, -8
  %i.x = add nsw i64 %i.s, %i.w                   ; 3 uses
  %i.y = tail call ptr @b3Alloc(i64 noundef %i.x) #14 ; 22 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.x, i1 false)
  store i64 -8196016980499085064, ptr %i.y, align 8, !tbaa !67
  %i.z = trunc i64 %i.x to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, ptr noundef nonnull align 8 dereferenceable(12) %i.ac, i64 12, i1 false), !tbaa.struct !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 68 ; 2 uses
  store i32 %i.b, ptr %i.ad, align 4, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store i32 %i.d, ptr %i.ae, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 76
  store i32 96, ptr %i.af, align 4, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  store i32 %i.o, ptr %i.ag, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 84
  store i32 %i.t, ptr %i.ah, align 4, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !28, !range !29, !noundef !30
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store i8 %i.aj, ptr %i.ak, align 8, !tbaa !31
  %i.al = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.am = add nsw i64 %i.al, 96
  %i.an = inttoptr i64 %i.am to ptr               ; 5 uses
  %sext950 = shl i64 %i.n, 32
  %i.ao = ashr exact i64 %sext950, 32
  %i.ap = add nsw i64 %i.ao, %i.al
  %i.aq = inttoptr i64 %i.ap to ptr               ; 9 uses
  %sext951 = shl i64 %i.s, 32
  %i.ar = ashr exact i64 %sext951, 32
  %i.as = add nsw i64 %i.ar, %i.al
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load ptr, ptr %0, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 44 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ay = load <2 x float>, ptr %i.av, align 4, !tbaa !21 ; 3 uses
  store <2 x float> %i.ay, ptr %i.aw, align 4, !tbaa !21
  %shift = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.ay
  %i.az = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ba = tail call float @b3GetLengthUnitsPerMeter() #14
  %i.bb = fmul float %i.ba, 5.000000e-03          ; 2 uses
  %i.bc = fcmp ogt float %i.az, %i.bb
  %i.bd = select i1 %i.bc, float %i.az, float %i.bb
  %i.be = fdiv float %i.bd, 6.553500e+04          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 52 ; 5 uses
  store float %i.be, ptr %i.bf, align 4, !tbaa !33
  %i.bg = load float, ptr %i.ax, align 8, !tbaa !68 ; 4 uses
  %i.bh = load float, ptr %i.aw, align 4, !tbaa !34 ; 5 uses
  %i.bi = fdiv float 1.000000e+00, %i.be
  %i.bj = icmp sgt i32 %i.e, 0
  br i1 %i.bj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 6 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.a
  %i.bk = shl nsw i64 %i.j, 2                     ; 2 uses
  %i.bl = tail call ptr @b3Alloc(i64 noundef %i.bk) #14
  br label %._crit_edge1335

.lr.ph1334.preheader:                             ; preds = %.lr.ph
  %i.bm = shl nuw nsw i64 %i.j, 2                 ; 4 uses
  %i.bn = tail call ptr @b3Alloc(i64 noundef %i.bm) #14 ; 9 uses
  %wide.trip.count1356 = zext nneg i32 %i.e to i64
  %min.iters.check = icmp ult i32 %i.e, 8
  br i1 %min.iters.check, label %.lr.ph1334.preheader1443, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1334.preheader
  %i.bo = shl nuw nsw i64 %wide.trip.count, 2
  %i.bp = getelementptr i8, ptr %i.bn, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.y, i64 56
  %bound0 = icmp ult ptr %i.bn, %i.bq
  %bound1 = icmp ult ptr %i.aw, %i.bp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph1334.preheader1443, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %i.br = load float, ptr %i.aw, align 4, !tbaa !34, !alias.scope !69
  %broadcast.splatinsert1419 = insertelement <4 x float> poison, float %i.br, i64 0
  %broadcast.splat1420 = shufflevector <4 x float> %broadcast.splatinsert1419, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bs = load float, ptr %i.bf, align 4, !tbaa !33, !alias.scope !69
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bs, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %wide.load = load <4 x i16>, ptr %i.bt, align 2, !tbaa !36
  %wide.load1418 = load <4 x i16>, ptr %i.bu, align 2, !tbaa !36
  %i.bv = uitofp <4 x i16> %wide.load to <4 x float>
  %i.bw = uitofp <4 x i16> %wide.load1418 to <4 x float>
  %i.bx = fmul <4 x float> %broadcast.splat, %i.bv
  %i.by = fmul <4 x float> %broadcast.splat, %i.bw
  %i.bz = fadd <4 x float> %broadcast.splat1420, %i.bx
  %i.ca = fadd <4 x float> %broadcast.splat1420, %i.by
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store <4 x float> %i.bz, ptr %i.cb, align 4, !tbaa !21, !alias.scope !70, !noalias !69
  store <4 x float> %i.ca, ptr %i.cc, align 4, !tbaa !21, !alias.scope !70, !noalias !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge1335, label %.lr.ph1334.preheader1443

.lr.ph1334.preheader1443:                         ; preds = %vector.memcheck, %.lr.ph1334.preheader, %middle.block
  %indvars.iv1353.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph1334.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1334.prol.loopexit, label %.lr.ph1334.prol

.lr.ph1334.prol:                                  ; preds = %.lr.ph1334.preheader1443
  %i.ce = load float, ptr %i.aw, align 4, !tbaa !34
  %i.cf = load float, ptr %i.bf, align 4, !tbaa !33
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv1353.ph
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !36
  %i.ci = uitofp i16 %i.ch to float
  %i.cj = fmul float %i.cf, %i.ci
  %i.ck = fadd float %i.ce, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv1353.ph
  store float %i.ck, ptr %i.cl, align 4, !tbaa !21
  %indvars.iv.next1354.prol = or disjoint i64 %indvars.iv1353.ph, 1
  br label %.lr.ph1334.prol.loopexit

.lr.ph1334.prol.loopexit:                         ; preds = %.lr.ph1334.prol, %.lr.ph1334.preheader1443
  %indvars.iv1353.unr = phi i64 [ %indvars.iv1353.ph, %.lr.ph1334.preheader1443 ], [ %indvars.iv.next1354.prol, %.lr.ph1334.prol ]
  %i.cm = add nsw i64 %wide.trip.count, -1
  %i.cn = icmp eq i64 %indvars.iv1353.ph, %i.cm
  br i1 %i.cn, label %._crit_edge1335, label %.lr.ph1334

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.01330 = phi float [ %i.bg, %.lr.ph.preheader ], [ %i.db, %.lr.ph ] ; 2 uses
  %.09261329 = phi float [ %i.bh, %.lr.ph.preheader ], [ %i.dd, %.lr.ph ] ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  %i.cp = load float, ptr %i.co, align 4, !tbaa !21 ; 3 uses
  %i.cq = fcmp olt float %i.cp, %i.bh
  %i.cr = fcmp olt float %i.bg, %i.cp
  %i.cs = select i1 %i.cr, float %i.bg, float %i.cp
  %i.ct = select i1 %i.cq, float %i.bh, float %i.cs ; 5 uses
  %i.cu = fsub float %i.ct, %i.bh
  %i.cv = fmul float %i.bi, %i.cu                 ; 2 uses
  %i.cw = fcmp olt float %i.cv, 6.553500e+04
  %i.cx = select i1 %i.cw, float %i.cv, float 6.553500e+04
  %i.cy = fptoui float %i.cx to i16
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !36
  %i.da = fcmp olt float %.01330, %i.ct
  %i.db = select i1 %i.da, float %.01330, float %i.ct ; 4 uses
  %i.dc = fcmp ogt float %.09261329, %i.ct
  %i.dd = select i1 %i.dc, float %.09261329, float %i.ct ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph1334.preheader, label %.lr.ph, !llvm.loop !61

._crit_edge1335:                                  ; preds = %.lr.ph1334.prol.loopexit, %.lr.ph1334, %middle.block, %._crit_edge
  %i.de = phi ptr [ %i.bl, %._crit_edge ], [ %i.bn, %middle.block ], [ %i.bn, %.lr.ph1334 ], [ %i.bn, %.lr.ph1334.prol.loopexit ] ; 8 uses
  %i.df = phi i64 [ %i.bk, %._crit_edge ], [ %i.bm, %middle.block ], [ %i.bm, %.lr.ph1334 ], [ %i.bm, %.lr.ph1334.prol.loopexit ]
  %.0.lcssa1395 = phi float [ %i.bg, %._crit_edge ], [ %i.db, %middle.block ], [ %i.db, %.lr.ph1334 ], [ %i.db, %.lr.ph1334.prol.loopexit ]
  %.0926.lcssa1393 = phi float [ %i.bh, %._crit_edge ], [ %i.dd, %middle.block ], [ %i.dd, %.lr.ph1334 ], [ %i.dd, %.lr.ph1334.prol.loopexit ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %1 = load ptr, ptr %i.dg, align 8, !tbaa !40
  %.not = icmp eq ptr %1, null
  %i.dh = icmp sgt i32 %i.h, 0                    ; 2 uses
  br i1 %.not, label %.preheader1325, label %.preheader1326

.preheader1326:                                   ; preds = %._crit_edge1335
  br i1 %i.dh, label %.lr.ph1337.preheader, label %.loopexit

.lr.ph1337.preheader:                             ; preds = %.preheader1326
  %wide.trip.count1361 = zext nneg i32 %i.h to i64 ; 2 uses
  %xtraiter1445 = and i64 %wide.trip.count1361, 3 ; 3 uses
  %i.di = icmp ult i32 %i.h, 4
  br i1 %i.di, label %.lr.ph1337.epil.preheader, label %.lr.ph1337.preheader.new

.lr.ph1337.preheader.new:                         ; preds = %.lr.ph1337.preheader
  %unroll_iter = and i64 %wide.trip.count1361, 2147483644
  br label %.lr.ph1337

.preheader1325:                                   ; preds = %._crit_edge1335
  br i1 %i.dh, label %.lr.ph1339.preheader, label %.loopexit

.lr.ph1339.preheader:                             ; preds = %.preheader1325
  %2 = zext nneg i32 %i.h to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 0, i64 %2, i1 false), !tbaa !41
  br label %.loopexit

.lr.ph1334:                                       ; preds = %.lr.ph1334.prol.loopexit, %.lr.ph1334
  %indvars.iv1353 = phi i64 [ %indvars.iv.next1354.1, %.lr.ph1334 ], [ %indvars.iv1353.unr, %.lr.ph1334.prol.loopexit ] ; 4 uses
  %i.dj = load float, ptr %i.aw, align 4, !tbaa !34
  %i.dk = load float, ptr %i.bf, align 4, !tbaa !33
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv1353
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !36
  %i.dn = uitofp i16 %i.dm to float
  %i.do = fmul float %i.dk, %i.dn
  %i.dp = fadd float %i.dj, %i.do
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv1353
  store float %i.dp, ptr %i.dq, align 4, !tbaa !21
  %indvars.iv.next1354 = add nuw nsw i64 %indvars.iv1353, 1 ; 2 uses
  %i.dr = load float, ptr %i.aw, align 4, !tbaa !34
  %i.ds = load float, ptr %i.bf, align 4, !tbaa !33
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.next1354
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !36
  %i.dv = uitofp i16 %i.du to float
  %i.dw = fmul float %i.ds, %i.dv
  %i.dx = fadd float %i.dr, %i.dw
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next1354
  store float %i.dx, ptr %i.dy, align 4, !tbaa !21
  %indvars.iv.next1354.1 = add nuw nsw i64 %indvars.iv1353, 2 ; 2 uses
  %exitcond1357.not.1 = icmp eq i64 %indvars.iv.next1354.1, %wide.trip.count1356
  br i1 %exitcond1357.not.1, label %._crit_edge1335, label %.lr.ph1334, !llvm.loop !62

.lr.ph1337:                                       ; preds = %.lr.ph1337, %.lr.ph1337.preheader.new
  %indvars.iv1358 = phi i64 [ 0, %.lr.ph1337.preheader.new ], [ %indvars.iv.next1359.3, %.lr.ph1337 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph1337.preheader.new ], [ %niter.next.3, %.lr.ph1337 ]
  %i.dz = load ptr, ptr %i.dg, align 8, !tbaa !40
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv1358
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !41
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv1358
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !41
  %indvars.iv.next1359 = or disjoint i64 %indvars.iv1358, 1 ; 2 uses
  %i.ed = load ptr, ptr %i.dg, align 8, !tbaa !40
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next1359
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !41
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.next1359
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !41
  %indvars.iv.next1359.1 = or disjoint i64 %indvars.iv1358, 2 ; 2 uses
  %i.eh = load ptr, ptr %i.dg, align 8, !tbaa !40
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.next1359.1
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !41
  %i.ek = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.next1359.1
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !41
  %indvars.iv.next1359.2 = or disjoint i64 %indvars.iv1358, 3 ; 2 uses
  %i.el = load ptr, ptr %i.dg, align 8, !tbaa !40
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %indvars.iv.next1359.2
  %i.en = load i8, ptr %i.em, align 1, !tbaa !41
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.next1359.2
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !41
  %indvars.iv.next1359.3 = add nuw nsw i64 %indvars.iv1358, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph1337, !llvm.loop !63

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph1337
  %lcmp.mod1446.not = icmp eq i64 %xtraiter1445, 0
  br i1 %lcmp.mod1446.not, label %.loopexit, label %.lr.ph1337.epil.preheader

.lr.ph1337.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph1337.preheader
  %indvars.iv1358.epil.init = phi i64 [ 0, %.lr.ph1337.preheader ], [ %indvars.iv.next1359.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod1447 = icmp ne i64 %xtraiter1445, 0
  tail call void @llvm.assume(i1 %lcmp.mod1447)
  br label %.lr.ph1337.epil

.lr.ph1337.epil:                                  ; preds = %.lr.ph1337.epil, %.lr.ph1337.epil.preheader
  %indvars.iv1358.epil = phi i64 [ %indvars.iv1358.epil.init, %.lr.ph1337.epil.preheader ], [ %indvars.iv.next1359.epil, %.lr.ph1337.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1337.epil.preheader ], [ %epil.iter.next, %.lr.ph1337.epil ]
  %i.ep = load ptr, ptr %i.dg, align 8, !tbaa !40
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %indvars.iv1358.epil
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !41
  %i.es = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv1358.epil
  store i8 %i.er, ptr %i.es, align 1, !tbaa !41
  %indvars.iv.next1359.epil = add nuw nsw i64 %indvars.iv1358.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1445
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph1337.epil, !llvm.loop !64

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph1337.epil, %.lr.ph1339.preheader, %.preheader1326, %.preheader1325
  %i.et = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  store float 0.000000e+00, ptr %i.et, align 4, !tbaa !21
  %.sroa.2769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ev = load float, ptr %i.eu, align 8, !tbaa !72 ; 5 uses
  %i.ew = load <2 x i32>, ptr %i.ad, align 4, !tbaa !42
  %i.ex = add nsw <2 x i32> %i.ew, splat (i32 -1)
  %i.ey = sitofp <2 x i32> %i.ex to <2 x float>   ; 2 uses
  %i.ez = extractelement <2 x float> %i.ey, i64 1
  %i.fa = fmul float %i.ev, %i.ez
  %i.fb = load <2 x float>, ptr %i.ab, align 8, !tbaa !21
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fd = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.fc, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %i.fe = shufflevector <4 x float> %i.fd, <4 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ff = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %.0.lcssa1395, i64 0
  %i.fg = insertelement <4 x float> %i.ff, float %.0926.lcssa1393, i64 3
  %i.fh = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <4 x float> %i.fg, <4 x float> %i.fh, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.fj = fmul <4 x float> %i.fe, %i.fi
  store <4 x float> %i.fj, ptr %.sroa.2769.0..sroa_idx, align 8, !tbaa !21
  %.sroa.3767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store float %i.fa, ptr %.sroa.3767.0..sroa_idx, align 8, !tbaa !21
  %i.fk = icmp sgt i32 %i.d, 1
  br i1 %i.fk, label %.preheader.lr.ph, label %._crit_edge1348.split

.preheader.lr.ph:                                 ; preds = %.loopexit
  %.sroa.0737.0.copyload = load <2 x float>, ptr %i.ab, align 8, !tbaa !21 ; 5 uses
  %i.fl = icmp sgt i32 %i.b, 1
  %.sroa.06.0.vec.extract.i = extractelement <2 x float> %.sroa.0737.0.copyload, i64 0 ; 2 uses
  %.sroa.06.4.vec.extract.i = extractelement <2 x float> %.sroa.0737.0.copyload, i64 1 ; 6 uses
  br i1 %i.fl, label %.preheader.preheader, label %._crit_edge1348.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.fm = zext nneg i32 %i.f to i64               ; 4 uses
  %i.fn = zext nneg i32 %i.b to i64               ; 4 uses
  %i.fo = zext nneg i32 %i.g to i64
  %wide.trip.count1378 = zext nneg i32 %i.g to i64
  %wide.trip.count1373 = zext i32 %i.f to i64
  %i.fp = shufflevector <2 x float> %.sroa.0737.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge1344
  %indvars.iv1375 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next1376, %._crit_edge1344 ] ; 7 uses
  %.09311347 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next1367, %._crit_edge1344 ]
  %i.fq = mul nuw nsw i64 %indvars.iv1375, %i.fm
  %i.fr = mul nuw nsw i64 %indvars.iv1375, %i.fn  ; 2 uses
  %indvars.iv.next1376 = add nuw nsw i64 %indvars.iv1375, 1 ; 6 uses
  %i.fs = mul nuw nsw i64 %indvars.iv.next1376, %i.fn ; 3 uses
  %i.ft = trunc nuw nsw i64 %indvars.iv1375 to i32
  %i.fu = uitofp nneg i32 %i.ft to float
  %i.fv = trunc nuw nsw i64 %indvars.iv.next1376 to i32
  %i.fw = uitofp nneg i32 %i.fv to float
  %i.fx = fmul float %i.ev, %i.fu                 ; 7 uses
  %i.fy = fmul float %i.ev, %i.fw                 ; 7 uses
  %i.fz = fsub float %i.fy, %i.fx                 ; 4 uses
  %i.ga = fsub float %i.fx, %i.fx                 ; 6 uses
  %i.gb = fsub float %i.fx, %i.fy                 ; 4 uses
  %i.gc = fsub float %i.fy, %i.fy                 ; 6 uses
  %i.gd = add nsw i64 %indvars.iv1375, -1         ; 3 uses
  %.not952 = icmp eq i64 %indvars.iv1375, 0
  %i.ge = mul nuw nsw i64 %i.gd, %i.fm
  %i.gf = mul nuw nsw i64 %i.gd, %i.fn
  %i.gg = trunc nsw i64 %i.gd to i32
  %i.gh = sitofp i32 %i.gg to float
  %i.gi = fmul float %i.ev, %i.gh                 ; 2 uses
  %i.gj = fsub float %i.gi, %i.fx                 ; 2 uses
  %i.gk = icmp samesign ult i64 %indvars.iv.next1376, %i.fo
  %i.gl = mul nuw nsw i64 %indvars.iv.next1376, %i.fm
  %i.gm = add nuw nsw i64 %indvars.iv1375, 2      ; 2 uses
  %i.gn = mul nuw nsw i64 %i.gm, %i.fn
  %i.go = trunc nuw nsw i64 %i.gm to i32
  %i.gp = uitofp nneg i32 %i.go to float
  %i.gq = fmul float %i.ev, %i.gp                 ; 2 uses
  %i.gr = fsub float %i.gq, %i.fy                 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.aq, i64 %i.fq
  %invariant.gep1398 = getelementptr [4 x i8], ptr %i.de, i64 %i.fr
  %invariant.gep1400 = getelementptr [4 x i8], ptr %i.de, i64 %i.fs
  %invariant.gep1402 = getelementptr i8, ptr %i.aq, i64 %i.ge
  %invariant.gep1404 = getelementptr [4 x i8], ptr %i.de, i64 %i.gf
  %invariant.gep1406 = getelementptr i8, ptr %i.aq, i64 %i.gl
  %invariant.gep1408 = getelementptr [4 x i8], ptr %i.de, i64 %i.gn
  %invariant.gep1410 = getelementptr [4 x i8], ptr %i.de, i64 %i.fs
  %invariant.gep1412 = getelementptr [4 x i8], ptr %i.de, i64 %i.fr
  %invariant.gep1414 = getelementptr [4 x i8], ptr %i.de, i64 %i.fs
  br label %bb.b

._crit_edge1348.split:                            ; preds = %._crit_edge1344, %.preheader.lr.ph, %.loopexit
  tail call void @b3Free(ptr noundef %i.de, i64 noundef %i.df) #14
  %i.gs = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store i64 0, ptr %i.gs, align 8, !tbaa !73
  %i.gt = load i32, ptr %i.aa, align 8, !tbaa !20
  %i.gu = tail call i64 @b3Hash64NonZero(ptr noundef nonnull %i.y, i32 noundef %i.gt) #14
  store i64 %i.gu, ptr %i.gs, align 8, !tbaa !73
  ret ptr %i.y

._crit_edge1344:                                  ; preds = %bb.v
  %exitcond1379.not = icmp eq i64 %indvars.iv.next1376, %wide.trip.count1378
  br i1 %exitcond1379.not, label %._crit_edge1348.split, label %.preheader, !llvm.loop !65

bb.b:                                             ; preds = %.preheader, %bb.v
  %indvars.iv1368 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next1369.pre-phi, %bb.v ] ; 13 uses
  %indvars.iv1366 = phi i64 [ %.09311347, %.preheader ], [ %indvars.iv.next1367, %bb.v ] ; 2 uses
  %indvars.iv.next1367 = add nsw i64 %indvars.iv1366, 2 ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv1368 ; 3 uses
  %i.gv = load i8, ptr %gep, align 1, !tbaa !41
  %i.gw = icmp eq i8 %i.gv, -1
  br i1 %i.gw, label %._crit_edge1380, label %bb.c

._crit_edge1380:                                  ; preds = %bb.b
  %.pre = add nuw nsw i64 %indvars.iv1368, 1
  br label %bb.v

bb.c:                                             ; preds = %bb.b
  %gep1399 = getelementptr [4 x i8], ptr %invariant.gep1398, i64 %indvars.iv1368
  %gep1401 = getelementptr [4 x i8], ptr %invariant.gep1400, i64 %indvars.iv1368 ; 2 uses
  %i.gx = load float, ptr %gep1401, align 4, !tbaa !21
  %i.gy = getelementptr i8, ptr %gep1401, i64 4
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !21
  %i.ha = trunc nuw nsw i64 %indvars.iv1368 to i32
  %i.hb = uitofp nneg i32 %i.ha to float
  %i.hc = add nuw nsw i64 %indvars.iv1368, 1      ; 5 uses
  %i.hd = trunc nuw nsw i64 %i.hc to i32
  %i.he = uitofp nneg i32 %i.hd to float
  %i.hf = fmul float %.sroa.06.0.vec.extract.i, %i.hb ; 7 uses
  %i.hg = fmul float %.sroa.06.4.vec.extract.i, %i.gx ; 6 uses
  %i.hh = fmul float %.sroa.06.0.vec.extract.i, %i.he ; 7 uses
  %i.hi = load <2 x float>, ptr %gep1399, align 4, !tbaa !21
  %i.hj = fmul <2 x float> %i.fp, %i.hi           ; 2 uses
  %i.hk = extractelement <2 x float> %i.hj, i64 0 ; 5 uses
  %i.hl = fsub float %i.hf, %i.hf                 ; 6 uses
  %i.hm = fsub float %i.hg, %i.hk                 ; 2 uses
  %i.hn = fsub float %i.hh, %i.hf                 ; 4 uses
  %i.ho = extractelement <2 x float> %i.hj, i64 1 ; 4 uses
  %i.hp = fsub float %i.ho, %i.hk                 ; 2 uses
  %i.hq = fmul float %i.ga, %i.hm
  %i.hr = fmul float %i.fz, %i.hp
  %i.hs = fsub float %i.hq, %i.hr                 ; 3 uses
  %i.ht = fmul float %i.fz, %i.hn
  %i.hu = fmul float %i.ga, %i.hl
  %i.hv = fsub float %i.ht, %i.hu                 ; 3 uses
  %i.hw = fmul float %i.hl, %i.hp
  %i.hx = fmul float %i.hn, %i.hm
  %i.hy = fsub float %i.hw, %i.hx                 ; 3 uses
  %i.hz = fmul float %i.hs, %i.hs
  %i.ia = fmul float %i.hv, %i.hv
  %i.ib = fadd float %i.ia, %i.hz
  %i.ic = fmul float %i.hy, %i.hy
  %i.id = fadd float %i.ic, %i.ib                 ; 2 uses
  %i.ie = fcmp ogt float %i.id, f0x057A0000
  br i1 %i.ie, label %bb.d, label %b3MakePlaneFromPoints.exit

bb.d:                                             ; preds = %bb.c
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.id)
  %i.if = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.ig = fmul float %i.hs, %i.if
  %.sroa.018.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.ih = fmul float %i.hv, %i.if
  %.sroa.018.4.vec.insert.i.i = insertelement <2 x float> %.sroa.018.0.vec.insert.i.i, float %i.ih, i64 1
  %i.ii = fmul float %i.hy, %i.if
  br label %b3MakePlaneFromPoints.exit

b3MakePlaneFromPoints.exit:                       ; preds = %bb.c, %bb.d
  %.sroa.018.0.i.i = phi <2 x float> [ %.sroa.018.4.vec.insert.i.i, %bb.d ], [ zeroinitializer, %bb.c ] ; 6 uses
  %.sroa.5.0.i.i = phi float [ %i.ii, %bb.d ], [ 0.000000e+00, %bb.c ] ; 6 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.018.0.i.i, i64 0 ; 2 uses
  %i.ij = fmul float %i.hf, %.sroa.04.0.vec.extract.i.i
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.018.0.i.i, i64 1 ; 3 uses
  %i.ik = fmul float %i.hk, %.sroa.04.4.vec.extract.i.i
  %i.il = fadd float %i.ij, %i.ik
  %i.im = fmul float %i.fx, %.sroa.5.0.i.i
  %i.in = fadd float %i.im, %i.il                 ; 3 uses
  %i.io = fmul float %.sroa.06.4.vec.extract.i, %i.gz ; 5 uses
  %i.ip = fsub float %i.hh, %i.hh                 ; 6 uses
  %i.iq = fsub float %i.ho, %i.io                 ; 2 uses
  %i.ir = fsub float %i.hf, %i.hh                 ; 4 uses
  %i.is = fsub float %i.hg, %i.io                 ; 2 uses
  %i.it = fmul float %i.gc, %i.iq
  %i.iu = fmul float %i.gb, %i.is
  %i.iv = fsub float %i.it, %i.iu                 ; 3 uses
  %i.iw = fmul float %i.gb, %i.ir
  %i.ix = fmul float %i.gc, %i.ip
  %i.iy = fsub float %i.iw, %i.ix                 ; 3 uses
  %i.iz = fmul float %i.ip, %i.is
  %i.ja = fmul float %i.ir, %i.iq
  %i.jb = fsub float %i.iz, %i.ja                 ; 3 uses
  %i.jc = fmul float %i.iv, %i.iv
  %i.jd = fmul float %i.iy, %i.iy
  %i.je = fadd float %i.jd, %i.jc
  %i.jf = fmul float %i.jb, %i.jb
  %i.jg = fadd float %i.jf, %i.je                 ; 2 uses
  %i.jh = fcmp ogt float %i.jg, f0x057A0000
  br i1 %i.jh, label %bb.e, label %b3MakePlaneFromPoints.exit1067

bb.e:                                             ; preds = %b3MakePlaneFromPoints.exit
  %sqrt.i1064 = tail call float @llvm.sqrt.f32(float %i.jg)
  %i.ji = fdiv float 1.000000e+00, %sqrt.i1064    ; 3 uses
  %i.jj = fmul float %i.iv, %i.ji
  %.sroa.018.0.vec.insert.i.i1065 = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.jk = fmul float %i.iy, %i.ji
  %.sroa.018.4.vec.insert.i.i1066 = insertelement <2 x float> %.sroa.018.0.vec.insert.i.i1065, float %i.jk, i64 1
end_hunk_0
