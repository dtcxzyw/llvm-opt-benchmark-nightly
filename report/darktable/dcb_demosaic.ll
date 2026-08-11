inline.NumInlined: 49
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw7dcb_verEPA3_f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.b = load i16, ptr %i.a, align 2, !tbaa !11   ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i16, ptr %i.d, align 4, !tbaa !74   ; 2 uses
  %i.f = icmp ugt i16 %i.e, 4
  br i1 %i.f, label %.lr.ph37, label %._crit_edge38

.lr.ph37:                                         ; preds = %bb.a
  %i.g = zext i16 %i.e to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.j = load i32, ptr %i.i, align 8, !tbaa !75
  %i.k = add nsw i32 %i.c, -2                     ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.m = shl nuw nsw i32 %i.c, 1
  %i.n = add nuw nsw i32 %i.m, 2
  %i.o = zext i16 %i.b to i64                     ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %i.o ; 2 uses
  %2 = add nsw i32 %i.g, -3
  %i.p = add nsw i32 %i.c, -5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph37, %._crit_edge
  %indvars.iv = phi i32 [ %i.n, %.lr.ph37 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.02735 = phi i32 [ 2, %.lr.ph37 ], [ %i.bt, %._crit_edge ] ; 3 uses
  %i.q = shl nuw nsw i32 %.02735, 2
  %i.r = and i32 %i.q, 28
  %i.s = lshr i32 %i.j, %i.r
  %i.t = and i32 %i.s, 1                          ; 3 uses
  %i.u = or disjoint i32 %i.t, 2                  ; 3 uses
  %i.v = icmp slt i32 %i.u, %i.k
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.w = add i32 %indvars.iv, %i.t
  %i.x = sext i32 %i.w to i64                     ; 4 uses
  %i.y = sub nsw i32 %i.p, %i.t                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.y, 16
  br i1 %min.iters.check, label %.lr.ph.preheader48, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.z = lshr i32 %i.y, 1
  %narrow = add nuw i32 %i.z, 1
  %i.aa = zext i32 %narrow to i64                 ; 2 uses
  %i.ab = and i64 %i.aa, 7                        ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 8, i64 %i.ab
  %n.vec = sub nsw i64 %i.aa, %i.ad               ; 3 uses
  %i.ae = shl nsw i64 %n.vec, 1
  %i.af = add nsw i64 %i.ae, %i.x
  %i.ag = trunc i64 %n.vec to i32
  %i.ah = shl i32 %i.ag, 1
  %i.ai = add i32 %i.u, %i.ah
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.x, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.aj = shl nuw i64 %index, 1
  %i.ak = add nuw i64 %i.aj, %i.x                 ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %wide.vec = load <64 x i16>, ptr %i.am, align 2, !tbaa !76
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.an = zext <8 x i16> %strided.vec to <8 x i32>
  %i.ao = sub nsw i64 %i.ak, %i.o
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %wide.vec44 = load <64 x i16>, ptr %i.aq, align 2, !tbaa !76
  %strided.vec45 = shufflevector <64 x i16> %wide.vec44, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.ar = zext <8 x i16> %strided.vec45 to <8 x i32>
  %i.as = add nuw nsw <8 x i32> %i.ar, %i.an
  %i.at = uitofp nneg <8 x i32> %i.as to <8 x double>
  %i.au = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.at, splat (double 5.000000e-01)
  %i.av = fptosi <8 x double> %i.au to <8 x i32>
  %i.aw = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.av, <8 x i32> zeroinitializer)
  %i.ax = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.aw, <8 x i32> splat (i32 65535))
  %i.ay = uitofp nneg <8 x i32> %i.ax to <8 x float>
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %1, <8 x i64> %vec.ind
  %wide.gep46 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ay, <8 x ptr> align 4 %wide.gep46, <8 x i1> splat (i1 true)), !tbaa !77
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %.lr.ph.preheader48, label %vector.body, !llvm.loop !78

.lr.ph.preheader48:                               ; preds = %vector.body, %.lr.ph.preheader
  %indvars.iv39.ph = phi i64 [ %i.x, %.lr.ph.preheader ], [ %i.af, %vector.body ]
  %.02833.ph = phi i32 [ %i.u, %.lr.ph.preheader ], [ %i.ai, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader48, %.lr.ph
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %.lr.ph ], [ %indvars.iv39.ph, %.lr.ph.preheader48 ] ; 4 uses
  %.02833 = phi i32 [ %i.br, %.lr.ph ], [ %.02833.ph, %.lr.ph.preheader48 ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv39
  %i.ba = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !76
  %i.bc = zext i16 %i.bb to i32
  %i.bd = sub nsw i64 %indvars.iv39, %i.o
  %i.be = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !76
  %i.bh = zext i16 %i.bg to i32
  %i.bi = add nuw nsw i32 %i.bh, %i.bc
  %i.bj = uitofp nneg i32 %i.bi to double
  %i.bk = fmul reassoc nnan nsz arcp contract afn double %i.bj, 5.000000e-01
  %i.bl = fptosi double %i.bk to i32
  %i.bm = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 0)
  %i.bn = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 65535)
  %i.bo = uitofp nneg i32 %i.bn to float
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv39
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store float %i.bo, ptr %i.bq, align 4, !tbaa !77
  %i.br = add nuw nsw i32 %.02833, 2              ; 2 uses
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 2
  %i.bs = icmp slt i32 %i.br, %i.k
  br i1 %i.bs, label %.lr.ph, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.bt = add nuw nsw i32 %.02735, 1
  %indvars.iv.next = add nuw i32 %indvars.iv, %i.c
  %exitcond.not = icmp eq i32 %.02735, %2
  br i1 %exitcond.not, label %._crit_edge38, label %bb.b, !llvm.loop !83

._crit_edge38:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw7dcb_horEPA3_f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.b = load i16, ptr %i.a, align 2, !tbaa !11
  %i.c = zext i16 %i.b to i32                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i16, ptr %i.d, align 4, !tbaa !74   ; 2 uses
  %i.f = icmp ugt i16 %i.e, 4
  br i1 %i.f, label %.lr.ph29, label %._crit_edge30

.lr.ph29:                                         ; preds = %bb.a
  %i.g = zext i16 %i.e to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.j = load i32, ptr %i.i, align 8, !tbaa !75
  %i.k = add nsw i32 %i.c, -2                     ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.m = shl nuw nsw i32 %i.c, 1
  %2 = add nuw nsw i32 %i.m, 2
  %i.n = add nsw i32 %i.g, -3
  %i.o = add nsw i32 %i.c, -5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph29, %._crit_edge
  %indvars.iv = phi i32 [ %2, %.lr.ph29 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.01927 = phi i32 [ 2, %.lr.ph29 ], [ %i.bm, %._crit_edge ] ; 3 uses
  %i.p = shl nuw nsw i32 %.01927, 2
  %i.q = and i32 %i.p, 28
  %i.r = lshr i32 %i.j, %i.q
  %i.s = and i32 %i.r, 1                          ; 3 uses
  %i.t = or disjoint i32 %i.s, 2                  ; 3 uses
  %i.u = icmp slt i32 %i.t, %i.k
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.v = add i32 %indvars.iv, %i.s
  %i.w = zext i32 %i.v to i64                     ; 4 uses
  %i.x = sub nsw i32 %i.o, %i.s                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.x, 16
  br i1 %min.iters.check, label %.lr.ph.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.y = lshr i32 %i.x, 1
  %narrow = add nuw i32 %i.y, 1
  %i.z = zext i32 %narrow to i64                  ; 2 uses
  %i.aa = and i64 %i.z, 7                         ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = select i1 %i.ab, i64 8, i64 %i.aa
  %n.vec = sub nsw i64 %i.z, %i.ac                ; 3 uses
  %i.ad = shl nsw i64 %n.vec, 1
  %i.ae = add nsw i64 %i.ad, %i.w
  %i.af = trunc i64 %n.vec to i32
  %i.ag = shl i32 %i.af, 1
  %i.ah = add i32 %i.t, %i.ag
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.idx = shl i64 %index, 4
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %gep, i64 10
  %wide.vec = load <64 x i16>, ptr %i.ai, align 2, !tbaa !76
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.aj = zext <8 x i16> %strided.vec to <8 x i32>
  %i.ak = getelementptr i8, ptr %gep, i64 -6
  %wide.vec36 = load <64 x i16>, ptr %i.ak, align 2, !tbaa !76
  %strided.vec37 = shufflevector <64 x i16> %wide.vec36, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.al = zext <8 x i16> %strided.vec37 to <8 x i32>
  %i.am = add nuw nsw <8 x i32> %i.al, %i.aj
  %i.an = uitofp nneg <8 x i32> %i.am to <8 x double>
  %i.ao = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.an, splat (double 5.000000e-01)
  %i.ap = fptosi <8 x double> %i.ao to <8 x i32>
  %i.aq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ap, <8 x i32> zeroinitializer)
  %i.ar = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.aq, <8 x i32> splat (i32 65535))
  %i.as = uitofp nneg <8 x i32> %i.ar to <8 x float>
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %1, <8 x i64> %vec.ind
  %wide.gep38 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.as, <8 x ptr> align 4 %wide.gep38, <8 x i1> splat (i1 true)), !tbaa !77
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %.lr.ph.preheader40, label %vector.body, !llvm.loop !84

.lr.ph.preheader40:                               ; preds = %vector.body, %.lr.ph.preheader
  %indvars.iv31.ph = phi i64 [ %i.w, %.lr.ph.preheader ], [ %i.ae, %vector.body ]
  %.02025.ph = phi i32 [ %i.t, %.lr.ph.preheader ], [ %i.ah, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader40, %.lr.ph
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %.lr.ph ], [ %indvars.iv31.ph, %.lr.ph.preheader40 ] ; 3 uses
  %.02025 = phi i32 [ %i.bk, %.lr.ph ], [ %.02025.ph, %.lr.ph.preheader40 ]
  %i.au = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv31 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !76
  %i.ax = zext i16 %i.aw to i32
  %i.ay = getelementptr i8, ptr %i.au, i64 -6
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !76
  %i.ba = zext i16 %i.az to i32
  %i.bb = add nuw nsw i32 %i.ba, %i.ax
  %i.bc = uitofp nneg i32 %i.bb to double
  %i.bd = fmul reassoc nnan nsz arcp contract afn double %i.bc, 5.000000e-01
  %i.be = fptosi double %i.bd to i32
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.be, i32 0)
  %i.bg = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 65535)
  %i.bh = uitofp nneg i32 %i.bg to float
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv31
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store float %i.bh, ptr %i.bj, align 4, !tbaa !77
  %i.bk = add nuw nsw i32 %.02025, 2              ; 2 uses
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 2
  %i.bl = icmp slt i32 %i.bk, %i.k
  br i1 %i.bl, label %.lr.ph, label %._crit_edge, !llvm.loop !85

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.bm = add nuw nsw i32 %.01927, 1
  %indvars.iv.next = add nuw i32 %indvars.iv, %i.c
  %exitcond.not = icmp eq i32 %.01927, %i.n
  br i1 %exitcond.not, label %._crit_edge30, label %bb.b, !llvm.loop !86

._crit_edge30:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw9dcb_colorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !11   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.e = load i16, ptr %i.d, align 4, !tbaa !74   ; 2 uses
  %i.f = icmp ugt i16 %i.e, 2
  br i1 %i.f, label %.lr.ph218, label %._crit_edge226

.lr.ph218:                                        ; preds = %bb.a
  %i.g = zext i16 %i.c to i32                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.i = load i32, ptr %i.h, align 8, !tbaa !75   ; 2 uses
  %i.j = add nsw i32 %i.g, -1                     ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8              ; 25 uses
  %i.l = zext i16 %i.c to i64                     ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 4
  %scevgep244 = getelementptr i8, ptr %i.k, i64 6
  %i.m = add nsw i32 %i.g, -3
  %scevgep246 = getelementptr nuw i8, ptr %i.k, i64 2
  %scevgep248 = getelementptr i8, ptr %i.k, i64 4
  %i.n = shl nuw nsw i64 %i.l, 3                  ; 12 uses
  %i.o = getelementptr i8, ptr %i.k, i64 %i.n
  %scevgep250 = getelementptr i8, ptr %i.o, i64 10
  %i.p = add nuw nsw i64 %i.n, 12                 ; 2 uses
  %scevgep252 = getelementptr i8, ptr %i.k, i64 %i.p
  %i.q = getelementptr i8, ptr %i.k, i64 %i.n
  %scevgep254 = getelementptr i8, ptr %i.q, i64 -6
  %i.r = add nsw i64 %i.n, -4                     ; 2 uses
  %scevgep256 = getelementptr i8, ptr %i.k, i64 %i.r
  %i.s = sub nsw i64 10, %i.n
  %scevgep258 = getelementptr i8, ptr %i.k, i64 %i.s
  %i.t = sub nsw i64 12, %i.n                     ; 2 uses
  %scevgep260 = getelementptr i8, ptr %i.k, i64 %i.t
  %i.u = sub nuw nsw i64 -6, %i.n
  %scevgep262 = getelementptr i8, ptr %i.k, i64 %i.u
  %i.v = sub nuw nsw i64 -4, %i.n                 ; 2 uses
  %scevgep264 = getelementptr i8, ptr %i.k, i64 %i.v
  %scevgep266 = getelementptr i8, ptr %i.k, i64 %i.p
  %i.w = getelementptr i8, ptr %i.k, i64 %i.n
  %scevgep268 = getelementptr i8, ptr %i.w, i64 14
  %scevgep270 = getelementptr i8, ptr %i.k, i64 %i.r
  %i.x = getelementptr i8, ptr %i.k, i64 %i.n
  %scevgep272 = getelementptr i8, ptr %i.x, i64 -2
  %scevgep274 = getelementptr i8, ptr %i.k, i64 %i.t
  %i.y = sub nsw i64 14, %i.n
  %scevgep276 = getelementptr i8, ptr %i.k, i64 %i.y
  %scevgep278 = getelementptr i8, ptr %i.k, i64 %i.v
  %i.z = sub nuw nsw i64 -2, %i.n
  %scevgep280 = getelementptr i8, ptr %i.k, i64 %i.z
  %1 = add nsw i32 %i.g, -3
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge
  %i.aa = icmp ugt i16 %i.fr, 2
  br i1 %i.aa, label %.lr.ph225, label %._crit_edge226

.lr.ph225:                                        ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !75 ; 2 uses
  %i.ad = zext i16 %i.c to i64                    ; 2 uses
  %.pre231 = load i16, ptr %i.b, align 2, !tbaa !11
  %i.ae = load ptr, ptr %i.a, align 8             ; 3 uses
  %invariant.gep240 = getelementptr [8 x i8], ptr %i.ae, i64 %i.ad
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph218, %._crit_edge
  %i.af = phi i16 [ %i.e, %.lr.ph218 ], [ %i.fr, %._crit_edge ]
  %.0184216 = phi i32 [ 1, %.lr.ph218 ], [ %i.fs, %._crit_edge ] ; 3 uses
  %i.ag = shl nuw nsw i32 %.0184216, 1
  %i.ah = and i32 %i.ag, 14                       ; 2 uses
  %i.ai = shl nuw nsw i32 %i.ah, 1
  %i.aj = or disjoint i32 %i.ai, 2
  %i.ak = lshr i32 %i.i, %i.aj
  %i.al = and i32 %i.ak, 1                        ; 4 uses
  %i.am = add nuw nsw i32 %i.al, 1                ; 5 uses
  %i.an = icmp slt i32 %i.am, %i.j
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ao = and i32 %i.am, 1
  %i.ap = or disjoint i32 %i.ao, %i.ah
  %i.aq = shl nuw nsw i32 %i.ap, 1
  %i.ar = lshr i32 %i.i, %i.aq                    ; 2 uses
  %i.as = and i32 %i.ar, 3
  %i.at = sub nsw i32 2, %i.as
  %i.au = load i16, ptr %i.b, align 2, !tbaa !11
  %i.av = zext i16 %i.au to i32
  %i.aw = sext i32 %i.at to i64                   ; 10 uses
  %i.ax = mul i32 %.0184216, %i.av
  %i.ay = add i32 %i.ax, 1
  %i.az = add i32 %i.ay, %i.al
  %i.ba = sext i32 %i.az to i64                   ; 5 uses
  %i.bb = sub nsw i32 %1, %i.al                   ; 2 uses
  %i.bc = lshr i32 %i.bb, 1
  %narrow = add nuw i32 %i.bc, 1
  %i.bd = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.bb, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.be = shl nsw i64 %i.ba, 3                    ; 7 uses
  %i.bf = shl i32 %i.ar, 1
  %i.bg = and i32 %i.bf, 6
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = sub nsw i64 %i.be, %i.bh                ; 5 uses
  %scevgep243 = getelementptr i8, ptr %scevgep, i64 %i.bi ; 9 uses
  %i.bj = sub nsw i32 %i.m, %i.al
  %i.bk = lshr i32 %i.bj, 1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 4
  %i.bn = add nsw i64 %i.bm, %i.be                ; 6 uses
  %i.bo = sub nsw i64 %i.bn, %i.bh                ; 5 uses
  %scevgep245 = getelementptr i8, ptr %scevgep244, i64 %i.bo ; 9 uses
  %scevgep247 = getelementptr nuw i8, ptr %scevgep246, i64 %i.be
  %scevgep249 = getelementptr i8, ptr %scevgep248, i64 %i.bn
  %scevgep251 = getelementptr i8, ptr %scevgep250, i64 %i.be
  %scevgep253 = getelementptr i8, ptr %scevgep252, i64 %i.bn
  %scevgep255 = getelementptr i8, ptr %scevgep254, i64 %i.be
  %scevgep257 = getelementptr i8, ptr %scevgep256, i64 %i.bn
  %scevgep259 = getelementptr i8, ptr %scevgep258, i64 %i.be
  %scevgep261 = getelementptr i8, ptr %scevgep260, i64 %i.bn
  %scevgep263 = getelementptr i8, ptr %scevgep262, i64 %i.be
  %scevgep265 = getelementptr i8, ptr %scevgep264, i64 %i.bn
  %scevgep267 = getelementptr i8, ptr %scevgep266, i64 %i.bi
  %scevgep269 = getelementptr i8, ptr %scevgep268, i64 %i.bo
  %scevgep271 = getelementptr i8, ptr %scevgep270, i64 %i.bi
  %scevgep273 = getelementptr i8, ptr %scevgep272, i64 %i.bo
  %scevgep275 = getelementptr i8, ptr %scevgep274, i64 %i.bi
  %scevgep277 = getelementptr i8, ptr %scevgep276, i64 %i.bo
  %scevgep279 = getelementptr i8, ptr %scevgep278, i64 %i.bi
  %scevgep281 = getelementptr i8, ptr %scevgep280, i64 %i.bo
  %bound0 = icmp ult ptr %scevgep243, %scevgep249
  %bound1 = icmp ult ptr %scevgep247, %scevgep245
  %found.conflict = and i1 %bound0, %bound1
  %bound0282 = icmp ult ptr %scevgep243, %scevgep253
  %bound1283 = icmp ult ptr %scevgep251, %scevgep245
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx = or i1 %found.conflict, %found.conflict284
  %bound0285 = icmp ult ptr %scevgep243, %scevgep257
  %bound1286 = icmp ult ptr %scevgep255, %scevgep245
  %found.conflict287 = and i1 %bound0285, %bound1286
  %conflict.rdx288 = or i1 %conflict.rdx, %found.conflict287
  %bound0289 = icmp ult ptr %scevgep243, %scevgep261
  %bound1290 = icmp ult ptr %scevgep259, %scevgep245
  %found.conflict291 = and i1 %bound0289, %bound1290
  %conflict.rdx292 = or i1 %conflict.rdx288, %found.conflict291
  %bound0293 = icmp ult ptr %scevgep243, %scevgep265
  %bound1294 = icmp ult ptr %scevgep263, %scevgep245
  %found.conflict295 = and i1 %bound0293, %bound1294
  %conflict.rdx296 = or i1 %conflict.rdx292, %found.conflict295
  %bound0297 = icmp ult ptr %scevgep243, %scevgep269
  %bound1298 = icmp ult ptr %scevgep267, %scevgep245
  %found.conflict299 = and i1 %bound0297, %bound1298
  %conflict.rdx300 = or i1 %conflict.rdx296, %found.conflict299
  %bound0301 = icmp ult ptr %scevgep243, %scevgep273
  %bound1302 = icmp ult ptr %scevgep271, %scevgep245
  %found.conflict303 = and i1 %bound0301, %bound1302
  %conflict.rdx304 = or i1 %conflict.rdx300, %found.conflict303
  %bound0305 = icmp ult ptr %scevgep243, %scevgep277
  %bound1306 = icmp ult ptr %scevgep275, %scevgep245
  %found.conflict307 = and i1 %bound0305, %bound1306
  %conflict.rdx308 = or i1 %conflict.rdx304, %found.conflict307
  %bound0309 = icmp ult ptr %scevgep243, %scevgep281
  %bound1310 = icmp ult ptr %scevgep279, %scevgep245
  %found.conflict311 = and i1 %bound0309, %bound1310
  %conflict.rdx312 = or i1 %conflict.rdx308, %found.conflict311
  br i1 %conflict.rdx312, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bp = and i64 %i.bd, 7                        ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  %i.br = select i1 %i.bq, i64 8, i64 %i.bp
  %n.vec = sub nsw i64 %i.bd, %i.br               ; 3 uses
  %i.bs = shl nsw i64 %n.vec, 1
  %i.bt = add nsw i64 %i.bs, %i.ba
  %i.bu = trunc i64 %n.vec to i32
  %i.bv = shl i32 %i.bu, 1
  %i.bw = add i32 %i.am, %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl nuw i64 %index, 1
  %i.by = add nuw i64 %i.bx, %i.ba                ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %wide.vec = load <64 x i16>, ptr %i.ca, align 2, !tbaa !76, !alias.scope !87
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cb = zext <8 x i16> %strided.vec to <8 x i32>
  %i.cc = shl nuw nsw <8 x i32> %i.cb, splat (i32 2)
  %i.cd = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.by ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 10
  %wide.vec313 = load <64 x i16>, ptr %i.cf, align 2, !tbaa !76, !alias.scope !90
  %strided.vec314 = shufflevector <64 x i16> %wide.vec313, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cg = zext <8 x i16> %strided.vec314 to <8 x i32>
  %i.ch = getelementptr i8, ptr %i.cd, i64 -8
  %i.ci = getelementptr i8, ptr %i.cd, i64 -6
  %wide.vec315 = load <64 x i16>, ptr %i.ci, align 2, !tbaa !76, !alias.scope !92
  %strided.vec316 = shufflevector <64 x i16> %wide.vec315, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cj = zext <8 x i16> %strided.vec316 to <8 x i32>
  %i.ck = sub nsw i64 %i.by, %i.l
  %i.cl = getelementptr [8 x i8], ptr %i.k, i64 %i.ck ; 4 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %i.cn = getelementptr i8, ptr %i.cl, i64 10
  %wide.vec317 = load <64 x i16>, ptr %i.cn, align 2, !tbaa !76, !alias.scope !94
  %strided.vec318 = shufflevector <64 x i16> %wide.vec317, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.co = zext <8 x i16> %strided.vec318 to <8 x i32>
  %i.cp = getelementptr i8, ptr %i.cl, i64 -8
  %i.cq = getelementptr i8, ptr %i.cl, i64 -6
  %wide.vec319 = load <64 x i16>, ptr %i.cq, align 2, !tbaa !76, !alias.scope !96
  %strided.vec320 = shufflevector <64 x i16> %wide.vec319, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cr = zext <8 x i16> %strided.vec320 to <8 x i32>
  %i.cs = getelementptr inbounds [2 x i8], ptr %i.ce, i64 %i.aw
  %wide.vec321 = load <64 x i16>, ptr %i.cs, align 2, !tbaa !76, !alias.scope !98
  %strided.vec322 = shufflevector <64 x i16> %wide.vec321, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.ct = zext <8 x i16> %strided.vec322 to <8 x i32>
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %i.aw
  %wide.vec323 = load <64 x i16>, ptr %i.cu, align 2, !tbaa !76, !alias.scope !100
  %strided.vec324 = shufflevector <64 x i16> %wide.vec323, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cv = zext <8 x i16> %strided.vec324 to <8 x i32>
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.aw
  %wide.vec325 = load <64 x i16>, ptr %i.cw, align 2, !tbaa !76, !alias.scope !102
  %strided.vec326 = shufflevector <64 x i16> %wide.vec325, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cx = zext <8 x i16> %strided.vec326 to <8 x i32>
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.aw
  %wide.vec327 = load <64 x i16>, ptr %i.cy, align 2, !tbaa !76, !alias.scope !104
  %strided.vec328 = shufflevector <64 x i16> %wide.vec327, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cz = zext <8 x i16> %strided.vec328 to <8 x i32>
  %i.da = add nuw nsw <8 x i32> %i.cg, %i.cj
  %i.db = add nuw nsw <8 x i32> %i.da, %i.co
  %i.dc = add nuw nsw <8 x i32> %i.db, %i.cr
  %i.dd = sub nsw <8 x i32> %i.cc, %i.dc
  %i.de = add nsw <8 x i32> %i.dd, %i.ct
  %i.df = add nsw <8 x i32> %i.de, %i.cv
  %i.dg = add nsw <8 x i32> %i.df, %i.cx
  %i.dh = add nsw <8 x i32> %i.dg, %i.cz
  %i.di = sitofp reassoc nsz arcp contract afn <8 x i32> %i.dh to <8 x double>
  %i.dj = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.di, splat (double 2.500000e-01)
  %i.dk = fptosi <8 x double> %i.dj to <8 x i32>
  %i.dl = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dk, <8 x i32> zeroinitializer)
  %i.dm = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dl, <8 x i32> splat (i32 65535))
  %i.dn = trunc nuw <8 x i32> %i.dm to <8 x i16>
  %i.do = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.aw
  %i.dp = shufflevector <8 x i16> %i.dn, <8 x i16> poison, <57 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7>
  tail call void @llvm.masked.store.v57i16.p0(<57 x i16> %i.dp, ptr align 2 %i.do, <57 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true>), !tbaa !76, !alias.scope !106, !noalias !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %scalar.ph.preheader, label %vector.body, !llvm.loop !109

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph ], [ %i.bt, %vector.body ]
  %.0186214.ph = phi i32 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph ], [ %i.bw, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %.0186214 = phi i32 [ %i.fp, %scalar.ph ], [ %.0186214.ph, %scalar.ph.preheader ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !76
  %i.du = zext i16 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 2
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %gep, i64 10
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !76
  %i.dz = zext i16 %i.dy to i32
  %i.ea = getelementptr i8, ptr %gep, i64 -8
  %i.eb = getelementptr i8, ptr %gep, i64 -6
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !76
  %i.ed = zext i16 %i.ec to i32
  %i.ee = sub nsw i64 %indvars.iv, %i.l
  %i.ef = getelementptr [8 x i8], ptr %i.k, i64 %i.ee ; 4 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %i.eh = getelementptr i8, ptr %i.ef, i64 10
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !76
  %i.ej = zext i16 %i.ei to i32
  %i.ek = getelementptr i8, ptr %i.ef, i64 -8
  %i.el = getelementptr i8, ptr %i.ef, i64 -6
  %i.em = load i16, ptr %i.el, align 2, !tbaa !76
  %i.en = zext i16 %i.em to i32
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.dw, i64 %i.aw
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !76
  %i.eq = zext i16 %i.ep to i32
  %i.er = getelementptr inbounds [2 x i8], ptr %i.ea, i64 %i.aw
  %i.es = load i16, ptr %i.er, align 2, !tbaa !76
  %i.et = zext i16 %i.es to i32
  %i.eu = getelementptr inbounds [2 x i8], ptr %i.eg, i64 %i.aw
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !76
  %i.ew = zext i16 %i.ev to i32
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.ek, i64 %i.aw
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !76
  %i.ez = zext i16 %i.ey to i32
  %i.fa = add nuw nsw i32 %i.dz, %i.ed
  %i.fb = add nuw nsw i32 %i.fa, %i.ej
  %i.fc = add nuw nsw i32 %i.fb, %i.en
  %i.fd = sub nsw i32 %i.dv, %i.fc
  %i.fe = add nsw i32 %i.fd, %i.eq
  %i.ff = add nsw i32 %i.fe, %i.et
  %i.fg = add nsw i32 %i.ff, %i.ew
  %i.fh = add nsw i32 %i.fg, %i.ez
  %i.fi = sitofp reassoc nsz arcp contract afn i32 %i.fh to double
  %i.fj = fmul reassoc nnan nsz arcp contract afn double %i.fi, 2.500000e-01
  %i.fk = fptosi double %i.fj to i32
  %i.fl = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 0)
  %i.fm = tail call i32 @llvm.umin.i32(i32 %i.fl, i32 65535)
  %i.fn = trunc nuw i32 %i.fm to i16
  %i.fo = getelementptr inbounds [2 x i8], ptr %i.dr, i64 %i.aw
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !76
  %i.fp = add nuw nsw i32 %.0186214, 2            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.fq = icmp slt i32 %i.fp, %i.j
  br i1 %i.fq, label %scalar.ph, label %._crit_edge.loopexit, !llvm.loop !110

._crit_edge.loopexit:                             ; preds = %scalar.ph
  %.pre = load i16, ptr %i.d, align 4, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.fr = phi i16 [ %.pre, %._crit_edge.loopexit ], [ %i.af, %bb.b ] ; 4 uses
  %i.fs = add nuw nsw i32 %.0184216, 1            ; 2 uses
  %i.ft = zext i16 %i.fr to i32
  %i.fu = add nsw i32 %i.ft, -1
  %i.fv = icmp slt i32 %i.fs, %i.fu
  br i1 %i.fv, label %bb.b, label %.preheader, !llvm.loop !111

bb.c:                                             ; preds = %.lr.ph225, %._crit_edge223
  %i.fw = phi i16 [ %i.fr, %.lr.ph225 ], [ %i.jd, %._crit_edge223 ]
  %i.fx = phi i16 [ %.pre231, %.lr.ph225 ], [ %i.je, %._crit_edge223 ] ; 2 uses
  %.1185224 = phi i32 [ 1, %.lr.ph225 ], [ %i.jf, %._crit_edge223 ] ; 3 uses
  %i.fy = shl nuw nsw i32 %.1185224, 1
  %i.fz = and i32 %i.fy, 14                       ; 2 uses
  %i.ga = shl nuw nsw i32 %i.fz, 1
  %i.gb = lshr i32 %i.ac, %i.ga
  %i.gc = and i32 %i.gb, 1                        ; 3 uses
  %i.gd = add nuw nsw i32 %i.gc, 1                ; 2 uses
  %i.ge = zext i16 %i.fx to i32                   ; 2 uses
  %i.gf = add nsw i32 %i.ge, -1
  %i.gg = icmp slt i32 %i.gd, %i.gf
  br i1 %i.gg, label %.lr.ph222, label %._crit_edge223

.lr.ph222:                                        ; preds = %bb.c
  %i.gh = or disjoint i32 %i.gc, %i.fz
  %i.gi = shl nuw nsw i32 %i.gh, 1
  %i.gj = lshr i32 %i.ac, %i.gi
  %i.gk = and i32 %i.gj, 3                        ; 2 uses
  %i.gl = sub nsw i32 2, %i.gk
  %i.gm = zext nneg i32 %i.gk to i64              ; 3 uses
  %i.gn = sext i32 %i.gl to i64                   ; 3 uses
  %i.go = mul i32 %.1185224, %i.ge
  %i.gp = add i32 %i.go, 1
  %i.gq = add i32 %i.gp, %i.gc
  %i.gr = sext i32 %i.gq to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph222, %bb.d
  %indvars.iv228 = phi i64 [ %i.gr, %.lr.ph222 ], [ %indvars.iv.next229, %bb.d ] ; 4 uses
  %.1187219 = phi i32 [ %i.gd, %.lr.ph222 ], [ %i.iy, %bb.d ]
  %i.gs = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv228 ; 7 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 2 ; 2 uses
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !76
  %i.gv = zext i16 %i.gu to i32
  %i.gw = shl nuw nsw i32 %i.gv, 1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 10
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !76
  %i.ha = zext i16 %i.gz to i32
  %i.hb = getelementptr i8, ptr %i.gs, i64 -8
  %i.hc = getelementptr i8, ptr %i.gs, i64 -6
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !76
  %i.he = zext i16 %i.hd to i32
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.gx, i64 %i.gm
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !76
  %i.hh = zext i16 %i.hg to i32
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %i.gm
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !76
  %i.hk = zext i16 %i.hj to i32
  %i.hl = add nuw nsw i32 %i.ha, %i.he
  %i.hm = sub nsw i32 %i.gw, %i.hl
  %i.hn = add nsw i32 %i.hm, %i.hh
  %i.ho = add nsw i32 %i.hn, %i.hk
  %i.hp = sitofp reassoc nsz arcp contract afn i32 %i.ho to double
  %i.hq = fmul reassoc nnan nsz arcp contract afn double %i.hp, 5.000000e-01
  %i.hr = fptosi double %i.hq to i32
  %i.hs = tail call i32 @llvm.smax.i32(i32 %i.hr, i32 0)
  %i.ht = tail call i32 @llvm.umin.i32(i32 %i.hs, i32 65535)
  %i.hu = trunc nuw i32 %i.ht to i16
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.gs, i64 %i.gm
  store i16 %i.hu, ptr %i.hv, align 2, !tbaa !76
  %i.hw = load i16, ptr %i.gt, align 2, !tbaa !76
  %i.hx = zext i16 %i.hw to i32
  %i.hy = shl nuw nsw i32 %i.hx, 1
  %gep241 = getelementptr [8 x i8], ptr %invariant.gep240, i64 %indvars.iv228 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %gep241, i64 2
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !76
  %i.ib = zext i16 %i.ia to i32
  %i.ic = sub nsw i64 %indvars.iv228, %i.ad
  %i.id = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ic ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !76
  %i.ig = zext i16 %i.if to i32
  %i.ih = getelementptr inbounds [2 x i8], ptr %gep241, i64 %i.gn
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !76
  %i.ij = zext i16 %i.ii to i32
  %i.ik = getelementptr inbounds [2 x i8], ptr %i.id, i64 %i.gn
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !76
  %i.im = zext i16 %i.il to i32
  %i.in = add nuw nsw i32 %i.ib, %i.ig
  %i.io = sub nsw i32 %i.hy, %i.in
  %i.ip = add nsw i32 %i.io, %i.ij
  %i.iq = add nsw i32 %i.ip, %i.im
  %i.ir = sitofp reassoc nsz arcp contract afn i32 %i.iq to double
  %i.is = fmul reassoc nnan nsz arcp contract afn double %i.ir, 5.000000e-01
  %i.it = fptosi double %i.is to i32
  %i.iu = tail call i32 @llvm.smax.i32(i32 %i.it, i32 0)
  %i.iv = tail call i32 @llvm.umin.i32(i32 %i.iu, i32 65535)
  %i.iw = trunc nuw i32 %i.iv to i16
  %i.ix = getelementptr inbounds [2 x i8], ptr %i.gs, i64 %i.gn
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !76
  %i.iy = add nuw nsw i32 %.1187219, 2            ; 2 uses
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 2
  %i.iz = load i16, ptr %i.b, align 2, !tbaa !11  ; 2 uses
  %i.ja = zext i16 %i.iz to i32
  %i.jb = add nsw i32 %i.ja, -1
  %i.jc = icmp slt i32 %i.iy, %i.jb
  br i1 %i.jc, label %bb.d, label %._crit_edge223.loopexit, !llvm.loop !112

._crit_edge223.loopexit:                          ; preds = %bb.d
  %.pre232 = load i16, ptr %i.d, align 4, !tbaa !74
  br label %._crit_edge223

._crit_edge223:                                   ; preds = %._crit_edge223.loopexit, %bb.c
  %i.jd = phi i16 [ %.pre232, %._crit_edge223.loopexit ], [ %i.fw, %bb.c ] ; 2 uses
  %i.je = phi i16 [ %i.iz, %._crit_edge223.loopexit ], [ %i.fx, %bb.c ]
  %i.jf = add nuw nsw i32 %.1185224, 1            ; 2 uses
  %i.jg = zext i16 %i.jd to i32
  %i.jh = add nsw i32 %i.jg, -1
  %i.ji = icmp slt i32 %i.jf, %i.jh
  br i1 %i.ji, label %bb.c, label %._crit_edge226, !llvm.loop !113

._crit_edge226:                                   ; preds = %._crit_edge223, %bb.a, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw10dcb_color2EPA3_f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.c = load i16, ptr %i.b, align 2, !tbaa !11   ; 3 uses
  %i.d = zext i16 %i.c to i32                     ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i16, ptr %i.e, align 4, !tbaa !74   ; 2 uses
  %i.g = zext i16 %i.f to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  %i.i = icmp ugt i16 %i.f, 2
  br i1 %i.i, label %.lr.ph244, label %._crit_edge256

.lr.ph244:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.k = load i32, ptr %i.j, align 8, !tbaa !75   ; 2 uses
  %i.l = add nsw i32 %i.d, -1                     ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = add nuw nsw i32 %i.d, 1
  %i.o = zext i16 %i.c to i64                     ; 7 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep272 = getelementptr i8, ptr %1, i64 12
  %i.p = add nsw i32 %i.d, -3
  %scevgep274 = getelementptr i8, ptr %1, i64 4
  %scevgep276 = getelementptr i8, ptr %1, i64 8
  %scevgep278 = getelementptr i8, ptr %1, i64 16
  %scevgep280 = getelementptr i8, ptr %1, i64 20
  %scevgep282 = getelementptr i8, ptr %1, i64 -8
  %scevgep284 = getelementptr i8, ptr %1, i64 -4
  %i.q = mul nuw nsw i64 %i.o, 12                 ; 4 uses
  %i.r = sub nsw i64 16, %i.q
  %scevgep286 = getelementptr i8, ptr %1, i64 %i.r
  %i.s = sub nsw i64 20, %i.q
  %scevgep288 = getelementptr i8, ptr %1, i64 %i.s
  %i.t = sub nuw nsw i64 -8, %i.q
  %scevgep290 = getelementptr i8, ptr %1, i64 %i.t
  %i.u = sub nuw nsw i64 -4, %i.q
  %scevgep292 = getelementptr i8, ptr %1, i64 %i.u
  %2 = add nsw i32 %i.d, -3
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 3 uses
  %invariant.op = add nuw nsw <8 x i64> %broadcast.splat, splat (i64 1)
  %invariant.op416 = add <8 x i64> %broadcast.splat, splat (i64 -1)
  br label %bb.b

.lr.ph255:                                        ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.w = load i32, ptr %i.v, align 8, !tbaa !75   ; 2 uses
  %i.x = add nsw i32 %i.d, -1                     ; 2 uses
  %i.y = add nuw nsw i32 %i.d, 1
  %i.z = zext i16 %i.c to i64                     ; 3 uses
  %scevgep334 = getelementptr i8, ptr %1, i64 4
  %i.aa = add nsw i32 %i.d, -3
  %scevgep336 = getelementptr i8, ptr %1, i64 8
  %scevgep338 = getelementptr i8, ptr %1, i64 12
  %scevgep340 = getelementptr i8, ptr %1, i64 4
  %scevgep342 = getelementptr i8, ptr %1, i64 8
  %scevgep344 = getelementptr i8, ptr %1, i64 4
  %scevgep346 = getelementptr i8, ptr %1, i64 8
  %i.ab = mul nuw nsw i64 %i.o, 12                ; 2 uses
  %i.ac = sub nsw i64 4, %i.ab
  %scevgep348 = getelementptr i8, ptr %1, i64 %i.ac
  %i.ad = sub nsw i64 8, %i.ab
  %scevgep350 = getelementptr i8, ptr %1, i64 %i.ad
  %i.ae = load ptr, ptr %i.a, align 8             ; 3 uses
  %3 = add nsw i32 %i.d, -3
  %broadcast.splatinsert383 = insertelement <8 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat384 = shufflevector <8 x i64> %broadcast.splatinsert383, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph244, %._crit_edge
  %indvars.iv = phi i32 [ %i.n, %.lr.ph244 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0207242 = phi i32 [ 1, %.lr.ph244 ], [ %i.ev, %._crit_edge ] ; 2 uses
  %i.af = shl nuw nsw i32 %.0207242, 1
  %i.ag = and i32 %i.af, 14                       ; 2 uses
  %i.ah = shl nuw nsw i32 %i.ag, 1
  %i.ai = or disjoint i32 %i.ah, 2
  %i.aj = lshr i32 %i.k, %i.ai
  %i.ak = and i32 %i.aj, 1                        ; 4 uses
  %i.al = add nuw nsw i32 %i.ak, 1                ; 5 uses
  %i.am = icmp slt i32 %i.al, %i.l
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.an = and i32 %i.al, 1
  %i.ao = or disjoint i32 %i.an, %i.ag
  %i.ap = shl nuw nsw i32 %i.ao, 1
  %i.aq = lshr i32 %i.k, %i.ap                    ; 2 uses
  %i.ar = and i32 %i.aq, 3
  %i.as = sub nsw i32 2, %i.ar
  %i.at = sext i32 %i.as to i64                   ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.m, i64 %i.at ; 8 uses
  %i.au = add i32 %indvars.iv, %i.ak
  %i.av = sext i32 %i.au to i64                   ; 6 uses
  %i.aw = sub nsw i32 %2, %i.ak                   ; 2 uses
  %i.ax = lshr i32 %i.aw, 1
  %narrow = add nuw i32 %i.ax, 1
  %i.ay = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.aw, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.az = mul nsw i64 %i.av, 12                   ; 5 uses
  %i.ba = shl i32 %i.aq, 2
  %i.bb = and i32 %i.ba, 12
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bd = sub nsw i64 %i.az, %i.bc
  %scevgep271 = getelementptr i8, ptr %scevgep, i64 %i.bd ; 5 uses
  %i.be = sub nsw i32 %i.p, %i.ak
  %i.bf = lshr i32 %i.be, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = mul nuw nsw i64 %i.bg, 24               ; 2 uses
  %i.bi = add nsw i64 %i.bh, %i.az                ; 4 uses
  %i.bj = sub nsw i64 %i.bi, %i.bc
  %scevgep273 = getelementptr i8, ptr %scevgep272, i64 %i.bj ; 5 uses
  %scevgep275 = getelementptr i8, ptr %scevgep274, i64 %i.az
  %scevgep277 = getelementptr i8, ptr %scevgep276, i64 %i.bi
  %i.bk = add nsw i64 %i.o, %i.av
  %i.bl = mul nsw i64 %i.bk, 12                   ; 3 uses
  %scevgep279 = getelementptr i8, ptr %scevgep278, i64 %i.bl
  %i.bm = add nsw i64 %i.bh, %i.bl                ; 2 uses
  %scevgep281 = getelementptr i8, ptr %scevgep280, i64 %i.bm
  %scevgep283 = getelementptr i8, ptr %scevgep282, i64 %i.bl
  %scevgep285 = getelementptr i8, ptr %scevgep284, i64 %i.bm
  %scevgep287 = getelementptr i8, ptr %scevgep286, i64 %i.az
  %scevgep289 = getelementptr i8, ptr %scevgep288, i64 %i.bi
  %scevgep291 = getelementptr i8, ptr %scevgep290, i64 %i.az
  %scevgep293 = getelementptr i8, ptr %scevgep292, i64 %i.bi
  %bound0 = icmp ult ptr %scevgep271, %scevgep277
  %bound1 = icmp ult ptr %scevgep275, %scevgep273
  %found.conflict = and i1 %bound0, %bound1
  %bound0294 = icmp ult ptr %scevgep271, %scevgep281
  %bound1295 = icmp ult ptr %scevgep279, %scevgep273
  %found.conflict296 = and i1 %bound0294, %bound1295
  %conflict.rdx = or i1 %found.conflict, %found.conflict296
  %bound0297 = icmp ult ptr %scevgep271, %scevgep285
  %bound1298 = icmp ult ptr %scevgep283, %scevgep273
  %found.conflict299 = and i1 %bound0297, %bound1298
  %conflict.rdx300 = or i1 %conflict.rdx, %found.conflict299
  %bound0301 = icmp ult ptr %scevgep271, %scevgep289
  %bound1302 = icmp ult ptr %scevgep287, %scevgep273
  %found.conflict303 = and i1 %bound0301, %bound1302
  %conflict.rdx304 = or i1 %conflict.rdx300, %found.conflict303
  %bound0305 = icmp ult ptr %scevgep271, %scevgep293
  %bound1306 = icmp ult ptr %scevgep291, %scevgep273
  %found.conflict307 = and i1 %bound0305, %bound1306
  %conflict.rdx308 = or i1 %conflict.rdx304, %found.conflict307
  br i1 %conflict.rdx308, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bn = and i64 %i.ay, 7                        ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = select i1 %i.bo, i64 8, i64 %i.bn
  %n.vec = sub nsw i64 %i.ay, %i.bp               ; 3 uses
  %i.bq = shl nsw i64 %n.vec, 1
  %i.br = add nsw i64 %i.bq, %i.av
  %i.bs = trunc i64 %n.vec to i32
  %i.bt = shl i32 %i.bs, 1
  %i.bu = add i32 %i.al, %i.bt
  %broadcast.splatinsert309 = insertelement <8 x i64> poison, i64 %i.av, i64 0
  %broadcast.splat310 = shufflevector <8 x i64> %broadcast.splatinsert309, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat310, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %1, <8 x i64> %vec.ind ; 2 uses
  %wide.gep311 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep311, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77, !alias.scope !114
  %i.bv = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, splat (float 4.000000e+00)
  %.reass = add nuw nsw <8 x i64> %vec.ind, %invariant.op ; 2 uses
  %i.bw = extractelement <8 x i64> %.reass, i64 0
  %wide.gep312 = getelementptr inbounds nuw [12 x i8], ptr %1, <8 x i64> %.reass
  %wide.gep313 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep312, i64 4
  %wide.masked.gather314 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep313, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77, !alias.scope !117
  %.reass417 = add <8 x i64> %vec.ind, %invariant.op416 ; 2 uses
  %i.bx = extractelement <8 x i64> %.reass417, i64 0
  %wide.gep315 = getelementptr inbounds [12 x i8], ptr %1, <8 x i64> %.reass417
  %wide.gep316 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep315, i64 4
  %wide.masked.gather317 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep316, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77, !alias.scope !119
  %i.by = sub nsw <8 x i64> %vec.ind, %broadcast.splat ; 2 uses
  %i.bz = add nuw nsw <8 x i64> %i.by, splat (i64 1) ; 2 uses
  %i.ca = extractelement <8 x i64> %i.bz, i64 0
  %wide.gep318 = getelementptr inbounds [12 x i8], ptr %1, <8 x i64> %i.bz
  %wide.gep319 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep318, i64 4
  %wide.masked.gather320 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep319, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77, !alias.scope !121
  %i.cb = add nsw <8 x i64> %i.by, splat (i64 -1) ; 2 uses
  %i.cc = extractelement <8 x i64> %i.cb, i64 0
  %wide.gep321 = getelementptr inbounds [12 x i8], ptr %1, <8 x i64> %i.cb
  %wide.gep322 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep321, i64 4
  %wide.masked.gather323 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep322, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77, !alias.scope !123
  %i.cd = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bw
  %wide.vec = load <64 x i16>, ptr %i.cd, align 2, !tbaa !76
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.ce = uitofp <8 x i16> %strided.vec to <8 x float>
  %i.cf = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bx
  %wide.vec324 = load <64 x i16>, ptr %i.cf, align 2, !tbaa !76
  %strided.vec325 = shufflevector <64 x i16> %wide.vec324, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cg = uitofp <8 x i16> %strided.vec325 to <8 x float>
  %i.ch = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ca
  %wide.vec326 = load <64 x i16>, ptr %i.ch, align 2, !tbaa !76
  %strided.vec327 = shufflevector <64 x i16> %wide.vec326, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.ci = uitofp <8 x i16> %strided.vec327 to <8 x float>
  %i.cj = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cc
  %wide.vec328 = load <64 x i16>, ptr %i.cj, align 2, !tbaa !76
  %strided.vec329 = shufflevector <64 x i16> %wide.vec328, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.ck = uitofp <8 x i16> %strided.vec329 to <8 x float>
  %i.cl = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather314, %wide.masked.gather317
  %i.cm = fadd reassoc nsz arcp contract afn <8 x float> %i.cl, %wide.masked.gather320
  %i.cn = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %wide.masked.gather323
  %i.co = fsub reassoc nsz arcp contract afn <8 x float> %i.bv, %i.cn
  %i.cp = fadd reassoc nsz arcp contract afn <8 x float> %i.co, %i.ce
  %i.cq = fadd reassoc nsz arcp contract afn <8 x float> %i.cp, %i.cg
  %i.cr = fadd reassoc nsz arcp contract afn <8 x float> %i.cq, %i.ci
  %i.cs = fadd reassoc nsz arcp contract afn <8 x float> %i.cr, %i.ck
  %i.ct = fpext reassoc nsz arcp contract afn <8 x float> %i.cs to <8 x double>
  %i.cu = fmul reassoc nsz arcp contract afn <8 x double> %i.ct, splat (double 2.500000e-01)
  %i.cv = fptosi <8 x double> %i.cu to <8 x i32>
  %i.cw = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cv, <8 x i32> zeroinitializer)
  %i.cx = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.cw, <8 x i32> splat (i32 65535))
  %i.cy = uitofp nneg <8 x i32> %i.cx to <8 x float>
  %wide.gep330 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep, i64 %i.at
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cy, <8 x ptr> align 4 %wide.gep330, <8 x i1> splat (i1 true)), !tbaa !77, !alias.scope !125, !noalias !127
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %scalar.ph.preheader, label %vector.body, !llvm.loop !128

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv257.ph = phi i64 [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph ], [ %i.br, %vector.body ]
  %.0209234.ph = phi i32 [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph ], [ %i.bu, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %scalar.ph ], [ %indvars.iv257.ph, %scalar.ph.preheader ] ; 4 uses
  %.0209234 = phi i32 [ %i.et, %scalar.ph ], [ %.0209234.ph, %scalar.ph.preheader ]
  %i.da = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv257 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load float, ptr %i.db, align 4, !tbaa !77
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, 4.000000e+00
  %i.de = add nuw nsw i64 %indvars.iv257, %i.o    ; 2 uses
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %i.dg = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !77
  %i.dj = add nsw i64 %i.de, -1                   ; 2 uses
  %i.dk = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !77
  %i.dn = sub nsw i64 %indvars.iv257, %i.o        ; 2 uses
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %i.dp = getelementptr inbounds [12 x i8], ptr %1, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !77
  %i.ds = add nsw i64 %i.dn, -1                   ; 2 uses
  %i.dt = getelementptr inbounds [12 x i8], ptr %1, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load float, ptr %i.du, align 4, !tbaa !77
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.df
  %i.dw = load i16, ptr %gep, align 2, !tbaa !76
  %i.dx = uitofp i16 %i.dw to float
  %gep237 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dj
  %i.dy = load i16, ptr %gep237, align 2, !tbaa !76
  %i.dz = uitofp i16 %i.dy to float
  %gep239 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.do
  %i.ea = load i16, ptr %gep239, align 2, !tbaa !76
  %i.eb = uitofp i16 %i.ea to float
  %gep241 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ds
  %i.ec = load i16, ptr %gep241, align 2, !tbaa !76
  %i.ed = uitofp i16 %i.ec to float
  %i.ee = fadd reassoc nsz arcp contract afn float %i.di, %i.dm
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, %i.dr
  %i.eg = fadd reassoc nsz arcp contract afn float %i.ef, %i.dv
  %i.eh = fsub reassoc nsz arcp contract afn float %i.dd, %i.eg
  %i.ei = fadd reassoc nsz arcp contract afn float %i.eh, %i.dx
  %i.ej = fadd reassoc nsz arcp contract afn float %i.ei, %i.dz
  %i.ek = fadd reassoc nsz arcp contract afn float %i.ej, %i.eb
  %i.el = fadd reassoc nsz arcp contract afn float %i.ek, %i.ed
  %i.em = fpext reassoc nsz arcp contract afn float %i.el to double
  %i.en = fmul reassoc nsz arcp contract afn double %i.em, 2.500000e-01
  %i.eo = fptosi double %i.en to i32
  %i.ep = tail call i32 @llvm.smax.i32(i32 %i.eo, i32 0)
  %i.eq = tail call i32 @llvm.umin.i32(i32 %i.ep, i32 65535)
  %i.er = uitofp nneg i32 %i.eq to float
  %i.es = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.at
  store float %i.er, ptr %i.es, align 4, !tbaa !77
  %i.et = add nuw nsw i32 %.0209234, 2            ; 2 uses
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 2
  %i.eu = icmp slt i32 %i.et, %i.l
  br i1 %i.eu, label %scalar.ph, label %._crit_edge, !llvm.loop !129

