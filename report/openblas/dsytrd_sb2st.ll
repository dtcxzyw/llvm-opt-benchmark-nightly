Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsytrd_sb2st?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@c__2 = internal global i32 2, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"DSYTRD_SB2ST\00", align 1
@c_n1 = internal global i32 -1, align 4
@c__3 = internal global i32 3, align 4
@c__4 = internal global i32 4, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@c_b26 = internal global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dsytrd_sb2st_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8, ptr noundef %9, ptr nofree noundef readonly captures(none) %10, ptr noundef %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef captures(none) initializes((0, 4)) %13) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %11 to i64                 ; 3 uses
  %i.b = ptrtoaddr ptr %8 to i64                  ; 4 uses
  %i.c = ptrtoaddr ptr %5 to i64                  ; 4 uses
  %i.d = ptrtoaddr ptr %7 to i64                  ; 3 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 11 uses
  %i.g = alloca i32, align 4                      ; 11 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 11 uses
  %i.j = alloca i32, align 4                      ; 9 uses
  %i.k = alloca i32, align 4                      ; 11 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #5
  %i.n = load i32, ptr %6, align 4, !tbaa !39     ; 9 uses
  %narrow = xor i32 %i.n, -1
  %i.o = sext i32 %narrow to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %5, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %7, i64 -8 ; 24 uses
  %i.r = getelementptr inbounds i8, ptr %8, i64 -8 ; 32 uses
  %i.s = getelementptr inbounds i8, ptr %11, i64 -8 ; 6 uses
  store i32 0, ptr %13, align 4, !tbaa !39
  %i.t = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %i.u = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  store i32 %i.u, ptr %i.h, align 4, !tbaa !39
  %i.v = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  %i.w = load i32, ptr %12, align 4, !tbaa !39
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr %10, align 4, !tbaa !39
  %i.z = icmp eq i32 %i.y, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = phi i1 [ true, %bb.a ], [ %i.z, %bb.b ] ; 3 uses
  %i.ab = tail call i32 @ilaenv2stage_(ptr noundef nonnull @c__2, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1) #5
  store i32 %i.ab, ptr %i.j, align 4, !tbaa !39
  %i.ac = call i32 @ilaenv2stage_(ptr noundef nonnull @c__3, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.j, ptr noundef nonnull @c_n1) #5 ; 2 uses
  %i.ad = call i32 @ilaenv2stage_(ptr noundef nonnull @c__4, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.j, ptr noundef nonnull @c_n1) #5 ; 2 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.4) #5
  %.not293 = icmp eq i32 %i.ae, 0
  br i1 %.not293, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.4) #5
  %.not294 = icmp eq i32 %i.af, 0
  br i1 %.not294, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not295 = icmp eq i32 %i.v, 0                  ; 4 uses
  br i1 %.not295, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.5) #5
  %.not296 = icmp eq i32 %i.ag, 0
  br i1 %.not296, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = load i32, ptr %3, align 4, !tbaa !39    ; 27 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load i32, ptr %4, align 4, !tbaa !39    ; 10 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %6, align 4, !tbaa !39
  %.not297 = icmp sgt i32 %i.al, %i.aj
  br i1 %.not297, label %bb.k, label %.thread.sink.split

bb.k:                                             ; preds = %bb.j
  %i.am = load i32, ptr %10, align 4, !tbaa !39
  %i.an = icmp sge i32 %i.am, %i.ac
  %or.cond = select i1 %i.an, i1 true, i1 %i.aa
  br i1 %or.cond, label %bb.l, label %.thread.sink.split

bb.l:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %12, align 4, !tbaa !39
  %i.ap = icmp sge i32 %i.ao, %i.ad
  %or.cond3 = select i1 %i.ap, i1 true, i1 %i.aa
  br i1 %or.cond3, label %bb.m, label %.thread.sink.split

bb.m:                                             ; preds = %bb.l
  %.pr = load i32, ptr %13, align 4, !tbaa !39    ; 2 uses
  %i.aq = icmp eq i32 %.pr, 0
  br i1 %i.aq, label %bb.n, label %.thread

.thread.sink.split:                               ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d
  %.sink = phi i32 [ -1, %bb.d ], [ -2, %bb.e ], [ -4, %bb.h ], [ -7, %bb.j ], [ -11, %bb.k ], [ -5, %bb.i ], [ -3, %bb.g ], [ -13, %bb.l ] ; 2 uses
  store i32 %.sink, ptr %13, align 4, !tbaa !39
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.m
  %.ph321 = phi i32 [ %.pr, %bb.m ], [ %.sink, %.thread.sink.split ]
  %i.ar = sub nsw i32 0, %.ph321
  store i32 %i.ar, ptr %i.e, align 4, !tbaa !39
  %i.as = call i32 @xerbla_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.e, i32 noundef 12) #5 ; 0 uses
  br label %bb.ak

bb.n:                                             ; preds = %bb.m
  %i.at = sitofp i32 %i.ac to double              ; 2 uses
  store double %i.at, ptr %9, align 8, !tbaa !41
  %i.au = sitofp i32 %i.ad to double              ; 2 uses
  store double %i.au, ptr %11, align 8, !tbaa !41
  br i1 %i.aa, label %bb.ak, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = icmp eq i32 %i.ah, 0
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double 1.000000e+00, ptr %9, align 8, !tbaa !41
  store double 1.000000e+00, ptr %11, align 8, !tbaa !41
  br label %bb.ak

