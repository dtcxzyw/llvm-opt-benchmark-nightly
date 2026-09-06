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
  %wide.load = load <2 x double>, ptr %i.t, align 8, !tbaa !13, !alias.scope !22, !noalias !23 ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.s ; 2 uses
  %wide.load67 = load <2 x double>, ptr %i.u, align 8, !tbaa !13, !alias.scope !23 ; 2 uses
  %i.v = fneg <2 x double> %wide.load67
  %i.w = fmul <2 x double> %broadcast.splat, %i.v
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat66, <2 x double> %wide.load, <2 x double> %i.w)
  store <2 x double> %i.x, ptr %i.t, align 8, !tbaa !13, !alias.scope !22, !noalias !23
  %i.y = fmul <2 x double> %broadcast.splat66, %wide.load67
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.y)
  store <2 x double> %i.z, ptr %i.u, align 8, !tbaa !13, !alias.scope !23
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !20

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
  %i.am = load double, ptr %i.al, align 8, !tbaa !13
  %i.an = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !13 ; 2 uses
  %i.ap = fneg double %i.ao
  %i.aq = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.ap, i64 1
  %i.as = fmul <2 x double> %i.ac, %i.ar
  %i.at = insertelement <2 x double> poison, double %i.am, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.au, <2 x double> %i.as) ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 1
  store double %i.aw, ptr %i.al, align 8, !tbaa !13
  %i.ax = extractelement <2 x double> %i.av, i64 0
  store double %i.ax, ptr %i.an, align 8, !tbaa !13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.h, %lftr.wideiv
  br i1 %exitcond.not, label %.lr.ph53, label %scalar.ph, !llvm.loop !21

bb.b:                                             ; preds = %.lr.ph53, %bb.b
  %indvars.iv55 = phi i64 [ %i.ag, %.lr.ph53 ], [ %indvars.iv.next56, %bb.b ] ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv55
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !11 ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ae ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !13
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.af ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !13 ; 2 uses
  %i.be = fneg double %i.bd
  %i.bf = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.be, i64 1
  %i.bh = fmul <2 x double> %i.aj, %i.bg
  %i.bi = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.bj, <2 x double> %i.bh) ; 2 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 1
  store double %i.bl, ptr %i.ba, align 8, !tbaa !13
  %i.bm = extractelement <2 x double> %i.bk, i64 0
  store double %i.bm, ptr %i.bc, align 8, !tbaa !13
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, 1 ; 2 uses
  %lftr.wideiv58 = trunc i64 %indvars.iv.next56 to i32
  %exitcond59.not = icmp eq i32 %i.ah, %lftr.wideiv58
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
  %2 = mul nsw i64 %indvar, -8                    ; 2 uses
  %3 = add i64 %i.g, %2
  %4 = add i64 %i.f, %2                           ; 2 uses
  %i.v = mul i64 %indvar, 4294967293
  %i.w = add i64 %i.v, %i.i
  %i.x = add i64 %indvar, %i.k
  %i.y = add i64 %indvar, %i.m
  %i.z = sub nsw i64 51, %indvars.iv              ; 3 uses
  %i.aa = icmp samesign ult i64 %indvars.iv, 51
  br i1 %i.aa, label %.lr.ph.i.lr.ph, label %._crit_edge75