._crit_edge:                                      ; preds = %scalar.ph, %bb.b
  %i.ev = add nuw nsw i32 %.0207242, 1            ; 2 uses
  %indvars.iv.next = add nuw i32 %indvars.iv, %i.d
  %exitcond.not = icmp eq i32 %i.ev, %i.h
  br i1 %exitcond.not, label %.lr.ph255, label %bb.b, !llvm.loop !130

bb.c:                                             ; preds = %.lr.ph255, %._crit_edge249
  %indvars.iv260 = phi i32 [ %i.y, %.lr.ph255 ], [ %indvars.iv.next261, %._crit_edge249 ] ; 2 uses
  %.1208254 = phi i32 [ 1, %.lr.ph255 ], [ %i.jn, %._crit_edge249 ] ; 2 uses
  %i.ew = shl nuw nsw i32 %.1208254, 1
  %i.ex = and i32 %i.ew, 14                       ; 2 uses
  %i.ey = shl nuw nsw i32 %i.ex, 1
  %i.ez = lshr i32 %i.w, %i.ey
  %i.fa = and i32 %i.ez, 1                        ; 5 uses
  %i.fb = add nuw nsw i32 %i.fa, 1                ; 4 uses
  %i.fc = icmp slt i32 %i.fb, %i.x
  br i1 %i.fc, label %.lr.ph248, label %._crit_edge249

.lr.ph248:                                        ; preds = %bb.c
  %i.fd = or disjoint i32 %i.fa, %i.ex
  %i.fe = shl nuw nsw i32 %i.fd, 1
  %i.ff = lshr i32 %i.w, %i.fe
  %i.fg = and i32 %i.ff, 3                        ; 2 uses
  %i.fh = sub nsw i32 2, %i.fg
  %i.fi = zext nneg i32 %i.fg to i64              ; 7 uses
  %i.fj = sext i32 %i.fh to i64                   ; 3 uses
  %invariant.gep250 = getelementptr [2 x i8], ptr %i.ae, i64 %i.fj ; 4 uses
  %i.fk = add i32 %indvars.iv260, %i.fa
  %i.fl = sext i32 %i.fk to i64                   ; 7 uses
  %i.fm = sub nsw i32 %3, %i.fa                   ; 2 uses
  %i.fn = lshr i32 %i.fm, 1
  %narrow415 = add nuw i32 %i.fn, 1
  %i.fo = zext i32 %narrow415 to i64              ; 2 uses
  %min.iters.check380 = icmp ult i32 %i.fm, 16
  br i1 %min.iters.check380, label %scalar.ph379.preheader, label %vector.memcheck332

vector.memcheck332:                               ; preds = %.lr.ph248
  %i.fp = mul nsw i64 %i.fl, 12                   ; 6 uses
  %i.fq = shl nuw nsw i64 %i.fi, 2                ; 4 uses
  %i.fr = getelementptr i8, ptr %1, i64 %i.fp
  %scevgep333 = getelementptr i8, ptr %i.fr, i64 %i.fq ; 4 uses
  %i.fs = sub nsw i32 %i.aa, %i.fa
  %i.ft = lshr i32 %i.fs, 1
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = mul nuw nsw i64 %i.fu, 24               ; 3 uses
  %i.fw = add nsw i64 %i.fv, %i.fp                ; 2 uses
  %i.fx = getelementptr i8, ptr %scevgep334, i64 %i.fw
  %scevgep335 = getelementptr i8, ptr %i.fx, i64 %i.fq ; 4 uses
  %i.fy = sub nsw i64 %i.fp, %i.fq
  %scevgep337 = getelementptr i8, ptr %scevgep336, i64 %i.fy ; 4 uses
  %i.fz = sub nsw i64 %i.fw, %i.fq
  %scevgep339 = getelementptr i8, ptr %scevgep338, i64 %i.fz ; 4 uses
  %scevgep341 = getelementptr i8, ptr %scevgep340, i64 %i.fp ; 2 uses
  %i.ga = add nsw i64 %i.fv, %i.fp                ; 2 uses
  %scevgep343 = getelementptr i8, ptr %scevgep342, i64 %i.ga ; 2 uses
  %i.gb = add nsw i64 %i.o, %i.fl
  %i.gc = mul nsw i64 %i.gb, 12                   ; 2 uses
  %scevgep345 = getelementptr i8, ptr %scevgep344, i64 %i.gc ; 2 uses
  %i.gd = getelementptr i8, ptr %scevgep346, i64 %i.fv
  %scevgep347 = getelementptr i8, ptr %i.gd, i64 %i.gc ; 2 uses
  %scevgep349 = getelementptr i8, ptr %scevgep348, i64 %i.fp ; 2 uses
  %scevgep351 = getelementptr i8, ptr %scevgep350, i64 %i.ga ; 2 uses
  %bound0352 = icmp ult ptr %scevgep333, %scevgep339
  %bound1353 = icmp ult ptr %scevgep337, %scevgep335
  %found.conflict354 = and i1 %bound0352, %bound1353
  %bound0355 = icmp ult ptr %scevgep333, %scevgep343
  %bound1356 = icmp ult ptr %scevgep341, %scevgep335
  %found.conflict357 = and i1 %bound0355, %bound1356
  %conflict.rdx358 = or i1 %found.conflict354, %found.conflict357
  %bound0359 = icmp ult ptr %scevgep333, %scevgep347
  %bound1360 = icmp ult ptr %scevgep345, %scevgep335
  %found.conflict361 = and i1 %bound0359, %bound1360
  %conflict.rdx362 = or i1 %conflict.rdx358, %found.conflict361
  %bound0363 = icmp ult ptr %scevgep333, %scevgep351
  %bound1364 = icmp ult ptr %scevgep349, %scevgep335
  %found.conflict365 = and i1 %bound0363, %bound1364
  %conflict.rdx366 = or i1 %conflict.rdx362, %found.conflict365
  %bound0367 = icmp ult ptr %scevgep337, %scevgep343
  %bound1368 = icmp ult ptr %scevgep341, %scevgep339
  %found.conflict369 = and i1 %bound0367, %bound1368
  %conflict.rdx370 = or i1 %conflict.rdx366, %found.conflict369
  %bound0371 = icmp ult ptr %scevgep337, %scevgep347
  %bound1372 = icmp ult ptr %scevgep345, %scevgep339
  %found.conflict373 = and i1 %bound0371, %bound1372
  %conflict.rdx374 = or i1 %conflict.rdx370, %found.conflict373
  %bound0375 = icmp ult ptr %scevgep337, %scevgep351
  %bound1376 = icmp ult ptr %scevgep349, %scevgep339
  %found.conflict377 = and i1 %bound0375, %bound1376
  %conflict.rdx378 = or i1 %conflict.rdx374, %found.conflict377
  br i1 %conflict.rdx378, label %scalar.ph379.preheader, label %vector.ph381

vector.ph381:                                     ; preds = %vector.memcheck332
  %i.ge = and i64 %i.fo, 7                        ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 0
  %i.gg = select i1 %i.gf, i64 8, i64 %i.ge
  %n.vec382 = sub nsw i64 %i.fo, %i.gg            ; 3 uses
  %i.gh = shl nsw i64 %n.vec382, 1
  %i.gi = add nsw i64 %i.gh, %i.fl
  %i.gj = trunc i64 %n.vec382 to i32
  %i.gk = shl i32 %i.gj, 1
  %i.gl = add i32 %i.fb, %i.gk
  %broadcast.splatinsert385 = insertelement <8 x i64> poison, i64 %i.fl, i64 0
  %broadcast.splat386 = shufflevector <8 x i64> %broadcast.splatinsert385, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction387 = add nuw nsw <8 x i64> %broadcast.splat386, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep418 = getelementptr [8 x i8], ptr %i.ae, i64 %i.fl
  br label %vector.body388

vector.body388:                                   ; preds = %vector.body388, %vector.ph381
  %index389 = phi i64 [ 0, %vector.ph381 ], [ %index.next410, %vector.body388 ] ; 2 uses
  %vec.ind390 = phi <8 x i64> [ %induction387, %vector.ph381 ], [ %vec.ind.next411, %vector.body388 ] ; 4 uses
  %.idx = shl i64 %index389, 4
  %gep419 = getelementptr i8, ptr %invariant.gep418, i64 %.idx ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %gep419, i64 8
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.gm, i64 %i.fi
  %wide.vec391 = load <64 x i16>, ptr %i.gn, align 2, !tbaa !76
  %strided.vec392 = shufflevector <64 x i16> %wide.vec391, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.go = zext <8 x i16> %strided.vec392 to <8 x i32>
  %i.gp = getelementptr i8, ptr %gep419, i64 -8
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.fi
  %wide.vec393 = load <64 x i16>, ptr %i.gq, align 2, !tbaa !76
  %strided.vec394 = shufflevector <64 x i16> %wide.vec393, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.gr = zext <8 x i16> %strided.vec394 to <8 x i32>
  %i.gs = add nuw nsw <8 x i32> %i.gr, %i.go
  %i.gt = uitofp nneg <8 x i32> %i.gs to <8 x double>
  %i.gu = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.gt, splat (double 5.000000e-01)
  %i.gv = fptosi <8 x double> %i.gu to <8 x i32>
  %i.gw = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gv, <8 x i32> zeroinitializer)
  %i.gx = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gw, <8 x i32> splat (i32 65535))
  %i.gy = uitofp nneg <8 x i32> %i.gx to <8 x float>
  %wide.gep395 = getelementptr inbounds nuw [12 x i8], ptr %1, <8 x i64> %vec.ind390 ; 3 uses
  %wide.gep396 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep395, i64 %i.fi
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.gy, <8 x ptr> align 4 %wide.gep396, <8 x i1> splat (i1 true)), !tbaa !77, !alias.scope !131, !noalias !134
  %wide.gep397 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep395, i64 4
  %wide.masked.gather398 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep397, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77, !alias.scope !139
  %i.gz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather398, splat (float 2.000000e+00)
  %i.ha = add nuw nsw <8 x i64> %vec.ind390, %broadcast.splat384 ; 2 uses
  %i.hb = extractelement <8 x i64> %i.ha, i64 0
  %wide.gep399 = getelementptr inbounds nuw [12 x i8], ptr %1, <8 x i64> %i.ha
  %wide.gep400 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep399, i64 4
  %wide.masked.gather401 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep400, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77, !alias.scope !140
  %i.hc = sub nsw <8 x i64> %vec.ind390, %broadcast.splat384 ; 2 uses
  %i.hd = extractelement <8 x i64> %i.hc, i64 0
  %wide.gep402 = getelementptr inbounds [12 x i8], ptr %1, <8 x i64> %i.hc
  %wide.gep403 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep402, i64 4
  %wide.masked.gather404 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep403, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77, !alias.scope !141
  %i.he = getelementptr [8 x i8], ptr %invariant.gep250, i64 %i.hb
  %wide.vec405 = load <64 x i16>, ptr %i.he, align 2, !tbaa !76
  %strided.vec406 = shufflevector <64 x i16> %wide.vec405, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.hf = uitofp <8 x i16> %strided.vec406 to <8 x float>
  %i.hg = getelementptr [8 x i8], ptr %invariant.gep250, i64 %i.hd
  %wide.vec407 = load <64 x i16>, ptr %i.hg, align 2, !tbaa !76
  %strided.vec408 = shufflevector <64 x i16> %wide.vec407, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.hh = uitofp <8 x i16> %strided.vec408 to <8 x float>
  %i.hi = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather401, %wide.masked.gather404
  %i.hj = fsub reassoc nsz arcp contract afn <8 x float> %i.gz, %i.hi
  %i.hk = fadd reassoc nsz arcp contract afn <8 x float> %i.hj, %i.hf
  %i.hl = fadd reassoc nsz arcp contract afn <8 x float> %i.hk, %i.hh
  %i.hm = fpext reassoc nsz arcp contract afn <8 x float> %i.hl to <8 x double>
  %i.hn = fmul reassoc nsz arcp contract afn <8 x double> %i.hm, splat (double 5.000000e-01)
  %i.ho = fptosi <8 x double> %i.hn to <8 x i32>
  %i.hp = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ho, <8 x i32> zeroinitializer)
  %i.hq = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.hp, <8 x i32> splat (i32 65535))
  %i.hr = uitofp nneg <8 x i32> %i.hq to <8 x float>
  %wide.gep409 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep395, i64 %i.fj
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.hr, <8 x ptr> align 4 %wide.gep409, <8 x i1> splat (i1 true)), !tbaa !77, !alias.scope !142, !noalias !143
  %index.next410 = add nuw i64 %index389, 8       ; 2 uses
  %vec.ind.next411 = add nuw nsw <8 x i64> %vec.ind390, splat (i64 16)
  %i.hs = icmp eq i64 %index.next410, %n.vec382
  br i1 %i.hs, label %scalar.ph379.preheader, label %vector.body388, !llvm.loop !144

scalar.ph379.preheader:                           ; preds = %vector.body388, %vector.memcheck332, %.lr.ph248
  %indvars.iv262.ph = phi i64 [ %i.fl, %vector.memcheck332 ], [ %i.fl, %.lr.ph248 ], [ %i.gi, %vector.body388 ]
  %.1210245.ph = phi i32 [ %i.fb, %vector.memcheck332 ], [ %i.fb, %.lr.ph248 ], [ %i.gl, %vector.body388 ]
  br label %scalar.ph379

scalar.ph379:                                     ; preds = %scalar.ph379.preheader, %scalar.ph379
  %indvars.iv262 = phi i64 [ %indvars.iv.next263, %scalar.ph379 ], [ %indvars.iv262.ph, %scalar.ph379.preheader ] ; 5 uses
  %.1210245 = phi i32 [ %i.jl, %scalar.ph379 ], [ %.1210245.ph, %scalar.ph379.preheader ]
  %i.ht = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv262 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.hu, i64 %i.fi
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !76
  %i.hx = zext i16 %i.hw to i32
  %i.hy = getelementptr i8, ptr %i.ht, i64 -8
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.fi
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !76
  %i.ib = zext i16 %i.ia to i32
  %i.ic = add nuw nsw i32 %i.ib, %i.hx
  %i.id = uitofp nneg i32 %i.ic to double
  %i.ie = fmul reassoc nnan nsz arcp contract afn double %i.id, 5.000000e-01
  %i.if = fptosi double %i.ie to i32
  %i.ig = tail call i32 @llvm.smax.i32(i32 %i.if, i32 0)
  %i.ih = tail call i32 @llvm.umin.i32(i32 %i.ig, i32 65535)
  %i.ii = uitofp nneg i32 %i.ih to float
  %i.ij = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv262 ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.fi
  store float %i.ii, ptr %i.ik, align 4, !tbaa !77
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.im = load float, ptr %i.il, align 4, !tbaa !77
  %i.in = fmul reassoc nsz arcp contract afn float %i.im, 2.000000e+00
  %i.io = add nuw nsw i64 %indvars.iv262, %i.z    ; 2 uses
  %i.ip = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !77
  %i.is = sub nsw i64 %indvars.iv262, %i.z        ; 2 uses
  %i.it = getelementptr inbounds [12 x i8], ptr %1, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !77
  %gep251 = getelementptr [8 x i8], ptr %invariant.gep250, i64 %i.io
  %i.iw = load i16, ptr %gep251, align 2, !tbaa !76
  %i.ix = uitofp i16 %i.iw to float
  %gep253 = getelementptr [8 x i8], ptr %invariant.gep250, i64 %i.is
  %i.iy = load i16, ptr %gep253, align 2, !tbaa !76
  %i.iz = uitofp i16 %i.iy to float
  %i.ja = fadd reassoc nsz arcp contract afn float %i.ir, %i.iv
  %i.jb = fsub reassoc nsz arcp contract afn float %i.in, %i.ja
  %i.jc = fadd reassoc nsz arcp contract afn float %i.jb, %i.ix
  %i.jd = fadd reassoc nsz arcp contract afn float %i.jc, %i.iz
  %i.je = fpext reassoc nsz arcp contract afn float %i.jd to double
  %i.jf = fmul reassoc nsz arcp contract afn double %i.je, 5.000000e-01
  %i.jg = fptosi double %i.jf to i32
  %i.jh = tail call i32 @llvm.smax.i32(i32 %i.jg, i32 0)
  %i.ji = tail call i32 @llvm.umin.i32(i32 %i.jh, i32 65535)
  %i.jj = uitofp nneg i32 %i.ji to float
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.fj
  store float %i.jj, ptr %i.jk, align 4, !tbaa !77
  %i.jl = add nuw nsw i32 %.1210245, 2            ; 2 uses
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 2
  %i.jm = icmp slt i32 %i.jl, %i.x
  br i1 %i.jm, label %scalar.ph379, label %._crit_edge249, !llvm.loop !145

