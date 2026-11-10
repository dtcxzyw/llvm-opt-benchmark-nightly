Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilTruth?download=true
inline.NumInlined: 60
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 72
begin_hunk_0_@Extra_TruthMinCofSuppOverlap:bb.a
  br i1 %exitcond.not.i65, label %Extra_TruthVarInSupport.exit113.thread, label %.lr.ph.i61, !llvm.loop !5

.lr.ph.i61:                                       ; preds = %.preheader74.i57, %bb.p
  %indvars.iv.i62 = phi i64 [ %indvars.iv.next.i64, %bb.p ], [ 0, %.preheader74.i57 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr @Extra_TruthMinCofSuppOverlap.uCofactor, i64 %indvars.iv.i62
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !18 ; 2 uses
  %i.dm = and i32 %i.dl, 65535
  %i.dn = lshr i32 %i.dl, 16
  %.not.i63 = icmp eq i32 %i.dm, %i.dn
  br i1 %.not.i63, label %bb.p, label %Extra_TruthVarInSupport.exit113.thread127

bb.q:                                             ; preds = %.lr.ph.i45
  %i.do = add nsw i32 %.0810.i47, -5              ; 3 uses
  %i.dp = shl nuw i32 1, %i.do                    ; 2 uses
  br i1 %i.f, label %.preheader.lr.ph.i98, label %Extra_TruthVarInSupport.exit113.thread

.preheader.lr.ph.i98:                             ; preds = %bb.q
  %.not104.i99 = icmp eq i32 %i.do, 31
  %i.dq = shl i32 2, %i.do                        ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  br i1 %.not104.i99, label %Extra_TruthVarInSupport.exit113, label %.preheader.us.preheader.i100

.preheader.us.preheader.i100:                     ; preds = %.preheader.lr.ph.i98
  %i.ds = sext i32 %i.dp to i64
  %smax.i101 = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 1)
  %wide.trip.count140.i102 = zext nneg i32 %smax.i101 to i64
  br label %.preheader.us.i103

.preheader.us.i103:                               ; preds = %._crit_edge.us.i112, %.preheader.us.preheader.i100
  %.0103.us.i104 = phi i32 [ %i.dx, %._crit_edge.us.i112 ], [ 0, %.preheader.us.preheader.i100 ]
  %.054102.us.i105 = phi ptr [ %i.dw, %._crit_edge.us.i112 ], [ @Extra_TruthMinCofSuppOverlap.uCofactor, %.preheader.us.preheader.i100 ] ; 3 uses
  %invariant.gep.i106 = getelementptr [4 x i8], ptr %.054102.us.i105, i64 %i.ds
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next138.i110 = add nuw nsw i64 %indvars.iv137.i107, 1 ; 2 uses
  %exitcond141.not.i111 = icmp eq i64 %indvars.iv.next138.i110, %wide.trip.count140.i102
  br i1 %exitcond141.not.i111, label %._crit_edge.us.i112, label %bb.s, !llvm.loop !6

