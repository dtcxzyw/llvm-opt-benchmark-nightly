inline.NumInlined: 16
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 36
begin_hunk_0_@imp_match_init_strictQ:bb.a
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
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @FreeFloatMtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare ptr @AllocateFloatMtx(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @AllocateCharVec(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local float @Q__align(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readnone captures(address_is_null) %7, ptr nofree noundef captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @penalty, align 4, !tbaa !4
  %i.b = sitofp i32 %i.a to float                 ; 7 uses
  %i.c = load i32, ptr @Q__align.orlgth1, align 4, !tbaa !4 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @njob, align 4, !tbaa !4
  %i.f = tail call ptr @AllocateCharMtx(i32 noundef %i.e, i32 noundef 0) #12
  store ptr %i.f, ptr @Q__align.mseq1, align 8, !tbaa !47
  %i.g = load i32, ptr @njob, align 4, !tbaa !4
  %i.h = tail call ptr @AllocateCharMtx(i32 noundef %i.g, i32 noundef 0) #12
  store ptr %i.h, ptr @Q__align.mseq2, align 8, !tbaa !47
  %.pre = load i32, ptr @Q__align.orlgth1, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !16
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #13 ; 10 uses
  %i.l = trunc i64 %i.k to i32                    ; 24 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !16
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #13 ; 19 uses
  %i.o = trunc i64 %i.n to i32                    ; 31 uses
  %i.p = icmp slt i32 %i.i, %i.l
  %i.q = load i32, ptr @Q__align.orlgth2, align 4 ; 4 uses
  %i.r = icmp slt i32 %i.q, %i.o
  %or.cond521 = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond521, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = icmp sgt i32 %i.i, 0
  %i.t = icmp sgt i32 %i.q, 0
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr @Q__align.w1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.u) #12
  %i.v = load ptr, ptr @Q__align.w2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.v) #12
  %i.w = load ptr, ptr @Q__align.match, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.w) #12
  %i.x = load ptr, ptr @Q__align.initverticalw, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.x) #12
  %i.y = load ptr, ptr @Q__align.lastverticalw, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.y) #12
  %i.z = load ptr, ptr @Q__align.m, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.z) #12
  %i.aa = load ptr, ptr @Q__align.mp, align 8, !tbaa !49
  tail call void @FreeIntVec(ptr noundef %i.aa) #12
  %i.ab = load ptr, ptr @Q__align.mseq, align 8, !tbaa !47
  tail call void @FreeCharMtx(ptr noundef %i.ab) #12
  %i.ac = load ptr, ptr @Q__align.digf1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ac) #12
  %i.ad = load ptr, ptr @Q__align.digf2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ad) #12
  %i.ae = load ptr, ptr @Q__align.diaf1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ae) #12
  %i.af = load ptr, ptr @Q__align.diaf2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.af) #12
  %i.ag = load ptr, ptr @Q__align.gapz1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ag) #12
  %i.ah = load ptr, ptr @Q__align.gapz2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ah) #12
  %i.ai = load ptr, ptr @Q__align.gapf1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ai) #12
  %i.aj = load ptr, ptr @Q__align.gapf2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.aj) #12
  %i.ak = load ptr, ptr @Q__align.ogcp1g, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ak) #12
  %i.al = load ptr, ptr @Q__align.ogcp2g, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.al) #12
  %i.am = load ptr, ptr @Q__align.fgcp1g, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.am) #12
  %i.an = load ptr, ptr @Q__align.fgcp2g, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.an) #12
  %i.ao = load ptr, ptr @Q__align.og_h_dg_n1_p, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ao) #12
  %i.ap = load ptr, ptr @Q__align.og_h_dg_n2_p, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ap) #12
  %i.aq = load ptr, ptr @Q__align.fg_h_dg_n1_p, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.aq) #12
  %i.ar = load ptr, ptr @Q__align.fg_h_dg_n2_p, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ar) #12
  %i.as = load ptr, ptr @Q__align.og_t_fg_h_dg_n1_p, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.as) #12
  %i.at = load ptr, ptr @Q__align.og_t_fg_h_dg_n2_p, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.at) #12
  %i.au = load ptr, ptr @Q__align.fg_t_og_h_dg_n1_p, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.au) #12
  %i.av = load ptr, ptr @Q__align.fg_t_og_h_dg_n2_p, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.av) #12
  %i.aw = load ptr, ptr @Q__align.gapz_n1, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.aw) #12
  %i.ax = load ptr, ptr @Q__align.gapz_n2, align 8, !tbaa !12
  tail call void @FreeFloatVec(ptr noundef %i.ax) #12
  %i.ay = load ptr, ptr @Q__align.cpmx1, align 8, !tbaa !8
  tail call void @FreeFloatMtx(ptr noundef %i.ay) #12
  %i.az = load ptr, ptr @Q__align.cpmx2, align 8, !tbaa !8
  tail call void @FreeFloatMtx(ptr noundef %i.az) #12
  %i.ba = load ptr, ptr @Q__align.floatwork, align 8, !tbaa !8
  tail call void @FreeFloatMtx(ptr noundef %i.ba) #12
  %i.bb = load ptr, ptr @Q__align.intwork, align 8, !tbaa !51
  tail call void @FreeIntMtx(ptr noundef %i.bb) #12
  %.pre724 = load i32, ptr @Q__align.orlgth1, align 4, !tbaa !4
  %.pre725 = load i32, ptr @Q__align.orlgth2, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bc = phi i32 [ %.pre725, %bb.e ], [ %i.q, %bb.d ]
  %i.bd = phi i32 [ %.pre724, %bb.e ], [ %i.i, %bb.d ]
  %i.be = sitofp i32 %i.l to double
  %i.bf = fmul nnan double %i.be, 1.300000e+00
  %i.bg = fptosi double %i.bf to i32
  %. = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 %i.bg) ; 4 uses
  %i.bh = add nuw nsw i32 %., 100                 ; 2 uses
  %i.bi = sitofp i32 %i.o to double
  %i.bj = fmul nnan double %i.bi, 1.300000e+00
  %i.bk = fptosi double %i.bj to i32
  %i.bl = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 %i.bk) ; 4 uses
  %i.bm = add nuw nsw i32 %i.bl, 100              ; 2 uses
  %i.bn = add nuw nsw i32 %i.bl, 102              ; 17 uses
  %i.bo = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.bo, ptr @Q__align.w1, align 8, !tbaa !12
  %i.bp = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.bp, ptr @Q__align.w2, align 8, !tbaa !12
  %i.bq = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.bq, ptr @Q__align.match, align 8, !tbaa !12
  %i.br = add nuw nsw i32 %., 102                 ; 14 uses
  %i.bs = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.bs, ptr @Q__align.initverticalw, align 8, !tbaa !12
  %i.bt = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.bt, ptr @Q__align.lastverticalw, align 8, !tbaa !12
  %i.bu = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.bu, ptr @Q__align.m, align 8, !tbaa !12
  %i.bv = tail call ptr @AllocateIntVec(i32 noundef %i.bn) #12
  store ptr %i.bv, ptr @Q__align.mp, align 8, !tbaa !49
  %i.bw = load i32, ptr @njob, align 4, !tbaa !4
  %i.bx = add nuw nsw i32 %i.bm, %i.bh
  %i.by = tail call ptr @AllocateCharMtx(i32 noundef %i.bw, i32 noundef %i.bx) #12
  store ptr %i.by, ptr @Q__align.mseq, align 8, !tbaa !47
  %i.bz = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.bz, ptr @Q__align.digf1, align 8, !tbaa !12
  %i.ca = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.ca, ptr @Q__align.digf2, align 8, !tbaa !12
  %i.cb = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.cb, ptr @Q__align.diaf1, align 8, !tbaa !12
  %i.cc = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.cc, ptr @Q__align.diaf2, align 8, !tbaa !12
  %i.cd = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.cd, ptr @Q__align.gapz1, align 8, !tbaa !12
  %i.ce = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.ce, ptr @Q__align.gapz2, align 8, !tbaa !12
  %i.cf = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.cf, ptr @Q__align.gapf1, align 8, !tbaa !12
  %i.cg = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.cg, ptr @Q__align.gapf2, align 8, !tbaa !12
  %i.ch = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.ch, ptr @Q__align.ogcp1g, align 8, !tbaa !12
  %i.ci = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.ci, ptr @Q__align.ogcp2g, align 8, !tbaa !12
  %i.cj = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.cj, ptr @Q__align.fgcp1g, align 8, !tbaa !12
  %i.ck = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.ck, ptr @Q__align.fgcp2g, align 8, !tbaa !12
  %i.cl = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.cl, ptr @Q__align.og_h_dg_n1_p, align 8, !tbaa !12
  %i.cm = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.cm, ptr @Q__align.og_h_dg_n2_p, align 8, !tbaa !12
  %i.cn = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.cn, ptr @Q__align.fg_h_dg_n1_p, align 8, !tbaa !12
  %i.co = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.co, ptr @Q__align.fg_h_dg_n2_p, align 8, !tbaa !12
  %i.cp = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.cp, ptr @Q__align.og_t_fg_h_dg_n1_p, align 8, !tbaa !12
  %i.cq = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.cq, ptr @Q__align.og_t_fg_h_dg_n2_p, align 8, !tbaa !12
  %i.cr = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.cr, ptr @Q__align.fg_t_og_h_dg_n1_p, align 8, !tbaa !12
  %i.cs = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.cs, ptr @Q__align.fg_t_og_h_dg_n2_p, align 8, !tbaa !12
  %i.ct = tail call ptr @AllocateFloatVec(i32 noundef %i.br) #12
  store ptr %i.ct, ptr @Q__align.gapz_n1, align 8, !tbaa !12
  %i.cu = tail call ptr @AllocateFloatVec(i32 noundef %i.bn) #12
  store ptr %i.cu, ptr @Q__align.gapz_n2, align 8, !tbaa !12
  %i.cv = tail call ptr @AllocateFloatMtx(i32 noundef 26, i32 noundef %i.br) #12
  store ptr %i.cv, ptr @Q__align.cpmx1, align 8, !tbaa !8
  %i.cw = tail call ptr @AllocateFloatMtx(i32 noundef 26, i32 noundef %i.bn) #12
  store ptr %i.cw, ptr @Q__align.cpmx2, align 8, !tbaa !8
  %i.cx = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 %i.bm)
  %i.cy = add nuw nsw i32 %i.cx, 2                ; 2 uses
  %i.cz = tail call ptr @AllocateFloatMtx(i32 noundef %i.cy, i32 noundef 26) #12
  store ptr %i.cz, ptr @Q__align.floatwork, align 8, !tbaa !8
  %i.da = tail call ptr @AllocateIntMtx(i32 noundef %i.cy, i32 noundef 27) #12
  store ptr %i.da, ptr @Q__align.intwork, align 8, !tbaa !51
  store i32 %., ptr @Q__align.orlgth1, align 4, !tbaa !4
  store i32 %i.bl, ptr @Q__align.orlgth2, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %i.db = phi i32 [ %i.q, %bb.c ], [ %i.bl, %bb.f ] ; 2 uses
  %i.dc = phi i32 [ %i.i, %bb.c ], [ %., %bb.f ]  ; 2 uses
  %i.dd = icmp sgt i32 %4, 0                      ; 3 uses
  br i1 %i.dd, label %.lr.ph, label %.preheader561

