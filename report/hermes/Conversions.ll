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
  %4 = ptrtoaddr ptr %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.f = call ptr @dtoa_alloc_init(ptr noundef nonnull align 8 dereferenceable(1208) %3, i32 noundef 1200) #7 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 1200 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !31
  %i.h = fcmp uno double %0, 0.000000e+00
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 5136718, ptr %1, align 1
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.i = fcmp oeq double %0, 0.000000e+00
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 48, ptr %1, align 1
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.j = fcmp oeq double %0, +inf
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %1, ptr noundef nonnull align 1 dereferenceable(9) @.str.2, i64 9, i1 false) #7
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.k = fcmp oeq double %0, -inf
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %1, ptr noundef nonnull align 1 dereferenceable(10) @.str.3, i64 10, i1 false) #7
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.l = call ptr @g_dtoa(ptr noundef %i.f, double noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7 ; 53 uses
  %i.m = load i32, ptr %i.b, align 4, !tbaa !6
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.089 = phi ptr [ %i.n, %bb.j ], [ %1, %bb.i ]  ; 23 uses
  %.089199 = ptrtoaddr ptr %.089 to i64           ; 3 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.p = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.q = ptrtoint ptr %i.l to i64                 ; 8 uses
  %i.r = sub i64 %i.p, %i.q                       ; 13 uses
  %i.s = trunc i64 %i.r to i32                    ; 7 uses
  %i.t = load i32, ptr %i.a, align 4, !tbaa !6    ; 12 uses
  %i.u = icmp sge i32 %i.t, %i.s                  ; 2 uses
  %i.v = icmp slt i32 %i.t, 22
  %or.cond = and i1 %i.v, %i.u
  br i1 %or.cond, label %.preheader94, label %bb.l

.preheader94:                                     ; preds = %bb.k
  %i.w = icmp sgt i32 %i.s, 0
  br i1 %i.w, label %iter.check342, label %.preheader

iter.check342:                                    ; preds = %.preheader94
  %wide.trip.count178 = and i64 %i.r, 2147483647  ; 6 uses
  %min.iters.check327 = icmp samesign ult i64 %wide.trip.count178, 4
  %i.x = sub i64 %i.q, %.089199
  %diff.check325 = icmp ugt i64 %i.x, -32
  %or.cond357 = select i1 %min.iters.check327, i1 true, i1 %diff.check325
  br i1 %or.cond357, label %.lr.ph135.preheader, label %vector.main.loop.iter.check328

vector.main.loop.iter.check328:                   ; preds = %iter.check342
  %min.iters.check329 = icmp samesign ult i64 %wide.trip.count178, 32
  br i1 %min.iters.check329, label %vec.epilog.ph346, label %vector.ph330

vector.ph330:                                     ; preds = %vector.main.loop.iter.check328
  %i.y = and i64 %i.r, 28
  %n.vec331 = and i64 %i.r, 2147483616            ; 5 uses
  %i.z = getelementptr i8, ptr %.089, i64 %n.vec331 ; 2 uses
  br label %vector.body332

vector.body332:                                   ; preds = %vector.ph330, %vector.body332
  %index333 = phi i64 [ 0, %vector.ph330 ], [ %index.next337, %vector.body332 ] ; 3 uses
  %next.gep334 = getelementptr i8, ptr %.089, i64 %index333 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %index333 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load335 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !32
  %wide.load336 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !32
  %i.ac = getelementptr i8, ptr %next.gep334, i64 16
  store <16 x i8> %wide.load335, ptr %next.gep334, align 1, !tbaa !32
  store <16 x i8> %wide.load336, ptr %i.ac, align 1, !tbaa !32
  %index.next337 = add nuw i64 %index333, 32      ; 2 uses
  %i.ad = icmp eq i64 %index.next337, %n.vec331
  br i1 %i.ad, label %middle.block338, label %vector.body332, !llvm.loop !7

middle.block338:                                  ; preds = %vector.body332
  %cmp.n339 = icmp eq i64 %wide.trip.count178, %n.vec331
  br i1 %cmp.n339, label %.preheader, label %vec.epilog.iter.check344

vec.epilog.iter.check344:                         ; preds = %middle.block338
  %min.epilog.iters.check345 = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check345, label %.lr.ph135.preheader, label %vec.epilog.ph346, !prof !38

vec.epilog.ph346:                                 ; preds = %vector.main.loop.iter.check328, %vec.epilog.iter.check344
  %vec.epilog.resume.val340 = phi i64 [ %n.vec331, %vec.epilog.iter.check344 ], [ 0, %vector.main.loop.iter.check328 ]
  %n.vec347 = and i64 %i.r, 2147483644            ; 4 uses
  %i.ae = getelementptr i8, ptr %.089, i64 %n.vec347 ; 2 uses
  br label %vec.epilog.vector.body348

vec.epilog.vector.body348:                        ; preds = %vec.epilog.vector.body348, %vec.epilog.ph346
  %index349 = phi i64 [ %vec.epilog.resume.val340, %vec.epilog.ph346 ], [ %index.next352, %vec.epilog.vector.body348 ] ; 3 uses
  %next.gep350 = getelementptr i8, ptr %.089, i64 %index349
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 %index349
  %wide.load351 = load <4 x i8>, ptr %i.af, align 1, !tbaa !32
  store <4 x i8> %wide.load351, ptr %next.gep350, align 1, !tbaa !32
  %index.next352 = add nuw i64 %index349, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next352, %n.vec347
  br i1 %i.ag, label %vec.epilog.middle.block353, label %vec.epilog.vector.body348, !llvm.loop !8

vec.epilog.middle.block353:                       ; preds = %vec.epilog.vector.body348
  %cmp.n354 = icmp eq i64 %wide.trip.count178, %n.vec347
  br i1 %cmp.n354, label %.preheader, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %iter.check342, %vec.epilog.iter.check344, %vec.epilog.middle.block353
  %indvars.iv175.ph = phi i64 [ 0, %iter.check342 ], [ %n.vec331, %vec.epilog.iter.check344 ], [ %n.vec347, %vec.epilog.middle.block353 ] ; 4 uses
  %.1133.ph = phi ptr [ %.089, %iter.check342 ], [ %i.z, %vec.epilog.iter.check344 ], [ %i.ae, %vec.epilog.middle.block353 ] ; 2 uses
  %i.ah = sub i64 %i.r, %indvars.iv175.ph
  %xtraiter377 = and i64 %i.ah, 7                 ; 2 uses
  %lcmp.mod378.not = icmp eq i64 %xtraiter377, 0
  br i1 %lcmp.mod378.not, label %.lr.ph135.prol.loopexit, label %.lr.ph135.prol

.lr.ph135.prol:                                   ; preds = %.lr.ph135.preheader, %.lr.ph135.prol
  %indvars.iv175.prol = phi i64 [ %indvars.iv.next176.prol, %.lr.ph135.prol ], [ %indvars.iv175.ph, %.lr.ph135.preheader ] ; 2 uses
  %.1133.prol = phi ptr [ %i.ak, %.lr.ph135.prol ], [ %.1133.ph, %.lr.ph135.preheader ] ; 2 uses
  %prol.iter379 = phi i64 [ %prol.iter379.next, %.lr.ph135.prol ], [ 0, %.lr.ph135.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv175.prol
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %.1133.prol, i64 1 ; 3 uses
  store i8 %i.aj, ptr %.1133.prol, align 1, !tbaa !32
  %indvars.iv.next176.prol = add nuw nsw i64 %indvars.iv175.prol, 1 ; 2 uses
  %prol.iter379.next = add i64 %prol.iter379, 1   ; 2 uses
  %prol.iter379.cmp.not = icmp eq i64 %prol.iter379.next, %xtraiter377
  br i1 %prol.iter379.cmp.not, label %.lr.ph135.prol.loopexit, label %.lr.ph135.prol, !llvm.loop !9

.lr.ph135.prol.loopexit:                          ; preds = %.lr.ph135.prol, %.lr.ph135.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph135.preheader ], [ %i.ak, %.lr.ph135.prol ]
  %indvars.iv175.unr = phi i64 [ %indvars.iv175.ph, %.lr.ph135.preheader ], [ %indvars.iv.next176.prol, %.lr.ph135.prol ]
  %.1133.unr = phi ptr [ %.1133.ph, %.lr.ph135.preheader ], [ %i.ak, %.lr.ph135.prol ]
  %i.al = sub nsw i64 %indvars.iv175.ph, %wide.trip.count178
  %i.am = icmp ugt i64 %i.al, -8
  br i1 %i.am, label %.preheader, label %.lr.ph135

.preheader:                                       ; preds = %.lr.ph135.prol.loopexit, %.lr.ph135, %middle.block338, %vec.epilog.middle.block353, %.preheader94
  %.1.lcssa = phi ptr [ %.089, %.preheader94 ], [ %i.ae, %vec.epilog.middle.block353 ], [ %i.z, %middle.block338 ], [ %.lcssa.unr, %.lr.ph135.prol.loopexit ], [ %i.cb, %.lr.ph135 ] ; 3 uses
  %i.an = sub nsw i32 %i.t, %i.s                  ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph139.preheader, label %.loopexit

.lr.ph139.preheader:                              ; preds = %.preheader
  %i.ap = zext nneg i32 %i.an to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.1.lcssa, i8 48, i64 %i.ap, i1 false), !tbaa !32
  %i.aq = trunc i64 %i.q to i32
  %i.ar = add i32 %i.t, %i.aq
  %i.as = trunc i64 %i.p to i32
  %i.at = xor i32 %i.as, -1
  %i.au = add i32 %i.ar, %i.at
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr i8, ptr %.1.lcssa, i64 %i.av
  %scevgep180 = getelementptr i8, ptr %i.aw, i64 1
  br label %.loopexit

