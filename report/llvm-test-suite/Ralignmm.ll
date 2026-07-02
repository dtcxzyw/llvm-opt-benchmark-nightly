inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 19
begin_hunk_0_@imp_match_init_strictR:bb.a
  %i.da = ptrtoint ptr %.3 to i64
  %i.db = add i64 %i.da, %i.cg
  %i.dc = trunc i64 %i.db to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.v
  %.0153 = phi i32 [ %i.dc, %bb.v ], [ %i.cs, %bb.t ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0231, i64 32
  %.pre286.pre = load i32, ptr %i.dd, align 8, !tbaa !38 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %.5163 = phi i32 [ -1, %bb.w ], [ %spec.select200, %bb.y ] ; 2 uses
  %.4 = phi ptr [ %i.ci, %bb.w ], [ %i.df, %bb.y ] ; 3 uses
  %i.de = load i8, ptr %.4, align 1, !tbaa !18    ; 2 uses
  %.not185 = icmp eq i8 %i.de, 0
  br i1 %.not185, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 2 uses
  %.not186 = icmp ne i8 %i.de, 45
  %i.dg = zext i1 %.not186 to i32
  %spec.select200 = add nsw i32 %.5163, %i.dg     ; 2 uses
  %i.dh = icmp eq i32 %spec.select200, %.pre286.pre
  br i1 %i.dh, label %bb.z, label %bb.x, !llvm.loop !39

bb.z:                                             ; preds = %bb.y, %bb.x
  %.7165 = phi i32 [ %.pre286.pre, %bb.y ], [ %.5163, %bb.x ]
  %.5 = phi ptr [ %i.df, %bb.y ], [ %.4, %bb.x ]  ; 2 uses
  %i.di = ptrtoint ptr %.5 to i64
  %i.dj = add i64 %i.di, %i.ck                    ; 2 uses
  %i.dk = trunc i64 %i.dj to i32                  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0231, i64 36
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !40 ; 2 uses
  %i.dn = icmp eq i32 %.pre286.pre, %i.dm
  br i1 %i.dn, label %bb.ac, label %.preheader

.preheader:                                       ; preds = %bb.z, %bb.aa
  %.8 = phi i32 [ %spec.select201, %bb.aa ], [ %.7165, %bb.z ]
  %.6 = phi ptr [ %i.dp, %bb.aa ], [ %.5, %bb.z ] ; 3 uses
  %i.do = load i8, ptr %.6, align 1, !tbaa !18    ; 2 uses
  %.not187 = icmp eq i8 %i.do, 0
  br i1 %.not187, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.preheader
  %i.dp = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 2 uses
  %.not188 = icmp ne i8 %i.do, 45
  %i.dq = zext i1 %.not188 to i32
  %spec.select201 = add nsw i32 %.8, %i.dq        ; 2 uses
  %i.dr = icmp eq i32 %spec.select201, %i.dm
  br i1 %i.dr, label %bb.ab, label %.preheader, !llvm.loop !41

bb.ab:                                            ; preds = %bb.aa, %.preheader
  %.7 = phi ptr [ %i.dp, %bb.aa ], [ %.6, %.preheader ]
  %i.ds = ptrtoint ptr %.7 to i64
  %i.dt = add i64 %i.ds, %i.ck
  %i.du = trunc i64 %i.dt to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab
  %.0152 = phi i32 [ %i.du, %bb.ab ], [ %i.dk, %bb.z ]
  %sext = shl i64 %i.cr, 32
  %i.dv = ashr exact i64 %sext, 32
  %i.dw = getelementptr inbounds i8, ptr %i.ce, i64 %i.dv
  %sext189 = shl i64 %i.dj, 32
  %i.dx = ashr exact i64 %sext189, 32
  %i.dy = getelementptr inbounds i8, ptr %i.ci, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %.0231, i64 64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.am, %bb.ac
  %.0156 = phi i32 [ %i.dk, %bb.ac ], [ %.1157, %bb.am ] ; 6 uses
  %.0154 = phi i32 [ %i.cs, %bb.ac ], [ %.1155, %bb.am ] ; 5 uses
  %.0140 = phi ptr [ %i.dw, %bb.ac ], [ %.1141, %bb.am ] ; 5 uses
  %.0139 = phi ptr [ %i.dy, %bb.ac ], [ %.1, %bb.am ] ; 6 uses
  %i.ea = load i8, ptr %.0140, align 1, !tbaa !18 ; 2 uses
  %.not190 = icmp eq i8 %i.ea, 0
  br i1 %.not190, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = load i8, ptr %.0139, align 1, !tbaa !18 ; 2 uses
  %.not191 = icmp eq i8 %i.eb, 0
  br i1 %.not191, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not192 = icmp eq i8 %i.ea, 45                 ; 2 uses
  %.not193 = icmp eq i8 %i.eb, 45                 ; 3 uses
  %or.cond202 = or i1 %.not192, %.not193
  br i1 %or.cond202, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ec = load float, ptr %i.dz, align 8, !tbaa !42
  %i.ed = sext i32 %.0154 to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !12
  %i.eg = sext i32 %.0156 to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eg ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !14
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.cc, float %i.ei)
  store float %i.ej, ptr %i.eh, align 4, !tbaa !14
  %i.ek = add nsw i32 %.0154, 1
  %i.el = add nsw i32 %.0156, 1
  %i.em = getelementptr inbounds nuw i8, ptr %.0140, i64 1
  %i.en = getelementptr inbounds nuw i8, ptr %.0139, i64 1
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  br i1 %.not192, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not193, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.eo = add nsw i32 %.0156, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %.0139, i64 1
  br label %bb.am

bb.ak:                                            ; preds = %bb.ah
  %i.eq = add nsw i32 %.0154, 1                   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0140, i64 1 ; 2 uses
  br i1 %.not193, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.es = add nsw i32 %.0156, 1
  %i.et = getelementptr inbounds nuw i8, ptr %.0139, i64 1
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.ai, %bb.aj, %bb.al, %bb.ag
  %.1157 = phi i32 [ %i.el, %bb.ag ], [ %i.eo, %bb.aj ], [ %.0156, %bb.ai ], [ %i.es, %bb.al ], [ %.0156, %bb.ak ] ; 2 uses
  %.1155 = phi i32 [ %i.ek, %bb.ag ], [ %.0154, %bb.aj ], [ %.0154, %bb.ai ], [ %i.eq, %bb.al ], [ %i.eq, %bb.ak ] ; 2 uses
  %.1141 = phi ptr [ %i.em, %bb.ag ], [ %.0140, %bb.aj ], [ %.0140, %bb.ai ], [ %i.er, %bb.al ], [ %i.er, %bb.ak ]
  %.1 = phi ptr [ %i.en, %bb.ag ], [ %i.ep, %bb.aj ], [ %.0139, %bb.ai ], [ %i.et, %bb.al ], [ %.0139, %bb.ak ]
  %i.eu = icmp sgt i32 %.1155, %.0153
  %i.ev = icmp sgt i32 %.1157, %.0152
  %or.cond203 = select i1 %i.eu, i1 true, i1 %i.ev
  br i1 %or.cond203, label %.critedge, label %bb.ad, !llvm.loop !43

.critedge:                                        ; preds = %bb.ad, %bb.am, %bb.ae
  %i.ew = getelementptr inbounds nuw i8, ptr %.0231, i64 8
  %.0 = load ptr, ptr %i.ew, align 8, !tbaa !31   ; 2 uses
  %.not180 = icmp eq ptr %.0, null
  br i1 %.not180, label %._crit_edge233, label %bb.q, !llvm.loop !44

._crit_edge233:                                   ; preds = %.critedge, %bb.p
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count278
  br i1 %exitcond279.not, label %._crit_edge236, label %bb.p, !llvm.loop !45

._crit_edge236:                                   ; preds = %._crit_edge233
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next281, %wide.trip.count283
  br i1 %exitcond284.not, label %._crit_edge238.split, label %.preheader206, !llvm.loop !46

