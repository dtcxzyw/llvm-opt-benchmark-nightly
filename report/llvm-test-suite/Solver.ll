Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Solver?download=true
inline.NumInlined: 620
inline.NumDeleted: 139
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Solver9addClauseER3vecI3LitE:bb.a
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
  %i.m = phi i32 [ %i.d, %.lr.ph95 ], [ %i.dx, %_ZN3vecIP6ClauseE6shrinkEi.exit ] ; 2 uses
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
  %i.aa = xor i32 %.sroa.052.0.copyload, 1        ; 3 uses
  %i.ab = ptrtoaddr ptr %i.v to i64
  %i.ac = add i64 %.idx, %i.ab
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph87, %.loopexit
  %.185 = phi ptr [ %.093, %.lr.ph87 ], [ %.2, %.loopexit ] ; 3 uses
  %.06084 = phi ptr [ %i.v, %.lr.ph87 ], [ %.262, %.loopexit ] ; 3 uses
  %.06383 = phi ptr [ %i.v, %.lr.ph87 ], [ %.265, %.loopexit ] ; 6 uses
  %.06383127 = ptrtoaddr ptr %.06383 to i64
  %.06084128 = ptrtoaddr ptr %.06084 to i64       ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.06084, i64 8 ; 8 uses
  %i.ae = load ptr, ptr %.06084, align 8, !tbaa !46 ; 11 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !81 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, %i.aa
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 12 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4  ; 2 uses
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !4
  store i32 %i.aa, ptr %i.ai, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.014.0.copyload = phi i32 [ %i.aj, %bb.d ], [ %i.ag, %bb.c ] ; 3 uses
  %i.ak = ashr i32 %.sroa.014.0.copyload, 1
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !52  ; 2 uses
  %i.am = sext i32 %i.ak to i64                   ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !67  ; 2 uses
  %i.ap = trunc i32 %.sroa.014.0.copyload to i1   ; 3 uses
  %i.aq = sub i8 0, %i.ao
  %.sroa.0.0.i.i = select i1 %i.ap, i8 %i.aq, i8 %i.ao
  %i.ar = icmp eq i8 %.sroa.0.0.i.i, 1
  br i1 %i.ar, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.as = load i32, ptr %i.ae, align 4, !tbaa !74 ; 2 uses
  %i.at = icmp ugt i32 %i.as, 23
  br i1 %i.at, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.au = lshr i32 %i.as, 3
  %wide.trip.count = zext nneg i32 %i.au to i64
  br label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.06383, i64 8
  store ptr %i.ae, ptr %.06383, align 8, !tbaa !46
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !83

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %.sroa.06.0.copyload = load i32, ptr %i.aw, align 4, !tbaa !4 ; 3 uses
  %i.ax = ashr i32 %.sroa.06.0.copyload, 1
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.al, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !67  ; 2 uses
  %i.bb = trunc i32 %.sroa.06.0.copyload to i1
  %i.bc = sub i8 0, %i.ba
  %.sroa.0.0.i.i69 = select i1 %i.bb, i8 %i.bc, i8 %i.ba
  %.not74 = icmp eq i8 %.sroa.0.0.i.i69, -1
  br i1 %.not74, label %bb.g, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 12 ; 2 uses
  store i32 %.sroa.06.0.copyload, ptr %i.be, align 4, !tbaa !4
  store i32 %i.aa, ptr %i.bd, align 4, !tbaa !4
  %.sroa.03.0.copyload = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bf = xor i32 %.sroa.03.0.copyload, 1
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.bh = sext i32 %i.bf to i64
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bh ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !44 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 12 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !65
  %i.bn = icmp eq i32 %i.bk, %i.bm
  %.pre.i = load ptr, ptr %i.bi, align 8, !tbaa !45 ; 2 uses
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = mul nsw i32 %i.bk, 3
  %i.bp = add nsw i32 %i.bo, 1
  %i.bq = ashr i32 %i.bp, 1
  %i.br = tail call noundef i32 @llvm.smax.i32(i32 %i.bq, i32 2) ; 2 uses
  store i32 %i.br, ptr %i.bl, align 4, !tbaa !65
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.bt) #19 ; 2 uses
  store ptr %i.bu, ptr %i.bi, align 8, !tbaa !45
  %.pre2.i = load i32, ptr %i.bj, align 8, !tbaa !44
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bv = phi i32 [ %.pre2.i, %bb.i ], [ %i.bk, %bb.h ] ; 2 uses
  %i.bw = phi ptr [ %i.bu, %bb.i ], [ %.pre.i, %bb.h ]
  %i.bx = add nsw i32 %i.bv, 1
  store i32 %i.bx, ptr %i.bj, align 8, !tbaa !44
  %i.by = sext i32 %i.bv to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.by
  store ptr %i.ae, ptr %i.bz, align 8, !tbaa !46
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %i.ca = getelementptr inbounds nuw i8, ptr %.06383, i64 8 ; 5 uses
  store ptr %i.ae, ptr %.06383, align 8, !tbaa !46
  %i.cb = load i8, ptr %i.an, align 1, !tbaa !67  ; 2 uses
  %i.cc = sub i8 0, %i.cb
  %.sroa.0.0.i.i70 = select i1 %i.ap, i8 %i.cc, i8 %i.cb
  %i.cd = icmp eq i8 %.sroa.0.0.i.i70, -1
  br i1 %i.cd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.ce = load i32, ptr %i.c, align 8, !tbaa !51
  store i32 %i.ce, ptr %i.a, align 8, !tbaa !80
  %i.cf = icmp ult ptr %i.ad, %i.z
  br i1 %i.cf, label %.lr.ph80.preheader, label %.loopexit