._crit_edge249:                                   ; preds = %scalar.ph379, %bb.c
  %i.jn = add nuw nsw i32 %.1208254, 1            ; 2 uses
  %indvars.iv.next261 = add nuw i32 %indvars.iv260, %i.d
  %exitcond265.not = icmp eq i32 %i.jn, %i.h
  br i1 %exitcond265.not, label %._crit_edge256, label %bb.c, !llvm.loop !146

._crit_edge256:                                   ; preds = %._crit_edge249, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw10dcb_color3EPA3_f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.c = load i16, ptr %i.b, align 2, !tbaa !11   ; 3 uses
  %i.d = zext i16 %i.c to i32                     ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i16, ptr %i.e, align 4, !tbaa !74   ; 2 uses
  %i.g = zext i16 %i.f to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  %i.i = icmp ugt i16 %i.f, 2
  br i1 %i.i, label %.lr.ph236, label %._crit_edge252

.lr.ph236:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.k = load i32, ptr %i.j, align 8, !tbaa !75   ; 2 uses
  %i.l = add nsw i32 %i.d, -1                     ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = add nuw nsw i32 %i.d, 1
  %i.o = zext i16 %i.c to i64                     ; 5 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep270 = getelementptr i8, ptr %1, i64 12
  %i.p = add nsw i32 %i.d, -3
  %scevgep272 = getelementptr i8, ptr %1, i64 4
  %scevgep274 = getelementptr i8, ptr %1, i64 8
  %scevgep276 = getelementptr i8, ptr %1, i64 16
  %scevgep278 = getelementptr i8, ptr %1, i64 20
  %scevgep280 = getelementptr i8, ptr %1, i64 -8
  %scevgep282 = getelementptr i8, ptr %1, i64 -4
  %i.q = mul nuw nsw i64 %i.o, 12                 ; 4 uses
  %i.r = sub nsw i64 16, %i.q
  %scevgep284 = getelementptr i8, ptr %1, i64 %i.r
  %i.s = sub nsw i64 20, %i.q
  %scevgep286 = getelementptr i8, ptr %1, i64 %i.s
  %i.t = sub nuw nsw i64 -8, %i.q
  %scevgep288 = getelementptr i8, ptr %1, i64 %i.t
  %i.u = sub nuw nsw i64 -4, %i.q
  %scevgep290 = getelementptr i8, ptr %1, i64 %i.u
  %2 = add nsw i32 %i.d, -3
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 3 uses
  %invariant.op = add nuw nsw <8 x i64> %broadcast.splat, splat (i64 1)
  %invariant.op412 = add <8 x i64> %broadcast.splat, splat (i64 -1)
  br label %bb.b

.lr.ph251:                                        ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.w = load i32, ptr %i.v, align 8, !tbaa !75   ; 2 uses
  %i.x = add nsw i32 %i.d, -1                     ; 2 uses
  %i.y = add nuw nsw i32 %i.d, 1
  %i.z = zext i16 %i.c to i64                     ; 3 uses
  %scevgep332 = getelementptr i8, ptr %1, i64 4
  %i.aa = add nsw i32 %i.d, -3
  %scevgep334 = getelementptr i8, ptr %1, i64 8
  %scevgep336 = getelementptr i8, ptr %1, i64 12
  %scevgep338 = getelementptr i8, ptr %1, i64 4
  %scevgep340 = getelementptr i8, ptr %1, i64 8
  %scevgep342 = getelementptr i8, ptr %1, i64 16
  %scevgep344 = getelementptr i8, ptr %1, i64 20
  %scevgep346 = getelementptr i8, ptr %1, i64 -8
  %scevgep348 = getelementptr i8, ptr %1, i64 -4
  %i.ab = load ptr, ptr %i.a, align 8             ; 2 uses
  %3 = add nsw i32 %i.d, -3
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph236, %._crit_edge
  %indvars.iv = phi i32 [ %i.n, %.lr.ph236 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0199234 = phi i32 [ 1, %.lr.ph236 ], [ %i.es, %._crit_edge ] ; 2 uses
  %i.ac = shl nuw nsw i32 %.0199234, 1
  %i.ad = and i32 %i.ac, 14                       ; 2 uses
  %i.ae = shl nuw nsw i32 %i.ad, 1
  %i.af = or disjoint i32 %i.ae, 2
  %i.ag = lshr i32 %i.k, %i.af
  %i.ah = and i32 %i.ag, 1                        ; 4 uses
  %i.ai = add nuw nsw i32 %i.ah, 1                ; 5 uses
  %i.aj = icmp slt i32 %i.ai, %i.l
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ak = and i32 %i.ai, 1
  %i.al = or disjoint i32 %i.ak, %i.ad
  %i.am = shl nuw nsw i32 %i.al, 1
  %i.an = lshr i32 %i.k, %i.am                    ; 2 uses
  %i.ao = and i32 %i.an, 3
  %i.ap = sub nsw i32 2, %i.ao
  %i.aq = sext i32 %i.ap to i64                   ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.m, i64 %i.aq ; 8 uses
  %i.ar = add i32 %indvars.iv, %i.ah
  %i.as = sext i32 %i.ar to i64                   ; 6 uses
  %i.at = sub nsw i32 %2, %i.ah                   ; 2 uses
  %i.au = lshr i32 %i.at, 1
  %narrow = add nuw i32 %i.au, 1
  %i.av = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.at, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.aw = mul nsw i64 %i.as, 12                   ; 5 uses
  %i.ax = shl i32 %i.an, 2
  %i.ay = and i32 %i.ax, 12
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = sub nsw i64 %i.aw, %i.az
  %scevgep269 = getelementptr i8, ptr %scevgep, i64 %i.ba ; 5 uses
  %i.bb = sub nsw i32 %i.p, %i.ah
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = mul nuw nsw i64 %i.bd, 24               ; 2 uses
  %i.bf = add nsw i64 %i.be, %i.aw                ; 4 uses
  %i.bg = sub nsw i64 %i.bf, %i.az
  %scevgep271 = getelementptr i8, ptr %scevgep270, i64 %i.bg ; 5 uses
  %scevgep273 = getelementptr i8, ptr %scevgep272, i64 %i.aw
  %scevgep275 = getelementptr i8, ptr %scevgep274, i64 %i.bf
  %i.bh = add nsw i64 %i.o, %i.as
  %i.bi = mul nsw i64 %i.bh, 12                   ; 3 uses
  %scevgep277 = getelementptr i8, ptr %scevgep276, i64 %i.bi
  %i.bj = add nsw i64 %i.be, %i.bi                ; 2 uses
  %scevgep279 = getelementptr i8, ptr %scevgep278, i64 %i.bj
  %scevgep281 = getelementptr i8, ptr %scevgep280, i64 %i.bi
  %scevgep283 = getelementptr i8, ptr %scevgep282, i64 %i.bj
  %scevgep285 = getelementptr i8, ptr %scevgep284, i64 %i.aw
  %scevgep287 = getelementptr i8, ptr %scevgep286, i64 %i.bf
  %scevgep289 = getelementptr i8, ptr %scevgep288, i64 %i.aw
  %scevgep291 = getelementptr i8, ptr %scevgep290, i64 %i.bf
  %bound0 = icmp ult ptr %scevgep269, %scevgep275
  %bound1 = icmp ult ptr %scevgep273, %scevgep271
  %found.conflict = and i1 %bound0, %bound1
  %bound0292 = icmp ult ptr %scevgep269, %scevgep279
  %bound1293 = icmp ult ptr %scevgep277, %scevgep271
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx = or i1 %found.conflict, %found.conflict294
  %bound0295 = icmp ult ptr %scevgep269, %scevgep283
  %bound1296 = icmp ult ptr %scevgep281, %scevgep271
  %found.conflict297 = and i1 %bound0295, %bound1296
  %conflict.rdx298 = or i1 %conflict.rdx, %found.conflict297
  %bound0299 = icmp ult ptr %scevgep269, %scevgep287
  %bound1300 = icmp ult ptr %scevgep285, %scevgep271
  %found.conflict301 = and i1 %bound0299, %bound1300
  %conflict.rdx302 = or i1 %conflict.rdx298, %found.conflict301
  %bound0303 = icmp ult ptr %scevgep269, %scevgep291
  %bound1304 = icmp ult ptr %scevgep289, %scevgep271
  %found.conflict305 = and i1 %bound0303, %bound1304
  %conflict.rdx306 = or i1 %conflict.rdx302, %found.conflict305
  br i1 %conflict.rdx306, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bk = and i64 %i.av, 7                        ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  %i.bm = select i1 %i.bl, i64 8, i64 %i.bk
  %n.vec = sub nsw i64 %i.av, %i.bm               ; 3 uses
  %i.bn = shl nsw i64 %n.vec, 1
  %i.bo = add nsw i64 %i.bn, %i.as
  %i.bp = trunc i64 %n.vec to i32
  %i.bq = shl i32 %i.bp, 1
  %i.br = add i32 %i.ai, %i.bq
  %broadcast.splatinsert307 = insertelement <8 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat308 = shufflevector <8 x i64> %broadcast.splatinsert307, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat308, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %1, <8 x i64> %vec.ind ; 2 uses
  %wide.gep309 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep309, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77, !alias.scope !147
  %i.bs = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, splat (float 4.000000e+00)
  %.reass = add nuw nsw <8 x i64> %vec.ind, %invariant.op ; 2 uses
  %i.bt = extractelement <8 x i64> %.reass, i64 0
  %wide.gep310 = getelementptr inbounds nuw [12 x i8], ptr %1, <8 x i64> %.reass
  %wide.gep311 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep310, i64 4
  %wide.masked.gather312 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep311, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77, !alias.scope !150
  %.reass413 = add <8 x i64> %vec.ind, %invariant.op412 ; 2 uses
  %i.bu = extractelement <8 x i64> %.reass413, i64 0
  %wide.gep313 = getelementptr inbounds [12 x i8], ptr %1, <8 x i64> %.reass413
  %wide.gep314 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep313, i64 4
  %wide.masked.gather315 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep314, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77, !alias.scope !152
  %i.bv = sub nsw <8 x i64> %vec.ind, %broadcast.splat ; 2 uses
  %i.bw = add nuw nsw <8 x i64> %i.bv, splat (i64 1) ; 2 uses
  %i.bx = extractelement <8 x i64> %i.bw, i64 0
  %wide.gep316 = getelementptr inbounds [12 x i8], ptr %1, <8 x i64> %i.bw
  %wide.gep317 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep316, i64 4
  %wide.masked.gather318 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep317, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77, !alias.scope !154
  %i.by = add nsw <8 x i64> %i.bv, splat (i64 -1) ; 2 uses
  %i.bz = extractelement <8 x i64> %i.by, i64 0
  %wide.gep319 = getelementptr inbounds [12 x i8], ptr %1, <8 x i64> %i.by
  %wide.gep320 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep319, i64 4
  %wide.masked.gather321 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep320, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77, !alias.scope !156
  %i.ca = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bt
  %wide.vec = load <64 x i16>, ptr %i.ca, align 2, !tbaa !76
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cb = uitofp <8 x i16> %strided.vec to <8 x float>
  %i.cc = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bu
  %wide.vec322 = load <64 x i16>, ptr %i.cc, align 2, !tbaa !76
  %strided.vec323 = shufflevector <64 x i16> %wide.vec322, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cd = uitofp <8 x i16> %strided.vec323 to <8 x float>
  %i.ce = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bx
  %wide.vec324 = load <64 x i16>, ptr %i.ce, align 2, !tbaa !76
  %strided.vec325 = shufflevector <64 x i16> %wide.vec324, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cf = uitofp <8 x i16> %strided.vec325 to <8 x float>
  %i.cg = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bz
  %wide.vec326 = load <64 x i16>, ptr %i.cg, align 2, !tbaa !76
  %strided.vec327 = shufflevector <64 x i16> %wide.vec326, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.ch = uitofp <8 x i16> %strided.vec327 to <8 x float>
  %i.ci = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather312, %wide.masked.gather315
  %i.cj = fadd reassoc nsz arcp contract afn <8 x float> %i.ci, %wide.masked.gather318
  %i.ck = fadd reassoc nsz arcp contract afn <8 x float> %i.cj, %wide.masked.gather321
  %i.cl = fsub reassoc nsz arcp contract afn <8 x float> %i.bs, %i.ck
  %i.cm = fadd reassoc nsz arcp contract afn <8 x float> %i.cl, %i.cb
  %i.cn = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %i.cd
  %i.co = fadd reassoc nsz arcp contract afn <8 x float> %i.cn, %i.cf
  %i.cp = fadd reassoc nsz arcp contract afn <8 x float> %i.co, %i.ch
  %i.cq = fpext reassoc nsz arcp contract afn <8 x float> %i.cp to <8 x double>
  %i.cr = fmul reassoc nsz arcp contract afn <8 x double> %i.cq, splat (double 2.500000e-01)
  %i.cs = fptosi <8 x double> %i.cr to <8 x i32>
  %i.ct = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cs, <8 x i32> zeroinitializer)
  %i.cu = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ct, <8 x i32> splat (i32 65535))
  %i.cv = uitofp nneg <8 x i32> %i.cu to <8 x float>
  %wide.gep328 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep, i64 %i.aq
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cv, <8 x ptr> align 4 %wide.gep328, <8 x i1> splat (i1 true)), !tbaa !77, !alias.scope !158, !noalias !160
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %scalar.ph.preheader, label %vector.body, !llvm.loop !161

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv253.ph = phi i64 [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph ], [ %i.bo, %vector.body ]
  %.0201226.ph = phi i32 [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph ], [ %i.br, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %scalar.ph ], [ %indvars.iv253.ph, %scalar.ph.preheader ] ; 4 uses
  %.0201226 = phi i32 [ %i.eq, %scalar.ph ], [ %.0201226.ph, %scalar.ph.preheader ]
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv253 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !77
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, 4.000000e+00
  %i.db = add nuw nsw i64 %indvars.iv253, %i.o    ; 2 uses
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %i.dd = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load float, ptr %i.de, align 4, !tbaa !77
  %i.dg = add nsw i64 %i.db, -1                   ; 2 uses
  %i.dh = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load float, ptr %i.di, align 4, !tbaa !77
  %i.dk = sub nsw i64 %indvars.iv253, %i.o        ; 2 uses
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %i.dm = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !77
  %i.dp = add nsw i64 %i.dk, -1                   ; 2 uses
  %i.dq = getelementptr inbounds [12 x i8], ptr %1, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !77
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dc
  %i.dt = load i16, ptr %gep, align 2, !tbaa !76
  %i.du = uitofp i16 %i.dt to float
  %gep229 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dg
  %i.dv = load i16, ptr %gep229, align 2, !tbaa !76
  %i.dw = uitofp i16 %i.dv to float
  %gep231 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dl
  %i.dx = load i16, ptr %gep231, align 2, !tbaa !76
  %i.dy = uitofp i16 %i.dx to float
  %gep233 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dp
  %i.dz = load i16, ptr %gep233, align 2, !tbaa !76
  %i.ea = uitofp i16 %i.dz to float
  %i.eb = fadd reassoc nsz arcp contract afn float %i.df, %i.dj
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, %i.do
  %i.ed = fadd reassoc nsz arcp contract afn float %i.ec, %i.ds
  %i.ee = fsub reassoc nsz arcp contract afn float %i.da, %i.ed
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, %i.du
  %i.eg = fadd reassoc nsz arcp contract afn float %i.ef, %i.dw
  %i.eh = fadd reassoc nsz arcp contract afn float %i.eg, %i.dy
  %i.ei = fadd reassoc nsz arcp contract afn float %i.eh, %i.ea
  %i.ej = fpext reassoc nsz arcp contract afn float %i.ei to double
  %i.ek = fmul reassoc nsz arcp contract afn double %i.ej, 2.500000e-01
  %i.el = fptosi double %i.ek to i32
  %i.em = tail call i32 @llvm.smax.i32(i32 %i.el, i32 0)
  %i.en = tail call i32 @llvm.umin.i32(i32 %i.em, i32 65535)
  %i.eo = uitofp nneg i32 %i.en to float
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.aq
  store float %i.eo, ptr %i.ep, align 4, !tbaa !77
  %i.eq = add nuw nsw i32 %.0201226, 2            ; 2 uses
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 2
  %i.er = icmp slt i32 %i.eq, %i.l
  br i1 %i.er, label %scalar.ph, label %._crit_edge, !llvm.loop !162

._crit_edge:                                      ; preds = %scalar.ph, %bb.b
  %i.es = add nuw nsw i32 %.0199234, 1            ; 2 uses
  %indvars.iv.next = add nuw i32 %indvars.iv, %i.d
  %exitcond.not = icmp eq i32 %i.es, %i.h
  br i1 %exitcond.not, label %.lr.ph251, label %bb.b, !llvm.loop !163

bb.c:                                             ; preds = %.lr.ph251, %._crit_edge241
  %indvars.iv256 = phi i32 [ %i.y, %.lr.ph251 ], [ %indvars.iv.next257, %._crit_edge241 ] ; 2 uses
  %.1200250 = phi i32 [ 1, %.lr.ph251 ], [ %i.jd, %._crit_edge241 ] ; 2 uses
  %i.et = shl nuw nsw i32 %.1200250, 1
  %i.eu = and i32 %i.et, 14                       ; 2 uses
  %i.ev = shl nuw nsw i32 %i.eu, 1
  %i.ew = lshr i32 %i.w, %i.ev
  %i.ex = and i32 %i.ew, 1                        ; 5 uses
  %i.ey = add nuw nsw i32 %i.ex, 1                ; 4 uses
  %i.ez = icmp slt i32 %i.ey, %i.x
  br i1 %i.ez, label %.lr.ph240, label %._crit_edge241

.lr.ph240:                                        ; preds = %bb.c
  %i.fa = or disjoint i32 %i.ex, %i.eu
  %i.fb = shl nuw nsw i32 %i.fa, 1
  %i.fc = lshr i32 %i.w, %i.fb
  %i.fd = and i32 %i.fc, 3                        ; 2 uses
  %i.fe = sub nsw i32 2, %i.fd
  %i.ff = zext nneg i32 %i.fd to i64              ; 4 uses
  %invariant.gep242 = getelementptr [2 x i8], ptr %i.ab, i64 %i.ff ; 4 uses
  %i.fg = sext i32 %i.fe to i64                   ; 3 uses
  %invariant.gep246 = getelementptr [2 x i8], ptr %i.ab, i64 %i.fg ; 3 uses
  %i.fh = add i32 %indvars.iv256, %i.ex
  %i.fi = sext i32 %i.fh to i64                   ; 6 uses
  %invariant.gep267 = getelementptr [8 x i8], ptr %invariant.gep246, i64 %i.z ; 2 uses
  %i.fj = sub nsw i32 %3, %i.ex                   ; 2 uses
  %i.fk = lshr i32 %i.fj, 1
  %narrow411 = add nuw i32 %i.fk, 1
  %i.fl = zext i32 %narrow411 to i64              ; 2 uses
  %min.iters.check378 = icmp ult i32 %i.fj, 16
  br i1 %min.iters.check378, label %scalar.ph377.preheader, label %vector.memcheck330

vector.memcheck330:                               ; preds = %.lr.ph240
  %i.fm = mul nsw i64 %i.fi, 12                   ; 7 uses
  %i.fn = shl nuw nsw i64 %i.ff, 2                ; 4 uses
  %i.fo = getelementptr i8, ptr %1, i64 %i.fm
  %scevgep331 = getelementptr i8, ptr %i.fo, i64 %i.fn ; 4 uses
  %i.fp = sub nsw i32 %i.aa, %i.ex
  %i.fq = lshr i32 %i.fp, 1
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = mul nuw nsw i64 %i.fr, 24               ; 2 uses
  %i.ft = add nsw i64 %i.fs, %i.fm                ; 2 uses
  %i.fu = getelementptr i8, ptr %scevgep332, i64 %i.ft
  %scevgep333 = getelementptr i8, ptr %i.fu, i64 %i.fn ; 4 uses
  %i.fv = sub nsw i64 %i.fm, %i.fn
  %scevgep335 = getelementptr i8, ptr %scevgep334, i64 %i.fv ; 4 uses
  %i.fw = sub nsw i64 %i.ft, %i.fn
  %scevgep337 = getelementptr i8, ptr %scevgep336, i64 %i.fw ; 4 uses
  %scevgep339 = getelementptr i8, ptr %scevgep338, i64 %i.fm ; 2 uses
  %i.fx = add nsw i64 %i.fs, %i.fm                ; 3 uses
  %scevgep341 = getelementptr i8, ptr %scevgep340, i64 %i.fx ; 2 uses
  %scevgep343 = getelementptr i8, ptr %scevgep342, i64 %i.fm ; 2 uses
  %scevgep345 = getelementptr i8, ptr %scevgep344, i64 %i.fx ; 2 uses
  %scevgep347 = getelementptr i8, ptr %scevgep346, i64 %i.fm ; 2 uses
  %scevgep349 = getelementptr i8, ptr %scevgep348, i64 %i.fx ; 2 uses
  %bound0350 = icmp ult ptr %scevgep331, %scevgep337
  %bound1351 = icmp ult ptr %scevgep335, %scevgep333
  %found.conflict352 = and i1 %bound0350, %bound1351
  %bound0353 = icmp ult ptr %scevgep331, %scevgep341
  %bound1354 = icmp ult ptr %scevgep339, %scevgep333
  %found.conflict355 = and i1 %bound0353, %bound1354
  %conflict.rdx356 = or i1 %found.conflict352, %found.conflict355
  %bound0357 = icmp ult ptr %scevgep331, %scevgep345
  %bound1358 = icmp ult ptr %scevgep343, %scevgep333
  %found.conflict359 = and i1 %bound0357, %bound1358
  %conflict.rdx360 = or i1 %conflict.rdx356, %found.conflict359
  %bound0361 = icmp ult ptr %scevgep331, %scevgep349
  %bound1362 = icmp ult ptr %scevgep347, %scevgep333
  %found.conflict363 = and i1 %bound0361, %bound1362
  %conflict.rdx364 = or i1 %conflict.rdx360, %found.conflict363
  %bound0365 = icmp ult ptr %scevgep335, %scevgep341
  %bound1366 = icmp ult ptr %scevgep339, %scevgep337
  %found.conflict367 = and i1 %bound0365, %bound1366
  %conflict.rdx368 = or i1 %conflict.rdx364, %found.conflict367
  %bound0369 = icmp ult ptr %scevgep335, %scevgep345
  %bound1370 = icmp ult ptr %scevgep343, %scevgep337
  %found.conflict371 = and i1 %bound0369, %bound1370
  %conflict.rdx372 = or i1 %conflict.rdx368, %found.conflict371
  %bound0373 = icmp ult ptr %scevgep335, %scevgep349
  %bound1374 = icmp ult ptr %scevgep347, %scevgep337
  %found.conflict375 = and i1 %bound0373, %bound1374
  %conflict.rdx376 = or i1 %conflict.rdx372, %found.conflict375
  br i1 %conflict.rdx376, label %scalar.ph377.preheader, label %vector.ph379

vector.ph379:                                     ; preds = %vector.memcheck330
  %i.fy = and i64 %i.fl, 7                        ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 0
  %i.ga = select i1 %i.fz, i64 8, i64 %i.fy
  %n.vec380 = sub nsw i64 %i.fl, %i.ga            ; 3 uses
  %i.gb = shl nsw i64 %n.vec380, 1
  %i.gc = add nsw i64 %i.gb, %i.fi
  %i.gd = trunc i64 %n.vec380 to i32
  %i.ge = shl i32 %i.gd, 1
  %i.gf = add i32 %i.ey, %i.ge
  %broadcast.splatinsert381 = insertelement <8 x i64> poison, i64 %i.fi, i64 0
  %broadcast.splat382 = shufflevector <8 x i64> %broadcast.splatinsert381, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction383 = add nuw nsw <8 x i64> %broadcast.splat382, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body384

vector.body384:                                   ; preds = %vector.body384, %vector.ph379
  %index385 = phi i64 [ 0, %vector.ph379 ], [ %index.next406, %vector.body384 ] ; 2 uses
  %vec.ind386 = phi <8 x i64> [ %induction383, %vector.ph379 ], [ %vec.ind.next407, %vector.body384 ] ; 4 uses
  %i.gg = shl nuw i64 %index385, 1
  %i.gh = add nuw i64 %i.gg, %i.fi                ; 2 uses
  %wide.gep387 = getelementptr inbounds nuw [12 x i8], ptr %1, <8 x i64> %vec.ind386 ; 3 uses
  %wide.gep388 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep387, i64 4
  %wide.masked.gather389 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep388, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77, !alias.scope !164
  %i.gi = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather389, splat (float 2.000000e+00)
  %i.gj = add nuw nsw <8 x i64> %vec.ind386, splat (i64 1) ; 2 uses
  %i.gk = extractelement <8 x i64> %i.gj, i64 0
  %wide.gep390 = getelementptr inbounds nuw [12 x i8], ptr %1, <8 x i64> %i.gj
  %wide.gep391 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep390, i64 4
  %wide.masked.gather392 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep391, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77, !alias.scope !167
  %i.gl = add nsw <8 x i64> %vec.ind386, splat (i64 -1) ; 2 uses
  %i.gm = extractelement <8 x i64> %i.gl, i64 0
  %wide.gep393 = getelementptr inbounds [12 x i8], ptr %1, <8 x i64> %i.gl
  %wide.gep394 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep393, i64 4
  %wide.masked.gather395 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep394, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77, !alias.scope !169
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep242, i64 %i.gk
  %wide.vec396 = load <64 x i16>, ptr %i.gn, align 2, !tbaa !76
  %strided.vec397 = shufflevector <64 x i16> %wide.vec396, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.go = uitofp <8 x i16> %strided.vec397 to <8 x float>
  %i.gp = getelementptr [8 x i8], ptr %invariant.gep242, i64 %i.gm
  %wide.vec398 = load <64 x i16>, ptr %i.gp, align 2, !tbaa !76
  %strided.vec399 = shufflevector <64 x i16> %wide.vec398, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.gq = uitofp <8 x i16> %strided.vec399 to <8 x float>
  %i.gr = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather392, %wide.masked.gather395
  %i.gs = fsub reassoc nsz arcp contract afn <8 x float> %i.gi, %i.gr
  %i.gt = fadd reassoc nsz arcp contract afn <8 x float> %i.gs, %i.go
  %i.gu = fadd reassoc nsz arcp contract afn <8 x float> %i.gt, %i.gq
  %i.gv = fpext reassoc nsz arcp contract afn <8 x float> %i.gu to <8 x double>
  %i.gw = fmul reassoc nsz arcp contract afn <8 x double> %i.gv, splat (double 5.000000e-01)
  %i.gx = fptosi <8 x double> %i.gw to <8 x i32>
  %i.gy = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gx, <8 x i32> zeroinitializer)
  %i.gz = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gy, <8 x i32> splat (i32 65535))
  %i.ha = uitofp nneg <8 x i32> %i.gz to <8 x float>
  %wide.gep400 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep387, i64 %i.ff
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ha, <8 x ptr> align 4 %wide.gep400, <8 x i1> splat (i1 true)), !tbaa !77, !alias.scope !171, !noalias !173
  %i.hb = getelementptr [8 x i8], ptr %invariant.gep267, i64 %i.gh
  %wide.vec401 = load <64 x i16>, ptr %i.hb, align 2, !tbaa !76
  %strided.vec402 = shufflevector <64 x i16> %wide.vec401, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.hc = zext <8 x i16> %strided.vec402 to <8 x i32>
  %i.hd = sub nsw i64 %i.gh, %i.z
  %i.he = getelementptr [8 x i8], ptr %invariant.gep246, i64 %i.hd
  %wide.vec403 = load <64 x i16>, ptr %i.he, align 2, !tbaa !76
  %strided.vec404 = shufflevector <64 x i16> %wide.vec403, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.hf = zext <8 x i16> %strided.vec404 to <8 x i32>
  %i.hg = add nuw nsw <8 x i32> %i.hf, %i.hc
  %i.hh = uitofp nneg <8 x i32> %i.hg to <8 x double>
  %i.hi = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.hh, splat (double 5.000000e-01)
  %i.hj = fptosi <8 x double> %i.hi to <8 x i32>
  %i.hk = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hj, <8 x i32> zeroinitializer)
  %i.hl = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.hk, <8 x i32> splat (i32 65535))
  %i.hm = uitofp nneg <8 x i32> %i.hl to <8 x float>
  %wide.gep405 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep387, i64 %i.fg
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.hm, <8 x ptr> align 4 %wide.gep405, <8 x i1> splat (i1 true)), !tbaa !77, !alias.scope !175, !noalias !176
  %index.next406 = add nuw i64 %index385, 8       ; 2 uses
  %vec.ind.next407 = add nuw nsw <8 x i64> %vec.ind386, splat (i64 16)
  %i.hn = icmp eq i64 %index.next406, %n.vec380
  br i1 %i.hn, label %scalar.ph377.preheader, label %vector.body384, !llvm.loop !177

scalar.ph377.preheader:                           ; preds = %vector.body384, %vector.memcheck330, %.lr.ph240
  %indvars.iv258.ph = phi i64 [ %i.fi, %vector.memcheck330 ], [ %i.fi, %.lr.ph240 ], [ %i.gc, %vector.body384 ]
  %.1202237.ph = phi i32 [ %i.ey, %vector.memcheck330 ], [ %i.ey, %.lr.ph240 ], [ %i.gf, %vector.body384 ]
  br label %scalar.ph377

scalar.ph377:                                     ; preds = %scalar.ph377.preheader, %scalar.ph377
  %indvars.iv258 = phi i64 [ %indvars.iv.next259, %scalar.ph377 ], [ %indvars.iv258.ph, %scalar.ph377.preheader ] ; 6 uses
  %.1202237 = phi i32 [ %i.jb, %scalar.ph377 ], [ %.1202237.ph, %scalar.ph377.preheader ]
  %i.ho = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv258 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !77
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hq, 2.000000e+00
  %i.hs = add nuw nsw i64 %indvars.iv258, 1       ; 2 uses
  %i.ht = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !77
  %i.hw = add nsw i64 %indvars.iv258, -1          ; 2 uses
  %i.hx = getelementptr inbounds [12 x i8], ptr %1, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !77
  %gep243 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep242, i64 %i.hs
  %i.ia = load i16, ptr %gep243, align 2, !tbaa !76
  %i.ib = uitofp i16 %i.ia to float
  %gep245 = getelementptr [8 x i8], ptr %invariant.gep242, i64 %i.hw
  %i.ic = load i16, ptr %gep245, align 2, !tbaa !76
  %i.id = uitofp i16 %i.ic to float
  %i.ie = fadd reassoc nsz arcp contract afn float %i.hv, %i.hz
  %i.if = fsub reassoc nsz arcp contract afn float %i.hr, %i.ie
  %i.ig = fadd reassoc nsz arcp contract afn float %i.if, %i.ib
  %i.ih = fadd reassoc nsz arcp contract afn float %i.ig, %i.id
  %i.ii = fpext reassoc nsz arcp contract afn float %i.ih to double
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.ff
  %gep268 = getelementptr [8 x i8], ptr %invariant.gep267, i64 %indvars.iv258
  %i.ik = load i16, ptr %gep268, align 2, !tbaa !76
  %i.il = zext i16 %i.ik to i32
  %i.im = sub nsw i64 %indvars.iv258, %i.z
  %gep249 = getelementptr [8 x i8], ptr %invariant.gep246, i64 %i.im
  %i.in = load i16, ptr %gep249, align 2, !tbaa !76
  %i.io = zext i16 %i.in to i32
  %i.ip = add nuw nsw i32 %i.io, %i.il
  %i.iq = uitofp nneg i32 %i.ip to double
  %i.ir = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.is = insertelement <2 x double> %i.ir, double %i.iq, i64 1
  %i.it = fmul reassoc nsz arcp contract afn <2 x double> %i.is, splat (double 5.000000e-01)
  %i.iu = fptosi <2 x double> %i.it to <2 x i32>
  %i.iv = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.iu, <2 x i32> zeroinitializer)
  %i.iw = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.iv, <2 x i32> splat (i32 65535))
  %i.ix = uitofp nneg <2 x i32> %i.iw to <2 x float> ; 2 uses
  %i.iy = extractelement <2 x float> %i.ix, i64 0
  store float %i.iy, ptr %i.ij, align 4, !tbaa !77
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.fg
  %i.ja = extractelement <2 x float> %i.ix, i64 1
  store float %i.ja, ptr %i.iz, align 4, !tbaa !77
  %i.jb = add nuw nsw i32 %.1202237, 2            ; 2 uses
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 2
  %i.jc = icmp slt i32 %i.jb, %i.x
  br i1 %i.jc, label %scalar.ph377, label %._crit_edge241, !llvm.loop !178

._crit_edge241:                                   ; preds = %scalar.ph377, %bb.c
  %i.jd = add nuw nsw i32 %.1200250, 1            ; 2 uses
  %indvars.iv.next257 = add nuw i32 %indvars.iv256, %i.d
  %exitcond261.not = icmp eq i32 %i.jd, %i.h
  br i1 %exitcond261.not, label %._crit_edge252, label %bb.c, !llvm.loop !179

._crit_edge252:                                   ; preds = %._crit_edge241, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw10dcb_decideEPA3_fS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !74   ; 2 uses
  %i.d = icmp ugt i16 %i.c, 4
  br i1 %i.d, label %.lr.ph1109, label %._crit_edge1110