.lr.ph:                                           ; preds = %bb.g
  %i.de = load ptr, ptr @Q__align.mseq, align 8, !tbaa !47 ; 3 uses
  %i.df = load ptr, ptr @Q__align.mseq1, align 8, !tbaa !47 ; 3 uses
  %sext519 = shl i64 %i.k, 32
  %i.dg = ashr exact i64 %sext519, 32             ; 3 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.dh = icmp eq i32 %4, 1
  br i1 %i.dh, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.h

.preheader561.loopexit.unr-lcssa:                 ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader561, label %.epil.preheader

end_hunk_0
begin_hunk_1_@Q__align:bb.a
  br i1 %cmp.n1119, label %.loopexit557, label %scalar.ph1105.preheader

scalar.ph1105.preheader:                          ; preds = %.lr.ph582, %middle.block1118
  %indvars.iv674.ph = phi i64 [ 1, %.lr.ph582 ], [ %i.adm, %middle.block1118 ]
  br label %scalar.ph1105

scalar.ph1091:                                    ; preds = %scalar.ph1091.preheader, %scalar.ph1091
  %indvars.iv669 = phi i64 [ %indvars.iv.next670, %scalar.ph1091 ], [ %indvars.iv669.ph, %scalar.ph1091.preheader ] ; 3 uses
  %i.adw = trunc i64 %indvars.iv669 to i32
  %i.adx = mul i32 %i.zm, %i.adw
  %i.ady = sitofp i32 %i.adx to double
  %i.adz = fmul nnan double %i.ady, 5.000000e-01
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv669 ; 2 uses
  %i.aeb = load float, ptr %i.aea, align 4, !tbaa !14
  %i.aec = fpext float %i.aeb to double
  %i.aed = fsub double %i.aec, %i.adz
  %i.aee = fptrunc double %i.aed to float
  store float %i.aee, ptr %i.aea, align 4, !tbaa !14
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 1 ; 2 uses
  %exitcond673.not = icmp eq i64 %indvars.iv.next670, %wide.trip.count672
  br i1 %exitcond673.not, label %.preheader558, label %scalar.ph1091, !llvm.loop !145

