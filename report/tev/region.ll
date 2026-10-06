Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/region?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@fits_set_region_components:bb.a
  %indvars.iv.next66 = add nsw i64 %indvars.iv65, -1 ; 2 uses
  %i.al = icmp samesign ugt i64 %indvars.iv.next66, %i.af
  br i1 %i.al, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !85

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.am = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ac, %bb.d ] ; 2 uses
  %i.an = add nsw i32 %.14452, 1                  ; 2 uses
  %i.ao = getelementptr inbounds nuw [168 x i8], ptr %i.am, i64 %i.af
  %i.ap = sext i32 %i.an to i64
  %i.aq = getelementptr inbounds [168 x i8], ptr %i.am, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ao, ptr noundef nonnull align 8 dereferenceable(168) %i.aq, i64 168, i1 false), !tbaa.struct !89
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.lr.ph54
  %.2 = phi i32 [ %i.an, %._crit_edge ], [ %.14452, %.lr.ph54 ] ; 2 uses
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, -1
  %i.ar = icmp sgt i64 %indvars.iv68, 0
  br i1 %i.ar, label %.lr.ph54, label %.loopexit.loopexit, !llvm.loop !86

.loopexit.loopexit:                               ; preds = %bb.e
  %.pre74 = load i32, ptr %0, align 8, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader49, %.loopexit.loopexit, %bb.b
  %i.as = phi i32 [ %i.h, %bb.b ], [ %.pre74, %.loopexit.loopexit ], [ %i.h, %.preheader49 ] ; 6 uses
  %.3 = phi i32 [ %.04355, %bb.b ], [ %.2, %.loopexit.loopexit ], [ %.04355, %.preheader49 ]
  %i.at = add nsw i32 %.3, 1                      ; 2 uses
  %i.au = icmp slt i32 %i.at, %i.as
  br i1 %i.au, label %bb.b, label %.preheader, !llvm.loop !87

bb.f:                                             ; preds = %bb.f, %.lr.ph61.new
  %indvars.iv71 = phi i64 [ 0, %.lr.ph61.new ], [ %indvars.iv.next72.1, %bb.f ] ; 3 uses
  %.060 = phi i32 [ 0, %.lr.ph61.new ], [ %spec.select.1, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph61.new ], [ %niter.next.1, %bb.f ]
  %i.av = getelementptr inbounds nuw [168 x i8], ptr %i.f, i64 %indvars.iv71 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !24
  %.not = icmp ne i8 %i.aw, 0
  %i.ax = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %.060, %i.ax     ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %spec.select, ptr %i.ay, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw [168 x i8], ptr %i.f, i64 %indvars.iv71 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 168
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !24
  %.not.1 = icmp ne i8 %i.bb, 0
  %i.bc = zext i1 %.not.1 to i32
  %spec.select.1 = add nuw nsw i32 %spec.select, %i.bc ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 176
  store i32 %spec.select.1, ptr %i.bd, align 8, !tbaa !35
  %indvars.iv.next72.1 = add nuw nsw i64 %indvars.iv71, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge62.loopexit.unr-lcssa, label %bb.f, !llvm.loop !88

._crit_edge62.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge62, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge62.loopexit.unr-lcssa, %.lr.ph61
  %indvars.iv71.epil.init = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next72.1, %._crit_edge62.loopexit.unr-lcssa ]
  %.060.epil.init = phi i32 [ 0, %.lr.ph61 ], [ %spec.select.1, %._crit_edge62.loopexit.unr-lcssa ]
  %lcmp.mod92 = trunc i32 %i.as to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.be = getelementptr inbounds nuw [168 x i8], ptr %i.f, i64 %indvars.iv71.epil.init ; 2 uses
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !24
  %.not.epil = icmp ne i8 %i.bf, 0
  %i.bg = zext i1 %.not.epil to i32
  %spec.select.epil = add nuw nsw i32 %.060.epil.init, %i.bg
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i32 %spec.select.epil, ptr %i.bh, align 8, !tbaa !35
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %.epil.preheader, %._crit_edge62.loopexit.unr-lcssa, %bb.a, %.preheader
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @fits_free_region(ptr noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #19 ; 2 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !15
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph52, label %._crit_edge

.lr.ph52:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph52, %bb.h
  %indvars.iv56 = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next57, %bb.h ] ; 2 uses
  %.03351 = phi ptr [ %i.a, %.lr.ph52 ], [ %.2, %bb.h ] ; 6 uses
  %.03550 = phi i32 [ 10, %.lr.ph52 ], [ %.237, %bb.h ] ; 6 uses
  %.03849 = phi i32 [ 0, %.lr.ph52 ], [ %.139, %bb.h ] ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw [168 x i8], ptr %i.e, i64 %indvars.iv56 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !25
  %i.i = icmp eq i32 %i.h, 11
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.f, align 8, !tbaa !24
  %.not43 = icmp eq i8 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 4 uses
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.l) #18
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = icmp sgt i32 %.03849, 0
  br i1 %i.m, label %.lr.ph.preheader, label %.critedge54

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.n = zext nneg i32 %.03849 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.03351, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93
  %i.q = icmp ne ptr %i.p, %i.l                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.n
  %or.cond = select i1 %i.r, i1 %i.q, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !90

.critedge:                                        ; preds = %.lr.ph
  br i1 %i.q, label %.critedge54, label %bb.h

