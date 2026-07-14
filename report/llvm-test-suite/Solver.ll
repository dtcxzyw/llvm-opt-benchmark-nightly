inline.NumInlined: 618
inline.NumDeleted: 139
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Solver9addClauseER3vecI3LitE:bb.a

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.i
  %i.cf = and i32 %i.by, 536870911                ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i.i, label %_Z10Clause_newI3vecI3LitEEP6ClauseRKT_b.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.cf to i64 ; 3 uses
  %min.iters.check = icmp samesign ult i32 %i.cf, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 536870904 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cp, %vector.body ]
  %vec.phi69 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cq, %vector.body ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load = load <4 x i32>, ptr %i.ch, align 4, !tbaa !4
  %wide.load70 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !4
  %i.cj = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.ck = lshr <4 x i32> %wide.load70, splat (i32 1)
  %i.cl = and <4 x i32> %i.cj, splat (i32 31)
  %i.cm = and <4 x i32> %i.ck, splat (i32 31)
  %i.cn = shl nuw <4 x i32> splat (i32 1), %i.cl
  %i.co = shl nuw <4 x i32> splat (i32 1), %i.cm
  %i.cp = or <4 x i32> %i.cn, %vec.phi            ; 2 uses
  %i.cq = or <4 x i32> %i.co, %vec.phi69          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.cq, %i.cp
  %i.cs = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_Z10Clause_newI3vecI3LitEEP6ClauseRKT_b.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ]
  %.07.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.cs, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.07.i.i.i = phi i32 [ %i.cx, %scalar.ph ], [ %.07.i.i.i.ph, %scalar.ph.preheader ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.i.i.i
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cu = lshr i32 %.sroa.0.0.copyload.i.i.i, 1
  %i.cv = and i32 %i.cu, 31
  %i.cw = shl nuw i32 1, %i.cv
  %i.cx = or i32 %i.cw, %.07.i.i.i                ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_Z10Clause_newI3vecI3LitEEP6ClauseRKT_b.exit, label %scalar.ph, !llvm.loop !79

_Z10Clause_newI3vecI3LitEEP6ClauseRKT_b.exit:     ; preds = %scalar.ph, %middle.block, %._crit_edge.i.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %._crit_edge.i.i ], [ %i.cs, %middle.block ], [ %i.cx, %scalar.ph ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %.0.lcssa.i.i.i, ptr %i.cy, align 4, !tbaa !67
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !44 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !65
  %i.de = icmp eq i32 %i.db, %i.dd
  %.pre.i = load ptr, ptr %i.cz, align 8, !tbaa !45 ; 2 uses
  br i1 %i.de, label %bb.j, label %_ZN3vecIP6ClauseE4pushERKS1_.exit

bb.j:                                             ; preds = %_Z10Clause_newI3vecI3LitEEP6ClauseRKT_b.exit
  %i.df = mul nsw i32 %i.db, 3
  %i.dg = add nsw i32 %i.df, 1
  %i.dh = ashr i32 %i.dg, 1
  %i.di = tail call noundef i32 @llvm.smax.i32(i32 %i.dh, i32 2) ; 2 uses
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !65
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.dk) #19 ; 2 uses
  store ptr %i.dl, ptr %i.cz, align 8, !tbaa !45
  %.pre2.i = load i32, ptr %i.da, align 8, !tbaa !44
  br label %_ZN3vecIP6ClauseE4pushERKS1_.exit

