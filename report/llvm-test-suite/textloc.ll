inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@PairComponents:bb.a
bb.j:                                             ; preds = %bb.i
  %i.ae = mul nsw i32 %i.ad, %i.z
  %i.af = icmp sgt i32 %i.ab, %i.ae
  %i.ag = icmp slt i32 %i.ab, 0
  %or.cond = or i1 %i.ag, %i.af
  br i1 %or.cond, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.ai = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 4 uses
  %.not129 = icmp eq i32 %i.ak, 0
  br i1 %.not129, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr %.0190, align 8, !tbaa !47
  %.not130 = icmp eq i32 %i.ak, %i.al
  %.not131 = icmp eq i32 %i.ak, %.2106151
  %or.cond135 = select i1 %.not130, i1 true, i1 %.not131
  br i1 %or.cond135, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load i32, ptr @MIN_CHAR_SIZE, align 4, !tbaa !4
  %i.an = icmp slt i32 %.0110171, %i.am
  br i1 %i.an, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.m
  %.0111146 = load ptr, ptr %0, align 8, !tbaa !60 ; 2 uses
  %cond147 = icmp eq ptr %.0111146, null
  br i1 %cond147, label %.preheader._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %.0111148 = phi ptr [ %.0111, %bb.n ], [ %.0111146, %.preheader ] ; 6 uses
  %i.ao = load i32, ptr %.0111148, align 8, !tbaa !47
  %.not133 = icmp eq i32 %i.ao, %i.ak
  br i1 %.not133, label %.critedge5, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.0111148, i64 72
  %.0111 = load ptr, ptr %i.ap, align 8, !tbaa !60 ; 2 uses
  %cond = icmp eq ptr %.0111, null
  br i1 %cond, label %.preheader._crit_edge, label %.lr.ph, !llvm.loop !94

.preheader._crit_edge:                            ; preds = %.preheader, %bb.n
  %i.aq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

.critedge5:                                       ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %.0111148, i64 44
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !78
  %i.at = icmp eq i8 %i.u, %i.as
  br i1 %i.at, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.critedge5
  %i.au = tail call signext i8 @Overlap(ptr noundef nonnull %.0190, ptr noundef nonnull %.0111148)
  %.not134 = icmp eq i8 %i.au, 0
  br i1 %.not134, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %.0111148, ptr %i.d, align 8, !tbaa !93
  %i.av = getelementptr inbounds nuw i8, ptr %.0111148, i64 56
  store ptr %.0190, ptr %i.av, align 8, !tbaa !93
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %.critedge5, %bb.m, %bb.p, %bb.l, %bb.k
  %.3101 = phi i8 [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %bb.p ], [ 1, %.critedge5 ], [ 0, %bb.k ], [ 0, %bb.o ]
  %.396 = phi i8 [ 0, %bb.l ], [ 0, %bb.m ], [ 1, %bb.p ], [ 0, %.critedge5 ], [ 0, %bb.k ], [ 0, %bb.o ]
  %.3 = phi i8 [ %.2154, %bb.l ], [ %.2154, %bb.m ], [ %.2154, %bb.p ], [ %.2154, %.critedge5 ], [ %.2154, %bb.k ], [ 1, %bb.o ]
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ai
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %.pre = load i32, ptr %i.i, align 4, !tbaa !53
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.q
  %i.az = phi i32 [ %i.q, %bb.h ], [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %.pre, %bb.q ] ; 2 uses
  %.3107 = phi i32 [ %.2106151, %bb.h ], [ %.2106151, %bb.i ], [ %.2106151, %bb.j ], [ %i.ay, %bb.q ] ; 2 uses
  %.4102 = phi i8 [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ %.3101, %bb.q ] ; 2 uses
  %.497 = phi i8 [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ %.396, %bb.q ] ; 2 uses
  %.4 = phi i8 [ %.2154, %bb.h ], [ %.2154, %bb.i ], [ %.2154, %bb.j ], [ %.3, %bb.q ] ; 2 uses
  %i.ba = add nsw i32 %.0112150, 1
  %.not123.not = icmp slt i32 %.0112150, %i.az
  br i1 %.not123.not, label %bb.e, label %.critedge2.loopexit, !llvm.loop !95

