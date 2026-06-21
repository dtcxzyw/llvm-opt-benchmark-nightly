inline.NumInlined: 8
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.DtoaAllocator = type { %union.anon, ptr }
%union.anon = type { ptr, [1192 x i8] }

@.str.2 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 4 uses
  %i.b = lshr i64 %i.a, 52
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = and i32 %i.c, 2047                       ; 6 uses
  %i.e = lshr i64 %i.a, 62
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 2
  %i.h = sub nsw i32 1, %i.g                      ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ugt i32 %i.d, 1074
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %i.d, -1075
  %i.k = icmp samesign ult i32 %i.d, 1107
  %i.l = zext nneg i32 %i.j to i64
  %i.m = shl i64 %i.a, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = mul i32 %i.h, %i.n
  %i.p = select i1 %i.k, i32 %i.o, i32 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = and i64 %i.a, 4503599627370495
  %i.r = or disjoint i64 %i.q, 4503599627370496
  %i.s = icmp samesign ugt i32 %i.d, 1022
  %i.t = sub nuw nsw i32 1075, %i.d
  %i.u = zext nneg i32 %i.t to i64
  %i.v = lshr i64 %i.r, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = mul i32 %i.h, %i.w
  %i.y = select i1 %i.s, i32 %i.x, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.p, %bb.c ], [ %i.y, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i64 -9223372036854775808, 9223372036854775807) i64 @_ZN6hermes14numberToStringEdPcm(double noundef %0, ptr noundef %1, i64 %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %class.DtoaAllocator, align 8       ; 4 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %i.e = alloca [32 x i8], align 16               ; 15 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.g = call ptr @dtoa_alloc_init(ptr noundef nonnull align 8 dereferenceable(1208) %3, i32 noundef 1200) #7 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1200 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !7
  %i.i = fcmp uno double %0, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 5136718, ptr %1, align 1
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.j = fcmp oeq double %0, 0.000000e+00
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 48, ptr %1, align 1
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.k = fcmp oeq double %0, +inf
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %1, ptr noundef nonnull align 1 dereferenceable(9) @.str.2, i64 9, i1 false) #7
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.l = fcmp oeq double %0, -inf
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %1, ptr noundef nonnull align 1 dereferenceable(10) @.str.3, i64 10, i1 false) #7
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.m = call ptr @g_dtoa(ptr noundef %i.g, double noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7 ; 53 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !3
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.090 = phi ptr [ %i.o, %bb.j ], [ %1, %bb.i ]  ; 23 uses
  %.090200 = ptrtoaddr ptr %.090 to i64           ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.q = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.m to i64                 ; 8 uses
  %i.s = sub i64 %i.q, %i.r                       ; 13 uses
  %i.t = trunc i64 %i.s to i32                    ; 8 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !3    ; 13 uses
  %i.v = icmp sge i32 %i.u, %i.t
  %i.w = icmp slt i32 %i.u, 22
  %or.cond = and i1 %i.w, %i.v
  br i1 %or.cond, label %.preheader94, label %bb.l

.preheader94:                                     ; preds = %bb.k
  %i.x = icmp sgt i32 %i.t, 0
  br i1 %i.x, label %iter.check352, label %.preheader

iter.check352:                                    ; preds = %.preheader94
  %wide.trip.count176 = and i64 %i.s, 2147483647  ; 6 uses
  %min.iters.check336 = icmp samesign ult i64 %wide.trip.count176, 4
  %i.y = sub i64 %.090200, %i.r
  %diff.check334 = icmp ult i64 %i.y, 32
  %or.cond368 = select i1 %min.iters.check336, i1 true, i1 %diff.check334
  br i1 %or.cond368, label %.lr.ph135.preheader, label %vector.main.loop.iter.check337

vector.main.loop.iter.check337:                   ; preds = %iter.check352
  %min.iters.check338 = icmp samesign ult i64 %wide.trip.count176, 32
  br i1 %min.iters.check338, label %vec.epilog.ph356, label %vector.ph339

vector.ph339:                                     ; preds = %vector.main.loop.iter.check337
  %n.mod.vf340 = and i64 %i.s, 28
  %n.vec341 = and i64 %i.s, 2147483616            ; 5 uses
  %i.z = getelementptr i8, ptr %.090, i64 %n.vec341 ; 2 uses
  br label %vector.body342

vector.body342:                                   ; preds = %vector.body342, %vector.ph339
  %index343 = phi i64 [ 0, %vector.ph339 ], [ %index.next347, %vector.body342 ] ; 3 uses
  %next.gep344 = getelementptr i8, ptr %.090, i64 %index343 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %index343 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load345 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !11
  %wide.load346 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !11
  %i.ac = getelementptr i8, ptr %next.gep344, i64 16
  store <16 x i8> %wide.load345, ptr %next.gep344, align 1, !tbaa !11
  store <16 x i8> %wide.load346, ptr %i.ac, align 1, !tbaa !11
  %index.next347 = add nuw i64 %index343, 32      ; 2 uses
  %i.ad = icmp eq i64 %index.next347, %n.vec341
  br i1 %i.ad, label %middle.block348, label %vector.body342, !llvm.loop !14

middle.block348:                                  ; preds = %vector.body342
  %cmp.n349 = icmp eq i64 %wide.trip.count176, %n.vec341
  br i1 %cmp.n349, label %.preheader, label %vec.epilog.iter.check354

vec.epilog.iter.check354:                         ; preds = %middle.block348
  %min.epilog.iters.check355 = icmp eq i64 %n.mod.vf340, 0
  br i1 %min.epilog.iters.check355, label %.lr.ph135.preheader, label %vec.epilog.ph356, !prof !18

vec.epilog.ph356:                                 ; preds = %vector.main.loop.iter.check337, %vec.epilog.iter.check354
  %vec.epilog.resume.val350 = phi i64 [ %n.vec341, %vec.epilog.iter.check354 ], [ 0, %vector.main.loop.iter.check337 ]
  %n.vec358 = and i64 %i.s, 2147483644            ; 4 uses
  %i.ae = getelementptr i8, ptr %.090, i64 %n.vec358 ; 2 uses
  br label %vec.epilog.vector.body359

vec.epilog.vector.body359:                        ; preds = %vec.epilog.vector.body359, %vec.epilog.ph356
  %index360 = phi i64 [ %vec.epilog.resume.val350, %vec.epilog.ph356 ], [ %index.next363, %vec.epilog.vector.body359 ] ; 3 uses
  %next.gep361 = getelementptr i8, ptr %.090, i64 %index360
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 %index360
  %wide.load362 = load <4 x i8>, ptr %i.af, align 1, !tbaa !11
  store <4 x i8> %wide.load362, ptr %next.gep361, align 1, !tbaa !11
  %index.next363 = add nuw i64 %index360, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next363, %n.vec358
  br i1 %i.ag, label %vec.epilog.middle.block364, label %vec.epilog.vector.body359, !llvm.loop !19

vec.epilog.middle.block364:                       ; preds = %vec.epilog.vector.body359
  %cmp.n365 = icmp eq i64 %wide.trip.count176, %n.vec358
  br i1 %cmp.n365, label %.preheader, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %iter.check352, %vec.epilog.iter.check354, %vec.epilog.middle.block364
  %indvars.iv173.ph = phi i64 [ 0, %iter.check352 ], [ %n.vec341, %vec.epilog.iter.check354 ], [ %n.vec358, %vec.epilog.middle.block364 ] ; 4 uses
  %.1133.ph = phi ptr [ %.090, %iter.check352 ], [ %i.z, %vec.epilog.iter.check354 ], [ %i.ae, %vec.epilog.middle.block364 ] ; 2 uses
  %i.ah = sub i64 %i.s, %indvars.iv173.ph
  %xtraiter388 = and i64 %i.ah, 7                 ; 2 uses
  %lcmp.mod389.not = icmp eq i64 %xtraiter388, 0
  br i1 %lcmp.mod389.not, label %.lr.ph135.prol.loopexit, label %.lr.ph135.prol

.lr.ph135.prol:                                   ; preds = %.lr.ph135.preheader, %.lr.ph135.prol
  %indvars.iv173.prol = phi i64 [ %indvars.iv.next174.prol, %.lr.ph135.prol ], [ %indvars.iv173.ph, %.lr.ph135.preheader ] ; 2 uses
  %.1133.prol = phi ptr [ %i.ak, %.lr.ph135.prol ], [ %.1133.ph, %.lr.ph135.preheader ] ; 2 uses
  %prol.iter390 = phi i64 [ %prol.iter390.next, %.lr.ph135.prol ], [ 0, %.lr.ph135.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv173.prol
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %.1133.prol, i64 1 ; 3 uses
  store i8 %i.aj, ptr %.1133.prol, align 1, !tbaa !11
  %indvars.iv.next174.prol = add nuw nsw i64 %indvars.iv173.prol, 1 ; 2 uses
  %prol.iter390.next = add i64 %prol.iter390, 1   ; 2 uses
  %prol.iter390.cmp.not = icmp eq i64 %prol.iter390.next, %xtraiter388
  br i1 %prol.iter390.cmp.not, label %.lr.ph135.prol.loopexit, label %.lr.ph135.prol, !llvm.loop !20

.lr.ph135.prol.loopexit:                          ; preds = %.lr.ph135.prol, %.lr.ph135.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph135.preheader ], [ %i.ak, %.lr.ph135.prol ]
  %indvars.iv173.unr = phi i64 [ %indvars.iv173.ph, %.lr.ph135.preheader ], [ %indvars.iv.next174.prol, %.lr.ph135.prol ]
  %.1133.unr = phi ptr [ %.1133.ph, %.lr.ph135.preheader ], [ %i.ak, %.lr.ph135.prol ]
  %i.al = sub nsw i64 %indvars.iv173.ph, %wide.trip.count176
  %i.am = icmp ugt i64 %i.al, -8
  br i1 %i.am, label %.preheader, label %.lr.ph135

.preheader:                                       ; preds = %.lr.ph135.prol.loopexit, %.lr.ph135, %middle.block348, %vec.epilog.middle.block364, %.preheader94
  %.1.lcssa = phi ptr [ %.090, %.preheader94 ], [ %i.ae, %vec.epilog.middle.block364 ], [ %i.z, %middle.block348 ], [ %.lcssa.unr, %.lr.ph135.prol.loopexit ], [ %i.cb, %.lr.ph135 ] ; 3 uses
  %i.an = sub nsw i32 %i.u, %i.t                  ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph139.preheader, label %.loopexit

.lr.ph139.preheader:                              ; preds = %.preheader
  %i.ap = zext nneg i32 %i.an to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.1.lcssa, i8 48, i64 %i.ap, i1 false), !tbaa !11
  %i.aq = trunc i64 %i.r to i32
  %i.ar = add i32 %i.u, %i.aq
  %i.as = trunc i64 %i.q to i32
  %i.at = xor i32 %i.as, -1
  %i.au = add i32 %i.ar, %i.at
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr i8, ptr %.1.lcssa, i64 %i.av
  %scevgep178 = getelementptr i8, ptr %i.aw, i64 1
  br label %.loopexit

