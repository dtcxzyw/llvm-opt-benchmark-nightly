Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/textloc?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@PairComponents:bb.a
bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.ai = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !8  ; 4 uses
  %.not129 = icmp eq i32 %i.ak, 0
  br i1 %.not129, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr %.0111190, align 8, !tbaa !32
  %.not130 = icmp eq i32 %i.ak, %i.al
  %.not131 = icmp eq i32 %i.ak, %.2104151
  %or.cond135 = select i1 %.not130, i1 true, i1 %.not131
  br i1 %or.cond135, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load i32, ptr @MIN_CHAR_SIZE, align 4, !tbaa !8
  %i.an = icmp slt i32 %.0106171, %i.am
  br i1 %i.an, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.m
  %.0108146 = load ptr, ptr %0, align 8, !tbaa !42 ; 2 uses
  %cond147 = icmp eq ptr %.0108146, null
  br i1 %cond147, label %.preheader._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %.0108148 = phi ptr [ %.0108, %bb.n ], [ %.0108146, %.preheader ] ; 6 uses
  %i.ao = load i32, ptr %.0108148, align 8, !tbaa !32
  %.not133 = icmp eq i32 %i.ao, %i.ak
  br i1 %.not133, label %.critedge5, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.0108148, i64 72
  %.0108 = load ptr, ptr %i.ap, align 8, !tbaa !42 ; 2 uses
  %cond = icmp eq ptr %.0108, null
  br i1 %cond, label %.preheader._crit_edge, label %.lr.ph, !llvm.loop !94

.preheader._crit_edge:                            ; preds = %.preheader, %bb.n
  %i.aq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

.critedge5:                                       ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %.0108148, i64 44
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !52
  %i.at = icmp eq i8 %i.u, %i.as
  br i1 %i.at, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.critedge5
  %i.au = tail call signext i8 @Overlap(ptr noundef nonnull %.0111190, ptr noundef nonnull %.0108148)
  %.not134 = icmp eq i8 %i.au, 0
  br i1 %.not134, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %.0108148, ptr %i.d, align 8, !tbaa !55
  %i.av = getelementptr inbounds nuw i8, ptr %.0108148, i64 56
  store ptr %.0111190, ptr %i.av, align 8, !tbaa !55
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %.critedge5, %bb.m, %bb.p, %bb.l, %bb.k
  %.399 = phi i8 [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %bb.p ], [ 1, %.critedge5 ], [ 0, %bb.k ], [ 0, %bb.o ]
  %.394 = phi i8 [ 0, %bb.l ], [ 0, %bb.m ], [ 1, %bb.p ], [ 0, %.critedge5 ], [ 0, %bb.k ], [ 0, %bb.o ]
  %.3 = phi i8 [ %.2154, %bb.l ], [ %.2154, %bb.m ], [ %.2154, %bb.p ], [ %.2154, %.critedge5 ], [ %.2154, %bb.k ], [ 1, %bb.o ]
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ai
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8
  %.pre = load i32, ptr %i.i, align 4, !tbaa !35
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.q
  %i.az = phi i32 [ %i.q, %bb.h ], [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %.pre, %bb.q ] ; 2 uses
  %.3105 = phi i32 [ %.2104151, %bb.h ], [ %.2104151, %bb.i ], [ %.2104151, %bb.j ], [ %i.ay, %bb.q ] ; 2 uses
  %.4100 = phi i8 [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ %.399, %bb.q ] ; 2 uses
  %.495 = phi i8 [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ %.394, %bb.q ] ; 2 uses
  %.4 = phi i8 [ %.2154, %bb.h ], [ %.2154, %bb.i ], [ %.2154, %bb.j ], [ %.3, %bb.q ] ; 2 uses
  %i.ba = add nsw i32 %.0107150, 1
  %.not123.not = icmp slt i32 %.0107150, %i.az
  br i1 %.not123.not, label %bb.e, label %.critedge2.loopexit, !llvm.loop !95

