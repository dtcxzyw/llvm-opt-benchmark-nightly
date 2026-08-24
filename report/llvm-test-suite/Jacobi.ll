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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 4 uses
  %i.d = sext i32 %4 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 4 uses
  %i.g = sext i32 %5 to i64                       ; 6 uses
  %i.h = add i32 %6, 1
  %i.i = sub i32 %6, %5                           ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.l = shl nsw i64 %i.g, 3                      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.l
  %i.m = sub i32 %6, %5
  %i.n = zext i32 %i.m to i64
  %i.o = add nsw i64 %i.g, %i.n
  %i.p = shl nsw i64 %i.o, 3
  %i.q = add nsw i64 %i.p, 8                      ; 2 uses
  %scevgep62 = getelementptr i8, ptr %i.c, i64 %i.q
  %scevgep63 = getelementptr i8, ptr %i.f, i64 %i.l
  %scevgep64 = getelementptr i8, ptr %i.f, i64 %i.q
  %bound0 = icmp ult ptr %scevgep, %scevgep64
  %bound1 = icmp ult ptr %scevgep63, %scevgep62
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, 8589934590               ; 3 uses
  %i.r = add nsw i64 %n.vec, %i.g
  %broadcast.splatinsert = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert65 = insertelement <2 x double> poison, double %2, i64 0
  %broadcast.splat66 = shufflevector <2 x double> %broadcast.splatinsert65, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = add i64 %index, %i.g                     ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.s ; 2 uses
  %wide.load = load <2 x double>, ptr %i.t, align 8, !tbaa !11, !alias.scope !13, !noalias !16 ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.s ; 2 uses
  %wide.load67 = load <2 x double>, ptr %i.u, align 8, !tbaa !11, !alias.scope !16 ; 2 uses
  %i.v = fneg <2 x double> %wide.load67
  %i.w = fmul <2 x double> %broadcast.splat, %i.v
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat66, <2 x double> %wide.load, <2 x double> %i.w)
  store <2 x double> %i.x, ptr %i.t, align 8, !tbaa !11, !alias.scope !13, !noalias !16
  %i.y = fmul <2 x double> %broadcast.splat66, %wide.load67
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.y)
  store <2 x double> %i.z, ptr %i.u, align 8, !tbaa !11, !alias.scope !16
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.lr.ph53, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph ], [ %i.r, %middle.block ]
  %i.ab = insertelement <2 x double> poison, double %2, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %1, i64 1 ; 2 uses
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %scalar.ph

.lr.ph53:                                         ; preds = %scalar.ph, %middle.block
  %i.ae = sext i32 %3 to i64
  %i.af = sext i32 %4 to i64
  %i.ag = sext i32 %5 to i64
  %i.ah = add i32 %6, 1
  %i.ai = insertelement <2 x double> poison, double %2, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %1, i64 1 ; 2 uses
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !11
  %i.an = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !11 ; 2 uses
  %i.ap = fneg double %i.ao
  %i.aq = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.ap, i64 1
  %i.as = fmul <2 x double> %i.ac, %i.ar
  %i.at = insertelement <2 x double> poison, double %i.am, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.au, <2 x double> %i.as) ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 1
  store double %i.aw, ptr %i.al, align 8, !tbaa !11
  %i.ax = extractelement <2 x double> %i.av, i64 0
  store double %i.ax, ptr %i.an, align 8, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.h, %lftr.wideiv
  br i1 %exitcond.not, label %.lr.ph53, label %scalar.ph, !llvm.loop !22