bb.q:                                             ; preds = %bb.o
  %i.aw = load i32, ptr %i.j, align 4, !tbaa !39
  %i.ax = add nsw i32 %i.aw, %i.aj
  store i32 %i.ax, ptr %i.l, align 4, !tbaa !39
  %i.ay = shl nuw i32 %i.ah, 1
  %i.az = shl nuw i32 %i.aj, 1                    ; 2 uses
  %i.ba = or disjoint i32 %i.az, 1                ; 2 uses
  store i32 %i.ba, ptr %i.k, align 4, !tbaa !39
  %i.bb = mul nsw i32 %i.ba, %i.ah
  br i1 %.not295, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = add nuw nsw i32 %i.aj, 1                ; 2 uses
  %i.bd = add nuw nsw i32 %i.bc, %i.aj
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = zext nneg i32 %i.aj to i64
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = sext i32 %i.az to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bi = add nuw nsw i32 %i.aj, 2
  %i.bj = zext nneg i32 %i.bi to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0276 = phi i64 [ %i.bg, %bb.r ], [ 1, %bb.s ] ; 2 uses
  %.0275 = phi i64 [ %i.bf, %bb.r ], [ 2, %bb.s ] ; 4 uses
  %.0268 = phi i64 [ 1, %bb.r ], [ %i.bj, %bb.s ]
  %.0267 = phi i64 [ %i.be, %bb.r ], [ 1, %bb.s ] ; 5 uses
  %.0265 = phi i64 [ %i.bh, %bb.r ], [ 2, %bb.s ] ; 4 uses
  switch i32 %i.aj, label %bb.w [
    i32 0, label %iter.check557
    i32 1, label %iter.check
  ]

iter.check557:                                    ; preds = %bb.t
  %i.bk = sext i32 %i.n to i64                    ; 9 uses
  %i.bl = add nuw i32 %i.ah, 1
  %wide.trip.count398 = zext i32 %i.bl to i64     ; 2 uses
  %invariant.gep450 = getelementptr [8 x i8], ptr %i.p, i64 %.0267 ; 11 uses
  %i.bm = zext nneg i32 %i.ah to i64              ; 5 uses
  %min.iters.check542 = icmp ugt i32 %i.ah, 3
  %ident.check539.not = icmp eq i32 %i.n, 1
  %or.cond666 = select i1 %min.iters.check542, i1 %ident.check539.not, i1 false
  br i1 %or.cond666, label %vector.memcheck540, label %.lr.ph345.preheader

vector.memcheck540:                               ; preds = %iter.check557
  %i.bn = shl nuw nsw i64 %.0267, 3
  %i.bo = add i64 %i.bn, %i.c
  %i.bp = sub i64 %i.d, %i.bo
  %i.bq = add i64 %i.bp, 7
  %diff.check541 = icmp ult i64 %i.bq, 127
  br i1 %diff.check541, label %.lr.ph345.preheader, label %vector.main.loop.iter.check543

vector.main.loop.iter.check543:                   ; preds = %vector.memcheck540
  %min.iters.check544 = icmp ult i32 %i.ah, 16
  br i1 %min.iters.check544, label %vec.epilog.ph561, label %vector.ph545

vector.ph545:                                     ; preds = %vector.main.loop.iter.check543
  %i.br = and i64 %i.bm, 12
  %n.vec546 = and i64 %i.bm, 2147483632           ; 4 uses
  %i.bs = or disjoint i64 %n.vec546, 1
  br label %vector.body547

vector.body547:                                   ; preds = %vector.body547, %vector.ph545
  %index548 = phi i64 [ 0, %vector.ph545 ], [ %index.next553, %vector.body547 ] ; 3 uses
  %i.bt = getelementptr [8 x i8], ptr %invariant.gep450, i64 %index548 ; 4 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = getelementptr i8, ptr %i.bt, i64 40
  %i.bw = getelementptr i8, ptr %i.bt, i64 72
  %i.bx = getelementptr i8, ptr %i.bt, i64 104
  %wide.load549 = load <4 x double>, ptr %i.bu, align 8, !tbaa !41
  %wide.load550 = load <4 x double>, ptr %i.bv, align 8, !tbaa !41
  %wide.load551 = load <4 x double>, ptr %i.bw, align 8, !tbaa !41
  %wide.load552 = load <4 x double>, ptr %i.bx, align 8, !tbaa !41
  %i.by = getelementptr [8 x i8], ptr %7, i64 %index548 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
end_hunk_0
begin_hunk_1_@dsytrd_sb2st_:bb.a
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1
  %i.iz = mul nsw i64 %indvars.iv.next391, %i.ht
  %gep449.1 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.iz
  %i.ja = load double, ptr %gep449.1, align 8, !tbaa !41
  %i.jb = getelementptr [8 x i8], ptr %8, i64 %indvars.iv390
  store double %i.ja, ptr %i.jb, align 8, !tbaa !41
  %indvars.iv.next391.1 = add nuw nsw i64 %indvars.iv390, 2 ; 2 uses
  %i.jc = mul nsw i64 %indvars.iv.next391.1, %i.ht
  %gep449.2 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.jc
  %i.jd = load double, ptr %gep449.2, align 8, !tbaa !41
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.1
  store double %i.jd, ptr %i.je, align 8, !tbaa !41
  %indvars.iv.next391.2 = add nuw nsw i64 %indvars.iv390, 3 ; 2 uses
  %i.jf = mul nsw i64 %indvars.iv.next391.2, %i.ht
  %gep449.3 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.jf
  %i.jg = load double, ptr %gep449.3, align 8, !tbaa !41
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.2
  store double %i.jg, ptr %i.jh, align 8, !tbaa !41
  %indvars.iv.next391.3 = add nuw nsw i64 %indvars.iv390, 4 ; 2 uses
  %i.ji = mul nsw i64 %indvars.iv.next391.3, %i.ht
  %gep449.4 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.ji
  %i.jj = load double, ptr %gep449.4, align 8, !tbaa !41
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.3
  store double %i.jj, ptr %i.jk, align 8, !tbaa !41
  %indvars.iv.next391.4 = add nuw nsw i64 %indvars.iv390, 5 ; 2 uses
  %i.jl = mul nsw i64 %indvars.iv.next391.4, %i.ht
  %gep449.5 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.jl
  %i.jm = load double, ptr %gep449.5, align 8, !tbaa !41
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.4
  store double %i.jm, ptr %i.jn, align 8, !tbaa !41
  %indvars.iv.next391.5 = add nuw nsw i64 %indvars.iv390, 6 ; 2 uses
  %i.jo = mul nsw i64 %indvars.iv.next391.5, %i.ht
  %gep449.6 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.jo
  %i.jp = load double, ptr %gep449.6, align 8, !tbaa !41
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.5
  store double %i.jp, ptr %i.jq, align 8, !tbaa !41
  %indvars.iv.next391.6 = add nuw nsw i64 %indvars.iv390, 7 ; 2 uses
  %i.jr = mul nsw i64 %indvars.iv.next391.6, %i.ht
  %gep449.7 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.jr
  %i.js = load double, ptr %gep449.7, align 8, !tbaa !41
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.6
  store double %i.js, ptr %i.jt, align 8, !tbaa !41
  %indvars.iv.next391.7 = add nuw nsw i64 %indvars.iv390, 8 ; 2 uses
  %exitcond394.not.7 = icmp eq i64 %indvars.iv.next391.7, %wide.trip.count393
  br i1 %exitcond394.not.7, label %.loopexit330, label %.lr.ph341, !llvm.loop !23