.critedge54:                                      ; preds = %bb.e, %.critedge
  %i.s = icmp eq i32 %.03849, %.03550
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge54
  %i.t = shl nsw i32 %.03550, 1                   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 3
  %i.w = tail call ptr @realloc(ptr noundef %.03351, i64 noundef %i.v) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge54
  %.136 = phi i32 [ %i.t, %bb.f ], [ %.03550, %.critedge54 ]
  %.134 = phi ptr [ %i.w, %bb.f ], [ %.03351, %.critedge54 ] ; 2 uses
  %i.x = sext i32 %.03849 to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %.134, i64 %i.x
  store ptr %i.l, ptr %i.y, align 8, !tbaa !93
  tail call void @free(ptr noundef %i.l) #18
  %i.z = add nsw i32 %.03849, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %.critedge, %bb.g, %bb.d
  %.139 = phi i32 [ %.03849, %bb.d ], [ %.03849, %.critedge ], [ %i.z, %bb.g ], [ %.03849, %bb.b ]
  %.237 = phi i32 [ %.03550, %bb.d ], [ %.03550, %.critedge ], [ %.136, %bb.g ], [ %.03550, %bb.b ]
  %.2 = phi ptr [ %.03351, %bb.d ], [ %.03351, %.critedge ], [ %.134, %bb.g ], [ %.03351, %bb.b ] ; 2 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.aa = load i32, ptr %0, align 8, !tbaa !15
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next57, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.033.lcssa = phi ptr [ %i.a, %bb.a ], [ %.2, %bb.h ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !16 ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.ae) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  tail call void @free(ptr noundef nonnull %0) #18
  tail call void @free(ptr noundef %.033.lcssa) #18
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @fits_in_region(double noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %i.g = insertelement <2 x double> poison, double %0, i64 0
  %i.h = insertelement <2 x double> %i.g, double %1, i64 1 ; 2 uses
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bf
  %.0536 = phi i32 [ %.3, %bb.bf ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0396535 = phi i32 [ %.1397, %bb.bf ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0398534 = phi i32 [ %.1399, %bb.bf ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %.0400533 = phi i32 [ %i.qq, %bb.bf ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0401532 = phi ptr [ %i.qr, %bb.bf ], [ %i.d, %.lr.ph.preheader ] ; 74 uses
  %i.j = icmp ne i32 %.0400533, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0401532, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !35 ; 2 uses
  %.not = icmp eq i32 %.pre, %.0398534
  %or.cond567 = select i1 %i.j, i1 %.not, i1 false
  br i1 %or.cond567, label %bb.b, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %i.k = icmp ne i32 %.0396535, 0
  %i.l = icmp ne i32 %.0536, 0
  %i.m = select i1 %i.k, i1 true, i1 %i.l
  %i.n = zext i1 %i.m to i32
  %i.o = load i8, ptr %.0401532, align 8, !tbaa !24
  %.not441 = icmp eq i8 %i.o, 0
  %i.p = zext i1 %.not441 to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.lr.ph._crit_edge
  %.1399 = phi i32 [ %.pre, %.lr.ph._crit_edge ], [ %.0398534, %.lr.ph ]
  %.1397 = phi i32 [ %i.n, %.lr.ph._crit_edge ], [ %.0396535, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %i.p, %.lr.ph._crit_edge ], [ %.0536, %.lr.ph ]
  %.not442 = icmp ne i32 %.1, 0                   ; 2 uses
  %i.q = load i8, ptr %.0401532, align 8, !tbaa !24
  %.not444 = icmp eq i8 %i.q, 0                   ; 2 uses
  br i1 %.not442, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not444, label %bb.bf, label %bb.d

.critedge:                                        ; preds = %bb.b
  br i1 %.not444, label %bb.d, label %bb.bf

bb.d:                                             ; preds = %.critedge, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.0401532, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !25
  switch i32 %i.s, label %Pt_in_Poly.exit [
    i32 6, label %bb.e
    i32 7, label %bb.f
    i32 8, label %bb.h
    i32 9, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 10, label %bb.m
    i32 4, label %bb.q
    i32 5, label %bb.r
    i32 1, label %bb.t
    i32 0, label %bb.w
    i32 11, label %bb.x
    i32 12, label %bb.an
    i32 13, label %bb.at
    i32 14, label %bb.az
  ]

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.0401532, i64 48
  %i.u = load double, ptr %i.t, align 8, !tbaa !19
  %i.v = fsub double %0, %i.u                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0401532, i64 56
  %i.x = load double, ptr %i.w, align 8, !tbaa !19
  %i.y = fsub double %1, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.0401532, i64 136
  %i.aa = fneg double %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %.0401532, i64 64
  %i.ac = load <2 x double>, ptr %i.z, align 8, !tbaa !19 ; 2 uses
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ae = insertelement <2 x double> poison, double %i.y, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x double> %i.af, %i.ac
  %i.ah = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.aa, i64 1
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ad, <2 x double> %i.ag)
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.al = load <2 x double>, ptr %i.ab, align 8, !tbaa !19
  %i.am = fmul <2 x double> %i.al, splat (double 5.000000e-01) ; 2 uses
  %i.an = fneg <2 x double> %i.am
  %i.ao = shufflevector <2 x double> %i.am, <2 x double> %i.an, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ap = fcmp ule <4 x double> %i.ak, %i.ao
  %i.aq = fcmp uge <4 x double> %i.ak, %i.ao
  %i.ar = shufflevector <4 x i1> %i.ap, <4 x i1> %i.aq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.as = freeze <4 x i1> %i.ar
  %i.at = bitcast <4 x i1> %i.as to i4
  %i.au = icmp eq i4 %i.at, -1
  %spec.select484 = zext i1 %i.au to i32
  br label %Pt_in_Poly.exit

bb.f:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %.0401532, i64 48
  %i.aw = load double, ptr %i.av, align 8, !tbaa !19
  %i.ax = fsub double %0, %i.aw                   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0401532, i64 56
  %i.az = load double, ptr %i.ay, align 8, !tbaa !19
  %i.ba = fsub double %1, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.0401532, i64 136
  %i.bc = fneg double %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %.0401532, i64 80
  %i.be = load <2 x double>, ptr %i.bb, align 8, !tbaa !19 ; 2 uses
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bg = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bi = fmul <2 x double> %i.bh, %i.be
  %i.bj = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.bc, i64 1 ; 2 uses
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bf, <2 x double> %i.bi)
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bn = load <2 x double>, ptr %i.bd, align 8, !tbaa !19
  %i.bo = fmul <2 x double> %i.bn, splat (double 5.000000e-01) ; 2 uses
  %i.bp = fneg <2 x double> %i.bo
  %i.bq = shufflevector <2 x double> %i.bo, <2 x double> %i.bp, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.br = fcmp ogt <4 x double> %i.bm, %i.bq
  %i.bs = fcmp olt <4 x double> %i.bm, %i.bq
  %i.bt = shufflevector <4 x i1> %i.br, <4 x i1> %i.bs, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bu = freeze <4 x i1> %i.bt
  %i.bv = bitcast <4 x i1> %i.bu to i4
  %.not579.a = icmp eq i4 %i.bv, 0
  br i1 %.not579.a, label %bb.g, label %Pt_in_Poly.exit

bb.g:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %.0401532, i64 152
  %i.bx = getelementptr inbounds nuw i8, ptr %.0401532, i64 64
  %i.by = load <2 x double>, ptr %i.bw, align 8, !tbaa !19 ; 2 uses
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ca = fmul <2 x double> %i.bh, %i.by
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bz, <2 x double> %i.ca)
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.cd = load <2 x double>, ptr %i.bx, align 8, !tbaa !19
  %i.ce = fmul <2 x double> %i.cd, splat (double 5.000000e-01) ; 2 uses
  %i.cf = fneg <2 x double> %i.ce
  %i.cg = shufflevector <2 x double> %i.ce, <2 x double> %i.cf, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ch = fcmp ugt <4 x double> %i.cc, %i.cg
  %i.ci = fcmp ult <4 x double> %i.cc, %i.cg
  %i.cj = shufflevector <4 x i1> %i.ch, <4 x i1> %i.ci, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ck = freeze <4 x i1> %i.cj
  %i.cl = bitcast <4 x i1> %i.ck to i4
  %i.cm = icmp ne i4 %i.cl, 0
  %spec.select485 = zext i1 %i.cm to i32
  br label %Pt_in_Poly.exit

bb.h:                                             ; preds = %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %.0401532, i64 88
  %i.co = load double, ptr %i.cn, align 8, !tbaa !19
  %i.cp = fsub double %0, %i.co                   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0401532, i64 96
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !19
  %i.cs = fsub double %1, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %.0401532, i64 136
  %i.cu = fneg double %i.cp
  %i.cv = getelementptr inbounds nuw i8, ptr %.0401532, i64 152
  %i.cw = load <2 x double>, ptr %i.ct, align 8, !tbaa !19 ; 2 uses
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cy = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x double> %i.cz, %i.cw
  %i.db = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.cu, i64 1
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.cx, <2 x double> %i.da)
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.df = load <2 x double>, ptr %i.cv, align 8, !tbaa !19 ; 2 uses
  %i.dg = fneg <2 x double> %i.df
  %i.dh = shufflevector <2 x double> %i.df, <2 x double> %i.dg, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.di = fcmp ule <4 x double> %i.de, %i.dh
  %i.dj = fcmp uge <4 x double> %i.de, %i.dh
  %i.dk = shufflevector <4 x i1> %i.di, <4 x i1> %i.dj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dl = freeze <4 x i1> %i.dk
  %i.dm = bitcast <4 x i1> %i.dl to i4
  %i.dn = icmp eq i4 %i.dm, -1
  %spec.select486 = zext i1 %i.dn to i32
  br label %Pt_in_Poly.exit

bb.i:                                             ; preds = %bb.d
  %i.do = getelementptr inbounds nuw i8, ptr %.0401532, i64 48
  %i.dp = load double, ptr %i.do, align 8, !tbaa !19
  %i.dq = fsub double %0, %i.dp                   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0401532, i64 56
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !19
  %i.dt = fsub double %1, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.0401532, i64 136
  %i.dv = fneg double %i.dq
  %i.dw = getelementptr inbounds nuw i8, ptr %.0401532, i64 64
  %i.dx = load <2 x double>, ptr %i.du, align 8, !tbaa !19 ; 2 uses
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dz = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x double> %i.ea, %i.dx
  %i.ec = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.ed = insertelement <2 x double> %i.ec, double %i.dv, i64 1
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.dy, <2 x double> %i.eb)
  %i.ef = load <2 x double>, ptr %i.dw, align 8, !tbaa !19
  %i.eg = fmul <2 x double> %i.ef, splat (double 5.000000e-01)
  %i.eh = fdiv <2 x double> %i.ee, %i.eg
  %i.ei = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.eh)
  %i.ej = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ei)
  %i.ek = fcmp ule double %i.ej, 1.000000e+00
  %spec.select = zext i1 %i.ek to i32
  br label %Pt_in_Poly.exit

