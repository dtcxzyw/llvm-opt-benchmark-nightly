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
  %i.h = mul i32 %1, 3                            ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = sub nsw i32 1, %1                        ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = sub nsw i32 0, %1                        ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = zext i32 %i.h to i64
  %i.o = zext i32 %i.j to i64
  %i.p = zext i32 %i.l to i64
  %i.q = shl nuw i32 %1, 1                        ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = zext i32 %i.q to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge75
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge75 ] ; 10 uses
  %indvars.iv = phi i64 [ %i.e, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge75 ] ; 11 uses
  %i.t = shl i64 %indvar, 1
  %i.u = sub i64 %i.s, %i.t
  %i.v = shl i64 %indvar, 1
  %i.w = sub i64 %i.r, %i.v
  %i.x = mul i64 %indvar, 4294967293
  %i.y = add i64 %i.x, %i.n
  %i.z = add i64 %indvar, %i.o
  %i.aa = add i64 %indvar, %i.p
  %2 = mul nsw i64 %indvar, -8                    ; 2 uses
  %3 = add i64 %i.g, %2
  %4 = add i64 %i.f, %2                           ; 2 uses
  %i.ab = mul i64 %indvar, 4294967293
  %i.ac = add i64 %i.ab, %i.i
  %i.ad = add i64 %indvar, %i.k
  %i.ae = add i64 %indvar, %i.m
  %i.af = sub nsw i64 51, %indvars.iv             ; 3 uses
  %i.ag = icmp samesign ult i64 %indvars.iv, 51
  br i1 %i.ag, label %.lr.ph.i.lr.ph, label %._crit_edge75