_ZN3vecIP6ClauseE4pushERKS1_.exit:                ; preds = %_Z10Clause_newI3vecI3LitEEP6ClauseRKT_b.exit, %bb.j
  %i.dm = phi i32 [ %.pre2.i, %bb.j ], [ %i.db, %_Z10Clause_newI3vecI3LitEEP6ClauseRKT_b.exit ] ; 2 uses
  %i.dn = phi ptr [ %i.dl, %bb.j ], [ %.pre.i, %_Z10Clause_newI3vecI3LitEEP6ClauseRKT_b.exit ]
  %i.do = add nsw i32 %i.dm, 1
  store i32 %i.do, ptr %i.da, align 8, !tbaa !44
  %i.dp = sext i32 %i.dm to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.dp
  store ptr %i.bx, ptr %i.dq, align 8, !tbaa !46
  tail call void @_ZN6Solver12attachClauseER6Clause(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.bx)
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.a, %_ZN3vecIP6ClauseE4pushERKS1_.exit, %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit, %bb.f
  %.1 = phi i1 [ false, %bb.f ], [ %i.bs, %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit ], [ true, %_ZN3vecIP6ClauseE4pushERKS1_.exit ], [ false, %bb.a ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN6Solver16uncheckedEnqueueE3LitP6Clause(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(536) %0, i32 %1, ptr noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = trunc i32 %1 to i1
  %i.b = select i1 %i.a, i8 -1, i8 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = ashr i32 %1, 1
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.f = sext i32 %i.d to i64                     ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f
  store i8 %i.b, ptr %i.g, align 1, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.l = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.f
  store i32 %i.i, ptr %i.l, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.f
  store ptr %2, ptr %i.o, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !51   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !73
  %i.u = icmp eq i32 %i.r, %i.t
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !50 ; 2 uses
  br i1 %i.u, label %bb.b, label %_ZN3vecI3LitE4pushERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.v = mul nsw i32 %i.r, 3
  %i.w = add nsw i32 %i.v, 1
  %i.x = ashr i32 %i.w, 1
  %i.y = tail call noundef i32 @llvm.smax.i32(i32 %i.x, i32 2) ; 2 uses
  store i32 %i.y, ptr %i.s, align 4, !tbaa !73
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.aa) #19 ; 2 uses
  store ptr %i.ab, ptr %i.p, align 8, !tbaa !50
  %.pre2.i = load i32, ptr %i.q, align 8, !tbaa !51
  br label %_ZN3vecI3LitE4pushERKS0_.exit

_ZN3vecI3LitE4pushERKS0_.exit:                    ; preds = %bb.a, %bb.b
  %i.ac = phi i32 [ %.pre2.i, %bb.b ], [ %i.r, %bb.a ] ; 2 uses
  %i.ad = phi ptr [ %i.ab, %bb.b ], [ %.pre.i, %bb.a ]
  %i.ae = add nsw i32 %i.ac, 1
  store i32 %i.ae, ptr %i.q, align 8, !tbaa !51
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.af
  store i32 %1, ptr %i.ag, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @_ZN6Solver9propagateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(536) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 6 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !51
  %i.f = icmp slt i32 %i.d, %i.e
  br i1 %i.f, label %.lr.ph95, label %._crit_edge96

.lr.ph95:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph95, %_ZN3vecIP6ClauseE6shrinkEi.exit
  %i.m = phi i32 [ %i.d, %.lr.ph95 ], [ %i.dv, %_ZN3vecIP6ClauseE6shrinkEi.exit ] ; 2 uses
  %.093 = phi ptr [ null, %.lr.ph95 ], [ %.1.lcssa, %_ZN3vecIP6ClauseE6shrinkEi.exit ] ; 2 uses
  %.05992 = phi i32 [ 0, %.lr.ph95 ], [ %i.u, %_ZN3vecIP6ClauseE6shrinkEi.exit ]
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.a, align 8, !tbaa !80
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  %.sroa.052.0.copyload = load i32, ptr %i.q, align 4, !tbaa !4 ; 2 uses
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.s = sext i32 %.sroa.052.0.copyload to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = add nuw nsw i32 %.05992, 1               ; 2 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !45   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !44   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %.idx = shl nsw i64 %i.y, 3                     ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %.idx ; 4 uses
  %.not82 = icmp eq i32 %i.x, 0
  br i1 %.not82, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.b
  %1 = xor i32 %.sroa.052.0.copyload, 1           ; 3 uses
  %2 = ptrtoint ptr %i.v to i64
  %i.aa = add i64 %.idx, %2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph87, %.loopexit
  %.185 = phi ptr [ %.093, %.lr.ph87 ], [ %.2, %.loopexit ] ; 3 uses
  %.06084 = phi ptr [ %i.v, %.lr.ph87 ], [ %.262, %.loopexit ] ; 4 uses
  %.06383 = phi ptr [ %i.v, %.lr.ph87 ], [ %.265, %.loopexit ] ; 6 uses
  %.06383127 = ptrtoaddr ptr %.06383 to i64
  %.06084128 = ptrtoaddr ptr %.06084 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.06084, i64 8 ; 8 uses
  %i.ac = load ptr, ptr %.06084, align 8, !tbaa !46 ; 11 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !81 ; 2 uses
  %i.af = icmp eq i32 %i.ae, %1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4  ; 2 uses
  store i32 %i.ah, ptr %i.ad, align 4, !tbaa !4
  store i32 %1, ptr %i.ag, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.014.0.copyload = phi i32 [ %i.ah, %bb.d ], [ %i.ae, %bb.c ] ; 3 uses
  %i.ai = ashr i32 %.sroa.014.0.copyload, 1
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !52  ; 2 uses
  %i.ak = sext i32 %i.ai to i64                   ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak ; 3 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !67  ; 2 uses
  %i.an = trunc i32 %.sroa.014.0.copyload to i1   ; 3 uses
  %i.ao = sub i8 0, %i.am
  %.sroa.0.0.i.i = select i1 %i.an, i8 %i.ao, i8 %i.am
  %i.ap = icmp eq i8 %.sroa.0.0.i.i, 1
  br i1 %i.ap, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.aq = load i32, ptr %i.ac, align 4, !tbaa !74 ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 23
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.as = lshr i32 %i.aq, 3
  %wide.trip.count = zext nneg i32 %i.as to i64
  br label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.06383, i64 8
  store ptr %i.ac, ptr %.06383, align 8, !tbaa !46
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !83

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %.sroa.06.0.copyload = load i32, ptr %i.au, align 4, !tbaa !4 ; 3 uses
  %i.av = ashr i32 %.sroa.06.0.copyload, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.aj, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !67  ; 2 uses
  %i.az = trunc i32 %.sroa.06.0.copyload to i1
  %i.ba = sub i8 0, %i.ay
  %.sroa.0.0.i.i69 = select i1 %i.az, i8 %i.ba, i8 %i.ay
  %.not74 = icmp eq i8 %.sroa.0.0.i.i69, -1
  br i1 %.not74, label %bb.g, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 2 uses
  store i32 %.sroa.06.0.copyload, ptr %i.bc, align 4, !tbaa !4
  store i32 %1, ptr %i.bb, align 4, !tbaa !4
  %.sroa.03.0.copyload = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.bd = xor i32 %.sroa.03.0.copyload, 1
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.bf ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !44 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 12 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !65
  %i.bl = icmp eq i32 %i.bi, %i.bk
  %.pre.i = load ptr, ptr %i.bg, align 8, !tbaa !45 ; 2 uses
  br i1 %i.bl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bm = mul nsw i32 %i.bi, 3
  %i.bn = add nsw i32 %i.bm, 1
  %i.bo = ashr i32 %i.bn, 1
  %i.bp = tail call noundef i32 @llvm.smax.i32(i32 %i.bo, i32 2) ; 2 uses
  store i32 %i.bp, ptr %i.bj, align 4, !tbaa !65
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.br) #19 ; 2 uses
  store ptr %i.bs, ptr %i.bg, align 8, !tbaa !45
  %.pre2.i = load i32, ptr %i.bh, align 8, !tbaa !44
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bt = phi i32 [ %.pre2.i, %bb.i ], [ %i.bi, %bb.h ] ; 2 uses
  %i.bu = phi ptr [ %i.bs, %bb.i ], [ %.pre.i, %bb.h ]
  %i.bv = add nsw i32 %i.bt, 1
  store i32 %i.bv, ptr %i.bh, align 8, !tbaa !44
  %i.bw = sext i32 %i.bt to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bw
  store ptr %i.ac, ptr %i.bx, align 8, !tbaa !46
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %.06383, i64 8 ; 5 uses
  store ptr %i.ac, ptr %.06383, align 8, !tbaa !46
  %i.bz = load i8, ptr %i.al, align 1, !tbaa !67  ; 2 uses
  %i.ca = sub i8 0, %i.bz
  %.sroa.0.0.i.i70 = select i1 %i.an, i8 %i.ca, i8 %i.bz
  %i.cb = icmp eq i8 %.sroa.0.0.i.i70, -1
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.cc = load i32, ptr %i.c, align 8, !tbaa !51
  store i32 %i.cc, ptr %i.a, align 8, !tbaa !80
  %i.cd = icmp ult ptr %i.ab, %i.z
  br i1 %i.cd, label %.lr.ph80.preheader, label %.loopexit

