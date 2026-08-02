inline.NumInlined: 2
begin_hunk_0

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
  br i1 %i.d, label %.preheader.preheader, label %._crit_edge78

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

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge76
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge76 ] ; 10 uses
  %indvars.iv = phi i64 [ %i.e, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge76 ] ; 11 uses
  %i.t = shl i64 %indvar, 1
  %i.u = sub i64 %i.s, %i.t
  %i.v = shl i64 %indvar, 1
  %i.w = sub i64 %i.r, %i.v
  %i.x = mul i64 %indvar, 4294967293
  %i.y = add i64 %i.x, %i.n
  %i.z = add i64 %indvar, %i.o
  %i.aa = add i64 %indvar, %i.p
  %i.ab = mul nsw i64 %indvar, -8                 ; 2 uses
  %i.ac = add i64 %i.g, %i.ab
  %i.ad = add i64 %i.f, %i.ab                     ; 2 uses
  %i.ae = mul i64 %indvar, 4294967293
  %i.af = add i64 %i.ae, %i.i
  %i.ag = add i64 %indvar, %i.k
  %i.ah = add i64 %indvar, %i.m
  %i.ai = sub nsw i64 51, %indvars.iv             ; 3 uses
  %i.aj = icmp samesign ult i64 %indvars.iv, 51
  br i1 %i.aj, label %.lr.ph75, label %._crit_edge76

