Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sunnonlinsol_fixedpoint?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"sunnonlinearsolver\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"damping\00", align 1

; Function Attrs: nounwind uwtable
define noundef ptr @SUNNonlinSol_FixedPoint(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SUNNonlinSolNewEmpty(ptr noundef %2) #15 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 13 uses
  store ptr @SUNNonlinSolGetType_FixedPoint, ptr %i.c, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @SUNNonlinSolInitialize_FixedPoint, ptr %i.d, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @SUNNonlinSolSolve_FixedPoint, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @SUNNonlinSolFree_FixedPoint, ptr %i.f, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @SUNNonlinSolSetSysFn_FixedPoint, ptr %i.g, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr @SUNNonlinSolSetConvTestFn_FixedPoint, ptr %i.h, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr @SUNNonlinSolSetNormFn_FixedPoint, ptr %i.i, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr @SUNNonlinSolSetGetUpdateNormFn_FixedPoint, ptr %i.j, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr @SUNNonlinSolSetOptions_FixedPoint, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr @SUNNonlinSolSetMaxIters_FixedPoint, ptr %i.l, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store ptr @SUNNonlinSolGetNumIters_FixedPoint, ptr %i.m, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr @SUNNonlinSolGetCurIter_FixedPoint, ptr %i.n, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store ptr @SUNNonlinSolGetNumConvFails_FixedPoint, ptr %i.o, align 8, !tbaa !60
  %calloc = tail call dereferenceable_or_null(216) ptr @calloc(i64 1, i64 216) ; 4 uses
  store ptr %calloc, ptr %i.a, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %calloc, i64 48
  store i32 %1, ptr %i.p, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %calloc, i64 72
  store double 1.000000e+00, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %calloc, i64 188
  store i32 3, ptr %i.r, align 4, !tbaa !24
  %i.s = tail call ptr @N_VClone(ptr noundef %0) #15
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  store ptr %i.s, ptr %i.u, align 8, !tbaa !25
  %i.v = tail call ptr @N_VClone(ptr noundef %0) #15
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  store ptr %i.v, ptr %i.x, align 8, !tbaa !26
  %i.y = tail call ptr @N_VClone(ptr noundef %0) #15
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 176
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !27
  %i.ab = icmp sgt i32 %1, 0
  br i1 %i.ab, label %bb.b, label %AllocateContent.exit

bb.b:                                             ; preds = %bb.a
  %i.ac = tail call ptr @N_VClone(ptr noundef %0) #15
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !28
  %i.af = tail call ptr @N_VClone(ptr noundef %0) #15
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !13  ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !29
  %i.ai = zext nneg i32 %1 to i64                 ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.aj) #16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !30
  %i.am = mul nuw nsw i32 %1, %1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.ao) #16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !31
  %i.ar = shl nuw nsw i64 %i.ai, 3
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  store ptr %i.as, ptr %i.at, align 8, !tbaa !32
  %i.au = shl nuw i32 %1, 1
  %i.av = add i32 %i.au, 2
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 3                ; 2 uses
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.ax) #16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !33
  %i.ba = tail call ptr @N_VCloneVectorArray(i32 noundef %1, ptr noundef %0) #15
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !34
  %i.bd = tail call ptr @N_VCloneVectorArray(i32 noundef %1, ptr noundef %0) #15
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 120
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !35
  %i.bg = tail call ptr @N_VCloneVectorArray(i32 noundef %1, ptr noundef %0) #15
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !36
  %i.bj = tail call noalias ptr @malloc(i64 noundef %i.ax) #16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 136
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !37
  br label %AllocateContent.exit

AllocateContent.exit:                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