bb.s:                                             ; preds = %bb.r, %.preheader.us.i103
  %indvars.iv137.i107 = phi i64 [ 0, %.preheader.us.i103 ], [ %indvars.iv.next138.i110, %bb.r ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.054102.us.i105, i64 %indvars.iv137.i107
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !18
  %gep.i108 = getelementptr [4 x i8], ptr %invariant.gep.i106, i64 %indvars.iv137.i107
  %i.dv = load i32, ptr %gep.i108, align 4, !tbaa !18
  %.not61.us.i109 = icmp eq i32 %i.du, %i.dv
  br i1 %.not61.us.i109, label %bb.r, label %Extra_TruthVarInSupport.exit113.thread127

._crit_edge.us.i112:                              ; preds = %bb.r
  %i.dw = getelementptr inbounds [4 x i8], ptr %.054102.us.i105, i64 %i.dr
  %i.dx = add nsw i32 %.0103.us.i104, %i.dq       ; 2 uses
  %i.dy = icmp slt i32 %i.dx, %spec.select.i
  br i1 %i.dy, label %.preheader.us.i103, label %Extra_TruthVarInSupport.exit113.thread, !llvm.loop !7

Extra_TruthVarInSupport.exit113.thread127:        ; preds = %.lr.ph.i61, %.lr.ph81.i69, %.lr.ph86.i77, %.lr.ph91.i85, %.lr.ph96.i93, %bb.s
  %i.dz = shl nuw i32 1, %.0810.i47
  br label %Extra_TruthVarInSupport.exit113.thread

Extra_TruthVarInSupport.exit113:                  ; preds = %.preheader.lr.ph.i98
  %i.ea = shl nuw nsw i32 1, %.0810.i47
  br label %Extra_TruthVarInSupport.exit113.thread

Extra_TruthVarInSupport.exit113.thread:           ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %._crit_edge.us.i112, %bb.q, %.preheader71.i66, %.preheader68.i74, %.preheader74.i57, %.preheader63.i90, %.preheader65.i82, %Extra_TruthVarInSupport.exit113, %Extra_TruthVarInSupport.exit113.thread127
  %i.eb = phi i32 [ %i.dz, %Extra_TruthVarInSupport.exit113.thread127 ], [ %i.ea, %Extra_TruthVarInSupport.exit113 ], [ 0, %._crit_edge.us.i112 ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %.preheader65.i82 ], [ 0, %.preheader63.i90 ], [ 0, %bb.l ], [ 0, %.preheader74.i57 ], [ 0, %bb.m ], [ 0, %.preheader68.i74 ], [ 0, %bb.q ], [ 0, %.preheader71.i66 ], [ 0, %bb.p ]
  %.1.i49 = or i32 %i.eb, %.011.i46               ; 3 uses
  %i.ec = add nuw nsw i32 %.0810.i47, 1           ; 2 uses
  %exitcond.not.i50 = icmp eq i32 %i.ec, %1
  br i1 %exitcond.not.i50, label %Extra_TruthSupport.exit51.loopexit, label %.lr.ph.i45, !llvm.loop !8

Extra_TruthSupport.exit51.loopexit:               ; preds = %Extra_TruthVarInSupport.exit113.thread
  %i.ed = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.1.i49)
  %i.ee = and i32 %.1.i49, %.1.i185187
  %i.ef = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ee) ; 2 uses
  %i.eg = icmp samesign ugt i32 %.030152, %i.ef
  %i.eh = icmp samesign ult i32 %i.cp, 6
  %or.cond = select i1 %i.eg, i1 %i.eh, i1 false
  %i.ei = icmp samesign ult i32 %i.ed, 6
  %or.cond3 = select i1 %or.cond, i1 %i.ei, i1 false ; 2 uses
  %spec.select = select i1 %or.cond3, i32 %i.ef, i32 %.030152 ; 3 uses
  %spec.select37 = select i1 %or.cond3, i32 %.033151, i32 %.0153 ; 3 uses
  %i.ej = icmp eq i32 %spec.select, 0
  br i1 %i.ej, label %Extra_TruthSupport.exit51.loopexit._crit_edge, label %bb.b

Extra_TruthSupport.exit51.loopexit._crit_edge:    ; preds = %bb.b, %Extra_TruthSupport.exit51.loopexit, %bb.a
  %.232 = phi i32 [ 32, %bb.a ], [ 0, %Extra_TruthSupport.exit51.loopexit ], [ %spec.select, %bb.b ]
  %.2 = phi i32 [ -1, %bb.a ], [ %spec.select37, %Extra_TruthSupport.exit51.loopexit ], [ %spec.select37, %bb.b ]
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %Extra_TruthSupport.exit51.loopexit._crit_edge
  store i32 %.2, ptr %2, align 4, !tbaa !18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %Extra_TruthSupport.exit51.loopexit._crit_edge
  ret i32 %.232
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Extra_TruthCountOnesInCofs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %1, 6                       ; 2 uses
  %i.b = add nsw i32 %1, -5                       ; 2 uses
  %i.c = shl nuw i32 1, %i.b                      ; 2 uses
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 2 uses
  %i.e = sext i32 %1 to i64
  %i.f = shl nsw i64 %i.e, 2
  tail call void @llvm.memset.p0.i64(ptr align 2 %2, i8 0, i64 %i.f, i1 false)
  br i1 %i.a, label %bb.b, label %.preheader90

