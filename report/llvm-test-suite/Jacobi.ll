Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Jacobi?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ApplyGivens(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %.not49 = icmp sgt i32 %5, %6
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 4 uses
  %i.d = sext i32 %4 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11   ; 4 uses
  %i.g = sext i32 %5 to i64                       ; 6 uses
  %i.h = add i32 %6, 1
  %i.i = sub i32 %6, %5                           ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.l = shl nsw i64 %i.g, 3                      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.l
  %i.m = add nsw i64 %i.g, %i.j
  %i.n = shl nsw i64 %i.m, 3
  %i.o = add nsw i64 %i.n, 8                      ; 2 uses
  %scevgep62 = getelementptr i8, ptr %i.c, i64 %i.o
  %scevgep63 = getelementptr i8, ptr %i.f, i64 %i.l
  %scevgep64 = getelementptr i8, ptr %i.f, i64 %i.o
  %bound0 = icmp ult ptr %scevgep, %scevgep64
  %bound1 = icmp ult ptr %scevgep63, %scevgep62
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, 8589934590               ; 3 uses
  %i.p = add nsw i64 %n.vec, %i.g
  %broadcast.splatinsert = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert65 = insertelement <2 x double> poison, double %2, i64 0
  %broadcast.splat66 = shufflevector <2 x double> %broadcast.splatinsert65, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = add i64 %index, %i.g                     ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.q ; 2 uses
  %wide.load = load <2 x double>, ptr %i.r, align 8, !tbaa !13, !alias.scope !22, !noalias !23 ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.q ; 2 uses
  %wide.load67 = load <2 x double>, ptr %i.s, align 8, !tbaa !13, !alias.scope !23 ; 2 uses
  %i.t = fneg <2 x double> %wide.load67
  %i.u = fmul <2 x double> %broadcast.splat, %i.t
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat66, <2 x double> %wide.load, <2 x double> %i.u)
  store <2 x double> %i.v, ptr %i.r, align 8, !tbaa !13, !alias.scope !22, !noalias !23
  %i.w = fmul <2 x double> %broadcast.splat66, %wide.load67
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.w)
  store <2 x double> %i.x, ptr %i.s, align 8, !tbaa !13, !alias.scope !23
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.lr.ph53, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph ], [ %i.p, %middle.block ]
  %i.z = insertelement <2 x double> poison, double %2, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %1, i64 1 ; 2 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %scalar.ph

.lr.ph53:                                         ; preds = %scalar.ph, %middle.block
  %i.ac = sext i32 %3 to i64
  %i.ad = sext i32 %4 to i64
  %i.ae = sext i32 %5 to i64
  %i.af = add i32 %6, 1
  %i.ag = insertelement <2 x double> poison, double %2, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %1, i64 1 ; 2 uses
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !13
  %i.al = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !13 ; 2 uses
  %i.an = fneg double %i.am
  %i.ao = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.an, i64 1
  %i.aq = fmul <2 x double> %i.aa, %i.ap
  %i.ar = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.as, <2 x double> %i.aq) ; 2 uses
  %i.au = extractelement <2 x double> %i.at, i64 1
  store double %i.au, ptr %i.aj, align 8, !tbaa !13
  %i.av = extractelement <2 x double> %i.at, i64 0
  store double %i.av, ptr %i.al, align 8, !tbaa !13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.h, %lftr.wideiv
  br i1 %exitcond.not, label %.lr.ph53, label %scalar.ph, !llvm.loop !21

bb.b:                                             ; preds = %.lr.ph53, %bb.b
  %indvars.iv55 = phi i64 [ %i.ae, %.lr.ph53 ], [ %indvars.iv.next56, %bb.b ] ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv55
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !11 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ac ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !13
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ad ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !13 ; 2 uses
  %i.bc = fneg double %i.bb
  %i.bd = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bc, i64 1
  %i.bf = fmul <2 x double> %i.ah, %i.be
  %i.bg = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.bh, <2 x double> %i.bf) ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 1
  store double %i.bj, ptr %i.ay, align 8, !tbaa !13
  %i.bk = extractelement <2 x double> %i.bi, i64 0
  store double %i.bk, ptr %i.ba, align 8, !tbaa !13
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, 1 ; 2 uses
  %lftr.wideiv58 = trunc i64 %indvars.iv.next56 to i32
  %exitcond59.not = icmp eq i32 %i.af, %lftr.wideiv58
  br i1 %exitcond59.not, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @Jacobi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = alloca double, align 8                   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = tail call ptr @newIdMatrix() #5          ; 3 uses
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.preheader.preheader, label %._crit_edge77