bb.j:                                             ; preds = %bb.d
  %i.el = getelementptr inbounds nuw i8, ptr %.0401532, i64 48
  %i.em = load double, ptr %i.el, align 8, !tbaa !19
  %i.en = fsub double %0, %i.em                   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0401532, i64 56
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !19
  %i.eq = fsub double %1, %i.ep                   ; 2 uses
  %i.er = fmul double %i.eq, %i.eq
  %i.es = tail call double @llvm.fmuladd.f64(double %i.en, double %i.en, double %i.er)
  %i.et = getelementptr inbounds nuw i8, ptr %.0401532, i64 152
  %i.eu = load double, ptr %i.et, align 8, !tbaa !19
  %i.ev = fcmp ule double %i.es, %i.eu
  %spec.select463 = zext i1 %i.ev to i32
  br label %Pt_in_Poly.exit

bb.k:                                             ; preds = %bb.d
  %i.ew = getelementptr inbounds nuw i8, ptr %.0401532, i64 48
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !19
  %i.ey = fsub double %0, %i.ex                   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0401532, i64 56
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !19
  %i.fb = fsub double %1, %i.fa                   ; 2 uses
  %i.fc = fmul double %i.fb, %i.fb
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.ey, double %i.fc) ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0401532, i64 152
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !19
  %i.fg = fcmp olt double %i.fd, %i.ff
  br i1 %i.fg, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fh = getelementptr inbounds nuw i8, ptr %.0401532, i64 160
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !19
  %i.fj = fcmp ogt double %i.fd, %i.fi
  br i1 %i.fj, label %bb.v, label %Pt_in_Poly.exit