.critedge2.loopexit:                              ; preds = %bb.g, %bb.e, %bb.r
  %.2106.lcssa.ph = phi i32 [ %.3107, %bb.r ], [ %.2106151, %bb.e ], [ %.2106151, %bb.g ]
  %.295.lcssa.ph = phi i8 [ %.497, %bb.r ], [ %.295153, %bb.e ], [ 0, %bb.g ]
  %.2.lcssa.ph = phi i8 [ %.4, %bb.r ], [ %.2154, %bb.e ], [ 1, %bb.g ]
  %.5103.ph = phi i8 [ %.4102, %bb.r ], [ %.2100152, %bb.e ], [ 1, %bb.g ]
  %.pre197 = load i32, ptr @MAX_CHAR_SIZE, align 4, !tbaa !4
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.d
  %i.bb = phi i32 [ %i.l, %bb.d ], [ %.pre197, %.critedge2.loopexit ] ; 2 uses
  %.2106.lcssa = phi i32 [ %.1105172, %bb.d ], [ %.2106.lcssa.ph, %.critedge2.loopexit ]
  %.295.lcssa = phi i8 [ 0, %bb.d ], [ %.295.lcssa.ph, %.critedge2.loopexit ] ; 2 uses
  %.2.lcssa = phi i8 [ %.192175, %bb.d ], [ %.2.lcssa.ph, %.critedge2.loopexit ]
  %.5103 = phi i8 [ 0, %bb.d ], [ %.5103.ph, %.critedge2.loopexit ] ; 2 uses
  %i.bc = add nuw nsw i32 %.0110171, 1
  %.not116.not = icmp slt i32 %.0110171, %i.bb
  br i1 %.not116.not, label %bb.c, label %.critedge, !llvm.loop !96

.critedge:                                        ; preds = %bb.c, %.critedge2
  %.199.lcssa.ph = phi i8 [ %.199173, %bb.c ], [ %.5103, %.critedge2 ]
  %.194.lcssa.ph = phi i8 [ %.194174, %bb.c ], [ %.295.lcssa, %.critedge2 ]
  %i.bd = icmp eq i8 %.199.lcssa.ph, 0
  %i.be = icmp ne i8 %.194.lcssa.ph, 0
  %i.bf = and i1 %i.bd, %i.be
  br i1 %i.bf, label %.critedge137, label %.critedge.thread

.critedge.thread:                                 ; preds = %.preheader139, %.critedge
  %i.bg = getelementptr inbounds nuw i8, ptr %.0190, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !65 ; 2 uses
  %.not120182 = icmp eq ptr %i.bh, null
  br i1 %.not120182, label %._crit_edge186, label %.lr.ph185

.lr.ph185:                                        ; preds = %.critedge.thread, %.lr.ph185
  %.090183 = phi ptr [ %i.bs, %.lr.ph185 ], [ %i.bh, %.critedge.thread ] ; 4 uses
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.bj = getelementptr inbounds nuw i8, ptr %.090183, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !64
  %i.bl = load i32, ptr %i.a, align 4, !tbaa !8
  %i.bm = mul nsw i32 %i.bl, %i.bk
  %i.bn = load i32, ptr %.090183, align 8, !tbaa !62
  %i.bo = add nsw i32 %i.bm, %i.bn
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bp
  store i32 0, ptr %i.bq, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %.090183, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !66 ; 2 uses
  tail call void @free(ptr noundef nonnull %.090183) #15
  %.not120 = icmp eq ptr %i.bs, null
  br i1 %.not120, label %._crit_edge186, label %.lr.ph185, !llvm.loop !97

._crit_edge186:                                   ; preds = %.lr.ph185, %.critedge.thread
  %.not121 = icmp eq ptr %.0108189, null          ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0190, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !59 ; 2 uses
  br i1 %.not121, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge186
  %i.bv = getelementptr inbounds nuw i8, ptr %.0108189, i64 72
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !59
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge186
  store ptr %i.bu, ptr %0, align 8, !tbaa !60
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  tail call void @free(ptr noundef nonnull %.0190) #15
  %i.bw = getelementptr inbounds nuw i8, ptr %.0108189, i64 72
  %spec.select138 = select i1 %.not121, ptr %0, ptr %i.bw
  br label %bb.v

.critedge137:                                     ; preds = %.critedge, %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %.0190, i64 72
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge137
  %.1109 = phi ptr [ %.0190, %.critedge137 ], [ %.0108189, %bb.u ]
  %.1.in = phi ptr [ %i.bx, %.critedge137 ], [ %spec.select138, %bb.u ]
  %.0 = load ptr, ptr %.1.in, align 8, !tbaa !60  ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge194, label %bb.b, !llvm.loop !98