.lr.ph1109:                                       ; preds = %bb.a
  %i.e = load i16, ptr %i.a, align 2, !tbaa !11   ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 4 uses
  %i.g = shl nuw nsw i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.j = load i32, ptr %i.i, align 8, !tbaa !75   ; 2 uses
  %i.k = add nsw i32 %i.f, -2                     ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8              ; 22 uses
  %i.m = zext i16 %i.e to i64                     ; 9 uses
  %i.n = zext nneg i32 %i.g to i64                ; 3 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 2
  %scevgep1141 = getelementptr i8, ptr %i.l, i64 4
  %i.o = add nsw i32 %i.f, -5
  %i.p = shl nuw nsw i64 %i.m, 4                  ; 3 uses
  %scevgep1143 = getelementptr i8, ptr %i.l, i64 %i.p
  %i.q = getelementptr i8, ptr %i.l, i64 %i.p
  %scevgep1145 = getelementptr i8, ptr %i.q, i64 2
  %i.r = mul nsw i64 %i.m, -16
  %scevgep1147 = getelementptr i8, ptr %i.l, i64 %i.r
  %i.s = sub nsw i64 2, %i.p
  %scevgep1149 = getelementptr i8, ptr %i.l, i64 %i.s
  %scevgep1151 = getelementptr i8, ptr %i.l, i64 -16
  %scevgep1153 = getelementptr i8, ptr %i.l, i64 -14
  %scevgep1155 = getelementptr i8, ptr %i.l, i64 16
  %scevgep1157 = getelementptr i8, ptr %i.l, i64 18
  %scevgep1159 = getelementptr i8, ptr %i.l, i64 8
  %scevgep1161 = getelementptr i8, ptr %i.l, i64 10
  %i.t = shl nuw nsw i64 %i.m, 3                  ; 4 uses
  %i.u = sub nsw i64 8, %i.t
  %scevgep1163 = getelementptr i8, ptr %i.l, i64 %i.u
  %i.v = sub nsw i64 10, %i.t
  %scevgep1165 = getelementptr i8, ptr %i.l, i64 %i.v
  %scevgep1167 = getelementptr i8, ptr %i.l, i64 -8
  %scevgep1169 = getelementptr i8, ptr %i.l, i64 -6
  %i.w = sub nuw nsw i64 -8, %i.t
  %scevgep1171 = getelementptr i8, ptr %i.l, i64 %i.w
  %i.x = sub nuw nsw i64 -6, %i.t
  %scevgep1173 = getelementptr i8, ptr %i.l, i64 %i.x
  %3 = add nsw i32 %i.f, -5
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1202 = insertelement <8 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat1203 = shufflevector <8 x i64> %broadcast.splatinsert1202, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1204 = insertelement <8 x ptr> poison, ptr %1, i64 0
  %broadcast.splat1205 = shufflevector <8 x ptr> %broadcast.splatinsert1204, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1206 = insertelement <8 x ptr> poison, ptr %2, i64 0
  %broadcast.splat1207 = shufflevector <8 x ptr> %broadcast.splatinsert1206, <8 x ptr> poison, <8 x i32> zeroinitializer
  %invariant.op = add nuw nsw <8 x i64> splat (i64 1), %broadcast.splat1203
  %invariant.op1281 = sub <8 x i64> splat (i64 1), %broadcast.splat1203
  %invariant.op1283 = add <8 x i64> splat (i64 -1), %broadcast.splat1203
  %invariant.op1285 = sub <8 x i64> splat (i64 -1), %broadcast.splat1203
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph1109, %._crit_edge
  %i.y = phi i16 [ %i.c, %.lr.ph1109 ], [ %i.kd, %._crit_edge ]
  %.01107 = phi i32 [ 2, %.lr.ph1109 ], [ %i.ke, %._crit_edge ] ; 3 uses
  %i.z = shl nuw nsw i32 %.01107, 1
  %i.aa = and i32 %i.z, 14                        ; 2 uses
  %i.ab = shl nuw nsw i32 %i.aa, 1
  %i.ac = lshr i32 %i.j, %i.ab
  %i.ad = and i32 %i.ac, 1                        ; 5 uses
  %i.ae = or disjoint i32 %i.ad, 2                ; 4 uses
  %i.af = icmp slt i32 %i.ae, %i.k
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ag = or disjoint i32 %i.ad, %i.aa
  %i.ah = shl nuw nsw i32 %i.ag, 1
  %i.ai = lshr i32 %i.j, %i.ah
  %i.aj = and i32 %i.ai, 3                        ; 4 uses
  %i.ak = load i16, ptr %i.a, align 2, !tbaa !11
  %i.al = zext i16 %i.ak to i32
  %i.am = add nsw i32 %i.aj, -2
  %i.an = icmp samesign ult i32 %i.aj, 2
  %i.ao = sub nsw i32 2, %i.aj
  %i.ap = select i1 %i.an, i32 %i.ao, i32 %i.am
  %i.aq = zext nneg i32 %i.aj to i64              ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.l, i64 %i.aq ; 8 uses
  %i.ar = sext i32 %i.ap to i64                   ; 4 uses
  %invariant.gep1067 = getelementptr [2 x i8], ptr %i.l, i64 %i.ar ; 8 uses
  %invariant.gep1075 = getelementptr [4 x i8], ptr %1, i64 %i.ar ; 8 uses
  %invariant.gep1083 = getelementptr [4 x i8], ptr %1, i64 %i.aq ; 8 uses
  %invariant.gep1091 = getelementptr [4 x i8], ptr %2, i64 %i.ar ; 8 uses
  %invariant.gep1099 = getelementptr [4 x i8], ptr %2, i64 %i.aq ; 8 uses
  %i.as = mul i32 %.01107, %i.al
  %i.at = add i32 %i.as, 2
  %i.au = add i32 %i.at, %i.ad
  %i.av = sext i32 %i.au to i64                   ; 7 uses
  %i.aw = sub nsw i32 %3, %i.ad                   ; 2 uses
  %i.ax = lshr i32 %i.aw, 1
  %narrow = add nuw i32 %i.ax, 1
  %i.ay = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.aw, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.az = shl nsw i64 %i.av, 3                    ; 5 uses
  %scevgep1140 = getelementptr i8, ptr %scevgep, i64 %i.az ; 8 uses
  %i.ba = sub nsw i32 %i.o, %i.ad
  %i.bb = lshr i32 %i.ba, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 4                ; 3 uses
  %i.be = add nsw i64 %i.bd, %i.az                ; 2 uses
  %scevgep1142 = getelementptr i8, ptr %scevgep1141, i64 %i.be ; 8 uses
  %i.bf = shl nuw nsw i64 %i.aq, 1                ; 2 uses
  %i.bg = or disjoint i64 %i.az, %i.bf            ; 4 uses
  %scevgep1144 = getelementptr i8, ptr %scevgep1143, i64 %i.bg
  %i.bh = or disjoint i64 %i.be, %i.bf            ; 4 uses
  %scevgep1146 = getelementptr i8, ptr %scevgep1145, i64 %i.bh
  %scevgep1148 = getelementptr i8, ptr %scevgep1147, i64 %i.bg
  %scevgep1150 = getelementptr i8, ptr %scevgep1149, i64 %i.bh
  %scevgep1152 = getelementptr i8, ptr %scevgep1151, i64 %i.bg
  %scevgep1154 = getelementptr i8, ptr %scevgep1153, i64 %i.bh
  %scevgep1156 = getelementptr i8, ptr %scevgep1155, i64 %i.bg
  %scevgep1158 = getelementptr i8, ptr %scevgep1157, i64 %i.bh
  %i.bi = add nsw i64 %i.m, %i.av
  %i.bj = shl nsw i64 %i.bi, 3                    ; 2 uses
  %i.bk = shl nsw i64 %i.ar, 1                    ; 4 uses
  %i.bl = add nsw i64 %i.bj, %i.bk                ; 2 uses
  %scevgep1160 = getelementptr i8, ptr %scevgep1159, i64 %i.bl
  %i.bm = add nsw i64 %i.bd, %i.bj
  %i.bn = add nsw i64 %i.bm, %i.bk                ; 2 uses
  %scevgep1162 = getelementptr i8, ptr %scevgep1161, i64 %i.bn
  %i.bo = add nsw i64 %i.az, %i.bk                ; 2 uses
  %scevgep1164 = getelementptr i8, ptr %scevgep1163, i64 %i.bo
  %i.bp = add nsw i64 %i.bd, %i.az
  %i.bq = add nsw i64 %i.bp, %i.bk                ; 2 uses
  %scevgep1166 = getelementptr i8, ptr %scevgep1165, i64 %i.bq
  %scevgep1168 = getelementptr i8, ptr %scevgep1167, i64 %i.bl
  %scevgep1170 = getelementptr i8, ptr %scevgep1169, i64 %i.bn
  %scevgep1172 = getelementptr i8, ptr %scevgep1171, i64 %i.bo
  %scevgep1174 = getelementptr i8, ptr %scevgep1173, i64 %i.bq
  %bound0 = icmp ult ptr %scevgep1140, %scevgep1146
  %bound1 = icmp ult ptr %scevgep1144, %scevgep1142
  %found.conflict = and i1 %bound0, %bound1
  %bound01175 = icmp ult ptr %scevgep1140, %scevgep1150
  %bound11176 = icmp ult ptr %scevgep1148, %scevgep1142
  %found.conflict1177 = and i1 %bound01175, %bound11176
  %conflict.rdx = or i1 %found.conflict, %found.conflict1177
  %bound01178 = icmp ult ptr %scevgep1140, %scevgep1154
  %bound11179 = icmp ult ptr %scevgep1152, %scevgep1142
  %found.conflict1180 = and i1 %bound01178, %bound11179
  %conflict.rdx1181 = or i1 %conflict.rdx, %found.conflict1180
  %bound01182 = icmp ult ptr %scevgep1140, %scevgep1158
  %bound11183 = icmp ult ptr %scevgep1156, %scevgep1142
  %found.conflict1184 = and i1 %bound01182, %bound11183
  %conflict.rdx1185 = or i1 %conflict.rdx1181, %found.conflict1184
  %bound01186 = icmp ult ptr %scevgep1140, %scevgep1162
  %bound11187 = icmp ult ptr %scevgep1160, %scevgep1142
  %found.conflict1188 = and i1 %bound01186, %bound11187
  %conflict.rdx1189 = or i1 %conflict.rdx1185, %found.conflict1188
  %bound01190 = icmp ult ptr %scevgep1140, %scevgep1166
  %bound11191 = icmp ult ptr %scevgep1164, %scevgep1142
  %found.conflict1192 = and i1 %bound01190, %bound11191
  %conflict.rdx1193 = or i1 %conflict.rdx1189, %found.conflict1192
  %bound01194 = icmp ult ptr %scevgep1140, %scevgep1170
  %bound11195 = icmp ult ptr %scevgep1168, %scevgep1142
  %found.conflict1196 = and i1 %bound01194, %bound11195
  %conflict.rdx1197 = or i1 %conflict.rdx1193, %found.conflict1196
  %bound01198 = icmp ult ptr %scevgep1140, %scevgep1174
  %bound11199 = icmp ult ptr %scevgep1172, %scevgep1142
  %found.conflict1200 = and i1 %bound01198, %bound11199
  %conflict.rdx1201 = or i1 %conflict.rdx1197, %found.conflict1200
  br i1 %conflict.rdx1201, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.br = and i64 %i.ay, 7                        ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  %i.bt = select i1 %i.bs, i64 8, i64 %i.br
  %n.vec = sub nsw i64 %i.ay, %i.bt               ; 3 uses
  %i.bu = shl nsw i64 %n.vec, 1
  %i.bv = add nsw i64 %i.bu, %i.av
  %i.bw = trunc i64 %n.vec to i32
  %i.bx = shl i32 %i.bw, 1
  %i.by = add i32 %i.ae, %i.bx
  %broadcast.splatinsert1208 = insertelement <8 x i64> poison, i64 %i.av, i64 0
  %broadcast.splat1209 = shufflevector <8 x i64> %broadcast.splatinsert1208, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat1209, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep1287 = getelementptr [8 x i8], ptr %i.l, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 10 uses
  %i.bz = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat ; 3 uses
  %i.ca = extractelement <8 x i64> %i.bz, i64 0
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ca
  %wide.vec = load <64 x i16>, ptr %i.cb, align 2, !tbaa !76, !alias.scope !180
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56> ; 2 uses
  %i.cc = sub nsw <8 x i64> %vec.ind, %broadcast.splat ; 3 uses
  %i.cd = extractelement <8 x i64> %i.cc, i64 0
  %i.ce = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cd
  %wide.vec1210 = load <64 x i16>, ptr %i.ce, align 2, !tbaa !76, !alias.scope !183
  %strided.vec1211 = shufflevector <64 x i16> %wide.vec1210, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56> ; 2 uses
  %i.cf = add nsw <8 x i64> %vec.ind, splat (i64 -2) ; 3 uses
  %i.cg = extractelement <8 x i64> %i.cf, i64 0
  %i.ch = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cg
  %wide.vec1212 = load <64 x i16>, ptr %i.ch, align 2, !tbaa !76, !alias.scope !185
  %strided.vec1213 = shufflevector <64 x i16> %wide.vec1212, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56> ; 2 uses
  %i.ci = add nuw nsw <8 x i64> %vec.ind, splat (i64 2) ; 3 uses
  %i.cj = extractelement <8 x i64> %i.ci, i64 0
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.cj
  %wide.vec1214 = load <64 x i16>, ptr %i.ck, align 2, !tbaa !76, !alias.scope !187
  %strided.vec1215 = shufflevector <64 x i16> %wide.vec1214, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56> ; 2 uses
  %i.cl = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %strided.vec1213, <8 x i16> %strided.vec1215)
  %i.cm = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %strided.vec1211, <8 x i16> %i.cl)
  %i.cn = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.cm, <8 x i16> %strided.vec)
  %i.co = zext <8 x i16> %i.cn to <8 x i32>
  %i.cp = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %strided.vec1213, <8 x i16> %strided.vec1215)
  %i.cq = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %strided.vec1211, <8 x i16> %i.cp)
  %i.cr = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.cq, <8 x i16> %strided.vec)
  %i.cs = zext <8 x i16> %i.cr to <8 x i32>
  %.reass = add nuw nsw <8 x i64> %vec.ind, %invariant.op ; 3 uses
  %i.ct = extractelement <8 x i64> %.reass, i64 0
  %i.cu = getelementptr [8 x i8], ptr %invariant.gep1067, i64 %i.ct
  %wide.vec1216 = load <64 x i16>, ptr %i.cu, align 2, !tbaa !76, !alias.scope !189
  %strided.vec1217 = shufflevector <64 x i16> %wide.vec1216, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56> ; 2 uses
  %.reass1282 = add <8 x i64> %vec.ind, %invariant.op1281 ; 3 uses
  %i.cv = extractelement <8 x i64> %.reass1282, i64 0
  %i.cw = getelementptr [8 x i8], ptr %invariant.gep1067, i64 %i.cv
  %wide.vec1218 = load <64 x i16>, ptr %i.cw, align 2, !tbaa !76, !alias.scope !191
  %strided.vec1219 = shufflevector <64 x i16> %wide.vec1218, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56> ; 2 uses
  %.reass1284 = add <8 x i64> %vec.ind, %invariant.op1283 ; 3 uses
  %i.cx = extractelement <8 x i64> %.reass1284, i64 0
  %i.cy = getelementptr [8 x i8], ptr %invariant.gep1067, i64 %i.cx
  %wide.vec1220 = load <64 x i16>, ptr %i.cy, align 2, !tbaa !76, !alias.scope !193
  %strided.vec1221 = shufflevector <64 x i16> %wide.vec1220, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56> ; 2 uses
  %.reass1286 = add <8 x i64> %vec.ind, %invariant.op1285 ; 3 uses
  %i.cz = extractelement <8 x i64> %.reass1286, i64 0
  %i.da = getelementptr [8 x i8], ptr %invariant.gep1067, i64 %i.cz
  %wide.vec1222 = load <64 x i16>, ptr %i.da, align 2, !tbaa !76, !alias.scope !195
  %strided.vec1223 = shufflevector <64 x i16> %wide.vec1222, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56> ; 2 uses
  %i.db = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %strided.vec1221, <8 x i16> %strided.vec1223)
  %i.dc = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %strided.vec1219, <8 x i16> %i.db)
  %i.dd = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dc, <8 x i16> %strided.vec1217)
  %i.de = zext <8 x i16> %i.dd to <8 x i32>
  %i.df = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %strided.vec1221, <8 x i16> %strided.vec1223)
  %i.dg = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %strided.vec1219, <8 x i16> %i.df)
  %i.dh = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.dg, <8 x i16> %strided.vec1217)
  %i.di = zext <8 x i16> %i.dh to <8 x i32>
  %i.dj = add nuw nsw <8 x i32> %i.co, %i.de
  %i.dk = add nuw nsw <8 x i32> %i.cs, %i.di
  %i.dl = sub nsw <8 x i32> %i.dj, %i.dk
  %i.dm = sitofp reassoc nsz arcp contract afn <8 x i32> %i.dl to <8 x float> ; 2 uses
  %wide.gep = getelementptr [12 x i8], ptr %invariant.gep1075, <8 x i64> %i.bz
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77 ; 6 uses
  %wide.gep1224 = getelementptr [12 x i8], ptr %invariant.gep1075, <8 x i64> %i.cc
  %wide.masked.gather1225 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1224, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77 ; 6 uses
  %wide.gep1226 = getelementptr [12 x i8], ptr %invariant.gep1075, <8 x i64> %i.cf
  %wide.masked.gather1227 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1226, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77 ; 4 uses
  %wide.gep1228 = getelementptr [12 x i8], ptr %invariant.gep1075, <8 x i64> %i.ci
  %wide.masked.gather1229 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1228, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77 ; 4 uses
  %i.dn = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather1227, %wide.masked.gather1229
  %i.do = select reassoc nsz arcp contract afn <8 x i1> %i.dn, <8 x float> %wide.masked.gather1227, <8 x float> %wide.masked.gather1229 ; 3 uses
  %i.dp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather1225, %i.do ; 2 uses
  %i.dq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather, %i.do
  %.not1273 = select <8 x i1> %i.dp, <8 x i1> splat (i1 true), <8 x i1> %i.dq
  %i.dr = fcmp reassoc nsz arcp contract afn ule <8 x float> %wide.masked.gather, %wide.masked.gather1225
  %i.ds = select <8 x i1> %i.dp, <8 x i1> %i.dr, <8 x i1> zeroinitializer
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %.not1273, <8 x float> %wide.masked.gather, <8 x float> %i.do
  %predphi1230 = select reassoc nsz arcp contract afn <8 x i1> %i.ds, <8 x float> %wide.masked.gather1225, <8 x float> %predphi
  %i.dt = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.masked.gather1227, %wide.masked.gather1229
  %i.du = select reassoc nsz arcp contract afn <8 x i1> %i.dt, <8 x float> %wide.masked.gather1227, <8 x float> %wide.masked.gather1229 ; 3 uses
  %i.dv = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.masked.gather1225, %i.du ; 2 uses
  %i.dw = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.masked.gather, %i.du
  %.not1274 = select <8 x i1> %i.dv, <8 x i1> splat (i1 true), <8 x i1> %i.dw
  %i.dx = fcmp reassoc nsz arcp contract afn uge <8 x float> %wide.masked.gather, %wide.masked.gather1225
  %i.dy = select <8 x i1> %i.dv, <8 x i1> %i.dx, <8 x i1> zeroinitializer
  %predphi1231 = select reassoc nsz arcp contract afn <8 x i1> %.not1274, <8 x float> %wide.masked.gather, <8 x float> %i.du
  %predphi1232 = select reassoc nsz arcp contract afn <8 x i1> %i.dy, <8 x float> %wide.masked.gather1225, <8 x float> %predphi1231
  %wide.gep1233 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep1083, <8 x i64> %.reass
  %wide.masked.gather1234 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1233, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77 ; 6 uses
  %wide.gep1235 = getelementptr [12 x i8], ptr %invariant.gep1083, <8 x i64> %.reass1282
  %wide.masked.gather1236 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1235, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77 ; 6 uses
  %wide.gep1237 = getelementptr [12 x i8], ptr %invariant.gep1083, <8 x i64> %.reass1284
  %wide.masked.gather1238 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1237, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77 ; 4 uses
  %wide.gep1239 = getelementptr [12 x i8], ptr %invariant.gep1083, <8 x i64> %.reass1286
  %wide.masked.gather1240 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1239, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !77 ; 4 uses
  %i.dz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather1238, %wide.masked.gather1240
  %i.ea = select reassoc nsz arcp contract afn <8 x i1> %i.dz, <8 x float> %wide.masked.gather1238, <8 x float> %wide.masked.gather1240 ; 3 uses
  %i.eb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather1236, %i.ea ; 2 uses
  %i.ec = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather1234, %i.ea
  %.not1275 = select <8 x i1> %i.eb, <8 x i1> splat (i1 true), <8 x i1> %i.ec
  %i.ed = fcmp reassoc nsz arcp contract afn ule <8 x float> %wide.masked.gather1234, %wide.masked.gather1236
  %i.ee = select <8 x i1> %i.eb, <8 x i1> %i.ed, <8 x i1> zeroinitializer
  %predphi1241 = select reassoc nsz arcp contract afn <8 x i1> %.not1275, <8 x float> %wide.masked.gather1234, <8 x float> %i.ea
  %predphi1242 = select reassoc nsz arcp contract afn <8 x i1> %i.ee, <8 x float> %wide.masked.gather1236, <8 x float> %predphi1241
  %i.ef = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.masked.gather1238, %wide.masked.gather1240
  %i.eg = select reassoc nsz arcp contract afn <8 x i1> %i.ef, <8 x float> %wide.masked.gather1238, <8 x float> %wide.masked.gather1240 ; 3 uses
  %i.eh = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.masked.gather1236, %i.eg ; 2 uses
  %i.ei = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.masked.gather1234, %i.eg
  %.not1276 = select <8 x i1> %i.eh, <8 x i1> splat (i1 true), <8 x i1> %i.ei
  %i.ej = fcmp reassoc nsz arcp contract afn uge <8 x float> %wide.masked.gather1234, %wide.masked.gather1236
end_hunk_0
begin_hunk_1_@_ZN6LibRaw6dcb_ppEv:bb.a
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !76
  %i.df = zext i16 %i.de to i32
  %i.dg = add nuw nsw i32 %i.dc, %i.df
  %i.dh = getelementptr i8, ptr %gep, i64 -4
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !76
  %i.dj = zext i16 %i.di to i32
  %i.dk = add nuw nsw i32 %i.dg, %i.dj
  %i.dl = uitofp nneg i32 %i.dk to float
  %i.dm = fmul reassoc nnan nsz arcp contract afn float %i.dl, 1.250000e-01
  %i.dn = fptosi float %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !76
  %i.dq = zext i16 %i.dp to i32
  %i.dr = sub nsw i32 %i.dq, %i.cf                ; 2 uses
  %i.ds = add nsw i32 %i.dr, %i.ax
  %i.dt = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 0)
  %i.du = tail call i32 @llvm.umin.i32(i32 %i.dt, i32 65535)
  %i.dv = trunc nuw i32 %i.du to i16
  store i16 %i.dv, ptr %i.p, align 2, !tbaa !76
  %i.dw = add nsw i32 %i.dr, %i.dn
  %i.dx = tail call i32 @llvm.smax.i32(i32 %i.dw, i32 0)
  %i.dy = tail call i32 @llvm.umin.i32(i32 %i.dx, i32 65535)
  %i.dz = trunc nuw i32 %i.dy to i16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !76
  %i.eb = add nuw nsw i32 %.088, 1                ; 2 uses
  %i.ec = load i16, ptr %i.a, align 2, !tbaa !11  ; 2 uses
  %i.ed = zext i16 %i.ec to i32
  %i.ee = add nsw i32 %i.ed, -2
  %i.ef = icmp slt i32 %i.eb, %i.ee
  br i1 %i.ef, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !207

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i16, ptr %i.d, align 4, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.eg = phi i16 [ %.pre, %._crit_edge.loopexit ], [ %i.l, %bb.b ] ; 2 uses
  %i.eh = phi i16 [ %i.ec, %._crit_edge.loopexit ], [ %i.m, %bb.b ]
  %i.ei = add nuw nsw i32 %.07689, 1              ; 2 uses
  %i.ej = zext i16 %i.eg to i32
  %i.ek = add nsw i32 %i.ej, -2
  %i.el = icmp slt i32 %i.ei, %i.ek
  %indvars.iv.next = add nuw i32 %indvars.iv, %i.c
  br i1 %i.el, label %bb.b, label %._crit_edge92, !llvm.loop !208

._crit_edge92:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw11dcb_nyquistEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !74   ; 2 uses
  %i.d = icmp ugt i16 %i.c, 4
  br i1 %i.d, label %.lr.ph95, label %._crit_edge96

.lr.ph95:                                         ; preds = %bb.a
  %i.e = load i16, ptr %i.a, align 2, !tbaa !11
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = shl nuw nsw i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.j = load i32, ptr %i.i, align 8, !tbaa !75   ; 2 uses
  %i.k = add nsw i32 %i.f, -2                     ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.m = zext nneg i32 %i.g to i64                ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph95, %._crit_edge
  %i.n = phi i16 [ %i.c, %.lr.ph95 ], [ %i.ca, %._crit_edge ]
  %.08593 = phi i32 [ 2, %.lr.ph95 ], [ %i.cb, %._crit_edge ] ; 3 uses
  %i.o = shl nuw nsw i32 %.08593, 1
  %i.p = and i32 %i.o, 14                         ; 2 uses
  %i.q = shl nuw nsw i32 %i.p, 1
  %i.r = lshr i32 %i.j, %i.q
  %i.s = and i32 %i.r, 1                          ; 3 uses
  %i.t = or disjoint i32 %i.s, 2                  ; 2 uses
  %i.u = icmp slt i32 %i.t, %i.k
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.v = or disjoint i32 %i.s, %i.p
  %i.w = shl nuw nsw i32 %i.v, 1
  %i.x = lshr i32 %i.j, %i.w
  %i.y = and i32 %i.x, 3
  %i.z = load i16, ptr %i.a, align 2, !tbaa !11
  %i.aa = zext i16 %i.z to i32
  %i.ab = zext nneg i32 %i.y to i64               ; 5 uses
  %i.ac = mul i32 %.08593, %i.aa
  %i.ad = add i32 %i.ac, 2
  %i.ae = add i32 %i.ad, %i.s
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %.phi.trans.insert = getelementptr [8 x i8], ptr %i.l, i64 %i.af
  %.phi.trans.insert98 = getelementptr inbounds nuw [2 x i8], ptr %.phi.trans.insert, i64 %i.ab
  %.pre = load i16, ptr %.phi.trans.insert98, align 2, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.ag = phi i16 [ %.pre, %.lr.ph ], [ %i.bo, %bb.c ]
  %indvars.iv = phi i64 [ %i.af, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %.08691 = phi i32 [ %i.t, %.lr.ph ], [ %i.by, %bb.c ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !76
  %i.aj = zext i16 %i.ai to i32
  %i.ak = sub nsw i64 %indvars.iv, %i.m
  %i.al = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !76
  %i.ao = zext i16 %i.an to i32
  %i.ap = add nuw nsw i32 %i.ao, %i.aj
  %i.aq = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv ; 3 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -16
  %i.as = getelementptr i8, ptr %i.aq, i64 -14
  %i.at = load i16, ptr %i.as, align 2, !tbaa !76
  %i.au = zext i16 %i.at to i32
  %i.av = add nuw nsw i32 %i.ap, %i.au
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !76
  %i.az = zext i16 %i.ay to i32
  %i.ba = add nuw nsw i32 %i.av, %i.az
  %i.bb = uitofp i16 %i.ag to double
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %gep, i64 %i.ab
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !76
  %i.be = zext i16 %i.bd to i32
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.ab
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !76
  %i.bh = zext i16 %i.bg to i32
  %i.bi = add nuw nsw i32 %i.bh, %i.be
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.ab
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !76
  %i.bl = zext i16 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bi, %i.bl
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.ab
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !76 ; 2 uses
  %i.bp = zext i16 %i.bo to i32
  %i.bq = add nuw nsw i32 %i.bm, %i.bp
  %i.br = sub nsw i32 %i.ba, %i.bq
  %reass.add = sitofp i32 %i.br to double
  %reass.mul = fmul reassoc nnan nsz arcp contract afn double %reass.add, 2.500000e-01
  %i.bs = fadd reassoc nsz arcp contract afn double %reass.mul, %i.bb
  %i.bt = fptosi double %i.bs to i32
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %i.bv = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 65535)
  %i.bw = trunc nuw i32 %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !76
  %i.by = add nuw nsw i32 %.08691, 2              ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.k
  br i1 %i.bz, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !209

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre99 = load i16, ptr %i.b, align 4, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ca = phi i16 [ %.pre99, %._crit_edge.loopexit ], [ %i.n, %bb.b ] ; 2 uses
  %i.cb = add nuw nsw i32 %.08593, 1              ; 2 uses
  %i.cc = zext i16 %i.ca to i32
  %i.cd = add nsw i32 %i.cc, -2
  %i.ce = icmp slt i32 %i.cb, %i.cd
  br i1 %i.ce, label %bb.b, label %._crit_edge96, !llvm.loop !210

._crit_edge96:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw14dcb_color_fullEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 6 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !11   ; 4 uses
  %i.d = zext i16 %i.c to i32                     ; 10 uses
  %i.e = mul nuw nsw i32 %i.d, 3                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i16, ptr %i.f, align 4, !tbaa !74
  %i.h = zext i16 %i.g to i32
  %i.i = mul nuw nsw i32 %i.h, %i.d
  %i.j = zext nneg i32 %i.i to i64
  %i.k = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.j, i64 noundef 8) ; 88 uses
  %i.l = load i16, ptr %i.f, align 4, !tbaa !74   ; 3 uses
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %i.n = icmp ugt i16 %i.l, 2
  br i1 %i.n, label %.lr.ph3687, label %._crit_edge3713

.lr.ph3687:                                       ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.p = load i32, ptr %i.o, align 8, !tbaa !75   ; 2 uses
  %i.q = load i16, ptr %i.b, align 2, !tbaa !11
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = add nsw i32 %i.d, -1                     ; 2 uses
  %i.t = add nuw nsw i32 %i.r, 1
  %i.u = add nsw i32 %i.m, -2
  %1 = add nsw i32 %i.d, -3
  br label %bb.b

.preheader3681:                                   ; preds = %._crit_edge
  %i.v = add nsw i32 %i.m, -3                     ; 2 uses
  %i.w = icmp ugt i16 %i.l, 6
  br i1 %i.w, label %.lr.ph3696, label %.preheader

