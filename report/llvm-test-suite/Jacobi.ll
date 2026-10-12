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
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = add nsw i64 %i.g, %i.j
  %i.o = shl nsw i64 %i.n, 3
  %i.p = add nsw i64 %i.o, 8                      ; 2 uses
  %i.q = getelementptr i8, ptr %i.c, i64 %i.p
  %i.r = getelementptr i8, ptr %i.f, i64 %i.l
  %i.s = getelementptr i8, ptr %i.f, i64 %i.p
  %bound0 = icmp ult ptr %i.m, %i.s
  %bound1 = icmp ult ptr %i.r, %i.q
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, 8589934590               ; 3 uses
  %i.t = add nsw i64 %n.vec, %i.g
  %broadcast.splatinsert = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert65 = insertelement <2 x double> poison, double %2, i64 0
  %broadcast.splat66 = shufflevector <2 x double> %broadcast.splatinsert65, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = add i64 %index, %i.g                     ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.u ; 2 uses
  %wide.load = load <2 x double>, ptr %i.v, align 8, !tbaa !13, !alias.scope !22, !noalias !23 ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.u ; 2 uses
  %wide.load67 = load <2 x double>, ptr %i.w, align 8, !tbaa !13, !alias.scope !23 ; 2 uses
  %i.x = fneg <2 x double> %wide.load67
  %i.y = fmul <2 x double> %broadcast.splat, %i.x
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat66, <2 x double> %wide.load, <2 x double> %i.y)
  store <2 x double> %i.z, ptr %i.v, align 8, !tbaa !13, !alias.scope !22, !noalias !23
  %i.aa = fmul <2 x double> %broadcast.splat66, %wide.load67
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.aa)
  store <2 x double> %i.ab, ptr %i.w, align 8, !tbaa !13, !alias.scope !23
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.lr.ph53, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph ], [ %i.t, %middle.block ]
  %i.ad = insertelement <2 x double> poison, double %2, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %1, i64 1 ; 2 uses
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %scalar.ph

.lr.ph53:                                         ; preds = %scalar.ph, %middle.block
  %i.ag = sext i32 %3 to i64
  %i.ah = sext i32 %4 to i64
  %i.ai = sext i32 %5 to i64
  %i.aj = add i32 %6, 1
  %i.ak = insertelement <2 x double> poison, double %2, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %1, i64 1 ; 2 uses
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !13
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !13 ; 2 uses
  %i.ar = fneg double %i.aq
  %i.as = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ar, i64 1
  %i.au = fmul <2 x double> %i.ae, %i.at
  %i.av = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.aw, <2 x double> %i.au) ; 2 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 1
  store double %i.ay, ptr %i.an, align 8, !tbaa !13
  %i.az = extractelement <2 x double> %i.ax, i64 0
  store double %i.az, ptr %i.ap, align 8, !tbaa !13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.h, %lftr.wideiv
  br i1 %exitcond.not, label %.lr.ph53, label %scalar.ph, !llvm.loop !21

bb.b:                                             ; preds = %.lr.ph53, %bb.b
  %indvars.iv55 = phi i64 [ %i.ai, %.lr.ph53 ], [ %indvars.iv.next56, %bb.b ] ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv55
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !11 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.ag ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !13
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.ah ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !13 ; 2 uses
  %i.bg = fneg double %i.bf
  %i.bh = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.bg, i64 1
  %i.bj = fmul <2 x double> %i.al, %i.bi
  %i.bk = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.bl, <2 x double> %i.bj) ; 2 uses
  %i.bn = extractelement <2 x double> %i.bm, i64 1
  store double %i.bn, ptr %i.bc, align 8, !tbaa !13
  %i.bo = extractelement <2 x double> %i.bm, i64 0
  store double %i.bo, ptr %i.be, align 8, !tbaa !13
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, 1 ; 2 uses
  %lftr.wideiv58 = trunc i64 %indvars.iv.next56 to i32
  %exitcond59.not = icmp eq i32 %i.aj, %lftr.wideiv58
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
  %2 = zext i32 %i.l to i64
  %3 = zext i32 %i.j to i64
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw i32 %1, 1
  %i.o = zext i32 %i.n to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge75
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge75 ] ; 8 uses
  %indvars.iv = phi i64 [ %i.e, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge75 ] ; 10 uses
  %i.p = shl i64 %indvar, 1
  %i.q = sub i64 %i.o, %i.p
  %4 = add i64 %indvar, %3
  %5 = add i64 %indvar, %i.m
  %i.r = mul nsw i64 %indvar, -8                  ; 2 uses
  %i.s = add i64 %i.g, %i.r
  %i.t = add i64 %i.f, %i.r                       ; 2 uses
  %i.u = mul i64 %indvar, 4294967293
  %i.v = add i64 %i.u, %i.i
  %i.w = add i64 %indvar, %i.k
  %i.x = add i64 %indvar, %2
  %i.y = sub nsw i64 51, %indvars.iv              ; 3 uses
  %i.z = icmp samesign ult i64 %indvars.iv, 51
  br i1 %i.z, label %.lr.ph.i.lr.ph, label %._crit_edge75