.loopexit330:                                     ; preds = %.lr.ph337.prol.loopexit, %.lr.ph337, %.lr.ph341.prol.loopexit, %.lr.ph341, %middle.block490, %vec.epilog.middle.block503, %middle.block522, %vec.epilog.middle.block535, %bb.u, %bb.v
  store double 1.000000e+00, ptr %9, align 8, !tbaa !41
  store double 1.000000e+00, ptr %11, align 8, !tbaa !41
  br label %bb.ak

bb.w:                                             ; preds = %bb.t
  %i.ju = uitofp nneg i32 %i.ah to float
  %i.jv = add nsw i32 %i.ah, -1
  %i.jw = uitofp nneg i32 %i.jv to float
  %i.jx = fdiv float %i.jw, %i.ju
  %i.jy = fadd float %i.jx, 5.000000e-01          ; 3 uses
  %i.jz = fcmp ogt float %i.jy, 0.000000e+00
  br i1 %i.jz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ka = call float @llvm.floor.f32(float %i.jy)
  %i.kb = fpext float %i.ka to double
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.kc = fneg float %i.jy
  %i.kd = call float @llvm.floor.f32(float %i.kc)
  %i.ke = fpext float %i.kd to double
  %i.kf = fneg double %i.ke
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.kg = phi double [ %i.kb, %bb.x ], [ %i.kf, %bb.y ]
  %i.kh = fptosi double %i.kg to i32              ; 3 uses
  %i.ki = add nuw nsw i32 %i.aj, 1
  store i32 %i.ki, ptr %i.e, align 4, !tbaa !39
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0267
  call void @dlacpy_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.e, ptr noundef nonnull %3, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %i.kj, ptr noundef nonnull %i.k) #5
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0268
  call void @dlaset_(ptr noundef nonnull @.str.6, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull @c_b26, ptr noundef nonnull @c_b26, ptr noundef nonnull %i.kk, ptr noundef nonnull %i.k) #5
  store i32 %i.kh, ptr %i.e, align 4, !tbaa !39
  %.not300364 = icmp slt i32 %i.kh, 1
  br i1 %.not300364, label %.._crit_edge368_crit_edge, label %.lr.ph367

.._crit_edge368_crit_edge:                        ; preds = %bb.z
  %.pre422 = load i32, ptr %3, align 4, !tbaa !39
  br label %._crit_edge368

.lr.ph367:                                        ; preds = %bb.z
  %i.kl = sext i32 %i.ay to i64
  %i.km = getelementptr [8 x i8], ptr %9, i64 %i.kl ; 3 uses
  %i.kn = sext i32 %i.bb to i64
  %i.ko = getelementptr [8 x i8], ptr %i.s, i64 %i.kn
  %i.kp = getelementptr i8, ptr %i.ko, i64 8      ; 3 uses
  %.pre423 = load i32, ptr %3, align 4, !tbaa !39
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph367, %._crit_edge362
  %i.kq = phi i32 [ %.pre423, %.lr.ph367 ], [ %i.nv, %._crit_edge362 ] ; 5 uses
  %i.kr = phi i32 [ %i.kh, %.lr.ph367 ], [ %i.nw, %._crit_edge362 ]
  %.0266365 = phi i32 [ 1, %.lr.ph367 ], [ %i.nx, %._crit_edge362 ] ; 4 uses
  %i.ks = add nsw i32 %.0266365, -1
  %i.kt = mul nsw i32 %i.ks, %i.ah
  %i.ku = add nsw i32 %i.kt, 1                    ; 3 uses
  %i.kv = mul i32 %.0266365, %i.ah
  %i.kw = add nsw i32 %i.kq, -1
  %i.kx = call i32 @llvm.smin.i32(i32 %i.kv, i32 %i.kw)
  %.not305.not357 = icmp slt i32 %i.ku, %i.kq
  br i1 %.not305.not357, label %.lr.ph361, label %._crit_edge362

