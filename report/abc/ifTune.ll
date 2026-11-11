Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifTune?download=true
inline.NumInlined: 335
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@Ifn_NtkDeriveTruth:bb.a
  br i1 %exitcond.not.i136.3, label %Abc_TtAnd.exit137, label %.lr.ph.i133, !llvm.loop !209

bb.j:                                             ; preds = %.lr.ph
  br i1 %i.bz, label %.lr.ph.i140.preheader, label %Abc_TtAnd.exit137

.lr.ph.i140.preheader:                            ; preds = %bb.j
  br i1 %min.iters.check380, label %.lr.ph.i140.preheader424, label %vector.memcheck381

vector.memcheck381:                               ; preds = %.lr.ph.i140.preheader
  %i.mz = shl nsw i64 %i.ln, 3
  %i.na = getelementptr i8, ptr %scevgep377, i64 %i.mz
  %bound0382 = icmp ult ptr %i.by, %i.na
  %bound1383 = icmp ult ptr %i.lo, %scevgep378
  %found.conflict384 = and i1 %bound0382, %bound1383
  br i1 %found.conflict384, label %.lr.ph.i140.preheader424, label %vector.body387

vector.body387:                                   ; preds = %vector.memcheck381, %vector.body387
  %index388 = phi i64 [ %index.next393, %vector.body387 ], [ 0, %vector.memcheck381 ] ; 3 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index388 ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16 ; 2 uses
  %wide.load389 = load <2 x i64>, ptr %i.nb, align 8, !tbaa !37, !alias.scope !230, !noalias !231
  %wide.load390 = load <2 x i64>, ptr %i.nc, align 8, !tbaa !37, !alias.scope !230, !noalias !231
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %index388 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %wide.load391 = load <2 x i64>, ptr %i.nd, align 8, !tbaa !37, !alias.scope !231
  %wide.load392 = load <2 x i64>, ptr %i.ne, align 8, !tbaa !37, !alias.scope !231
  %i.nf = xor <2 x i64> %wide.load391, splat (i64 -1)
  %i.ng = xor <2 x i64> %wide.load392, splat (i64 -1)
  %i.nh = and <2 x i64> %wide.load389, %i.nf
  %i.ni = and <2 x i64> %wide.load390, %i.ng
  store <2 x i64> %i.nh, ptr %i.nb, align 8, !tbaa !37, !alias.scope !230, !noalias !231
  store <2 x i64> %i.ni, ptr %i.nc, align 8, !tbaa !37, !alias.scope !230, !noalias !231
  %index.next393 = add nuw i64 %index388, 4       ; 2 uses
  %i.nj = icmp eq i64 %index.next393, %n.vec386
  br i1 %i.nj, label %middle.block394, label %vector.body387, !llvm.loop !213

middle.block394:                                  ; preds = %vector.body387
  br i1 %cmp.n395, label %Abc_TtAnd.exit137, label %.lr.ph.i140.preheader424

.lr.ph.i140.preheader424:                         ; preds = %vector.memcheck381, %.lr.ph.i140.preheader, %middle.block394
  %indvars.iv.i141.ph = phi i64 [ 0, %vector.memcheck381 ], [ 0, %.lr.ph.i140.preheader ], [ %n.vec386, %middle.block394 ] ; 5 uses
  br i1 %lcmp.mod442.not, label %.lr.ph.i140.prol.loopexit, label %.lr.ph.i140.prol

.lr.ph.i140.prol:                                 ; preds = %.lr.ph.i140.preheader424
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i141.ph ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !37
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %indvars.iv.i141.ph
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !37
  %i.no = xor i64 %i.nn, -1
  %i.np = and i64 %i.nl, %i.no
  store i64 %i.np, ptr %i.nk, align 8, !tbaa !37
  %indvars.iv.next.i142.prol = or disjoint i64 %indvars.iv.i141.ph, 1
  br label %.lr.ph.i140.prol.loopexit

.lr.ph.i140.prol.loopexit:                        ; preds = %.lr.ph.i140.prol, %.lr.ph.i140.preheader424
  %indvars.iv.i141.unr = phi i64 [ %indvars.iv.i141.ph, %.lr.ph.i140.preheader424 ], [ %indvars.iv.next.i142.prol, %.lr.ph.i140.prol ]
  %i.nq = icmp eq i64 %indvars.iv.i141.ph, %i.do
  br i1 %i.nq, label %Abc_TtAnd.exit137, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %.lr.ph.i140.prol.loopexit, %.lr.ph.i140
  %indvars.iv.i141 = phi i64 [ %indvars.iv.next.i142.1, %.lr.ph.i140 ], [ %indvars.iv.i141.unr, %.lr.ph.i140.prol.loopexit ] ; 4 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i141 ; 2 uses
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !37
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %indvars.iv.i141
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !37
  %i.nv = xor i64 %i.nu, -1
  %i.nw = and i64 %i.ns, %i.nv
  store i64 %i.nw, ptr %i.nr, align 8, !tbaa !37
  %indvars.iv.next.i142 = add nuw nsw i64 %indvars.iv.i141, 1 ; 2 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i142 ; 2 uses
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !37
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %indvars.iv.next.i142
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !37
  %i.ob = xor i64 %i.oa, -1
  %i.oc = and i64 %i.ny, %i.ob
  store i64 %i.oc, ptr %i.nx, align 8, !tbaa !37
  %indvars.iv.next.i142.1 = add nuw nsw i64 %indvars.iv.i141, 2 ; 2 uses
  %exitcond.not.i143.1 = icmp eq i64 %indvars.iv.next.i142.1, %i.ca
  br i1 %exitcond.not.i143.1, label %Abc_TtAnd.exit137, label %.lr.ph.i140, !llvm.loop !214

