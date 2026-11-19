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
  %i.d = mul i64 %8, %i.c
  %10 = add i64 %i.d, %4
  %11 = shl i64 %10, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %11    ; 2 uses
  %scevgep54 = getelementptr i8, ptr %0, i64 %11  ; 2 uses
  %i.e = mul i64 %9, %i.c
  %i.f = add i64 %i.e, %4
  %i.g = shl i64 %i.f, 3                          ; 2 uses
  %scevgep55 = getelementptr i8, ptr %3, i64 %i.g ; 3 uses
  %scevgep56.a = getelementptr i8, ptr %2, i64 %i.g ; 3 uses
  %min.iters.check = icmp ult i64 %4, 18
  %ident.check = icmp ne i64 %6, 1
  %ident.check34 = icmp ne i64 %5, 1
  %i.h = or i1 %ident.check, %ident.check34
  %bound0 = icmp ult ptr %2, %scevgep55
  %bound1 = icmp ult ptr %3, %scevgep56.a
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %9, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %12 = or i1 %found.conflict, %stride.check
  %bound057 = icmp ult ptr %2, %scevgep54
  %bound158 = icmp ult ptr %0, %scevgep56.a
  %found.conflict59 = and i1 %bound057, %bound158
  %.mask76 = and i64 %8, 1152921504606846976
  %stride.check60 = icmp ne i64 %.mask76, 0
  %i.i = or i1 %found.conflict59, %stride.check60
  %conflict.rdx = or i1 %12, %i.i
  %bound061.a = icmp ult ptr %2, %scevgep
  %bound162 = icmp ult ptr %1, %scevgep56.a
  %found.conflict63.a = and i1 %bound061.a, %bound162
  %conflict.rdx64 = or i1 %conflict.rdx, %found.conflict63.a
  %bound065 = icmp ult ptr %3, %scevgep54
  %bound166 = icmp ult ptr %0, %scevgep55
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx68 = or i1 %conflict.rdx64, %found.conflict67
  %bound069 = icmp ult ptr %3, %scevgep
  %bound170 = icmp ult ptr %1, %scevgep55
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx72 = or i1 %conflict.rdx68, %found.conflict71
  %n.vec = and i64 %4, 9223372036854775804        ; 3 uses
  %cmp.n = icmp eq i64 %4, %n.vec
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.02729 = phi i64 [ %i.cb, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.j = mul nsw i64 %.02729, %8                  ; 6 uses
  %i.k = mul nsw i64 %.02729, %9                  ; 6 uses
  %brmerge = or i1 %min.iters.check, %i.h
  %brmerge77 = select i1 %brmerge, i1 true, i1 %conflict.rdx72
  br i1 %brmerge77, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.l = add nsw i64 %index, %i.j                 ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <2 x double>, ptr %i.m, align 8, !tbaa !11, !alias.scope !24
  %wide.load73 = load <2 x double>, ptr %i.n, align 8, !tbaa !11, !alias.scope !24
  %i.o = getelementptr inbounds [8 x i8], ptr %1, i64 %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load74 = load <2 x double>, ptr %i.o, align 8, !tbaa !11, !alias.scope !25
  %wide.load75 = load <2 x double>, ptr %i.p, align 8, !tbaa !11, !alias.scope !25
  %i.q = add nsw i64 %index, %i.k                 ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %2, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x double> %wide.load, ptr %i.r, align 8, !tbaa !11, !alias.scope !26, !noalias !27
  store <2 x double> %wide.load73, ptr %i.s, align 8, !tbaa !11, !alias.scope !26, !noalias !27
  %i.t = getelementptr inbounds [8 x i8], ptr %3, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x double> %wide.load74, ptr %i.t, align 8, !tbaa !11, !alias.scope !28, !noalias !29
  store <2 x double> %wide.load75, ptr %i.u, align 8, !tbaa !11, !alias.scope !28, !noalias !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.028.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.028.prol = phi i64 [ %i.ag, %scalar.ph.prol ], [ %.028.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = mul nsw i64 %.028.prol, %5
  %i.x = add nsw i64 %i.w, %i.j                   ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !11
  %i.aa = getelementptr inbounds [8 x i8], ptr %1, i64 %i.x
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !11
  %i.ac = mul nsw i64 %.028.prol, %6
  %i.ad = add nsw i64 %i.ac, %i.k                 ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ad
  store double %i.z, ptr %i.ae, align 8, !tbaa !11
  %i.af = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ad
  store double %i.ab, ptr %i.af, align 8, !tbaa !11
  %i.ag = add nuw nsw i64 %.028.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !22

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.028.unr = phi i64 [ %.028.ph, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %i.ah = sub nsw i64 %.028.ph, %4
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.028 = phi i64 [ %i.ca, %scalar.ph ], [ %.028.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aj = mul nsw i64 %.028, %5
  %i.ak = add nsw i64 %i.aj, %i.j                 ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !11
  %i.an = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %i.ao = load double, ptr %i.an, align 8, !tbaa !11
  %i.ap = mul nsw i64 %.028, %6
  %i.aq = add nsw i64 %i.ap, %i.k                 ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aq
  store double %i.am, ptr %i.ar, align 8, !tbaa !11
  %i.as = getelementptr inbounds [8 x i8], ptr %3, i64 %i.aq
  store double %i.ao, ptr %i.as, align 8, !tbaa !11
  %i.at = add nuw nsw i64 %.028, 1                ; 2 uses
  %i.au = mul nsw i64 %i.at, %5
  %i.av = add nsw i64 %i.au, %i.j                 ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !11
  %i.ay = getelementptr inbounds [8 x i8], ptr %1, i64 %i.av
  %i.az = load double, ptr %i.ay, align 8, !tbaa !11
  %i.ba = mul nsw i64 %i.at, %6
  %i.bb = add nsw i64 %i.ba, %i.k                 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bb
  store double %i.ax, ptr %i.bc, align 8, !tbaa !11
  %i.bd = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bb
  store double %i.az, ptr %i.bd, align 8, !tbaa !11
  %i.be = add nuw nsw i64 %.028, 2                ; 2 uses
  %i.bf = mul nsw i64 %i.be, %5
  %i.bg = add nsw i64 %i.bf, %i.j                 ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !11
  %i.bj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bg
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !11
  %i.bl = mul nsw i64 %i.be, %6
  %i.bm = add nsw i64 %i.bl, %i.k                 ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bm
  store double %i.bi, ptr %i.bn, align 8, !tbaa !11
  %i.bo = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bm
  store double %i.bk, ptr %i.bo, align 8, !tbaa !11
  %i.bp = add nuw nsw i64 %.028, 3                ; 2 uses
  %i.bq = mul nsw i64 %i.bp, %5
  %i.br = add nsw i64 %i.bq, %i.j                 ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !11
  %i.bu = getelementptr inbounds [8 x i8], ptr %1, i64 %i.br
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !11
  %i.bw = mul nsw i64 %i.bp, %6
  %i.bx = add nsw i64 %i.bw, %i.k                 ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bx
  store double %i.bt, ptr %i.by, align 8, !tbaa !11
  %i.bz = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bx
  store double %i.bv, ptr %i.bz, align 8, !tbaa !11
  %i.ca = add nuw nsw i64 %.028, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ca, %4
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cb = add nuw nsw i64 %.02729, 1              ; 2 uses
  %exitcond31.not = icmp eq i64 %i.cb, %7
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
  %i.g = mul i64 %8, %i.f
  %10 = add i64 %i.g, %4
  %11 = shl i64 %10, 3                            ; 2 uses
  %scevgep112 = getelementptr i8, ptr %1, i64 %11 ; 2 uses
  %scevgep113 = getelementptr i8, ptr %0, i64 %11 ; 2 uses
  %i.h = mul i64 %9, %i.f
  %i.i = add i64 %i.h, %4
  %i.j = shl i64 %i.i, 3                          ; 2 uses
  %scevgep114 = getelementptr i8, ptr %3, i64 %i.j ; 3 uses
  %scevgep115 = getelementptr i8, ptr %2, i64 %i.j ; 3 uses
  %min.iters.check117 = icmp ult i64 %4, 18
  %ident.check84 = icmp ne i64 %6, 1
  %ident.check85 = icmp ne i64 %5, 1
  %i.k = or i1 %ident.check84, %ident.check85
  %bound0119 = icmp ult ptr %2, %scevgep114
  %bound1120 = icmp ult ptr %3, %scevgep115
  %found.conflict121 = and i1 %bound0119, %bound1120
  %.mask153 = and i64 %9, 1152921504606846976
  %stride.check122 = icmp ne i64 %.mask153, 0
  %12 = or i1 %found.conflict121, %stride.check122
  %bound0123 = icmp ult ptr %2, %scevgep113
  %bound1124 = icmp ult ptr %0, %scevgep115
  %found.conflict125 = and i1 %bound0123, %bound1124
  %.mask154 = and i64 %8, 1152921504606846976
  %stride.check126 = icmp ne i64 %.mask154, 0
  %i.l = or i1 %found.conflict125, %stride.check126
  %conflict.rdx127 = or i1 %12, %i.l
  %bound0128 = icmp ult ptr %2, %scevgep112
  %bound1129 = icmp ult ptr %1, %scevgep115
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx131 = or i1 %conflict.rdx127, %found.conflict130
  %bound0132 = icmp ult ptr %3, %scevgep113
  %bound1133 = icmp ult ptr %0, %scevgep114
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx135 = or i1 %conflict.rdx131, %found.conflict134
  %bound0136 = icmp ult ptr %3, %scevgep112
  %bound1137 = icmp ult ptr %1, %scevgep114
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx139 = or i1 %conflict.rdx135, %found.conflict138
  %n.vec141 = and i64 %4, 9223372036854775804     ; 3 uses
  %cmp.n150 = icmp eq i64 %4, %n.vec141
  %xtraiter156 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod157.not = icmp eq i64 %xtraiter156, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.02729.i = phi i64 [ %i.ce, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %i.m = mul nsw i64 %.02729.i, %8                ; 6 uses
  %i.n = mul nsw i64 %.02729.i, %9                ; 6 uses
  %brmerge = or i1 %min.iters.check117, %i.k
  %brmerge160 = select i1 %brmerge, i1 true, i1 %conflict.rdx139
  br i1 %brmerge160, label %scalar.ph116.preheader, label %vector.body142

vector.body142:                                   ; preds = %.preheader.i, %vector.body142
  %index143 = phi i64 [ %index.next148, %vector.body142 ], [ 0, %.preheader.i ] ; 3 uses
  %i.o = add nsw i64 %index143, %i.m              ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load144 = load <2 x double>, ptr %i.p, align 8, !tbaa !11, !alias.scope !49
  %wide.load145 = load <2 x double>, ptr %i.q, align 8, !tbaa !11, !alias.scope !49
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load146 = load <2 x double>, ptr %i.r, align 8, !tbaa !11, !alias.scope !50
  %wide.load147 = load <2 x double>, ptr %i.s, align 8, !tbaa !11, !alias.scope !50
  %i.t = add nsw i64 %index143, %i.n              ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x double> %wide.load144, ptr %i.u, align 8, !tbaa !11, !alias.scope !51, !noalias !52
  store <2 x double> %wide.load145, ptr %i.v, align 8, !tbaa !11, !alias.scope !51, !noalias !52
  %i.w = getelementptr inbounds [8 x i8], ptr %3, i64 %i.t ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x double> %wide.load146, ptr %i.w, align 8, !tbaa !11, !alias.scope !53, !noalias !54
  store <2 x double> %wide.load147, ptr %i.x, align 8, !tbaa !11, !alias.scope !53, !noalias !54
  %index.next148 = add nuw i64 %index143, 4       ; 2 uses
  %i.y = icmp eq i64 %index.next148, %n.vec141
  br i1 %i.y, label %middle.block149, label %vector.body142, !llvm.loop !38

middle.block149:                                  ; preds = %vector.body142
  br i1 %cmp.n150, label %._crit_edge.i, label %scalar.ph116.preheader

scalar.ph116.preheader:                           ; preds = %.preheader.i, %middle.block149
  %.028.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec141, %middle.block149 ] ; 3 uses
  br i1 %lcmp.mod157.not, label %scalar.ph116.prol.loopexit, label %scalar.ph116.prol

scalar.ph116.prol:                                ; preds = %scalar.ph116.preheader, %scalar.ph116.prol
  %.028.i.prol = phi i64 [ %i.aj, %scalar.ph116.prol ], [ %.028.i.ph, %scalar.ph116.preheader ] ; 3 uses
  %prol.iter158 = phi i64 [ %prol.iter158.next, %scalar.ph116.prol ], [ 0, %scalar.ph116.preheader ]
  %i.z = mul nsw i64 %.028.i.prol, %5
  %i.aa = add nsw i64 %i.z, %i.m                  ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !11
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aa
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !11
  %i.af = mul nsw i64 %.028.i.prol, %6
  %i.ag = add nsw i64 %i.af, %i.n                 ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  store double %i.ac, ptr %i.ah, align 8, !tbaa !11
  %i.ai = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ag
  store double %i.ae, ptr %i.ai, align 8, !tbaa !11
  %i.aj = add nuw nsw i64 %.028.i.prol, 1         ; 2 uses
  %prol.iter158.next = add i64 %prol.iter158, 1   ; 2 uses
  %prol.iter158.cmp.not = icmp eq i64 %prol.iter158.next, %xtraiter156
  br i1 %prol.iter158.cmp.not, label %scalar.ph116.prol.loopexit, label %scalar.ph116.prol, !llvm.loop !39

scalar.ph116.prol.loopexit:                       ; preds = %scalar.ph116.prol, %scalar.ph116.preheader
  %.028.i.unr = phi i64 [ %.028.i.ph, %scalar.ph116.preheader ], [ %i.aj, %scalar.ph116.prol ]
  %i.ak = sub nsw i64 %.028.i.ph, %4
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %._crit_edge.i, label %scalar.ph116

scalar.ph116:                                     ; preds = %scalar.ph116.prol.loopexit, %scalar.ph116
  %.028.i = phi i64 [ %i.cd, %scalar.ph116 ], [ %.028.i.unr, %scalar.ph116.prol.loopexit ] ; 6 uses
  %i.am = mul nsw i64 %.028.i, %5
  %i.an = add nsw i64 %i.am, %i.m                 ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !11
  %i.aq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.an
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !11
  %i.as = mul nsw i64 %.028.i, %6
  %i.at = add nsw i64 %i.as, %i.n                 ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %2, i64 %i.at
  store double %i.ap, ptr %i.au, align 8, !tbaa !11
  %i.av = getelementptr inbounds [8 x i8], ptr %3, i64 %i.at
  store double %i.ar, ptr %i.av, align 8, !tbaa !11
  %i.aw = add nuw nsw i64 %.028.i, 1              ; 2 uses
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
  %i.bh = add nuw nsw i64 %.028.i, 2              ; 2 uses
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
  %i.bs = add nuw nsw i64 %.028.i, 3              ; 2 uses
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
  %i.cd = add nuw nsw i64 %.028.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cd, %4
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph116, !llvm.loop !40

._crit_edge.i:                                    ; preds = %scalar.ph116.prol.loopexit, %scalar.ph116, %middle.block149
  %i.ce = add nuw nsw i64 %.02729.i, 1            ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.ce, %7
  br i1 %exitcond31.not.i, label %fftw_cpy2d_pair.exit, label %.preheader.i, !llvm.loop !0

bb.c:                                             ; preds = %bb.a
  %i.cf = icmp sgt i64 %4, 0
  %i.cg = icmp sgt i64 %7, 0
  %or.cond.i25 = and i1 %i.cf, %i.cg
  br i1 %or.cond.i25, label %.preheader.i26.preheader, label %fftw_cpy2d_pair.exit

.preheader.i26.preheader:                         ; preds = %bb.c
  %i.ch = add nsw i64 %4, -1                      ; 2 uses
  %i.ci = mul i64 %5, %i.ch
  %13 = add i64 %i.ci, %7
  %14 = shl i64 %13, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %14    ; 2 uses
  %scevgep61 = getelementptr i8, ptr %0, i64 %14  ; 2 uses
  %i.cj = mul i64 %6, %i.ch
  %i.ck = add i64 %i.cj, %7
  %i.cl = shl i64 %i.ck, 3                        ; 2 uses
  %scevgep62 = getelementptr i8, ptr %3, i64 %i.cl ; 3 uses
  %scevgep63.a = getelementptr i8, ptr %2, i64 %i.cl ; 3 uses
  %min.iters.check = icmp ult i64 %7, 18
  %ident.check = icmp ne i64 %9, 1
  %ident.check41 = icmp ne i64 %8, 1
  %i.cm = or i1 %ident.check, %ident.check41
  %bound0 = icmp ult ptr %2, %scevgep62
  %bound1 = icmp ult ptr %3, %scevgep63.a
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %6, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %15 = or i1 %found.conflict, %stride.check
  %bound064 = icmp ult ptr %2, %scevgep61
  %bound165 = icmp ult ptr %0, %scevgep63.a
  %found.conflict66 = and i1 %bound064, %bound165
  %.mask152 = and i64 %5, 1152921504606846976
  %stride.check67 = icmp ne i64 %.mask152, 0
  %i.cn = or i1 %found.conflict66, %stride.check67
  %conflict.rdx = or i1 %15, %i.cn
  %bound068.a = icmp ult ptr %2, %scevgep
  %bound169 = icmp ult ptr %1, %scevgep63.a
  %found.conflict70.a = and i1 %bound068.a, %bound169
  %conflict.rdx71 = or i1 %conflict.rdx, %found.conflict70.a
  %bound072 = icmp ult ptr %3, %scevgep61
  %bound173 = icmp ult ptr %0, %scevgep62
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx75 = or i1 %conflict.rdx71, %found.conflict74
  %bound076 = icmp ult ptr %3, %scevgep
  %bound177 = icmp ult ptr %1, %scevgep62
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx79 = or i1 %conflict.rdx75, %found.conflict78
  %n.vec = and i64 %7, 9223372036854775804        ; 3 uses
  %cmp.n = icmp eq i64 %7, %n.vec
  %xtraiter = and i64 %7, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i26

.preheader.i26:                                   ; preds = %.preheader.i26.preheader, %._crit_edge.i30
  %.02729.i27 = phi i64 [ %i.fg, %._crit_edge.i30 ], [ 0, %.preheader.i26.preheader ] ; 3 uses
  %i.co = mul nsw i64 %.02729.i27, %5             ; 6 uses
  %i.cp = mul nsw i64 %.02729.i27, %6             ; 6 uses
  %brmerge161 = or i1 %min.iters.check, %i.cm
  %brmerge162 = select i1 %brmerge161, i1 true, i1 %conflict.rdx79
  br i1 %brmerge162, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i26, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i26 ] ; 3 uses
  %i.cq = add nsw i64 %index, %i.co               ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load = load <2 x double>, ptr %i.cr, align 8, !tbaa !11, !alias.scope !55
  %wide.load80 = load <2 x double>, ptr %i.cs, align 8, !tbaa !11, !alias.scope !55
  %i.ct = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cq ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load81 = load <2 x double>, ptr %i.ct, align 8, !tbaa !11, !alias.scope !56
  %wide.load82 = load <2 x double>, ptr %i.cu, align 8, !tbaa !11, !alias.scope !56
  %i.cv = add nsw i64 %index, %i.cp               ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <2 x double> %wide.load, ptr %i.cw, align 8, !tbaa !11, !alias.scope !57, !noalias !58
  store <2 x double> %wide.load80, ptr %i.cx, align 8, !tbaa !11, !alias.scope !57, !noalias !58
  %i.cy = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cv ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <2 x double> %wide.load81, ptr %i.cy, align 8, !tbaa !11, !alias.scope !59, !noalias !60
  store <2 x double> %wide.load82, ptr %i.cz, align 8, !tbaa !11, !alias.scope !59, !noalias !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i30, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i26, %middle.block
  %.028.i28.ph = phi i64 [ 0, %.preheader.i26 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.028.i28.prol = phi i64 [ %i.dl, %scalar.ph.prol ], [ %.028.i28.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.db = mul nsw i64 %.028.i28.prol, %8
  %i.dc = add nsw i64 %i.db, %i.co                ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !11
  %i.df = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dc
  %i.dg = load double, ptr %i.df, align 8, !tbaa !11
  %i.dh = mul nsw i64 %.028.i28.prol, %9
  %i.di = add nsw i64 %i.dh, %i.cp                ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.di
  store double %i.de, ptr %i.dj, align 8, !tbaa !11
  %i.dk = getelementptr inbounds [8 x i8], ptr %3, i64 %i.di
  store double %i.dg, ptr %i.dk, align 8, !tbaa !11
  %i.dl = add nuw nsw i64 %.028.i28.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !47

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.028.i28.unr = phi i64 [ %.028.i28.ph, %scalar.ph.preheader ], [ %i.dl, %scalar.ph.prol ]
  %i.dm = sub nsw i64 %.028.i28.ph, %7
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %._crit_edge.i30, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.028.i28 = phi i64 [ %i.ff, %scalar.ph ], [ %.028.i28.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.do = mul nsw i64 %.028.i28, %8
  %i.dp = add nsw i64 %i.do, %i.co                ; 2 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !11
  %i.ds = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dp
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !11
  %i.du = mul nsw i64 %.028.i28, %9
  %i.dv = add nsw i64 %i.du, %i.cp                ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dv
  store double %i.dr, ptr %i.dw, align 8, !tbaa !11
  %i.dx = getelementptr inbounds [8 x i8], ptr %3, i64 %i.dv
  store double %i.dt, ptr %i.dx, align 8, !tbaa !11
  %i.dy = add nuw nsw i64 %.028.i28, 1            ; 2 uses
  %i.dz = mul nsw i64 %i.dy, %8
  %i.ea = add nsw i64 %i.dz, %i.co                ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ea
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !11
  %i.ed = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ea
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !11
  %i.ef = mul nsw i64 %i.dy, %9
  %i.eg = add nsw i64 %i.ef, %i.cp                ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.eg
  store double %i.ec, ptr %i.eh, align 8, !tbaa !11
  %i.ei = getelementptr inbounds [8 x i8], ptr %3, i64 %i.eg
  store double %i.ee, ptr %i.ei, align 8, !tbaa !11
  %i.ej = add nuw nsw i64 %.028.i28, 2            ; 2 uses
  %i.ek = mul nsw i64 %i.ej, %8
  %i.el = add nsw i64 %i.ek, %i.co                ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %0, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !11
  %i.eo = getelementptr inbounds [8 x i8], ptr %1, i64 %i.el
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !11
  %i.eq = mul nsw i64 %i.ej, %9
  %i.er = add nsw i64 %i.eq, %i.cp                ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %2, i64 %i.er
  store double %i.en, ptr %i.es, align 8, !tbaa !11
  %i.et = getelementptr inbounds [8 x i8], ptr %3, i64 %i.er
  store double %i.ep, ptr %i.et, align 8, !tbaa !11
  %i.eu = add nuw nsw i64 %.028.i28, 3            ; 2 uses
  %i.ev = mul nsw i64 %i.eu, %8
  %i.ew = add nsw i64 %i.ev, %i.co                ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !11
  %i.ez = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ew
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !11
  %i.fb = mul nsw i64 %i.eu, %9
  %i.fc = add nsw i64 %i.fb, %i.cp                ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fc
  store double %i.ey, ptr %i.fd, align 8, !tbaa !11
  %i.fe = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fc
  store double %i.fa, ptr %i.fe, align 8, !tbaa !11
  %i.ff = add nuw nsw i64 %.028.i28, 4            ; 2 uses
  %exitcond.not.i29.3 = icmp eq i64 %i.ff, %7
  br i1 %exitcond.not.i29.3, label %._crit_edge.i30, label %scalar.ph, !llvm.loop !48

._crit_edge.i30:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.fg = add nuw nsw i64 %.02729.i27, 1          ; 2 uses
  %exitcond31.not.i31 = icmp eq i64 %i.fg, %4
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
  %i.g = mul i64 %8, %i.f
  %10 = add i64 %i.g, %4
  %11 = shl i64 %10, 3                            ; 2 uses
  %scevgep112 = getelementptr i8, ptr %1, i64 %11 ; 2 uses
  %scevgep113 = getelementptr i8, ptr %0, i64 %11 ; 2 uses
  %i.h = mul i64 %9, %i.f
  %i.i = add i64 %i.h, %4
  %i.j = shl i64 %i.i, 3                          ; 2 uses
  %scevgep114 = getelementptr i8, ptr %3, i64 %i.j ; 3 uses
  %scevgep115 = getelementptr i8, ptr %2, i64 %i.j ; 3 uses
  %min.iters.check117 = icmp ult i64 %4, 18
  %ident.check84 = icmp ne i64 %6, 1
  %ident.check85 = icmp ne i64 %5, 1
  %i.k = or i1 %ident.check84, %ident.check85
  %bound0119 = icmp ult ptr %2, %scevgep114
  %bound1120 = icmp ult ptr %3, %scevgep115
  %found.conflict121 = and i1 %bound0119, %bound1120
  %.mask153 = and i64 %9, 1152921504606846976
  %stride.check122 = icmp ne i64 %.mask153, 0
  %12 = or i1 %found.conflict121, %stride.check122
  %bound0123 = icmp ult ptr %2, %scevgep113
  %bound1124 = icmp ult ptr %0, %scevgep115
  %found.conflict125 = and i1 %bound0123, %bound1124
  %.mask154 = and i64 %8, 1152921504606846976
  %stride.check126 = icmp ne i64 %.mask154, 0
  %i.l = or i1 %found.conflict125, %stride.check126
  %conflict.rdx127 = or i1 %12, %i.l
  %bound0128 = icmp ult ptr %2, %scevgep112
  %bound1129 = icmp ult ptr %1, %scevgep115
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx131 = or i1 %conflict.rdx127, %found.conflict130
  %bound0132 = icmp ult ptr %3, %scevgep113
  %bound1133 = icmp ult ptr %0, %scevgep114
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx135 = or i1 %conflict.rdx131, %found.conflict134
  %bound0136 = icmp ult ptr %3, %scevgep112
  %bound1137 = icmp ult ptr %1, %scevgep114
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx139 = or i1 %conflict.rdx135, %found.conflict138
  %n.vec141 = and i64 %4, 9223372036854775804     ; 3 uses
  %cmp.n150 = icmp eq i64 %4, %n.vec141
  %xtraiter156 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod157.not = icmp eq i64 %xtraiter156, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.02729.i = phi i64 [ %i.ce, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %i.m = mul nsw i64 %.02729.i, %8                ; 6 uses
  %i.n = mul nsw i64 %.02729.i, %9                ; 6 uses
  %brmerge = or i1 %min.iters.check117, %i.k
  %brmerge160 = select i1 %brmerge, i1 true, i1 %conflict.rdx139
  br i1 %brmerge160, label %scalar.ph116.preheader, label %vector.body142

vector.body142:                                   ; preds = %.preheader.i, %vector.body142
  %index143 = phi i64 [ %index.next148, %vector.body142 ], [ 0, %.preheader.i ] ; 3 uses
  %i.o = add nsw i64 %index143, %i.m              ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load144 = load <2 x double>, ptr %i.p, align 8, !tbaa !11, !alias.scope !77
  %wide.load145 = load <2 x double>, ptr %i.q, align 8, !tbaa !11, !alias.scope !77
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load146 = load <2 x double>, ptr %i.r, align 8, !tbaa !11, !alias.scope !78
  %wide.load147 = load <2 x double>, ptr %i.s, align 8, !tbaa !11, !alias.scope !78
  %i.t = add nsw i64 %index143, %i.n              ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x double> %wide.load144, ptr %i.u, align 8, !tbaa !11, !alias.scope !79, !noalias !80
  store <2 x double> %wide.load145, ptr %i.v, align 8, !tbaa !11, !alias.scope !79, !noalias !80
  %i.w = getelementptr inbounds [8 x i8], ptr %3, i64 %i.t ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x double> %wide.load146, ptr %i.w, align 8, !tbaa !11, !alias.scope !81, !noalias !82
  store <2 x double> %wide.load147, ptr %i.x, align 8, !tbaa !11, !alias.scope !81, !noalias !82
  %index.next148 = add nuw i64 %index143, 4       ; 2 uses
  %i.y = icmp eq i64 %index.next148, %n.vec141
  br i1 %i.y, label %middle.block149, label %vector.body142, !llvm.loop !66

middle.block149:                                  ; preds = %vector.body142
  br i1 %cmp.n150, label %._crit_edge.i, label %scalar.ph116.preheader

scalar.ph116.preheader:                           ; preds = %.preheader.i, %middle.block149
  %.028.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec141, %middle.block149 ] ; 3 uses
  br i1 %lcmp.mod157.not, label %scalar.ph116.prol.loopexit, label %scalar.ph116.prol

scalar.ph116.prol:                                ; preds = %scalar.ph116.preheader, %scalar.ph116.prol
  %.028.i.prol = phi i64 [ %i.aj, %scalar.ph116.prol ], [ %.028.i.ph, %scalar.ph116.preheader ] ; 3 uses
  %prol.iter158 = phi i64 [ %prol.iter158.next, %scalar.ph116.prol ], [ 0, %scalar.ph116.preheader ]
  %i.z = mul nsw i64 %.028.i.prol, %5
  %i.aa = add nsw i64 %i.z, %i.m                  ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !11
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aa
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !11
  %i.af = mul nsw i64 %.028.i.prol, %6
  %i.ag = add nsw i64 %i.af, %i.n                 ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  store double %i.ac, ptr %i.ah, align 8, !tbaa !11
  %i.ai = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ag
  store double %i.ae, ptr %i.ai, align 8, !tbaa !11
  %i.aj = add nuw nsw i64 %.028.i.prol, 1         ; 2 uses
  %prol.iter158.next = add i64 %prol.iter158, 1   ; 2 uses
  %prol.iter158.cmp.not = icmp eq i64 %prol.iter158.next, %xtraiter156
  br i1 %prol.iter158.cmp.not, label %scalar.ph116.prol.loopexit, label %scalar.ph116.prol, !llvm.loop !67

scalar.ph116.prol.loopexit:                       ; preds = %scalar.ph116.prol, %scalar.ph116.preheader
  %.028.i.unr = phi i64 [ %.028.i.ph, %scalar.ph116.preheader ], [ %i.aj, %scalar.ph116.prol ]
  %i.ak = sub nsw i64 %.028.i.ph, %4
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %._crit_edge.i, label %scalar.ph116

scalar.ph116:                                     ; preds = %scalar.ph116.prol.loopexit, %scalar.ph116
  %.028.i = phi i64 [ %i.cd, %scalar.ph116 ], [ %.028.i.unr, %scalar.ph116.prol.loopexit ] ; 6 uses
  %i.am = mul nsw i64 %.028.i, %5
  %i.an = add nsw i64 %i.am, %i.m                 ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !11
  %i.aq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.an
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !11
  %i.as = mul nsw i64 %.028.i, %6
  %i.at = add nsw i64 %i.as, %i.n                 ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %2, i64 %i.at
  store double %i.ap, ptr %i.au, align 8, !tbaa !11
  %i.av = getelementptr inbounds [8 x i8], ptr %3, i64 %i.at
  store double %i.ar, ptr %i.av, align 8, !tbaa !11
  %i.aw = add nuw nsw i64 %.028.i, 1              ; 2 uses
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
  %i.bh = add nuw nsw i64 %.028.i, 2              ; 2 uses
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
  %i.bs = add nuw nsw i64 %.028.i, 3              ; 2 uses
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
  %i.cd = add nuw nsw i64 %.028.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cd, %4
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph116, !llvm.loop !68

._crit_edge.i:                                    ; preds = %scalar.ph116.prol.loopexit, %scalar.ph116, %middle.block149
  %i.ce = add nuw nsw i64 %.02729.i, 1            ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.ce, %7
  br i1 %exitcond31.not.i, label %fftw_cpy2d_pair.exit, label %.preheader.i, !llvm.loop !0

bb.c:                                             ; preds = %bb.a
  %i.cf = icmp sgt i64 %4, 0
  %i.cg = icmp sgt i64 %7, 0
  %or.cond.i25 = and i1 %i.cf, %i.cg
  br i1 %or.cond.i25, label %.preheader.i26.preheader, label %fftw_cpy2d_pair.exit

.preheader.i26.preheader:                         ; preds = %bb.c
  %i.ch = add nsw i64 %4, -1                      ; 2 uses
  %i.ci = mul i64 %5, %i.ch
  %13 = add i64 %i.ci, %7
  %14 = shl i64 %13, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %14    ; 2 uses
  %scevgep61 = getelementptr i8, ptr %0, i64 %14  ; 2 uses
  %i.cj = mul i64 %6, %i.ch
  %i.ck = add i64 %i.cj, %7
  %i.cl = shl i64 %i.ck, 3                        ; 2 uses
  %scevgep62 = getelementptr i8, ptr %3, i64 %i.cl ; 3 uses
  %scevgep63.a = getelementptr i8, ptr %2, i64 %i.cl ; 3 uses
  %min.iters.check = icmp ult i64 %7, 18
  %ident.check = icmp ne i64 %9, 1
  %ident.check41 = icmp ne i64 %8, 1
  %i.cm = or i1 %ident.check, %ident.check41
  %bound0 = icmp ult ptr %2, %scevgep62
  %bound1 = icmp ult ptr %3, %scevgep63.a
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %6, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %15 = or i1 %found.conflict, %stride.check
  %bound064 = icmp ult ptr %2, %scevgep61
  %bound165 = icmp ult ptr %0, %scevgep63.a
  %found.conflict66 = and i1 %bound064, %bound165
  %.mask152 = and i64 %5, 1152921504606846976
  %stride.check67 = icmp ne i64 %.mask152, 0
  %i.cn = or i1 %found.conflict66, %stride.check67
  %conflict.rdx = or i1 %15, %i.cn
  %bound068.a = icmp ult ptr %2, %scevgep
  %bound169 = icmp ult ptr %1, %scevgep63.a
  %found.conflict70.a = and i1 %bound068.a, %bound169
  %conflict.rdx71 = or i1 %conflict.rdx, %found.conflict70.a
  %bound072 = icmp ult ptr %3, %scevgep61
  %bound173 = icmp ult ptr %0, %scevgep62
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx75 = or i1 %conflict.rdx71, %found.conflict74
  %bound076 = icmp ult ptr %3, %scevgep
  %bound177 = icmp ult ptr %1, %scevgep62
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx79 = or i1 %conflict.rdx75, %found.conflict78
  %n.vec = and i64 %7, 9223372036854775804        ; 3 uses
  %cmp.n = icmp eq i64 %7, %n.vec
  %xtraiter = and i64 %7, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i26

.preheader.i26:                                   ; preds = %.preheader.i26.preheader, %._crit_edge.i30
  %.02729.i27 = phi i64 [ %i.fg, %._crit_edge.i30 ], [ 0, %.preheader.i26.preheader ] ; 3 uses
  %i.co = mul nsw i64 %.02729.i27, %5             ; 6 uses
  %i.cp = mul nsw i64 %.02729.i27, %6             ; 6 uses
  %brmerge161 = or i1 %min.iters.check, %i.cm
  %brmerge162 = select i1 %brmerge161, i1 true, i1 %conflict.rdx79
  br i1 %brmerge162, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i26, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i26 ] ; 3 uses
  %i.cq = add nsw i64 %index, %i.co               ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load = load <2 x double>, ptr %i.cr, align 8, !tbaa !11, !alias.scope !83
  %wide.load80 = load <2 x double>, ptr %i.cs, align 8, !tbaa !11, !alias.scope !83
  %i.ct = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cq ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load81 = load <2 x double>, ptr %i.ct, align 8, !tbaa !11, !alias.scope !84
  %wide.load82 = load <2 x double>, ptr %i.cu, align 8, !tbaa !11, !alias.scope !84
  %i.cv = add nsw i64 %index, %i.cp               ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <2 x double> %wide.load, ptr %i.cw, align 8, !tbaa !11, !alias.scope !85, !noalias !86
  store <2 x double> %wide.load80, ptr %i.cx, align 8, !tbaa !11, !alias.scope !85, !noalias !86
  %i.cy = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cv ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <2 x double> %wide.load81, ptr %i.cy, align 8, !tbaa !11, !alias.scope !87, !noalias !88
  store <2 x double> %wide.load82, ptr %i.cz, align 8, !tbaa !11, !alias.scope !87, !noalias !88
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i30, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i26, %middle.block
  %.028.i28.ph = phi i64 [ 0, %.preheader.i26 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.028.i28.prol = phi i64 [ %i.dl, %scalar.ph.prol ], [ %.028.i28.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.db = mul nsw i64 %.028.i28.prol, %8
  %i.dc = add nsw i64 %i.db, %i.co                ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !11
  %i.df = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dc
  %i.dg = load double, ptr %i.df, align 8, !tbaa !11
  %i.dh = mul nsw i64 %.028.i28.prol, %9
  %i.di = add nsw i64 %i.dh, %i.cp                ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.di
  store double %i.de, ptr %i.dj, align 8, !tbaa !11
  %i.dk = getelementptr inbounds [8 x i8], ptr %3, i64 %i.di
  store double %i.dg, ptr %i.dk, align 8, !tbaa !11
  %i.dl = add nuw nsw i64 %.028.i28.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !75

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.028.i28.unr = phi i64 [ %.028.i28.ph, %scalar.ph.preheader ], [ %i.dl, %scalar.ph.prol ]
  %i.dm = sub nsw i64 %.028.i28.ph, %7
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %._crit_edge.i30, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.028.i28 = phi i64 [ %i.ff, %scalar.ph ], [ %.028.i28.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.do = mul nsw i64 %.028.i28, %8
  %i.dp = add nsw i64 %i.do, %i.co                ; 2 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !11
  %i.ds = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dp
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !11
  %i.du = mul nsw i64 %.028.i28, %9
  %i.dv = add nsw i64 %i.du, %i.cp                ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dv
  store double %i.dr, ptr %i.dw, align 8, !tbaa !11
  %i.dx = getelementptr inbounds [8 x i8], ptr %3, i64 %i.dv
  store double %i.dt, ptr %i.dx, align 8, !tbaa !11
  %i.dy = add nuw nsw i64 %.028.i28, 1            ; 2 uses
  %i.dz = mul nsw i64 %i.dy, %8
  %i.ea = add nsw i64 %i.dz, %i.co                ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ea
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !11
  %i.ed = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ea
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !11
  %i.ef = mul nsw i64 %i.dy, %9
  %i.eg = add nsw i64 %i.ef, %i.cp                ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.eg
  store double %i.ec, ptr %i.eh, align 8, !tbaa !11
  %i.ei = getelementptr inbounds [8 x i8], ptr %3, i64 %i.eg
  store double %i.ee, ptr %i.ei, align 8, !tbaa !11
  %i.ej = add nuw nsw i64 %.028.i28, 2            ; 2 uses
  %i.ek = mul nsw i64 %i.ej, %8
  %i.el = add nsw i64 %i.ek, %i.co                ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %0, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !11
  %i.eo = getelementptr inbounds [8 x i8], ptr %1, i64 %i.el
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !11
  %i.eq = mul nsw i64 %i.ej, %9
  %i.er = add nsw i64 %i.eq, %i.cp                ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %2, i64 %i.er
  store double %i.en, ptr %i.es, align 8, !tbaa !11
  %i.et = getelementptr inbounds [8 x i8], ptr %3, i64 %i.er
  store double %i.ep, ptr %i.et, align 8, !tbaa !11
  %i.eu = add nuw nsw i64 %.028.i28, 3            ; 2 uses
  %i.ev = mul nsw i64 %i.eu, %8
  %i.ew = add nsw i64 %i.ev, %i.co                ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !11
  %i.ez = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ew
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !11
  %i.fb = mul nsw i64 %i.eu, %9
  %i.fc = add nsw i64 %i.fb, %i.cp                ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fc
  store double %i.ey, ptr %i.fd, align 8, !tbaa !11
  %i.fe = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fc
  store double %i.fa, ptr %i.fe, align 8, !tbaa !11
  %i.ff = add nuw nsw i64 %.028.i28, 4            ; 2 uses
  %exitcond.not.i29.3 = icmp eq i64 %i.ff, %7
  br i1 %exitcond.not.i29.3, label %._crit_edge.i30, label %scalar.ph, !llvm.loop !76

._crit_edge.i30:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.fg = add nuw nsw i64 %.02729.i27, 1          ; 2 uses
  %exitcond31.not.i31 = icmp eq i64 %i.fg, %4
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
end_hunk_0
