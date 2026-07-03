inline.NumInlined: 8
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
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
  %wide.trip.count178 = and i64 %i.s, 2147483647  ; 6 uses
  %min.iters.check336 = icmp samesign ult i64 %wide.trip.count178, 4
  %i.y = sub i64 %i.r, %.090200
  %diff.check334 = icmp ugt i64 %i.y, -32
  %or.cond368 = select i1 %min.iters.check336, i1 true, i1 %diff.check334
  br i1 %or.cond368, label %.lr.ph135.preheader, label %vector.main.loop.iter.check337

vector.main.loop.iter.check337:                   ; preds = %iter.check352
  %min.iters.check338 = icmp samesign ult i64 %wide.trip.count178, 32
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
  %cmp.n349 = icmp eq i64 %wide.trip.count178, %n.vec341
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
  %cmp.n365 = icmp eq i64 %wide.trip.count178, %n.vec358
  br i1 %cmp.n365, label %.preheader, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %iter.check352, %vec.epilog.iter.check354, %vec.epilog.middle.block364
  %indvars.iv175.ph = phi i64 [ 0, %iter.check352 ], [ %n.vec341, %vec.epilog.iter.check354 ], [ %n.vec358, %vec.epilog.middle.block364 ] ; 4 uses
  %.1133.ph = phi ptr [ %.090, %iter.check352 ], [ %i.z, %vec.epilog.iter.check354 ], [ %i.ae, %vec.epilog.middle.block364 ] ; 2 uses
  %i.ah = sub i64 %i.s, %indvars.iv175.ph
  %xtraiter387 = and i64 %i.ah, 7                 ; 2 uses
  %lcmp.mod388.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %.lr.ph135.prol.loopexit, label %.lr.ph135.prol

.lr.ph135.prol:                                   ; preds = %.lr.ph135.preheader, %.lr.ph135.prol
  %indvars.iv175.prol = phi i64 [ %indvars.iv.next176.prol, %.lr.ph135.prol ], [ %indvars.iv175.ph, %.lr.ph135.preheader ] ; 2 uses
  %.1133.prol = phi ptr [ %i.ak, %.lr.ph135.prol ], [ %.1133.ph, %.lr.ph135.preheader ] ; 2 uses
  %prol.iter389 = phi i64 [ %prol.iter389.next, %.lr.ph135.prol ], [ 0, %.lr.ph135.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175.prol
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %.1133.prol, i64 1 ; 3 uses
  store i8 %i.aj, ptr %.1133.prol, align 1, !tbaa !11
  %indvars.iv.next176.prol = add nuw nsw i64 %indvars.iv175.prol, 1 ; 2 uses
  %prol.iter389.next = add i64 %prol.iter389, 1   ; 2 uses
  %prol.iter389.cmp.not = icmp eq i64 %prol.iter389.next, %xtraiter387
  br i1 %prol.iter389.cmp.not, label %.lr.ph135.prol.loopexit, label %.lr.ph135.prol, !llvm.loop !20

.lr.ph135.prol.loopexit:                          ; preds = %.lr.ph135.prol, %.lr.ph135.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph135.preheader ], [ %i.ak, %.lr.ph135.prol ]
  %indvars.iv175.unr = phi i64 [ %indvars.iv175.ph, %.lr.ph135.preheader ], [ %indvars.iv.next176.prol, %.lr.ph135.prol ]
  %.1133.unr = phi ptr [ %.1133.ph, %.lr.ph135.preheader ], [ %i.ak, %.lr.ph135.prol ]
  %i.al = sub nsw i64 %indvars.iv175.ph, %wide.trip.count178
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
  %scevgep180 = getelementptr i8, ptr %i.aw, i64 1
  br label %.loopexit

.lr.ph135:                                        ; preds = %.lr.ph135.prol.loopexit, %.lr.ph135
  %indvars.iv175 = phi i64 [ %indvars.iv.next176.7, %.lr.ph135 ], [ %indvars.iv175.unr, %.lr.ph135.prol.loopexit ] ; 9 uses
  %.1133 = phi ptr [ %i.cb, %.lr.ph135 ], [ %.1133.unr, %.lr.ph135.prol.loopexit ] ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %.1133, i64 1
  store i8 %i.ay, ptr %.1133, align 1, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %.1133, i64 2
  store i8 %i.bc, ptr %i.az, align 1, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %.1133, i64 3
  store i8 %i.bg, ptr %i.bd, align 1, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !11
  %i.bl = getelementptr inbounds nuw i8, ptr %.1133, i64 4
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %.1133, i64 5
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 5
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %.1133, i64 6
  store i8 %i.bs, ptr %i.bp, align 1, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 6
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %.1133, i64 7
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 7
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %.1133, i64 8 ; 2 uses
  store i8 %i.ca, ptr %i.bx, align 1, !tbaa !11
  %indvars.iv.next176.7 = add nuw nsw i64 %indvars.iv175, 8 ; 2 uses
  %exitcond179.not.7 = icmp eq i64 %indvars.iv.next176.7, %wide.trip.count178
  br i1 %exitcond179.not.7, label %.preheader, label %.lr.ph135, !llvm.loop !22

bb.l:                                             ; preds = %bb.k
  %i.cc = add i32 %i.u, -1                        ; 2 uses
  %or.cond3 = icmp ult i32 %i.cc, 21
  br i1 %or.cond3, label %.lr.ph124.preheader, label %bb.m

.lr.ph124.preheader:                              ; preds = %bb.l
  %wide.trip.count169 = zext nneg i32 %i.u to i64 ; 6 uses
  %min.iters.check283 = icmp ult i32 %i.u, 8
  %i.cd = sub i64 %i.r, %.090200
  %diff.check282 = icmp ugt i64 %i.cd, -8
  %or.cond369 = select i1 %min.iters.check283, i1 true, i1 %diff.check282
  br i1 %or.cond369, label %.lr.ph124.preheader371, label %vector.ph284