._crit_edge238.split:                             ; preds = %._crit_edge236, %.preheader206.lr.ph, %._crit_edge228.split
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @FreeFloatMtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare ptr @AllocateFloatMtx(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @AllocateCharVec(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local float @R__align(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readnone captures(address_is_null) %7, ptr nofree noundef captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @penalty, align 4, !tbaa !4
  %i.b = sitofp i32 %i.a to float                 ; 14 uses
  %i.c = load i32, ptr @R__align.orlgth1, align 4, !tbaa !4 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @njob, align 4, !tbaa !4
  %i.f = tail call ptr @AllocateCharMtx(i32 noundef %i.e, i32 noundef 0) #12
  store ptr %i.f, ptr @R__align.mseq1, align 8, !tbaa !47
  %i.g = load i32, ptr @njob, align 4, !tbaa !4
  %i.h = tail call ptr @AllocateCharMtx(i32 noundef %i.g, i32 noundef 0) #12
  store ptr %i.h, ptr @R__align.mseq2, align 8, !tbaa !47
  %.pre = load i32, ptr @R__align.orlgth1, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !16
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #13 ; 8 uses
  %i.l = trunc i64 %i.k to i32                    ; 22 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !16
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #13 ; 15 uses
  %i.o = trunc i64 %i.n to i32                    ; 30 uses
  %i.p = icmp slt i32 %i.i, %i.l
  %i.q = load i32, ptr @R__align.orlgth2, align 4 ; 4 uses
  %i.r = icmp slt i32 %i.q, %i.o
  %or.cond505 = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond505, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = icmp sgt i32 %i.i, 0
  %i.t = icmp sgt i32 %i.q, 0
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr @R__align.w1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.u) #12
  %i.v = load ptr, ptr @R__align.w2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.v) #12
  %i.w = load ptr, ptr @R__align.match, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.w) #12
  %i.x = load ptr, ptr @R__align.initverticalw, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.x) #12
  %i.y = load ptr, ptr @R__align.lastverticalw, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.y) #12
  %i.z = load ptr, ptr @R__align.m, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.z) #12
  %i.aa = load ptr, ptr @R__align.mp, align 8, !tbaa !49
  tail call void @FreeIntVec(ptr noundef %i.aa) #12
  %i.ab = load ptr, ptr @R__align.mseq, align 8, !tbaa !47
  tail call void @FreeCharMtx(ptr noundef %i.ab) #12
  %i.ac = load ptr, ptr @R__align.digf1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ac) #12
  %i.ad = load ptr, ptr @R__align.digf2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ad) #12
  %i.ae = load ptr, ptr @R__align.diaf1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ae) #12
  %i.af = load ptr, ptr @R__align.diaf2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.af) #12
  %i.ag = load ptr, ptr @R__align.gapz1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ag) #12
  %i.ah = load ptr, ptr @R__align.gapz2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ah) #12
  %i.ai = load ptr, ptr @R__align.gapf1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ai) #12
  %i.aj = load ptr, ptr @R__align.gapf2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.aj) #12
  %i.ak = load ptr, ptr @R__align.ogcp1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ak) #12
  %i.al = load ptr, ptr @R__align.ogcp2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.al) #12
  %i.am = load ptr, ptr @R__align.fgcp1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.am) #12
  %i.an = load ptr, ptr @R__align.fgcp2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.an) #12
  %i.ao = load ptr, ptr @R__align.ogcp1g, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ao) #12
  %i.ap = load ptr, ptr @R__align.ogcp2g, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ap) #12
  %i.aq = load ptr, ptr @R__align.fgcp1g, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.aq) #12
  %i.ar = load ptr, ptr @R__align.fgcp2g, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ar) #12
  %i.as = load ptr, ptr @R__align.cpmx1, align 8, !tbaa !8
  tail call void @FreeFloatMtx(ptr noundef %i.as) #12
  %i.at = load ptr, ptr @R__align.cpmx2, align 8, !tbaa !8
  tail call void @FreeFloatMtx(ptr noundef %i.at) #12
  %i.au = load ptr, ptr @R__align.floatwork, align 8, !tbaa !8
  tail call void @FreeFloatMtx(ptr noundef %i.au) #12
  %i.av = load ptr, ptr @R__align.intwork, align 8, !tbaa !51
  tail call void @FreeIntMtx(ptr noundef %i.av) #12
  %.pre731 = load i32, ptr @R__align.orlgth1, align 4, !tbaa !4
  %.pre732 = load i32, ptr @R__align.orlgth2, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aw = phi i32 [ %.pre732, %bb.e ], [ %i.q, %bb.d ]
  %i.ax = phi i32 [ %.pre731, %bb.e ], [ %i.i, %bb.d ]
  %i.ay = sitofp i32 %i.l to double
  %i.az = fmul nnan double %i.ay, 1.300000e+00
  %i.ba = fptosi double %i.az to i32
  %. = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 %i.ba) ; 4 uses
  %i.bb = add nuw nsw i32 %., 100                 ; 2 uses
  %i.bc = sitofp i32 %i.o to double
  %i.bd = fmul nnan double %i.bc, 1.300000e+00
  %i.be = fptosi double %i.bd to i32
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 %i.be) ; 4 uses
  %i.bg = add nuw nsw i32 %i.bf, 100              ; 2 uses
  %i.bh = add nuw nsw i32 %i.bf, 102              ; 14 uses
  %i.bi = tail call ptr @AllocateFloatVec(i32 noundef %i.bh) #12
  store ptr %i.bi, ptr @R__align.w1, align 8, !tbaa !12
  %i.bj = tail call ptr @AllocateFloatVec(i32 noundef %i.bh) #12
  store ptr %i.bj, ptr @R__align.w2, align 8, !tbaa !12
  %i.bk = tail call ptr @AllocateFloatVec(i32 noundef %i.bh) #12
  store ptr %i.bk, ptr @R__align.match, align 8, !tbaa !12
  %i.bl = add nuw nsw i32 %., 102                 ; 11 uses
  %i.bm = tail call ptr @AllocateFloatVec(i32 noundef %i.bl) #12
  store ptr %i.bm, ptr @R__align.initverticalw, align 8, !tbaa !12
  %i.bn = tail call ptr @AllocateFloatVec(i32 noundef %i.bl) #12
  store ptr %i.bn, ptr @R__align.lastverticalw, align 8, !tbaa !12
  %i.bo = tail call ptr @AllocateFloatVec(i32 noundef %i.bh) #12
  store ptr %i.bo, ptr @R__align.m, align 8, !tbaa !12
  %i.bp = tail call ptr @AllocateIntVec(i32 noundef %i.bh) #12
  store ptr %i.bp, ptr @R__align.mp, align 8, !tbaa !49
  %i.bq = load i32, ptr @njob, align 4, !tbaa !4
  %i.br = add nuw nsw i32 %i.bg, %i.bb
  %i.bs = tail call ptr @AllocateCharMtx(i32 noundef %i.bq, i32 noundef %i.br) #12
  store ptr %i.bs, ptr @R__align.mseq, align 8, !tbaa !47
  %i.bt = tail call ptr @AllocateFloatVec(i32 noundef %i.bl) #12
  store ptr %i.bt, ptr @R__align.digf1, align 8, !tbaa !12
  %i.bu = tail call ptr @AllocateFloatVec(i32 noundef %i.bh) #12
  store ptr %i.bu, ptr @R__align.digf2, align 8, !tbaa !12
  %i.bv = tail call ptr @AllocateFloatVec(i32 noundef %i.bl) #12
  store ptr %i.bv, ptr @R__align.diaf1, align 8, !tbaa !12
  %i.bw = tail call ptr @AllocateFloatVec(i32 noundef %i.bh) #12
  store ptr %i.bw, ptr @R__align.diaf2, align 8, !tbaa !12
  %i.bx = tail call ptr @AllocateFloatVec(i32 noundef %i.bl) #12
  store ptr %i.bx, ptr @R__align.gapz1, align 8, !tbaa !12
  %i.by = tail call ptr @AllocateFloatVec(i32 noundef %i.bh) #12
  store ptr %i.by, ptr @R__align.gapz2, align 8, !tbaa !12
  %i.bz = tail call ptr @AllocateFloatVec(i32 noundef %i.bl) #12
  store ptr %i.bz, ptr @R__align.gapf1, align 8, !tbaa !12
  %i.ca = tail call ptr @AllocateFloatVec(i32 noundef %i.bh) #12
  store ptr %i.ca, ptr @R__align.gapf2, align 8, !tbaa !12
  %i.cb = tail call ptr @AllocateFloatVec(i32 noundef %i.bl) #12
  store ptr %i.cb, ptr @R__align.ogcp1, align 8, !tbaa !12
  %i.cc = tail call ptr @AllocateFloatVec(i32 noundef %i.bh) #12
  store ptr %i.cc, ptr @R__align.ogcp2, align 8, !tbaa !12
  %i.cd = tail call ptr @AllocateFloatVec(i32 noundef %i.bl) #12
  store ptr %i.cd, ptr @R__align.fgcp1, align 8, !tbaa !12
  %i.ce = tail call ptr @AllocateFloatVec(i32 noundef %i.bh) #12
  store ptr %i.ce, ptr @R__align.fgcp2, align 8, !tbaa !12
  %i.cf = tail call ptr @AllocateFloatVec(i32 noundef %i.bl) #12
  store ptr %i.cf, ptr @R__align.ogcp1g, align 8, !tbaa !12
  %i.cg = tail call ptr @AllocateFloatVec(i32 noundef %i.bh) #12
  store ptr %i.cg, ptr @R__align.ogcp2g, align 8, !tbaa !12
  %i.ch = tail call ptr @AllocateFloatVec(i32 noundef %i.bl) #12
  store ptr %i.ch, ptr @R__align.fgcp1g, align 8, !tbaa !12
  %i.ci = tail call ptr @AllocateFloatVec(i32 noundef %i.bh) #12
  store ptr %i.ci, ptr @R__align.fgcp2g, align 8, !tbaa !12
  %i.cj = tail call ptr @AllocateFloatMtx(i32 noundef 26, i32 noundef %i.bl) #12
  store ptr %i.cj, ptr @R__align.cpmx1, align 8, !tbaa !8
  %i.ck = tail call ptr @AllocateFloatMtx(i32 noundef 26, i32 noundef %i.bh) #12
  store ptr %i.ck, ptr @R__align.cpmx2, align 8, !tbaa !8
  %i.cl = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 %i.bg)
  %i.cm = add nuw nsw i32 %i.cl, 2                ; 2 uses
  %i.cn = tail call ptr @AllocateFloatMtx(i32 noundef %i.cm, i32 noundef 26) #12
  store ptr %i.cn, ptr @R__align.floatwork, align 8, !tbaa !8
  %i.co = tail call ptr @AllocateIntMtx(i32 noundef %i.cm, i32 noundef 27) #12
  store ptr %i.co, ptr @R__align.intwork, align 8, !tbaa !51
  store i32 %., ptr @R__align.orlgth1, align 4, !tbaa !4
  store i32 %i.bf, ptr @R__align.orlgth2, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %i.cp = phi i32 [ %i.q, %bb.c ], [ %i.bf, %bb.f ] ; 2 uses
  %i.cq = phi i32 [ %i.i, %bb.c ], [ %., %bb.f ]  ; 2 uses
  %i.cr = icmp sgt i32 %4, 0                      ; 4 uses
  br i1 %i.cr, label %.lr.ph, label %.preheader580

