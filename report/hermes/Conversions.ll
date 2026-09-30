Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Conversions?download=true
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
  store ptr %i.g, ptr %i.h, align 8, !tbaa !31
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
  %i.n = load i32, ptr %i.b, align 4, !tbaa !6
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.089 = phi ptr [ %i.o, %bb.j ], [ %1, %bb.i ]  ; 23 uses
  %.089199 = ptrtoaddr ptr %.089 to i64           ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.q = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.m to i64                 ; 8 uses
  %i.s = sub i64 %i.q, %i.r                       ; 13 uses
  %i.t = trunc i64 %i.s to i32                    ; 8 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !6    ; 13 uses
  %i.v = icmp sge i32 %i.u, %i.t
  %i.w = icmp slt i32 %i.u, 22
  %or.cond = and i1 %i.w, %i.v
  br i1 %or.cond, label %.preheader94, label %bb.l

.preheader94:                                     ; preds = %bb.k
  %i.x = icmp sgt i32 %i.t, 0
  br i1 %i.x, label %iter.check342, label %.preheader

iter.check342:                                    ; preds = %.preheader94
  %wide.trip.count178 = and i64 %i.s, 2147483647  ; 6 uses
  %min.iters.check327 = icmp samesign ult i64 %wide.trip.count178, 4
  %i.y = sub i64 %i.r, %.089199
  %diff.check325 = icmp ugt i64 %i.y, -32
  %or.cond357 = select i1 %min.iters.check327, i1 true, i1 %diff.check325
  br i1 %or.cond357, label %.lr.ph135.preheader, label %vector.main.loop.iter.check328

vector.main.loop.iter.check328:                   ; preds = %iter.check342
  %min.iters.check329 = icmp samesign ult i64 %wide.trip.count178, 32
  br i1 %min.iters.check329, label %vec.epilog.ph346, label %vector.ph330

vector.ph330:                                     ; preds = %vector.main.loop.iter.check328
  %i.z = and i64 %i.s, 28
  %n.vec331 = and i64 %i.s, 2147483616            ; 5 uses
  %i.aa = getelementptr i8, ptr %.089, i64 %n.vec331 ; 2 uses
  br label %vector.body332

vector.body332:                                   ; preds = %vector.ph330, %vector.body332
  %index333 = phi i64 [ 0, %vector.ph330 ], [ %index.next337, %vector.body332 ] ; 3 uses
  %next.gep334 = getelementptr i8, ptr %.089, i64 %index333 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 %index333 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load335 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !32
  %wide.load336 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !32
  %i.ad = getelementptr i8, ptr %next.gep334, i64 16
  store <16 x i8> %wide.load335, ptr %next.gep334, align 1, !tbaa !32
  store <16 x i8> %wide.load336, ptr %i.ad, align 1, !tbaa !32
  %index.next337 = add nuw i64 %index333, 32      ; 2 uses
  %i.ae = icmp eq i64 %index.next337, %n.vec331
  br i1 %i.ae, label %middle.block338, label %vector.body332, !llvm.loop !7

middle.block338:                                  ; preds = %vector.body332
  %cmp.n339 = icmp eq i64 %wide.trip.count178, %n.vec331
  br i1 %cmp.n339, label %.preheader, label %vec.epilog.iter.check344

vec.epilog.iter.check344:                         ; preds = %middle.block338
  %min.epilog.iters.check345 = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check345, label %.lr.ph135.preheader, label %vec.epilog.ph346, !prof !38

vec.epilog.ph346:                                 ; preds = %vector.main.loop.iter.check328, %vec.epilog.iter.check344
  %vec.epilog.resume.val340 = phi i64 [ %n.vec331, %vec.epilog.iter.check344 ], [ 0, %vector.main.loop.iter.check328 ]
  %n.vec347 = and i64 %i.s, 2147483644            ; 4 uses
  %i.af = getelementptr i8, ptr %.089, i64 %n.vec347 ; 2 uses
  br label %vec.epilog.vector.body348