.preheader90:                                     ; preds = %bb.a
  %.not142 = icmp eq i32 %i.b, 31
  br i1 %.not142, label %.thread87, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader90
  %wide.trip.count128 = zext nneg i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.g = icmp sgt i32 %1, 0
  br i1 %i.g, label %bb.c, label %.thread87

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %0, align 4, !tbaa !18
  %i.i = insertelement <2 x i32> poison, i32 %i.h, i64 0
  %i.j = shufflevector <2 x i32> %i.i, <2 x i32> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.k = and <2 x i32> %i.j, <i32 1431655765, i32 -1431655766>
  %i.l = tail call range(i32 0, 33) <2 x i32> @llvm.ctpop.v2i32(<2 x i32> %i.k)
  %i.m = trunc nuw nsw <2 x i32> %i.l to <2 x i16>
  store <2 x i16> %i.m, ptr %2, align 2, !tbaa !24
  %.not88 = icmp eq i32 %1, 1
  br i1 %.not88, label %.thread87, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = and <2 x i32> %i.j, <i32 858993459, i32 -858993460>
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = tail call range(i32 0, 33) <2 x i32> @llvm.ctpop.v2i32(<2 x i32> %i.n)
  %i.q = trunc nuw nsw <2 x i32> %i.p to <2 x i16>
  store <2 x i16> %i.q, ptr %i.o, align 2, !tbaa !24
  %i.r = icmp samesign ugt i32 %1, 2
  br i1 %i.r, label %bb.e, label %.thread87

bb.e:                                             ; preds = %bb.d
  %i.s = and <2 x i32> %i.j, <i32 252645135, i32 -252645136>
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = tail call range(i32 0, 33) <2 x i32> @llvm.ctpop.v2i32(<2 x i32> %i.s)
  %i.v = trunc nuw nsw <2 x i32> %i.u to <2 x i16>
  store <2 x i16> %i.v, ptr %i.t, align 2, !tbaa !24
  %.not89 = icmp eq i32 %1, 3
  br i1 %.not89, label %.thread87, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = and <2 x i32> %i.j, <i32 16711935, i32 -16711936>
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = tail call range(i32 0, 33) <2 x i32> @llvm.ctpop.v2i32(<2 x i32> %i.w)
  %i.z = trunc nuw nsw <2 x i32> %i.y to <2 x i16>
  store <2 x i16> %i.z, ptr %i.x, align 2, !tbaa !24
  %i.aa = icmp eq i32 %1, 5
  br i1 %i.aa, label %bb.g, label %.thread87

bb.g:                                             ; preds = %bb.f
  %i.ab = and <2 x i32> %i.j, <i32 65535, i32 -65536>
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = tail call range(i32 0, 33) <2 x i32> @llvm.ctpop.v2i32(<2 x i32> %i.ab)
  %i.ae = trunc nuw nsw <2 x i32> %i.ad to <2 x i16>
  store <2 x i16> %i.ae, ptr %i.ac, align 2, !tbaa !24
  br label %.thread87

.preheader:                                       ; preds = %._crit_edge
  %i.af = lshr i32 %i.d, 1                        ; 2 uses
  %i.ag = icmp sgt i32 %i.d, 1
  br i1 %i.ag, label %.lr.ph96, label %.thread87