declare ptr @SUNNonlinSolNewEmpty(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @SUNNonlinSolGetType_FixedPoint(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNNonlinSolInitialize_FixedPoint(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @SUNNonlinSolSolve_FixedPoint(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3, double noundef %4, i32 %5, ptr noundef %6) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 0, ptr %i.i, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.k = load i32, ptr %i.j, align 4, !tbaa !24
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.x
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %2, ptr noundef %i.c) #15
  %i.m = load ptr, ptr %0, align 8, !tbaa !13
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.o = tail call i32 %i.n(ptr noundef %2, ptr noundef %i.e, ptr noundef %6) #15 ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %0, align 8, !tbaa !13     ; 15 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !22   ; 19 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.e, ptr noundef %2) #15
  br label %AndersonAccelerate.exit

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %i.u = load i32, ptr %i.t, align 8, !tbaa !38   ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30   ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31 ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !32 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !27 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !40 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.au = load double, ptr %i.at, align 8, !tbaa !23 ; 2 uses
  %i.av = icmp sgt i32 %i.r, 0
  br i1 %i.av, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.aw = zext nneg i32 %i.r to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %i.ax, i1 false), !tbaa !41
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.d
  %i.ay = add i32 %i.u, -1                        ; 5 uses
  %i.az = srem i32 %i.ay, %i.r                    ; 9 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.e, double noundef -1.000000e+00, ptr noundef %i.c, ptr noundef %i.aq) #15
  %i.ba = icmp sgt i32 %i.u, 0
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.bb = sext i32 %i.az to i64                   ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !67
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.e, double noundef -1.000000e+00, ptr noundef %i.y, ptr noundef %i.bd) #15
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bb
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !67
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.aq, double noundef -1.000000e+00, ptr noundef %i.aa, ptr noundef %i.bf) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.e, ptr noundef %i.y) #15
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.aq, ptr noundef %i.aa) #15
  switch i32 %i.u, label %bb.k [
    i32 0, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.e, ptr noundef %2) #15
  br label %AndersonAccelerate.exit

bb.h:                                             ; preds = %bb.f
  %i.bg = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bg ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !67 ; 2 uses
  %i.bj = tail call double @N_VDotProd(ptr noundef %i.bi, ptr noundef %i.bi) #15 ; 2 uses
  %i.bk = fcmp ugt double %i.bj, 0.000000e+00
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = tail call double @sqrt(double noundef %i.bj) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bm = phi double [ %i.bl, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  store double %i.bm, ptr %i.am, align 8, !tbaa !68
  %i.bn = fdiv double 1.000000e+00, %i.bm
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bg
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !67
  tail call void @N_VScale(double noundef %i.bn, ptr noundef %i.bo, ptr noundef %i.bq) #15
  store i32 0, ptr %i.w, align 4, !tbaa !41
  br label %.loopexit2.i

bb.k:                                             ; preds = %bb.f
  %.not.i = icmp sgt i32 %i.u, %i.r
  br i1 %.not.i, label %.preheader5.i, label %bb.l

.preheader5.i:                                    ; preds = %bb.k
  %i.br = add i32 %i.r, -1                        ; 4 uses
  %i.bs = icmp sgt i32 %i.r, 1
  br i1 %i.bs, label %.lr.ph16.preheader.i, label %._crit_edge21.split.thread.i

.lr.ph16.preheader.i:                             ; preds = %.preheader5.i
  %i.bt = zext nneg i32 %i.r to i64               ; 9 uses
  %wide.trip.count63.i = zext i32 %i.br to i64    ; 5 uses
  %i.bu = add nsw i64 %i.bt, -3
  br label %.lr.ph16.i

bb.l:                                             ; preds = %bb.k
  %i.bv = sext i32 %i.az to i64                   ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !67
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bx, ptr noundef %2) #15
  %i.by = icmp sgt i32 %i.u, 1
  %i.bz = mul nsw i32 %i.ay, %i.r                 ; 2 uses
  br i1 %i.by, label %.lr.ph9.i, label %._crit_edge10.i

.lr.ph9.i:                                        ; preds = %bb.l
  %i.ca = sext i32 %i.bz to i64
  %wide.trip.count.i = zext nneg i32 %i.ay to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.am, i64 %i.ca
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph9.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.i ], [ %indvars.iv.next.i, %bb.m ] ; 5 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.cc = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !41
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !67
  %i.cf = tail call double @N_VDotProd(ptr noundef %i.ce, ptr noundef %2) #15 ; 2 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store double %i.cf, ptr %gep.i, align 8, !tbaa !68
  %i.cg = fneg double %i.cf
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !67
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.cg, ptr noundef %i.ch, ptr noundef %2) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge10.i, label %bb.m

._crit_edge10.i:                                  ; preds = %bb.m, %bb.l
  %i.ci = tail call double @N_VDotProd(ptr noundef %2, ptr noundef %2) #15 ; 2 uses
  %i.cj = add nsw i32 %i.bz, %i.u
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr [8 x i8], ptr %i.am, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -8     ; 2 uses
  %i.cn = fcmp ugt double %i.ci, 0.000000e+00
  br i1 %i.cn, label %bb.n, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge10.i
  store double 0.000000e+00, ptr %i.cm, align 8, !tbaa !68
  br label %bb.p