.lr.ph:                                           ; preds = %bb.g
  %i.cs = load ptr, ptr @R__align.mseq, align 8, !tbaa !47 ; 3 uses
  %i.ct = load ptr, ptr @R__align.mseq1, align 8, !tbaa !47 ; 3 uses
  %sext503 = shl i64 %i.k, 32
  %i.cu = ashr exact i64 %sext503, 32             ; 3 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cv = icmp eq i32 %4, 1
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.h

.preheader580.loopexit.unr-lcssa:                 ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader580, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader580.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader580.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1088 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1088)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.epil.init
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !16
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.epil.init
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !16
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !16
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %i.cu
  store i8 0, ptr %i.db, align 1, !tbaa !18
  br label %.preheader580

.preheader580:                                    ; preds = %.epil.preheader, %.preheader580.loopexit.unr-lcssa, %bb.g
  %i.dc = icmp sgt i32 %5, 0                      ; 4 uses
  br i1 %i.dc, label %.lr.ph592, label %._crit_edge

.lr.ph592:                                        ; preds = %.preheader580
  %i.dd = load ptr, ptr @R__align.mseq, align 8, !tbaa !47
  %i.de = load ptr, ptr @R__align.mseq2, align 8, !tbaa !47 ; 3 uses
  %sext502 = shl i64 %i.n, 32
  %i.df = ashr exact i64 %sext502, 32             ; 3 uses
  %i.dg = sext i32 %4 to i64
end_hunk_0
begin_hunk_1_@R__align:bb.a
  %cmp.n847 = icmp eq i64 %i.qx, %n.vec837
  br i1 %cmp.n847, label %.loopexit576, label %scalar.ph833.preheader

scalar.ph833.preheader:                           ; preds = %.lr.ph598, %middle.block846
  %indvars.iv672.ph = phi i64 [ 1, %.lr.ph598 ], [ %i.qy, %middle.block846 ]
  br label %scalar.ph833

scalar.ph821:                                     ; preds = %scalar.ph821.preheader, %scalar.ph821
  %indvars.iv667 = phi i64 [ %indvars.iv.next668, %scalar.ph821 ], [ %indvars.iv667.ph, %scalar.ph821.preheader ] ; 3 uses
  %i.ri = trunc i64 %indvars.iv667 to i32
  %i.rj = mul i32 %i.jq, %i.ri
  %i.rk = sitofp i32 %i.rj to double
  %i.rl = fmul nnan double %i.rk, 5.000000e-01
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv667 ; 2 uses
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !14
  %i.ro = fpext float %i.rn to double
  %i.rp = fsub double %i.ro, %i.rl
  %i.rq = fptrunc double %i.rp to float
  store float %i.rq, ptr %i.rm, align 4, !tbaa !14
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1 ; 2 uses
  %exitcond671.not = icmp eq i64 %indvars.iv.next668, %wide.trip.count670
  br i1 %exitcond671.not, label %.preheader577, label %scalar.ph821, !llvm.loop !71

scalar.ph833:                                     ; preds = %scalar.ph833.preheader, %scalar.ph833
  %indvars.iv672 = phi i64 [ %indvars.iv.next673, %scalar.ph833 ], [ %indvars.iv672.ph, %scalar.ph833.preheader ] ; 3 uses
  %i.rr = trunc i64 %indvars.iv672 to i32
  %i.rs = mul i32 %i.qv, %i.rr
  %i.rt = sitofp i32 %i.rs to double
  %i.ru = fmul nnan double %i.rt, 5.000000e-01
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv672 ; 2 uses
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !14
  %i.rx = fpext float %i.rw to double
  %i.ry = fsub double %i.rx, %i.ru
  %i.rz = fptrunc double %i.ry to float
  store float %i.rz, ptr %i.rv, align 4, !tbaa !14
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1 ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next673, %wide.trip.count675
  br i1 %exitcond676.not, label %.loopexit576, label %scalar.ph833, !llvm.loop !72

.loopexit576:                                     ; preds = %scalar.ph833, %middle.block846, %.preheader577
  %i.sa = load ptr, ptr @R__align.m, align 8, !tbaa !12 ; 3 uses
  store float 0.000000e+00, ptr %i.sa, align 4, !tbaa !14
  %.not491608 = icmp slt i32 %i.o, 1
  br i1 %.not491608, label %._crit_edge612, label %.lr.ph611

.lr.ph611:                                        ; preds = %.loopexit576.thread787, %.loopexit576
  %i.sb = phi ptr [ %i.qu, %.loopexit576.thread787 ], [ %i.sa, %.loopexit576 ] ; 8 uses
  %i.sc = load ptr, ptr @R__align.mp, align 8, !tbaa !49 ; 4 uses
  %i.sd = add nuw nsw i64 %i.n, 1
  %wide.trip.count690 = and i64 %i.sd, 4294967295 ; 3 uses
  %i.se = add nsw i64 %wide.trip.count690, -1     ; 3 uses
  %min.iters.check851 = icmp ult i64 %i.se, 8
  br i1 %min.iters.check851, label %scalar.ph850.preheader, label %vector.memcheck849

vector.memcheck849:                               ; preds = %.lr.ph611
  %i.sf = ptrtoaddr ptr %i.sb to i64
  %i.sg = add i64 %i.sf, 4
  %i.sh = sub i64 %i.sg, %i.fz
  %diff.check = icmp ult i64 %i.sh, 32
  br i1 %diff.check, label %scalar.ph850.preheader, label %vector.ph852

vector.ph852:                                     ; preds = %vector.memcheck849
  %n.vec854 = and i64 %i.se, -8                   ; 3 uses
  %i.si = or disjoint i64 %n.vec854, 1
  %broadcast.splatinsert855 = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat856 = shufflevector <4 x float> %broadcast.splatinsert855, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body857

vector.body857:                                   ; preds = %vector.body857, %vector.ph852
  %index858 = phi i64 [ 0, %vector.ph852 ], [ %index.next861, %vector.body857 ] ; 2 uses
  %i.sj = or disjoint i64 %index858, 1            ; 3 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %i.sj ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  store <4 x i32> zeroinitializer, ptr %i.sk, align 4, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %i.sl, align 4, !tbaa !4
  %i.sm = getelementptr [4 x i8], ptr %i.fy, i64 %i.sj ; 2 uses
  %i.sn = getelementptr i8, ptr %i.sm, i64 -4
  %i.so = getelementptr i8, ptr %i.sm, i64 12
  %wide.load859 = load <4 x float>, ptr %i.sn, align 4, !tbaa !14
  %wide.load860 = load <4 x float>, ptr %i.so, align 4, !tbaa !14
  %i.sp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat856, <4 x float> splat (float 1.000000e+04), <4 x float> %wide.load859)
  %i.sq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat856, <4 x float> splat (float 1.000000e+04), <4 x float> %wide.load860)
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.sj ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  store <4 x float> %i.sp, ptr %i.sr, align 4, !tbaa !14
  store <4 x float> %i.sq, ptr %i.ss, align 4, !tbaa !14
  %index.next861 = add nuw i64 %index858, 8       ; 2 uses
  %i.st = icmp eq i64 %index.next861, %n.vec854
  br i1 %i.st, label %middle.block862, label %vector.body857, !llvm.loop !73