.lr.ph96:                                         ; preds = %.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 2 uses
  %i.aj = load <8 x i16>, ptr %2, align 2, !tbaa !24 ; 9 uses
  %.promoted111 = load i16, ptr %i.ah, align 2, !tbaa !24 ; 2 uses
  %.promoted113 = load i16, ptr %i.ai, align 2, !tbaa !24 ; 2 uses
  %i.ak = add nsw i32 %i.af, -1                   ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ak, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph96
  %n.vec = and i64 %i.am, 8589934588              ; 4 uses
  %i.an = trunc i64 %n.vec to i32
  %i.ao = shl nuw nsw i64 %n.vec, 3
  %i.ap = getelementptr i8, ptr %0, i64 %i.ao
  %i.aq = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.promoted113, i64 0
  %i.ar = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.promoted111, i64 0
  %i.as = shufflevector <8 x i16> %i.aj, <8 x i16> poison, <4 x i32> <i32 7, i32 poison, i32 poison, i32 poison>
  %i.at = shufflevector <4 x i16> %i.as, <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.au = shufflevector <8 x i16> %i.aj, <8 x i16> poison, <4 x i32> <i32 6, i32 poison, i32 poison, i32 poison>
  %i.av = shufflevector <4 x i16> %i.au, <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.aw = shufflevector <8 x i16> %i.aj, <8 x i16> poison, <4 x i32> <i32 5, i32 poison, i32 poison, i32 poison>
  %i.ax = shufflevector <4 x i16> %i.aw, <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ay = shufflevector <8 x i16> %i.aj, <8 x i16> poison, <4 x i32> <i32 4, i32 poison, i32 poison, i32 poison>
  %i.az = shufflevector <4 x i16> %i.ay, <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %3 = shufflevector <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aj, <4 x i32> <i32 11, i32 1, i32 2, i32 3>
  %4 = shufflevector <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aj, <4 x i32> <i32 10, i32 1, i32 2, i32 3>
  %5 = shufflevector <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aj, <4 x i32> <i32 9, i32 1, i32 2, i32 3>
  %i.ba = shufflevector <8 x i16> %i.aj, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x i16> %i.ba, <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i16> [ %i.aq, %vector.ph ], [ %i.ds, %vector.body ]
  %vec.phi152 = phi <4 x i16> [ %i.ar, %vector.ph ], [ %i.dm, %vector.body ]
  %vec.phi153 = phi <4 x i16> [ %i.at, %vector.ph ], [ %i.dg, %vector.body ]
  %vec.phi154 = phi <4 x i16> [ %i.av, %vector.ph ], [ %i.cz, %vector.body ]
  %vec.phi155 = phi <4 x i16> [ %i.ax, %vector.ph ], [ %i.cs, %vector.body ]
  %vec.phi156 = phi <4 x i16> [ %i.az, %vector.ph ], [ %i.cl, %vector.body ]
  %vec.phi157 = phi <4 x i16> [ %3, %vector.ph ], [ %i.ce, %vector.body ]
  %vec.phi158 = phi <4 x i16> [ %4, %vector.ph ], [ %i.bx, %vector.body ]
  %vec.phi159 = phi <4 x i16> [ %5, %vector.ph ], [ %i.bq, %vector.body ]
  %vec.phi160 = phi <4 x i16> [ %i.bb, %vector.ph ], [ %i.bj, %vector.body ]
  %i.bc = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.bc
  %wide.vec = load <8 x i32>, ptr %next.gep, align 4, !tbaa !18 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 10 uses
  %strided.vec161 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 10 uses
  %i.bd = and <4 x i32> %strided.vec, splat (i32 1431655765)
  %i.be = shl <4 x i32> %strided.vec161, splat (i32 1)
  %i.bf = and <4 x i32> %i.be, splat (i32 -1431655766)
  %i.bg = or disjoint <4 x i32> %i.bf, %i.bd
  %i.bh = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.bg)
  %i.bi = trunc nuw nsw <4 x i32> %i.bh to <4 x i16>
  %i.bj = add <4 x i16> %vec.phi160, %i.bi        ; 2 uses
  %i.bk = and <4 x i32> %strided.vec, splat (i32 -1431655766)
  %i.bl = lshr <4 x i32> %strided.vec161, splat (i32 1)
  %i.bm = and <4 x i32> %i.bl, splat (i32 1431655765)
  %i.bn = or disjoint <4 x i32> %i.bm, %i.bk
  %i.bo = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.bn)
  %i.bp = trunc nuw nsw <4 x i32> %i.bo to <4 x i16>
  %i.bq = add <4 x i16> %vec.phi159, %i.bp        ; 2 uses
  %i.br = and <4 x i32> %strided.vec, splat (i32 858993459)
  %i.bs = shl <4 x i32> %strided.vec161, splat (i32 2)
  %i.bt = and <4 x i32> %i.bs, splat (i32 -858993460)
  %i.bu = or disjoint <4 x i32> %i.bt, %i.br
  %i.bv = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.bu)
  %i.bw = trunc nuw nsw <4 x i32> %i.bv to <4 x i16>
  %i.bx = add <4 x i16> %vec.phi158, %i.bw        ; 2 uses
  %i.by = and <4 x i32> %strided.vec, splat (i32 -858993460)
  %i.bz = lshr <4 x i32> %strided.vec161, splat (i32 2)
  %i.ca = and <4 x i32> %i.bz, splat (i32 858993459)
  %i.cb = or disjoint <4 x i32> %i.ca, %i.by
  %i.cc = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.cb)
  %i.cd = trunc nuw nsw <4 x i32> %i.cc to <4 x i16>
  %i.ce = add <4 x i16> %vec.phi157, %i.cd        ; 2 uses
  %i.cf = and <4 x i32> %strided.vec, splat (i32 252645135)
  %i.cg = shl <4 x i32> %strided.vec161, splat (i32 4)
  %i.ch = and <4 x i32> %i.cg, splat (i32 -252645136)
  %i.ci = or disjoint <4 x i32> %i.ch, %i.cf
  %i.cj = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.ci)
  %i.ck = trunc nuw nsw <4 x i32> %i.cj to <4 x i16>
  %i.cl = add <4 x i16> %vec.phi156, %i.ck        ; 2 uses
  %i.cm = and <4 x i32> %strided.vec, splat (i32 -252645136)
  %i.cn = lshr <4 x i32> %strided.vec161, splat (i32 4)
  %i.co = and <4 x i32> %i.cn, splat (i32 252645135)
  %i.cp = or disjoint <4 x i32> %i.co, %i.cm
  %i.cq = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.cp)
  %i.cr = trunc nuw nsw <4 x i32> %i.cq to <4 x i16>
  %i.cs = add <4 x i16> %vec.phi155, %i.cr        ; 2 uses
  %i.ct = and <4 x i32> %strided.vec, splat (i32 16711935)
  %i.cu = shl <4 x i32> %strided.vec161, splat (i32 8)
  %i.cv = and <4 x i32> %i.cu, splat (i32 -16711936)
  %i.cw = or disjoint <4 x i32> %i.cv, %i.ct
  %i.cx = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.cw)
  %i.cy = trunc nuw nsw <4 x i32> %i.cx to <4 x i16>
  %i.cz = add <4 x i16> %vec.phi154, %i.cy        ; 2 uses
  %i.da = and <4 x i32> %strided.vec, splat (i32 -16711936)
  %i.db = lshr <4 x i32> %strided.vec161, splat (i32 8)
  %i.dc = and <4 x i32> %i.db, splat (i32 16711935)
  %i.dd = or disjoint <4 x i32> %i.dc, %i.da
  %i.de = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.dd)
  %i.df = trunc nuw nsw <4 x i32> %i.de to <4 x i16>
  %i.dg = add <4 x i16> %vec.phi153, %i.df        ; 2 uses
  %i.dh = and <4 x i32> %strided.vec, splat (i32 65535)
  %i.di = shl <4 x i32> %strided.vec161, splat (i32 16)
  %i.dj = or disjoint <4 x i32> %i.di, %i.dh
  %i.dk = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.dj)
  %i.dl = trunc nuw nsw <4 x i32> %i.dk to <4 x i16>
  %i.dm = add <4 x i16> %vec.phi152, %i.dl        ; 2 uses
  %i.dn = and <4 x i32> %strided.vec, splat (i32 -65536)
  %i.do = lshr <4 x i32> %strided.vec161, splat (i32 16)
  %i.dp = or disjoint <4 x i32> %i.do, %i.dn
  %i.dq = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.dp)
  %i.dr = trunc nuw nsw <4 x i32> %i.dq to <4 x i16>
  %i.ds = add <4 x i16> %vec.phi, %i.dr           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  %i.du = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ds) ; 2 uses
  %i.dv = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.dm) ; 2 uses
  %i.dw = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.dg)
  %i.dx = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.cz)
  %i.dy = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.cs)
  %i.dz = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.cl)
  %i.ea = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ce)
  %i.eb = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.bx)
  %i.ec = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.bq)
  %i.ed = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.bj)
  %cmp.n = icmp eq i64 %i.am, %n.vec
  %i.ee = insertelement <8 x i16> poison, i16 %i.ed, i64 0
  %i.ef = insertelement <8 x i16> %i.ee, i16 %i.ec, i64 1
  %i.eg = insertelement <8 x i16> %i.ef, i16 %i.eb, i64 2
  %i.eh = insertelement <8 x i16> %i.eg, i16 %i.ea, i64 3
  %i.ei = insertelement <8 x i16> %i.eh, i16 %i.dz, i64 4
  %i.ej = insertelement <8 x i16> %i.ei, i16 %i.dy, i64 5
  %i.ek = insertelement <8 x i16> %i.ej, i16 %i.dx, i64 6
  %i.el = insertelement <8 x i16> %i.ek, i16 %i.dw, i64 7 ; 2 uses
  br i1 %cmp.n, label %..thread87.loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph96, %middle.block
  %.ph = phi i16 [ %.promoted113, %.lr.ph96 ], [ %i.du, %middle.block ]
  %.ph172 = phi i16 [ %.promoted111, %.lr.ph96 ], [ %i.dv, %middle.block ]
  %.195.ph = phi i32 [ 0, %.lr.ph96 ], [ %i.an, %middle.block ]
  %.07994.ph = phi ptr [ %0, %.lr.ph96 ], [ %i.ap, %middle.block ]
  %.ph173 = phi <8 x i16> [ %i.aj, %.lr.ph96 ], [ %i.el, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv125 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next126, %._crit_edge ] ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv125
  %i.en = load i32, ptr %i.em, align 4, !tbaa !18
  %i.eo = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.en)
  %i.ep = trunc nuw nsw i32 %i.eo to i16          ; 2 uses
  %i.eq = trunc nuw nsw i64 %indvars.iv125 to i32
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 5, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.er = trunc i64 %indvars.iv to i32
  %i.es = add i32 %i.er, -5
  %i.et = shl nuw i32 1, %i.es
  %i.eu = and i32 %i.et, %i.eq
  %.not = icmp eq i32 %i.eu, 0
  %.idx132 = shl nuw nsw i64 %indvars.iv, 2
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 %.idx132 ; 3 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2 ; 2 uses
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !24
  %i.ey = add i16 %i.ex, %i.ep
  store i16 %i.ey, ptr %i.ew, align 2, !tbaa !24
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ez = load i16, ptr %i.ev, align 2, !tbaa !24
  %i.fa = add i16 %i.ez, %i.ep
  store i16 %i.fa, ptr %i.ev, align 2, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !206