bb.n:                                             ; preds = %._crit_edge10.i
  %i.co = tail call double @sqrt(double noundef %i.ci) #15 ; 3 uses
  store double %i.co, ptr %i.cm, align 8, !tbaa !68
  %i.cp = fcmp oeq double %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = fdiv double 1.000000e+00, %i.co
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread.i
  %.sink.i = phi double [ %i.cq, %bb.o ], [ 0.000000e+00, %.thread.i ], [ 0.000000e+00, %bb.n ]
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bv
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !67
  tail call void @N_VScale(double noundef %.sink.i, ptr noundef %2, ptr noundef %i.cs) #15
  %i.ct = sext i32 %i.ay to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ct
  store i32 %i.ay, ptr %i.cu, align 4, !tbaa !41
  br label %.loopexit2.i

.lr.ph16.i:                                       ; preds = %._crit_edge14.i, %.lr.ph16.preheader.i
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph16.preheader.i ], [ %indvars.iv.next61.i, %._crit_edge14.i ] ; 6 uses
  %indvars.iv53.i = phi i64 [ 2, %.lr.ph16.preheader.i ], [ %indvars.iv.next54.i, %._crit_edge14.i ] ; 4 uses
  %7 = sub nsw i64 %i.bt, %indvars.iv60.i
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 4 uses
  %indvars.i = trunc i64 %indvars.iv.next61.i to i32
  %i.cv = mul nuw nsw i32 %i.r, %indvars.i
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv60.i ; 4 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw ; 2 uses
  %i.cz = load <2 x double>, ptr %i.cy, align 8, !tbaa !68 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.cz, %i.cz
  %i.da = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.db = extractelement <2 x double> %i.cz, i64 0 ; 2 uses
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.db, double %i.db, double %i.da) ; 2 uses
  %i.dd = fcmp ugt double %i.dc, 0.000000e+00
  br i1 %i.dd, label %8, label %10

8:                                                ; preds = %.lr.ph16.i
  %9 = tail call double @sqrt(double noundef %i.dc) #15
  br label %10

10:                                               ; preds = %8, %.lr.ph16.i
  %11 = phi double [ %9, %8 ], [ 0.000000e+00, %.lr.ph16.i ] ; 2 uses
  %12 = insertelement <2 x double> poison, double %11, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = fdiv <2 x double> %i.cz, %13              ; 8 uses
  %15 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %11, i64 0
  store <2 x double> %15, ptr %i.cy, align 8, !tbaa !68
  %16 = trunc i64 %indvars.iv60.i to i32
  %17 = add i32 %16, 2
  %18 = icmp slt i32 %17, %i.r
  %19 = extractelement <2 x double> %14, i64 1    ; 2 uses
  %20 = fneg double %19                           ; 4 uses
  br i1 %18, label %.lr.ph13.i.preheader, label %._crit_edge14.i

.lr.ph13.i.preheader:                             ; preds = %10
  %xtraiter = and i64 %7, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph13.i.prol.loopexit, label %.lr.ph13.i.prol

.lr.ph13.i.prol:                                  ; preds = %.lr.ph13.i.preheader
  %i.de = mul nuw nsw i64 %indvars.iv53.i, %i.bt
  %gep133.i.prol = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.de ; 2 uses
  %i.df = load <2 x double>, ptr %gep133.i.prol, align 8, !tbaa !68 ; 2 uses
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dh = fmul <2 x double> %14, %i.dg
  %i.di = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dj = insertelement <2 x double> %i.di, double %20, i64 0
  %i.dk = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.dk, <2 x double> %i.dh)
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.dm, ptr %gep133.i.prol, align 8, !tbaa !68
  %indvars.iv.next56.i.prol = add nuw nsw i64 %indvars.iv53.i, 1
  br label %.lr.ph13.i.prol.loopexit

.lr.ph13.i.prol.loopexit:                         ; preds = %.lr.ph13.i.prol, %.lr.ph13.i.preheader
  %indvars.iv55.i.unr = phi i64 [ %indvars.iv53.i, %.lr.ph13.i.preheader ], [ %indvars.iv.next56.i.prol, %.lr.ph13.i.prol ]
  %i.dn = icmp eq i64 %i.bu, %indvars.iv60.i
  br i1 %i.dn, label %._crit_edge14.i, label %.lr.ph13.i.preheader.new