bb.m:                                             ; preds = %bb.d
  %i.fk = getelementptr inbounds nuw i8, ptr %.0401532, i64 48
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !19
  %i.fm = fsub double %0, %i.fl                   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0401532, i64 56
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !19
  %i.fp = fsub double %1, %i.fo                   ; 2 uses
  %i.fq = fcmp une double %i.fm, 0.000000e+00
  %i.fr = fcmp une double %i.fp, 0.000000e+00
  %or.cond = select i1 %i.fq, i1 true, i1 %i.fr
  br i1 %or.cond, label %bb.n, label %Pt_in_Poly.exit

bb.n:                                             ; preds = %bb.m
  %i.fs = tail call double @atan2(double noundef %i.fp, double noundef %i.fm) #18
  %i.ft = fmul double %i.fs, 1.800000e+02
  %i.fu = fdiv double %i.ft, f0x400921FB54442D18  ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0401532, i64 64
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !19 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0401532, i64 72
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !19 ; 2 uses
  %i.fz = fcmp ugt double %i.fw, %i.fy
  %i.ga = fcmp uge double %i.fu, %i.fw            ; 2 uses
  %i.gb = fcmp ule double %i.fu, %i.fy            ; 2 uses
  br i1 %i.fz, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %or.cond464.not = and i1 %i.ga, %i.gb
  %spec.select487 = zext i1 %or.cond464.not to i32
  br label %Pt_in_Poly.exit

bb.p:                                             ; preds = %bb.n
  %or.cond465.not = or i1 %i.ga, %i.gb
  %spec.select488 = zext i1 %or.cond465.not to i32
  br label %Pt_in_Poly.exit

bb.q:                                             ; preds = %bb.d
  %i.gc = getelementptr inbounds nuw i8, ptr %.0401532, i64 48
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !19
  %i.ge = fsub double %0, %i.gd                   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0401532, i64 56
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !19
  %i.gh = fsub double %1, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %.0401532, i64 136
  %i.gj = fneg double %i.ge
  %i.gk = getelementptr inbounds nuw i8, ptr %.0401532, i64 64
  %i.gl = load <2 x double>, ptr %i.gi, align 8, !tbaa !19 ; 2 uses
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gn = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = fmul <2 x double> %i.go, %i.gl
  %i.gq = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %i.gj, i64 1
  %i.gs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> %i.gm, <2 x double> %i.gp)
  %i.gt = load <2 x double>, ptr %i.gk, align 8, !tbaa !19
  %i.gu = fdiv <2 x double> %i.gs, %i.gt          ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.gu, %i.gu
  %i.gv = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.gw = extractelement <2 x double> %i.gu, i64 0 ; 2 uses
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.gw, double %i.gv)
  %i.gy = fcmp ule double %i.gx, 1.000000e+00
  %spec.select466 = zext i1 %i.gy to i32
  br label %Pt_in_Poly.exit

bb.r:                                             ; preds = %bb.d
  %i.gz = getelementptr inbounds nuw i8, ptr %.0401532, i64 48
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !19
  %i.hb = fsub double %0, %i.ha                   ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.0401532, i64 56
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !19
  %i.he = fsub double %1, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %.0401532, i64 136
  %i.hg = fneg double %i.hb
  %i.hh = getelementptr inbounds nuw i8, ptr %.0401532, i64 80
  %i.hi = load <2 x double>, ptr %i.hf, align 8, !tbaa !19 ; 2 uses
  %i.hj = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hk = insertelement <2 x double> poison, double %i.he, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hm = fmul <2 x double> %i.hl, %i.hi
  %i.hn = insertelement <2 x double> poison, double %i.hb, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %i.hg, i64 1 ; 2 uses
  %i.hp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.hj, <2 x double> %i.hm)
  %i.hq = load <2 x double>, ptr %i.hh, align 8, !tbaa !19
  %i.hr = fdiv <2 x double> %i.hp, %i.hq          ; 3 uses
  %foldExtExtBinop569 = fmul <2 x double> %i.hr, %i.hr
  %i.hs = extractelement <2 x double> %foldExtExtBinop569, i64 1
  %i.ht = extractelement <2 x double> %i.hr, i64 0 ; 2 uses
  %i.hu = tail call double @llvm.fmuladd.f64(double %i.ht, double %i.ht, double %i.hs)
  %i.hv = fcmp ogt double %i.hu, 1.000000e+00
  br i1 %i.hv, label %Pt_in_Poly.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hw = getelementptr inbounds nuw i8, ptr %.0401532, i64 152
  %i.hx = getelementptr inbounds nuw i8, ptr %.0401532, i64 64
  %i.hy = load <2 x double>, ptr %i.hw, align 8, !tbaa !19 ; 2 uses
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ia = fmul <2 x double> %i.hl, %i.hy
  %i.ib = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.hz, <2 x double> %i.ia)
  %i.ic = load <2 x double>, ptr %i.hx, align 8, !tbaa !19
  %i.id = fdiv <2 x double> %i.ib, %i.ic          ; 3 uses
  %foldExtExtBinop571 = fmul <2 x double> %i.id, %i.id
  %i.ie = extractelement <2 x double> %foldExtExtBinop571, i64 1
  %i.if = extractelement <2 x double> %i.id, i64 0 ; 2 uses
  %i.ig = tail call double @llvm.fmuladd.f64(double %i.if, double %i.if, double %i.ie)
  %i.ih = fcmp uge double %i.ig, 1.000000e+00
  %spec.select467 = zext i1 %i.ih to i32
  br label %Pt_in_Poly.exit