.lr.ph.i.lr.ph:                                   ; preds = %.preheader
  %i.aa = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %invariant.op.a = add nsw i32 %i.ab, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %._crit_edge
  %indvars.iv83 = phi i64 [ 0, %.lr.ph.i.lr.ph ], [ %indvars.iv.next84, %._crit_edge ] ; 18 uses
  %indvars.iv78 = phi i64 [ %indvars.iv, %.lr.ph.i.lr.ph ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %6 = trunc i64 %indvars.iv83 to i32             ; 2 uses
  %7 = sub i64 %4, %indvars.iv83
  %i.ac = shl nuw nsw i64 %indvars.iv83, 3        ; 3 uses
  %i.ad = add i64 %i.s, %i.ac
  %i.ae = add i64 %i.t, %i.ac
  %i.af = add i64 %i.v, %indvars.iv83
  %i.ag = sub i64 %i.w, %indvars.iv83
  %indvars86 = trunc i64 %indvars.iv83 to i32
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv83
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %i.aj = add nuw nsw i64 %indvars.iv83, %indvars.iv ; 6 uses
  %i.ak = add nsw i64 %i.aj, -1                   ; 3 uses
  %.reass = add i32 %invariant.op.a, %indvars86
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.ao = load double, ptr %i.an, align 8, !tbaa !13
  call void @Givens(double noundef %i.am, double noundef %i.ao, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.ap = load double, ptr %i.a, align 8, !tbaa !13 ; 5 uses
  %i.aq = load double, ptr %i.b, align 8, !tbaa !13 ; 5 uses
  %i.ar = add nuw nsw i64 %indvars.iv83, %i.aa
  %i.as = trunc nsw i64 %i.ar to i32
  %i.at = call i32 @llvm.umin.i32(i32 %i.as, i32 50) ; 3 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11 ; 4 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !11 ; 4 uses
  %i.ay = add nuw nsw i32 %i.at, 1                ; 2 uses
  %i.az = sub i32 %i.at, %6
  %i.ba = zext i32 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check111 = icmp eq i32 %i.at, %6
  br i1 %min.iters.check111, label %scalar.ph110.preheader, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.lr.ph.i
  %i.bc = shl nuw nsw i64 %indvars.iv83, 3        ; 2 uses
  %i.bd = add nuw i64 %i.bc, 8
  %i.be = add i64 %i.q, %indvars.iv83
  %i.bf = trunc i64 %i.be to i32
  %umin = call i32 @llvm.umin.i32(i32 %i.bf, i32 50)
  %i.bg = trunc i64 %indvars.iv83 to i32
  %i.bh = sub i32 %umin, %i.bg
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = add i64 %i.bd, %i.bj                    ; 2 uses
  %scevgep103 = getelementptr nuw i8, ptr %i.av, i64 %i.ac
  %scevgep104 = getelementptr i8, ptr %i.av, i64 %i.bk
  %scevgep105 = getelementptr nuw i8, ptr %i.ax, i64 %i.bc
  %scevgep106 = getelementptr i8, ptr %i.ax, i64 %i.bk
  %bound0107 = icmp ult ptr %scevgep103, %scevgep106
  %bound1108 = icmp ult ptr %scevgep105, %scevgep104
  %found.conflict109 = and i1 %bound0107, %bound1108
  br i1 %found.conflict109, label %scalar.ph110.preheader, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck102
  %n.vec113 = and i64 %i.bb, 8589934590           ; 3 uses
  %i.bl = add nuw i64 %indvars.iv83, %n.vec113
  %broadcast.splatinsert114 = insertelement <2 x double> poison, double %i.ap, i64 0
  %broadcast.splat115 = shufflevector <2 x double> %broadcast.splatinsert114, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert116 = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat117 = shufflevector <2 x double> %broadcast.splatinsert116, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph112
  %index119 = phi i64 [ 0, %vector.ph112 ], [ %index.next122, %vector.body118 ] ; 2 uses
  %i.bm = add nuw i64 %indvars.iv83, %index119    ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bm ; 2 uses
  %wide.load120 = load <2 x double>, ptr %i.bn, align 8, !tbaa !13, !alias.scope !37, !noalias !38 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bm ; 2 uses
  %wide.load121 = load <2 x double>, ptr %i.bo, align 8, !tbaa !13, !alias.scope !38 ; 2 uses
  %i.bp = fneg <2 x double> %wide.load121
  %i.bq = fmul <2 x double> %broadcast.splat115, %i.bp
  %i.br = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat117, <2 x double> %wide.load120, <2 x double> %i.bq)
  store <2 x double> %i.br, ptr %i.bn, align 8, !tbaa !13, !alias.scope !37, !noalias !38
  %i.bs = fmul <2 x double> %broadcast.splat117, %wide.load121
  %i.bt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat115, <2 x double> %wide.load120, <2 x double> %i.bs)
  store <2 x double> %i.bt, ptr %i.bo, align 8, !tbaa !13, !alias.scope !38
  %index.next122 = add nuw i64 %index119, 2       ; 2 uses
  %i.bu = icmp eq i64 %index.next122, %n.vec113
  br i1 %i.bu, label %middle.block123, label %vector.body118, !llvm.loop !27

