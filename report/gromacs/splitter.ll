inline.NumInlined: 650
inline.NumDeleted: 351
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z11gen_sblocksP8_IO_FILEiRK22InteractionDefinitionsb:bb.a

bb.cf:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i67
  %i.mn = zext nneg i32 %i.mg to i64
  %i.mo = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.mn ; 3 uses
  %i.mp = load i32, ptr %i.me, align 4, !tbaa !39, !noalias !62
  %i.mq = load i32, ptr %i.mo, align 4, !tbaa !39
  %i.mr = call i32 @llvm.smin.i32(i32 %i.mp, i32 %i.mq)
  store i32 %i.mr, ptr %i.mo, align 4, !tbaa !66
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 4 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !39
  %i.mu = load i32, ptr %i.me, align 4, !tbaa !39, !noalias !62
  %i.mv = call i32 @llvm.smax.i32(i32 %i.mt, i32 %i.mu)
  store i32 %i.mv, ptr %i.ms, align 4, !tbaa !68
  br label %bb.cj

bb.cg:                                            ; preds = %bb.cb
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cc
  %i.mx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #22
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pn80.i = phi { ptr, i32 } [ %i.mx, %bb.ch ], [ %i.mw, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !62
  br label %bb.db

bb.cj:                                            ; preds = %bb.cf, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i67
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond284.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond284.not.i, label %._crit_edge.i53, label %bb.cb, !llvm.loop !69

._crit_edge.i53:                                  ; preds = %bb.cj, %.preheader182.i
  %i.my = ptrtoint ptr %.sroa.30.2.i to i64
  %i.mz = ptrtoint ptr %.sroa.0118.4.i to i64     ; 2 uses
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = sdiv exact i64 %i.na, 12
  invoke void @qsort(ptr noundef %.sroa.0118.4.i, i64 noundef %i.nb, i64 noundef 12, ptr noundef nonnull @_ZL7ms_compPKvS0_)
          to label %.preheader180.i.preheader unwind label %bb.bv

.preheader180.i.preheader:                        ; preds = %._crit_edge.i53
  %i.nc = add i32 %.046.lcssa.i, -2
  br label %.preheader180.i

.preheader180.i:                                  ; preds = %.preheader180.i.preheader, %._crit_edge232.i
  %.058235.i = phi i32 [ %spec.select.i54, %._crit_edge232.i ], [ 0, %.preheader180.i.preheader ] ; 8 uses
  %storemerge79228.i = add nsw i32 %.058235.i, 1  ; 2 uses
  %i.nd = icmp slt i32 %storemerge79228.i, %.046.lcssa.i
  br i1 %i.nd, label %.lr.ph231.preheader.i, label %._crit_edge232.i

.lr.ph231.preheader.i:                            ; preds = %.preheader180.i
  %i.ne = sext i32 %.058235.i to i64              ; 2 uses
  %i.nf = add nsw i64 %i.ne, 1                    ; 3 uses
  %i.ng = sub i32 %.058235.i, %.046.lcssa.i
  %i.nh = and i32 %i.ng, 1
  %lcmp.mod777.not.not = icmp eq i32 %i.nh, 0
  br i1 %lcmp.mod777.not.not, label %.lr.ph231.i.prol, label %.lr.ph231.i.prol.loopexit

.lr.ph231.i.prol:                                 ; preds = %.lr.ph231.preheader.i
  %i.ni = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.nf ; 3 uses
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !66 ; 2 uses
  %i.nk = sext i32 %.058235.i to i64
  %i.nl = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.nk ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 4 ; 2 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !68 ; 2 uses
  %.not77.i.prol = icmp sgt i32 %i.nj, %i.nn
  %i.no = trunc nsw i64 %i.nf to i32
  br i1 %.not77.i.prol, label %.lr.ph231.i.prol.loopexit.unr-lcssa, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph231.i.prol
  %i.np = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !39
  %i.nr = call i32 @llvm.smax.i32(i32 %i.nn, i32 %i.nq)
  store i32 %i.nr, ptr %i.nm, align 4, !tbaa !68
  %i.ns = load i32, ptr %i.nl, align 4, !tbaa !39
  %i.nt = call i32 @llvm.smin.i32(i32 %i.nj, i32 %i.ns)
  store i32 %i.nt, ptr %i.nl, align 4, !tbaa !66
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  store i32 -1, ptr %i.nu, align 4, !tbaa !70
  br label %.lr.ph231.i.prol.loopexit.unr-lcssa

.lr.ph231.i.prol.loopexit.unr-lcssa:              ; preds = %bb.ck, %.lr.ph231.i.prol
  %.2.i62.prol = phi i32 [ %.058235.i, %bb.ck ], [ %i.no, %.lr.ph231.i.prol ] ; 2 uses
  %indvars.iv.next286.i.prol = add nsw i64 %i.ne, 2
  br label %.lr.ph231.i.prol.loopexit

.lr.ph231.i.prol.loopexit:                        ; preds = %.lr.ph231.i.prol.loopexit.unr-lcssa, %.lr.ph231.preheader.i
  %.2.i62.lcssa.unr = phi i32 [ poison, %.lr.ph231.preheader.i ], [ %.2.i62.prol, %.lr.ph231.i.prol.loopexit.unr-lcssa ]
  %indvars.iv285.i.unr = phi i64 [ %i.nf, %.lr.ph231.preheader.i ], [ %indvars.iv.next286.i.prol, %.lr.ph231.i.prol.loopexit.unr-lcssa ]
  %.1229.i.unr = phi i32 [ %.058235.i, %.lr.ph231.preheader.i ], [ %.2.i62.prol, %.lr.ph231.i.prol.loopexit.unr-lcssa ]
  %i.nv = icmp eq i32 %i.nc, %.058235.i
  br i1 %i.nv, label %._crit_edge232.i, label %.lr.ph231.i

.lr.ph231.i:                                      ; preds = %.lr.ph231.i.prol.loopexit, %bb.cn
  %indvars.iv285.i = phi i64 [ %indvars.iv.next286.i.1, %bb.cn ], [ %indvars.iv285.i.unr, %.lr.ph231.i.prol.loopexit ] ; 4 uses
  %.1229.i = phi i32 [ %.2.i62.1, %bb.cn ], [ %.1229.i.unr, %.lr.ph231.i.prol.loopexit ] ; 2 uses
  %i.nw = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvars.iv285.i ; 3 uses
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !66 ; 2 uses
  %i.ny = sext i32 %.1229.i to i64
  %i.nz = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.ny ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 4 ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !68 ; 2 uses
  %.not77.i = icmp sgt i32 %i.nx, %i.ob
  %i.oc = trunc nsw i64 %indvars.iv285.i to i32
  br i1 %.not77.i, label %.lr.ph231.i.1, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph231.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !39
  %i.of = call i32 @llvm.smax.i32(i32 %i.ob, i32 %i.oe)
  store i32 %i.of, ptr %i.oa, align 4, !tbaa !68
  %i.og = load i32, ptr %i.nz, align 4, !tbaa !39
  %i.oh = call i32 @llvm.smin.i32(i32 %i.nx, i32 %i.og)
  store i32 %i.oh, ptr %i.nz, align 4, !tbaa !66
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store i32 -1, ptr %i.oi, align 4, !tbaa !70
  br label %.lr.ph231.i.1

.lr.ph231.i.1:                                    ; preds = %bb.cl, %.lr.ph231.i
  %.2.i62 = phi i32 [ %.1229.i, %bb.cl ], [ %i.oc, %.lr.ph231.i ] ; 2 uses
  %indvars.iv.next286.i = add nsw i64 %indvars.iv285.i, 1 ; 2 uses
  %i.oj = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvars.iv.next286.i ; 3 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !66 ; 2 uses
  %i.ol = sext i32 %.2.i62 to i64
  %i.om = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.ol ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 4 ; 2 uses
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !68 ; 2 uses
  %.not77.i.1 = icmp sgt i32 %i.ok, %i.oo
  %i.op = trunc nsw i64 %indvars.iv.next286.i to i32
  br i1 %.not77.i.1, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph231.i.1
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !39
  %i.os = call i32 @llvm.smax.i32(i32 %i.oo, i32 %i.or)
  store i32 %i.os, ptr %i.on, align 4, !tbaa !68
  %i.ot = load i32, ptr %i.om, align 4, !tbaa !39
  %i.ou = call i32 @llvm.smin.i32(i32 %i.ok, i32 %i.ot)
  store i32 %i.ou, ptr %i.om, align 4, !tbaa !66
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  store i32 -1, ptr %i.ov, align 4, !tbaa !70
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.lr.ph231.i.1
  %.2.i62.1 = phi i32 [ %.2.i62, %bb.cm ], [ %i.op, %.lr.ph231.i.1 ] ; 2 uses
  %indvars.iv.next286.i.1 = add nsw i64 %indvars.iv285.i, 2 ; 2 uses
  %lftr.wideiv.i63.1 = trunc i64 %indvars.iv.next286.i.1 to i32
  %exitcond288.not.i.1 = icmp eq i32 %.046.lcssa.i, %lftr.wideiv.i63.1
  br i1 %exitcond288.not.i.1, label %._crit_edge232.i, label %.lr.ph231.i, !llvm.loop !71

._crit_edge232.i:                                 ; preds = %.lr.ph231.i.prol.loopexit, %bb.cn, %.preheader180.i
  %.1.lcssa.i = phi i32 [ %.058235.i, %.preheader180.i ], [ %.2.i62.lcssa.unr, %.lr.ph231.i.prol.loopexit ], [ %.2.i62.1, %bb.cn ]
  %storemerge79.lcssa.i = phi i32 [ %storemerge79228.i, %.preheader180.i ], [ %.046.lcssa.i, %bb.cn ], [ %.046.lcssa.i, %.lr.ph231.i.prol.loopexit ]
  %i.ow = icmp eq i32 %storemerge79.lcssa.i, %.046.lcssa.i
  %i.ox = zext i1 %i.ow to i32
  %spec.select.i54 = add nsw i32 %.1.lcssa.i, %i.ox ; 2 uses
  %i.oy = icmp slt i32 %spec.select.i54, %.046.lcssa.i
  br i1 %i.oy, label %.preheader180.i, label %.preheader178.i, !llvm.loop !72

.preheader178.i:                                  ; preds = %._crit_edge232.i, %.critedge.i
  %indvars.iv306.i = phi i32 [ %indvars.iv.next307.i, %.critedge.i ], [ -1, %._crit_edge232.i ] ; 2 uses
  %indvars.iv292.i = phi i32 [ %indvars.iv.next293.i, %.critedge.i ], [ 1, %._crit_edge232.i ] ; 2 uses
  %indvar.i = phi i64 [ %indvar.next.pre-phi.i, %.critedge.i ], [ 0, %._crit_edge232.i ] ; 6 uses
  %.066245.i = phi i32 [ %.167.lcssa.i, %.critedge.i ], [ %.046.lcssa.i, %._crit_edge232.i ] ; 5 uses
  %i.oz = mul nuw nsw i64 %indvar.i, 12
  %scevgep.i = getelementptr i8, ptr %.sroa.0118.4.i, i64 %i.oz ; 2 uses
  %scevgep289.i = getelementptr i8, ptr %scevgep.i, i64 12
  %i.pa = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvar.i
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pc = add nsw i32 %.066245.i, -1
  %i.pd = sext i32 %i.pc to i64
  %i.pe = icmp slt i64 %indvar.i, %i.pd
  br i1 %i.pe, label %.lr.ph241.i, label %.preheader178..critedge_crit_edge.i

.preheader178..critedge_crit_edge.i:              ; preds = %.preheader178.i
  %.pre.i = add nuw nsw i64 %indvar.i, 1
  br label %.critedge.i

.lr.ph241.i:                                      ; preds = %.preheader178.i
  %i.pf = trunc i64 %indvar.i to i32
  %i.pg = add nuw nsw i64 %indvar.i, 1            ; 3 uses
  %i.ph = add i32 %.066245.i, %indvars.iv306.i
  %wide.trip.count308.i = zext i32 %i.ph to i64
  %.neg139 = add i32 %.066245.i, -2
  %i.pi = sext i32 %.066245.i to i64
  br label %bb.co

.preheader.i:                                     ; preds = %.critedge.i
  br i1 %.not135, label %._crit_edge250.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %wide.trip.count317.i = zext nneg i32 %2 to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph249.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check661 = icmp ult i32 %2, 16
  br i1 %min.iters.check661, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.pj = and i64 %wide.trip.count317.i, 12
  %n.vec = and i64 %wide.trip.count317.i, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add.2 = add <4 x i32> %vec.ind, splat (i32 8)
  %step.add.3 = add <4 x i32> %vec.ind, splat (i32 12)
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0100.0.lcssa, i64 %index
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0100.0.lcssa, i64 %index
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 32
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0100.0.lcssa, i64 %index
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 64
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0100.0.lcssa, i64 %index
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 96
  %interleaved.vec = shufflevector <4 x i32> %vec.ind, <4 x i32> splat (i32 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec, ptr %i.pk, align 4, !tbaa !39, !noalias !62
  %interleaved.vec662 = shufflevector <4 x i32> %step.add, <4 x i32> splat (i32 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec662, ptr %i.pm, align 4, !tbaa !39, !noalias !62
  %interleaved.vec663 = shufflevector <4 x i32> %step.add.2, <4 x i32> splat (i32 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec663, ptr %i.po, align 4, !tbaa !39, !noalias !62
  %interleaved.vec664 = shufflevector <4 x i32> %step.add.3, <4 x i32> splat (i32 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec664, ptr %i.pq, align 4, !tbaa !39, !noalias !62
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.pr = icmp eq i64 %index.next, %n.vec
  br i1 %i.pr, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count317.i
  br i1 %cmp.n, label %._crit_edge250.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.pj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph249.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec665 = and i64 %wide.trip.count317.i, 2147483644 ; 3 uses
  %i.ps = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ps, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index666 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next669, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind667 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next670, %vec.epilog.vector.body ] ; 2 uses
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0100.0.lcssa, i64 %index666
  %interleaved.vec668 = shufflevector <4 x i32> %vec.ind667, <4 x i32> splat (i32 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec668, ptr %i.pt, align 4, !tbaa !39, !noalias !62
  %index.next669 = add nuw i64 %index666, 4       ; 2 uses
  %vec.ind.next670 = add <4 x i32> %vec.ind667, splat (i32 4)
  %i.pu = icmp eq i64 %index.next669, %n.vec665
  br i1 %i.pu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n671 = icmp eq i64 %n.vec665, %wide.trip.count317.i
  br i1 %cmp.n671, label %._crit_edge250.i, label %.lr.ph249.i.preheader

.lr.ph249.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv314.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec665, %vec.epilog.middle.block ]
  br label %.lr.ph249.i

.loopexit177.i:                                   ; preds = %.lr.ph239.preheader.i, %.preheader176.i
  %indvars.iv.next302.i = add nuw nsw i64 %indvars.iv301.i, 1 ; 2 uses
  %exitcond309.not.i = icmp eq i64 %indvars.iv.next302.i, %wide.trip.count308.i
  %indvars.iv.next394 = add nsw i64 %indvars.iv393, -1
  br i1 %exitcond309.not.i, label %.critedge.i, label %bb.co, !llvm.loop !78

bb.co:                                            ; preds = %.loopexit177.i, %.lr.ph241.i
  %indvars.iv393 = phi i64 [ %indvars.iv.next394, %.loopexit177.i ], [ %i.pi, %.lr.ph241.i ] ; 3 uses
  %indvars.iv301.i = phi i64 [ %indvars.iv.next302.i, %.loopexit177.i ], [ 0, %.lr.ph241.i ] ; 2 uses
  %i.pv = trunc i64 %indvars.iv301.i to i32
  %i.pw = add i32 %i.pf, %i.pv
  %i.px = sub i32 %.neg139, %i.pw
  %i.py = zext i32 %i.px to i64
  %i.pz = mul nuw nsw i64 %i.py, 12
  %i.qa = add nuw nsw i64 %i.pz, 12
  %i.qb = load i32, ptr %i.pb, align 4, !tbaa !70
  %i.qc = icmp eq i32 %i.qb, -1
  br i1 %i.qc, label %.preheader176.i, label %.critedge.i.loopexit.split.loop.exit555

.preheader176.i:                                  ; preds = %bb.co
  %i.qd = icmp slt i64 %i.pg, %indvars.iv393
  br i1 %i.qd, label %.lr.ph239.preheader.i, label %.loopexit177.i

.lr.ph239.preheader.i:                            ; preds = %.preheader176.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep289.i, i64 %i.qa, i1 false)
  br label %.loopexit177.i

.critedge.i.loopexit.split.loop.exit555:          ; preds = %bb.co
  %i.qe = trunc nsw i64 %indvars.iv393 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.loopexit177.i, %.critedge.i.loopexit.split.loop.exit555, %.preheader178..critedge_crit_edge.i
  %indvar.next.pre-phi.i = phi i64 [ %.pre.i, %.preheader178..critedge_crit_edge.i ], [ %i.pg, %.critedge.i.loopexit.split.loop.exit555 ], [ %i.pg, %.loopexit177.i ] ; 2 uses
  %.167.lcssa.i = phi i32 [ %.066245.i, %.preheader178..critedge_crit_edge.i ], [ %i.qe, %.critedge.i.loopexit.split.loop.exit555 ], [ %indvars.iv292.i, %.loopexit177.i ] ; 4 uses
  %i.qf = sext i32 %.167.lcssa.i to i64
  %i.qg = icmp slt i64 %indvar.next.pre-phi.i, %i.qf
  %indvars.iv.next293.i = add nuw i32 %indvars.iv292.i, 1
  %indvars.iv.next307.i = add nsw i32 %indvars.iv306.i, -1
  br i1 %i.qg, label %.preheader178.i, label %.preheader.i, !llvm.loop !79

._crit_edge250.i:                                 ; preds = %.lr.ph249.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 24, i1 false), !alias.scope !62
  %i.qh = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #20
          to label %bb.cp unwind label %bb.bv     ; 3 uses

.lr.ph249.i:                                      ; preds = %.lr.ph249.i.preheader, %.lr.ph249.i
  %indvars.iv314.i = phi i64 [ %indvars.iv.next315.i, %.lr.ph249.i ], [ %indvars.iv314.i.ph, %.lr.ph249.i.preheader ] ; 3 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0100.0.lcssa, i64 %indvars.iv314.i ; 2 uses
  %i.qj = trunc nuw nsw i64 %indvars.iv314.i to i32
  store i32 %i.qj, ptr %i.qi, align 4, !tbaa !54, !noalias !62
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  store i32 -1, ptr %i.qk, align 4, !tbaa !49, !noalias !62
  %indvars.iv.next315.i = add nuw nsw i64 %indvars.iv314.i, 1 ; 2 uses
  %exitcond318.not.i = icmp eq i64 %indvars.iv.next315.i, %wide.trip.count317.i
  br i1 %exitcond318.not.i, label %._crit_edge250.i, label %.lr.ph249.i, !llvm.loop !80

bb.cp:                                            ; preds = %._crit_edge250.i
  store ptr %i.qh, ptr %0, align 8, !tbaa !34, !alias.scope !62
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 4 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ql, ptr %i.qm, align 8, !tbaa !56, !alias.scope !62
  store i32 0, ptr %i.qh, align 4, !tbaa !39
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ql, ptr %i.qn, align 8, !tbaa !33, !alias.scope !62
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qo, i8 0, i64 24, i1 false), !alias.scope !62
  %i.qp = icmp sgt i32 %.167.lcssa.i, 0
  br i1 %i.qp, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i, label %bb.dd

_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i:    ; preds = %bb.cp
  %wide.trip.count325.i = zext nneg i32 %.167.lcssa.i to i64
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

._crit_edge265.i:                                 ; preds = %bb.cz
  %.not.i.i.i91.i = icmp eq ptr %.sroa.0103.1.lcssa.i, null
  br i1 %.not.i.i.i91.i, label %bb.dd, label %bb.cq

bb.cq:                                            ; preds = %._crit_edge265.i
  %i.qq = ptrtoint ptr %.sroa.16.1.lcssa.i to i64
  %i.qr = sub i64 %i.qq, %i.rw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.1.lcssa.i, i64 noundef %i.qr) #21
  br label %bb.dd

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %bb.cz, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i
  %indvars.iv322.i = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %indvars.iv.next323.i, %bb.cz ] ; 3 uses
  %.sroa.16.0263.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %.sroa.16.1.lcssa.i, %bb.cz ] ; 2 uses
  %.sroa.10.0262.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %.sroa.10.1.lcssa.i, %bb.cz ] ; 2 uses
  %.sroa.0103.0261.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %.sroa.0103.1.lcssa.i, %bb.cz ] ; 4 uses
  %.not.i.i93.i = icmp eq ptr %.sroa.10.0262.i, %.sroa.0103.0261.i
  %spec.select167.i = select i1 %.not.i.i93.i, ptr %.sroa.10.0262.i, ptr %.sroa.0103.0261.i ; 2 uses
  %i.qs = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvars.iv322.i ; 2 uses
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !66 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 4 ; 2 uses
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !68
  %.not251.i = icmp sgt i32 %i.qt, %i.qv
  br i1 %.not251.i, label %._crit_edge257.i, label %.lr.ph256.preheader.i