.lr.ph13.i.preheader.new:                         ; preds = %.lr.ph13.i.prol.loopexit
  %i.do = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dp = insertelement <2 x double> %i.do, double %20, i64 0
  %i.dq = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dr = insertelement <2 x double> %i.dq, double %20, i64 0
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.lr.ph13.i, %.lr.ph13.i.preheader.new
  %indvars.iv55.i = phi i64 [ %indvars.iv55.i.unr, %.lr.ph13.i.preheader.new ], [ %indvars.iv.next56.i.1, %.lr.ph13.i ] ; 3 uses
  %i.ds = mul nuw nsw i64 %indvars.iv55.i, %i.bt
  %gep133.i = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ds ; 2 uses
  %i.dt = load <2 x double>, ptr %gep133.i, align 8, !tbaa !68 ; 2 uses
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dv = fmul <2 x double> %14, %i.du
  %i.dw = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.dw, <2 x double> %i.dv)
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.dy, ptr %gep133.i, align 8, !tbaa !68
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1
  %i.dz = mul nuw nsw i64 %indvars.iv.next56.i, %i.bt
  %gep133.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dz ; 2 uses
  %i.ea = load <2 x double>, ptr %gep133.i.1, align 8, !tbaa !68 ; 2 uses
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ec = fmul <2 x double> %14, %i.eb
  %i.ed = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.ed, <2 x double> %i.ec)
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ef, ptr %gep133.i.1, align 8, !tbaa !68
  %indvars.iv.next56.i.1 = add nuw nsw i64 %indvars.iv55.i, 2 ; 2 uses
  %exitcond59.not.i.1 = icmp eq i64 %indvars.iv.next56.i.1, %i.bt
  br i1 %exitcond59.not.i.1, label %._crit_edge14.i, label %.lr.ph13.i

._crit_edge14.i:                                  ; preds = %.lr.ph13.i.prol.loopexit, %.lr.ph13.i, %10
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv60.i ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !67
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next61.i ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !67
  %i.ek = extractelement <2 x double> %14, i64 0  ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ek, ptr noundef %i.eh, double noundef %19, ptr noundef %i.ej, ptr noundef %2) #15
  %i.el = load ptr, ptr %i.eg, align 8, !tbaa !67
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !67 ; 2 uses
  tail call void @N_VLinearSum(double noundef %20, ptr noundef %i.el, double noundef %i.ek, ptr noundef %i.em, ptr noundef %i.em) #15
  %i.en = load ptr, ptr %i.eg, align 8, !tbaa !67
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %2, ptr noundef %i.en) #15
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next61.i, %wide.trip.count63.i
  br i1 %exitcond64.not.i, label %.preheader3.i.preheader, label %.lr.ph16.i

.preheader3.i.preheader:                          ; preds = %._crit_edge14.i
  %min.iters.check92 = icmp ult i32 %i.r, 5
  %n.vec94 = and i64 %wide.trip.count63.i, 4294967292 ; 3 uses
  %cmp.n100 = icmp eq i64 %n.vec94, %wide.trip.count63.i
  br label %.preheader3.i

.preheader3.i:                                    ; preds = %.preheader3.i.preheader, %._crit_edge19.i
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %._crit_edge19.i ], [ 1, %.preheader3.i.preheader ] ; 3 uses
  %i.eo = mul nuw nsw i64 %indvars.iv72.i, %i.bt
  %i.ep = add nsw i64 %indvars.iv72.i, -1
  %i.eq = mul nuw nsw i64 %i.ep, %i.bt
  %invariant.gep134.i = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.eo ; 2 uses
  %invariant.gep136.i = getelementptr [8 x i8], ptr %i.am, i64 %i.eq ; 2 uses
  br i1 %min.iters.check92, label %scalar.ph91.preheader, label %vector.body95

vector.body95:                                    ; preds = %.preheader3.i, %vector.body95
  %index96 = phi i64 [ %index.next98, %vector.body95 ], [ 0, %.preheader3.i ] ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep134.i, i64 %index96 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load = load <2 x double>, ptr %i.er, align 8, !tbaa !68
  %wide.load97 = load <2 x double>, ptr %i.es, align 8, !tbaa !68
  %i.et = getelementptr [8 x i8], ptr %invariant.gep136.i, i64 %index96 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 16
  store <2 x double> %wide.load, ptr %i.et, align 8, !tbaa !68
  store <2 x double> %wide.load97, ptr %i.eu, align 8, !tbaa !68
  %index.next98 = add nuw i64 %index96, 4         ; 2 uses
  %i.ev = icmp eq i64 %index.next98, %n.vec94
  br i1 %i.ev, label %middle.block99, label %vector.body95, !llvm.loop !61