.lr.ph135:                                        ; preds = %.lr.ph135.prol.loopexit, %.lr.ph135
  %indvars.iv173 = phi i64 [ %indvars.iv.next174.7, %.lr.ph135 ], [ %indvars.iv173.unr, %.lr.ph135.prol.loopexit ] ; 9 uses
  %.1133 = phi ptr [ %i.cb, %.lr.ph135 ], [ %.1133.unr, %.lr.ph135.prol.loopexit ] ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv173
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %.1133, i64 1
  store i8 %i.ay, ptr %.1133, align 1, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv173
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %.1133, i64 2
  store i8 %i.bc, ptr %i.az, align 1, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv173
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %.1133, i64 3
  store i8 %i.bg, ptr %i.bd, align 1, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv173
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !11
  %i.bl = getelementptr inbounds nuw i8, ptr %.1133, i64 4
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv173
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %.1133, i64 5
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv173
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 5
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %.1133, i64 6
  store i8 %i.bs, ptr %i.bp, align 1, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv173
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 6
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %.1133, i64 7
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv173
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 7
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %.1133, i64 8 ; 2 uses
  store i8 %i.ca, ptr %i.bx, align 1, !tbaa !11
  %indvars.iv.next174.7 = add nuw nsw i64 %indvars.iv173, 8 ; 2 uses
  %exitcond177.not.7 = icmp eq i64 %indvars.iv.next174.7, %wide.trip.count176
  br i1 %exitcond177.not.7, label %.preheader, label %.lr.ph135, !llvm.loop !22

bb.l:                                             ; preds = %bb.k
  %i.cc = add i32 %i.u, -1                        ; 2 uses
  %or.cond3 = icmp ult i32 %i.cc, 21
  br i1 %or.cond3, label %.lr.ph124.preheader, label %bb.m

.lr.ph124.preheader:                              ; preds = %bb.l
  %wide.trip.count167 = zext nneg i32 %i.u to i64 ; 6 uses
  %min.iters.check283 = icmp ult i32 %i.u, 8
  %i.cd = sub i64 %.090200, %i.r
  %diff.check282 = icmp ult i64 %i.cd, 8
  %or.cond369 = select i1 %min.iters.check283, i1 true, i1 %diff.check282
  br i1 %or.cond369, label %.lr.ph124.preheader371, label %vector.ph284

vector.ph284:                                     ; preds = %.lr.ph124.preheader
  %n.vec286 = and i64 %wide.trip.count167, 24     ; 4 uses
  %i.ce = getelementptr i8, ptr %.090, i64 %n.vec286 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %wide.load290 = load <4 x i8>, ptr %i.m, align 1, !tbaa !11
  %wide.load291 = load <4 x i8>, ptr %i.cf, align 1, !tbaa !11
  %i.cg = getelementptr i8, ptr %.090, i64 4
  store <4 x i8> %wide.load290, ptr %.090, align 1, !tbaa !11
  store <4 x i8> %wide.load291, ptr %i.cg, align 1, !tbaa !11
  %i.ch = icmp eq i64 %n.vec286, 8
  br i1 %i.ch, label %middle.block293, label %vector.body287.1

vector.body287.1:                                 ; preds = %vector.ph284
  %next.gep289.1 = getelementptr i8, ptr %.090, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %wide.load290.1 = load <4 x i8>, ptr %i.ci, align 1, !tbaa !11
  %wide.load291.1 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !11
  %i.ck = getelementptr i8, ptr %.090, i64 12
  store <4 x i8> %wide.load290.1, ptr %next.gep289.1, align 1, !tbaa !11
  store <4 x i8> %wide.load291.1, ptr %i.ck, align 1, !tbaa !11
  br label %middle.block293