.lr.ph256.preheader.i:                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %i.qw = sext i32 %i.qt to i64
  %i.qx = trunc nuw nsw i64 %indvars.iv322.i to i32
  br label %.lr.ph256.i

.lr.ph256.i:                                      ; preds = %bb.cx, %.lr.ph256.preheader.i
  %indvars.iv319.i = phi i64 [ %i.qw, %.lr.ph256.preheader.i ], [ %indvars.iv.next320.i, %bb.cx ] ; 5 uses
  %.sroa.16.1254.i = phi ptr [ %.sroa.16.0263.i, %.lr.ph256.preheader.i ], [ %.sroa.16.3.i, %bb.cx ] ; 5 uses
  %.sroa.10.1253.i = phi ptr [ %spec.select167.i, %.lr.ph256.preheader.i ], [ %.sroa.10.3.i, %bb.cx ] ; 3 uses
  %.sroa.0103.1252.i = phi ptr [ %.sroa.0103.0261.i, %.lr.ph256.preheader.i ], [ %.sroa.0103.3.i, %bb.cx ] ; 7 uses
  %.not.i.i55 = icmp eq ptr %.sroa.10.1253.i, %.sroa.16.1254.i
  br i1 %.not.i.i55, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph256.i
  %i.qy = trunc nsw i64 %indvars.iv319.i to i32
  store i32 %i.qy, ptr %.sroa.10.1253.i, align 4, !tbaa !39
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.cs:                                            ; preds = %.lr.ph256.i
  %i.qz = ptrtoint ptr %.sroa.16.1254.i to i64
  %i.ra = ptrtoint ptr %.sroa.0103.1252.i to i64
  %i.rb = sub i64 %i.qz, %i.ra                    ; 6 uses
  %i.rc = icmp eq i64 %i.rb, 9223372036854775804
  br i1 %i.rc, label %bb.ct, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
          to label %.noexc95.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc95.i:                                       ; preds = %bb.ct
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cs
  %i.rd = ashr exact i64 %i.rb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i58 = call i64 @llvm.umax.i64(i64 %i.rd, i64 1)
  %i.re = add nsw i64 %.sroa.speculated.i.i.i.i58, %i.rd ; 2 uses
  %i.rf = icmp ult i64 %i.re, %i.rd
  %i.rg = call i64 @llvm.umin.i64(i64 %i.re, i64 2305843009213693951)
  %i.rh = select i1 %i.rf, i64 2305843009213693951, i64 %i.rg ; 3 uses
  %.not.i.i.i94.i = icmp ne i64 %i.rh, 0
  call void @llvm.assume(i1 %.not.i.i.i94.i)
  %i.ri = shl nuw nsw i64 %i.rh, 2
  %i.rj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ri) #20
          to label %.noexc96.i unwind label %.loopexit.i59 ; 4 uses