.lr.ph361:                                        ; preds = %bb.aa, %._crit_edge354.2
  %i.ky = phi i32 [ %i.ns, %._crit_edge354.2 ], [ %i.kq, %bb.aa ] ; 2 uses
  %.0359 = phi i32 [ %.2.lcssa.2, %._crit_edge354.2 ], [ %i.ku, %bb.aa ] ; 4 uses
  %.5358 = phi i32 [ %i.nt, %._crit_edge354.2 ], [ %i.ku, %bb.aa ] ; 6 uses
  %i.kz = call i32 @llvm.smin.i32(i32 %.5358, i32 %i.kx) ; 6 uses
  %i.la = icmp sgt i32 %.0359, %i.kz
  br i1 %i.la, label %._crit_edge362.loopexit, label %.preheader328

.preheader328:                                    ; preds = %.lr.ph361
  store i32 %.0359, ptr %i.m, align 4, !tbaa !39
  br label %.preheader

.preheader:                                       ; preds = %.preheader328, %.loopexit327
  %.pre = phi i32 [ %i.lw, %.loopexit327 ], [ %i.ky, %.preheader328 ] ; 4 uses
  %i.lb = phi i32 [ %i.ma, %.loopexit327 ], [ %.0359, %.preheader328 ] ; 4 uses
  %.2353 = phi i32 [ %spec.select458, %.loopexit327 ], [ %.0359, %.preheader328 ]
  %i.lc = sub nsw i32 %.5358, %i.lb
  %i.ld = mul nsw i32 %i.lc, 3                    ; 2 uses
  %i.le = add i32 %i.ld, 1                        ; 2 uses
  %i.lf = icmp eq i32 %.5358, %i.lb
  br i1 %i.lf, label %.thread323, label %bb.ab

.thread323:                                       ; preds = %.preheader
  store i32 1, ptr %i.i, align 4, !tbaa !39
  %.pre425 = load i32, ptr %4, align 4, !tbaa !39
  br label %bb.ad

bb.ab:                                            ; preds = %.preheader
  %i.lg = srem i32 %i.le, 2                       ; 2 uses
  %i.lh = sdiv i32 %i.le, 2
  %i.li = add nsw i32 %i.lg, 2
  store i32 %i.li, ptr %i.i, align 4, !tbaa !39
  %i.lj = icmp eq i32 %i.lg, 0
  %.pre426 = load i32, ptr %4, align 4, !tbaa !39 ; 3 uses
  br i1 %i.lj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.lk = mul nsw i32 %.pre426, %i.lh
  %i.ll = add nsw i32 %i.lk, %i.lb                ; 3 uses
  %reass.sub = sub i32 %i.ll, %.pre426
  %i.lm = add i32 %reass.sub, 1
  store i32 %i.lm, ptr %i.g, align 4, !tbaa !39
  %. = call i32 @llvm.smin.i32(i32 %i.ll, i32 %.pre)
  store i32 %., ptr %i.f, align 4, !tbaa !39
  br label %.loopexit327

bb.ad:                                            ; preds = %.thread323, %bb.ab
  %i.ln = phi i32 [ %.pre425, %.thread323 ], [ %.pre426, %bb.ab ] ; 2 uses
  %i.lo = add i32 %i.ld, 2
  %i.lp = sdiv i32 %i.lo, 2
  %i.lq = mul nsw i32 %i.ln, %i.lp
  %i.lr = add nsw i32 %i.lq, %i.lb                ; 3 uses
  %i.ls = sub nsw i32 %i.lr, %i.ln
  %i.lt = add nsw i32 %i.ls, 1                    ; 2 uses
  store i32 %i.lt, ptr %i.g, align 4, !tbaa !39
  %.318 = call i32 @llvm.smin.i32(i32 %i.lr, i32 %.pre) ; 2 uses
  store i32 %.318, ptr %i.f, align 4, !tbaa !39
  %i.lu = add nsw i32 %.318, -1
  %.not310 = icmp sge i32 %i.lt, %i.lu
  %i.lv = icmp sle i32 %.pre, %i.lr
  %or.cond325 = and i1 %i.lv, %.not310
  %spec.select = select i1 %or.cond325, i32 %.pre, i32 0
  br label %.loopexit327

.loopexit327:                                     ; preds = %bb.ad, %bb.ac
  %.0264 = phi i32 [ %i.ll, %bb.ac ], [ %spec.select, %bb.ad ]
  call void @dsb2st_kernels_(ptr noundef %2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %i.m, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.j, ptr noundef nonnull %11, ptr noundef nonnull %i.k, ptr noundef %i.km, ptr noundef nonnull %9, ptr noundef nonnull %i.l, ptr noundef %i.kp) #5
  %i.lw = load i32, ptr %3, align 4, !tbaa !39    ; 4 uses
  %i.lx = add nsw i32 %i.lw, -1
  %.not312 = icmp sge i32 %.0264, %i.lx
  %i.ly = zext i1 %.not312 to i32
  %spec.select458 = add nsw i32 %.2353, %i.ly     ; 6 uses
  %i.lz = load i32, ptr %i.m, align 4, !tbaa !39  ; 2 uses
  %i.ma = add nsw i32 %i.lz, 1                    ; 2 uses
  store i32 %i.ma, ptr %i.m, align 4, !tbaa !39
  %.not307.not = icmp slt i32 %i.lz, %i.kz
  br i1 %.not307.not, label %.preheader, label %._crit_edge354, !llvm.loop !24

._crit_edge354:                                   ; preds = %.loopexit327
  store i32 %spec.select458, ptr %i.m, align 4, !tbaa !39
  %.not307352.1 = icmp sgt i32 %spec.select458, %i.kz
  br i1 %.not307352.1, label %._crit_edge354.1, label %.preheader.1

