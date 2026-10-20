Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastRegion?download=true
inline.NumInlined: 580
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_Z22rcBuildRegionsMonotoneP9rcContextR20rcCompactHeightfieldiii:bb.a
pred.store.continue654.a:                         ; preds = %pred.store.if653.a, %pred.store.continue652.a
  %i.nh = extractelement <8 x i1> %i.lr, i64 6
  br i1 %i.nh, label %pred.store.if655.a, label %pred.store.continue656.a

pred.store.if655.a:                               ; preds = %pred.store.continue654.a
  %i.ni = getelementptr [2 x i8], ptr %i.n, i64 %i.ln
  %i.nj = getelementptr i8, ptr %i.ni, i64 28
  store i16 -32764, ptr %i.nj, align 2, !tbaa !71, !alias.scope !160, !noalias !159
  br label %pred.store.continue656.a

pred.store.continue656.a:                         ; preds = %pred.store.if655.a, %pred.store.continue654.a
  %i.nk = extractelement <8 x i1> %i.lr, i64 7
  br i1 %i.nk, label %pred.store.if657, label %pred.store.continue658

pred.store.if657:                                 ; preds = %pred.store.continue656.a
  %i.nl = getelementptr [2 x i8], ptr %i.n, i64 %i.ln
  %i.nm = getelementptr i8, ptr %i.nl, i64 30
  store i16 -32764, ptr %i.nm, align 2, !tbaa !71, !alias.scope !160, !noalias !159
  br label %pred.store.continue658

pred.store.continue658:                           ; preds = %pred.store.if657, %pred.store.continue656.a
  %index.next659 = add nuw i64 %index624, 16      ; 2 uses
  %i.nn = icmp eq i64 %index.next659, %n.vec622
  br i1 %i.nn, label %middle.block660, label %vector.body623, !llvm.loop !146

middle.block660:                                  ; preds = %pred.store.continue658
  %cmp.n661 = icmp eq i64 %i.lh, %n.vec622
  br i1 %cmp.n661, label %._crit_edge.i247, label %vec.epilog.iter.check665

vec.epilog.iter.check665:                         ; preds = %middle.block660
  %min.epilog.iters.check666 = icmp eq i64 %i.ll, 0
  br i1 %min.epilog.iters.check666, label %vec.epilog.scalar.ph664.preheader, label %vec.epilog.ph667, !prof !77

vec.epilog.ph667:                                 ; preds = %vector.main.loop.iter.check619, %vec.epilog.iter.check665
  %vec.epilog.resume.val662 = phi i64 [ %n.vec622, %vec.epilog.iter.check665 ], [ 0, %vector.main.loop.iter.check619 ]
  %n.vec668 = and i64 %i.lh, -4                   ; 3 uses
  %i.no = add nsw i64 %n.vec668, %i.le
  br label %vec.epilog.vector.body669

vec.epilog.vector.body669:                        ; preds = %pred.store.continue679, %vec.epilog.ph667
  %index670 = phi i64 [ %vec.epilog.resume.val662, %vec.epilog.ph667 ], [ %index.next680, %pred.store.continue679 ] ; 2 uses
  %i.np = add nuw i64 %index670, %i.le            ; 5 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.np
  %wide.load671 = load <4 x i8>, ptr %i.nq, align 1, !tbaa !74, !alias.scope !159
  %i.nr = icmp ne <4 x i8> %wide.load671, zeroinitializer ; 4 uses
  %i.ns = extractelement <4 x i1> %i.nr, i64 0
  br i1 %i.ns, label %pred.store.if672.a, label %pred.store.continue673.a

pred.store.if672.a:                               ; preds = %vec.epilog.vector.body669
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.np
  store i16 -32764, ptr %i.nt, align 2, !tbaa !71, !alias.scope !160, !noalias !159
  br label %pred.store.continue673.a

pred.store.continue673.a:                         ; preds = %pred.store.if672.a, %vec.epilog.vector.body669
  %i.nu = extractelement <4 x i1> %i.nr, i64 1
  br i1 %i.nu, label %pred.store.if674.a, label %pred.store.continue675.a

pred.store.if674.a:                               ; preds = %pred.store.continue673.a
  %i.nv = getelementptr [2 x i8], ptr %i.n, i64 %i.np
  %i.nw = getelementptr i8, ptr %i.nv, i64 2
  store i16 -32764, ptr %i.nw, align 2, !tbaa !71, !alias.scope !160, !noalias !159
  br label %pred.store.continue675.a

pred.store.continue675.a:                         ; preds = %pred.store.if674.a, %pred.store.continue673.a
  %i.nx = extractelement <4 x i1> %i.nr, i64 2
  br i1 %i.nx, label %pred.store.if676.a, label %pred.store.continue677.a

pred.store.if676.a:                               ; preds = %pred.store.continue675.a
  %i.ny = getelementptr [2 x i8], ptr %i.n, i64 %i.np
  %i.nz = getelementptr i8, ptr %i.ny, i64 4
  store i16 -32764, ptr %i.nz, align 2, !tbaa !71, !alias.scope !160, !noalias !159
  br label %pred.store.continue677.a

pred.store.continue677.a:                         ; preds = %pred.store.if676.a, %pred.store.continue675.a
  %i.oa = extractelement <4 x i1> %i.nr, i64 3
  br i1 %i.oa, label %pred.store.if678, label %pred.store.continue679

pred.store.if678:                                 ; preds = %pred.store.continue677.a
  %i.ob = getelementptr [2 x i8], ptr %i.n, i64 %i.np
  %i.oc = getelementptr i8, ptr %i.ob, i64 6
  store i16 -32764, ptr %i.oc, align 2, !tbaa !71, !alias.scope !160, !noalias !159
  br label %pred.store.continue679

pred.store.continue679:                           ; preds = %pred.store.if678, %pred.store.continue677.a
  %index.next680 = add nuw i64 %index670, 4       ; 2 uses
  %i.od = icmp eq i64 %index.next680, %n.vec668
  br i1 %i.od, label %vec.epilog.middle.block681, label %vec.epilog.vector.body669, !llvm.loop !147

vec.epilog.middle.block681:                       ; preds = %pred.store.continue679
  %cmp.n682 = icmp eq i64 %i.lh, %n.vec668
  br i1 %cmp.n682, label %._crit_edge.i247, label %vec.epilog.scalar.ph664.preheader

vec.epilog.scalar.ph664.preheader:                ; preds = %iter.check663, %vector.memcheck608, %vec.epilog.iter.check665, %vec.epilog.middle.block681
  %indvars.iv.i244.ph = phi i64 [ %i.le, %iter.check663 ], [ %i.le, %vector.memcheck608 ], [ %i.lm, %vec.epilog.iter.check665 ], [ %i.no, %vec.epilog.middle.block681 ]
  br label %vec.epilog.scalar.ph664

._crit_edge.i247:                                 ; preds = %bb.s, %middle.block660, %vec.epilog.middle.block681, %bb.q
  %indvars.iv.next34.i248 = add nuw nsw i64 %indvars.iv33.i240, 1 ; 2 uses
  %exitcond.not.i249 = icmp eq i64 %indvars.iv.next34.i248, %wide.trip.count.i236
  br i1 %exitcond.not.i249, label %._crit_edge28.i250, label %bb.q

vec.epilog.scalar.ph664:                          ; preds = %vec.epilog.scalar.ph664.preheader, %bb.s
  %indvars.iv.i244 = phi i64 [ %indvars.iv.next.i246, %bb.s ], [ %indvars.iv.i244.ph, %vec.epilog.scalar.ph664.preheader ] ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ld, i64 %indvars.iv.i244
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !74
  %.not.i245 = icmp eq i8 %i.of, 0
  br i1 %.not.i245, label %bb.s, label %bb.r

bb.r:                                             ; preds = %vec.epilog.scalar.ph664
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.i244
  store i16 -32764, ptr %i.og, align 2, !tbaa !71
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %vec.epilog.scalar.ph664
  %indvars.iv.next.i246 = add nuw nsw i64 %indvars.iv.i244, 1 ; 2 uses
  %i.oh = icmp samesign ult i64 %indvars.iv.next.i246, %i.lf
  br i1 %i.oh, label %vec.epilog.scalar.ph664, label %._crit_edge.i247, !llvm.loop !148

_ZL15paintRectRegioniiiitR20rcCompactHeightfieldPt.exit253: ; preds = %._crit_edge28.i250, %bb.g, %.preheader.lr.ph.i, %bb.f
  %.0175 = phi i16 [ 1, %bb.f ], [ 5, %.preheader.lr.ph.i ], [ 5, %bb.g ], [ 5, %._crit_edge28.i250 ] ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %2, ptr %i.oi, align 4, !tbaa !80
  %i.oj = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 1024, i32 noundef 1) #8 ; 2 uses
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  %i.ok = sub nsw i32 %i.i, %2                    ; 2 uses
  %i.ol = icmp slt i32 %2, %i.ok
  br i1 %i.ol, label %.lr.ph337, label %._crit_edge338

.lr.ph337:                                        ; preds = %_ZL15paintRectRegioniiiitR20rcCompactHeightfieldPt.exit253
  %i.om = sub i32 %i.g, %2                        ; 3 uses
  %i.on = icmp slt i32 %2, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.or = sext i32 %2 to i64                      ; 3 uses
  %i.os = sext i32 %i.g to i64                    ; 3 uses
  %wide.trip.count = sext i32 %i.om to i64
  %wide.trip.count357 = sext i32 %i.om to i64
  br label %bb.v

._crit_edge338:                                   ; preds = %._crit_edge331, %_ZL15paintRectRegioniiiitR20rcCompactHeightfieldPt.exit253
  %.sroa.11.0.lcssa = phi ptr [ %i.oj, %_ZL15paintRectRegioniiiitR20rcCompactHeightfieldPt.exit253 ], [ %.sroa.11.2, %._crit_edge331 ]
  %.1176.lcssa = phi i16 [ %.0175, %_ZL15paintRectRegioniiiitR20rcCompactHeightfieldPt.exit253 ], [ %.2177.lcssa400, %._crit_edge331 ]
  %i.ot = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %bb.t, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit254

bb.t:                                             ; preds = %._crit_edge338
  %i.ov = load ptr, ptr %0, align 8, !tbaa !21
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 40
  %i.ox = load ptr, ptr %i.ow, align 8
  tail call void %i.ox(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 24) #8, !call_target !27, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit254

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit254: ; preds = %._crit_edge338, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  store i16 %.1176.lcssa, ptr %i.oy, align 2, !tbaa !81
  %i.oz = call fastcc noundef zeroext i1 @_ZL21mergeAndFilterRegionsP9rcContextiiRtR20rcCompactHeightfieldPtR12rcTempVectorIiE(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 2 dereferenceable(2) %i.oy, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(24) %5) ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !85
  call void @_Z6rcFreePv(ptr noundef %i.pb) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.pc = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.pd = trunc nuw i8 %i.pc to i1
  br i1 %i.pd, label %bb.u, label %_ZN13rcScopedTimerD2Ev.exit

bb.u:                                             ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit254
  %i.pe = load ptr, ptr %0, align 8, !tbaa !21
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 48
  %i.pg = load ptr, ptr %i.pf, align 8
  call void %i.pg(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 24) #8, !call_target !79, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit254, %bb.u
  br i1 %i.oz, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN13rcScopedTimerD2Ev.exit
  %i.ph = load i32, ptr %i.j, align 8, !tbaa !68  ; 3 uses
  %i.pi = icmp sgt i32 %i.ph, 0
  br i1 %i.pi, label %.lr.ph342, label %.loopexit

.lr.ph342:                                        ; preds = %.preheader
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !72 ; 9 uses
  %wide.trip.count365 = zext nneg i32 %i.ph to i64 ; 2 uses
  %xtraiter701 = and i64 %wide.trip.count365, 7   ; 3 uses
  %i.pl = icmp ult i32 %i.ph, 8
  br i1 %i.pl, label %.epil.preheader, label %.lr.ph342.new

.lr.ph342.new:                                    ; preds = %.lr.ph342
  %unroll_iter704 = and i64 %wide.trip.count365, 2147483640
  br label %bb.aw

bb.v:                                             ; preds = %.lr.ph337, %._crit_edge331
  %indvars.iv359 = phi i64 [ %i.or, %.lr.ph337 ], [ %indvars.iv.next360, %._crit_edge331 ] ; 4 uses
  %.1176335 = phi i16 [ %.0175, %.lr.ph337 ], [ %.2177.lcssa400, %._crit_edge331 ] ; 5 uses
  %.sroa.11.0334 = phi ptr [ %i.oj, %.lr.ph337 ], [ %.sroa.11.2, %._crit_edge331 ] ; 11 uses
  %.sroa.8.0333 = phi i64 [ 256, %.lr.ph337 ], [ %.sroa.8.2, %._crit_edge331 ] ; 5 uses
  %.sroa.0256.0332 = phi i64 [ 256, %.lr.ph337 ], [ %.sroa.0256.1, %._crit_edge331 ] ; 10 uses
  %.sroa.11.0334685 = ptrtoaddr ptr %.sroa.11.0334 to i64
  %i.pm = zext i16 %.1176335 to i64               ; 2 uses
  %i.pn = add nuw nsw i64 %i.pm, 1                ; 7 uses
  %i.po = icmp slt i64 %i.pn, %.sroa.0256.0332
  br i1 %i.po, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not311 = icmp sgt i64 %i.pn, %.sroa.0256.0332
  br i1 %.not311, label %bb.x, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit

bb.x:                                             ; preds = %bb.w
  %.not.i.i.not = icmp sgt i64 %i.pn, %.sroa.8.0333
  br i1 %.not.i.i.not, label %bb.y, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit

bb.y:                                             ; preds = %bb.x
  %i.pp = shl nsw i64 %.sroa.8.0333, 1
  %..i.i.i = tail call i64 @llvm.smax.i64(i64 %i.pp, i64 %i.pn) ; 2 uses
  %i.pq = shl nuw nsw i64 %..i.i.i, 2
  %i.pr = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.pq, i32 noundef 1) #8 ; 9 uses
  %.not.i.i.i = icmp ne ptr %i.pr, null
  %6 = icmp sgt i64 %.sroa.0256.0332, 0
  %or.cond = and i1 %.not.i.i.i, %6
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.y
  %i.ps = ptrtoaddr ptr %i.pr to i64
  %min.iters.check686 = icmp ult i64 %.sroa.0256.0332, 8
  %i.pt = sub i64 %.sroa.11.0334685, %i.ps
  %diff.check = icmp ugt i64 %i.pt, -32
  %or.cond.a = select i1 %min.iters.check686, i1 true, i1 %diff.check
  br i1 %or.cond.a, label %.lr.ph.i.i.i.i.preheader696, label %vector.ph687

vector.ph687:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec688 = and i64 %.sroa.0256.0332, 9223372036854775800 ; 3 uses
  br label %vector.body689

vector.body689:                                   ; preds = %vector.body689, %vector.ph687
  %index690 = phi i64 [ 0, %vector.ph687 ], [ %index.next693, %vector.body689 ] ; 3 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %index690 ; 2 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.0334, i64 %index690 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %wide.load691 = load <4 x i32>, ptr %i.pv, align 4, !tbaa !86
  %wide.load692 = load <4 x i32>, ptr %i.pw, align 4, !tbaa !86
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  store <4 x i32> %wide.load691, ptr %i.pu, align 4, !tbaa !86
  store <4 x i32> %wide.load692, ptr %i.px, align 4, !tbaa !86
  %index.next693 = add nuw i64 %index690, 8       ; 2 uses
  %i.py = icmp eq i64 %index.next693, %n.vec688
  br i1 %i.py, label %middle.block694, label %vector.body689, !llvm.loop !149

middle.block694:                                  ; preds = %vector.body689
  %cmp.n695 = icmp eq i64 %.sroa.0256.0332, %n.vec688
  br i1 %cmp.n695, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i, label %.lr.ph.i.i.i.i.preheader696

.lr.ph.i.i.i.i.preheader696:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block694
  %.07.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec688, %middle.block694 ] ; 3 uses
  %xtraiter = and i64 %.sroa.0256.0332, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader696, %.lr.ph.i.i.i.i.prol
  %.07.i.i.i.i.prol = phi i64 [ %i.qc, %.lr.ph.i.i.i.i.prol ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader696 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader696 ]
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %.07.i.i.i.i.prol
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.0334, i64 %.07.i.i.i.i.prol
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !86
  store i32 %i.qb, ptr %i.pz, align 4, !tbaa !86
  %i.qc = add nuw nsw i64 %.07.i.i.i.i.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !150

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader696
  %.07.i.i.i.i.unr = phi i64 [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader696 ], [ %i.qc, %.lr.ph.i.i.i.i.prol ]
  %i.qd = sub nsw i64 %.07.i.i.i.i.ph, %.sroa.0256.0332
  %i.qe = icmp ugt i64 %i.qd, -4
  br i1 %i.qe, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi i64 [ %i.qu, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %.07.i.i.i.i
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.0334, i64 %.07.i.i.i.i
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !86
  store i32 %i.qh, ptr %i.qf, align 4, !tbaa !86
  %i.qi = add nuw nsw i64 %.07.i.i.i.i, 1         ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.qi
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.0334, i64 %i.qi
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !86
  store i32 %i.ql, ptr %i.qj, align 4, !tbaa !86
  %i.qm = add nuw nsw i64 %.07.i.i.i.i, 2         ; 2 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.qm
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.0334, i64 %i.qm
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !86
  store i32 %i.qp, ptr %i.qn, align 4, !tbaa !86
  %i.qq = add nuw nsw i64 %.07.i.i.i.i, 3         ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.qq
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.0334, i64 %i.qq
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !86
  store i32 %i.qt, ptr %i.qr, align 4, !tbaa !86
  %i.qu = add nuw nsw i64 %.07.i.i.i.i, 4         ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.qu, %.sroa.0256.0332
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !151

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block694, %bb.y
  tail call void @_Z6rcFreePv(ptr noundef %.sroa.11.0334) #8
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit

_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit: ; preds = %bb.v, %bb.x, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i, %bb.w
  %.sroa.0256.1 = phi i64 [ %.sroa.0256.0332, %bb.w ], [ %i.pn, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i ], [ %i.pn, %bb.x ], [ %i.pn, %bb.v ]
  %.sroa.8.2 = phi i64 [ %.sroa.8.0333, %bb.w ], [ %..i.i.i, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i ], [ %.sroa.8.0333, %bb.x ], [ %.sroa.8.0333, %bb.v ]
  %.sroa.11.2 = phi ptr [ %.sroa.11.0334, %bb.w ], [ %i.pr, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i ], [ %.sroa.11.0334, %bb.x ], [ %.sroa.11.0334, %bb.v ] ; 7 uses
  %i.qv = shl nuw nsw i64 %i.pm, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %.sroa.11.2, i8 0, i64 %i.qv, i1 false)
  br i1 %i.on, label %.lr.ph318, label %._crit_edge331

.lr.ph318:                                        ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit
  %i.qw = load ptr, ptr %i.oo, align 8, !tbaa !88 ; 3 uses
  %i.qx = mul nsw i64 %indvars.iv359, %i.os       ; 2 uses
  %i.qy = add i64 %i.qx, 4294967295
  %i.qz = add nsw i64 %indvars.iv359, -1
  %i.ra = mul nsw i64 %i.qz, %i.os
  %invariant.gep = getelementptr [4 x i8], ptr %i.qw, i64 %i.qx
  %invariant.gep401.a = getelementptr [4 x i8], ptr %i.qw, i64 %i.ra
  br label %bb.z

.preheader313:                                    ; preds = %._crit_edge
  %i.rb = icmp ugt i16 %.1167.lcssa, 1
  br i1 %i.rb, label %.lr.ph323.preheader, label %.lr.ph330

.lr.ph323.preheader:                              ; preds = %.preheader313
  %wide.trip.count349 = zext i16 %.1167.lcssa to i64
  %i.rc = add nsw i64 %wide.trip.count349, -1     ; 3 uses
  %xtraiter697 = and i64 %i.rc, 1
  %i.rd = icmp eq i16 %.1167.lcssa, 2
  br i1 %i.rd, label %.lr.ph323.epil.preheader, label %.lr.ph323.preheader.new

.lr.ph323.preheader.new:                          ; preds = %.lr.ph323.preheader
  %unroll_iter = and i64 %i.rc, -2
  br label %.lr.ph323

