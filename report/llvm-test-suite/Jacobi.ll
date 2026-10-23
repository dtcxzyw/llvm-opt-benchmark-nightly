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
  %i.ac = trunc i64 %indvars.iv83 to i32          ; 2 uses
  %6 = sub i64 %4, %indvars.iv83
  %i.ad = shl nuw nsw i64 %indvars.iv83, 3        ; 3 uses
  %i.ae = add i64 %i.s, %i.ad
  %i.af = add i64 %i.t, %i.ad
  %i.ag = add i64 %i.v, %indvars.iv83
  %i.ah = sub i64 %i.w, %indvars.iv83
  %indvars86 = trunc i64 %indvars.iv83 to i32
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv83
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  %i.ak = add nuw nsw i64 %indvars.iv83, %indvars.iv ; 6 uses
  %i.al = add nsw i64 %i.ak, -1                   ; 3 uses
  %.reass = add i32 %invariant.op.a, %indvars86
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !13
  call void @Givens(double noundef %i.an, double noundef %i.ap, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.aq = load double, ptr %i.a, align 8, !tbaa !13 ; 5 uses
  %i.ar = load double, ptr %i.b, align 8, !tbaa !13 ; 5 uses
  %i.as = add nuw nsw i64 %indvars.iv83, %i.aa
  %i.at = trunc nsw i64 %i.as to i32
  %i.au = call i32 @llvm.umin.i32(i32 %i.at, i32 50) ; 3 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !11 ; 4 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ak
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !11 ; 4 uses
  %i.az = add nuw nsw i32 %i.au, 1                ; 2 uses
  %i.ba = sub i32 %i.au, %i.ac
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check111 = icmp eq i32 %i.au, %i.ac
  br i1 %min.iters.check111, label %scalar.ph110.preheader, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.lr.ph.i
  %i.bd = shl nuw nsw i64 %indvars.iv83, 3        ; 2 uses
  %i.be = add nuw i64 %i.bd, 8
  %i.bf = add i64 %i.q, %indvars.iv83
  %i.bg = trunc i64 %i.bf to i32
  %umin = call i32 @llvm.umin.i32(i32 %i.bg, i32 50)
  %i.bh = trunc i64 %indvars.iv83 to i32
  %i.bi = sub i32 %umin, %i.bh
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = add i64 %i.be, %i.bk                    ; 2 uses
  %scevgep103 = getelementptr nuw i8, ptr %i.aw, i64 %i.ad
  %scevgep104 = getelementptr i8, ptr %i.aw, i64 %i.bl
  %scevgep105 = getelementptr nuw i8, ptr %i.ay, i64 %i.bd
  %scevgep106 = getelementptr i8, ptr %i.ay, i64 %i.bl
  %bound0107 = icmp ult ptr %scevgep103, %scevgep106
  %bound1108 = icmp ult ptr %scevgep105, %scevgep104
  %found.conflict109 = and i1 %bound0107, %bound1108
  br i1 %found.conflict109, label %scalar.ph110.preheader, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck102
  %n.vec113 = and i64 %i.bc, 8589934590           ; 3 uses
  %i.bm = add nuw i64 %indvars.iv83, %n.vec113
  %broadcast.splatinsert114 = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat115 = shufflevector <2 x double> %broadcast.splatinsert114, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert116 = insertelement <2 x double> poison, double %i.ar, i64 0
  %broadcast.splat117 = shufflevector <2 x double> %broadcast.splatinsert116, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph112
  %index119 = phi i64 [ 0, %vector.ph112 ], [ %index.next122, %vector.body118 ] ; 2 uses
  %i.bn = add nuw i64 %indvars.iv83, %index119    ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bn ; 2 uses
  %wide.load120 = load <2 x double>, ptr %i.bo, align 8, !tbaa !13, !alias.scope !37, !noalias !38 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bn ; 2 uses
  %wide.load121 = load <2 x double>, ptr %i.bp, align 8, !tbaa !13, !alias.scope !38 ; 2 uses
  %i.bq = fneg <2 x double> %wide.load121
  %i.br = fmul <2 x double> %broadcast.splat115, %i.bq
  %i.bs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat117, <2 x double> %wide.load120, <2 x double> %i.br)
  store <2 x double> %i.bs, ptr %i.bo, align 8, !tbaa !13, !alias.scope !37, !noalias !38
  %i.bt = fmul <2 x double> %broadcast.splat117, %wide.load121
  %i.bu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat115, <2 x double> %wide.load120, <2 x double> %i.bt)
  store <2 x double> %i.bu, ptr %i.bp, align 8, !tbaa !13, !alias.scope !38
  %index.next122 = add nuw i64 %index119, 2       ; 2 uses
  %i.bv = icmp eq i64 %index.next122, %n.vec113
  br i1 %i.bv, label %middle.block123, label %vector.body118, !llvm.loop !27