middle.block293:                                  ; preds = %vector.body287.1, %vector.ph284
  %ind.escape = getelementptr i8, ptr %i.ce, i64 -1
  %cmp.n294 = icmp eq i64 %n.vec286, %wide.trip.count167
  br i1 %cmp.n294, label %._crit_edge125, label %.lr.ph124.preheader371

.lr.ph124.preheader371:                           ; preds = %.lr.ph124.preheader, %middle.block293
  %indvars.iv164.ph = phi i64 [ 0, %.lr.ph124.preheader ], [ %n.vec286, %middle.block293 ] ; 3 uses
  %.3122.ph = phi ptr [ %.090, %.lr.ph124.preheader ], [ %i.ce, %middle.block293 ] ; 2 uses
  %xtraiter385 = and i64 %wide.trip.count167, 7   ; 2 uses
  %lcmp.mod386.not = icmp eq i64 %xtraiter385, 0
  br i1 %lcmp.mod386.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol

.lr.ph124.prol:                                   ; preds = %.lr.ph124.preheader371, %.lr.ph124.prol
  %indvars.iv164.prol = phi i64 [ %indvars.iv.next165.prol, %.lr.ph124.prol ], [ %indvars.iv164.ph, %.lr.ph124.preheader371 ] ; 2 uses
  %.3122.prol = phi ptr [ %i.cn, %.lr.ph124.prol ], [ %.3122.ph, %.lr.ph124.preheader371 ] ; 3 uses
  %prol.iter387 = phi i64 [ %prol.iter387.next, %.lr.ph124.prol ], [ 0, %.lr.ph124.preheader371 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv164.prol
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %.3122.prol, i64 1 ; 3 uses
  store i8 %i.cm, ptr %.3122.prol, align 1, !tbaa !11
  %indvars.iv.next165.prol = add nuw nsw i64 %indvars.iv164.prol, 1 ; 2 uses
  %prol.iter387.next = add i64 %prol.iter387, 1   ; 2 uses
  %prol.iter387.cmp.not = icmp eq i64 %prol.iter387.next, %xtraiter385
  br i1 %prol.iter387.cmp.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol, !llvm.loop !23

.lr.ph124.prol.loopexit:                          ; preds = %.lr.ph124.prol, %.lr.ph124.preheader371
  %.3122.lcssa373.unr = phi ptr [ poison, %.lr.ph124.preheader371 ], [ %.3122.prol, %.lr.ph124.prol ]
  %.lcssa372.unr = phi ptr [ poison, %.lr.ph124.preheader371 ], [ %i.cn, %.lr.ph124.prol ]
  %indvars.iv164.unr = phi i64 [ %indvars.iv164.ph, %.lr.ph124.preheader371 ], [ %indvars.iv.next165.prol, %.lr.ph124.prol ]
  %.3122.unr = phi ptr [ %.3122.ph, %.lr.ph124.preheader371 ], [ %i.cn, %.lr.ph124.prol ]
  %i.co = sub nsw i64 %indvars.iv164.ph, %wide.trip.count167
  %i.cp = icmp ugt i64 %i.co, -8
  br i1 %i.cp, label %._crit_edge125, label %.lr.ph124

._crit_edge125.loopexit.unr-lcssa:                ; preds = %.lr.ph124
  %i.cq = getelementptr inbounds nuw i8, ptr %.3122, i64 7
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %._crit_edge125.loopexit.unr-lcssa, %.lr.ph124.prol.loopexit, %middle.block293
  %.3122.lcssa = phi ptr [ %ind.escape, %middle.block293 ], [ %.3122.lcssa373.unr, %.lr.ph124.prol.loopexit ], [ %i.cq, %._crit_edge125.loopexit.unr-lcssa ] ; 2 uses
  %.lcssa195 = phi ptr [ %i.ce, %middle.block293 ], [ %.lcssa372.unr, %.lr.ph124.prol.loopexit ], [ %i.ep, %._crit_edge125.loopexit.unr-lcssa ]
  %.3122.lcssa297 = ptrtoaddr ptr %.3122.lcssa to i64
  store i8 46, ptr %.lcssa195, align 1, !tbaa !11
  %.4127 = getelementptr inbounds nuw i8, ptr %.3122.lcssa, i64 2 ; 7 uses
  %i.cr = icmp slt i32 %i.u, %i.t
  br i1 %i.cr, label %iter.check317, label %.loopexit

iter.check317:                                    ; preds = %._crit_edge125
  %i.cs = zext nneg i32 %i.u to i64               ; 6 uses
  %i.ct = trunc i64 %i.q to i32
  %i.cu = xor i32 %i.u, -1
  %i.cv = add i32 %i.cu, %i.ct
  %i.cw = trunc i64 %i.r to i32
  %i.cx = sub i32 %i.cv, %i.cw                    ; 3 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 5 uses
  %min.iters.check300 = icmp ult i32 %i.cx, 7
  br i1 %min.iters.check300, label %.lr.ph131.preheader, label %vector.memcheck296

vector.memcheck296:                               ; preds = %iter.check317
  %i.da = add i64 %.3122.lcssa297, 2
  %i.db = add i64 %i.r, %wide.trip.count167
  %i.dc = sub i64 %i.da, %i.db
  %diff.check298 = icmp ult i64 %i.dc, 32
  br i1 %diff.check298, label %.lr.ph131.preheader, label %vector.main.loop.iter.check301

vector.main.loop.iter.check301:                   ; preds = %vector.memcheck296
  %min.iters.check302 = icmp ult i32 %i.cx, 31
  br i1 %min.iters.check302, label %vec.epilog.ph321, label %vector.ph303

vector.ph303:                                     ; preds = %vector.main.loop.iter.check301
  %n.mod.vf304 = and i64 %i.cz, 24
  %n.vec305 = and i64 %i.cz, 8589934560           ; 5 uses
  %i.dd = or disjoint i64 %n.vec305, %i.cs
  %i.de = getelementptr i8, ptr %.4127, i64 %n.vec305 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.m, i64 %i.cs
  br label %vector.body306

vector.body306:                                   ; preds = %vector.body306, %vector.ph303
  %index307 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body306 ] ; 3 uses
  %next.gep308 = getelementptr i8, ptr %.4127, i64 %index307 ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index307 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load309 = load <16 x i8>, ptr %gep, align 1, !tbaa !11
  %wide.load310 = load <16 x i8>, ptr %i.df, align 1, !tbaa !11
  %i.dg = getelementptr i8, ptr %next.gep308, i64 16
  store <16 x i8> %wide.load309, ptr %next.gep308, align 1, !tbaa !11
  store <16 x i8> %wide.load310, ptr %i.dg, align 1, !tbaa !11
  %index.next311 = add nuw i64 %index307, 32      ; 2 uses
  %i.dh = icmp eq i64 %index.next311, %n.vec305
  br i1 %i.dh, label %middle.block312, label %vector.body306, !llvm.loop !24

middle.block312:                                  ; preds = %vector.body306
  %cmp.n313 = icmp eq i64 %i.cz, %n.vec305
  br i1 %cmp.n313, label %.loopexit, label %vec.epilog.iter.check319

vec.epilog.iter.check319:                         ; preds = %middle.block312
  %min.epilog.iters.check320 = icmp eq i64 %n.mod.vf304, 0
  br i1 %min.epilog.iters.check320, label %.lr.ph131.preheader, label %vec.epilog.ph321, !prof !25