middle.block99:                                   ; preds = %vector.body95
  br i1 %cmp.n100, label %._crit_edge19.i, label %scalar.ph91.preheader

scalar.ph91.preheader:                            ; preds = %.preheader3.i, %middle.block99
  %indvars.iv66.i.ph = phi i64 [ 0, %.preheader3.i ], [ %n.vec94, %middle.block99 ]
  br label %scalar.ph91

scalar.ph91:                                      ; preds = %scalar.ph91.preheader, %scalar.ph91
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %scalar.ph91 ], [ %indvars.iv66.i.ph, %scalar.ph91.preheader ] ; 3 uses
  %gep135.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep134.i, i64 %indvars.iv66.i
  %i.ew = load double, ptr %gep135.i, align 8, !tbaa !68
  %gep137.i = getelementptr [8 x i8], ptr %invariant.gep136.i, i64 %indvars.iv66.i
  store double %i.ew, ptr %gep137.i, align 8, !tbaa !68
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond71.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count63.i
  br i1 %exitcond71.not.i, label %._crit_edge19.i, label %scalar.ph91, !llvm.loop !62

._crit_edge19.i:                                  ; preds = %scalar.ph91, %middle.block99
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next73.i, %i.bt
  br i1 %exitcond77.not.i, label %._crit_edge21.split.i, label %.preheader3.i

._crit_edge21.split.thread.i:                     ; preds = %.preheader5.i
  %i.ex = sext i32 %i.az to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ex
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !67
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ez, ptr noundef %2) #15
  br label %._crit_edge25.i

._crit_edge21.split.i:                            ; preds = %._crit_edge19.i
  %i.fa = sext i32 %i.az to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !67
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.fc, ptr noundef %2) #15
  %i.fd = mul nuw nsw i32 %i.br, %i.r
  %i.fe = zext nneg i32 %i.fd to i64
  %invariant.gep138.i = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.fe
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %._crit_edge21.split.i
  %indvars.iv78.i = phi i64 [ 0, %._crit_edge21.split.i ], [ %indvars.iv.next79.i, %bb.q ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv78.i ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !67
  %i.fh = tail call double @N_VDotProd(ptr noundef %i.fg, ptr noundef %2) #15 ; 2 uses
  %gep139.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep138.i, i64 %indvars.iv78.i
  store double %i.fh, ptr %gep139.i, align 8, !tbaa !68
  %i.fi = fneg double %i.fh
  %i.fj = load ptr, ptr %i.ff, align 8, !tbaa !67
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.fi, ptr noundef %i.fj, ptr noundef %2) #15
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next79.i, %wide.trip.count63.i
  br i1 %exitcond83.not.i, label %._crit_edge25.i, label %bb.q

._crit_edge25.i:                                  ; preds = %bb.q, %._crit_edge21.split.thread.i
  %i.fk = tail call double @N_VDotProd(ptr noundef %2, ptr noundef %2) #15 ; 2 uses
  %i.fl = mul i32 %i.r, %i.r
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr [8 x i8], ptr %i.am, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 -8
  %i.fp = fcmp ugt double %i.fk, 0.000000e+00
  br i1 %i.fp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge25.i
  %i.fq = tail call double @sqrt(double noundef %i.fk) #15
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge25.i
  %i.fr = phi double [ %i.fq, %bb.r ], [ 0.000000e+00, %._crit_edge25.i ] ; 2 uses
  store double %i.fr, ptr %i.fo, align 8, !tbaa !68
  %i.fs = fdiv double 1.000000e+00, %i.fr
  %i.ft = sext i32 %i.br to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !67
  tail call void @N_VScale(double noundef %i.fs, ptr noundef %2, ptr noundef %i.fv) #15
  %.335126.i = add nsw i32 %i.az, 1               ; 6 uses
  %i.fw = icmp slt i32 %.335126.i, %i.r
  br i1 %i.fw, label %.lr.ph30.preheader.i, label %.preheader1.i