.noexc96.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.rk = getelementptr inbounds i8, ptr %i.rj, i64 %i.rb ; 2 uses
  %i.rl = trunc nsw i64 %indvars.iv319.i to i32
  store i32 %i.rl, ptr %i.rk, align 4, !tbaa !39
  %i.rm = icmp sgt i64 %i.rb, 0
  br i1 %i.rm, label %bb.cu, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.cu:                                            ; preds = %.noexc96.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rj, ptr align 4 %.sroa.0103.1252.i, i64 %i.rb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.cu, %.noexc96.i
  %.not.i17.i.i.i61 = icmp eq ptr %.sroa.0103.1252.i, null
  br i1 %.not.i17.i.i.i61, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.1252.i, i64 noundef %i.rb) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE15_M_range_insertIN3gmx12ArrayRefIterIKiEEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EET_SB_St20forward_iterator_tag:bb.a
  %i.ea = select i1 %i.dy, i64 2305843009213693951, i64 %i.dz ; 3 uses
  %.not.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.eb = shl nuw nsw i64 %i.ea, 2
  %i.ec = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #20
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, %bb.p
  %i.ed = phi ptr [ %i.ec, %bb.p ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.ee = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.ef = sub i64 %i.ee, %i.ds                    ; 4 uses
  %i.eg = icmp sgt i64 %i.ef, 4
  br i1 %i.eg, label %bb.q, label %bb.r, !prof !57

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ed, ptr align 4 %i.dr, i64 %i.ef, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit67

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  %i.eh = icmp eq i64 %i.ef, 4
  br i1 %i.eh, label %bb.s, label %_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit67

bb.s:                                             ; preds = %bb.r
  %i.ei = load i32, ptr %i.dr, align 4, !tbaa !39
  store i32 %i.ei, ptr %i.ed, align 4, !tbaa !39
  br label %_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit67

_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit67: ; preds = %bb.s, %bb.r, %bb.q
  %i.ej = getelementptr i8, ptr %i.ed, i64 %i.ef
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ej, ptr align 4 %2, i64 %i.c, i1 false), !tbaa !39
  %i.ek = add i64 %i.c, %i.ee
  %i.el = add i64 %i.ek, 4
  %i.em = sub i64 %i.el, %i.ds
  %i.en = getelementptr i8, ptr %i.ed, i64 %i.em
  %scevgep = getelementptr i8, ptr %i.en, i64 -4  ; 3 uses
  %i.eo = sub i64 %i.j, %i.ee                     ; 4 uses
  %i.ep = icmp sgt i64 %i.eo, 4
  br i1 %i.ep, label %bb.t, label %bb.u, !prof !57