middle.block862:                                  ; preds = %vector.body857
  %cmp.n863 = icmp eq i64 %i.se, %n.vec854
  br i1 %cmp.n863, label %._crit_edge612.thread, label %scalar.ph850.preheader

scalar.ph850.preheader:                           ; preds = %vector.memcheck849, %.lr.ph611, %middle.block862
  %indvars.iv687.ph = phi i64 [ 1, %vector.memcheck849 ], [ 1, %.lr.ph611 ], [ %i.si, %middle.block862 ] ; 6 uses
  %.neg1166 = add nsw i64 %indvars.iv687.ph, 1
  %xtraiter1103 = and i64 %i.n, 1
  %lcmp.mod1104.not = icmp eq i64 %xtraiter1103, 0
  br i1 %lcmp.mod1104.not, label %scalar.ph850.prol.loopexit, label %scalar.ph850.prol

scalar.ph850.prol:                                ; preds = %scalar.ph850.preheader
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %indvars.iv687.ph
  store i32 0, ptr %i.su, align 4, !tbaa !4
  %i.sv = getelementptr [4 x i8], ptr %i.fy, i64 %indvars.iv687.ph
  %i.sw = getelementptr i8, ptr %i.sv, i64 -4
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !14
  %i.sy = tail call float @llvm.fmuladd.f32(float %i.b, float 1.000000e+04, float %i.sx)
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %indvars.iv687.ph
  store float %i.sy, ptr %i.sz, align 4, !tbaa !14
  %indvars.iv.next688.prol = add nuw nsw i64 %indvars.iv687.ph, 1
  br label %scalar.ph850.prol.loopexit

scalar.ph850.prol.loopexit:                       ; preds = %scalar.ph850.prol, %scalar.ph850.preheader
  %indvars.iv687.unr = phi i64 [ %indvars.iv687.ph, %scalar.ph850.preheader ], [ %indvars.iv.next688.prol, %scalar.ph850.prol ]
  %i.ta = icmp eq i64 %wide.trip.count690, %.neg1166
  br i1 %i.ta, label %._crit_edge612.thread, label %scalar.ph850

scalar.ph850:                                     ; preds = %scalar.ph850.prol.loopexit, %scalar.ph850
  %indvars.iv687 = phi i64 [ %indvars.iv.next688.1, %scalar.ph850 ], [ %indvars.iv687.unr, %scalar.ph850.prol.loopexit ] ; 5 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %indvars.iv687
  store i32 0, ptr %i.tb, align 4, !tbaa !4
  %i.tc = getelementptr [4 x i8], ptr %i.fy, i64 %indvars.iv687
  %i.td = getelementptr i8, ptr %i.tc, i64 -4
  %i.te = load float, ptr %i.td, align 4, !tbaa !14
  %i.tf = tail call float @llvm.fmuladd.f32(float %i.b, float 1.000000e+04, float %i.te)
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %indvars.iv687
  store float %i.tf, ptr %i.tg, align 4, !tbaa !14
  %indvars.iv.next688 = add nuw nsw i64 %indvars.iv687, 1 ; 3 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %indvars.iv.next688
  store i32 0, ptr %i.th, align 4, !tbaa !4
  %i.ti = getelementptr [4 x i8], ptr %i.fy, i64 %indvars.iv.next688
  %i.tj = getelementptr i8, ptr %i.ti, i64 -4
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !14
  %i.tl = tail call float @llvm.fmuladd.f32(float %i.b, float 1.000000e+04, float %i.tk)
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %indvars.iv.next688
  store float %i.tl, ptr %i.tm, align 4, !tbaa !14
  %indvars.iv.next688.1 = add nuw nsw i64 %indvars.iv687, 2 ; 2 uses
  %exitcond691.not.1 = icmp eq i64 %indvars.iv.next688.1, %wide.trip.count690
  br i1 %exitcond691.not.1, label %._crit_edge612.thread, label %scalar.ph850, !llvm.loop !74

._crit_edge612:                                   ; preds = %.loopexit576.thread, %.loopexit576
  %i.tn = phi ptr [ %i.lw, %.loopexit576.thread ], [ %i.sa, %.loopexit576 ] ; 2 uses
  %i.to = icmp eq i32 %i.o, 0
  br i1 %i.to, label %bb.w, label %._crit_edge612.thread

._crit_edge612.thread:                            ; preds = %scalar.ph850.prol.loopexit, %scalar.ph850, %middle.block862, %._crit_edge612
  %i.tp = phi ptr [ %i.tn, %._crit_edge612 ], [ %i.sb, %middle.block862 ], [ %i.sb, %scalar.ph850 ], [ %i.sb, %scalar.ph850.prol.loopexit ]
  %.not491608786792 = phi i1 [ true, %._crit_edge612 ], [ false, %middle.block862 ], [ false, %scalar.ph850 ], [ false, %scalar.ph850.prol.loopexit ]
  %i.tq = shl i64 %i.n, 32
  %sext = add i64 %i.tq, -4294967296
  %i.tr = ashr exact i64 %sext, 30
  %i.ts = getelementptr inbounds i8, ptr %i.fy, i64 %i.tr
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !14
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge612, %._crit_edge612.thread
  %.sink = phi float [ %i.tt, %._crit_edge612.thread ], [ 0.000000e+00, %._crit_edge612 ]
  %brmerge = phi i1 [ %.not486, %._crit_edge612.thread ], [ true, %._crit_edge612 ]
  %i.tu = phi ptr [ %i.tp, %._crit_edge612.thread ], [ %i.tn, %._crit_edge612 ] ; 2 uses
  %.not491608786791 = phi i1 [ %.not491608786792, %._crit_edge612.thread ], [ true, %._crit_edge612 ] ; 2 uses
  %i.tv = load ptr, ptr @R__align.lastverticalw, align 8, !tbaa !12 ; 2 uses
  store float %.sink, ptr %i.tv, align 4, !tbaa !14
  %i.tw = load i32, ptr @outgap, align 4, !tbaa !4 ; 2 uses
  %.not492 = icmp ne i32 %i.tw, 0
  %i.tx = zext i1 %.not492 to i32
  %.0455 = add nsw i32 %i.tx, %i.l                ; 2 uses
  %i.ty = icmp sgt i32 %.0455, 1
  br i1 %i.ty, label %.lr.ph633, label %._crit_edge634

.lr.ph633:                                        ; preds = %bb.w
  %i.tz = load ptr, ptr @impmtx, align 8
  %i.ua = load ptr, ptr @R__align.ijp, align 8
  %i.ub = load ptr, ptr @R__align.mp, align 8
  %i.uc = load ptr, ptr @R__align.ogcp1g, align 8
  %i.ud = load ptr, ptr @R__align.ogcp2g, align 8 ; 2 uses
  %i.ue = fpext float %i.b to double              ; 9 uses
  %i.uf = load ptr, ptr @R__align.fgcp1g, align 8
  %i.ug = load ptr, ptr @R__align.fgcp2g, align 8 ; 2 uses
  %i.uh = load ptr, ptr @R__align.gapz1, align 8
  %i.ui = load ptr, ptr @R__align.digf2, align 8  ; 2 uses
  %i.uj = load ptr, ptr @R__align.diaf2, align 8  ; 2 uses
  %i.uk = load ptr, ptr @R__align.gapz2, align 8  ; 4 uses
  %i.ul = load ptr, ptr @R__align.digf1, align 8
  %i.um = load ptr, ptr @R__align.diaf1, align 8
  %i.un = shl i64 %i.n, 32
  %sext497 = add i64 %i.un, -4294967296
  %i.uo = ashr exact i64 %sext497, 30
  %i.up = add i64 %i.n, 1
  %wide.trip.count701 = zext nneg i32 %.0455 to i64
  %wide.trip.count695 = and i64 %i.up, 4294967295 ; 2 uses
  %.0466620.peel = getelementptr inbounds nuw i8, ptr %i.ub, i64 4 ; 3 uses
  %.0469621.peel = getelementptr inbounds nuw i8, ptr %i.tu, i64 4 ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ud, i64 4
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  %i.us = getelementptr inbounds nuw i8, ptr %i.ui, i64 4
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  %exitcond696.peel.not = icmp eq i64 %wide.trip.count695, 2
  %13 = add i32 %i.o, -1                          ; 3 uses
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 2
  %i.uw = add nuw nsw i64 %15, 4                  ; 2 uses
  %16 = zext i32 %13 to i64
  %i.ux = add nuw nsw i64 %16, 1                  ; 2 uses
  %17 = insertelement <4 x double> poison, double %i.ue, i64 0
  %18 = shufflevector <4 x double> %17, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %min.iters.check872 = icmp ult i32 %13, 7
  %n.vec875 = and i64 %i.ux, 8589934584           ; 4 uses
  %i.uy = shl nuw nsw i64 %n.vec875, 2            ; 2 uses
  %i.uz = trunc i64 %n.vec875 to i32
  %i.va = sub i32 %i.o, %i.uz
  %cmp.n886 = icmp eq i64 %i.ux, %n.vec875
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph633, %._crit_edge625
  %indvars.iv698 = phi i64 [ 1, %.lr.ph633 ], [ %indvars.iv.next699, %._crit_edge625 ] ; 13 uses
  %.0456630 = phi float [ 0.000000e+00, %.lr.ph633 ], [ %.1457.lcssa, %._crit_edge625 ]
  %.0460629 = phi ptr [ %i.fy, %.lr.ph633 ], [ %.0465628, %._crit_edge625 ] ; 4 uses
  %.0465628 = phi ptr [ %i.ga, %.lr.ph633 ], [ %.0460629, %._crit_edge625 ] ; 12 uses
  %i.vb = add nsw i64 %indvars.iv698, -1          ; 3 uses
  %i.vc = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.vb
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !14
  store float %i.vd, ptr %.0460629, align 4, !tbaa !14
  %i.ve = trunc nuw nsw i64 %indvars.iv698 to i32 ; 3 uses
  tail call fastcc void @match_calc(ptr noundef %.0465628, ptr noundef %i.gd, ptr noundef %i.gc, i32 noundef %i.ve, i32 noundef %i.o, ptr noundef %i.ge, ptr noundef %i.gf, i32 noundef 0)
  br i1 %brmerge, label %imp_match_out_veadR.exit514, label %.lr.ph.preheader.i508