middle.block123:                                  ; preds = %vector.body118
  %cmp.n124 = icmp eq i64 %i.bc, %n.vec113
  br i1 %cmp.n124, label %.lr.ph53.i.preheader, label %scalar.ph110.preheader

scalar.ph110.preheader:                           ; preds = %vector.memcheck102, %.lr.ph.i, %middle.block123
  %indvars.iv.i.ph = phi i64 [ %indvars.iv83, %vector.memcheck102 ], [ %indvars.iv83, %.lr.ph.i ], [ %i.bm, %middle.block123 ]
  %i.bw = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.aq, i64 1
  %i.by = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.ar, i64 1
  br label %scalar.ph110

scalar.ph110:                                     ; preds = %scalar.ph110.preheader, %scalar.ph110
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph110 ], [ %indvars.iv.i.ph, %scalar.ph110.preheader ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i ; 2 uses
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !13 ; 2 uses
  %i.ce = fneg double %i.cd
  %i.cf = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %i.ce, i64 1
  %i.ch = fmul <2 x double> %i.bx, %i.cg
  %i.ci = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.cj, <2 x double> %i.ch) ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 1
  store double %i.cl, ptr %i.ca, align 8, !tbaa !13
  %i.cm = extractelement <2 x double> %i.ck, i64 0
  store double %i.cm, ptr %i.cc, align 8, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.az, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.lr.ph53.i.preheader, label %scalar.ph110, !llvm.loop !28

.lr.ph53.i.preheader:                             ; preds = %scalar.ph110, %middle.block123
  %i.cn = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.ar, i64 1
  %i.cp = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.aq, i64 1
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %.lr.ph53.i
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %.lr.ph53.i ], [ %indvars.iv83, %.lr.ph53.i.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv55.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !11 ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.al ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !13
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ak
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !13 ; 2 uses
  %i.cx = fneg double %i.cw
  %i.cy = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cw, i64 1
  %i.da = fmul <2 x double> %i.co, %i.cz
  %i.db = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.dc, <2 x double> %i.da)
  store <2 x double> %i.dd, ptr %i.ct, align 8, !tbaa !13
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %lftr.wideiv58.i = trunc i64 %indvars.iv.next56.i to i32
  %exitcond59.not.i = icmp eq i32 %i.az, %lftr.wideiv58.i
  br i1 %exitcond59.not.i, label %ApplyGivens.exit.loopexit, label %.lr.ph53.i, !llvm.loop !0