.critedge2.loopexit:                              ; preds = %bb.g, %bb.e, %bb.r
  %.2104.lcssa.ph = phi i32 [ %.3105, %bb.r ], [ %.2104151, %bb.e ], [ %.2104151, %bb.g ]
  %.293.lcssa.ph = phi i8 [ %.495, %bb.r ], [ %.293153, %bb.e ], [ 0, %bb.g ]
  %.2.lcssa.ph = phi i8 [ %.4, %bb.r ], [ %.2154, %bb.e ], [ 1, %bb.g ]
  %.5101.ph = phi i8 [ %.4100, %bb.r ], [ %.298152, %bb.e ], [ 1, %bb.g ]
  %.pre197 = load i32, ptr @MAX_CHAR_SIZE, align 4, !tbaa !8
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.d
  %i.bb = phi i32 [ %i.l, %bb.d ], [ %.pre197, %.critedge2.loopexit ] ; 2 uses
  %.2104.lcssa = phi i32 [ %.1103172, %bb.d ], [ %.2104.lcssa.ph, %.critedge2.loopexit ]
  %.293.lcssa = phi i8 [ 0, %bb.d ], [ %.293.lcssa.ph, %.critedge2.loopexit ] ; 2 uses
  %.2.lcssa = phi i8 [ %.1175, %bb.d ], [ %.2.lcssa.ph, %.critedge2.loopexit ]
  %.5101 = phi i8 [ 0, %bb.d ], [ %.5101.ph, %.critedge2.loopexit ] ; 2 uses
  %i.bc = add nuw nsw i32 %.0106171, 1
  %.not116.not = icmp slt i32 %.0106171, %i.bb
  br i1 %.not116.not, label %bb.c, label %.critedge, !llvm.loop !96

.critedge:                                        ; preds = %bb.c, %.critedge2
  %.197.lcssa.ph = phi i8 [ %.197173, %bb.c ], [ %.5101, %.critedge2 ]
  %.192.lcssa.ph = phi i8 [ %.192174, %bb.c ], [ %.293.lcssa, %.critedge2 ]
  %i.bd = icmp eq i8 %.197.lcssa.ph, 0
  %i.be = icmp ne i8 %.192.lcssa.ph, 0
  %i.bf = and i1 %i.bd, %i.be
  br i1 %i.bf, label %.critedge137, label %.critedge.thread

.critedge.thread:                                 ; preds = %.preheader139, %.critedge
  %i.bg = getelementptr inbounds nuw i8, ptr %.0111190, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !46 ; 2 uses
  %.not120182 = icmp eq ptr %i.bh, null
  br i1 %.not120182, label %._crit_edge186, label %.lr.ph185

.lr.ph185:                                        ; preds = %.critedge.thread, %.lr.ph185
  %.0183 = phi ptr [ %i.bs, %.lr.ph185 ], [ %i.bh, %.critedge.thread ] ; 4 uses
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.bj = getelementptr inbounds nuw i8, ptr %.0183, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !45
  %i.bl = load i32, ptr %i.a, align 4, !tbaa !17
  %i.bm = mul nsw i32 %i.bl, %i.bk
  %i.bn = load i32, ptr %.0183, align 8, !tbaa !44
  %i.bo = add nsw i32 %i.bm, %i.bn
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bp
  store i32 0, ptr %i.bq, align 4, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %.0183, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !47 ; 2 uses
  tail call void @free(ptr noundef nonnull %.0183) #15
  %.not120 = icmp eq ptr %i.bs, null
  br i1 %.not120, label %._crit_edge186, label %.lr.ph185, !llvm.loop !97

._crit_edge186:                                   ; preds = %.lr.ph185, %.critedge.thread
  %.not121 = icmp eq ptr %.0109189, null          ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0111190, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !41 ; 2 uses
  br i1 %.not121, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge186
  %i.bv = getelementptr inbounds nuw i8, ptr %.0109189, i64 72
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !41
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge186
  store ptr %i.bu, ptr %0, align 8, !tbaa !42
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  tail call void @free(ptr noundef nonnull %.0111190) #15
  %i.bw = getelementptr inbounds nuw i8, ptr %.0109189, i64 72
  %spec.select = select i1 %.not121, ptr %0, ptr %i.bw
  br label %bb.v

.critedge137:                                     ; preds = %.critedge, %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %.0111190, i64 72
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge137
  %.1112.in = phi ptr [ %i.bx, %.critedge137 ], [ %spec.select, %bb.u ]
  %.1110 = phi ptr [ %.0111190, %.critedge137 ], [ %.0109189, %bb.u ]
  %.0111 = load ptr, ptr %.1112.in, align 8, !tbaa !42 ; 2 uses
  %.not = icmp eq ptr %.0111, null
  br i1 %.not, label %._crit_edge194, label %bb.b, !llvm.loop !98