bb.t:                                             ; preds = %bb.d
  %i.ii = getelementptr inbounds nuw i8, ptr %.0401532, i64 48
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !19
  %i.ik = fsub double %0, %i.ij                   ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.0401532, i64 56
  %i.im = load double, ptr %i.il, align 8, !tbaa !19
  %i.in = fsub double %1, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %.0401532, i64 136
  %i.ip = fneg double %i.ik
  %i.iq = load <2 x double>, ptr %i.io, align 8, !tbaa !19 ; 2 uses
  %i.ir = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.is = insertelement <2 x double> poison, double %i.in, i64 0
  %i.it = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iu = fmul <2 x double> %i.it, %i.iq
  %i.iv = insertelement <2 x double> poison, double %i.ik, i64 0
  %i.iw = insertelement <2 x double> %i.iv, double %i.ip, i64 1
  %i.ix = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iw, <2 x double> %i.ir, <2 x double> %i.iu) ; 3 uses
  %i.iy = extractelement <2 x double> %i.ix, i64 1
  %i.iz = fcmp oge double %i.iy, 5.000000e-01
  %i.ja = fcmp olt <2 x double> %i.ix, splat (double -5.000000e-01) ; 2 uses
  %i.jb = extractelement <2 x i1> %i.ja, i64 1
  %or.cond3 = or i1 %i.jb, %i.iz
  %i.jc = extractelement <2 x i1> %i.ja, i64 0
  %or.cond5 = or i1 %or.cond3, %i.jc
  br i1 %or.cond5, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.jd = getelementptr inbounds nuw i8, ptr %.0401532, i64 152
  %i.je = load double, ptr %i.jd, align 8, !tbaa !19
  %i.jf = extractelement <2 x double> %i.ix, i64 0
  %i.jg = fcmp ult double %i.jf, %i.je
  br i1 %i.jg, label %Pt_in_Poly.exit, label %bb.v

bb.v:                                             ; preds = %bb.k, %bb.l, %bb.u, %bb.t
  br label %Pt_in_Poly.exit

bb.w:                                             ; preds = %bb.d
  %i.jh = getelementptr inbounds nuw i8, ptr %.0401532, i64 48
  %i.ji = load <2 x double>, ptr %i.jh, align 8, !tbaa !19
  %i.jj = shufflevector <2 x double> %i.ji, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jk = fsub <4 x double> %i.i, %i.jj           ; 2 uses
  %i.jl = fcmp ult <4 x double> %i.jk, <double 5.000000e-01, double 5.000000e-01, double -5.000000e-01, double -5.000000e-01>
  %i.jm = fcmp uge <4 x double> %i.jk, <double 5.000000e-01, double 5.000000e-01, double -5.000000e-01, double -5.000000e-01>
  %i.jn = shufflevector <4 x i1> %i.jl, <4 x i1> %i.jm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jo = freeze <4 x i1> %i.jn
  %i.jp = bitcast <4 x i1> %i.jo to i4
  %i.jq = icmp eq i4 %i.jp, -1
  %spec.select468 = zext i1 %i.jq to i32
  br label %Pt_in_Poly.exit

bb.x:                                             ; preds = %bb.d
  %i.jr = getelementptr inbounds nuw i8, ptr %.0401532, i64 16
  %i.js = load double, ptr %i.jr, align 8, !tbaa !36
  %i.jt = fcmp olt double %0, %i.js
  br i1 %i.jt, label %Pt_in_Poly.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ju = getelementptr inbounds nuw i8, ptr %.0401532, i64 24
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !37
  %i.jw = fcmp ogt double %0, %i.jv
  br i1 %i.jw, label %Pt_in_Poly.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jx = getelementptr inbounds nuw i8, ptr %.0401532, i64 32
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !38
  %i.jz = fcmp olt double %1, %i.jy
  br i1 %i.jz, label %Pt_in_Poly.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ka = getelementptr inbounds nuw i8, ptr %.0401532, i64 40
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !39
  %i.kc = fcmp ogt double %1, %i.kb
  br i1 %i.kc, label %Pt_in_Poly.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kd = getelementptr inbounds nuw i8, ptr %.0401532, i64 48
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !19 ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.0401532, i64 56
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !19 ; 5 uses
  %i.kh = add nsw i32 %i.ke, -1                   ; 2 uses
  %i.ki = icmp sgt i32 %i.ke, 0
  br i1 %i.ki, label %.lr.ph.preheader.i, label %Pt_in_Poly.exit

.lr.ph.preheader.i:                               ; preds = %bb.ab
  %i.kj = zext nneg i32 %i.kh to i64
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.kj
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !18
  %i.km = zext nneg i32 %i.ke to i64
  %i.kn = getelementptr [8 x i8], ptr %i.kg, i64 %i.km
  %i.ko = getelementptr i8, ptr %i.kn, i64 -16
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !18
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.am, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.am ] ; 3 uses
  %.078.i = phi double [ %i.kl, %.lr.ph.preheader.i ], [ %i.ku, %bb.am ] ; 5 uses
  %.06077.i = phi double [ %i.kp, %.lr.ph.preheader.i ], [ %i.kr, %bb.am ] ; 4 uses
  %.06176.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.am ] ; 8 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv.i
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !18 ; 4 uses
  %i.ks = or disjoint i64 %indvars.iv.i, 1        ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.ks
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !18 ; 5 uses
  %i.kv = fcmp ule double %1, %.078.i
  %i.kw = fcmp ult double %1, %i.ku
  %or.cond.i = select i1 %i.kv, i1 true, i1 %i.kw
  br i1 %or.cond.i, label %bb.ac, label %bb.am

bb.ac:                                            ; preds = %.lr.ph.i
  %i.kx = fcmp uge double %1, %.078.i
  %i.ky = fcmp ugt double %1, %i.ku
  %or.cond72.i = select i1 %i.kx, i1 true, i1 %i.ky
  br i1 %or.cond72.i, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.kz = fcmp ule double %0, %.06077.i
  %i.la = fcmp ult double %0, %i.kr
  %or.cond73.i = select i1 %i.kz, i1 true, i1 %i.la
  br i1 %or.cond73.i, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %i.lb = fcmp oge double %0, %.06077.i
  %i.lc = fcmp ogt double %0, %i.kr
  %or.cond74.i = select i1 %i.lb, i1 true, i1 %i.lc
  br i1 %or.cond74.i, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.ld = fsub double %1, %.078.i                 ; 2 uses
  %i.le = fsub double %i.ku, %.078.i              ; 2 uses
  %i.lf = tail call double @llvm.fabs.f64(double %i.le)
  %i.lg = fcmp olt double %i.lf, 1.000000e-10
  br i1 %i.lg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.lh = tail call double @llvm.fabs.f64(double %i.ld)
  %i.li = fcmp olt double %i.lh, 1.000000e-10
  br i1 %i.li, label %Pt_in_Poly.exit, label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.lj = fsub double %i.kr, %.06077.i
  %i.lk = fdiv double %i.lj, %i.le
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.lk, double %i.ld, double %.06077.i)
  %i.lm = fsub double %i.ll, %0                   ; 2 uses
  %i.ln = fcmp olt double %i.lm, -1.000000e-10
  br i1 %i.ln, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.lo = fcmp olt double %i.lm, 1.000000e-10
  br i1 %i.lo, label %Pt_in_Poly.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ae
  %i.lp = fcmp une double %1, %.078.i
  br i1 %i.lp, label %bb.ak, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.aj
  %i.lq = trunc nuw nsw i64 %i.ks to i32
  br label %.preheader.i