.lr.ph3696:                                       ; preds = %.preheader3681
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.y = load i32, ptr %i.x, align 8, !tbaa !75   ; 2 uses
  %i.z = load i16, ptr %i.b, align 2, !tbaa !11
  %i.aa = zext i16 %i.z to i32                    ; 2 uses
  %i.ab = add nsw i32 %i.d, -3                    ; 2 uses
  %i.ac = mul nuw nsw i32 %i.aa, 3
  %i.ad = add nuw nsw i32 %i.ac, 3
  %i.ae = zext nneg i32 %i.e to i64               ; 3 uses
  %i.af = zext i16 %i.c to i64                    ; 9 uses
  %invariant.gep3871 = getelementptr [8 x i8], ptr %i.k, i64 %i.af ; 2 uses
  %invariant.gep3873 = getelementptr [8 x i8], ptr %i.k, i64 %i.ae ; 2 uses
  %scevgep3919 = getelementptr i8, ptr %i.k, i64 4
  %i.ag = add nsw i32 %i.d, -7
  %i.ah = shl nuw nsw i64 %i.af, 3                ; 16 uses
  %i.ai = sub nuw nsw i64 -8, %i.ah
  %scevgep3921 = getelementptr i8, ptr %i.k, i64 %i.ai
  %i.aj = sub nuw nsw i64 -4, %i.ah
  %scevgep3923 = getelementptr i8, ptr %i.k, i64 %i.aj
  %i.ak = getelementptr i8, ptr %i.k, i64 %i.ah
  %scevgep3925 = getelementptr i8, ptr %i.ak, i64 8
  %i.al = getelementptr i8, ptr %i.k, i64 %i.ah
  %scevgep3927 = getelementptr i8, ptr %i.al, i64 12
  %i.am = mul nuw nsw i64 %i.af, 24               ; 16 uses
  %i.an = sub nuw nsw i64 -24, %i.am
  %scevgep3929 = getelementptr i8, ptr %i.k, i64 %i.an
  %i.ao = sub nuw nsw i64 -20, %i.am
  %scevgep3931 = getelementptr i8, ptr %i.k, i64 %i.ao
  %i.ap = sub nsw i64 8, %i.ah
  %scevgep3933 = getelementptr i8, ptr %i.k, i64 %i.ap
  %i.aq = sub nsw i64 12, %i.ah
  %scevgep3935 = getelementptr i8, ptr %i.k, i64 %i.aq
  %i.ar = getelementptr i8, ptr %i.k, i64 %i.ah
  %scevgep3937 = getelementptr i8, ptr %i.ar, i64 -8
  %i.as = getelementptr i8, ptr %i.k, i64 %i.ah
  %scevgep3939 = getelementptr i8, ptr %i.as, i64 -4
  %i.at = sub nsw i64 24, %i.am
  %scevgep3941 = getelementptr i8, ptr %i.k, i64 %i.at
  %i.au = sub nsw i64 28, %i.am
  %scevgep3943 = getelementptr i8, ptr %i.k, i64 %i.au
  %i.av = getelementptr i8, ptr %i.k, i64 %i.am
  %scevgep3945 = getelementptr i8, ptr %i.av, i64 24
  %i.aw = getelementptr i8, ptr %i.k, i64 %i.am
  %scevgep3947 = getelementptr i8, ptr %i.aw, i64 28
  %i.ax = getelementptr i8, ptr %i.k, i64 %i.am
  %scevgep3949 = getelementptr i8, ptr %i.ax, i64 -24
  %i.ay = getelementptr i8, ptr %i.k, i64 %i.am
  %scevgep3951 = getelementptr i8, ptr %i.ay, i64 -20
  %i.az = sub nuw nsw i64 -8, %i.am
  %scevgep3953 = getelementptr i8, ptr %i.k, i64 %i.az
  %i.ba = sub nuw nsw i64 -4, %i.am
  %scevgep3955 = getelementptr i8, ptr %i.k, i64 %i.ba
  %i.bb = sub nuw nsw i64 -24, %i.ah
  %scevgep3957 = getelementptr i8, ptr %i.k, i64 %i.bb
  %i.bc = sub nuw nsw i64 -20, %i.ah
  %scevgep3959 = getelementptr i8, ptr %i.k, i64 %i.bc
  %i.bd = sub nsw i64 8, %i.am
  %scevgep3961 = getelementptr i8, ptr %i.k, i64 %i.bd
  %i.be = sub nsw i64 12, %i.am
  %scevgep3963 = getelementptr i8, ptr %i.k, i64 %i.be
  %i.bf = sub nsw i64 24, %i.ah
  %scevgep3965 = getelementptr i8, ptr %i.k, i64 %i.bf
  %i.bg = sub nsw i64 28, %i.ah
  %scevgep3967 = getelementptr i8, ptr %i.k, i64 %i.bg
  %i.bh = getelementptr i8, ptr %i.k, i64 %i.am
  %scevgep3969 = getelementptr i8, ptr %i.bh, i64 -8
  %i.bi = getelementptr i8, ptr %i.k, i64 %i.am
  %scevgep3971 = getelementptr i8, ptr %i.bi, i64 -4
  %i.bj = getelementptr i8, ptr %i.k, i64 %i.ah
  %scevgep3973 = getelementptr i8, ptr %i.bj, i64 -24
  %i.bk = getelementptr i8, ptr %i.k, i64 %i.ah
  %scevgep3975 = getelementptr i8, ptr %i.bk, i64 -20
  %i.bl = getelementptr i8, ptr %i.k, i64 %i.am
  %scevgep3977 = getelementptr i8, ptr %i.bl, i64 8
  %i.bm = getelementptr i8, ptr %i.k, i64 %i.am
  %scevgep3979 = getelementptr i8, ptr %i.bm, i64 12
  %i.bn = getelementptr i8, ptr %i.k, i64 %i.ah
  %scevgep3981 = getelementptr i8, ptr %i.bn, i64 24
  %i.bo = getelementptr i8, ptr %i.k, i64 %i.ah
  %scevgep3983 = getelementptr i8, ptr %i.bo, i64 28
  %2 = add nsw i32 %i.d, -7
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph3687, %._crit_edge
  %indvars.iv = phi i32 [ %i.t, %.lr.ph3687 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.03685 = phi i32 [ 1, %.lr.ph3687 ], [ %i.dk, %._crit_edge ] ; 3 uses
  %i.bp = shl nuw nsw i32 %.03685, 1
  %i.bq = and i32 %i.bp, 14                       ; 2 uses
  %i.br = shl nuw nsw i32 %i.bq, 1
  %i.bs = or disjoint i32 %i.br, 2
  %i.bt = lshr i32 %i.p, %i.bs
  %i.bu = and i32 %i.bt, 1                        ; 3 uses
  %i.bv = add nuw nsw i32 %i.bu, 1                ; 4 uses
  %i.bw = icmp slt i32 %i.bv, %i.s
  br i1 %i.bw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.bx = and i32 %i.bv, 1
  %i.by = or disjoint i32 %i.bx, %i.bq
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = lshr i32 %i.p, %i.bz
  %i.cb = and i32 %i.ca, 3                        ; 2 uses
  %.cmp = icmp samesign ugt i32 %i.cb, 1
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !203 ; 2 uses
  %i.cd = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.ce = zext i1 %.cmp to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ce ; 2 uses
  %i.cf = add i32 %indvars.iv, %i.bu
  %i.cg = zext i32 %i.cf to i64                   ; 4 uses
  %i.ch = sub nsw i32 %1, %i.bu                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.ch, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.ci = lshr i32 %i.ch, 1
  %narrow = add nuw i32 %i.ci, 1
  %i.cj = zext i32 %narrow to i64                 ; 2 uses
  %i.ck = and i64 %i.cj, 7                        ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  %i.cm = select i1 %i.cl, i64 8, i64 %i.ck
  %n.vec = sub nsw i64 %i.cj, %i.cm               ; 3 uses
  %i.cn = shl nsw i64 %n.vec, 1
  %i.co = add nsw i64 %i.cn, %i.cg
  %i.cp = trunc i64 %n.vec to i32
  %i.cq = shl i32 %i.cp, 1
  %i.cr = add i32 %i.bv, %i.cq
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.cg, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4347 = getelementptr [8 x i8], ptr %i.cc, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %gep4348 = getelementptr i8, ptr %invariant.gep4347, i64 %.idx ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %gep4348, i64 %i.cd
  %wide.vec = load <64 x i16>, ptr %i.cs, align 2, !tbaa !76
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.ct = zext <8 x i16> %strided.vec to <8 x i32>
  %i.cu = getelementptr inbounds nuw i8, ptr %gep4348, i64 2
  %wide.vec3916 = load <64 x i16>, ptr %i.cu, align 2, !tbaa !76
  %strided.vec3917 = shufflevector <64 x i16> %wide.vec3916, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cv = zext <8 x i16> %strided.vec3917 to <8 x i32>
  %i.cw = sub nsw <8 x i32> %i.ct, %i.cv
  %i.cx = sitofp reassoc nsz arcp contract afn <8 x i32> %i.cw to <8 x float>
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, <8 x i64> %vec.ind
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cx, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !77
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %scalar.ph.preheader, label %vector.body, !llvm.loop !211

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph
  %indvars.iv3714.ph = phi i64 [ %i.cg, %.lr.ph ], [ %i.co, %vector.body ]
  %.030973683.ph = phi i32 [ %i.bv, %.lr.ph ], [ %i.cr, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv3714 = phi i64 [ %indvars.iv.next3715, %scalar.ph ], [ %indvars.iv3714.ph, %scalar.ph.preheader ] ; 3 uses
  %.030973683 = phi i32 [ %i.di, %scalar.ph ], [ %.030973683.ph, %scalar.ph.preheader ]
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv3714 ; 2 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.cd
  %i.db = load i16, ptr %i.da, align 2, !tbaa !76
  %i.dc = zext i16 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !76
  %i.df = zext i16 %i.de to i32
  %i.dg = sub nsw i32 %i.dc, %i.df
  %i.dh = sitofp reassoc nsz arcp contract afn i32 %i.dg to float
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv3714
  store float %i.dh, ptr %gep, align 4, !tbaa !77
  %i.di = add nuw nsw i32 %.030973683, 2          ; 2 uses
  %indvars.iv.next3715 = add nuw nsw i64 %indvars.iv3714, 2
  %i.dj = icmp slt i32 %i.di, %i.s
  br i1 %i.dj, label %scalar.ph, label %._crit_edge, !llvm.loop !212

._crit_edge:                                      ; preds = %scalar.ph, %bb.b
  %i.dk = add nuw nsw i32 %.03685, 1
  %indvars.iv.next = add nuw i32 %indvars.iv, %i.r
  %exitcond.not = icmp eq i32 %.03685, %i.u
  br i1 %exitcond.not, label %.preheader3681, label %bb.b, !llvm.loop !213

.lr.ph3705:                                       ; preds = %._crit_edge3692
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !75 ; 2 uses
  %i.dn = load i16, ptr %i.b, align 2, !tbaa !11
  %i.do = zext i16 %i.dn to i32                   ; 2 uses
  %i.dp = add nsw i32 %i.d, -3                    ; 2 uses
  %i.dq = mul nuw nsw i32 %i.do, 3
  %i.dr = add nuw nsw i32 %i.dq, 3
  %i.ds = zext nneg i32 %i.e to i64               ; 3 uses
  %i.dt = zext i16 %i.c to i64                    ; 3 uses
  %invariant.gep3875 = getelementptr [8 x i8], ptr %i.k, i64 %i.dt ; 2 uses
  %invariant.gep3877 = getelementptr [8 x i8], ptr %i.k, i64 %i.ds ; 2 uses
  %scevgep4094 = getelementptr i8, ptr %i.k, i64 4
  %i.du = add nsw i32 %i.d, -7
  %scevgep4097 = getelementptr i8, ptr %i.k, i64 4
  %i.dv = mul nsw i64 %i.af, -8                   ; 2 uses
  %scevgep4099 = getelementptr i8, ptr %i.k, i64 %i.dv
  %i.dw = shl nuw nsw i64 %i.af, 3                ; 4 uses
  %i.dx = sub nsw i64 4, %i.dw                    ; 2 uses
  %scevgep4101 = getelementptr i8, ptr %i.k, i64 %i.dx
  %scevgep4103 = getelementptr i8, ptr %i.k, i64 %i.dw
  %i.dy = or disjoint i64 %i.dw, 4                ; 2 uses
  %scevgep4105 = getelementptr i8, ptr %i.k, i64 %i.dy
  %i.dz = mul nsw i64 %i.af, -24                  ; 2 uses
  %scevgep4107 = getelementptr i8, ptr %i.k, i64 %i.dz
  %i.ea = mul nuw nsw i64 %i.af, 24               ; 4 uses
  %i.eb = sub nsw i64 4, %i.ea                    ; 2 uses
  %scevgep4109 = getelementptr i8, ptr %i.k, i64 %i.eb
  %scevgep4111 = getelementptr i8, ptr %i.k, i64 8
  %scevgep4113 = getelementptr i8, ptr %i.k, i64 12
  %scevgep4115 = getelementptr i8, ptr %i.k, i64 -8
  %scevgep4117 = getelementptr i8, ptr %i.k, i64 -4
  %scevgep4119 = getelementptr i8, ptr %i.k, i64 24
  %scevgep4121 = getelementptr i8, ptr %i.k, i64 28
  %scevgep4123 = getelementptr i8, ptr %i.k, i64 -24
  %scevgep4125 = getelementptr i8, ptr %i.k, i64 -20
  %scevgep4127 = getelementptr i8, ptr %i.k, i64 %i.ea
  %i.ec = or disjoint i64 %i.ea, 4                ; 2 uses
  %scevgep4129 = getelementptr i8, ptr %i.k, i64 %i.ec
  %scevgep4131 = getelementptr i8, ptr %i.k, i64 %i.dv
  %scevgep4133 = getelementptr i8, ptr %i.k, i64 %i.dx
  %scevgep4135 = getelementptr i8, ptr %i.k, i64 %i.dw
  %scevgep4137 = getelementptr i8, ptr %i.k, i64 %i.dy
  %scevgep4139 = getelementptr i8, ptr %i.k, i64 %i.dz
  %scevgep4141 = getelementptr i8, ptr %i.k, i64 %i.eb
  %scevgep4143 = getelementptr i8, ptr %i.k, i64 8
  %scevgep4145 = getelementptr i8, ptr %i.k, i64 12
  %scevgep4147 = getelementptr i8, ptr %i.k, i64 -8
  %scevgep4149 = getelementptr i8, ptr %i.k, i64 -4
  %scevgep4151 = getelementptr i8, ptr %i.k, i64 24
  %scevgep4153 = getelementptr i8, ptr %i.k, i64 28
  %scevgep4155 = getelementptr i8, ptr %i.k, i64 -24
  %scevgep4157 = getelementptr i8, ptr %i.k, i64 -20
  %scevgep4159 = getelementptr i8, ptr %i.k, i64 %i.ea
  %scevgep4161 = getelementptr i8, ptr %i.k, i64 %i.ec
  %3 = add nsw i32 %i.d, -7
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph3696, %._crit_edge3692
  %indvars.iv3717 = phi i32 [ %i.ad, %.lr.ph3696 ], [ %indvars.iv.next3718, %._crit_edge3692 ] ; 2 uses
  %.13695 = phi i32 [ 3, %.lr.ph3696 ], [ %i.mt, %._crit_edge3692 ] ; 2 uses
  %i.ed = shl nuw nsw i32 %.13695, 1
  %i.ee = and i32 %i.ed, 14                       ; 2 uses
  %i.ef = shl nuw nsw i32 %i.ee, 1
  %i.eg = or disjoint i32 %i.ef, 2
  %i.eh = lshr i32 %i.y, %i.eg
  %i.ei = and i32 %i.eh, 1                        ; 4 uses
  %i.ej = add nuw nsw i32 %i.ei, 3                ; 5 uses
  %i.ek = icmp slt i32 %i.ej, %i.ab
  br i1 %i.ek, label %.lr.ph3691, label %._crit_edge3692

.lr.ph3691:                                       ; preds = %bb.c
  %i.el = and i32 %i.ej, 1
  %i.em = or disjoint i32 %i.el, %i.ee
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = shl nuw i32 2, %i.en
  %i.ep = and i32 %i.eo, %i.y
  %.neg3499.cmp.not = icmp eq i32 %i.ep, 0        ; 2 uses
  %i.eq = zext i1 %.neg3499.cmp.not to i64        ; 21 uses
  %invariant.gep3693 = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.eq ; 2 uses
  %i.er = add i32 %indvars.iv3717, %i.ei
  %i.es = sext i32 %i.er to i64                   ; 6 uses
  %i.et = sub nsw i32 %2, %i.ei                   ; 2 uses
  %i.eu = lshr i32 %i.et, 1
  %narrow4344 = add nuw i32 %i.eu, 1
  %i.ev = zext i32 %narrow4344 to i64             ; 2 uses
  %min.iters.check4045 = icmp ult i32 %i.et, 16
  br i1 %min.iters.check4045, label %scalar.ph4044.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph3691
  %i.ew = shl nsw i64 %i.es, 3                    ; 2 uses
  %i.ex = select i1 %.neg3499.cmp.not, i64 4, i64 0 ; 2 uses
  %i.ey = or disjoint i64 %i.ew, %i.ex            ; 17 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.ey ; 16 uses
  %i.ez = sub nsw i32 %i.ag, %i.ei
  %i.fa = lshr i32 %i.ez, 1
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = shl nuw nsw i64 %i.fb, 4
  %i.fd = add nsw i64 %i.fc, %i.ew
  %i.fe = or disjoint i64 %i.fd, %i.ex            ; 17 uses
  %scevgep3920 = getelementptr i8, ptr %scevgep3919, i64 %i.fe ; 16 uses
  %scevgep3922 = getelementptr i8, ptr %scevgep3921, i64 %i.ey
  %scevgep3924 = getelementptr i8, ptr %scevgep3923, i64 %i.fe
  %scevgep3926 = getelementptr i8, ptr %scevgep3925, i64 %i.ey
  %scevgep3928 = getelementptr i8, ptr %scevgep3927, i64 %i.fe
  %scevgep3930 = getelementptr i8, ptr %scevgep3929, i64 %i.ey
  %scevgep3932 = getelementptr i8, ptr %scevgep3931, i64 %i.fe
  %scevgep3934 = getelementptr i8, ptr %scevgep3933, i64 %i.ey
  %scevgep3936 = getelementptr i8, ptr %scevgep3935, i64 %i.fe
  %scevgep3938 = getelementptr i8, ptr %scevgep3937, i64 %i.ey
  %scevgep3940 = getelementptr i8, ptr %scevgep3939, i64 %i.fe
  %scevgep3942 = getelementptr i8, ptr %scevgep3941, i64 %i.ey
  %scevgep3944 = getelementptr i8, ptr %scevgep3943, i64 %i.fe
  %scevgep3946 = getelementptr i8, ptr %scevgep3945, i64 %i.ey
  %scevgep3948 = getelementptr i8, ptr %scevgep3947, i64 %i.fe
  %scevgep3950 = getelementptr i8, ptr %scevgep3949, i64 %i.ey
  %scevgep3952 = getelementptr i8, ptr %scevgep3951, i64 %i.fe
  %scevgep3954 = getelementptr i8, ptr %scevgep3953, i64 %i.ey
  %scevgep3956 = getelementptr i8, ptr %scevgep3955, i64 %i.fe
  %scevgep3958 = getelementptr i8, ptr %scevgep3957, i64 %i.ey
  %scevgep3960 = getelementptr i8, ptr %scevgep3959, i64 %i.fe
  %scevgep3962 = getelementptr i8, ptr %scevgep3961, i64 %i.ey
  %scevgep3964 = getelementptr i8, ptr %scevgep3963, i64 %i.fe
  %scevgep3966 = getelementptr i8, ptr %scevgep3965, i64 %i.ey
  %scevgep3968 = getelementptr i8, ptr %scevgep3967, i64 %i.fe
  %scevgep3970 = getelementptr i8, ptr %scevgep3969, i64 %i.ey
  %scevgep3972 = getelementptr i8, ptr %scevgep3971, i64 %i.fe
  %scevgep3974 = getelementptr i8, ptr %scevgep3973, i64 %i.ey
  %scevgep3976 = getelementptr i8, ptr %scevgep3975, i64 %i.fe
  %scevgep3978 = getelementptr i8, ptr %scevgep3977, i64 %i.ey
  %scevgep3980 = getelementptr i8, ptr %scevgep3979, i64 %i.fe
  %scevgep3982 = getelementptr i8, ptr %scevgep3981, i64 %i.ey
  %scevgep3984 = getelementptr i8, ptr %scevgep3983, i64 %i.fe
  %bound0 = icmp ult ptr %scevgep, %scevgep3924
  %bound1 = icmp ult ptr %scevgep3922, %scevgep3920
  %found.conflict = and i1 %bound0, %bound1
  %bound03985 = icmp ult ptr %scevgep, %scevgep3928
  %bound13986 = icmp ult ptr %scevgep3926, %scevgep3920
  %found.conflict3987 = and i1 %bound03985, %bound13986
  %conflict.rdx = or i1 %found.conflict, %found.conflict3987
  %bound03988 = icmp ult ptr %scevgep, %scevgep3932
  %bound13989 = icmp ult ptr %scevgep3930, %scevgep3920
  %found.conflict3990 = and i1 %bound03988, %bound13989
  %conflict.rdx3991 = or i1 %conflict.rdx, %found.conflict3990
  %bound03992 = icmp ult ptr %scevgep, %scevgep3936
  %bound13993 = icmp ult ptr %scevgep3934, %scevgep3920
  %found.conflict3994 = and i1 %bound03992, %bound13993
  %conflict.rdx3995 = or i1 %conflict.rdx3991, %found.conflict3994
  %bound03996 = icmp ult ptr %scevgep, %scevgep3940
  %bound13997 = icmp ult ptr %scevgep3938, %scevgep3920
  %found.conflict3998 = and i1 %bound03996, %bound13997
  %conflict.rdx3999 = or i1 %conflict.rdx3995, %found.conflict3998
  %bound04000 = icmp ult ptr %scevgep, %scevgep3944
  %bound14001 = icmp ult ptr %scevgep3942, %scevgep3920
  %found.conflict4002 = and i1 %bound04000, %bound14001
  %conflict.rdx4003 = or i1 %conflict.rdx3999, %found.conflict4002
  %bound04004 = icmp ult ptr %scevgep, %scevgep3948
  %bound14005 = icmp ult ptr %scevgep3946, %scevgep3920
  %found.conflict4006 = and i1 %bound04004, %bound14005
  %conflict.rdx4007 = or i1 %conflict.rdx4003, %found.conflict4006
  %bound04008 = icmp ult ptr %scevgep, %scevgep3952
  %bound14009 = icmp ult ptr %scevgep3950, %scevgep3920
  %found.conflict4010 = and i1 %bound04008, %bound14009
  %conflict.rdx4011 = or i1 %conflict.rdx4007, %found.conflict4010
  %bound04012 = icmp ult ptr %scevgep, %scevgep3956
  %bound14013 = icmp ult ptr %scevgep3954, %scevgep3920
  %found.conflict4014 = and i1 %bound04012, %bound14013
  %conflict.rdx4015 = or i1 %conflict.rdx4011, %found.conflict4014
  %bound04016 = icmp ult ptr %scevgep, %scevgep3960
  %bound14017 = icmp ult ptr %scevgep3958, %scevgep3920
  %found.conflict4018 = and i1 %bound04016, %bound14017
  %conflict.rdx4019 = or i1 %conflict.rdx4015, %found.conflict4018
  %bound04020 = icmp ult ptr %scevgep, %scevgep3964
  %bound14021 = icmp ult ptr %scevgep3962, %scevgep3920
  %found.conflict4022 = and i1 %bound04020, %bound14021
  %conflict.rdx4023 = or i1 %conflict.rdx4019, %found.conflict4022
  %bound04024 = icmp ult ptr %scevgep, %scevgep3968
  %bound14025 = icmp ult ptr %scevgep3966, %scevgep3920
  %found.conflict4026 = and i1 %bound04024, %bound14025
  %conflict.rdx4027 = or i1 %conflict.rdx4023, %found.conflict4026
  %bound04028 = icmp ult ptr %scevgep, %scevgep3972
  %bound14029 = icmp ult ptr %scevgep3970, %scevgep3920
  %found.conflict4030 = and i1 %bound04028, %bound14029
  %conflict.rdx4031 = or i1 %conflict.rdx4027, %found.conflict4030
  %bound04032 = icmp ult ptr %scevgep, %scevgep3976
  %bound14033 = icmp ult ptr %scevgep3974, %scevgep3920
  %found.conflict4034 = and i1 %bound04032, %bound14033
  %conflict.rdx4035 = or i1 %conflict.rdx4031, %found.conflict4034
  %bound04036 = icmp ult ptr %scevgep, %scevgep3980
  %bound14037 = icmp ult ptr %scevgep3978, %scevgep3920
  %found.conflict4038 = and i1 %bound04036, %bound14037
  %conflict.rdx4039 = or i1 %conflict.rdx4035, %found.conflict4038
  %bound04040 = icmp ult ptr %scevgep, %scevgep3984
  %bound14041 = icmp ult ptr %scevgep3982, %scevgep3920
  %found.conflict4042 = and i1 %bound04040, %bound14041
  %conflict.rdx4043 = or i1 %conflict.rdx4039, %found.conflict4042
  br i1 %conflict.rdx4043, label %scalar.ph4044.preheader, label %vector.ph4046

vector.ph4046:                                    ; preds = %vector.memcheck
  %i.ff = and i64 %i.ev, 7                        ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  %i.fh = select i1 %i.fg, i64 8, i64 %i.ff
  %n.vec4047 = sub nsw i64 %i.ev, %i.fh           ; 3 uses
  %i.fi = shl nsw i64 %n.vec4047, 1
  %i.fj = add nsw i64 %i.fi, %i.es
  %i.fk = trunc i64 %n.vec4047 to i32
  %i.fl = shl i32 %i.fk, 1
  %i.fm = add i32 %i.ej, %i.fl
  %broadcast.splatinsert4048 = insertelement <8 x i64> poison, i64 %i.es, i64 0
  %broadcast.splat4049 = shufflevector <8 x i64> %broadcast.splatinsert4048, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4050 = add nuw nsw <8 x i64> %broadcast.splat4049, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body4051

vector.body4051:                                  ; preds = %vector.body4051, %vector.ph4046
  %index4052 = phi i64 [ 0, %vector.ph4046 ], [ %index.next4087, %vector.body4051 ] ; 2 uses
  %vec.ind4053 = phi <8 x i64> [ %induction4050, %vector.ph4046 ], [ %vec.ind.next4088, %vector.body4051 ] ; 2 uses
  %i.fn = shl nuw i64 %index4052, 1
  %i.fo = add nuw i64 %i.fn, %i.es                ; 4 uses
  %i.fp = sub nsw i64 %i.fo, %i.af
  %i.fq = getelementptr [8 x i8], ptr %i.k, i64 %i.fp ; 4 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 -8
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.eq
  %wide.vec4054 = load <32 x float>, ptr %i.fs, align 4, !tbaa !77, !alias.scope !214
  %strided.vec4055 = shufflevector <32 x float> %wide.vec4054, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %i.ft = getelementptr [8 x i8], ptr %invariant.gep3871, i64 %i.fo ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.eq
  %wide.vec4056 = load <32 x float>, ptr %i.fv, align 4, !tbaa !77, !alias.scope !217
  %strided.vec4057 = shufflevector <32 x float> %wide.vec4056, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %i.fw = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4055, %strided.vec4057
  %i.fx = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fw)
  %i.fy = fpext reassoc nsz arcp contract afn <8 x float> %i.fx to <8 x double>
  %i.fz = fadd reassoc nsz arcp contract afn <8 x double> %i.fy, splat (double 1.000000e+00)
  %i.ga = sub nsw i64 %i.fo, %i.ae
  %i.gb = getelementptr [8 x i8], ptr %i.k, i64 %i.ga ; 4 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 -24
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.eq
  %wide.vec4058 = load <32 x float>, ptr %i.gd, align 4, !tbaa !77, !alias.scope !219
  %strided.vec4059 = shufflevector <32 x float> %wide.vec4058, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %i.ge = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4055, %strided.vec4059
  %i.gf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ge)
  %i.gg = fpext reassoc nsz arcp contract afn <8 x float> %i.gf to <8 x double>
  %i.gh = fadd reassoc nsz arcp contract afn <8 x double> %i.fz, %i.gg
  %i.gi = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4057, %strided.vec4059
  %i.gj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gi)
  %i.gk = fpext reassoc nsz arcp contract afn <8 x float> %i.gj to <8 x double>
  %i.gl = fadd reassoc nsz arcp contract afn <8 x double> %i.gh, %i.gk
  %i.gm = fptrunc reassoc nsz arcp contract afn <8 x double> %i.gl to <8 x float>
  %i.gn = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.gm ; 2 uses
  %i.go = getelementptr i8, ptr %i.fq, i64 8
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.eq
  %wide.vec4060 = load <32 x float>, ptr %i.gp, align 4, !tbaa !77, !alias.scope !221
  %strided.vec4061 = shufflevector <32 x float> %wide.vec4060, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %i.gq = getelementptr i8, ptr %i.ft, i64 -8
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.eq
  %wide.vec4062 = load <32 x float>, ptr %i.gr, align 4, !tbaa !77, !alias.scope !223
  %strided.vec4063 = shufflevector <32 x float> %wide.vec4062, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %i.gs = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4061, %strided.vec4063
  %i.gt = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gs)
  %i.gu = fpext reassoc nsz arcp contract afn <8 x float> %i.gt to <8 x double>
  %i.gv = fadd reassoc nsz arcp contract afn <8 x double> %i.gu, splat (double 1.000000e+00)
  %i.gw = getelementptr i8, ptr %i.gb, i64 24
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.eq
  %wide.vec4064 = load <32 x float>, ptr %i.gx, align 4, !tbaa !77, !alias.scope !225
  %strided.vec4065 = shufflevector <32 x float> %wide.vec4064, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %i.gy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4061, %strided.vec4065
  %i.gz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gy)
  %i.ha = fpext reassoc nsz arcp contract afn <8 x float> %i.gz to <8 x double>
  %i.hb = fadd reassoc nsz arcp contract afn <8 x double> %i.gv, %i.ha
  %i.hc = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4063, %strided.vec4065
  %i.hd = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hc)
  %i.he = fpext reassoc nsz arcp contract afn <8 x float> %i.hd to <8 x double>
  %i.hf = fadd reassoc nsz arcp contract afn <8 x double> %i.hb, %i.he
  %i.hg = fptrunc reassoc nsz arcp contract afn <8 x double> %i.hf to <8 x float>
  %i.hh = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.hg ; 2 uses
  %i.hi = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4063, %strided.vec4061
  %i.hj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hi)
  %i.hk = fpext reassoc nsz arcp contract afn <8 x float> %i.hj to <8 x double>
  %i.hl = fadd reassoc nsz arcp contract afn <8 x double> %i.hk, splat (double 1.000000e+00)
  %i.hm = getelementptr [8 x i8], ptr %invariant.gep3873, i64 %i.fo ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.eq
  %wide.vec4066 = load <32 x float>, ptr %i.ho, align 4, !tbaa !77, !alias.scope !227
  %strided.vec4067 = shufflevector <32 x float> %wide.vec4066, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %i.hp = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4063, %strided.vec4067
  %i.hq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hp)
  %i.hr = fpext reassoc nsz arcp contract afn <8 x float> %i.hq to <8 x double>
end_hunk_1
begin_hunk_2_@_ZN6LibRaw14dcb_color_fullEv:bb.a
  %i.hz = fptrunc reassoc nsz arcp contract afn <8 x double> %i.hy to <8 x float>
  %i.ia = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.hz ; 2 uses
  %i.ib = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4057, %strided.vec4055
  %i.ic = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ib)
  %i.id = fpext reassoc nsz arcp contract afn <8 x float> %i.ic to <8 x double>
  %i.ie = fadd reassoc nsz arcp contract afn <8 x double> %i.id, splat (double 1.000000e+00)
  %i.if = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4057, %strided.vec4069
  %i.ig = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.if)
  %i.ih = fpext reassoc nsz arcp contract afn <8 x float> %i.ig to <8 x double>
  %i.ii = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4055, %strided.vec4067
  %i.ij = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ii)
  %i.ik = fpext reassoc nsz arcp contract afn <8 x float> %i.ij to <8 x double>
  %i.il = fadd reassoc nsz arcp contract afn <8 x double> %i.ie, %i.ik
  %i.im = fadd reassoc nsz arcp contract afn <8 x double> %i.il, %i.ih
  %i.in = fptrunc reassoc nsz arcp contract afn <8 x double> %i.im to <8 x float>
  %i.io = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.in ; 2 uses
  %i.ip = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4055, splat (float 1.325000e+00)
  %i.iq = getelementptr i8, ptr %i.gb, i64 -8
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.eq
  %wide.vec4070 = load <32 x float>, ptr %i.ir, align 4, !tbaa !77, !alias.scope !231
  %strided.vec4071 = shufflevector <32 x float> %wide.vec4070, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.is = getelementptr i8, ptr %i.fq, i64 -24
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.eq
  %wide.vec4072 = load <32 x float>, ptr %i.it, align 4, !tbaa !77, !alias.scope !233
  %strided.vec4073 = shufflevector <32 x float> %wide.vec4072, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.iu = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4059, splat (float -1.750000e-01)
  %i.iv = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4073, %strided.vec4071
  %i.iw = fmul reassoc nsz arcp contract afn <8 x float> %i.iv, splat (float -7.500000e-02)
  %i.ix = fadd reassoc nsz arcp contract afn <8 x float> %i.iu, %i.ip
  %i.iy = fadd reassoc nsz arcp contract afn <8 x float> %i.ix, %i.iw
  %i.iz = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4061, splat (float 1.325000e+00)
  %i.ja = getelementptr i8, ptr %i.gb, i64 8
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.eq
  %wide.vec4074 = load <32 x float>, ptr %i.jb, align 4, !tbaa !77, !alias.scope !235
  %strided.vec4075 = shufflevector <32 x float> %wide.vec4074, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.jc = getelementptr i8, ptr %i.fq, i64 24
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.eq
  %wide.vec4076 = load <32 x float>, ptr %i.jd, align 4, !tbaa !77, !alias.scope !237
  %strided.vec4077 = shufflevector <32 x float> %wide.vec4076, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.je = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4065, splat (float -1.750000e-01)
  %i.jf = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4077, %strided.vec4075
  %i.jg = fmul reassoc nsz arcp contract afn <8 x float> %i.jf, splat (float -7.500000e-02)
  %i.jh = fadd reassoc nsz arcp contract afn <8 x float> %i.je, %i.iz
  %i.ji = fadd reassoc nsz arcp contract afn <8 x float> %i.jh, %i.jg
  %i.jj = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4063, splat (float 1.325000e+00)
  %i.jk = getelementptr i8, ptr %i.hm, i64 -8
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.eq
  %wide.vec4078 = load <32 x float>, ptr %i.jl, align 4, !tbaa !77, !alias.scope !239
  %strided.vec4079 = shufflevector <32 x float> %wide.vec4078, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.jm = getelementptr i8, ptr %i.ft, i64 -24
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.eq
  %wide.vec4080 = load <32 x float>, ptr %i.jn, align 4, !tbaa !77, !alias.scope !241
  %strided.vec4081 = shufflevector <32 x float> %wide.vec4080, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.jo = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4069, splat (float -1.750000e-01)
  %i.jp = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4081, %strided.vec4079
  %i.jq = fmul reassoc nsz arcp contract afn <8 x float> %i.jp, splat (float -7.500000e-02)
  %i.jr = fadd reassoc nsz arcp contract afn <8 x float> %i.jo, %i.jj
  %i.js = fadd reassoc nsz arcp contract afn <8 x float> %i.jr, %i.jq
  %i.jt = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4057, splat (float 1.325000e+00)
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.eq
  %wide.vec4082 = load <32 x float>, ptr %i.jv, align 4, !tbaa !77, !alias.scope !243
  %strided.vec4083 = shufflevector <32 x float> %wide.vec4082, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.eq
  %wide.vec4084 = load <32 x float>, ptr %i.jx, align 4, !tbaa !77, !alias.scope !245
  %strided.vec4085 = shufflevector <32 x float> %wide.vec4084, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.jy = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4067, splat (float -1.750000e-01)
  %i.jz = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4085, %strided.vec4083
  %i.ka = fmul reassoc nsz arcp contract afn <8 x float> %i.jz, splat (float -7.500000e-02)
  %i.kb = fadd reassoc nsz arcp contract afn <8 x float> %i.jy, %i.jt
  %i.kc = fadd reassoc nsz arcp contract afn <8 x float> %i.kb, %i.ka
  %i.kd = fmul reassoc nsz arcp contract afn <8 x float> %i.iy, %i.gn
  %i.ke = fmul reassoc nsz arcp contract afn <8 x float> %i.ji, %i.hh
  %i.kf = fadd reassoc nsz arcp contract afn <8 x float> %i.ke, %i.kd
  %i.kg = fmul reassoc nsz arcp contract afn <8 x float> %i.js, %i.ia
  %i.kh = fadd reassoc nsz arcp contract afn <8 x float> %i.kf, %i.kg
  %i.ki = fmul reassoc nsz arcp contract afn <8 x float> %i.kc, %i.io
  %i.kj = fadd reassoc nsz arcp contract afn <8 x float> %i.kh, %i.ki
  %i.kk = fadd reassoc nsz arcp contract afn <8 x float> %i.hh, %i.gn
  %i.kl = fadd reassoc nsz arcp contract afn <8 x float> %i.kk, %i.ia
  %i.km = fadd reassoc nsz arcp contract afn <8 x float> %i.kl, %i.io
  %i.kn = fdiv reassoc nsz arcp contract afn <8 x float> %i.kj, %i.km
  %wide.gep4086 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep3693, <8 x i64> %vec.ind4053
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.kn, <8 x ptr> align 4 %wide.gep4086, <8 x i1> splat (i1 true)), !tbaa !77, !alias.scope !247, !noalias !249
  %index.next4087 = add nuw i64 %index4052, 8     ; 2 uses
  %vec.ind.next4088 = add nuw nsw <8 x i64> %vec.ind4053, splat (i64 16)
  %i.ko = icmp eq i64 %index.next4087, %n.vec4047
  br i1 %i.ko, label %scalar.ph4044.preheader, label %vector.body4051, !llvm.loop !250

scalar.ph4044.preheader:                          ; preds = %vector.body4051, %vector.memcheck, %.lr.ph3691
  %indvars.iv3719.ph = phi i64 [ %i.es, %vector.memcheck ], [ %i.es, %.lr.ph3691 ], [ %i.fj, %vector.body4051 ]
  %.130983688.ph = phi i32 [ %i.ej, %vector.memcheck ], [ %i.ej, %.lr.ph3691 ], [ %i.fm, %vector.body4051 ]
  br label %scalar.ph4044