.preheader.preheader:                             ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  %i.g = add nsw i64 %i.f, -8
  %i.h = mul i32 %1, 3
  %i.i = zext i32 %i.h to i64
  %i.j = sub nsw i32 1, %1                        ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = sub nsw i32 0, %1                        ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = zext i32 %i.j to i64
  %i.o = zext i32 %i.l to i64
  %i.p = shl nuw i32 %1, 1
  %i.q = zext i32 %i.p to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge75
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge75 ] ; 8 uses
  %indvars.iv = phi i64 [ %i.e, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge75 ] ; 10 uses
  %i.r = shl i64 %indvar, 1
  %i.s = sub i64 %i.q, %i.r
  %i.t = add i64 %indvar, %i.n
  %i.u = add i64 %indvar, %i.o
  %i.v = mul nsw i64 %indvar, -8                  ; 2 uses
  %i.w = add i64 %i.g, %i.v
  %i.x = add i64 %i.f, %i.v                       ; 2 uses
  %i.y = mul i64 %indvar, 4294967293
  %i.z = add i64 %i.y, %i.i
  %i.aa = add i64 %indvar, %i.k
  %i.ab = add i64 %indvar, %i.m
  %i.ac = sub nsw i64 51, %indvars.iv             ; 3 uses
  %i.ad = icmp samesign ult i64 %indvars.iv, 51
  br i1 %i.ad, label %.lr.ph.i.lr.ph, label %._crit_edge75

.lr.ph.i.lr.ph:                                   ; preds = %.preheader
  %i.ae = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %invariant.op = add nsw i32 %i.af, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %._crit_edge
  %indvars.iv83 = phi i64 [ 0, %.lr.ph.i.lr.ph ], [ %indvars.iv.next84, %._crit_edge ] ; 18 uses
  %indvars.iv78 = phi i64 [ %indvars.iv, %.lr.ph.i.lr.ph ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %i.ag = trunc i64 %indvars.iv83 to i32          ; 2 uses
  %i.ah = sub i64 %i.t, %indvars.iv83
  %i.ai = shl nuw nsw i64 %indvars.iv83, 3        ; 3 uses
  %i.aj = add i64 %i.w, %i.ai
  %i.ak = add i64 %i.x, %i.ai
  %i.al = add i64 %i.z, %indvars.iv83
  %i.am = sub i64 %i.aa, %indvars.iv83
  %indvars86 = trunc i64 %indvars.iv83 to i32
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv83
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !11 ; 2 uses
  %i.ap = add nuw nsw i64 %indvars.iv83, %indvars.iv ; 6 uses
  %i.aq = add nsw i64 %i.ap, -1                   ; 3 uses
  %.reass = add i32 %invariant.op, %indvars86
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.au = load double, ptr %i.at, align 8, !tbaa !13
  call void @Givens(double noundef %i.as, double noundef %i.au, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.av = load double, ptr %i.a, align 8, !tbaa !13 ; 5 uses
  %i.aw = load double, ptr %i.b, align 8, !tbaa !13 ; 5 uses
  %i.ax = add nuw nsw i64 %indvars.iv83, %i.ae
  %i.ay = trunc nsw i64 %i.ax to i32
  %i.az = call i32 @llvm.umin.i32(i32 %i.ay, i32 50) ; 3 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !11 ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !11 ; 4 uses
  %i.be = add nuw nsw i32 %i.az, 1                ; 2 uses
  %i.bf = sub i32 %i.az, %i.ag
  %i.bg = zext i32 %i.bf to i64
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check111 = icmp eq i32 %i.az, %i.ag
end_hunk_0