._crit_edge194:                                   ; preds = %bb.v, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local signext range(i8 0, 2) i8 @Overlap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !53   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !55   ; 3 uses
  %i.e = sub nsw i32 %i.b, %i.d                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55   ; 3 uses
  %i.h = sub nsw i32 %i.d, %i.g                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !53   ; 3 uses
  %i.k = sub nsw i32 %i.j, %i.b                   ; 4 uses
  %i.l = sub nsw i32 %i.j, %i.g                   ; 4 uses
  %i.m = sub nsw i32 %i.b, %i.g                   ; 4 uses
  %i.n = sub nsw i32 %i.j, %i.d                   ; 4 uses
  %i.o = icmp sgt i32 %i.e, -1
  %i.p = icmp sgt i32 %i.h, -1                    ; 2 uses
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  %i.q = icmp sgt i32 %i.k, -1                    ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 %i.q, i1 false
  %i.r = icmp sgt i32 %i.l, 0                     ; 4 uses
  %or.cond5 = select i1 %or.cond3, i1 %i.r, i1 false
  br i1 %or.cond5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = uitofp nneg i32 %i.e to float
  %2 = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %3 = insertelement <2 x i32> %2, i32 %i.m, i64 1
  %4 = sitofp <2 x i32> %3 to <2 x float>
  %5 = insertelement <2 x float> poison, float %i.s, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = fdiv <2 x float> %6, %4
  %8 = fcmp oge <2 x float> %7, splat (float 5.000000e-01) ; 2 uses
  %9 = extractelement <2 x i1> %8, i64 0
  %10 = extractelement <2 x i1> %8, i64 1
  %i.t = select i1 %10, i1 %9, i1 false
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.u = icmp sgt i32 %i.e, 0                     ; 3 uses
  %i.v = icmp slt i32 %i.h, 1
  %or.cond7 = select i1 %i.u, i1 %i.v, i1 false   ; 2 uses
  %i.w = icmp slt i32 %i.k, 1                     ; 2 uses
  %or.cond9 = select i1 %or.cond7, i1 %i.w, i1 false
  %i.x = icmp sgt i32 %i.l, -1
  %or.cond11 = select i1 %or.cond9, i1 %i.x, i1 false
  br i1 %or.cond11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = uitofp nneg i32 %i.l to float
  %11 = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %12 = insertelement <2 x i32> %11, i32 %i.m, i64 1
  %13 = sitofp <2 x i32> %12 to <2 x float>
  %14 = insertelement <2 x float> poison, float %i.y, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = fdiv <2 x float> %15, %13
  %17 = fcmp oge <2 x float> %16, splat (float 5.000000e-01) ; 2 uses
  %18 = extractelement <2 x i1> %17, i64 0
  %19 = extractelement <2 x i1> %17, i64 1
  %i.z = select i1 %19, i1 %18, i1 false
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %or.cond15 = select i1 %or.cond7, i1 %i.q, i1 false
  %or.cond17 = select i1 %or.cond15, i1 %i.r, i1 false
  br i1 %or.cond17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = sitofp i32 %i.m to float
  %i.ab = sitofp i32 %i.n to float
  %i.ac = fdiv float %i.aa, %i.ab
  %i.ad = fcmp oge float %i.ac, 5.000000e-01
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %or.cond19 = select i1 %i.u, i1 %i.p, i1 false
  %or.cond21 = select i1 %or.cond19, i1 %i.w, i1 false
  %or.cond23 = select i1 %or.cond21, i1 %i.r, i1 false
  br i1 %or.cond23, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = sitofp i32 %i.n to float
  %i.af = sitofp i32 %i.m to float
  %i.ag = fdiv float %i.ae, %i.af
  %i.ah = fcmp oge float %i.ag, 5.000000e-01
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp slt i32 %i.e, 0
  %i.aj = icmp sgt i32 %i.h, 0
  %or.cond25 = select i1 %i.ai, i1 %i.aj, i1 false
  %i.ak = icmp sgt i32 %i.k, 0
  %or.cond27 = select i1 %or.cond25, i1 %i.ak, i1 false
  %or.cond29 = select i1 %or.cond27, i1 %i.r, i1 false
  br i1 %or.cond29, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = icmp slt i32 %i.h, 0
  %or.cond31 = select i1 %i.u, i1 %i.al, i1 false
  %i.am = icmp slt i32 %i.k, 0
  %or.cond33 = select i1 %or.cond31, i1 %i.am, i1 false
  %i.an = icmp slt i32 %i.l, 0
  %or.cond35 = select i1 %or.cond33, i1 %i.an, i1 false
  br i1 %or.cond35, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.0.shrunk = phi i1 [ %i.t, %bb.b ], [ %i.z, %bb.d ], [ %i.ad, %bb.f ], [ %i.ah, %bb.h ], [ false, %bb.i ], [ false, %bb.j ]
  %.0 = zext i1 %.0.shrunk to i8
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @ComputeBoundingBoxes(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %.preheader81

.preheader81:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader81, %.backedge
  %.087 = phi ptr [ %0, %.preheader81 ], [ %.0.be, %.backedge ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.087, i64 44
  %i.e = load i8, ptr %i.d, align 4, !tbaa !78
  %.not78 = icmp eq i8 %i.e, 0
  br i1 %.not78, label %bb.c, label %.backedge

.backedge:                                        ; preds = %.lr.ph86, %.preheader, %bb.b
  %.0.be.in = getelementptr inbounds nuw i8, ptr %.087, i64 72
  %.0.be = load ptr, ptr %.0.be.in, align 8, !tbaa !59 ; 2 uses
  %.not = icmp eq ptr %.0.be, null
  br i1 %.not, label %bb.d, label %bb.b, !llvm.loop !99

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.087, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %.087, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !55
  %. = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.k) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.087, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !53
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %i.o) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.087, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !56
  %i.u = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.087, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !54
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %i.y) ; 2 uses
  %.not7982 = icmp sgt i32 %., %i.p
  br i1 %.not7982, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.c
  %.not8084 = icmp sgt i32 %i.u, %i.z
  br i1 %.not8084, label %.backedge, label %.lr.ph86

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.06583 = phi i32 [ %i.aq, %.lr.ph ], [ %., %bb.c ] ; 4 uses
  %i.aa = load i32, ptr %i.v, align 8, !tbaa !54
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !8
  %i.ac = mul nsw i32 %i.ab, %i.aa
  %i.ad = add nsw i32 %i.ac, %.06583
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  store i8 -1, ptr %i.ag, align 1, !tbaa !20
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !93
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !56
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !8
  %i.al = mul nsw i32 %i.ak, %i.aj
  %i.am = add nsw i32 %i.al, %.06583
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  store i8 -1, ptr %i.ap, align 1, !tbaa !20
  %i.aq = add i32 %.06583, 1
  %exitcond.not = icmp eq i32 %.06583, %i.p
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !100