.lr.ph.i.lr.ph:                                   ; preds = %.preheader
  %i.ab = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  %invariant.op = add nsw i32 %i.ac, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %._crit_edge
  %indvars.iv83 = phi i64 [ 0, %.lr.ph.i.lr.ph ], [ %indvars.iv.next84, %._crit_edge ] ; 18 uses
  %indvars.iv78 = phi i64 [ %indvars.iv, %.lr.ph.i.lr.ph ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %i.ad = trunc i64 %indvars.iv83 to i32          ; 2 uses
  %i.ae = sub i64 %i.t, %indvars.iv83
  %i.af = shl nuw nsw i64 %indvars.iv83, 3        ; 3 uses
  %5 = add i64 %3, %i.af
  %i.ag = add i64 %4, %i.af
  %i.ah = add i64 %i.w, %indvars.iv83
  %i.ai = sub i64 %i.x, %indvars.iv83
  %indvars86 = trunc i64 %indvars.iv83 to i32
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv83
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %i.al = add nuw nsw i64 %indvars.iv83, %indvars.iv ; 6 uses
  %i.am = add nsw i64 %i.al, -1                   ; 3 uses
  %.reass = add i32 %invariant.op, %indvars86
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !13
  call void @Givens(double noundef %i.ao, double noundef %i.aq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.ar = load double, ptr %i.a, align 8, !tbaa !13 ; 5 uses
  %i.as = load double, ptr %i.b, align 8, !tbaa !13 ; 5 uses
  %i.at = add nuw nsw i64 %indvars.iv83, %i.ab
  %i.au = trunc nsw i64 %i.at to i32
  %i.av = call i32 @llvm.umin.i32(i32 %i.au, i32 50) ; 3 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !11 ; 4 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.al
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !11 ; 4 uses
  %i.ba = add nuw nsw i32 %i.av, 1                ; 2 uses
  %i.bb = sub i32 %i.av, %i.ad
  %i.bc = zext i32 %i.bb to i64
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check111 = icmp eq i32 %i.av, %i.ad
  br i1 %min.iters.check111, label %scalar.ph110.preheader, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.lr.ph.i
  %i.be = shl nuw nsw i64 %indvars.iv83, 3        ; 2 uses
  %i.bf = add nuw i64 %i.be, 8
  %i.bg = add i64 %i.s, %indvars.iv83
  %i.bh = trunc i64 %i.bg to i32
  %umin = call i32 @llvm.umin.i32(i32 %i.bh, i32 50)
  %i.bi = trunc i64 %indvars.iv83 to i32
  %i.bj = sub i32 %umin, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = add i64 %i.bf, %i.bl                    ; 2 uses
  %scevgep103 = getelementptr nuw i8, ptr %i.ax, i64 %i.af
  %scevgep104 = getelementptr i8, ptr %i.ax, i64 %i.bm
  %scevgep105 = getelementptr nuw i8, ptr %i.az, i64 %i.be
  %scevgep106 = getelementptr i8, ptr %i.az, i64 %i.bm
  %bound0107 = icmp ult ptr %scevgep103, %scevgep106
  %bound1108 = icmp ult ptr %scevgep105, %scevgep104
  %found.conflict109 = and i1 %bound0107, %bound1108
  br i1 %found.conflict109, label %scalar.ph110.preheader, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck102
  %n.vec113 = and i64 %i.bd, 8589934590           ; 3 uses
  %i.bn = add nuw i64 %indvars.iv83, %n.vec113
  %broadcast.splatinsert114 = insertelement <2 x double> poison, double %i.ar, i64 0
  %broadcast.splat115 = shufflevector <2 x double> %broadcast.splatinsert114, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert116 = insertelement <2 x double> poison, double %i.as, i64 0
  %broadcast.splat117 = shufflevector <2 x double> %broadcast.splatinsert116, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph112
  %index119 = phi i64 [ 0, %vector.ph112 ], [ %index.next122, %vector.body118 ] ; 2 uses
  %i.bo = add nuw i64 %indvars.iv83, %index119    ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bo ; 2 uses
  %wide.load120 = load <2 x double>, ptr %i.bp, align 8, !tbaa !13, !alias.scope !37, !noalias !38 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bo ; 2 uses
  %wide.load121 = load <2 x double>, ptr %i.bq, align 8, !tbaa !13, !alias.scope !38 ; 2 uses
  %i.br = fneg <2 x double> %wide.load121
  %i.bs = fmul <2 x double> %broadcast.splat115, %i.br
  %i.bt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat117, <2 x double> %wide.load120, <2 x double> %i.bs)
  store <2 x double> %i.bt, ptr %i.bp, align 8, !tbaa !13, !alias.scope !37, !noalias !38
  %i.bu = fmul <2 x double> %broadcast.splat117, %wide.load121
  %i.bv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat115, <2 x double> %wide.load120, <2 x double> %i.bu)
  store <2 x double> %i.bv, ptr %i.bq, align 8, !tbaa !13, !alias.scope !38
  %index.next122 = add nuw i64 %index119, 2       ; 2 uses
  %i.bw = icmp eq i64 %index.next122, %n.vec113
  br i1 %i.bw, label %middle.block123, label %vector.body118, !llvm.loop !27