.lr.ph30.preheader.i:                             ; preds = %bb.s
  %i.fx = sub i32 %i.br, %i.az                    ; 2 uses
  %wide.trip.count88.i = zext i32 %i.fx to i64    ; 5 uses
  %min.iters.check78 = icmp ult i32 %i.fx, 8
  br i1 %min.iters.check78, label %.lr.ph30.i.preheader, label %vector.ph79

vector.ph79:                                      ; preds = %.lr.ph30.preheader.i
  %n.vec80 = and i64 %wide.trip.count88.i, 4294967288 ; 4 uses
  %i.fy = trunc nuw i64 %n.vec80 to i32
  %i.fz = add i32 %.335126.i, %i.fy
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.335126.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next85, %vector.body81 ] ; 2 uses
  %vec.ind83 = phi <4 x i32> [ %induction, %vector.ph79 ], [ %vec.ind.next86, %vector.body81 ] ; 3 uses
  %step.add84 = add nsw <4 x i32> %vec.ind83, splat (i32 4)
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index82 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store <4 x i32> %vec.ind83, ptr %i.ga, align 4, !tbaa !41
  store <4 x i32> %step.add84, ptr %i.gb, align 4, !tbaa !41
  %index.next85 = add nuw i64 %index82, 8         ; 2 uses
  %vec.ind.next86 = add nsw <4 x i32> %vec.ind83, splat (i32 8)
  %i.gc = icmp eq i64 %index.next85, %n.vec80
  br i1 %i.gc, label %middle.block87, label %vector.body81, !llvm.loop !63

middle.block87:                                   ; preds = %vector.body81
  %cmp.n88 = icmp eq i64 %n.vec80, %wide.trip.count88.i
  br i1 %cmp.n88, label %.preheader1.i, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %.lr.ph30.preheader.i, %middle.block87
  %indvars.iv84.i.ph = phi i64 [ 0, %.lr.ph30.preheader.i ], [ %n.vec80, %middle.block87 ]
  %.335128.i.ph = phi i32 [ %.335126.i, %.lr.ph30.preheader.i ], [ %i.fz, %middle.block87 ]
  br label %.lr.ph30.i

.preheader1.i:                                    ; preds = %.lr.ph30.i, %middle.block87, %bb.s
  %.4.lcssa.i = phi i64 [ 0, %bb.s ], [ %wide.trip.count88.i, %middle.block87 ], [ %wide.trip.count88.i, %.lr.ph30.i ] ; 3 uses
  %.not37032.i = icmp slt i32 %i.az, 0
  br i1 %.not37032.i, label %.loopexit2.i, label %.lr.ph35.i.preheader

.lr.ph35.i.preheader:                             ; preds = %.preheader1.i
  %i.gd = zext nneg i32 %.335126.i to i64         ; 2 uses
  %min.iters.check = icmp ult i32 %.335126.i, 8
  br i1 %min.iters.check, label %.lr.ph35.i.preheader103, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph35.i.preheader
  %n.vec = and i64 %i.gd, 2147483640              ; 4 uses
  %i.ge = add nuw nsw i64 %.4.lcssa.i, %n.vec
  %i.gf = trunc nuw nsw i64 %n.vec to i32
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.4.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %index ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store <4 x i32> %vec.ind, ptr %i.gh, align 4, !tbaa !41
  store <4 x i32> %step.add, ptr %i.gi, align 4, !tbaa !41
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.gd
  br i1 %cmp.n, label %.loopexit2.i, label %.lr.ph35.i.preheader103