Abc_TtAnd.exit137:                                ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133, %.lr.ph.i140.prol.loopexit, %.lr.ph.i140, %middle.block421, %middle.block394, %bb.j, %bb.i
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count202
  br i1 %exitcond203.not, label %._crit_edge, label %.lr.ph, !llvm.loop !215

._crit_edge:                                      ; preds = %Abc_TtAnd.exit137, %Abc_TtFill.exit130
  br i1 %i.bz, label %.lr.ph.i146.preheader, label %Abc_TtOr.exit

.lr.ph.i146.preheader:                            ; preds = %._crit_edge
  %brmerge = select i1 %min.iters.check353, i1 true, i1 %found.conflict357
  br i1 %brmerge, label %.lr.ph.i146.preheader427, label %vector.body360

vector.body360:                                   ; preds = %.lr.ph.i146.preheader, %vector.body360
  %index361 = phi i64 [ %index.next366, %vector.body360 ], [ 0, %.lr.ph.i146.preheader ] ; 3 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %index361 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 16 ; 2 uses
  %wide.load362 = load <2 x i64>, ptr %i.od, align 8, !tbaa !37, !alias.scope !232, !noalias !233
  %wide.load363 = load <2 x i64>, ptr %i.oe, align 8, !tbaa !37, !alias.scope !232, !noalias !233
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index361 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %wide.load364 = load <2 x i64>, ptr %i.of, align 8, !tbaa !37, !alias.scope !233
  %wide.load365 = load <2 x i64>, ptr %i.og, align 8, !tbaa !37, !alias.scope !233
  %i.oh = or <2 x i64> %wide.load364, %wide.load362
  %i.oi = or <2 x i64> %wide.load365, %wide.load363
  store <2 x i64> %i.oh, ptr %i.od, align 8, !tbaa !37, !alias.scope !232, !noalias !233
  store <2 x i64> %i.oi, ptr %i.oe, align 8, !tbaa !37, !alias.scope !232, !noalias !233
  %index.next366 = add nuw i64 %index361, 4       ; 2 uses
  %i.oj = icmp eq i64 %index.next366, %n.vec359
  br i1 %i.oj, label %middle.block367, label %vector.body360, !llvm.loop !219

middle.block367:                                  ; preds = %vector.body360
  br i1 %cmp.n368, label %Abc_TtOr.exit, label %.lr.ph.i146.preheader427

.lr.ph.i146.preheader427:                         ; preds = %.lr.ph.i146.preheader, %middle.block367
  %indvars.iv.i147.ph = phi i64 [ %n.vec359, %middle.block367 ], [ 0, %.lr.ph.i146.preheader ] ; 3 uses
  br i1 %lcmp.mod445.not, label %.lr.ph.i146.prol.loopexit, label %.lr.ph.i146.prol

.lr.ph.i146.prol:                                 ; preds = %.lr.ph.i146.preheader427, %.lr.ph.i146.prol
  %indvars.iv.i147.prol = phi i64 [ %indvars.iv.next.i148.prol, %.lr.ph.i146.prol ], [ %indvars.iv.i147.ph, %.lr.ph.i146.preheader427 ] ; 3 uses
  %prol.iter446 = phi i64 [ %prol.iter446.next, %.lr.ph.i146.prol ], [ 0, %.lr.ph.i146.preheader427 ]
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.i147.prol ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !37
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i147.prol
  %i.on = load i64, ptr %i.om, align 8, !tbaa !37
  %i.oo = or i64 %i.on, %i.ol
  store i64 %i.oo, ptr %i.ok, align 8, !tbaa !37
  %indvars.iv.next.i148.prol = add nuw nsw i64 %indvars.iv.i147.prol, 1 ; 2 uses
  %prol.iter446.next = add i64 %prol.iter446, 1   ; 2 uses
  %prol.iter446.cmp.not = icmp eq i64 %prol.iter446.next, %xtraiter444
  br i1 %prol.iter446.cmp.not, label %.lr.ph.i146.prol.loopexit, label %.lr.ph.i146.prol, !llvm.loop !220