middle.block123:                                  ; preds = %vector.body118
  %cmp.n124 = icmp eq i64 %i.bd, %n.vec113
  br i1 %cmp.n124, label %.lr.ph53.i.preheader, label %scalar.ph110.preheader

scalar.ph110.preheader:                           ; preds = %vector.memcheck102, %.lr.ph.i, %middle.block123
  %indvars.iv.i.ph = phi i64 [ %indvars.iv83, %vector.memcheck102 ], [ %indvars.iv83, %.lr.ph.i ], [ %i.bn, %middle.block123 ]
  %i.bx = insertelement <2 x double> poison, double %i.as, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.ar, i64 1
  %i.bz = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.as, i64 1
  br label %scalar.ph110

scalar.ph110:                                     ; preds = %scalar.ph110.preheader, %scalar.ph110
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph110 ], [ %indvars.iv.i.ph, %scalar.ph110.preheader ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !13 ; 2 uses
  %i.cf = fneg double %i.ce
  %i.cg = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.cf, i64 1
  %i.ci = fmul <2 x double> %i.by, %i.ch
  %i.cj = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.ck, <2 x double> %i.ci) ; 2 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 1
  store double %i.cm, ptr %i.cb, align 8, !tbaa !13
  %i.cn = extractelement <2 x double> %i.cl, i64 0
  store double %i.cn, ptr %i.cd, align 8, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.ba, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.lr.ph53.i.preheader, label %scalar.ph110, !llvm.loop !28

.lr.ph53.i.preheader:                             ; preds = %scalar.ph110, %middle.block123
  %i.co = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.as, i64 1
  %i.cq = insertelement <2 x double> poison, double %i.as, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.ar, i64 1
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %.lr.ph53.i
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %.lr.ph53.i ], [ %indvars.iv83, %.lr.ph53.i.preheader ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv55.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !11 ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.am ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !13
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.al
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !13 ; 2 uses
  %i.cy = fneg double %i.cx
  %i.cz = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cx, i64 1
  %i.db = fmul <2 x double> %i.cp, %i.da
  %i.dc = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.dd, <2 x double> %i.db)
  store <2 x double> %i.de, ptr %i.cu, align 8, !tbaa !13
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %lftr.wideiv58.i = trunc i64 %indvars.iv.next56.i to i32
  %exitcond59.not.i = icmp eq i32 %i.ba, %lftr.wideiv58.i
  br i1 %exitcond59.not.i, label %ApplyGivens.exit.loopexit, label %.lr.ph53.i, !llvm.loop !0