._crit_edge:                                      ; preds = %bb.k
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %.preheader, label %.lr.ph, !llvm.loop !207

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.fb = phi i16 [ %i.gf, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.fc = phi i16 [ %i.fz, %scalar.ph ], [ %.ph172, %scalar.ph.preheader ]
  %.195 = phi i32 [ %i.gh, %scalar.ph ], [ %.195.ph, %scalar.ph.preheader ]
  %.07994 = phi ptr [ %i.gg, %scalar.ph ], [ %.07994.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fd = phi <8 x i16> [ %i.ft, %scalar.ph ], [ %.ph173, %scalar.ph.preheader ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.07994, i64 4
  %i.ff = load i32, ptr %.07994, align 4, !tbaa !18 ; 3 uses
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !18 ; 3 uses
  %i.fh = insertelement <4 x i32> poison, i32 %i.fg, i64 0
  %i.fi = shufflevector <4 x i32> %i.fh, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fj = shl <4 x i32> %i.fi, <i32 1, i32 2, i32 4, i32 8>
  %i.fk = insertelement <8 x i32> poison, i32 %i.ff, i64 0
  %i.fl = shufflevector <8 x i32> %i.fk, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.fm = and <8 x i32> %i.fl, <i32 1431655765, i32 -1431655766, i32 858993459, i32 -858993460, i32 252645135, i32 -252645136, i32 16711935, i32 -16711936>
  %i.fn = lshr <4 x i32> %i.fi, <i32 1, i32 2, i32 4, i32 8>
  %i.fo = shufflevector <4 x i32> %i.fj, <4 x i32> %i.fn, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.fp = and <8 x i32> %i.fo, <i32 -1431655766, i32 1431655765, i32 -858993460, i32 858993459, i32 -252645136, i32 252645135, i32 -16711936, i32 16711935>
  %i.fq = or disjoint <8 x i32> %i.fp, %i.fm
  %i.fr = tail call range(i32 0, 33) <8 x i32> @llvm.ctpop.v8i32(<8 x i32> %i.fq)
  %i.fs = trunc nuw nsw <8 x i32> %i.fr to <8 x i16>
  %i.ft = add <8 x i16> %i.fd, %i.fs              ; 2 uses
  %i.fu = and i32 %i.ff, 65535
  %i.fv = shl i32 %i.fg, 16
  %i.fw = or disjoint i32 %i.fv, %i.fu
  %i.fx = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fw)
  %i.fy = trunc nuw nsw i32 %i.fx to i16
  %i.fz = add i16 %i.fc, %i.fy                    ; 2 uses
  %i.ga = and i32 %i.ff, -65536
  %i.gb = lshr i32 %i.fg, 16
  %i.gc = or disjoint i32 %i.gb, %i.ga
  %i.gd = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gc)
  %i.ge = trunc nuw nsw i32 %i.gd to i16
  %i.gf = add i16 %i.fb, %i.ge                    ; 2 uses
end_hunk_0