scalar.ph1105:                                    ; preds = %scalar.ph1105.preheader, %scalar.ph1105
  %indvars.iv674 = phi i64 [ %indvars.iv.next675, %scalar.ph1105 ], [ %indvars.iv674.ph, %scalar.ph1105.preheader ] ; 3 uses
  %i.aef = trunc i64 %indvars.iv674 to i32
  %i.aeg = mul i32 %i.adi, %i.aef
  %i.aeh = sitofp i32 %i.aeg to double
  %i.aei = fmul nnan double %i.aeh, 5.000000e-01
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.adj, i64 %indvars.iv674 ; 2 uses
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !14
  %i.ael = fpext float %i.aek to double
  %i.aem = fsub double %i.ael, %i.aei
  %i.aen = fptrunc double %i.aem to float
  store float %i.aen, ptr %i.aej, align 4, !tbaa !14
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 1 ; 2 uses
  %exitcond678.not = icmp eq i64 %indvars.iv.next675, %wide.trip.count677
  br i1 %exitcond678.not, label %.loopexit557, label %scalar.ph1105, !llvm.loop !146

.loopexit557:                                     ; preds = %scalar.ph1105, %middle.block1118, %.preheader558
  %i.aeo = load ptr, ptr @Q__align.m, align 8, !tbaa !12 ; 3 uses
  store float 0.000000e+00, ptr %i.aeo, align 4, !tbaa !14
  %.not501590 = icmp slt i32 %i.o, 1
  br i1 %.not501590, label %._crit_edge594, label %.lr.ph593

.lr.ph593:                                        ; preds = %.loopexit557.thread765, %.loopexit557
  %i.aep = phi ptr [ %i.adh, %.loopexit557.thread765 ], [ %i.aeo, %.loopexit557 ] ; 8 uses
  %i.aeq = load ptr, ptr @Q__align.mp, align 8, !tbaa !49 ; 4 uses
  %i.aer = add nuw nsw i64 %i.n, 1
  %wide.trip.count692 = and i64 %i.aer, 4294967295 ; 3 uses
  %i.aes = add nsw i64 %wide.trip.count692, -1    ; 3 uses
  %min.iters.check1193 = icmp ult i64 %i.aes, 8
  br i1 %min.iters.check1193, label %scalar.ph1192.preheader, label %vector.memcheck1191

vector.memcheck1191:                              ; preds = %.lr.ph593
  %i.aet = ptrtoaddr ptr %i.aep to i64
  %i.aeu = add i64 %i.aet, 4
  %i.aev = sub i64 %i.aeu, %i.vj
  %diff.check = icmp ult i64 %i.aev, 32
  br i1 %diff.check, label %scalar.ph1192.preheader, label %vector.ph1194

vector.ph1194:                                    ; preds = %vector.memcheck1191
  %n.vec1196 = and i64 %i.aes, -8                 ; 3 uses
  %i.aew = or disjoint i64 %n.vec1196, 1
  %broadcast.splatinsert1197 = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat1198 = shufflevector <4 x float> %broadcast.splatinsert1197, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.body1199, %vector.ph1194
  %index1200 = phi i64 [ 0, %vector.ph1194 ], [ %index.next1203, %vector.body1199 ] ; 2 uses
  %i.aex = or disjoint i64 %index1200, 1          ; 3 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %i.aex ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  store <4 x i32> zeroinitializer, ptr %i.aey, align 4, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %i.aez, align 4, !tbaa !4
  %i.afa = getelementptr [4 x i8], ptr %i.vi, i64 %i.aex ; 2 uses
  %i.afb = getelementptr i8, ptr %i.afa, i64 -4
  %i.afc = getelementptr i8, ptr %i.afa, i64 12
  %wide.load1201 = load <4 x float>, ptr %i.afb, align 4, !tbaa !14
  %wide.load1202 = load <4 x float>, ptr %i.afc, align 4, !tbaa !14
  %i.afd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1198, <4 x float> splat (float 1.000000e+04), <4 x float> %wide.load1201)
  %i.afe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1198, <4 x float> splat (float 1.000000e+04), <4 x float> %wide.load1202)
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %i.aex ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 16
  store <4 x float> %i.afd, ptr %i.aff, align 4, !tbaa !14
  store <4 x float> %i.afe, ptr %i.afg, align 4, !tbaa !14
  %index.next1203 = add nuw i64 %index1200, 8     ; 2 uses
  %i.afh = icmp eq i64 %index.next1203, %n.vec1196
  br i1 %i.afh, label %middle.block1204, label %vector.body1199, !llvm.loop !147