.lr.ph75:                                         ; preds = %.preheader
  %i.ak = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %invariant.op = add nsw i32 %i.al, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph75, %._crit_edge
  %indvars.iv84 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next85, %._crit_edge ] ; 20 uses
  %indvars.iv79 = phi i64 [ %indvars.iv, %.lr.ph75 ], [ %indvars.iv.next80, %._crit_edge ] ; 2 uses
  %i.am = add i64 %i.u, %indvars.iv84
  %i.an = trunc i64 %i.am to i32
  %umin.a = call i32 @llvm.umin.i32(i32 %i.an, i32 50) ; 2 uses
  %i.ao = trunc i64 %indvars.iv84 to i32          ; 2 uses
  %i.ap = sub i32 %umin.a, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %i.as = add i64 %i.y, %indvars.iv84
  %i.at = sub i64 %i.z, %indvars.iv84
  %i.au = shl nuw nsw i64 %indvars.iv84, 3        ; 2 uses
  %i.av = add i64 %i.ac, %i.au
  %i.aw = add i64 %i.ad, %i.au
  %i.ax = add i64 %i.af, %indvars.iv84
  %i.ay = sub i64 %i.ag, %indvars.iv84
  %indvars87 = trunc i64 %indvars.iv84 to i32
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv84
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !8  ; 2 uses
  %i.bb = add nuw nsw i64 %indvars.iv84, %indvars.iv ; 6 uses
  %i.bc = add nsw i64 %i.bb, -1                   ; 3 uses
  %.reass = add i32 %invariant.op, %indvars87
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !11
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !11
  call void @Givens(double noundef %i.be, double noundef %i.bg, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.bh = load double, ptr %i.a, align 8, !tbaa !11 ; 5 uses
  %i.bi = load double, ptr %i.b, align 8, !tbaa !11 ; 5 uses
  %2 = add nuw nsw i64 %indvars.iv84, %i.ak
  %3 = trunc nsw i64 %2 to i32
  %4 = call i32 @llvm.umin.i32(i32 %3, i32 50)
  %5 = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bc
  %6 = load ptr, ptr %5, align 8, !tbaa !8        ; 4 uses
  %7 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bb
  %8 = load ptr, ptr %7, align 8, !tbaa !8        ; 4 uses
  %9 = add nuw nsw i32 %4, 1                      ; 2 uses
  %min.iters.check113 = icmp eq i32 %umin.a, %i.ao
  br i1 %min.iters.check113, label %scalar.ph115.preheader, label %vector.memcheck106

vector.memcheck106:                               ; preds = %bb.b
  %10 = shl nuw nsw i64 %indvars.iv84, 3          ; 3 uses
  %11 = add nuw i64 %10, 8
  %12 = add i64 %i.w, %indvars.iv84
  %13 = trunc i64 %12 to i32
  %umin = call i32 @llvm.umin.i32(i32 %13, i32 50)
  %14 = trunc i64 %indvars.iv84 to i32
  %15 = sub i32 %umin, %14
  %16 = zext i32 %15 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = add i64 %11, %17                          ; 2 uses
  %scevgep107.a = getelementptr nuw i8, ptr %6, i64 %10
  %scevgep108 = getelementptr i8, ptr %6, i64 %18
  %scevgep109 = getelementptr nuw i8, ptr %8, i64 %10
  %scevgep110 = getelementptr i8, ptr %8, i64 %18
  %bound0111 = icmp ult ptr %scevgep107.a, %scevgep110
  %bound1112 = icmp ult ptr %scevgep109, %scevgep108
  %found.conflict113 = and i1 %bound0111, %bound1112
  br i1 %found.conflict113, label %scalar.ph115.preheader, label %vector.ph117

vector.ph117:                                     ; preds = %vector.memcheck106
  %n.vec119 = and i64 %i.ar, 8589934590           ; 3 uses
  %i.bj = add nuw i64 %indvars.iv84, %n.vec119
  %broadcast.splatinsert120 = insertelement <2 x double> poison, double %i.bh, i64 0
  %broadcast.splat121 = shufflevector <2 x double> %broadcast.splatinsert120, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert122 = insertelement <2 x double> poison, double %i.bi, i64 0
  %broadcast.splat123 = shufflevector <2 x double> %broadcast.splatinsert122, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph117
  %index125 = phi i64 [ 0, %vector.ph117 ], [ %index.next128, %vector.body124 ] ; 2 uses
  %i.bk = add nuw i64 %indvars.iv84, %index125    ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bk ; 2 uses
  %wide.load126 = load <2 x double>, ptr %i.bl, align 8, !tbaa !11, !alias.scope !24, !noalias !27 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.bk ; 2 uses
  %wide.load127 = load <2 x double>, ptr %i.bm, align 8, !tbaa !11, !alias.scope !27 ; 2 uses
  %i.bn = fneg <2 x double> %wide.load127
  %i.bo = fmul <2 x double> %broadcast.splat121, %i.bn
  %i.bp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat123, <2 x double> %wide.load126, <2 x double> %i.bo)
  store <2 x double> %i.bp, ptr %i.bl, align 8, !tbaa !11, !alias.scope !24, !noalias !27
  %i.bq = fmul <2 x double> %broadcast.splat123, %wide.load127
  %i.br = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat121, <2 x double> %wide.load126, <2 x double> %i.bq)
  store <2 x double> %i.br, ptr %i.bm, align 8, !tbaa !11, !alias.scope !27
  %index.next128 = add nuw i64 %index125, 2       ; 2 uses
  %i.bs = icmp eq i64 %index.next128, %n.vec119
  br i1 %i.bs, label %middle.block129, label %vector.body124, !llvm.loop !29

middle.block129:                                  ; preds = %vector.body124
  %cmp.n130 = icmp eq i64 %i.ar, %n.vec119
  br i1 %cmp.n130, label %.lr.ph53.i.preheader, label %scalar.ph115.preheader

scalar.ph115.preheader:                           ; preds = %vector.memcheck106, %bb.b, %middle.block129
  %indvars.iv.i.ph = phi i64 [ %indvars.iv84, %vector.memcheck106 ], [ %indvars.iv84, %bb.b ], [ %i.bj, %middle.block129 ]
  %i.bt = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bh, i64 1
  %i.bv = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bi, i64 1
  br label %scalar.ph115