ApplyGivens.exit.loopexit:                        ; preds = %.lr.ph53.i
  %i.df = load double, ptr %i.a, align 8, !tbaa !13
  %i.dg = load double, ptr %i.b, align 8, !tbaa !13
  %i.dh = trunc nsw i64 %i.al to i32
  call void @ApplyRGivens(ptr noundef %i.c, double noundef %i.df, double noundef %i.dg, i32 noundef %.reass, i32 noundef %i.dh) #5
  %i.di = icmp slt i64 %i.al, %i.z
  br i1 %i.di, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ApplyGivens.exit.loopexit, %ApplyGivens.exit72
  %indvar94 = phi i64 [ %indvar.next95, %ApplyGivens.exit72 ], [ 0, %ApplyGivens.exit.loopexit ] ; 5 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %ApplyGivens.exit72 ], [ %indvars.iv78, %ApplyGivens.exit.loopexit ] ; 3 uses
  %i.dj = mul i64 %4, %indvar94                   ; 2 uses
  %6 = add i64 %5, %i.dj                          ; 2 uses
  %i.dk = add i64 %i.ag, %i.dj
  %i.dl = mul i64 %indvars.iv, %indvar94
  %i.dm = add i64 %i.ah, %i.dl
  %i.dn = trunc i64 %i.dm to i32
  %smin = call i32 @llvm.smin.i32(i32 %i.dn, i32 50)
  %i.do = mul i64 %i.y, %indvar94
  %i.dp = add i64 %i.ai, %i.do
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
  %i.eg = add nuw nsw i64 %indvars.iv80, %i.ab
  %i.eh = trunc nsw i64 %i.eg to i32
  %i.ei = call i32 @llvm.smin.i32(i32 %i.eh, i32 50) ; 3 uses
  %i.ej = sext i32 %i.ei to i64
  %.not49.i61 = icmp sgt i64 %i.dv, %i.ej
  br i1 %.not49.i61, label %ApplyGivens.exit72, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph
  %i.ek = mul i64 %i.u, %indvar94
  %i.el = add i64 %i.ae, %i.ek
  %i.em = trunc i64 %i.el to i32
  %i.en = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dy
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !11 ; 4 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next81
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !11 ; 4 uses
  %i.er = add nuw nsw i32 %i.ei, 1                ; 2 uses
  %i.es = add i32 %i.ei, %i.em                    ; 2 uses
  %i.et = zext i32 %i.es to i64
  %i.eu = add nuw nsw i64 %i.et, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.es, 0
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i62
  %scevgep = getelementptr i8, ptr %i.eo, i64 %6
  %scevgep96 = getelementptr i8, ptr %i.eo, i64 %i.du
  %scevgep97 = getelementptr i8, ptr %i.eq, i64 %6
  %scevgep98 = getelementptr i8, ptr %i.eq, i64 %i.du
  %bound0 = icmp ult ptr %scevgep, %scevgep98
  %bound1 = icmp ult ptr %scevgep97, %scevgep96
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eu, 8589934590              ; 3 uses
  %i.ev = add i64 %i.dv, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ee, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert99 = insertelement <2 x double> poison, double %i.ef, i64 0
  %broadcast.splat100 = shufflevector <2 x double> %broadcast.splatinsert99, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ew = add i64 %i.dv, %index                   ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.ew ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ex, align 8, !tbaa !13, !alias.scope !39, !noalias !40 ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.ew ; 2 uses
  %wide.load101 = load <2 x double>, ptr %i.ey, align 8, !tbaa !13, !alias.scope !40 ; 2 uses
  %i.ez = fneg <2 x double> %wide.load101
  %i.fa = fmul <2 x double> %broadcast.splat, %i.ez
  %i.fb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat100, <2 x double> %wide.load, <2 x double> %i.fa)
  store <2 x double> %i.fb, ptr %i.ex, align 8, !tbaa !13, !alias.scope !39, !noalias !40
  %i.fc = fmul <2 x double> %broadcast.splat100, %wide.load101
  %i.fd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.fc)
  store <2 x double> %i.fd, ptr %i.ey, align 8, !tbaa !13, !alias.scope !40
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %.lr.ph53.i67.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i62, %middle.block
  %indvars.iv.i63.ph = phi i64 [ %i.dv, %vector.memcheck ], [ %i.dv, %.lr.ph.i62 ], [ %i.ev, %middle.block ]
  %i.ff = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.fg = insertelement <2 x double> %i.ff, double %i.ee, i64 1
  %i.fh = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.fi = insertelement <2 x double> %i.fh, double %i.ef, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i63 = phi i64 [ %indvars.iv.next.i64, %scalar.ph ], [ %indvars.iv.i63.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %indvars.iv.i63 ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !13
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %indvars.iv.i63 ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !13 ; 2 uses
  %i.fn = fneg double %i.fm
  %i.fo = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fn, i64 1
  %i.fq = fmul <2 x double> %i.fg, %i.fp
  %i.fr = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.fs, <2 x double> %i.fq) ; 2 uses
  %i.fu = extractelement <2 x double> %i.ft, i64 1
  store double %i.fu, ptr %i.fj, align 8, !tbaa !13
  %i.fv = extractelement <2 x double> %i.ft, i64 0
  store double %i.fv, ptr %i.fl, align 8, !tbaa !13
  %indvars.iv.next.i64 = add nsw i64 %indvars.iv.i63, 1 ; 2 uses
  %lftr.wideiv.i65 = trunc i64 %indvars.iv.next.i64 to i32
  %exitcond.not.i66 = icmp eq i32 %i.er, %lftr.wideiv.i65
  br i1 %exitcond.not.i66, label %.lr.ph53.i67.preheader, label %scalar.ph, !llvm.loop !33