vec.epilog.vector.body348:                        ; preds = %vec.epilog.vector.body348, %vec.epilog.ph346
  %index349 = phi i64 [ %vec.epilog.resume.val340, %vec.epilog.ph346 ], [ %index.next352, %vec.epilog.vector.body348 ] ; 3 uses
  %next.gep350 = getelementptr i8, ptr %.089, i64 %index349
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 %index349
  %wide.load351 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !32
  store <4 x i8> %wide.load351, ptr %next.gep350, align 1, !tbaa !32
  %index.next352 = add nuw i64 %index349, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next352, %n.vec347
  br i1 %i.ah, label %vec.epilog.middle.block353, label %vec.epilog.vector.body348, !llvm.loop !8

vec.epilog.middle.block353:                       ; preds = %vec.epilog.vector.body348
  %cmp.n354 = icmp eq i64 %wide.trip.count178, %n.vec347
  br i1 %cmp.n354, label %.preheader, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %iter.check342, %vec.epilog.iter.check344, %vec.epilog.middle.block353
  %indvars.iv175.ph = phi i64 [ 0, %iter.check342 ], [ %n.vec331, %vec.epilog.iter.check344 ], [ %n.vec347, %vec.epilog.middle.block353 ] ; 4 uses
  %.1133.ph = phi ptr [ %.089, %iter.check342 ], [ %i.aa, %vec.epilog.iter.check344 ], [ %i.af, %vec.epilog.middle.block353 ] ; 2 uses
  %i.ai = sub i64 %i.s, %indvars.iv175.ph
  %xtraiter377 = and i64 %i.ai, 7                 ; 2 uses
  %lcmp.mod378.not = icmp eq i64 %xtraiter377, 0
  br i1 %lcmp.mod378.not, label %.lr.ph135.prol.loopexit, label %.lr.ph135.prol

.lr.ph135.prol:                                   ; preds = %.lr.ph135.preheader, %.lr.ph135.prol
  %indvars.iv175.prol = phi i64 [ %indvars.iv.next176.prol, %.lr.ph135.prol ], [ %indvars.iv175.ph, %.lr.ph135.preheader ] ; 2 uses
  %.1133.prol = phi ptr [ %i.al, %.lr.ph135.prol ], [ %.1133.ph, %.lr.ph135.preheader ] ; 2 uses
  %prol.iter379 = phi i64 [ %prol.iter379.next, %.lr.ph135.prol ], [ 0, %.lr.ph135.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175.prol
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %.1133.prol, i64 1 ; 3 uses
  store i8 %i.ak, ptr %.1133.prol, align 1, !tbaa !32
  %indvars.iv.next176.prol = add nuw nsw i64 %indvars.iv175.prol, 1 ; 2 uses
  %prol.iter379.next = add i64 %prol.iter379, 1   ; 2 uses
  %prol.iter379.cmp.not = icmp eq i64 %prol.iter379.next, %xtraiter377
  br i1 %prol.iter379.cmp.not, label %.lr.ph135.prol.loopexit, label %.lr.ph135.prol, !llvm.loop !9

.lr.ph135.prol.loopexit:                          ; preds = %.lr.ph135.prol, %.lr.ph135.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph135.preheader ], [ %i.al, %.lr.ph135.prol ]
  %indvars.iv175.unr = phi i64 [ %indvars.iv175.ph, %.lr.ph135.preheader ], [ %indvars.iv.next176.prol, %.lr.ph135.prol ]
  %.1133.unr = phi ptr [ %.1133.ph, %.lr.ph135.preheader ], [ %i.al, %.lr.ph135.prol ]
  %i.am = sub nsw i64 %indvars.iv175.ph, %wide.trip.count178
  %i.an = icmp ugt i64 %i.am, -8
  br i1 %i.an, label %.preheader, label %.lr.ph135

.preheader:                                       ; preds = %.lr.ph135.prol.loopexit, %.lr.ph135, %middle.block338, %vec.epilog.middle.block353, %.preheader94
  %.1.lcssa = phi ptr [ %.089, %.preheader94 ], [ %i.af, %vec.epilog.middle.block353 ], [ %i.aa, %middle.block338 ], [ %.lcssa.unr, %.lr.ph135.prol.loopexit ], [ %i.cc, %.lr.ph135 ] ; 3 uses
  %i.ao = sub nsw i32 %i.u, %i.t                  ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph139.preheader, label %.loopexit