scalar.ph115:                                     ; preds = %scalar.ph115.preheader, %scalar.ph115
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph115 ], [ %indvars.iv.i.ph, %scalar.ph115.preheader ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !11
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.i ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !11 ; 2 uses
  %i.cb = fneg double %i.ca
  %i.cc = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.cb, i64 1
  %i.ce = fmul <2 x double> %i.bu, %i.cd
  %i.cf = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.cg, <2 x double> %i.ce) ; 2 uses
  %i.ci = extractelement <2 x double> %i.ch, i64 1
  store double %i.ci, ptr %i.bx, align 8, !tbaa !11
  %i.cj = extractelement <2 x double> %i.ch, i64 0
  store double %i.cj, ptr %i.bz, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %9, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.lr.ph53.i.preheader, label %scalar.ph115, !llvm.loop !30

.lr.ph53.i.preheader:                             ; preds = %scalar.ph115, %middle.block129
  %i.ck = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.bi, i64 1
  %i.cm = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.bh, i64 1
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %.lr.ph53.i
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %.lr.ph53.i ], [ %indvars.iv84, %.lr.ph53.i.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv55.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !8  ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.bc ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.bb
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !11 ; 2 uses
  %i.cu = fneg double %i.ct
  %i.cv = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.ct, i64 1
  %i.cx = fmul <2 x double> %i.cl, %i.cw
  %i.cy = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.cz, <2 x double> %i.cx)
  store <2 x double> %i.da, ptr %i.cq, align 8, !tbaa !11
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %lftr.wideiv58.i = trunc i64 %indvars.iv.next56.i to i32
  %exitcond59.not.i = icmp eq i32 %9, %lftr.wideiv58.i
  br i1 %exitcond59.not.i, label %ApplyGivens.exit, label %.lr.ph53.i, !llvm.loop !23