.lr.ph135:                                        ; preds = %.lr.ph135.prol.loopexit, %.lr.ph135
  %indvars.iv175 = phi i64 [ %indvars.iv.next176.7, %.lr.ph135 ], [ %indvars.iv175.unr, %.lr.ph135.prol.loopexit ] ; 9 uses
  %.1133 = phi ptr [ %i.cb, %.lr.ph135 ], [ %.1133.unr, %.lr.ph135.prol.loopexit ] ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv175
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %.1133, i64 1
  store i8 %i.ay, ptr %.1133, align 1, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv175
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %.1133, i64 2
  store i8 %i.bc, ptr %i.az, align 1, !tbaa !32
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv175
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %.1133, i64 3
  store i8 %i.bg, ptr %i.bd, align 1, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv175
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !32
  %i.bl = getelementptr inbounds nuw i8, ptr %.1133, i64 4
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv175
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !32
  %i.bp = getelementptr inbounds nuw i8, ptr %.1133, i64 5
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv175
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 5
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !32
  %i.bt = getelementptr inbounds nuw i8, ptr %.1133, i64 6
  store i8 %i.bs, ptr %i.bp, align 1, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv175
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 6
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !32
  %i.bx = getelementptr inbounds nuw i8, ptr %.1133, i64 7
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !32
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv175
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 7
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !32
  %i.cb = getelementptr inbounds nuw i8, ptr %.1133, i64 8 ; 2 uses
  store i8 %i.ca, ptr %i.bx, align 1, !tbaa !32
  %indvars.iv.next176.7 = add nuw nsw i64 %indvars.iv175, 8 ; 2 uses
  %exitcond179.not.7 = icmp eq i64 %indvars.iv.next176.7, %wide.trip.count178
  br i1 %exitcond179.not.7, label %.preheader, label %.lr.ph135, !llvm.loop !10

bb.l:                                             ; preds = %bb.k
  %i.cc = add i32 %i.t, -1                        ; 2 uses
  %or.cond3 = icmp ult i32 %i.cc, 21
  br i1 %or.cond3, label %.lr.ph124.preheader, label %bb.m

.lr.ph124.preheader:                              ; preds = %bb.l
  %wide.trip.count169 = zext nneg i32 %i.t to i64 ; 6 uses
  %min.iters.check277 = icmp ult i32 %i.t, 8
  %i.cd = sub i64 %i.q, %.089199
  %diff.check276 = icmp ugt i64 %i.cd, -8
  %or.cond358 = select i1 %min.iters.check277, i1 true, i1 %diff.check276
  br i1 %or.cond358, label %.lr.ph124.preheader361, label %vector.ph278

vector.ph278:                                     ; preds = %.lr.ph124.preheader
  %n.vec279 = and i64 %wide.trip.count169, 24     ; 4 uses
  %i.ce = getelementptr i8, ptr %.089, i64 %n.vec279 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %wide.load283 = load <4 x i8>, ptr %i.l, align 1, !tbaa !32
  %wide.load284 = load <4 x i8>, ptr %i.cf, align 1, !tbaa !32
  %i.cg = getelementptr i8, ptr %.089, i64 4
  store <4 x i8> %wide.load283, ptr %.089, align 1, !tbaa !32
  store <4 x i8> %wide.load284, ptr %i.cg, align 1, !tbaa !32
  %i.ch = icmp eq i64 %n.vec279, 8
  br i1 %i.ch, label %middle.block286, label %vector.body280.1

vector.body280.1:                                 ; preds = %vector.ph278
  %next.gep282.1 = getelementptr i8, ptr %.089, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %wide.load283.1 = load <4 x i8>, ptr %i.ci, align 1, !tbaa !32
  %wide.load284.1 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !32
  %i.ck = getelementptr i8, ptr %.089, i64 12
  store <4 x i8> %wide.load283.1, ptr %next.gep282.1, align 1, !tbaa !32
  store <4 x i8> %wide.load284.1, ptr %i.ck, align 1, !tbaa !32
  br label %middle.block286

middle.block286:                                  ; preds = %vector.body280.1, %vector.ph278
  %ind.escape = getelementptr i8, ptr %i.ce, i64 -1
  %cmp.n287 = icmp eq i64 %n.vec279, %wide.trip.count169
  br i1 %cmp.n287, label %._crit_edge125, label %.lr.ph124.preheader361