.lr.ph.i.lr.ph:                                   ; preds = %.preheader
  %i.ah = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %invariant.op = add nsw i32 %i.ai, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %._crit_edge
  %indvars.iv83 = phi i64 [ 0, %.lr.ph.i.lr.ph ], [ %indvars.iv.next84, %._crit_edge ] ; 20 uses
  %indvars.iv78 = phi i64 [ %indvars.iv, %.lr.ph.i.lr.ph ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %i.aj = add i64 %i.u, %indvars.iv83
  %i.ak = trunc i64 %i.aj to i32
  %umin111 = call i32 @llvm.umin.i32(i32 %i.ak, i32 50) ; 2 uses
  %i.al = trunc i64 %indvars.iv83 to i32          ; 2 uses
  %i.am = sub i32 %umin111, %i.al
  %i.an = zext i32 %i.am to i64
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %i.ap = add i64 %i.y, %indvars.iv83
  %i.aq = sub i64 %i.z, %indvars.iv83
  %i.ar = shl nuw nsw i64 %indvars.iv83, 3        ; 3 uses
  %5 = add i64 %3, %i.ar
  %i.as = add i64 %4, %i.ar
  %i.at = add i64 %i.ac, %indvars.iv83
  %i.au = sub i64 %i.ad, %indvars.iv83
  %indvars86 = trunc i64 %indvars.iv83 to i32
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv83
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !8  ; 2 uses
  %i.ax = add nuw nsw i64 %indvars.iv83, %indvars.iv ; 6 uses
  %i.ay = add nsw i64 %i.ax, -1                   ; 3 uses
  %.reass = add i32 %invariant.op, %indvars86
  %i.az = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !11
  call void @Givens(double noundef %i.ba, double noundef %i.bc, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.bd = load double, ptr %i.a, align 8, !tbaa !11 ; 5 uses
  %i.be = load double, ptr %i.b, align 8, !tbaa !11 ; 5 uses
  %i.bf = add nuw nsw i64 %indvars.iv83, %i.ah
  %i.bg = trunc nsw i64 %i.bf to i32
  %i.bh = call i32 @llvm.umin.i32(i32 %i.bg, i32 50)
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ay
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !8  ; 4 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !8  ; 4 uses
  %i.bm = add nuw nsw i32 %i.bh, 1                ; 2 uses
  %min.iters.check113 = icmp eq i32 %umin111, %i.al
  br i1 %min.iters.check113, label %scalar.ph112.preheader, label %vector.memcheck103

vector.memcheck103:                               ; preds = %.lr.ph.i
  %i.bn = shl nuw nsw i64 %indvars.iv83, 3        ; 2 uses
  %i.bo = add nuw i64 %i.bn, 8
  %i.bp = add i64 %i.w, %indvars.iv83
  %i.bq = trunc i64 %i.bp to i32
  %umin = call i32 @llvm.umin.i32(i32 %i.bq, i32 50)
  %i.br = trunc i64 %indvars.iv83 to i32
  %i.bs = sub i32 %umin, %i.br
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = add i64 %i.bo, %i.bu                    ; 2 uses
  %scevgep104 = getelementptr nuw i8, ptr %i.bj, i64 %i.ar
  %scevgep105 = getelementptr i8, ptr %i.bj, i64 %i.bv
  %scevgep106 = getelementptr nuw i8, ptr %i.bl, i64 %i.bn
  %scevgep107 = getelementptr i8, ptr %i.bl, i64 %i.bv
  %bound0108 = icmp ult ptr %scevgep104, %scevgep107
  %bound1109 = icmp ult ptr %scevgep106, %scevgep105
  %found.conflict110 = and i1 %bound0108, %bound1109
  br i1 %found.conflict110, label %scalar.ph112.preheader, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck103
  %n.vec115 = and i64 %i.ao, 8589934590           ; 3 uses
  %i.bw = add nuw i64 %indvars.iv83, %n.vec115
  %broadcast.splatinsert116 = insertelement <2 x double> poison, double %i.bd, i64 0
  %broadcast.splat117 = shufflevector <2 x double> %broadcast.splatinsert116, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert118 = insertelement <2 x double> poison, double %i.be, i64 0
  %broadcast.splat119 = shufflevector <2 x double> %broadcast.splatinsert118, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph114
  %index121 = phi i64 [ 0, %vector.ph114 ], [ %index.next124, %vector.body120 ] ; 2 uses
  %i.bx = add nuw i64 %indvars.iv83, %index121    ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bx ; 2 uses
  %wide.load122 = load <2 x double>, ptr %i.by, align 8, !tbaa !11, !alias.scope !24, !noalias !27 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bx ; 2 uses
  %wide.load123 = load <2 x double>, ptr %i.bz, align 8, !tbaa !11, !alias.scope !27 ; 2 uses
  %i.ca = fneg <2 x double> %wide.load123
  %i.cb = fmul <2 x double> %broadcast.splat117, %i.ca
  %i.cc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat119, <2 x double> %wide.load122, <2 x double> %i.cb)
  store <2 x double> %i.cc, ptr %i.by, align 8, !tbaa !11, !alias.scope !24, !noalias !27
  %i.cd = fmul <2 x double> %broadcast.splat119, %wide.load123
  %i.ce = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat117, <2 x double> %wide.load122, <2 x double> %i.cd)
  store <2 x double> %i.ce, ptr %i.bz, align 8, !tbaa !11, !alias.scope !27
  %index.next124 = add nuw i64 %index121, 2       ; 2 uses
  %i.cf = icmp eq i64 %index.next124, %n.vec115
  br i1 %i.cf, label %middle.block125, label %vector.body120, !llvm.loop !29

middle.block125:                                  ; preds = %vector.body120
  %cmp.n126 = icmp eq i64 %i.ao, %n.vec115
  br i1 %cmp.n126, label %.lr.ph53.i.preheader, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %vector.memcheck103, %.lr.ph.i, %middle.block125
  %indvars.iv.i.ph = phi i64 [ %indvars.iv83, %vector.memcheck103 ], [ %indvars.iv83, %.lr.ph.i ], [ %i.bw, %middle.block125 ]
  %i.cg = insertelement <2 x double> poison, double %i.be, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.bd, i64 1
  %i.ci = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.be, i64 1
  br label %scalar.ph112