vec.epilog.ph321:                                 ; preds = %vector.main.loop.iter.check301, %vec.epilog.iter.check319
  %vec.epilog.resume.val314 = phi i64 [ %n.vec305, %vec.epilog.iter.check319 ], [ 0, %vector.main.loop.iter.check301 ]
  %n.vec323 = and i64 %i.cz, 8589934584           ; 4 uses
  %i.di = add nuw nsw i64 %n.vec323, %i.cs
  %i.dj = getelementptr i8, ptr %.4127, i64 %n.vec323 ; 2 uses
  %invariant.gep404 = getelementptr i8, ptr %i.m, i64 %i.cs
  br label %vec.epilog.vector.body324

vec.epilog.vector.body324:                        ; preds = %vec.epilog.vector.body324, %vec.epilog.ph321
  %index325 = phi i64 [ %vec.epilog.resume.val314, %vec.epilog.ph321 ], [ %index.next328, %vec.epilog.vector.body324 ] ; 3 uses
  %next.gep326 = getelementptr i8, ptr %.4127, i64 %index325
  %gep405 = getelementptr i8, ptr %invariant.gep404, i64 %index325
  %wide.load327 = load <8 x i8>, ptr %gep405, align 1, !tbaa !11
  store <8 x i8> %wide.load327, ptr %next.gep326, align 1, !tbaa !11
  %index.next328 = add nuw i64 %index325, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next328, %n.vec323
  br i1 %i.dk, label %vec.epilog.middle.block329, label %vec.epilog.vector.body324, !llvm.loop !26

vec.epilog.middle.block329:                       ; preds = %vec.epilog.vector.body324
  %cmp.n330 = icmp eq i64 %i.cz, %n.vec323
  br i1 %cmp.n330, label %.loopexit, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %vector.memcheck296, %iter.check317, %vec.epilog.iter.check319, %vec.epilog.middle.block329
  %indvars.iv170.ph = phi i64 [ %i.cs, %iter.check317 ], [ %i.cs, %vector.memcheck296 ], [ %i.dd, %vec.epilog.iter.check319 ], [ %i.di, %vec.epilog.middle.block329 ]
  %.4129.ph = phi ptr [ %.4127, %iter.check317 ], [ %.4127, %vector.memcheck296 ], [ %i.de, %vec.epilog.iter.check319 ], [ %i.dj, %vec.epilog.middle.block329 ]
  br label %.lr.ph131

.lr.ph124:                                        ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124
  %indvars.iv164 = phi i64 [ %indvars.iv.next165.7, %.lr.ph124 ], [ %indvars.iv164.unr, %.lr.ph124.prol.loopexit ] ; 9 uses
  %.3122 = phi ptr [ %i.ep, %.lr.ph124 ], [ %.3122.unr, %.lr.ph124.prol.loopexit ] ; 10 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv164
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %.3122, i64 1
  store i8 %i.dm, ptr %.3122, align 1, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv164
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %.3122, i64 2
  store i8 %i.dq, ptr %i.dn, align 1, !tbaa !11
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv164
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !11
  %i.dv = getelementptr inbounds nuw i8, ptr %.3122, i64 3
  store i8 %i.du, ptr %i.dr, align 1, !tbaa !11
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv164
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 3
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !11
  %i.dz = getelementptr inbounds nuw i8, ptr %.3122, i64 4
  store i8 %i.dy, ptr %i.dv, align 1, !tbaa !11
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv164
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %.3122, i64 5
  store i8 %i.ec, ptr %i.dz, align 1, !tbaa !11
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv164
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 5
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !11
  %i.eh = getelementptr inbounds nuw i8, ptr %.3122, i64 6
  store i8 %i.eg, ptr %i.ed, align 1, !tbaa !11
  %i.ei = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv164
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 6
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !11
  %i.el = getelementptr inbounds nuw i8, ptr %.3122, i64 7
  store i8 %i.ek, ptr %i.eh, align 1, !tbaa !11
  %i.em = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv164
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 7
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !11
  %i.ep = getelementptr inbounds nuw i8, ptr %.3122, i64 8 ; 2 uses
  store i8 %i.eo, ptr %i.el, align 1, !tbaa !11
  %indvars.iv.next165.7 = add nuw nsw i64 %indvars.iv164, 8 ; 2 uses
  %exitcond168.not.7 = icmp eq i64 %indvars.iv.next165.7, %wide.trip.count167
  br i1 %exitcond168.not.7, label %._crit_edge125.loopexit.unr-lcssa, label %.lr.ph124, !llvm.loop !27

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %.lr.ph131 ], [ %indvars.iv170.ph, %.lr.ph131.preheader ] ; 2 uses
  %.4129 = phi ptr [ %.4, %.lr.ph131 ], [ %.4129.ph, %.lr.ph131.preheader ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv170
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !11
  store i8 %i.er, ptr %.4129, align 1, !tbaa !11
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %.4 = getelementptr inbounds nuw i8, ptr %.4129, i64 1 ; 2 uses
  %i.es = trunc nuw i64 %indvars.iv.next171 to i32
  %i.et = icmp slt i32 %i.es, %i.t
  br i1 %i.et, label %.lr.ph131, label %.loopexit, !llvm.loop !28

bb.m:                                             ; preds = %bb.l
  %i.eu = add i32 %i.u, 5
  %or.cond5 = icmp ult i32 %i.eu, 6
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ev = getelementptr inbounds nuw i8, ptr %.090, i64 1
  store i8 48, ptr %.090, align 1, !tbaa !11
  %i.ew = getelementptr i8, ptr %.090, i64 2      ; 2 uses
  store i8 46, ptr %i.ev, align 1, !tbaa !11
  %i.ex = icmp slt i32 %i.u, 0
  br i1 %i.ex, label %.lr.ph116.preheader, label %.preheader97

.lr.ph116.preheader:                              ; preds = %bb.n
  %4 = sub nsw i32 0, %i.u
  %5 = zext nneg i32 %4 to i64                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ew, i8 48, i64 %5, i1 false), !tbaa !11
  %6 = getelementptr i8, ptr %.090, i64 %5
  %scevgep160 = getelementptr i8, ptr %6, i64 2
  br label %.preheader97

.preheader97:                                     ; preds = %.lr.ph116.preheader, %bb.n
  %.5.lcssa = phi ptr [ %i.ew, %bb.n ], [ %scevgep160, %.lr.ph116.preheader ] ; 7 uses
  %i.ey = icmp sgt i32 %i.t, 0
  br i1 %i.ey, label %iter.check265, label %.loopexit

iter.check265:                                    ; preds = %.preheader97
  %.5.lcssa248 = ptrtoaddr ptr %.5.lcssa to i64
  %wide.trip.count162 = and i64 %i.s, 2147483647  ; 6 uses
  %min.iters.check250 = icmp samesign ult i64 %wide.trip.count162, 4
  %i.ez = sub i64 %.5.lcssa248, %i.r
  %diff.check249 = icmp ult i64 %i.ez, 32
  %or.cond370 = select i1 %min.iters.check250, i1 true, i1 %diff.check249
  br i1 %or.cond370, label %.lr.ph120.preheader, label %vector.main.loop.iter.check251