.preheader.1:                                     ; preds = %._crit_edge354, %.loopexit327.1
  %.pre.1 = phi i32 [ %i.mr, %.loopexit327.1 ], [ %i.lw, %._crit_edge354 ] ; 4 uses
  %i.mb = phi i32 [ %i.mv, %.loopexit327.1 ], [ %spec.select458, %._crit_edge354 ] ; 3 uses
  %.2353.1 = phi i32 [ %spec.select458.1, %.loopexit327.1 ], [ %spec.select458, %._crit_edge354 ]
  %i.mc = sub nsw i32 %.5358, %i.mb
  %i.md = mul nsw i32 %i.mc, 3                    ; 2 uses
  %i.me = add i32 %i.md, 2                        ; 3 uses
  %i.mf = icmp eq i32 %i.me, 1
  br i1 %i.mf, label %.thread323.1, label %14

14:                                               ; preds = %.preheader.1
  %15 = srem i32 %i.me, 2                         ; 2 uses
  %16 = sdiv i32 %i.me, 2
  %17 = add nsw i32 %15, 2
  store i32 %17, ptr %i.i, align 4, !tbaa !39
  %18 = icmp eq i32 %15, 0
  %.pre426.1 = load i32, ptr %4, align 4, !tbaa !39 ; 3 uses
  br i1 %18, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %14
  %i.mg = mul nsw i32 %.pre426.1, %16
  %i.mh = add nsw i32 %i.mg, %i.mb                ; 3 uses
  %reass.sub.1 = sub i32 %i.mh, %.pre426.1
  %i.mi = add i32 %reass.sub.1, 1
  store i32 %i.mi, ptr %i.g, align 4, !tbaa !39
  %..1 = call i32 @llvm.smin.i32(i32 %i.mh, i32 %.pre.1)
  store i32 %..1, ptr %i.f, align 4, !tbaa !39
  br label %.loopexit327.1

.thread323.1:                                     ; preds = %.preheader.1
  store i32 1, ptr %i.i, align 4, !tbaa !39
  %.pre425.1 = load i32, ptr %4, align 4, !tbaa !39
  br label %bb.af

bb.af:                                            ; preds = %.thread323.1, %14
  %19 = phi i32 [ %.pre425.1, %.thread323.1 ], [ %.pre426.1, %14 ] ; 2 uses
  %i.mj = add i32 %i.md, 3
  %i.mk = sdiv i32 %i.mj, 2
  %i.ml = mul nsw i32 %19, %i.mk
  %i.mm = add nsw i32 %i.ml, %i.mb                ; 3 uses
  %i.mn = sub nsw i32 %i.mm, %19
  %i.mo = add nsw i32 %i.mn, 1                    ; 2 uses
  store i32 %i.mo, ptr %i.g, align 4, !tbaa !39
  %.318.1 = call i32 @llvm.smin.i32(i32 %i.mm, i32 %.pre.1) ; 2 uses
  store i32 %.318.1, ptr %i.f, align 4, !tbaa !39
  %i.mp = add nsw i32 %.318.1, -1
  %.not310.1 = icmp sge i32 %i.mo, %i.mp
  %i.mq = icmp sle i32 %.pre.1, %i.mm
  %or.cond325.1 = and i1 %i.mq, %.not310.1
  %spec.select.1 = select i1 %or.cond325.1, i32 %.pre.1, i32 0
  br label %.loopexit327.1

.loopexit327.1:                                   ; preds = %bb.af, %bb.ae
  %.0264.1 = phi i32 [ %i.mh, %bb.ae ], [ %spec.select.1, %bb.af ]
  call void @dsb2st_kernels_(ptr noundef %2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %i.m, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.j, ptr noundef nonnull %11, ptr noundef nonnull %i.k, ptr noundef %i.km, ptr noundef nonnull %9, ptr noundef nonnull %i.l, ptr noundef %i.kp) #5
  %i.mr = load i32, ptr %3, align 4, !tbaa !39    ; 3 uses
  %i.ms = add nsw i32 %i.mr, -1
  %.not312.1 = icmp sge i32 %.0264.1, %i.ms
  %i.mt = zext i1 %.not312.1 to i32
  %spec.select458.1 = add nsw i32 %.2353.1, %i.mt ; 2 uses
  %i.mu = load i32, ptr %i.m, align 4, !tbaa !39  ; 2 uses
  %i.mv = add nsw i32 %i.mu, 1                    ; 2 uses
  store i32 %i.mv, ptr %i.m, align 4, !tbaa !39
  %.not307.not.1 = icmp slt i32 %i.mu, %i.kz
  br i1 %.not307.not.1, label %.preheader.1, label %._crit_edge354.1, !llvm.loop !24

._crit_edge354.1:                                 ; preds = %.loopexit327.1, %._crit_edge354
  %i.mw = phi i32 [ %i.lw, %._crit_edge354 ], [ %i.mr, %.loopexit327.1 ] ; 2 uses
  %.2.lcssa.1 = phi i32 [ %spec.select458, %._crit_edge354 ], [ %spec.select458.1, %.loopexit327.1 ] ; 5 uses
  store i32 %.2.lcssa.1, ptr %i.m, align 4, !tbaa !39
  %.not307352.2 = icmp sgt i32 %.2.lcssa.1, %i.kz
  br i1 %.not307352.2, label %._crit_edge354.2, label %.preheader.2

.preheader.2:                                     ; preds = %._crit_edge354.1, %.loopexit327.2
  %.pre.2 = phi i32 [ %i.nn, %.loopexit327.2 ], [ %i.mw, %._crit_edge354.1 ] ; 4 uses
  %i.mx = phi i32 [ %i.nr, %.loopexit327.2 ], [ %.2.lcssa.1, %._crit_edge354.1 ] ; 3 uses
  %.2353.2 = phi i32 [ %spec.select458.2, %.loopexit327.2 ], [ %.2.lcssa.1, %._crit_edge354.1 ]
  %i.my = sub nsw i32 %.5358, %i.mx
  %i.mz = mul nsw i32 %i.my, 3                    ; 2 uses
  %i.na = add i32 %i.mz, 3                        ; 3 uses
  %i.nb = icmp eq i32 %i.na, 1
  br i1 %i.nb, label %.thread323.2, label %20