bb.z:                                             ; preds = %.lr.ph318, %._crit_edge
  %indvars.iv345 = phi i64 [ %i.or, %.lr.ph318 ], [ %indvars.iv.next346, %._crit_edge ] ; 4 uses
  %.0166316 = phi i16 [ 1, %.lr.ph318 ], [ %.1167.lcssa, %._crit_edge ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv345
  %i.re = load i32, ptr %gep, align 4             ; 3 uses
  %i.rf = lshr i32 %i.re, 24                      ; 2 uses
  %.not343.a = icmp eq i32 %i.rf, 0
  br i1 %.not343.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.rg = and i32 %i.re, 16777215
  %i.rh = add nuw nsw i32 %i.rg, %i.rf
  %i.ri = load ptr, ptr %i.op, align 8, !tbaa !73 ; 3 uses
  %i.rj = add i64 %i.qy, %indvars.iv345
  %sext = shl i64 %i.rj, 32
  %i.rk = ashr exact i64 %sext, 30
  %i.rl = getelementptr inbounds i8, ptr %i.qw, i64 %i.rk
  %gep402.a = getelementptr [4 x i8], ptr %invariant.gep401.a, i64 %indvars.iv345
  %i.rm = and i32 %i.re, 16777215
  %i.rn = zext nneg i32 %i.rm to i64
  %i.ro = zext nneg i32 %i.rh to i64
  br label %bb.aa

._crit_edge:                                      ; preds = %bb.al, %bb.z
  %.1167.lcssa = phi i16 [ %.0166316, %bb.z ], [ %.3, %bb.al ] ; 5 uses
  %indvars.iv.next346 = add nsw i64 %indvars.iv345, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next346, %wide.trip.count
  br i1 %exitcond.not, label %.preheader313, label %bb.z

bb.aa:                                            ; preds = %.lr.ph, %bb.al
  %indvars.iv = phi i64 [ %i.rn, %.lr.ph ], [ %indvars.iv.next, %bb.al ] ; 4 uses
  %.1167314 = phi i16 [ %.0166316, %.lr.ph ], [ %.3, %bb.al ] ; 6 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ri, i64 %indvars.iv ; 2 uses
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !74  ; 2 uses
  %i.rr = icmp eq i8 %i.rq, 0
  br i1 %i.rr, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.rs = load ptr, ptr %i.oq, align 8, !tbaa !72
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %indvars.iv
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 4 ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 4            ; 2 uses
  %i.rw = and i32 %i.rv, 63                       ; 2 uses
  %.not186 = icmp eq i32 %i.rw, 63
  br i1 %.not186, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.rx = load i32, ptr %i.rl, align 4
  %i.ry = and i32 %i.rx, 16777215
  %i.rz = add nuw nsw i32 %i.ry, %i.rw
  %i.sa = zext nneg i32 %i.rz to i64              ; 2 uses
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.sa
  %i.sc = load i16, ptr %i.sb, align 2, !tbaa !71 ; 3 uses
  %i.sd = icmp sgt i16 %i.sc, -1
  br i1 %i.sd, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.se = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.sa
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !74
  %i.sg = icmp ne i8 %i.rq, %i.sf
  %.not187 = icmp eq i16 %i.sc, 0
  %or.cond307 = or i1 %.not187, %i.sg
  br i1 %or.cond307, label %.thread, label %bb.ae

.thread:                                          ; preds = %bb.ac, %bb.ad, %bb.ab
  %i.sh = add i16 %.1167314, 1
  %i.si = zext i16 %.1167314 to i64
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.si ; 3 uses
  store i16 %.1167314, ptr %i.sj, align 2, !tbaa !90
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  store i16 0, ptr %i.sk, align 2, !tbaa !91
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 6
  store i16 0, ptr %i.sl, align 2, !tbaa !92
  %.pre367 = load i32, ptr %i.ru, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.thread
  %i.sm = phi i32 [ %i.rv, %bb.ad ], [ %.pre367, %.thread ]
  %.2168 = phi i16 [ %.1167314, %bb.ad ], [ %i.sh, %.thread ]
  %.2 = phi i16 [ %i.sc, %bb.ad ], [ %.1167314, %.thread ] ; 2 uses
  %i.sn = lshr i32 %i.sm, 18
  %i.so = and i32 %i.sn, 63                       ; 2 uses
  %.not188 = icmp eq i32 %i.so, 63
  br i1 %.not188, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.sp = load i32, ptr %gep402.a, align 4
  %i.sq = and i32 %i.sp, 16777215
  %i.sr = add nuw nsw i32 %i.sq, %i.so
  %i.ss = zext nneg i32 %i.sr to i64              ; 2 uses
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ss
  %i.su = load i16, ptr %i.st, align 2, !tbaa !71 ; 4 uses
  %or.cond308 = icmp sgt i16 %i.su, 0
  br i1 %or.cond308, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.sv = load i8, ptr %i.rp, align 1, !tbaa !74
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.ss
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !74
  %i.sy = icmp eq i8 %i.sv, %i.sx
  br i1 %i.sy, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.sz = zext i16 %.2 to i64
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.sz ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 6 ; 3 uses
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !92 ; 2 uses
  %.not190 = icmp eq i16 %i.tc, 0
  %i.td = icmp eq i16 %i.tc, %i.su
  %or.cond309 = or i1 %.not190, %i.td
  br i1 %or.cond309, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i16 %i.su, ptr %i.tb, align 2, !tbaa !92
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 4 ; 2 uses
  %i.tf = load i16, ptr %i.te, align 2, !tbaa !91
  %i.tg = add i16 %i.tf, 1
  store i16 %i.tg, ptr %i.te, align 2, !tbaa !91
  %i.th = zext nneg i16 %i.su to i64
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.2, i64 %i.th ; 2 uses
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !86
  %i.tk = add nsw i32 %i.tj, 1
  store i32 %i.tk, ptr %i.ti, align 4, !tbaa !86
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  store i16 -1, ptr %i.tb, align 2, !tbaa !92
  br label %bb.ak

bb.ak:                                            ; preds = %bb.af, %bb.ag, %bb.aj, %bb.ai, %bb.ae
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv
  store i16 %.2, ptr %i.tl, align 2, !tbaa !71
  br label %bb.al

bb.al:                                            ; preds = %bb.aa, %bb.ak
end_hunk_0
begin_hunk_1_@_Z22rcBuildRegionsMonotoneP9rcContextR20rcCompactHeightfieldiii:bb.a
  %i.um = getelementptr inbounds nuw i8, ptr %i.ub, i64 2
  store i16 %.sink, ptr %i.um, align 2, !tbaa !93
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv347 ; 3 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 14
  %i.up = load i16, ptr %i.uo, align 2, !tbaa !92 ; 3 uses
  %.off.1 = add i16 %i.up, -1
  %switch.1 = icmp ult i16 %.off.1, -2
  br i1 %switch.1, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph323.1
  %i.uq = zext i16 %i.up to i64
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.2, i64 %i.uq
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !86
  %i.ut = getelementptr inbounds nuw i8, ptr %i.un, i64 12
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !91
  %i.uv = zext i16 %i.uu to i32
  %i.uw = icmp eq i32 %i.us, %i.uv
  br i1 %i.uw, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph323.1
  %i.ux = add i16 %.3178, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sink.1 = phi i16 [ %.3178, %bb.ar ], [ %i.up, %bb.aq ]
  %.3178.1 = phi i16 [ %i.ux, %bb.ar ], [ %.3178, %bb.aq ] ; 3 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.un, i64 10
  store i16 %.sink.1, ptr %i.uy, align 2, !tbaa !93
  %indvars.iv.next348.1 = add nuw nsw i64 %indvars.iv347, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph330.loopexit.unr-lcssa, label %.lr.ph323

._crit_edge331:                                   ; preds = %._crit_edge328, %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit
  %.2177.lcssa400 = phi i16 [ %.1176335, %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit ], [ %.2177.lcssa, %._crit_edge328 ] ; 2 uses
  %indvars.iv.next360 = add nsw i64 %indvars.iv359, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next360 to i32
  %exitcond361.not = icmp eq i32 %i.ok, %lftr.wideiv
  br i1 %exitcond361.not, label %._crit_edge338, label %bb.v

bb.at:                                            ; preds = %.lr.ph330, %._crit_edge328
  %indvars.iv354 = phi i64 [ %i.or, %.lr.ph330 ], [ %indvars.iv.next355, %._crit_edge328 ] ; 2 uses
  %gep404 = getelementptr [4 x i8], ptr %invariant.gep403, i64 %indvars.iv354
  %i.uz = load i32, ptr %gep404, align 4          ; 3 uses
  %i.va = lshr i32 %i.uz, 24                      ; 2 uses
  %.not344 = icmp eq i32 %i.va, 0
  br i1 %.not344, label %._crit_edge328, label %.lr.ph327.preheader

.lr.ph327.preheader:                              ; preds = %bb.at
  %i.vb = and i32 %i.uz, 16777215
  %i.vc = add nuw nsw i32 %i.vb, %i.va
  %i.vd = and i32 %i.uz, 16777215
  %i.ve = zext nneg i32 %i.vd to i64
  %i.vf = zext nneg i32 %i.vc to i64
  br label %.lr.ph327

._crit_edge328:                                   ; preds = %bb.av, %bb.at
  %indvars.iv.next355 = add nsw i64 %indvars.iv354, 1 ; 2 uses
  %exitcond358.not = icmp eq i64 %indvars.iv.next355, %wide.trip.count357
  br i1 %exitcond358.not, label %._crit_edge331, label %bb.at

.lr.ph327:                                        ; preds = %.lr.ph327.preheader, %bb.av
  %indvars.iv351 = phi i64 [ %i.ve, %.lr.ph327.preheader ], [ %indvars.iv.next352, %bb.av ] ; 2 uses
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv351 ; 2 uses
  %i.vh = load i16, ptr %i.vg, align 2, !tbaa !71 ; 3 uses
  %.not183 = icmp ne i16 %i.vh, 0
  %i.vi = icmp ult i16 %i.vh, %.1167.lcssa
  %or.cond310 = and i1 %.not183, %i.vi
  br i1 %or.cond310, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph327
  %i.vj = zext i16 %i.vh to i64
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 2
  %i.vm = load i16, ptr %i.vl, align 2, !tbaa !93
  store i16 %i.vm, ptr %i.vg, align 2, !tbaa !71
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph327, %bb.au
  %indvars.iv.next352 = add nuw nsw i64 %indvars.iv351, 1 ; 2 uses
  %i.vn = icmp samesign ult i64 %indvars.iv.next352, %i.vf
  br i1 %i.vn, label %.lr.ph327, label %._crit_edge328

bb.aw:                                            ; preds = %bb.aw, %.lr.ph342.new
  %indvars.iv362 = phi i64 [ 0, %.lr.ph342.new ], [ %indvars.iv.next363.7, %bb.aw ] ; 10 uses
  %niter705 = phi i64 [ 0, %.lr.ph342.new ], [ %niter705.next.7, %bb.aw ]
  %i.vo = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv362
  %i.vp = load i16, ptr %i.vo, align 2, !tbaa !71
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv362
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 2
  store i16 %i.vp, ptr %i.vr, align 2, !tbaa !95
  %indvars.iv.next363 = or disjoint i64 %indvars.iv362, 1 ; 2 uses
  %i.vs = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next363
  %i.vt = load i16, ptr %i.vs, align 2, !tbaa !71
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next363
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 2
  store i16 %i.vt, ptr %i.vv, align 2, !tbaa !95
  %indvars.iv.next363.1 = or disjoint i64 %indvars.iv362, 2 ; 2 uses
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next363.1
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !71
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next363.1
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 2
  store i16 %i.vx, ptr %i.vz, align 2, !tbaa !95
  %indvars.iv.next363.2 = or disjoint i64 %indvars.iv362, 3 ; 2 uses
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next363.2
  %i.wb = load i16, ptr %i.wa, align 2, !tbaa !71
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next363.2
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 2
  store i16 %i.wb, ptr %i.wd, align 2, !tbaa !95
  %indvars.iv.next363.3 = or disjoint i64 %indvars.iv362, 4 ; 2 uses
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next363.3
  %i.wf = load i16, ptr %i.we, align 2, !tbaa !71
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next363.3
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 2
  store i16 %i.wf, ptr %i.wh, align 2, !tbaa !95
  %indvars.iv.next363.4 = or disjoint i64 %indvars.iv362, 5 ; 2 uses
  %i.wi = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next363.4
  %i.wj = load i16, ptr %i.wi, align 2, !tbaa !71
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next363.4
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 2
  store i16 %i.wj, ptr %i.wl, align 2, !tbaa !95
  %indvars.iv.next363.5 = or disjoint i64 %indvars.iv362, 6 ; 2 uses
  %i.wm = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next363.5
  %i.wn = load i16, ptr %i.wm, align 2, !tbaa !71
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next363.5
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 2
  store i16 %i.wn, ptr %i.wp, align 2, !tbaa !95
  %indvars.iv.next363.6 = or disjoint i64 %indvars.iv362, 7 ; 2 uses
  %i.wq = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next363.6
  %i.wr = load i16, ptr %i.wq, align 2, !tbaa !71
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next363.6
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 2
  store i16 %i.wr, ptr %i.wt, align 2, !tbaa !95
  %indvars.iv.next363.7 = add nuw nsw i64 %indvars.iv362, 8 ; 2 uses
  %niter705.next.7 = add i64 %niter705, 8         ; 2 uses
  %niter705.ncmp.7 = icmp eq i64 %niter705.next.7, %unroll_iter704
  br i1 %niter705.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.aw

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.aw
  %lcmp.mod702.not = icmp eq i64 %xtraiter701, 0
  br i1 %lcmp.mod702.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph342
  %indvars.iv362.epil.init = phi i64 [ 0, %.lr.ph342 ], [ %indvars.iv.next363.7, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod703 = icmp ne i64 %xtraiter701, 0
  call void @llvm.assume(i1 %lcmp.mod703)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader
  %indvars.iv362.epil = phi i64 [ %indvars.iv362.epil.init, %.epil.preheader ], [ %indvars.iv.next363.epil, %bb.ax ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ax ]
  %i.wu = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv362.epil
  %i.wv = load i16, ptr %i.wu, align 2, !tbaa !71
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv362.epil
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 2
  store i16 %i.wv, ptr %i.wx, align 2, !tbaa !95
  %indvars.iv.next363.epil = add nuw nsw i64 %indvars.iv362.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter701
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.ax, !llvm.loop !152

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.ax, %.preheader, %_ZN13rcScopedTimerD2Ev.exit
  call void @_Z6rcFreePv(ptr noundef %.sroa.11.0.lcssa) #8
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit, %bb.e
  %.2172 = phi i1 [ %i.oz, %.loopexit ], [ false, %bb.e ]
  call void @_Z6rcFreePv(ptr noundef %i.w) #8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.c
  %.3173 = phi i1 [ %.2172, %bb.ay ], [ false, %bb.c ]
  call void @_Z6rcFreePv(ptr noundef %i.n) #8
  %i.wy = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.wz = trunc nuw i8 %i.wy to i1
  br i1 %i.wz, label %bb.ba, label %_ZN13rcScopedTimerD2Ev.exit255

bb.ba:                                            ; preds = %bb.az
  %i.xa = load ptr, ptr %0, align 8, !tbaa !21
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 48
  %i.xc = load ptr, ptr %i.xb, align 8
  call void %i.xc(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 20) #8, !call_target !79, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit255

_ZN13rcScopedTimerD2Ev.exit255:                   ; preds = %bb.az, %bb.ba
  ret i1 %.3173
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL21mergeAndFilterRegionsP9rcContextiiRtR20rcCompactHeightfieldPtR12rcTempVectorIiE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %4, ptr nofree noundef captures(none) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %class.rcTempVector.3, align 8      ; 9 uses
  %8 = alloca %struct.rcRegion, align 8           ; 10 uses
  %9 = alloca %class.rcTempVector, align 8        ; 18 uses
  %i.a = load i32, ptr %4, align 8, !tbaa !69     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !70   ; 2 uses
  %i.d = load i16, ptr %3, align 2, !tbaa !71     ; 3 uses
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %i.f = add nuw nsw i32 %i.e, 1                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.g = zext nneg i32 %i.f to i64                ; 11 uses
  %i.h = shl nuw nsw i64 %i.g, 6
  %i.i = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.h, i32 noundef 1) #8 ; 2 uses
  %.not.i.i = icmp ne ptr %i.i, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN12rcVectorBaseI8rcRegionL11rcAllocHint1EE13destroy_rangeEll.exit.i, label %.thread

_ZN12rcVectorBaseI8rcRegionL11rcAllocHint1EE13destroy_rangeEll.exit.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !98
  store i64 %i.g, ptr %i.j, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 6
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 14
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 32
  br label %bb.b

.thread:                                          ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.9, i32 noundef %i.f) #8
  br label %_ZN12rcVectorBaseI8rcRegionL11rcAllocHint1EED2Ev.exit

.preheader454:                                    ; preds = %bb.b
  %i.r = icmp sgt i32 %i.c, 0
  br i1 %i.r, label %.preheader453.lr.ph, label %._crit_edge470.split

.preheader453.lr.ph:                              ; preds = %.preheader454
  %i.s = icmp sgt i32 %i.a, 0
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  br i1 %i.s, label %.preheader453.preheader, label %._crit_edge470.split

.preheader453.preheader:                          ; preds = %.preheader453.lr.ph
  %i.w = zext nneg i32 %i.a to i64                ; 2 uses
  %wide.trip.count540 = zext nneg i32 %i.c to i64
  br label %.preheader453

bb.b:                                             ; preds = %_ZN12rcVectorBaseI8rcRegionL11rcAllocHint1EE13destroy_rangeEll.exit.i, %bb.b
  %.0217458 = phi i32 [ 0, %_ZN12rcVectorBaseI8rcRegionL11rcAllocHint1EE13destroy_rangeEll.exit.i ], [ %i.aa, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.x = trunc i32 %.0217458 to i16
  store i32 0, ptr %8, align 8, !tbaa !102
  store i16 %i.x, ptr %i.l, align 4, !tbaa !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.m, i8 0, i64 5, i1 false)
  store i16 -1, ptr %i.n, align 4, !tbaa !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(50) %i.o, i8 0, i64 50, i1 false)
  call void @_ZN12rcVectorBaseI8rcRegionL11rcAllocHint1EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(64) %8)
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !85
  call void @_Z6rcFreePv(ptr noundef %i.y) #8
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !85
  call void @_Z6rcFreePv(ptr noundef %i.z) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %i.aa = add nuw nsw i32 %.0217458, 1
  %exitcond.not = icmp eq i32 %.0217458, %i.e
  br i1 %exitcond.not, label %.preheader454, label %bb.b

.preheader453:                                    ; preds = %.preheader453.preheader, %._crit_edge468
  %indvars.iv537 = phi i64 [ 0, %.preheader453.preheader ], [ %indvars.iv.next538, %._crit_edge468 ] ; 5 uses
  %i.ab = mul nuw nsw i64 %indvars.iv537, %i.w
  %i.ac = trunc nuw nsw i64 %indvars.iv537 to i32 ; 4 uses
  %i.ad = trunc i64 %indvars.iv537 to i32
  %i.ae = add i32 %i.ad, 1
  %i.af = trunc i64 %indvars.iv537 to i32
  %i.ag = add i32 %i.af, -1
  br label %bb.d

._crit_edge470.split:                             ; preds = %._crit_edge468, %.preheader453.lr.ph, %.preheader454
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.aj = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 128, i32 noundef 1) #8 ; 9 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  %.pre.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !85 ; 8 uses
  %.pre.i.i.i755 = ptrtoaddr ptr %.pre.i.i.i to i64
  br i1 %.not.i.i.i.i.i, label %_ZN12rcTempVectorIiEC2El.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge470.split
  %i.al = load i64, ptr %9, align 8, !tbaa !105   ; 7 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN12rcTempVectorIiEC2El.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %min.iters.check757 = icmp ult i64 %i.al, 8
  %i.an = sub i64 %.pre.i.i.i755, %i.ak
  %diff.check759 = icmp ugt i64 %i.an, -32
  %or.cond957 = select i1 %min.iters.check757, i1 true, i1 %diff.check759
  br i1 %or.cond957, label %.lr.ph.i.i.i.i.i.i.preheader988, label %vector.ph760

vector.ph760:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec761 = and i64 %i.al, 9223372036854775800  ; 3 uses
  br label %vector.body762

vector.body762:                                   ; preds = %vector.body762, %vector.ph760
  %index763 = phi i64 [ 0, %vector.ph760 ], [ %index.next766, %vector.body762 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index763 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index763 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load764 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !86
  %wide.load765 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !86
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x i32> %wide.load764, ptr %i.ao, align 4, !tbaa !86
  store <4 x i32> %wide.load765, ptr %i.ar, align 4, !tbaa !86
  %index.next766 = add nuw i64 %index763, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next766, %n.vec761
  br i1 %i.as, label %middle.block767, label %vector.body762, !llvm.loop !161

middle.block767:                                  ; preds = %vector.body762
  %cmp.n768 = icmp eq i64 %i.al, %n.vec761
  br i1 %cmp.n768, label %_ZN12rcTempVectorIiEC2El.exit, label %.lr.ph.i.i.i.i.i.i.preheader988

.lr.ph.i.i.i.i.i.i.preheader988:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block767
  %.07.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec761, %middle.block767 ] ; 3 uses
  %xtraiter1000 = and i64 %i.al, 3                ; 2 uses
  %lcmp.mod1001.not = icmp eq i64 %xtraiter1000, 0
  br i1 %lcmp.mod1001.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader988, %.lr.ph.i.i.i.i.i.i.prol
  %.07.i.i.i.i.i.i.prol = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader988 ] ; 3 uses
  %prol.iter1002 = phi i64 [ %prol.iter1002.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader988 ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.07.i.i.i.i.i.i.prol
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %.07.i.i.i.i.i.i.prol
  %i.av = load i32, ptr %i.au, align 4, !tbaa !86
  store i32 %i.av, ptr %i.at, align 4, !tbaa !86
  %i.aw = add nuw nsw i64 %.07.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter1002.next = add i64 %prol.iter1002, 1 ; 2 uses
  %prol.iter1002.cmp.not = icmp eq i64 %prol.iter1002.next, %xtraiter1000
  br i1 %prol.iter1002.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !162

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader988
  %.07.i.i.i.i.i.i.unr = phi i64 [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader988 ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ax = sub nsw i64 %.07.i.i.i.i.i.i.ph, %i.al
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %_ZN12rcTempVectorIiEC2El.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.07.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %.07.i.i.i.i.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !86
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !86
  %i.bc = add nuw nsw i64 %.07.i.i.i.i.i.i, 1     ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %i.bc
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !86
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !86
  %i.bg = add nuw nsw i64 %.07.i.i.i.i.i.i, 2     ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %i.bg
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !86
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !86
  %i.bk = add nuw nsw i64 %.07.i.i.i.i.i.i, 3     ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %i.bk
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !86
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !86
  %i.bo = add nuw nsw i64 %.07.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bo, %i.al
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN12rcTempVectorIiEC2El.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !163

_ZN12rcTempVectorIiEC2El.exit:                    ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block767, %._crit_edge470.split, %bb.c
  call void @_Z6rcFreePv(ptr noundef %.pre.i.i.i) #8
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !85
  store i64 32, ptr %i.ah, align 8, !tbaa !106
  store i64 32, ptr %9, align 8, !tbaa !105
  %i.bp = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 128, i32 noundef 1) #8
  call void @_Z6rcFreePv(ptr noundef null) #8
  br label %bb.ai

._crit_edge468:                                   ; preds = %._crit_edge465
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %exitcond541.not = icmp eq i64 %indvars.iv.next538, %wide.trip.count540
  br i1 %exitcond541.not, label %._crit_edge470.split, label %.preheader453

bb.d:                                             ; preds = %.preheader453, %._crit_edge465
  %indvars.iv532.a = phi i64 [ 0, %.preheader453 ], [ %indvars.iv.next533.a, %._crit_edge465 ] ; 5 uses
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !88
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv532.a
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ab ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4            ; 3 uses
  %i.bu = and i32 %i.bt, 16777215
  %i.bv = lshr i32 %i.bt, 24                      ; 2 uses
  %i.bw = add nuw nsw i32 %i.bu, %i.bv            ; 2 uses
  %.not.a = icmp eq i32 %i.bv, 0
  br i1 %.not.a, label %._crit_edge465, label %.lr.ph464.preheader

.lr.ph464.preheader:                              ; preds = %bb.d
  %i.bx = and i32 %i.bt, 16777215
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv532.a to i32 ; 4 uses
  %i.cb = trunc i64 %indvars.iv532.a to i32
  %i.cc = add i32 %i.cb, 1
  br label %.lr.ph464

._crit_edge465:                                   ; preds = %_ZL11walkContouriiiiR20rcCompactHeightfieldPKtR12rcTempVectorIiE.exit, %bb.d
  %indvars.iv.next533.a = add nuw nsw i64 %indvars.iv532.a, 1 ; 2 uses
  %exitcond536.not = icmp eq i64 %indvars.iv.next533.a, %i.w
  br i1 %exitcond536.not, label %._crit_edge468, label %bb.d

.lr.ph464:                                        ; preds = %.lr.ph464.preheader, %_ZL11walkContouriiiiR20rcCompactHeightfieldPKtR12rcTempVectorIiE.exit
  %indvars.iv529 = phi i64 [ %i.by, %.lr.ph464.preheader ], [ %indvars.iv.next530, %_ZL11walkContouriiiiR20rcCompactHeightfieldPKtR12rcTempVectorIiE.exit ] ; 7 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv529 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !71 ; 4 uses
  %10 = icmp ne i16 %i.ce, 0
  %11 = zext i16 %i.ce to i32
  %.not243 = icmp samesign ugt i32 %i.f, %11
  %or.cond246 = select i1 %10, i1 %.not243, i1 false
  br i1 %or.cond246, label %bb.e, label %_ZL11walkContouriiiiR20rcCompactHeightfieldPKtR12rcTempVectorIiE.exit

bb.e:                                             ; preds = %.lr.ph464
  %i.cf = zext i16 %i.ce to i64
  %i.cg = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.ch = getelementptr inbounds nuw [64 x i8], ptr %i.cg, i64 %i.cf ; 13 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !102
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !102
  %i.ck = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.cl = and i32 %i.ck, 16777215
  %i.cm = icmp samesign ult i32 %i.cl, %i.bw
  br i1 %i.cm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 9
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 40 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 56 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 48 ; 2 uses
  %i.cr = and i32 %i.ck, 16777215
  %i.cs = zext nneg i32 %i.cr to i64
  br label %bb.f

._crit_edge:                                      ; preds = %_ZL20addUniqueFloorRegionR8rcRegioni.exit, %bb.e
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 10 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !105 ; 4 uses
  %i.cv = icmp sgt i64 %i.cu, 0
  br i1 %i.cv, label %_ZL11walkContouriiiiR20rcCompactHeightfieldPKtR12rcTempVectorIiE.exit, label %bb.o

bb.f:                                             ; preds = %.lr.ph, %_ZL20addUniqueFloorRegionR8rcRegioni.exit
  %indvars.iv = phi i64 [ %i.cs, %.lr.ph ], [ %indvars.iv.next, %_ZL20addUniqueFloorRegionR8rcRegioni.exit ] ; 3 uses
  %i.cw = icmp eq i64 %indvars.iv529, %indvars.iv
  br i1 %i.cw, label %_ZL20addUniqueFloorRegionR8rcRegioni.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !71 ; 3 uses
  %i.cz = zext i16 %i.cy to i32                   ; 4 uses
  %12 = icmp ne i16 %i.cy, 0
  %.not245 = icmp samesign ugt i32 %i.f, %i.cz
  %or.cond247 = select i1 %12, i1 %.not245, i1 false
  br i1 %or.cond247, label %bb.h, label %_ZL20addUniqueFloorRegionR8rcRegioni.exit

bb.h:                                             ; preds = %bb.g
  %i.da = icmp eq i16 %i.cy, %i.ce
  br i1 %i.da, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.cn, align 1, !tbaa !203
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.db = load i64, ptr %i.co, align 8, !tbaa !105 ; 5 uses
  %i.dc = icmp sgt i64 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.dd = load ptr, ptr %i.cp, align 8, !tbaa !85
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.db
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !86
  %i.dg = icmp eq i32 %i.df, %i.cz
  br i1 %i.dg, label %_ZL20addUniqueFloorRegionR8rcRegioni.exit, label %bb.k

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %i.dh = load i64, ptr %i.cq, align 8, !tbaa !106 ; 3 uses
  %i.di = icmp slt i64 %i.db, %i.dh
  br i1 %i.di, label %bb.m, label %bb.n, !prof !107

bb.m:                                             ; preds = %._crit_edge.i
  %i.dj = load ptr, ptr %i.cp, align 8, !tbaa !85
  %i.dk = add nsw i64 %i.db, 1
  store i64 %i.dk, ptr %i.co, align 8, !tbaa !105
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.db
  store i32 %i.cz, ptr %i.dl, align 4, !tbaa !86
  br label %_ZL20addUniqueFloorRegionR8rcRegioni.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.dm = add nsw i64 %i.dh, 1
  %i.dn = shl nsw i64 %i.dh, 1
  %..i.i.i = call i64 @llvm.smax.i64(i64 %i.dn, i64 %i.dm) ; 2 uses
  %i.do = shl i64 %..i.i.i, 2
  %i.dp = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.do, i32 noundef 1) #8 ; 10 uses
  %.not.i367.a = icmp ne ptr %i.dp, null
  %.pre = load i64, ptr %i.co, align 8, !tbaa !105 ; 9 uses
  %.pre590 = load ptr, ptr %i.cp, align 8, !tbaa !85 ; 8 uses
  %i.dq = icmp sgt i64 %.pre, 0
  %or.cond703 = select i1 %.not.i367.a, i1 %i.dq, i1 false
  br i1 %or.cond703, label %.lr.ph.i.i368.preheader.a, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit

.lr.ph.i.i368.preheader.a:                        ; preds = %bb.n
  %.pre590738 = ptrtoaddr ptr %.pre590 to i64
  %i.dr = ptrtoaddr ptr %i.dp to i64
  %min.iters.check741 = icmp ult i64 %.pre, 8
  %i.ds = sub i64 %.pre590738, %i.dr
  %diff.check739 = icmp ugt i64 %i.ds, -32
  %or.cond958.a = select i1 %min.iters.check741, i1 true, i1 %diff.check739
  br i1 %or.cond958.a, label %.lr.ph.i.i368.preheader990, label %vector.ph742

vector.ph742:                                     ; preds = %.lr.ph.i.i368.preheader.a
  %n.vec743 = and i64 %.pre, 9223372036854775800  ; 3 uses
  br label %vector.body744