ApplyGivens.exit.loopexit:                        ; preds = %.lr.ph53.i
  %i.de = load double, ptr %i.a, align 8, !tbaa !13
  %i.df = load double, ptr %i.b, align 8, !tbaa !13
  %i.dg = trunc nsw i64 %i.ak to i32
  call void @ApplyRGivens(ptr noundef %i.c, double noundef %i.de, double noundef %i.df, i32 noundef %.reass, i32 noundef %i.dg) #5
  %i.dh = icmp slt i64 %i.ak, %i.y
  br i1 %i.dh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ApplyGivens.exit.loopexit, %ApplyGivens.exit72
  %indvar94 = phi i64 [ %indvar.next95, %ApplyGivens.exit72 ], [ 0, %ApplyGivens.exit.loopexit ] ; 5 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %ApplyGivens.exit72 ], [ %indvars.iv78, %ApplyGivens.exit.loopexit ] ; 3 uses
  %i.di = mul i64 %i.t, %indvar94                 ; 2 uses
  %i.dj = add i64 %i.ae, %i.di                    ; 2 uses
  %i.dk = add i64 %i.af, %i.di
  %i.dl = mul i64 %indvars.iv, %indvar94
  %i.dm = add i64 %i.ag, %i.dl
  %i.dn = trunc i64 %i.dm to i32
  %smin = call i32 @llvm.smin.i32(i32 %i.dn, i32 50)
  %i.do = mul i64 %i.x, %indvar94
  %i.dp = add i64 %i.ah, %i.do
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = add i32 %smin, %i.dq
  %i.ds = zext i32 %i.dr to i64
  %i.dt = shl nuw nsw i64 %i.ds, 3
  %i.du = add i64 %i.dk, %i.dt                    ; 2 uses
  %i.dv = add nsw i64 %indvars.iv80, -1           ; 7 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !11 ; 2 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, %indvars.iv ; 7 uses
  %indvars = trunc i64 %indvars.iv.next81 to i32  ; 2 uses
  %i.dy = add nsw i64 %indvars.iv.next81, -1      ; 3 uses
  %i.dz = add nsw i32 %indvars, -1
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.dy
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !13
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next81
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !13
  call void @Givens(double noundef %i.eb, double noundef %i.ed, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.ee = load double, ptr %i.a, align 8, !tbaa !13 ; 6 uses
  %i.ef = load double, ptr %i.b, align 8, !tbaa !13 ; 6 uses
  %i.eg = add nuw nsw i64 %indvars.iv80, %i.aa
  %i.eh = trunc nsw i64 %i.eg to i32
  %i.ei = call i32 @llvm.smin.i32(i32 %i.eh, i32 50) ; 3 uses
  %i.ej = sext i32 %i.ei to i64
  %.not49.i61 = icmp sgt i64 %i.dv, %i.ej
  br i1 %.not49.i61, label %ApplyGivens.exit72, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph
  %7 = mul i64 %5, %indvar94
  %8 = add i64 %6, %7
  %i.ek = trunc i64 %8 to i32
  %i.el = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dy
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !11 ; 4 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next81
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !11 ; 4 uses
  %i.ep = add nuw nsw i32 %i.ei, 1                ; 2 uses
  %i.eq = add i32 %i.ei, %i.ek                    ; 2 uses
  %i.er = zext i32 %i.eq to i64
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.eq, 0
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i62
  %scevgep = getelementptr i8, ptr %i.em, i64 %i.dj
  %scevgep96 = getelementptr i8, ptr %i.em, i64 %i.du
  %scevgep97 = getelementptr i8, ptr %i.eo, i64 %i.dj
  %scevgep98 = getelementptr i8, ptr %i.eo, i64 %i.du
  %bound0 = icmp ult ptr %scevgep, %scevgep98
  %bound1 = icmp ult ptr %scevgep97, %scevgep96
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.es, 8589934590              ; 3 uses
  %i.et = add i64 %i.dv, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ee, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert99 = insertelement <2 x double> poison, double %i.ef, i64 0
  %broadcast.splat100 = shufflevector <2 x double> %broadcast.splatinsert99, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eu = add i64 %i.dv, %index                   ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.eu ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ev, align 8, !tbaa !13, !alias.scope !39, !noalias !40 ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.eu ; 2 uses
  %wide.load101 = load <2 x double>, ptr %i.ew, align 8, !tbaa !13, !alias.scope !40 ; 2 uses
  %i.ex = fneg <2 x double> %wide.load101
  %i.ey = fmul <2 x double> %broadcast.splat, %i.ex
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat100, <2 x double> %wide.load, <2 x double> %i.ey)
  store <2 x double> %i.ez, ptr %i.ev, align 8, !tbaa !13, !alias.scope !39, !noalias !40
  %i.fa = fmul <2 x double> %broadcast.splat100, %wide.load101
  %i.fb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.fa)
  store <2 x double> %i.fb, ptr %i.ew, align 8, !tbaa !13, !alias.scope !40
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.es, %n.vec
  br i1 %cmp.n, label %.lr.ph53.i67.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i62, %middle.block
  %indvars.iv.i63.ph = phi i64 [ %i.dv, %vector.memcheck ], [ %i.dv, %.lr.ph.i62 ], [ %i.et, %middle.block ]
  %i.fd = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.ee, i64 1
  %i.ff = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.fg = insertelement <2 x double> %i.ff, double %i.ef, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i63 = phi i64 [ %indvars.iv.next.i64, %scalar.ph ], [ %indvars.iv.i63.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.em, i64 %indvars.iv.i63 ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !13
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %indvars.iv.i63 ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !13 ; 2 uses
  %i.fl = fneg double %i.fk
  %i.fm = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fn = insertelement <2 x double> %i.fm, double %i.fl, i64 1
  %i.fo = fmul <2 x double> %i.fe, %i.fn
  %i.fp = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> %i.fq, <2 x double> %i.fo) ; 2 uses
  %i.fs = extractelement <2 x double> %i.fr, i64 1
  store double %i.fs, ptr %i.fh, align 8, !tbaa !13
  %i.ft = extractelement <2 x double> %i.fr, i64 0
  store double %i.ft, ptr %i.fj, align 8, !tbaa !13
  %indvars.iv.next.i64 = add nsw i64 %indvars.iv.i63, 1 ; 2 uses
  %lftr.wideiv.i65 = trunc i64 %indvars.iv.next.i64 to i32
  %exitcond.not.i66 = icmp eq i32 %i.ep, %lftr.wideiv.i65
  br i1 %exitcond.not.i66, label %.lr.ph53.i67.preheader, label %scalar.ph, !llvm.loop !33