middle.block123:                                  ; preds = %vector.body118
  %cmp.n124 = icmp eq i64 %i.bb, %n.vec113
  br i1 %cmp.n124, label %.lr.ph53.i.preheader, label %scalar.ph110.preheader

scalar.ph110.preheader:                           ; preds = %vector.memcheck102, %.lr.ph.i, %middle.block123
  %indvars.iv.i.ph = phi i64 [ %indvars.iv83, %vector.memcheck102 ], [ %indvars.iv83, %.lr.ph.i ], [ %i.bl, %middle.block123 ]
  %i.bv = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.ap, i64 1
  %i.bx = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.aq, i64 1
  br label %scalar.ph110

scalar.ph110:                                     ; preds = %scalar.ph110.preheader, %scalar.ph110
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph110 ], [ %indvars.iv.i.ph, %scalar.ph110.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !13 ; 2 uses
  %i.cd = fneg double %i.cc
  %i.ce = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.cd, i64 1
  %i.cg = fmul <2 x double> %i.bw, %i.cf
  %i.ch = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ci, <2 x double> %i.cg) ; 2 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 1
  store double %i.ck, ptr %i.bz, align 8, !tbaa !13
  %i.cl = extractelement <2 x double> %i.cj, i64 0
  store double %i.cl, ptr %i.cb, align 8, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.ay, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.lr.ph53.i.preheader, label %scalar.ph110, !llvm.loop !28

.lr.ph53.i.preheader:                             ; preds = %scalar.ph110, %middle.block123
  %i.cm = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.aq, i64 1
  %i.co = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.ap, i64 1
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %.lr.ph53.i
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %.lr.ph53.i ], [ %indvars.iv83, %.lr.ph53.i.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv55.i
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !11 ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ak ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !13
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.aj
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !13 ; 2 uses
  %i.cw = fneg double %i.cv
  %i.cx = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.cv, i64 1
  %i.cz = fmul <2 x double> %i.cn, %i.cy
  %i.da = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.db, <2 x double> %i.cz)
  store <2 x double> %i.dc, ptr %i.cs, align 8, !tbaa !13
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %lftr.wideiv58.i = trunc i64 %indvars.iv.next56.i to i32
  %exitcond59.not.i = icmp eq i32 %i.ay, %lftr.wideiv58.i
  br i1 %exitcond59.not.i, label %ApplyGivens.exit.loopexit, label %.lr.ph53.i, !llvm.loop !0