scalar.ph4044:                                    ; preds = %scalar.ph4044.preheader, %scalar.ph4044
  %indvars.iv3719 = phi i64 [ %indvars.iv.next3720, %scalar.ph4044 ], [ %indvars.iv3719.ph, %scalar.ph4044.preheader ] ; 6 uses
  %.130983688 = phi i32 [ %i.mr, %scalar.ph4044 ], [ %.130983688.ph, %scalar.ph4044.preheader ]
  %i.kp = sub nsw i64 %indvars.iv3719, %i.af
  %i.kq = getelementptr [8 x i8], ptr %i.k, i64 %i.kp
  %gep3872 = getelementptr [8 x i8], ptr %invariant.gep3871, i64 %indvars.iv3719
  %i.kr = sub nsw i64 %indvars.iv3719, %i.ae
  %i.ks = getelementptr [8 x i8], ptr %i.k, i64 %i.kr
  %i.kt = getelementptr i8, ptr %i.ks, i64 -24
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.eq
  %gep3874 = getelementptr [8 x i8], ptr %invariant.gep3873, i64 %indvars.iv3719
  %i.kv = getelementptr i8, ptr %gep3874, i64 -24
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.eq
  %i.kx = getelementptr i8, ptr %i.kq, i64 -24
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.eq
  %i.kz = getelementptr i8, ptr %gep3872, i64 -24
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.eq
  %i.lb = tail call <13 x float> @llvm.masked.load.v13f32.p0(ptr align 4 %i.ky, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>, <13 x float> poison), !tbaa !77 ; 2 uses
  %i.lc = tail call <13 x float> @llvm.masked.load.v13f32.p0(ptr align 4 %i.la, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>, <13 x float> poison), !tbaa !77 ; 3 uses
  %i.ld = shufflevector <13 x float> %i.lb, <13 x float> %i.lc, <4 x i32> <i32 8, i32 4, i32 17, i32 21> ; 4 uses
  %i.le = shufflevector <4 x float> %i.ld, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.lf = fsub reassoc nsz arcp contract afn <4 x float> %i.ld, %i.le
  %i.lg = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.lf)
  %i.lh = fpext <4 x float> %i.lg to <4 x double>
  %i.li = fadd reassoc nsz arcp contract afn <4 x double> %i.lh, splat (double 1.000000e+00)
  %i.lj = shufflevector <4 x double> %i.li, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.lk = tail call <13 x float> @llvm.masked.load.v13f32.p0(ptr align 4 %i.ku, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>, <13 x float> poison), !tbaa !77 ; 6 uses
  %i.ll = tail call <13 x float> @llvm.masked.load.v13f32.p0(ptr align 4 %i.kw, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>, <13 x float> poison), !tbaa !77 ; 4 uses
  %i.lm = shufflevector <4 x float> %i.ld, <4 x float> poison, <13 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ln = shufflevector <13 x float> %i.lk, <13 x float> %i.ll, <13 x i32> <i32 12, i32 13, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lo = shufflevector <13 x float> %i.lm, <13 x float> %i.lk, <4 x i32> <i32 0, i32 3, i32 2, i32 13>
  %i.lp = shufflevector <13 x float> %i.ln, <13 x float> %i.lc, <4 x i32> <i32 2, i32 1, i32 0, i32 21>
  %i.lq = fsub reassoc nsz arcp contract afn <4 x float> %i.lo, %i.lp
  %i.lr = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.lq)
  %i.ls = fpext <4 x float> %i.lr to <4 x double>
  %i.lt = shufflevector <13 x float> %i.ll, <13 x float> %i.lm, <13 x i32> <i32 12, i32 14, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lu = shufflevector <13 x float> %i.lt, <13 x float> %i.lk, <4 x i32> <i32 0, i32 1, i32 2, i32 13> ; 2 uses
  %i.lv = shufflevector <4 x float> %i.ld, <4 x float> %i.lu, <13 x i32> <i32 2, i32 4, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lw = shufflevector <13 x float> %i.lv, <13 x float> %i.lk, <4 x i32> <i32 0, i32 1, i32 25, i32 3>
  %i.lx = fsub reassoc nsz arcp contract afn <4 x float> %i.lu, %i.lw
  %i.ly = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.lx)
  %i.lz = fpext <4 x float> %i.ly to <4 x double>
  %i.ma = fadd reassoc nsz arcp contract afn <4 x double> %i.lj, %i.lz
  %i.mb = fadd reassoc nsz arcp contract afn <4 x double> %i.ma, %i.ls
  %i.mc = fptrunc <4 x double> %i.mb to <4 x float>
  %i.md = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.mc ; 2 uses
  %i.me = fmul reassoc nsz arcp contract afn <4 x float> %i.le, splat (float 1.325000e+00)
  %i.mf = shufflevector <13 x float> %i.ll, <13 x float> %i.lk, <4 x i32> <i32 0, i32 12, i32 25, i32 13>
  %i.mg = fmul reassoc nsz arcp contract afn <4 x float> %i.mf, splat (float -1.750000e-01)
  %i.mh = shufflevector <13 x float> %i.lc, <13 x float> %i.lb, <4 x i32> <i32 0, i32 12, i32 25, i32 13>
  %i.mi = shufflevector <13 x float> %i.ll, <13 x float> %i.lk, <4 x i32> <i32 4, i32 8, i32 21, i32 17>
  %i.mj = fadd reassoc nsz arcp contract afn <4 x float> %i.mh, %i.mi
  %i.mk = fmul reassoc nsz arcp contract afn <4 x float> %i.mj, splat (float -7.500000e-02)
  %i.ml = fadd reassoc nsz arcp contract afn <4 x float> %i.mg, %i.me
  %i.mm = fadd reassoc nsz arcp contract afn <4 x float> %i.ml, %i.mk
  %i.mn = fmul reassoc nsz arcp contract afn <4 x float> %i.mm, %i.md
  %i.mo = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.mn)
  %i.mp = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.md)
  %i.mq = fdiv reassoc nsz arcp contract afn float %i.mo, %i.mp
  %gep3694 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep3693, i64 %indvars.iv3719
  store float %i.mq, ptr %gep3694, align 4, !tbaa !77
  %i.mr = add nuw nsw i32 %.130983688, 2          ; 2 uses
  %indvars.iv.next3720 = add nuw nsw i64 %indvars.iv3719, 2
  %i.ms = icmp slt i32 %i.mr, %i.ab
  br i1 %i.ms, label %scalar.ph4044, label %._crit_edge3692, !llvm.loop !251

._crit_edge3692:                                  ; preds = %scalar.ph4044, %bb.c
  %i.mt = add nuw nsw i32 %.13695, 1              ; 2 uses
  %indvars.iv.next3718 = add nuw i32 %indvars.iv3717, %i.aa
  %exitcond3722.not = icmp eq i32 %i.mt, %i.v
  br i1 %exitcond3722.not, label %.lr.ph3705, label %bb.c, !llvm.loop !252

.preheader:                                       ; preds = %._crit_edge3703, %.preheader3681
  %.pr = load i16, ptr %i.f, align 4, !tbaa !74   ; 2 uses
  %i.mu = icmp ugt i16 %.pr, 12
  br i1 %i.mu, label %.lr.ph3712.preheader, label %._crit_edge3713

.lr.ph3712.preheader:                             ; preds = %.preheader
  %i.mv = zext i16 %i.c to i64                    ; 6 uses
  %.pre = load i16, ptr %i.b, align 2, !tbaa !11
  br label %.lr.ph3712

bb.d:                                             ; preds = %.lr.ph3705, %._crit_edge3703
  %indvars.iv3723 = phi i32 [ %i.dr, %.lr.ph3705 ], [ %indvars.iv.next3724, %._crit_edge3703 ] ; 2 uses
  %.23704 = phi i32 [ 3, %.lr.ph3705 ], [ %i.acj, %._crit_edge3703 ] ; 2 uses
  %i.mw = shl nuw nsw i32 %.23704, 1
  %i.mx = and i32 %i.mw, 14                       ; 2 uses
  %i.my = shl nuw nsw i32 %i.mx, 1
  %i.mz = lshr i32 %i.dm, %i.my
  %i.na = and i32 %i.mz, 1                        ; 5 uses
  %i.nb = add nuw nsw i32 %i.na, 3                ; 4 uses
  %i.nc = icmp slt i32 %i.nb, %i.dp
  br i1 %i.nc, label %.preheader3679.preheader, label %._crit_edge3703

.preheader3679.preheader:                         ; preds = %bb.d
  %i.nd = or disjoint i32 %i.na, %i.mx
  %i.ne = shl nuw nsw i32 %i.nd, 1
  %i.nf = shl nuw i32 2, %i.ne
  %i.ng = and i32 %i.nf, %i.dm
  %.cmp3500 = icmp ne i32 %i.ng, 0                ; 4 uses
  %i.nh = zext i1 %.cmp3500 to i64                ; 18 uses
  %i.ni = add i32 %indvars.iv3723, %i.na
  %i.nj = sext i32 %i.ni to i64                   ; 6 uses
  %not..cmp3500 = xor i1 %.cmp3500, true
  %i.nk = zext i1 %not..cmp3500 to i64            ; 18 uses
  %i.nl = sub nsw i32 %3, %i.na                   ; 2 uses
  %i.nm = lshr i32 %i.nl, 1
  %narrow4345 = add nuw i32 %i.nm, 1
  %i.nn = zext i32 %narrow4345 to i64             ; 2 uses
  %min.iters.check4295 = icmp ult i32 %i.nl, 16
  br i1 %min.iters.check4295, label %.preheader3679.preheader4346, label %vector.memcheck4092

vector.memcheck4092:                              ; preds = %.preheader3679.preheader
  %i.no = shl nsw i64 %i.nj, 3                    ; 3 uses
  %i.np = select i1 %.cmp3500, i64 4, i64 0       ; 2 uses
  %i.nq = or disjoint i64 %i.no, %i.np            ; 9 uses
  %scevgep4093 = getelementptr i8, ptr %i.k, i64 %i.nq ; 17 uses
  %i.nr = sub nsw i32 %i.du, %i.na
  %i.ns = lshr i32 %i.nr, 1
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = shl nuw nsw i64 %i.nt, 4
  %i.nv = add nsw i64 %i.nu, %i.no                ; 2 uses
  %i.nw = or disjoint i64 %i.nv, %i.np            ; 9 uses
  %scevgep4095 = getelementptr i8, ptr %scevgep4094, i64 %i.nw ; 17 uses
  %i.nx = select i1 %.cmp3500, i64 0, i64 4       ; 2 uses
  %i.ny = or disjoint i64 %i.no, %i.nx            ; 9 uses
  %scevgep4096 = getelementptr i8, ptr %i.k, i64 %i.ny ; 17 uses
  %i.nz = or disjoint i64 %i.nv, %i.nx            ; 9 uses
  %scevgep4098 = getelementptr i8, ptr %scevgep4097, i64 %i.nz ; 17 uses
  %scevgep4100 = getelementptr i8, ptr %scevgep4099, i64 %i.nq ; 2 uses
  %scevgep4102 = getelementptr i8, ptr %scevgep4101, i64 %i.nw ; 2 uses
  %scevgep4104 = getelementptr i8, ptr %scevgep4103, i64 %i.nq ; 2 uses
  %scevgep4106 = getelementptr i8, ptr %scevgep4105, i64 %i.nw ; 2 uses
  %scevgep4108 = getelementptr i8, ptr %scevgep4107, i64 %i.nq ; 2 uses
  %scevgep4110 = getelementptr i8, ptr %scevgep4109, i64 %i.nw ; 2 uses
  %scevgep4112 = getelementptr i8, ptr %scevgep4111, i64 %i.nq ; 2 uses
  %scevgep4114 = getelementptr i8, ptr %scevgep4113, i64 %i.nw ; 2 uses
  %scevgep4116 = getelementptr i8, ptr %scevgep4115, i64 %i.nq ; 2 uses
  %scevgep4118 = getelementptr i8, ptr %scevgep4117, i64 %i.nw ; 2 uses
  %scevgep4120 = getelementptr i8, ptr %scevgep4119, i64 %i.nq ; 2 uses
  %scevgep4122 = getelementptr i8, ptr %scevgep4121, i64 %i.nw ; 2 uses
  %scevgep4124 = getelementptr i8, ptr %scevgep4123, i64 %i.nq ; 2 uses
  %scevgep4126 = getelementptr i8, ptr %scevgep4125, i64 %i.nw ; 2 uses
  %scevgep4128 = getelementptr i8, ptr %scevgep4127, i64 %i.nq ; 2 uses
  %scevgep4130 = getelementptr i8, ptr %scevgep4129, i64 %i.nw ; 2 uses
  %scevgep4132 = getelementptr i8, ptr %scevgep4131, i64 %i.ny ; 2 uses
  %scevgep4134 = getelementptr i8, ptr %scevgep4133, i64 %i.nz ; 2 uses
  %scevgep4136 = getelementptr i8, ptr %scevgep4135, i64 %i.ny ; 2 uses
  %scevgep4138 = getelementptr i8, ptr %scevgep4137, i64 %i.nz ; 2 uses
  %scevgep4140 = getelementptr i8, ptr %scevgep4139, i64 %i.ny ; 2 uses
  %scevgep4142 = getelementptr i8, ptr %scevgep4141, i64 %i.nz ; 2 uses
  %scevgep4144 = getelementptr i8, ptr %scevgep4143, i64 %i.ny ; 2 uses
  %scevgep4146 = getelementptr i8, ptr %scevgep4145, i64 %i.nz ; 2 uses
  %scevgep4148 = getelementptr i8, ptr %scevgep4147, i64 %i.ny ; 2 uses
  %scevgep4150 = getelementptr i8, ptr %scevgep4149, i64 %i.nz ; 2 uses
  %scevgep4152 = getelementptr i8, ptr %scevgep4151, i64 %i.ny ; 2 uses
  %scevgep4154 = getelementptr i8, ptr %scevgep4153, i64 %i.nz ; 2 uses
  %scevgep4156 = getelementptr i8, ptr %scevgep4155, i64 %i.ny ; 2 uses
  %scevgep4158 = getelementptr i8, ptr %scevgep4157, i64 %i.nz ; 2 uses
  %scevgep4160 = getelementptr i8, ptr %scevgep4159, i64 %i.ny ; 2 uses
  %scevgep4162 = getelementptr i8, ptr %scevgep4161, i64 %i.nz ; 2 uses
  %bound04163 = icmp ult ptr %scevgep4093, %scevgep4098
  %bound14164 = icmp ult ptr %scevgep4096, %scevgep4095
  %found.conflict4165 = and i1 %bound04163, %bound14164
  %bound04166 = icmp ult ptr %scevgep4093, %scevgep4102
  %bound14167 = icmp ult ptr %scevgep4100, %scevgep4095
  %found.conflict4168 = and i1 %bound04166, %bound14167
  %conflict.rdx4169 = or i1 %found.conflict4165, %found.conflict4168
  %bound04170 = icmp ult ptr %scevgep4093, %scevgep4106
  %bound14171 = icmp ult ptr %scevgep4104, %scevgep4095
  %found.conflict4172 = and i1 %bound04170, %bound14171
  %conflict.rdx4173 = or i1 %conflict.rdx4169, %found.conflict4172
  %bound04174 = icmp ult ptr %scevgep4093, %scevgep4110
  %bound14175 = icmp ult ptr %scevgep4108, %scevgep4095
  %found.conflict4176 = and i1 %bound04174, %bound14175
  %conflict.rdx4177 = or i1 %conflict.rdx4173, %found.conflict4176
  %bound04178 = icmp ult ptr %scevgep4093, %scevgep4114
  %bound14179 = icmp ult ptr %scevgep4112, %scevgep4095
  %found.conflict4180 = and i1 %bound04178, %bound14179
  %conflict.rdx4181 = or i1 %conflict.rdx4177, %found.conflict4180
  %bound04182 = icmp ult ptr %scevgep4093, %scevgep4118
  %bound14183 = icmp ult ptr %scevgep4116, %scevgep4095
  %found.conflict4184 = and i1 %bound04182, %bound14183
  %conflict.rdx4185 = or i1 %conflict.rdx4181, %found.conflict4184
  %bound04186 = icmp ult ptr %scevgep4093, %scevgep4122
  %bound14187 = icmp ult ptr %scevgep4120, %scevgep4095
  %found.conflict4188 = and i1 %bound04186, %bound14187
  %conflict.rdx4189 = or i1 %conflict.rdx4185, %found.conflict4188
  %bound04190 = icmp ult ptr %scevgep4093, %scevgep4126
  %bound14191 = icmp ult ptr %scevgep4124, %scevgep4095
  %found.conflict4192 = and i1 %bound04190, %bound14191
  %conflict.rdx4193 = or i1 %conflict.rdx4189, %found.conflict4192
  %bound04194 = icmp ult ptr %scevgep4093, %scevgep4130
  %bound14195 = icmp ult ptr %scevgep4128, %scevgep4095
  %found.conflict4196 = and i1 %bound04194, %bound14195
  %conflict.rdx4197 = or i1 %conflict.rdx4193, %found.conflict4196
  %bound04198 = icmp ult ptr %scevgep4093, %scevgep4134
  %bound14199 = icmp ult ptr %scevgep4132, %scevgep4095
  %found.conflict4200 = and i1 %bound04198, %bound14199
  %conflict.rdx4201 = or i1 %conflict.rdx4197, %found.conflict4200
  %bound04202 = icmp ult ptr %scevgep4093, %scevgep4138
  %bound14203 = icmp ult ptr %scevgep4136, %scevgep4095
  %found.conflict4204 = and i1 %bound04202, %bound14203
  %conflict.rdx4205 = or i1 %conflict.rdx4201, %found.conflict4204
  %bound04206 = icmp ult ptr %scevgep4093, %scevgep4142
  %bound14207 = icmp ult ptr %scevgep4140, %scevgep4095
  %found.conflict4208 = and i1 %bound04206, %bound14207
  %conflict.rdx4209 = or i1 %conflict.rdx4205, %found.conflict4208
  %bound04210 = icmp ult ptr %scevgep4093, %scevgep4146
  %bound14211 = icmp ult ptr %scevgep4144, %scevgep4095
  %found.conflict4212 = and i1 %bound04210, %bound14211
  %conflict.rdx4213 = or i1 %conflict.rdx4209, %found.conflict4212
  %bound04214 = icmp ult ptr %scevgep4093, %scevgep4150
  %bound14215 = icmp ult ptr %scevgep4148, %scevgep4095
  %found.conflict4216 = and i1 %bound04214, %bound14215
  %conflict.rdx4217 = or i1 %conflict.rdx4213, %found.conflict4216
  %bound04218 = icmp ult ptr %scevgep4093, %scevgep4154
  %bound14219 = icmp ult ptr %scevgep4152, %scevgep4095
  %found.conflict4220 = and i1 %bound04218, %bound14219
  %conflict.rdx4221 = or i1 %conflict.rdx4217, %found.conflict4220
  %bound04222 = icmp ult ptr %scevgep4093, %scevgep4158
  %bound14223 = icmp ult ptr %scevgep4156, %scevgep4095
  %found.conflict4224 = and i1 %bound04222, %bound14223
  %conflict.rdx4225 = or i1 %conflict.rdx4221, %found.conflict4224
  %bound04226 = icmp ult ptr %scevgep4093, %scevgep4162
  %bound14227 = icmp ult ptr %scevgep4160, %scevgep4095
  %found.conflict4228 = and i1 %bound04226, %bound14227
  %conflict.rdx4229 = or i1 %conflict.rdx4225, %found.conflict4228
  %bound04230 = icmp ult ptr %scevgep4096, %scevgep4102
  %bound14231 = icmp ult ptr %scevgep4100, %scevgep4098
  %found.conflict4232 = and i1 %bound04230, %bound14231
  %conflict.rdx4233 = or i1 %conflict.rdx4229, %found.conflict4232
  %bound04234 = icmp ult ptr %scevgep4096, %scevgep4106
  %bound14235 = icmp ult ptr %scevgep4104, %scevgep4098
  %found.conflict4236 = and i1 %bound04234, %bound14235
  %conflict.rdx4237 = or i1 %conflict.rdx4233, %found.conflict4236
  %bound04238 = icmp ult ptr %scevgep4096, %scevgep4110
  %bound14239 = icmp ult ptr %scevgep4108, %scevgep4098
  %found.conflict4240 = and i1 %bound04238, %bound14239
  %conflict.rdx4241 = or i1 %conflict.rdx4237, %found.conflict4240
  %bound04242 = icmp ult ptr %scevgep4096, %scevgep4114
  %bound14243 = icmp ult ptr %scevgep4112, %scevgep4098
  %found.conflict4244 = and i1 %bound04242, %bound14243
  %conflict.rdx4245 = or i1 %conflict.rdx4241, %found.conflict4244
  %bound04246 = icmp ult ptr %scevgep4096, %scevgep4118
  %bound14247 = icmp ult ptr %scevgep4116, %scevgep4098
  %found.conflict4248 = and i1 %bound04246, %bound14247
  %conflict.rdx4249 = or i1 %conflict.rdx4245, %found.conflict4248
  %bound04250 = icmp ult ptr %scevgep4096, %scevgep4122
  %bound14251 = icmp ult ptr %scevgep4120, %scevgep4098
  %found.conflict4252 = and i1 %bound04250, %bound14251
  %conflict.rdx4253 = or i1 %conflict.rdx4249, %found.conflict4252
  %bound04254 = icmp ult ptr %scevgep4096, %scevgep4126
  %bound14255 = icmp ult ptr %scevgep4124, %scevgep4098
  %found.conflict4256 = and i1 %bound04254, %bound14255
  %conflict.rdx4257 = or i1 %conflict.rdx4253, %found.conflict4256
  %bound04258 = icmp ult ptr %scevgep4096, %scevgep4130
  %bound14259 = icmp ult ptr %scevgep4128, %scevgep4098
  %found.conflict4260 = and i1 %bound04258, %bound14259
  %conflict.rdx4261 = or i1 %conflict.rdx4257, %found.conflict4260
  %bound04262 = icmp ult ptr %scevgep4096, %scevgep4134
  %bound14263 = icmp ult ptr %scevgep4132, %scevgep4098
  %found.conflict4264 = and i1 %bound04262, %bound14263
  %conflict.rdx4265 = or i1 %conflict.rdx4261, %found.conflict4264
  %bound04266 = icmp ult ptr %scevgep4096, %scevgep4138
  %bound14267 = icmp ult ptr %scevgep4136, %scevgep4098
  %found.conflict4268 = and i1 %bound04266, %bound14267
  %conflict.rdx4269 = or i1 %conflict.rdx4265, %found.conflict4268
  %bound04270 = icmp ult ptr %scevgep4096, %scevgep4142
  %bound14271 = icmp ult ptr %scevgep4140, %scevgep4098
  %found.conflict4272 = and i1 %bound04270, %bound14271
  %conflict.rdx4273 = or i1 %conflict.rdx4269, %found.conflict4272
  %bound04274 = icmp ult ptr %scevgep4096, %scevgep4146
  %bound14275 = icmp ult ptr %scevgep4144, %scevgep4098
  %found.conflict4276 = and i1 %bound04274, %bound14275
  %conflict.rdx4277 = or i1 %conflict.rdx4273, %found.conflict4276
  %bound04278 = icmp ult ptr %scevgep4096, %scevgep4150
  %bound14279 = icmp ult ptr %scevgep4148, %scevgep4098
  %found.conflict4280 = and i1 %bound04278, %bound14279
  %conflict.rdx4281 = or i1 %conflict.rdx4277, %found.conflict4280
  %bound04282 = icmp ult ptr %scevgep4096, %scevgep4154
  %bound14283 = icmp ult ptr %scevgep4152, %scevgep4098
  %found.conflict4284 = and i1 %bound04282, %bound14283
  %conflict.rdx4285 = or i1 %conflict.rdx4281, %found.conflict4284
  %bound04286 = icmp ult ptr %scevgep4096, %scevgep4158
  %bound14287 = icmp ult ptr %scevgep4156, %scevgep4098
  %found.conflict4288 = and i1 %bound04286, %bound14287
  %conflict.rdx4289 = or i1 %conflict.rdx4285, %found.conflict4288
  %bound04290 = icmp ult ptr %scevgep4096, %scevgep4162
  %bound14291 = icmp ult ptr %scevgep4160, %scevgep4098
  %found.conflict4292 = and i1 %bound04290, %bound14291
  %conflict.rdx4293 = or i1 %conflict.rdx4289, %found.conflict4292
  br i1 %conflict.rdx4293, label %.preheader3679.preheader4346, label %vector.ph4296

vector.ph4296:                                    ; preds = %vector.memcheck4092
  %i.oa = and i64 %i.nn, 7                        ; 2 uses
  %i.ob = icmp eq i64 %i.oa, 0
  %i.oc = select i1 %i.ob, i64 8, i64 %i.oa
  %n.vec4297 = sub nsw i64 %i.nn, %i.oc           ; 3 uses
  %i.od = shl nsw i64 %n.vec4297, 1
  %i.oe = add nsw i64 %i.od, %i.nj
  %i.of = trunc i64 %n.vec4297 to i32
  %i.og = shl i32 %i.of, 1
  %i.oh = add i32 %i.nb, %i.og
  %broadcast.splatinsert4298 = insertelement <8 x i64> poison, i64 %i.nj, i64 0
  %broadcast.splat4299 = shufflevector <8 x i64> %broadcast.splatinsert4298, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4300 = add nuw nsw <8 x i64> %broadcast.splat4299, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body4301

vector.body4301:                                  ; preds = %vector.body4301, %vector.ph4296
end_hunk_2
begin_hunk_3_@_ZN6LibRaw14dcb_color_fullEv:bb.a
  br label %._crit_edge3710

._crit_edge3710:                                  ; preds = %._crit_edge3710.loopexit, %.lr.ph3712
  %i.bgn = phi i16 [ %.pre3732, %._crit_edge3710.loopexit ], [ %i.ack, %.lr.ph3712 ] ; 2 uses
  %i.bgo = phi i16 [ %i.bgj, %._crit_edge3710.loopexit ], [ %i.acl, %.lr.ph3712 ]
  %i.bgp = add nuw nsw i32 %.33711, 1             ; 2 uses
  %i.bgq = zext i16 %i.bgn to i32
  %i.bgr = add nsw i32 %i.bgq, -6
  %i.bgs = icmp slt i32 %i.bgp, %i.bgr
  br i1 %i.bgs, label %.lr.ph3712, label %._crit_edge3713, !llvm.loop !296