.lr.ph139.preheader:                              ; preds = %.preheader
  %i.aq = zext nneg i32 %i.ao to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.1.lcssa, i8 48, i64 %i.aq, i1 false), !tbaa !32
  %i.ar = trunc i64 %i.r to i32
  %i.as = add i32 %i.u, %i.ar
  %i.at = trunc i64 %i.q to i32
  %i.au = xor i32 %i.at, -1
  %i.av = add i32 %i.as, %i.au
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %.1.lcssa, i64 %i.aw
  %scevgep180 = getelementptr i8, ptr %i.ax, i64 1
  br label %.loopexit

.lr.ph135:                                        ; preds = %.lr.ph135.prol.loopexit, %.lr.ph135
  %indvars.iv175 = phi i64 [ %indvars.iv.next176.7, %.lr.ph135 ], [ %indvars.iv175.unr, %.lr.ph135.prol.loopexit ] ; 9 uses
  %.1133 = phi ptr [ %i.cc, %.lr.ph135 ], [ %.1133.unr, %.lr.ph135.prol.loopexit ] ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %.1133, i64 1
  store i8 %i.az, ptr %.1133, align 1, !tbaa !32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !32
  %i.be = getelementptr inbounds nuw i8, ptr %.1133, i64 2
  store i8 %i.bd, ptr %i.ba, align 1, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %.1133, i64 3
  store i8 %i.bh, ptr %i.be, align 1, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %.1133, i64 4
  store i8 %i.bl, ptr %i.bi, align 1, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !32
  %i.bq = getelementptr inbounds nuw i8, ptr %.1133, i64 5
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 5
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %.1133, i64 6
  store i8 %i.bt, ptr %i.bq, align 1, !tbaa !32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 6
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !32
  %i.by = getelementptr inbounds nuw i8, ptr %.1133, i64 7
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv175
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 7
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !32
  %i.cc = getelementptr inbounds nuw i8, ptr %.1133, i64 8 ; 2 uses
  store i8 %i.cb, ptr %i.by, align 1, !tbaa !32
  %indvars.iv.next176.7 = add nuw nsw i64 %indvars.iv175, 8 ; 2 uses
  %exitcond179.not.7 = icmp eq i64 %indvars.iv.next176.7, %wide.trip.count178
  br i1 %exitcond179.not.7, label %.preheader, label %.lr.ph135, !llvm.loop !10

bb.l:                                             ; preds = %bb.k
  %i.cd = add i32 %i.u, -1                        ; 2 uses
  %or.cond3 = icmp ult i32 %i.cd, 21
  br i1 %or.cond3, label %.lr.ph124.preheader, label %bb.m

.lr.ph124.preheader:                              ; preds = %bb.l
  %wide.trip.count169 = zext nneg i32 %i.u to i64 ; 6 uses
  %min.iters.check277 = icmp ult i32 %i.u, 8
  %i.ce = sub i64 %i.r, %.089199
  %diff.check276 = icmp ugt i64 %i.ce, -8
  %or.cond358 = select i1 %min.iters.check277, i1 true, i1 %diff.check276
  br i1 %or.cond358, label %.lr.ph124.preheader361, label %vector.ph278

vector.ph278:                                     ; preds = %.lr.ph124.preheader
  %n.vec279 = and i64 %wide.trip.count169, 24     ; 4 uses
  %i.cf = getelementptr i8, ptr %.089, i64 %n.vec279 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %wide.load283 = load <4 x i8>, ptr %i.m, align 1, !tbaa !32
  %wide.load284 = load <4 x i8>, ptr %i.cg, align 1, !tbaa !32
  %i.ch = getelementptr i8, ptr %.089, i64 4
  store <4 x i8> %wide.load283, ptr %.089, align 1, !tbaa !32
  store <4 x i8> %wide.load284, ptr %i.ch, align 1, !tbaa !32
  %i.ci = icmp eq i64 %n.vec279, 8
  br i1 %i.ci, label %middle.block286, label %vector.body280.1

vector.body280.1:                                 ; preds = %vector.ph278
  %next.gep282.1 = getelementptr i8, ptr %.089, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %wide.load283.1 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !32
  %wide.load284.1 = load <4 x i8>, ptr %i.ck, align 1, !tbaa !32
  %i.cl = getelementptr i8, ptr %.089, i64 12
  store <4 x i8> %wide.load283.1, ptr %next.gep282.1, align 1, !tbaa !32
  store <4 x i8> %wide.load284.1, ptr %i.cl, align 1, !tbaa !32
  br label %middle.block286