bb.t:                                             ; preds = %_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit67
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scevgep, ptr align 4 %1, i64 %i.eo, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit67
  %i.eq = icmp eq i64 %i.eo, 4
  br i1 %i.eq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.er = load i32, ptr %1, align 4, !tbaa !39
  store i32 %i.er, ptr %scevgep, align 4, !tbaa !39
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.es = getelementptr inbounds i8, ptr %scevgep, i64 %i.eo
  %.not.i69 = icmp eq ptr %i.dr, null
  br i1 %.not.i69, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.et = sub i64 %i.i, %i.ds
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.et) #21
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.w, %bb.x
  store ptr %i.ed, ptr %0, align 8, !tbaa !34
  store ptr %i.es, ptr %i.g, align 8, !tbaa !33
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ea
  store ptr %i.eu, ptr %i.e, align 8, !tbaa !56
  br label %_ZSt4copyIN3gmx12ArrayRefIterIKiEEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SC_SB_.exit

_ZSt4copyIN3gmx12ArrayRefIterIKiEEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i57, %.lr.ph.i.i.i.i.i, %middle.block136, %vec.epilog.middle.block153, %middle.block174, %vec.epilog.middle.block191, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { noreturn }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !6, i64 4}
!15 = !{!"_ZTS7t_graph", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !16, i64 16, !22, i64 64, !23, i64 72, !28, i64 96, !32, i64 120}
!16 = !{!"_ZTSN3gmx11ListOfListsIiEE", !17, i64 0, !17, i64 24}
!17 = !{!"_ZTSSt6vectorIiSaIiEE", !18, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !19, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!21 = !{!"p1 int", !11, i64 0}
!22 = !{!"bool", !7, i64 0}
!23 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIiEESaIS2_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIiEESaIS2_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIiEESaIS2_EE12_Vector_implE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIiEESaIS2_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSN3gmx11BasicVectorIiEE", !11, i64 0}
!28 = !{!"_ZTSSt6vectorI5egColSaIS0_EE", !29, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseI5egColSaIS0_EE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseI5egColSaIS0_EE12_Vector_implE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseI5egColSaIS0_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!32 = !{!"_ZTSN7t_graph11BondedPartsE", !7, i64 0}
!33 = !{!20, !21, i64 8}
!34 = !{!20, !21, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"_ZTS5egCol", !7, i64 0}
!37 = !{!15, !6, i64 8}
!38 = distinct !{!38, !13}
!39 = !{!6, !6, i64 0}
!40 = distinct !{!40, !13}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !11, i64 0}
!43 = !{!44, !46, i64 0}
!44 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !45, i64 0, !47, i64 8, !7, i64 16}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !46, i64 0}
!46 = !{!"p1 omnipotent char", !11, i64 0}
!47 = !{!"long", !7, i64 0}
!48 = !{!7, !7, i64 0}
!49 = !{!50, !6, i64 4}
!50 = !{!"_ZTS5t_sid", !6, i64 0, !6, i64 4}
!51 = !{!45, !46, i64 0}
!52 = !{!47, !47, i64 0}
!53 = !{!44, !47, i64 8}
!54 = !{!50, !6, i64 0}
!55 = distinct !{!55, !13}
!56 = !{!20, !21, i64 16}
!57 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZL9merge_sidiiiN3gmx8ArrayRefI5t_sidEE: argument 0"}
!64 = distinct !{!64, !"_ZL9merge_sidiiiN3gmx8ArrayRefI5t_sidEE"}
!65 = distinct !{!65, !13}
!66 = !{!67, !6, i64 0}
!67 = !{!"_ZTS11t_merge_sid", !6, i64 0, !6, i64 4, !6, i64 8}
!68 = !{!67, !6, i64 4}
!69 = distinct !{!69, !13}
!70 = !{!67, !6, i64 8}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13, !74, !75}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!"branch_weights", i32 4, i32 12}
!77 = distinct !{!77, !13, !74, !75}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13, !75, !74}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{null, null, null, null, null}
!85 = distinct !{!85, !13}
!86 = distinct !{null, null, null, null, null, null}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{null, null, null}
!90 = distinct !{null, null, null}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !13}
!94 = !{!11, !11, i64 0}
!95 = distinct !{null, null}
!96 = distinct !{null, null, null}
!97 = distinct !{!97, !13}
!98 = !{!21, !21, i64 0}
!99 = distinct !{!99, !13, !74, !75}
!100 = !{!"branch_weights", i32 8, i32 24}
!101 = distinct !{!101, !13, !74, !75}
!102 = distinct !{!102, !13, !74}
!103 = distinct !{!103, !13, !74, !75}
!104 = distinct !{!104, !13, !74, !75}
!105 = distinct !{!105, !13, !74}
!106 = distinct !{!106, !13, !74, !75}
!107 = distinct !{!107, !13, !74, !75}
!108 = distinct !{!108, !13, !74}
end_hunk_1