.lr.ph80.preheader:                               ; preds = %bb.k
  %3 = ptrtoint ptr %.06084 to i64                ; 2 uses
  %i.ce = add i64 %3, 16
  %umax = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.ce)
  %4 = sub i64 %umax, %3
  %5 = add i64 %4, -9                             ; 2 uses
  %i.cf = lshr i64 %5, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24
  %i.ch = sub i64 %.06084128, %.06383127
  %diff.check = icmp ugt i64 %i.ch, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph80.preheader133, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.preheader
  %n.vec = and i64 %i.cg, 4611686018427387900     ; 3 uses
  %i.ci = shl i64 %n.vec, 3                       ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ab, i64 %i.ci  ; 2 uses
  %i.ck = getelementptr i8, ptr %i.by, i64 %i.ci  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.cl ; 2 uses
  %next.gep130 = getelementptr i8, ptr %i.by, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !46
  %wide.load131 = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !46
  %i.cn = getelementptr i8, ptr %next.gep130, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep130, align 8, !tbaa !46
  store <2 x ptr> %wide.load131, ptr %i.cn, align 8, !tbaa !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph80.preheader133

.lr.ph80.preheader133:                            ; preds = %.lr.ph80.preheader, %middle.block
  %.16178.ph = phi ptr [ %i.ab, %.lr.ph80.preheader ], [ %i.cj, %middle.block ]
  %.16477.ph = phi ptr [ %i.by, %.lr.ph80.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80.preheader133, %.lr.ph80
  %.16178 = phi ptr [ %i.cp, %.lr.ph80 ], [ %.16178.ph, %.lr.ph80.preheader133 ] ; 2 uses
  %.16477 = phi ptr [ %i.cr, %.lr.ph80 ], [ %.16477.ph, %.lr.ph80.preheader133 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.16178, i64 8 ; 3 uses
  %i.cq = load ptr, ptr %.16178, align 8, !tbaa !46
  %i.cr = getelementptr inbounds nuw i8, ptr %.16477, i64 8 ; 2 uses
  store ptr %i.cq, ptr %.16477, align 8, !tbaa !46
  %i.cs = icmp ult ptr %i.cp, %i.z
  br i1 %i.cs, label %.lr.ph80, label %.loopexit, !llvm.loop !85

bb.l:                                             ; preds = %._crit_edge
  %i.ct = select i1 %i.an, i8 -1, i8 1
  store i8 %i.ct, ptr %i.al, align 1, !tbaa !67
  %i.cu = load i32, ptr %i.i, align 8, !tbaa !55
  %i.cv = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ak
  store i32 %i.cu, ptr %i.cw, align 4, !tbaa !4
  %i.cx = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.ak
  store ptr %i.ac, ptr %i.cy, align 8, !tbaa !46
  %i.cz = load i32, ptr %i.c, align 8, !tbaa !51  ; 3 uses
  %i.da = load i32, ptr %i.l, align 4, !tbaa !73
  %i.db = icmp eq i32 %i.cz, %i.da
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !50 ; 2 uses
  br i1 %i.db, label %bb.m, label %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit

bb.m:                                             ; preds = %bb.l
  %i.dc = mul nsw i32 %i.cz, 3
  %i.dd = add nsw i32 %i.dc, 1
  %i.de = ashr i32 %i.dd, 1
  %i.df = tail call noundef i32 @llvm.smax.i32(i32 %i.de, i32 2) ; 2 uses
  store i32 %i.df, ptr %i.l, align 4, !tbaa !73
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.dg, 2
  %i.di = tail call ptr @realloc(ptr noundef %.pre.i.i, i64 noundef %i.dh) #19 ; 2 uses
  store ptr %i.di, ptr %i.b, align 8, !tbaa !50
  %.pre2.i.i = load i32, ptr %i.c, align 8, !tbaa !51
  br label %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit

_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit:   ; preds = %bb.l, %bb.m
  %i.dj = phi i32 [ %.pre2.i.i, %bb.m ], [ %i.cz, %bb.l ] ; 2 uses
  %i.dk = phi ptr [ %i.di, %bb.m ], [ %.pre.i.i, %bb.l ]
  %i.dl = add nsw i32 %i.dj, 1
  store i32 %i.dl, ptr %i.c, align 8, !tbaa !51
  %i.dm = sext i32 %i.dj to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.dm
  store i32 %.sroa.014.0.copyload, ptr %i.dn, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph80, %middle.block, %bb.k, %bb.j, %bb.f, %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit
  %.265 = phi ptr [ %i.at, %bb.f ], [ %.06383, %bb.j ], [ %i.by, %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit ], [ %i.by, %bb.k ], [ %i.ck, %middle.block ], [ %i.cr, %.lr.ph80 ] ; 2 uses
  %.262 = phi ptr [ %i.ab, %bb.f ], [ %i.ab, %bb.j ], [ %i.ab, %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit ], [ %i.ab, %bb.k ], [ %i.cj, %middle.block ], [ %i.cp, %.lr.ph80 ] ; 2 uses
  %.2 = phi ptr [ %.185, %bb.f ], [ %.185, %bb.j ], [ %.185, %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit ], [ %i.ac, %bb.k ], [ %i.ac, %middle.block ], [ %i.ac, %.lr.ph80 ] ; 2 uses
  %.not = icmp eq ptr %.262, %i.z
  br i1 %.not, label %._crit_edge88, label %bb.c, !llvm.loop !86

._crit_edge88:                                    ; preds = %.loopexit, %bb.b
  %.063.lcssa = phi ptr [ %i.v, %bb.b ], [ %.265, %.loopexit ]
  %.060.lcssa = phi ptr [ %i.v, %bb.b ], [ %i.z, %.loopexit ]
  %.1.lcssa = phi ptr [ %.093, %bb.b ], [ %.2, %.loopexit ] ; 2 uses
  %i.do = ptrtoint ptr %.060.lcssa to i64
  %i.dp = ptrtoint ptr %.063.lcssa to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = lshr exact i64 %i.dq, 3
  %i.ds = trunc i64 %i.dr to i32                  ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph.i, label %_ZN3vecIP6ClauseE6shrinkEi.exit

.lr.ph.i:                                         ; preds = %._crit_edge88
  %.promoted.i = load i32, ptr %i.w, align 8, !tbaa !44
  %i.du = sub i32 %.promoted.i, %i.ds
  store i32 %i.du, ptr %i.w, align 8, !tbaa !44
  br label %_ZN3vecIP6ClauseE6shrinkEi.exit

_ZN3vecIP6ClauseE6shrinkEi.exit:                  ; preds = %._crit_edge88, %.lr.ph.i
  %i.dv = load i32, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  %i.dw = load i32, ptr %i.c, align 8, !tbaa !51
  %i.dx = icmp slt i32 %i.dv, %i.dw
  br i1 %i.dx, label %bb.b, label %._crit_edge96.loopexit, !llvm.loop !87

._crit_edge96.loopexit:                           ; preds = %_ZN3vecIP6ClauseE6shrinkEi.exit
  %i.dy = zext nneg i32 %i.u to i64
  br label %._crit_edge96

._crit_edge96:                                    ; preds = %._crit_edge96.loopexit, %bb.a
  %.059.lcssa = phi i64 [ 0, %bb.a ], [ %i.dy, %._crit_edge96.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.1.lcssa, %._crit_edge96.loopexit ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !88
  %i.eb = add i64 %i.ea, %.059.lcssa
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !88
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !89
  %i.ee = sub nsw i64 %i.ed, %.059.lcssa
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !89
  ret ptr %.0.lcssa
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN6Solver12attachClauseER6Clause(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(536) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.02.0.copyload = load i32, ptr %i.b, align 4, !tbaa !4
  %i.c = xor i32 %.sroa.02.0.copyload, 1
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !44   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !65
  %i.k = icmp eq i32 %i.h, %i.j
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !45 ; 2 uses
  br i1 %i.k, label %bb.b, label %_ZN3vecIP6ClauseE4pushERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = mul nsw i32 %i.h, 3
  %i.m = add nsw i32 %i.l, 1
  %i.n = ashr i32 %i.m, 1
  %i.o = tail call noundef i32 @llvm.smax.i32(i32 %i.n, i32 2) ; 2 uses
  store i32 %i.o, ptr %i.i, align 4, !tbaa !65
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.q) #19 ; 2 uses
  store ptr %i.r, ptr %i.f, align 8, !tbaa !45
  %.pre2.i = load i32, ptr %i.g, align 8, !tbaa !44
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !56
  br label %_ZN3vecIP6ClauseE4pushERKS1_.exit

_ZN3vecIP6ClauseE4pushERKS1_.exit:                ; preds = %bb.a, %bb.b
  %i.s = phi ptr [ %.pre, %bb.b ], [ %i.d, %bb.a ]
  %i.t = phi i32 [ %.pre2.i, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %i.u = phi ptr [ %i.r, %bb.b ], [ %.pre.i, %bb.a ]
  %i.v = add nsw i32 %i.t, 1
  store i32 %i.v, ptr %i.g, align 8, !tbaa !44
  %i.w = sext i32 %i.t to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.w
  store ptr %1, ptr %i.x, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload = load i32, ptr %i.y, align 4, !tbaa !4
  %i.z = xor i32 %.sroa.0.0.copyload, 1
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.aa ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !44 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 12 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !65
  %i.ag = icmp eq i32 %i.ad, %i.af
  %.pre.i11 = load ptr, ptr %i.ab, align 8, !tbaa !45 ; 2 uses
  br i1 %i.ag, label %bb.c, label %_ZN3vecIP6ClauseE4pushERKS1_.exit13

bb.c:                                             ; preds = %_ZN3vecIP6ClauseE4pushERKS1_.exit
  %i.ah = mul nsw i32 %i.ad, 3
  %i.ai = add nsw i32 %i.ah, 1
  %i.aj = ashr i32 %i.ai, 1
  %i.ak = tail call noundef i32 @llvm.smax.i32(i32 %i.aj, i32 2) ; 2 uses
  store i32 %i.ak, ptr %i.ae, align 4, !tbaa !65
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = tail call ptr @realloc(ptr noundef %.pre.i11, i64 noundef %i.am) #19 ; 2 uses
  store ptr %i.an, ptr %i.ab, align 8, !tbaa !45
  %.pre2.i12 = load i32, ptr %i.ac, align 8, !tbaa !44
  br label %_ZN3vecIP6ClauseE4pushERKS1_.exit13
end_hunk_0