bb.ak:                                            ; preds = %bb.aj
  %i.lr = sub nuw nsw i32 1, %.06176.i
  br label %bb.am

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.062.i = phi i32 [ %.163.i, %.preheader.i ], [ %i.lq, %.preheader.preheader.i ] ; 2 uses
  %i.ls = icmp sgt i32 %.062.i, 1
  %i.lt = add nsw i32 %.062.i, -2
  %.163.i = select i1 %i.ls, i32 %i.lt, i32 %i.kh ; 2 uses
  %i.lu = sext i32 %.163.i to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.kg, i64 %i.lu
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !18 ; 2 uses
  %i.lx = fcmp oeq double %1, %i.lw
  br i1 %i.lx, label %.preheader.i, label %bb.al, !llvm.loop !94

bb.al:                                            ; preds = %.preheader.i
  %i.ly = fsub double %i.ku, %1
  %i.lz = fsub double %1, %i.lw
  %i.ma = fmul double %i.ly, %i.lz
  %i.mb = fcmp ogt double %i.ma, 0.000000e+00
  %i.mc = sub nuw nsw i32 1, %.06176.i
  %spec.select.i = select i1 %i.mb, i32 %i.mc, i32 %.06176.i
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ah, %bb.ag, %bb.ad, %bb.ac, %.lr.ph.i
  %.1.i = phi i32 [ %.06176.i, %.lr.ph.i ], [ %.06176.i, %bb.ac ], [ %.06176.i, %bb.ad ], [ %.06176.i, %bb.ag ], [ %.06176.i, %bb.ah ], [ %i.lr, %bb.ak ], [ %spec.select.i, %bb.al ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.md = trunc nuw i64 %indvars.iv.next.i to i32
  %i.me = icmp sgt i32 %i.ke, %i.md
  br i1 %i.me, label %.lr.ph.i, label %Pt_in_Poly.exit, !llvm.loop !95

bb.an:                                            ; preds = %bb.d
  %i.mf = getelementptr inbounds nuw i8, ptr %.0401532, i64 48
  %3 = load <2 x double>, ptr %i.mf, align 8, !tbaa !19
  %4 = fsub <2 x double> %i.h, %3                 ; 3 uses
  %5 = extractelement <2 x double> %4, i64 1      ; 3 uses
  %6 = fmul double %5, %5
  %7 = extractelement <2 x double> %4, i64 0      ; 3 uses
  %i.mg = tail call double @llvm.fmuladd.f64(double %7, double %7, double %6) ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.0401532, i64 152
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !19
  %i.mj = fcmp olt double %i.mg, %i.mi
  br i1 %i.mj, label %Pt_in_Poly.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mk = getelementptr inbounds nuw i8, ptr %.0401532, i64 160
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !19
  %i.mm = fcmp ogt double %i.mg, %i.ml
  br i1 %i.mm, label %Pt_in_Poly.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %8 = fcmp une <2 x double> %4, zeroinitializer
  %9 = bitcast <2 x i1> %8 to i2
  %.not581 = icmp eq i2 %9, 0
  br i1 %.not581, label %Pt_in_Poly.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mn = tail call double @atan2(double noundef %5, double noundef %7) #18
  %i.mo = fmul double %i.mn, 1.800000e+02
  %i.mp = fdiv double %i.mo, f0x400921FB54442D18  ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.0401532, i64 64
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !19 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.0401532, i64 72
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !19 ; 2 uses
  %i.mu = fcmp ugt double %i.mr, %i.mt
  %i.mv = fcmp uge double %i.mp, %i.mr            ; 2 uses
  %i.mw = fcmp ule double %i.mp, %i.mt            ; 2 uses
  br i1 %i.mu, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %or.cond469.not = and i1 %i.mv, %i.mw
  %spec.select489 = zext i1 %or.cond469.not to i32
  br label %Pt_in_Poly.exit

bb.as:                                            ; preds = %bb.aq
  %or.cond470.not = or i1 %i.mv, %i.mw
  %spec.select490 = zext i1 %or.cond470.not to i32
  br label %Pt_in_Poly.exit

bb.at:                                            ; preds = %bb.d
  %i.mx = getelementptr inbounds nuw i8, ptr %.0401532, i64 48
  %i.my = load double, ptr %i.mx, align 8, !tbaa !19
  %i.mz = fsub double %0, %i.my                   ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.0401532, i64 56
  %i.nb = load double, ptr %i.na, align 8, !tbaa !19
  %i.nc = fsub double %1, %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %.0401532, i64 136
  %i.ne = fneg double %i.mz
  %i.nf = load <2 x double>, ptr %i.nd, align 8, !tbaa !19 ; 2 uses
  %i.ng = insertelement <2 x double> poison, double %i.nc, i64 0
  %i.nh = shufflevector <2 x double> %i.ng, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ni = shufflevector <2 x double> %i.nf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nj = fmul <2 x double> %i.nh, %i.ni
  %i.nk = insertelement <2 x double> poison, double %i.ne, i64 0
  %i.nl = insertelement <2 x double> %i.nk, double %i.mz, i64 1
  %i.nm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.nf, <2 x double> %i.nj) ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.0401532, i64 104
  %i.no = shufflevector <2 x double> %i.nm, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.np = load <2 x double>, ptr %i.nn, align 8, !tbaa !19
  %i.nq = fdiv <2 x double> %i.no, %i.np          ; 3 uses
  %foldExtExtBinop573 = fmul <2 x double> %i.nq, %i.nq
  %i.nr = extractelement <2 x double> %foldExtExtBinop573, i64 1
  %i.ns = extractelement <2 x double> %i.nq, i64 0 ; 2 uses
  %i.nt = tail call double @llvm.fmuladd.f64(double %i.ns, double %i.ns, double %i.nr)
  %i.nu = fcmp ogt double %i.nt, 1.000000e+00
  br i1 %i.nu, label %Pt_in_Poly.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nv = getelementptr inbounds nuw i8, ptr %.0401532, i64 88
  %i.nw = load <2 x double>, ptr %i.nv, align 8, !tbaa !19
  %i.nx = fdiv <2 x double> %i.no, %i.nw          ; 3 uses
  %foldExtExtBinop575 = fmul <2 x double> %i.nx, %i.nx
  %i.ny = extractelement <2 x double> %foldExtExtBinop575, i64 1
  %i.nz = extractelement <2 x double> %i.nx, i64 0 ; 2 uses
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.nz, double %i.nz, double %i.ny)
  %i.ob = fcmp olt double %i.oa, 1.000000e+00
  br i1 %i.ob, label %Pt_in_Poly.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.oc = fcmp une <2 x double> %i.nm, zeroinitializer
  %10 = bitcast <2 x i1> %i.oc to i2
  %.not580 = icmp eq i2 %10, 0
  br i1 %.not580, label %Pt_in_Poly.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.od = extractelement <2 x double> %i.nm, i64 0
  %i.oe = extractelement <2 x double> %i.nm, i64 1
  %i.of = tail call double @atan2(double noundef %i.od, double noundef %i.oe) #18
  %i.og = fmul double %i.of, 1.800000e+02
  %i.oh = fdiv double %i.og, f0x400921FB54442D18  ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.0401532, i64 64
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !19 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.0401532, i64 72
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !19 ; 2 uses
  %i.om = fcmp ugt double %i.oj, %i.ol
  %i.on = fcmp uge double %i.oh, %i.oj            ; 2 uses
  %i.oo = fcmp ule double %i.oh, %i.ol            ; 2 uses
  br i1 %i.om, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %or.cond471.not = and i1 %i.on, %i.oo
  %spec.select491 = zext i1 %or.cond471.not to i32
  br label %Pt_in_Poly.exit

