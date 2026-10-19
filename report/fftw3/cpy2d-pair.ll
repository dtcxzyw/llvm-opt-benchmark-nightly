Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/cpy2d-pair?download=true
inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @fftw_cpy2d_pair(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  %i.b = icmp sgt i64 %4, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge30.split

.preheader.preheader:                             ; preds = %bb.a
  %i.c = add nsw i64 %7, -1                       ; 2 uses
  %i.d = mul i64 %9, %i.c
  %i.e = add i64 %i.d, %4
  %i.f = shl i64 %i.e, 3                          ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.f   ; 3 uses
  %scevgep35 = getelementptr i8, ptr %3, i64 %i.f ; 3 uses
  %i.g = mul i64 %8, %i.c
  %i.h = add i64 %i.g, %4
  %i.i = shl i64 %i.h, 3                          ; 2 uses
  %scevgep36 = getelementptr i8, ptr %0, i64 %i.i ; 2 uses
  %scevgep37 = getelementptr i8, ptr %1, i64 %i.i ; 2 uses
  %min.iters.check = icmp ult i64 %4, 18
  %ident.check = icmp ne i64 %6, 1
  %ident.check34 = icmp ne i64 %5, 1
  %i.j = or i1 %ident.check, %ident.check34
  %bound0 = icmp ult ptr %2, %scevgep35
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %9, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.k = or i1 %found.conflict, %stride.check
  %bound039 = icmp ult ptr %2, %scevgep36
  %bound140 = icmp ult ptr %0, %scevgep
  %found.conflict41 = and i1 %bound039, %bound140
  %.mask57 = and i64 %8, 1152921504606846976
  %stride.check41 = icmp ne i64 %.mask57, 0
  %i.l = or i1 %found.conflict41, %stride.check41
  %conflict.rdx = or i1 %i.k, %i.l
  %bound044 = icmp ult ptr %2, %scevgep37
  %bound145 = icmp ult ptr %1, %scevgep
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx49.a = or i1 %conflict.rdx, %found.conflict46
  %bound050.a = icmp ult ptr %3, %scevgep36
  %bound151.a = icmp ult ptr %0, %scevgep35
  %found.conflict52.a = and i1 %bound050.a, %bound151.a
  %conflict.rdx55 = or i1 %conflict.rdx49.a, %found.conflict52.a
  %bound056 = icmp ult ptr %3, %scevgep37
  %bound157 = icmp ult ptr %1, %scevgep35
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx61 = or i1 %conflict.rdx55, %found.conflict58
  %n.vec = and i64 %4, 9223372036854775804        ; 3 uses
  %cmp.n = icmp eq i64 %4, %n.vec
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.02729 = phi i64 [ %i.ce, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.m = mul nsw i64 %.02729, %8                  ; 6 uses
  %i.n = mul nsw i64 %.02729, %9                  ; 6 uses
  %brmerge = or i1 %min.iters.check, %i.j
  %brmerge65 = select i1 %brmerge, i1 true, i1 %conflict.rdx61
  br i1 %brmerge65, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.o = add nsw i64 %index, %i.m                 ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <2 x double>, ptr %i.p, align 8, !tbaa !11, !alias.scope !24
  %wide.load62 = load <2 x double>, ptr %i.q, align 8, !tbaa !11, !alias.scope !24
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load63 = load <2 x double>, ptr %i.r, align 8, !tbaa !11, !alias.scope !25
  %wide.load64 = load <2 x double>, ptr %i.s, align 8, !tbaa !11, !alias.scope !25
  %i.t = add nsw i64 %index, %i.n                 ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x double> %wide.load, ptr %i.u, align 8, !tbaa !11, !alias.scope !26, !noalias !27
  store <2 x double> %wide.load62, ptr %i.v, align 8, !tbaa !11, !alias.scope !26, !noalias !27
  %i.w = getelementptr inbounds [8 x i8], ptr %3, i64 %i.t ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x double> %wide.load63, ptr %i.w, align 8, !tbaa !11, !alias.scope !28, !noalias !29
  store <2 x double> %wide.load64, ptr %i.x, align 8, !tbaa !11, !alias.scope !28, !noalias !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.028.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.028.prol = phi i64 [ %i.aj, %scalar.ph.prol ], [ %.028.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = mul nsw i64 %.028.prol, %5
  %i.aa = add nsw i64 %i.z, %i.m                  ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !11
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aa
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !11
  %i.af = mul nsw i64 %.028.prol, %6
  %i.ag = add nsw i64 %i.af, %i.n                 ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  store double %i.ac, ptr %i.ah, align 8, !tbaa !11
  %i.ai = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ag
  store double %i.ae, ptr %i.ai, align 8, !tbaa !11
  %i.aj = add nuw nsw i64 %.028.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !22

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.028.unr = phi i64 [ %.028.ph, %scalar.ph.preheader ], [ %i.aj, %scalar.ph.prol ]
  %i.ak = sub nsw i64 %.028.ph, %4
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.028 = phi i64 [ %i.cd, %scalar.ph ], [ %.028.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.am = mul nsw i64 %.028, %5
  %i.an = add nsw i64 %i.am, %i.m                 ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !11
  %i.aq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.an
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !11
  %i.as = mul nsw i64 %.028, %6
  %i.at = add nsw i64 %i.as, %i.n                 ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %2, i64 %i.at
  store double %i.ap, ptr %i.au, align 8, !tbaa !11
  %i.av = getelementptr inbounds [8 x i8], ptr %3, i64 %i.at
  store double %i.ar, ptr %i.av, align 8, !tbaa !11
  %i.aw = add nuw nsw i64 %.028, 1                ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %5
  %i.ay = add nsw i64 %i.ax, %i.m                 ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !11
  %i.bb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ay
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !11
  %i.bd = mul nsw i64 %i.aw, %6
  %i.be = add nsw i64 %i.bd, %i.n                 ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %2, i64 %i.be
  store double %i.ba, ptr %i.bf, align 8, !tbaa !11
  %i.bg = getelementptr inbounds [8 x i8], ptr %3, i64 %i.be
  store double %i.bc, ptr %i.bg, align 8, !tbaa !11
  %i.bh = add nuw nsw i64 %.028, 2                ; 2 uses
  %i.bi = mul nsw i64 %i.bh, %5
  %i.bj = add nsw i64 %i.bi, %i.m                 ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !11
  %i.bm = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bj
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !11
  %i.bo = mul nsw i64 %i.bh, %6
  %i.bp = add nsw i64 %i.bo, %i.n                 ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bp
  store double %i.bl, ptr %i.bq, align 8, !tbaa !11
  %i.br = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bp
  store double %i.bn, ptr %i.br, align 8, !tbaa !11
  %i.bs = add nuw nsw i64 %.028, 3                ; 2 uses
  %i.bt = mul nsw i64 %i.bs, %5
  %i.bu = add nsw i64 %i.bt, %i.m                 ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !11
  %i.bx = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bu
  %i.by = load double, ptr %i.bx, align 8, !tbaa !11
  %i.bz = mul nsw i64 %i.bs, %6
  %i.ca = add nsw i64 %i.bz, %i.n                 ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ca
  store double %i.bw, ptr %i.cb, align 8, !tbaa !11
  %i.cc = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ca
  store double %i.by, ptr %i.cc, align 8, !tbaa !11
  %i.cd = add nuw nsw i64 %.028, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cd, %4
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ce = add nuw nsw i64 %.02729, 1              ; 2 uses
  %exitcond31.not = icmp eq i64 %i.ce, %7
  br i1 %exitcond31.not, label %._crit_edge30.split, label %.preheader, !llvm.loop !0

._crit_edge30.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @fftw_zero1d_pair(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %min.iters.check = icmp ult i64 %2, 8
  %ident.check.not = icmp ne i64 %3, 1
  %or.cond.not10 = or i1 %min.iters.check, %ident.check.not
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond9 = or i1 %or.cond.not10, %diff.check
  br i1 %or.cond9, label %.lr.ph.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, 9223372036854775804        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <2 x double> zeroinitializer, ptr %i.e, align 8, !tbaa !11
  store <2 x double> zeroinitializer, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <2 x double> zeroinitializer, ptr %i.g, align 8, !tbaa !11
  store <2 x double> zeroinitializer, ptr %i.h, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader11

.lr.ph.preheader11:                               ; preds = %.lr.ph.preheader, %middle.block
  %.08.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.j = sub nsw i64 %2, %.08.ph
  %xtraiter = and i64 %i.j, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader11, %.lr.ph.prol
  %.08.prol = phi i64 [ %i.n, %.lr.ph.prol ], [ %.08.ph, %.lr.ph.preheader11 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader11 ]
  %i.k = mul nsw i64 %.08.prol, %3                ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k
  store double 0.000000e+00, ptr %i.l, align 8, !tbaa !11
  %i.m = getelementptr inbounds [8 x i8], ptr %1, i64 %i.k
  store double 0.000000e+00, ptr %i.m, align 8, !tbaa !11
  %i.n = add nuw nsw i64 %.08.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !31

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader11
  %.08.unr = phi i64 [ %.08.ph, %.lr.ph.preheader11 ], [ %i.n, %.lr.ph.prol ]
  %i.o = sub nsw i64 %.08.ph, %2
  %i.p = icmp ugt i64 %i.o, -8
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.08 = phi i64 [ %i.av, %.lr.ph ], [ %.08.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.q = mul nsw i64 %.08, %3                     ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  store double 0.000000e+00, ptr %i.r, align 8, !tbaa !11
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.q
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !11
  %i.t = add nuw nsw i64 %.08, 1
  %i.u = mul nsw i64 %i.t, %3                     ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !11
  %i.w = getelementptr inbounds [8 x i8], ptr %1, i64 %i.u
  store double 0.000000e+00, ptr %i.w, align 8, !tbaa !11
  %i.x = add nuw nsw i64 %.08, 2
  %i.y = mul nsw i64 %i.x, %3                     ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %i.y
  store double 0.000000e+00, ptr %i.z, align 8, !tbaa !11
  %i.aa = getelementptr inbounds [8 x i8], ptr %1, i64 %i.y
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !11
  %i.ab = add nuw nsw i64 %.08, 3
  %i.ac = mul nsw i64 %i.ab, %3                   ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ac
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !11
  %i.ae = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ac
  store double 0.000000e+00, ptr %i.ae, align 8, !tbaa !11
  %i.af = add nuw nsw i64 %.08, 4
  %i.ag = mul nsw i64 %i.af, %3                   ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  store double 0.000000e+00, ptr %i.ah, align 8, !tbaa !11
  %i.ai = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ag
  store double 0.000000e+00, ptr %i.ai, align 8, !tbaa !11
  %i.aj = add nuw nsw i64 %.08, 5
  %i.ak = mul nsw i64 %i.aj, %3                   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak
  store double 0.000000e+00, ptr %i.al, align 8, !tbaa !11
  %i.am = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  store double 0.000000e+00, ptr %i.am, align 8, !tbaa !11
  %i.an = add nuw nsw i64 %.08, 6
  %i.ao = mul nsw i64 %i.an, %3                   ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  store double 0.000000e+00, ptr %i.ap, align 8, !tbaa !11
  %i.aq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ao
  store double 0.000000e+00, ptr %i.aq, align 8, !tbaa !11
  %i.ar = add nuw nsw i64 %.08, 7
  %i.as = mul nsw i64 %i.ar, %3                   ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  store double 0.000000e+00, ptr %i.at, align 8, !tbaa !11
  %i.au = getelementptr inbounds [8 x i8], ptr %1, i64 %i.as
  store double 0.000000e+00, ptr %i.au, align 8, !tbaa !11
  %i.av = add nuw nsw i64 %.08, 8                 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.av, %2
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @fftw_cpy2d_pair_ci(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @llvm.abs.i64(i64 %5, i1 true)
  %i.b = tail call i64 @llvm.abs.i64(i64 %8, i1 true)
  %i.c = icmp samesign ult i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %4, 0
  %or.cond.i = and i1 %i.e, %i.d
  br i1 %or.cond.i, label %.preheader.i.preheader, label %fftw_cpy2d_pair.exit

.preheader.i.preheader:                           ; preds = %bb.b
  %i.f = add nsw i64 %7, -1                       ; 2 uses
  %i.g = mul i64 %9, %i.f
  %i.h = add i64 %i.g, %4
  %i.i = shl i64 %i.h, 3                          ; 2 uses
  %scevgep76 = getelementptr i8, ptr %2, i64 %i.i ; 3 uses
  %scevgep77 = getelementptr i8, ptr %3, i64 %i.i ; 3 uses
  %i.j = mul i64 %8, %i.f
  %i.k = add i64 %i.j, %4
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %scevgep78 = getelementptr i8, ptr %0, i64 %i.l ; 2 uses
  %scevgep79 = getelementptr i8, ptr %1, i64 %i.l ; 2 uses
  %min.iters.check110 = icmp ult i64 %4, 18
  %ident.check73 = icmp ne i64 %6, 1
  %ident.check74 = icmp ne i64 %5, 1
  %i.m = or i1 %ident.check73, %ident.check74
  %bound080 = icmp ult ptr %2, %scevgep77
  %bound181 = icmp ult ptr %3, %scevgep76
  %found.conflict82 = and i1 %bound080, %bound181
  %.mask108 = and i64 %9, 1152921504606846976
  %stride.check75 = icmp ne i64 %.mask108, 0
  %i.n = or i1 %found.conflict82, %stride.check75
  %bound085.a = icmp ult ptr %2, %scevgep78
  %bound186.a = icmp ult ptr %0, %scevgep76
  %found.conflict87.a = and i1 %bound085.a, %bound186.a
  %.mask109 = and i64 %8, 1152921504606846976
  %stride.check79 = icmp ne i64 %.mask109, 0
  %i.o = or i1 %found.conflict87.a, %stride.check79
  %conflict.rdx90 = or i1 %i.n, %i.o
  %bound091 = icmp ult ptr %2, %scevgep79
  %bound192 = icmp ult ptr %1, %scevgep76
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx96 = or i1 %conflict.rdx90, %found.conflict93
  %bound097 = icmp ult ptr %3, %scevgep78
  %bound198 = icmp ult ptr %0, %scevgep77
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx102 = or i1 %conflict.rdx96, %found.conflict99
  %bound0103 = icmp ult ptr %3, %scevgep79
  %bound1104 = icmp ult ptr %1, %scevgep77
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx108 = or i1 %conflict.rdx102, %found.conflict105
  %n.vec112 = and i64 %4, 9223372036854775804     ; 3 uses
  %cmp.n121 = icmp eq i64 %4, %n.vec112
  %xtraiter124 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.02729.i = phi i64 [ %i.ch, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %i.p = mul nsw i64 %.02729.i, %8                ; 6 uses
  %i.q = mul nsw i64 %.02729.i, %9                ; 6 uses
  %brmerge = or i1 %min.iters.check110, %i.m
  %brmerge128 = select i1 %brmerge, i1 true, i1 %conflict.rdx108
  br i1 %brmerge128, label %scalar.ph109.preheader, label %vector.body113

vector.body113:                                   ; preds = %.preheader.i, %vector.body113
  %index114 = phi i64 [ %index.next119, %vector.body113 ], [ 0, %.preheader.i ] ; 3 uses
  %i.r = add nsw i64 %index114, %i.p              ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load115 = load <2 x double>, ptr %i.s, align 8, !tbaa !11, !alias.scope !49
  %wide.load116 = load <2 x double>, ptr %i.t, align 8, !tbaa !11, !alias.scope !49
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load117 = load <2 x double>, ptr %i.u, align 8, !tbaa !11, !alias.scope !50
  %wide.load118 = load <2 x double>, ptr %i.v, align 8, !tbaa !11, !alias.scope !50
  %i.w = add nsw i64 %index114, %i.q              ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x double> %wide.load115, ptr %i.x, align 8, !tbaa !11, !alias.scope !51, !noalias !52
  store <2 x double> %wide.load116, ptr %i.y, align 8, !tbaa !11, !alias.scope !51, !noalias !52
  %i.z = getelementptr inbounds [8 x i8], ptr %3, i64 %i.w ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x double> %wide.load117, ptr %i.z, align 8, !tbaa !11, !alias.scope !53, !noalias !54
  store <2 x double> %wide.load118, ptr %i.aa, align 8, !tbaa !11, !alias.scope !53, !noalias !54
  %index.next119 = add nuw i64 %index114, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next119, %n.vec112
  br i1 %i.ab, label %middle.block120, label %vector.body113, !llvm.loop !38

middle.block120:                                  ; preds = %vector.body113
  br i1 %cmp.n121, label %._crit_edge.i, label %scalar.ph109.preheader

scalar.ph109.preheader:                           ; preds = %.preheader.i, %middle.block120
  %.028.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec112, %middle.block120 ] ; 3 uses
  br i1 %lcmp.mod125.not, label %scalar.ph109.prol.loopexit, label %scalar.ph109.prol

scalar.ph109.prol:                                ; preds = %scalar.ph109.preheader, %scalar.ph109.prol
  %.028.i.prol = phi i64 [ %i.am, %scalar.ph109.prol ], [ %.028.i.ph, %scalar.ph109.preheader ] ; 3 uses
  %prol.iter126 = phi i64 [ %prol.iter126.next, %scalar.ph109.prol ], [ 0, %scalar.ph109.preheader ]
  %i.ac = mul nsw i64 %.028.i.prol, %5
  %i.ad = add nsw i64 %i.ac, %i.p                 ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !11
  %i.ag = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ad
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !11
  %i.ai = mul nsw i64 %.028.i.prol, %6
  %i.aj = add nsw i64 %i.ai, %i.q                 ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aj
  store double %i.af, ptr %i.ak, align 8, !tbaa !11
  %i.al = getelementptr inbounds [8 x i8], ptr %3, i64 %i.aj
  store double %i.ah, ptr %i.al, align 8, !tbaa !11
  %i.am = add nuw nsw i64 %.028.i.prol, 1         ; 2 uses
  %prol.iter126.next = add i64 %prol.iter126, 1   ; 2 uses
  %prol.iter126.cmp.not = icmp eq i64 %prol.iter126.next, %xtraiter124
  br i1 %prol.iter126.cmp.not, label %scalar.ph109.prol.loopexit, label %scalar.ph109.prol, !llvm.loop !39

scalar.ph109.prol.loopexit:                       ; preds = %scalar.ph109.prol, %scalar.ph109.preheader
  %.028.i.unr = phi i64 [ %.028.i.ph, %scalar.ph109.preheader ], [ %i.am, %scalar.ph109.prol ]
  %i.an = sub nsw i64 %.028.i.ph, %4
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge.i, label %scalar.ph109

scalar.ph109:                                     ; preds = %scalar.ph109.prol.loopexit, %scalar.ph109
  %.028.i = phi i64 [ %i.cg, %scalar.ph109 ], [ %.028.i.unr, %scalar.ph109.prol.loopexit ] ; 6 uses
  %i.ap = mul nsw i64 %.028.i, %5
  %i.aq = add nsw i64 %i.ap, %i.p                 ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !11
  %i.at = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aq
  %i.au = load double, ptr %i.at, align 8, !tbaa !11
  %i.av = mul nsw i64 %.028.i, %6
  %i.aw = add nsw i64 %i.av, %i.q                 ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aw
  store double %i.as, ptr %i.ax, align 8, !tbaa !11
  %i.ay = getelementptr inbounds [8 x i8], ptr %3, i64 %i.aw
  store double %i.au, ptr %i.ay, align 8, !tbaa !11
  %i.az = add nuw nsw i64 %.028.i, 1              ; 2 uses
  %i.ba = mul nsw i64 %i.az, %5
  %i.bb = add nsw i64 %i.ba, %i.p                 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !11
  %i.be = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bb
  %i.bf = load double, ptr %i.be, align 8, !tbaa !11
  %i.bg = mul nsw i64 %i.az, %6
  %i.bh = add nsw i64 %i.bg, %i.q                 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bh
  store double %i.bd, ptr %i.bi, align 8, !tbaa !11
  %i.bj = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bh
  store double %i.bf, ptr %i.bj, align 8, !tbaa !11
  %i.bk = add nuw nsw i64 %.028.i, 2              ; 2 uses
  %i.bl = mul nsw i64 %i.bk, %5
  %i.bm = add nsw i64 %i.bl, %i.p                 ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !11
  %i.bp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !11
  %i.br = mul nsw i64 %i.bk, %6
  %i.bs = add nsw i64 %i.br, %i.q                 ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bs
  store double %i.bo, ptr %i.bt, align 8, !tbaa !11
  %i.bu = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bs
  store double %i.bq, ptr %i.bu, align 8, !tbaa !11
  %i.bv = add nuw nsw i64 %.028.i, 3              ; 2 uses
  %i.bw = mul nsw i64 %i.bv, %5
  %i.bx = add nsw i64 %i.bw, %i.p                 ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !11
  %i.ca = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bx
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !11
  %i.cc = mul nsw i64 %i.bv, %6
  %i.cd = add nsw i64 %i.cc, %i.q                 ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cd
  store double %i.bz, ptr %i.ce, align 8, !tbaa !11
  %i.cf = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cd
  store double %i.cb, ptr %i.cf, align 8, !tbaa !11
  %i.cg = add nuw nsw i64 %.028.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cg, %4
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph109, !llvm.loop !40

._crit_edge.i:                                    ; preds = %scalar.ph109.prol.loopexit, %scalar.ph109, %middle.block120
  %i.ch = add nuw nsw i64 %.02729.i, 1            ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.ch, %7
  br i1 %exitcond31.not.i, label %fftw_cpy2d_pair.exit, label %.preheader.i, !llvm.loop !0

bb.c:                                             ; preds = %bb.a
  %i.ci = icmp sgt i64 %4, 0
  %i.cj = icmp sgt i64 %7, 0
  %or.cond.i25 = and i1 %i.ci, %i.cj
  br i1 %or.cond.i25, label %.preheader.i26.preheader, label %fftw_cpy2d_pair.exit

.preheader.i26.preheader:                         ; preds = %bb.c
  %i.ck = add nsw i64 %4, -1                      ; 2 uses
  %i.cl = mul i64 %6, %i.ck
  %i.cm = add i64 %i.cl, %7
  %i.cn = shl i64 %i.cm, 3                        ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.cn  ; 3 uses
  %scevgep42 = getelementptr i8, ptr %3, i64 %i.cn ; 3 uses
  %i.co = mul i64 %5, %i.ck
  %i.cp = add i64 %i.co, %7
  %i.cq = shl i64 %i.cp, 3                        ; 2 uses
  %scevgep43 = getelementptr i8, ptr %0, i64 %i.cq ; 2 uses
  %scevgep44 = getelementptr i8, ptr %1, i64 %i.cq ; 2 uses
  %min.iters.check = icmp ult i64 %7, 18
  %ident.check = icmp ne i64 %9, 1
  %ident.check41 = icmp ne i64 %8, 1
  %i.cr = or i1 %ident.check, %ident.check41
  %bound0 = icmp ult ptr %2, %scevgep42
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %6, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.cs = or i1 %found.conflict, %stride.check
  %bound046 = icmp ult ptr %2, %scevgep43
  %bound147 = icmp ult ptr %0, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %.mask107 = and i64 %5, 1152921504606846976
  %stride.check48 = icmp ne i64 %.mask107, 0
  %i.ct = or i1 %found.conflict48, %stride.check48
  %conflict.rdx = or i1 %i.cs, %i.ct
  %bound051 = icmp ult ptr %2, %scevgep44
  %bound152 = icmp ult ptr %1, %scevgep
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx56.a = or i1 %conflict.rdx, %found.conflict53
  %bound057.a = icmp ult ptr %3, %scevgep43
  %bound158.a = icmp ult ptr %0, %scevgep42
  %found.conflict59.a = and i1 %bound057.a, %bound158.a
  %conflict.rdx62 = or i1 %conflict.rdx56.a, %found.conflict59.a
  %bound063 = icmp ult ptr %3, %scevgep44
  %bound164 = icmp ult ptr %1, %scevgep42
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx68 = or i1 %conflict.rdx62, %found.conflict65
  %n.vec = and i64 %7, 9223372036854775804        ; 3 uses
  %cmp.n = icmp eq i64 %7, %n.vec
  %xtraiter = and i64 %7, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i26

.preheader.i26:                                   ; preds = %.preheader.i26.preheader, %._crit_edge.i30
  %.02729.i27 = phi i64 [ %i.fm, %._crit_edge.i30 ], [ 0, %.preheader.i26.preheader ] ; 3 uses
  %i.cu = mul nsw i64 %.02729.i27, %5             ; 6 uses
  %i.cv = mul nsw i64 %.02729.i27, %6             ; 6 uses
  %brmerge129 = or i1 %min.iters.check, %i.cr
  %brmerge130 = select i1 %brmerge129, i1 true, i1 %conflict.rdx68
  br i1 %brmerge130, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i26, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i26 ] ; 3 uses
  %i.cw = add nsw i64 %index, %i.cu               ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load = load <2 x double>, ptr %i.cx, align 8, !tbaa !11, !alias.scope !55
  %wide.load69 = load <2 x double>, ptr %i.cy, align 8, !tbaa !11, !alias.scope !55
  %i.cz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cw ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load70 = load <2 x double>, ptr %i.cz, align 8, !tbaa !11, !alias.scope !56
  %wide.load71 = load <2 x double>, ptr %i.da, align 8, !tbaa !11, !alias.scope !56
  %i.db = add nsw i64 %index, %i.cv               ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x double> %wide.load, ptr %i.dc, align 8, !tbaa !11, !alias.scope !57, !noalias !58
  store <2 x double> %wide.load69, ptr %i.dd, align 8, !tbaa !11, !alias.scope !57, !noalias !58
  %i.de = getelementptr inbounds [8 x i8], ptr %3, i64 %i.db ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <2 x double> %wide.load70, ptr %i.de, align 8, !tbaa !11, !alias.scope !59, !noalias !60
  store <2 x double> %wide.load71, ptr %i.df, align 8, !tbaa !11, !alias.scope !59, !noalias !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i30, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i26, %middle.block
  %.028.i28.ph = phi i64 [ 0, %.preheader.i26 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.028.i28.prol = phi i64 [ %i.dr, %scalar.ph.prol ], [ %.028.i28.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dh = mul nsw i64 %.028.i28.prol, %8
  %i.di = add nsw i64 %i.dh, %i.cu                ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !11
  %i.dl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.di
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !11
  %i.dn = mul nsw i64 %.028.i28.prol, %9
  %i.do = add nsw i64 %i.dn, %i.cv                ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %2, i64 %i.do
  store double %i.dk, ptr %i.dp, align 8, !tbaa !11
  %i.dq = getelementptr inbounds [8 x i8], ptr %3, i64 %i.do
  store double %i.dm, ptr %i.dq, align 8, !tbaa !11
  %i.dr = add nuw nsw i64 %.028.i28.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !47

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.028.i28.unr = phi i64 [ %.028.i28.ph, %scalar.ph.preheader ], [ %i.dr, %scalar.ph.prol ]
  %i.ds = sub nsw i64 %.028.i28.ph, %7
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %._crit_edge.i30, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.028.i28 = phi i64 [ %i.fl, %scalar.ph ], [ %.028.i28.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.du = mul nsw i64 %.028.i28, %8
  %i.dv = add nsw i64 %i.du, %i.cu                ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !11
  %i.dy = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dv
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !11
  %i.ea = mul nsw i64 %.028.i28, %9
  %i.eb = add nsw i64 %i.ea, %i.cv                ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %2, i64 %i.eb
  store double %i.dx, ptr %i.ec, align 8, !tbaa !11
  %i.ed = getelementptr inbounds [8 x i8], ptr %3, i64 %i.eb
  store double %i.dz, ptr %i.ed, align 8, !tbaa !11
  %i.ee = add nuw nsw i64 %.028.i28, 1            ; 2 uses
  %i.ef = mul nsw i64 %i.ee, %8
  %i.eg = add nsw i64 %i.ef, %i.cu                ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %0, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !11
  %i.ej = getelementptr inbounds [8 x i8], ptr %1, i64 %i.eg
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !11
  %i.el = mul nsw i64 %i.ee, %9
  %i.em = add nsw i64 %i.el, %i.cv                ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %2, i64 %i.em
  store double %i.ei, ptr %i.en, align 8, !tbaa !11
  %i.eo = getelementptr inbounds [8 x i8], ptr %3, i64 %i.em
  store double %i.ek, ptr %i.eo, align 8, !tbaa !11
  %i.ep = add nuw nsw i64 %.028.i28, 2            ; 2 uses
  %i.eq = mul nsw i64 %i.ep, %8
  %i.er = add nsw i64 %i.eq, %i.cu                ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %0, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !11
  %i.eu = getelementptr inbounds [8 x i8], ptr %1, i64 %i.er
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !11
  %i.ew = mul nsw i64 %i.ep, %9
  %i.ex = add nsw i64 %i.ew, %i.cv                ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ex
  store double %i.et, ptr %i.ey, align 8, !tbaa !11
  %i.ez = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ex
  store double %i.ev, ptr %i.ez, align 8, !tbaa !11
  %i.fa = add nuw nsw i64 %.028.i28, 3            ; 2 uses
  %i.fb = mul nsw i64 %i.fa, %8
  %i.fc = add nsw i64 %i.fb, %i.cu                ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fc
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !11
  %i.ff = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fc
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !11
  %i.fh = mul nsw i64 %i.fa, %9
  %i.fi = add nsw i64 %i.fh, %i.cv                ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fi
  store double %i.fe, ptr %i.fj, align 8, !tbaa !11
  %i.fk = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fi
  store double %i.fg, ptr %i.fk, align 8, !tbaa !11
  %i.fl = add nuw nsw i64 %.028.i28, 4            ; 2 uses
  %exitcond.not.i29.3 = icmp eq i64 %i.fl, %7
  br i1 %exitcond.not.i29.3, label %._crit_edge.i30, label %scalar.ph, !llvm.loop !48

._crit_edge.i30:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.fm = add nuw nsw i64 %.02729.i27, 1          ; 2 uses
  %exitcond31.not.i31 = icmp eq i64 %i.fm, %4
  br i1 %exitcond31.not.i31, label %fftw_cpy2d_pair.exit, label %.preheader.i26, !llvm.loop !0

fftw_cpy2d_pair.exit:                             ; preds = %._crit_edge.i30, %._crit_edge.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @fftw_cpy2d_pair_co(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @llvm.abs.i64(i64 %6, i1 true)
  %i.b = tail call i64 @llvm.abs.i64(i64 %9, i1 true)
  %i.c = icmp samesign ult i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %4, 0
  %or.cond.i = and i1 %i.e, %i.d
  br i1 %or.cond.i, label %.preheader.i.preheader, label %fftw_cpy2d_pair.exit

.preheader.i.preheader:                           ; preds = %bb.b
  %i.f = add nsw i64 %7, -1                       ; 2 uses
  %i.g = mul i64 %9, %i.f
  %i.h = add i64 %i.g, %4
  %i.i = shl i64 %i.h, 3                          ; 2 uses
  %scevgep76 = getelementptr i8, ptr %2, i64 %i.i ; 3 uses
  %scevgep77 = getelementptr i8, ptr %3, i64 %i.i ; 3 uses
  %i.j = mul i64 %8, %i.f
  %i.k = add i64 %i.j, %4
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %scevgep78 = getelementptr i8, ptr %0, i64 %i.l ; 2 uses
  %scevgep79 = getelementptr i8, ptr %1, i64 %i.l ; 2 uses
  %min.iters.check110 = icmp ult i64 %4, 18
  %ident.check73 = icmp ne i64 %6, 1
  %ident.check74 = icmp ne i64 %5, 1
  %i.m = or i1 %ident.check73, %ident.check74
  %bound080 = icmp ult ptr %2, %scevgep77
  %bound181 = icmp ult ptr %3, %scevgep76
  %found.conflict82 = and i1 %bound080, %bound181
  %.mask108 = and i64 %9, 1152921504606846976
  %stride.check75 = icmp ne i64 %.mask108, 0
  %i.n = or i1 %found.conflict82, %stride.check75
  %bound085.a = icmp ult ptr %2, %scevgep78
  %bound186.a = icmp ult ptr %0, %scevgep76
  %found.conflict87.a = and i1 %bound085.a, %bound186.a
  %.mask109 = and i64 %8, 1152921504606846976
  %stride.check79 = icmp ne i64 %.mask109, 0
  %i.o = or i1 %found.conflict87.a, %stride.check79
  %conflict.rdx90 = or i1 %i.n, %i.o
  %bound091 = icmp ult ptr %2, %scevgep79
  %bound192 = icmp ult ptr %1, %scevgep76
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx96 = or i1 %conflict.rdx90, %found.conflict93
  %bound097 = icmp ult ptr %3, %scevgep78
  %bound198 = icmp ult ptr %0, %scevgep77
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx102 = or i1 %conflict.rdx96, %found.conflict99
  %bound0103 = icmp ult ptr %3, %scevgep79
  %bound1104 = icmp ult ptr %1, %scevgep77
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx108 = or i1 %conflict.rdx102, %found.conflict105
  %n.vec112 = and i64 %4, 9223372036854775804     ; 3 uses
  %cmp.n121 = icmp eq i64 %4, %n.vec112
  %xtraiter124 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.02729.i = phi i64 [ %i.ch, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %i.p = mul nsw i64 %.02729.i, %8                ; 6 uses
  %i.q = mul nsw i64 %.02729.i, %9                ; 6 uses
  %brmerge = or i1 %min.iters.check110, %i.m
  %brmerge128 = select i1 %brmerge, i1 true, i1 %conflict.rdx108
  br i1 %brmerge128, label %scalar.ph109.preheader, label %vector.body113

vector.body113:                                   ; preds = %.preheader.i, %vector.body113
  %index114 = phi i64 [ %index.next119, %vector.body113 ], [ 0, %.preheader.i ] ; 3 uses
  %i.r = add nsw i64 %index114, %i.p              ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load115 = load <2 x double>, ptr %i.s, align 8, !tbaa !11, !alias.scope !77
  %wide.load116 = load <2 x double>, ptr %i.t, align 8, !tbaa !11, !alias.scope !77
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load117 = load <2 x double>, ptr %i.u, align 8, !tbaa !11, !alias.scope !78
  %wide.load118 = load <2 x double>, ptr %i.v, align 8, !tbaa !11, !alias.scope !78
  %i.w = add nsw i64 %index114, %i.q              ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x double> %wide.load115, ptr %i.x, align 8, !tbaa !11, !alias.scope !79, !noalias !80
  store <2 x double> %wide.load116, ptr %i.y, align 8, !tbaa !11, !alias.scope !79, !noalias !80
  %i.z = getelementptr inbounds [8 x i8], ptr %3, i64 %i.w ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x double> %wide.load117, ptr %i.z, align 8, !tbaa !11, !alias.scope !81, !noalias !82
  store <2 x double> %wide.load118, ptr %i.aa, align 8, !tbaa !11, !alias.scope !81, !noalias !82
  %index.next119 = add nuw i64 %index114, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next119, %n.vec112
  br i1 %i.ab, label %middle.block120, label %vector.body113, !llvm.loop !66

middle.block120:                                  ; preds = %vector.body113
  br i1 %cmp.n121, label %._crit_edge.i, label %scalar.ph109.preheader

scalar.ph109.preheader:                           ; preds = %.preheader.i, %middle.block120
  %.028.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec112, %middle.block120 ] ; 3 uses
  br i1 %lcmp.mod125.not, label %scalar.ph109.prol.loopexit, label %scalar.ph109.prol

scalar.ph109.prol:                                ; preds = %scalar.ph109.preheader, %scalar.ph109.prol
  %.028.i.prol = phi i64 [ %i.am, %scalar.ph109.prol ], [ %.028.i.ph, %scalar.ph109.preheader ] ; 3 uses
  %prol.iter126 = phi i64 [ %prol.iter126.next, %scalar.ph109.prol ], [ 0, %scalar.ph109.preheader ]
  %i.ac = mul nsw i64 %.028.i.prol, %5
  %i.ad = add nsw i64 %i.ac, %i.p                 ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !11
  %i.ag = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ad
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !11
  %i.ai = mul nsw i64 %.028.i.prol, %6
  %i.aj = add nsw i64 %i.ai, %i.q                 ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aj
  store double %i.af, ptr %i.ak, align 8, !tbaa !11
  %i.al = getelementptr inbounds [8 x i8], ptr %3, i64 %i.aj
  store double %i.ah, ptr %i.al, align 8, !tbaa !11
  %i.am = add nuw nsw i64 %.028.i.prol, 1         ; 2 uses
  %prol.iter126.next = add i64 %prol.iter126, 1   ; 2 uses
  %prol.iter126.cmp.not = icmp eq i64 %prol.iter126.next, %xtraiter124
  br i1 %prol.iter126.cmp.not, label %scalar.ph109.prol.loopexit, label %scalar.ph109.prol, !llvm.loop !67

scalar.ph109.prol.loopexit:                       ; preds = %scalar.ph109.prol, %scalar.ph109.preheader
  %.028.i.unr = phi i64 [ %.028.i.ph, %scalar.ph109.preheader ], [ %i.am, %scalar.ph109.prol ]
  %i.an = sub nsw i64 %.028.i.ph, %4
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge.i, label %scalar.ph109

scalar.ph109:                                     ; preds = %scalar.ph109.prol.loopexit, %scalar.ph109
  %.028.i = phi i64 [ %i.cg, %scalar.ph109 ], [ %.028.i.unr, %scalar.ph109.prol.loopexit ] ; 6 uses
  %i.ap = mul nsw i64 %.028.i, %5
  %i.aq = add nsw i64 %i.ap, %i.p                 ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !11
  %i.at = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aq
  %i.au = load double, ptr %i.at, align 8, !tbaa !11
  %i.av = mul nsw i64 %.028.i, %6
  %i.aw = add nsw i64 %i.av, %i.q                 ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aw
  store double %i.as, ptr %i.ax, align 8, !tbaa !11
  %i.ay = getelementptr inbounds [8 x i8], ptr %3, i64 %i.aw
  store double %i.au, ptr %i.ay, align 8, !tbaa !11
  %i.az = add nuw nsw i64 %.028.i, 1              ; 2 uses
  %i.ba = mul nsw i64 %i.az, %5
  %i.bb = add nsw i64 %i.ba, %i.p                 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !11
  %i.be = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bb
  %i.bf = load double, ptr %i.be, align 8, !tbaa !11
  %i.bg = mul nsw i64 %i.az, %6
  %i.bh = add nsw i64 %i.bg, %i.q                 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bh
  store double %i.bd, ptr %i.bi, align 8, !tbaa !11
  %i.bj = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bh
  store double %i.bf, ptr %i.bj, align 8, !tbaa !11
  %i.bk = add nuw nsw i64 %.028.i, 2              ; 2 uses
  %i.bl = mul nsw i64 %i.bk, %5
  %i.bm = add nsw i64 %i.bl, %i.p                 ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !11
  %i.bp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !11
  %i.br = mul nsw i64 %i.bk, %6
  %i.bs = add nsw i64 %i.br, %i.q                 ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bs
  store double %i.bo, ptr %i.bt, align 8, !tbaa !11
  %i.bu = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bs
  store double %i.bq, ptr %i.bu, align 8, !tbaa !11
  %i.bv = add nuw nsw i64 %.028.i, 3              ; 2 uses
  %i.bw = mul nsw i64 %i.bv, %5
  %i.bx = add nsw i64 %i.bw, %i.p                 ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !11
  %i.ca = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bx
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !11
  %i.cc = mul nsw i64 %i.bv, %6
  %i.cd = add nsw i64 %i.cc, %i.q                 ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cd
  store double %i.bz, ptr %i.ce, align 8, !tbaa !11
  %i.cf = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cd
  store double %i.cb, ptr %i.cf, align 8, !tbaa !11
  %i.cg = add nuw nsw i64 %.028.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cg, %4
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph109, !llvm.loop !68

._crit_edge.i:                                    ; preds = %scalar.ph109.prol.loopexit, %scalar.ph109, %middle.block120
  %i.ch = add nuw nsw i64 %.02729.i, 1            ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.ch, %7
  br i1 %exitcond31.not.i, label %fftw_cpy2d_pair.exit, label %.preheader.i, !llvm.loop !0

bb.c:                                             ; preds = %bb.a
  %i.ci = icmp sgt i64 %4, 0
  %i.cj = icmp sgt i64 %7, 0
  %or.cond.i25 = and i1 %i.ci, %i.cj
  br i1 %or.cond.i25, label %.preheader.i26.preheader, label %fftw_cpy2d_pair.exit

.preheader.i26.preheader:                         ; preds = %bb.c
  %i.ck = add nsw i64 %4, -1                      ; 2 uses
  %i.cl = mul i64 %6, %i.ck
  %i.cm = add i64 %i.cl, %7
  %i.cn = shl i64 %i.cm, 3                        ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.cn  ; 3 uses
  %scevgep42 = getelementptr i8, ptr %3, i64 %i.cn ; 3 uses
  %i.co = mul i64 %5, %i.ck
  %i.cp = add i64 %i.co, %7
  %i.cq = shl i64 %i.cp, 3                        ; 2 uses
  %scevgep43 = getelementptr i8, ptr %0, i64 %i.cq ; 2 uses
  %scevgep44 = getelementptr i8, ptr %1, i64 %i.cq ; 2 uses
  %min.iters.check = icmp ult i64 %7, 18
  %ident.check = icmp ne i64 %9, 1
  %ident.check41 = icmp ne i64 %8, 1
  %i.cr = or i1 %ident.check, %ident.check41
  %bound0 = icmp ult ptr %2, %scevgep42
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %6, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.cs = or i1 %found.conflict, %stride.check
  %bound046 = icmp ult ptr %2, %scevgep43
  %bound147 = icmp ult ptr %0, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %.mask107 = and i64 %5, 1152921504606846976
  %stride.check48 = icmp ne i64 %.mask107, 0
  %i.ct = or i1 %found.conflict48, %stride.check48
  %conflict.rdx = or i1 %i.cs, %i.ct
  %bound051 = icmp ult ptr %2, %scevgep44
  %bound152 = icmp ult ptr %1, %scevgep
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx56.a = or i1 %conflict.rdx, %found.conflict53
  %bound057.a = icmp ult ptr %3, %scevgep43
  %bound158.a = icmp ult ptr %0, %scevgep42
  %found.conflict59.a = and i1 %bound057.a, %bound158.a
  %conflict.rdx62 = or i1 %conflict.rdx56.a, %found.conflict59.a
  %bound063 = icmp ult ptr %3, %scevgep44
  %bound164 = icmp ult ptr %1, %scevgep42
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx68 = or i1 %conflict.rdx62, %found.conflict65
  %n.vec = and i64 %7, 9223372036854775804        ; 3 uses
  %cmp.n = icmp eq i64 %7, %n.vec
  %xtraiter = and i64 %7, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i26

.preheader.i26:                                   ; preds = %.preheader.i26.preheader, %._crit_edge.i30
  %.02729.i27 = phi i64 [ %i.fm, %._crit_edge.i30 ], [ 0, %.preheader.i26.preheader ] ; 3 uses
  %i.cu = mul nsw i64 %.02729.i27, %5             ; 6 uses
  %i.cv = mul nsw i64 %.02729.i27, %6             ; 6 uses
  %brmerge129 = or i1 %min.iters.check, %i.cr
  %brmerge130 = select i1 %brmerge129, i1 true, i1 %conflict.rdx68
  br i1 %brmerge130, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i26, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i26 ] ; 3 uses
  %i.cw = add nsw i64 %index, %i.cu               ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load = load <2 x double>, ptr %i.cx, align 8, !tbaa !11, !alias.scope !83
  %wide.load69 = load <2 x double>, ptr %i.cy, align 8, !tbaa !11, !alias.scope !83
  %i.cz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cw ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load70 = load <2 x double>, ptr %i.cz, align 8, !tbaa !11, !alias.scope !84
  %wide.load71 = load <2 x double>, ptr %i.da, align 8, !tbaa !11, !alias.scope !84
  %i.db = add nsw i64 %index, %i.cv               ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x double> %wide.load, ptr %i.dc, align 8, !tbaa !11, !alias.scope !85, !noalias !86
  store <2 x double> %wide.load69, ptr %i.dd, align 8, !tbaa !11, !alias.scope !85, !noalias !86
  %i.de = getelementptr inbounds [8 x i8], ptr %3, i64 %i.db ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <2 x double> %wide.load70, ptr %i.de, align 8, !tbaa !11, !alias.scope !87, !noalias !88
  store <2 x double> %wide.load71, ptr %i.df, align 8, !tbaa !11, !alias.scope !87, !noalias !88
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i30, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i26, %middle.block
  %.028.i28.ph = phi i64 [ 0, %.preheader.i26 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.028.i28.prol = phi i64 [ %i.dr, %scalar.ph.prol ], [ %.028.i28.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dh = mul nsw i64 %.028.i28.prol, %8
  %i.di = add nsw i64 %i.dh, %i.cu                ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !11
  %i.dl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.di
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !11
  %i.dn = mul nsw i64 %.028.i28.prol, %9
  %i.do = add nsw i64 %i.dn, %i.cv                ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %2, i64 %i.do
  store double %i.dk, ptr %i.dp, align 8, !tbaa !11
  %i.dq = getelementptr inbounds [8 x i8], ptr %3, i64 %i.do
  store double %i.dm, ptr %i.dq, align 8, !tbaa !11
  %i.dr = add nuw nsw i64 %.028.i28.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !75

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.028.i28.unr = phi i64 [ %.028.i28.ph, %scalar.ph.preheader ], [ %i.dr, %scalar.ph.prol ]
  %i.ds = sub nsw i64 %.028.i28.ph, %7
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %._crit_edge.i30, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.028.i28 = phi i64 [ %i.fl, %scalar.ph ], [ %.028.i28.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.du = mul nsw i64 %.028.i28, %8
  %i.dv = add nsw i64 %i.du, %i.cu                ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !11
  %i.dy = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dv
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !11
  %i.ea = mul nsw i64 %.028.i28, %9
  %i.eb = add nsw i64 %i.ea, %i.cv                ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %2, i64 %i.eb
  store double %i.dx, ptr %i.ec, align 8, !tbaa !11
  %i.ed = getelementptr inbounds [8 x i8], ptr %3, i64 %i.eb
  store double %i.dz, ptr %i.ed, align 8, !tbaa !11
  %i.ee = add nuw nsw i64 %.028.i28, 1            ; 2 uses
  %i.ef = mul nsw i64 %i.ee, %8
  %i.eg = add nsw i64 %i.ef, %i.cu                ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %0, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !11
  %i.ej = getelementptr inbounds [8 x i8], ptr %1, i64 %i.eg
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !11
  %i.el = mul nsw i64 %i.ee, %9
  %i.em = add nsw i64 %i.el, %i.cv                ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %2, i64 %i.em
  store double %i.ei, ptr %i.en, align 8, !tbaa !11
  %i.eo = getelementptr inbounds [8 x i8], ptr %3, i64 %i.em
  store double %i.ek, ptr %i.eo, align 8, !tbaa !11
  %i.ep = add nuw nsw i64 %.028.i28, 2            ; 2 uses
  %i.eq = mul nsw i64 %i.ep, %8
  %i.er = add nsw i64 %i.eq, %i.cu                ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %0, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !11
  %i.eu = getelementptr inbounds [8 x i8], ptr %1, i64 %i.er
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !11
  %i.ew = mul nsw i64 %i.ep, %9
  %i.ex = add nsw i64 %i.ew, %i.cv                ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ex
  store double %i.et, ptr %i.ey, align 8, !tbaa !11
  %i.ez = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ex
  store double %i.ev, ptr %i.ez, align 8, !tbaa !11
  %i.fa = add nuw nsw i64 %.028.i28, 3            ; 2 uses
  %i.fb = mul nsw i64 %i.fa, %8
  %i.fc = add nsw i64 %i.fb, %i.cu                ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fc
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !11
  %i.ff = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fc
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !11
  %i.fh = mul nsw i64 %i.fa, %9
  %i.fi = add nsw i64 %i.fh, %i.cv                ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fi
  store double %i.fe, ptr %i.fj, align 8, !tbaa !11
  %i.fk = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fi
  store double %i.fg, ptr %i.fk, align 8, !tbaa !11
  %i.fl = add nuw nsw i64 %.028.i28, 4            ; 2 uses
  %exitcond.not.i29.3 = icmp eq i64 %i.fl, %7
  br i1 %exitcond.not.i29.3, label %._crit_edge.i30, label %scalar.ph, !llvm.loop !76

._crit_edge.i30:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.fm = add nuw nsw i64 %.02729.i27, 1          ; 2 uses
  %exitcond31.not.i31 = icmp eq i64 %i.fm, %4
  br i1 %exitcond31.not.i31, label %fftw_cpy2d_pair.exit, label %.preheader.i26, !llvm.loop !0

fftw_cpy2d_pair.exit:                             ; preds = %._crit_edge.i30, %._crit_edge.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !12}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, i1 false, !"LVerDomain"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !12, !13, !14}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !12, !13}
!24 = !{!17}
!25 = !{!18}
!26 = !{!19}
!27 = !{!20, !17, !18}
!28 = !{!20}
!29 = !{!17, !18}
!30 = distinct !{!30, !12, !13, !14}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !12, !13}
!33 = distinct !{!33, i1 false, !"LVerDomain"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !12, !13, !14}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !12, !13}
!41 = distinct !{!41, i1 false, !"LVerDomain"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !41}
!45 = distinct !{!45, !41}
!46 = distinct !{!46, !12, !13, !14}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !12, !13}
!49 = !{!34}
!50 = !{!35}
!51 = !{!36}
end_hunk_0