vector.main.loop.iter.check251:                   ; preds = %iter.check265
  %min.iters.check252 = icmp samesign ult i64 %wide.trip.count162, 32
  br i1 %min.iters.check252, label %vec.epilog.ph269, label %vector.ph253

vector.ph253:                                     ; preds = %vector.main.loop.iter.check251
  %n.mod.vf254 = and i64 %i.s, 28
  %n.vec255 = and i64 %i.s, 2147483616            ; 5 uses
  %i.fa = getelementptr i8, ptr %.5.lcssa, i64 %n.vec255 ; 2 uses
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph253
  %index257 = phi i64 [ 0, %vector.ph253 ], [ %index.next261, %vector.body256 ] ; 3 uses
  %next.gep258 = getelementptr i8, ptr %.5.lcssa, i64 %index257 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.m, i64 %index257 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load259 = load <16 x i8>, ptr %i.fb, align 1, !tbaa !11
  %wide.load260 = load <16 x i8>, ptr %i.fc, align 1, !tbaa !11
  %i.fd = getelementptr i8, ptr %next.gep258, i64 16
  store <16 x i8> %wide.load259, ptr %next.gep258, align 1, !tbaa !11
  store <16 x i8> %wide.load260, ptr %i.fd, align 1, !tbaa !11
  %index.next261 = add nuw i64 %index257, 32      ; 2 uses
  %i.fe = icmp eq i64 %index.next261, %n.vec255
  br i1 %i.fe, label %middle.block262, label %vector.body256, !llvm.loop !29

middle.block262:                                  ; preds = %vector.body256
  %cmp.n263 = icmp eq i64 %wide.trip.count162, %n.vec255
  br i1 %cmp.n263, label %.loopexit, label %vec.epilog.iter.check267

vec.epilog.iter.check267:                         ; preds = %middle.block262
  %min.epilog.iters.check268 = icmp eq i64 %n.mod.vf254, 0
  br i1 %min.epilog.iters.check268, label %.lr.ph120.preheader, label %vec.epilog.ph269, !prof !18

vec.epilog.ph269:                                 ; preds = %vector.main.loop.iter.check251, %vec.epilog.iter.check267
  %vec.epilog.resume.val264 = phi i64 [ %n.vec255, %vec.epilog.iter.check267 ], [ 0, %vector.main.loop.iter.check251 ]
  %n.vec271 = and i64 %i.s, 2147483644            ; 4 uses
  %i.ff = getelementptr i8, ptr %.5.lcssa, i64 %n.vec271 ; 2 uses
  br label %vec.epilog.vector.body272

vec.epilog.vector.body272:                        ; preds = %vec.epilog.vector.body272, %vec.epilog.ph269
  %index273 = phi i64 [ %vec.epilog.resume.val264, %vec.epilog.ph269 ], [ %index.next276, %vec.epilog.vector.body272 ] ; 3 uses
  %next.gep274 = getelementptr i8, ptr %.5.lcssa, i64 %index273
  %i.fg = getelementptr inbounds nuw i8, ptr %i.m, i64 %index273
  %wide.load275 = load <4 x i8>, ptr %i.fg, align 1, !tbaa !11
  store <4 x i8> %wide.load275, ptr %next.gep274, align 1, !tbaa !11
  %index.next276 = add nuw i64 %index273, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next276, %n.vec271
  br i1 %i.fh, label %vec.epilog.middle.block277, label %vec.epilog.vector.body272, !llvm.loop !30

vec.epilog.middle.block277:                       ; preds = %vec.epilog.vector.body272
  %cmp.n278 = icmp eq i64 %wide.trip.count162, %n.vec271
  br i1 %cmp.n278, label %.loopexit, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %iter.check265, %vec.epilog.iter.check267, %vec.epilog.middle.block277
  %indvars.iv159.ph = phi i64 [ 0, %iter.check265 ], [ %n.vec255, %vec.epilog.iter.check267 ], [ %n.vec271, %vec.epilog.middle.block277 ] ; 4 uses
  %.6118.ph = phi ptr [ %.5.lcssa, %iter.check265 ], [ %i.fa, %vec.epilog.iter.check267 ], [ %i.ff, %vec.epilog.middle.block277 ] ; 2 uses
  %i.fi = sub i64 %i.s, %indvars.iv159.ph
  %xtraiter382 = and i64 %i.fi, 7                 ; 2 uses
  %lcmp.mod383.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod383.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol

.lr.ph120.prol:                                   ; preds = %.lr.ph120.preheader, %.lr.ph120.prol
  %indvars.iv159.prol = phi i64 [ %indvars.iv.next160.prol, %.lr.ph120.prol ], [ %indvars.iv159.ph, %.lr.ph120.preheader ] ; 2 uses
  %.6118.prol = phi ptr [ %i.fl, %.lr.ph120.prol ], [ %.6118.ph, %.lr.ph120.preheader ] ; 2 uses
  %prol.iter384 = phi i64 [ %prol.iter384.next, %.lr.ph120.prol ], [ 0, %.lr.ph120.preheader ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv159.prol
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !11
  %i.fl = getelementptr inbounds nuw i8, ptr %.6118.prol, i64 1 ; 3 uses
  store i8 %i.fk, ptr %.6118.prol, align 1, !tbaa !11
  %indvars.iv.next160.prol = add nuw nsw i64 %indvars.iv159.prol, 1 ; 2 uses
  %prol.iter384.next = add i64 %prol.iter384, 1   ; 2 uses
  %prol.iter384.cmp.not = icmp eq i64 %prol.iter384.next, %xtraiter382
  br i1 %prol.iter384.cmp.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol, !llvm.loop !31

.lr.ph120.prol.loopexit:                          ; preds = %.lr.ph120.prol, %.lr.ph120.preheader
  %.lcssa375.unr = phi ptr [ poison, %.lr.ph120.preheader ], [ %i.fl, %.lr.ph120.prol ]
  %indvars.iv159.unr = phi i64 [ %indvars.iv159.ph, %.lr.ph120.preheader ], [ %indvars.iv.next160.prol, %.lr.ph120.prol ]
  %.6118.unr = phi ptr [ %.6118.ph, %.lr.ph120.preheader ], [ %i.fl, %.lr.ph120.prol ]
  %i.fm = sub nsw i64 %indvars.iv159.ph, %wide.trip.count162
  %i.fn = icmp ugt i64 %i.fm, -8
  br i1 %i.fn, label %.loopexit, label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120
  %indvars.iv159 = phi i64 [ %indvars.iv.next160.7, %.lr.ph120 ], [ %indvars.iv159.unr, %.lr.ph120.prol.loopexit ] ; 9 uses
  %.6118 = phi ptr [ %i.gs, %.lr.ph120 ], [ %.6118.unr, %.lr.ph120.prol.loopexit ] ; 9 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv159
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !11
  %i.fq = getelementptr inbounds nuw i8, ptr %.6118, i64 1
  store i8 %i.fp, ptr %.6118, align 1, !tbaa !11
  %i.fr = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv159
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !11
  %i.fu = getelementptr inbounds nuw i8, ptr %.6118, i64 2
  store i8 %i.ft, ptr %i.fq, align 1, !tbaa !11
  %i.fv = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv159
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !11
  %i.fy = getelementptr inbounds nuw i8, ptr %.6118, i64 3
  store i8 %i.fx, ptr %i.fu, align 1, !tbaa !11
  %i.fz = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv159
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 3
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !11
  %i.gc = getelementptr inbounds nuw i8, ptr %.6118, i64 4
  store i8 %i.gb, ptr %i.fy, align 1, !tbaa !11
  %i.gd = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv159
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !11
  %i.gg = getelementptr inbounds nuw i8, ptr %.6118, i64 5
  store i8 %i.gf, ptr %i.gc, align 1, !tbaa !11
  %i.gh = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv159
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 5
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !11
  %i.gk = getelementptr inbounds nuw i8, ptr %.6118, i64 6
  store i8 %i.gj, ptr %i.gg, align 1, !tbaa !11
  %i.gl = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv159
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 6
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !11
  %i.go = getelementptr inbounds nuw i8, ptr %.6118, i64 7
  store i8 %i.gn, ptr %i.gk, align 1, !tbaa !11
  %i.gp = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv159
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 7
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !11
  %i.gs = getelementptr inbounds nuw i8, ptr %.6118, i64 8 ; 2 uses
  store i8 %i.gr, ptr %i.go, align 1, !tbaa !11
  %indvars.iv.next160.7 = add nuw nsw i64 %indvars.iv159, 8 ; 2 uses
  %exitcond163.not.7 = icmp eq i64 %indvars.iv.next160.7, %wide.trip.count162
  br i1 %exitcond163.not.7, label %.loopexit, label %.lr.ph120, !llvm.loop !32

bb.o:                                             ; preds = %bb.m
  %i.gt = icmp eq i32 %i.t, 1
  %i.gu = call i32 @llvm.abs.i32(i32 %i.cc, i1 true) ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.090, i64 1 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.090, i64 2 ; 8 uses
  br i1 %i.gt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.gx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %i.gu) #7 ; 3 uses
  %i.gy = load i8, ptr %i.m, align 1, !tbaa !11
  store i8 %i.gy, ptr %.090, align 1, !tbaa !11
  store i8 101, ptr %i.gv, align 1, !tbaa !11
  %i.gz = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ha = icmp slt i32 %i.gz, 1
  %i.hb = select i1 %i.ha, i8 45, i8 43
  %i.hc = getelementptr i8, ptr %.090, i64 3      ; 2 uses
  store i8 %i.hb, ptr %i.gw, align 1, !tbaa !11
  %i.hd = icmp sgt i32 %i.gx, 0
  br i1 %i.hd, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.p
  %i.he = zext nneg i32 %i.gx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hc, ptr nonnull align 16 %i.d, i64 %i.he, i1 false), !tbaa !11
  %narrow = add nuw i32 %i.gx, 3
  %i.hf = zext i32 %narrow to i64
  %scevgep = getelementptr i8, ptr %.090, i64 %i.hf
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %.lr.ph110.preheader, %bb.p
  %.7.lcssa = phi ptr [ %i.hc, %bb.p ], [ %scevgep, %.lr.ph110.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.hg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %i.gu) #7 ; 4 uses
  %i.hh = load i8, ptr %i.m, align 1, !tbaa !11
  store i8 %i.hh, ptr %.090, align 1, !tbaa !11
  store i8 46, ptr %i.gv, align 1, !tbaa !11
  %i.hi = icmp sgt i32 %i.t, 1
  br i1 %i.hi, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.q
  %wide.trip.count = and i64 %i.s, 2147483647     ; 3 uses
  %i.hj = add nsw i64 %wide.trip.count, -1        ; 7 uses
  %min.iters.check = icmp ult i64 %i.hj, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.hk = add i64 %.090200, 1
  %i.hl = sub i64 %i.hk, %i.r
  %diff.check = icmp ult i64 %i.hl, 32
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check201 = icmp ult i64 %i.hj, 32
  br i1 %min.iters.check201, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.hj, 24
  %n.vec = and i64 %i.hj, -32                     ; 5 uses
  %i.hm = or disjoint i64 %n.vec, 1
  %i.hn = getelementptr i8, ptr %i.gw, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.gw, i64 %index ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.m, i64 %index ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 1
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 17
  %wide.load = load <16 x i8>, ptr %i.hp, align 1, !tbaa !11
  %wide.load202 = load <16 x i8>, ptr %i.hq, align 1, !tbaa !11
  %i.hr = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !11
  store <16 x i8> %wide.load202, ptr %i.hr, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hs = icmp eq i64 %index.next, %n.vec
  br i1 %i.hs, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hj, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec205 = and i64 %i.hj, -8                   ; 4 uses
  %i.ht = or disjoint i64 %n.vec205, 1
  %i.hu = getelementptr i8, ptr %i.gw, i64 %n.vec205 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index206 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next209, %vec.epilog.vector.body ] ; 3 uses
  %next.gep207 = getelementptr i8, ptr %i.gw, i64 %index206
  %i.hv = getelementptr inbounds nuw i8, ptr %i.m, i64 %index206
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  %wide.load208 = load <8 x i8>, ptr %i.hw, align 1, !tbaa !11
  store <8 x i8> %wide.load208, ptr %next.gep207, align 1, !tbaa !11
  %index.next209 = add nuw i64 %index206, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next209, %n.vec205
  br i1 %i.hx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n210 = icmp eq i64 %i.hj, %n.vec205
  br i1 %cmp.n210, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.hm, %vec.epilog.iter.check ], [ %i.ht, %vec.epilog.middle.block ] ; 4 uses
  %.899.ph = phi ptr [ %i.gw, %iter.check ], [ %i.gw, %vector.memcheck ], [ %i.hn, %vec.epilog.iter.check ], [ %i.hu, %vec.epilog.middle.block ] ; 2 uses
  %i.hy = sub i64 %i.s, %indvars.iv.ph
  %xtraiter = and i64 %i.hy, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.899.prol = phi ptr [ %i.ib, %.lr.ph.prol ], [ %.899.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.prol
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !11
  %i.ib = getelementptr inbounds nuw i8, ptr %.899.prol, i64 1 ; 3 uses
  store i8 %i.ia, ptr %.899.prol, align 1, !tbaa !11
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !35

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa378.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.ib, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.899.unr = phi ptr [ %.899.ph, %.lr.ph.preheader ], [ %i.ib, %.lr.ph.prol ]
  %i.ic = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.id = icmp ugt i64 %i.ic, -8
  br i1 %i.id, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.q
  %.8.lcssa = phi ptr [ %i.gw, %bb.q ], [ %i.hu, %vec.epilog.middle.block ], [ %i.hn, %middle.block ], [ %.lcssa378.unr, %.lr.ph.prol.loopexit ], [ %i.ke, %.lr.ph ] ; 4 uses
  %.8.lcssa214 = ptrtoaddr ptr %.8.lcssa to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 1
  store i8 101, ptr %.8.lcssa, align 1, !tbaa !11
  %i.if = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ig = icmp slt i32 %i.if, 1
  %i.ih = select i1 %i.ig, i8 45, i8 43
  %i.ii = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 2 ; 7 uses
  store i8 %i.ih, ptr %i.ie, align 1, !tbaa !11
  %i.ij = icmp sgt i32 %i.hg, 0
  br i1 %i.ij, label %iter.check231, label %._crit_edge105

iter.check231:                                    ; preds = %._crit_edge
  %wide.trip.count154 = zext nneg i32 %i.hg to i64 ; 8 uses
  %min.iters.check216 = icmp ult i32 %i.hg, 4
  br i1 %min.iters.check216, label %.lr.ph104.preheader, label %vector.memcheck213

vector.memcheck213:                               ; preds = %iter.check231
  %i.ik = add i64 %.8.lcssa214, 2
  %i.il = sub i64 %i.ik, %i.f
  %diff.check215 = icmp ult i64 %i.il, 32
  br i1 %diff.check215, label %.lr.ph104.preheader, label %vector.main.loop.iter.check217

vector.main.loop.iter.check217:                   ; preds = %vector.memcheck213
  %min.iters.check218 = icmp ult i32 %i.hg, 32
  br i1 %min.iters.check218, label %vec.epilog.ph235, label %vector.ph219

vector.ph219:                                     ; preds = %vector.main.loop.iter.check217
  %n.mod.vf220 = and i64 %wide.trip.count154, 28
  %n.vec221 = and i64 %wide.trip.count154, 2147483616 ; 5 uses
  %i.im = getelementptr i8, ptr %i.ii, i64 %n.vec221 ; 2 uses
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph219
  %index223 = phi i64 [ 0, %vector.ph219 ], [ %index.next227, %vector.body222 ] ; 3 uses
  %next.gep224 = getelementptr i8, ptr %i.ii, i64 %index223 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.e, i64 %index223 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %wide.load225 = load <16 x i8>, ptr %i.in, align 16, !tbaa !11
  %wide.load226 = load <16 x i8>, ptr %i.io, align 16, !tbaa !11
  %i.ip = getelementptr i8, ptr %next.gep224, i64 16
  store <16 x i8> %wide.load225, ptr %next.gep224, align 1, !tbaa !11
  store <16 x i8> %wide.load226, ptr %i.ip, align 1, !tbaa !11
  %index.next227 = add nuw i64 %index223, 32      ; 2 uses
  %i.iq = icmp eq i64 %index.next227, %n.vec221
  br i1 %i.iq, label %middle.block228, label %vector.body222, !llvm.loop !36

middle.block228:                                  ; preds = %vector.body222
  %cmp.n229 = icmp eq i64 %n.vec221, %wide.trip.count154
  br i1 %cmp.n229, label %._crit_edge105, label %vec.epilog.iter.check233

vec.epilog.iter.check233:                         ; preds = %middle.block228
  %min.epilog.iters.check234 = icmp eq i64 %n.mod.vf220, 0
  br i1 %min.epilog.iters.check234, label %.lr.ph104.preheader, label %vec.epilog.ph235, !prof !18

vec.epilog.ph235:                                 ; preds = %vector.main.loop.iter.check217, %vec.epilog.iter.check233
  %vec.epilog.resume.val230 = phi i64 [ %n.vec221, %vec.epilog.iter.check233 ], [ 0, %vector.main.loop.iter.check217 ]
  %n.vec237 = and i64 %wide.trip.count154, 2147483644 ; 4 uses
  %i.ir = getelementptr i8, ptr %i.ii, i64 %n.vec237 ; 2 uses
  br label %vec.epilog.vector.body238

vec.epilog.vector.body238:                        ; preds = %vec.epilog.vector.body238, %vec.epilog.ph235
  %index239 = phi i64 [ %vec.epilog.resume.val230, %vec.epilog.ph235 ], [ %index.next242, %vec.epilog.vector.body238 ] ; 3 uses
  %next.gep240 = getelementptr i8, ptr %i.ii, i64 %index239
  %i.is = getelementptr inbounds nuw i8, ptr %i.e, i64 %index239
  %wide.load241 = load <4 x i8>, ptr %i.is, align 4, !tbaa !11
  store <4 x i8> %wide.load241, ptr %next.gep240, align 1, !tbaa !11
  %index.next242 = add nuw i64 %index239, 4       ; 2 uses
  %i.it = icmp eq i64 %index.next242, %n.vec237
  br i1 %i.it, label %vec.epilog.middle.block243, label %vec.epilog.vector.body238, !llvm.loop !37

vec.epilog.middle.block243:                       ; preds = %vec.epilog.vector.body238
  %cmp.n244 = icmp eq i64 %n.vec237, %wide.trip.count154
  br i1 %cmp.n244, label %._crit_edge105, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %vector.memcheck213, %iter.check231, %vec.epilog.iter.check233, %vec.epilog.middle.block243
  %indvars.iv151.ph = phi i64 [ 0, %iter.check231 ], [ 0, %vector.memcheck213 ], [ %n.vec221, %vec.epilog.iter.check233 ], [ %n.vec237, %vec.epilog.middle.block243 ] ; 4 uses
  %.9101.ph = phi ptr [ %i.ii, %iter.check231 ], [ %i.ii, %vector.memcheck213 ], [ %i.im, %vec.epilog.iter.check233 ], [ %i.ir, %vec.epilog.middle.block243 ] ; 2 uses
  %i.iu = sub nsw i64 %wide.trip.count154, %indvars.iv151.ph
  %xtraiter379 = and i64 %i.iu, 7                 ; 2 uses
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol

.lr.ph104.prol:                                   ; preds = %.lr.ph104.preheader, %.lr.ph104.prol
  %indvars.iv151.prol = phi i64 [ %indvars.iv.next152.prol, %.lr.ph104.prol ], [ %indvars.iv151.ph, %.lr.ph104.preheader ] ; 2 uses
  %.9101.prol = phi ptr [ %i.ix, %.lr.ph104.prol ], [ %.9101.ph, %.lr.ph104.preheader ] ; 2 uses
  %prol.iter381 = phi i64 [ %prol.iter381.next, %.lr.ph104.prol ], [ 0, %.lr.ph104.preheader ]
  %i.iv = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151.prol
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !11
  %i.ix = getelementptr inbounds nuw i8, ptr %.9101.prol, i64 1 ; 3 uses
  store i8 %i.iw, ptr %.9101.prol, align 1, !tbaa !11
  %indvars.iv.next152.prol = add nuw nsw i64 %indvars.iv151.prol, 1 ; 2 uses
  %prol.iter381.next = add i64 %prol.iter381, 1   ; 2 uses
  %prol.iter381.cmp.not = icmp eq i64 %prol.iter381.next, %xtraiter379
  br i1 %prol.iter381.cmp.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol, !llvm.loop !38

.lr.ph104.prol.loopexit:                          ; preds = %.lr.ph104.prol, %.lr.ph104.preheader
  %.lcssa377.unr = phi ptr [ poison, %.lr.ph104.preheader ], [ %i.ix, %.lr.ph104.prol ]
  %indvars.iv151.unr = phi i64 [ %indvars.iv151.ph, %.lr.ph104.preheader ], [ %indvars.iv.next152.prol, %.lr.ph104.prol ]
  %.9101.unr = phi ptr [ %.9101.ph, %.lr.ph104.preheader ], [ %i.ix, %.lr.ph104.prol ]
  %i.iy = sub nsw i64 %indvars.iv151.ph, %wide.trip.count154
  %i.iz = icmp ugt i64 %i.iy, -8
  br i1 %i.iz, label %._crit_edge105, label %.lr.ph104

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.899 = phi ptr [ %i.ke, %.lr.ph ], [ %.899.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !11
  %i.jc = getelementptr inbounds nuw i8, ptr %.899, i64 1
  store i8 %i.jb, ptr %.899, align 1, !tbaa !11
  %i.jd = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !11
  %i.jg = getelementptr inbounds nuw i8, ptr %.899, i64 2
  store i8 %i.jf, ptr %i.jc, align 1, !tbaa !11
  %i.jh = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !11
  %i.jk = getelementptr inbounds nuw i8, ptr %.899, i64 3
  store i8 %i.jj, ptr %i.jg, align 1, !tbaa !11
  %i.jl = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 3
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !11
  %i.jo = getelementptr inbounds nuw i8, ptr %.899, i64 4
  store i8 %i.jn, ptr %i.jk, align 1, !tbaa !11
  %i.jp = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !11
  %i.js = getelementptr inbounds nuw i8, ptr %.899, i64 5
  store i8 %i.jr, ptr %i.jo, align 1, !tbaa !11
  %i.jt = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 5
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !11
  %i.jw = getelementptr inbounds nuw i8, ptr %.899, i64 6
  store i8 %i.jv, ptr %i.js, align 1, !tbaa !11
  %i.jx = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 6
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !11
  %i.ka = getelementptr inbounds nuw i8, ptr %.899, i64 7
  store i8 %i.jz, ptr %i.jw, align 1, !tbaa !11
  %i.kb = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 7
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !11
  %i.ke = getelementptr inbounds nuw i8, ptr %.899, i64 8 ; 2 uses
  store i8 %i.kd, ptr %i.ka, align 1, !tbaa !11
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge105:                                   ; preds = %.lr.ph104.prol.loopexit, %.lr.ph104, %middle.block228, %vec.epilog.middle.block243, %._crit_edge
  %.9.lcssa = phi ptr [ %i.ii, %._crit_edge ], [ %i.ir, %vec.epilog.middle.block243 ], [ %i.im, %middle.block228 ], [ %.lcssa377.unr, %.lr.ph104.prol.loopexit ], [ %i.lj, %.lr.ph104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %.loopexit

.lr.ph104:                                        ; preds = %.lr.ph104.prol.loopexit, %.lr.ph104
  %indvars.iv151 = phi i64 [ %indvars.iv.next152.7, %.lr.ph104 ], [ %indvars.iv151.unr, %.lr.ph104.prol.loopexit ] ; 9 uses
  %.9101 = phi ptr [ %i.lj, %.lr.ph104 ], [ %.9101.unr, %.lr.ph104.prol.loopexit ] ; 9 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !11
  %i.kh = getelementptr inbounds nuw i8, ptr %.9101, i64 1
  store i8 %i.kg, ptr %.9101, align 1, !tbaa !11
  %i.ki = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 1
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !11
  %i.kl = getelementptr inbounds nuw i8, ptr %.9101, i64 2
  store i8 %i.kk, ptr %i.kh, align 1, !tbaa !11
  %i.km = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 2
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !11
  %i.kp = getelementptr inbounds nuw i8, ptr %.9101, i64 3
  store i8 %i.ko, ptr %i.kl, align 1, !tbaa !11
  %i.kq = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 3
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !11
  %i.kt = getelementptr inbounds nuw i8, ptr %.9101, i64 4
  store i8 %i.ks, ptr %i.kp, align 1, !tbaa !11
  %i.ku = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !11
  %i.kx = getelementptr inbounds nuw i8, ptr %.9101, i64 5
  store i8 %i.kw, ptr %i.kt, align 1, !tbaa !11
  %i.ky = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 5
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !11
  %i.lb = getelementptr inbounds nuw i8, ptr %.9101, i64 6
  store i8 %i.la, ptr %i.kx, align 1, !tbaa !11
  %i.lc = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 6
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !11
  %i.lf = getelementptr inbounds nuw i8, ptr %.9101, i64 7
  store i8 %i.le, ptr %i.lb, align 1, !tbaa !11
  %i.lg = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 7
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !11
  %i.lj = getelementptr inbounds nuw i8, ptr %.9101, i64 8 ; 2 uses
  store i8 %i.li, ptr %i.lf, align 1, !tbaa !11
  %indvars.iv.next152.7 = add nuw nsw i64 %indvars.iv151, 8 ; 2 uses
  %exitcond155.not.7 = icmp eq i64 %indvars.iv.next152.7, %wide.trip.count154
  br i1 %exitcond155.not.7, label %._crit_edge105, label %.lr.ph104, !llvm.loop !40

.loopexit:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120, %.lr.ph131, %middle.block262, %vec.epilog.middle.block277, %middle.block312, %vec.epilog.middle.block329, %.lr.ph139.preheader, %.preheader97, %._crit_edge125, %.preheader, %._crit_edge111, %._crit_edge105
  %.10 = phi ptr [ %.9.lcssa, %._crit_edge105 ], [ %.4, %.lr.ph131 ], [ %scevgep178, %.lr.ph139.preheader ], [ %.7.lcssa, %._crit_edge111 ], [ %.1.lcssa, %.preheader ], [ %.4127, %._crit_edge125 ], [ %.5.lcssa, %.preheader97 ], [ %i.dj, %vec.epilog.middle.block329 ], [ %i.de, %middle.block312 ], [ %i.ff, %vec.epilog.middle.block277 ], [ %i.fa, %middle.block262 ], [ %.lcssa375.unr, %.lr.ph120.prol.loopexit ], [ %i.gs, %.lr.ph120 ] ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.10, i64 1
  store i8 0, ptr %.10, align 1, !tbaa !11
  %i.ll = load ptr, ptr %i.h, align 8, !tbaa !7
  call void @g_freedtoa(ptr noundef %i.ll, ptr noundef %i.m) #7
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = ptrtoint ptr %1 to i64
  %i.lo = xor i64 %i.ln, -1
  %i.lp = add i64 %i.lm, %i.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !7
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.h, %bb.f, %bb.d, %bb.b
  %i.lq = phi ptr [ %i.g, %bb.b ], [ %i.g, %bb.d ], [ %i.g, %bb.f ], [ %i.g, %bb.h ], [ %.pre, %.loopexit ]
  %.082 = phi i64 [ 3, %bb.b ], [ 1, %bb.d ], [ 8, %bb.f ], [ 9, %bb.h ], [ %i.lp, %.loopexit ]
  call void @dtoa_alloc_done(ptr noundef %i.lq) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i64 %.082
}

declare ptr @g_dtoa(ptr noundef, double noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

declare void @g_freedtoa(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i64 -9223372036854775808, 9223372036854775807) i64 @hermes_numberToString(double noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6hermes14numberToStringEdPcm(double noundef %0, ptr noundef %1, i64 poison)
  ret i64 %i.a
}

declare ptr @dtoa_alloc_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dtoa_alloc_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 1200}
!8 = !{!"_ZTS13DtoaAllocatorILi1200EE", !5, i64 0, !9, i64 1200}
!9 = !{!"p1 _ZTS10dtoa_alloc", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"branch_weights", i32 4, i32 28}
!19 = distinct !{!19, !15, !16, !17}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !15, !16}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !15, !16, !17}
!25 = !{!"branch_weights", i32 8, i32 24}
!26 = distinct !{!26, !15, !16, !17}
!27 = distinct !{!27, !15, !16}
!28 = distinct !{!28, !15, !16}
!29 = distinct !{!29, !15, !16, !17}
!30 = distinct !{!30, !15, !16, !17}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !15, !16}
!33 = distinct !{!33, !15, !16, !17}
!34 = distinct !{!34, !15, !16, !17}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !15, !16, !17}
!37 = distinct !{!37, !15, !16, !17}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !15, !16}
!40 = distinct !{!40, !15, !16}
end_hunk_0