scalar.ph112:                                     ; preds = %scalar.ph112.preheader, %scalar.ph112
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph112 ], [ %indvars.iv.i.ph, %scalar.ph112.preheader ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.i ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !11
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !11 ; 2 uses
  %i.co = fneg double %i.cn
  %i.cp = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.co, i64 1
  %i.cr = fmul <2 x double> %i.ch, %i.cq
  %i.cs = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.ct, <2 x double> %i.cr) ; 2 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 1
  store double %i.cv, ptr %i.ck, align 8, !tbaa !11
  %i.cw = extractelement <2 x double> %i.cu, i64 0
  store double %i.cw, ptr %i.cm, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.bm, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.lr.ph53.i.preheader, label %scalar.ph112, !llvm.loop !30

.lr.ph53.i.preheader:                             ; preds = %scalar.ph112, %middle.block125
  %i.cx = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.be, i64 1
  %i.cz = insertelement <2 x double> poison, double %i.be, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.bd, i64 1
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %.lr.ph53.i
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %.lr.ph53.i ], [ %indvars.iv83, %.lr.ph53.i.preheader ] ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv55.i
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !8  ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.ay ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !11
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.ax
  %i.dg = load double, ptr %i.df, align 8, !tbaa !11 ; 2 uses
  %i.dh = fneg double %i.dg
  %i.di = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.dg, i64 1
  %i.dk = fmul <2 x double> %i.cy, %i.dj
  %i.dl = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.dm, <2 x double> %i.dk)
  store <2 x double> %i.dn, ptr %i.dd, align 8, !tbaa !11
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %lftr.wideiv58.i = trunc i64 %indvars.iv.next56.i to i32
  %exitcond59.not.i = icmp eq i32 %i.bm, %lftr.wideiv58.i
  br i1 %exitcond59.not.i, label %ApplyGivens.exit.loopexit, label %.lr.ph53.i, !llvm.loop !23