middle.block286:                                  ; preds = %vector.body280.1, %vector.ph278
  %ind.escape = getelementptr i8, ptr %i.cf, i64 -1
  %cmp.n287 = icmp eq i64 %n.vec279, %wide.trip.count169
  br i1 %cmp.n287, label %._crit_edge125, label %.lr.ph124.preheader361

.lr.ph124.preheader361:                           ; preds = %.lr.ph124.preheader, %middle.block286
  %indvars.iv166.ph = phi i64 [ 0, %.lr.ph124.preheader ], [ %n.vec279, %middle.block286 ] ; 3 uses
  %.3122.ph = phi ptr [ %.089, %.lr.ph124.preheader ], [ %i.cf, %middle.block286 ] ; 2 uses
  %xtraiter374 = and i64 %wide.trip.count169, 7   ; 2 uses
  %lcmp.mod375.not = icmp eq i64 %xtraiter374, 0
  br i1 %lcmp.mod375.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol

.lr.ph124.prol:                                   ; preds = %.lr.ph124.preheader361, %.lr.ph124.prol
  %indvars.iv166.prol = phi i64 [ %indvars.iv.next167.prol, %.lr.ph124.prol ], [ %indvars.iv166.ph, %.lr.ph124.preheader361 ] ; 2 uses
  %.3122.prol = phi ptr [ %i.co, %.lr.ph124.prol ], [ %.3122.ph, %.lr.ph124.preheader361 ] ; 3 uses
  %prol.iter376 = phi i64 [ %prol.iter376.next, %.lr.ph124.prol ], [ 0, %.lr.ph124.preheader361 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166.prol
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.3122.prol, i64 1 ; 3 uses
  store i8 %i.cn, ptr %.3122.prol, align 1, !tbaa !32
  %indvars.iv.next167.prol = add nuw nsw i64 %indvars.iv166.prol, 1 ; 2 uses
  %prol.iter376.next = add i64 %prol.iter376, 1   ; 2 uses
  %prol.iter376.cmp.not = icmp eq i64 %prol.iter376.next, %xtraiter374
  br i1 %prol.iter376.cmp.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol, !llvm.loop !11

.lr.ph124.prol.loopexit:                          ; preds = %.lr.ph124.prol, %.lr.ph124.preheader361
  %.3122.lcssa363.unr = phi ptr [ poison, %.lr.ph124.preheader361 ], [ %.3122.prol, %.lr.ph124.prol ]
  %.lcssa362.unr = phi ptr [ poison, %.lr.ph124.preheader361 ], [ %i.co, %.lr.ph124.prol ]
  %indvars.iv166.unr = phi i64 [ %indvars.iv166.ph, %.lr.ph124.preheader361 ], [ %indvars.iv.next167.prol, %.lr.ph124.prol ]
  %.3122.unr = phi ptr [ %.3122.ph, %.lr.ph124.preheader361 ], [ %i.co, %.lr.ph124.prol ]
  %i.cp = sub nsw i64 %indvars.iv166.ph, %wide.trip.count169
  %i.cq = icmp ugt i64 %i.cp, -8
  br i1 %i.cq, label %._crit_edge125, label %.lr.ph124

._crit_edge125.loopexit.unr-lcssa:                ; preds = %.lr.ph124
  %i.cr = getelementptr inbounds nuw i8, ptr %.3122, i64 7
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %._crit_edge125.loopexit.unr-lcssa, %.lr.ph124.prol.loopexit, %middle.block286
  %.3122.lcssa = phi ptr [ %ind.escape, %middle.block286 ], [ %.3122.lcssa363.unr, %.lr.ph124.prol.loopexit ], [ %i.cr, %._crit_edge125.loopexit.unr-lcssa ] ; 2 uses
  %.lcssa195 = phi ptr [ %i.cf, %middle.block286 ], [ %.lcssa362.unr, %.lr.ph124.prol.loopexit ], [ %i.eq, %._crit_edge125.loopexit.unr-lcssa ]
  %.3122.lcssa290 = ptrtoaddr ptr %.3122.lcssa to i64
  store i8 46, ptr %.lcssa195, align 1, !tbaa !32
  %.4127 = getelementptr inbounds nuw i8, ptr %.3122.lcssa, i64 2 ; 7 uses
  %.not181 = icmp slt i32 %i.u, %i.t
  br i1 %.not181, label %iter.check309, label %.loopexit

iter.check309:                                    ; preds = %._crit_edge125
  %i.cs = zext nneg i32 %i.u to i64               ; 6 uses
  %i.ct = trunc i64 %i.q to i32
  %i.cu = xor i32 %i.u, -1
  %i.cv = add i32 %i.cu, %i.ct
  %i.cw = trunc i64 %i.r to i32
  %i.cx = sub i32 %i.cv, %i.cw                    ; 3 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 5 uses
  %min.iters.check293 = icmp ult i32 %i.cx, 7
  br i1 %min.iters.check293, label %.lr.ph131.preheader, label %vector.memcheck289

vector.memcheck289:                               ; preds = %iter.check309
  %i.da = add i64 %i.r, %wide.trip.count169
  %i.db = sub i64 %.3122.lcssa290, %i.da
  %i.dc = add i64 %i.db, 1
  %diff.check291 = icmp ult i64 %i.dc, 31
  br i1 %diff.check291, label %.lr.ph131.preheader, label %vector.main.loop.iter.check294

vector.main.loop.iter.check294:                   ; preds = %vector.memcheck289
  %min.iters.check295 = icmp ult i32 %i.cx, 31
  br i1 %min.iters.check295, label %vec.epilog.ph313, label %vector.ph296

vector.ph296:                                     ; preds = %vector.main.loop.iter.check294
  %i.dd = and i64 %i.cz, 24
  %n.vec297 = and i64 %i.cz, 8589934560           ; 5 uses
  %i.de = or disjoint i64 %n.vec297, %i.cs
  %i.df = getelementptr i8, ptr %.4127, i64 %n.vec297 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.m, i64 %i.cs
  br label %vector.body298

vector.body298:                                   ; preds = %vector.ph296, %vector.body298
  %index299 = phi i64 [ 0, %vector.ph296 ], [ %index.next303, %vector.body298 ] ; 3 uses
  %next.gep300 = getelementptr i8, ptr %.4127, i64 %index299 ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index299 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load301 = load <16 x i8>, ptr %gep, align 1, !tbaa !32
  %wide.load302 = load <16 x i8>, ptr %i.dg, align 1, !tbaa !32
  %i.dh = getelementptr i8, ptr %next.gep300, i64 16
  store <16 x i8> %wide.load301, ptr %next.gep300, align 1, !tbaa !32
  store <16 x i8> %wide.load302, ptr %i.dh, align 1, !tbaa !32
  %index.next303 = add nuw i64 %index299, 32      ; 2 uses
  %i.di = icmp eq i64 %index.next303, %n.vec297
  br i1 %i.di, label %middle.block304, label %vector.body298, !llvm.loop !12

middle.block304:                                  ; preds = %vector.body298
  %cmp.n305 = icmp eq i64 %i.cz, %n.vec297
  br i1 %cmp.n305, label %.loopexit, label %vec.epilog.iter.check311

vec.epilog.iter.check311:                         ; preds = %middle.block304
  %min.epilog.iters.check312 = icmp eq i64 %i.dd, 0
  br i1 %min.epilog.iters.check312, label %.lr.ph131.preheader, label %vec.epilog.ph313, !prof !40

vec.epilog.ph313:                                 ; preds = %vector.main.loop.iter.check294, %vec.epilog.iter.check311
  %vec.epilog.resume.val306 = phi i64 [ %n.vec297, %vec.epilog.iter.check311 ], [ 0, %vector.main.loop.iter.check294 ]
  %n.vec314 = and i64 %i.cz, 8589934584           ; 4 uses
  %i.dj = add nuw nsw i64 %n.vec314, %i.cs
  %i.dk = getelementptr i8, ptr %.4127, i64 %n.vec314 ; 2 uses
  %invariant.gep392 = getelementptr i8, ptr %i.m, i64 %i.cs
  br label %vec.epilog.vector.body315

vec.epilog.vector.body315:                        ; preds = %vec.epilog.vector.body315, %vec.epilog.ph313
  %index316 = phi i64 [ %vec.epilog.resume.val306, %vec.epilog.ph313 ], [ %index.next319, %vec.epilog.vector.body315 ] ; 3 uses
  %next.gep317 = getelementptr i8, ptr %.4127, i64 %index316
  %gep393 = getelementptr i8, ptr %invariant.gep392, i64 %index316
  %wide.load318 = load <8 x i8>, ptr %gep393, align 1, !tbaa !32
  store <8 x i8> %wide.load318, ptr %next.gep317, align 1, !tbaa !32
  %index.next319 = add nuw i64 %index316, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next319, %n.vec314
  br i1 %i.dl, label %vec.epilog.middle.block320, label %vec.epilog.vector.body315, !llvm.loop !13

vec.epilog.middle.block320:                       ; preds = %vec.epilog.vector.body315
  %cmp.n321 = icmp eq i64 %i.cz, %n.vec314
  br i1 %cmp.n321, label %.loopexit, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %iter.check309, %vector.memcheck289, %vec.epilog.iter.check311, %vec.epilog.middle.block320
  %indvars.iv172.ph = phi i64 [ %i.cs, %iter.check309 ], [ %i.cs, %vector.memcheck289 ], [ %i.de, %vec.epilog.iter.check311 ], [ %i.dj, %vec.epilog.middle.block320 ]
  %.4129.ph = phi ptr [ %.4127, %iter.check309 ], [ %.4127, %vector.memcheck289 ], [ %i.df, %vec.epilog.iter.check311 ], [ %i.dk, %vec.epilog.middle.block320 ]
  br label %.lr.ph131

.lr.ph124:                                        ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.7, %.lr.ph124 ], [ %indvars.iv166.unr, %.lr.ph124.prol.loopexit ] ; 9 uses
  %.3122 = phi ptr [ %i.eq, %.lr.ph124 ], [ %.3122.unr, %.lr.ph124.prol.loopexit ] ; 10 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !32
  %i.do = getelementptr inbounds nuw i8, ptr %.3122, i64 1
  store i8 %i.dn, ptr %.3122, align 1, !tbaa !32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !32
  %i.ds = getelementptr inbounds nuw i8, ptr %.3122, i64 2
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !32
  %i.dw = getelementptr inbounds nuw i8, ptr %.3122, i64 3
  store i8 %i.dv, ptr %i.ds, align 1, !tbaa !32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !32
  %i.ea = getelementptr inbounds nuw i8, ptr %.3122, i64 4
  store i8 %i.dz, ptr %i.dw, align 1, !tbaa !32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !32
  %i.ee = getelementptr inbounds nuw i8, ptr %.3122, i64 5
  store i8 %i.ed, ptr %i.ea, align 1, !tbaa !32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 5
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !32
  %i.ei = getelementptr inbounds nuw i8, ptr %.3122, i64 6
  store i8 %i.eh, ptr %i.ee, align 1, !tbaa !32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 6
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !32
  %i.em = getelementptr inbounds nuw i8, ptr %.3122, i64 7
  store i8 %i.el, ptr %i.ei, align 1, !tbaa !32
  %i.en = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv166
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 7
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !32
  %i.eq = getelementptr inbounds nuw i8, ptr %.3122, i64 8 ; 2 uses
  store i8 %i.ep, ptr %i.em, align 1, !tbaa !32
  %indvars.iv.next167.7 = add nuw nsw i64 %indvars.iv166, 8 ; 2 uses
  %exitcond170.not.7 = icmp eq i64 %indvars.iv.next167.7, %wide.trip.count169
  br i1 %exitcond170.not.7, label %._crit_edge125.loopexit.unr-lcssa, label %.lr.ph124, !llvm.loop !14

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %.lr.ph131 ], [ %indvars.iv172.ph, %.lr.ph131.preheader ] ; 2 uses
  %.4129 = phi ptr [ %.4, %.lr.ph131 ], [ %.4129.ph, %.lr.ph131.preheader ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv172
  %i.es = load i8, ptr %i.er, align 1, !tbaa !32
  store i8 %i.es, ptr %.4129, align 1, !tbaa !32
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %.4 = getelementptr inbounds nuw i8, ptr %.4129, i64 1 ; 2 uses
  %i.et = trunc nuw i64 %indvars.iv.next173 to i32
  %i.eu = icmp slt i32 %i.et, %i.t
  br i1 %i.eu, label %.lr.ph131, label %.loopexit, !llvm.loop !15

bb.m:                                             ; preds = %bb.l
  %i.ev = add i32 %i.u, 5
  %or.cond5 = icmp ult i32 %i.ev, 6
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ew = getelementptr inbounds nuw i8, ptr %.089, i64 1
  store i8 48, ptr %.089, align 1, !tbaa !32
  %i.ex = getelementptr i8, ptr %.089, i64 2      ; 2 uses
  store i8 46, ptr %i.ew, align 1, !tbaa !32
  %i.ey = icmp slt i32 %i.u, 0
  br i1 %i.ey, label %.lr.ph116.preheader, label %.preheader97

.lr.ph116.preheader:                              ; preds = %bb.n
  %i.ez = sub nsw i32 0, %i.u
  %i.fa = zext nneg i32 %i.ez to i64              ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ex, i8 48, i64 %i.fa, i1 false), !tbaa !32
  %i.fb = getelementptr i8, ptr %.089, i64 %i.fa
  %scevgep160 = getelementptr i8, ptr %i.fb, i64 2
  br label %.preheader97