.lr.ph80.preheader:                               ; preds = %bb.k
  %1 = add i64 %.06084128, 16
  %2 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %1)
  %3 = add i64 %2, -9
  %i.cg = sub i64 %3, %.06084128                  ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cg, 24
  %i.cj = sub i64 %.06084128, %.06383127
  %diff.check = icmp ugt i64 %i.cj, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph80.preheader132, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.preheader
  %n.vec = and i64 %i.ci, 4611686018427387900     ; 3 uses
  %i.ck = shl i64 %n.vec, 3                       ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ad, i64 %i.ck  ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ca, i64 %i.ck  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.cn ; 2 uses
  %next.gep129 = getelementptr i8, ptr %i.ca, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !46
  %wide.load130 = load <2 x ptr>, ptr %i.co, align 8, !tbaa !46
  %i.cp = getelementptr i8, ptr %next.gep129, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep129, align 8, !tbaa !46
  store <2 x ptr> %wide.load130, ptr %i.cp, align 8, !tbaa !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph80.preheader132

.lr.ph80.preheader132:                            ; preds = %.lr.ph80.preheader, %middle.block
  %.16178.ph = phi ptr [ %i.ad, %.lr.ph80.preheader ], [ %i.cl, %middle.block ]
  %.16477.ph = phi ptr [ %i.ca, %.lr.ph80.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80.preheader132, %.lr.ph80
  %.16178 = phi ptr [ %i.cr, %.lr.ph80 ], [ %.16178.ph, %.lr.ph80.preheader132 ] ; 2 uses
  %.16477 = phi ptr [ %i.ct, %.lr.ph80 ], [ %.16477.ph, %.lr.ph80.preheader132 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.16178, i64 8 ; 3 uses
  %i.cs = load ptr, ptr %.16178, align 8, !tbaa !46
  %i.ct = getelementptr inbounds nuw i8, ptr %.16477, i64 8 ; 2 uses
  store ptr %i.cs, ptr %.16477, align 8, !tbaa !46
  %i.cu = icmp ult ptr %i.cr, %i.z
  br i1 %i.cu, label %.lr.ph80, label %.loopexit, !llvm.loop !85

bb.l:                                             ; preds = %._crit_edge
  %i.cv = select i1 %i.ap, i8 -1, i8 1
  store i8 %i.cv, ptr %i.an, align 1, !tbaa !67
  %i.cw = load i32, ptr %i.i, align 8, !tbaa !55
  %i.cx = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.am
  store i32 %i.cw, ptr %i.cy, align 4, !tbaa !4
  %i.cz = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.am
  store ptr %i.ae, ptr %i.da, align 8, !tbaa !46
  %i.db = load i32, ptr %i.c, align 8, !tbaa !51  ; 3 uses
  %i.dc = load i32, ptr %i.l, align 4, !tbaa !73
  %i.dd = icmp eq i32 %i.db, %i.dc
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !50 ; 2 uses
  br i1 %i.dd, label %bb.m, label %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit

bb.m:                                             ; preds = %bb.l
  %i.de = mul nsw i32 %i.db, 3
  %i.df = add nsw i32 %i.de, 1
  %i.dg = ashr i32 %i.df, 1
  %i.dh = tail call noundef i32 @llvm.smax.i32(i32 %i.dg, i32 2) ; 2 uses
  store i32 %i.dh, ptr %i.l, align 4, !tbaa !73
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = shl nuw nsw i64 %i.di, 2
  %i.dk = tail call ptr @realloc(ptr noundef %.pre.i.i, i64 noundef %i.dj) #19 ; 2 uses
  store ptr %i.dk, ptr %i.b, align 8, !tbaa !50
  %.pre2.i.i = load i32, ptr %i.c, align 8, !tbaa !51
  br label %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit

_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit:   ; preds = %bb.l, %bb.m
  %i.dl = phi i32 [ %.pre2.i.i, %bb.m ], [ %i.db, %bb.l ] ; 2 uses
  %i.dm = phi ptr [ %i.dk, %bb.m ], [ %.pre.i.i, %bb.l ]
  %i.dn = add nsw i32 %i.dl, 1
  store i32 %i.dn, ptr %i.c, align 8, !tbaa !51
  %i.do = sext i32 %i.dl to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.do
  store i32 %.sroa.014.0.copyload, ptr %i.dp, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph80, %middle.block, %bb.k, %bb.j, %bb.f, %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit
  %.265 = phi ptr [ %i.av, %bb.f ], [ %.06383, %bb.j ], [ %i.ca, %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit ], [ %i.ca, %bb.k ], [ %i.cm, %middle.block ], [ %i.ct, %.lr.ph80 ] ; 2 uses
  %.262 = phi ptr [ %i.ad, %bb.f ], [ %i.ad, %bb.j ], [ %i.ad, %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit ], [ %i.ad, %bb.k ], [ %i.cl, %middle.block ], [ %i.cr, %.lr.ph80 ] ; 2 uses
  %.2 = phi ptr [ %.185, %bb.f ], [ %.185, %bb.j ], [ %.185, %_ZN6Solver16uncheckedEnqueueE3LitP6Clause.exit ], [ %i.ae, %bb.k ], [ %i.ae, %middle.block ], [ %i.ae, %.lr.ph80 ] ; 2 uses
  %.not = icmp eq ptr %.262, %i.z
  br i1 %.not, label %._crit_edge88, label %bb.c, !llvm.loop !86

._crit_edge88:                                    ; preds = %.loopexit, %bb.b
  %.063.lcssa = phi ptr [ %i.v, %bb.b ], [ %.265, %.loopexit ]
  %.060.lcssa = phi ptr [ %i.v, %bb.b ], [ %i.z, %.loopexit ]
  %.1.lcssa = phi ptr [ %.093, %bb.b ], [ %.2, %.loopexit ] ; 2 uses
  %i.dq = ptrtoint ptr %.060.lcssa to i64
  %i.dr = ptrtoint ptr %.063.lcssa to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = lshr exact i64 %i.ds, 3
  %i.du = trunc i64 %i.dt to i32                  ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph.i, label %_ZN3vecIP6ClauseE6shrinkEi.exit

.lr.ph.i:                                         ; preds = %._crit_edge88
  %.promoted.i = load i32, ptr %i.w, align 8, !tbaa !44
  %i.dw = sub i32 %.promoted.i, %i.du
  store i32 %i.dw, ptr %i.w, align 8, !tbaa !44
  br label %_ZN3vecIP6ClauseE6shrinkEi.exit

_ZN3vecIP6ClauseE6shrinkEi.exit:                  ; preds = %._crit_edge88, %.lr.ph.i
  %i.dx = load i32, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  %i.dy = load i32, ptr %i.c, align 8, !tbaa !51
  %i.dz = icmp slt i32 %i.dx, %i.dy
  br i1 %i.dz, label %bb.b, label %._crit_edge96.loopexit, !llvm.loop !87

._crit_edge96.loopexit:                           ; preds = %_ZN3vecIP6ClauseE6shrinkEi.exit
  %i.ea = zext nneg i32 %i.u to i64
  br label %._crit_edge96

._crit_edge96:                                    ; preds = %._crit_edge96.loopexit, %bb.a
  %.059.lcssa = phi i64 [ 0, %bb.a ], [ %i.ea, %._crit_edge96.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.1.lcssa, %._crit_edge96.loopexit ]
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !88
  %i.ed = add i64 %i.ec, %.059.lcssa
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !88
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !89
  %i.eg = sub nsw i64 %i.ef, %.059.lcssa
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !89
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
end_hunk_0
begin_hunk_1_@_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_:bb.a
  %i.ag = zext nneg i32 %.tr4086 to i64           ; 2 uses
  br i1 %i.af, label %.split69.us, label %.split69.preheader

.split69.preheader:                               ; preds = %.lr.ph87
  %i.ah = icmp ugt i32 %i.ae, 15
  br label %.split69

.split69.us:                                      ; preds = %.lr.ph87, %bb.c
  %.030.us = phi i32 [ %.lcssa43.us, %bb.c ], [ -1, %.lr.ph87 ] ; 2 uses
  %.0.us = phi i64 [ %indvars.iv.next127, %bb.c ], [ %i.ag, %.lr.ph87 ]
  %i.ai = add nsw i32 %.030.us, 1                 ; 3 uses
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46 ; 4 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !74
  %i.an = icmp ugt i32 %i.am, 23
  br i1 %i.an, label %.lr.ph.split.us77, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us

.split.us:                                        ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us72
  %i.ao = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !97
  %i.aq = fcmp olt float %i.ap, %i.aw
  br i1 %i.aq, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us72, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us.loopexit, !llvm.loop !172

bb.c:                                             ; preds = %.split39._ZN11reduceDB_ltclEP6ClauseS1_.exit38.thread_crit_edge.split.us.us
  %.in.le = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %indvars.iv.next127
  store ptr %i.bc, ptr %i.bj, align 8, !tbaa !46
  store ptr %.lcssa41.us, ptr %.in.le, align 8, !tbaa !46
  br label %.split69.us, !llvm.loop !173

_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us.loopexit: ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us72, %.split.us
  %i.ar = trunc nsw i64 %indvars.iv.next121 to i32
  br label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us

_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us: ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us.loopexit, %.lr.ph.split.us77, %.split69.us
  %.lcssa47.us = phi i64 [ %i.aj, %.split69.us ], [ %i.aj, %.lr.ph.split.us77 ], [ %indvars.iv.next121, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us.loopexit ]
  %.lcssa43.us = phi i32 [ %i.ai, %.split69.us ], [ %i.ai, %.lr.ph.split.us77 ], [ %i.ar, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us.loopexit ] ; 3 uses
  %.lcssa41.us = phi ptr [ %i.al, %.split69.us ], [ %i.al, %.lr.ph.split.us77 ], [ %i.at, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us.loopexit ]
  br label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us

_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us72: ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us72.preheader, %.split.us
  %indvars.iv120 = phi i64 [ %i.bb, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us72.preheader ], [ %indvars.iv.next121, %.split.us ]
  %indvars.iv.next121 = add nsw i64 %indvars.iv120, 1 ; 4 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %indvars.iv.next121
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46 ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !74
  %i.av = icmp ugt i32 %i.au, 23
  br i1 %i.av, label %.split.us, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us.loopexit, !llvm.loop !172

.lr.ph.split.us77:                                ; preds = %.split69.us
  %i.aw = load float, ptr %i.ad, align 4, !tbaa !97 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !97
  %i.az = fcmp olt float %i.ay, %i.aw
  br i1 %i.az, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us72.preheader, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us

_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us72.preheader: ; preds = %.lr.ph.split.us77
  %i.ba = sext i32 %.030.us to i64
  %i.bb = add nsw i64 %i.ba, 1
  br label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us72

_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us: ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us.backedge, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us
  %indvars.iv126 = phi i64 [ %.0.us, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us ], [ %indvars.iv.next127, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us.backedge ]
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, -1 ; 5 uses
  %.in = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %indvars.iv.next127
  %i.bc = load ptr, ptr %.in, align 8, !tbaa !46  ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !74
  %.mask.i37.us.us = and i32 %i.bd, -8
  %i.be = icmp eq i32 %.mask.i37.us.us, 16
  br i1 %i.be, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us.backedge, label %.split39.us.us

.split39.us.us:                                   ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us
  %i.bf = load float, ptr %i.ad, align 4, !tbaa !97
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !97
  %i.bi = fcmp olt float %i.bf, %i.bh
  br i1 %i.bi, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us.backedge, label %.split39._ZN11reduceDB_ltclEP6ClauseS1_.exit38.thread_crit_edge.split.us.us

_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us.backedge: ; preds = %.split39.us.us, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us
  br label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us

.split39._ZN11reduceDB_ltclEP6ClauseS1_.exit38.thread_crit_edge.split.us.us: ; preds = %.split39.us.us
  %i.bj = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %.lcssa47.us ; 2 uses
  %i.bk = trunc nsw i64 %indvars.iv.next127 to i32
  %.not.us = icmp slt i32 %.lcssa43.us, %i.bk
  br i1 %.not.us, label %bb.c, label %tailrecurse

.split69:                                         ; preds = %.split69.preheader, %bb.d
  %indvars.iv117 = phi i64 [ %i.ag, %.split69.preheader ], [ %indvars.iv.next118, %bb.d ]
  %.030 = phi i32 [ -1, %.split69.preheader ], [ %.lcssa43, %bb.d ] ; 3 uses
  %i.bl = add nsw i32 %.030, 1                    ; 3 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !46 ; 4 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !74
  %i.bq = icmp ugt i32 %i.bp, 23
  br i1 %i.bq, label %.lr.ph, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader

.lr.ph:                                           ; preds = %.split69
  br i1 %i.ah, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us.preheader, label %.lr.ph.split

_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us.preheader: ; preds = %.lr.ph
  %i.br = sext i32 %.030 to i64
  %i.bs = add nsw i64 %i.br, 1
  br label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us

_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us:  ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us.preheader, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us
  %indvars.iv114 = phi i64 [ %i.bs, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us.preheader ], [ %indvars.iv.next115, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us ]
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 4 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %indvars.iv.next115
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !46 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !74
  %i.bw = icmp ugt i32 %i.bv, 23
  br i1 %i.bw, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit, !llvm.loop !172

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bx = load float, ptr %i.ad, align 4, !tbaa !97 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bz = load float, ptr %i.by, align 4, !tbaa !97
  %i.ca = fcmp olt float %i.bz, %i.bx
  br i1 %i.ca, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.preheader, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader

_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.preheader: ; preds = %.lr.ph.split
  %i.cb = sext i32 %.030 to i64
  %i.cc = add nsw i64 %i.cb, 1
  br label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge

.split:                                           ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !97
  %i.cf = fcmp olt float %i.ce, %i.bx
  br i1 %i.cf, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit136, !llvm.loop !172

_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge:     ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.preheader, %.split
  %indvars.iv = phi i64 [ %i.cc, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.preheader ], [ %indvars.iv.next, %.split ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 4 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %indvars.iv.next
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !46 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !74
  %i.cj = icmp ugt i32 %i.ci, 23
  br i1 %i.cj, label %.split, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit136, !llvm.loop !172

_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit: ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us
  %i.ck = trunc nsw i64 %indvars.iv.next115 to i32
  br label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader

_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit136: ; preds = %.split, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge
  %i.cl = trunc nsw i64 %indvars.iv.next to i32
  br label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader

_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader:  ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit136, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit, %.lr.ph.split, %.split69
  %.lcssa47 = phi i64 [ %i.bm, %.split69 ], [ %indvars.iv.next115, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit ], [ %i.bm, %.lr.ph.split ], [ %indvars.iv.next, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit136 ]
  %.lcssa43 = phi i32 [ %i.bl, %.split69 ], [ %i.ck, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit ], [ %i.bl, %.lr.ph.split ], [ %i.cl, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit136 ] ; 3 uses
  %.lcssa41 = phi ptr [ %i.bo, %.split69 ], [ %i.bu, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit ], [ %i.bo, %.lr.ph.split ], [ %i.ch, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit136 ]
  %i.cm = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %.lcssa47 ; 2 uses
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, -1 ; 3 uses
  %i.cn = sext i32 %.lcssa43 to i64
  %.not = icmp sgt i64 %indvars.iv.next118, %i.cn
  br i1 %.not, label %bb.d, label %tailrecurse

bb.d:                                             ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader
  %i.co = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %indvars.iv.next118 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !46
  store ptr %i.cp, ptr %i.cm, align 8, !tbaa !46
  store ptr %.lcssa41, ptr %i.co, align 8, !tbaa !46
  br label %.split69, !llvm.loop !173

tailrecurse:                                      ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader, %.split39._ZN11reduceDB_ltclEP6ClauseS1_.exit38.thread_crit_edge.split.us.us
  %.us-phi83 = phi i32 [ %.lcssa43.us, %.split39._ZN11reduceDB_ltclEP6ClauseS1_.exit38.thread_crit_edge.split.us.us ], [ %.lcssa43, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader ] ; 2 uses
  %.us-phi84 = phi ptr [ %i.bj, %.split39._ZN11reduceDB_ltclEP6ClauseS1_.exit38.thread_crit_edge.split.us.us ], [ %i.cm, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader ] ; 2 uses
  tail call void @_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_(ptr noundef %.tr85, i32 noundef %.us-phi83)
  %i.cq = sub nsw i32 %.tr4086, %.us-phi83        ; 3 uses
  %i.cr = icmp slt i32 %i.cq, 16
  br i1 %i.cr, label %tailrecurse._crit_edge, label %.lr.ph87

_Z13selectionSortIP6Clause11reduceDB_ltEvPT_iT0_.exit: ; preds = %._crit_edge.i, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold nounwind }
attributes #22 = { cold }

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
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !9, i64 48}
!11 = !{!"_ZTS6Solver", !12, i64 0, !15, i64 16, !9, i64 32, !9, i64 40, !9, i64 48, !5, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !17, i64 88, !5, i64 92, !5, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !17, i64 176, !19, i64 184, !19, i64 200, !9, i64 216, !22, i64 224, !9, i64 240, !24, i64 248, !26, i64 264, !26, i64 280, !26, i64 296, !15, i64 312, !28, i64 328, !19, i64 344, !28, i64 360, !5, i64 376, !5, i64 380, !18, i64 384, !15, i64 392, !30, i64 408, !9, i64 448, !9, i64 456, !17, i64 464, !26, i64 472, !15, i64 488, !15, i64 504, !15, i64 520}
!12 = !{!"_ZTS3vecI5lboolE", !13, i64 0, !5, i64 8, !5, i64 12}
!13 = !{!"p1 _ZTS5lbool", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"_ZTS3vecI3LitE", !16, i64 0, !5, i64 8, !5, i64 12}
!16 = !{!"p1 _ZTS3Lit", !14, i64 0}
!17 = !{!"bool", !6, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!"_ZTS3vecIP6ClauseE", !20, i64 0, !5, i64 8, !5, i64 12}
!20 = !{!"p2 _ZTS6Clause", !21, i64 0}
!21 = !{!"any p2 pointer", !14, i64 0}
!22 = !{!"_ZTS3vecIdE", !23, i64 0, !5, i64 8, !5, i64 12}
!23 = !{!"p1 double", !14, i64 0}
!24 = !{!"_ZTS3vecIS_IP6ClauseEE", !25, i64 0, !5, i64 8, !5, i64 12}
!25 = !{!"p1 _ZTS3vecIP6ClauseE", !14, i64 0}
!26 = !{!"_ZTS3vecIcE", !27, i64 0, !5, i64 8, !5, i64 12}
!27 = !{!"p1 omnipotent char", !14, i64 0}
!28 = !{!"_ZTS3vecIiE", !29, i64 0, !5, i64 8, !5, i64 12}
!29 = !{!"p1 int", !14, i64 0}
!30 = !{!"_ZTS4HeapIN6Solver10VarOrderLtEE", !31, i64 0, !28, i64 8, !28, i64 24}
!31 = !{!"_ZTSN6Solver10VarOrderLtE", !32, i64 0}
!32 = !{!"p1 _ZTS3vecIdE", !14, i64 0}
!33 = !{!11, !5, i64 56}
!34 = !{!11, !9, i64 80}
!35 = !{!11, !17, i64 88}
!36 = !{!11, !5, i64 92}
!37 = !{!11, !5, i64 96}
!38 = !{!11, !17, i64 176}
!39 = !{!11, !9, i64 216}
!40 = !{!11, !9, i64 240}
!41 = !{!11, !5, i64 380}
!42 = !{!32, !32, i64 0}
!43 = !{!11, !17, i64 464}
!44 = !{!19, !5, i64 8}
!45 = !{!19, !20, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 _ZTS6Clause", !14, i64 0}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!15, !16, i64 0}
!51 = !{!15, !5, i64 8}
!52 = !{!26, !27, i64 0}
!53 = !{!26, !5, i64 8}
!54 = !{!28, !29, i64 0}
!55 = !{!28, !5, i64 8}
!56 = !{!24, !25, i64 0}
!57 = !{!24, !5, i64 8}
!58 = distinct !{!58, !49}
!59 = !{!22, !23, i64 0}
!60 = !{!22, !5, i64 8}
!61 = !{!12, !13, i64 0}
!62 = !{!12, !5, i64 8}
!63 = distinct !{!63, !49}
!64 = !{!24, !5, i64 12}
!65 = !{!19, !5, i64 12}
!66 = !{!26, !5, i64 12}
!67 = !{!6, !6, i64 0}
!68 = !{!28, !5, i64 12}
!69 = !{!22, !5, i64 12}
!70 = !{i8 0, i8 2}
!71 = !{}
!72 = distinct !{!72, !49}
!73 = !{!15, !5, i64 12}
!74 = !{!75, !5, i64 0}
!75 = !{!"_ZTS6Clause", !5, i64 0, !6, i64 4, !6, i64 8}
!76 = distinct !{!76, !49, !77, !78}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = distinct !{!79, !49, !78, !77}
!80 = !{!11, !5, i64 376}
!81 = !{!82, !5, i64 0}
!82 = !{!"_ZTS3Lit", !5, i64 0}
!83 = distinct !{!83, !49}
!84 = distinct !{!84, !49, !77, !78}
!85 = distinct !{!85, !49, !77}
!86 = distinct !{!86, !49}
!87 = distinct !{!87, !49}
!88 = !{!11, !18, i64 128}
!89 = !{!11, !18, i64 384}
!90 = !{!18, !18, i64 0}
!91 = distinct !{!91, !49}
!92 = distinct !{!92, !49}
!93 = distinct !{!93, !49}
!94 = !{!11, !18, i64 120}
!95 = distinct !{!95, !49}
!96 = !{i64 8}
!97 = !{!98, !98, i64 0}
!98 = !{!"float", !6, i64 0}
!99 = distinct !{!99, !49}
!100 = distinct !{!100, !49, !77, !78}
!101 = distinct !{!101, !49, !78, !77}
!102 = !{!31, !32, i64 0}
!103 = distinct !{!103, !49}
!104 = distinct !{!104, !49}
!105 = distinct !{!105, !49}
!106 = distinct !{!106, !49}
!107 = distinct !{!107, !49}
!108 = distinct !{!108, !49}
!109 = distinct !{!109, !49, !77, !78}
!110 = distinct !{!110, !49, !78, !77}
!111 = distinct !{!111, !49}
!112 = distinct !{!112, !49}
!113 = distinct !{!113, !49, !77, !78}
!114 = distinct !{!114, !49, !78, !77}
!115 = distinct !{!115, !49}
!116 = distinct !{!116, !49}
!117 = !{!11, !18, i64 160}
!118 = !{!11, !18, i64 168}
!119 = distinct !{!119, !49}
!120 = distinct !{!120, !49}
!121 = distinct !{!121, !49}
!122 = distinct !{!122, !49}
!123 = distinct !{!123, !49}
!124 = distinct !{!124, !49}
!125 = distinct !{!125, !49}
!126 = distinct !{!126, !49}
!127 = distinct !{!127, !49}
!128 = distinct !{!128, !49}
!129 = !{!130, !130, i64 0}
!130 = !{!"p1 _ZTS6Solver", !14, i64 0}
!131 = !{!11, !18, i64 144}
!132 = !{!11, !18, i64 152}
!133 = !{!134, !130, i64 0}
!134 = !{!"_ZTSN6Solver9VarFilterE", !130, i64 0}
!135 = distinct !{!135, !49}
!136 = distinct !{!136, !49}
!137 = !{!11, !18, i64 104}
!138 = !{!11, !18, i64 136}
!139 = !{!11, !9, i64 32}
!140 = !{!11, !9, i64 40}
!141 = distinct !{!141, !49}
!142 = !{!11, !9, i64 456}
!143 = distinct !{!143, !49, !144}
!144 = !{!"llvm.loop.peeled.count", i32 1}
!145 = !{!11, !18, i64 112}
!146 = distinct !{!146, !49, !77, !78}
!147 = distinct !{!147, !49, !78, !77}
!148 = !{!11, !9, i64 72}
!149 = !{!11, !9, i64 64}
!150 = distinct !{!150, !49}
!151 = !{!12, !5, i64 12}
!152 = distinct !{!152, !49}
!153 = !{!154, !6, i64 0}
!154 = !{!"_ZTS5lbool", !6, i64 0}
!155 = distinct !{!155, !49}
!156 = !{!157, !157, i64 0}
!157 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!158 = distinct !{!158, !49}
!159 = distinct !{!159, !49}
!160 = distinct !{!160, !49}
!161 = distinct !{!161, !49}
!162 = distinct !{!162, !49}
!163 = distinct !{!163, !164}
!164 = !{!"llvm.loop.unroll.disable"}
!165 = distinct !{!165, !49}
!166 = distinct !{!166, !49}
!167 = distinct !{!167, !49}
!168 = distinct !{!168, !49}
end_hunk_1