._crit_edge194:                                   ; preds = %bb.v, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local signext range(i8 0, 2) i8 @Overlap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37   ; 3 uses
  %i.e = sub nsw i32 %i.b, %i.d                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37   ; 3 uses
  %i.h = sub nsw i32 %i.d, %i.g                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35   ; 3 uses
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
  %i.t = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.u = insertelement <2 x i32> %i.t, i32 %i.m, i64 1
  %i.v = sitofp <2 x i32> %i.u to <2 x float>
  %i.w = insertelement <2 x float> poison, float %i.s, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fdiv <2 x float> %i.x, %i.v
  %2 = fcmp oge <2 x float> %i.y, splat (float 5.000000e-01) ; 2 uses
  %3 = extractelement <2 x i1> %2, i64 0
  %4 = extractelement <2 x i1> %2, i64 1
  %5 = select i1 %4, i1 %3, i1 false
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.z = icmp sgt i32 %i.e, 0                     ; 3 uses
  %i.aa = icmp slt i32 %i.h, 1
  %or.cond7 = select i1 %i.z, i1 %i.aa, i1 false  ; 2 uses
  %i.ab = icmp slt i32 %i.k, 1                    ; 2 uses
  %or.cond9 = select i1 %or.cond7, i1 %i.ab, i1 false
  %i.ac = icmp sgt i32 %i.l, -1
  %or.cond11 = select i1 %or.cond9, i1 %i.ac, i1 false
  br i1 %or.cond11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = uitofp nneg i32 %i.l to float
  %i.ae = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.af = insertelement <2 x i32> %i.ae, i32 %i.m, i64 1
  %i.ag = sitofp <2 x i32> %i.af to <2 x float>
  %i.ah = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fdiv <2 x float> %i.ai, %i.ag
  %6 = fcmp oge <2 x float> %i.aj, splat (float 5.000000e-01) ; 2 uses
  %7 = extractelement <2 x i1> %6, i64 0
  %8 = extractelement <2 x i1> %6, i64 1
  %9 = select i1 %8, i1 %7, i1 false
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %or.cond15 = select i1 %or.cond7, i1 %i.q, i1 false
  %or.cond17 = select i1 %or.cond15, i1 %i.r, i1 false
  br i1 %or.cond17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = sitofp i32 %i.m to float
  %i.al = sitofp i32 %i.n to float
  %i.am = fdiv float %i.ak, %i.al
  %i.an = fcmp oge float %i.am, 5.000000e-01
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %or.cond19 = select i1 %i.z, i1 %i.p, i1 false
  %or.cond21 = select i1 %or.cond19, i1 %i.ab, i1 false
  %or.cond23 = select i1 %or.cond21, i1 %i.r, i1 false
  br i1 %or.cond23, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = sitofp i32 %i.n to float
  %i.ap = sitofp i32 %i.m to float
  %i.aq = fdiv float %i.ao, %i.ap
  %i.ar = fcmp oge float %i.aq, 5.000000e-01
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.as = icmp slt i32 %i.e, 0
  %i.at = icmp sgt i32 %i.h, 0
  %or.cond25 = select i1 %i.as, i1 %i.at, i1 false
  %i.au = icmp sgt i32 %i.k, 0
  %or.cond27 = select i1 %or.cond25, i1 %i.au, i1 false
  %or.cond29 = select i1 %or.cond27, i1 %i.r, i1 false
  br i1 %or.cond29, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = icmp slt i32 %i.h, 0
  %or.cond31 = select i1 %i.z, i1 %i.av, i1 false
  %i.aw = icmp slt i32 %i.k, 0
  %or.cond33 = select i1 %or.cond31, i1 %i.aw, i1 false
  %i.ax = icmp slt i32 %i.l, 0
  %or.cond35 = select i1 %or.cond33, i1 %i.ax, i1 false
  br i1 %or.cond35, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.0.shrunk = phi i1 [ %5, %bb.b ], [ %9, %bb.d ], [ %i.an, %bb.f ], [ %i.ar, %bb.h ], [ false, %bb.i ], [ false, %bb.j ]
  %.0 = zext i1 %.0.shrunk to i8
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @ComputeBoundingBoxes(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %.preheader82

.preheader82:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader82, %.backedge
  %.06788 = phi ptr [ %0, %.preheader82 ], [ %.067.be, %.backedge ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06788, i64 44
  %i.e = load i8, ptr %i.d, align 4, !tbaa !52
  %.not79 = icmp eq i8 %i.e, 0
  br i1 %.not79, label %bb.c, label %.backedge

.backedge:                                        ; preds = %.lr.ph87, %.preheader, %bb.b
  %.067.be.in = getelementptr inbounds nuw i8, ptr %.06788, i64 72
  %.067.be = load ptr, ptr %.067.be.in, align 8, !tbaa !41 ; 2 uses
  %.not = icmp eq ptr %.067.be, null
  br i1 %.not, label %bb.d, label %bb.b, !llvm.loop !99

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.06788, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %.06788, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !37
  %. = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.k) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06788, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !35
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %i.o) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.06788, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !38
  %i.u = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.06788, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !36
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %i.y) ; 2 uses
  %.not8083 = icmp sgt i32 %., %i.p
  br i1 %.not8083, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.c
  %.not8185 = icmp sgt i32 %i.u, %i.z
  br i1 %.not8185, label %.backedge, label %.lr.ph87

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.06684 = phi i32 [ %i.aq, %.lr.ph ], [ %., %bb.c ] ; 4 uses
  %i.aa = load i32, ptr %i.v, align 8, !tbaa !36
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !17
  %i.ac = mul nsw i32 %i.ab, %i.aa
  %i.ad = add nsw i32 %i.ac, %.06684
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  store i8 -1, ptr %i.ag, align 1, !tbaa !20
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !38
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !17
  %i.al = mul nsw i32 %i.ak, %i.aj
  %i.am = add nsw i32 %i.al, %.06684
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  store i8 -1, ptr %i.ap, align 1, !tbaa !20
  %i.aq = add i32 %.06684, 1
  %exitcond.not = icmp eq i32 %.06684, %i.p
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !100