.lr.ph.preheader.i508:                            ; preds = %bb.x
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv698
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !12 ; 6 uses
  br i1 %min.iters.check872, label %.lr.ph.i509.preheader, label %vector.memcheck865

vector.memcheck865:                               ; preds = %.lr.ph.preheader.i508
  %scevgep866 = getelementptr i8, ptr %.0465628, i64 %i.uw
  %scevgep867 = getelementptr i8, ptr %i.vg, i64 %i.uw
  %bound0868 = icmp ult ptr %.0465628, %scevgep867
  %bound1869 = icmp ult ptr %i.vg, %scevgep866
  %found.conflict870 = and i1 %bound0868, %bound1869
  br i1 %found.conflict870, label %.lr.ph.i509.preheader, label %vector.ph873

vector.ph873:                                     ; preds = %vector.memcheck865
  %i.vh = getelementptr i8, ptr %i.vg, i64 %i.uy
  %i.vi = getelementptr i8, ptr %.0465628, i64 %i.uy
  br label %vector.body876

vector.body876:                                   ; preds = %vector.body876, %vector.ph873
  %index877 = phi i64 [ 0, %vector.ph873 ], [ %index.next884, %vector.body876 ] ; 2 uses
  %i.vj = shl i64 %index877, 2                    ; 2 uses
  %next.gep878 = getelementptr i8, ptr %i.vg, i64 %i.vj ; 2 uses
  %next.gep879 = getelementptr i8, ptr %.0465628, i64 %i.vj ; 3 uses
  %i.vk = getelementptr i8, ptr %next.gep878, i64 16
  %wide.load880 = load <4 x float>, ptr %next.gep878, align 4, !tbaa !14, !alias.scope !75
  %wide.load881 = load <4 x float>, ptr %i.vk, align 4, !tbaa !14, !alias.scope !75
  %i.vl = getelementptr i8, ptr %next.gep879, i64 16 ; 2 uses
  %wide.load882 = load <4 x float>, ptr %next.gep879, align 4, !tbaa !14, !alias.scope !78, !noalias !75
  %wide.load883 = load <4 x float>, ptr %i.vl, align 4, !tbaa !14, !alias.scope !78, !noalias !75
  %i.vm = fadd <4 x float> %wide.load880, %wide.load882
  %i.vn = fadd <4 x float> %wide.load881, %wide.load883
  store <4 x float> %i.vm, ptr %next.gep879, align 4, !tbaa !14, !alias.scope !78, !noalias !75
  store <4 x float> %i.vn, ptr %i.vl, align 4, !tbaa !14, !alias.scope !78, !noalias !75
  %index.next884 = add nuw i64 %index877, 8       ; 2 uses
  %i.vo = icmp eq i64 %index.next884, %n.vec875
  br i1 %i.vo, label %middle.block885, label %vector.body876, !llvm.loop !80

middle.block885:                                  ; preds = %vector.body876
  br i1 %cmp.n886, label %imp_match_out_veadR.exit514, label %.lr.ph.i509.preheader

.lr.ph.i509.preheader:                            ; preds = %vector.memcheck865, %.lr.ph.preheader.i508, %middle.block885
  %.08.i510.ph = phi ptr [ %i.vg, %vector.memcheck865 ], [ %i.vg, %.lr.ph.preheader.i508 ], [ %i.vh, %middle.block885 ] ; 2 uses
  %.037.i511.ph = phi i32 [ %i.o, %vector.memcheck865 ], [ %i.o, %.lr.ph.preheader.i508 ], [ %i.va, %middle.block885 ] ; 4 uses
  %.046.i512.ph = phi ptr [ %.0465628, %vector.memcheck865 ], [ %.0465628, %.lr.ph.preheader.i508 ], [ %i.vi, %middle.block885 ] ; 2 uses
  %i.vp = add nsw i32 %.037.i511.ph, -1
  %xtraiter1106 = and i32 %.037.i511.ph, 3        ; 2 uses
  %lcmp.mod1107.not = icmp eq i32 %xtraiter1106, 0
  br i1 %lcmp.mod1107.not, label %.lr.ph.i509.prol.loopexit, label %.lr.ph.i509.prol

.lr.ph.i509.prol:                                 ; preds = %.lr.ph.i509.preheader, %.lr.ph.i509.prol
  %.08.i510.prol = phi ptr [ %i.vr, %.lr.ph.i509.prol ], [ %.08.i510.ph, %.lr.ph.i509.preheader ] ; 2 uses
  %.037.i511.prol = phi i32 [ %i.vq, %.lr.ph.i509.prol ], [ %.037.i511.ph, %.lr.ph.i509.preheader ]
  %.046.i512.prol = phi ptr [ %i.vt, %.lr.ph.i509.prol ], [ %.046.i512.ph, %.lr.ph.i509.preheader ] ; 3 uses
  %prol.iter1108 = phi i32 [ %prol.iter1108.next, %.lr.ph.i509.prol ], [ 0, %.lr.ph.i509.preheader ]
  %i.vq = add nsw i32 %.037.i511.prol, -1         ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.08.i510.prol, i64 4 ; 2 uses
  %i.vs = load float, ptr %.08.i510.prol, align 4, !tbaa !14
  %i.vt = getelementptr inbounds nuw i8, ptr %.046.i512.prol, i64 4 ; 2 uses
  %i.vu = load float, ptr %.046.i512.prol, align 4, !tbaa !14
  %i.vv = fadd float %i.vs, %i.vu
  store float %i.vv, ptr %.046.i512.prol, align 4, !tbaa !14
  %prol.iter1108.next = add i32 %prol.iter1108, 1 ; 2 uses
  %prol.iter1108.cmp.not = icmp eq i32 %prol.iter1108.next, %xtraiter1106
  br i1 %prol.iter1108.cmp.not, label %.lr.ph.i509.prol.loopexit, label %.lr.ph.i509.prol, !llvm.loop !81

.lr.ph.i509.prol.loopexit:                        ; preds = %.lr.ph.i509.prol, %.lr.ph.i509.preheader
  %.08.i510.unr = phi ptr [ %.08.i510.ph, %.lr.ph.i509.preheader ], [ %i.vr, %.lr.ph.i509.prol ]
  %.037.i511.unr = phi i32 [ %.037.i511.ph, %.lr.ph.i509.preheader ], [ %i.vq, %.lr.ph.i509.prol ]
  %.046.i512.unr = phi ptr [ %.046.i512.ph, %.lr.ph.i509.preheader ], [ %i.vt, %.lr.ph.i509.prol ]
  %i.vw = icmp ult i32 %i.vp, 3
  br i1 %i.vw, label %imp_match_out_veadR.exit514, label %.lr.ph.i509