.lr.ph53.i67.preheader:                           ; preds = %scalar.ph, %middle.block
  %i.fu = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.ef, i64 1
  %i.fw = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.fx = insertelement <2 x double> %i.fw, double %i.ee, i64 1
  br label %.lr.ph53.i67

.lr.ph53.i67:                                     ; preds = %.lr.ph53.i67.preheader, %.lr.ph53.i67
  %indvars.iv55.i68 = phi i64 [ %indvars.iv.next56.i69, %.lr.ph53.i67 ], [ %i.dv, %.lr.ph53.i67.preheader ] ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv55.i68
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !11 ; 2 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.dy ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !13
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv.next81
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !13 ; 2 uses
  %i.ge = fneg double %i.gd
  %i.gf = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %i.gd, i64 1
  %i.gh = fmul <2 x double> %i.fv, %i.gg
  %i.gi = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.gj, <2 x double> %i.gh)
  store <2 x double> %i.gk, ptr %i.ga, align 8, !tbaa !13
  %indvars.iv.next56.i69 = add nsw i64 %indvars.iv55.i68, 1 ; 2 uses
  %lftr.wideiv58.i70 = trunc i64 %indvars.iv.next56.i69 to i32
  %exitcond59.not.i71 = icmp eq i32 %i.ep, %lftr.wideiv58.i70
  br i1 %exitcond59.not.i71, label %ApplyGivens.exit72.loopexit, label %.lr.ph53.i67, !llvm.loop !0

ApplyGivens.exit72.loopexit:                      ; preds = %.lr.ph53.i67
  %.pre = load double, ptr %i.a, align 8, !tbaa !13
  %.pre89 = load double, ptr %i.b, align 8, !tbaa !13
  br label %ApplyGivens.exit72

ApplyGivens.exit72:                               ; preds = %ApplyGivens.exit72.loopexit, %.lr.ph
  %i.gl = phi double [ %.pre89, %ApplyGivens.exit72.loopexit ], [ %i.ef, %.lr.ph ]
  %i.gm = phi double [ %.pre, %ApplyGivens.exit72.loopexit ], [ %i.ee, %.lr.ph ]
  call void @ApplyRGivens(ptr noundef %i.c, double noundef %i.gm, double noundef %i.gl, i32 noundef %i.dz, i32 noundef %indvars) #5
  %i.gn = icmp slt i64 %indvars.iv.next81, %i.y
  %indvar.next95 = add i64 %indvar94, 1
  br i1 %i.gn, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %ApplyGivens.exit72, %ApplyGivens.exit.loopexit
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.go = icmp slt i64 %indvars.iv.next84, %i.y
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br i1 %i.go, label %.lr.ph.i, label %._crit_edge75, !llvm.loop !35

._crit_edge75:                                    ; preds = %._crit_edge, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.gp = icmp sgt i64 %indvars.iv, 2
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gp, label %.preheader, label %._crit_edge77, !llvm.loop !36

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