20:                                               ; preds = %.preheader.2
  %21 = srem i32 %i.na, 2                         ; 2 uses
  %22 = sdiv i32 %i.na, 2
  %23 = add nsw i32 %21, 2
  store i32 %23, ptr %i.i, align 4, !tbaa !39
  %24 = icmp eq i32 %21, 0
  %.pre426.2 = load i32, ptr %4, align 4, !tbaa !39 ; 3 uses
  br i1 %24, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %20
  %i.nc = mul nsw i32 %.pre426.2, %22
  %i.nd = add nsw i32 %i.nc, %i.mx                ; 3 uses
  %reass.sub.2 = sub i32 %i.nd, %.pre426.2
  %i.ne = add i32 %reass.sub.2, 1
  store i32 %i.ne, ptr %i.g, align 4, !tbaa !39
  %..2 = call i32 @llvm.smin.i32(i32 %i.nd, i32 %.pre.2)
  store i32 %..2, ptr %i.f, align 4, !tbaa !39
  br label %.loopexit327.2

.thread323.2:                                     ; preds = %.preheader.2
  store i32 1, ptr %i.i, align 4, !tbaa !39
  %.pre425.2 = load i32, ptr %4, align 4, !tbaa !39
  br label %bb.ah

bb.ah:                                            ; preds = %.thread323.2, %20
  %25 = phi i32 [ %.pre425.2, %.thread323.2 ], [ %.pre426.2, %20 ] ; 2 uses
  %i.nf = add i32 %i.mz, 4
  %i.ng = sdiv i32 %i.nf, 2
  %i.nh = mul nsw i32 %25, %i.ng
  %i.ni = add nsw i32 %i.nh, %i.mx                ; 3 uses
  %i.nj = sub nsw i32 %i.ni, %25
  %i.nk = add nsw i32 %i.nj, 1                    ; 2 uses
  store i32 %i.nk, ptr %i.g, align 4, !tbaa !39
  %.318.2 = call i32 @llvm.smin.i32(i32 %i.ni, i32 %.pre.2) ; 2 uses
  store i32 %.318.2, ptr %i.f, align 4, !tbaa !39
  %i.nl = add nsw i32 %.318.2, -1
  %.not310.2 = icmp sge i32 %i.nk, %i.nl
  %i.nm = icmp sle i32 %.pre.2, %i.ni
  %or.cond325.2 = and i1 %i.nm, %.not310.2
  %spec.select.2 = select i1 %or.cond325.2, i32 %.pre.2, i32 0
  br label %.loopexit327.2

.loopexit327.2:                                   ; preds = %bb.ah, %bb.ag
  %.0264.2 = phi i32 [ %i.nd, %bb.ag ], [ %spec.select.2, %bb.ah ]
  call void @dsb2st_kernels_(ptr noundef %2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %i.m, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.j, ptr noundef nonnull %11, ptr noundef nonnull %i.k, ptr noundef %i.km, ptr noundef nonnull %9, ptr noundef nonnull %i.l, ptr noundef %i.kp) #5
  %i.nn = load i32, ptr %3, align 4, !tbaa !39    ; 3 uses
  %i.no = add nsw i32 %i.nn, -1
  %.not312.2 = icmp sge i32 %.0264.2, %i.no
  %i.np = zext i1 %.not312.2 to i32
  %spec.select458.2 = add nsw i32 %.2353.2, %i.np ; 2 uses
  %i.nq = load i32, ptr %i.m, align 4, !tbaa !39  ; 2 uses
  %i.nr = add nsw i32 %i.nq, 1                    ; 2 uses
  store i32 %i.nr, ptr %i.m, align 4, !tbaa !39
  %.not307.not.2 = icmp slt i32 %i.nq, %i.kz
  br i1 %.not307.not.2, label %.preheader.2, label %._crit_edge354.2, !llvm.loop !24

._crit_edge354.2:                                 ; preds = %.loopexit327.2, %._crit_edge354.1
  %i.ns = phi i32 [ %i.mw, %._crit_edge354.1 ], [ %i.nn, %.loopexit327.2 ] ; 2 uses
  %.2.lcssa.2 = phi i32 [ %.2.lcssa.1, %._crit_edge354.1 ], [ %spec.select458.2, %.loopexit327.2 ]
  %i.nt = add i32 %.5358, 1                       ; 2 uses
  %exitcond404.not = icmp eq i32 %i.nt, %i.kq
  br i1 %exitcond404.not, label %._crit_edge362.loopexit, label %.lr.ph361, !llvm.loop !25

._crit_edge362.loopexit:                          ; preds = %._crit_edge354.2, %.lr.ph361
  %i.nu = phi i32 [ %i.ns, %._crit_edge354.2 ], [ %i.ky, %.lr.ph361 ]
  %.pre421 = load i32, ptr %i.e, align 4, !tbaa !39
  br label %._crit_edge362

._crit_edge362:                                   ; preds = %._crit_edge362.loopexit, %bb.aa
  %i.nv = phi i32 [ %i.nu, %._crit_edge362.loopexit ], [ %i.kq, %bb.aa ] ; 2 uses
  %i.nw = phi i32 [ %.pre421, %._crit_edge362.loopexit ], [ %i.kr, %bb.aa ] ; 2 uses
  %i.nx = add nuw nsw i32 %.0266365, 1
  %.not300.not = icmp slt i32 %.0266365, %i.nw
  br i1 %.not300.not, label %bb.aa, label %._crit_edge368, !llvm.loop !26