.lr.ph53.i67.preheader:                           ; preds = %scalar.ph, %middle.block
  %i.fw = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.fx = insertelement <2 x double> %i.fw, double %i.ef, i64 1
  %i.fy = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.fz = insertelement <2 x double> %i.fy, double %i.ee, i64 1
  br label %.lr.ph53.i67

.lr.ph53.i67:                                     ; preds = %.lr.ph53.i67.preheader, %.lr.ph53.i67
  %indvars.iv55.i68 = phi i64 [ %indvars.iv.next56.i69, %.lr.ph53.i67 ], [ %i.dv, %.lr.ph53.i67.preheader ] ; 2 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv55.i68
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !11 ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.dy ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !13
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.next81
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !13 ; 2 uses
  %i.gg = fneg double %i.gf
  %i.gh = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gi = insertelement <2 x double> %i.gh, double %i.gf, i64 1
  %i.gj = fmul <2 x double> %i.fx, %i.gi
  %i.gk = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.gl, <2 x double> %i.gj)
  store <2 x double> %i.gm, ptr %i.gc, align 8, !tbaa !13
  %indvars.iv.next56.i69 = add nsw i64 %indvars.iv55.i68, 1 ; 2 uses
  %lftr.wideiv58.i70 = trunc i64 %indvars.iv.next56.i69 to i32
  %exitcond59.not.i71 = icmp eq i32 %i.er, %lftr.wideiv58.i70
  br i1 %exitcond59.not.i71, label %ApplyGivens.exit72.loopexit, label %.lr.ph53.i67, !llvm.loop !0

ApplyGivens.exit72.loopexit:                      ; preds = %.lr.ph53.i67
  %.pre = load double, ptr %i.a, align 8, !tbaa !13
  %.pre89 = load double, ptr %i.b, align 8, !tbaa !13
  br label %ApplyGivens.exit72

ApplyGivens.exit72:                               ; preds = %ApplyGivens.exit72.loopexit, %.lr.ph
  %i.gn = phi double [ %.pre89, %ApplyGivens.exit72.loopexit ], [ %i.ef, %.lr.ph ]
  %i.go = phi double [ %.pre, %ApplyGivens.exit72.loopexit ], [ %i.ee, %.lr.ph ]
  call void @ApplyRGivens(ptr noundef %i.c, double noundef %i.go, double noundef %i.gn, i32 noundef %i.dz, i32 noundef %indvars) #5
  %i.gp = icmp slt i64 %indvars.iv.next81, %i.z
  %indvar.next95 = add i64 %indvar94, 1
  br i1 %i.gp, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %ApplyGivens.exit72, %ApplyGivens.exit.loopexit
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.gq = icmp slt i64 %indvars.iv.next84, %i.z
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br i1 %i.gq, label %.lr.ph.i, label %._crit_edge75, !llvm.loop !35

._crit_edge75:                                    ; preds = %._crit_edge, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.gr = icmp sgt i64 %indvars.iv, 2
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gr, label %.preheader, label %._crit_edge77, !llvm.loop !36

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
!17 = distinct !{!17, !"LVerDomain"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !14, !15, !16}
!21 = distinct !{!21, !14, !15}
!22 = !{!18}
!23 = !{!19}
!24 = distinct !{!24, !"LVerDomain"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !14, !15, !16}
!28 = distinct !{!28, !14, !15}
!29 = distinct !{!29, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !14, !15, !16}
!33 = distinct !{!33, !14, !15}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = !{!25}
!38 = !{!26}
!39 = !{!30}
!40 = !{!31}
end_hunk_0