.lr.ph124.preheader361:                           ; preds = %.lr.ph124.preheader, %middle.block286
  %indvars.iv166.ph = phi i64 [ 0, %.lr.ph124.preheader ], [ %n.vec279, %middle.block286 ] ; 3 uses
  %.3122.ph = phi ptr [ %.089, %.lr.ph124.preheader ], [ %i.ce, %middle.block286 ] ; 2 uses
  %xtraiter374 = and i64 %wide.trip.count169, 7   ; 2 uses
  %lcmp.mod375.not = icmp eq i64 %xtraiter374, 0
  br i1 %lcmp.mod375.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol

.lr.ph124.prol:                                   ; preds = %.lr.ph124.preheader361, %.lr.ph124.prol
  %indvars.iv166.prol = phi i64 [ %indvars.iv.next167.prol, %.lr.ph124.prol ], [ %indvars.iv166.ph, %.lr.ph124.preheader361 ] ; 2 uses
  %.3122.prol = phi ptr [ %i.cn, %.lr.ph124.prol ], [ %.3122.ph, %.lr.ph124.preheader361 ] ; 3 uses
  %prol.iter376 = phi i64 [ %prol.iter376.next, %.lr.ph124.prol ], [ 0, %.lr.ph124.preheader361 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv166.prol
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !32
  %i.cn = getelementptr inbounds nuw i8, ptr %.3122.prol, i64 1 ; 3 uses
  store i8 %i.cm, ptr %.3122.prol, align 1, !tbaa !32
  %indvars.iv.next167.prol = add nuw nsw i64 %indvars.iv166.prol, 1 ; 2 uses
  %prol.iter376.next = add i64 %prol.iter376, 1   ; 2 uses
  %prol.iter376.cmp.not = icmp eq i64 %prol.iter376.next, %xtraiter374
  br i1 %prol.iter376.cmp.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol, !llvm.loop !11

.lr.ph124.prol.loopexit:                          ; preds = %.lr.ph124.prol, %.lr.ph124.preheader361
  %.3122.lcssa363.unr = phi ptr [ poison, %.lr.ph124.preheader361 ], [ %.3122.prol, %.lr.ph124.prol ]
  %.lcssa362.unr = phi ptr [ poison, %.lr.ph124.preheader361 ], [ %i.cn, %.lr.ph124.prol ]
  %indvars.iv166.unr = phi i64 [ %indvars.iv166.ph, %.lr.ph124.preheader361 ], [ %indvars.iv.next167.prol, %.lr.ph124.prol ]
  %.3122.unr = phi ptr [ %.3122.ph, %.lr.ph124.preheader361 ], [ %i.cn, %.lr.ph124.prol ]
  %i.co = sub nsw i64 %indvars.iv166.ph, %wide.trip.count169
  %i.cp = icmp ugt i64 %i.co, -8
  br i1 %i.cp, label %._crit_edge125, label %.lr.ph124

._crit_edge125.loopexit.unr-lcssa:                ; preds = %.lr.ph124
  %i.cq = getelementptr inbounds nuw i8, ptr %.3122, i64 7
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %._crit_edge125.loopexit.unr-lcssa, %.lr.ph124.prol.loopexit, %middle.block286
  %.3122.lcssa = phi ptr [ %ind.escape, %middle.block286 ], [ %.3122.lcssa363.unr, %.lr.ph124.prol.loopexit ], [ %i.cq, %._crit_edge125.loopexit.unr-lcssa ] ; 2 uses
  %.lcssa195 = phi ptr [ %i.ce, %middle.block286 ], [ %.lcssa362.unr, %.lr.ph124.prol.loopexit ], [ %i.ep, %._crit_edge125.loopexit.unr-lcssa ]
  %.3122.lcssa290 = ptrtoaddr ptr %.3122.lcssa to i64
  store i8 46, ptr %.lcssa195, align 1, !tbaa !32
  %.4127 = getelementptr inbounds nuw i8, ptr %.3122.lcssa, i64 2 ; 7 uses
  br i1 %i.u, label %.loopexit, label %iter.check309

iter.check309:                                    ; preds = %._crit_edge125
  %i.cr = zext nneg i32 %i.t to i64               ; 6 uses
  %i.cs = trunc i64 %i.p to i32
  %i.ct = xor i32 %i.t, -1
  %i.cu = add i32 %i.ct, %i.cs
  %i.cv = trunc i64 %i.q to i32
  %i.cw = sub i32 %i.cu, %i.cv                    ; 3 uses
  %i.cx = zext i32 %i.cw to i64
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 5 uses
  %min.iters.check293 = icmp ult i32 %i.cw, 7
  br i1 %min.iters.check293, label %.lr.ph131.preheader, label %vector.memcheck289

vector.memcheck289:                               ; preds = %iter.check309
  %i.cz = add i64 %i.q, %wide.trip.count169
  %i.da = sub i64 %.3122.lcssa290, %i.cz
  %i.db = add i64 %i.da, 1
  %diff.check291 = icmp ult i64 %i.db, 31
  br i1 %diff.check291, label %.lr.ph131.preheader, label %vector.main.loop.iter.check294

vector.main.loop.iter.check294:                   ; preds = %vector.memcheck289
  %min.iters.check295 = icmp ult i32 %i.cw, 31
  br i1 %min.iters.check295, label %vec.epilog.ph313, label %vector.ph296

vector.ph296:                                     ; preds = %vector.main.loop.iter.check294
  %i.dc = and i64 %i.cy, 24
  %n.vec297 = and i64 %i.cy, 8589934560           ; 5 uses
  %i.dd = or disjoint i64 %n.vec297, %i.cr
  %i.de = getelementptr i8, ptr %.4127, i64 %n.vec297 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.l, i64 %i.cr
  br label %vector.body298

vector.body298:                                   ; preds = %vector.ph296, %vector.body298
  %index299 = phi i64 [ 0, %vector.ph296 ], [ %index.next303, %vector.body298 ] ; 3 uses
  %next.gep300 = getelementptr i8, ptr %.4127, i64 %index299 ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index299 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load301 = load <16 x i8>, ptr %gep, align 1, !tbaa !32
  %wide.load302 = load <16 x i8>, ptr %i.df, align 1, !tbaa !32
  %i.dg = getelementptr i8, ptr %next.gep300, i64 16
  store <16 x i8> %wide.load301, ptr %next.gep300, align 1, !tbaa !32
  store <16 x i8> %wide.load302, ptr %i.dg, align 1, !tbaa !32
  %index.next303 = add nuw i64 %index299, 32      ; 2 uses
  %i.dh = icmp eq i64 %index.next303, %n.vec297
  br i1 %i.dh, label %middle.block304, label %vector.body298, !llvm.loop !12

middle.block304:                                  ; preds = %vector.body298
  %cmp.n305 = icmp eq i64 %i.cy, %n.vec297
  br i1 %cmp.n305, label %.loopexit, label %vec.epilog.iter.check311

vec.epilog.iter.check311:                         ; preds = %middle.block304
  %min.epilog.iters.check312 = icmp eq i64 %i.dc, 0
  br i1 %min.epilog.iters.check312, label %.lr.ph131.preheader, label %vec.epilog.ph313, !prof !40

vec.epilog.ph313:                                 ; preds = %vector.main.loop.iter.check294, %vec.epilog.iter.check311
  %vec.epilog.resume.val306 = phi i64 [ %n.vec297, %vec.epilog.iter.check311 ], [ 0, %vector.main.loop.iter.check294 ]
  %n.vec314 = and i64 %i.cy, 8589934584           ; 4 uses
  %i.di = add nuw nsw i64 %n.vec314, %i.cr
  %i.dj = getelementptr i8, ptr %.4127, i64 %n.vec314 ; 2 uses
  %invariant.gep392 = getelementptr i8, ptr %i.l, i64 %i.cr
  br label %vec.epilog.vector.body315

vec.epilog.vector.body315:                        ; preds = %vec.epilog.vector.body315, %vec.epilog.ph313
  %index316 = phi i64 [ %vec.epilog.resume.val306, %vec.epilog.ph313 ], [ %index.next319, %vec.epilog.vector.body315 ] ; 3 uses
  %next.gep317 = getelementptr i8, ptr %.4127, i64 %index316
  %gep393 = getelementptr i8, ptr %invariant.gep392, i64 %index316
  %wide.load318 = load <8 x i8>, ptr %gep393, align 1, !tbaa !32
  store <8 x i8> %wide.load318, ptr %next.gep317, align 1, !tbaa !32
  %index.next319 = add nuw i64 %index316, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next319, %n.vec314
  br i1 %i.dk, label %vec.epilog.middle.block320, label %vec.epilog.vector.body315, !llvm.loop !13

vec.epilog.middle.block320:                       ; preds = %vec.epilog.vector.body315
  %cmp.n321 = icmp eq i64 %i.cy, %n.vec314
  br i1 %cmp.n321, label %.loopexit, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %iter.check309, %vector.memcheck289, %vec.epilog.iter.check311, %vec.epilog.middle.block320
  %indvars.iv172.ph = phi i64 [ %i.cr, %iter.check309 ], [ %i.cr, %vector.memcheck289 ], [ %i.dd, %vec.epilog.iter.check311 ], [ %i.di, %vec.epilog.middle.block320 ]
  %.4129.ph = phi ptr [ %.4127, %iter.check309 ], [ %.4127, %vector.memcheck289 ], [ %i.de, %vec.epilog.iter.check311 ], [ %i.dj, %vec.epilog.middle.block320 ]
  br label %.lr.ph131

.lr.ph124:                                        ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.7, %.lr.ph124 ], [ %indvars.iv166.unr, %.lr.ph124.prol.loopexit ] ; 9 uses
  %.3122 = phi ptr [ %i.ep, %.lr.ph124 ], [ %.3122.unr, %.lr.ph124.prol.loopexit ] ; 10 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv166
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !32
  %i.dn = getelementptr inbounds nuw i8, ptr %.3122, i64 1
  store i8 %i.dm, ptr %.3122, align 1, !tbaa !32
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv166
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !32
  %i.dr = getelementptr inbounds nuw i8, ptr %.3122, i64 2
  store i8 %i.dq, ptr %i.dn, align 1, !tbaa !32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv166
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !32
  %i.dv = getelementptr inbounds nuw i8, ptr %.3122, i64 3
  store i8 %i.du, ptr %i.dr, align 1, !tbaa !32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv166
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 3
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !32
  %i.dz = getelementptr inbounds nuw i8, ptr %.3122, i64 4
  store i8 %i.dy, ptr %i.dv, align 1, !tbaa !32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv166
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !32
  %i.ed = getelementptr inbounds nuw i8, ptr %.3122, i64 5
  store i8 %i.ec, ptr %i.dz, align 1, !tbaa !32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv166
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 5
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !32
  %i.eh = getelementptr inbounds nuw i8, ptr %.3122, i64 6
  store i8 %i.eg, ptr %i.ed, align 1, !tbaa !32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv166
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 6
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !32
  %i.el = getelementptr inbounds nuw i8, ptr %.3122, i64 7
  store i8 %i.ek, ptr %i.eh, align 1, !tbaa !32
  %i.em = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv166
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 7
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !32
  %i.ep = getelementptr inbounds nuw i8, ptr %.3122, i64 8 ; 2 uses
  store i8 %i.eo, ptr %i.el, align 1, !tbaa !32
  %indvars.iv.next167.7 = add nuw nsw i64 %indvars.iv166, 8 ; 2 uses
  %exitcond170.not.7 = icmp eq i64 %indvars.iv.next167.7, %wide.trip.count169
  br i1 %exitcond170.not.7, label %._crit_edge125.loopexit.unr-lcssa, label %.lr.ph124, !llvm.loop !14

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %.lr.ph131 ], [ %indvars.iv172.ph, %.lr.ph131.preheader ] ; 2 uses
  %.4129 = phi ptr [ %.4, %.lr.ph131 ], [ %.4129.ph, %.lr.ph131.preheader ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv172
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !32
  store i8 %i.er, ptr %.4129, align 1, !tbaa !32
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %.4 = getelementptr inbounds nuw i8, ptr %.4129, i64 1 ; 2 uses
  %i.es = trunc nuw i64 %indvars.iv.next173 to i32
  %i.et = icmp slt i32 %i.es, %i.s
  br i1 %i.et, label %.lr.ph131, label %.loopexit, !llvm.loop !15

bb.m:                                             ; preds = %bb.l
  %i.eu = add i32 %i.t, 5
  %or.cond5 = icmp ult i32 %i.eu, 6
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ev = getelementptr inbounds nuw i8, ptr %.089, i64 1
  store i8 48, ptr %.089, align 1, !tbaa !32
  %i.ew = getelementptr i8, ptr %.089, i64 2      ; 2 uses
  store i8 46, ptr %i.ev, align 1, !tbaa !32
  %i.ex = icmp slt i32 %i.t, 0
  br i1 %i.ex, label %.lr.ph116.preheader, label %.preheader97

.lr.ph116.preheader:                              ; preds = %bb.n
  %i.ey = sub nsw i32 0, %i.t
  %i.ez = zext nneg i32 %i.ey to i64              ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ew, i8 48, i64 %i.ez, i1 false), !tbaa !32
  %i.fa = getelementptr i8, ptr %.089, i64 %i.ez
  %scevgep160 = getelementptr i8, ptr %i.fa, i64 2
  br label %.preheader97