bb.b:                                             ; preds = %.lr.ph53, %bb.b
  %indvars.iv55 = phi i64 [ %i.ag, %.lr.ph53 ], [ %indvars.iv.next56, %bb.b ] ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv55
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !8  ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ae ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !11
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.af ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !11 ; 2 uses
  %i.be = fneg double %i.bd
  %i.bf = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.be, i64 1
  %i.bh = fmul <2 x double> %i.aj, %i.bg
  %i.bi = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.bj, <2 x double> %i.bh) ; 2 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 1
  store double %i.bl, ptr %i.ba, align 8, !tbaa !11
  %i.bm = extractelement <2 x double> %i.bk, i64 0
  store double %i.bm, ptr %i.bc, align 8, !tbaa !11
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, 1 ; 2 uses
  %lftr.wideiv58 = trunc i64 %indvars.iv.next56 to i32
  %exitcond59.not = icmp eq i32 %i.ah, %lftr.wideiv58
  br i1 %exitcond59.not, label %._crit_edge, label %bb.b, !llvm.loop !23

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
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !8  ; 2 uses
  %i.ap = add nuw nsw i64 %indvars.iv83, %indvars.iv ; 6 uses
  %i.aq = add nsw i64 %i.ap, -1                   ; 3 uses
  %.reass = add i32 %invariant.op, %indvars86
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !11
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.au = load double, ptr %i.at, align 8, !tbaa !11
  call void @Givens(double noundef %i.as, double noundef %i.au, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.av = load double, ptr %i.a, align 8, !tbaa !11 ; 5 uses
  %i.aw = load double, ptr %i.b, align 8, !tbaa !11 ; 5 uses
  %i.ax = add nuw nsw i64 %indvars.iv83, %i.ae
  %i.ay = trunc nsw i64 %i.ax to i32
  %i.az = call i32 @llvm.umin.i32(i32 %i.ay, i32 50) ; 3 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !8  ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !8  ; 4 uses
  %i.be = add nuw nsw i32 %i.az, 1                ; 2 uses
  %2 = sub i32 %i.az, %i.ag
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %min.iters.check113 = icmp eq i32 %i.az, %i.ag
  br i1 %min.iters.check113, label %scalar.ph112.preheader, label %vector.memcheck103

vector.memcheck103:                               ; preds = %.lr.ph.i
  %i.bf = shl nuw nsw i64 %indvars.iv83, 3        ; 2 uses
  %i.bg = add nuw i64 %i.bf, 8
  %i.bh = add i64 %i.s, %indvars.iv83
  %i.bi = trunc i64 %i.bh to i32
  %umin = call i32 @llvm.umin.i32(i32 %i.bi, i32 50)
  %i.bj = trunc i64 %indvars.iv83 to i32
  %i.bk = sub i32 %umin, %i.bj
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = add i64 %i.bg, %i.bm                    ; 2 uses
  %scevgep104.a = getelementptr nuw i8, ptr %i.bb, i64 %i.ai
  %scevgep105.a = getelementptr i8, ptr %i.bb, i64 %i.bn
  %scevgep106.a = getelementptr nuw i8, ptr %i.bd, i64 %i.bf
  %scevgep107 = getelementptr i8, ptr %i.bd, i64 %i.bn
  %bound0108 = icmp ult ptr %scevgep104.a, %scevgep107
  %bound1109 = icmp ult ptr %scevgep106.a, %scevgep105.a
  %found.conflict110 = and i1 %bound0108, %bound1109
  br i1 %found.conflict110, label %scalar.ph112.preheader, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck103
  %n.vec115 = and i64 %4, 8589934590              ; 3 uses
  %i.bo = add nuw i64 %indvars.iv83, %n.vec115
  %broadcast.splatinsert116.a = insertelement <2 x double> poison, double %i.av, i64 0
  %broadcast.splat117.a = shufflevector <2 x double> %broadcast.splatinsert116.a, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert118 = insertelement <2 x double> poison, double %i.aw, i64 0
  %broadcast.splat119 = shufflevector <2 x double> %broadcast.splatinsert118, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph114
  %index121 = phi i64 [ 0, %vector.ph114 ], [ %index.next124, %vector.body120 ] ; 2 uses
  %i.bp = add nuw i64 %indvars.iv83, %index121    ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bp ; 2 uses
  %wide.load122 = load <2 x double>, ptr %i.bq, align 8, !tbaa !11, !alias.scope !24, !noalias !27 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bp ; 2 uses
  %wide.load123 = load <2 x double>, ptr %i.br, align 8, !tbaa !11, !alias.scope !27 ; 2 uses
  %i.bs = fneg <2 x double> %wide.load123
  %i.bt = fmul <2 x double> %broadcast.splat117.a, %i.bs
  %i.bu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat119, <2 x double> %wide.load122, <2 x double> %i.bt)
  store <2 x double> %i.bu, ptr %i.bq, align 8, !tbaa !11, !alias.scope !24, !noalias !27
  %i.bv = fmul <2 x double> %broadcast.splat119, %wide.load123
  %i.bw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat117.a, <2 x double> %wide.load122, <2 x double> %i.bv)
  store <2 x double> %i.bw, ptr %i.br, align 8, !tbaa !11, !alias.scope !27
  %index.next124 = add nuw i64 %index121, 2       ; 2 uses
  %i.bx = icmp eq i64 %index.next124, %n.vec115
  br i1 %i.bx, label %middle.block125, label %vector.body120, !llvm.loop !29