vector.body744:                                   ; preds = %vector.body744, %vector.ph742
  %index745 = phi i64 [ 0, %vector.ph742 ], [ %index.next748, %vector.body744 ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %index745 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.pre590, i64 %index745 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %wide.load746 = load <4 x i32>, ptr %i.du, align 4, !tbaa !86
  %wide.load747 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !86
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <4 x i32> %wide.load746, ptr %i.dt, align 4, !tbaa !86
  store <4 x i32> %wide.load747, ptr %i.dw, align 4, !tbaa !86
  %index.next748 = add nuw i64 %index745, 8       ; 2 uses
  %i.dx = icmp eq i64 %index.next748, %n.vec743
  br i1 %i.dx, label %middle.block749, label %vector.body744, !llvm.loop !164

middle.block749:                                  ; preds = %vector.body744
  %cmp.n750 = icmp eq i64 %.pre, %n.vec743
  br i1 %cmp.n750, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit, label %.lr.ph.i.i368.preheader990

.lr.ph.i.i368.preheader990:                       ; preds = %.lr.ph.i.i368.preheader.a, %middle.block749
  %.07.i.i.ph = phi i64 [ 0, %.lr.ph.i.i368.preheader.a ], [ %n.vec743, %middle.block749 ] ; 3 uses
  %xtraiter = and i64 %.pre, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i368.prol.loopexit.a, label %.lr.ph.i.i368.prol.a

.lr.ph.i.i368.prol.a:                             ; preds = %.lr.ph.i.i368.preheader990, %.lr.ph.i.i368.prol.a
  %.07.i.i.prol = phi i64 [ %i.eb, %.lr.ph.i.i368.prol.a ], [ %.07.i.i.ph, %.lr.ph.i.i368.preheader990 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i368.prol.a ], [ 0, %.lr.ph.i.i368.preheader990 ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.07.i.i.prol
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.pre590, i64 %.07.i.i.prol
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !86
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !86
  %i.eb = add nuw nsw i64 %.07.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i368.prol.loopexit.a, label %.lr.ph.i.i368.prol.a, !llvm.loop !165

.lr.ph.i.i368.prol.loopexit.a:                    ; preds = %.lr.ph.i.i368.prol.a, %.lr.ph.i.i368.preheader990
  %.07.i.i.unr = phi i64 [ %.07.i.i.ph, %.lr.ph.i.i368.preheader990 ], [ %i.eb, %.lr.ph.i.i368.prol.a ]
  %i.ec = sub nsw i64 %.07.i.i.ph, %.pre
  %i.ed = icmp ugt i64 %i.ec, -4
  br i1 %i.ed, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit, label %.lr.ph.i.i368.a

.lr.ph.i.i368.a:                                  ; preds = %.lr.ph.i.i368.prol.loopexit.a, %.lr.ph.i.i368.a
  %.07.i.i = phi i64 [ %i.et, %.lr.ph.i.i368.a ], [ %.07.i.i.unr, %.lr.ph.i.i368.prol.loopexit.a ] ; 6 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.07.i.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.pre590, i64 %.07.i.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !86
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !86
  %i.eh = add nuw nsw i64 %.07.i.i, 1             ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.eh
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.pre590, i64 %i.eh
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !86
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !86
  %i.el = add nuw nsw i64 %.07.i.i, 2             ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.pre590, i64 %i.el
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !86
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !86
  %i.ep = add nuw nsw i64 %.07.i.i, 3             ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.ep
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.pre590, i64 %i.ep
  %i.es = load i32, ptr %i.er, align 4, !tbaa !86
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !86
  %i.et = add nuw nsw i64 %.07.i.i, 4             ; 2 uses
  %exitcond.not.i.i369.3 = icmp eq i64 %i.et, %.pre
  br i1 %exitcond.not.i.i369.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit, label %.lr.ph.i.i368.a, !llvm.loop !166

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit: ; preds = %.lr.ph.i.i368.prol.loopexit.a, %.lr.ph.i.i368.a, %middle.block749, %bb.n
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %.pre
  store i32 %i.cz, ptr %i.eu, align 4, !tbaa !86
  %i.ev = add nsw i64 %.pre, 1
  store i64 %i.ev, ptr %i.co, align 8, !tbaa !105
  store i64 %..i.i.i, ptr %i.cq, align 8, !tbaa !106
  call void @_Z6rcFreePv(ptr noundef %.pre590) #8
  store ptr %i.dp, ptr %i.cp, align 8, !tbaa !85
  br label %_ZL20addUniqueFloorRegionR8rcRegioni.exit

_ZL20addUniqueFloorRegionR8rcRegioni.exit:        ; preds = %bb.l, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit, %bb.m, %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond524.not = icmp eq i64 %indvars.iv.next, %i.bz
  br i1 %exitcond524.not, label %._crit_edge, label %bb.f

bb.o:                                             ; preds = %._crit_edge
  %i.ew = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv529
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !74
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ch, i64 6
  store i8 %i.ey, ptr %i.ez, align 2, !tbaa !108
  %i.fa = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv529
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fc, align 4            ; 4 uses
  %i.fe = and i32 %i.fd, 16777215                 ; 2 uses
  %i.ff = load i16, ptr %i.cd, align 2, !tbaa !71
  %i.fg = zext i16 %i.ff to i32                   ; 4 uses
  %i.fh = and i32 %i.fd, 63                       ; 2 uses
  %.not.i281 = icmp eq i32 %i.fh, 63
  br i1 %.not.i281, label %_ZL11isSolidEdgeR20rcCompactHeightfieldPKtiiii.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fi = load ptr, ptr %i.t, align 8, !tbaa !88
  %i.fj = load i32, ptr %4, align 8, !tbaa !69
  %i.fk = mul nsw i32 %i.fj, %i.ac
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr [4 x i8], ptr %i.fi, i64 %indvars.iv532.a
  %i.fn = getelementptr i8, ptr %i.fm, i64 -4
  %i.fo = getelementptr [4 x i8], ptr %i.fn, i64 %i.fl
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = and i32 %i.fp, 16777215
  %i.fr = add nuw nsw i32 %i.fq, %i.fh
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !71
  %i.fv = zext i16 %i.fu to i32
  br label %_ZL11isSolidEdgeR20rcCompactHeightfieldPKtiiii.exit

_ZL11isSolidEdgeR20rcCompactHeightfieldPKtiiii.exit: ; preds = %bb.o, %bb.p
  %.019.i = phi i32 [ %i.fv, %bb.p ], [ 0, %bb.o ]
  %.not442 = icmp eq i32 %.019.i, %i.fg
  br i1 %.not442, label %bb.q, label %bb.w

bb.q:                                             ; preds = %_ZL11isSolidEdgeR20rcCompactHeightfieldPKtiiii.exit
  %i.fw = lshr i32 %i.fd, 6
  %i.fx = and i32 %i.fw, 63                       ; 2 uses
  %.not.i281.1 = icmp eq i32 %i.fx, 63
  br i1 %.not.i281.1, label %_ZL11isSolidEdgeR20rcCompactHeightfieldPKtiiii.exit.1, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fy = load ptr, ptr %i.t, align 8, !tbaa !88
  %i.fz = load i32, ptr %4, align 8, !tbaa !69
  %i.ga = mul nsw i32 %i.fz, %i.ae
end_hunk_1
begin_hunk_2_@_ZL21mergeAndFilterRegionsP9rcContextiiRtR20rcCompactHeightfieldPtR12rcTempVectorIiE:bb.a
  store i64 %i.rt, ptr %9, align 8, !tbaa !105
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.rs, i64 %i.rp
  store i32 %i.ro, ptr %i.ru, align 4, !tbaa !86
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit293

bb.as:                                            ; preds = %bb.aq
  %i.rv = add nsw i64 %i.rq, 1
  %i.rw = icmp sgt i64 %i.rq, 4611686018427387902
  %i.rx = shl nsw i64 %i.rq, 1
  %..i.i291 = call i64 @llvm.smax.i64(i64 %i.rx, i64 %i.rv)
  %.0.i.i292 = select i1 %i.rw, i64 9223372036854775807, i64 %..i.i291, !prof !109 ; 2 uses
  %i.ry = shl i64 %.0.i.i292, 2
  %i.rz = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.ry, i32 noundef 1) #8 ; 10 uses
  %.not.i385 = icmp ne ptr %i.rz, null
  %.pre596.a = load i64, ptr %9, align 8, !tbaa !105 ; 9 uses
  %.pre597.a = load ptr, ptr %i.ai, align 8, !tbaa !85 ; 8 uses
  %i.sa = icmp sgt i64 %.pre596.a, 0
  %or.cond706 = select i1 %.not.i385, i1 %i.sa, i1 false
  br i1 %or.cond706, label %.lr.ph.i.i386.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit389

.lr.ph.i.i386.preheader:                          ; preds = %bb.as
  %.pre597771 = ptrtoaddr ptr %.pre597.a to i64
  %i.sb = ptrtoaddr ptr %i.rz to i64
  %min.iters.check774 = icmp ult i64 %.pre596.a, 8
  %i.sc = sub i64 %.pre597771, %i.sb
  %diff.check772 = icmp ugt i64 %i.sc, -32
  %or.cond963 = select i1 %min.iters.check774, i1 true, i1 %diff.check772
  br i1 %or.cond963, label %.lr.ph.i.i386.preheader985, label %vector.ph775

vector.ph775:                                     ; preds = %.lr.ph.i.i386.preheader
  %n.vec776 = and i64 %.pre596.a, 9223372036854775800 ; 3 uses
  br label %vector.body777

vector.body777:                                   ; preds = %vector.body777, %vector.ph775
  %index778 = phi i64 [ 0, %vector.ph775 ], [ %index.next781, %vector.body777 ] ; 3 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %index778 ; 2 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.pre597.a, i64 %index778 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %wide.load779 = load <4 x i32>, ptr %i.se, align 4, !tbaa !86
  %wide.load780 = load <4 x i32>, ptr %i.sf, align 4, !tbaa !86
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  store <4 x i32> %wide.load779, ptr %i.sd, align 4, !tbaa !86
  store <4 x i32> %wide.load780, ptr %i.sg, align 4, !tbaa !86
  %index.next781 = add nuw i64 %index778, 8       ; 2 uses
  %i.sh = icmp eq i64 %index.next781, %n.vec776
  br i1 %i.sh, label %middle.block782, label %vector.body777, !llvm.loop !176

middle.block782:                                  ; preds = %vector.body777
  %cmp.n783 = icmp eq i64 %.pre596.a, %n.vec776
  br i1 %cmp.n783, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit389, label %.lr.ph.i.i386.preheader985

.lr.ph.i.i386.preheader985:                       ; preds = %.lr.ph.i.i386.preheader, %middle.block782
  %.07.i.i387.ph = phi i64 [ 0, %.lr.ph.i.i386.preheader ], [ %n.vec776, %middle.block782 ] ; 3 uses
  %xtraiter1006 = and i64 %.pre596.a, 3           ; 2 uses
  %lcmp.mod1007.not = icmp eq i64 %xtraiter1006, 0
  br i1 %lcmp.mod1007.not, label %.lr.ph.i.i386.prol.loopexit, label %.lr.ph.i.i386.prol

.lr.ph.i.i386.prol:                               ; preds = %.lr.ph.i.i386.preheader985, %.lr.ph.i.i386.prol
  %.07.i.i387.prol = phi i64 [ %i.sl, %.lr.ph.i.i386.prol ], [ %.07.i.i387.ph, %.lr.ph.i.i386.preheader985 ] ; 3 uses
  %prol.iter1008 = phi i64 [ %prol.iter1008.next, %.lr.ph.i.i386.prol ], [ 0, %.lr.ph.i.i386.preheader985 ]
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %.07.i.i387.prol
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %.pre597.a, i64 %.07.i.i387.prol
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !86
  store i32 %i.sk, ptr %i.si, align 4, !tbaa !86
  %i.sl = add nuw nsw i64 %.07.i.i387.prol, 1     ; 2 uses
  %prol.iter1008.next = add i64 %prol.iter1008, 1 ; 2 uses
  %prol.iter1008.cmp.not = icmp eq i64 %prol.iter1008.next, %xtraiter1006
  br i1 %prol.iter1008.cmp.not, label %.lr.ph.i.i386.prol.loopexit, label %.lr.ph.i.i386.prol, !llvm.loop !177

.lr.ph.i.i386.prol.loopexit:                      ; preds = %.lr.ph.i.i386.prol, %.lr.ph.i.i386.preheader985
  %.07.i.i387.unr = phi i64 [ %.07.i.i387.ph, %.lr.ph.i.i386.preheader985 ], [ %i.sl, %.lr.ph.i.i386.prol ]
  %i.sm = sub nsw i64 %.07.i.i387.ph, %.pre596.a
  %i.sn = icmp ugt i64 %i.sm, -4
  br i1 %i.sn, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit389, label %.lr.ph.i.i386

.lr.ph.i.i386:                                    ; preds = %.lr.ph.i.i386.prol.loopexit, %.lr.ph.i.i386
  %.07.i.i387 = phi i64 [ %i.td, %.lr.ph.i.i386 ], [ %.07.i.i387.unr, %.lr.ph.i.i386.prol.loopexit ] ; 6 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %.07.i.i387
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %.pre597.a, i64 %.07.i.i387
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !86
  store i32 %i.sq, ptr %i.so, align 4, !tbaa !86
  %i.sr = add nuw nsw i64 %.07.i.i387, 1          ; 2 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.sr
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.pre597.a, i64 %i.sr
  %i.su = load i32, ptr %i.st, align 4, !tbaa !86
  store i32 %i.su, ptr %i.ss, align 4, !tbaa !86
  %i.sv = add nuw nsw i64 %.07.i.i387, 2          ; 2 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.sv
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %.pre597.a, i64 %i.sv
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !86
  store i32 %i.sy, ptr %i.sw, align 4, !tbaa !86
  %i.sz = add nuw nsw i64 %.07.i.i387, 3          ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.sz
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %.pre597.a, i64 %i.sz
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !86
  store i32 %i.tc, ptr %i.ta, align 4, !tbaa !86
  %i.td = add nuw nsw i64 %.07.i.i387, 4          ; 2 uses
  %exitcond.not.i.i388.3 = icmp eq i64 %i.td, %.pre596.a
  br i1 %exitcond.not.i.i388.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit389, label %.lr.ph.i.i386, !llvm.loop !178

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit389: ; preds = %.lr.ph.i.i386.prol.loopexit, %.lr.ph.i.i386, %middle.block782, %bb.as
  %i.te = getelementptr inbounds [4 x i8], ptr %i.rz, i64 %.pre596.a
  store i32 %i.ro, ptr %i.te, align 4, !tbaa !86
  %i.tf = add nsw i64 %.pre596.a, 1
  store i64 %i.tf, ptr %9, align 8, !tbaa !105
  store i64 %.0.i.i292, ptr %i.ah, align 8, !tbaa !106
  call void @_Z6rcFreePv(ptr noundef %.pre597.a) #8
  store ptr %i.rz, ptr %i.ai, align 8, !tbaa !85
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit293

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit293: ; preds = %bb.ar, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit389
  store i8 1, ptr %i.rj, align 8, !tbaa !204
  %.pre598 = load i64, ptr %i.qx, align 8, !tbaa !105
  br label %bb.at

bb.at:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit293, %bb.ao, %bb.ap, %bb.an
  %i.tg = phi i64 [ %i.rb, %bb.an ], [ %i.rb, %bb.ap ], [ %i.rb, %bb.ao ], [ %.pre598, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit293 ] ; 2 uses
  %.2210 = phi i1 [ true, %bb.an ], [ %.1209471, %bb.ap ], [ %.1209471, %bb.ao ], [ %.1209471, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit293 ] ; 2 uses
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
  %i.th = icmp sgt i64 %i.tg, %indvars.iv.next543
  br i1 %i.th, label %bb.an, label %.loopexit448

._crit_edge481:                                   ; preds = %.loopexit448
  %i.ti = icmp sge i32 %i.pk, %1
  %or.cond = select i1 %i.ti, i1 true, i1 %.1209.lcssa
  br i1 %or.cond, label %.loopexit450, label %.lr.ph488

.lr.ph488:                                        ; preds = %._crit_edge481
  %i.tj = load ptr, ptr %i.k, align 8, !tbaa !98  ; 6 uses
  %i.tk = add nuw i64 %.sroa.0.0475, 1            ; 2 uses
  %i.tl = icmp eq i64 %.sroa.0.0475, 0
  br i1 %i.tl, label %.epil.preheader, label %.lr.ph488.new

.lr.ph488.new:                                    ; preds = %.lr.ph488
  %unroll_iter = and i64 %i.tk, -2
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.lr.ph488.new
  %indvars.iv544 = phi i64 [ 0, %.lr.ph488.new ], [ %indvars.iv.next545.1, %bb.au ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph488.new ], [ %niter.next.1, %bb.au ]
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.3, i64 %indvars.iv544 ; 2 uses
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !86
  %i.to = sext i32 %i.tn to i64
  %i.tp = getelementptr inbounds [64 x i8], ptr %i.tj, i64 %i.to
  store i32 0, ptr %i.tp, align 8, !tbaa !102
  %i.tq = load i32, ptr %i.tm, align 4, !tbaa !86
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr inbounds [64 x i8], ptr %i.tj, i64 %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 4
  store i16 0, ptr %i.tt, align 4, !tbaa !103
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.3, i64 %indvars.iv544
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 4 ; 2 uses
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !86
  %i.tx = sext i32 %i.tw to i64
  %i.ty = getelementptr inbounds [64 x i8], ptr %i.tj, i64 %i.tx
  store i32 0, ptr %i.ty, align 8, !tbaa !102
  %i.tz = load i32, ptr %i.tv, align 4, !tbaa !86
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr inbounds [64 x i8], ptr %i.tj, i64 %i.ua
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 4
  store i16 0, ptr %i.uc, align 4, !tbaa !103
  %indvars.iv.next545.1 = add nuw nsw i64 %indvars.iv544, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit450.loopexit.unr-lcssa, label %bb.au

.loopexit450.loopexit.unr-lcssa:                  ; preds = %bb.au
  %i.ud = and i64 %.sroa.0.0475, 1
  %lcmp.mod1010.not.not = icmp eq i64 %i.ud, 0
  br i1 %lcmp.mod1010.not.not, label %.epil.preheader, label %.loopexit450

.epil.preheader:                                  ; preds = %.loopexit450.loopexit.unr-lcssa, %.lr.ph488
  %indvars.iv544.epil.init = phi i64 [ 0, %.lr.ph488 ], [ %indvars.iv.next545.1, %.loopexit450.loopexit.unr-lcssa ]
  %lcmp.mod1011 = trunc i64 %i.tk to i1
  call void @llvm.assume(i1 %lcmp.mod1011)
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.3, i64 %indvars.iv544.epil.init ; 2 uses
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !86
  %i.ug = sext i32 %i.uf to i64
  %i.uh = getelementptr inbounds [64 x i8], ptr %i.tj, i64 %i.ug
  store i32 0, ptr %i.uh, align 8, !tbaa !102
  %i.ui = load i32, ptr %i.ue, align 4, !tbaa !86
  %i.uj = sext i32 %i.ui to i64
  %i.uk = getelementptr inbounds [64 x i8], ptr %i.tj, i64 %i.uj
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  store i16 0, ptr %i.ul, align 4, !tbaa !103
  br label %.loopexit450

.loopexit450:                                     ; preds = %.epil.preheader, %.loopexit450.loopexit.unr-lcssa, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit, %._crit_edge481, %bb.aj, %bb.ai
  %.sroa.12.2 = phi i64 [ %.sroa.12.0489, %bb.ai ], [ %.sroa.12.0489, %bb.aj ], [ %.sroa.12.3, %._crit_edge481 ], [ %.sroa.12.0489, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit ], [ %.sroa.12.3, %.loopexit450.loopexit.unr-lcssa ], [ %.sroa.12.3, %.epil.preheader ]
  %.sroa.15.2 = phi ptr [ %.sroa.15.0490, %bb.ai ], [ %.sroa.15.0490, %bb.aj ], [ %.sroa.15.3, %._crit_edge481 ], [ %.sroa.15.0490, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit ], [ %.sroa.15.3, %.loopexit450.loopexit.unr-lcssa ], [ %.sroa.15.3, %.epil.preheader ] ; 2 uses
  %indvars.iv.next549 = add nuw nsw i64 %indvars.iv548, 1 ; 2 uses
  %exitcond552.not = icmp eq i64 %indvars.iv.next549, %i.g
  br i1 %exitcond552.not, label %.preheader447, label %bb.ai

bb.av:                                            ; preds = %_ZL25isRegionConnectedToBorderRK8rcRegion.exit
  %i.um = icmp sgt i32 %.3204, 0
  br i1 %i.um, label %.preheader447.backedge, label %.preheader444

.preheader444:                                    ; preds = %bb.av
  %i.un = load ptr, ptr %i.k, align 8, !tbaa !98  ; 9 uses
  %i.uo = zext i16 %i.d to i64
  %xtraiter1028 = and i64 %i.g, 3                 ; 3 uses
  %i.up = icmp ult i16 %i.d, 3
  br i1 %i.up, label %.epil.preheader1027, label %.preheader444.new

.preheader444.new:                                ; preds = %.preheader444
  %unroll_iter1031 = and i64 %i.g, 131068
  br label %bb.cp

.preheader447:                                    ; preds = %.loopexit450, %.preheader447.backedge
  %indvars.iv561.a = phi i64 [ %indvars.iv561.be, %.preheader447.backedge ], [ 0, %.loopexit450 ] ; 2 uses
  %.0201500 = phi i32 [ %.0201500.be, %.preheader447.backedge ], [ 0, %.loopexit450 ] ; 8 uses
  %i.uq = load ptr, ptr %i.k, align 8, !tbaa !98  ; 3 uses
  %i.ur = getelementptr inbounds nuw [64 x i8], ptr %i.uq, i64 %indvars.iv561.a ; 16 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 4
  %i.ut = load i16, ptr %i.us, align 4, !tbaa !103 ; 6 uses
  %or.cond258 = icmp slt i16 %i.ut, 1
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ur, i64 9
  %i.uv = load i8, ptr %i.uu, align 1, !range !18
  %i.uw = trunc nuw i8 %i.uv to i1
  %or.cond267 = select i1 %or.cond258, i1 true, i1 %i.uw
  br i1 %or.cond267, label %_ZL25isRegionConnectedToBorderRK8rcRegion.exit, label %bb.aw

bb.aw:                                            ; preds = %.preheader447
  %i.ux = load i32, ptr %i.ur, align 8, !tbaa !102 ; 2 uses
  %i.uy = icmp eq i32 %i.ux, 0
  br i1 %i.uy, label %_ZL25isRegionConnectedToBorderRK8rcRegion.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.uz = icmp sgt i32 %i.ux, %2
  %i.va = getelementptr i8, ptr %i.ur, i64 16
  %.val = load i64, ptr %i.va, align 8            ; 8 uses
  br i1 %i.uz, label %bb.ay, label %_ZL25isRegionConnectedToBorderRK8rcRegion.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.vb = getelementptr i8, ptr %i.ur, i64 32
  %.val270 = load ptr, ptr %i.vb, align 8
  %i.vc = icmp sgt i64 %.val, 0
  br i1 %i.vc, label %.lr.ph.i295.a, label %_ZL25isRegionConnectedToBorderRK8rcRegion.exit

bb.az:                                            ; preds = %.lr.ph.i295.a
  %indvars.iv.next.i297.a = add nuw nsw i64 %indvars.iv.i296.a, 1 ; 2 uses
  %exitcond.not.i298.a = icmp eq i64 %indvars.iv.next.i297.a, %.val
  br i1 %exitcond.not.i298.a, label %_ZL25isRegionConnectedToBorderRK8rcRegion.exit.thread, label %.lr.ph.i295.a

.lr.ph.i295.a:                                    ; preds = %bb.ay, %bb.az
  %indvars.iv.i296.a = phi i64 [ %indvars.iv.next.i297.a, %bb.az ], [ 0, %bb.ay ] ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.val270, i64 %indvars.iv.i296.a
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !86
  %i.vf = icmp eq i32 %i.ve, 0
  br i1 %i.vf, label %_ZL25isRegionConnectedToBorderRK8rcRegion.exit, label %bb.az

_ZL25isRegionConnectedToBorderRK8rcRegion.exit.thread: ; preds = %bb.az, %bb.ax
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ur, i64 16 ; 5 uses
  %i.vh = icmp sgt i64 %.val, 0
  br i1 %i.vh, label %.lr.ph496, label %_ZL25isRegionConnectedToBorderRK8rcRegion.exit

.lr.ph496:                                        ; preds = %_ZL25isRegionConnectedToBorderRK8rcRegion.exit.thread
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ur, i64 32
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !85 ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ur, i64 6
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ur, i64 40
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ur, i64 56
  %i.vn = zext nneg i16 %i.ut to i32              ; 3 uses
  %min.iters.check939 = icmp ult i64 %.val, 8
  %n.vec941 = and i64 %.val, 9223372036854775800  ; 3 uses
  %cmp.n953 = icmp eq i64 %.val, %n.vec941
  %broadcast.splatinsert925 = insertelement <4 x i32> poison, i32 %i.vn, i64 0
  %broadcast.splat926 = shufflevector <4 x i32> %broadcast.splatinsert925, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.ba

._crit_edge497:                                   ; preds = %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326
  %.not242 = icmp eq i16 %.3, %i.ut
  br i1 %.not242, label %_ZL25isRegionConnectedToBorderRK8rcRegion.exit, label %bb.bh

bb.ba:                                            ; preds = %.lr.ph496, %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326
  %indvars.iv553 = phi i64 [ 0, %.lr.ph496 ], [ %indvars.iv.next554, %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326 ] ; 2 uses
  %.0194494 = phi i16 [ %i.ut, %.lr.ph496 ], [ %.3, %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326 ] ; 7 uses
  %.0196493 = phi i32 [ 268435455, %.lr.ph496 ], [ %.3199, %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326 ] ; 8 uses
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %indvars.iv553
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !86 ; 2 uses
  %i.vq = and i32 %i.vp, 32768
  %.not245.a = icmp eq i32 %i.vq, 0
  br i1 %.not245.a, label %bb.bb, label %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326

bb.bb:                                            ; preds = %bb.ba
  %i.vr = sext i32 %i.vp to i64
  %i.vs = getelementptr inbounds [64 x i8], ptr %i.uq, i64 %i.vr ; 8 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 4
  %i.vu = load i16, ptr %i.vt, align 4, !tbaa !103 ; 4 uses
  %or.cond259 = icmp slt i16 %i.vu, 1
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vs, i64 9
  %i.vw = load i8, ptr %i.vv, align 1, !range !18
  %i.vx = trunc nuw i8 %i.vw to i1
  %or.cond262 = select i1 %or.cond259, i1 true, i1 %i.vx
  %i.vy = load i32, ptr %i.vs, align 8            ; 3 uses
  %i.vz = icmp sge i32 %i.vy, %.0196493
  %or.cond269.not = select i1 %or.cond262, i1 true, i1 %i.vz
  br i1 %or.cond269.not, label %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.wa = getelementptr i8, ptr %i.vs, i64 6
  %.val274 = load i8, ptr %i.wa, align 2, !tbaa !108
  %i.wb = load i8, ptr %i.vk, align 2, !tbaa !108
  %.not.i299 = icmp eq i8 %i.wb, %.val274
  br i1 %.not.i299, label %.lr.ph.i303, label %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326

.lr.ph.i303:                                      ; preds = %bb.bc
  %i.wc = zext nneg i16 %i.vu to i32              ; 3 uses
  br i1 %min.iters.check939, label %scalar.ph938.preheader, label %vector.ph940

vector.ph940:                                     ; preds = %.lr.ph.i303
  %broadcast.splatinsert942 = insertelement <4 x i32> poison, i32 %i.wc, i64 0
  %broadcast.splat943 = shufflevector <4 x i32> %broadcast.splatinsert942, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body944

vector.body944:                                   ; preds = %vector.body944, %vector.ph940
  %index945 = phi i64 [ 0, %vector.ph940 ], [ %index.next950, %vector.body944 ] ; 2 uses
  %vec.phi946 = phi <4 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.wj, %vector.body944 ]
  %vec.phi947 = phi <4 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.wk, %vector.body944 ]
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %index945 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %wide.load948 = load <4 x i32>, ptr %i.wd, align 4, !tbaa !86
  %wide.load949 = load <4 x i32>, ptr %i.we, align 4, !tbaa !86
  %i.wf = icmp eq <4 x i32> %wide.load948, %broadcast.splat943
  %i.wg = icmp eq <4 x i32> %wide.load949, %broadcast.splat943
  %i.wh = zext <4 x i1> %i.wf to <4 x i32>
  %i.wi = zext <4 x i1> %i.wg to <4 x i32>
  %i.wj = add <4 x i32> %vec.phi946, %i.wh        ; 2 uses
  %i.wk = add <4 x i32> %vec.phi947, %i.wi        ; 2 uses
  %index.next950 = add nuw i64 %index945, 8       ; 2 uses
  %i.wl = icmp eq i64 %index.next950, %n.vec941
  br i1 %i.wl, label %middle.block951, label %vector.body944, !llvm.loop !179