.preheader97:                                     ; preds = %.lr.ph116.preheader, %bb.n
  %.5.lcssa = phi ptr [ %i.ew, %bb.n ], [ %scevgep160, %.lr.ph116.preheader ] ; 7 uses
  %i.fb = icmp sgt i32 %i.s, 0
  br i1 %i.fb, label %iter.check260, label %.loopexit

iter.check260:                                    ; preds = %.preheader97
  %.5.lcssa244 = ptrtoaddr ptr %.5.lcssa to i64
  %wide.trip.count164 = and i64 %i.r, 2147483647  ; 6 uses
  %min.iters.check246 = icmp samesign ult i64 %wide.trip.count164, 4
  %i.fc = sub i64 %i.q, %.5.lcssa244
  %diff.check245 = icmp ugt i64 %i.fc, -32
  %or.cond359 = select i1 %min.iters.check246, i1 true, i1 %diff.check245
  br i1 %or.cond359, label %.lr.ph120.preheader, label %vector.main.loop.iter.check247

vector.main.loop.iter.check247:                   ; preds = %iter.check260
  %min.iters.check248 = icmp samesign ult i64 %wide.trip.count164, 32
  br i1 %min.iters.check248, label %vec.epilog.ph264, label %vector.ph249

vector.ph249:                                     ; preds = %vector.main.loop.iter.check247
  %i.fd = and i64 %i.r, 28
  %n.vec250 = and i64 %i.r, 2147483616            ; 5 uses
  %i.fe = getelementptr i8, ptr %.5.lcssa, i64 %n.vec250 ; 2 uses
  br label %vector.body251