middle.block1204:                                 ; preds = %vector.body1199
  %cmp.n1205 = icmp eq i64 %i.aes, %n.vec1196
  br i1 %cmp.n1205, label %._crit_edge594.thread, label %scalar.ph1192.preheader

scalar.ph1192.preheader:                          ; preds = %vector.memcheck1191, %.lr.ph593, %middle.block1204
  %indvars.iv689.ph = phi i64 [ 1, %vector.memcheck1191 ], [ 1, %.lr.ph593 ], [ %i.aew, %middle.block1204 ] ; 6 uses
  %.neg1408 = add nsw i64 %indvars.iv689.ph, 1
  %xtraiter1374 = and i64 %i.n, 1
  %lcmp.mod1375.not = icmp eq i64 %xtraiter1374, 0
  br i1 %lcmp.mod1375.not, label %scalar.ph1192.prol.loopexit, label %scalar.ph1192.prol

scalar.ph1192.prol:                               ; preds = %scalar.ph1192.preheader
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv689.ph
  store i32 0, ptr %i.afi, align 4, !tbaa !4
  %i.afj = getelementptr [4 x i8], ptr %i.vi, i64 %indvars.iv689.ph
  %i.afk = getelementptr i8, ptr %i.afj, i64 -4
  %i.afl = load float, ptr %i.afk, align 4, !tbaa !14
  %i.afm = tail call float @llvm.fmuladd.f32(float %i.b, float 1.000000e+04, float %i.afl)
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv689.ph
  store float %i.afm, ptr %i.afn, align 4, !tbaa !14
  %indvars.iv.next690.prol = add nuw nsw i64 %indvars.iv689.ph, 1
  br label %scalar.ph1192.prol.loopexit

scalar.ph1192.prol.loopexit:                      ; preds = %scalar.ph1192.prol, %scalar.ph1192.preheader
  %indvars.iv689.unr = phi i64 [ %indvars.iv689.ph, %scalar.ph1192.preheader ], [ %indvars.iv.next690.prol, %scalar.ph1192.prol ]
  %i.afo = icmp eq i64 %wide.trip.count692, %.neg1408
  br i1 %i.afo, label %._crit_edge594.thread, label %scalar.ph1192

scalar.ph1192:                                    ; preds = %scalar.ph1192.prol.loopexit, %scalar.ph1192
  %indvars.iv689 = phi i64 [ %indvars.iv.next690.1, %scalar.ph1192 ], [ %indvars.iv689.unr, %scalar.ph1192.prol.loopexit ] ; 5 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv689
  store i32 0, ptr %i.afp, align 4, !tbaa !4
  %i.afq = getelementptr [4 x i8], ptr %i.vi, i64 %indvars.iv689
  %i.afr = getelementptr i8, ptr %i.afq, i64 -4
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !14
  %i.aft = tail call float @llvm.fmuladd.f32(float %i.b, float 1.000000e+04, float %i.afs)
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv689
  store float %i.aft, ptr %i.afu, align 4, !tbaa !14
  %indvars.iv.next690 = add nuw nsw i64 %indvars.iv689, 1 ; 3 uses
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv.next690
  store i32 0, ptr %i.afv, align 4, !tbaa !4
  %i.afw = getelementptr [4 x i8], ptr %i.vi, i64 %indvars.iv.next690
  %i.afx = getelementptr i8, ptr %i.afw, i64 -4
  %i.afy = load float, ptr %i.afx, align 4, !tbaa !14
  %i.afz = tail call float @llvm.fmuladd.f32(float %i.b, float 1.000000e+04, float %i.afy)
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv.next690
  store float %i.afz, ptr %i.aga, align 4, !tbaa !14
  %indvars.iv.next690.1 = add nuw nsw i64 %indvars.iv689, 2 ; 2 uses
  %exitcond693.not.1 = icmp eq i64 %indvars.iv.next690.1, %wide.trip.count692
  br i1 %exitcond693.not.1, label %._crit_edge594.thread, label %scalar.ph1192, !llvm.loop !148

._crit_edge594:                                   ; preds = %.loopexit557.thread, %.loopexit557
  %i.agb = phi ptr [ %i.abr, %.loopexit557.thread ], [ %i.aeo, %.loopexit557 ] ; 2 uses
  %i.agc = icmp eq i32 %i.o, 0
  br i1 %i.agc, label %bb.y, label %._crit_edge594.thread

._crit_edge594.thread:                            ; preds = %scalar.ph1192.prol.loopexit, %scalar.ph1192, %middle.block1204, %._crit_edge594
  %i.agd = phi ptr [ %i.agb, %._crit_edge594 ], [ %i.aep, %middle.block1204 ], [ %i.aep, %scalar.ph1192 ], [ %i.aep, %scalar.ph1192.prol.loopexit ]
  %.not501590764770 = phi i1 [ true, %._crit_edge594 ], [ false, %middle.block1204 ], [ false, %scalar.ph1192 ], [ false, %scalar.ph1192.prol.loopexit ]
  %i.age = shl i64 %i.n, 32
  %sext = add i64 %i.age, -4294967296
  %i.agf = ashr exact i64 %sext, 30
  %i.agg = getelementptr inbounds i8, ptr %i.vi, i64 %i.agf
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !14
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge594, %._crit_edge594.thread
  %.sink = phi float [ %i.agh, %._crit_edge594.thread ], [ 0.000000e+00, %._crit_edge594 ]
  %i.agi = phi i1 [ false, %._crit_edge594.thread ], [ true, %._crit_edge594 ] ; 2 uses
  %i.agj = phi ptr [ %i.agd, %._crit_edge594.thread ], [ %i.agb, %._crit_edge594 ]
  %.not501590764769 = phi i1 [ %.not501590764770, %._crit_edge594.thread ], [ true, %._crit_edge594 ] ; 2 uses
  %i.agk = load ptr, ptr @Q__align.lastverticalw, align 8, !tbaa !12 ; 2 uses
  store float %.sink, ptr %i.agk, align 4, !tbaa !14
  %i.agl = load i32, ptr @outgap, align 4, !tbaa !4 ; 2 uses
  %.not502 = icmp ne i32 %i.agl, 0
  %i.agm = zext i1 %.not502 to i32
  %.0460 = add nsw i32 %i.agm, %i.l               ; 2 uses
  %i.agn = icmp sgt i32 %.0460, 1
  br i1 %i.agn, label %.lr.ph630, label %._crit_edge631