middle.block951:                                  ; preds = %vector.body944
  %bin.rdx952 = add <4 x i32> %i.wk, %i.wj
  %i.wm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx952) ; 2 uses
  br i1 %cmp.n953, label %._crit_edge.i307, label %scalar.ph938.preheader

scalar.ph938.preheader:                           ; preds = %.lr.ph.i303, %middle.block951
  %indvars.iv.i304.ph = phi i64 [ 0, %.lr.ph.i303 ], [ %n.vec941, %middle.block951 ]
  %.0192.i.ph = phi i32 [ 0, %.lr.ph.i303 ], [ %i.wm, %middle.block951 ]
  br label %scalar.ph938

._crit_edge.i307:                                 ; preds = %scalar.ph938, %middle.block951
  %spec.select.i.lcssa = phi i32 [ %i.wm, %middle.block951 ], [ %spec.select.i, %scalar.ph938 ]
  %i.wn = icmp samesign ugt i32 %spec.select.i.lcssa, 1
  br i1 %i.wn, label %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326, label %.preheader.i302

.preheader.i302:                                  ; preds = %._crit_edge.i307
  %i.wo = load i64, ptr %i.vl, align 8, !tbaa !105 ; 2 uses
  %.not244.i = icmp slt i64 %i.wo, 1
  br i1 %.not244.i, label %.preheader1.i311, label %.lr.ph6.i

.lr.ph6.i:                                        ; preds = %.preheader.i302
  %i.wp = load ptr, ptr %i.vm, align 8, !tbaa !85
  br label %bb.be

scalar.ph938:                                     ; preds = %scalar.ph938.preheader, %scalar.ph938
  %indvars.iv.i304 = phi i64 [ %indvars.iv.next.i305, %scalar.ph938 ], [ %indvars.iv.i304.ph, %scalar.ph938.preheader ] ; 2 uses
  %.0192.i = phi i32 [ %spec.select.i, %scalar.ph938 ], [ %.0192.i.ph, %scalar.ph938.preheader ]
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %indvars.iv.i304
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !86
  %i.ws = icmp eq i32 %i.wr, %i.wc
  %i.wt = zext i1 %i.ws to i32
  %spec.select.i = add nuw nsw i32 %.0192.i, %i.wt ; 2 uses
  %indvars.iv.next.i305 = add nuw nsw i64 %indvars.iv.i304, 1 ; 2 uses
  %exitcond.not.i306 = icmp eq i64 %indvars.iv.next.i305, %.val
  br i1 %exitcond.not.i306, label %._crit_edge.i307, label %scalar.ph938, !llvm.loop !180

bb.bd:                                            ; preds = %bb.be
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1 ; 2 uses
  %exitcond14.not.i = icmp eq i64 %indvars.iv.next12.i, %i.wo
  br i1 %exitcond14.not.i, label %.preheader1.i311, label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph6.i
  %indvars.iv11.i = phi i64 [ 0, %.lr.ph6.i ], [ %indvars.iv.next12.i, %bb.bd ] ; 2 uses
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv11.i
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !86
  %.not17.i = icmp eq i32 %i.wv, %i.wc
  br i1 %.not17.i, label %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326, label %bb.bd

.preheader1.i311:                                 ; preds = %bb.bd, %.preheader.i302
  %i.ww = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !105 ; 5 uses
  %i.wy = icmp sgt i64 %i.wx, 0
  br i1 %i.wy, label %.lr.ph.i319, label %.preheader.i312

.lr.ph.i319:                                      ; preds = %.preheader1.i311
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vs, i64 32
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !85 ; 2 uses
  %min.iters.check922 = icmp ult i64 %i.wx, 8
  br i1 %min.iters.check922, label %scalar.ph921.preheader, label %vector.ph923

vector.ph923:                                     ; preds = %.lr.ph.i319
  %n.vec924 = and i64 %i.wx, 9223372036854775800  ; 3 uses
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %vector.ph923
  %index928 = phi i64 [ 0, %vector.ph923 ], [ %index.next933, %vector.body927 ] ; 2 uses
  %vec.phi929 = phi <4 x i32> [ zeroinitializer, %vector.ph923 ], [ %i.xh, %vector.body927 ]
  %vec.phi930 = phi <4 x i32> [ zeroinitializer, %vector.ph923 ], [ %i.xi, %vector.body927 ]
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %index928 ; 2 uses
end_hunk_2
begin_hunk_3_@_Z14rcBuildRegionsP9rcContextR20rcCompactHeightfieldiii:bb.a
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i

_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i: ; preds = %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl.exit.i, %bb.ah, %bb.af, %bb.ae, %.lr.ph.i219
  %indvars.iv.next.i222 = add nuw nsw i64 %indvars.iv.i220, 1 ; 2 uses
  %i.tc = icmp samesign ult i64 %indvars.iv.next.i222, %i.rj
  br i1 %i.tc, label %.lr.ph.i219, label %._crit_edge.i223

bb.aj:                                            ; preds = %bb.ab
  %i.td = zext nneg i32 %i.qq to i64
  %i.te = getelementptr [24 x i8], ptr %5, i64 %i.td ; 8 uses
  %i.tf = getelementptr i8, ptr %i.te, i64 -24
  %.val14.i = load i64, ptr %i.tf, align 8, !tbaa !116 ; 2 uses
  %i.tg = icmp sgt i64 %.val14.i, 0
  br i1 %i.tg, label %.lr.ph.i231, label %_ZL16sortCellsByLeveltR20rcCompactHeightfieldPKtjP12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEEt.exit

.lr.ph.i231:                                      ; preds = %bb.aj
  %i.th = getelementptr i8, ptr %i.te, i64 -8
  %i.ti = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.te, i64 16 ; 3 uses
  %.val13.i.pre = load ptr, ptr %i.th, align 8, !tbaa !114
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i234, %.lr.ph.i231
  %indvars.iv.i232 = phi i64 [ 0, %.lr.ph.i231 ], [ %indvars.iv.next.i235, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i234 ] ; 2 uses
  %i.tk = getelementptr inbounds nuw [12 x i8], ptr %.val13.i.pre, i64 %indvars.iv.i232 ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !119 ; 2 uses
  %i.tn = icmp slt i32 %i.tm, 0
  br i1 %i.tn, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i234, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.to = zext nneg i32 %i.tm to i64
  %i.tp = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.to
  %i.tq = load i16, ptr %i.tp, align 2, !tbaa !71
  %.not.i233 = icmp eq i16 %i.tq, 0
  br i1 %.not.i233, label %bb.am, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i234

bb.am:                                            ; preds = %bb.al
  %i.tr = load i64, ptr %i.te, align 8, !tbaa !116 ; 5 uses
  %i.ts = load i64, ptr %i.ti, align 8, !tbaa !115 ; 4 uses
  %i.tt = icmp slt i64 %i.tr, %i.ts
  br i1 %i.tt, label %bb.an, label %bb.ao, !prof !107

bb.an:                                            ; preds = %bb.am
  %i.tu = load ptr, ptr %i.tj, align 8, !tbaa !114
  %i.tv = add nsw i64 %i.tr, 1
  store i64 %i.tv, ptr %i.te, align 8, !tbaa !116
  %i.tw = getelementptr inbounds [12 x i8], ptr %i.tu, i64 %i.tr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.tw, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.tk, i64 12, i1 false), !tbaa.struct !117
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i234

bb.ao:                                            ; preds = %bb.am
  %i.tx = add nsw i64 %i.ts, 1
  %i.ty = icmp sgt i64 %i.ts, 4611686018427387902
  %i.tz = shl nsw i64 %i.ts, 1
  %..i.i.i236 = tail call i64 @llvm.smax.i64(i64 %i.tz, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.tx)
  %.0.i.i.i237 = select i1 %i.ty, i64 9223372036854775807, i64 %..i.i.i236, !prof !109 ; 2 uses
  %i.ua = call fastcc noundef ptr @_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %i.te, i64 noundef %.0.i.i.i237) ; 2 uses
  %i.ub = getelementptr inbounds [12 x i8], ptr %i.ua, i64 %i.tr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ub, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.tk, i64 12, i1 false), !tbaa.struct !117
  %i.uc = add nsw i64 %i.tr, 1
  store i64 %i.uc, ptr %i.te, align 8, !tbaa !116
  store i64 %.0.i.i.i237, ptr %i.ti, align 8, !tbaa !115
  %i.ud = load ptr, ptr %i.tj, align 8, !tbaa !114
  tail call void @_Z6rcFreePv(ptr noundef %i.ud) #8
  store ptr %i.ua, ptr %i.tj, align 8, !tbaa !114
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i234

_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i234: ; preds = %bb.ao, %bb.an, %bb.al, %bb.ak
  %indvars.iv.next.i235 = add nuw nsw i64 %indvars.iv.i232, 1 ; 2 uses
  %i.ue = icmp sgt i64 %.val14.i, %indvars.iv.next.i235
  br i1 %i.ue, label %bb.ak, label %_ZL16sortCellsByLeveltR20rcCompactHeightfieldPKtjP12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEEt.exit

_ZL16sortCellsByLeveltR20rcCompactHeightfieldPKtjP12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEEt.exit: ; preds = %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i234, %._crit_edge57.i, %bb.aj, %.preheader.lr.ph.i216, %bb.ac
  %i.uf = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.ug = trunc nuw i8 %i.uf to i1
  br i1 %i.ug, label %bb.ap, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit238

bb.ap:                                            ; preds = %_ZL16sortCellsByLeveltR20rcCompactHeightfieldPKtjP12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEEt.exit
  %i.uh = load ptr, ptr %0, align 8, !tbaa !21
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 40
  %i.uj = load ptr, ptr %i.ui, align 8
  tail call void %i.uj(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 22) #8, !call_target !27, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit238

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit238: ; preds = %_ZL16sortCellsByLeveltR20rcCompactHeightfieldPKtjP12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEEt.exit, %bb.ap
  %i.uk = zext nneg i32 %i.qq to i64
  %i.ul = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.uk ; 3 uses
  call fastcc void @_ZL13expandRegionsitR20rcCompactHeightfieldPtS1_R12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEEb(i32 noundef 8, i16 noundef zeroext %i.qo, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %i.n, ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ul, i1 noundef zeroext false)
  %i.um = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.un = trunc nuw i8 %i.um to i1
  br i1 %i.un, label %_ZN13rcScopedTimerD2Ev.exit, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit238
  %i.uo = load ptr, ptr %0, align 8, !tbaa !21
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 48
  %i.uq = load ptr, ptr %i.up, align 8
  tail call void %i.uq(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 22) #8, !call_target !79, !inline_history !3
  %.pre298 = load i8, ptr %i.a, align 1, !tbaa !17, !range !18
  %i.ur = trunc nuw i8 %.pre298 to i1
  br i1 %i.ur, label %bb.aq, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239

bb.aq:                                            ; preds = %_ZN13rcScopedTimerD2Ev.exit
  %i.us = load ptr, ptr %0, align 8, !tbaa !21
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 40
  %i.uu = load ptr, ptr %i.ut, align 8
  tail call void %i.uu(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 23) #8, !call_target !27, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239: ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit238, %_ZN13rcScopedTimerD2Ev.exit, %bb.aq
  %.val = load i64, ptr %i.ul, align 8, !tbaa !116 ; 2 uses
  %.not138282 = icmp sgt i64 %.val, 0
  br i1 %.not138282, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239
  %i.uv = getelementptr i8, ptr %i.ul, i64 16
  %.val139 = load ptr, ptr %i.uv, align 8, !tbaa !114
  %i.uw = tail call i16 @llvm.usub.sat.i16(i16 range(i16 -1, -2) %i.qo, i16 2) ; 4 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph, %bb.cu
  %i.ux = phi i64 [ %i.qg, %.lr.ph ], [ %i.aix, %bb.cu ] ; 3 uses
  %i.uy = phi i64 [ %i.qh, %.lr.ph ], [ %i.aiy, %bb.cu ] ; 3 uses
  %i.uz = phi i64 [ %i.qi, %.lr.ph ], [ %i.aiz, %bb.cu ] ; 3 uses
  %i.va = phi i64 [ %i.qj, %.lr.ph ], [ %i.aja, %bb.cu ] ; 3 uses
  %i.vb = phi ptr [ %i.qk, %.lr.ph ], [ %i.ajb, %bb.cu ] ; 6 uses
  %i.vc = phi ptr [ %i.ql, %.lr.ph ], [ %i.ajc, %bb.cu ] ; 3 uses
  %i.vd = phi i64 [ %i.qm, %.lr.ph ], [ %i.ajd, %bb.cu ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cu ] ; 2 uses
  %.2122283 = phi i16 [ %.1121, %.lr.ph ], [ %.4124.ph, %bb.cu ] ; 18 uses
  %i.ve = getelementptr inbounds nuw [12 x i8], ptr %.val139, i64 %indvars.iv ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %i.ve, align 4, !tbaa !86 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !86 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !86 ; 4 uses
  %i.vf = icmp sgt i32 %.sroa.5.0.copyload, -1
  br i1 %i.vf, label %bb.as, label %bb.cu

bb.as:                                            ; preds = %bb.ar
  %i.vg = zext nneg i32 %.sroa.5.0.copyload to i64 ; 3 uses
  %i.vh = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.vg ; 2 uses
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !71
  %i.vj = icmp eq i16 %i.vi, 0
  br i1 %i.vj, label %bb.at, label %bb.cu

bb.at:                                            ; preds = %bb.as
  %i.vk = load i32, ptr %1, align 8, !tbaa !69    ; 10 uses
  %i.vl = load ptr, ptr %i.qc, align 8, !tbaa !73
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 %i.vg
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !74  ; 12 uses
  store i64 0, ptr %6, align 8, !tbaa !116
  %i.vo = icmp sgt i64 %i.vd, 0
  br i1 %i.vo, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240, !prof !107

_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i: ; preds = %bb.at
  store i32 %.sroa.0.0.copyload, ptr %i.vb, align 4, !tbaa !86
  %.sroa.5145.0..sroa_idx146.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  store i32 %.sroa.4.0.copyload, ptr %.sroa.5145.0..sroa_idx146.i, align 4, !tbaa !86
  %.sroa.6148.0..sroa_idx149.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  store i32 %.sroa.5.0.copyload, ptr %.sroa.6148.0..sroa_idx149.i, align 4, !tbaa !86
  br label %.lr.ph.i242

_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240: ; preds = %bb.at
  %i.vp = add nsw i64 %i.vd, 1                    ; 7 uses
  %i.vq = call fastcc noundef ptr @_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.vp) ; 5 uses
  store i32 %.sroa.0.0.copyload, ptr %i.vq, align 4, !tbaa !86
  %.sroa.5145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vq, i64 4
  store i32 %.sroa.4.0.copyload, ptr %.sroa.5145.0..sroa_idx.i, align 4, !tbaa !86
  %.sroa.6148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  store i32 %.sroa.5.0.copyload, ptr %.sroa.6148.0..sroa_idx.i, align 4, !tbaa !86
  store i64 %i.vp, ptr %i.bo, align 8, !tbaa !115
  tail call void @_Z6rcFreePv(ptr noundef %i.vc) #8
  store ptr %i.vq, ptr %i.qe, align 8, !tbaa !114
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i
  %i.vr = phi i64 [ %i.ux, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i ], [ %i.vp, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240 ]
  %i.vs = phi i64 [ %i.uy, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i ], [ %i.vp, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240 ]
  %i.vt = phi i64 [ %i.uz, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i ], [ %i.vp, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240 ]
  %i.vu = phi i64 [ %i.va, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i ], [ %i.vp, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240 ]
  %i.vv = phi ptr [ %i.vb, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i ], [ %i.vq, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240 ] ; 6 uses
  %i.vw = phi i64 [ %i.vd, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i ], [ %i.vp, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240 ]
  store i16 %.2122283, ptr %i.vh, align 2, !tbaa !71
  %i.vx = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.vg
  store i16 0, ptr %i.vx, align 2, !tbaa !71
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.i244, %.lr.ph.i242
  %i.vy = phi i64 [ %i.vr, %.lr.ph.i242 ], [ %i.aij, %.loopexit.i244 ] ; 6 uses
  %i.vz = phi i64 [ %i.vs, %.lr.ph.i242 ], [ %i.aik, %.loopexit.i244 ] ; 6 uses
  %i.wa = phi i64 [ %i.vt, %.lr.ph.i242 ], [ %i.ail, %.loopexit.i244 ] ; 6 uses
  %i.wb = phi i64 [ %i.vu, %.lr.ph.i242 ], [ %i.aim, %.loopexit.i244 ] ; 11 uses
  %i.wc = phi ptr [ %i.vv, %.lr.ph.i242 ], [ %i.ain, %.loopexit.i244 ] ; 7 uses
  %i.wd = phi i64 [ %i.vw, %.lr.ph.i242 ], [ %i.aio, %.loopexit.i244 ] ; 5 uses
  %i.we = phi ptr [ %i.vv, %.lr.ph.i242 ], [ %i.aip, %.loopexit.i244 ] ; 6 uses
  %i.wf = phi ptr [ %i.vv, %.lr.ph.i242 ], [ %i.aiq, %.loopexit.i244 ] ; 6 uses
  %i.wg = phi ptr [ %i.vv, %.lr.ph.i242 ], [ %i.air, %.loopexit.i244 ] ; 6 uses
  %i.wh = phi ptr [ %i.vv, %.lr.ph.i242 ], [ %i.ais, %.loopexit.i244 ] ; 8 uses
  %.val134.i = phi ptr [ %i.vv, %.lr.ph.i242 ], [ %.val134176.i, %.loopexit.i244 ] ; 6 uses
  %.val168.i = phi i64 [ 1, %.lr.ph.i242 ], [ %.val.i245, %.loopexit.i244 ] ; 6 uses
  %.0115167.i = phi i32 [ 0, %.lr.ph.i242 ], [ %.1116.i, %.loopexit.i244 ] ; 2 uses
  %i.wi = getelementptr [12 x i8], ptr %.val134.i, i64 %.val168.i ; 3 uses
  %i.wj = getelementptr i8, ptr %i.wi, i64 -12
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !120 ; 14 uses
  %i.wl = getelementptr i8, ptr %i.wi, i64 -8
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !121 ; 14 uses
  %i.wn = getelementptr i8, ptr %i.wi, i64 -4
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !119
  %i.wp = add nsw i64 %.val168.i, -1              ; 9 uses
  store i64 %i.wp, ptr %6, align 8, !tbaa !116
  %i.wq = load ptr, ptr %i.qf, align 8, !tbaa !72 ; 5 uses
  %i.wr = sext i32 %i.wo to i64                   ; 2 uses
  %i.ws = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.wr
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 4 ; 4 uses
  %i.wu = load i32, ptr %i.wt, align 4            ; 4 uses
  %i.wv = and i32 %i.wu, 63                       ; 3 uses
  %.not.i243 = icmp eq i32 %i.wv, 63              ; 2 uses
  br i1 %.not.i243, label %.thread.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ww = add nsw i32 %i.wk, -1                   ; 2 uses
  %i.wx = load ptr, ptr %i.qb, align 8, !tbaa !88 ; 2 uses
  %i.wy = mul nsw i32 %i.wm, %i.vk
  %i.wz = add nsw i32 %i.wy, %i.ww
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.wx, i64 %i.xa
  %i.xc = load i32, ptr %i.xb, align 4
  %i.xd = and i32 %i.xc, 16777215
  %i.xe = add nuw nsw i32 %i.xd, %i.wv
  %i.xf = load ptr, ptr %i.qc, align 8, !tbaa !73 ; 2 uses
  %i.xg = zext nneg i32 %i.xe to i64              ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.xg
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !74
  %.not120.i = icmp eq i8 %i.xi, %i.vn
  br i1 %.not120.i, label %bb.aw, label %.thread.i

bb.aw:                                            ; preds = %bb.av
  %i.xj = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.xg
  %i.xk = load i16, ptr %i.xj, align 2, !tbaa !71 ; 3 uses
  %.not121.i = icmp sgt i16 %i.xk, -1
  br i1 %.not121.i, label %bb.ax, label %.thread.i

bb.ax:                                            ; preds = %bb.aw
  %.not122.i = icmp eq i16 %i.xk, 0
  %.not123.i = icmp eq i16 %i.xk, %.2122283
  %or.cond.i = or i1 %.not122.i, %.not123.i
  br i1 %or.cond.i, label %bb.ay, label %.thread161.i

bb.ay:                                            ; preds = %bb.ax
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.xg
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  %i.xn = load i32, ptr %i.xm, align 4
  %i.xo = lshr i32 %i.xn, 6
  %i.xp = and i32 %i.xo, 63                       ; 2 uses
  %.not124.i = icmp eq i32 %i.xp, 63
  br i1 %.not124.i, label %.thread.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.xq = add nsw i32 %i.wm, 1
  %i.xr = mul nsw i32 %i.xq, %i.vk
  %i.xs = add nsw i32 %i.xr, %i.ww
  %i.xt = sext i32 %i.xs to i64
  %i.xu = getelementptr inbounds [4 x i8], ptr %i.wx, i64 %i.xt
  %i.xv = load i32, ptr %i.xu, align 4
  %i.xw = and i32 %i.xv, 16777215
  %i.xx = add nuw nsw i32 %i.xw, %i.xp
  %i.xy = zext nneg i32 %i.xx to i64              ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.xy
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !74
  %.not125.i = icmp eq i8 %i.ya, %i.vn
  br i1 %.not125.i, label %bb.ba, label %.thread.i

bb.ba:                                            ; preds = %bb.az
  %i.yb = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.xy
  %i.yc = load i16, ptr %i.yb, align 2, !tbaa !71 ; 2 uses
  %.not126.i = icmp eq i16 %i.yc, 0
  %.not127.i = icmp eq i16 %i.yc, %.2122283
  %or.cond132.i = or i1 %.not126.i, %.not127.i
  br i1 %or.cond132.i, label %.thread.i, label %.thread161.i

.thread.i:                                        ; preds = %bb.ba, %bb.az, %bb.ay, %bb.aw, %bb.av, %bb.au
  %i.yd = lshr i32 %i.wu, 6
  %i.ye = and i32 %i.yd, 63                       ; 2 uses
  %.not.1.i = icmp eq i32 %i.ye, 63
  br i1 %.not.1.i, label %.thread.1.i, label %bb.bb

bb.bb:                                            ; preds = %.thread.i
  %i.yf = add nsw i32 %i.wm, 1
  %i.yg = load ptr, ptr %i.qb, align 8, !tbaa !88 ; 2 uses
  %i.yh = mul nsw i32 %i.yf, %i.vk                ; 2 uses
  %i.yi = add nsw i32 %i.yh, %i.wk
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds [4 x i8], ptr %i.yg, i64 %i.yj
  %i.yl = load i32, ptr %i.yk, align 4
  %i.ym = and i32 %i.yl, 16777215
  %i.yn = add nuw nsw i32 %i.ym, %i.ye
  %i.yo = load ptr, ptr %i.qc, align 8, !tbaa !73 ; 2 uses
  %i.yp = zext nneg i32 %i.yn to i64              ; 3 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.yp
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !74
  %.not120.1.i = icmp eq i8 %i.yr, %i.vn
  br i1 %.not120.1.i, label %bb.bc, label %.thread.1.i

bb.bc:                                            ; preds = %bb.bb
  %i.ys = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.yp
  %i.yt = load i16, ptr %i.ys, align 2, !tbaa !71 ; 3 uses
  %.not121.1.i = icmp sgt i16 %i.yt, -1
  br i1 %.not121.1.i, label %bb.bd, label %.thread.1.i