.lr.ph86:                                         ; preds = %.preheader, %.lr.ph86
  %.06785 = phi i32 [ %i.bd, %.lr.ph86 ], [ %i.u, %.preheader ] ; 4 uses
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !8
  %i.as = mul nsw i32 %i.ar, %.06785
  %i.at = add nsw i32 %i.as, %.
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  store i8 -1, ptr %i.aw, align 1, !tbaa !20
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !8
  %i.ay = mul nsw i32 %i.ax, %.06785
  %i.az = add nsw i32 %i.ay, %i.p
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  store i8 -1, ptr %i.bc, align 1, !tbaa !20
  %i.bd = add i32 %.06785, 1
  %exitcond92.not = icmp eq i32 %.06785, %i.z
  br i1 %exitcond92.not, label %.backedge, label %.lr.ph86, !llvm.loop !101

bb.d:                                             ; preds = %.backedge
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !84 ; 2 uses
  %i.bg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bf) #16
  %i.bh = add i64 %i.bg, 9
  %i.bi = tail call noalias ptr @malloc(i64 noundef %i.bh) #13 ; 2 uses
  %i.bj = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bi, ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull %i.bf) #15 ; 0 uses
  %i.bk = load ptr, ptr @stdout, align 8, !tbaa !85 ; 4 uses
  %i.bl = tail call i64 @fwrite(ptr nonnull @.str.14, i64 3, i64 1, ptr %i.bk) ; 0 uses
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !17
  %i.bp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.15, i32 noundef %i.bm, i32 noundef %i.bo) #15 ; 0 uses
  %i.bq = tail call i64 @fwrite(ptr nonnull @.str.16, i64 4, i64 1, ptr %i.bk) ; 0 uses
  %i.br = load i32, ptr %i.b, align 4, !tbaa !8
  %i.bs = load i32, ptr %i.bn, align 8, !tbaa !17
  %i.bt = mul nsw i32 %i.bs, %i.br
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph90, label %._crit_edge91

.lr.ph90:                                         ; preds = %bb.d, %.lr.ph90
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph90 ], [ 0, %bb.d ] ; 2 uses
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %indvars.iv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !20
  %chari = sext i8 %i.bx to i32
  %fputc = tail call i32 @fputc(i32 %chari, ptr %i.bk) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.by = load i32, ptr %i.b, align 4, !tbaa !8
  %i.bz = load i32, ptr %i.bn, align 8, !tbaa !17
  %i.ca = mul nsw i32 %i.bz, %i.by
  %i.cb = sext i32 %i.ca to i64
  %i.cc = icmp slt i64 %indvars.iv.next, %i.cb
  br i1 %i.cc, label %.lr.ph90, label %._crit_edge91, !llvm.loop !102

._crit_edge91:                                    ; preds = %.lr.ph90, %bb.d
  tail call void @free(ptr noundef nonnull %i.bi) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge91
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #11
end_hunk_0