.lr.ph35.i.preheader103:                          ; preds = %.lr.ph35.i.preheader, %middle.block
  %indvars.iv90.i.ph = phi i64 [ %.4.lcssa.i, %.lr.ph35.i.preheader ], [ %i.ge, %middle.block ]
  %.435233.i.ph = phi i32 [ 0, %.lr.ph35.i.preheader ], [ %i.gf, %middle.block ]
  br label %.lr.ph35.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %.lr.ph30.i ], [ %indvars.iv84.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  %.335128.i = phi i32 [ %.3351.i, %.lr.ph30.i ], [ %.335128.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv84.i
  store i32 %.335128.i, ptr %i.gk, align 4, !tbaa !41
  %.3351.i = add nsw i32 %.335128.i, 1
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next85.i, %wide.trip.count88.i
  br i1 %exitcond89.not.i, label %.preheader1.i, label %.lr.ph30.i, !llvm.loop !65

.lr.ph35.i:                                       ; preds = %.lr.ph35.i.preheader103, %.lr.ph35.i
end_hunk_0
begin_hunk_1_@SUNNonlinSolSetOptions_FixedPoint:bb.a
  %i.e = add i64 %i.d, 1
  %spec.select.i = select i1 %.not42.i, i64 19, i64 %i.e ; 3 uses
  %i.f = add i64 %spec.select.i, 1
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #16 ; 3 uses
  %char0.i = load i8, ptr %1, align 1
  %.not43.i = icmp eq i8 %char0.i, 0
  br i1 %.not43.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(1) %1) #15 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.thread.i
  %i.i = phi ptr [ %i.c, %.thread.i ], [ %i.g, %bb.c ] ; 2 uses
  %.03548.i = phi i64 [ 19, %.thread.i ], [ %spec.select.i, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.i, ptr noundef nonnull align 1 dereferenceable(19) @.str, i64 19, i1 false) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %i.i, %bb.e ], [ %i.g, %bb.d ] ; 5 uses
  %.03547.i = phi i64 [ %.03548.i, %bb.e ], [ %spec.select.i, %bb.d ]
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.j)
  %endptr.i = getelementptr inbounds i8, ptr %i.j, i64 %strlen.i
  store i16 46, ptr %endptr.i, align 1
  %.not4549.i = icmp samesign ugt i32 %3, 1
  br i1 %.not4549.i, label %.lr.ph.i, label %setFromCommandLine_FixedPoint.exit

.lr.ph.i:                                         ; preds = %bb.f, %bb.i
  %.03350.i = phi i32 [ %i.ab, %bb.i ], [ 1, %bb.f ] ; 4 uses
  %i.k = sext i32 %.03350.i to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %4, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77   ; 2 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #17
  %i.o = tail call i32 @strncmp(ptr noundef %i.m, ptr noundef nonnull %i.j, i64 noundef %i.n) #17
  %.not44.i = icmp eq i32 %i.o, 0
  br i1 %.not44.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.03547.i
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(8) @.str.2) #17
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %.03350.i, 1                 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %4, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77
  %i.w = tail call double @strtod(ptr noundef nonnull captures(none) %i.v, ptr noundef null) #15, !inline_history !75 ; 2 uses
  %i.x = fcmp olt double %i.w, 1.000000e+00       ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %..i.i = select i1 %i.x, double %i.w, double 1.000000e+00
  %.8.i.i = zext i1 %i.x to i32
  store double %..i.i, ptr %i.z, align 8, !tbaa !23
  store i32 %.8.i.i, ptr %i.aa, align 8, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.i
  %.134.i = phi i32 [ %i.s, %bb.h ], [ %.03350.i, %.lr.ph.i ], [ %.03350.i, %bb.g ]
  %i.ab = add nsw i32 %.134.i, 1                  ; 2 uses
  %.not45.i = icmp slt i32 %i.ab, %3
  br i1 %.not45.i, label %.lr.ph.i, label %setFromCommandLine_FixedPoint.exit

setFromCommandLine_FixedPoint.exit:               ; preds = %bb.i, %bb.f
  tail call void @free(ptr noundef nonnull %i.j) #15
  br label %bb.j