middle.block125:                                  ; preds = %vector.body120
  %cmp.n126 = icmp eq i64 %4, %n.vec115
  br i1 %cmp.n126, label %.lr.ph53.i.preheader, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %vector.memcheck103, %.lr.ph.i, %middle.block125
  %indvars.iv.i.ph = phi i64 [ %indvars.iv83, %vector.memcheck103 ], [ %indvars.iv83, %.lr.ph.i ], [ %i.bo, %middle.block125 ]
  %i.by = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.av, i64 1
  %i.ca = insertelement <2 x double> poison, double %i.av, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.aw, i64 1
  br label %scalar.ph112

scalar.ph112:                                     ; preds = %scalar.ph112.preheader, %scalar.ph112
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph112 ], [ %indvars.iv.i.ph, %scalar.ph112.preheader ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i ; 2 uses
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !11
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.cg = fneg double %i.cf
  %i.ch = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.cg, i64 1
  %i.cj = fmul <2 x double> %i.bz, %i.ci
  %i.ck = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.cl, <2 x double> %i.cj) ; 2 uses
  %i.cn = extractelement <2 x double> %i.cm, i64 1
  store double %i.cn, ptr %i.cc, align 8, !tbaa !11
  %i.co = extractelement <2 x double> %i.cm, i64 0
  store double %i.co, ptr %i.ce, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.be, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.lr.ph53.i.preheader, label %scalar.ph112, !llvm.loop !30

.lr.ph53.i.preheader:                             ; preds = %scalar.ph112, %middle.block125
  %i.cp = insertelement <2 x double> poison, double %i.av, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.aw, i64 1
  %i.cr = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.av, i64 1
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %.lr.ph53.i
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %.lr.ph53.i ], [ %indvars.iv83, %.lr.ph53.i.preheader ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv55.i
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !8  ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.aq ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !11
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ap
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !11 ; 2 uses
  %i.cz = fneg double %i.cy
  %i.da = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.db = insertelement <2 x double> %i.da, double %i.cy, i64 1
  %i.dc = fmul <2 x double> %i.cq, %i.db
  %i.dd = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.de, <2 x double> %i.dc)
  store <2 x double> %i.df, ptr %i.cv, align 8, !tbaa !11
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %lftr.wideiv58.i = trunc i64 %indvars.iv.next56.i to i32
  %exitcond59.not.i = icmp eq i32 %i.be, %lftr.wideiv58.i
  br i1 %exitcond59.not.i, label %ApplyGivens.exit.loopexit, label %.lr.ph53.i, !llvm.loop !23