.lr.ph87:                                         ; preds = %.preheader, %.lr.ph87
  %.06586 = phi i32 [ %i.bd, %.lr.ph87 ], [ %i.u, %.preheader ] ; 4 uses
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !17
  %i.as = mul nsw i32 %i.ar, %.06586
  %i.at = add nsw i32 %i.as, %.
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  store i8 -1, ptr %i.aw, align 1, !tbaa !20
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !17
  %i.ay = mul nsw i32 %i.ax, %.06586
  %i.az = add nsw i32 %i.ay, %i.p
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  store i8 -1, ptr %i.bc, align 1, !tbaa !20
  %i.bd = add i32 %.06586, 1
  %exitcond93.not = icmp eq i32 %.06586, %i.z
  br i1 %exitcond93.not, label %.backedge, label %.lr.ph87, !llvm.loop !101

bb.d:                                             ; preds = %.backedge
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !53 ; 2 uses
  %i.bg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bf) #16
  %i.bh = add i64 %i.bg, 9
  %i.bi = tail call noalias ptr @malloc(i64 noundef %i.bh) #13 ; 2 uses
  %i.bj = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bi, ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull %i.bf) #15 ; 0 uses
  %i.bk = load ptr, ptr @stdout, align 8, !tbaa !54 ; 4 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.14, i64 3, i64 1, ptr %i.bk) ; 0 uses
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !18
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.15, i32 noundef %i.bl, i32 noundef %i.bn) #15 ; 0 uses
  %fwrite78 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 4, i64 1, ptr %i.bk) ; 0 uses
  %i.bp = load i32, ptr %i.b, align 4, !tbaa !17
  %i.bq = load i32, ptr %i.bm, align 8, !tbaa !18
  %i.br = mul nsw i32 %i.bq, %i.bp
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph91, label %._crit_edge92

.lr.ph91:                                         ; preds = %bb.d, %.lr.ph91
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph91 ], [ 0, %bb.d ] ; 2 uses
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !20
  %chari = sext i8 %i.bv to i32
  %fputc = tail call i32 @fputc(i32 %chari, ptr %i.bk) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bw = load i32, ptr %i.b, align 4, !tbaa !17
  %i.bx = load i32, ptr %i.bm, align 8, !tbaa !18
  %i.by = mul nsw i32 %i.bx, %i.bw
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i64 %indvars.iv.next, %i.bz
  br i1 %i.ca, label %.lr.ph91, label %._crit_edge92, !llvm.loop !102

._crit_edge92:                                    ; preds = %.lr.ph91, %bb.d
  tail call void @free(ptr noundef nonnull %i.bi) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge92
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #3

attributes #0 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { cold noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !23}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
end_hunk_0