ApplyGivens.exit.loopexit:                        ; preds = %.lr.ph53.i
  %i.dd = load double, ptr %i.a, align 8, !tbaa !13
  %i.de = load double, ptr %i.b, align 8, !tbaa !13
  %i.df = trunc nsw i64 %i.aj to i32
  call void @ApplyRGivens(ptr noundef %i.c, double noundef %i.dd, double noundef %i.de, i32 noundef %.reass, i32 noundef %i.df) #5
  %i.dg = icmp slt i64 %i.aj, %i.y
  br i1 %i.dg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ApplyGivens.exit.loopexit, %ApplyGivens.exit72
  %indvar94 = phi i64 [ %indvar.next95, %ApplyGivens.exit72 ], [ 0, %ApplyGivens.exit.loopexit ] ; 5 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %ApplyGivens.exit72 ], [ %indvars.iv78, %ApplyGivens.exit.loopexit ] ; 3 uses
  %i.dh = mul i64 %i.t, %indvar94                 ; 2 uses
  %i.di = add i64 %i.ad, %i.dh                    ; 2 uses
  %i.dj = add i64 %i.ae, %i.dh
  %i.dk = mul i64 %indvars.iv, %indvar94
  %i.dl = add i64 %i.af, %i.dk
  %i.dm = trunc i64 %i.dl to i32
  %smin = call i32 @llvm.smin.i32(i32 %i.dm, i32 50)
  %i.dn = mul i64 %i.x, %indvar94
  %i.do = add i64 %i.ag, %i.dn
  %i.dp = trunc i64 %i.do to i32
  %i.dq = add i32 %smin, %i.dp
  %i.dr = zext i32 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 3
  %i.dt = add i64 %i.dj, %i.ds                    ; 2 uses
  %i.du = add nsw i64 %indvars.iv80, -1           ; 7 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %0, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !11 ; 2 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, %indvars.iv ; 7 uses
  %indvars = trunc i64 %indvars.iv.next81 to i32  ; 2 uses
  %i.dx = add nsw i64 %indvars.iv.next81, -1      ; 3 uses
  %i.dy = add nsw i32 %indvars, -1
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dx
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !13
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next81
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !13
  call void @Givens(double noundef %i.ea, double noundef %i.ec, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.ed = load double, ptr %i.a, align 8, !tbaa !13 ; 6 uses
  %i.ee = load double, ptr %i.b, align 8, !tbaa !13 ; 6 uses
  %i.ef = add nuw nsw i64 %indvars.iv80, %i.aa
  %i.eg = trunc nsw i64 %i.ef to i32
  %i.eh = call i32 @llvm.smin.i32(i32 %i.eg, i32 50) ; 3 uses
  %i.ei = sext i32 %i.eh to i64
  %.not49.i61 = icmp sgt i64 %i.du, %i.ei
  br i1 %.not49.i61, label %ApplyGivens.exit72, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph
  %8 = mul i64 %5, %indvar94
  %9 = add i64 %7, %8
  %10 = trunc i64 %9 to i32
  %i.ej = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dx
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !11 ; 4 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next81
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !11 ; 4 uses
  %i.en = add nuw nsw i32 %i.eh, 1                ; 2 uses
  %i.eo = add i32 %i.eh, %10                      ; 2 uses
  %i.ep = zext i32 %i.eo to i64
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.eo, 0
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i62
  %scevgep = getelementptr i8, ptr %i.ek, i64 %i.di
  %scevgep96 = getelementptr i8, ptr %i.ek, i64 %i.dt
  %scevgep97 = getelementptr i8, ptr %i.em, i64 %i.di
  %scevgep98 = getelementptr i8, ptr %i.em, i64 %i.dt
  %bound0 = icmp ult ptr %scevgep, %scevgep98
  %bound1 = icmp ult ptr %scevgep97, %scevgep96
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eq, 8589934590              ; 3 uses
  %i.er = add i64 %i.du, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ed, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert99 = insertelement <2 x double> poison, double %i.ee, i64 0
  %broadcast.splat100 = shufflevector <2 x double> %broadcast.splatinsert99, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.es = add i64 %i.du, %index                   ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.es ; 2 uses
  %wide.load = load <2 x double>, ptr %i.et, align 8, !tbaa !13, !alias.scope !39, !noalias !40 ; 2 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.es ; 2 uses
  %wide.load101 = load <2 x double>, ptr %i.eu, align 8, !tbaa !13, !alias.scope !40 ; 2 uses
  %i.ev = fneg <2 x double> %wide.load101
  %i.ew = fmul <2 x double> %broadcast.splat, %i.ev
  %i.ex = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat100, <2 x double> %wide.load, <2 x double> %i.ew)
  store <2 x double> %i.ex, ptr %i.et, align 8, !tbaa !13, !alias.scope !39, !noalias !40
  %i.ey = fmul <2 x double> %broadcast.splat100, %wide.load101
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.ey)
  store <2 x double> %i.ez, ptr %i.eu, align 8, !tbaa !13, !alias.scope !40
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eq, %n.vec
  br i1 %cmp.n, label %.lr.ph53.i67.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i62, %middle.block
  %indvars.iv.i63.ph = phi i64 [ %i.du, %vector.memcheck ], [ %i.du, %.lr.ph.i62 ], [ %i.er, %middle.block ]
  %i.fb = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %i.ed, i64 1
  %i.fd = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.ee, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i63 = phi i64 [ %indvars.iv.next.i64, %scalar.ph ], [ %indvars.iv.i63.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %indvars.iv.i63 ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !13
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.em, i64 %indvars.iv.i63 ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !13 ; 2 uses
  %i.fj = fneg double %i.fi
  %i.fk = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.fj, i64 1
  %i.fm = fmul <2 x double> %i.fc, %i.fl
  %i.fn = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fe, <2 x double> %i.fo, <2 x double> %i.fm) ; 2 uses
  %i.fq = extractelement <2 x double> %i.fp, i64 1
  store double %i.fq, ptr %i.ff, align 8, !tbaa !13
  %i.fr = extractelement <2 x double> %i.fp, i64 0
  store double %i.fr, ptr %i.fh, align 8, !tbaa !13
  %indvars.iv.next.i64 = add nsw i64 %indvars.iv.i63, 1 ; 2 uses
  %lftr.wideiv.i65 = trunc i64 %indvars.iv.next.i64 to i32
  %exitcond.not.i66 = icmp eq i32 %i.en, %lftr.wideiv.i65
  br i1 %exitcond.not.i66, label %.lr.ph53.i67.preheader, label %scalar.ph, !llvm.loop !33