.lr.ph630:                                        ; preds = %bb.y
  %i.ago = load ptr, ptr @Q__align.initverticalw, align 8, !tbaa !12 ; 2 uses
  %i.agp = load ptr, ptr @Q__align.cpmx1, align 8
  %i.agq = load ptr, ptr @Q__align.cpmx2, align 8
  %i.agr = load ptr, ptr @Q__align.floatwork, align 8
  %i.ags = load ptr, ptr @Q__align.intwork, align 8
  %brmerge = or i1 %i.agi, %.not495545
  %i.agt = shl i64 %i.n, 2
  %i.agu = and i64 %i.agt, 17179869180
  %i.agv = load ptr, ptr @impmtx, align 8
  %i.agw = load ptr, ptr @Q__align.ijp, align 8
  %i.agx = load ptr, ptr @Q__align.mp, align 8
  %i.agy = load ptr, ptr @Q__align.fg_t_og_h_dg_n2_p, align 8
  %i.agz = load ptr, ptr @Q__align.og_t_fg_h_dg_n2_p, align 8
  %i.aha = load ptr, ptr @Q__align.og_h_dg_n2_p, align 8
  %i.ahb = load ptr, ptr @Q__align.fg_h_dg_n2_p, align 8
  %i.ahc = load ptr, ptr @Q__align.gapz_n2, align 8 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 8
  %i.ahe = load ptr, ptr @Q__align.fgcp2g, align 8
  %i.ahf = load ptr, ptr @Q__align.ogcp2g, align 8
  %i.ahg = load ptr, ptr @Q__align.fg_t_og_h_dg_n1_p, align 8
  %i.ahh = load ptr, ptr @Q__align.og_t_fg_h_dg_n1_p, align 8
  %i.ahi = load ptr, ptr @Q__align.og_h_dg_n1_p, align 8
  %i.ahj = load ptr, ptr @Q__align.fg_h_dg_n1_p, align 8
  %i.ahk = load ptr, ptr @Q__align.gapz_n1, align 8 ; 2 uses
  %i.ahl = load ptr, ptr @Q__align.fgcp1g, align 8
  %i.ahm = load ptr, ptr @Q__align.ogcp1g, align 8
  %i.ahn = shl i64 %i.n, 32
  %sext508 = add i64 %i.ahn, -4294967296
  %i.aho = ashr exact i64 %sext508, 30
  %wide.trip.count698 = zext nneg i32 %.0460 to i64
  %13 = shl i64 %i.n, 2
  %14 = add i64 %13, 17179869180
  %15 = and i64 %14, 17179869180
  %16 = add nuw nsw i64 %15, 4                    ; 2 uses
  %i.ahp = add i64 %i.n, 4294967295
  %17 = and i64 %i.ahp, 4294967295                ; 2 uses
  %i.ahq = add nuw nsw i64 %17, 1                 ; 2 uses
  %min.iters.check1214 = icmp samesign ult i64 %17, 7
  %n.vec1217 = and i64 %i.ahq, 8589934584         ; 4 uses
  %i.ahr = shl nuw nsw i64 %n.vec1217, 2          ; 2 uses
  %i.ahs = trunc i64 %n.vec1217 to i32
  %i.aht = sub i32 %i.o, %i.ahs
  %cmp.n1228 = icmp eq i64 %i.ahq, %n.vec1217
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph630, %._crit_edge622
  %indvars.iv695 = phi i64 [ 1, %.lr.ph630 ], [ %indvars.iv.next696, %._crit_edge622 ] ; 15 uses
  %.0461627 = phi float [ 0.000000e+00, %.lr.ph630 ], [ %.1462.lcssa, %._crit_edge622 ]
  %.0465626 = phi ptr [ %i.vi, %.lr.ph630 ], [ %.0466625, %._crit_edge622 ] ; 4 uses
  %.0466625 = phi ptr [ %i.vk, %.lr.ph630 ], [ %.0465626, %._crit_edge622 ] ; 13 uses
  %i.ahu = add nsw i64 %indvars.iv695, -1         ; 2 uses
  %i.ahv = getelementptr inbounds [4 x i8], ptr %i.ago, i64 %i.ahu
  %i.ahw = load float, ptr %i.ahv, align 4, !tbaa !14
  store float %i.ahw, ptr %.0465626, align 4, !tbaa !14
  %i.ahx = load i8, ptr @RNAscoremtx, align 1, !tbaa !18
  %.not506 = icmp eq i8 %i.ahx, 114
  br i1 %.not506, label %bb.aa, label %clearvec.exit529

bb.aa:                                            ; preds = %bb.z
  br i1 %i.agi, label %imp_match_out_veadQ.exit537, label %clearvec.exit529.thread

clearvec.exit529:                                 ; preds = %bb.z
  %i.ahy = trunc nuw nsw i64 %indvars.iv695 to i32
  tail call fastcc void @match_calc(ptr noundef %.0466625, ptr noundef %i.agp, ptr noundef %i.agq, i32 noundef %i.ahy, i32 noundef %i.o, ptr noundef %i.agr, ptr noundef %i.ags, i32 noundef 0)
  br i1 %brmerge, label %imp_match_out_veadQ.exit537, label %.lr.ph.preheader.i531

clearvec.exit529.thread:                          ; preds = %bb.aa
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0466625, i8 0, i64 %i.agu, i1 false), !tbaa !14
  br i1 %.not495545, label %imp_match_out_veadQ.exit537, label %.lr.ph.preheader.i531