ApplyGivens.exit.loopexit:                        ; preds = %.lr.ph53.i
  %i.dg = load double, ptr %i.a, align 8, !tbaa !11
  %i.dh = load double, ptr %i.b, align 8, !tbaa !11
  %i.di = trunc nsw i64 %i.ap to i32
  call void @ApplyRGivens(ptr noundef %i.c, double noundef %i.dg, double noundef %i.dh, i32 noundef %.reass, i32 noundef %i.di) #5
  %i.dj = icmp slt i64 %i.ap, %i.ac
  br i1 %i.dj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ApplyGivens.exit.loopexit, %ApplyGivens.exit72
  %indvar94 = phi i64 [ %indvar.next95, %ApplyGivens.exit72 ], [ 0, %ApplyGivens.exit.loopexit ] ; 5 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %ApplyGivens.exit72 ], [ %indvars.iv78, %ApplyGivens.exit.loopexit ] ; 3 uses
  %i.dk = mul i64 %i.x, %indvar94                 ; 2 uses
  %i.dl = add i64 %i.aj, %i.dk                    ; 2 uses
  %i.dm = add i64 %i.ak, %i.dk
  %i.dn = mul i64 %indvars.iv, %indvar94
  %i.do = add i64 %i.al, %i.dn
  %i.dp = trunc i64 %i.do to i32
  %smin = call i32 @llvm.smin.i32(i32 %i.dp, i32 50)
  %i.dq = mul i64 %i.ab, %indvar94
  %i.dr = add i64 %i.am, %i.dq
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = add i32 %smin, %i.ds
  %i.du = zext i32 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 3
  %i.dw = add i64 %i.dm, %i.dv                    ; 2 uses
  %i.dx = add nsw i64 %indvars.iv80, -1           ; 7 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !8  ; 2 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, %indvars.iv ; 7 uses
  %indvars = trunc i64 %indvars.iv.next81 to i32  ; 2 uses
  %i.ea = add nsw i64 %indvars.iv.next81, -1      ; 3 uses
  %i.eb = add nsw i32 %indvars, -1
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ea
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !11
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next81
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !11
  call void @Givens(double noundef %i.ed, double noundef %i.ef, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.eg = load double, ptr %i.a, align 8, !tbaa !11 ; 6 uses
  %i.eh = load double, ptr %i.b, align 8, !tbaa !11 ; 6 uses
  %i.ei = add nuw nsw i64 %indvars.iv80, %i.ae
  %i.ej = trunc nsw i64 %i.ei to i32
  %i.ek = call i32 @llvm.smin.i32(i32 %i.ej, i32 50) ; 3 uses
  %i.el = sext i32 %i.ek to i64
  %.not49.i61 = icmp sgt i64 %i.dx, %i.el
  br i1 %.not49.i61, label %ApplyGivens.exit72, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph
  %5 = mul i64 %i.u, %indvar94
  %6 = add i64 %i.ah, %5
  %7 = trunc i64 %6 to i32
  %i.em = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ea
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !8  ; 4 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next81
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !8  ; 4 uses
  %i.eq = add nuw nsw i32 %i.ek, 1                ; 2 uses
  %8 = add i32 %i.ek, %7                          ; 2 uses
  %9 = zext i32 %8 to i64
  %10 = add nuw nsw i64 %9, 1                     ; 2 uses
  %min.iters.check = icmp eq i32 %8, 0
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i62
  %scevgep = getelementptr i8, ptr %i.en, i64 %i.dl
  %scevgep96 = getelementptr i8, ptr %i.en, i64 %i.dw
  %scevgep97 = getelementptr i8, ptr %i.ep, i64 %i.dl
  %scevgep98 = getelementptr i8, ptr %i.ep, i64 %i.dw
  %bound0 = icmp ult ptr %scevgep, %scevgep98
  %bound1 = icmp ult ptr %scevgep97, %scevgep96
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %10, 8589934590                ; 3 uses
  %i.er = add i64 %i.dx, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.eg, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert100 = insertelement <2 x double> poison, double %i.eh, i64 0
  %broadcast.splat101 = shufflevector <2 x double> %broadcast.splatinsert100, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.es = add i64 %i.dx, %index                   ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.es ; 2 uses
  %wide.load = load <2 x double>, ptr %i.et, align 8, !tbaa !11, !alias.scope !31, !noalias !34 ; 2 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.es ; 2 uses
  %wide.load102 = load <2 x double>, ptr %i.eu, align 8, !tbaa !11, !alias.scope !34 ; 2 uses
  %i.ev = fneg <2 x double> %wide.load102
  %i.ew = fmul <2 x double> %broadcast.splat, %i.ev
  %i.ex = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat101, <2 x double> %wide.load, <2 x double> %i.ew)
  store <2 x double> %i.ex, ptr %i.et, align 8, !tbaa !11, !alias.scope !31, !noalias !34
  %i.ey = fmul <2 x double> %broadcast.splat101, %wide.load102
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.ey)
  store <2 x double> %i.ez, ptr %i.eu, align 8, !tbaa !11, !alias.scope !34
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %10, %n.vec
  br i1 %cmp.n, label %.lr.ph53.i67.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i62, %middle.block
  %indvars.iv.i63.ph = phi i64 [ %i.dx, %vector.memcheck ], [ %i.dx, %.lr.ph.i62 ], [ %i.er, %middle.block ]
  %i.fb = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %i.eg, i64 1
  %i.fd = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.eh, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i63 = phi i64 [ %indvars.iv.next.i64, %scalar.ph ], [ %indvars.iv.i63.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.en, i64 %indvars.iv.i63 ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !11
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %indvars.iv.i63 ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !11 ; 2 uses
  %i.fj = fneg double %i.fi
  %i.fk = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.fj, i64 1
  %i.fm = fmul <2 x double> %i.fc, %i.fl
  %i.fn = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fe, <2 x double> %i.fo, <2 x double> %i.fm) ; 2 uses
  %i.fq = extractelement <2 x double> %i.fp, i64 1
  store double %i.fq, ptr %i.ff, align 8, !tbaa !11
  %i.fr = extractelement <2 x double> %i.fp, i64 0
  store double %i.fr, ptr %i.fh, align 8, !tbaa !11
  %indvars.iv.next.i64 = add nsw i64 %indvars.iv.i63, 1 ; 2 uses
  %lftr.wideiv.i65 = trunc i64 %indvars.iv.next.i64 to i32
  %exitcond.not.i66 = icmp eq i32 %i.eq, %lftr.wideiv.i65
  br i1 %exitcond.not.i66, label %.lr.ph53.i67.preheader, label %scalar.ph, !llvm.loop !37