.lr.ph.i146.prol.loopexit:                        ; preds = %.lr.ph.i146.prol, %.lr.ph.i146.preheader427
  %indvars.iv.i147.unr = phi i64 [ %indvars.iv.i147.ph, %.lr.ph.i146.preheader427 ], [ %indvars.iv.next.i148.prol, %.lr.ph.i146.prol ]
  %i.op = sub nsw i64 %indvars.iv.i147.ph, %i.ca
  %i.oq = icmp ugt i64 %i.op, -4
  br i1 %i.oq, label %Abc_TtOr.exit, label %.lr.ph.i146

.lr.ph.i146:                                      ; preds = %.lr.ph.i146.prol.loopexit, %.lr.ph.i146
  %indvars.iv.i147 = phi i64 [ %indvars.iv.next.i148.3, %.lr.ph.i146 ], [ %indvars.iv.i147.unr, %.lr.ph.i146.prol.loopexit ] ; 6 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.i147 ; 2 uses
  %i.os = load i64, ptr %i.or, align 8, !tbaa !37
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i147
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !37
  %i.ov = or i64 %i.ou, %i.os
  store i64 %i.ov, ptr %i.or, align 8, !tbaa !37
  %indvars.iv.next.i148 = add nuw nsw i64 %indvars.iv.i147, 1 ; 2 uses
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.next.i148 ; 2 uses
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !37
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i148
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !37
  %i.pa = or i64 %i.oz, %i.ox
  store i64 %i.pa, ptr %i.ow, align 8, !tbaa !37
  %indvars.iv.next.i148.1 = add nuw nsw i64 %indvars.iv.i147, 2 ; 2 uses
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.next.i148.1 ; 2 uses
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !37
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i148.1
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !37
  %i.pf = or i64 %i.pe, %i.pc
  store i64 %i.pf, ptr %i.pb, align 8, !tbaa !37
  %indvars.iv.next.i148.2 = add nuw nsw i64 %indvars.iv.i147, 3 ; 2 uses
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.next.i148.2 ; 2 uses
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !37
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i148.2
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !37
  %i.pk = or i64 %i.pj, %i.ph
  store i64 %i.pk, ptr %i.pg, align 8, !tbaa !37
  %indvars.iv.next.i148.3 = add nuw nsw i64 %indvars.iv.i147, 4 ; 2 uses
  %exitcond.not.i149.3 = icmp eq i64 %indvars.iv.next.i148.3, %i.ca
  br i1 %exitcond.not.i149.3, label %Abc_TtOr.exit, label %.lr.ph.i146, !llvm.loop !221

Abc_TtOr.exit:                                    ; preds = %.lr.ph.i146.prol.loopexit, %.lr.ph.i146, %middle.block367, %._crit_edge, %bb.g
  %i.pl = add nuw nsw i32 %.1106163, 1            ; 2 uses
  %exitcond204.not = icmp eq i32 %i.pl, %i.ky
  br i1 %exitcond204.not, label %Abc_TtMux.exit, label %bb.g, !llvm.loop !222

Abc_TtMux.exit:                                   ; preds = %Abc_TtOr.exit, %.lr.ph.i123.prol.loopexit, %.lr.ph.i123, %Abc_TtXor.exit.loopexit, %Abc_TtAnd.exit.loopexit, %middle.block341, %bb.d, %bb.c, %Abc_TtClear.exit, %Abc_TtFill.exit, %Abc_TtClear.exit128, %bb.e, %bb.b
  %indvars.iv.next216 = add nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond219.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count218
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond219.not, label %._crit_edge172, label %bb.b, !llvm.loop !223

._crit_edge172:                                   ; preds = %Abc_TtMux.exit, %.preheader.._crit_edge172_crit_edge
  %i.pm = phi i32 [ %.pre, %.preheader.._crit_edge172_crit_edge ], [ %i.bv, %Abc_TtMux.exit ]
  %i.pn = add nsw i32 %i.bq, -1
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 8496
  %i.pp = mul nsw i32 %i.pm, %i.pn
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.po, i64 %i.pq
  ret ptr %i.pr
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Ifn_TtComparisonConstr(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 10 uses
  %i.b = alloca [4 x i64], align 16               ; 11 uses
  %i.c = alloca [4 x i64], align 16               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.d = shl nsw i32 %1, 1
  %i.e = icmp slt i32 %1, 4
  %i.f = add nsw i32 %i.d, -6
  %i.g = shl nuw i32 1, %i.f
  %i.h = select i1 %i.e, i32 1, i32 %i.g          ; 12 uses
  %i.i = zext nneg i32 %i.h to i64                ; 23 uses
  %i.j = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %0, i8 0, i64 %i.j, i1 false), !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 -1, i64 %i.j, i1 false), !tbaa !37
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.058 = add nsw i32 %1, -1
  %.not24 = icmp eq i32 %2, 0
  %i.l = zext nneg i32 %.058 to i64               ; 2 uses
  br i1 %.not24, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check115 = icmp samesign ult i32 %i.h, 4
  %n.vec117 = and i64 %i.i, 1431655764
  %min.iters.check101 = icmp samesign ult i32 %i.h, 4
  %n.vec103 = and i64 %i.i, 1431655764
  %min.iters.check87 = icmp samesign ult i32 %i.h, 4
  %n.vec89 = and i64 %i.i, 1431655764
  %min.iters.check73 = icmp samesign ult i32 %i.h, 4
  %n.vec75 = and i64 %i.i, 1431655764
  %min.iters.check = icmp samesign ult i32 %i.h, 4
  %n.vec = and i64 %i.i, 1431655764
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check185 = icmp samesign ult i32 %i.h, 4
  %n.vec187 = and i64 %i.i, 1431655764
  %min.iters.check171 = icmp samesign ult i32 %i.h, 4
  %n.vec173 = and i64 %i.i, 1431655764
  %min.iters.check157 = icmp samesign ult i32 %i.h, 4
  %n.vec159 = and i64 %i.i, 1431655764
  %min.iters.check143 = icmp samesign ult i32 %i.h, 4
  %n.vec145 = and i64 %i.i, 1431655764
  %min.iters.check129 = icmp samesign ult i32 %i.h, 4
  %n.vec131 = and i64 %i.i, 1431655764
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %Abc_TtAnd.exit51.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %Abc_TtAnd.exit51.us ], [ %i.l, %.lr.ph.split.us.preheader ] ; 3 uses
  %.idx66 = shl nuw nsw i64 %indvars.iv62, 6
  %i.m = getelementptr inbounds nuw i8, ptr @__const.Ifn_TtComparisonConstr.s_TtElems, i64 %.idx66 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 4 uses
  br i1 %min.iters.check185, label %.lr.ph.i26.us, label %vector.body188