.lr.ph.preheader.i531:                            ; preds = %clearvec.exit529, %clearvec.exit529.thread
  %i.ahz = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %indvars.iv695
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !12 ; 6 uses
  br i1 %min.iters.check1214, label %.lr.ph.i532.preheader, label %vector.memcheck1207

vector.memcheck1207:                              ; preds = %.lr.ph.preheader.i531
  %scevgep1208 = getelementptr i8, ptr %.0466625, i64 %16
  %scevgep1209 = getelementptr i8, ptr %i.aia, i64 %16
  %bound01210 = icmp ult ptr %.0466625, %scevgep1209
  %bound11211 = icmp ult ptr %i.aia, %scevgep1208
  %found.conflict1212 = and i1 %bound01210, %bound11211
  br i1 %found.conflict1212, label %.lr.ph.i532.preheader, label %vector.ph1215

vector.ph1215:                                    ; preds = %vector.memcheck1207
  %i.aib = getelementptr i8, ptr %i.aia, i64 %i.ahr
  %i.aic = getelementptr i8, ptr %.0466625, i64 %i.ahr
  br label %vector.body1218

vector.body1218:                                  ; preds = %vector.body1218, %vector.ph1215
  %index1219 = phi i64 [ 0, %vector.ph1215 ], [ %index.next1226, %vector.body1218 ] ; 2 uses
  %i.aid = shl i64 %index1219, 2                  ; 2 uses
  %next.gep1220 = getelementptr i8, ptr %i.aia, i64 %i.aid ; 2 uses
  %next.gep1221 = getelementptr i8, ptr %.0466625, i64 %i.aid ; 3 uses
  %i.aie = getelementptr i8, ptr %next.gep1220, i64 16
  %wide.load1222 = load <4 x float>, ptr %next.gep1220, align 4, !tbaa !14, !alias.scope !149
  %wide.load1223 = load <4 x float>, ptr %i.aie, align 4, !tbaa !14, !alias.scope !149
  %i.aif = getelementptr i8, ptr %next.gep1221, i64 16 ; 2 uses
  %wide.load1224 = load <4 x float>, ptr %next.gep1221, align 4, !tbaa !14, !alias.scope !152, !noalias !149
  %wide.load1225 = load <4 x float>, ptr %i.aif, align 4, !tbaa !14, !alias.scope !152, !noalias !149
  %i.aig = fadd <4 x float> %wide.load1222, %wide.load1224
  %i.aih = fadd <4 x float> %wide.load1223, %wide.load1225
  store <4 x float> %i.aig, ptr %next.gep1221, align 4, !tbaa !14, !alias.scope !152, !noalias !149
  store <4 x float> %i.aih, ptr %i.aif, align 4, !tbaa !14, !alias.scope !152, !noalias !149
  %index.next1226 = add nuw i64 %index1219, 8     ; 2 uses
  %i.aii = icmp eq i64 %index.next1226, %n.vec1217
  br i1 %i.aii, label %middle.block1227, label %vector.body1218, !llvm.loop !154

middle.block1227:                                 ; preds = %vector.body1218
  br i1 %cmp.n1228, label %imp_match_out_veadQ.exit537, label %.lr.ph.i532.preheader

.lr.ph.i532.preheader:                            ; preds = %vector.memcheck1207, %.lr.ph.preheader.i531, %middle.block1227
  %.08.i533.ph = phi ptr [ %i.aia, %vector.memcheck1207 ], [ %i.aia, %.lr.ph.preheader.i531 ], [ %i.aib, %middle.block1227 ] ; 2 uses
  %.037.i534.ph = phi i32 [ %i.o, %vector.memcheck1207 ], [ %i.o, %.lr.ph.preheader.i531 ], [ %i.aht, %middle.block1227 ] ; 4 uses
  %.046.i535.ph = phi ptr [ %.0466625, %vector.memcheck1207 ], [ %.0466625, %.lr.ph.preheader.i531 ], [ %i.aic, %middle.block1227 ] ; 2 uses
  %i.aij = add nsw i32 %.037.i534.ph, -1
  %xtraiter1377 = and i32 %.037.i534.ph, 3        ; 2 uses
  %lcmp.mod1378.not = icmp eq i32 %xtraiter1377, 0
  br i1 %lcmp.mod1378.not, label %.lr.ph.i532.prol.loopexit, label %.lr.ph.i532.prol

.lr.ph.i532.prol:                                 ; preds = %.lr.ph.i532.preheader, %.lr.ph.i532.prol
  %.08.i533.prol = phi ptr [ %i.ail, %.lr.ph.i532.prol ], [ %.08.i533.ph, %.lr.ph.i532.preheader ] ; 2 uses
  %.037.i534.prol = phi i32 [ %i.aik, %.lr.ph.i532.prol ], [ %.037.i534.ph, %.lr.ph.i532.preheader ]
  %.046.i535.prol = phi ptr [ %i.ain, %.lr.ph.i532.prol ], [ %.046.i535.ph, %.lr.ph.i532.preheader ] ; 3 uses
  %prol.iter1379 = phi i32 [ %prol.iter1379.next, %.lr.ph.i532.prol ], [ 0, %.lr.ph.i532.preheader ]
  %i.aik = add nsw i32 %.037.i534.prol, -1        ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %.08.i533.prol, i64 4 ; 2 uses
  %i.aim = load float, ptr %.08.i533.prol, align 4, !tbaa !14
  %i.ain = getelementptr inbounds nuw i8, ptr %.046.i535.prol, i64 4 ; 2 uses
  %i.aio = load float, ptr %.046.i535.prol, align 4, !tbaa !14
  %i.aip = fadd float %i.aim, %i.aio
  store float %i.aip, ptr %.046.i535.prol, align 4, !tbaa !14
  %prol.iter1379.next = add i32 %prol.iter1379, 1 ; 2 uses
  %prol.iter1379.cmp.not = icmp eq i32 %prol.iter1379.next, %xtraiter1377
  br i1 %prol.iter1379.cmp.not, label %.lr.ph.i532.prol.loopexit, label %.lr.ph.i532.prol, !llvm.loop !155