.lr.ph.i509:                                      ; preds = %.lr.ph.i509.prol.loopexit, %.lr.ph.i509
  %.08.i510 = phi ptr [ %i.wn, %.lr.ph.i509 ], [ %.08.i510.unr, %.lr.ph.i509.prol.loopexit ] ; 5 uses
  %.037.i511 = phi i32 [ %i.wm, %.lr.ph.i509 ], [ %.037.i511.unr, %.lr.ph.i509.prol.loopexit ]
  %.046.i512 = phi ptr [ %i.wp, %.lr.ph.i509 ], [ %.046.i512.unr, %.lr.ph.i509.prol.loopexit ] ; 6 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.08.i510, i64 4
  %i.vy = load float, ptr %.08.i510, align 4, !tbaa !14
  %i.vz = getelementptr inbounds nuw i8, ptr %.046.i512, i64 4 ; 2 uses
  %i.wa = load float, ptr %.046.i512, align 4, !tbaa !14
  %i.wb = fadd float %i.vy, %i.wa
  store float %i.wb, ptr %.046.i512, align 4, !tbaa !14
  %i.wc = getelementptr inbounds nuw i8, ptr %.08.i510, i64 8
  %i.wd = load float, ptr %i.vx, align 4, !tbaa !14
  %i.we = getelementptr inbounds nuw i8, ptr %.046.i512, i64 8 ; 2 uses
  %i.wf = load float, ptr %i.vz, align 4, !tbaa !14
  %i.wg = fadd float %i.wd, %i.wf
  store float %i.wg, ptr %i.vz, align 4, !tbaa !14
  %i.wh = getelementptr inbounds nuw i8, ptr %.08.i510, i64 12
  %i.wi = load float, ptr %i.wc, align 4, !tbaa !14
  %i.wj = getelementptr inbounds nuw i8, ptr %.046.i512, i64 12 ; 2 uses
  %i.wk = load float, ptr %i.we, align 4, !tbaa !14
  %i.wl = fadd float %i.wi, %i.wk
  store float %i.wl, ptr %i.we, align 4, !tbaa !14
  %i.wm = add nsw i32 %.037.i511, -4              ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.08.i510, i64 16
  %i.wo = load float, ptr %i.wh, align 4, !tbaa !14
  %i.wp = getelementptr inbounds nuw i8, ptr %.046.i512, i64 16
  %i.wq = load float, ptr %i.wj, align 4, !tbaa !14
  %i.wr = fadd float %i.wo, %i.wq
  store float %i.wr, ptr %i.wj, align 4, !tbaa !14
  %.not.i513.3 = icmp eq i32 %i.wm, 0
  br i1 %.not.i513.3, label %imp_match_out_veadR.exit514, label %.lr.ph.i509, !llvm.loop !82

imp_match_out_veadR.exit514:                      ; preds = %.lr.ph.i509.prol.loopexit, %.lr.ph.i509, %middle.block885, %bb.x
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv698
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !14
  store float %i.wt, ptr %.0465628, align 4, !tbaa !14
  %i.wu = load float, ptr %.0460629, align 4, !tbaa !14 ; 4 uses
  %i.wv = tail call float @llvm.fmuladd.f32(float %i.b, float 1.000000e+04, float %i.wu) ; 3 uses
  br i1 %.not491608786791, label %._crit_edge625, label %.lr.ph624

.lr.ph624:                                        ; preds = %imp_match_out_veadR.exit514
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.ua, i64 %indvars.iv698
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !49
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %indvars.iv698 ; 2 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %indvars.iv698 ; 2 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %indvars.iv698 ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 4 ; 2 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %indvars.iv698 ; 2 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %indvars.iv698 ; 2 uses
  %.not499 = icmp eq i64 %indvars.iv698, 1        ; 2 uses
  %.0470622.peel = getelementptr inbounds nuw i8, ptr %i.wx, i64 4 ; 4 uses
  %.0467623.peel = getelementptr inbounds nuw i8, ptr %.0465628, i64 4 ; 3 uses
  %i.xe = load float, ptr %i.wy, align 4, !tbaa !14 ; 2 uses
  %i.xf = load float, ptr %i.uq, align 4, !tbaa !14
  %i.xg = load float, ptr %i.wz, align 4, !tbaa !14 ; 2 uses
  %i.xh = load float, ptr %i.ur, align 4, !tbaa !14
  %i.xi = insertelement <4 x float> poison, float %i.xe, i64 0
  %i.xj = insertelement <4 x float> %i.xi, float %i.xf, i64 1
  %i.xk = insertelement <4 x float> %i.xj, float %i.xg, i64 2
  %i.xl = insertelement <4 x float> %i.xk, float %i.xh, i64 3
  %i.xm = fpext <4 x float> %i.xl to <4 x double> ; 6 uses
  %i.xn = fsub <4 x double> splat (double 1.000000e+00), %i.xm ; 5 uses
  %i.xo = shufflevector <4 x double> %i.xm, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.xp = fmul <4 x double> %i.xn, %i.xo
  %i.xq = fmul <4 x double> %i.xp, %18
  %i.xr = fmul <4 x double> %i.xq, splat (double 5.000000e-01)
  %i.xs = fptrunc <4 x double> %i.xr to <4 x float> ; 4 uses
  %i.xt = extractelement <4 x float> %i.xs, i64 1
  %i.xu = fadd float %i.wu, %i.xt
  %i.xv = extractelement <4 x float> %i.xs, i64 0
  %i.xw = fadd float %i.xu, %i.xv
  %i.xx = extractelement <4 x float> %i.xs, i64 3
  %i.xy = fadd float %i.xw, %i.xx
  %i.xz = extractelement <4 x float> %i.xs, i64 2
  %i.ya = fadd float %i.xy, %i.xz                 ; 2 uses
  store i32 0, ptr %.0470622.peel, align 4, !tbaa !4
  %i.yb = load float, ptr %i.xb, align 4, !tbaa !14
  %i.yc = fpext float %i.yb to double             ; 2 uses
  %i.yd = fsub double 1.000000e+00, %i.yc
  %i.ye = extractelement <4 x double> %i.xn, i64 3
  %i.yf = extractelement <4 x double> %i.xm, i64 1
  %i.yg = fadd double %i.ye, %i.yf
  %i.yh = load float, ptr %i.us, align 4, !tbaa !14
  %i.yi = fpext float %i.yh to double
  %i.yj = fsub double 1.000000e+00, %i.yi
  %i.yk = load float, ptr %i.ut, align 4, !tbaa !14
  %i.yl = fpext float %i.yk to double
  %i.ym = fsub double %i.yj, %i.yl                ; 2 uses
  %i.yn = fmul double %i.ym, %i.yc
  %i.yo = tail call double @llvm.fmuladd.f64(double %i.yd, double %i.yg, double %i.yn)
  %i.yp = fmul double %i.yo, 5.000000e-01
  %i.yq = fmul double %i.yp, %i.ue
  %i.yr = fptrunc double %i.yq to float
  %i.ys = fadd float %i.wv, %i.yr                 ; 2 uses
  %i.yt = fcmp ogt float %i.ys, %i.ya
  br i1 %i.yt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph624
  store i32 -1, ptr %.0470622.peel, align 4, !tbaa !4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph624
  %.2458.peel = phi float [ %i.ys, %bb.y ], [ %i.ya, %.lr.ph624 ] ; 2 uses
  %i.yu = load float, ptr %i.xa, align 4, !tbaa !14
  %i.yv = fpext float %i.yu to double             ; 2 uses
  %i.yw = fsub double 1.000000e+00, %i.yv
  %i.yx = extractelement <4 x double> %i.xn, i64 1
  %i.yy = extractelement <4 x double> %i.xm, i64 3
  %i.yz = fadd double %i.yx, %i.yy
  %i.za = fmul double %i.ym, %i.yv
  %i.zb = tail call double @llvm.fmuladd.f64(double %i.yw, double %i.yz, double %i.za)
  %i.zc = fmul double %i.zb, 5.000000e-01
  %i.zd = fmul double %i.zc, %i.ue
  %i.ze = fptrunc double %i.zd to float
  %i.zf = fadd float %i.wu, %i.ze                 ; 2 uses
  %.inv = fcmp oge float %i.zf, %i.wv
  %i.zg = select i1 %.inv, float %i.zf, float %i.wv
  %i.zh = load float, ptr %i.uu, align 4, !tbaa !14
  %i.zi = fpext float %i.zh to double             ; 2 uses
  %i.zj = fsub double 1.000000e+00, %i.zi
  %i.zk = extractelement <4 x double> %i.xn, i64 2
  %i.zl = extractelement <4 x double> %i.xm, i64 0
  %i.zm = fadd double %i.zk, %i.zl
  %i.zn = load float, ptr %i.xc, align 4, !tbaa !14
  %i.zo = fpext float %i.zn to double
  %i.zp = fsub double 1.000000e+00, %i.zo
  %i.zq = load float, ptr %i.xd, align 4, !tbaa !14
  %i.zr = fpext float %i.zq to double
  %i.zs = fsub double %i.zp, %i.zr                ; 2 uses
  %i.zt = fmul double %i.zs, %i.zi
  %i.zu = tail call double @llvm.fmuladd.f64(double %i.zj, double %i.zm, double %i.zt)
  %i.zv = fmul double %i.zu, 5.000000e-01
  %i.zw = fmul double %i.zv, %i.ue
  %i.zx = fptrunc double %i.zw to float
  %i.zy = load float, ptr %.0469621.peel, align 4, !tbaa !14 ; 3 uses
  %i.zz = fadd float %i.zy, %i.zx                 ; 2 uses
  %i.aaa = fcmp ogt float %i.zz, %.2458.peel
  br i1 %i.aaa, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.aab = load i32, ptr %.0466620.peel, align 4, !tbaa !4
  %i.aac = sub nsw i32 %i.ve, %i.aab
  store i32 %i.aac, ptr %.0470622.peel, align 4, !tbaa !4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.3459.peel = phi float [ %i.zz, %bb.aa ], [ %.2458.peel, %bb.z ] ; 2 uses
  %i.aad = load float, ptr %i.uv, align 4, !tbaa !14
  %i.aae = fpext float %i.aad to double           ; 2 uses
  %i.aaf = fsub double 1.000000e+00, %i.aae
  %i.aag = extractelement <4 x double> %i.xn, i64 0
  %i.aah = extractelement <4 x double> %i.xm, i64 2
  %i.aai = fadd double %i.aag, %i.aah
  %i.aaj = fmul double %i.zs, %i.aae
  %i.aak = tail call double @llvm.fmuladd.f64(double %i.aaf, double %i.aai, double %i.aaj)
  %i.aal = fmul double %i.aak, 5.000000e-01
  %i.aam = fmul double %i.aal, %i.ue
  %i.aan = fptrunc double %i.aam to float
  %i.aao = fadd float %i.wu, %i.aan               ; 2 uses
  %i.aap = fcmp ult float %i.aao, %i.zy
  br i1 %i.aap, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store float %i.aao, ptr %.0469621.peel, align 4, !tbaa !14
  %i.aaq = trunc nuw nsw i64 %i.vb to i32
  store i32 %i.aaq, ptr %.0466620.peel, align 4, !tbaa !4
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  br i1 %.not499, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aar = fadd float %i.xe, %i.xg
  %i.aas = fmul float %i.aar, %i.b
  %i.aat = fpext float %i.aas to double
  %i.aau = fpext float %i.zy to double
  %i.aav = tail call double @llvm.fmuladd.f64(double %i.aat, double 5.000000e-01, double %i.aau)
  %i.aaw = fptrunc double %i.aav to float
  store float %i.aaw, ptr %.0469621.peel, align 4, !tbaa !14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.aax = load float, ptr %.0467623.peel, align 4, !tbaa !14
  %i.aay = fadd float %.3459.peel, %i.aax
  store float %i.aay, ptr %.0467623.peel, align 4, !tbaa !14
  br i1 %exitcond696.peel.not, label %._crit_edge625, label %.peel.next