._crit_edge368:                                   ; preds = %._crit_edge362, %.._crit_edge368_crit_edge
  %i.ny = phi i32 [ %.pre422, %.._crit_edge368_crit_edge ], [ %i.nv, %._crit_edge362 ] ; 13 uses
  %.not301369 = icmp slt i32 %i.ny, 1
  br i1 %.not301369, label %._crit_edge373, label %iter.check589

iter.check589:                                    ; preds = %._crit_edge368
  %i.nz = load i32, ptr %i.k, align 4, !tbaa !39  ; 2 uses
  %i.oa = sext i32 %i.nz to i64                   ; 9 uses
  %i.ob = add nuw i32 %i.ny, 1
  %wide.trip.count408 = zext i32 %i.ob to i64     ; 2 uses
  %invariant.gep452 = getelementptr [8 x i8], ptr %i.s, i64 %.0276 ; 11 uses
  %i.oc = zext nneg i32 %i.ny to i64              ; 5 uses
  %min.iters.check574 = icmp ugt i32 %i.ny, 3
  %ident.check571.not = icmp eq i32 %i.nz, 1
  %or.cond670 = select i1 %min.iters.check574, i1 %ident.check571.not, i1 false
  br i1 %or.cond670, label %vector.memcheck572, label %vec.epilog.scalar.ph590.preheader

vector.memcheck572:                               ; preds = %iter.check589
  %i.od = shl nuw nsw i64 %.0276, 3
  %i.oe = add i64 %i.od, %i.a
  %i.of = sub i64 %i.d, %i.oe
  %i.og = add i64 %i.of, 7
  %diff.check573 = icmp ult i64 %i.og, 127
  br i1 %diff.check573, label %vec.epilog.scalar.ph590.preheader, label %vector.main.loop.iter.check575

vector.main.loop.iter.check575:                   ; preds = %vector.memcheck572
  %min.iters.check576 = icmp ult i32 %i.ny, 16
  br i1 %min.iters.check576, label %vec.epilog.ph593, label %vector.ph577

vector.ph577:                                     ; preds = %vector.main.loop.iter.check575
  %i.oh = and i64 %i.oc, 12
  %n.vec578 = and i64 %i.oc, 2147483632           ; 4 uses
  %i.oi = or disjoint i64 %n.vec578, 1
  br label %vector.body579

vector.body579:                                   ; preds = %vector.body579, %vector.ph577
  %index580 = phi i64 [ 0, %vector.ph577 ], [ %index.next585, %vector.body579 ] ; 3 uses
  %i.oj = getelementptr [8 x i8], ptr %invariant.gep452, i64 %index580 ; 4 uses
  %i.ok = getelementptr i8, ptr %i.oj, i64 32
  %i.ol = getelementptr i8, ptr %i.oj, i64 64
  %i.om = getelementptr i8, ptr %i.oj, i64 96
  %wide.load581 = load <4 x double>, ptr %i.oj, align 8, !tbaa !41
  %wide.load582 = load <4 x double>, ptr %i.ok, align 8, !tbaa !41
  %wide.load583 = load <4 x double>, ptr %i.ol, align 8, !tbaa !41
  %wide.load584 = load <4 x double>, ptr %i.om, align 8, !tbaa !41
  %i.on = getelementptr [8 x i8], ptr %7, i64 %index580 ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 32
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 64
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 96
  store <4 x double> %wide.load581, ptr %i.on, align 8, !tbaa !41
  store <4 x double> %wide.load582, ptr %i.oo, align 8, !tbaa !41
  store <4 x double> %wide.load583, ptr %i.op, align 8, !tbaa !41
  store <4 x double> %wide.load584, ptr %i.oq, align 8, !tbaa !41
  %index.next585 = add nuw i64 %index580, 16      ; 2 uses
  %i.or = icmp eq i64 %index.next585, %n.vec578
  br i1 %i.or, label %middle.block586, label %vector.body579, !llvm.loop !27

middle.block586:                                  ; preds = %vector.body579
  %cmp.n587 = icmp eq i64 %n.vec578, %i.oc
  br i1 %cmp.n587, label %._crit_edge373, label %vec.epilog.iter.check591

vec.epilog.iter.check591:                         ; preds = %middle.block586
  %min.epilog.iters.check592 = icmp eq i64 %i.oh, 0
  br i1 %min.epilog.iters.check592, label %vec.epilog.scalar.ph590.preheader, label %vec.epilog.ph593, !prof !45

vec.epilog.ph593:                                 ; preds = %vector.main.loop.iter.check575, %vec.epilog.iter.check591
  %vec.epilog.resume.val588 = phi i64 [ %n.vec578, %vec.epilog.iter.check591 ], [ 0, %vector.main.loop.iter.check575 ]
  %n.vec594 = and i64 %i.oc, 2147483644           ; 3 uses
  %i.os = or disjoint i64 %n.vec594, 1
  br label %vec.epilog.vector.body595

vec.epilog.vector.body595:                        ; preds = %vec.epilog.vector.body595, %vec.epilog.ph593
  %index596 = phi i64 [ %vec.epilog.resume.val588, %vec.epilog.ph593 ], [ %index.next598, %vec.epilog.vector.body595 ] ; 3 uses
  %i.ot = getelementptr [8 x i8], ptr %invariant.gep452, i64 %index596
  %wide.load597 = load <4 x double>, ptr %i.ot, align 8, !tbaa !41
  %i.ou = getelementptr [8 x i8], ptr %7, i64 %index596
  store <4 x double> %wide.load597, ptr %i.ou, align 8, !tbaa !41
  %index.next598 = add nuw i64 %index596, 4       ; 2 uses
  %i.ov = icmp eq i64 %index.next598, %n.vec594
  br i1 %i.ov, label %vec.epilog.middle.block599, label %vec.epilog.vector.body595, !llvm.loop !28