ApplyGivens.exit:                                 ; preds = %.lr.ph53.i
  %19 = load double, ptr %i.a, align 8, !tbaa !11
  %20 = load double, ptr %i.b, align 8, !tbaa !11
  %i.db = trunc nsw i64 %i.bb to i32
  call void @ApplyRGivens(ptr noundef %i.c, double noundef %19, double noundef %20, i32 noundef %.reass, i32 noundef %i.db) #5
  %i.dc = icmp slt i64 %i.bb, %i.ai
  br i1 %i.dc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ApplyGivens.exit, %ApplyGivens.exit72
  %indvar97 = phi i64 [ %indvar.next98, %ApplyGivens.exit72 ], [ 0, %ApplyGivens.exit ] ; 6 uses
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %ApplyGivens.exit72 ], [ %indvars.iv79, %ApplyGivens.exit ] ; 3 uses
  %i.dd = mul i64 %indvars.iv, %indvar97
  %i.de = add i64 %i.as, %i.dd
  %i.df = trunc i64 %i.de to i32
  %smin102 = call i32 @llvm.smin.i32(i32 %i.df, i32 50)
  %i.dg = mul i64 %i.aa, %indvar97
  %i.dh = add i64 %i.at, %i.dg
  %i.di = trunc i64 %i.dh to i32
  %i.dj = add i32 %smin102, %i.di                 ; 2 uses
  %i.dk = zext i32 %i.dj to i64
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %i.dm = mul i64 %i.ad, %indvar97                ; 2 uses
  %i.dn = add i64 %i.av, %i.dm                    ; 2 uses
  %i.do = add i64 %i.aw, %i.dm
  %i.dp = mul i64 %indvars.iv, %indvar97
  %i.dq = add i64 %i.ax, %i.dp
  %i.dr = trunc i64 %i.dq to i32
  %smin = call i32 @llvm.smin.i32(i32 %i.dr, i32 50)
  %i.ds = mul i64 %i.ah, %indvar97
  %i.dt = add i64 %i.ay, %i.ds
  %i.du = trunc i64 %i.dt to i32
  %i.dv = add i32 %smin, %i.du
  %i.dw = zext i32 %i.dv to i64
  %i.dx = shl nuw nsw i64 %i.dw, 3
  %i.dy = add i64 %i.do, %i.dx                    ; 2 uses
  %i.dz = add nsw i64 %indvars.iv81, -1           ; 7 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !8  ; 2 uses
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, %indvars.iv ; 7 uses
  %indvars = trunc i64 %indvars.iv.next82 to i32  ; 2 uses
  %i.ec = add nsw i64 %indvars.iv.next82, -1      ; 3 uses
  %i.ed = add nsw i32 %indvars, -1
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ec
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !11
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next82
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !11
  call void @Givens(double noundef %i.ef, double noundef %i.eh, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.ei = load double, ptr %i.a, align 8, !tbaa !11 ; 6 uses
  %i.ej = load double, ptr %i.b, align 8, !tbaa !11 ; 6 uses
  %i.ek = add nuw nsw i64 %indvars.iv81, %i.ak
  %i.el = trunc nsw i64 %i.ek to i32
  %i.em = call i32 @llvm.smin.i32(i32 %i.el, i32 50) ; 2 uses
  %i.en = sext i32 %i.em to i64
  %.not49.i61 = icmp sgt i64 %i.dz, %i.en
  br i1 %.not49.i61, label %ApplyGivens.exit72, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph
  %i.eo = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ec
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !8  ; 4 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next82
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !8  ; 4 uses
  %i.es = add nuw nsw i32 %i.em, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.dj, 0
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i62
  %scevgep = getelementptr i8, ptr %i.ep, i64 %i.dn
  %scevgep99 = getelementptr i8, ptr %i.ep, i64 %i.dy
  %scevgep100 = getelementptr i8, ptr %i.er, i64 %i.dn
  %scevgep101 = getelementptr i8, ptr %i.er, i64 %i.dy
  %bound0 = icmp ult ptr %scevgep, %scevgep101
  %bound1 = icmp ult ptr %scevgep100, %scevgep99
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dl, 8589934590              ; 3 uses
  %i.et = add i64 %i.dz, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ei, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert103 = insertelement <2 x double> poison, double %i.ej, i64 0
  %broadcast.splat104 = shufflevector <2 x double> %broadcast.splatinsert103, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eu = add i64 %i.dz, %index                   ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eu ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ev, align 8, !tbaa !11, !alias.scope !31, !noalias !34 ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.eu ; 2 uses
  %wide.load105 = load <2 x double>, ptr %i.ew, align 8, !tbaa !11, !alias.scope !34 ; 2 uses
  %i.ex = fneg <2 x double> %wide.load105
  %i.ey = fmul <2 x double> %broadcast.splat, %i.ex
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat104, <2 x double> %wide.load, <2 x double> %i.ey)
  store <2 x double> %i.ez, ptr %i.ev, align 8, !tbaa !11, !alias.scope !31, !noalias !34
  %i.fa = fmul <2 x double> %broadcast.splat104, %wide.load105
  %i.fb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.fa)
  store <2 x double> %i.fb, ptr %i.ew, align 8, !tbaa !11, !alias.scope !34
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  br i1 %cmp.n, label %.lr.ph53.i67.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i62, %middle.block
  %indvars.iv.i63.ph = phi i64 [ %i.dz, %vector.memcheck ], [ %i.dz, %.lr.ph.i62 ], [ %i.et, %middle.block ]
  %i.fd = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.ei, i64 1
  %i.ff = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.fg = insertelement <2 x double> %i.ff, double %i.ej, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i63 = phi i64 [ %indvars.iv.next.i64, %scalar.ph ], [ %indvars.iv.i63.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %indvars.iv.i63 ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !11
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.er, i64 %indvars.iv.i63 ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !11 ; 2 uses
  %i.fl = fneg double %i.fk
  %i.fm = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fn = insertelement <2 x double> %i.fm, double %i.fl, i64 1
  %i.fo = fmul <2 x double> %i.fe, %i.fn
  %i.fp = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> %i.fq, <2 x double> %i.fo) ; 2 uses
  %i.fs = extractelement <2 x double> %i.fr, i64 1
  store double %i.fs, ptr %i.fh, align 8, !tbaa !11
  %i.ft = extractelement <2 x double> %i.fr, i64 0
  store double %i.ft, ptr %i.fj, align 8, !tbaa !11
  %indvars.iv.next.i64 = add nsw i64 %indvars.iv.i63, 1 ; 2 uses
  %lftr.wideiv.i65 = trunc i64 %indvars.iv.next.i64 to i32
  %exitcond.not.i66 = icmp eq i32 %i.es, %lftr.wideiv.i65
  br i1 %exitcond.not.i66, label %.lr.ph53.i67.preheader, label %scalar.ph, !llvm.loop !37