vector.body251:                                   ; preds = %vector.ph249, %vector.body251
  %index252 = phi i64 [ 0, %vector.ph249 ], [ %index.next256, %vector.body251 ] ; 3 uses
  %next.gep253 = getelementptr i8, ptr %.5.lcssa, i64 %index252 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.l, i64 %index252 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load254 = load <16 x i8>, ptr %i.ff, align 1, !tbaa !32
  %wide.load255 = load <16 x i8>, ptr %i.fg, align 1, !tbaa !32
  %i.fh = getelementptr i8, ptr %next.gep253, i64 16
  store <16 x i8> %wide.load254, ptr %next.gep253, align 1, !tbaa !32
  store <16 x i8> %wide.load255, ptr %i.fh, align 1, !tbaa !32
  %index.next256 = add nuw i64 %index252, 32      ; 2 uses
  %i.fi = icmp eq i64 %index.next256, %n.vec250
  br i1 %i.fi, label %middle.block257, label %vector.body251, !llvm.loop !16

middle.block257:                                  ; preds = %vector.body251
  %cmp.n258 = icmp eq i64 %wide.trip.count164, %n.vec250
  br i1 %cmp.n258, label %.loopexit, label %vec.epilog.iter.check262

vec.epilog.iter.check262:                         ; preds = %middle.block257
  %min.epilog.iters.check263 = icmp eq i64 %i.fd, 0
  br i1 %min.epilog.iters.check263, label %.lr.ph120.preheader, label %vec.epilog.ph264, !prof !38

vec.epilog.ph264:                                 ; preds = %vector.main.loop.iter.check247, %vec.epilog.iter.check262
  %vec.epilog.resume.val259 = phi i64 [ %n.vec250, %vec.epilog.iter.check262 ], [ 0, %vector.main.loop.iter.check247 ]
  %n.vec265 = and i64 %i.r, 2147483644            ; 4 uses
  %i.fj = getelementptr i8, ptr %.5.lcssa, i64 %n.vec265 ; 2 uses
  br label %vec.epilog.vector.body266

vec.epilog.vector.body266:                        ; preds = %vec.epilog.vector.body266, %vec.epilog.ph264
  %index267 = phi i64 [ %vec.epilog.resume.val259, %vec.epilog.ph264 ], [ %index.next270, %vec.epilog.vector.body266 ] ; 3 uses
  %next.gep268 = getelementptr i8, ptr %.5.lcssa, i64 %index267
  %i.fk = getelementptr inbounds nuw i8, ptr %i.l, i64 %index267
  %wide.load269 = load <4 x i8>, ptr %i.fk, align 1, !tbaa !32
  store <4 x i8> %wide.load269, ptr %next.gep268, align 1, !tbaa !32
  %index.next270 = add nuw i64 %index267, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next270, %n.vec265
  br i1 %i.fl, label %vec.epilog.middle.block271, label %vec.epilog.vector.body266, !llvm.loop !17

vec.epilog.middle.block271:                       ; preds = %vec.epilog.vector.body266
  %cmp.n272 = icmp eq i64 %wide.trip.count164, %n.vec265
  br i1 %cmp.n272, label %.loopexit, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %iter.check260, %vec.epilog.iter.check262, %vec.epilog.middle.block271
  %indvars.iv161.ph = phi i64 [ 0, %iter.check260 ], [ %n.vec250, %vec.epilog.iter.check262 ], [ %n.vec265, %vec.epilog.middle.block271 ] ; 4 uses
  %.6118.ph = phi ptr [ %.5.lcssa, %iter.check260 ], [ %i.fe, %vec.epilog.iter.check262 ], [ %i.fj, %vec.epilog.middle.block271 ] ; 2 uses
  %i.fm = sub i64 %i.r, %indvars.iv161.ph
  %xtraiter371 = and i64 %i.fm, 7                 ; 2 uses
  %lcmp.mod372.not = icmp eq i64 %xtraiter371, 0
  br i1 %lcmp.mod372.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol

.lr.ph120.prol:                                   ; preds = %.lr.ph120.preheader, %.lr.ph120.prol
  %indvars.iv161.prol = phi i64 [ %indvars.iv.next162.prol, %.lr.ph120.prol ], [ %indvars.iv161.ph, %.lr.ph120.preheader ] ; 2 uses
  %.6118.prol = phi ptr [ %i.fp, %.lr.ph120.prol ], [ %.6118.ph, %.lr.ph120.preheader ] ; 2 uses
  %prol.iter373 = phi i64 [ %prol.iter373.next, %.lr.ph120.prol ], [ 0, %.lr.ph120.preheader ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv161.prol
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !32
  %i.fp = getelementptr inbounds nuw i8, ptr %.6118.prol, i64 1 ; 3 uses
  store i8 %i.fo, ptr %.6118.prol, align 1, !tbaa !32
  %indvars.iv.next162.prol = add nuw nsw i64 %indvars.iv161.prol, 1 ; 2 uses
  %prol.iter373.next = add i64 %prol.iter373, 1   ; 2 uses
  %prol.iter373.cmp.not = icmp eq i64 %prol.iter373.next, %xtraiter371
  br i1 %prol.iter373.cmp.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol, !llvm.loop !18

.lr.ph120.prol.loopexit:                          ; preds = %.lr.ph120.prol, %.lr.ph120.preheader
  %.lcssa365.unr = phi ptr [ poison, %.lr.ph120.preheader ], [ %i.fp, %.lr.ph120.prol ]
  %indvars.iv161.unr = phi i64 [ %indvars.iv161.ph, %.lr.ph120.preheader ], [ %indvars.iv.next162.prol, %.lr.ph120.prol ]
  %.6118.unr = phi ptr [ %.6118.ph, %.lr.ph120.preheader ], [ %i.fp, %.lr.ph120.prol ]
  %i.fq = sub nsw i64 %indvars.iv161.ph, %wide.trip.count164
  %i.fr = icmp ugt i64 %i.fq, -8
  br i1 %i.fr, label %.loopexit, label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120
  %indvars.iv161 = phi i64 [ %indvars.iv.next162.7, %.lr.ph120 ], [ %indvars.iv161.unr, %.lr.ph120.prol.loopexit ] ; 9 uses
  %.6118 = phi ptr [ %i.gw, %.lr.ph120 ], [ %.6118.unr, %.lr.ph120.prol.loopexit ] ; 9 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv161
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !32
  %i.fu = getelementptr inbounds nuw i8, ptr %.6118, i64 1
  store i8 %i.ft, ptr %.6118, align 1, !tbaa !32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv161
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !32
  %i.fy = getelementptr inbounds nuw i8, ptr %.6118, i64 2
  store i8 %i.fx, ptr %i.fu, align 1, !tbaa !32
  %i.fz = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv161
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !32
  %i.gc = getelementptr inbounds nuw i8, ptr %.6118, i64 3
  store i8 %i.gb, ptr %i.fy, align 1, !tbaa !32
  %i.gd = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv161
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 3
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !32
  %i.gg = getelementptr inbounds nuw i8, ptr %.6118, i64 4
  store i8 %i.gf, ptr %i.gc, align 1, !tbaa !32
  %i.gh = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv161
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !32
  %i.gk = getelementptr inbounds nuw i8, ptr %.6118, i64 5
  store i8 %i.gj, ptr %i.gg, align 1, !tbaa !32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv161
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 5
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !32
  %i.go = getelementptr inbounds nuw i8, ptr %.6118, i64 6
  store i8 %i.gn, ptr %i.gk, align 1, !tbaa !32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv161
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 6
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !32
  %i.gs = getelementptr inbounds nuw i8, ptr %.6118, i64 7
  store i8 %i.gr, ptr %i.go, align 1, !tbaa !32
  %i.gt = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv161
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 7
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !32
  %i.gw = getelementptr inbounds nuw i8, ptr %.6118, i64 8 ; 2 uses
  store i8 %i.gv, ptr %i.gs, align 1, !tbaa !32
  %indvars.iv.next162.7 = add nuw nsw i64 %indvars.iv161, 8 ; 2 uses
  %exitcond165.not.7 = icmp eq i64 %indvars.iv.next162.7, %wide.trip.count164
  br i1 %exitcond165.not.7, label %.loopexit, label %.lr.ph120, !llvm.loop !19

bb.o:                                             ; preds = %bb.m
  %i.gx = icmp eq i32 %i.s, 1
  %i.gy = call i32 @llvm.abs.i32(i32 %i.cc, i1 true) ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.089, i64 1 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.089, i64 2 ; 7 uses
  br i1 %i.gx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.hb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %i.gy) #7 ; 3 uses
  %i.hc = load i8, ptr %i.l, align 1, !tbaa !32
  store i8 %i.hc, ptr %.089, align 1, !tbaa !32
  store i8 101, ptr %i.gz, align 1, !tbaa !32
  %i.hd = load i32, ptr %i.a, align 4, !tbaa !6
  %i.he = icmp slt i32 %i.hd, 1
  %i.hf = select i1 %i.he, i8 45, i8 43
  %i.hg = getelementptr i8, ptr %.089, i64 3      ; 2 uses
  store i8 %i.hf, ptr %i.ha, align 1, !tbaa !32
  %i.hh = icmp sgt i32 %i.hb, 0
  br i1 %i.hh, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.p
  %i.hi = zext nneg i32 %i.hb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hg, ptr nonnull align 16 %i.d, i64 %i.hi, i1 false), !tbaa !32
  %narrow = add nuw i32 %i.hb, 3
  %i.hj = zext i32 %narrow to i64
  %scevgep = getelementptr i8, ptr %.089, i64 %i.hj
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %.lr.ph110.preheader, %bb.p
  %.7.lcssa = phi ptr [ %i.hg, %bb.p ], [ %scevgep, %.lr.ph110.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.hk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %i.gy) #7 ; 4 uses
  %i.hl = load i8, ptr %i.l, align 1, !tbaa !32
  store i8 %i.hl, ptr %.089, align 1, !tbaa !32
  store i8 46, ptr %i.gz, align 1, !tbaa !32
  %i.hm = icmp sgt i32 %i.s, 1
  br i1 %i.hm, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.q
  %wide.trip.count = and i64 %i.r, 2147483647     ; 3 uses
  %i.hn = add nsw i64 %wide.trip.count, -1        ; 7 uses
  %min.iters.check = icmp ult i64 %i.hn, 8
  %i.ho = sub i64 %.089199, %i.q
  %diff.check = icmp ult i64 %i.ho, 31
  %or.cond360 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond360, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check200 = icmp ult i64 %i.hn, 32
  br i1 %min.iters.check200, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hp = and i64 %i.hn, 24
  %n.vec = and i64 %i.hn, -32                     ; 5 uses
  %i.hq = or disjoint i64 %n.vec, 1
  %i.hr = getelementptr i8, ptr %i.ha, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ha, i64 %index ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.l, i64 %index ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 17
  %wide.load = load <16 x i8>, ptr %i.ht, align 1, !tbaa !32
  %wide.load201 = load <16 x i8>, ptr %i.hu, align 1, !tbaa !32
  %i.hv = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !32
  store <16 x i8> %wide.load201, ptr %i.hv, align 1, !tbaa !32
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hw = icmp eq i64 %index.next, %n.vec
  br i1 %i.hw, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hn, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec203 = and i64 %i.hn, -8                   ; 4 uses
  %i.hx = or disjoint i64 %n.vec203, 1
  %i.hy = getelementptr i8, ptr %i.ha, i64 %n.vec203 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index204 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next207, %vec.epilog.vector.body ] ; 3 uses
  %next.gep205 = getelementptr i8, ptr %i.ha, i64 %index204
  %i.hz = getelementptr inbounds nuw i8, ptr %i.l, i64 %index204
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 1
  %wide.load206 = load <8 x i8>, ptr %i.ia, align 1, !tbaa !32
  store <8 x i8> %wide.load206, ptr %next.gep205, align 1, !tbaa !32
  %index.next207 = add nuw i64 %index204, 8       ; 2 uses
  %i.ib = icmp eq i64 %index.next207, %n.vec203
  br i1 %i.ib, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n208 = icmp eq i64 %i.hn, %n.vec203
  br i1 %cmp.n208, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.hq, %vec.epilog.iter.check ], [ %i.hx, %vec.epilog.middle.block ] ; 4 uses
  %.899.ph = phi ptr [ %i.ha, %iter.check ], [ %i.hr, %vec.epilog.iter.check ], [ %i.hy, %vec.epilog.middle.block ] ; 2 uses
  %i.ic = sub i64 %i.r, %indvars.iv.ph
  %xtraiter = and i64 %i.ic, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.899.prol = phi ptr [ %i.if, %.lr.ph.prol ], [ %.899.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.prol
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !32
  %i.if = getelementptr inbounds nuw i8, ptr %.899.prol, i64 1 ; 3 uses
  store i8 %i.ie, ptr %.899.prol, align 1, !tbaa !32
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !22

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa367.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.if, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.899.unr = phi ptr [ %.899.ph, %.lr.ph.preheader ], [ %i.if, %.lr.ph.prol ]
  %i.ig = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ih = icmp ugt i64 %i.ig, -8
  br i1 %i.ih, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.q
  %.8.lcssa = phi ptr [ %i.ha, %bb.q ], [ %i.hy, %vec.epilog.middle.block ], [ %i.hr, %middle.block ], [ %.lcssa367.unr, %.lr.ph.prol.loopexit ], [ %i.kj, %.lr.ph ] ; 4 uses
  %.8.lcssa212 = ptrtoaddr ptr %.8.lcssa to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 1
  store i8 101, ptr %.8.lcssa, align 1, !tbaa !32
  %i.ij = load i32, ptr %i.a, align 4, !tbaa !6
  %i.ik = icmp slt i32 %i.ij, 1
  %i.il = select i1 %i.ik, i8 45, i8 43
  %i.im = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 2 ; 7 uses
  store i8 %i.il, ptr %i.ii, align 1, !tbaa !32
  %i.in = icmp sgt i32 %i.hk, 0
  br i1 %i.in, label %iter.check228, label %._crit_edge105

iter.check228:                                    ; preds = %._crit_edge
  %wide.trip.count154 = zext nneg i32 %i.hk to i64 ; 8 uses
  %min.iters.check214 = icmp ult i32 %i.hk, 4
  br i1 %min.iters.check214, label %.lr.ph104.preheader, label %vector.memcheck211

vector.memcheck211:                               ; preds = %iter.check228
  %i.io = sub i64 %.8.lcssa212, %4
  %i.ip = add i64 %i.io, 1
  %diff.check213 = icmp ult i64 %i.ip, 31
  br i1 %diff.check213, label %.lr.ph104.preheader, label %vector.main.loop.iter.check215

vector.main.loop.iter.check215:                   ; preds = %vector.memcheck211
  %min.iters.check216 = icmp ult i32 %i.hk, 32
  br i1 %min.iters.check216, label %vec.epilog.ph232, label %vector.ph217

vector.ph217:                                     ; preds = %vector.main.loop.iter.check215
  %i.iq = and i64 %wide.trip.count154, 28
  %n.vec218 = and i64 %wide.trip.count154, 2147483616 ; 5 uses
  %i.ir = getelementptr i8, ptr %i.im, i64 %n.vec218 ; 2 uses
  br label %vector.body219

vector.body219:                                   ; preds = %vector.ph217, %vector.body219
  %index220 = phi i64 [ 0, %vector.ph217 ], [ %index.next224, %vector.body219 ] ; 3 uses
  %next.gep221 = getelementptr i8, ptr %i.im, i64 %index220 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.e, i64 %index220 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %wide.load222 = load <16 x i8>, ptr %i.is, align 16, !tbaa !32
  %wide.load223 = load <16 x i8>, ptr %i.it, align 16, !tbaa !32
  %i.iu = getelementptr i8, ptr %next.gep221, i64 16
  store <16 x i8> %wide.load222, ptr %next.gep221, align 1, !tbaa !32
  store <16 x i8> %wide.load223, ptr %i.iu, align 1, !tbaa !32
  %index.next224 = add nuw i64 %index220, 32      ; 2 uses
  %i.iv = icmp eq i64 %index.next224, %n.vec218
  br i1 %i.iv, label %middle.block225, label %vector.body219, !llvm.loop !23

middle.block225:                                  ; preds = %vector.body219
  %cmp.n226 = icmp eq i64 %n.vec218, %wide.trip.count154
  br i1 %cmp.n226, label %._crit_edge105, label %vec.epilog.iter.check230

vec.epilog.iter.check230:                         ; preds = %middle.block225
  %min.epilog.iters.check231 = icmp eq i64 %i.iq, 0
  br i1 %min.epilog.iters.check231, label %.lr.ph104.preheader, label %vec.epilog.ph232, !prof !38

vec.epilog.ph232:                                 ; preds = %vector.main.loop.iter.check215, %vec.epilog.iter.check230
  %vec.epilog.resume.val227 = phi i64 [ %n.vec218, %vec.epilog.iter.check230 ], [ 0, %vector.main.loop.iter.check215 ]
  %n.vec233 = and i64 %wide.trip.count154, 2147483644 ; 4 uses
  %i.iw = getelementptr i8, ptr %i.im, i64 %n.vec233 ; 2 uses
  br label %vec.epilog.vector.body234

vec.epilog.vector.body234:                        ; preds = %vec.epilog.vector.body234, %vec.epilog.ph232
  %index235 = phi i64 [ %vec.epilog.resume.val227, %vec.epilog.ph232 ], [ %index.next238, %vec.epilog.vector.body234 ] ; 3 uses
  %next.gep236 = getelementptr i8, ptr %i.im, i64 %index235
  %i.ix = getelementptr inbounds nuw i8, ptr %i.e, i64 %index235
  %wide.load237 = load <4 x i8>, ptr %i.ix, align 4, !tbaa !32
  store <4 x i8> %wide.load237, ptr %next.gep236, align 1, !tbaa !32
  %index.next238 = add nuw i64 %index235, 4       ; 2 uses
  %i.iy = icmp eq i64 %index.next238, %n.vec233
  br i1 %i.iy, label %vec.epilog.middle.block239, label %vec.epilog.vector.body234, !llvm.loop !24

vec.epilog.middle.block239:                       ; preds = %vec.epilog.vector.body234
  %cmp.n240 = icmp eq i64 %n.vec233, %wide.trip.count154
  br i1 %cmp.n240, label %._crit_edge105, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %iter.check228, %vector.memcheck211, %vec.epilog.iter.check230, %vec.epilog.middle.block239
  %indvars.iv151.ph = phi i64 [ 0, %iter.check228 ], [ 0, %vector.memcheck211 ], [ %n.vec218, %vec.epilog.iter.check230 ], [ %n.vec233, %vec.epilog.middle.block239 ] ; 4 uses
  %.9101.ph = phi ptr [ %i.im, %iter.check228 ], [ %i.im, %vector.memcheck211 ], [ %i.ir, %vec.epilog.iter.check230 ], [ %i.iw, %vec.epilog.middle.block239 ] ; 2 uses
  %i.iz = sub nsw i64 %wide.trip.count154, %indvars.iv151.ph
  %xtraiter368 = and i64 %i.iz, 7                 ; 2 uses
  %lcmp.mod369.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod369.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol

.lr.ph104.prol:                                   ; preds = %.lr.ph104.preheader, %.lr.ph104.prol
  %indvars.iv151.prol = phi i64 [ %indvars.iv.next152.prol, %.lr.ph104.prol ], [ %indvars.iv151.ph, %.lr.ph104.preheader ] ; 2 uses
  %.9101.prol = phi ptr [ %i.jc, %.lr.ph104.prol ], [ %.9101.ph, %.lr.ph104.preheader ] ; 2 uses
  %prol.iter370 = phi i64 [ %prol.iter370.next, %.lr.ph104.prol ], [ 0, %.lr.ph104.preheader ]
  %i.ja = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151.prol
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !32
  %i.jc = getelementptr inbounds nuw i8, ptr %.9101.prol, i64 1 ; 3 uses
  store i8 %i.jb, ptr %.9101.prol, align 1, !tbaa !32
  %indvars.iv.next152.prol = add nuw nsw i64 %indvars.iv151.prol, 1 ; 2 uses
  %prol.iter370.next = add i64 %prol.iter370, 1   ; 2 uses
  %prol.iter370.cmp.not = icmp eq i64 %prol.iter370.next, %xtraiter368
  br i1 %prol.iter370.cmp.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol, !llvm.loop !25

.lr.ph104.prol.loopexit:                          ; preds = %.lr.ph104.prol, %.lr.ph104.preheader
  %.lcssa366.unr = phi ptr [ poison, %.lr.ph104.preheader ], [ %i.jc, %.lr.ph104.prol ]
  %indvars.iv151.unr = phi i64 [ %indvars.iv151.ph, %.lr.ph104.preheader ], [ %indvars.iv.next152.prol, %.lr.ph104.prol ]
  %.9101.unr = phi ptr [ %.9101.ph, %.lr.ph104.preheader ], [ %i.jc, %.lr.ph104.prol ]
  %i.jd = sub nsw i64 %indvars.iv151.ph, %wide.trip.count154
  %i.je = icmp ugt i64 %i.jd, -8
  br i1 %i.je, label %._crit_edge105, label %.lr.ph104

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.899 = phi ptr [ %i.kj, %.lr.ph ], [ %.899.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !32
  %i.jh = getelementptr inbounds nuw i8, ptr %.899, i64 1
  store i8 %i.jg, ptr %.899, align 1, !tbaa !32
  %i.ji = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 1
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !32
  %i.jl = getelementptr inbounds nuw i8, ptr %.899, i64 2
  store i8 %i.jk, ptr %i.jh, align 1, !tbaa !32
  %i.jm = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 2
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !32
  %i.jp = getelementptr inbounds nuw i8, ptr %.899, i64 3
  store i8 %i.jo, ptr %i.jl, align 1, !tbaa !32
  %i.jq = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 3
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !32
  %i.jt = getelementptr inbounds nuw i8, ptr %.899, i64 4
  store i8 %i.js, ptr %i.jp, align 1, !tbaa !32
  %i.ju = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !32
  %i.jx = getelementptr inbounds nuw i8, ptr %.899, i64 5
  store i8 %i.jw, ptr %i.jt, align 1, !tbaa !32
  %i.jy = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 5
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !32
  %i.kb = getelementptr inbounds nuw i8, ptr %.899, i64 6
  store i8 %i.ka, ptr %i.jx, align 1, !tbaa !32
  %i.kc = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 6
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !32
  %i.kf = getelementptr inbounds nuw i8, ptr %.899, i64 7
  store i8 %i.ke, ptr %i.kb, align 1, !tbaa !32
  %i.kg = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 7
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !32
  %i.kj = getelementptr inbounds nuw i8, ptr %.899, i64 8 ; 2 uses
  store i8 %i.ki, ptr %i.kf, align 1, !tbaa !32
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge105:                                   ; preds = %.lr.ph104.prol.loopexit, %.lr.ph104, %middle.block225, %vec.epilog.middle.block239, %._crit_edge
  %.9.lcssa = phi ptr [ %i.im, %._crit_edge ], [ %i.iw, %vec.epilog.middle.block239 ], [ %i.ir, %middle.block225 ], [ %.lcssa366.unr, %.lr.ph104.prol.loopexit ], [ %i.lo, %.lr.ph104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %.loopexit

.lr.ph104:                                        ; preds = %.lr.ph104.prol.loopexit, %.lr.ph104
  %indvars.iv151 = phi i64 [ %indvars.iv.next152.7, %.lr.ph104 ], [ %indvars.iv151.unr, %.lr.ph104.prol.loopexit ] ; 9 uses
  %.9101 = phi ptr [ %i.lo, %.lr.ph104 ], [ %.9101.unr, %.lr.ph104.prol.loopexit ] ; 9 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !32
  %i.km = getelementptr inbounds nuw i8, ptr %.9101, i64 1
  store i8 %i.kl, ptr %.9101, align 1, !tbaa !32
  %i.kn = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 1
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !32
  %i.kq = getelementptr inbounds nuw i8, ptr %.9101, i64 2
  store i8 %i.kp, ptr %i.km, align 1, !tbaa !32
  %i.kr = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 2
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !32
  %i.ku = getelementptr inbounds nuw i8, ptr %.9101, i64 3
  store i8 %i.kt, ptr %i.kq, align 1, !tbaa !32
  %i.kv = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 3
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !32
  %i.ky = getelementptr inbounds nuw i8, ptr %.9101, i64 4
  store i8 %i.kx, ptr %i.ku, align 1, !tbaa !32
  %i.kz = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !32
  %i.lc = getelementptr inbounds nuw i8, ptr %.9101, i64 5
  store i8 %i.lb, ptr %i.ky, align 1, !tbaa !32
  %i.ld = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 5
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !32
  %i.lg = getelementptr inbounds nuw i8, ptr %.9101, i64 6
  store i8 %i.lf, ptr %i.lc, align 1, !tbaa !32
  %i.lh = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 6
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !32
  %i.lk = getelementptr inbounds nuw i8, ptr %.9101, i64 7
  store i8 %i.lj, ptr %i.lg, align 1, !tbaa !32
  %i.ll = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv151
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 7
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !32
  %i.lo = getelementptr inbounds nuw i8, ptr %.9101, i64 8 ; 2 uses
  store i8 %i.ln, ptr %i.lk, align 1, !tbaa !32
  %indvars.iv.next152.7 = add nuw nsw i64 %indvars.iv151, 8 ; 2 uses
  %exitcond155.not.7 = icmp eq i64 %indvars.iv.next152.7, %wide.trip.count154
  br i1 %exitcond155.not.7, label %._crit_edge105, label %.lr.ph104, !llvm.loop !27

.loopexit:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120, %.lr.ph131, %middle.block257, %vec.epilog.middle.block271, %middle.block304, %vec.epilog.middle.block320, %.lr.ph139.preheader, %.preheader97, %._crit_edge125, %.preheader, %._crit_edge111, %._crit_edge105
  %.10 = phi ptr [ %.9.lcssa, %._crit_edge105 ], [ %.4, %.lr.ph131 ], [ %scevgep180, %.lr.ph139.preheader ], [ %.7.lcssa, %._crit_edge111 ], [ %.1.lcssa, %.preheader ], [ %.4127, %._crit_edge125 ], [ %.5.lcssa, %.preheader97 ], [ %i.dj, %vec.epilog.middle.block320 ], [ %i.de, %middle.block304 ], [ %i.fj, %vec.epilog.middle.block271 ], [ %i.fe, %middle.block257 ], [ %.lcssa365.unr, %.lr.ph120.prol.loopexit ], [ %i.gw, %.lr.ph120 ] ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.10, i64 1
  store i8 0, ptr %.10, align 1, !tbaa !32
  %i.lq = load ptr, ptr %i.g, align 8, !tbaa !31
  call void @g_freedtoa(ptr noundef %i.lq, ptr noundef %i.l) #7
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = ptrtoint ptr %1 to i64
  %i.lt = xor i64 %i.ls, -1
  %i.lu = add i64 %i.lr, %i.lt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !31
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.h, %bb.f, %bb.d, %bb.b
  %i.lv = phi ptr [ %i.f, %bb.b ], [ %i.f, %bb.d ], [ %i.f, %bb.f ], [ %i.f, %bb.h ], [ %.pre, %.loopexit ]
end_hunk_0