vector.body188:                                   ; preds = %.lr.ph.split.us, %vector.body188
  %index189 = phi i64 [ %index.next194, %vector.body188 ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index189 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load190 = load <2 x i64>, ptr %i.o, align 16, !tbaa !37
  %wide.load191 = load <2 x i64>, ptr %i.p, align 16, !tbaa !37
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index189 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load192 = load <2 x i64>, ptr %i.q, align 16, !tbaa !37
  %wide.load193 = load <2 x i64>, ptr %i.r, align 16, !tbaa !37
  %i.s = xor <2 x i64> %wide.load192, splat (i64 -1)
  %i.t = xor <2 x i64> %wide.load193, splat (i64 -1)
  %i.u = and <2 x i64> %wide.load190, %i.s
  %i.v = and <2 x i64> %wide.load191, %i.t
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index189 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %i.u, ptr %i.w, align 16, !tbaa !37
  store <2 x i64> %i.v, ptr %i.x, align 16, !tbaa !37
  %index.next194 = add nuw i64 %index189, 4       ; 2 uses
  %i.y = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.y, label %.lr.ph.i32.us.preheader, label %vector.body188, !llvm.loop !234

.lr.ph.i26.us:                                    ; preds = %.lr.ph.split.us, %.lr.ph.i26.us
  %indvars.iv.i27.us = phi i64 [ %indvars.iv.next.i28.us, %.lr.ph.i26.us ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i27.us
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i27.us
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !37
  %i.ad = xor i64 %i.ac, -1
  %i.ae = and i64 %i.aa, %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i27.us
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !37
  %indvars.iv.next.i28.us = add nuw nsw i64 %indvars.iv.i27.us, 1 ; 2 uses
  %exitcond.not.i29.us = icmp eq i64 %indvars.iv.next.i28.us, %i.i
  br i1 %exitcond.not.i29.us, label %.lr.ph.i32.us.preheader, label %.lr.ph.i26.us, !llvm.loop !235

.lr.ph.i32.us.preheader:                          ; preds = %vector.body188, %.lr.ph.i26.us
  br i1 %min.iters.check171, label %.lr.ph.i32.us, label %vector.body174

vector.body174:                                   ; preds = %.lr.ph.i32.us.preheader, %vector.body174
  %index175 = phi i64 [ %index.next180, %vector.body174 ], [ 0, %.lr.ph.i32.us.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index175 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load176 = load <2 x i64>, ptr %i.ag, align 16, !tbaa !37
  %wide.load177 = load <2 x i64>, ptr %i.ah, align 16, !tbaa !37
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index175 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load178 = load <2 x i64>, ptr %i.ai, align 16, !tbaa !37
  %wide.load179 = load <2 x i64>, ptr %i.aj, align 16, !tbaa !37
  %i.ak = and <2 x i64> %wide.load178, %wide.load176
  %i.al = and <2 x i64> %wide.load179, %wide.load177
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index175 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %i.ak, ptr %i.am, align 16, !tbaa !37
  store <2 x i64> %i.al, ptr %i.an, align 16, !tbaa !37
  %index.next180 = add nuw i64 %index175, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.ao, label %.lr.ph.i37.us.preheader, label %vector.body174, !llvm.loop !236

.lr.ph.i32.us:                                    ; preds = %.lr.ph.i32.us.preheader, %.lr.ph.i32.us
  %indvars.iv.i33.us = phi i64 [ %indvars.iv.next.i34.us, %.lr.ph.i32.us ], [ 0, %.lr.ph.i32.us.preheader ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i33.us
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i33.us
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !37
  %i.at = and i64 %i.as, %i.aq
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i33.us
  store i64 %i.at, ptr %i.au, align 8, !tbaa !37
  %indvars.iv.next.i34.us = add nuw nsw i64 %indvars.iv.i33.us, 1 ; 2 uses
  %exitcond.not.i35.us = icmp eq i64 %indvars.iv.next.i34.us, %i.i
  br i1 %exitcond.not.i35.us, label %.lr.ph.i37.us.preheader, label %.lr.ph.i32.us, !llvm.loop !237

.lr.ph.i37.us.preheader:                          ; preds = %vector.body174, %.lr.ph.i32.us
  br i1 %min.iters.check157, label %.lr.ph.i37.us, label %vector.body160

vector.body160:                                   ; preds = %.lr.ph.i37.us.preheader, %vector.body160
  %index161 = phi i64 [ %index.next166, %vector.body160 ], [ 0, %.lr.ph.i37.us.preheader ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index161 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load162 = load <2 x i64>, ptr %i.av, align 8, !tbaa !37
  %wide.load163 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !37
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index161 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load164 = load <2 x i64>, ptr %i.ax, align 16, !tbaa !37
  %wide.load165 = load <2 x i64>, ptr %i.ay, align 16, !tbaa !37
  %i.az = or <2 x i64> %wide.load164, %wide.load162
  %i.ba = or <2 x i64> %wide.load165, %wide.load163
  store <2 x i64> %i.az, ptr %i.av, align 8, !tbaa !37
  store <2 x i64> %i.ba, ptr %i.aw, align 8, !tbaa !37
  %index.next166 = add nuw i64 %index161, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next166, %n.vec159
  br i1 %i.bb, label %.lr.ph.i42.us.preheader, label %vector.body160, !llvm.loop !238

.lr.ph.i37.us:                                    ; preds = %.lr.ph.i37.us.preheader, %.lr.ph.i37.us
  %indvars.iv.i38.us = phi i64 [ %indvars.iv.next.i39.us, %.lr.ph.i37.us ], [ 0, %.lr.ph.i37.us.preheader ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i38.us ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !37
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i38.us
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !37
  %i.bg = or i64 %i.bf, %i.bd
  store i64 %i.bg, ptr %i.bc, align 8, !tbaa !37
  %indvars.iv.next.i39.us = add nuw nsw i64 %indvars.iv.i38.us, 1 ; 2 uses
  %exitcond.not.i40.us = icmp eq i64 %indvars.iv.next.i39.us, %i.i
  br i1 %exitcond.not.i40.us, label %.lr.ph.i42.us.preheader, label %.lr.ph.i37.us, !llvm.loop !239

.lr.ph.i42.us.preheader:                          ; preds = %vector.body160, %.lr.ph.i37.us
  br i1 %min.iters.check143, label %.lr.ph.i42.us, label %vector.body146

vector.body146:                                   ; preds = %.lr.ph.i42.us.preheader, %vector.body146
  %index147 = phi i64 [ %index.next152, %vector.body146 ], [ 0, %.lr.ph.i42.us.preheader ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index147 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load148 = load <2 x i64>, ptr %i.bh, align 16, !tbaa !37
  %wide.load149 = load <2 x i64>, ptr %i.bi, align 16, !tbaa !37
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index147 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load150 = load <2 x i64>, ptr %i.bj, align 16, !tbaa !37
  %wide.load151 = load <2 x i64>, ptr %i.bk, align 16, !tbaa !37
  %i.bl = xor <2 x i64> %wide.load148, %wide.load150
  %i.bm = xor <2 x i64> %wide.load149, %wide.load151
  %i.bn = xor <2 x i64> %i.bl, splat (i64 -1)
  %i.bo = xor <2 x i64> %i.bm, splat (i64 -1)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index147 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <2 x i64> %i.bn, ptr %i.bp, align 16, !tbaa !37
  store <2 x i64> %i.bo, ptr %i.bq, align 16, !tbaa !37
  %index.next152 = add nuw i64 %index147, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next152, %n.vec145
  br i1 %i.br, label %.lr.ph.i47.us.preheader, label %vector.body146, !llvm.loop !240

.lr.ph.i42.us:                                    ; preds = %.lr.ph.i42.us.preheader, %.lr.ph.i42.us
  %indvars.iv.i43.us = phi i64 [ %indvars.iv.next.i44.us, %.lr.ph.i42.us ], [ 0, %.lr.ph.i42.us.preheader ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i43.us
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !37
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i43.us
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !37
  %i.bw = xor i64 %i.bt, %i.bv
  %i.bx = xor i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i43.us
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !37
  %indvars.iv.next.i44.us = add nuw nsw i64 %indvars.iv.i43.us, 1 ; 2 uses
  %exitcond.not.i45.us = icmp eq i64 %indvars.iv.next.i44.us, %i.i
  br i1 %exitcond.not.i45.us, label %.lr.ph.i47.us.preheader, label %.lr.ph.i42.us, !llvm.loop !241

.lr.ph.i47.us.preheader:                          ; preds = %vector.body146, %.lr.ph.i42.us
  br i1 %min.iters.check129, label %.lr.ph.i47.us, label %vector.body132

vector.body132:                                   ; preds = %.lr.ph.i47.us.preheader, %vector.body132
  %index133 = phi i64 [ %index.next138, %vector.body132 ], [ 0, %.lr.ph.i47.us.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index133 ; 3 uses
end_hunk_0
begin_hunk_1_@Ifn_TtComparisonConstr:bb.a
  br i1 %exitcond.not.i45, label %.lr.ph.i47.preheader, label %.lr.ph.i42, !llvm.loop !252

.lr.ph.i47.preheader:                             ; preds = %vector.body76, %.lr.ph.i42
  br i1 %min.iters.check, label %.lr.ph.i47, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i47.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ez, align 16, !tbaa !37
  %wide.load69 = load <2 x i64>, ptr %i.fa, align 16, !tbaa !37
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load70 = load <2 x i64>, ptr %i.fb, align 16, !tbaa !37
  %wide.load71 = load <2 x i64>, ptr %i.fc, align 16, !tbaa !37
  %i.fd = and <2 x i64> %wide.load70, %wide.load
  %i.fe = and <2 x i64> %wide.load71, %wide.load69
  store <2 x i64> %i.fd, ptr %i.ez, align 16, !tbaa !37
  store <2 x i64> %i.fe, ptr %i.fa, align 16, !tbaa !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %Abc_TtAnd.exit51, label %vector.body, !llvm.loop !253

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.lr.ph.i47
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i49, %.lr.ph.i47 ], [ 0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i48 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !37
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i48
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !37
  %i.fk = and i64 %i.fj, %i.fh
  store i64 %i.fk, ptr %i.fg, align 8, !tbaa !37
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1 ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %i.i
  br i1 %exitcond.not.i50, label %Abc_TtAnd.exit51, label %.lr.ph.i47, !llvm.loop !254

Abc_TtAnd.exit51:                                 ; preds = %vector.body, %.lr.ph.i47
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fl = icmp sgt i64 %indvars.iv, 0
  br i1 %i.fl, label %.lr.ph.split, label %._crit_edge, !llvm.loop !244

._crit_edge:                                      ; preds = %Abc_TtAnd.exit51, %Abc_TtAnd.exit51.us, %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %Abc_TtNot.exit, label %.lr.ph.i53.preheader

.lr.ph.i53.preheader:                             ; preds = %._crit_edge
  %min.iters.check199 = icmp samesign ult i32 %i.h, 4
  br i1 %min.iters.check199, label %.lr.ph.i53, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph.i53.preheader
  %n.vec201 = and i64 %i.i, 1431655764
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph200
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next206, %vector.body202 ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index203 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %wide.load204 = load <2 x i64>, ptr %i.fm, align 8, !tbaa !37
  %wide.load205 = load <2 x i64>, ptr %i.fn, align 8, !tbaa !37
  %i.fo = xor <2 x i64> %wide.load204, splat (i64 -1)
  %i.fp = xor <2 x i64> %wide.load205, splat (i64 -1)
  store <2 x i64> %i.fo, ptr %i.fm, align 8, !tbaa !37
  store <2 x i64> %i.fp, ptr %i.fn, align 8, !tbaa !37
  %index.next206 = add nuw i64 %index203, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next206, %n.vec201
  br i1 %i.fq, label %Abc_TtNot.exit, label %vector.body202, !llvm.loop !255

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.preheader, %.lr.ph.i53
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i55, %.lr.ph.i53 ], [ 0, %.lr.ph.i53.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i54 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !37
  %i.ft = xor i64 %i.fs, -1
  store i64 %i.ft, ptr %i.fr, align 8, !tbaa !37
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %indvars.iv.next.i55, %i.i
  br i1 %exitcond.not.i56, label %Abc_TtNot.exit, label %.lr.ph.i53, !llvm.loop !256

Abc_TtNot.exit:                                   ; preds = %vector.body202, %.lr.ph.i53, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Ifn_AddClause(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef %1, ptr noundef %2) #26
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define void @Ifn_NtkAddConstrOne(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [11 x i32], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val26 = load i32, ptr %i.b, align 4, !tbaa !58
  %i.c = icmp sgt i32 %.val26, 0
  br i1 %i.c, label %.lr.ph29, label %.critedge

.lr.ph29:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph.us.preheader, label %.lr.ph29.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph29
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv32 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next33, %._crit_edge.us ] ; 2 uses
  %.val23.us = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.val23.us, i64 %indvars.iv32
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.025.us = phi i32 [ 0, %.lr.ph.us ], [ %.1.us, %bb.e ] ; 3 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.h = shl nuw i32 %indvars.iv.tr, 1
  %i.i = ashr i32 %i.g, %i.h
  %i.j = and i32 %i.i, 3
  switch i32 %i.j, label %bb.e [
    i32 1, label %bb.d
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31
  %i.m = shl nsw i32 %i.l, 1
  %i.n = or disjoint i32 %i.m, 1
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31
  %i.q = shl nsw i32 %i.p, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  %i.r = add nsw i32 %.025.us, 1
  %i.s = sext i32 %.025.us to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.s
  store i32 %.sink, ptr %i.t, align 4, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b
  %.1.us = phi i32 [ %.025.us, %bb.b ], [ %i.r, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !4

._crit_edge.us:                                   ; preds = %bb.e
  %i.u = sext i32 %.1.us to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.u
  %i.w = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.v) #26 ; 0 uses
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %.val.us = load i32, ptr %i.b, align 4, !tbaa !58
  %i.x = sext i32 %.val.us to i64
  %i.y = icmp slt i64 %indvars.iv.next33, %i.x
  br i1 %i.y, label %.lr.ph.us, label %.critedge, !llvm.loop !5

.lr.ph29.split:                                   ; preds = %.lr.ph29, %.lr.ph29.split
  %.02027 = phi i32 [ %i.aa, %.lr.ph29.split ], [ 0, %.lr.ph29 ]
  %i.z = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a) #26 ; 0 uses
  %i.aa = add nuw nsw i32 %.02027, 1              ; 2 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !58
  %i.ab = icmp slt i32 %i.aa, %.val
  br i1 %i.ab, label %.lr.ph29.split, label %.critedge, !llvm.loop !5

.critedge:                                        ; preds = %.lr.ph29.split, %._crit_edge.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ifn_NtkAddConstraints(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [11 x i32], align 16              ; 8 uses
  %i.b = alloca [11 x i32], align 16              ; 8 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca [11 x i32], align 16              ; 6 uses
  %i.e = alloca [4 x i64], align 16               ; 4 uses
  %i.f = alloca [22 x i32], align 16              ; 7 uses
  %calloc = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %calloc, i64 4 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %calloc, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1552 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !20
  %i.k = sub nsw i32 64, %i.j
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 -1, %i.l
  %i.n = xor i64 %i.m, -1                         ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !26   ; 7 uses
  %i.q = icmp eq i32 %i.p, 0
  %i.r = icmp ult i32 %i.p, 2
  %i.s = and i64 %i.n, 2
  %i.t = mul nuw nsw i64 %i.s, 5
  %i.u = select i1 %i.q, i64 0, i64 %i.t
  %.126.i = select i1 %i.r, i64 %i.u, i64 %i.n
  %i.v = icmp ult i32 %i.p, 3
  %i.w = and i64 %.126.i, 14
  %i.x = mul nuw nsw i64 %i.w, 17
  %.227.i = select i1 %i.v, i64 %i.x, i64 %i.n
  %i.y = icmp ult i32 %i.p, 4
  %i.z = and i64 %.227.i, 254
  %i.aa = mul nuw nsw i64 %i.z, 257
  %.328.i = select i1 %i.y, i64 %i.aa, i64 %i.n
  %i.ab = icmp ult i32 %i.p, 5
  %i.ac = and i64 %.328.i, 65534
  %i.ad = mul nuw nsw i64 %i.ac, 65537
  %.429.i = select i1 %i.ab, i64 %i.ad, i64 %i.n
  %i.ae = icmp ult i32 %i.p, 6
  %i.af = and i64 %.429.i, 4294967294
  %i.ag = mul nuw i64 %i.af, 4294967297
  %.5.i = select i1 %i.ae, i64 %i.ag, i64 %i.n    ; 2 uses
  store i64 %.5.i, ptr %i.c, align 8, !tbaa !37
  %.not = icmp eq i64 %.5.i, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.ah = call i32 @Kit_TruthIsop(ptr noundef nonnull %i.c, i32 noundef %i.p, ptr noundef nonnull %calloc, i32 noundef 0) #26 ; 0 uses
  %i.ai = load i32, ptr %0, align 8, !tbaa !23
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.preheader.lr.ph, label %._crit_edge84

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1564
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %Ifn_NtkAddConstrOne.exit
  %.05283 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bu, %Ifn_NtkAddConstrOne.exit ] ; 2 uses
  %i.al = load i32, ptr %i.o, align 8, !tbaa !26  ; 5 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !25
  %i.ao = mul nuw nsw i32 %i.al, %.05283
  %invariant.op = add i32 %i.ao, %i.an            ; 2 uses
  %wide.trip.count = zext nneg i32 %i.al to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.al, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %invariant.op, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op137 = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ap = add <4 x i32> %broadcast.splat, %vec.ind
  %.reass138 = add <4 x i32> %vec.ind, %invariant.op137
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <4 x i32> %i.ap, ptr %i.aq, align 16, !tbaa !31
  store <4 x i32> %.reass138, ptr %i.ar, align 16, !tbaa !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.at
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %.reass, ptr %i.au, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !258

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %.val26.i = load i32, ptr %i.g, align 4, !tbaa !58
  %i.av = icmp sgt i32 %.val26.i, 0
  br i1 %i.av, label %.lr.ph.us.preheader.i, label %Ifn_NtkAddConstrOne.exit

._crit_edge.thread:                               ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %.val26.i111 = load i32, ptr %i.g, align 4, !tbaa !58
  %i.aw = icmp sgt i32 %.val26.i111, 0
  br i1 %i.aw, label %.lr.ph29.split.i, label %Ifn_NtkAddConstrOne.exit

.lr.ph.us.preheader.i:                            ; preds = %._crit_edge
  %wide.trip.count.i = zext nneg i32 %i.al to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next33.i, %._crit_edge.us.i ] ; 2 uses
  %.val23.us.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val23.us.i, i64 %indvars.iv32.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.f ] ; 4 uses
  %.025.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %.1.us.i, %bb.f ] ; 3 uses
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.az = shl nuw i32 %indvars.iv.tr.i, 1
  %i.ba = ashr i32 %i.ay, %i.az
  %i.bb = and i32 %i.ba, 3
  switch i32 %i.bb, label %bb.f [
    i32 1, label %bb.e
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !31
  %i.be = shl nsw i32 %i.bd, 1
  %i.bf = or disjoint i32 %i.be, 1
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !31
  %i.bi = shl nsw i32 %i.bh, 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.sink.i = phi i32 [ %i.bi, %bb.e ], [ %i.bf, %bb.d ]
  %i.bj = add nsw i32 %.025.us.i, 1
  %i.bk = sext i32 %.025.us.i to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bk
  store i32 %.sink.i, ptr %i.bl, align 4, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i, %bb.c
  %.1.us.i = phi i32 [ %.025.us.i, %bb.c ], [ %i.bj, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.c, !llvm.loop !4

._crit_edge.us.i:                                 ; preds = %bb.f
  %i.bm = sext i32 %.1.us.i to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bm
  %i.bo = call i32 @sat_solver_addclause(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bn) #26 ; 0 uses
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %.val.us.i = load i32, ptr %i.g, align 4, !tbaa !58
  %i.bp = sext i32 %.val.us.i to i64
  %i.bq = icmp slt i64 %indvars.iv.next33.i, %i.bp
  br i1 %i.bq, label %.lr.ph.us.i, label %Ifn_NtkAddConstrOne.exit, !llvm.loop !5

.lr.ph29.split.i:                                 ; preds = %._crit_edge.thread, %.lr.ph29.split.i
  %.02027.i = phi i32 [ %i.bs, %.lr.ph29.split.i ], [ 0, %._crit_edge.thread ]
  %i.br = call i32 @sat_solver_addclause(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #26 ; 0 uses
  %i.bs = add nuw nsw i32 %.02027.i, 1            ; 2 uses
  %.val.i = load i32, ptr %i.g, align 4, !tbaa !58
  %i.bt = icmp slt i32 %i.bs, %.val.i
  br i1 %i.bt, label %.lr.ph29.split.i, label %Ifn_NtkAddConstrOne.exit, !llvm.loop !5

Ifn_NtkAddConstrOne.exit:                         ; preds = %.lr.ph29.split.i, %._crit_edge.us.i, %._crit_edge.thread, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.bu = add nuw nsw i32 %.05283, 1              ; 2 uses
  %i.bv = load i32, ptr %0, align 8, !tbaa !23
  %i.bw = icmp slt i32 %i.bu, %i.bv
  br i1 %i.bw, label %.preheader, label %._crit_edge84, !llvm.loop !259

._crit_edge84:                                    ; preds = %Ifn_NtkAddConstrOne.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %._crit_edge84
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1548 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !34
  %.not56 = icmp eq i32 %i.by, 0
  br i1 %.not56, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.bz = load i32, ptr %i.i, align 8, !tbaa !20
  %i.ca = load i32, ptr %0, align 8, !tbaa !23
  %i.cb = icmp eq i32 %i.bz, %i.ca
  %i.cc = zext i1 %i.cb to i32                    ; 2 uses
  %i.cd = load i32, ptr %i.o, align 8, !tbaa !26  ; 2 uses
  call void @Ifn_TtComparisonConstr(ptr noundef nonnull %i.e, i32 noundef %i.cd, i32 noundef %i.cc, i32 noundef %i.cc)
  %i.ce = shl nsw i32 %i.cd, 1
  %i.cf = call i32 @Kit_TruthIsop(ptr noundef nonnull %i.e, i32 noundef %i.ce, ptr noundef nonnull %calloc, i32 noundef 0) #26 ; 0 uses
  %i.cg = load i32, ptr %i.bx, align 4, !tbaa !34
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph95, label %._crit_edge96

.lr.ph95:                                         ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1564
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph95, %Ifn_NtkAddConstrOne.exit78
  %indvars.iv105 = phi i64 [ 0, %.lr.ph95 ], [ %indvars.iv.next106, %Ifn_NtkAddConstrOne.exit78 ] ; 2 uses
  %i.ck = load i32, ptr %i.o, align 8, !tbaa !26  ; 6 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph87, label %._crit_edge88.thread

.lr.ph87:                                         ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv105
end_hunk_1