.lr.ph53.i67.preheader:                           ; preds = %scalar.ph, %middle.block
  %i.fs = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ft = insertelement <2 x double> %i.fs, double %i.ee, i64 1
  %i.fu = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.ed, i64 1
  br label %.lr.ph53.i67

.lr.ph53.i67:                                     ; preds = %.lr.ph53.i67.preheader, %.lr.ph53.i67
  %indvars.iv55.i68 = phi i64 [ %indvars.iv.next56.i69, %.lr.ph53.i67 ], [ %i.du, %.lr.ph53.i67.preheader ] ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv55.i68
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !11 ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.dx ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !13
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next81
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !13 ; 2 uses
  %i.gc = fneg double %i.gb
  %i.gd = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.ge = insertelement <2 x double> %i.gd, double %i.gb, i64 1
  %i.gf = fmul <2 x double> %i.ft, %i.ge
  %i.gg = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.gh, <2 x double> %i.gf)
  store <2 x double> %i.gi, ptr %i.fy, align 8, !tbaa !13
  %indvars.iv.next56.i69 = add nsw i64 %indvars.iv55.i68, 1 ; 2 uses
  %lftr.wideiv58.i70 = trunc i64 %indvars.iv.next56.i69 to i32
  %exitcond59.not.i71 = icmp eq i32 %i.en, %lftr.wideiv58.i70
  br i1 %exitcond59.not.i71, label %ApplyGivens.exit72.loopexit, label %.lr.ph53.i67, !llvm.loop !0

ApplyGivens.exit72.loopexit:                      ; preds = %.lr.ph53.i67
  %.pre = load double, ptr %i.a, align 8, !tbaa !13
  %.pre89 = load double, ptr %i.b, align 8, !tbaa !13
  br label %ApplyGivens.exit72

ApplyGivens.exit72:                               ; preds = %ApplyGivens.exit72.loopexit, %.lr.ph
  %i.gj = phi double [ %.pre89, %ApplyGivens.exit72.loopexit ], [ %i.ee, %.lr.ph ]
  %i.gk = phi double [ %.pre, %ApplyGivens.exit72.loopexit ], [ %i.ed, %.lr.ph ]
  call void @ApplyRGivens(ptr noundef %i.c, double noundef %i.gk, double noundef %i.gj, i32 noundef %i.dy, i32 noundef %indvars) #5
  %i.gl = icmp slt i64 %indvars.iv.next81, %i.y
  %indvar.next95 = add i64 %indvar94, 1
  br i1 %i.gl, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %ApplyGivens.exit72, %ApplyGivens.exit.loopexit
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.gm = icmp slt i64 %indvars.iv.next84, %i.y
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br i1 %i.gm, label %.lr.ph.i, label %._crit_edge75, !llvm.loop !35

._crit_edge75:                                    ; preds = %._crit_edge, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.gn = icmp sgt i64 %indvars.iv, 2
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gn, label %.preheader, label %._crit_edge77, !llvm.loop !36

._crit_edge77:                                    ; preds = %._crit_edge75, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %i.c
}

declare ptr @newIdMatrix() local_unnamed_addr #3

declare void @Givens(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ApplyRGivens(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !14}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"p1 double", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, i1 false, !"LVerDomain"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !14, !15, !16}
!21 = distinct !{!21, !14, !15}
!22 = !{!18}
!23 = !{!19}
!24 = distinct !{!24, i1 false, !"LVerDomain"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !14, !15, !16}
!28 = distinct !{!28, !14, !15}
!29 = distinct !{!29, i1 false, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !14, !15, !16}
!33 = distinct !{!33, !14, !15}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = !{!25}
!38 = !{!26}
end_hunk_0