vector.ph284:                                     ; preds = %.lr.ph124.preheader
  %n.vec286 = and i64 %wide.trip.count169, 24     ; 4 uses
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
  %cmp.n294 = icmp eq i64 %n.vec286, %wide.trip.count169
  br i1 %cmp.n294, label %._crit_edge125, label %.lr.ph124.preheader371

.lr.ph124.preheader371:                           ; preds = %.lr.ph124.preheader, %middle.block293
  %indvars.iv166.ph = phi i64 [ 0, %.lr.ph124.preheader ], [ %n.vec286, %middle.block293 ] ; 3 uses
  %.3122.ph = phi ptr [ %.090, %.lr.ph124.preheader ], [ %i.ce, %middle.block293 ] ; 2 uses
  %xtraiter384 = and i64 %wide.trip.count169, 7   ; 2 uses
  %lcmp.mod385.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod385.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol

.lr.ph124.prol:                                   ; preds = %.lr.ph124.preheader371, %.lr.ph124.prol
  %indvars.iv166.prol = phi i64 [ %indvars.iv.next167.prol, %.lr.ph124.prol ], [ %indvars.iv166.ph, %.lr.ph124.preheader371 ] ; 2 uses
  %.3122.prol = phi ptr [ %i.cn, %.lr.ph124.prol ], [ %.3122.ph, %.lr.ph124.preheader371 ] ; 3 uses
  %prol.iter386 = phi i64 [ %prol.iter386.next, %.lr.ph124.prol ], [ 0, %.lr.ph124.preheader371 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166.prol
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %.3122.prol, i64 1 ; 3 uses
  store i8 %i.cm, ptr %.3122.prol, align 1, !tbaa !11
  %indvars.iv.next167.prol = add nuw nsw i64 %indvars.iv166.prol, 1 ; 2 uses
  %prol.iter386.next = add i64 %prol.iter386, 1   ; 2 uses
  %prol.iter386.cmp.not = icmp eq i64 %prol.iter386.next, %xtraiter384
  br i1 %prol.iter386.cmp.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol, !llvm.loop !23

.lr.ph124.prol.loopexit:                          ; preds = %.lr.ph124.prol, %.lr.ph124.preheader371
  %.3122.lcssa373.unr = phi ptr [ poison, %.lr.ph124.preheader371 ], [ %.3122.prol, %.lr.ph124.prol ]
  %.lcssa372.unr = phi ptr [ poison, %.lr.ph124.preheader371 ], [ %i.cn, %.lr.ph124.prol ]
  %indvars.iv166.unr = phi i64 [ %indvars.iv166.ph, %.lr.ph124.preheader371 ], [ %indvars.iv.next167.prol, %.lr.ph124.prol ]
  %.3122.unr = phi ptr [ %.3122.ph, %.lr.ph124.preheader371 ], [ %i.cn, %.lr.ph124.prol ]
  %i.co = sub nsw i64 %indvars.iv166.ph, %wide.trip.count169
  %i.cp = icmp ugt i64 %i.co, -8
  br i1 %i.cp, label %._crit_edge125, label %.lr.ph124

._crit_edge125.loopexit.unr-lcssa:                ; preds = %.lr.ph124
  %i.cq = getelementptr inbounds nuw i8, ptr %.3122, i64 7
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %._crit_edge125.loopexit.unr-lcssa, %.lr.ph124.prol.loopexit, %middle.block293
  %.3122.lcssa = phi ptr [ %ind.escape, %middle.block293 ], [ %.3122.lcssa373.unr, %.lr.ph124.prol.loopexit ], [ %i.cq, %._crit_edge125.loopexit.unr-lcssa ] ; 2 uses
  %.lcssa196 = phi ptr [ %i.ce, %middle.block293 ], [ %.lcssa372.unr, %.lr.ph124.prol.loopexit ], [ %i.en, %._crit_edge125.loopexit.unr-lcssa ]
  %.3122.lcssa297 = ptrtoaddr ptr %.3122.lcssa to i64
  store i8 46, ptr %.lcssa196, align 1, !tbaa !11
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
  %i.da = add i64 %i.r, %wide.trip.count169
  %4 = sub i64 %.3122.lcssa297, %i.da
  %5 = add i64 %4, 1
  %diff.check298 = icmp ult i64 %5, 31
  br i1 %diff.check298, label %.lr.ph131.preheader, label %vector.main.loop.iter.check301

vector.main.loop.iter.check301:                   ; preds = %vector.memcheck296
  %min.iters.check302 = icmp ult i32 %i.cx, 31
  br i1 %min.iters.check302, label %vec.epilog.ph321, label %vector.ph303

vector.ph303:                                     ; preds = %vector.main.loop.iter.check301
  %n.mod.vf304 = and i64 %i.cz, 24
  %n.vec305 = and i64 %i.cz, 8589934560           ; 5 uses
  %i.db = or disjoint i64 %n.vec305, %i.cs
  %i.dc = getelementptr i8, ptr %.4127, i64 %n.vec305 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.m, i64 %i.cs
  br label %vector.body306

vector.body306:                                   ; preds = %vector.body306, %vector.ph303
  %index307 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body306 ] ; 3 uses
  %next.gep308 = getelementptr i8, ptr %.4127, i64 %index307 ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index307 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load309 = load <16 x i8>, ptr %gep, align 1, !tbaa !11
  %wide.load310 = load <16 x i8>, ptr %i.dd, align 1, !tbaa !11
  %i.de = getelementptr i8, ptr %next.gep308, i64 16
  store <16 x i8> %wide.load309, ptr %next.gep308, align 1, !tbaa !11
  store <16 x i8> %wide.load310, ptr %i.de, align 1, !tbaa !11
  %index.next311 = add nuw i64 %index307, 32      ; 2 uses
  %i.df = icmp eq i64 %index.next311, %n.vec305
  br i1 %i.df, label %middle.block312, label %vector.body306, !llvm.loop !24