.preheader97:                                     ; preds = %.lr.ph116.preheader, %bb.n
  %.5.lcssa = phi ptr [ %i.ex, %bb.n ], [ %scevgep160, %.lr.ph116.preheader ] ; 7 uses
  %i.fc = icmp sgt i32 %i.t, 0
  br i1 %i.fc, label %iter.check260, label %.loopexit

iter.check260:                                    ; preds = %.preheader97
  %.5.lcssa244 = ptrtoaddr ptr %.5.lcssa to i64
  %wide.trip.count164 = and i64 %i.s, 2147483647  ; 6 uses
  %min.iters.check246 = icmp samesign ult i64 %wide.trip.count164, 4
  %i.fd = sub i64 %i.r, %.5.lcssa244
  %diff.check245 = icmp ugt i64 %i.fd, -32
  %or.cond359 = select i1 %min.iters.check246, i1 true, i1 %diff.check245
  br i1 %or.cond359, label %.lr.ph120.preheader, label %vector.main.loop.iter.check247

vector.main.loop.iter.check247:                   ; preds = %iter.check260
  %min.iters.check248 = icmp samesign ult i64 %wide.trip.count164, 32
  br i1 %min.iters.check248, label %vec.epilog.ph264, label %vector.ph249

vector.ph249:                                     ; preds = %vector.main.loop.iter.check247
  %i.fe = and i64 %i.s, 28
  %n.vec250 = and i64 %i.s, 2147483616            ; 5 uses
  %i.ff = getelementptr i8, ptr %.5.lcssa, i64 %n.vec250 ; 2 uses
  br label %vector.body251

vector.body251:                                   ; preds = %vector.ph249, %vector.body251
  %index252 = phi i64 [ 0, %vector.ph249 ], [ %index.next256, %vector.body251 ] ; 3 uses
  %next.gep253 = getelementptr i8, ptr %.5.lcssa, i64 %index252 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.m, i64 %index252 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %wide.load254 = load <16 x i8>, ptr %i.fg, align 1, !tbaa !32
  %wide.load255 = load <16 x i8>, ptr %i.fh, align 1, !tbaa !32
  %i.fi = getelementptr i8, ptr %next.gep253, i64 16
  store <16 x i8> %wide.load254, ptr %next.gep253, align 1, !tbaa !32
  store <16 x i8> %wide.load255, ptr %i.fi, align 1, !tbaa !32
  %index.next256 = add nuw i64 %index252, 32      ; 2 uses
  %i.fj = icmp eq i64 %index.next256, %n.vec250
  br i1 %i.fj, label %middle.block257, label %vector.body251, !llvm.loop !16

middle.block257:                                  ; preds = %vector.body251
  %cmp.n258 = icmp eq i64 %wide.trip.count164, %n.vec250
end_hunk_0