bb.bd:                                            ; preds = %bb.bc
  %.not122.1.i = icmp eq i16 %i.yt, 0
  %.not123.1.i = icmp eq i16 %i.yt, %.2122283
  %or.cond.1.i = or i1 %.not122.1.i, %.not123.1.i
  br i1 %or.cond.1.i, label %bb.be, label %.thread161.i

bb.be:                                            ; preds = %bb.bd
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.yp
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 4
  %i.yw = load i32, ptr %i.yv, align 4
  %i.yx = lshr i32 %i.yw, 12
  %i.yy = and i32 %i.yx, 63                       ; 2 uses
  %.not124.1.i = icmp eq i32 %i.yy, 63
  br i1 %.not124.1.i, label %.thread.1.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.yz = add nsw i32 %i.wk, 1
  %i.za = add nsw i32 %i.yz, %i.yh
  %i.zb = sext i32 %i.za to i64
  %i.zc = getelementptr inbounds [4 x i8], ptr %i.yg, i64 %i.zb
  %i.zd = load i32, ptr %i.zc, align 4
  %i.ze = and i32 %i.zd, 16777215
  %i.zf = add nuw nsw i32 %i.ze, %i.yy
  %i.zg = zext nneg i32 %i.zf to i64              ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.zg
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !74
  %.not125.1.i = icmp eq i8 %i.zi, %i.vn
  br i1 %.not125.1.i, label %bb.bg, label %.thread.1.i

bb.bg:                                            ; preds = %bb.bf
  %i.zj = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.zg
  %i.zk = load i16, ptr %i.zj, align 2, !tbaa !71 ; 2 uses
  %.not126.1.i = icmp eq i16 %i.zk, 0
  %.not127.1.i = icmp eq i16 %i.zk, %.2122283
  %or.cond132.1.i = or i1 %.not126.1.i, %.not127.1.i
  br i1 %or.cond132.1.i, label %.thread.1.i, label %.thread161.i

.thread.1.i:                                      ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc, %bb.bb, %.thread.i
  %i.zl = lshr i32 %i.wu, 12
  %i.zm = and i32 %i.zl, 63                       ; 2 uses
  %.not.2.i = icmp eq i32 %i.zm, 63
  br i1 %.not.2.i, label %.thread.2.i, label %bb.bh

bb.bh:                                            ; preds = %.thread.1.i
  %i.zn = add nsw i32 %i.wk, 1                    ; 2 uses
  %i.zo = load ptr, ptr %i.qb, align 8, !tbaa !88 ; 2 uses
  %i.zp = mul nsw i32 %i.wm, %i.vk
  %i.zq = add nsw i32 %i.zp, %i.zn
  %i.zr = sext i32 %i.zq to i64
  %i.zs = getelementptr inbounds [4 x i8], ptr %i.zo, i64 %i.zr
  %i.zt = load i32, ptr %i.zs, align 4
  %i.zu = and i32 %i.zt, 16777215
  %i.zv = add nuw nsw i32 %i.zu, %i.zm
  %i.zw = load ptr, ptr %i.qc, align 8, !tbaa !73 ; 2 uses
  %i.zx = zext nneg i32 %i.zv to i64              ; 3 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.zx
  %i.zz = load i8, ptr %i.zy, align 1, !tbaa !74
  %.not120.2.i = icmp eq i8 %i.zz, %i.vn
  br i1 %.not120.2.i, label %bb.bi, label %.thread.2.i

bb.bi:                                            ; preds = %bb.bh
  %i.aaa = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.zx
  %i.aab = load i16, ptr %i.aaa, align 2, !tbaa !71 ; 3 uses
  %.not121.2.i = icmp sgt i16 %i.aab, -1
  br i1 %.not121.2.i, label %bb.bj, label %.thread.2.i

bb.bj:                                            ; preds = %bb.bi
  %.not122.2.i = icmp eq i16 %i.aab, 0
  %.not123.2.i = icmp eq i16 %i.aab, %.2122283
  %or.cond.2.i = or i1 %.not122.2.i, %.not123.2.i
  br i1 %or.cond.2.i, label %bb.bk, label %.thread161.i

bb.bk:                                            ; preds = %bb.bj
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.zx
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 4
  %i.aae = load i32, ptr %i.aad, align 4
  %i.aaf = lshr i32 %i.aae, 18
  %i.aag = and i32 %i.aaf, 63                     ; 2 uses
  %.not124.2.i = icmp eq i32 %i.aag, 63
  br i1 %.not124.2.i, label %.thread.2.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.aah = add nsw i32 %i.wm, -1
  %i.aai = mul nsw i32 %i.aah, %i.vk
  %i.aaj = add nsw i32 %i.aai, %i.zn
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds [4 x i8], ptr %i.zo, i64 %i.aak
  %i.aam = load i32, ptr %i.aal, align 4
  %i.aan = and i32 %i.aam, 16777215
  %i.aao = add nuw nsw i32 %i.aan, %i.aag
  %i.aap = zext nneg i32 %i.aao to i64            ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.aap
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !74
  %.not125.2.i = icmp eq i8 %i.aar, %i.vn
  br i1 %.not125.2.i, label %bb.bm, label %.thread.2.i

bb.bm:                                            ; preds = %bb.bl
  %i.aas = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.aap
  %i.aat = load i16, ptr %i.aas, align 2, !tbaa !71 ; 2 uses
  %.not126.2.i = icmp eq i16 %i.aat, 0
  %.not127.2.i = icmp eq i16 %i.aat, %.2122283
  %or.cond132.2.i = or i1 %.not126.2.i, %.not127.2.i
  br i1 %or.cond132.2.i, label %.thread.2.i, label %.thread161.i

.thread.2.i:                                      ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bi, %bb.bh, %.thread.1.i
  %i.aau = lshr i32 %i.wu, 18
  %i.aav = and i32 %i.aau, 63                     ; 2 uses
  %.not.3.i = icmp eq i32 %i.aav, 63
  br i1 %.not.3.i, label %.thread.3.i, label %bb.bn

bb.bn:                                            ; preds = %.thread.2.i
  %i.aaw = add nsw i32 %i.wm, -1
  %i.aax = load ptr, ptr %i.qb, align 8, !tbaa !88 ; 2 uses
  %i.aay = mul nsw i32 %i.aaw, %i.vk              ; 2 uses
  %i.aaz = add nsw i32 %i.aay, %i.wk
  %i.aba = sext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds [4 x i8], ptr %i.aax, i64 %i.aba
  %i.abc = load i32, ptr %i.abb, align 4
  %i.abd = and i32 %i.abc, 16777215
  %i.abe = add nuw nsw i32 %i.abd, %i.aav
  %i.abf = load ptr, ptr %i.qc, align 8, !tbaa !73 ; 2 uses
  %i.abg = zext nneg i32 %i.abe to i64            ; 3 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.abg
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !74
  %.not120.3.i = icmp eq i8 %i.abi, %i.vn
  br i1 %.not120.3.i, label %bb.bo, label %.thread.3.i

bb.bo:                                            ; preds = %bb.bn
  %i.abj = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.abg
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !71 ; 3 uses
  %.not121.3.i = icmp sgt i16 %i.abk, -1
  br i1 %.not121.3.i, label %bb.bp, label %.thread.3.i

bb.bp:                                            ; preds = %bb.bo
  %.not122.3.i = icmp eq i16 %i.abk, 0
  %.not123.3.i = icmp eq i16 %i.abk, %.2122283
  %or.cond.3.i = or i1 %.not122.3.i, %.not123.3.i
  br i1 %or.cond.3.i, label %bb.bq, label %.thread161.i

bb.bq:                                            ; preds = %bb.bp
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.abg
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 4
  %i.abn = load i32, ptr %i.abm, align 4
  %i.abo = and i32 %i.abn, 63                     ; 2 uses
  %.not124.3.i = icmp eq i32 %i.abo, 63
  br i1 %.not124.3.i, label %.thread.3.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.abp = add nsw i32 %i.wk, -1
  %i.abq = add nsw i32 %i.abp, %i.aay
  %i.abr = sext i32 %i.abq to i64
  %i.abs = getelementptr inbounds [4 x i8], ptr %i.aax, i64 %i.abr
  %i.abt = load i32, ptr %i.abs, align 4
  %i.abu = and i32 %i.abt, 16777215
  %i.abv = add nuw nsw i32 %i.abu, %i.abo
  %i.abw = zext nneg i32 %i.abv to i64            ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.abw
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !74
  %.not125.3.i = icmp eq i8 %i.aby, %i.vn
  br i1 %.not125.3.i, label %bb.bs, label %.thread.3.i

bb.bs:                                            ; preds = %bb.br
  %i.abz = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.abw
  %i.aca = load i16, ptr %i.abz, align 2, !tbaa !71 ; 2 uses
  %.not126.3.i = icmp eq i16 %i.aca, 0
  %.not127.3.i = icmp eq i16 %i.aca, %.2122283
  %or.cond132.3.i = or i1 %.not126.3.i, %.not127.3.i
  br i1 %or.cond132.3.i, label %.thread.3.i, label %.thread161.i

.thread.3.i:                                      ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.bn, %.thread.2.i
  br i1 %.not.i243, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i, label %bb.bt

.thread161.i:                                     ; preds = %bb.bs, %bb.bp, %bb.bm, %bb.bj, %bb.bg, %bb.bd, %bb.ba, %bb.ax
  %i.acb = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.wr
  store i16 0, ptr %i.acb, align 2, !tbaa !71
  br label %.loopexit.i244

bb.bt:                                            ; preds = %.thread.3.i
  %i.acc = add nsw i32 %i.wk, -1                  ; 3 uses
  %i.acd = load ptr, ptr %i.qb, align 8, !tbaa !88
  %i.ace = mul nsw i32 %i.wm, %i.vk
  %i.acf = add nsw i32 %i.ace, %i.acc
  %i.acg = sext i32 %i.acf to i64
  %i.ach = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.acg
  %i.aci = load i32, ptr %i.ach, align 4
  %i.acj = and i32 %i.aci, 16777215
  %i.ack = add nuw nsw i32 %i.acj, %i.wv          ; 3 uses
  %i.acl = load ptr, ptr %i.qc, align 8, !tbaa !73
  %i.acm = zext nneg i32 %i.ack to i64            ; 4 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acl, i64 %i.acm
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !74
  %.not130.i = icmp eq i8 %i.aco, %i.vn
  br i1 %.not130.i, label %bb.bu, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i

bb.bu:                                            ; preds = %bb.bt
  %i.acp = load ptr, ptr %i.qd, align 8, !tbaa !67
  %i.acq = getelementptr inbounds nuw [2 x i8], ptr %i.acp, i64 %i.acm
  %i.acr = load i16, ptr %i.acq, align 2, !tbaa !71
  %.not131.i = icmp ult i16 %i.acr, %i.uw
  br i1 %.not131.i, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.acs = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.acm ; 2 uses
  %i.act = load i16, ptr %i.acs, align 2, !tbaa !71
  %i.acu = icmp eq i16 %i.act, 0
  br i1 %i.acu, label %bb.bw, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i

bb.bw:                                            ; preds = %bb.bv
  store i16 %.2122283, ptr %i.acs, align 2, !tbaa !71
  %i.acv = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.acm
  store i16 0, ptr %i.acv, align 2, !tbaa !71
  %8 = icmp slt i64 %i.wp, %i.wb
  br i1 %8, label %bb.bx, label %bb.by, !prof !107

bb.bx:                                            ; preds = %bb.bw
  store i64 %.val168.i, ptr %6, align 8, !tbaa !116
  %i.acw = getelementptr inbounds nuw [12 x i8], ptr %i.wh, i64 %i.wp ; 3 uses
  store i32 %i.acc, ptr %i.acw, align 4, !tbaa !86
  %.sroa.5.0..sroa_idx139.i = getelementptr inbounds nuw i8, ptr %i.acw, i64 4
  store i32 %i.wm, ptr %.sroa.5.0..sroa_idx139.i, align 4, !tbaa !86
  %.sroa.6.0..sroa_idx141.i = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  store i32 %i.ack, ptr %.sroa.6.0..sroa_idx141.i, align 4, !tbaa !86
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i

bb.by:                                            ; preds = %bb.bw
  %i.acx = add nsw i64 %i.wb, 1
  %i.acy = icmp sgt i64 %i.wb, 4611686018427387902
  %i.acz = shl nsw i64 %i.wb, 1
  %..i.i135.i = tail call i64 @llvm.smax.i64(i64 %i.acz, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.acx)
  %.0.i.i136.i = select i1 %i.acy, i64 9223372036854775807, i64 %..i.i135.i, !prof !109 ; 7 uses
  %i.ada = call fastcc noundef ptr @_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.0.i.i136.i) ; 8 uses
  %i.adb = getelementptr inbounds [12 x i8], ptr %i.ada, i64 %i.wp ; 3 uses
  store i32 %i.acc, ptr %i.adb, align 4, !tbaa !86
  %.sroa.5.0..sroa_idx.i246 = getelementptr inbounds nuw i8, ptr %i.adb, i64 4
  store i32 %i.wm, ptr %.sroa.5.0..sroa_idx.i246, align 4, !tbaa !86
  %.sroa.6.0..sroa_idx.i247 = getelementptr inbounds nuw i8, ptr %i.adb, i64 8
  store i32 %i.ack, ptr %.sroa.6.0..sroa_idx.i247, align 4, !tbaa !86
  store i64 %.val168.i, ptr %6, align 8, !tbaa !116
  store i64 %.0.i.i136.i, ptr %i.bo, align 8, !tbaa !115
  tail call void @_Z6rcFreePv(ptr noundef %i.wc) #8
  store ptr %i.ada, ptr %i.qe, align 8, !tbaa !114
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i

_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i: ; preds = %bb.by, %bb.bx, %bb.bv, %bb.bu, %bb.bt, %.thread.3.i
  %i.adc = phi i64 [ %.0.i.i136.i, %bb.by ], [ %i.vy, %bb.bx ], [ %i.vy, %bb.bt ], [ %i.vy, %bb.bv ], [ %i.vy, %bb.bu ], [ %i.vy, %.thread.3.i ] ; 5 uses
  %i.add = phi i64 [ %.0.i.i136.i, %bb.by ], [ %i.vz, %bb.bx ], [ %i.vz, %bb.bt ], [ %i.vz, %bb.bv ], [ %i.vz, %bb.bu ], [ %i.vz, %.thread.3.i ] ; 5 uses
  %i.ade = phi i64 [ %.0.i.i136.i, %bb.by ], [ %i.wa, %bb.bx ], [ %i.wa, %bb.bt ], [ %i.wa, %bb.bv ], [ %i.wa, %bb.bu ], [ %i.wa, %.thread.3.i ] ; 11 uses
  %i.adf = phi i64 [ %.0.i.i136.i, %bb.by ], [ %i.wb, %bb.bx ], [ %i.wb, %bb.bt ], [ %i.wb, %bb.bv ], [ %i.wb, %bb.bu ], [ %i.wb, %.thread.3.i ] ; 4 uses
  %i.adg = phi ptr [ %i.ada, %bb.by ], [ %i.wc, %bb.bx ], [ %i.wc, %bb.bt ], [ %i.wc, %bb.bv ], [ %i.wc, %bb.bu ], [ %i.wc, %.thread.3.i ] ; 6 uses
  %i.adh = phi i64 [ %.0.i.i136.i, %bb.by ], [ %i.wb, %bb.bx ], [ %i.wd, %bb.bt ], [ %i.wd, %bb.bv ], [ %i.wd, %bb.bu ], [ %i.wd, %.thread.3.i ] ; 4 uses
  %.val168.i278 = phi i64 [ %.val168.i, %bb.by ], [ %.val168.i, %bb.bx ], [ %i.wp, %bb.bt ], [ %i.wp, %bb.bv ], [ %i.wp, %bb.bu ], [ %i.wp, %.thread.3.i ] ; 9 uses
  %i.adi = phi ptr [ %i.ada, %bb.by ], [ %i.we, %bb.bx ], [ %i.we, %bb.bt ], [ %i.we, %bb.bv ], [ %i.we, %bb.bu ], [ %i.we, %.thread.3.i ] ; 5 uses
  %i.adj = phi ptr [ %i.ada, %bb.by ], [ %i.wf, %bb.bx ], [ %i.wf, %bb.bt ], [ %i.wf, %bb.bv ], [ %i.wf, %bb.bu ], [ %i.wf, %.thread.3.i ] ; 5 uses
  %i.adk = phi ptr [ %i.ada, %bb.by ], [ %i.wg, %bb.bx ], [ %i.wg, %bb.bt ], [ %i.wg, %bb.bv ], [ %i.wg, %bb.bu ], [ %i.wg, %.thread.3.i ] ; 8 uses
  %i.adl = phi ptr [ %i.ada, %bb.by ], [ %i.wh, %bb.bx ], [ %i.wh, %bb.bt ], [ %i.wh, %bb.bv ], [ %i.wh, %bb.bu ], [ %i.wh, %.thread.3.i ] ; 4 uses
  %.val134174.i = phi ptr [ %i.ada, %bb.by ], [ %i.wh, %bb.bx ], [ %.val134.i, %bb.bt ], [ %.val134.i, %bb.bv ], [ %.val134.i, %bb.bu ], [ %.val134.i, %.thread.3.i ] ; 4 uses
  %i.adm = load i32, ptr %i.wt, align 4
  %i.adn = lshr i32 %i.adm, 6
  %i.ado = and i32 %i.adn, 63                     ; 2 uses
  %.not129.1.i = icmp eq i32 %i.ado, 63
  br i1 %.not129.1.i, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i, label %bb.bz

bb.bz:                                            ; preds = %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i
  %i.adp = add nsw i32 %i.wm, 1                   ; 3 uses
  %i.adq = load ptr, ptr %i.qb, align 8, !tbaa !88
  %i.adr = mul nsw i32 %i.adp, %i.vk
  %i.ads = add nsw i32 %i.adr, %i.wk
  %i.adt = sext i32 %i.ads to i64
  %i.adu = getelementptr inbounds [4 x i8], ptr %i.adq, i64 %i.adt
  %i.adv = load i32, ptr %i.adu, align 4
  %i.adw = and i32 %i.adv, 16777215
  %i.adx = add nuw nsw i32 %i.adw, %i.ado         ; 3 uses
  %i.ady = load ptr, ptr %i.qc, align 8, !tbaa !73
  %i.adz = zext nneg i32 %i.adx to i64            ; 4 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ady, i64 %i.adz
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !74
  %.not130.1.i = icmp eq i8 %i.aeb, %i.vn
  br i1 %.not130.1.i, label %bb.ca, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i

bb.ca:                                            ; preds = %bb.bz
  %i.aec = load ptr, ptr %i.qd, align 8, !tbaa !67
  %i.aed = getelementptr inbounds nuw [2 x i8], ptr %i.aec, i64 %i.adz
  %i.aee = load i16, ptr %i.aed, align 2, !tbaa !71
  %.not131.1.i = icmp ult i16 %i.aee, %i.uw
  br i1 %.not131.1.i, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.aef = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.adz ; 2 uses
  %i.aeg = load i16, ptr %i.aef, align 2, !tbaa !71
  %i.aeh = icmp eq i16 %i.aeg, 0
  br i1 %i.aeh, label %bb.cc, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i

bb.cc:                                            ; preds = %bb.cb
  store i16 %.2122283, ptr %i.aef, align 2, !tbaa !71
  %i.aei = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.adz
  store i16 0, ptr %i.aei, align 2, !tbaa !71
  %i.aej = icmp slt i64 %.val168.i278, %i.ade
  br i1 %i.aej, label %bb.ce, label %bb.cd, !prof !107

bb.cd:                                            ; preds = %bb.cc
  %i.aek = add nsw i64 %i.ade, 1
  %i.ael = icmp sgt i64 %i.ade, 4611686018427387902
  %i.aem = shl nsw i64 %i.ade, 1
  %..i.i135.1.i = tail call i64 @llvm.smax.i64(i64 %i.aem, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.aek)
  %.0.i.i136.1.i = select i1 %i.ael, i64 9223372036854775807, i64 %..i.i135.1.i, !prof !109 ; 7 uses
  %i.aen = call fastcc noundef ptr @_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.0.i.i136.1.i) ; 8 uses
  %i.aeo = getelementptr inbounds [12 x i8], ptr %i.aen, i64 %.val168.i278 ; 3 uses
  store i32 %i.wk, ptr %i.aeo, align 4, !tbaa !86
  %.sroa.5.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %i.aeo, i64 4
  store i32 %i.adp, ptr %.sroa.5.0..sroa_idx.1.i, align 4, !tbaa !86
  %.sroa.6.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  store i32 %i.adx, ptr %.sroa.6.0..sroa_idx.1.i, align 4, !tbaa !86
  %i.aep = add nuw nsw i64 %.val168.i278, 1       ; 2 uses
  store i64 %i.aep, ptr %6, align 8, !tbaa !116
  store i64 %.0.i.i136.1.i, ptr %i.bo, align 8, !tbaa !115
  tail call void @_Z6rcFreePv(ptr noundef %i.adg) #8
  store ptr %i.aen, ptr %i.qe, align 8, !tbaa !114
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i

bb.ce:                                            ; preds = %bb.cc
  %i.aeq = add nuw nsw i64 %.val168.i278, 1       ; 2 uses
  store i64 %i.aeq, ptr %6, align 8, !tbaa !116
  %i.aer = getelementptr inbounds [12 x i8], ptr %i.adk, i64 %.val168.i278 ; 3 uses
  store i32 %i.wk, ptr %i.aer, align 4, !tbaa !86
  %.sroa.5.0..sroa_idx139.1.i = getelementptr inbounds nuw i8, ptr %i.aer, i64 4
  store i32 %i.adp, ptr %.sroa.5.0..sroa_idx139.1.i, align 4, !tbaa !86
  %.sroa.6.0..sroa_idx141.1.i = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  store i32 %i.adx, ptr %.sroa.6.0..sroa_idx141.1.i, align 4, !tbaa !86
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i