middle.block312:                                  ; preds = %vector.body306
  %cmp.n313 = icmp eq i64 %i.cz, %n.vec305
  br i1 %cmp.n313, label %.loopexit, label %vec.epilog.iter.check319

vec.epilog.iter.check319:                         ; preds = %middle.block312
  %min.epilog.iters.check320 = icmp eq i64 %n.mod.vf304, 0
  br i1 %min.epilog.iters.check320, label %.lr.ph131.preheader, label %vec.epilog.ph321, !prof !25

vec.epilog.ph321:                                 ; preds = %vector.main.loop.iter.check301, %vec.epilog.iter.check319
  %vec.epilog.resume.val314 = phi i64 [ %n.vec305, %vec.epilog.iter.check319 ], [ 0, %vector.main.loop.iter.check301 ]
  %n.vec323 = and i64 %i.cz, 8589934584           ; 4 uses
  %i.dg = add nuw nsw i64 %n.vec323, %i.cs
  %i.dh = getelementptr i8, ptr %.4127, i64 %n.vec323 ; 2 uses
  %invariant.gep402 = getelementptr i8, ptr %i.m, i64 %i.cs
  br label %vec.epilog.vector.body324

vec.epilog.vector.body324:                        ; preds = %vec.epilog.vector.body324, %vec.epilog.ph321
  %index325 = phi i64 [ %vec.epilog.resume.val314, %vec.epilog.ph321 ], [ %index.next328, %vec.epilog.vector.body324 ] ; 3 uses
  %next.gep326 = getelementptr i8, ptr %.4127, i64 %index325
  %gep403 = getelementptr i8, ptr %invariant.gep402, i64 %index325
  %wide.load327 = load <8 x i8>, ptr %gep403, align 1, !tbaa !11
  store <8 x i8> %wide.load327, ptr %next.gep326, align 1, !tbaa !11
  %index.next328 = add nuw i64 %index325, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next328, %n.vec323
  br i1 %i.di, label %vec.epilog.middle.block329, label %vec.epilog.vector.body324, !llvm.loop !26

vec.epilog.middle.block329:                       ; preds = %vec.epilog.vector.body324
  %cmp.n330 = icmp eq i64 %i.cz, %n.vec323
  br i1 %cmp.n330, label %.loopexit, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %vector.memcheck296, %iter.check317, %vec.epilog.iter.check319, %vec.epilog.middle.block329
  %indvars.iv172.ph = phi i64 [ %i.cs, %iter.check317 ], [ %i.cs, %vector.memcheck296 ], [ %i.db, %vec.epilog.iter.check319 ], [ %i.dg, %vec.epilog.middle.block329 ]
  %.4129.ph = phi ptr [ %.4127, %iter.check317 ], [ %.4127, %vector.memcheck296 ], [ %i.dc, %vec.epilog.iter.check319 ], [ %i.dh, %vec.epilog.middle.block329 ]
  br label %.lr.ph131

.lr.ph124:                                        ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.7, %.lr.ph124 ], [ %indvars.iv166.unr, %.lr.ph124.prol.loopexit ] ; 9 uses
  %.3122 = phi ptr [ %i.en, %.lr.ph124 ], [ %.3122.unr, %.lr.ph124.prol.loopexit ] ; 10 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %.3122, i64 1
  store i8 %i.dk, ptr %.3122, align 1, !tbaa !11
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !11
  %i.dp = getelementptr inbounds nuw i8, ptr %.3122, i64 2
  store i8 %i.do, ptr %i.dl, align 1, !tbaa !11
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !11
  %i.dt = getelementptr inbounds nuw i8, ptr %.3122, i64 3
  store i8 %i.ds, ptr %i.dp, align 1, !tbaa !11
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 3
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !11
  %i.dx = getelementptr inbounds nuw i8, ptr %.3122, i64 4
  store i8 %i.dw, ptr %i.dt, align 1, !tbaa !11
  %i.dy = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !11
  %i.eb = getelementptr inbounds nuw i8, ptr %.3122, i64 5
  store i8 %i.ea, ptr %i.dx, align 1, !tbaa !11
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 5
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !11
  %i.ef = getelementptr inbounds nuw i8, ptr %.3122, i64 6
  store i8 %i.ee, ptr %i.eb, align 1, !tbaa !11
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 6
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !11
  %i.ej = getelementptr inbounds nuw i8, ptr %.3122, i64 7
  store i8 %i.ei, ptr %i.ef, align 1, !tbaa !11
  %i.ek = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 7
  %i.em = load i8, ptr %i.el, align 1, !tbaa !11
  %i.en = getelementptr inbounds nuw i8, ptr %.3122, i64 8 ; 2 uses
  store i8 %i.em, ptr %i.ej, align 1, !tbaa !11
  %indvars.iv.next167.7 = add nuw nsw i64 %indvars.iv166, 8 ; 2 uses
  %exitcond170.not.7 = icmp eq i64 %indvars.iv.next167.7, %wide.trip.count169
  br i1 %exitcond170.not.7, label %._crit_edge125.loopexit.unr-lcssa, label %.lr.ph124, !llvm.loop !27

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %.lr.ph131 ], [ %indvars.iv172.ph, %.lr.ph131.preheader ] ; 2 uses
  %.4129 = phi ptr [ %.4, %.lr.ph131 ], [ %.4129.ph, %.lr.ph131.preheader ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv172
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !11
  store i8 %i.ep, ptr %.4129, align 1, !tbaa !11
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %.4 = getelementptr inbounds nuw i8, ptr %.4129, i64 1 ; 2 uses
  %i.eq = trunc nuw i64 %indvars.iv.next173 to i32
  %i.er = icmp slt i32 %i.eq, %i.t
  br i1 %i.er, label %.lr.ph131, label %.loopexit, !llvm.loop !28

bb.m:                                             ; preds = %bb.l
  %i.es = add i32 %i.u, 5
  %or.cond5 = icmp ult i32 %i.es, 6
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.et = getelementptr inbounds nuw i8, ptr %.090, i64 1
  store i8 48, ptr %.090, align 1, !tbaa !11
  %i.eu = getelementptr i8, ptr %.090, i64 2      ; 2 uses
  store i8 46, ptr %i.et, align 1, !tbaa !11
  %i.ev = icmp slt i32 %i.u, 0
  br i1 %i.ev, label %.lr.ph116.preheader, label %.preheader97

.lr.ph116.preheader:                              ; preds = %bb.n
  %i.ew = sub nsw i32 0, %i.u
  %i.ex = zext nneg i32 %i.ew to i64              ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.eu, i8 48, i64 %i.ex, i1 false), !tbaa !11
  %i.ey = getelementptr i8, ptr %.090, i64 %i.ex
  %scevgep160 = getelementptr i8, ptr %i.ey, i64 2
  br label %.preheader97