ApplyGivens.exit.loopexit:                        ; preds = %.lr.ph53.i
  %i.do = load double, ptr %i.a, align 8, !tbaa !11
  %i.dp = load double, ptr %i.b, align 8, !tbaa !11
  %i.dq = trunc nsw i64 %i.ax to i32
  call void @ApplyRGivens(ptr noundef %i.c, double noundef %i.do, double noundef %i.dp, i32 noundef %.reass, i32 noundef %i.dq) #5
  %i.dr = icmp slt i64 %i.ax, %i.af
  br i1 %i.dr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ApplyGivens.exit.loopexit, %ApplyGivens.exit72
  %indvar94 = phi i64 [ %indvar.next95, %ApplyGivens.exit72 ], [ 0, %ApplyGivens.exit.loopexit ] ; 6 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %ApplyGivens.exit72 ], [ %indvars.iv78, %ApplyGivens.exit.loopexit ] ; 3 uses
  %i.ds = mul i64 %indvars.iv, %indvar94
  %i.dt = add i64 %i.ap, %i.ds
  %i.du = trunc i64 %i.dt to i32
  %smin99 = call i32 @llvm.smin.i32(i32 %i.du, i32 50)
  %i.dv = mul i64 %i.aa, %indvar94
  %i.dw = add i64 %i.aq, %i.dv
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = add i32 %smin99, %i.dx                  ; 2 uses
  %i.dz = zext i32 %i.dy to i64
  %i.ea = add nuw nsw i64 %i.dz, 1                ; 2 uses
  %i.eb = mul i64 %4, %indvar94                   ; 2 uses
  %6 = add i64 %5, %i.eb                          ; 2 uses
  %i.ec = add i64 %i.as, %i.eb
  %i.ed = mul i64 %indvars.iv, %indvar94
  %i.ee = add i64 %i.at, %i.ed
  %i.ef = trunc i64 %i.ee to i32
  %smin = call i32 @llvm.smin.i32(i32 %i.ef, i32 50)
  %i.eg = mul i64 %i.ae, %indvar94
  %i.eh = add i64 %i.au, %i.eg
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = add i32 %smin, %i.ei
  %i.ek = zext i32 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, 3
  %i.em = add i64 %i.ec, %i.el                    ; 2 uses
  %i.en = add nsw i64 %indvars.iv80, -1           ; 7 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %0, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !8  ; 2 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, %indvars.iv ; 7 uses
  %indvars = trunc i64 %indvars.iv.next81 to i32  ; 2 uses
  %i.eq = add nsw i64 %indvars.iv.next81, -1      ; 3 uses
  %i.er = add nsw i32 %indvars, -1
  %i.es = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq
  %i.et = load double, ptr %i.es, align 8, !tbaa !11
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.next81
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !11
  call void @Givens(double noundef %i.et, double noundef %i.ev, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.ew = load double, ptr %i.a, align 8, !tbaa !11 ; 6 uses
  %i.ex = load double, ptr %i.b, align 8, !tbaa !11 ; 6 uses
  %i.ey = add nuw nsw i64 %indvars.iv80, %i.ah
  %i.ez = trunc nsw i64 %i.ey to i32
  %i.fa = call i32 @llvm.smin.i32(i32 %i.ez, i32 50) ; 2 uses
  %i.fb = sext i32 %i.fa to i64
  %.not49.i61 = icmp sgt i64 %i.en, %i.fb
  br i1 %.not49.i61, label %ApplyGivens.exit72, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph
  %i.fc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.eq
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !8  ; 4 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next81
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !8  ; 4 uses
  %i.fg = add nuw nsw i32 %i.fa, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.dy, 0
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i62
  %scevgep = getelementptr i8, ptr %i.fd, i64 %6
  %scevgep96 = getelementptr i8, ptr %i.fd, i64 %i.em
  %scevgep97 = getelementptr i8, ptr %i.ff, i64 %6
  %scevgep98 = getelementptr i8, ptr %i.ff, i64 %i.em
  %bound0 = icmp ult ptr %scevgep, %scevgep98
  %bound1 = icmp ult ptr %scevgep97, %scevgep96
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ea, 8589934590              ; 3 uses
  %i.fh = add i64 %i.en, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ew, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert100 = insertelement <2 x double> poison, double %i.ex, i64 0
  %broadcast.splat101 = shufflevector <2 x double> %broadcast.splatinsert100, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = add i64 %i.en, %index                   ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fi ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fj, align 8, !tbaa !11, !alias.scope !31, !noalias !34 ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fi ; 2 uses
  %wide.load102 = load <2 x double>, ptr %i.fk, align 8, !tbaa !11, !alias.scope !34 ; 2 uses
  %i.fl = fneg <2 x double> %wide.load102
  %i.fm = fmul <2 x double> %broadcast.splat, %i.fl
  %i.fn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat101, <2 x double> %wide.load, <2 x double> %i.fm)
  store <2 x double> %i.fn, ptr %i.fj, align 8, !tbaa !11, !alias.scope !31, !noalias !34
  %i.fo = fmul <2 x double> %broadcast.splat101, %wide.load102
  %i.fp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.fo)
  store <2 x double> %i.fp, ptr %i.fk, align 8, !tbaa !11, !alias.scope !34
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ea, %n.vec
  br i1 %cmp.n, label %.lr.ph53.i67.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i62, %middle.block
  %indvars.iv.i63.ph = phi i64 [ %i.en, %vector.memcheck ], [ %i.en, %.lr.ph.i62 ], [ %i.fh, %middle.block ]
  %i.fr = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.fs = insertelement <2 x double> %i.fr, double %i.ew, i64 1
  %i.ft = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.ex, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i63 = phi i64 [ %indvars.iv.next.i64, %scalar.ph ], [ %indvars.iv.i63.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %indvars.iv.i63 ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !11
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %indvars.iv.i63 ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !11 ; 2 uses
  %i.fz = fneg double %i.fy
  %i.ga = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.fz, i64 1
  %i.gc = fmul <2 x double> %i.fs, %i.gb
  %i.gd = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %i.ge, <2 x double> %i.gc) ; 2 uses
  %i.gg = extractelement <2 x double> %i.gf, i64 1
  store double %i.gg, ptr %i.fv, align 8, !tbaa !11
  %i.gh = extractelement <2 x double> %i.gf, i64 0
  store double %i.gh, ptr %i.fx, align 8, !tbaa !11
  %indvars.iv.next.i64 = add nsw i64 %indvars.iv.i63, 1 ; 2 uses
  %lftr.wideiv.i65 = trunc i64 %indvars.iv.next.i64 to i32
  %exitcond.not.i66 = icmp eq i32 %i.fg, %lftr.wideiv.i65
  br i1 %exitcond.not.i66, label %.lr.ph53.i67.preheader, label %scalar.ph, !llvm.loop !37

