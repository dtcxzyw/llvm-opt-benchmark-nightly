inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@hsfc2d.init = internal unnamed_addr global i1 false, align 4
@hsfc2d.gray_inv = internal unnamed_addr global [4 x i8] zeroinitializer, align 4
@hsfc3d.init = internal unnamed_addr global i1 false, align 4
@hsfc3d.gray_inv = internal unnamed_addr global [8 x i8] zeroinitializer, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @hsfc2d(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @llvm.umin.i32(i32 %1, i32 2) ; 2 uses
  %i.b = shl nuw nsw i32 %i.a, 4
  %.b = load i1, ptr @hsfc2d.init, align 4
  br i1 %.b, label %bb.b, label %.preheader52

.preheader52:                                     ; preds = %bb.a
  store <4 x i8> <i8 0, i8 1, i8 3, i8 2>, ptr @hsfc2d.gray_inv, align 4, !tbaa !8
  store i1 true, ptr @hsfc2d.init, align 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader52, %bb.a
  %.not63 = icmp eq i32 %1, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.b
  %i.c = add nsw i32 %i.a, -1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = add nuw nsw i64 %i.e, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %2, i8 0, i64 %i.f, i1 false), !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph62, %bb.f
  %.161 = phi i32 [ 1, %.lr.ph62 ], [ %i.ak, %bb.f ] ; 5 uses
  %.sroa.6.060 = phi i8 [ 1, %.lr.ph62 ], [ %.sroa.6.1, %bb.f ] ; 4 uses
  %.sroa.0.059 = phi i8 [ 0, %.lr.ph62 ], [ %.sroa.0.1, %bb.f ] ; 4 uses
  %.04558 = phi i8 [ 0, %.lr.ph62 ], [ %.2, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i32 32, %.161                ; 2 uses
  %i.i = zext nneg i8 %.04558 to i32
  %i.j = load i32, ptr %0, align 4, !tbaa !4
  %i.k = lshr i32 %i.j, %i.h
  %i.l = and i32 %i.k, 1
  %i.m = zext nneg i8 %.sroa.0.059 to i32
  %i.n = shl nuw nsw i32 %i.l, %i.m
  %i.o = load i32, ptr %i.g, align 4, !tbaa !4
  %i.p = lshr i32 %i.o, %i.h
  %i.q = and i32 %i.p, 1
  %i.r = zext nneg i8 %.sroa.6.060 to i32
  %i.s = shl nuw nsw i32 %i.q, %i.r
  %i.t = or i32 %i.s, %i.n
  %i.u = xor i32 %i.t, %i.i
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @hsfc2d.gray_inv, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8     ; 2 uses
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %.161, 1
  %i.aa = lshr i32 %.161, 4
  %i.ab = and i32 %i.z, 30                        ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0                    ; 2 uses
  %narrow = sub nuw nsw i32 32, %i.ab
  %i.ad = sext i1 %i.ac to i32
  %.sink = add nsw i32 %i.aa, %i.ad
  %i.ae = select i1 %i.ac, i32 0, i32 %narrow
  %.sink73 = shl i32 %i.y, %i.ae
  %i.af = zext i32 %.sink to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = or i32 %i.ah, %.sink73
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !4
  switch i8 %i.x, label %bb.f [
    i8 3, label %bb.d
    i8 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.aj = xor i8 %.04558, 3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.2 = phi i8 [ %.04558, %bb.c ], [ %i.aj, %bb.d ], [ %.04558, %bb.e ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.059, %bb.c ], [ %.sroa.6.060, %bb.d ], [ %.sroa.6.060, %bb.e ]
  %.sroa.6.1 = phi i8 [ %.sroa.6.060, %bb.c ], [ %.sroa.0.059, %bb.d ], [ %.sroa.0.059, %bb.e ]
  %i.ak = add nuw nsw i32 %.161, 1
  %exitcond = icmp eq i32 %.161, %i.b
  br i1 %exitcond, label %._crit_edge, label %bb.c, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @hsfc3d(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @llvm.umin.i32(i32 %1, i32 3) ; 2 uses
  %.tr = trunc nuw nsw i32 %i.a to i8
  %.lhs.trunc = shl nuw nsw i8 %.tr, 5
  %3 = udiv i8 %.lhs.trunc, 3
  %.b = load i1, ptr @hsfc3d.init, align 4
  br i1 %.b, label %bb.b, label %.preheader81

.preheader81:                                     ; preds = %bb.a
  store <8 x i8> <i8 0, i8 1, i8 3, i8 2, i8 7, i8 6, i8 4, i8 5>, ptr @hsfc3d.gray_inv, align 8, !tbaa !8
  store i1 true, ptr @hsfc3d.init, align 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader81, %bb.a
  %.not93 = icmp eq i32 %1, 0
  br i1 %.not93, label %._crit_edge, label %.lr.ph92.preheader

.lr.ph92.preheader:                               ; preds = %bb.b
  %i.b = add nsw i32 %i.a, -1
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = add nuw nsw i64 %i.d, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %2, i8 0, i64 %i.e, i1 false), !tbaa !4
  %narrow107 = add nuw nsw i8 %3, 1
  %4 = zext nneg i8 %narrow107 to i32
  br label %.lr.ph92

.lr.ph92:                                         ; preds = %.lr.ph92.preheader, %bb.j
  %.191 = phi i32 [ %i.cd, %bb.j ], [ 1, %.lr.ph92.preheader ] ; 3 uses
  %.sroa.26.090 = phi i8 [ %.sroa.26.1, %bb.j ], [ 4, %.lr.ph92.preheader ] ; 8 uses
  %.sroa.14.089 = phi i8 [ %.sroa.14.1, %bb.j ], [ 2, %.lr.ph92.preheader ] ; 8 uses
  %.sroa.0.088 = phi i8 [ %.sroa.0.1, %bb.j ], [ 0, %.lr.ph92.preheader ] ; 8 uses
  %i.f = sub nuw nsw i32 32, %.191                ; 3 uses
  %i.g = zext nneg i8 %.sroa.0.088 to i32         ; 2 uses
  %i.h = lshr i32 %i.g, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = lshr i32 %i.k, %i.f
  %i.m = xor i32 %i.l, %i.g
  %i.n = and i32 %i.m, 1
  %i.o = zext nneg i8 %.sroa.14.089 to i32        ; 2 uses
  %i.p = lshr i32 %i.o, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = lshr i32 %i.s, %i.f
  %i.u = xor i32 %i.t, %i.o
  %i.v = shl i32 %i.u, 1
  %i.w = and i32 %i.v, 2
  %i.x = or disjoint i32 %i.w, %i.n
  %i.y = zext nneg i8 %.sroa.26.090 to i32        ; 2 uses
  %i.z = lshr i32 %i.y, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = lshr i32 %i.ac, %i.f
  %i.ae = xor i32 %i.ad, %i.y
  %i.af = shl i32 %i.ae, 2
  %i.ag = and i32 %i.af, 4
  %i.ah = or disjoint i32 %i.x, %i.ag
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @hsfc3d.gray_inv, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8   ; 2 uses
  %i.al = zext i8 %i.ak to i32                    ; 3 uses
  %i.am = mul nuw nsw i32 %.191, 3                ; 4 uses
  %i.an = lshr i32 %i.al, 2
  %i.ao = and i32 %i.an, 1
  %i.ap = lshr i32 %i.am, 5
  %i.aq = and i32 %i.am, 31                       ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0                    ; 2 uses
  %narrow = sub nuw nsw i32 32, %i.aq
  %i.as = sext i1 %i.ar to i32
  %.sink = add nsw i32 %i.ap, %i.as
  %i.at = select i1 %i.ar, i32 0, i32 %narrow
  %.sink110 = shl nuw i32 %i.ao, %i.at
  %i.au = zext i32 %.sink to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = or i32 %i.aw, %.sink110
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !4
  %i.ay = lshr i32 %i.al, 1
  %i.az = and i32 %i.ay, 1
  %i.ba = add nuw nsw i32 %i.am, 1                ; 2 uses
  %i.bb = lshr i32 %i.ba, 5
  %i.bc = and i32 %i.ba, 31                       ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0                    ; 2 uses
  %narrow.1 = sub nuw nsw i32 32, %i.bc
  %i.be = sext i1 %i.bd to i32
  %.sink118 = add nsw i32 %i.bb, %i.be
  %i.bf = select i1 %i.bd, i32 0, i32 %narrow.1
  %.sink115 = shl nuw i32 %i.az, %i.bf
  %i.bg = zext i32 %.sink118 to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bj = or i32 %i.bi, %.sink115
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !4
  %i.bk = and i32 %i.al, 1
  %i.bl = add nuw nsw i32 %i.am, 2                ; 2 uses
  %i.bm = lshr i32 %i.bl, 5
  %i.bn = and i32 %i.bl, 31                       ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0                    ; 2 uses
  %narrow.2 = sub nuw nsw i32 32, %i.bn
  %i.bp = sext i1 %i.bo to i32
  %.sink125 = add nsw i32 %i.bm, %i.bp
  %i.bq = select i1 %i.bo, i32 0, i32 %narrow.2
  %.sink122 = shl nuw i32 %i.bk, %i.bq
  %i.br = zext i32 %.sink125 to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = or i32 %i.bt, %.sink122
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !4
  switch i8 %i.ak, label %bb.i [
    i8 0, label %bb.j
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.d
    i8 6, label %bb.g
    i8 7, label %bb.h
  ]

bb.c:                                             ; preds = %.lr.ph92
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph92, %.lr.ph92
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph92
  %i.bv = xor i8 %.sroa.26.090, 1
  %i.bw = xor i8 %.sroa.0.088, 1
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph92
  %i.bx = xor i8 %.sroa.0.088, 1
  %i.by = xor i8 %.sroa.14.089, 1
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph92
  %i.bz = xor i8 %.sroa.26.090, 1
  %i.ca = xor i8 %.sroa.14.089, 1
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph92
  %i.cb = xor i8 %.sroa.26.090, 1
  %i.cc = xor i8 %.sroa.0.088, 1
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph92
  tail call void @exit(i32 noundef -1) #6
  unreachable

bb.j:                                             ; preds = %.lr.ph92, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.1 = phi i8 [ %i.cb, %bb.h ], [ %.sroa.0.088, %bb.c ], [ %.sroa.0.088, %bb.d ], [ %i.bv, %bb.e ], [ %.sroa.26.090, %bb.f ], [ %.sroa.26.090, %.lr.ph92 ], [ %.sroa.0.088, %bb.g ]
  %.sroa.14.1 = phi i8 [ %.sroa.14.089, %bb.h ], [ %.sroa.26.090, %bb.c ], [ %.sroa.14.089, %bb.d ], [ %i.bw, %bb.e ], [ %i.bx, %bb.f ], [ %.sroa.14.089, %.lr.ph92 ], [ %i.bz, %bb.g ]
  %.sroa.26.1 = phi i8 [ %i.cc, %bb.h ], [ %.sroa.14.089, %bb.c ], [ %.sroa.26.090, %bb.d ], [ %.sroa.14.089, %bb.e ], [ %i.by, %bb.f ], [ %.sroa.0.088, %.lr.ph92 ], [ %i.ca, %bb.g ]
  %i.cd = add nuw nsw i32 %.191, 1                ; 2 uses
  %exitcond = icmp eq i32 %i.cd, %4
  br i1 %exitcond, label %._crit_edge, label %.lr.ph92, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.j, %bb.b
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @fhsfc2d(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !12
  %i.b = fmul double %i.a, f0x41EFFFFFFFE00000
  %i.c = fptoui double %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !12
  %i.f = fmul double %i.e, f0x41EFFFFFFFE00000
  %i.g = fptoui double %i.f to i32
  %i.h = tail call i32 @llvm.umin.i32(i32 %1, i32 2) ; 2 uses
  %i.i = shl nuw nsw i32 %i.h, 4
  %.b.i = load i1, ptr @hsfc2d.init, align 4
  br i1 %.b.i, label %bb.b, label %.preheader52.i

.preheader52.i:                                   ; preds = %bb.a
  store <4 x i8> <i8 0, i8 1, i8 3, i8 2>, ptr @hsfc2d.gray_inv, align 4, !tbaa !8
  store i1 true, ptr @hsfc2d.init, align 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader52.i, %bb.a
  %.not63.i = icmp eq i32 %1, 0
  br i1 %.not63.i, label %hsfc2d.exit, label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %bb.b
  %i.j = add nsw i32 %i.h, -1
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = add nuw nsw i64 %i.l, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %2, i8 0, i64 %i.m, i1 false), !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph62.i
  %.161.i = phi i32 [ 1, %.lr.ph62.i ], [ %i.ao, %bb.f ] ; 5 uses
  %.sroa.6.060.i = phi i8 [ 1, %.lr.ph62.i ], [ %.sroa.6.1.i, %bb.f ] ; 4 uses
  %.sroa.0.059.i = phi i8 [ 0, %.lr.ph62.i ], [ %.sroa.0.1.i, %bb.f ] ; 4 uses
  %.04558.i = phi i8 [ 0, %.lr.ph62.i ], [ %.2.i, %bb.f ] ; 4 uses
  %i.n = sub nuw nsw i32 32, %.161.i              ; 2 uses
  %i.o = zext nneg i8 %.04558.i to i32
  %i.p = lshr i32 %i.c, %i.n
  %i.q = and i32 %i.p, 1
  %i.r = zext nneg i8 %.sroa.0.059.i to i32
  %i.s = shl nuw nsw i32 %i.q, %i.r
  %i.t = lshr i32 %i.g, %i.n
  %i.u = and i32 %i.t, 1
  %i.v = zext nneg i8 %.sroa.6.060.i to i32
  %i.w = shl nuw nsw i32 %i.u, %i.v
  %i.x = or i32 %i.w, %i.s
  %i.y = xor i32 %i.x, %i.o
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @hsfc2d.gray_inv, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8   ; 2 uses
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %.161.i, 1
  %i.ae = lshr i32 %.161.i, 4
  %i.af = and i32 %i.ad, 30                       ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0                    ; 2 uses
  %narrow.i = sub nuw nsw i32 32, %i.af
  %i.ah = sext i1 %i.ag to i32
  %.sink.i = add nsw i32 %i.ae, %i.ah
  %i.ai = select i1 %i.ag, i32 0, i32 %narrow.i
  %.sink73.i = shl i32 %i.ac, %i.ai
  %i.aj = zext i32 %.sink.i to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = or i32 %.sink73.i, %i.al
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !4
  switch i8 %i.ab, label %bb.f [
    i8 3, label %bb.d
    i8 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.an = xor i8 %.04558.i, 3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.2.i = phi i8 [ %.04558.i, %bb.c ], [ %i.an, %bb.d ], [ %.04558.i, %bb.e ]
  %.sroa.0.1.i = phi i8 [ %.sroa.0.059.i, %bb.c ], [ %.sroa.6.060.i, %bb.d ], [ %.sroa.6.060.i, %bb.e ]
  %.sroa.6.1.i = phi i8 [ %.sroa.6.060.i, %bb.c ], [ %.sroa.0.059.i, %bb.d ], [ %.sroa.0.059.i, %bb.e ]
  %i.ao = add nuw nsw i32 %.161.i, 1
  %exitcond.i = icmp eq i32 %.161.i, %i.i
  br i1 %exitcond.i, label %hsfc2d.exit, label %bb.c, !llvm.loop !9

hsfc2d.exit:                                      ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @fhsfc3d(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x i32], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = load <2 x double>, ptr %0, align 8, !tbaa !12
  %i.c = fmul <2 x double> %i.b, splat (double f0x41EFFFFFFFE00000)
  %i.d = fptoui <2 x double> %i.c to <2 x i32>
  store <2 x i32> %i.d, ptr %i.a, align 8, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !12
  %i.g = fmul double %i.f, f0x41EFFFFFFFE00000
  %i.h = fptoui double %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !4
  call void @hsfc3d(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { cold noreturn nounwind }
attributes #7 = { nounwind }

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
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
end_hunk_0