._crit_edge3713:                                  ; preds = %._crit_edge3710, %bb.a, %.preheader
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.k)
  ret void
}

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw7dcb_mapEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !74   ; 2 uses
  %i.d = icmp ugt i16 %i.c, 2
  br i1 %i.d, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %bb.a
  %i.e = load i16, ptr %i.a, align 2, !tbaa !11   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 5 uses
  %i.h = zext i16 %i.e to i64                     ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.g, i64 %i.h
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph59, %._crit_edge
  %i.i = phi i16 [ %i.c, %.lr.ph59 ], [ %i.bg, %._crit_edge ]
  %i.j = phi i16 [ %i.e, %.lr.ph59 ], [ %i.bh, %._crit_edge ] ; 3 uses
  %.05257 = phi i32 [ 1, %.lr.ph59 ], [ %i.bi, %._crit_edge ] ; 2 uses
  %i.k = icmp ugt i16 %i.j, 2
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = zext i16 %i.j to i32
  %i.m = mul i32 %.05257, %i.l
  %i.n = add nuw i32 %i.m, 1
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.o
  %.phi.trans.insert62 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 2
  %.pre = load i16, ptr %.phi.trans.insert62, align 2, !tbaa !76
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %i.p = phi i16 [ %.pre, %.lr.ph.preheader ], [ %i.x, %bb.e ]
  %indvars.iv = phi i64 [ %i.o, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.05355 = phi i32 [ 1, %.lr.ph.preheader ], [ %i.bb, %bb.e ]
  %i.q = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.r = uitofp i16 %i.p to double
  %i.s = getelementptr i8, ptr %i.q, i64 -6
  %i.t = load i16, ptr %i.s, align 2, !tbaa !76   ; 3 uses
  %i.u = zext i16 %i.t to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !76   ; 4 uses
  %i.y = zext i16 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, %i.u               ; 3 uses
  %i.aa = sub nsw i64 %indvars.iv, %i.h
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !76 ; 3 uses
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %i.af = add nuw nsw i32 %i.z, %i.ae
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !76 ; 3 uses
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = add nuw nsw i32 %i.af, %i.ai
  %i.ak = uitofp nneg i32 %i.aj to double
  %i.al = fmul reassoc nnan nsz arcp contract afn double %i.ak, 2.500000e-01
  %i.am = fcmp reassoc nsz arcp contract afn olt double %i.al, %i.r
  %i.an = add nuw nsw i32 %i.ai, %i.ae            ; 2 uses
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %. = tail call i16 @llvm.umin.i16(i16 %i.t, i16 %i.x)
  %i.ao = zext i16 %. to i32
  %i.ap = add nuw nsw i32 %i.z, %i.ao
  %i.aq = tail call i16 @llvm.umin.i16(i16 %i.ad, i16 %i.ah)
  %i.ar = zext i16 %i.aq to i32
  %i.as = add nuw nsw i32 %i.an, %i.ar
  %i.at = icmp samesign ult i32 %i.ap, %i.as
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %.54 = tail call i16 @llvm.umax.i16(i16 %i.t, i16 %i.x)
  %i.au = zext i16 %.54 to i32
  %i.av = add nuw nsw i32 %i.z, %i.au
  %i.aw = tail call i16 @llvm.umax.i16(i16 %i.ad, i16 %i.ah)
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.an, %i.ax
  %i.az = icmp samesign ugt i32 %i.av, %i.ay
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink.in = phi i1 [ %i.at, %bb.c ], [ %i.az, %bb.d ]
  %.sink = zext i1 %.sink.in to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  store i16 %.sink, ptr %i.ba, align 2, !tbaa !76
  %i.bb = add nuw nsw i32 %.05355, 1              ; 2 uses
  %i.bc = load i16, ptr %i.a, align 2, !tbaa !11  ; 2 uses
  %i.bd = zext i16 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -1
  %i.bf = icmp slt i32 %i.bb, %i.be
  br i1 %i.bf, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !297

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre63 = load i16, ptr %i.b, align 4, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.bg = phi i16 [ %.pre63, %._crit_edge.loopexit ], [ %i.i, %bb.b ] ; 2 uses
  %i.bh = phi i16 [ %i.bc, %._crit_edge.loopexit ], [ %i.j, %bb.b ]
  %i.bi = add nuw nsw i32 %.05257, 1              ; 2 uses
  %i.bj = zext i16 %i.bg to i32
  %i.bk = add nsw i32 %i.bj, -1
  %i.bl = icmp slt i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.b, label %._crit_edge60, !llvm.loop !298

._crit_edge60:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw14dcb_correctionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !74   ; 2 uses
  %i.d = icmp ugt i16 %i.c, 4
  br i1 %i.d, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %bb.a
  %i.e = load i16, ptr %i.a, align 2, !tbaa !11   ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 4 uses
  %i.g = shl nuw nsw i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.j = load i32, ptr %i.i, align 8, !tbaa !75
  %i.k = add nsw i32 %i.f, -2                     ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8              ; 36 uses
  %i.m = zext nneg i32 %i.g to i64                ; 3 uses
  %i.n = zext i16 %i.e to i64                     ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %i.n ; 2 uses
  %invariant.gep46 = getelementptr [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 2
  %scevgep49 = getelementptr i8, ptr %i.l, i64 4
  %i.o = add nsw i32 %i.f, -5
  %i.p = shl nuw nsw i64 %i.n, 3                  ; 8 uses
  %i.q = getelementptr i8, ptr %i.l, i64 %i.p
  %scevgep51 = getelementptr i8, ptr %i.q, i64 6
  %i.r = getelementptr i8, ptr %i.l, i64 %i.p
  %scevgep53 = getelementptr i8, ptr %i.r, i64 8
  %i.s = sub nsw i64 6, %i.p
  %scevgep55 = getelementptr i8, ptr %i.l, i64 %i.s
  %i.t = sub nsw i64 8, %i.p
  %scevgep57 = getelementptr i8, ptr %i.l, i64 %i.t
  %scevgep59 = getelementptr nuw i8, ptr %i.l, i64 14
  %scevgep61 = getelementptr i8, ptr %i.l, i64 16
  %scevgep63 = getelementptr i8, ptr %i.l, i64 -2
  %i.u = shl nuw nsw i64 %i.n, 4                  ; 4 uses
  %i.v = getelementptr i8, ptr %i.l, i64 %i.u
  %scevgep66 = getelementptr i8, ptr %i.v, i64 6
  %i.w = getelementptr i8, ptr %i.l, i64 %i.u
  %scevgep68 = getelementptr i8, ptr %i.w, i64 8
  %i.x = sub nsw i64 6, %i.u
  %scevgep70 = getelementptr i8, ptr %i.l, i64 %i.x
  %i.y = sub nsw i64 8, %i.u
  %scevgep72 = getelementptr i8, ptr %i.l, i64 %i.y
  %scevgep74 = getelementptr i8, ptr %i.l, i64 22
  %scevgep76 = getelementptr i8, ptr %i.l, i64 24
  %scevgep78 = getelementptr i8, ptr %i.l, i64 -10
  %scevgep80 = getelementptr i8, ptr %i.l, i64 -8
  %scevgep82 = getelementptr i8, ptr %i.l, i64 -6
  %scevgep84 = getelementptr i8, ptr %i.l, i64 -4
  %scevgep86 = getelementptr i8, ptr %i.l, i64 10
  %scevgep88 = getelementptr i8, ptr %i.l, i64 12
  %i.z = sub nsw i64 2, %i.p
  %scevgep90 = getelementptr i8, ptr %i.l, i64 %i.z
  %i.aa = sub nsw i64 4, %i.p
  %scevgep92 = getelementptr i8, ptr %i.l, i64 %i.aa
  %i.ab = getelementptr i8, ptr %i.l, i64 %i.p
  %scevgep94 = getelementptr i8, ptr %i.ab, i64 2
  %i.ac = getelementptr i8, ptr %i.l, i64 %i.p
  %scevgep96 = getelementptr i8, ptr %i.ac, i64 4
  %1 = add nsw i32 %i.f, -5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph38, %._crit_edge
  %i.ad = phi i16 [ %i.c, %.lr.ph38 ], [ %i.fw, %._crit_edge ]
  %.03236 = phi i32 [ 2, %.lr.ph38 ], [ %i.fx, %._crit_edge ] ; 3 uses
  %i.ae = shl nuw nsw i32 %.03236, 2
  %i.af = and i32 %i.ae, 28
  %i.ag = lshr i32 %i.j, %i.af
  %i.ah = and i32 %i.ag, 1                        ; 4 uses
  %i.ai = or disjoint i32 %i.ah, 2                ; 4 uses
  %i.aj = icmp slt i32 %i.ai, %i.k
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ak = load i16, ptr %i.a, align 2, !tbaa !11
  %i.al = zext i16 %i.ak to i32
  %i.am = mul i32 %.03236, %i.al
  %i.an = add i32 %i.am, 2
  %i.ao = add i32 %i.an, %i.ah
  %i.ap = sext i32 %i.ao to i64                   ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ap
  %.phi.trans.insert41 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 6
  %.pre = load i16, ptr %.phi.trans.insert41, align 2, !tbaa !76 ; 3 uses
  %i.aq = sub nsw i32 %1, %i.ah                   ; 2 uses
  %i.ar = lshr i32 %i.aq, 1
  %narrow = add nuw i32 %i.ar, 1
  %i.as = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.aq, 16
  br i1 %min.iters.check, label %.lr.ph.preheader158, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.at = shl nuw nsw i64 %i.ap, 3                ; 14 uses
  %scevgep48 = getelementptr i8, ptr %scevgep, i64 %i.at ; 12 uses
  %i.au = sub nsw i32 %i.o, %i.ah
  %i.av = lshr i32 %i.au, 1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 4
  %i.ay = add nuw nsw i64 %i.ax, %i.at            ; 13 uses
  %scevgep50 = getelementptr i8, ptr %scevgep49, i64 %i.ay ; 12 uses
  %scevgep52 = getelementptr i8, ptr %scevgep51, i64 %i.at
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.ay
  %scevgep56 = getelementptr i8, ptr %scevgep55, i64 %i.at
  %scevgep58 = getelementptr i8, ptr %scevgep57, i64 %i.ay
  %scevgep60 = getelementptr nuw i8, ptr %scevgep59, i64 %i.at
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.ay
  %scevgep64 = getelementptr i8, ptr %scevgep63, i64 %i.at
  %scevgep65 = getelementptr i8, ptr %i.l, i64 %i.ay
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.at
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.ay
  %scevgep71 = getelementptr i8, ptr %scevgep70, i64 %i.at
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %i.ay
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %i.at
  %scevgep77 = getelementptr i8, ptr %scevgep76, i64 %i.ay
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.at
  %scevgep81 = getelementptr i8, ptr %scevgep80, i64 %i.ay
  %scevgep83 = getelementptr i8, ptr %scevgep82, i64 %i.at
  %scevgep85 = getelementptr i8, ptr %scevgep84, i64 %i.ay
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.at
  %scevgep89 = getelementptr i8, ptr %scevgep88, i64 %i.ay
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.at
  %scevgep93 = getelementptr i8, ptr %scevgep92, i64 %i.ay
  %scevgep95 = getelementptr i8, ptr %scevgep94, i64 %i.at
  %scevgep97 = getelementptr i8, ptr %scevgep96, i64 %i.ay
  %bound0 = icmp ult ptr %scevgep48, %scevgep54
  %bound1 = icmp ult ptr %scevgep52, %scevgep50
  %found.conflict = and i1 %bound0, %bound1
  %bound098 = icmp ult ptr %scevgep48, %scevgep58
  %bound199 = icmp ult ptr %scevgep56, %scevgep50
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx = or i1 %found.conflict, %found.conflict100
  %bound0101 = icmp ult ptr %scevgep48, %scevgep62
  %bound1102 = icmp ult ptr %scevgep60, %scevgep50
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx104 = or i1 %conflict.rdx, %found.conflict103
  %bound0105 = icmp ult ptr %scevgep48, %scevgep65
  %bound1106 = icmp ult ptr %scevgep64, %scevgep50
  %found.conflict107 = and i1 %bound0105, %bound1106
  %conflict.rdx108 = or i1 %conflict.rdx104, %found.conflict107
  %bound0109 = icmp ult ptr %scevgep48, %scevgep69
  %bound1110 = icmp ult ptr %scevgep67, %scevgep50
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx108, %found.conflict111
  %bound0113 = icmp ult ptr %scevgep48, %scevgep73
  %bound1114 = icmp ult ptr %scevgep71, %scevgep50
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %conflict.rdx112, %found.conflict115
  %bound0117 = icmp ult ptr %scevgep48, %scevgep77
  %bound1118 = icmp ult ptr %scevgep75, %scevgep50
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %conflict.rdx116, %found.conflict119
  %bound0121 = icmp ult ptr %scevgep48, %scevgep81
  %bound1122 = icmp ult ptr %scevgep79, %scevgep50
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx124 = or i1 %conflict.rdx120, %found.conflict123
  %bound0125 = icmp ult ptr %scevgep48, %scevgep85
  %bound1126 = icmp ult ptr %scevgep83, %scevgep50
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx128 = or i1 %conflict.rdx124, %found.conflict127
  %bound0129 = icmp ult ptr %scevgep48, %scevgep89
  %bound1130 = icmp ult ptr %scevgep87, %scevgep50
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %conflict.rdx128, %found.conflict131
  %bound0133 = icmp ult ptr %scevgep48, %scevgep93
  %bound1134 = icmp ult ptr %scevgep91, %scevgep50
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx136 = or i1 %conflict.rdx132, %found.conflict135
  %bound0137 = icmp ult ptr %scevgep48, %scevgep97
  %bound1138 = icmp ult ptr %scevgep95, %scevgep50
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx140 = or i1 %conflict.rdx136, %found.conflict139
  br i1 %conflict.rdx140, label %.lr.ph.preheader158, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.az = and i64 %i.as, 7                        ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  %i.bb = select i1 %i.ba, i64 8, i64 %i.az
  %n.vec = sub nsw i64 %i.as, %i.bb               ; 3 uses
  %i.bc = shl nsw i64 %n.vec, 1
  %i.bd = add nsw i64 %i.bc, %i.ap
  %i.be = trunc i64 %n.vec to i32
  %i.bf = shl i32 %i.be, 1
  %i.bg = add i32 %i.ai, %i.bf
  %vector.recur.init = insertelement <8 x i16> poison, i16 %.pre, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <8 x i16> [ %vector.recur.init, %vector.ph ], [ %strided.vec148, %vector.body ]
  %i.bh = shl nuw i64 %index, 1
  %i.bi = add nuw i64 %i.bh, %i.ap                ; 5 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bi ; 3 uses
  %i.bk = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %wide.vec = load <64 x i16>, ptr %i.bl, align 2, !tbaa !76 ; 2 uses
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec141 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.bm = zext <8 x i16> %strided.vec141 to <8 x i32>
  %i.bn = sub nsw i64 %i.bi, %i.n
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %wide.vec142 = load <64 x i16>, ptr %i.bp, align 2, !tbaa !76 ; 2 uses
  %strided.vec143 = shufflevector <64 x i16> %wide.vec142, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec144 = shufflevector <64 x i16> %wide.vec142, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.bq = zext <8 x i16> %strided.vec144 to <8 x i32>
  %i.br = add nuw nsw <8 x i32> %i.bq, %i.bm
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  %wide.vec145 = load <64 x i16>, ptr %i.bs, align 2, !tbaa !76 ; 4 uses
  %strided.vec146 = shufflevector <64 x i16> %wide.vec145, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec147 = shufflevector <64 x i16> %wide.vec145, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %strided.vec148 = shufflevector <64 x i16> %wide.vec145, <64 x i16> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62> ; 3 uses
  %i.bt = zext <8 x i16> %strided.vec147 to <8 x i32>
  %i.bu = add nuw nsw <8 x i32> %i.br, %i.bt
  %i.bv = getelementptr i8, ptr %i.bj, i64 -10
  %wide.vec149 = load <64 x i16>, ptr %i.bv, align 2, !tbaa !76 ; 3 uses
  %strided.vec150 = shufflevector <64 x i16> %wide.vec149, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec151 = shufflevector <64 x i16> %wide.vec149, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %strided.vec152 = shufflevector <64 x i16> %wide.vec149, <64 x i16> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %i.bw = zext <8 x i16> %strided.vec152 to <8 x i32>
  %i.bx = add nuw nsw <8 x i32> %i.bu, %i.bw
  %i.by = shl nuw nsw <8 x i32> %i.bx, splat (i32 1)
  %i.bz = getelementptr [8 x i8], ptr %invariant.gep46, i64 %i.bi
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 6
  %wide.vec153 = load <64 x i16>, ptr %i.ca, align 2, !tbaa !76, !alias.scope !299
  %strided.vec154 = shufflevector <64 x i16> %wide.vec153, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cb = zext <8 x i16> %strided.vec154 to <8 x i32>
  %i.cc = sub nsw i64 %i.bi, %i.m
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 6
  %wide.vec155 = load <64 x i16>, ptr %i.ce, align 2, !tbaa !76, !alias.scope !302
  %strided.vec156 = shufflevector <64 x i16> %wide.vec155, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cf = zext <8 x i16> %strided.vec156 to <8 x i32>
  %i.cg = shufflevector <8 x i16> %vector.recur, <8 x i16> %strided.vec148, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ch = zext <8 x i16> %i.cg to <8 x i32>
  %i.ci = shl nuw nsw <8 x i32> %i.ch, splat (i32 2)
  %i.cj = zext <8 x i16> %strided.vec148 to <8 x i32>
  %i.ck = zext <8 x i16> %strided.vec150 to <8 x i32>
  %i.cl = add nuw nsw <8 x i32> %i.ci, %i.cb
  %i.cm = add nuw nsw <8 x i32> %i.cl, %i.by
  %i.cn = add nuw nsw <8 x i32> %i.cm, %i.cf
  %i.co = add nuw nsw <8 x i32> %i.cn, %i.cj
  %i.cp = add nuw nsw <8 x i32> %i.co, %i.ck      ; 2 uses
  %i.cq = sub nsw <8 x i32> splat (i32 16), %i.cp
  %i.cr = zext <8 x i16> %strided.vec151 to <8 x i32>
  %i.cs = zext <8 x i16> %strided.vec146 to <8 x i32>
  %i.ct = add nuw nsw <8 x i32> %i.cs, %i.cr
  %i.cu = mul nsw <8 x i32> %i.cq, %i.ct
  %i.cv = sitofp reassoc nsz arcp contract afn <8 x i32> %i.cu to <8 x double>
  %i.cw = zext <8 x i16> %strided.vec143 to <8 x i32>
  %i.cx = zext <8 x i16> %strided.vec to <8 x i32>
  %i.cy = add nuw nsw <8 x i32> %i.cx, %i.cw
  %i.cz = mul nuw nsw <8 x i32> %i.cy, %i.cp
  %i.da = uitofp nneg <8 x i32> %i.cz to <8 x double>
  %i.db = fadd reassoc nnan nsz arcp contract afn <8 x double> %i.da, %i.cv
  %i.dc = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.db, splat (double 3.125000e-02)
  %i.dd = fptoui <8 x double> %i.dc to <8 x i16>
  %i.de = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.df = shufflevector <8 x i16> %i.dd, <8 x i16> poison, <57 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7>
  tail call void @llvm.masked.store.v57i16.p0(<57 x i16> %i.df, ptr align 2 %i.de, <57 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true>), !tbaa !76, !alias.scope !304, !noalias !306
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !317

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <64 x i16> %wide.vec145, i64 62
  br label %.lr.ph.preheader158

.lr.ph.preheader158:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i16 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.preheader ], [ %i.bd, %middle.block ]
  %.03334.ph = phi i32 [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader158, %.lr.ph
  %i.dh = phi i16 [ %i.en, %.lr.ph ], [ %.ph, %.lr.ph.preheader158 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader158 ] ; 6 uses
  %.03334 = phi i32 [ %i.fu, %.lr.ph ], [ %.03334.ph, %.lr.ph.preheader158 ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv ; 6 uses
  %i.dj = zext i16 %i.dh to i32
  %i.dk = shl nuw nsw i32 %i.dj, 2
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %gep, i64 6
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !76
  %i.dn = zext i16 %i.dm to i32
  %i.do = sub nsw i64 %indvars.iv, %i.n
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 6
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !76
  %i.ds = zext i16 %i.dr to i32
  %i.dt = add nuw nsw i32 %i.ds, %i.dn
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 14
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !76
  %i.dw = zext i16 %i.dv to i32
  %i.dx = add nuw nsw i32 %i.dt, %i.dw
  %i.dy = getelementptr i8, ptr %i.di, i64 -2
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !76
  %i.ea = zext i16 %i.dz to i32
  %i.eb = add nuw nsw i32 %i.dx, %i.ea
  %i.ec = shl nuw nsw i32 %i.eb, 1
  %gep47 = getelementptr [8 x i8], ptr %invariant.gep46, i64 %indvars.iv
  %i.ed = getelementptr inbounds nuw i8, ptr %gep47, i64 6
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !76
  %i.ef = zext i16 %i.ee to i32
  %i.eg = sub nsw i64 %indvars.iv, %i.m
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 6
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !76
  %i.ek = zext i16 %i.ej to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 6
  %i.en = load i16, ptr %i.em, align 2, !tbaa !76 ; 2 uses
  %i.eo = zext i16 %i.en to i32
  %i.ep = getelementptr i8, ptr %i.di, i64 -10
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !76
  %i.er = zext i16 %i.eq to i32
  %i.es = add nuw nsw i32 %i.dk, %i.ef
  %i.et = add nuw nsw i32 %i.es, %i.ec
  %i.eu = add nuw nsw i32 %i.et, %i.ek
  %i.ev = add nuw nsw i32 %i.eu, %i.eo
  %i.ew = add nuw nsw i32 %i.ev, %i.er            ; 2 uses
  %i.ex = sub nsw i32 16, %i.ew
  %i.ey = getelementptr i8, ptr %i.di, i64 -6
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !76
  %i.fa = zext i16 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.di, i64 10
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !76
  %i.fd = zext i16 %i.fc to i32
  %i.fe = add nuw nsw i32 %i.fd, %i.fa
  %i.ff = mul nsw i32 %i.ex, %i.fe
  %i.fg = sitofp reassoc nsz arcp contract afn i32 %i.ff to double
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !76
  %i.fj = zext i16 %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !76
  %i.fm = zext i16 %i.fl to i32
  %i.fn = add nuw nsw i32 %i.fm, %i.fj
  %i.fo = mul nuw nsw i32 %i.fn, %i.ew
  %i.fp = uitofp nneg i32 %i.fo to double
  %i.fq = fadd reassoc nnan nsz arcp contract afn double %i.fp, %i.fg
  %i.fr = fmul reassoc nnan nsz arcp contract afn double %i.fq, 3.125000e-02
  %i.fs = fptoui double %i.fr to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !76
  %i.fu = add nuw nsw i32 %.03334, 2              ; 2 uses
  %i.fv = icmp slt i32 %i.fu, %i.k
  br i1 %i.fv, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !318

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre42 = load i16, ptr %i.b, align 4, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.fw = phi i16 [ %.pre42, %._crit_edge.loopexit ], [ %i.ad, %bb.b ] ; 2 uses
  %i.fx = add nuw nsw i32 %.03236, 1              ; 2 uses
  %i.fy = zext i16 %i.fw to i32
  %i.fz = add nsw i32 %i.fy, -2
  %i.ga = icmp slt i32 %i.fx, %i.fz
  br i1 %i.ga, label %bb.b, label %._crit_edge39, !llvm.loop !319

._crit_edge39:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw15dcb_correction2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !74   ; 2 uses
  %i.d = icmp ugt i16 %i.c, 8
  br i1 %i.d, label %.lr.ph128, label %._crit_edge129

.lr.ph128:                                        ; preds = %bb.a
  %i.e = load i16, ptr %i.a, align 2, !tbaa !11   ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 4 uses
  %i.g = shl nuw nsw i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.j = load i32, ptr %i.i, align 8, !tbaa !75   ; 2 uses
  %i.k = add nsw i32 %i.f, -4                     ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8              ; 45 uses
  %i.m = zext nneg i32 %i.g to i64                ; 3 uses
  %i.n = zext i16 %i.e to i64                     ; 6 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %i.n ; 2 uses
  %invariant.gep138 = getelementptr [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 2
  %scevgep141 = getelementptr i8, ptr %i.l, i64 4
  %i.o = add nsw i32 %i.f, -9
  %i.p = shl nuw nsw i64 %i.n, 3                  ; 8 uses
  %i.q = getelementptr i8, ptr %i.l, i64 %i.p
  %scevgep143 = getelementptr i8, ptr %i.q, i64 6
  %i.r = getelementptr i8, ptr %i.l, i64 %i.p
  %scevgep145 = getelementptr i8, ptr %i.r, i64 8
  %i.s = sub nsw i64 6, %i.p
  %scevgep147 = getelementptr i8, ptr %i.l, i64 %i.s
  %i.t = sub nsw i64 8, %i.p
  %scevgep149 = getelementptr i8, ptr %i.l, i64 %i.t
  %scevgep151 = getelementptr i8, ptr %i.l, i64 14
  %scevgep153 = getelementptr i8, ptr %i.l, i64 16
  %scevgep155 = getelementptr i8, ptr %i.l, i64 -2
  %i.u = shl nuw nsw i64 %i.n, 4                  ; 7 uses
  %i.v = getelementptr i8, ptr %i.l, i64 %i.u
  %scevgep158 = getelementptr i8, ptr %i.v, i64 6
  %i.w = getelementptr i8, ptr %i.l, i64 %i.u
  %scevgep160 = getelementptr i8, ptr %i.w, i64 8
  %i.x = sub nsw i64 6, %i.u
  %scevgep162 = getelementptr i8, ptr %i.l, i64 %i.x
  %i.y = sub nsw i64 8, %i.u
  %scevgep164 = getelementptr i8, ptr %i.l, i64 %i.y
  %scevgep166 = getelementptr i8, ptr %i.l, i64 22
  %scevgep168 = getelementptr i8, ptr %i.l, i64 24
  %scevgep170 = getelementptr i8, ptr %i.l, i64 -10
  %scevgep172 = getelementptr i8, ptr %i.l, i64 -8
  %scevgep174 = getelementptr i8, ptr %i.l, i64 -6
  %scevgep176 = getelementptr i8, ptr %i.l, i64 -4
  %scevgep178 = getelementptr i8, ptr %i.l, i64 10
  %scevgep180 = getelementptr i8, ptr %i.l, i64 12
  %scevgep182 = getelementptr i8, ptr %i.l, i64 16
  %scevgep184 = getelementptr i8, ptr %i.l, i64 18
  %scevgep186 = getelementptr i8, ptr %i.l, i64 -16
  %scevgep188 = getelementptr i8, ptr %i.l, i64 -14
  %i.z = sub nsw i64 2, %i.p
  %scevgep190 = getelementptr i8, ptr %i.l, i64 %i.z
  %i.aa = sub nsw i64 4, %i.p
  %scevgep192 = getelementptr i8, ptr %i.l, i64 %i.aa
  %i.ab = getelementptr i8, ptr %i.l, i64 %i.p
  %scevgep194 = getelementptr i8, ptr %i.ab, i64 2
  %i.ac = getelementptr i8, ptr %i.l, i64 %i.p
  %scevgep196 = getelementptr i8, ptr %i.ac, i64 4
  %scevgep198 = getelementptr i8, ptr %i.l, i64 %i.u
  %i.ad = getelementptr i8, ptr %i.l, i64 %i.u
  %scevgep200 = getelementptr i8, ptr %i.ad, i64 2
  %i.ae = mul nsw i64 %i.n, -16
  %scevgep202 = getelementptr i8, ptr %i.l, i64 %i.ae
  %i.af = sub nsw i64 2, %i.u
  %scevgep204 = getelementptr i8, ptr %i.l, i64 %i.af
  %1 = add nsw i32 %i.f, -9
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph128, %._crit_edge
  %i.ag = phi i16 [ %i.c, %.lr.ph128 ], [ %i.ih, %._crit_edge ]
  %.0114126 = phi i32 [ 4, %.lr.ph128 ], [ %i.ii, %._crit_edge ] ; 3 uses
  %i.ah = shl nuw nsw i32 %.0114126, 1
  %i.ai = and i32 %i.ah, 14                       ; 2 uses
  %i.aj = shl nuw nsw i32 %i.ai, 1
  %i.ak = lshr i32 %i.j, %i.aj
  %i.al = and i32 %i.ak, 1                        ; 5 uses
  %i.am = or disjoint i32 %i.al, 4                ; 4 uses
  %i.an = icmp slt i32 %i.am, %i.k
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ao = or disjoint i32 %i.al, %i.ai
  %i.ap = shl nuw nsw i32 %i.ao, 1
  %i.aq = lshr i32 %i.j, %i.ap
  %i.ar = and i32 %i.aq, 3
  %i.as = load i16, ptr %i.a, align 2, !tbaa !11
  %i.at = zext i16 %i.as to i32
  %i.au = zext nneg i32 %i.ar to i64              ; 10 uses
  %i.av = mul i32 %.0114126, %i.at
  %i.aw = add i32 %i.av, 4
  %i.ax = add i32 %i.aw, %i.al
  %i.ay = sext i32 %i.ax to i64                   ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ay ; 2 uses
  %.phi.trans.insert131 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 6
  %.pre = load i16, ptr %.phi.trans.insert131, align 2, !tbaa !76 ; 3 uses
  %.phi.trans.insert132 = getelementptr inbounds nuw [2 x i8], ptr %.phi.trans.insert, i64 %i.au
  %.pre133 = load i16, ptr %.phi.trans.insert132, align 2, !tbaa !76 ; 3 uses
  %i.az = sub nsw i32 %1, %i.al                   ; 2 uses
  %i.ba = lshr i32 %i.az, 1
  %narrow = add nuw i32 %i.ba, 1
  %i.bb = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.az, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bc = shl nuw nsw i64 %i.ay, 3                ; 16 uses
  %scevgep140 = getelementptr i8, ptr %scevgep, i64 %i.bc ; 16 uses
  %i.bd = sub nsw i32 %i.o, %i.al
  %i.be = lshr i32 %i.bd, 1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 4                ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, %i.bc            ; 13 uses
  %scevgep142 = getelementptr i8, ptr %scevgep141, i64 %i.bh ; 16 uses
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.bc
  %scevgep146 = getelementptr i8, ptr %scevgep145, i64 %i.bh
  %scevgep148 = getelementptr i8, ptr %scevgep147, i64 %i.bc
  %scevgep150 = getelementptr i8, ptr %scevgep149, i64 %i.bh
  %scevgep152 = getelementptr i8, ptr %scevgep151, i64 %i.bc
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.bh
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %i.bc
  %scevgep157 = getelementptr i8, ptr %i.l, i64 %i.bh
  %scevgep159 = getelementptr i8, ptr %scevgep158, i64 %i.bc
  %scevgep161 = getelementptr i8, ptr %scevgep160, i64 %i.bh
  %scevgep163 = getelementptr i8, ptr %scevgep162, i64 %i.bc
  %scevgep165 = getelementptr i8, ptr %scevgep164, i64 %i.bh
  %scevgep167 = getelementptr i8, ptr %scevgep166, i64 %i.bc
  %scevgep169 = getelementptr i8, ptr %scevgep168, i64 %i.bh
  %scevgep171 = getelementptr i8, ptr %scevgep170, i64 %i.bc
  %scevgep173 = getelementptr i8, ptr %scevgep172, i64 %i.bh
  %scevgep175 = getelementptr i8, ptr %scevgep174, i64 %i.bc
  %scevgep177 = getelementptr i8, ptr %scevgep176, i64 %i.bh
  %scevgep179 = getelementptr i8, ptr %scevgep178, i64 %i.bc
  %scevgep181 = getelementptr i8, ptr %scevgep180, i64 %i.bh
  %i.bi = shl nuw nsw i64 %i.au, 1                ; 2 uses
  %i.bj = or disjoint i64 %i.bc, %i.bi            ; 4 uses
  %scevgep183 = getelementptr i8, ptr %scevgep182, i64 %i.bj
  %i.bk = add nuw nsw i64 %i.bg, %i.bc
  %i.bl = or disjoint i64 %i.bk, %i.bi            ; 4 uses
  %scevgep185 = getelementptr i8, ptr %scevgep184, i64 %i.bl
  %scevgep187 = getelementptr i8, ptr %scevgep186, i64 %i.bj
  %scevgep189 = getelementptr i8, ptr %scevgep188, i64 %i.bl
  %scevgep191 = getelementptr i8, ptr %scevgep190, i64 %i.bc
  %scevgep193 = getelementptr i8, ptr %scevgep192, i64 %i.bh
  %scevgep195 = getelementptr i8, ptr %scevgep194, i64 %i.bc
  %scevgep197 = getelementptr i8, ptr %scevgep196, i64 %i.bh
  %scevgep199 = getelementptr i8, ptr %scevgep198, i64 %i.bj
  %scevgep201 = getelementptr i8, ptr %scevgep200, i64 %i.bl
  %scevgep203 = getelementptr i8, ptr %scevgep202, i64 %i.bj
  %scevgep205 = getelementptr i8, ptr %scevgep204, i64 %i.bl
  %bound0 = icmp ult ptr %scevgep140, %scevgep146
  %bound1 = icmp ult ptr %scevgep144, %scevgep142
  %found.conflict = and i1 %bound0, %bound1
  %bound0206 = icmp ult ptr %scevgep140, %scevgep150
  %bound1207 = icmp ult ptr %scevgep148, %scevgep142
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx = or i1 %found.conflict, %found.conflict208
  %bound0209 = icmp ult ptr %scevgep140, %scevgep154
  %bound1210 = icmp ult ptr %scevgep152, %scevgep142
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %conflict.rdx, %found.conflict211
  %bound0213 = icmp ult ptr %scevgep140, %scevgep157
  %bound1214 = icmp ult ptr %scevgep156, %scevgep142
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx216 = or i1 %conflict.rdx212, %found.conflict215
  %bound0217 = icmp ult ptr %scevgep140, %scevgep161
  %bound1218 = icmp ult ptr %scevgep159, %scevgep142
  %found.conflict219 = and i1 %bound0217, %bound1218
  %conflict.rdx220 = or i1 %conflict.rdx216, %found.conflict219
  %bound0221 = icmp ult ptr %scevgep140, %scevgep165
  %bound1222 = icmp ult ptr %scevgep163, %scevgep142
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx224 = or i1 %conflict.rdx220, %found.conflict223
  %bound0225 = icmp ult ptr %scevgep140, %scevgep169
  %bound1226 = icmp ult ptr %scevgep167, %scevgep142
  %found.conflict227 = and i1 %bound0225, %bound1226
  %conflict.rdx228 = or i1 %conflict.rdx224, %found.conflict227
  %bound0229 = icmp ult ptr %scevgep140, %scevgep173
  %bound1230 = icmp ult ptr %scevgep171, %scevgep142
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx232 = or i1 %conflict.rdx228, %found.conflict231
  %bound0233 = icmp ult ptr %scevgep140, %scevgep177
  %bound1234 = icmp ult ptr %scevgep175, %scevgep142
  %found.conflict235 = and i1 %bound0233, %bound1234
  %conflict.rdx236 = or i1 %conflict.rdx232, %found.conflict235
  %bound0237 = icmp ult ptr %scevgep140, %scevgep181
  %bound1238 = icmp ult ptr %scevgep179, %scevgep142
  %found.conflict239 = and i1 %bound0237, %bound1238
  %conflict.rdx240 = or i1 %conflict.rdx236, %found.conflict239
  %bound0241 = icmp ult ptr %scevgep140, %scevgep185
  %bound1242 = icmp ult ptr %scevgep183, %scevgep142
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx244 = or i1 %conflict.rdx240, %found.conflict243
  %bound0245 = icmp ult ptr %scevgep140, %scevgep189
  %bound1246 = icmp ult ptr %scevgep187, %scevgep142
  %found.conflict247 = and i1 %bound0245, %bound1246
  %conflict.rdx248 = or i1 %conflict.rdx244, %found.conflict247
  %bound0249 = icmp ult ptr %scevgep140, %scevgep193
  %bound1250 = icmp ult ptr %scevgep191, %scevgep142
  %found.conflict251 = and i1 %bound0249, %bound1250
  %conflict.rdx252 = or i1 %conflict.rdx248, %found.conflict251
  %bound0253 = icmp ult ptr %scevgep140, %scevgep197
  %bound1254 = icmp ult ptr %scevgep195, %scevgep142
  %found.conflict255 = and i1 %bound0253, %bound1254
  %conflict.rdx256 = or i1 %conflict.rdx252, %found.conflict255
  %bound0257 = icmp ult ptr %scevgep140, %scevgep201
  %bound1258 = icmp ult ptr %scevgep199, %scevgep142
  %found.conflict259 = and i1 %bound0257, %bound1258
  %conflict.rdx260 = or i1 %conflict.rdx256, %found.conflict259
  %bound0261 = icmp ult ptr %scevgep140, %scevgep205
  %bound1262 = icmp ult ptr %scevgep203, %scevgep142
  %found.conflict263 = and i1 %bound0261, %bound1262
  %conflict.rdx264 = or i1 %conflict.rdx260, %found.conflict263
  br i1 %conflict.rdx264, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bm = and i64 %i.bb, 7                        ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  %i.bo = select i1 %i.bn, i64 8, i64 %i.bm
  %n.vec = sub nsw i64 %i.bb, %i.bo               ; 3 uses
  %i.bp = shl nsw i64 %n.vec, 1
  %i.bq = add nsw i64 %i.bp, %i.ay
  %i.br = trunc i64 %n.vec to i32
  %i.bs = shl i32 %i.br, 1
  %i.bt = add i32 %i.am, %i.bs
  %vector.recur.init = insertelement <8 x i16> poison, i16 %.pre133, i64 7
  %vector.recur.init265 = insertelement <8 x i16> poison, i16 %.pre, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <8 x i16> [ %vector.recur.init, %vector.ph ], [ %strided.vec284, %vector.body ]
  %vector.recur266 = phi <8 x i16> [ %vector.recur.init265, %vector.ph ], [ %strided.vec274, %vector.body ]
  %i.bu = shl nuw i64 %index, 1
  %i.bv = add nuw i64 %i.bu, %i.ay                ; 6 uses
  %i.bw = getelementptr [8 x i8], ptr %i.l, i64 %i.bv ; 4 uses
  %i.bx = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %wide.vec = load <64 x i16>, ptr %i.by, align 2, !tbaa !76 ; 2 uses
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec267 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.bz = zext <8 x i16> %strided.vec267 to <8 x i32>
  %i.ca = sub nsw i64 %i.bv, %i.n
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %wide.vec268 = load <64 x i16>, ptr %i.cc, align 2, !tbaa !76 ; 2 uses
  %strided.vec269 = shufflevector <64 x i16> %wide.vec268, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec270 = shufflevector <64 x i16> %wide.vec268, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.cd = zext <8 x i16> %strided.vec270 to <8 x i32>
  %i.ce = add nuw nsw <8 x i32> %i.cd, %i.bz
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 10
  %wide.vec271 = load <64 x i16>, ptr %i.cf, align 2, !tbaa !76 ; 4 uses
  %strided.vec272 = shufflevector <64 x i16> %wide.vec271, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec273 = shufflevector <64 x i16> %wide.vec271, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %strided.vec274 = shufflevector <64 x i16> %wide.vec271, <64 x i16> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62> ; 3 uses
  %i.cg = zext <8 x i16> %strided.vec273 to <8 x i32>
  %i.ch = add nuw nsw <8 x i32> %i.ce, %i.cg
  %i.ci = getelementptr i8, ptr %i.bw, i64 -10
  %wide.vec275 = load <64 x i16>, ptr %i.ci, align 2, !tbaa !76 ; 3 uses
  %strided.vec276 = shufflevector <64 x i16> %wide.vec275, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec277 = shufflevector <64 x i16> %wide.vec275, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %strided.vec278 = shufflevector <64 x i16> %wide.vec275, <64 x i16> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %i.cj = zext <8 x i16> %strided.vec278 to <8 x i32>
  %i.ck = add nuw nsw <8 x i32> %i.ch, %i.cj
  %i.cl = shl nuw nsw <8 x i32> %i.ck, splat (i32 1)
  %i.cm = getelementptr [8 x i8], ptr %invariant.gep138, i64 %i.bv ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 6
  %wide.vec279 = load <64 x i16>, ptr %i.cn, align 2, !tbaa !76, !alias.scope !320
  %strided.vec280 = shufflevector <64 x i16> %wide.vec279, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.co = zext <8 x i16> %strided.vec280 to <8 x i32>
  %i.cp = sub nsw i64 %i.bv, %i.m
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 6
  %wide.vec281 = load <64 x i16>, ptr %i.cr, align 2, !tbaa !76, !alias.scope !323
  %strided.vec282 = shufflevector <64 x i16> %wide.vec281, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cs = zext <8 x i16> %strided.vec282 to <8 x i32>
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = shufflevector <8 x i16> %vector.recur266, <8 x i16> %strided.vec274, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.cw = zext <8 x i16> %i.cv to <8 x i32>
  %i.cx = shl nuw nsw <8 x i32> %i.cw, splat (i32 2)
  %i.cy = zext <8 x i16> %strided.vec274 to <8 x i32>
  %i.cz = getelementptr i8, ptr %i.bw, i64 -16
  %i.da = zext <8 x i16> %strided.vec276 to <8 x i32>
  %i.db = add nuw nsw <8 x i32> %i.cx, %i.co
  %i.dc = add nuw nsw <8 x i32> %i.db, %i.cl
  %i.dd = add nuw nsw <8 x i32> %i.dc, %i.cs
  %i.de = add nuw nsw <8 x i32> %i.dd, %i.cy
  %i.df = add nuw nsw <8 x i32> %i.de, %i.da      ; 2 uses
  %i.dg = sub nsw <8 x i32> splat (i32 16), %i.df
  %i.dh = sitofp reassoc nsz arcp contract afn <8 x i32> %i.dg to <8 x double>
  %i.di = zext <8 x i16> %strided.vec277 to <8 x i32>
  %i.dj = zext <8 x i16> %strided.vec272 to <8 x i32>
  %i.dk = add nuw nsw <8 x i32> %i.dj, %i.di
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.au
  %wide.vec283 = load <64 x i16>, ptr %i.dl, align 2, !tbaa !76, !alias.scope !325 ; 2 uses
  %strided.vec284 = shufflevector <64 x i16> %wide.vec283, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56> ; 3 uses
  %i.dm = shufflevector <8 x i16> %vector.recur, <8 x i16> %strided.vec284, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.dn = uitofp <8 x i16> %i.dm to <8 x double>  ; 2 uses
  %i.do = zext <8 x i16> %strided.vec284 to <8 x i32>
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.au
  %wide.vec285 = load <64 x i16>, ptr %i.dp, align 2, !tbaa !76, !alias.scope !327
  %strided.vec286 = shufflevector <64 x i16> %wide.vec285, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
end_hunk_3
begin_hunk_4_@_ZN6LibRaw4fbddEi:bb.a
  %i.i = load i16, ptr %i.h, align 4, !tbaa !74
  %i.j = zext i16 %i.i to i64
  %i.k = mul nuw nsw i64 %i.j, %i.g
  %i.l = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.k, i64 noundef 24) ; 6 uses
  tail call void @_ZN6LibRaw18border_interpolateEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 4)
  %i.m = icmp sgt i32 %1, 1
  tail call void @_ZN6LibRaw10fbdd_greenEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  tail call void @_ZN6LibRaw14dcb_color_fullEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  tail call void @_ZN6LibRaw15fbdd_correctionEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br i1 %i.m, label %bb.c, label %_ZN6LibRaw10lch_to_rgbEPA3_d.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6LibRaw9dcb_colorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.n = load i16, ptr %i.h, align 4, !tbaa !74
  %i.o = zext i16 %i.n to i32
  %i.p = load i16, ptr %i.e, align 2, !tbaa !11
  %i.q = zext i16 %i.p to i32
  %i.r = mul nuw nsw i32 %i.q, %i.o               ; 3 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_ZN6LibRaw10rgb_to_lchEPA3_d.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !203  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.r to i64  ; 3 uses
  %min.iters.check = icmp samesign ult i32 %i.r, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.u = and i64 %wide.trip.count.i, 3            ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  %i.w = select i1 %i.v, i64 4, i64 %i.u
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.w   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index
  %wide.vec = load <16 x i16>, ptr %i.x, align 2, !tbaa !76 ; 3 uses
  %strided.vec = shufflevector <16 x i16> %wide.vec, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec14 = shufflevector <16 x i16> %wide.vec, <16 x i16> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec15 = shufflevector <16 x i16> %wide.vec, <16 x i16> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %i.y = zext <4 x i16> %strided.vec to <4 x i32> ; 2 uses
  %i.z = zext <4 x i16> %strided.vec14 to <4 x i32> ; 2 uses
  %i.aa = add nuw nsw <4 x i32> %i.z, %i.y
  %i.ab = zext <4 x i16> %strided.vec15 to <4 x i32>
  %i.ac = add nuw nsw <4 x i32> %i.aa, %i.ab
  %i.ad = uitofp nneg <4 x i32> %i.ac to <4 x double>
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %index
  %i.af = sub nsw <4 x i32> %i.y, %i.z
  %i.ag = sitofp reassoc nsz arcp contract afn <4 x i32> %i.af to <4 x double>
  %i.ah = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.ag, splat (double f0x3FFBB67AE875ED0F)
  %i.ai = uitofp <4 x i16> %strided.vec15 to <4 x double>
  %i.aj = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.ai, splat (double 2.000000e+00)
  %i.ak = uitofp <4 x i16> %strided.vec to <4 x double>
  %i.al = uitofp <4 x i16> %strided.vec14 to <4 x double>
  %i.am = fadd reassoc nsz arcp contract afn <4 x double> %i.ak, %i.al
  %i.an = fsub reassoc nsz arcp contract afn <4 x double> %i.aj, %i.am
  %i.ao = shufflevector <4 x double> %i.ad, <4 x double> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ap = shufflevector <4 x double> %i.an, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x double> %i.ao, <8 x double> %i.ap, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x double> %interleaved.vec, ptr %i.ae, align 8, !tbaa !351
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %scalar.ph.preheader, label %vector.body, !llvm.loop !362

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i ; 3 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !76 ; 2 uses
  %i.at = zext i16 %i.as to i32                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.av = load i16, ptr %i.au, align 2, !tbaa !76 ; 2 uses
  %i.aw = zext i16 %i.av to i32                   ; 2 uses
  %i.ax = add nuw nsw i32 %i.aw, %i.at
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !76 ; 2 uses
  %i.ba = zext i16 %i.az to i32
  %i.bb = add nuw nsw i32 %i.ax, %i.ba
  %i.bc = uitofp nneg i32 %i.bb to double
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv.i ; 3 uses
  store double %i.bc, ptr %i.bd, align 8, !tbaa !351
  %i.be = sub nsw i32 %i.at, %i.aw
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.be to double
  %i.bg = fmul reassoc nnan nsz arcp contract afn double %i.bf, f0x3FFBB67AE875ED0F
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store double %i.bg, ptr %i.bh, align 8, !tbaa !351
  %i.bi = uitofp i16 %i.az to double
  %i.bj = fmul reassoc nnan nsz arcp contract afn double %i.bi, 2.000000e+00
  %i.bk = uitofp i16 %i.as to double
  %i.bl = uitofp i16 %i.av to double
  %i.bm = fadd reassoc nsz arcp contract afn double %i.bk, %i.bl
  %i.bn = fsub reassoc nsz arcp contract afn double %i.bj, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store double %i.bn, ptr %i.bo, align 8, !tbaa !351
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6LibRaw10rgb_to_lchEPA3_d.exit, label %scalar.ph, !llvm.loop !363

_ZN6LibRaw10rgb_to_lchEPA3_d.exit:                ; preds = %scalar.ph, %bb.c
  tail call void @_ZN6LibRaw16fbdd_correction2EPA3_d(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.l)
  tail call void @_ZN6LibRaw16fbdd_correction2EPA3_d(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.l)
  %i.bp = load i16, ptr %i.h, align 4, !tbaa !74
  %i.bq = zext i16 %i.bp to i32
  %i.br = load i16, ptr %i.e, align 2, !tbaa !11
  %i.bs = zext i16 %i.br to i32
  %i.bt = mul nuw nsw i32 %i.bs, %i.bq
  %.not.i8 = icmp eq i32 %i.bt, 0
  br i1 %.not.i8, label %_ZN6LibRaw10lch_to_rgbEPA3_d.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %_ZN6LibRaw10rgb_to_lchEPA3_d.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !203
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i9
  %indvars.iv.i10 = phi i64 [ 0, %.lr.ph.i9 ], [ %indvars.iv.next.i11, %bb.d ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv.i10 ; 3 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !351 ; 2 uses
  %i.by = fmul reassoc nsz arcp contract afn double %i.bx, f0x3FD5555555555555
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !351 ; 2 uses
  %.neg.i = fmul reassoc nsz arcp contract afn double %i.ca, f0x3FC5555555555555
  %i.cb = fsub reassoc nsz arcp contract afn double %i.by, %.neg.i ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !351
  %i.ce = fmul reassoc nsz arcp contract afn double %i.cd, f0x3FD279A745935AE9 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i10 ; 2 uses
  %i.cg = fsub reassoc nsz arcp contract afn double %i.cb, %i.ce
  %i.ch = fadd reassoc nsz arcp contract afn double %i.cb, %i.ce
  %i.ci = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.cg, i64 1
  %i.ck = fptosi <2 x double> %i.cj to <2 x i32>
  %i.cl = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ck, <2 x i32> zeroinitializer)
  %i.cm = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.cl, <2 x i32> splat (i32 65535))
  %i.cn = trunc nuw <2 x i32> %i.cm to <2 x i16>
  store <2 x i16> %i.cn, ptr %i.cf, align 2, !tbaa !76
  %i.co = fadd reassoc nsz arcp contract afn double %i.ca, %i.bx
  %i.cp = fmul reassoc nsz arcp contract afn double %i.co, f0x3FD5555555555555
  %i.cq = fptosi double %i.cp to i32
  %i.cr = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 0)
  %i.cs = tail call i32 @llvm.umin.i32(i32 %i.cr, i32 65535)
  %i.ct = trunc nuw i32 %i.cs to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !76
  %indvars.iv.next.i11 = add nuw nsw i64 %indvars.iv.i10, 1 ; 2 uses
  %i.cv = load i16, ptr %i.h, align 4, !tbaa !74
  %i.cw = zext i16 %i.cv to i64
  %i.cx = load i16, ptr %i.e, align 2, !tbaa !11
  %i.cy = zext i16 %i.cx to i64
  %i.cz = mul nuw nsw i64 %i.cy, %i.cw
  %i.da = icmp samesign ult i64 %indvars.iv.next.i11, %i.cz
  br i1 %i.da, label %bb.d, label %_ZN6LibRaw10lch_to_rgbEPA3_d.exit, !llvm.loop !354