.lr.ph.i532.prol.loopexit:                        ; preds = %.lr.ph.i532.prol, %.lr.ph.i532.preheader
  %.08.i533.unr = phi ptr [ %.08.i533.ph, %.lr.ph.i532.preheader ], [ %i.ail, %.lr.ph.i532.prol ]
  %.037.i534.unr = phi i32 [ %.037.i534.ph, %.lr.ph.i532.preheader ], [ %i.aik, %.lr.ph.i532.prol ]
  %.046.i535.unr = phi ptr [ %.046.i535.ph, %.lr.ph.i532.preheader ], [ %i.ain, %.lr.ph.i532.prol ]
  %i.aiq = icmp ult i32 %i.aij, 3
  br i1 %i.aiq, label %imp_match_out_veadQ.exit537, label %.lr.ph.i532

.lr.ph.i532:                                      ; preds = %.lr.ph.i532.prol.loopexit, %.lr.ph.i532
  %.08.i533 = phi ptr [ %i.ajh, %.lr.ph.i532 ], [ %.08.i533.unr, %.lr.ph.i532.prol.loopexit ] ; 5 uses
  %.037.i534 = phi i32 [ %i.ajg, %.lr.ph.i532 ], [ %.037.i534.unr, %.lr.ph.i532.prol.loopexit ]
  %.046.i535 = phi ptr [ %i.ajj, %.lr.ph.i532 ], [ %.046.i535.unr, %.lr.ph.i532.prol.loopexit ] ; 6 uses
  %i.air = getelementptr inbounds nuw i8, ptr %.08.i533, i64 4
  %i.ais = load float, ptr %.08.i533, align 4, !tbaa !14
  %i.ait = getelementptr inbounds nuw i8, ptr %.046.i535, i64 4 ; 2 uses
  %i.aiu = load float, ptr %.046.i535, align 4, !tbaa !14
  %i.aiv = fadd float %i.ais, %i.aiu
  store float %i.aiv, ptr %.046.i535, align 4, !tbaa !14
  %i.aiw = getelementptr inbounds nuw i8, ptr %.08.i533, i64 8
  %i.aix = load float, ptr %i.air, align 4, !tbaa !14
  %i.aiy = getelementptr inbounds nuw i8, ptr %.046.i535, i64 8 ; 2 uses
  %i.aiz = load float, ptr %i.ait, align 4, !tbaa !14
  %i.aja = fadd float %i.aix, %i.aiz
  store float %i.aja, ptr %i.ait, align 4, !tbaa !14
  %i.ajb = getelementptr inbounds nuw i8, ptr %.08.i533, i64 12
  %i.ajc = load float, ptr %i.aiw, align 4, !tbaa !14
  %i.ajd = getelementptr inbounds nuw i8, ptr %.046.i535, i64 12 ; 2 uses
  %i.aje = load float, ptr %i.aiy, align 4, !tbaa !14
  %i.ajf = fadd float %i.ajc, %i.aje
  store float %i.ajf, ptr %i.aiy, align 4, !tbaa !14
  %i.ajg = add nsw i32 %.037.i534, -4             ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %.08.i533, i64 16
  %i.aji = load float, ptr %i.ajb, align 4, !tbaa !14
  %i.ajj = getelementptr inbounds nuw i8, ptr %.046.i535, i64 16
  %i.ajk = load float, ptr %i.ajd, align 4, !tbaa !14
  %i.ajl = fadd float %i.aji, %i.ajk
  store float %i.ajl, ptr %i.ajd, align 4, !tbaa !14
  %.not.i536.3 = icmp eq i32 %i.ajg, 0
  br i1 %.not.i536.3, label %imp_match_out_veadQ.exit537, label %.lr.ph.i532, !llvm.loop !156

imp_match_out_veadQ.exit537:                      ; preds = %.lr.ph.i532.prol.loopexit, %.lr.ph.i532, %middle.block1227, %clearvec.exit529, %bb.aa, %clearvec.exit529.thread
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.ago, i64 %indvars.iv695
  %i.ajn = load float, ptr %i.ajm, align 4, !tbaa !14
  store float %i.ajn, ptr %.0466625, align 4, !tbaa !14
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %indvars.iv695
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !14
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %indvars.iv695
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !14
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.ahi, i64 %indvars.iv695
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !14
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %indvars.iv695
  %i.ajv = load float, ptr %i.aju, align 4, !tbaa !14
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.ahk, i64 %indvars.iv695
  %i.ajx = load float, ptr %i.ajw, align 4, !tbaa !14
  %indvars.iv.next696 = add nuw nsw i64 %indvars.iv695, 1 ; 3 uses
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.ahk, i64 %indvars.iv.next696
  %i.ajz = load float, ptr %i.ajy, align 4, !tbaa !14
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %indvars.iv695
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !14
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %indvars.iv695
  %i.akd = load float, ptr %i.akc, align 4, !tbaa !14
  br i1 %.not501590764769, label %._crit_edge622, label %.lr.ph621.preheader

.lr.ph621.preheader:                              ; preds = %imp_match_out_veadQ.exit537
  %i.ake = load float, ptr %.0465626, align 4, !tbaa !14
  %i.akf = tail call float @llvm.fmuladd.f32(float %i.b, float 1.000000e+04, float %i.ake)
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr %i.agw, i64 %indvars.iv695
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !49
  %i.aki = trunc nuw nsw i64 %indvars.iv695 to i32
  %i.akj = trunc nuw nsw i64 %i.ahu to i32
  br label %.lr.ph621