bb.ay:                                            ; preds = %bb.aw
  %or.cond472.not = or i1 %i.on, %i.oo
  %spec.select492 = zext i1 %or.cond472.not to i32
  br label %Pt_in_Poly.exit

bb.az:                                            ; preds = %bb.d
  %i.op = getelementptr inbounds nuw i8, ptr %.0401532, i64 48
  %i.oq = load double, ptr %i.op, align 8, !tbaa !19
  %i.or = fsub double %0, %i.oq                   ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.0401532, i64 56
  %i.ot = load double, ptr %i.os, align 8, !tbaa !19
  %i.ou = fsub double %1, %i.ot
  %i.ov = getelementptr inbounds nuw i8, ptr %.0401532, i64 136
  %i.ow = fneg double %i.or
  %i.ox = load <2 x double>, ptr %i.ov, align 8, !tbaa !19 ; 2 uses
  %i.oy = insertelement <2 x double> poison, double %i.ou, i64 0
  %i.oz = shufflevector <2 x double> %i.oy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pa = shufflevector <2 x double> %i.ox, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pb = fmul <2 x double> %i.oz, %i.pa
  %i.pc = insertelement <2 x double> poison, double %i.ow, i64 0
  %i.pd = insertelement <2 x double> %i.pc, double %i.or, i64 1
  %i.pe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pd, <2 x double> %i.ox, <2 x double> %i.pb) ; 4 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.0401532, i64 104
  %i.pg = load <2 x double>, ptr %i.pf, align 8, !tbaa !19
  %i.ph = fmul <2 x double> %i.pg, splat (double 5.000000e-01)
  %i.pi = shufflevector <2 x double> %i.ph, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.pj = fneg <2 x double> %i.pi
  %i.pk = shufflevector <2 x double> %i.pe, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.pl = shufflevector <2 x double> %i.pi, <2 x double> %i.pj, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.pm = fcmp ogt <4 x double> %i.pk, %i.pl
  %i.pn = fcmp olt <4 x double> %i.pk, %i.pl
  %i.po = shufflevector <4 x i1> %i.pm, <4 x i1> %i.pn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.pp = freeze <4 x i1> %i.po
  %i.pq = bitcast <4 x i1> %i.pp to i4
  %.not577 = icmp eq i4 %i.pq, 0
  br i1 %.not577, label %bb.ba, label %Pt_in_Poly.exit

bb.ba:                                            ; preds = %bb.az
  %i.pr = getelementptr inbounds nuw i8, ptr %.0401532, i64 88
  %i.ps = load <2 x double>, ptr %i.pr, align 8, !tbaa !19
  %i.pt = fmul <2 x double> %i.ps, splat (double 5.000000e-01)
  %i.pu = shufflevector <2 x double> %i.pt, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.pv = fneg <2 x double> %i.pu
  %i.pw = shufflevector <2 x double> %i.pu, <2 x double> %i.pv, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.px = fcmp ugt <4 x double> %i.pk, %i.pw
  %i.py = fcmp ult <4 x double> %i.pk, %i.pw
  %i.pz = shufflevector <4 x i1> %i.px, <4 x i1> %i.py, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qa = freeze <4 x i1> %i.pz
  %i.qb = bitcast <4 x i1> %i.qa to i4
  %.not578 = icmp eq i4 %i.qb, 0
  br i1 %.not578, label %Pt_in_Poly.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qc = fcmp une <2 x double> %i.pe, zeroinitializer
  %11 = bitcast <2 x i1> %i.qc to i2
  %.not579 = icmp eq i2 %11, 0
  br i1 %.not579, label %Pt_in_Poly.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qd = extractelement <2 x double> %i.pe, i64 0
  %i.qe = extractelement <2 x double> %i.pe, i64 1
  %i.qf = tail call double @atan2(double noundef %i.qd, double noundef %i.qe) #18
  %i.qg = fmul double %i.qf, 1.800000e+02
  %i.qh = fdiv double %i.qg, f0x400921FB54442D18  ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.0401532, i64 64
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !19 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.0401532, i64 72
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !19 ; 2 uses
  %i.qm = fcmp ugt double %i.qj, %i.ql
  %i.qn = fcmp uge double %i.qh, %i.qj            ; 2 uses
  %i.qo = fcmp ule double %i.qh, %i.ql            ; 2 uses
  br i1 %i.qm, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %or.cond481.not = and i1 %i.qn, %i.qo
  %spec.select493 = zext i1 %or.cond481.not to i32
  br label %Pt_in_Poly.exit