_ZN6LibRaw10lch_to_rgbEPA3_d.exit:                ; preds = %bb.d, %bb.b, %_ZN6LibRaw10rgb_to_lchEPA3_d.exit
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6LibRaw10lch_to_rgbEPA3_d.exit
  ret void
}

declare void @_ZN6LibRaw18border_interpolateEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw3dcbEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 18 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !11
  %i.c = zext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 18 uses
  %i.e = load i16, ptr %i.d, align 4, !tbaa !74
  %i.f = zext i16 %i.e to i64
  %i.g = mul nuw nsw i64 %i.f, %i.c
  %i.h = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.g, i64 noundef 12) ; 8 uses
  %i.i = load i16, ptr %i.a, align 2, !tbaa !11
  %i.j = zext i16 %i.i to i64
  %i.k = load i16, ptr %i.d, align 4, !tbaa !74
  %i.l = zext i16 %i.k to i64
  %i.m = mul nuw nsw i64 %i.l, %i.j
  %i.n = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.m, i64 noundef 12) ; 5 uses
  tail call void @_ZN6LibRaw18border_interpolateEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 6)
  %i.o = load i16, ptr %i.a, align 2, !tbaa !11
  %i.p = zext i16 %i.o to i32                     ; 4 uses
  %i.q = load i16, ptr %i.d, align 4, !tbaa !74   ; 2 uses
  %i.r = icmp ugt i16 %i.q, 4
  br i1 %i.r, label %.lr.ph29.i, label %_ZN6LibRaw7dcb_horEPA3_f.exit

.lr.ph29.i:                                       ; preds = %bb.a
  %i.s = zext i16 %i.q to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.v = load i32, ptr %i.u, align 8, !tbaa !75
  %i.w = add nsw i32 %i.p, -2                     ; 2 uses
  %i.x = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.y = shl nuw nsw i32 %i.p, 1
  %3 = add nuw nsw i32 %i.y, 2
  %i.z = add nsw i32 %i.s, -3
  %i.aa = add nsw i32 %i.p, -5
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph29.i
  %indvars.iv.i = phi i32 [ %3, %.lr.ph29.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.01927.i = phi i32 [ 2, %.lr.ph29.i ], [ %i.by, %._crit_edge.i ] ; 3 uses
  %i.ab = shl nuw nsw i32 %.01927.i, 2
  %i.ac = and i32 %i.ab, 28
  %i.ad = lshr i32 %i.v, %i.ac
  %i.ae = and i32 %i.ad, 1                        ; 3 uses
  %i.af = or disjoint i32 %i.ae, 2                ; 3 uses
  %i.ag = icmp slt i32 %i.af, %i.w
  br i1 %i.ag, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.ah = add i32 %i.ae, %indvars.iv.i
  %i.ai = zext i32 %i.ah to i64                   ; 4 uses
  %i.aj = sub nsw i32 %i.aa, %i.ae                ; 2 uses
  %min.iters.check = icmp ult i32 %i.aj, 16
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.ak = lshr i32 %i.aj, 1
  %narrow = add nuw i32 %i.ak, 1
  %i.al = zext i32 %narrow to i64                 ; 2 uses
  %i.am = and i64 %i.al, 7                        ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = select i1 %i.an, i64 8, i64 %i.am
  %n.vec = sub nsw i64 %i.al, %i.ao               ; 3 uses
  %i.ap = shl nsw i64 %n.vec, 1
  %i.aq = add nsw i64 %i.ap, %i.ai
  %i.ar = trunc i64 %n.vec to i32
  %i.as = shl i32 %i.ar, 1
  %i.at = add i32 %i.af, %i.as
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep = getelementptr [8 x i8], ptr %i.x, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.idx = shl i64 %index, 4
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %gep, i64 10
  %wide.vec = load <64 x i16>, ptr %i.au, align 2, !tbaa !76
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.av = zext <8 x i16> %strided.vec to <8 x i32>
  %i.aw = getelementptr i8, ptr %gep, i64 -6
  %wide.vec203 = load <64 x i16>, ptr %i.aw, align 2, !tbaa !76
  %strided.vec204 = shufflevector <64 x i16> %wide.vec203, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.ax = zext <8 x i16> %strided.vec204 to <8 x i32>
  %i.ay = add nuw nsw <8 x i32> %i.ax, %i.av
  %i.az = uitofp nneg <8 x i32> %i.ay to <8 x double>
  %i.ba = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.az, splat (double 5.000000e-01)
  %i.bb = fptosi <8 x double> %i.ba to <8 x i32>
  %i.bc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bb, <8 x i32> zeroinitializer)
  %i.bd = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.bc, <8 x i32> splat (i32 65535))
  %i.be = uitofp nneg <8 x i32> %i.bd to <8 x float>
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %i.h, <8 x i64> %vec.ind
  %wide.gep205 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.be, <8 x ptr> align 4 %wide.gep205, <8 x i1> splat (i1 true)), !tbaa !77
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %.lr.ph.i.preheader, label %vector.body, !llvm.loop !364

.lr.ph.i.preheader:                               ; preds = %vector.body, %.lr.ph.preheader.i
  %indvars.iv31.i.ph = phi i64 [ %i.ai, %.lr.ph.preheader.i ], [ %i.aq, %vector.body ]
  %.02025.i.ph = phi i32 [ %i.af, %.lr.ph.preheader.i ], [ %i.at, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %.lr.ph.i ], [ %indvars.iv31.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.02025.i = phi i32 [ %i.bw, %.lr.ph.i ], [ %.02025.i.ph, %.lr.ph.i.preheader ]
  %i.bg = getelementptr [8 x i8], ptr %i.x, i64 %indvars.iv31.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !76
  %i.bj = zext i16 %i.bi to i32
  %i.bk = getelementptr i8, ptr %i.bg, i64 -6
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !76
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.bm, %i.bj
  %i.bo = uitofp nneg i32 %i.bn to double
  %i.bp = fmul reassoc nnan nsz arcp contract afn double %i.bo, 5.000000e-01
  %i.bq = fptosi double %i.bp to i32
  %i.br = tail call i32 @llvm.smax.i32(i32 %i.bq, i32 0)
  %i.bs = tail call i32 @llvm.umin.i32(i32 %i.br, i32 65535)
  %i.bt = uitofp nneg i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %indvars.iv31.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store float %i.bt, ptr %i.bv, align 4, !tbaa !77
  %i.bw = add nuw nsw i32 %.02025.i, 2            ; 2 uses
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 2
  %i.bx = icmp slt i32 %i.bw, %i.w
  br i1 %i.bx, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !365

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %i.by = add nuw nsw i32 %.01927.i, 1
  %indvars.iv.next.i = add nuw i32 %indvars.iv.i, %i.p
  %exitcond.not.i = icmp eq i32 %.01927.i, %i.z
  br i1 %exitcond.not.i, label %_ZN6LibRaw7dcb_horEPA3_f.exit, label %bb.b, !llvm.loop !86

_ZN6LibRaw7dcb_horEPA3_f.exit:                    ; preds = %._crit_edge.i, %bb.a
  tail call void @_ZN6LibRaw10dcb_color2EPA3_f(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.h)
  %i.bz = load i16, ptr %i.a, align 2, !tbaa !11  ; 2 uses
  %i.ca = zext i16 %i.bz to i32                   ; 4 uses
  %i.cb = load i16, ptr %i.d, align 4, !tbaa !74  ; 2 uses
  %i.cc = icmp ugt i16 %i.cb, 4
  br i1 %i.cc, label %.lr.ph37.i, label %_ZN6LibRaw7dcb_verEPA3_f.exit

.lr.ph37.i:                                       ; preds = %_ZN6LibRaw7dcb_horEPA3_f.exit
  %i.cd = zext i16 %i.cb to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !75
  %i.ch = add nsw i32 %i.ca, -2                   ; 2 uses
  %i.ci = load ptr, ptr %i.ce, align 8            ; 3 uses
  %i.cj = shl nuw nsw i32 %i.ca, 1
  %i.ck = add nuw nsw i32 %i.cj, 2
  %i.cl = zext i16 %i.bz to i64                   ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ci, i64 %i.cl ; 2 uses
  %4 = add nsw i32 %i.cd, -3
  %i.cm = add nsw i32 %i.ca, -5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i16, %.lr.ph37.i
  %indvars.iv.i15 = phi i32 [ %i.ck, %.lr.ph37.i ], [ %indvars.iv.next.i17, %._crit_edge.i16 ] ; 2 uses
  %.02735.i = phi i32 [ 2, %.lr.ph37.i ], [ %i.eq, %._crit_edge.i16 ] ; 3 uses
  %i.cn = shl nuw nsw i32 %.02735.i, 2
  %i.co = and i32 %i.cn, 28
  %i.cp = lshr i32 %i.cg, %i.co
  %i.cq = and i32 %i.cp, 1                        ; 3 uses
  %i.cr = or disjoint i32 %i.cq, 2                ; 3 uses
  %i.cs = icmp slt i32 %i.cr, %i.ch
  br i1 %i.cs, label %.lr.ph.preheader.i19, label %._crit_edge.i16

.lr.ph.preheader.i19:                             ; preds = %bb.c
  %i.ct = add i32 %i.cq, %indvars.iv.i15
  %i.cu = sext i32 %i.ct to i64                   ; 4 uses
  %i.cv = sub nsw i32 %i.cm, %i.cq                ; 2 uses
  %min.iters.check208 = icmp ult i32 %i.cv, 16
  br i1 %min.iters.check208, label %.lr.ph.i20.preheader, label %vector.ph209

vector.ph209:                                     ; preds = %.lr.ph.preheader.i19
  %i.cw = lshr i32 %i.cv, 1
  %narrow244 = add nuw i32 %i.cw, 1
  %i.cx = zext i32 %narrow244 to i64              ; 2 uses
  %i.cy = and i64 %i.cx, 7                        ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  %i.da = select i1 %i.cz, i64 8, i64 %i.cy
  %n.vec210 = sub nsw i64 %i.cx, %i.da            ; 3 uses
  %i.db = shl nsw i64 %n.vec210, 1
  %i.dc = add nsw i64 %i.db, %i.cu
  %i.dd = trunc i64 %n.vec210 to i32
  %i.de = shl i32 %i.dd, 1
  %i.df = add i32 %i.cr, %i.de
  %broadcast.splatinsert211 = insertelement <8 x i64> poison, i64 %i.cu, i64 0
  %broadcast.splat212 = shufflevector <8 x i64> %broadcast.splatinsert211, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction213 = add nuw nsw <8 x i64> %broadcast.splat212, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph209
  %index215 = phi i64 [ 0, %vector.ph209 ], [ %index.next223, %vector.body214 ] ; 2 uses
  %vec.ind216 = phi <8 x i64> [ %induction213, %vector.ph209 ], [ %vec.ind.next224, %vector.body214 ] ; 2 uses
  %i.dg = shl nuw i64 %index215, 1
  %i.dh = add nuw i64 %i.dg, %i.cu                ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  %wide.vec217 = load <64 x i16>, ptr %i.dj, align 2, !tbaa !76
  %strided.vec218 = shufflevector <64 x i16> %wide.vec217, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.dk = zext <8 x i16> %strided.vec218 to <8 x i32>
  %i.dl = sub nsw i64 %i.dh, %i.cl
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %wide.vec219 = load <64 x i16>, ptr %i.dn, align 2, !tbaa !76
  %strided.vec220 = shufflevector <64 x i16> %wide.vec219, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.do = zext <8 x i16> %strided.vec220 to <8 x i32>
  %i.dp = add nuw nsw <8 x i32> %i.do, %i.dk
  %i.dq = uitofp nneg <8 x i32> %i.dp to <8 x double>
  %i.dr = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.dq, splat (double 5.000000e-01)
  %i.ds = fptosi <8 x double> %i.dr to <8 x i32>
  %i.dt = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ds, <8 x i32> zeroinitializer)
  %i.du = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dt, <8 x i32> splat (i32 65535))
  %i.dv = uitofp nneg <8 x i32> %i.du to <8 x float>
  %wide.gep221 = getelementptr inbounds nuw [12 x i8], ptr %i.n, <8 x i64> %vec.ind216
  %wide.gep222 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep221, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.dv, <8 x ptr> align 4 %wide.gep222, <8 x i1> splat (i1 true)), !tbaa !77
  %index.next223 = add nuw i64 %index215, 8       ; 2 uses
  %vec.ind.next224 = add nuw nsw <8 x i64> %vec.ind216, splat (i64 16)
  %i.dw = icmp eq i64 %index.next223, %n.vec210
  br i1 %i.dw, label %.lr.ph.i20.preheader, label %vector.body214, !llvm.loop !366

.lr.ph.i20.preheader:                             ; preds = %vector.body214, %.lr.ph.preheader.i19
  %indvars.iv39.i.ph = phi i64 [ %i.cu, %.lr.ph.preheader.i19 ], [ %i.dc, %vector.body214 ]
  %.02833.i.ph = phi i32 [ %i.cr, %.lr.ph.preheader.i19 ], [ %i.df, %vector.body214 ]
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.preheader, %.lr.ph.i20
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %.lr.ph.i20 ], [ %indvars.iv39.i.ph, %.lr.ph.i20.preheader ] ; 4 uses
  %.02833.i = phi i32 [ %i.eo, %.lr.ph.i20 ], [ %.02833.i.ph, %.lr.ph.i20.preheader ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv39.i
  %i.dx = getelementptr inbounds nuw i8, ptr %gep.i, i64 2
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !76
  %i.dz = zext i16 %i.dy to i32
  %i.ea = sub nsw i64 %indvars.iv39.i, %i.cl
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !76
  %i.ee = zext i16 %i.ed to i32
  %i.ef = add nuw nsw i32 %i.ee, %i.dz
  %i.eg = uitofp nneg i32 %i.ef to double
  %i.eh = fmul reassoc nnan nsz arcp contract afn double %i.eg, 5.000000e-01
  %i.ei = fptosi double %i.eh to i32
  %i.ej = tail call i32 @llvm.smax.i32(i32 %i.ei, i32 0)
  %i.ek = tail call i32 @llvm.umin.i32(i32 %i.ej, i32 65535)
  %i.el = uitofp nneg i32 %i.ek to float
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %indvars.iv39.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store float %i.el, ptr %i.en, align 4, !tbaa !77
  %i.eo = add nuw nsw i32 %.02833.i, 2            ; 2 uses
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 2
  %i.ep = icmp slt i32 %i.eo, %i.ch
  br i1 %i.ep, label %.lr.ph.i20, label %._crit_edge.i16, !llvm.loop !367

._crit_edge.i16:                                  ; preds = %.lr.ph.i20, %bb.c
  %i.eq = add nuw nsw i32 %.02735.i, 1
  %indvars.iv.next.i17 = add nuw i32 %indvars.iv.i15, %i.ca
  %exitcond.not.i18 = icmp eq i32 %.02735.i, %4
  br i1 %exitcond.not.i18, label %_ZN6LibRaw7dcb_verEPA3_f.exit, label %bb.c, !llvm.loop !83

_ZN6LibRaw7dcb_verEPA3_f.exit:                    ; preds = %._crit_edge.i16, %_ZN6LibRaw7dcb_horEPA3_f.exit
  tail call void @_ZN6LibRaw10dcb_color3EPA3_f(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.n)
  tail call void @_ZN6LibRaw10dcb_decideEPA3_fS1_(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.h, ptr noundef %i.n)
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.n)
  %i.er = load i16, ptr %i.d, align 4, !tbaa !74
  %i.es = zext i16 %i.er to i32
  %i.et = load i16, ptr %i.a, align 2, !tbaa !11
  %i.eu = zext i16 %i.et to i32
  %i.ev = mul nuw nsw i32 %i.eu, %i.es            ; 3 uses
  %.not.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i, label %_ZN6LibRaw18dcb_copy_to_bufferEPA3_f.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %_ZN6LibRaw7dcb_verEPA3_f.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !203 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ev to i64 ; 3 uses
  %min.iters.check229 = icmp samesign ult i32 %i.ev, 9
  br i1 %min.iters.check229, label %scalar.ph228.preheader, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph.i21
  %i.ey = and i64 %wide.trip.count.i, 7           ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 0
  %i.fa = select i1 %i.ez, i64 8, i64 %i.ey
  %n.vec231 = sub nsw i64 %wide.trip.count.i, %i.fa ; 2 uses
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next240, %vector.body232 ] ; 2 uses
  %vec.ind234 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph230 ], [ %vec.ind.next241, %vector.body232 ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %index233
  %wide.vec235 = load <32 x i16>, ptr %i.fb, align 2, !tbaa !76 ; 2 uses
  %strided.vec236 = shufflevector <32 x i16> %wide.vec235, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec237 = shufflevector <32 x i16> %wide.vec235, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.fc = uitofp <8 x i16> %strided.vec236 to <8 x float>
  %wide.gep238 = getelementptr inbounds nuw [12 x i8], ptr %i.h, <8 x i64> %vec.ind234 ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fc, <8 x ptr> align 4 %wide.gep238, <8 x i1> splat (i1 true)), !tbaa !77
  %i.fd = uitofp <8 x i16> %strided.vec237 to <8 x float>
  %wide.gep239 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep238, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fd, <8 x ptr> align 4 %wide.gep239, <8 x i1> splat (i1 true)), !tbaa !77
  %index.next240 = add nuw i64 %index233, 8       ; 2 uses
  %vec.ind.next241 = add nuw nsw <8 x i64> %vec.ind234, splat (i64 8)
  %i.fe = icmp eq i64 %index.next240, %n.vec231
  br i1 %i.fe, label %scalar.ph228.preheader, label %vector.body232, !llvm.loop !368

scalar.ph228.preheader:                           ; preds = %vector.body232, %.lr.ph.i21
  %indvars.iv.i22.ph = phi i64 [ 0, %.lr.ph.i21 ], [ %n.vec231, %vector.body232 ]
  br label %scalar.ph228

scalar.ph228:                                     ; preds = %scalar.ph228.preheader, %scalar.ph228
  %indvars.iv.i22 = phi i64 [ %indvars.iv.next.i23, %scalar.ph228 ], [ %indvars.iv.i22.ph, %scalar.ph228.preheader ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.i22 ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !76
  %i.fh = uitofp reassoc nsz arcp contract afn i16 %i.fg to float
  %i.fi = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %indvars.iv.i22 ; 2 uses
  store float %i.fh, ptr %i.fi, align 4, !tbaa !77
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !76
  %i.fl = uitofp reassoc nsz arcp contract afn i16 %i.fk to float
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store float %i.fl, ptr %i.fm, align 4, !tbaa !77
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i22, 1 ; 2 uses
  %exitcond.not.i24 = icmp eq i64 %indvars.iv.next.i23, %wide.trip.count.i
  br i1 %exitcond.not.i24, label %_ZN6LibRaw18dcb_copy_to_bufferEPA3_f.exit, label %scalar.ph228, !llvm.loop !369

_ZN6LibRaw18dcb_copy_to_bufferEPA3_f.exit:        ; preds = %scalar.ph228, %_ZN6LibRaw7dcb_verEPA3_f.exit
  %.not143 = icmp slt i32 %1, 1
  br i1 %.not143, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6LibRaw18dcb_copy_to_bufferEPA3_f.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN6LibRaw7dcb_mapEv.exit
  %.0144 = phi i32 [ 1, %.lr.ph ], [ %i.hw, %_ZN6LibRaw7dcb_mapEv.exit ] ; 2 uses
  tail call void @_ZN6LibRaw11dcb_nyquistEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  tail call void @_ZN6LibRaw11dcb_nyquistEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  tail call void @_ZN6LibRaw11dcb_nyquistEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.fo = load i16, ptr %i.d, align 4, !tbaa !74  ; 2 uses
  %i.fp = icmp ugt i16 %i.fo, 2
  br i1 %i.fp, label %.lr.ph59.i, label %_ZN6LibRaw7dcb_mapEv.exit

.lr.ph59.i:                                       ; preds = %bb.d
  %i.fq = load i16, ptr %i.a, align 2, !tbaa !11  ; 2 uses
  %i.fr = load ptr, ptr %i.fn, align 8            ; 5 uses
  %i.fs = zext i16 %i.fq to i64                   ; 2 uses
  %invariant.gep.i26 = getelementptr [8 x i8], ptr %i.fr, i64 %i.fs
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i27, %.lr.ph59.i
  %i.ft = phi i16 [ %i.fo, %.lr.ph59.i ], [ %i.hq, %._crit_edge.i27 ]
  %i.fu = phi i16 [ %i.fq, %.lr.ph59.i ], [ %i.hr, %._crit_edge.i27 ] ; 3 uses
  %.05257.i = phi i32 [ 1, %.lr.ph59.i ], [ %i.hs, %._crit_edge.i27 ] ; 2 uses
  %i.fv = icmp ugt i16 %i.fu, 2
  br i1 %i.fv, label %.lr.ph.preheader.i28, label %._crit_edge.i27

.lr.ph.preheader.i28:                             ; preds = %bb.e
  %i.fw = zext i16 %i.fu to i32
  %i.fx = mul i32 %.05257.i, %i.fw
  %i.fy = add nuw i32 %i.fx, 1
  %i.fz = sext i32 %i.fy to i64                   ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fz
  %.phi.trans.insert62.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 2
  %.pre.i = load i16, ptr %.phi.trans.insert62.i, align 2, !tbaa !76
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.h, %.lr.ph.preheader.i28
  %i.ga = phi i16 [ %.pre.i, %.lr.ph.preheader.i28 ], [ %i.gi, %bb.h ]
  %indvars.iv.i30 = phi i64 [ %i.fz, %.lr.ph.preheader.i28 ], [ %indvars.iv.next.i31, %bb.h ] ; 4 uses
  %.05355.i = phi i32 [ 1, %.lr.ph.preheader.i28 ], [ %i.hl, %bb.h ]
  %i.gb = getelementptr [8 x i8], ptr %i.fr, i64 %indvars.iv.i30 ; 2 uses
  %i.gc = uitofp i16 %i.ga to double
  %i.gd = getelementptr i8, ptr %i.gb, i64 -6
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !76 ; 3 uses
  %i.gf = zext i16 %i.ge to i32
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i30, 1 ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.next.i31
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !76 ; 4 uses
  %i.gj = zext i16 %i.gi to i32
  %i.gk = add nuw nsw i32 %i.gj, %i.gf            ; 3 uses
  %i.gl = sub nsw i64 %indvars.iv.i30, %i.fs
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !76 ; 3 uses
  %i.gp = zext i16 %i.go to i32
  %gep.i32 = getelementptr [8 x i8], ptr %invariant.gep.i26, i64 %indvars.iv.i30
  %i.gq = getelementptr inbounds nuw i8, ptr %gep.i32, i64 2
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !76 ; 3 uses
  %i.gs = zext i16 %i.gr to i32
  %i.gt = add nuw nsw i32 %i.gs, %i.gp            ; 3 uses
  %i.gu = add nuw nsw i32 %i.gt, %i.gk
  %i.gv = uitofp nneg i32 %i.gu to double
  %i.gw = fmul reassoc nnan nsz arcp contract afn double %i.gv, 2.500000e-01
  %i.gx = fcmp reassoc nsz arcp contract afn olt double %i.gw, %i.gc
  br i1 %i.gx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i29
  %..i = tail call i16 @llvm.umin.i16(i16 %i.ge, i16 %i.gi)
  %i.gy = zext i16 %..i to i32
  %i.gz = add nuw nsw i32 %i.gk, %i.gy
  %i.ha = tail call i16 @llvm.umin.i16(i16 %i.go, i16 %i.gr)
  %i.hb = zext i16 %i.ha to i32
  %i.hc = add nuw nsw i32 %i.gt, %i.hb
  %i.hd = icmp samesign ult i32 %i.gz, %i.hc
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i29
  %.54.i = tail call i16 @llvm.umax.i16(i16 %i.ge, i16 %i.gi)
  %i.he = zext i16 %.54.i to i32
  %i.hf = add nuw nsw i32 %i.gk, %i.he
  %i.hg = tail call i16 @llvm.umax.i16(i16 %i.go, i16 %i.gr)
  %i.hh = zext i16 %i.hg to i32
  %i.hi = add nuw nsw i32 %i.gt, %i.hh
  %i.hj = icmp samesign ugt i32 %i.hf, %i.hi
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.in.i = phi i1 [ %i.hd, %bb.f ], [ %i.hj, %bb.g ]
  %.sink.i = zext i1 %.sink.in.i to i16
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gb, i64 6
  store i16 %.sink.i, ptr %i.hk, align 2, !tbaa !76
  %i.hl = add nuw nsw i32 %.05355.i, 1            ; 2 uses
  %i.hm = load i16, ptr %i.a, align 2, !tbaa !11  ; 2 uses
  %i.hn = zext i16 %i.hm to i32
  %i.ho = add nsw i32 %i.hn, -1
  %i.hp = icmp slt i32 %i.hl, %i.ho
  br i1 %i.hp, label %.lr.ph.i29, label %._crit_edge.loopexit.i, !llvm.loop !297

._crit_edge.loopexit.i:                           ; preds = %bb.h
  %.pre63.i = load i16, ptr %i.d, align 4, !tbaa !74
  br label %._crit_edge.i27

._crit_edge.i27:                                  ; preds = %._crit_edge.loopexit.i, %bb.e
  %i.hq = phi i16 [ %.pre63.i, %._crit_edge.loopexit.i ], [ %i.ft, %bb.e ] ; 2 uses
  %i.hr = phi i16 [ %i.hm, %._crit_edge.loopexit.i ], [ %i.fu, %bb.e ]
  %i.hs = add nuw nsw i32 %.05257.i, 1            ; 2 uses
  %i.ht = zext i16 %i.hq to i32
  %i.hu = add nsw i32 %i.ht, -1
  %i.hv = icmp slt i32 %i.hs, %i.hu
  br i1 %i.hv, label %bb.e, label %_ZN6LibRaw7dcb_mapEv.exit, !llvm.loop !298

_ZN6LibRaw7dcb_mapEv.exit:                        ; preds = %._crit_edge.i27, %bb.d
  tail call void @_ZN6LibRaw14dcb_correctionEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hw = add nuw i32 %.0144, 1
  %exitcond.not = icmp eq i32 %.0144, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !370

._crit_edge:                                      ; preds = %_ZN6LibRaw7dcb_mapEv.exit, %_ZN6LibRaw18dcb_copy_to_bufferEPA3_f.exit
  tail call void @_ZN6LibRaw9dcb_colorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  tail call void @_ZN6LibRaw6dcb_ppEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hx = load i16, ptr %i.d, align 4, !tbaa !74  ; 2 uses
  %i.hy = icmp ugt i16 %i.hx, 2
  br i1 %i.hy, label %.lr.ph59.i33, label %_ZN6LibRaw7dcb_mapEv.exit52

.lr.ph59.i33:                                     ; preds = %._crit_edge
  %i.hz = load i16, ptr %i.a, align 2, !tbaa !11  ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8            ; 5 uses
end_hunk_4