.peel.next:                                       ; preds = %bb.af
  %i.aaz = trunc nuw nsw i64 %i.vb to i32
  br label %bb.ag

bb.ag:                                            ; preds = %.peel.next, %bb.ar
  %indvars.iv692 = phi i64 [ 2, %.peel.next ], [ %indvars.iv.next693, %bb.ar ] ; 9 uses
  %.0465628.pn = phi ptr [ %.0467623.peel, %.peel.next ], [ %.0467623, %bb.ar ]
  %.pn = phi ptr [ %.0470622.peel, %.peel.next ], [ %.0470622, %bb.ar ]
  %.pn649 = phi ptr [ %.0469621.peel, %.peel.next ], [ %.0469621, %bb.ar ]
  %.pn650 = phi ptr [ %.0466620.peel, %.peel.next ], [ %.0466620, %bb.ar ]
  %.0460629.pn = phi ptr [ %.0460629, %.peel.next ], [ %.0468618, %bb.ar ]
  %i.aba = phi float [ %i.zg, %.peel.next ], [ %i.adu, %bb.ar ] ; 3 uses
  %i.abb = phi i32 [ 0, %.peel.next ], [ %i.adt, %bb.ar ] ; 2 uses
  %.0468618 = getelementptr inbounds nuw i8, ptr %.0460629.pn, i64 4 ; 2 uses
  %.0466620 = getelementptr inbounds nuw i8, ptr %.pn650, i64 4 ; 3 uses
  %.0469621 = getelementptr inbounds nuw i8, ptr %.pn649, i64 4 ; 3 uses
  %.0470622 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 4 uses
  %.0467623 = getelementptr inbounds nuw i8, ptr %.0465628.pn, i64 4 ; 3 uses
  %i.abc = load float, ptr %.0468618, align 4, !tbaa !14 ; 3 uses
  %i.abd = load float, ptr %i.wy, align 4, !tbaa !14 ; 2 uses
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %indvars.iv692
  %i.abf = load float, ptr %i.abe, align 4, !tbaa !14 ; 2 uses
  %i.abg = load float, ptr %i.wz, align 4, !tbaa !14 ; 2 uses
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %indvars.iv692
  %i.abi = load float, ptr %i.abh, align 4, !tbaa !14 ; 2 uses
  %i.abj = insertelement <4 x float> poison, float %i.abd, i64 0
  %i.abk = insertelement <4 x float> %i.abj, float %i.abf, i64 1
  %i.abl = insertelement <4 x float> %i.abk, float %i.abg, i64 2
  %i.abm = insertelement <4 x float> %i.abl, float %i.abi, i64 3
  %i.abn = fpext <4 x float> %i.abm to <4 x double> ; 6 uses
  %i.abo = fsub <4 x double> splat (double 1.000000e+00), %i.abn ; 5 uses
  %i.abp = shufflevector <4 x double> %i.abn, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.abq = fmul <4 x double> %i.abo, %i.abp
  %i.abr = fmul <4 x double> %i.abq, %18
  %i.abs = fmul <4 x double> %i.abr, splat (double 5.000000e-01)
  %i.abt = fptrunc <4 x double> %i.abs to <4 x float> ; 4 uses
  %i.abu = extractelement <4 x float> %i.abt, i64 1
  %i.abv = fadd float %i.abc, %i.abu
  %i.abw = extractelement <4 x float> %i.abt, i64 0
  %i.abx = fadd float %i.abv, %i.abw
  %i.aby = extractelement <4 x float> %i.abt, i64 3
  %i.abz = fadd float %i.abx, %i.aby
  %i.aca = extractelement <4 x float> %i.abt, i64 2
  %i.acb = fadd float %i.abz, %i.aca              ; 2 uses
  store i32 0, ptr %.0470622, align 4, !tbaa !4
  %i.acc = load float, ptr %i.xb, align 4, !tbaa !14
  %i.acd = fpext float %i.acc to double           ; 2 uses
  %i.ace = fsub double 1.000000e+00, %i.acd
  %i.acf = extractelement <4 x double> %i.abo, i64 3
  %i.acg = extractelement <4 x double> %i.abn, i64 1
  %i.ach = fadd double %i.acf, %i.acg
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %indvars.iv692
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !14
  %i.ack = fpext float %i.acj to double
  %i.acl = fsub double 1.000000e+00, %i.ack
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %indvars.iv692
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !14
  %i.aco = fpext float %i.acn to double
  %i.acp = fsub double %i.acl, %i.aco             ; 2 uses
  %i.acq = fmul double %i.acp, %i.acd
  %i.acr = tail call double @llvm.fmuladd.f64(double %i.ace, double %i.ach, double %i.acq)
  %i.acs = fmul double %i.acr, 5.000000e-01
  %i.act = fmul double %i.acs, %i.ue
  %i.acu = fptrunc double %i.act to float
  %i.acv = fadd float %i.aba, %i.acu              ; 2 uses
  %i.acw = fcmp ogt float %i.acv, %i.acb
  br i1 %i.acw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.acx = trunc nuw nsw i64 %indvars.iv692 to i32
  %.neg = sub nsw i32 %i.abb, %i.acx
  store i32 %.neg, ptr %.0470622, align 4, !tbaa !4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.2458 = phi float [ %i.acv, %bb.ah ], [ %i.acb, %bb.ag ] ; 2 uses
  %i.acy = load float, ptr %i.xa, align 4, !tbaa !14
  %i.acz = fpext float %i.acy to double           ; 2 uses
  %i.ada = fsub double 1.000000e+00, %i.acz
  %i.adb = extractelement <4 x double> %i.abo, i64 1
  %i.adc = extractelement <4 x double> %i.abn, i64 3
  %i.add = fadd double %i.adb, %i.adc
  %i.ade = fmul double %i.acp, %i.acz
  %i.adf = tail call double @llvm.fmuladd.f64(double %i.ada, double %i.add, double %i.ade)
  %i.adg = fmul double %i.adf, 5.000000e-01
  %i.adh = fmul double %i.adg, %i.ue
  %i.adi = fptrunc double %i.adh to float
  %i.adj = fadd float %i.abc, %i.adi              ; 2 uses
  %i.adk = fcmp ult float %i.adj, %i.aba
  br i1 %i.adk, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.adl = trunc i64 %indvars.iv692 to i32
  %i.adm = add i32 %i.adl, -1
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.adn = fadd float %i.abf, %i.abi
  %i.ado = fmul float %i.adn, %i.b
  %i.adp = fpext float %i.ado to double
  %i.adq = fpext float %i.aba to double
  %i.adr = tail call double @llvm.fmuladd.f64(double %i.adp, double 5.000000e-01, double %i.adq)
  %i.ads = fptrunc double %i.adr to float
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.adt = phi i32 [ %i.adm, %bb.aj ], [ %i.abb, %bb.ak ]
  %i.adu = phi float [ %i.adj, %bb.aj ], [ %i.ads, %bb.ak ]
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1 ; 3 uses
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %indvars.iv.next693
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !14
  %i.adx = fpext float %i.adw to double           ; 2 uses
  %i.ady = fsub double 1.000000e+00, %i.adx
  %i.adz = extractelement <4 x double> %i.abo, i64 2
  %i.aea = extractelement <4 x double> %i.abn, i64 0
  %i.aeb = fadd double %i.adz, %i.aea
  %i.aec = load float, ptr %i.xc, align 4, !tbaa !14
  %i.aed = fpext float %i.aec to double
  %i.aee = fsub double 1.000000e+00, %i.aed
  %i.aef = load float, ptr %i.xd, align 4, !tbaa !14
  %i.aeg = fpext float %i.aef to double
  %i.aeh = fsub double %i.aee, %i.aeg             ; 2 uses
  %i.aei = fmul double %i.aeh, %i.adx
  %i.aej = tail call double @llvm.fmuladd.f64(double %i.ady, double %i.aeb, double %i.aei)
  %i.aek = fmul double %i.aej, 5.000000e-01
  %i.ael = fmul double %i.aek, %i.ue
  %i.aem = fptrunc double %i.ael to float
  %i.aen = load float, ptr %.0469621, align 4, !tbaa !14 ; 2 uses
  %i.aeo = fadd float %i.aen, %i.aem              ; 2 uses
  %i.aep = fcmp ogt float %i.aeo, %.2458
  br i1 %i.aep, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.aeq = load i32, ptr %.0466620, align 4, !tbaa !4
  %i.aer = sub nsw i32 %i.ve, %i.aeq
  store i32 %i.aer, ptr %.0470622, align 4, !tbaa !4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.3459 = phi float [ %i.aeo, %bb.am ], [ %.2458, %bb.al ] ; 2 uses
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %indvars.iv692
  %i.aet = load float, ptr %i.aes, align 4, !tbaa !14
  %i.aeu = fpext float %i.aet to double           ; 2 uses
  %i.aev = fsub double 1.000000e+00, %i.aeu
  %i.aew = extractelement <4 x double> %i.abo, i64 0
  %i.aex = extractelement <4 x double> %i.abn, i64 2
  %i.aey = fadd double %i.aew, %i.aex
  %i.aez = fmul double %i.aeh, %i.aeu
  %i.afa = tail call double @llvm.fmuladd.f64(double %i.aev, double %i.aey, double %i.aez)
  %i.afb = fmul double %i.afa, 5.000000e-01
  %i.afc = fmul double %i.afb, %i.ue
  %i.afd = fptrunc double %i.afc to float
  %i.afe = fadd float %i.abc, %i.afd              ; 2 uses
  %i.aff = fcmp ult float %i.afe, %i.aen
  br i1 %i.aff, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store float %i.afe, ptr %.0469621, align 4, !tbaa !14
  store i32 %i.aaz, ptr %.0466620, align 4, !tbaa !4
  br label %bb.ar