vec.epilog.middle.block599:                       ; preds = %vec.epilog.vector.body595
  %cmp.n600 = icmp eq i64 %n.vec594, %i.oc
  br i1 %cmp.n600, label %._crit_edge373, label %vec.epilog.scalar.ph590.preheader

vec.epilog.scalar.ph590.preheader:                ; preds = %vector.memcheck572, %iter.check589, %vec.epilog.iter.check591, %vec.epilog.middle.block599
  %indvars.iv405.ph = phi i64 [ 1, %iter.check589 ], [ 1, %vector.memcheck572 ], [ %i.oi, %vec.epilog.iter.check591 ], [ %i.os, %vec.epilog.middle.block599 ] ; 4 uses
  %i.ow = sub nsw i64 %wide.trip.count408, %indvars.iv405.ph
  %i.ox = zext nneg i32 %i.ny to i64
  %i.oy = sub nsw i64 %i.ox, %indvars.iv405.ph
  %xtraiter687 = and i64 %i.ow, 7                 ; 2 uses
  %lcmp.mod688.not = icmp eq i64 %xtraiter687, 0
  br i1 %lcmp.mod688.not, label %vec.epilog.scalar.ph590.prol.loopexit, label %vec.epilog.scalar.ph590.prol

vec.epilog.scalar.ph590.prol:                     ; preds = %vec.epilog.scalar.ph590.preheader, %vec.epilog.scalar.ph590.prol
  %indvars.iv405.prol = phi i64 [ %indvars.iv.next406.prol, %vec.epilog.scalar.ph590.prol ], [ %indvars.iv405.ph, %vec.epilog.scalar.ph590.preheader ] ; 3 uses
  %prol.iter689 = phi i64 [ %prol.iter689.next, %vec.epilog.scalar.ph590.prol ], [ 0, %vec.epilog.scalar.ph590.preheader ]
  %i.oz = add nsw i64 %indvars.iv405.prol, -1
  %i.pa = mul nsw i64 %i.oz, %i.oa
  %gep453.prol = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.pa
  %i.pb = load double, ptr %gep453.prol, align 8, !tbaa !41
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv405.prol
  store double %i.pb, ptr %i.pc, align 8, !tbaa !41
  %indvars.iv.next406.prol = add nuw nsw i64 %indvars.iv405.prol, 1 ; 2 uses
  %prol.iter689.next = add i64 %prol.iter689, 1   ; 2 uses
  %prol.iter689.cmp.not = icmp eq i64 %prol.iter689.next, %xtraiter687
  br i1 %prol.iter689.cmp.not, label %vec.epilog.scalar.ph590.prol.loopexit, label %vec.epilog.scalar.ph590.prol, !llvm.loop !29

vec.epilog.scalar.ph590.prol.loopexit:            ; preds = %vec.epilog.scalar.ph590.prol, %vec.epilog.scalar.ph590.preheader
  %indvars.iv405.unr = phi i64 [ %indvars.iv405.ph, %vec.epilog.scalar.ph590.preheader ], [ %indvars.iv.next406.prol, %vec.epilog.scalar.ph590.prol ]
  %i.pd = icmp ult i64 %i.oy, 7
  br i1 %i.pd, label %._crit_edge373, label %vec.epilog.scalar.ph590

vec.epilog.scalar.ph590:                          ; preds = %vec.epilog.scalar.ph590.prol.loopexit, %vec.epilog.scalar.ph590
  %indvars.iv405 = phi i64 [ %indvars.iv.next406.7, %vec.epilog.scalar.ph590 ], [ %indvars.iv405.unr, %vec.epilog.scalar.ph590.prol.loopexit ] ; 17 uses
  %i.pe = add nsw i64 %indvars.iv405, -1
  %i.pf = mul nsw i64 %i.pe, %i.oa
  %gep453 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.pf
  %i.pg = load double, ptr %gep453, align 8, !tbaa !41
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv405
  store double %i.pg, ptr %i.ph, align 8, !tbaa !41
  %i.pi = mul nsw i64 %indvars.iv405, %i.oa
  %gep453.1 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.pi
  %i.pj = load double, ptr %gep453.1, align 8, !tbaa !41
  %i.pk = getelementptr [8 x i8], ptr %7, i64 %indvars.iv405
  store double %i.pj, ptr %i.pk, align 8, !tbaa !41
  %i.pl = add nsw i64 %indvars.iv405, 1
  %i.pm = mul nsw i64 %i.pl, %i.oa
  %gep453.2 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.pm
  %i.pn = load double, ptr %gep453.2, align 8, !tbaa !41
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv405
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  store double %i.pn, ptr %i.pp, align 8, !tbaa !41
  %i.pq = add nsw i64 %indvars.iv405, 2
  %i.pr = mul nsw i64 %i.pq, %i.oa
  %gep453.3 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.pr
  %i.ps = load double, ptr %gep453.3, align 8, !tbaa !41
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv405
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  store double %i.ps, ptr %i.pu, align 8, !tbaa !41
  %i.pv = add nsw i64 %indvars.iv405, 3
  %i.pw = mul nsw i64 %i.pv, %i.oa
  %gep453.4 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.pw
  %i.px = load double, ptr %gep453.4, align 8, !tbaa !41
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv405
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 32
  store double %i.px, ptr %i.pz, align 8, !tbaa !41
  %i.qa = add nsw i64 %indvars.iv405, 4
  %i.qb = mul nsw i64 %i.qa, %i.oa
  %gep453.5 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.qb
  %i.qc = load double, ptr %gep453.5, align 8, !tbaa !41
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv405
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 40
  store double %i.qc, ptr %i.qe, align 8, !tbaa !41
  %i.qf = add nsw i64 %indvars.iv405, 5
  %i.qg = mul nsw i64 %i.qf, %i.oa
end_hunk_1