.lr.ph53.i67.preheader:                           ; preds = %scalar.ph, %middle.block
  %i.fu = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.ej, i64 1
  %i.fw = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.fx = insertelement <2 x double> %i.fw, double %i.ei, i64 1
  br label %.lr.ph53.i67

.lr.ph53.i67:                                     ; preds = %.lr.ph53.i67.preheader, %.lr.ph53.i67
  %indvars.iv55.i68 = phi i64 [ %indvars.iv.next56.i69, %.lr.ph53.i67 ], [ %i.dz, %.lr.ph53.i67.preheader ] ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv55.i68
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !8  ; 2 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.ec ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !11
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv.next82
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !11 ; 2 uses
  %i.ge = fneg double %i.gd
  %i.gf = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %i.gd, i64 1
  %i.gh = fmul <2 x double> %i.fv, %i.gg
  %i.gi = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.gj, <2 x double> %i.gh)
  store <2 x double> %i.gk, ptr %i.ga, align 8, !tbaa !11
  %indvars.iv.next56.i69 = add nsw i64 %indvars.iv55.i68, 1 ; 2 uses
  %lftr.wideiv58.i70 = trunc i64 %indvars.iv.next56.i69 to i32
  %exitcond59.not.i71 = icmp eq i32 %i.es, %lftr.wideiv58.i70
  br i1 %exitcond59.not.i71, label %ApplyGivens.exit72.loopexit, label %.lr.ph53.i67, !llvm.loop !23

ApplyGivens.exit72.loopexit:                      ; preds = %.lr.ph53.i67
  %.pre91 = load double, ptr %i.a, align 8, !tbaa !11
  %.pre92 = load double, ptr %i.b, align 8, !tbaa !11
  br label %ApplyGivens.exit72

ApplyGivens.exit72:                               ; preds = %ApplyGivens.exit72.loopexit, %.lr.ph
  %i.gl = phi double [ %.pre92, %ApplyGivens.exit72.loopexit ], [ %i.ej, %.lr.ph ]
  %i.gm = phi double [ %.pre91, %ApplyGivens.exit72.loopexit ], [ %i.ei, %.lr.ph ]
  call void @ApplyRGivens(ptr noundef %i.c, double noundef %i.gm, double noundef %i.gl, i32 noundef %i.ed, i32 noundef %indvars) #5
  %i.gn = icmp slt i64 %indvars.iv.next82, %i.ai
  %indvar.next98 = add i64 %indvar97, 1
  br i1 %i.gn, label %.lr.ph, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %ApplyGivens.exit72, %ApplyGivens.exit
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.go = icmp slt i64 %indvars.iv.next85, %i.ai
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br i1 %i.go, label %bb.b, label %._crit_edge76, !llvm.loop !39

._crit_edge76:                                    ; preds = %._crit_edge, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.gp = icmp sgt i64 %indvars.iv, 2
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gp, label %.preheader, label %._crit_edge78, !llvm.loop !40

._crit_edge78:                                    ; preds = %._crit_edge76, %bb.a
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
end_hunk_0