.lr.ph53.i67.preheader:                           ; preds = %scalar.ph, %middle.block
  %i.fs = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ft = insertelement <2 x double> %i.fs, double %i.eh, i64 1
  %i.fu = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.eg, i64 1
  br label %.lr.ph53.i67

.lr.ph53.i67:                                     ; preds = %.lr.ph53.i67.preheader, %.lr.ph53.i67
  %indvars.iv55.i68 = phi i64 [ %indvars.iv.next56.i69, %.lr.ph53.i67 ], [ %i.dx, %.lr.ph53.i67.preheader ] ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv55.i68
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !8  ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.ea ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !11
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next81
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !11 ; 2 uses
  %i.gc = fneg double %i.gb
  %i.gd = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.ge = insertelement <2 x double> %i.gd, double %i.gb, i64 1
  %i.gf = fmul <2 x double> %i.ft, %i.ge
  %i.gg = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.gh, <2 x double> %i.gf)
  store <2 x double> %i.gi, ptr %i.fy, align 8, !tbaa !11
  %indvars.iv.next56.i69 = add nsw i64 %indvars.iv55.i68, 1 ; 2 uses
  %lftr.wideiv58.i70 = trunc i64 %indvars.iv.next56.i69 to i32
  %exitcond59.not.i71 = icmp eq i32 %i.eq, %lftr.wideiv58.i70
  br i1 %exitcond59.not.i71, label %ApplyGivens.exit72.loopexit, label %.lr.ph53.i67, !llvm.loop !23

ApplyGivens.exit72.loopexit:                      ; preds = %.lr.ph53.i67
  %.pre = load double, ptr %i.a, align 8, !tbaa !11
  %.pre89 = load double, ptr %i.b, align 8, !tbaa !11
  br label %ApplyGivens.exit72

ApplyGivens.exit72:                               ; preds = %ApplyGivens.exit72.loopexit, %.lr.ph
  %i.gj = phi double [ %.pre89, %ApplyGivens.exit72.loopexit ], [ %i.eh, %.lr.ph ]
  %i.gk = phi double [ %.pre, %ApplyGivens.exit72.loopexit ], [ %i.eg, %.lr.ph ]
  call void @ApplyRGivens(ptr noundef %i.c, double noundef %i.gk, double noundef %i.gj, i32 noundef %i.eb, i32 noundef %indvars) #5
  %i.gl = icmp slt i64 %indvars.iv.next81, %i.ac
  %indvar.next95 = add i64 %indvar94, 1
  br i1 %i.gl, label %.lr.ph, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %ApplyGivens.exit72, %ApplyGivens.exit.loopexit
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.gm = icmp slt i64 %indvars.iv.next84, %i.ac
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br i1 %i.gm, label %.lr.ph.i, label %._crit_edge75, !llvm.loop !39

._crit_edge75:                                    ; preds = %._crit_edge, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.gn = icmp sgt i64 %indvars.iv, 2
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gn, label %.preheader, label %._crit_edge77, !llvm.loop !40

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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 double", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15}
!15 = distinct !{!15, !"LVerDomain"}
!16 = !{!17}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !19, !20, !21}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !19, !20}
!23 = distinct !{!23, !19}
!24 = !{!25}
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !19, !20, !21}
!30 = distinct !{!30, !19, !20}
!31 = !{!32}
!32 = distinct !{!32, !33}
!33 = distinct !{!33, !"LVerDomain"}
!34 = !{!35}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !19, !20, !21}
!37 = distinct !{!37, !19, !20}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !19}
end_hunk_0