_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i: ; preds = %bb.ce, %bb.cd, %bb.cb, %bb.ca, %bb.bz, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i
  %i.aes = phi i64 [ %i.adc, %bb.ce ], [ %.0.i.i136.1.i, %bb.cd ], [ %i.adc, %bb.cb ], [ %i.adc, %bb.ca ], [ %i.adc, %bb.bz ], [ %i.adc, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 5 uses
  %i.aet = phi i64 [ %i.add, %bb.ce ], [ %.0.i.i136.1.i, %bb.cd ], [ %i.add, %bb.cb ], [ %i.add, %bb.ca ], [ %i.add, %bb.bz ], [ %i.add, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 12 uses
  %i.aeu = phi i64 [ %i.ade, %bb.ce ], [ %.0.i.i136.1.i, %bb.cd ], [ %i.ade, %bb.cb ], [ %i.ade, %bb.ca ], [ %i.ade, %bb.bz ], [ %i.ade, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 4 uses
  %i.aev = phi i64 [ %i.ade, %bb.ce ], [ %.0.i.i136.1.i, %bb.cd ], [ %i.adf, %bb.cb ], [ %i.adf, %bb.ca ], [ %i.adf, %bb.bz ], [ %i.adf, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 4 uses
  %i.aew = phi ptr [ %i.adg, %bb.ce ], [ %i.aen, %bb.cd ], [ %i.adg, %bb.cb ], [ %i.adg, %bb.ca ], [ %i.adg, %bb.bz ], [ %i.adg, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 6 uses
  %i.aex = phi i64 [ %i.ade, %bb.ce ], [ %.0.i.i136.1.i, %bb.cd ], [ %i.adh, %bb.cb ], [ %i.adh, %bb.ca ], [ %i.adh, %bb.bz ], [ %i.adh, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 4 uses
  %.val168.i279 = phi i64 [ %i.aeq, %bb.ce ], [ %i.aep, %bb.cd ], [ %.val168.i278, %bb.cb ], [ %.val168.i278, %bb.ca ], [ %.val168.i278, %bb.bz ], [ %.val168.i278, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 9 uses
  %i.aey = phi ptr [ %i.adi, %bb.ce ], [ %i.aen, %bb.cd ], [ %i.adi, %bb.cb ], [ %i.adi, %bb.ca ], [ %i.adi, %bb.bz ], [ %i.adi, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 5 uses
  %i.aez = phi ptr [ %i.adj, %bb.ce ], [ %i.aen, %bb.cd ], [ %i.adj, %bb.cb ], [ %i.adj, %bb.ca ], [ %i.adj, %bb.bz ], [ %i.adj, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 9 uses
  %i.afa = phi ptr [ %i.adk, %bb.ce ], [ %i.aen, %bb.cd ], [ %i.adk, %bb.cb ], [ %i.adk, %bb.ca ], [ %i.adk, %bb.bz ], [ %i.adk, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 4 uses
  %i.afb = phi ptr [ %i.adk, %bb.ce ], [ %i.aen, %bb.cd ], [ %i.adl, %bb.cb ], [ %i.adl, %bb.ca ], [ %i.adl, %bb.bz ], [ %i.adl, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 4 uses
  %.val134173.i = phi ptr [ %i.adk, %bb.ce ], [ %i.aen, %bb.cd ], [ %.val134174.i, %bb.cb ], [ %.val134174.i, %bb.ca ], [ %.val134174.i, %bb.bz ], [ %.val134174.i, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 4 uses
  %i.afc = load i32, ptr %i.wt, align 4
  %i.afd = lshr i32 %i.afc, 12
  %i.afe = and i32 %i.afd, 63                     ; 2 uses
  %.not129.2.i = icmp eq i32 %i.afe, 63
  br i1 %.not129.2.i, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i, label %bb.cf

bb.cf:                                            ; preds = %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i
  %i.aff = add nsw i32 %i.wk, 1                   ; 3 uses
  %i.afg = load ptr, ptr %i.qb, align 8, !tbaa !88
  %i.afh = mul nsw i32 %i.wm, %i.vk
  %i.afi = add nsw i32 %i.afh, %i.aff
  %i.afj = sext i32 %i.afi to i64
  %i.afk = getelementptr inbounds [4 x i8], ptr %i.afg, i64 %i.afj
  %i.afl = load i32, ptr %i.afk, align 4
  %i.afm = and i32 %i.afl, 16777215
  %i.afn = add nuw nsw i32 %i.afm, %i.afe         ; 3 uses
  %i.afo = load ptr, ptr %i.qc, align 8, !tbaa !73
  %i.afp = zext nneg i32 %i.afn to i64            ; 4 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 %i.afp
  %i.afr = load i8, ptr %i.afq, align 1, !tbaa !74
  %.not130.2.i = icmp eq i8 %i.afr, %i.vn
  br i1 %.not130.2.i, label %bb.cg, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i

bb.cg:                                            ; preds = %bb.cf
  %i.afs = load ptr, ptr %i.qd, align 8, !tbaa !67
  %i.aft = getelementptr inbounds nuw [2 x i8], ptr %i.afs, i64 %i.afp
  %i.afu = load i16, ptr %i.aft, align 2, !tbaa !71
  %.not131.2.i = icmp ult i16 %i.afu, %i.uw
  br i1 %.not131.2.i, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.afv = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.afp ; 2 uses
  %i.afw = load i16, ptr %i.afv, align 2, !tbaa !71
  %i.afx = icmp eq i16 %i.afw, 0
  br i1 %i.afx, label %bb.ci, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i

bb.ci:                                            ; preds = %bb.ch
  store i16 %.2122283, ptr %i.afv, align 2, !tbaa !71
  %i.afy = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.afp
  store i16 0, ptr %i.afy, align 2, !tbaa !71
  %i.afz = icmp slt i64 %.val168.i279, %i.aet
  br i1 %i.afz, label %bb.ck, label %bb.cj, !prof !107

bb.cj:                                            ; preds = %bb.ci
  %i.aga = add nsw i64 %i.aet, 1
  %i.agb = icmp sgt i64 %i.aet, 4611686018427387902
  %i.agc = shl nsw i64 %i.aet, 1
  %..i.i135.2.i = tail call i64 @llvm.smax.i64(i64 %i.agc, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.aga)
  %.0.i.i136.2.i = select i1 %i.agb, i64 9223372036854775807, i64 %..i.i135.2.i, !prof !109 ; 7 uses
  %i.agd = call fastcc noundef ptr @_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.0.i.i136.2.i) ; 8 uses
  %i.age = getelementptr inbounds [12 x i8], ptr %i.agd, i64 %.val168.i279 ; 3 uses
  store i32 %i.aff, ptr %i.age, align 4, !tbaa !86
  %.sroa.5.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %i.age, i64 4
  store i32 %i.wm, ptr %.sroa.5.0..sroa_idx.2.i, align 4, !tbaa !86
  %.sroa.6.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  store i32 %i.afn, ptr %.sroa.6.0..sroa_idx.2.i, align 4, !tbaa !86
  %i.agf = add nuw nsw i64 %.val168.i279, 1       ; 2 uses
  store i64 %i.agf, ptr %6, align 8, !tbaa !116
  store i64 %.0.i.i136.2.i, ptr %i.bo, align 8, !tbaa !115
  tail call void @_Z6rcFreePv(ptr noundef %i.aew) #8
  store ptr %i.agd, ptr %i.qe, align 8, !tbaa !114
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i

bb.ck:                                            ; preds = %bb.ci
  %i.agg = add nuw nsw i64 %.val168.i279, 1       ; 2 uses
  store i64 %i.agg, ptr %6, align 8, !tbaa !116
  %i.agh = getelementptr inbounds [12 x i8], ptr %i.aez, i64 %.val168.i279 ; 3 uses
  store i32 %i.aff, ptr %i.agh, align 4, !tbaa !86
  %.sroa.5.0..sroa_idx139.2.i = getelementptr inbounds nuw i8, ptr %i.agh, i64 4
  store i32 %i.wm, ptr %.sroa.5.0..sroa_idx139.2.i, align 4, !tbaa !86
end_hunk_3
begin_hunk_4_@_Z19rcBuildLayerRegionsP9rcContextR20rcCompactHeightfieldii:bb.a
  br i1 %i.mp, label %pred.store.if686, label %pred.store.continue687

pred.store.if686:                                 ; preds = %pred.store.continue685
  %i.mq = getelementptr [2 x i8], ptr %i.n, i64 %i.ln
  %i.mr = getelementptr i8, ptr %i.mq, i64 16
  store i16 -32764, ptr %i.mr, align 2, !tbaa !71, !alias.scope !309, !noalias !308
  br label %pred.store.continue687

pred.store.continue687:                           ; preds = %pred.store.if686, %pred.store.continue685
  %i.ms = extractelement <8 x i1> %i.lr, i64 1
  br i1 %i.ms, label %pred.store.if688, label %pred.store.continue689

pred.store.if688:                                 ; preds = %pred.store.continue687
  %i.mt = getelementptr [2 x i8], ptr %i.n, i64 %i.ln
  %i.mu = getelementptr i8, ptr %i.mt, i64 18
  store i16 -32764, ptr %i.mu, align 2, !tbaa !71, !alias.scope !309, !noalias !308
  br label %pred.store.continue689

pred.store.continue689:                           ; preds = %pred.store.if688, %pred.store.continue687
  %i.mv = extractelement <8 x i1> %i.lr, i64 2
  br i1 %i.mv, label %pred.store.if690, label %pred.store.continue691

pred.store.if690:                                 ; preds = %pred.store.continue689
  %i.mw = getelementptr [2 x i8], ptr %i.n, i64 %i.ln
  %i.mx = getelementptr i8, ptr %i.mw, i64 20
  store i16 -32764, ptr %i.mx, align 2, !tbaa !71, !alias.scope !309, !noalias !308
  br label %pred.store.continue691

pred.store.continue691:                           ; preds = %pred.store.if690, %pred.store.continue689
  %i.my = extractelement <8 x i1> %i.lr, i64 3
  br i1 %i.my, label %pred.store.if692, label %pred.store.continue693

pred.store.if692:                                 ; preds = %pred.store.continue691
  %i.mz = getelementptr [2 x i8], ptr %i.n, i64 %i.ln
  %i.na = getelementptr i8, ptr %i.mz, i64 22
  store i16 -32764, ptr %i.na, align 2, !tbaa !71, !alias.scope !309, !noalias !308
  br label %pred.store.continue693

pred.store.continue693:                           ; preds = %pred.store.if692, %pred.store.continue691
  %i.nb = extractelement <8 x i1> %i.lr, i64 4
  br i1 %i.nb, label %pred.store.if694, label %pred.store.continue695

pred.store.if694:                                 ; preds = %pred.store.continue693
  %i.nc = getelementptr [2 x i8], ptr %i.n, i64 %i.ln
  %i.nd = getelementptr i8, ptr %i.nc, i64 24
  store i16 -32764, ptr %i.nd, align 2, !tbaa !71, !alias.scope !309, !noalias !308
  br label %pred.store.continue695

pred.store.continue695:                           ; preds = %pred.store.if694, %pred.store.continue693
  %i.ne = extractelement <8 x i1> %i.lr, i64 5
  br i1 %i.ne, label %pred.store.if696, label %pred.store.continue697

pred.store.if696:                                 ; preds = %pred.store.continue695
  %i.nf = getelementptr [2 x i8], ptr %i.n, i64 %i.ln
  %i.ng = getelementptr i8, ptr %i.nf, i64 26
  store i16 -32764, ptr %i.ng, align 2, !tbaa !71, !alias.scope !309, !noalias !308
  br label %pred.store.continue697

pred.store.continue697:                           ; preds = %pred.store.if696, %pred.store.continue695
  %i.nh = extractelement <8 x i1> %i.lr, i64 6
  br i1 %i.nh, label %pred.store.if698, label %pred.store.continue699

pred.store.if698:                                 ; preds = %pred.store.continue697
  %i.ni = getelementptr [2 x i8], ptr %i.n, i64 %i.ln
  %i.nj = getelementptr i8, ptr %i.ni, i64 28
  store i16 -32764, ptr %i.nj, align 2, !tbaa !71, !alias.scope !309, !noalias !308
  br label %pred.store.continue699

pred.store.continue699:                           ; preds = %pred.store.if698, %pred.store.continue697
  %i.nk = extractelement <8 x i1> %i.lr, i64 7
  br i1 %i.nk, label %pred.store.if700, label %pred.store.continue701

pred.store.if700:                                 ; preds = %pred.store.continue699
  %i.nl = getelementptr [2 x i8], ptr %i.n, i64 %i.ln
  %i.nm = getelementptr i8, ptr %i.nl, i64 30
  store i16 -32764, ptr %i.nm, align 2, !tbaa !71, !alias.scope !309, !noalias !308
  br label %pred.store.continue701

pred.store.continue701:                           ; preds = %pred.store.if700, %pred.store.continue699
  %index.next702 = add nuw i64 %index667, 16      ; 2 uses
  %i.nn = icmp eq i64 %index.next702, %n.vec665
  br i1 %i.nn, label %middle.block703, label %vector.body666, !llvm.loop !270

middle.block703:                                  ; preds = %pred.store.continue701
  %cmp.n704 = icmp eq i64 %i.lh, %n.vec665
  br i1 %cmp.n704, label %._crit_edge.i246, label %vec.epilog.iter.check708

vec.epilog.iter.check708:                         ; preds = %middle.block703
  %min.epilog.iters.check709 = icmp eq i64 %i.ll, 0
  br i1 %min.epilog.iters.check709, label %vec.epilog.scalar.ph707.preheader, label %vec.epilog.ph710, !prof !77

vec.epilog.ph710:                                 ; preds = %vector.main.loop.iter.check662, %vec.epilog.iter.check708
  %vec.epilog.resume.val705 = phi i64 [ %n.vec665, %vec.epilog.iter.check708 ], [ 0, %vector.main.loop.iter.check662 ]
  %n.vec711 = and i64 %i.lh, -4                   ; 3 uses
  %i.no = add nsw i64 %n.vec711, %i.le
  br label %vec.epilog.vector.body712

vec.epilog.vector.body712:                        ; preds = %pred.store.continue722, %vec.epilog.ph710
  %index713 = phi i64 [ %vec.epilog.resume.val705, %vec.epilog.ph710 ], [ %index.next723, %pred.store.continue722 ] ; 2 uses
  %i.np = add nuw i64 %index713, %i.le            ; 5 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.np
  %wide.load714 = load <4 x i8>, ptr %i.nq, align 1, !tbaa !74, !alias.scope !308
  %i.nr = icmp ne <4 x i8> %wide.load714, zeroinitializer ; 4 uses
  %i.ns = extractelement <4 x i1> %i.nr, i64 0
  br i1 %i.ns, label %pred.store.if715, label %pred.store.continue716

pred.store.if715:                                 ; preds = %vec.epilog.vector.body712
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.np
  store i16 -32764, ptr %i.nt, align 2, !tbaa !71, !alias.scope !309, !noalias !308
  br label %pred.store.continue716

pred.store.continue716:                           ; preds = %pred.store.if715, %vec.epilog.vector.body712
  %i.nu = extractelement <4 x i1> %i.nr, i64 1
  br i1 %i.nu, label %pred.store.if717, label %pred.store.continue718

pred.store.if717:                                 ; preds = %pred.store.continue716
  %i.nv = getelementptr [2 x i8], ptr %i.n, i64 %i.np
  %i.nw = getelementptr i8, ptr %i.nv, i64 2
  store i16 -32764, ptr %i.nw, align 2, !tbaa !71, !alias.scope !309, !noalias !308
  br label %pred.store.continue718

pred.store.continue718:                           ; preds = %pred.store.if717, %pred.store.continue716
  %i.nx = extractelement <4 x i1> %i.nr, i64 2
  br i1 %i.nx, label %pred.store.if719, label %pred.store.continue720

pred.store.if719:                                 ; preds = %pred.store.continue718
  %i.ny = getelementptr [2 x i8], ptr %i.n, i64 %i.np
  %i.nz = getelementptr i8, ptr %i.ny, i64 4
  store i16 -32764, ptr %i.nz, align 2, !tbaa !71, !alias.scope !309, !noalias !308
  br label %pred.store.continue720

pred.store.continue720:                           ; preds = %pred.store.if719, %pred.store.continue718
  %i.oa = extractelement <4 x i1> %i.nr, i64 3
  br i1 %i.oa, label %pred.store.if721, label %pred.store.continue722

pred.store.if721:                                 ; preds = %pred.store.continue720
  %i.ob = getelementptr [2 x i8], ptr %i.n, i64 %i.np
  %i.oc = getelementptr i8, ptr %i.ob, i64 6
  store i16 -32764, ptr %i.oc, align 2, !tbaa !71, !alias.scope !309, !noalias !308
  br label %pred.store.continue722

pred.store.continue722:                           ; preds = %pred.store.if721, %pred.store.continue720
  %index.next723 = add nuw i64 %index713, 4       ; 2 uses
  %i.od = icmp eq i64 %index.next723, %n.vec711
  br i1 %i.od, label %vec.epilog.middle.block724, label %vec.epilog.vector.body712, !llvm.loop !271

vec.epilog.middle.block724:                       ; preds = %pred.store.continue722
  %cmp.n725 = icmp eq i64 %i.lh, %n.vec711
  br i1 %cmp.n725, label %._crit_edge.i246, label %vec.epilog.scalar.ph707.preheader

vec.epilog.scalar.ph707.preheader:                ; preds = %iter.check706, %vector.memcheck651, %vec.epilog.iter.check708, %vec.epilog.middle.block724
  %indvars.iv.i243.ph = phi i64 [ %i.le, %iter.check706 ], [ %i.le, %vector.memcheck651 ], [ %i.lm, %vec.epilog.iter.check708 ], [ %i.no, %vec.epilog.middle.block724 ]
  br label %vec.epilog.scalar.ph707

._crit_edge.i246:                                 ; preds = %bb.s, %middle.block703, %vec.epilog.middle.block724, %bb.q
  %indvars.iv.next34.i247 = add nuw nsw i64 %indvars.iv33.i239, 1 ; 2 uses
  %exitcond.not.i248 = icmp eq i64 %indvars.iv.next34.i247, %wide.trip.count.i235
  br i1 %exitcond.not.i248, label %._crit_edge28.i249, label %bb.q

vec.epilog.scalar.ph707:                          ; preds = %vec.epilog.scalar.ph707.preheader, %bb.s
  %indvars.iv.i243 = phi i64 [ %indvars.iv.next.i245, %bb.s ], [ %indvars.iv.i243.ph, %vec.epilog.scalar.ph707.preheader ] ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ld, i64 %indvars.iv.i243
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !74
  %.not.i244 = icmp eq i8 %i.of, 0
  br i1 %.not.i244, label %bb.s, label %bb.r

bb.r:                                             ; preds = %vec.epilog.scalar.ph707
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.i243
  store i16 -32764, ptr %i.og, align 2, !tbaa !71
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %vec.epilog.scalar.ph707
  %indvars.iv.next.i245 = add nuw nsw i64 %indvars.iv.i243, 1 ; 2 uses
  %i.oh = icmp samesign ult i64 %indvars.iv.next.i245, %i.lf
  br i1 %i.oh, label %vec.epilog.scalar.ph707, label %._crit_edge.i246, !llvm.loop !272

_ZL15paintRectRegioniiiitR20rcCompactHeightfieldPt.exit252: ; preds = %._crit_edge28.i249, %bb.g, %.preheader.lr.ph.i, %bb.f
  %.0174 = phi i16 [ 1, %bb.f ], [ 5, %.preheader.lr.ph.i ], [ 5, %bb.g ], [ 5, %._crit_edge28.i249 ] ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %2, ptr %i.oi, align 4, !tbaa !80
  %i.oj = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 1024, i32 noundef 1) #8 ; 2 uses
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  %i.ok = sub nsw i32 %i.i, %2                    ; 2 uses
  %i.ol = icmp slt i32 %2, %i.ok
  br i1 %i.ol, label %.lr.ph345, label %._crit_edge346

.lr.ph345:                                        ; preds = %_ZL15paintRectRegioniiiitR20rcCompactHeightfieldPt.exit252
  %i.om = sub i32 %i.g, %2                        ; 3 uses
  %i.on = icmp slt i32 %2, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.or = sext i32 %2 to i64                      ; 3 uses
  %i.os = sext i32 %i.g to i64                    ; 3 uses
  %wide.trip.count = sext i32 %i.om to i64
  %wide.trip.count365 = sext i32 %i.om to i64
  br label %bb.cc

._crit_edge346:                                   ; preds = %._crit_edge339, %_ZL15paintRectRegioniiiitR20rcCompactHeightfieldPt.exit252
  %.sroa.11.0.lcssa = phi ptr [ %i.oj, %_ZL15paintRectRegioniiiitR20rcCompactHeightfieldPt.exit252 ], [ %.sroa.11.2, %._crit_edge339 ]
  %.1175.lcssa = phi i16 [ %.0174, %_ZL15paintRectRegioniiiitR20rcCompactHeightfieldPt.exit252 ], [ %.2176.lcssa443, %._crit_edge339 ] ; 7 uses
  %i.ot = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %bb.t, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit253

bb.t:                                             ; preds = %._crit_edge346
  %i.ov = load ptr, ptr %0, align 8, !tbaa !21
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 40
  %i.ox = load ptr, ptr %i.ow, align 8
  tail call void %i.ox(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 24) #8, !call_target !27, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit253

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit253: ; preds = %._crit_edge346, %bb.t
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  store i16 %.1175.lcssa, ptr %i.oy, align 2, !tbaa !81
  %i.oz = load i32, ptr %1, align 8, !tbaa !69    ; 3 uses
  %i.pa = load i32, ptr %i.h, align 4, !tbaa !70  ; 2 uses
  %i.pb = zext i16 %.1175.lcssa to i32            ; 2 uses
  %i.pc = add nuw nsw i32 %i.pb, 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.pd = zext nneg i32 %i.pc to i64              ; 14 uses
  %i.pe = shl nuw nsw i64 %i.pd, 6
  %i.pf = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.pe, i32 noundef 1) #8 ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.pf, null           ; 3 uses
  br i1 %.not.i.i.i, label %_ZN12rcVectorBaseI8rcRegionL11rcAllocHint1EE13destroy_rangeEll.exit.i.i, label %.thread.i

_ZN12rcVectorBaseI8rcRegionL11rcAllocHint1EE13destroy_rangeEll.exit.i.i: ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit253
  %i.pg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ph = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  store ptr %i.pf, ptr %i.ph, align 8, !tbaa !98
  store i64 %i.pd, ptr %i.pg, align 8, !tbaa !99
  %i.pi = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.pj = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.pk = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.pl = getelementptr inbounds nuw i8, ptr %5, i64 14
  %i.pm = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.pn = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %bb.ar

.thread.i:                                        ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit253
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.10, i32 noundef %i.pc) #8
  br label %_ZL26mergeAndFilterLayerRegionsP9rcContextiRtR20rcCompactHeightfieldPt.exit

_ZN12rcTempVectorIiEC2El.exit.i:                  ; preds = %bb.ar
  %i.po = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 128, i32 noundef 1) #8 ; 3 uses
  call void @_Z6rcFreePv(ptr noundef null) #8
  %i.pp = icmp sgt i32 %i.pa, 0
  br i1 %i.pp, label %.preheader340.lr.ph.i, label %.preheader336.i

.preheader340.lr.ph.i:                            ; preds = %_ZN12rcTempVectorIiEC2El.exit.i
  %i.pq = icmp sgt i32 %i.oz, 0
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 88
  br i1 %i.pq, label %.preheader340.us.preheader.i, label %.preheader336.i

.preheader340.us.preheader.i:                     ; preds = %.preheader340.lr.ph.i
  %i.pu = zext nneg i32 %i.oz to i64              ; 2 uses
  %wide.trip.count419.i = zext nneg i32 %i.pa to i64
  br label %.preheader340.us.i

.preheader340.us.i:                               ; preds = %._crit_edge359.us.i, %.preheader340.us.preheader.i
  %indvars.iv416.i = phi i64 [ 0, %.preheader340.us.preheader.i ], [ %indvars.iv.next417.i, %._crit_edge359.us.i ] ; 3 uses
  %.sroa.16.0363.us.i = phi ptr [ %i.po, %.preheader340.us.preheader.i ], [ %.sroa.16.2.lcssa.us528.i, %._crit_edge359.us.i ]
  %.sroa.13.0362.us.i = phi i64 [ 32, %.preheader340.us.preheader.i ], [ %.sroa.13.2.lcssa.us527.i, %._crit_edge359.us.i ]
  %i.pv = mul nuw nsw i64 %indvars.iv416.i, %i.pu
  %i.pw = trunc nuw nsw i64 %indvars.iv416.i to i32
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.us.i, %.preheader340.us.i
  %indvars.iv412.i.a = phi i64 [ 0, %.preheader340.us.i ], [ %indvars.iv.next413.i, %._crit_edge.us.i ] ; 3 uses
  %.sroa.16.1356.us.i = phi ptr [ %.sroa.16.0363.us.i, %.preheader340.us.i ], [ %.sroa.16.2.lcssa.us528.i, %._crit_edge.us.i ] ; 2 uses
  %.sroa.13.1355.us.i = phi i64 [ %.sroa.13.0362.us.i, %.preheader340.us.i ], [ %.sroa.13.2.lcssa.us527.i, %._crit_edge.us.i ] ; 2 uses
  %i.px = load ptr, ptr %i.pr, align 8, !tbaa !88
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %indvars.iv412.i.a
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.pv
  %i.qa = load i32, ptr %i.pz, align 4            ; 2 uses
  %i.qb = lshr i32 %i.qa, 24                      ; 2 uses
  %.not.i257 = icmp eq i32 %i.qb, 0
  br i1 %.not.i257, label %._crit_edge.us.i, label %.lr.ph.us.preheader.i

.lr.ph.us.preheader.i:                            ; preds = %bb.u
  %i.qc = and i32 %i.qa, 16777215                 ; 2 uses
  %i.qd = add nuw nsw i32 %i.qc, %i.qb
  %i.qe = zext nneg i32 %i.qc to i64
  %i.qf = zext nneg i32 %i.qd to i64
  %i.qg = trunc nuw nsw i64 %indvars.iv412.i.a to i32
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.loopexit338.us.i, %.lr.ph.us.preheader.i
  %indvars.iv399.i.a = phi i64 [ %i.qe, %.lr.ph.us.preheader.i ], [ %indvars.iv.next400.i.a, %.loopexit338.us.i ] ; 4 uses
  %.sroa.16.2347.us.i = phi ptr [ %.sroa.16.1356.us.i, %.lr.ph.us.preheader.i ], [ %.sroa.16.3.us.i, %.loopexit338.us.i ] ; 11 uses
  %.sroa.13.2346.us.i = phi i64 [ %.sroa.13.1355.us.i, %.lr.ph.us.preheader.i ], [ %.sroa.13.3.us.i, %.loopexit338.us.i ] ; 6 uses
  %.sroa.0.0345.us.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %.sroa.0.1.us.i, %.loopexit338.us.i ] ; 12 uses
  %.sroa.16.2347.us.i785 = ptrtoaddr ptr %.sroa.16.2347.us.i to i64
  %i.qh = load ptr, ptr %i.ps, align 8, !tbaa !72
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %indvars.iv399.i.a ; 2 uses
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv399.i.a
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !71 ; 4 uses
  %i.ql = zext i16 %i.qk to i32                   ; 3 uses
  %7 = icmp ne i16 %i.qk, 0
  %.not215.us.i = icmp samesign ugt i32 %i.pc, %i.ql
  %or.cond.us.i = select i1 %7, i1 %.not215.us.i, i1 false
  br i1 %or.cond.us.i, label %bb.v, label %.loopexit338.us.i

bb.v:                                             ; preds = %.lr.ph.us.i
  %i.qm = load ptr, ptr %i.pt, align 8, !tbaa !73
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 %indvars.iv399.i.a
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !74
  %i.qp = zext i16 %i.qk to i64
  %i.qq = load ptr, ptr %i.ph, align 8, !tbaa !98
  %i.qr = getelementptr inbounds nuw [64 x i8], ptr %i.qq, i64 %i.qp ; 9 uses
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !102
  %i.qt = add nsw i32 %i.qs, 1
  store i32 %i.qt, ptr %i.qr, align 8, !tbaa !102
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 6
  store i8 %i.qo, ptr %i.qu, align 2, !tbaa !108
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qr, i64 12 ; 2 uses
  %i.qw = load i16, ptr %i.qv, align 4, !tbaa !104
  %i.qx = load i16, ptr %i.qi, align 4, !tbaa !310 ; 2 uses
  %i.qy = call noundef i16 @llvm.umin.i16(i16 %i.qw, i16 %i.qx)
  store i16 %i.qy, ptr %i.qv, align 4, !tbaa !104
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qr, i64 14 ; 2 uses
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !311
  %i.rb = call noundef i16 @llvm.umax.i16(i16 %i.ra, i16 %i.qx)
  store i16 %i.rb, ptr %i.qz, align 2, !tbaa !311
  %i.rc = icmp slt i64 %.sroa.0.0345.us.i, %.sroa.13.2346.us.i
  br i1 %i.rc, label %bb.x, label %bb.w, !prof !107

bb.w:                                             ; preds = %bb.v
  %i.rd = add nsw i64 %.sroa.13.2346.us.i, 1
  %i.re = icmp sgt i64 %.sroa.13.2346.us.i, 4611686018427387902
  %i.rf = shl nsw i64 %.sroa.13.2346.us.i, 1
  %..i.i.us.i = call i64 @llvm.smax.i64(i64 %i.rf, i64 %i.rd)
  %.0.i.i.us.i = select i1 %i.re, i64 9223372036854775807, i64 %..i.i.us.i, !prof !109 ; 2 uses
  %i.rg = shl i64 %.0.i.i.us.i, 2
  %i.rh = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.rg, i32 noundef 1) #8 ; 10 uses
  %.not.i270.us.i = icmp ne ptr %i.rh, null
  %i.ri = icmp sgt i64 %.sroa.0.0345.us.i, 0
  %or.cond327.us.i = select i1 %.not.i270.us.i, i1 %i.ri, i1 false
  br i1 %or.cond327.us.i, label %.lr.ph.i.i271.us.i.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.us.i

.lr.ph.i.i271.us.i.preheader:                     ; preds = %bb.w
  %i.rj = ptrtoaddr ptr %i.rh to i64
  %min.iters.check788 = icmp ult i64 %.sroa.0.0345.us.i, 8
  %i.rk = sub i64 %.sroa.16.2347.us.i785, %i.rj
  %diff.check786 = icmp ugt i64 %i.rk, -32
  %or.cond.a = select i1 %min.iters.check788, i1 true, i1 %diff.check786
  br i1 %or.cond.a, label %.lr.ph.i.i271.us.i.preheader886, label %vector.ph789

vector.ph789:                                     ; preds = %.lr.ph.i.i271.us.i.preheader
  %n.vec790 = and i64 %.sroa.0.0345.us.i, 9223372036854775800 ; 3 uses
  br label %vector.body791

vector.body791:                                   ; preds = %vector.body791, %vector.ph789
  %index792 = phi i64 [ 0, %vector.ph789 ], [ %index.next795, %vector.body791 ] ; 3 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %index792 ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.2347.us.i, i64 %index792 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %wide.load793 = load <4 x i32>, ptr %i.rm, align 4, !tbaa !86
  %wide.load794 = load <4 x i32>, ptr %i.rn, align 4, !tbaa !86
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  store <4 x i32> %wide.load793, ptr %i.rl, align 4, !tbaa !86
  store <4 x i32> %wide.load794, ptr %i.ro, align 4, !tbaa !86
  %index.next795 = add nuw i64 %index792, 8       ; 2 uses
  %i.rp = icmp eq i64 %index.next795, %n.vec790
  br i1 %i.rp, label %middle.block796, label %vector.body791, !llvm.loop !273

middle.block796:                                  ; preds = %vector.body791
  %cmp.n797 = icmp eq i64 %.sroa.0.0345.us.i, %n.vec790
  br i1 %cmp.n797, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.us.i, label %.lr.ph.i.i271.us.i.preheader886

.lr.ph.i.i271.us.i.preheader886:                  ; preds = %.lr.ph.i.i271.us.i.preheader, %middle.block796
  %.07.i.i.us.i.ph = phi i64 [ 0, %.lr.ph.i.i271.us.i.preheader ], [ %n.vec790, %middle.block796 ] ; 3 uses
  %xtraiter892 = and i64 %.sroa.0.0345.us.i, 3    ; 2 uses
  %lcmp.mod893.not = icmp eq i64 %xtraiter892, 0
  br i1 %lcmp.mod893.not, label %.lr.ph.i.i271.us.i.prol.loopexit, label %.lr.ph.i.i271.us.i.prol

.lr.ph.i.i271.us.i.prol:                          ; preds = %.lr.ph.i.i271.us.i.preheader886, %.lr.ph.i.i271.us.i.prol
  %.07.i.i.us.i.prol = phi i64 [ %i.rt, %.lr.ph.i.i271.us.i.prol ], [ %.07.i.i.us.i.ph, %.lr.ph.i.i271.us.i.preheader886 ] ; 3 uses
  %prol.iter894 = phi i64 [ %prol.iter894.next, %.lr.ph.i.i271.us.i.prol ], [ 0, %.lr.ph.i.i271.us.i.preheader886 ]
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %.07.i.i.us.i.prol
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.2347.us.i, i64 %.07.i.i.us.i.prol
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !86
  store i32 %i.rs, ptr %i.rq, align 4, !tbaa !86
  %i.rt = add nuw nsw i64 %.07.i.i.us.i.prol, 1   ; 2 uses
  %prol.iter894.next = add i64 %prol.iter894, 1   ; 2 uses
  %prol.iter894.cmp.not = icmp eq i64 %prol.iter894.next, %xtraiter892
  br i1 %prol.iter894.cmp.not, label %.lr.ph.i.i271.us.i.prol.loopexit, label %.lr.ph.i.i271.us.i.prol, !llvm.loop !274

.lr.ph.i.i271.us.i.prol.loopexit:                 ; preds = %.lr.ph.i.i271.us.i.prol, %.lr.ph.i.i271.us.i.preheader886
  %.07.i.i.us.i.unr = phi i64 [ %.07.i.i.us.i.ph, %.lr.ph.i.i271.us.i.preheader886 ], [ %i.rt, %.lr.ph.i.i271.us.i.prol ]
  %i.ru = sub nsw i64 %.07.i.i.us.i.ph, %.sroa.0.0345.us.i
  %i.rv = icmp ugt i64 %i.ru, -4
  br i1 %i.rv, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.us.i, label %.lr.ph.i.i271.us.i

.lr.ph.i.i271.us.i:                               ; preds = %.lr.ph.i.i271.us.i.prol.loopexit, %.lr.ph.i.i271.us.i
  %.07.i.i.us.i = phi i64 [ %i.sl, %.lr.ph.i.i271.us.i ], [ %.07.i.i.us.i.unr, %.lr.ph.i.i271.us.i.prol.loopexit ] ; 6 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %.07.i.i.us.i
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.2347.us.i, i64 %.07.i.i.us.i
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !86
  store i32 %i.ry, ptr %i.rw, align 4, !tbaa !86
  %i.rz = add nuw nsw i64 %.07.i.i.us.i, 1        ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.rz
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.2347.us.i, i64 %i.rz
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !86
  store i32 %i.sc, ptr %i.sa, align 4, !tbaa !86
  %i.sd = add nuw nsw i64 %.07.i.i.us.i, 2        ; 2 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.sd
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.2347.us.i, i64 %i.sd
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !86
  store i32 %i.sg, ptr %i.se, align 4, !tbaa !86
  %i.sh = add nuw nsw i64 %.07.i.i.us.i, 3        ; 2 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.sh
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.2347.us.i, i64 %i.sh
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !86
  store i32 %i.sk, ptr %i.si, align 4, !tbaa !86
  %i.sl = add nuw nsw i64 %.07.i.i.us.i, 4        ; 2 uses
  %exitcond.not.i.i272.us.i.3.a = icmp eq i64 %i.sl, %.sroa.0.0345.us.i
  br i1 %exitcond.not.i.i272.us.i.3.a, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.us.i, label %.lr.ph.i.i271.us.i, !llvm.loop !275

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.us.i: ; preds = %.lr.ph.i.i271.us.i.prol.loopexit, %.lr.ph.i.i271.us.i, %middle.block796, %bb.w
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %.sroa.0.0345.us.i
  store i32 %i.ql, ptr %i.sm, align 4, !tbaa !86
  call void @_Z6rcFreePv(ptr noundef %.sroa.16.2347.us.i) #8
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.us.i

bb.x:                                             ; preds = %bb.v
  %i.sn = getelementptr inbounds [4 x i8], ptr %.sroa.16.2347.us.i, i64 %.sroa.0.0345.us.i
  store i32 %i.ql, ptr %i.sn, align 4, !tbaa !86
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.us.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.us.i: ; preds = %bb.x, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.us.i
  %.sroa.13.4.us.i = phi i64 [ %.sroa.13.2346.us.i, %bb.x ], [ %.0.i.i.us.i, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.us.i ]
  %.sroa.16.4.us.i = phi ptr [ %.sroa.16.2347.us.i, %bb.x ], [ %i.rh, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.us.i ]
  %i.so = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.sp = getelementptr inbounds nuw i8, ptr %i.qr, i64 16 ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.qr, i64 32 ; 4 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.qr, i64 24 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.qr, i64 10
  br label %bb.y

bb.y:                                             ; preds = %bb.ag, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.us.i
  %indvars.iv.i258 = phi i64 [ %indvars.iv.next.i259, %bb.ag ], [ 0, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.us.i ] ; 4 uses
  %i.st = load i32, ptr %i.so, align 4
  %i.su = and i32 %i.st, 16777215
  %i.sv = trunc i64 %indvars.iv.i258 to i32
  %i.sw = mul i32 %i.sv, 6
  %i.sx = lshr i32 %i.su, %i.sw
  %i.sy = and i32 %i.sx, 63                       ; 2 uses
  %.not224.us.i = icmp eq i32 %i.sy, 63
  br i1 %.not224.us.i, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetXiE6offset, i64 %indvars.iv.i258
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !86
  %i.tb = add nsw i32 %i.ta, %i.qg
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetYiE6offset, i64 %indvars.iv.i258
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !86
  %i.te = add nsw i32 %i.td, %i.pw
  %i.tf = load ptr, ptr %i.pr, align 8, !tbaa !88
  %i.tg = mul nsw i32 %i.te, %i.oz
  %i.th = add nsw i32 %i.tb, %i.tg
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.ti
  %i.tk = load i32, ptr %i.tj, align 4
  %i.tl = and i32 %i.tk, 16777215
  %i.tm = add nuw nsw i32 %i.tl, %i.sy
  %i.tn = zext nneg i32 %i.tm to i64
  %i.to = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.tn
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !71 ; 4 uses
  %i.tq = zext i16 %i.tp to i32                   ; 4 uses
  %.not217.us.i = icmp eq i16 %i.tp, 0
  %8 = icmp samesign ule i32 %i.pc, %i.tq
  %or.cond220.not321.us.i = select i1 %.not217.us.i, i1 true, i1 %8
  %.not227.us.i = icmp eq i16 %i.tp, %i.qk
  %or.cond230.us.i = or i1 %.not227.us.i, %or.cond220.not321.us.i
  br i1 %or.cond230.us.i, label %_ZL19addUniqueConnectionR8rcRegioni.exit.us.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.tr = load i64, ptr %i.sp, align 8, !tbaa !105 ; 5 uses
  %i.ts = icmp sgt i64 %i.tr, 0
  br i1 %i.ts, label %.lr.ph.i.us.i, label %._crit_edge.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.aa
  %i.tt = load ptr, ptr %i.sq, align 8, !tbaa !85
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.ac ] ; 2 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %indvars.iv.i.us.i
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !86
  %i.tw = icmp eq i32 %i.tv, %i.tq
  br i1 %i.tw, label %_ZL19addUniqueConnectionR8rcRegioni.exit.us.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %i.tr
  br i1 %exitcond.not.i.us.i, label %._crit_edge.i.us.i, label %bb.ab

._crit_edge.i.us.i:                               ; preds = %bb.ac, %bb.aa
  %i.tx = load i64, ptr %i.sr, align 8, !tbaa !106 ; 3 uses
  %i.ty = icmp slt i64 %i.tr, %i.tx
  br i1 %i.ty, label %bb.ae, label %bb.ad, !prof !107

bb.ad:                                            ; preds = %._crit_edge.i.us.i
  %i.tz = add nsw i64 %i.tx, 1
  %i.ua = shl nsw i64 %i.tx, 1
  %..i.i.i.us.i = call i64 @llvm.smax.i64(i64 %i.ua, i64 %i.tz) ; 2 uses
  %i.ub = shl i64 %..i.i.i.us.i, 2
  %i.uc = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.ub, i32 noundef 1) #8 ; 10 uses
  %.not.i273.us.i = icmp ne ptr %i.uc, null
  %.pre.i = load i64, ptr %i.sp, align 8, !tbaa !105 ; 9 uses
  %.pre474.i.a = load ptr, ptr %i.sq, align 8, !tbaa !85 ; 8 uses
  %i.ud = icmp sgt i64 %.pre.i, 0
  %or.cond.i = select i1 %.not.i273.us.i, i1 %i.ud, i1 false
  br i1 %or.cond.i, label %.lr.ph.i.i274.us.i.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit277.us.i

.lr.ph.i.i274.us.i.preheader:                     ; preds = %bb.ad
  %.pre474.i770 = ptrtoaddr ptr %.pre474.i.a to i64
  %i.ue = ptrtoaddr ptr %i.uc to i64
  %min.iters.check773 = icmp ult i64 %.pre.i, 8
  %i.uf = sub i64 %.pre474.i770, %i.ue
  %diff.check771 = icmp ugt i64 %i.uf, -32
  %or.cond873 = select i1 %min.iters.check773, i1 true, i1 %diff.check771
  br i1 %or.cond873, label %.lr.ph.i.i274.us.i.preheader885, label %vector.ph774

vector.ph774:                                     ; preds = %.lr.ph.i.i274.us.i.preheader
  %n.vec775 = and i64 %.pre.i, 9223372036854775800 ; 3 uses
  br label %vector.body776

vector.body776:                                   ; preds = %vector.body776, %vector.ph774
  %index777 = phi i64 [ 0, %vector.ph774 ], [ %index.next780, %vector.body776 ] ; 3 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %index777 ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %.pre474.i.a, i64 %index777 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %wide.load778 = load <4 x i32>, ptr %i.uh, align 4, !tbaa !86
  %wide.load779 = load <4 x i32>, ptr %i.ui, align 4, !tbaa !86
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  store <4 x i32> %wide.load778, ptr %i.ug, align 4, !tbaa !86
  store <4 x i32> %wide.load779, ptr %i.uj, align 4, !tbaa !86
  %index.next780 = add nuw i64 %index777, 8       ; 2 uses
  %i.uk = icmp eq i64 %index.next780, %n.vec775
  br i1 %i.uk, label %middle.block781, label %vector.body776, !llvm.loop !276

middle.block781:                                  ; preds = %vector.body776
  %cmp.n782 = icmp eq i64 %.pre.i, %n.vec775
  br i1 %cmp.n782, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit277.us.i, label %.lr.ph.i.i274.us.i.preheader885

.lr.ph.i.i274.us.i.preheader885:                  ; preds = %.lr.ph.i.i274.us.i.preheader, %middle.block781
  %.07.i.i275.us.i.ph = phi i64 [ 0, %.lr.ph.i.i274.us.i.preheader ], [ %n.vec775, %middle.block781 ] ; 3 uses
  %xtraiter895 = and i64 %.pre.i, 3               ; 2 uses
  %lcmp.mod896.not = icmp eq i64 %xtraiter895, 0
  br i1 %lcmp.mod896.not, label %.lr.ph.i.i274.us.i.prol.loopexit, label %.lr.ph.i.i274.us.i.prol

.lr.ph.i.i274.us.i.prol:                          ; preds = %.lr.ph.i.i274.us.i.preheader885, %.lr.ph.i.i274.us.i.prol
  %.07.i.i275.us.i.prol = phi i64 [ %i.uo, %.lr.ph.i.i274.us.i.prol ], [ %.07.i.i275.us.i.ph, %.lr.ph.i.i274.us.i.preheader885 ] ; 3 uses
  %prol.iter897 = phi i64 [ %prol.iter897.next, %.lr.ph.i.i274.us.i.prol ], [ 0, %.lr.ph.i.i274.us.i.preheader885 ]
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %.07.i.i275.us.i.prol
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %.pre474.i.a, i64 %.07.i.i275.us.i.prol
  %i.un = load i32, ptr %i.um, align 4, !tbaa !86
  store i32 %i.un, ptr %i.ul, align 4, !tbaa !86
  %i.uo = add nuw nsw i64 %.07.i.i275.us.i.prol, 1 ; 2 uses
  %prol.iter897.next = add i64 %prol.iter897, 1   ; 2 uses
  %prol.iter897.cmp.not = icmp eq i64 %prol.iter897.next, %xtraiter895
  br i1 %prol.iter897.cmp.not, label %.lr.ph.i.i274.us.i.prol.loopexit, label %.lr.ph.i.i274.us.i.prol, !llvm.loop !277

.lr.ph.i.i274.us.i.prol.loopexit:                 ; preds = %.lr.ph.i.i274.us.i.prol, %.lr.ph.i.i274.us.i.preheader885
  %.07.i.i275.us.i.unr = phi i64 [ %.07.i.i275.us.i.ph, %.lr.ph.i.i274.us.i.preheader885 ], [ %i.uo, %.lr.ph.i.i274.us.i.prol ]
  %i.up = sub nsw i64 %.07.i.i275.us.i.ph, %.pre.i
  %i.uq = icmp ugt i64 %i.up, -4
  br i1 %i.uq, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit277.us.i, label %.lr.ph.i.i274.us.i

.lr.ph.i.i274.us.i:                               ; preds = %.lr.ph.i.i274.us.i.prol.loopexit, %.lr.ph.i.i274.us.i
  %.07.i.i275.us.i = phi i64 [ %i.vg, %.lr.ph.i.i274.us.i ], [ %.07.i.i275.us.i.unr, %.lr.ph.i.i274.us.i.prol.loopexit ] ; 6 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %.07.i.i275.us.i
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.pre474.i.a, i64 %.07.i.i275.us.i
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !86
  store i32 %i.ut, ptr %i.ur, align 4, !tbaa !86
  %i.uu = add nuw nsw i64 %.07.i.i275.us.i, 1     ; 2 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.uu
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %.pre474.i.a, i64 %i.uu
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !86
  store i32 %i.ux, ptr %i.uv, align 4, !tbaa !86
  %i.uy = add nuw nsw i64 %.07.i.i275.us.i, 2     ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.uy
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %.pre474.i.a, i64 %i.uy
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !86
  store i32 %i.vb, ptr %i.uz, align 4, !tbaa !86
  %i.vc = add nuw nsw i64 %.07.i.i275.us.i, 3     ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.vc
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %.pre474.i.a, i64 %i.vc
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !86
  store i32 %i.vf, ptr %i.vd, align 4, !tbaa !86
  %i.vg = add nuw nsw i64 %.07.i.i275.us.i, 4     ; 2 uses
  %exitcond.not.i.i276.us.i.3 = icmp eq i64 %i.vg, %.pre.i
  br i1 %exitcond.not.i.i276.us.i.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit277.us.i, label %.lr.ph.i.i274.us.i, !llvm.loop !278

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit277.us.i: ; preds = %.lr.ph.i.i274.us.i.prol.loopexit, %.lr.ph.i.i274.us.i, %middle.block781, %bb.ad
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %.pre.i
  store i32 %i.tq, ptr %i.vh, align 4, !tbaa !86
  %i.vi = add nsw i64 %.pre.i, 1
  store i64 %i.vi, ptr %i.sp, align 8, !tbaa !105
  store i64 %..i.i.i.us.i, ptr %i.sr, align 8, !tbaa !106
  call void @_Z6rcFreePv(ptr noundef %.pre474.i.a) #8
  store ptr %i.uc, ptr %i.sq, align 8, !tbaa !85
  br label %_ZL19addUniqueConnectionR8rcRegioni.exit.us.i

bb.ae:                                            ; preds = %._crit_edge.i.us.i
  %i.vj = load ptr, ptr %i.sq, align 8, !tbaa !85
  %i.vk = add nsw i64 %i.tr, 1
  store i64 %i.vk, ptr %i.sp, align 8, !tbaa !105
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.vj, i64 %i.tr
  store i32 %i.tq, ptr %i.vl, align 4, !tbaa !86
  br label %_ZL19addUniqueConnectionR8rcRegioni.exit.us.i

_ZL19addUniqueConnectionR8rcRegioni.exit.us.i:    ; preds = %bb.ab, %bb.ae, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit277.us.i, %bb.z
  %.not228.us.i = icmp sgt i16 %i.tp, -1
  br i1 %.not228.us.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZL19addUniqueConnectionR8rcRegioni.exit.us.i
  store i8 1, ptr %i.ss, align 2, !tbaa !312
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZL19addUniqueConnectionR8rcRegioni.exit.us.i, %bb.y
  %indvars.iv.next.i259 = add nuw nsw i64 %indvars.iv.i258, 1 ; 2 uses
  %exitcond398.not.i.a = icmp eq i64 %indvars.iv.next.i259, 4
  br i1 %exitcond398.not.i.a, label %.loopexit338.us.loopexit.i, label %bb.y

.loopexit338.us.loopexit.i:                       ; preds = %bb.ag
  %.sroa.0.2.us.i = add nsw i64 %.sroa.0.0345.us.i, 1
  br label %.loopexit338.us.i

.loopexit338.us.i:                                ; preds = %.loopexit338.us.loopexit.i, %.lr.ph.us.i
  %.sroa.0.1.us.i = phi i64 [ %.sroa.0.0345.us.i, %.lr.ph.us.i ], [ %.sroa.0.2.us.i, %.loopexit338.us.loopexit.i ] ; 4 uses
  %.sroa.13.3.us.i = phi i64 [ %.sroa.13.2346.us.i, %.lr.ph.us.i ], [ %.sroa.13.4.us.i, %.loopexit338.us.loopexit.i ] ; 3 uses
  %.sroa.16.3.us.i = phi ptr [ %.sroa.16.2347.us.i, %.lr.ph.us.i ], [ %.sroa.16.4.us.i, %.loopexit338.us.loopexit.i ] ; 5 uses
  %indvars.iv.next400.i.a = add nuw nsw i64 %indvars.iv399.i.a, 1 ; 2 uses
  %i.vm = icmp samesign ult i64 %indvars.iv.next400.i.a, %i.qf
  br i1 %i.vm, label %.lr.ph.us.i, label %.preheader339.us.i

bb.ah:                                            ; preds = %.lr.ph352.us.i, %_ZL20addUniqueFloorRegionR8rcRegioni.exit243.us.i
  %indvars.iv404.i = phi i64 [ %indvars.iv402.i, %.lr.ph352.us.i ], [ %indvars.iv.next405.i, %_ZL20addUniqueFloorRegionR8rcRegioni.exit243.us.i ] ; 2 uses
  %i.vn = load i32, ptr %i.zw, align 4, !tbaa !86 ; 2 uses
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.3.us.i, i64 %indvars.iv404.i
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !86 ; 5 uses
  %.not222.us.i = icmp eq i32 %i.vn, %i.vp
  br i1 %.not222.us.i, label %_ZL20addUniqueFloorRegionR8rcRegioni.exit243.us.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.vq = sext i32 %i.vn to i64
  %i.vr = load ptr, ptr %i.ph, align 8, !tbaa !98 ; 2 uses
  %i.vs = getelementptr inbounds [64 x i8], ptr %i.vr, i64 %i.vq ; 5 uses
  %i.vt = sext i32 %i.vp to i64
  %i.vu = getelementptr inbounds [64 x i8], ptr %i.vr, i64 %i.vt ; 5 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vs, i64 40 ; 4 uses
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !105 ; 5 uses
  %i.vx = icmp sgt i64 %i.vw, 0
  br i1 %i.vx, label %.lr.ph.i233.us.i, label %._crit_edge.i231.us.i

.lr.ph.i233.us.i:                                 ; preds = %bb.ai
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vs, i64 56
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !85
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %.lr.ph.i233.us.i
  %indvars.iv.i234.us.i = phi i64 [ 0, %.lr.ph.i233.us.i ], [ %indvars.iv.next.i235.us.i, %bb.ak ] ; 2 uses
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %indvars.iv.i234.us.i
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !86
  %i.wc = icmp eq i32 %i.wb, %i.vp
  br i1 %i.wc, label %_ZL20addUniqueFloorRegionR8rcRegioni.exit.us.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %indvars.iv.next.i235.us.i = add nuw nsw i64 %indvars.iv.i234.us.i, 1 ; 2 uses
  %exitcond.not.i236.us.i = icmp eq i64 %indvars.iv.next.i235.us.i, %i.vw
  br i1 %exitcond.not.i236.us.i, label %._crit_edge.i231.us.i, label %bb.aj

end_hunk_4
begin_hunk_5_@_Z19rcBuildLayerRegionsP9rcContextR20rcCompactHeightfieldii:bb.a
.preheader.i255:                                  ; preds = %.preheader.i255.preheader, %.loopexit.i
  %indvars.iv460.i.a = phi i64 [ %indvars.iv.next461.i, %.loopexit.i ], [ 0, %.preheader.i255.preheader ] ; 7 uses
  %.0181388.i = phi i16 [ %.1.i, %.loopexit.i ], [ 0, %.preheader.i255.preheader ] ; 2 uses
  %i.aly = getelementptr inbounds nuw [64 x i8], ptr %i.ace, i64 %indvars.iv460.i.a ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 7
  %i.ama = load i8, ptr %i.alz, align 1, !tbaa !110, !range !18, !noundef !19
  %i.amb = trunc nuw i8 %i.ama to i1
  br i1 %i.amb, label %.lr.ph387.preheader.i, label %.loopexit.i

.lr.ph387.preheader.i:                            ; preds = %.preheader.i255
  %i.amc = sub nsw i64 %i.pd, %indvars.iv460.i.a
  %i.amd = getelementptr inbounds nuw i8, ptr %i.aly, i64 4
  %i.ame = load i16, ptr %i.amd, align 4, !tbaa !103 ; 3 uses
  %i.amf = add i16 %.0181388.i, 1                 ; 5 uses
  %xtraiter924 = and i64 %i.amc, 1
  %lcmp.mod925.not = icmp eq i64 %xtraiter924, 0
  br i1 %lcmp.mod925.not, label %.lr.ph387.i.prol.loopexit, label %.lr.ph387.i.prol

.lr.ph387.i.prol:                                 ; preds = %.lr.ph387.preheader.i
  %i.amg = getelementptr inbounds nuw [64 x i8], ptr %i.ace, i64 %indvars.iv460.i.a ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 4 ; 2 uses
  %i.ami = load i16, ptr %i.amh, align 4, !tbaa !103
  %i.amj = icmp eq i16 %i.ami, %i.ame
  br i1 %i.amj, label %bb.br, label %.lr.ph387.i.prol.loopexit.unr-lcssa

bb.br:                                            ; preds = %.lr.ph387.i.prol
  store i16 %i.amf, ptr %i.amh, align 4, !tbaa !103
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amg, i64 7
  store i8 0, ptr %i.amk, align 1, !tbaa !110
  br label %.lr.ph387.i.prol.loopexit.unr-lcssa

.lr.ph387.i.prol.loopexit.unr-lcssa:              ; preds = %bb.br, %.lr.ph387.i.prol
  %indvars.iv.next463.i.prol = add nuw nsw i64 %indvars.iv460.i.a, 1
  br label %.lr.ph387.i.prol.loopexit

.lr.ph387.i.prol.loopexit:                        ; preds = %.lr.ph387.i.prol.loopexit.unr-lcssa, %.lr.ph387.preheader.i
  %indvars.iv462.i.unr = phi i64 [ %indvars.iv460.i.a, %.lr.ph387.preheader.i ], [ %indvars.iv.next463.i.prol, %.lr.ph387.i.prol.loopexit.unr-lcssa ]
  %i.aml = icmp eq i64 %indvars.iv460.i.a, %i.aac
  br i1 %i.aml, label %.loopexit.i, label %.lr.ph387.i

.lr.ph387.i:                                      ; preds = %.lr.ph387.i.prol.loopexit, %bb.bu
  %indvars.iv462.i = phi i64 [ %indvars.iv.next463.i.1, %bb.bu ], [ %indvars.iv462.i.unr, %.lr.ph387.i.prol.loopexit ] ; 3 uses
  %i.amm = getelementptr inbounds nuw [64 x i8], ptr %i.ace, i64 %indvars.iv462.i ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 4 ; 2 uses
  %i.amo = load i16, ptr %i.amn, align 4, !tbaa !103
  %i.amp = icmp eq i16 %i.amo, %i.ame
  br i1 %i.amp, label %bb.bs, label %.lr.ph387.i.1

bb.bs:                                            ; preds = %.lr.ph387.i
  store i16 %i.amf, ptr %i.amn, align 4, !tbaa !103
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amm, i64 7
  store i8 0, ptr %i.amq, align 1, !tbaa !110
  br label %.lr.ph387.i.1

.lr.ph387.i.1:                                    ; preds = %bb.bs, %.lr.ph387.i
  %i.amr = getelementptr inbounds nuw [64 x i8], ptr %i.ace, i64 %indvars.iv462.i ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 68 ; 2 uses
  %i.amt = load i16, ptr %i.ams, align 4, !tbaa !103
  %i.amu = icmp eq i16 %i.amt, %i.ame
  br i1 %i.amu, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.lr.ph387.i.1
  store i16 %i.amf, ptr %i.ams, align 4, !tbaa !103
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amr, i64 71
  store i8 0, ptr %i.amv, align 1, !tbaa !110
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph387.i.1
  %indvars.iv.next463.i.1 = add nuw nsw i64 %indvars.iv462.i, 2 ; 2 uses
  %exitcond466.not.i.1 = icmp eq i64 %indvars.iv.next463.i.1, %i.pd
  br i1 %exitcond466.not.i.1, label %.loopexit.i, label %.lr.ph387.i

.loopexit.i:                                      ; preds = %.lr.ph387.i.prol.loopexit, %bb.bu, %.preheader.i255
  %.1.i = phi i16 [ %.0181388.i, %.preheader.i255 ], [ %i.amf, %bb.bu ], [ %i.amf, %.lr.ph387.i.prol.loopexit ] ; 2 uses
  %indvars.iv.next461.i = add nuw nsw i64 %indvars.iv460.i.a, 1 ; 2 uses
  %exitcond468.not.i = icmp eq i64 %indvars.iv.next461.i, %i.pd
  br i1 %exitcond468.not.i, label %bb.bq, label %.preheader.i255

bb.bv:                                            ; preds = %bb.bz, %.lr.ph393.i.new
  %indvars.iv469.i = phi i64 [ 0, %.lr.ph393.i.new ], [ %indvars.iv.next470.i.1, %bb.bz ] ; 3 uses
  %niter933 = phi i64 [ 0, %.lr.ph393.i.new ], [ %niter933.next.1, %bb.bz ]
  %i.amw = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv469.i ; 2 uses
  %i.amx = load i16, ptr %i.amw, align 2, !tbaa !71 ; 2 uses
  %i.amy = icmp sgt i16 %i.amx, -1
  br i1 %i.amy, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.amz = zext nneg i16 %i.amx to i64
  %i.ana = getelementptr inbounds nuw [64 x i8], ptr %i.alw, i64 %i.amz
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 4
  %i.anc = load i16, ptr %i.anb, align 4, !tbaa !103
  store i16 %i.anc, ptr %i.amw, align 2, !tbaa !71
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.and = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv469.i
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 2 ; 2 uses
  %i.anf = load i16, ptr %i.ane, align 2, !tbaa !71 ; 2 uses
  %i.ang = icmp sgt i16 %i.anf, -1
  br i1 %i.ang, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.anh = zext nneg i16 %i.anf to i64
  %i.ani = getelementptr inbounds nuw [64 x i8], ptr %i.alw, i64 %i.anh
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 4
  %i.ank = load i16, ptr %i.anj, align 4, !tbaa !103
  store i16 %i.ank, ptr %i.ane, align 2, !tbaa !71
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %indvars.iv.next470.i.1 = add nuw nsw i64 %indvars.iv469.i, 2 ; 2 uses
  %niter933.next.1 = add i64 %niter933, 2         ; 2 uses
  %niter933.ncmp.1 = icmp eq i64 %niter933.next.1, %unroll_iter932
  br i1 %niter933.ncmp.1, label %.loopexit529.i.loopexit.unr-lcssa, label %bb.bv

.loopexit529.i.loopexit.unr-lcssa:                ; preds = %bb.bz
  %lcmp.mod930.not = icmp eq i64 %xtraiter928, 0
  br i1 %lcmp.mod930.not, label %.loopexit529.i, label %.epil.preheader927

.epil.preheader927:                               ; preds = %.loopexit529.i.loopexit.unr-lcssa, %.lr.ph393.i
  %indvars.iv469.i.epil.init = phi i64 [ 0, %.lr.ph393.i ], [ %indvars.iv.next470.i.1, %.loopexit529.i.loopexit.unr-lcssa ]
  %lcmp.mod931 = trunc i32 %i.alu to i1
  call void @llvm.assume(i1 %lcmp.mod931)
  %i.anl = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv469.i.epil.init ; 2 uses
  %i.anm = load i16, ptr %i.anl, align 2, !tbaa !71 ; 2 uses
  %i.ann = icmp sgt i16 %i.anm, -1
  br i1 %i.ann, label %bb.ca, label %.loopexit529.i

bb.ca:                                            ; preds = %.epil.preheader927
  %i.ano = zext nneg i16 %i.anm to i64
  %i.anp = getelementptr inbounds nuw [64 x i8], ptr %i.alw, i64 %i.ano
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 4
  %i.anr = load i16, ptr %i.anq, align 4, !tbaa !103
  store i16 %i.anr, ptr %i.anl, align 2, !tbaa !71
  br label %.loopexit529.i

.loopexit529.i:                                   ; preds = %.loopexit529.i.loopexit.unr-lcssa, %bb.ca, %.epil.preheader927, %bb.bq
  %i.ans = load ptr, ptr %i.aah, align 8, !tbaa !85
  call void @_Z6rcFreePv(ptr noundef %i.ans) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @_Z6rcFreePv(ptr noundef %.sroa.16.0.lcssa.i) #8
  %.pre486.i = load i64, ptr %4, align 8, !tbaa !111 ; 2 uses
  %i.ant = icmp sgt i64 %.pre486.i, 0
  br i1 %i.ant, label %.lr.ph.i.i267.i, label %_ZL26mergeAndFilterLayerRegionsP9rcContextiRtR20rcCompactHeightfieldPt.exit

.lr.ph.i.i267.i:                                  ; preds = %.loopexit529.i, %.lr.ph.i.i267.i
  %.05.i.i268.i = phi i64 [ %i.aoa, %.lr.ph.i.i267.i ], [ 0, %.loopexit529.i ] ; 2 uses
  %i.anu = load ptr, ptr %i.ph, align 8, !tbaa !98
  %i.anv = getelementptr inbounds nuw [64 x i8], ptr %i.anu, i64 %.05.i.i268.i ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 56
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !85
  call void @_Z6rcFreePv(ptr noundef %i.anx) #8
  %i.any = getelementptr inbounds nuw i8, ptr %i.anv, i64 32
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !85
  call void @_Z6rcFreePv(ptr noundef %i.anz) #8
  %i.aoa = add nuw nsw i64 %.05.i.i268.i, 1       ; 2 uses
  %exitcond.not.i.i269.i = icmp eq i64 %i.aoa, %.pre486.i
  br i1 %exitcond.not.i.i269.i, label %_ZL26mergeAndFilterLayerRegionsP9rcContextiRtR20rcCompactHeightfieldPt.exit, label %.lr.ph.i.i267.i

_ZL26mergeAndFilterLayerRegionsP9rcContextiRtR20rcCompactHeightfieldPt.exit: ; preds = %.lr.ph.i.i267.i, %.thread.i, %.loopexit529.i
  %i.aob = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !98
  call void @_Z6rcFreePv(ptr noundef %i.aoc) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.aod = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.aoe = trunc nuw i8 %i.aod to i1
  br i1 %i.aoe, label %bb.cb, label %_ZN13rcScopedTimerD2Ev.exit

bb.cb:                                            ; preds = %_ZL26mergeAndFilterLayerRegionsP9rcContextiRtR20rcCompactHeightfieldPt.exit
  %i.aof = load ptr, ptr %0, align 8, !tbaa !21
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 48
  %i.aoh = load ptr, ptr %i.aog, align 8
  call void %i.aoh(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 24) #8, !call_target !79, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %_ZL26mergeAndFilterLayerRegionsP9rcContextiRtR20rcCompactHeightfieldPt.exit, %bb.cb
  br i1 %.not.i.i.i, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN13rcScopedTimerD2Ev.exit
  %i.aoi = load i32, ptr %i.j, align 8, !tbaa !68 ; 3 uses
  %i.aoj = icmp sgt i32 %i.aoi, 0
  br i1 %i.aoj, label %.lr.ph350, label %.loopexit

.lr.ph350:                                        ; preds = %.preheader
  %i.aok = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !72 ; 9 uses
  %wide.trip.count373 = zext nneg i32 %i.aoi to i64 ; 2 uses
  %xtraiter935 = and i64 %wide.trip.count373, 7   ; 3 uses
  %i.aom = icmp ult i32 %i.aoi, 8
  br i1 %i.aom, label %.epil.preheader934, label %.lr.ph350.new

.lr.ph350.new:                                    ; preds = %.lr.ph350
  %unroll_iter939 = and i64 %wide.trip.count373, 2147483640
  br label %bb.dd

bb.cc:                                            ; preds = %.lr.ph345, %._crit_edge339
  %indvars.iv367 = phi i64 [ %i.or, %.lr.ph345 ], [ %indvars.iv.next368, %._crit_edge339 ] ; 4 uses
  %.1175343 = phi i16 [ %.0174, %.lr.ph345 ], [ %.2176.lcssa443, %._crit_edge339 ] ; 5 uses
  %.sroa.11.0342 = phi ptr [ %i.oj, %.lr.ph345 ], [ %.sroa.11.2, %._crit_edge339 ] ; 11 uses
  %.sroa.8.0341 = phi i64 [ 256, %.lr.ph345 ], [ %.sroa.8.2, %._crit_edge339 ] ; 5 uses
  %.sroa.0264.0340 = phi i64 [ 256, %.lr.ph345 ], [ %.sroa.0264.1, %._crit_edge339 ] ; 10 uses
  %.sroa.11.0342728 = ptrtoaddr ptr %.sroa.11.0342 to i64
  %i.aon = zext i16 %.1175343 to i64              ; 2 uses
  %i.aoo = add nuw nsw i64 %i.aon, 1              ; 7 uses
  %i.aop = icmp slt i64 %i.aoo, %.sroa.0264.0340
  br i1 %i.aop, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.not319 = icmp sgt i64 %i.aoo, %.sroa.0264.0340
  br i1 %.not319, label %bb.ce, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit

bb.ce:                                            ; preds = %bb.cd
  %.not.i.i.not = icmp sgt i64 %i.aoo, %.sroa.8.0341
  br i1 %.not.i.i.not, label %bb.cf, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit

bb.cf:                                            ; preds = %bb.ce
  %i.aoq = shl nsw i64 %.sroa.8.0341, 1
  %..i.i.i = tail call i64 @llvm.smax.i64(i64 %i.aoq, i64 %i.aoo) ; 2 uses
  %i.aor = shl nuw nsw i64 %..i.i.i, 2
  %i.aos = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.aor, i32 noundef 1) #8 ; 9 uses
  %.not.i.i.i260 = icmp ne ptr %i.aos, null
  %9 = icmp sgt i64 %.sroa.0264.0340, 0
  %or.cond = and i1 %.not.i.i.i260, %9
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.cf
  %i.aot = ptrtoaddr ptr %i.aos to i64
  %min.iters.check729 = icmp ult i64 %.sroa.0264.0340, 8
  %i.aou = sub i64 %.sroa.11.0342728, %i.aot
  %diff.check = icmp ugt i64 %i.aou, -32
  %or.cond879 = select i1 %min.iters.check729, i1 true, i1 %diff.check
  br i1 %or.cond879, label %.lr.ph.i.i.i.i.preheader887, label %vector.ph730

vector.ph730:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec731 = and i64 %.sroa.0264.0340, 9223372036854775800 ; 3 uses
  br label %vector.body732

vector.body732:                                   ; preds = %vector.body732, %vector.ph730
  %index733 = phi i64 [ 0, %vector.ph730 ], [ %index.next736, %vector.body732 ] ; 3 uses
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %i.aos, i64 %index733 ; 2 uses
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.0342, i64 %index733 ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 16
  %wide.load734 = load <4 x i32>, ptr %i.aow, align 4, !tbaa !86
  %wide.load735 = load <4 x i32>, ptr %i.aox, align 4, !tbaa !86
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aov, i64 16
  store <4 x i32> %wide.load734, ptr %i.aov, align 4, !tbaa !86
  store <4 x i32> %wide.load735, ptr %i.aoy, align 4, !tbaa !86
  %index.next736 = add nuw i64 %index733, 8       ; 2 uses
  %i.aoz = icmp eq i64 %index.next736, %n.vec731
  br i1 %i.aoz, label %middle.block737, label %vector.body732, !llvm.loop !298

middle.block737:                                  ; preds = %vector.body732
  %cmp.n738 = icmp eq i64 %.sroa.0264.0340, %n.vec731
  br i1 %cmp.n738, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i, label %.lr.ph.i.i.i.i.preheader887

.lr.ph.i.i.i.i.preheader887:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block737
  %.07.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec731, %middle.block737 ] ; 3 uses
  %xtraiter = and i64 %.sroa.0264.0340, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader887, %.lr.ph.i.i.i.i.prol
  %.07.i.i.i.i.prol = phi i64 [ %i.apd, %.lr.ph.i.i.i.i.prol ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader887 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader887 ]
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.aos, i64 %.07.i.i.i.i.prol
  %i.apb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.0342, i64 %.07.i.i.i.i.prol
  %i.apc = load i32, ptr %i.apb, align 4, !tbaa !86
  store i32 %i.apc, ptr %i.apa, align 4, !tbaa !86
  %i.apd = add nuw nsw i64 %.07.i.i.i.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !299

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader887
  %.07.i.i.i.i.unr = phi i64 [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader887 ], [ %i.apd, %.lr.ph.i.i.i.i.prol ]
  %i.ape = sub nsw i64 %.07.i.i.i.i.ph, %.sroa.0264.0340
  %i.apf = icmp ugt i64 %i.ape, -4
  br i1 %i.apf, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi i64 [ %i.apv, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %i.aos, i64 %.07.i.i.i.i
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.0342, i64 %.07.i.i.i.i
  %i.api = load i32, ptr %i.aph, align 4, !tbaa !86
  store i32 %i.api, ptr %i.apg, align 4, !tbaa !86
  %i.apj = add nuw nsw i64 %.07.i.i.i.i, 1        ; 2 uses
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.aos, i64 %i.apj
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.0342, i64 %i.apj
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !86
  store i32 %i.apm, ptr %i.apk, align 4, !tbaa !86
  %i.apn = add nuw nsw i64 %.07.i.i.i.i, 2        ; 2 uses
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.aos, i64 %i.apn
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.0342, i64 %i.apn
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !86
  store i32 %i.apq, ptr %i.apo, align 4, !tbaa !86
  %i.apr = add nuw nsw i64 %.07.i.i.i.i, 3        ; 2 uses
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %i.aos, i64 %i.apr
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.0342, i64 %i.apr
  %i.apu = load i32, ptr %i.apt, align 4, !tbaa !86
  store i32 %i.apu, ptr %i.aps, align 4, !tbaa !86
  %i.apv = add nuw nsw i64 %.07.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.apv, %.sroa.0264.0340
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !300

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block737, %bb.cf
  tail call void @_Z6rcFreePv(ptr noundef %.sroa.11.0342) #8
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit

_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit: ; preds = %bb.cc, %bb.ce, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i, %bb.cd
  %.sroa.0264.1 = phi i64 [ %.sroa.0264.0340, %bb.cd ], [ %i.aoo, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i ], [ %i.aoo, %bb.ce ], [ %i.aoo, %bb.cc ]
  %.sroa.8.2 = phi i64 [ %.sroa.8.0341, %bb.cd ], [ %..i.i.i, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i ], [ %.sroa.8.0341, %bb.ce ], [ %.sroa.8.0341, %bb.cc ]
  %.sroa.11.2 = phi ptr [ %.sroa.11.0342, %bb.cd ], [ %i.aos, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i ], [ %.sroa.11.0342, %bb.ce ], [ %.sroa.11.0342, %bb.cc ] ; 7 uses
  %i.apw = shl nuw nsw i64 %i.aon, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %.sroa.11.2, i8 0, i64 %i.apw, i1 false)
  br i1 %i.on, label %.lr.ph326, label %._crit_edge339

.lr.ph326:                                        ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit
  %i.apx = load ptr, ptr %i.oo, align 8, !tbaa !88 ; 3 uses
  %i.apy = mul nsw i64 %indvars.iv367, %i.os      ; 2 uses
  %i.apz = add i64 %i.apy, 4294967295
  %i.aqa = add nsw i64 %indvars.iv367, -1
  %i.aqb = mul nsw i64 %i.aqa, %i.os
  %invariant.gep = getelementptr [4 x i8], ptr %i.apx, i64 %i.apy
  %invariant.gep444 = getelementptr [4 x i8], ptr %i.apx, i64 %i.aqb
  br label %bb.cg

.preheader321:                                    ; preds = %._crit_edge
  %i.aqc = icmp ugt i16 %.1166.lcssa, 1
  br i1 %i.aqc, label %.lr.ph331.preheader, label %.lr.ph338

.lr.ph331.preheader:                              ; preds = %.preheader321
  %wide.trip.count357 = zext i16 %.1166.lcssa to i64
  %i.aqd = add nsw i64 %wide.trip.count357, -1    ; 3 uses
  %xtraiter888 = and i64 %i.aqd, 1
  %i.aqe = icmp eq i16 %.1166.lcssa, 2
  br i1 %i.aqe, label %.lr.ph331.epil.preheader, label %.lr.ph331.preheader.new

.lr.ph331.preheader.new:                          ; preds = %.lr.ph331.preheader
  %unroll_iter = and i64 %i.aqd, -2
  br label %.lr.ph331

bb.cg:                                            ; preds = %.lr.ph326, %._crit_edge
  %indvars.iv353 = phi i64 [ %i.or, %.lr.ph326 ], [ %indvars.iv.next354, %._crit_edge ] ; 4 uses
  %.0165324 = phi i16 [ 1, %.lr.ph326 ], [ %.1166.lcssa, %._crit_edge ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv353
  %i.aqf = load i32, ptr %gep, align 4            ; 3 uses
  %i.aqg = lshr i32 %i.aqf, 24                    ; 2 uses
  %.not351.a = icmp eq i32 %i.aqg, 0
  br i1 %.not351.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cg
  %i.aqh = and i32 %i.aqf, 16777215
  %i.aqi = add nuw nsw i32 %i.aqh, %i.aqg
  %i.aqj = load ptr, ptr %i.op, align 8, !tbaa !73 ; 3 uses
  %i.aqk = add i64 %i.apz, %indvars.iv353
  %sext = shl i64 %i.aqk, 32
  %i.aql = ashr exact i64 %sext, 30
  %i.aqm = getelementptr inbounds i8, ptr %i.apx, i64 %i.aql
  %gep445 = getelementptr [4 x i8], ptr %invariant.gep444, i64 %indvars.iv353
  %i.aqn = and i32 %i.aqf, 16777215
  %i.aqo = zext nneg i32 %i.aqn to i64
  %i.aqp = zext nneg i32 %i.aqi to i64
  br label %bb.ch

._crit_edge:                                      ; preds = %bb.cs, %bb.cg
  %.1166.lcssa = phi i16 [ %.0165324, %bb.cg ], [ %.3, %bb.cs ] ; 5 uses
  %indvars.iv.next354 = add nsw i64 %indvars.iv353, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next354, %wide.trip.count
  br i1 %exitcond.not, label %.preheader321, label %bb.cg

bb.ch:                                            ; preds = %.lr.ph, %bb.cs
  %indvars.iv = phi i64 [ %i.aqo, %.lr.ph ], [ %indvars.iv.next, %bb.cs ] ; 4 uses
  %.1166322 = phi i16 [ %.0165324, %.lr.ph ], [ %.3, %bb.cs ] ; 6 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqj, i64 %indvars.iv ; 2 uses
  %i.aqr = load i8, ptr %i.aqq, align 1, !tbaa !74 ; 2 uses
  %i.aqs = icmp eq i8 %i.aqr, 0
  br i1 %i.aqs, label %bb.cs, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.aqt = load ptr, ptr %i.oq, align 8, !tbaa !72
  %i.aqu = getelementptr inbounds nuw [8 x i8], ptr %i.aqt, i64 %indvars.iv
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 4 ; 2 uses
  %i.aqw = load i32, ptr %i.aqv, align 4          ; 2 uses
  %i.aqx = and i32 %i.aqw, 63                     ; 2 uses
  %.not185 = icmp eq i32 %i.aqx, 63
  br i1 %.not185, label %.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.aqy = load i32, ptr %i.aqm, align 4
  %i.aqz = and i32 %i.aqy, 16777215
  %i.ara = add nuw nsw i32 %i.aqz, %i.aqx
  %i.arb = zext nneg i32 %i.ara to i64            ; 2 uses
  %i.arc = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.arb
  %i.ard = load i16, ptr %i.arc, align 2, !tbaa !71 ; 3 uses
  %i.are = icmp sgt i16 %i.ard, -1
  br i1 %i.are, label %bb.ck, label %.thread

bb.ck:                                            ; preds = %bb.cj
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqj, i64 %i.arb
  %i.arg = load i8, ptr %i.arf, align 1, !tbaa !74
  %i.arh = icmp ne i8 %i.aqr, %i.arg
  %.not186 = icmp eq i16 %i.ard, 0
  %or.cond315 = or i1 %.not186, %i.arh
  br i1 %or.cond315, label %.thread, label %bb.cl

.thread:                                          ; preds = %bb.cj, %bb.ck, %bb.ci
  %i.ari = add i16 %.1166322, 1
  %i.arj = zext i16 %.1166322 to i64
  %i.ark = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.arj ; 3 uses
  store i16 %.1166322, ptr %i.ark, align 2, !tbaa !90
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 4
  store i16 0, ptr %i.arl, align 2, !tbaa !91
  %i.arm = getelementptr inbounds nuw i8, ptr %i.ark, i64 6
  store i16 0, ptr %i.arm, align 2, !tbaa !92
  %.pre375 = load i32, ptr %i.aqv, align 4
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.thread
  %i.arn = phi i32 [ %i.aqw, %bb.ck ], [ %.pre375, %.thread ]
  %.2167 = phi i16 [ %.1166322, %bb.ck ], [ %i.ari, %.thread ]
  %.2 = phi i16 [ %i.ard, %bb.ck ], [ %.1166322, %.thread ] ; 2 uses
  %i.aro = lshr i32 %i.arn, 18
  %i.arp = and i32 %i.aro, 63                     ; 2 uses
  %.not187 = icmp eq i32 %i.arp, 63
  br i1 %.not187, label %bb.cr, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.arq = load i32, ptr %gep445, align 4
  %i.arr = and i32 %i.arq, 16777215
  %i.ars = add nuw nsw i32 %i.arr, %i.arp
  %i.art = zext nneg i32 %i.ars to i64            ; 2 uses
  %i.aru = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.art
  %i.arv = load i16, ptr %i.aru, align 2, !tbaa !71 ; 4 uses
  %or.cond316 = icmp sgt i16 %i.arv, 0
  br i1 %or.cond316, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  %i.arw = load i8, ptr %i.aqq, align 1, !tbaa !74
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aqj, i64 %i.art
  %i.ary = load i8, ptr %i.arx, align 1, !tbaa !74
  %i.arz = icmp eq i8 %i.arw, %i.ary
  br i1 %i.arz, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.asa = zext i16 %.2 to i64
  %i.asb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.asa ; 2 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asb, i64 6 ; 3 uses
  %i.asd = load i16, ptr %i.asc, align 2, !tbaa !92 ; 2 uses
  %.not189 = icmp eq i16 %i.asd, 0
  %i.ase = icmp eq i16 %i.asd, %i.arv
  %or.cond317 = or i1 %.not189, %i.ase
  br i1 %or.cond317, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store i16 %i.arv, ptr %i.asc, align 2, !tbaa !92
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asb, i64 4 ; 2 uses
  %i.asg = load i16, ptr %i.asf, align 2, !tbaa !91
  %i.ash = add i16 %i.asg, 1
  store i16 %i.ash, ptr %i.asf, align 2, !tbaa !91
  %i.asi = zext nneg i16 %i.arv to i64
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.2, i64 %i.asi ; 2 uses
  %i.ask = load i32, ptr %i.asj, align 4, !tbaa !86
  %i.asl = add nsw i32 %i.ask, 1
  store i32 %i.asl, ptr %i.asj, align 4, !tbaa !86
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  store i16 -1, ptr %i.asc, align 2, !tbaa !92
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cm, %bb.cn, %bb.cq, %bb.cp, %bb.cl
  %i.asm = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv
  store i16 %.2, ptr %i.asm, align 2, !tbaa !71
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ch, %bb.cr
end_hunk_5