.lr.ph53.i67.preheader:                           ; preds = %scalar.ph, %middle.block
  %i.gi = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.gj = insertelement <2 x double> %i.gi, double %i.ex, i64 1
  %i.gk = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.ew, i64 1
  br label %.lr.ph53.i67

.lr.ph53.i67:                                     ; preds = %.lr.ph53.i67.preheader, %.lr.ph53.i67
  %indvars.iv55.i68 = phi i64 [ %indvars.iv.next56.i69, %.lr.ph53.i67 ], [ %i.en, %.lr.ph53.i67.preheader ] ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv55.i68
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !8  ; 2 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.eq ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !11
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next81
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !11 ; 2 uses
  %i.gs = fneg double %i.gr
  %i.gt = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.gu = insertelement <2 x double> %i.gt, double %i.gr, i64 1
  %i.gv = fmul <2 x double> %i.gj, %i.gu
  %i.gw = insertelement <2 x double> poison, double %i.gp, i64 0
  %i.gx = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> %i.gx, <2 x double> %i.gv)
  store <2 x double> %i.gy, ptr %i.go, align 8, !tbaa !11
  %indvars.iv.next56.i69 = add nsw i64 %indvars.iv55.i68, 1 ; 2 uses
  %lftr.wideiv58.i70 = trunc i64 %indvars.iv.next56.i69 to i32
  %exitcond59.not.i71 = icmp eq i32 %i.fg, %lftr.wideiv58.i70
  br i1 %exitcond59.not.i71, label %ApplyGivens.exit72.loopexit, label %.lr.ph53.i67, !llvm.loop !23

ApplyGivens.exit72.loopexit:                      ; preds = %.lr.ph53.i67
  %.pre = load double, ptr %i.a, align 8, !tbaa !11
  %.pre89 = load double, ptr %i.b, align 8, !tbaa !11
  br label %ApplyGivens.exit72

ApplyGivens.exit72:                               ; preds = %ApplyGivens.exit72.loopexit, %.lr.ph
  %i.gz = phi double [ %.pre89, %ApplyGivens.exit72.loopexit ], [ %i.ex, %.lr.ph ]
  %i.ha = phi double [ %.pre, %ApplyGivens.exit72.loopexit ], [ %i.ew, %.lr.ph ]
  call void @ApplyRGivens(ptr noundef %i.c, double noundef %i.ha, double noundef %i.gz, i32 noundef %i.er, i32 noundef %indvars) #5
  %i.hb = icmp slt i64 %indvars.iv.next81, %i.af
  %indvar.next95 = add i64 %indvar94, 1
  br i1 %i.hb, label %.lr.ph, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %ApplyGivens.exit72, %ApplyGivens.exit.loopexit
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.hc = icmp slt i64 %indvars.iv.next84, %i.af
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br i1 %i.hc, label %.lr.ph.i, label %._crit_edge75, !llvm.loop !39

._crit_edge75:                                    ; preds = %._crit_edge, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.hd = icmp sgt i64 %indvars.iv, 2
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hd, label %.preheader, label %._crit_edge77, !llvm.loop !40

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