.preheader97:                                     ; preds = %.lr.ph116.preheader, %bb.n
  %.5.lcssa = phi ptr [ %i.eu, %bb.n ], [ %scevgep160, %.lr.ph116.preheader ] ; 7 uses
  %i.ez = icmp sgt i32 %i.t, 0
  br i1 %i.ez, label %iter.check265, label %.loopexit

iter.check265:                                    ; preds = %.preheader97
  %.5.lcssa248 = ptrtoaddr ptr %.5.lcssa to i64
  %wide.trip.count164 = and i64 %i.s, 2147483647  ; 6 uses
  %min.iters.check250 = icmp samesign ult i64 %wide.trip.count164, 4
  %i.fa = sub i64 %i.r, %.5.lcssa248
  %diff.check249 = icmp ugt i64 %i.fa, -32
  %or.cond370 = select i1 %min.iters.check250, i1 true, i1 %diff.check249
  br i1 %or.cond370, label %.lr.ph120.preheader, label %vector.main.loop.iter.check251

vector.main.loop.iter.check251:                   ; preds = %iter.check265
  %min.iters.check252 = icmp samesign ult i64 %wide.trip.count164, 32
  br i1 %min.iters.check252, label %vec.epilog.ph269, label %vector.ph253

vector.ph253:                                     ; preds = %vector.main.loop.iter.check251
  %n.mod.vf254 = and i64 %i.s, 28
  %n.vec255 = and i64 %i.s, 2147483616            ; 5 uses
  %i.fb = getelementptr i8, ptr %.5.lcssa, i64 %n.vec255 ; 2 uses
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph253
  %index257 = phi i64 [ 0, %vector.ph253 ], [ %index.next261, %vector.body256 ] ; 3 uses
  %next.gep258 = getelementptr i8, ptr %.5.lcssa, i64 %index257 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.m, i64 %index257 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load259 = load <16 x i8>, ptr %i.fc, align 1, !tbaa !11
  %wide.load260 = load <16 x i8>, ptr %i.fd, align 1, !tbaa !11
  %i.fe = getelementptr i8, ptr %next.gep258, i64 16
  store <16 x i8> %wide.load259, ptr %next.gep258, align 1, !tbaa !11
  store <16 x i8> %wide.load260, ptr %i.fe, align 1, !tbaa !11
  %index.next261 = add nuw i64 %index257, 32      ; 2 uses
  %i.ff = icmp eq i64 %index.next261, %n.vec255
  br i1 %i.ff, label %middle.block262, label %vector.body256, !llvm.loop !29

middle.block262:                                  ; preds = %vector.body256
  %cmp.n263 = icmp eq i64 %wide.trip.count164, %n.vec255
  br i1 %cmp.n263, label %.loopexit, label %vec.epilog.iter.check267

vec.epilog.iter.check267:                         ; preds = %middle.block262
  %min.epilog.iters.check268 = icmp eq i64 %n.mod.vf254, 0
  br i1 %min.epilog.iters.check268, label %.lr.ph120.preheader, label %vec.epilog.ph269, !prof !18

vec.epilog.ph269:                                 ; preds = %vector.main.loop.iter.check251, %vec.epilog.iter.check267
  %vec.epilog.resume.val264 = phi i64 [ %n.vec255, %vec.epilog.iter.check267 ], [ 0, %vector.main.loop.iter.check251 ]
  %n.vec271 = and i64 %i.s, 2147483644            ; 4 uses
  %i.fg = getelementptr i8, ptr %.5.lcssa, i64 %n.vec271 ; 2 uses
  br label %vec.epilog.vector.body272

vec.epilog.vector.body272:                        ; preds = %vec.epilog.vector.body272, %vec.epilog.ph269
  %index273 = phi i64 [ %vec.epilog.resume.val264, %vec.epilog.ph269 ], [ %index.next276, %vec.epilog.vector.body272 ] ; 3 uses
  %next.gep274 = getelementptr i8, ptr %.5.lcssa, i64 %index273
  %i.fh = getelementptr inbounds nuw i8, ptr %i.m, i64 %index273
  %wide.load275 = load <4 x i8>, ptr %i.fh, align 1, !tbaa !11
  store <4 x i8> %wide.load275, ptr %next.gep274, align 1, !tbaa !11
  %index.next276 = add nuw i64 %index273, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next276, %n.vec271
  br i1 %i.fi, label %vec.epilog.middle.block277, label %vec.epilog.vector.body272, !llvm.loop !30

vec.epilog.middle.block277:                       ; preds = %vec.epilog.vector.body272
  %cmp.n278 = icmp eq i64 %wide.trip.count164, %n.vec271
  br i1 %cmp.n278, label %.loopexit, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %iter.check265, %vec.epilog.iter.check267, %vec.epilog.middle.block277
  %indvars.iv161.ph = phi i64 [ 0, %iter.check265 ], [ %n.vec255, %vec.epilog.iter.check267 ], [ %n.vec271, %vec.epilog.middle.block277 ] ; 4 uses
  %.6118.ph = phi ptr [ %.5.lcssa, %iter.check265 ], [ %i.fb, %vec.epilog.iter.check267 ], [ %i.fg, %vec.epilog.middle.block277 ] ; 2 uses
  %i.fj = sub i64 %i.s, %indvars.iv161.ph
  %xtraiter381 = and i64 %i.fj, 7                 ; 2 uses
  %lcmp.mod382.not = icmp eq i64 %xtraiter381, 0
  br i1 %lcmp.mod382.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol

.lr.ph120.prol:                                   ; preds = %.lr.ph120.preheader, %.lr.ph120.prol
  %indvars.iv161.prol = phi i64 [ %indvars.iv.next162.prol, %.lr.ph120.prol ], [ %indvars.iv161.ph, %.lr.ph120.preheader ] ; 2 uses
  %.6118.prol = phi ptr [ %i.fm, %.lr.ph120.prol ], [ %.6118.ph, %.lr.ph120.preheader ] ; 2 uses
  %prol.iter383 = phi i64 [ %prol.iter383.next, %.lr.ph120.prol ], [ 0, %.lr.ph120.preheader ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv161.prol
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !11
  %i.fm = getelementptr inbounds nuw i8, ptr %.6118.prol, i64 1 ; 3 uses
  store i8 %i.fl, ptr %.6118.prol, align 1, !tbaa !11
  %indvars.iv.next162.prol = add nuw nsw i64 %indvars.iv161.prol, 1 ; 2 uses
  %prol.iter383.next = add i64 %prol.iter383, 1   ; 2 uses
  %prol.iter383.cmp.not = icmp eq i64 %prol.iter383.next, %xtraiter381
  br i1 %prol.iter383.cmp.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol, !llvm.loop !31

.lr.ph120.prol.loopexit:                          ; preds = %.lr.ph120.prol, %.lr.ph120.preheader
  %.lcssa375.unr = phi ptr [ poison, %.lr.ph120.preheader ], [ %i.fm, %.lr.ph120.prol ]
  %indvars.iv161.unr = phi i64 [ %indvars.iv161.ph, %.lr.ph120.preheader ], [ %indvars.iv.next162.prol, %.lr.ph120.prol ]
  %.6118.unr = phi ptr [ %.6118.ph, %.lr.ph120.preheader ], [ %i.fm, %.lr.ph120.prol ]
  %i.fn = sub nsw i64 %indvars.iv161.ph, %wide.trip.count164
  %i.fo = icmp ugt i64 %i.fn, -8
  br i1 %i.fo, label %.loopexit, label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120
  %indvars.iv161 = phi i64 [ %indvars.iv.next162.7, %.lr.ph120 ], [ %indvars.iv161.unr, %.lr.ph120.prol.loopexit ] ; 9 uses
  %.6118 = phi ptr [ %i.gt, %.lr.ph120 ], [ %.6118.unr, %.lr.ph120.prol.loopexit ] ; 9 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv161
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !11
  %i.fr = getelementptr inbounds nuw i8, ptr %.6118, i64 1
  store i8 %i.fq, ptr %.6118, align 1, !tbaa !11
  %i.fs = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv161
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !11
  %i.fv = getelementptr inbounds nuw i8, ptr %.6118, i64 2
  store i8 %i.fu, ptr %i.fr, align 1, !tbaa !11
  %i.fw = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv161
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !11
  %i.fz = getelementptr inbounds nuw i8, ptr %.6118, i64 3
  store i8 %i.fy, ptr %i.fv, align 1, !tbaa !11
  %i.ga = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv161
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 3
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !11
  %i.gd = getelementptr inbounds nuw i8, ptr %.6118, i64 4
  store i8 %i.gc, ptr %i.fz, align 1, !tbaa !11
  %i.ge = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv161
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !11
  %i.gh = getelementptr inbounds nuw i8, ptr %.6118, i64 5
  store i8 %i.gg, ptr %i.gd, align 1, !tbaa !11
  %i.gi = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv161
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 5
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !11
  %i.gl = getelementptr inbounds nuw i8, ptr %.6118, i64 6
  store i8 %i.gk, ptr %i.gh, align 1, !tbaa !11
  %i.gm = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv161
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 6
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !11
  %i.gp = getelementptr inbounds nuw i8, ptr %.6118, i64 7
  store i8 %i.go, ptr %i.gl, align 1, !tbaa !11
  %i.gq = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv161
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 7
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !11
  %i.gt = getelementptr inbounds nuw i8, ptr %.6118, i64 8 ; 2 uses
  store i8 %i.gs, ptr %i.gp, align 1, !tbaa !11
  %indvars.iv.next162.7 = add nuw nsw i64 %indvars.iv161, 8 ; 2 uses
  %exitcond165.not.7 = icmp eq i64 %indvars.iv.next162.7, %wide.trip.count164
  br i1 %exitcond165.not.7, label %.loopexit, label %.lr.ph120, !llvm.loop !32

bb.o:                                             ; preds = %bb.m
  %i.gu = icmp eq i32 %i.t, 1
  %i.gv = call i32 @llvm.abs.i32(i32 %i.cc, i1 true) ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.090, i64 1 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.090, i64 2 ; 7 uses
  br i1 %i.gu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.gy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %i.gv) #7 ; 3 uses
  %i.gz = load i8, ptr %i.m, align 1, !tbaa !11
  store i8 %i.gz, ptr %.090, align 1, !tbaa !11
  store i8 101, ptr %i.gw, align 1, !tbaa !11
  %i.ha = load i32, ptr %i.a, align 4, !tbaa !3
  %i.hb = icmp slt i32 %i.ha, 1
  %i.hc = select i1 %i.hb, i8 45, i8 43
  %i.hd = getelementptr i8, ptr %.090, i64 3      ; 2 uses
  store i8 %i.hc, ptr %i.gx, align 1, !tbaa !11
  %i.he = icmp sgt i32 %i.gy, 0
  br i1 %i.he, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.p
  %i.hf = zext nneg i32 %i.gy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hd, ptr nonnull align 16 %i.d, i64 %i.hf, i1 false), !tbaa !11
  %narrow = add nuw i32 %i.gy, 3
  %i.hg = zext i32 %narrow to i64
  %scevgep = getelementptr i8, ptr %.090, i64 %i.hg
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %.lr.ph110.preheader, %bb.p
  %.7.lcssa = phi ptr [ %i.hd, %bb.p ], [ %scevgep, %.lr.ph110.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.hh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %i.gv) #7 ; 4 uses
  %i.hi = load i8, ptr %i.m, align 1, !tbaa !11
  store i8 %i.hi, ptr %.090, align 1, !tbaa !11
  store i8 46, ptr %i.gw, align 1, !tbaa !11
  %i.hj = icmp sgt i32 %i.t, 1
  br i1 %i.hj, label %vector.memcheck, label %._crit_edge