bb.ap:                                            ; preds = %bb.an
  br i1 %.not499, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.afg = fadd float %i.abd, %i.abg
  %i.afh = fmul float %i.afg, %i.b
  %i.afi = fpext float %i.afh to double
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv692 ; 2 uses
  %i.afk = load float, ptr %i.afj, align 4, !tbaa !14
  %i.afl = fpext float %i.afk to double
  %i.afm = tail call double @llvm.fmuladd.f64(double %i.afi, double 5.000000e-01, double %i.afl)
  %i.afn = fptrunc double %i.afm to float
  store float %i.afn, ptr %i.afj, align 4, !tbaa !14
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.ao
  %i.afo = load float, ptr %.0467623, align 4, !tbaa !14
  %i.afp = fadd float %.3459, %i.afo
  store float %i.afp, ptr %.0467623, align 4, !tbaa !14
  %exitcond696.not = icmp eq i64 %indvars.iv.next693, %wide.trip.count695
  br i1 %exitcond696.not, label %._crit_edge625, label %bb.ag, !llvm.loop !83

._crit_edge625:                                   ; preds = %bb.ar, %bb.af, %imp_match_out_veadR.exit514
  %.1457.lcssa = phi float [ %.0456630, %imp_match_out_veadR.exit514 ], [ %.3459.peel, %bb.af ], [ %.3459, %bb.ar ] ; 2 uses
  %i.afq = getelementptr inbounds i8, ptr %.0465628, i64 %i.uo
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !14
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %indvars.iv698
  store float %i.afr, ptr %i.afs, align 4, !tbaa !14
  %indvars.iv.next699 = add nuw nsw i64 %indvars.iv698, 1 ; 2 uses
  %exitcond702.not = icmp eq i64 %indvars.iv.next699, %wide.trip.count701
  br i1 %exitcond702.not, label %._crit_edge634.loopexit, label %bb.x, !llvm.loop !85

._crit_edge634.loopexit:                          ; preds = %._crit_edge625
  %.pre741 = load i32, ptr @outgap, align 4, !tbaa !4
  br label %._crit_edge634

._crit_edge634:                                   ; preds = %._crit_edge634.loopexit, %bb.w
  %i.aft = phi i32 [ %i.tw, %bb.w ], [ %.pre741, %._crit_edge634.loopexit ]
  %.0460.lcssa = phi ptr [ %i.fy, %bb.w ], [ %.0465628, %._crit_edge634.loopexit ] ; 8 uses
  %.0456.lcssa = phi float [ 0.000000e+00, %bb.w ], [ %.1457.lcssa, %._crit_edge634.loopexit ] ; 2 uses
  %.not493 = icmp eq i32 %i.aft, 0
  br i1 %.not493, label %.preheader574, label %.loopexit

.preheader574:                                    ; preds = %._crit_edge634
  br i1 %.not491608786791, label %.preheader573, label %.lr.ph639

.lr.ph639:                                        ; preds = %.preheader574
  %i.afu = load i32, ptr @offset, align 4, !tbaa !4 ; 2 uses
  %i.afv = add nuw nsw i64 %i.n, 1
  %wide.trip.count706 = and i64 %i.afv, 4294967295 ; 2 uses
  %i.afw = add nsw i64 %wide.trip.count706, -1    ; 3 uses
  %min.iters.check891 = icmp ult i64 %i.afw, 4
  br i1 %min.iters.check891, label %scalar.ph890.preheader, label %vector.ph892

vector.ph892:                                     ; preds = %.lr.ph639
  %n.vec894 = and i64 %i.afw, -4                  ; 3 uses
  %i.afx = or disjoint i64 %n.vec894, 1
  %broadcast.splatinsert895 = insertelement <4 x i32> poison, i32 %i.afu, i64 0
  %broadcast.splat896 = shufflevector <4 x i32> %broadcast.splatinsert895, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert897 = insertelement <4 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat898 = shufflevector <4 x i64> %broadcast.splatinsert897, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body899

vector.body899:                                   ; preds = %vector.body899, %vector.ph892
  %index900 = phi i64 [ 0, %vector.ph892 ], [ %index.next903, %vector.body899 ] ; 2 uses
  %vec.ind901 = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %vector.ph892 ], [ %vec.ind.next904, %vector.body899 ] ; 2 uses
  %i.afy = sub <4 x i64> %broadcast.splat898, %vec.ind901
  %i.afz = trunc <4 x i64> %i.afy to <4 x i32>
  %i.aga = mul <4 x i32> %broadcast.splat896, %i.afz
  %i.agb = sitofp <4 x i32> %i.aga to <4 x double>
  %i.agc = fmul nnan <4 x double> %i.agb, splat (double 5.000000e-01)
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %.0460.lcssa, i64 %index900
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 4 ; 2 uses
end_hunk_1