bb.be:                                            ; preds = %bb.bc
  %or.cond482.not = or i1 %i.qn, %i.qo
  %spec.select494 = zext i1 %or.cond482.not to i32
  br label %Pt_in_Poly.exit

Pt_in_Poly.exit:                                  ; preds = %bb.am, %bb.ai, %bb.ag, %bb.ab, %bb.be, %bb.bd, %bb.ay, %bb.ax, %bb.as, %bb.ar, %bb.p, %bb.o, %bb.h, %bb.g, %bb.e, %bb.w, %bb.s, %bb.q, %bb.j, %bb.i, %bb.ba, %bb.az, %bb.au, %bb.at, %bb.an, %bb.ao, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.r, %bb.f, %bb.bb, %bb.av, %bb.ap, %bb.u, %bb.v, %bb.m, %bb.l, %bb.d
  %.2 = phi i32 [ 1, %bb.d ], [ 0, %bb.z ], [ 0, %bb.an ], [ 1, %bb.bb ], [ %spec.select484, %bb.e ], [ 0, %bb.ba ], [ %spec.select494, %bb.be ], [ 0, %bb.f ], [ 1, %bb.ap ], [ %spec.select485, %bb.g ], [ 0, %bb.au ], [ %spec.select490, %bb.as ], [ %spec.select486, %bb.h ], [ %spec.select, %bb.i ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 1, %bb.l ], [ %spec.select492, %bb.ay ], [ 0, %bb.ao ], [ %spec.select487, %bb.o ], [ %spec.select463, %bb.j ], [ %spec.select491, %bb.ax ], [ 1, %bb.m ], [ %spec.select493, %bb.bd ], [ %spec.select488, %bb.p ], [ %spec.select466, %bb.q ], [ 0, %bb.r ], [ 0, %bb.az ], [ 0, %bb.v ], [ 1, %bb.u ], [ %spec.select467, %bb.s ], [ 0, %bb.y ], [ %spec.select468, %bb.w ], [ %spec.select489, %bb.ar ], [ 0, %bb.x ], [ 1, %bb.av ], [ 0, %bb.at ], [ %.1.i, %bb.am ], [ 1, %bb.ag ], [ 1, %bb.ai ]
  %i.qp = zext i1 %.not442 to i32
  %spec.select483 = xor i32 %.2, %i.qp
  br label %bb.bf

bb.bf:                                            ; preds = %bb.c, %Pt_in_Poly.exit, %.critedge
  %.3 = phi i32 [ 1, %.critedge ], [ %spec.select483, %Pt_in_Poly.exit ], [ 0, %bb.c ] ; 2 uses
  %i.qq = add nuw nsw i32 %.0400533, 1            ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.0401532, i64 168
  %exitcond.not = icmp eq i32 %i.qq, %i.a
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !96

._crit_edge.loopexit:                             ; preds = %bb.bf
  %i.qs = icmp ne i32 %.1397, 0
  %i.qt = icmp ne i32 %.3, 0
  %i.qu = select i1 %i.qs, i1 true, i1 %i.qt
  %i.qv = zext i1 %i.qu to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0396.lcssa = phi i32 [ 0, %bb.a ], [ %i.qv, %._crit_edge.loopexit ]
  ret i32 %.0396.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #10

declare i32 @ffgcno(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffmnhd(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffgky(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffgtcs(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @ffgtdm(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffgcvs(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #15

declare i32 @ffgcvd(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffwldp(double noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffgcv(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffclos(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind allocsize(1) }
attributes #22 = { nounwind willreturn memory(none) }
attributes #23 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!"", !6, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !5, i64 64}
!14 = !{!"", !6, i64 0, !10, i64 8, !13, i64 16}
!15 = !{!14, !6, i64 0}
!16 = !{!14, !10, i64 8}
!17 = !{!13, !6, i64 0}
!18 = !{!12, !12, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{i64 0, i64 4, !9, i64 8, i64 8, !18, i64 16, i64 8, !18, i64 24, i64 8, !18, i64 32, i64 8, !18, i64 40, i64 8, !18, i64 48, i64 8, !18, i64 56, i64 8, !18, i64 64, i64 6, !19}
!21 = !{!14, !6, i64 16}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"", !5, i64 0, !6, i64 4, !6, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !5, i64 48}
!24 = !{!23, !5, i64 0}
!25 = !{!23, !6, i64 4}
!26 = !{!"p1 omnipotent char", !10, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!13, !12, i64 8}
!29 = !{!13, !12, i64 16}
!30 = !{!13, !12, i64 24}
!31 = !{!13, !12, i64 32}
!32 = !{!13, !12, i64 40}
!33 = !{!13, !12, i64 48}
!34 = !{!13, !12, i64 56}
!35 = !{!23, !6, i64 8}
!36 = !{!23, !12, i64 16}
!37 = !{!23, !12, i64 24}
!38 = !{!23, !12, i64 32}
!39 = !{!23, !12, i64 40}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !22}
!44 = distinct !{!44, !22}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22}
!48 = distinct !{!48, !22}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22}
!51 = distinct !{null}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !22}
!56 = distinct !{!56, !22}
!57 = !{!"p1 short", !10, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"short", !5, i64 0}
!60 = !{!59, !59, i64 0}
end_hunk_0