vector.memcheck:                                  ; preds = %bb.q
  %wide.trip.count = and i64 %i.s, 2147483647     ; 3 uses
  %i.hk = add nsw i64 %wide.trip.count, -1        ; 7 uses
  %min.iters.check = icmp ult i64 %i.hk, 8
  %i.hl = sub i64 %.090200, %i.r
  %diff.check = icmp ult i64 %i.hl, 31
  %or.cond371 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond371, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check201 = icmp ult i64 %i.hk, 32
  br i1 %min.iters.check201, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.hk, 24
  %n.vec = and i64 %i.hk, -32                     ; 5 uses
  %i.hm = or disjoint i64 %n.vec, 1
  %i.hn = getelementptr i8, ptr %i.gx, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.gx, i64 %index ; 2 uses
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
  %cmp.n = icmp eq i64 %i.hk, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec205 = and i64 %i.hk, -8                   ; 4 uses
  %i.ht = or disjoint i64 %n.vec205, 1
  %i.hu = getelementptr i8, ptr %i.gx, i64 %n.vec205 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index206 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next209, %vec.epilog.vector.body ] ; 3 uses
  %next.gep207 = getelementptr i8, ptr %i.gx, i64 %index206
  %i.hv = getelementptr inbounds nuw i8, ptr %i.m, i64 %index206
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  %wide.load208 = load <8 x i8>, ptr %i.hw, align 1, !tbaa !11
  store <8 x i8> %wide.load208, ptr %next.gep207, align 1, !tbaa !11
  %index.next209 = add nuw i64 %index206, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next209, %n.vec205
  br i1 %i.hx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n210 = icmp eq i64 %i.hk, %n.vec205
  br i1 %cmp.n210, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ %i.hm, %vec.epilog.iter.check ], [ %i.ht, %vec.epilog.middle.block ] ; 4 uses
  %.899.ph = phi ptr [ %i.gx, %vector.memcheck ], [ %i.hn, %vec.epilog.iter.check ], [ %i.hu, %vec.epilog.middle.block ] ; 2 uses
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
  %.lcssa377.unr.a = phi ptr [ poison, %.lr.ph.preheader ], [ %i.ib, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.899.unr = phi ptr [ %.899.ph, %.lr.ph.preheader ], [ %i.ib, %.lr.ph.prol ]
  %i.ic = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.id = icmp ugt i64 %i.ic, -8
  br i1 %i.id, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.q
  %.8.lcssa = phi ptr [ %i.gx, %bb.q ], [ %i.hu, %vec.epilog.middle.block ], [ %i.hn, %middle.block ], [ %.lcssa377.unr.a, %.lr.ph.prol.loopexit ], [ %i.kc, %.lr.ph ] ; 4 uses
  %.8.lcssa214 = ptrtoaddr ptr %.8.lcssa to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 1
  store i8 101, ptr %.8.lcssa, align 1, !tbaa !11
  %i.if = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ig = icmp slt i32 %i.if, 1
  %i.ih = select i1 %i.ig, i8 45, i8 43
  %i.ii = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 2 ; 7 uses
  store i8 %i.ih, ptr %i.ie, align 1, !tbaa !11
  %i.ij = icmp sgt i32 %i.hh, 0
  br i1 %i.ij, label %iter.check231, label %._crit_edge105

iter.check231:                                    ; preds = %._crit_edge
  %wide.trip.count154 = zext nneg i32 %i.hh to i64 ; 8 uses
  %min.iters.check216 = icmp ult i32 %i.hh, 4
  br i1 %min.iters.check216, label %.lr.ph104.preheader, label %vector.memcheck213

vector.memcheck213:                               ; preds = %iter.check231
  %6 = sub i64 %.8.lcssa214, %i.f
  %7 = add i64 %6, 1
  %diff.check215 = icmp ult i64 %7, 31
  br i1 %diff.check215, label %.lr.ph104.preheader, label %vector.main.loop.iter.check217

vector.main.loop.iter.check217:                   ; preds = %vector.memcheck213
  %min.iters.check218 = icmp ult i32 %i.hh, 32
  br i1 %min.iters.check218, label %vec.epilog.ph235, label %vector.ph219

vector.ph219:                                     ; preds = %vector.main.loop.iter.check217
  %n.mod.vf220 = and i64 %wide.trip.count154, 28
  %n.vec221 = and i64 %wide.trip.count154, 2147483616 ; 5 uses
  %i.ik = getelementptr i8, ptr %i.ii, i64 %n.vec221 ; 2 uses
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph219
  %index223 = phi i64 [ 0, %vector.ph219 ], [ %index.next227, %vector.body222 ] ; 3 uses
  %next.gep224 = getelementptr i8, ptr %i.ii, i64 %index223 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.e, i64 %index223 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %wide.load225 = load <16 x i8>, ptr %i.il, align 16, !tbaa !11
  %wide.load226 = load <16 x i8>, ptr %i.im, align 16, !tbaa !11
  %i.in = getelementptr i8, ptr %next.gep224, i64 16
  store <16 x i8> %wide.load225, ptr %next.gep224, align 1, !tbaa !11
  store <16 x i8> %wide.load226, ptr %i.in, align 1, !tbaa !11
  %index.next227 = add nuw i64 %index223, 32      ; 2 uses
  %i.io = icmp eq i64 %index.next227, %n.vec221
  br i1 %i.io, label %middle.block228, label %vector.body222, !llvm.loop !36

middle.block228:                                  ; preds = %vector.body222
  %cmp.n229 = icmp eq i64 %n.vec221, %wide.trip.count154
  br i1 %cmp.n229, label %._crit_edge105, label %vec.epilog.iter.check233

vec.epilog.iter.check233:                         ; preds = %middle.block228
  %min.epilog.iters.check234 = icmp eq i64 %n.mod.vf220, 0
  br i1 %min.epilog.iters.check234, label %.lr.ph104.preheader, label %vec.epilog.ph235, !prof !18

vec.epilog.ph235:                                 ; preds = %vector.main.loop.iter.check217, %vec.epilog.iter.check233
  %vec.epilog.resume.val230 = phi i64 [ %n.vec221, %vec.epilog.iter.check233 ], [ 0, %vector.main.loop.iter.check217 ]
  %n.vec237 = and i64 %wide.trip.count154, 2147483644 ; 4 uses
  %i.ip = getelementptr i8, ptr %i.ii, i64 %n.vec237 ; 2 uses
  br label %vec.epilog.vector.body238

vec.epilog.vector.body238:                        ; preds = %vec.epilog.vector.body238, %vec.epilog.ph235
  %index239 = phi i64 [ %vec.epilog.resume.val230, %vec.epilog.ph235 ], [ %index.next242, %vec.epilog.vector.body238 ] ; 3 uses
  %next.gep240 = getelementptr i8, ptr %i.ii, i64 %index239
  %i.iq = getelementptr inbounds nuw i8, ptr %i.e, i64 %index239
  %wide.load241 = load <4 x i8>, ptr %i.iq, align 4, !tbaa !11
  store <4 x i8> %wide.load241, ptr %next.gep240, align 1, !tbaa !11
  %index.next242 = add nuw i64 %index239, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next242, %n.vec237
  br i1 %i.ir, label %vec.epilog.middle.block243, label %vec.epilog.vector.body238, !llvm.loop !37

vec.epilog.middle.block243:                       ; preds = %vec.epilog.vector.body238
  %cmp.n244 = icmp eq i64 %n.vec237, %wide.trip.count154
  br i1 %cmp.n244, label %._crit_edge105, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %vector.memcheck213, %iter.check231, %vec.epilog.iter.check233, %vec.epilog.middle.block243
  %indvars.iv151.ph = phi i64 [ 0, %iter.check231 ], [ 0, %vector.memcheck213 ], [ %n.vec221, %vec.epilog.iter.check233 ], [ %n.vec237, %vec.epilog.middle.block243 ] ; 4 uses
  %.9101.ph = phi ptr [ %i.ii, %iter.check231 ], [ %i.ii, %vector.memcheck213 ], [ %i.ik, %vec.epilog.iter.check233 ], [ %i.ip, %vec.epilog.middle.block243 ] ; 2 uses
  %i.is = sub nsw i64 %wide.trip.count154, %indvars.iv151.ph
  %xtraiter378 = and i64 %i.is, 7                 ; 2 uses
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  br i1 %lcmp.mod379.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol

.lr.ph104.prol:                                   ; preds = %.lr.ph104.preheader, %.lr.ph104.prol
  %indvars.iv151.prol = phi i64 [ %indvars.iv.next152.prol, %.lr.ph104.prol ], [ %indvars.iv151.ph, %.lr.ph104.preheader ] ; 2 uses
  %.9101.prol = phi ptr [ %i.iv, %.lr.ph104.prol ], [ %.9101.ph, %.lr.ph104.preheader ] ; 2 uses
  %prol.iter380 = phi i64 [ %prol.iter380.next, %.lr.ph104.prol ], [ 0, %.lr.ph104.preheader ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151.prol
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !11
  %i.iv = getelementptr inbounds nuw i8, ptr %.9101.prol, i64 1 ; 3 uses
  store i8 %i.iu, ptr %.9101.prol, align 1, !tbaa !11
  %indvars.iv.next152.prol = add nuw nsw i64 %indvars.iv151.prol, 1 ; 2 uses
  %prol.iter380.next = add i64 %prol.iter380, 1   ; 2 uses
  %prol.iter380.cmp.not = icmp eq i64 %prol.iter380.next, %xtraiter378
  br i1 %prol.iter380.cmp.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol, !llvm.loop !38

.lr.ph104.prol.loopexit:                          ; preds = %.lr.ph104.prol, %.lr.ph104.preheader
  %.lcssa376.unr = phi ptr [ poison, %.lr.ph104.preheader ], [ %i.iv, %.lr.ph104.prol ]
  %indvars.iv151.unr = phi i64 [ %indvars.iv151.ph, %.lr.ph104.preheader ], [ %indvars.iv.next152.prol, %.lr.ph104.prol ]
  %.9101.unr = phi ptr [ %.9101.ph, %.lr.ph104.preheader ], [ %i.iv, %.lr.ph104.prol ]
  %i.iw = sub nsw i64 %indvars.iv151.ph, %wide.trip.count154
  %i.ix = icmp ugt i64 %i.iw, -8
  br i1 %i.ix, label %._crit_edge105, label %.lr.ph104

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.899 = phi ptr [ %i.kc, %.lr.ph ], [ %.899.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !11
  %i.ja = getelementptr inbounds nuw i8, ptr %.899, i64 1
  store i8 %i.iz, ptr %.899, align 1, !tbaa !11
  %i.jb = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !11
  %i.je = getelementptr inbounds nuw i8, ptr %.899, i64 2
  store i8 %i.jd, ptr %i.ja, align 1, !tbaa !11
  %i.jf = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 2
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !11
  %i.ji = getelementptr inbounds nuw i8, ptr %.899, i64 3
  store i8 %i.jh, ptr %i.je, align 1, !tbaa !11
  %i.jj = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 3
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !11
  %i.jm = getelementptr inbounds nuw i8, ptr %.899, i64 4
  store i8 %i.jl, ptr %i.ji, align 1, !tbaa !11
  %i.jn = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !11
  %i.jq = getelementptr inbounds nuw i8, ptr %.899, i64 5
  store i8 %i.jp, ptr %i.jm, align 1, !tbaa !11
  %i.jr = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 5
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !11
  %i.ju = getelementptr inbounds nuw i8, ptr %.899, i64 6
  store i8 %i.jt, ptr %i.jq, align 1, !tbaa !11
  %i.jv = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 6
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !11
  %i.jy = getelementptr inbounds nuw i8, ptr %.899, i64 7
  store i8 %i.jx, ptr %i.ju, align 1, !tbaa !11
  %i.jz = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 7
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !11
  %i.kc = getelementptr inbounds nuw i8, ptr %.899, i64 8 ; 2 uses
  store i8 %i.kb, ptr %i.jy, align 1, !tbaa !11
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge105:                                   ; preds = %.lr.ph104.prol.loopexit, %.lr.ph104, %middle.block228, %vec.epilog.middle.block243, %._crit_edge
  %.9.lcssa = phi ptr [ %i.ii, %._crit_edge ], [ %i.ip, %vec.epilog.middle.block243 ], [ %i.ik, %middle.block228 ], [ %.lcssa376.unr, %.lr.ph104.prol.loopexit ], [ %i.lh, %.lr.ph104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %.loopexit

.lr.ph104:                                        ; preds = %.lr.ph104.prol.loopexit, %.lr.ph104
  %indvars.iv151 = phi i64 [ %indvars.iv.next152.7, %.lr.ph104 ], [ %indvars.iv151.unr, %.lr.ph104.prol.loopexit ] ; 9 uses
  %.9101 = phi ptr [ %i.lh, %.lr.ph104 ], [ %.9101.unr, %.lr.ph104.prol.loopexit ] ; 9 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !11
  %i.kf = getelementptr inbounds nuw i8, ptr %.9101, i64 1
  store i8 %i.ke, ptr %.9101, align 1, !tbaa !11
  %i.kg = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !11
  %i.kj = getelementptr inbounds nuw i8, ptr %.9101, i64 2
  store i8 %i.ki, ptr %i.kf, align 1, !tbaa !11
  %i.kk = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 2
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !11
  %i.kn = getelementptr inbounds nuw i8, ptr %.9101, i64 3
  store i8 %i.km, ptr %i.kj, align 1, !tbaa !11
  %i.ko = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 3
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !11
  %i.kr = getelementptr inbounds nuw i8, ptr %.9101, i64 4
  store i8 %i.kq, ptr %i.kn, align 1, !tbaa !11
  %i.ks = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !11
  %i.kv = getelementptr inbounds nuw i8, ptr %.9101, i64 5
  store i8 %i.ku, ptr %i.kr, align 1, !tbaa !11
  %i.kw = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 5
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !11
  %i.kz = getelementptr inbounds nuw i8, ptr %.9101, i64 6
  store i8 %i.ky, ptr %i.kv, align 1, !tbaa !11
  %i.la = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 6
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !11
  %i.ld = getelementptr inbounds nuw i8, ptr %.9101, i64 7
  store i8 %i.lc, ptr %i.kz, align 1, !tbaa !11
  %i.le = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 7
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !11
  %i.lh = getelementptr inbounds nuw i8, ptr %.9101, i64 8 ; 2 uses
  store i8 %i.lg, ptr %i.ld, align 1, !tbaa !11
  %indvars.iv.next152.7 = add nuw nsw i64 %indvars.iv151, 8 ; 2 uses
  %exitcond155.not.7 = icmp eq i64 %indvars.iv.next152.7, %wide.trip.count154
  br i1 %exitcond155.not.7, label %._crit_edge105, label %.lr.ph104, !llvm.loop !40

.loopexit:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120, %.lr.ph131, %middle.block262, %vec.epilog.middle.block277, %middle.block312, %vec.epilog.middle.block329, %.lr.ph139.preheader, %.preheader97, %._crit_edge125, %.preheader, %._crit_edge111, %._crit_edge105
  %.10 = phi ptr [ %.9.lcssa, %._crit_edge105 ], [ %.4, %.lr.ph131 ], [ %scevgep180, %.lr.ph139.preheader ], [ %.7.lcssa, %._crit_edge111 ], [ %.1.lcssa, %.preheader ], [ %.4127, %._crit_edge125 ], [ %.5.lcssa, %.preheader97 ], [ %i.dh, %vec.epilog.middle.block329 ], [ %i.dc, %middle.block312 ], [ %i.fg, %vec.epilog.middle.block277 ], [ %i.fb, %middle.block262 ], [ %.lcssa375.unr, %.lr.ph120.prol.loopexit ], [ %i.gt, %.lr.ph120 ] ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.10, i64 1
  store i8 0, ptr %.10, align 1, !tbaa !11
  %i.lj = load ptr, ptr %i.h, align 8, !tbaa !7
  call void @g_freedtoa(ptr noundef %i.lj, ptr noundef %i.m) #7
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = ptrtoint ptr %1 to i64
  %i.lm = xor i64 %i.ll, -1
  %i.ln = add i64 %i.lk, %i.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !7
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.h, %bb.f, %bb.d, %bb.b
  %i.lo = phi ptr [ %i.g, %bb.b ], [ %i.g, %bb.d ], [ %i.g, %bb.f ], [ %i.g, %bb.h ], [ %.pre, %.loopexit ]
  %.082 = phi i64 [ 3, %bb.b ], [ 1, %bb.d ], [ 8, %bb.f ], [ 9, %bb.h ], [ %i.ln, %.loopexit ]
  call void @dtoa_alloc_done(ptr noundef %i.lo) #7
end_hunk_0