.lr.ph621:                                        ; preds = %.lr.ph621.preheader, %bb.ag
  %.0470620.pn = phi ptr [ %.0470620, %bb.ag ], [ %.0466625, %.lr.ph621.preheader ]
  %.0467619.pn = phi ptr [ %.0467619, %bb.ag ], [ %i.akh, %.lr.ph621.preheader ]
  %.0468618.pn = phi ptr [ %.0468618, %bb.ag ], [ %i.agj, %.lr.ph621.preheader ]
  %.0471617.pn = phi ptr [ %.0471617, %bb.ag ], [ %i.agx, %.lr.ph621.preheader ]
  %.0479616.pn = phi ptr [ %.0479616, %bb.ag ], [ %i.agy, %.lr.ph621.preheader ]
  %.0478615.pn = phi ptr [ %.0478615, %bb.ag ], [ %i.agz, %.lr.ph621.preheader ]
  %.0477614.pn = phi ptr [ %.0477614, %bb.ag ], [ %i.aha, %.lr.ph621.preheader ]
  %.0476613.pn = phi ptr [ %.0476613, %bb.ag ], [ %i.ahb, %.lr.ph621.preheader ]
  %.0475612.pn = phi ptr [ %.0475612, %bb.ag ], [ %i.ahc, %.lr.ph621.preheader ]
  %.0473611.pn = phi ptr [ %.0473611, %bb.ag ], [ %i.ahe, %.lr.ph621.preheader ]
  %.0472610.pn = phi ptr [ %.0472610, %bb.ag ], [ %i.ahf, %.lr.ph621.preheader ]
  %.4457609 = phi i32 [ %i.alz, %bb.ag ], [ 1, %.lr.ph621.preheader ] ; 4 uses
  %.0469608 = phi ptr [ %i.alx, %bb.ag ], [ %.0465626, %.lr.ph621.preheader ] ; 2 uses
  %.0474607 = phi ptr [ %i.aly, %bb.ag ], [ %i.ahd, %.lr.ph621.preheader ] ; 2 uses
  %i.akk = phi float [ %i.alj, %bb.ag ], [ %i.akf, %.lr.ph621.preheader ] ; 3 uses
  %i.akl = phi i32 [ %i.ali, %bb.ag ], [ 0, %.lr.ph621.preheader ] ; 2 uses
  %.0472610 = getelementptr inbounds nuw i8, ptr %.0472610.pn, i64 4 ; 2 uses
  %.0473611 = getelementptr inbounds nuw i8, ptr %.0473611.pn, i64 4 ; 2 uses
  %.0475612 = getelementptr inbounds nuw i8, ptr %.0475612.pn, i64 4 ; 2 uses
  %.0476613 = getelementptr inbounds nuw i8, ptr %.0476613.pn, i64 4 ; 2 uses
  %.0477614 = getelementptr inbounds nuw i8, ptr %.0477614.pn, i64 4 ; 2 uses
  %.0478615 = getelementptr inbounds nuw i8, ptr %.0478615.pn, i64 4 ; 2 uses
  %.0479616 = getelementptr inbounds nuw i8, ptr %.0479616.pn, i64 4 ; 2 uses
  %.0471617 = getelementptr inbounds nuw i8, ptr %.0471617.pn, i64 4 ; 3 uses
  %.0468618 = getelementptr inbounds nuw i8, ptr %.0468618.pn, i64 4 ; 3 uses
  %.0467619 = getelementptr inbounds nuw i8, ptr %.0467619.pn, i64 4 ; 4 uses
  %.0470620 = getelementptr inbounds nuw i8, ptr %.0470620.pn, i64 4 ; 3 uses
  %i.akm = load float, ptr %.0469608, align 4, !tbaa !14 ; 3 uses
  %i.akn = load float, ptr %.0477614, align 4, !tbaa !14
  %i.ako = fmul float %i.akd, %i.akn
  %i.akp = fadd float %i.akm, %i.ako
  %i.akq = load float, ptr %.0472610, align 4, !tbaa !14
  %i.akr = fmul float %i.ajt, %i.akq
  %i.aks = fadd float %i.akp, %i.akr
  %i.akt = load float, ptr %.0476613, align 4, !tbaa !14
  %i.aku = fmul float %i.akb, %i.akt
  %i.akv = fadd float %i.aks, %i.aku
  %i.akw = load float, ptr %.0473611, align 4, !tbaa !14
  %i.akx = fmul float %i.ajv, %i.akw
  %i.aky = fadd float %i.akv, %i.akx              ; 2 uses
  store i32 0, ptr %.0467619, align 4, !tbaa !4
  %i.akz = load float, ptr %.0479616, align 4, !tbaa !14
  %i.ala = fmul float %i.ajz, %i.akz
  %i.alb = fadd float %i.akk, %i.ala              ; 2 uses
  %i.alc = fcmp ogt float %i.alb, %i.aky
  br i1 %i.alc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph621
  %.neg = sub nsw i32 %i.akl, %.4457609
  store i32 %.neg, ptr %.0467619, align 4, !tbaa !4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph621
  %.2463 = phi float [ %i.alb, %bb.ab ], [ %i.aky, %.lr.ph621 ] ; 2 uses
  %i.ald = load float, ptr %.0478615, align 4, !tbaa !14
  %i.ale = fmul float %i.ajx, %i.ald
  %i.alf = fadd float %i.akm, %i.ale              ; 2 uses
  %i.alg = fcmp ult float %i.alf, %i.akk          ; 2 uses
  %i.alh = add nsw i32 %.4457609, -1
  %i.ali = select i1 %i.alg, i32 %i.akl, i32 %i.alh
  %i.alj = select i1 %i.alg, float %i.akk, float %i.alf
  %i.alk = load float, ptr %.0474607, align 4, !tbaa !14
  %i.all = fmul float %i.ajp, %i.alk
  %i.alm = load float, ptr %.0468618, align 4, !tbaa !14 ; 2 uses
  %i.aln = fadd float %i.alm, %i.all              ; 2 uses
  %i.alo = fcmp ogt float %i.aln, %.2463
  br i1 %i.alo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.alp = load i32, ptr %.0471617, align 4, !tbaa !4
  %i.alq = sub nsw i32 %i.aki, %i.alp
end_hunk_1