bb.j:                                             ; preds = %setFromCommandLine_FixedPoint.exit, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNNonlinSolSetMaxIters_FixedPoint(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 %1, ptr %i.b, align 4, !tbaa !24
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNNonlinSolGetNumIters_FixedPoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = load i64, ptr %i.b, align 8, !tbaa !42
  store i64 %i.c, ptr %1, align 8, !tbaa !46
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNNonlinSolGetCurIter_FixedPoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.c = load i32, ptr %i.b, align 8, !tbaa !38
  store i32 %i.c, ptr %1, align 4, !tbaa !41
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNNonlinSolGetNumConvFails_FixedPoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.c = load i64, ptr %i.b, align 8, !tbaa !45
  store i64 %i.c, ptr %1, align 8, !tbaa !46
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define noundef ptr @SUNNonlinSol_FixedPointSens(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @N_VNew_SensWrapper(i32 noundef %0, ptr noundef %1) #15 ; 2 uses
  %i.b = tail call ptr @SUNNonlinSol_FixedPoint(ptr noundef %i.a, i32 noundef %2, ptr noundef %3)
  tail call void @N_VDestroy(ptr noundef %i.a) #15
  ret ptr %i.b
}

declare ptr @N_VNew_SensWrapper(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #1

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNNonlinSolSetDamping_FixedPoint(ptr nofree noundef readonly captures(none) %0, double noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = fcmp olt double %1, 1.000000e+00         ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %. = select i1 %i.a, double %1, double 1.000000e+00
  %.8 = zext i1 %i.a to i32
  store double %., ptr %i.c, align 8, !tbaa !23
  store i32 %.8, ptr %i.d, align 8, !tbaa !40
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNNonlinSolGetSysFn_FixedPoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  store ptr %i.b, ptr %1, align 8, !tbaa !78
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #10

declare double @N_VDotProd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

declare i32 @N_VDotProdMulti(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @N_VLinearCombination(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #1

declare ptr @N_VCloneVectorArray(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @N_VDestroyVectorArray(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS31_generic_SUNNonlinearSolver_Ops", !8, i64 0}
!10 = !{!"p1 _ZTS11SUNContext_", !8, i64 0}
!11 = !{!"_generic_SUNNonlinearSolver", !8, i64 0, !8, i64 8, !9, i64 16, !10, i64 24}
!12 = !{!11, !9, i64 16}
!13 = !{!11, !8, i64 0}
!14 = !{!"p1 int", !8, i64 0}
!15 = !{!"double", !4, i64 0}
!16 = !{!"p1 double", !8, i64 0}
!17 = !{!"any p2 pointer", !8, i64 0}
!18 = !{!"p2 _ZTS17_generic_N_Vector", !17, i64 0}
!19 = !{!"p1 _ZTS17_generic_N_Vector", !8, i64 0}
!20 = !{!"long", !4, i64 0}
!21 = !{!"_SUNNonlinearSolverContent_FixedPoint", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !5, i64 48, !14, i64 56, !5, i64 64, !15, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !15, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !19, i64 144, !19, i64 152, !19, i64 160, !19, i64 168, !19, i64 176, !5, i64 184, !5, i64 188, !20, i64 192, !20, i64 200, !8, i64 208}
!22 = !{!21, !5, i64 48}
!23 = !{!21, !15, i64 72}
!24 = !{!21, !5, i64 188}
!25 = !{!21, !19, i64 144}
!26 = !{!21, !19, i64 152}
!27 = !{!21, !19, i64 176}
!28 = !{!21, !19, i64 160}
!29 = !{!21, !19, i64 168}
!30 = !{!21, !14, i64 56}
!31 = !{!21, !16, i64 80}
!32 = !{!21, !16, i64 88}
!33 = !{!21, !16, i64 96}
!34 = !{!21, !18, i64 112}
!35 = !{!21, !18, i64 120}
!36 = !{!21, !18, i64 128}
!37 = !{!21, !18, i64 136}
!38 = !{!21, !5, i64 184}
!39 = !{!21, !8, i64 0}
!40 = !{!21, !5, i64 64}
!41 = !{!5, !5, i64 0}
!42 = !{!21, !20, i64 192}
!43 = !{!21, !8, i64 8}
!44 = !{!21, !8, i64 208}
!45 = !{!21, !20, i64 200}
!46 = !{!20, !20, i64 0}
!47 = !{!"_generic_SUNNonlinearSolver_Ops", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136}
!48 = !{!47, !8, i64 0}
!49 = !{!47, !8, i64 8}
!50 = !{!47, !8, i64 24}
!51 = !{!47, !8, i64 32}
!52 = !{!47, !8, i64 40}
!53 = !{!47, !8, i64 72}
!54 = !{!47, !8, i64 80}
!55 = !{!47, !8, i64 88}
!56 = !{!47, !8, i64 104}
!57 = !{!47, !8, i64 112}
!58 = !{!47, !8, i64 120}
!59 = !{!47, !8, i64 128}
!60 = !{!47, !8, i64 136}
!61 = distinct !{!61, !69, !70}
!62 = distinct !{!62, !70, !69}
!63 = distinct !{!63, !69, !70}
!64 = distinct !{!64, !69, !70}
!65 = distinct !{!65, !70, !69}
!66 = distinct !{!66, !70, !69}
!67 = !{!19, !19, i64 0}
!68 = !{!15, !15, i64 0}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!21, !8, i64 16}
!72 = !{!21, !8, i64 24}
!73 = !{!21, !8, i64 32}
!74 = !{!21, !8, i64 40}
!75 = distinct !{null}
!76 = !{!"p1 omnipotent char", !8, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!8, !8, i64 0}
end_hunk_1
