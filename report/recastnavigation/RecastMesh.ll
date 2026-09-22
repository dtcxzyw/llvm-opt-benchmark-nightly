Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMesh?download=true
inline.NumInlined: 287
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z15rcBuildPolyMeshP9rcContextRK12rcContourSetiR10rcPolyMesh:bb.a
  %indvars.iv.i419.epil.init = phi i64 [ 0, %.lr.ph.i417 ], [ %indvars.iv.next.i420.1, %.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1772 = trunc i32 %i.nf to i1
  tail call void @llvm.assume(i1 %lcmp.mod1772)
  %indvars45.i.epil = trunc i64 %indvars.iv.i419.epil.init to i32
  %i.nh = add nsw i32 %i.ha, %indvars45.i.epil
  %i.ni = srem i32 %i.nh, %i.my
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [2 x i8], ptr %i.mq, i64 %i.nj
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !77
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv.i419.epil.init
  store i16 %i.nl, ptr %i.nm, align 2, !tbaa !77
  br label %.preheader.i

.preheader.i:                                     ; preds = %.epil.preheader1769, %.preheader.i.loopexit.unr-lcssa, %_ZL14countPolyVertsPKti.exit35.i
  %.027.lcssa.i = phi i64 [ 0, %_ZL14countPolyVertsPKti.exit35.i ], [ %wide.trip.count.i418, %.preheader.i.loopexit.unr-lcssa ], [ %wide.trip.count.i418, %.epil.preheader1769 ] ; 2 uses
  %i.nn = icmp sgt i32 %i.nd, 1
  br i1 %i.nn, label %.lr.ph42.i, label %_ZL14mergePolyVertsPtS_iiS_i.exit

.lr.ph42.i:                                       ; preds = %.preheader.i
  %i.no = add nsw i32 %i.nd, -1                   ; 3 uses
  %xtraiter1776 = and i32 %i.no, 1
  %i.np = icmp eq i32 %i.nd, 2
  br i1 %i.np, label %.epil.preheader1775, label %.lr.ph42.i.new

.lr.ph42.i.new:                                   ; preds = %.lr.ph42.i
  %unroll_iter1779 = and i32 %i.no, -2
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ba, %.lr.ph.i417.new
  %indvars.iv.i419 = phi i64 [ 0, %.lr.ph.i417.new ], [ %indvars.iv.next.i420.1, %bb.ba ] ; 4 uses
  %niter1774 = phi i64 [ 0, %.lr.ph.i417.new ], [ %niter1774.next.1, %bb.ba ]
  %indvars45.i = trunc i64 %indvars.iv.i419 to i32
  %i.nq = add nsw i32 %i.ha, %indvars45.i
  %i.nr = srem i32 %i.nq, %i.my
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds [2 x i8], ptr %i.mq, i64 %i.ns
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !77
  %indvars.iv.next.i420 = or disjoint i64 %indvars.iv.i419, 1 ; 2 uses
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv.i419
  store i16 %i.nu, ptr %i.nv, align 2, !tbaa !77
  %indvars45.i.1 = trunc i64 %indvars.iv.next.i420 to i32
  %i.nw = add nsw i32 %i.ha, %indvars45.i.1
  %i.nx = srem i32 %i.nw, %i.my
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds [2 x i8], ptr %i.mq, i64 %i.ny
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !77
  %indvars.iv.next.i420.1 = add nuw nsw i64 %indvars.iv.i419, 2 ; 2 uses
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv.next.i420
  store i16 %i.oa, ptr %i.ob, align 2, !tbaa !77
  %niter1774.next.1 = add i64 %niter1774, 2       ; 2 uses
  %niter1774.ncmp.1 = icmp eq i64 %niter1774.next.1, %unroll_iter1773
  br i1 %niter1774.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %bb.ba

bb.bb:                                            ; preds = %bb.bb, %.lr.ph42.i.new
  %indvars.iv48.i = phi i64 [ %.027.lcssa.i, %.lr.ph42.i.new ], [ %indvars.iv.next49.i.1, %bb.bb ] ; 3 uses
  %.041.i = phi i32 [ 0, %.lr.ph42.i.new ], [ %i.oq, %bb.bb ] ; 3 uses
  %niter1780 = phi i32 [ 0, %.lr.ph42.i.new ], [ %niter1780.next.1, %bb.bb ]
  %i.oc = add nsw i32 %i.hb, %.041.i
  %i.od = srem i32 %i.oc, %i.nd
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds [2 x i8], ptr %i.mt, i64 %i.oe
  %i.og = load i16, ptr %i.of, align 2, !tbaa !77
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv48.i
  store i16 %i.og, ptr %i.oh, align 2, !tbaa !77
  %i.oi = or disjoint i32 %.041.i, 1
  %i.oj = add nsw i32 %i.hb, %i.oi
  %i.ok = srem i32 %i.oj, %i.nd
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds [2 x i8], ptr %i.mt, i64 %i.ol
  %i.on = load i16, ptr %i.om, align 2, !tbaa !77
  %indvars.iv.next49.i.1 = add nuw nsw i64 %indvars.iv48.i, 2 ; 2 uses
  %i.oo = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv48.i
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 2
  store i16 %i.on, ptr %i.op, align 2, !tbaa !77
  %i.oq = add nuw nsw i32 %.041.i, 2              ; 2 uses
  %niter1780.next.1 = add i32 %niter1780, 2       ; 2 uses
  %niter1780.ncmp.1 = icmp eq i32 %niter1780.next.1, %unroll_iter1779
  br i1 %niter1780.ncmp.1, label %_ZL14mergePolyVertsPtS_iiS_i.exit.loopexit.unr-lcssa, label %bb.bb

_ZL14mergePolyVertsPtS_iiS_i.exit.loopexit.unr-lcssa: ; preds = %bb.bb
  %lcmp.mod1777.not = icmp eq i32 %xtraiter1776, 0
  br i1 %lcmp.mod1777.not, label %_ZL14mergePolyVertsPtS_iiS_i.exit, label %.epil.preheader1775

.epil.preheader1775:                              ; preds = %_ZL14mergePolyVertsPtS_iiS_i.exit.loopexit.unr-lcssa, %.lr.ph42.i
  %indvars.iv48.i.epil.init = phi i64 [ %.027.lcssa.i, %.lr.ph42.i ], [ %indvars.iv.next49.i.1, %_ZL14mergePolyVertsPtS_iiS_i.exit.loopexit.unr-lcssa ]
  %.041.i.epil.init = phi i32 [ 0, %.lr.ph42.i ], [ %i.oq, %_ZL14mergePolyVertsPtS_iiS_i.exit.loopexit.unr-lcssa ]
  %lcmp.mod1778 = trunc i32 %i.no to i1
  tail call void @llvm.assume(i1 %lcmp.mod1778)
  %i.or = add nsw i32 %i.hb, %.041.i.epil.init
  %i.os = srem i32 %i.or, %i.nd
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds [2 x i8], ptr %i.mt, i64 %i.ot
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !77
  %i.ow = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv48.i.epil.init
  store i16 %i.ov, ptr %i.ow, align 2, !tbaa !77
  br label %_ZL14mergePolyVertsPtS_iiS_i.exit

_ZL14mergePolyVertsPtS_iiS_i.exit:                ; preds = %.epil.preheader1775, %_ZL14mergePolyVertsPtS_iiS_i.exit.loopexit.unr-lcssa, %.preheader.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.mq, ptr nonnull align 2 %i.da, i64 %i.df, i1 false)
  %i.ox = trunc nsw i64 %indvars.iv.next9911410 to i32
  %.not390 = icmp eq i32 %.2326, %i.ox
  br i1 %.not390, label %.preheader601, label %bb.bc

bb.bc:                                            ; preds = %_ZL14mergePolyVertsPtS_iiS_i.exit
  %i.oy = mul nsw i64 %indvars.iv.next9911410, %i.br
  %i.oz = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.oy
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.mt, ptr nonnull align 2 %i.oz, i64 %i.bs, i1 false)
  br label %.preheader601

.preheader601:                                    ; preds = %_ZL14mergePolyVertsPtS_iiS_i.exit, %bb.bc
  %i.pa = icmp sgt i64 %indvars.iv9901408, 2
  br i1 %i.pa, label %.lr.ph782.preheader, label %.thread.loopexit.loopexit

.thread.loopexit.loopexit:                        ; preds = %.preheader601, %._crit_edge783
  %indvars.iv990.lcssa.ph = phi i64 [ %indvars.iv9901408, %._crit_edge783 ], [ %indvars.iv.next9911410, %.preheader601 ]
  %i.pb = trunc nsw i64 %indvars.iv990.lcssa.ph to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit.loopexit, %bb.ao
  %.4 = phi i32 [ %.1335, %bb.ao ], [ %i.pb, %.thread.loopexit.loopexit ] ; 2 uses
  %.not392794 = icmp sgt i32 %.4, 0
  br i1 %.not392794, label %.lr.ph796, label %.loopexit600

.lr.ph796:                                        ; preds = %.thread
  %i.pc = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  %i.pd = getelementptr inbounds nuw i8, ptr %i.dl, i64 30
  %wide.trip.count1001 = zext nneg i32 %.4 to i64
  %.pre = load i32, ptr %i.cd, align 4, !tbaa !73
  br label %bb.be

bb.bd:                                            ; preds = %.critedge
  %indvars.iv.next999 = add nuw nsw i64 %indvars.iv998, 1 ; 2 uses
  %exitcond1002.not = icmp eq i64 %indvars.iv.next999, %wide.trip.count1001
  br i1 %exitcond1002.not, label %.loopexit600, label %bb.be

bb.be:                                            ; preds = %.lr.ph796, %bb.bd
  %i.pe = phi i32 [ %.pre, %.lr.ph796 ], [ %i.qn, %bb.bd ] ; 2 uses
  %indvars.iv998 = phi i64 [ 0, %.lr.ph796 ], [ %indvars.iv.next999, %bb.bd ] ; 3 uses
  %i.pf = mul i64 %i.dh, %indvars.iv998
  %i.pg = sub i64 %i.pf, %i.cx
  %i.ph = load ptr, ptr %i.bv, align 8, !tbaa !69 ; 2 uses
  %i.pi = ptrtoaddr ptr %i.ph to i64
  %i.pj = mul i32 %i.de, %i.pe
  %i.pk = sext i32 %i.pj to i64                   ; 2 uses
  %i.pl = getelementptr inbounds [2 x i8], ptr %i.ph, i64 %i.pk ; 7 uses
  %i.pm = mul nsw i64 %indvars.iv998, %i.br
  %i.pn = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.pm ; 7 uses
  br i1 %i.dg, label %iter.check, label %.critedge

iter.check:                                       ; preds = %bb.be
  br i1 %min.iters.check, label %.lr.ph792.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.po = add i64 %i.pg, %i.pi
  %i.pp = shl nsw i64 %i.pk, 1
  %i.pq = add i64 %i.po, %i.pp
  %i.pr = add i64 %i.pq, -1
  %diff.check = icmp ult i64 %i.pr, 31
  br i1 %diff.check, label %.lr.ph792.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check1415, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %i.pn, i64 %index ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %wide.load = load <8 x i16>, ptr %i.ps, align 2, !tbaa !77
  %wide.load1416 = load <8 x i16>, ptr %i.pt, align 2, !tbaa !77
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.pl, i64 %index ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  store <8 x i16> %wide.load, ptr %i.pu, align 2, !tbaa !77
  store <8 x i16> %wide.load1416, ptr %i.pv, align 2, !tbaa !77
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.pw = icmp eq i64 %index.next, %n.vec
  br i1 %i.pw, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph792.preheader, label %vec.epilog.ph, !prof !114

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1418 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1420, %vec.epilog.vector.body ] ; 3 uses
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %i.pn, i64 %index1418
  %wide.load1419 = load <4 x i16>, ptr %i.px, align 2, !tbaa !77
  %i.py = getelementptr inbounds nuw [2 x i8], ptr %i.pl, i64 %index1418
  store <4 x i16> %wide.load1419, ptr %i.py, align 2, !tbaa !77
  %index.next1420 = add nuw i64 %index1418, 4     ; 2 uses
  %i.pz = icmp eq i64 %index.next1420, %n.vec1417
  br i1 %i.pz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n1421, label %.critedge, label %.lr.ph792.preheader

.lr.ph792.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv993.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1417, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod1782.not, label %.lr.ph792.prol.loopexit, label %.lr.ph792.prol

.lr.ph792.prol:                                   ; preds = %.lr.ph792.preheader, %.lr.ph792.prol
  %indvars.iv993.prol = phi i64 [ %indvars.iv.next994.prol, %.lr.ph792.prol ], [ %indvars.iv993.ph, %.lr.ph792.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph792.prol ], [ 0, %.lr.ph792.preheader ]
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %i.pn, i64 %indvars.iv993.prol
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !77
  %i.qc = getelementptr inbounds nuw [2 x i8], ptr %i.pl, i64 %indvars.iv993.prol
  store i16 %i.qb, ptr %i.qc, align 2, !tbaa !77
  %indvars.iv.next994.prol = add nuw nsw i64 %indvars.iv993.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1781
  br i1 %prol.iter.cmp.not, label %.lr.ph792.prol.loopexit, label %.lr.ph792.prol, !llvm.loop !86

.lr.ph792.prol.loopexit:                          ; preds = %.lr.ph792.prol, %.lr.ph792.preheader
  %indvars.iv993.unr = phi i64 [ %indvars.iv993.ph, %.lr.ph792.preheader ], [ %indvars.iv.next994.prol, %.lr.ph792.prol ]
  %i.qd = sub nsw i64 %indvars.iv993.ph, %wide.trip.count.i.i
  %i.qe = icmp ugt i64 %i.qd, -4
  br i1 %i.qe, label %.critedge, label %.lr.ph792

.critedge:                                        ; preds = %.lr.ph792.prol.loopexit, %.lr.ph792, %middle.block, %vec.epilog.middle.block, %bb.be
  %i.qf = load i16, ptr %i.pc, align 4, !tbaa !116
  %i.qg = load ptr, ptr %i.bz, align 8, !tbaa !70
  %i.qh = sext i32 %i.pe to i64                   ; 2 uses
  %i.qi = getelementptr inbounds [2 x i8], ptr %i.qg, i64 %i.qh
  store i16 %i.qf, ptr %i.qi, align 2, !tbaa !77
  %i.qj = load i8, ptr %i.pd, align 2, !tbaa !117
  %i.qk = load ptr, ptr %i.cb, align 8, !tbaa !71
  %i.ql = getelementptr inbounds i8, ptr %i.qk, i64 %i.qh
  store i8 %i.qj, ptr %i.ql, align 1, !tbaa !78
  %i.qm = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  %i.qn = add nsw i32 %i.qm, 1                    ; 3 uses
  store i32 %i.qn, ptr %i.cd, align 4, !tbaa !73
  %.not391 = icmp slt i32 %i.qm, %.0350.lcssa1115
  br i1 %.not391, label %bb.bd, label %bb.bf

.lr.ph792:                                        ; preds = %.lr.ph792.prol.loopexit, %.lr.ph792
  %indvars.iv993 = phi i64 [ %indvars.iv.next994.3, %.lr.ph792 ], [ %indvars.iv993.unr, %.lr.ph792.prol.loopexit ] ; 6 uses
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %i.pn, i64 %indvars.iv993
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !77
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %i.pl, i64 %indvars.iv993
  store i16 %i.qp, ptr %i.qq, align 2, !tbaa !77
  %indvars.iv.next994 = add nuw nsw i64 %indvars.iv993, 1 ; 2 uses
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.pn, i64 %indvars.iv.next994
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !77
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %i.pl, i64 %indvars.iv.next994
  store i16 %i.qs, ptr %i.qt, align 2, !tbaa !77
  %indvars.iv.next994.1 = add nuw nsw i64 %indvars.iv993, 2 ; 2 uses
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %i.pn, i64 %indvars.iv.next994.1
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !77
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.pl, i64 %indvars.iv.next994.1
  store i16 %i.qv, ptr %i.qw, align 2, !tbaa !77
  %indvars.iv.next994.2 = add nuw nsw i64 %indvars.iv993, 3 ; 2 uses
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %i.pn, i64 %indvars.iv.next994.2
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !77
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %i.pl, i64 %indvars.iv.next994.2
  store i16 %i.qy, ptr %i.qz, align 2, !tbaa !77
  %indvars.iv.next994.3 = add nuw nsw i64 %indvars.iv993, 4 ; 2 uses
  %exitcond997.not.3 = icmp eq i64 %indvars.iv.next994.3, %wide.trip.count.i.i
  br i1 %exitcond997.not.3, label %.critedge, label %.lr.ph792, !llvm.loop !87

.loopexit600:                                     ; preds = %bb.bd, %._crit_edge757, %.thread, %bb.ac, %._crit_edge762
  %indvars.iv.next1004 = add nuw nsw i64 %indvars.iv1003, 1 ; 2 uses
  %i.ra = load i32, ptr %i.ah, align 8, !tbaa !108
  %i.rb = sext i32 %i.ra to i64
  %.not397 = icmp slt i64 %indvars.iv.next1004, %i.rb
  br i1 %.not397, label %bb.ac, label %.critedge405.preheader

bb.bf:                                            ; preds = %.critedge
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.12, i32 noundef %i.qn, i32 noundef %.0350.lcssa1115) #8
  br label %bb.ev

.lr.ph813:                                        ; preds = %.critedge405.preheader, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread
  %.0314812 = phi i32 [ %i.azn, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread ], [ 0, %.critedge405.preheader ] ; 12 uses
  %i.rc = sext i32 %.0314812 to i64               ; 2 uses
  %i.rd = getelementptr inbounds i8, ptr %i.bm, i64 %i.rc
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !78
  %.not398 = icmp eq i8 %i.re, 0
  br i1 %.not398, label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph813
  %i.rf = trunc i32 %.0314812 to i16              ; 16 uses
  %i.rg = load i32, ptr %i.ce, align 4, !tbaa !74 ; 5 uses
  %i.rh = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  %i.ri = icmp sgt i32 %i.rh, 0
  br i1 %i.ri, label %.lr.ph125.i, label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread

.lr.ph125.i:                                      ; preds = %bb.bg
  %i.rj = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.rk = shl i32 %i.rg, 1                        ; 2 uses
  %i.rl = icmp sgt i32 %i.rg, 0
  %wide.trip.count.i.i424 = zext nneg i32 %i.rg to i64 ; 2 uses
  br i1 %i.rl, label %.lr.ph.preheader.i.us.preheader.i, label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread

.lr.ph.preheader.i.us.preheader.i:                ; preds = %.lr.ph125.i
  %wide.trip.count181.i = zext nneg i32 %i.rh to i64
  %broadcast.splatinsert1593 = insertelement <4 x i16> poison, i16 %i.rf, i64 0
  %broadcast.splat1594 = shufflevector <4 x i16> %broadcast.splatinsert1593, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.preheader.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %._crit_edge.us.thread.i, %.lr.ph.preheader.i.us.preheader.i
  %indvars.iv178.i = phi i64 [ 0, %.lr.ph.preheader.i.us.preheader.i ], [ %indvars.iv.next179.i, %._crit_edge.us.thread.i ] ; 2 uses
  %.085122.us.i = phi i32 [ 0, %.lr.ph.preheader.i.us.preheader.i ], [ %.186.us.i, %._crit_edge.us.thread.i ]
  %.087121.us.i = phi i32 [ 0, %.lr.ph.preheader.i.us.preheader.i ], [ %.188.lcssa.us216.i, %._crit_edge.us.thread.i ] ; 3 uses
  %i.rm = trunc nuw nsw i64 %indvars.iv178.i to i32
  %i.rn = mul i32 %i.rk, %i.rm
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr inbounds [2 x i8], ptr %i.rj, i64 %i.ro ; 3 uses
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.bh, %.lr.ph.preheader.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.bh ] ; 3 uses
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.rp, i64 %indvars.iv.i.us.i
  %i.rr = load i16, ptr %i.rq, align 2, !tbaa !77
  %i.rs = icmp eq i16 %i.rr, -1
  br i1 %i.rs, label %._crit_edge.loopexit.split.loop.exit15.i.us.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.us.i
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i424
  br i1 %exitcond.not.i.us.i, label %_ZL14countPolyVertsPKti.exit.us.i, label %.lr.ph.i.us.i

._crit_edge.loopexit.split.loop.exit15.i.us.i:    ; preds = %.lr.ph.i.us.i
  %i.rt = trunc nuw nsw i64 %indvars.iv.i.us.i to i32
  br label %_ZL14countPolyVertsPKti.exit.us.i

_ZL14countPolyVertsPKti.exit.us.i:                ; preds = %bb.bh, %._crit_edge.loopexit.split.loop.exit15.i.us.i
  %i.ru = phi i32 [ %i.rt, %._crit_edge.loopexit.split.loop.exit15.i.us.i ], [ %i.rg, %bb.bh ] ; 4 uses
  %i.rv = icmp sgt i32 %i.ru, 0
  br i1 %i.rv, label %.lr.ph.us.preheader.i, label %._crit_edge.us.thread.i

.lr.ph.us.preheader.i:                            ; preds = %_ZL14countPolyVertsPKti.exit.us.i
  %wide.trip.count.i439 = zext nneg i32 %i.ru to i64 ; 3 uses
  %min.iters.check1590 = icmp ult i32 %i.ru, 8
  br i1 %min.iters.check1590, label %.lr.ph.us.i.preheader, label %vector.ph1591

vector.ph1591:                                    ; preds = %.lr.ph.us.preheader.i
  %n.vec1592 = and i64 %wide.trip.count.i439, 2147483640 ; 3 uses
  %i.rw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.087121.us.i, i64 0
  br label %vector.body1595

vector.body1595:                                  ; preds = %vector.body1595, %vector.ph1591
  %index1596 = phi i64 [ 0, %vector.ph1591 ], [ %index.next1603, %vector.body1595 ] ; 2 uses
  %vec.phi1597 = phi <4 x i32> [ zeroinitializer, %vector.ph1591 ], [ %i.sh, %vector.body1595 ]
  %vec.phi1598 = phi <4 x i32> [ zeroinitializer, %vector.ph1591 ], [ %i.si, %vector.body1595 ]
  %vec.phi1599 = phi <4 x i32> [ %i.rw, %vector.ph1591 ], [ %i.sf, %vector.body1595 ]
  %vec.phi1600 = phi <4 x i32> [ zeroinitializer, %vector.ph1591 ], [ %i.sg, %vector.body1595 ]
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %i.rp, i64 %index1596 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %wide.load1601 = load <4 x i16>, ptr %i.rx, align 2, !tbaa !77
  %wide.load1602 = load <4 x i16>, ptr %i.ry, align 2, !tbaa !77
  %i.rz = freeze <4 x i16> %wide.load1601
  %i.sa = freeze <4 x i16> %wide.load1602
  %i.sb = icmp eq <4 x i16> %i.rz, %broadcast.splat1594
  %i.sc = icmp eq <4 x i16> %i.sa, %broadcast.splat1594
  %i.sd = zext <4 x i1> %i.sb to <4 x i32>        ; 2 uses
  %i.se = zext <4 x i1> %i.sc to <4 x i32>        ; 2 uses
  %i.sf = add <4 x i32> %vec.phi1599, %i.sd       ; 2 uses
  %i.sg = add <4 x i32> %vec.phi1600, %i.se       ; 2 uses
  %i.sh = add <4 x i32> %vec.phi1597, %i.sd       ; 2 uses
  %i.si = add <4 x i32> %vec.phi1598, %i.se       ; 2 uses
  %index.next1603 = add nuw i64 %index1596, 8     ; 2 uses
  %i.sj = icmp eq i64 %index.next1603, %n.vec1592
  br i1 %i.sj, label %middle.block1604, label %vector.body1595, !llvm.loop !88

middle.block1604:                                 ; preds = %vector.body1595
  %bin.rdx1605 = add <4 x i32> %i.si, %i.sh
  %i.sk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1605) ; 2 uses
  %bin.rdx1606 = add <4 x i32> %i.sg, %i.sf
  %i.sl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1606) ; 2 uses
  %cmp.n1607 = icmp eq i64 %n.vec1592, %wide.trip.count.i439
  br i1 %cmp.n1607, label %._crit_edge.us.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph.us.preheader.i, %middle.block1604
  %indvars.iv.i440.ph = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %n.vec1592, %middle.block1604 ]
  %.082116.us.i.ph = phi i32 [ 0, %.lr.ph.us.preheader.i ], [ %i.sk, %middle.block1604 ]
  %.188115.us.i.ph = phi i32 [ %.087121.us.i, %.lr.ph.us.preheader.i ], [ %i.sl, %middle.block1604 ]
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %.lr.ph.us.i
  %indvars.iv.i440 = phi i64 [ %indvars.iv.next.i441, %.lr.ph.us.i ], [ %indvars.iv.i440.ph, %.lr.ph.us.i.preheader ] ; 2 uses
  %.082116.us.i = phi i32 [ %.183.us.i, %.lr.ph.us.i ], [ %.082116.us.i.ph, %.lr.ph.us.i.preheader ]
  %.188115.us.i = phi i32 [ %.289.us.i, %.lr.ph.us.i ], [ %.188115.us.i.ph, %.lr.ph.us.i.preheader ]
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %i.rp, i64 %indvars.iv.i440
  %i.sn = load i16, ptr %i.sm, align 2, !tbaa !77
  %.fr.i = freeze i16 %i.sn
  %i.so = icmp eq i16 %.fr.i, %i.rf
  %i.sp = zext i1 %i.so to i32                    ; 2 uses
  %.289.us.i = add nsw i32 %.188115.us.i, %i.sp   ; 2 uses
  %.183.us.i = add i32 %.082116.us.i, %i.sp       ; 2 uses
  %indvars.iv.next.i441 = add nuw nsw i64 %indvars.iv.i440, 1 ; 2 uses
  %exitcond.not.i442 = icmp eq i64 %indvars.iv.next.i441, %wide.trip.count.i439
  br i1 %exitcond.not.i442, label %._crit_edge.us.i, label %.lr.ph.us.i, !llvm.loop !89

._crit_edge.us.i:                                 ; preds = %.lr.ph.us.i, %middle.block1604
  %.289.us.i.lcssa = phi i32 [ %i.sl, %middle.block1604 ], [ %.289.us.i, %.lr.ph.us.i ]
  %.183.us.i.lcssa = phi i32 [ %i.sk, %middle.block1604 ], [ %.183.us.i, %.lr.ph.us.i ] ; 2 uses
  %.not91.us.i = icmp eq i32 %.183.us.i.lcssa, 0
  %.neg.us.i = xor i32 %.183.us.i.lcssa, -1
end_hunk_0
begin_hunk_1_@_Z15rcBuildPolyMeshP9rcContextRK12rcContourSetiR10rcPolyMesh:bb.a
  br i1 %i.xo, label %.lr.ph.preheader.i458, label %._crit_edge.i453

.lr.ph.preheader.i458:                            ; preds = %_ZL14countPolyVertsPKti.exit.i
  %wide.trip.count.i459 = zext nneg i32 %i.xn to i64 ; 3 uses
  %min.iters.check1559 = icmp ult i32 %i.xn, 8
  br i1 %min.iters.check1559, label %.lr.ph.i460.preheader, label %vector.ph1560

vector.ph1560:                                    ; preds = %.lr.ph.preheader.i458
  %n.vec1561 = and i64 %wide.trip.count.i459, 2147483640 ; 3 uses
  %i.xp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0371598.i, i64 0
  br label %vector.body1564

vector.body1564:                                  ; preds = %vector.body1564, %vector.ph1560
  %index1565 = phi i64 [ 0, %vector.ph1560 ], [ %index.next1570, %vector.body1564 ] ; 2 uses
  %vec.phi1566 = phi <4 x i32> [ %i.xp, %vector.ph1560 ], [ %i.xw, %vector.body1564 ]
  %vec.phi1567 = phi <4 x i32> [ zeroinitializer, %vector.ph1560 ], [ %i.xx, %vector.body1564 ]
  %i.xq = getelementptr inbounds nuw [2 x i8], ptr %i.xi, i64 %index1565 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %wide.load1568 = load <4 x i16>, ptr %i.xq, align 2, !tbaa !77
  %wide.load1569 = load <4 x i16>, ptr %i.xr, align 2, !tbaa !77
  %i.xs = icmp eq <4 x i16> %wide.load1568, %broadcast.splat1563
  %i.xt = icmp eq <4 x i16> %wide.load1569, %broadcast.splat1563
  %i.xu = zext <4 x i1> %i.xs to <4 x i32>
  %i.xv = zext <4 x i1> %i.xt to <4 x i32>
  %i.xw = add <4 x i32> %vec.phi1566, %i.xu       ; 2 uses
  %i.xx = add <4 x i32> %vec.phi1567, %i.xv       ; 2 uses
  %index.next1570 = add nuw i64 %index1565, 8     ; 2 uses
  %i.xy = icmp eq i64 %index.next1570, %n.vec1561
  br i1 %i.xy, label %middle.block1571, label %vector.body1564, !llvm.loop !92

middle.block1571:                                 ; preds = %vector.body1564
  %bin.rdx1572 = add <4 x i32> %i.xx, %i.xw
  %i.xz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1572) ; 2 uses
  %cmp.n1573 = icmp eq i64 %n.vec1561, %wide.trip.count.i459
  br i1 %cmp.n1573, label %._crit_edge.i453, label %.lr.ph.i460.preheader

.lr.ph.i460.preheader:                            ; preds = %.lr.ph.preheader.i458, %middle.block1571
  %indvars.iv.i461.ph = phi i64 [ 0, %.lr.ph.preheader.i458 ], [ %n.vec1561, %middle.block1571 ]
  %.1372596.i.ph = phi i32 [ %.0371598.i, %.lr.ph.preheader.i458 ], [ %i.xz, %middle.block1571 ]
  br label %.lr.ph.i460

._crit_edge.i453:                                 ; preds = %.lr.ph.i460, %middle.block1571, %_ZL14countPolyVertsPKti.exit.i, %bb.bo
  %.1372.lcssa.i = phi i32 [ %.0371598.i, %_ZL14countPolyVertsPKti.exit.i ], [ %.0371598.i, %bb.bo ], [ %i.xz, %middle.block1571 ], [ %spec.select.i462, %.lr.ph.i460 ] ; 2 uses
  %indvars.iv.next704.i = add nuw nsw i64 %indvars.iv703.i, 1 ; 2 uses
  %exitcond707.not.i = icmp eq i64 %indvars.iv.next704.i, %wide.trip.count706.i
  br i1 %exitcond707.not.i, label %._crit_edge602.i, label %bb.bo

.lr.ph.i460:                                      ; preds = %.lr.ph.i460.preheader, %.lr.ph.i460
  %indvars.iv.i461 = phi i64 [ %indvars.iv.next.i463, %.lr.ph.i460 ], [ %indvars.iv.i461.ph, %.lr.ph.i460.preheader ] ; 2 uses
  %.1372596.i = phi i32 [ %spec.select.i462, %.lr.ph.i460 ], [ %.1372596.i.ph, %.lr.ph.i460.preheader ]
  %i.ya = getelementptr inbounds nuw [2 x i8], ptr %i.xi, i64 %indvars.iv.i461
  %i.yb = load i16, ptr %i.ya, align 2, !tbaa !77
  %i.yc = icmp eq i16 %i.yb, %i.rf
  %i.yd = zext i1 %i.yc to i32
  %spec.select.i462 = add nsw i32 %.1372596.i, %i.yd ; 2 uses
  %indvars.iv.next.i463 = add nuw nsw i64 %indvars.iv.i461, 1 ; 2 uses
  %exitcond.not.i464 = icmp eq i64 %indvars.iv.next.i463, %wide.trip.count.i459
  br i1 %exitcond.not.i464, label %._crit_edge.i453, label %.lr.ph.i460, !llvm.loop !93

_ZL12removeVertexP9rcContextR10rcPolyMeshti.exit.thread: ; preds = %._crit_edge602.i
  %i.ye = shl i32 %i.wt, 2
  %i.yf = mul i32 %i.ye, %.0371.lcssa.i
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.35, i32 noundef %i.yf) #8
  br label %bb.dz

bb.bq:                                            ; preds = %._crit_edge602.i
  %i.yg = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.xc, i32 noundef 1) #8 ; 20 uses
  %.not393.i = icmp eq ptr %i.yg, null
  br i1 %.not393.i, label %.critedge582, label %bb.br

.critedge582:                                     ; preds = %bb.bq
  %i.yh = mul nsw i32 %.0371.lcssa.i, %i.wt
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef %i.yh) #8
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  br label %bb.dz

bb.br:                                            ; preds = %bb.bq
  %i.yi = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.xc, i32 noundef 1) #8 ; 17 uses
  %.not394.i = icmp eq ptr %i.yi, null
  br i1 %.not394.i, label %.critedge583, label %bb.bs

.critedge583:                                     ; preds = %bb.br
  %i.yj = mul nsw i32 %.0371.lcssa.i, %i.wt
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef %i.yj) #8
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yg) #8
  br label %bb.dz

bb.bs:                                            ; preds = %bb.br
  %i.yk = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.xc, i32 noundef 1) #8 ; 14 uses
  %.not395.i = icmp eq ptr %i.yk, null
  br i1 %.not395.i, label %.critedge584, label %.preheader585.i

.preheader585.i:                                  ; preds = %bb.bs
  %i.yl = load i32, ptr %i.cd, align 4, !tbaa !73 ; 3 uses
  %i.ym = icmp sgt i32 %i.yl, 0
  br i1 %i.ym, label %.lr.ph618.i, label %._crit_edge619.i

.lr.ph618.i:                                      ; preds = %.preheader585.i
  %i.yn = shl i32 %i.wt, 1                        ; 2 uses
  %i.yo = icmp sgt i32 %i.wt, 0
  %wide.trip.count.i421.i = zext nneg i32 %i.wt to i64
  %i.yp = shl nuw nsw i64 %i.xb, 1                ; 2 uses
  %broadcast.splatinsert1529 = insertelement <8 x i16> poison, i16 %i.rf, i64 0
  %broadcast.splat1530 = shufflevector <8 x i16> %broadcast.splatinsert1529, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1546 = insertelement <4 x i16> poison, i16 %i.rf, i64 0
  %broadcast.splat1547 = shufflevector <4 x i16> %broadcast.splatinsert1546, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %bb.bt

.critedge584:                                     ; preds = %bb.bs
  %i.yq = mul nsw i32 %.0371.lcssa.i, %i.wt
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef %i.yq) #8
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yi) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yg) #8
  br label %bb.dz

._crit_edge619.i:                                 ; preds = %.critedge694.i, %.preheader585.i
  %.0358.lcssa.i = phi i32 [ 0, %.preheader585.i ], [ %.3361.i, %.critedge694.i ] ; 4 uses
  %.lcssa593.i = phi i32 [ %i.yl, %.preheader585.i ], [ %i.acc, %.critedge694.i ] ; 2 uses
  %i.yr = and i32 %.0314812, 65535                ; 4 uses
  %i.ys = load i32, ptr %i.cc, align 8, !tbaa !72
  %i.yt = add nsw i32 %i.ys, -1                   ; 3 uses
  %i.yu = icmp sgt i32 %i.yt, %i.yr
  br i1 %i.yu, label %.lr.ph624.i, label %._crit_edge625.i

.lr.ph624.i:                                      ; preds = %._crit_edge619.i
  %i.yv = load ptr, ptr %3, align 8, !tbaa !68    ; 6 uses
  %i.yw = zext nneg i32 %i.yr to i64              ; 5 uses
  %wide.trip.count720.i = zext nneg i32 %i.yt to i64 ; 3 uses
  %i.yx = sub nsw i64 %wide.trip.count720.i, %i.yw
  %xtraiter1783 = and i64 %i.yx, 1
  %lcmp.mod1784.not = icmp eq i64 %xtraiter1783, 0
  br i1 %lcmp.mod1784.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph624.i
  %indvars.iv.next718.i.prol = add nuw nsw i64 %i.yw, 1 ; 2 uses
  %.idx.i450.prol = mul nuw nsw i64 %indvars.iv.next718.i.prol, 6
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yv, i64 %.idx.i450.prol ; 2 uses
  %.idx820.i.prol = mul nuw nsw i64 %i.yw, 6
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yv, i64 %.idx820.i.prol ; 2 uses
  %i.za = load <2 x i16>, ptr %i.yy, align 2, !tbaa !77
  store <2 x i16> %i.za, ptr %i.yz, align 2, !tbaa !77
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yy, i64 4
  %i.zc = load i16, ptr %i.zb, align 2, !tbaa !77
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yz, i64 4
  store i16 %i.zc, ptr %i.zd, align 2, !tbaa !77
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph624.i
  %indvars.iv717.i.unr = phi i64 [ %i.yw, %.lr.ph624.i ], [ %indvars.iv.next718.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.ze = add nsw i64 %wide.trip.count720.i, -1
  %i.zf = icmp eq i64 %i.ze, %i.yw
  br i1 %i.zf, label %._crit_edge625.i, label %.lr.ph624.i.new

bb.bt:                                            ; preds = %.critedge694.i, %.lr.ph618.i
  %i.zg = phi i32 [ %i.yl, %.lr.ph618.i ], [ %i.acc, %.critedge694.i ] ; 3 uses
  %.0356617.i = phi i32 [ 0, %.lr.ph618.i ], [ %i.acd, %.critedge694.i ] ; 6 uses
  %.0358616.i = phi i32 [ 0, %.lr.ph618.i ], [ %.3361.i, %.critedge694.i ] ; 4 uses
  %i.zh = load ptr, ptr %i.bv, align 8, !tbaa !69 ; 2 uses
  %i.zi = mul i32 %.0356617.i, %i.yn              ; 2 uses
  %i.zj = sext i32 %i.zi to i64
  %i.zk = getelementptr inbounds [2 x i8], ptr %i.zh, i64 %i.zj ; 8 uses
  br i1 %i.yo, label %.lr.ph.i422.i, label %.critedge694.i

.lr.ph.i422.i:                                    ; preds = %bb.bt, %bb.bu
  %indvars.iv.i423.i = phi i64 [ %indvars.iv.next.i424.i, %bb.bu ], [ 0, %bb.bt ] ; 3 uses
  %i.zl = getelementptr inbounds nuw [2 x i8], ptr %i.zk, i64 %indvars.iv.i423.i
  %i.zm = load i16, ptr %i.zl, align 2, !tbaa !77
  %i.zn = icmp eq i16 %i.zm, -1
  br i1 %i.zn, label %._crit_edge.loopexit.split.loop.exit15.i426.i, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i422.i
  %indvars.iv.next.i424.i = add nuw nsw i64 %indvars.iv.i423.i, 1 ; 2 uses
  %exitcond.not.i425.i = icmp eq i64 %indvars.iv.next.i424.i, %wide.trip.count.i421.i
  br i1 %exitcond.not.i425.i, label %_ZL14countPolyVertsPKti.exit427.i, label %.lr.ph.i422.i

._crit_edge.loopexit.split.loop.exit15.i426.i:    ; preds = %.lr.ph.i422.i
  %i.zo = trunc nuw nsw i64 %indvars.iv.i423.i to i32
  br label %_ZL14countPolyVertsPKti.exit427.i

_ZL14countPolyVertsPKti.exit427.i:                ; preds = %bb.bu, %._crit_edge.loopexit.split.loop.exit15.i426.i
  %i.zp = phi i32 [ %i.zo, %._crit_edge.loopexit.split.loop.exit15.i426.i ], [ %i.wt, %bb.bu ] ; 5 uses
  %i.zq = icmp sgt i32 %i.zp, 0
  br i1 %i.zq, label %iter.check1540, label %.critedge694.i

iter.check1540:                                   ; preds = %_ZL14countPolyVertsPKti.exit427.i
  %wide.trip.count710.i = zext nneg i32 %i.zp to i64 ; 7 uses
  %min.iters.check1524 = icmp ult i32 %i.zp, 4
  br i1 %min.iters.check1524, label %.lr.ph606.i.preheader, label %vector.main.loop.iter.check1525

vector.main.loop.iter.check1525:                  ; preds = %iter.check1540
  %min.iters.check1526 = icmp ult i32 %i.zp, 16
  br i1 %min.iters.check1526, label %vec.epilog.ph1544, label %vector.ph1527

vector.ph1527:                                    ; preds = %vector.main.loop.iter.check1525
  %i.zr = and i64 %wide.trip.count710.i, 12
  %n.vec1528 = and i64 %wide.trip.count710.i, 2147483632 ; 4 uses
  br label %vector.body1531

vector.body1531:                                  ; preds = %vector.ph1527, %vector.body1531
  %index1532 = phi i64 [ 0, %vector.ph1527 ], [ %index.next1536, %vector.body1531 ] ; 2 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph1527 ], [ %i.zw, %vector.body1531 ]
  %vec.phi1533 = phi <8 x i1> [ zeroinitializer, %vector.ph1527 ], [ %i.zx, %vector.body1531 ]
  %i.zs = getelementptr inbounds nuw [2 x i8], ptr %i.zk, i64 %index1532 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 16
  %wide.load1534 = load <8 x i16>, ptr %i.zs, align 2, !tbaa !77
  %wide.load1535 = load <8 x i16>, ptr %i.zt, align 2, !tbaa !77
  %i.zu = icmp eq <8 x i16> %wide.load1534, %broadcast.splat1530
  %i.zv = icmp eq <8 x i16> %wide.load1535, %broadcast.splat1530
  %i.zw = or <8 x i1> %vec.phi, %i.zu             ; 2 uses
  %i.zx = or <8 x i1> %vec.phi1533, %i.zv         ; 2 uses
  %index.next1536 = add nuw i64 %index1532, 16    ; 2 uses
  %i.zy = icmp eq i64 %index.next1536, %n.vec1528
  br i1 %i.zy, label %middle.block1537, label %vector.body1531, !llvm.loop !94

middle.block1537:                                 ; preds = %vector.body1531
  %bin.rdx = or <8 x i1> %i.zx, %i.zw
  %bin.rdx.fr = freeze <8 x i1> %bin.rdx
  %i.zz = bitcast <8 x i1> %bin.rdx.fr to i8
  %i.aaa = icmp ne i8 %i.zz, 0                    ; 3 uses
  %cmp.n1538 = icmp eq i64 %n.vec1528, %wide.trip.count710.i
  br i1 %cmp.n1538, label %._crit_edge607.i, label %vec.epilog.iter.check1542

vec.epilog.iter.check1542:                        ; preds = %middle.block1537
  %min.epilog.iters.check1543 = icmp eq i64 %i.zr, 0
  br i1 %min.epilog.iters.check1543, label %.lr.ph606.i.preheader, label %vec.epilog.ph1544, !prof !114

vec.epilog.ph1544:                                ; preds = %vector.main.loop.iter.check1525, %vec.epilog.iter.check1542
  %vec.epilog.resume.val1539 = phi i64 [ %n.vec1528, %vec.epilog.iter.check1542 ], [ 0, %vector.main.loop.iter.check1525 ]
  %bc.merge.rdx = phi i1 [ %i.aaa, %vec.epilog.iter.check1542 ], [ false, %vector.main.loop.iter.check1525 ]
  %n.vec1545 = and i64 %wide.trip.count710.i, 2147483644 ; 3 uses
  %broadcast.splatinsert1548 = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat1549 = shufflevector <4 x i1> %broadcast.splatinsert1548, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1550

vec.epilog.vector.body1550:                       ; preds = %vec.epilog.vector.body1550, %vec.epilog.ph1544
  %index1551 = phi i64 [ %vec.epilog.resume.val1539, %vec.epilog.ph1544 ], [ %index.next1554, %vec.epilog.vector.body1550 ] ; 2 uses
  %vec.phi1552 = phi <4 x i1> [ %broadcast.splat1549, %vec.epilog.ph1544 ], [ %i.aad, %vec.epilog.vector.body1550 ]
  %i.aab = getelementptr inbounds nuw [2 x i8], ptr %i.zk, i64 %index1551
  %wide.load1553 = load <4 x i16>, ptr %i.aab, align 2, !tbaa !77
  %i.aac = icmp eq <4 x i16> %wide.load1553, %broadcast.splat1547
  %.fr = freeze <4 x i1> %i.aac
  %i.aad = or <4 x i1> %vec.phi1552, %.fr         ; 2 uses
  %index.next1554 = add nuw i64 %index1551, 4     ; 2 uses
  %i.aae = icmp eq i64 %index.next1554, %n.vec1545
  br i1 %i.aae, label %vec.epilog.middle.block1555, label %vec.epilog.vector.body1550, !llvm.loop !95

vec.epilog.middle.block1555:                      ; preds = %vec.epilog.vector.body1550
  %i.aaf = bitcast <4 x i1> %i.aad to i4
  %i.aag = icmp ne i4 %i.aaf, 0                   ; 2 uses
  %cmp.n1556 = icmp eq i64 %n.vec1545, %wide.trip.count710.i
  br i1 %cmp.n1556, label %._crit_edge607.i, label %.lr.ph606.i.preheader

.lr.ph606.i.preheader:                            ; preds = %iter.check1540, %vec.epilog.iter.check1542, %vec.epilog.middle.block1555
  %indvars.iv708.i.ph = phi i64 [ 0, %iter.check1540 ], [ %n.vec1528, %vec.epilog.iter.check1542 ], [ %n.vec1545, %vec.epilog.middle.block1555 ]
  %.0354604.i.ph = phi i1 [ false, %iter.check1540 ], [ %i.aaa, %vec.epilog.iter.check1542 ], [ %i.aag, %vec.epilog.middle.block1555 ]
  br label %.lr.ph606.i

._crit_edge607.i:                                 ; preds = %.lr.ph606.i, %vec.epilog.middle.block1555, %middle.block1537
  %spec.select416.i.lcssa = phi i1 [ %i.aag, %vec.epilog.middle.block1555 ], [ %i.aaa, %middle.block1537 ], [ %spec.select416.i, %.lr.ph606.i ]
  br i1 %spec.select416.i.lcssa, label %.lr.ph613.i, label %.critedge694.i

.lr.ph606.i:                                      ; preds = %.lr.ph606.i.preheader, %.lr.ph606.i
  %indvars.iv708.i = phi i64 [ %indvars.iv.next709.i, %.lr.ph606.i ], [ %indvars.iv708.i.ph, %.lr.ph606.i.preheader ] ; 2 uses
  %.0354604.i = phi i1 [ %spec.select416.i, %.lr.ph606.i ], [ %.0354604.i.ph, %.lr.ph606.i.preheader ]
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %i.zk, i64 %indvars.iv708.i
  %i.aai = load i16, ptr %i.aah, align 2, !tbaa !77
  %i.aaj = icmp eq i16 %i.aai, %i.rf
  %spec.select416.i = select i1 %i.aaj, i1 true, i1 %.0354604.i ; 2 uses
  %indvars.iv.next709.i = add nuw nsw i64 %indvars.iv708.i, 1 ; 2 uses
  %exitcond711.not.i = icmp eq i64 %indvars.iv.next709.i, %wide.trip.count710.i
  br i1 %exitcond711.not.i, label %._crit_edge607.i, label %.lr.ph606.i, !llvm.loop !96

.lr.ph613.i:                                      ; preds = %._crit_edge607.i
  %i.aak = add nsw i32 %i.zp, -1
  %i.aal = sext i32 %.0356617.i to i64            ; 4 uses
  %i.aam = zext nneg i32 %i.aak to i64
  br label %bb.bv

._crit_edge614.i:                                 ; preds = %bb.by
  %.pre.i451 = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.aan = add nsw i32 %.pre.i451, -1
  %i.aao = mul i32 %i.aan, %i.yn                  ; 2 uses
  %.not413.i = icmp eq i32 %i.zi, %i.aao
  br i1 %.not413.i, label %bb.ca, label %bb.bz

bb.bv:                                            ; preds = %bb.by, %.lr.ph613.i
  %indvars.iv712.i = phi i64 [ 0, %.lr.ph613.i ], [ %indvars.iv.next713.i, %bb.by ] ; 3 uses
  %.0351611.i = phi i64 [ %i.aam, %.lr.ph613.i ], [ %indvars.iv712.i, %bb.by ]
  %.1359609.i = phi i32 [ %.0358616.i, %.lr.ph613.i ], [ %.2360.i, %bb.by ] ; 4 uses
  %i.aap = getelementptr inbounds nuw [2 x i8], ptr %i.zk, i64 %indvars.iv712.i
  %i.aaq = load i16, ptr %i.aap, align 2, !tbaa !77 ; 2 uses
  %.not414.i = icmp eq i16 %i.aaq, %i.rf
  br i1 %.not414.i, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.aar = getelementptr inbounds nuw [2 x i8], ptr %i.zk, i64 %.0351611.i
  %i.aas = load i16, ptr %i.aar, align 2, !tbaa !77 ; 2 uses
  %.not415.i = icmp eq i16 %i.aas, %i.rf
  br i1 %.not415.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.aat = shl nsw i32 %.1359609.i, 2
  %i.aau = sext i32 %i.aat to i64
  %i.aav = getelementptr inbounds [4 x i8], ptr %i.xe, i64 %i.aau ; 4 uses
  %i.aaw = zext i16 %i.aas to i32
  store i32 %i.aaw, ptr %i.aav, align 4, !tbaa !76
  %i.aax = zext i16 %i.aaq to i32
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aav, i64 4
  store i32 %i.aax, ptr %i.aay, align 4, !tbaa !76
  %i.aaz = load ptr, ptr %i.bz, align 8, !tbaa !70
  %i.aba = getelementptr inbounds [2 x i8], ptr %i.aaz, i64 %i.aal
  %i.abb = load i16, ptr %i.aba, align 2, !tbaa !77
  %i.abc = zext i16 %i.abb to i32
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  store i32 %i.abc, ptr %i.abd, align 4, !tbaa !76
  %i.abe = load ptr, ptr %i.cb, align 8, !tbaa !71
  %i.abf = getelementptr inbounds i8, ptr %i.abe, i64 %i.aal
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !78
  %i.abh = zext i8 %i.abg to i32
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aav, i64 12
  store i32 %i.abh, ptr %i.abi, align 4, !tbaa !76
  %i.abj = add nsw i32 %.1359609.i, 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %.2360.i = phi i32 [ %i.abj, %bb.bx ], [ %.1359609.i, %bb.bw ], [ %.1359609.i, %bb.bv ] ; 2 uses
  %indvars.iv.next713.i = add nuw nsw i64 %indvars.iv712.i, 1 ; 2 uses
  %exitcond716.not.i = icmp eq i64 %indvars.iv.next713.i, %wide.trip.count710.i
  br i1 %exitcond716.not.i, label %._crit_edge614.i, label %bb.bv

bb.bz:                                            ; preds = %._crit_edge614.i
  %i.abk = sext i32 %i.aao to i64
  %i.abl = getelementptr inbounds [2 x i8], ptr %i.zh, i64 %i.abk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.zk, ptr align 2 %i.abl, i64 %i.yp, i1 false)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %._crit_edge614.i
  %i.abm = getelementptr inbounds nuw [2 x i8], ptr %i.zk, i64 %i.xb
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.abm, i8 -1, i64 %i.yp, i1 false)
  %i.abn = load ptr, ptr %i.bz, align 8, !tbaa !70 ; 2 uses
  %i.abo = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.abp = sext i32 %i.abo to i64                 ; 2 uses
  %i.abq = getelementptr [2 x i8], ptr %i.abn, i64 %i.abp
  %i.abr = getelementptr i8, ptr %i.abq, i64 -2
  %i.abs = load i16, ptr %i.abr, align 2, !tbaa !77
  %i.abt = getelementptr inbounds [2 x i8], ptr %i.abn, i64 %i.aal
  store i16 %i.abs, ptr %i.abt, align 2, !tbaa !77
  %i.abu = load ptr, ptr %i.cb, align 8, !tbaa !71 ; 2 uses
  %i.abv = getelementptr i8, ptr %i.abu, i64 %i.abp
  %i.abw = getelementptr i8, ptr %i.abv, i64 -1
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !78
  %i.aby = getelementptr inbounds i8, ptr %i.abu, i64 %i.aal
  store i8 %i.abx, ptr %i.aby, align 1, !tbaa !78
  %i.abz = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.aca = add nsw i32 %i.abz, -1                 ; 2 uses
  store i32 %i.aca, ptr %i.cd, align 4, !tbaa !73
  %i.acb = add nsw i32 %.0356617.i, -1
  br label %.critedge694.i

.critedge694.i:                                   ; preds = %bb.ca, %._crit_edge607.i, %_ZL14countPolyVertsPKti.exit427.i, %bb.bt
  %i.acc = phi i32 [ %i.aca, %bb.ca ], [ %i.zg, %._crit_edge607.i ], [ %i.zg, %_ZL14countPolyVertsPKti.exit427.i ], [ %i.zg, %bb.bt ] ; 3 uses
  %.3361.i = phi i32 [ %.2360.i, %bb.ca ], [ %.0358616.i, %._crit_edge607.i ], [ %.0358616.i, %_ZL14countPolyVertsPKti.exit427.i ], [ %.0358616.i, %bb.bt ] ; 2 uses
  %.1357.i = phi i32 [ %i.acb, %bb.ca ], [ %.0356617.i, %._crit_edge607.i ], [ %.0356617.i, %_ZL14countPolyVertsPKti.exit427.i ], [ %.0356617.i, %bb.bt ]
  %i.acd = add nsw i32 %.1357.i, 1                ; 2 uses
  %i.ace = icmp slt i32 %i.acd, %i.acc
  br i1 %i.ace, label %bb.bt, label %._crit_edge619.i

._crit_edge625.i:                                 ; preds = %.prol.loopexit, %.lr.ph624.i.new, %._crit_edge619.i
  store i32 %i.yt, ptr %i.cc, align 8, !tbaa !72
  %i.acf = icmp sgt i32 %.lcssa593.i, 0
  br i1 %i.acf, label %.lr.ph632.i, label %.preheader584.i

.lr.ph632.i:                                      ; preds = %._crit_edge625.i
  %i.acg = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.ach = shl i32 %i.wt, 1
  %i.aci = icmp sgt i32 %i.wt, 0
  %wide.trip.count.i429.i = zext nneg i32 %i.wt to i64
  %wide.trip.count730.i = zext nneg i32 %.lcssa593.i to i64
  br i1 %i.aci, label %.lr.ph.i430.i.preheader.preheader, label %.preheader584.i

.lr.ph.i430.i.preheader.preheader:                ; preds = %.lr.ph632.i
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.rf, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1499 = insertelement <8 x i16> poison, i16 %i.rf, i64 0
  %broadcast.splat1500 = shufflevector <8 x i16> %broadcast.splatinsert1499, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %.lr.ph.i430.i.preheader

.lr.ph624.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph624.i.new
  %indvars.iv717.i = phi i64 [ %indvars.iv.next718.i.1, %.lr.ph624.i.new ], [ %indvars.iv717.i.unr, %.prol.loopexit ] ; 3 uses
  %indvars.iv.next718.i = add nuw nsw i64 %indvars.iv717.i, 1 ; 2 uses
  %.idx.i450 = mul nuw nsw i64 %indvars.iv.next718.i, 6
  %i.acj = getelementptr inbounds nuw i8, ptr %i.yv, i64 %.idx.i450 ; 2 uses
  %.idx820.i = mul nuw nsw i64 %indvars.iv717.i, 6
  %i.ack = getelementptr inbounds nuw i8, ptr %i.yv, i64 %.idx820.i ; 2 uses
  %i.acl = load <2 x i16>, ptr %i.acj, align 2, !tbaa !77
  store <2 x i16> %i.acl, ptr %i.ack, align 2, !tbaa !77
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acj, i64 4
  %i.acn = load i16, ptr %i.acm, align 2, !tbaa !77
  %i.aco = getelementptr inbounds nuw i8, ptr %i.ack, i64 4
  store i16 %i.acn, ptr %i.aco, align 2, !tbaa !77
  %indvars.iv.next718.i.1 = add nuw nsw i64 %indvars.iv717.i, 2 ; 3 uses
  %.idx.i450.1 = mul nuw nsw i64 %indvars.iv.next718.i.1, 6
  %i.acp = getelementptr inbounds nuw i8, ptr %i.yv, i64 %.idx.i450.1 ; 2 uses
  %.idx820.i.1 = mul nuw nsw i64 %indvars.iv.next718.i, 6
  %i.acq = getelementptr inbounds nuw i8, ptr %i.yv, i64 %.idx820.i.1 ; 2 uses
  %i.acr = load <2 x i16>, ptr %i.acp, align 2, !tbaa !77
  store <2 x i16> %i.acr, ptr %i.acq, align 2, !tbaa !77
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  %i.act = load i16, ptr %i.acs, align 2, !tbaa !77
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acq, i64 4
  store i16 %i.act, ptr %i.acu, align 2, !tbaa !77
  %exitcond721.not.i.1 = icmp eq i64 %indvars.iv.next718.i.1, %wide.trip.count720.i
  br i1 %exitcond721.not.i.1, label %._crit_edge625.i, label %.lr.ph624.i.new

.preheader584.i:                                  ; preds = %._crit_edge629.i, %.lr.ph632.i, %._crit_edge625.i
  %i.acv = icmp sgt i32 %.0358.lcssa.i, 0
  br i1 %i.acv, label %.lr.ph634.preheader.i, label %._crit_edge635.i

.lr.ph634.preheader.i:                            ; preds = %.preheader584.i
  %wide.trip.count735.i = zext nneg i32 %.0358.lcssa.i to i64
  br label %.lr.ph634.i

.lr.ph.i430.i.preheader:                          ; preds = %.lr.ph.i430.i.preheader.preheader, %._crit_edge629.i
  %indvars.iv727.i = phi i64 [ %indvars.iv.next728.i, %._crit_edge629.i ], [ 0, %.lr.ph.i430.i.preheader.preheader ] ; 2 uses
  %i.acw = trunc nuw nsw i64 %indvars.iv727.i to i32
  %i.acx = mul i32 %i.ach, %i.acw
  %i.acy = sext i32 %i.acx to i64
  %i.acz = getelementptr inbounds [2 x i8], ptr %i.acg, i64 %i.acy ; 26 uses
  br label %.lr.ph.i430.i

.lr.ph.i430.i:                                    ; preds = %.lr.ph.i430.i.preheader, %bb.cb
  %indvars.iv.i431.i = phi i64 [ %indvars.iv.next.i432.i, %bb.cb ], [ 0, %.lr.ph.i430.i.preheader ] ; 3 uses
  %i.ada = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %indvars.iv.i431.i
  %i.adb = load i16, ptr %i.ada, align 2, !tbaa !77
  %i.adc = icmp eq i16 %i.adb, -1
  br i1 %i.adc, label %._crit_edge.loopexit.split.loop.exit15.i434.i, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i430.i
  %indvars.iv.next.i432.i = add nuw nsw i64 %indvars.iv.i431.i, 1 ; 2 uses
  %exitcond.not.i433.i = icmp eq i64 %indvars.iv.next.i432.i, %wide.trip.count.i429.i
  br i1 %exitcond.not.i433.i, label %_ZL14countPolyVertsPKti.exit435.i, label %.lr.ph.i430.i

._crit_edge.loopexit.split.loop.exit15.i434.i:    ; preds = %.lr.ph.i430.i
  %i.add = trunc nuw nsw i64 %indvars.iv.i431.i to i32
  br label %_ZL14countPolyVertsPKti.exit435.i

_ZL14countPolyVertsPKti.exit435.i:                ; preds = %bb.cb, %._crit_edge.loopexit.split.loop.exit15.i434.i
  %i.ade = phi i32 [ %i.add, %._crit_edge.loopexit.split.loop.exit15.i434.i ], [ %i.wt, %bb.cb ] ; 4 uses
  %i.adf = icmp sgt i32 %i.ade, 0
  br i1 %i.adf, label %iter.check1493, label %._crit_edge629.i

iter.check1493:                                   ; preds = %_ZL14countPolyVertsPKti.exit435.i
  %wide.trip.count725.i = zext nneg i32 %i.ade to i64 ; 6 uses
  %min.iters.check1450 = icmp ult i32 %i.ade, 8
  br i1 %min.iters.check1450, label %.lr.ph628.i.preheader, label %vector.main.loop.iter.check1451

vector.main.loop.iter.check1451:                  ; preds = %iter.check1493
  %min.iters.check1452 = icmp ult i32 %i.ade, 16
  br i1 %min.iters.check1452, label %vec.epilog.ph1497, label %vector.ph1453

vector.ph1453:                                    ; preds = %vector.main.loop.iter.check1451
  %i.adg = and i64 %wide.trip.count725.i, 8
  %n.vec1454 = and i64 %wide.trip.count725.i, 2147483632 ; 4 uses
  br label %vector.body1455

vector.body1455:                                  ; preds = %vector.ph1453, %pred.store.continue1488
  %index1456 = phi i64 [ 0, %vector.ph1453 ], [ %index.next1489, %pred.store.continue1488 ] ; 17 uses
  %i.adh = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1456 ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 16
  %wide.load1457 = load <8 x i16>, ptr %i.adh, align 2, !tbaa !77 ; 9 uses
  %wide.load1458 = load <8 x i16>, ptr %i.adi, align 2, !tbaa !77 ; 9 uses
  %i.adj = icmp ugt <8 x i16> %wide.load1457, %broadcast.splat ; 8 uses
  %i.adk = icmp ugt <8 x i16> %wide.load1458, %broadcast.splat ; 8 uses
  %i.adl = extractelement <8 x i1> %i.adj, i64 0
  br i1 %i.adl, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body1455
  %i.adm = extractelement <8 x i16> %wide.load1457, i64 0
  %i.adn = add i16 %i.adm, -1
  store i16 %i.adn, ptr %i.adh, align 2, !tbaa !77
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body1455
  %i.ado = extractelement <8 x i1> %i.adj, i64 1
  br i1 %i.ado, label %pred.store.if1459, label %pred.store.continue1460

pred.store.if1459:                                ; preds = %pred.store.continue
  %i.adp = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1456
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 2
  %i.adr = extractelement <8 x i16> %wide.load1457, i64 1
  %i.ads = add i16 %i.adr, -1
  store i16 %i.ads, ptr %i.adq, align 2, !tbaa !77
  br label %pred.store.continue1460

pred.store.continue1460:                          ; preds = %pred.store.if1459, %pred.store.continue
  %i.adt = extractelement <8 x i1> %i.adj, i64 2
  br i1 %i.adt, label %pred.store.if1461, label %pred.store.continue1462

pred.store.if1461:                                ; preds = %pred.store.continue1460
  %i.adu = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1456
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 4
  %i.adw = extractelement <8 x i16> %wide.load1457, i64 2
  %i.adx = add i16 %i.adw, -1
  store i16 %i.adx, ptr %i.adv, align 2, !tbaa !77
  br label %pred.store.continue1462

pred.store.continue1462:                          ; preds = %pred.store.if1461, %pred.store.continue1460
  %i.ady = extractelement <8 x i1> %i.adj, i64 3
  br i1 %i.ady, label %pred.store.if1463, label %pred.store.continue1464

pred.store.if1463:                                ; preds = %pred.store.continue1462
  %i.adz = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1456
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 6
  %i.aeb = extractelement <8 x i16> %wide.load1457, i64 3
  %i.aec = add i16 %i.aeb, -1
  store i16 %i.aec, ptr %i.aea, align 2, !tbaa !77
  br label %pred.store.continue1464

pred.store.continue1464:                          ; preds = %pred.store.if1463, %pred.store.continue1462
  %i.aed = extractelement <8 x i1> %i.adj, i64 4
  br i1 %i.aed, label %pred.store.if1465, label %pred.store.continue1466

pred.store.if1465:                                ; preds = %pred.store.continue1464
  %i.aee = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1456
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %i.aeg = extractelement <8 x i16> %wide.load1457, i64 4
  %i.aeh = add i16 %i.aeg, -1
  store i16 %i.aeh, ptr %i.aef, align 2, !tbaa !77
  br label %pred.store.continue1466

pred.store.continue1466:                          ; preds = %pred.store.if1465, %pred.store.continue1464
  %i.aei = extractelement <8 x i1> %i.adj, i64 5
  br i1 %i.aei, label %pred.store.if1467, label %pred.store.continue1468

pred.store.if1467:                                ; preds = %pred.store.continue1466
  %i.aej = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1456
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 10
  %i.ael = extractelement <8 x i16> %wide.load1457, i64 5
  %i.aem = add i16 %i.ael, -1
  store i16 %i.aem, ptr %i.aek, align 2, !tbaa !77
  br label %pred.store.continue1468

pred.store.continue1468:                          ; preds = %pred.store.if1467, %pred.store.continue1466
  %i.aen = extractelement <8 x i1> %i.adj, i64 6
  br i1 %i.aen, label %pred.store.if1469, label %pred.store.continue1470

pred.store.if1469:                                ; preds = %pred.store.continue1468
  %i.aeo = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1456
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 12
  %i.aeq = extractelement <8 x i16> %wide.load1457, i64 6
  %i.aer = add i16 %i.aeq, -1
  store i16 %i.aer, ptr %i.aep, align 2, !tbaa !77
  br label %pred.store.continue1470

pred.store.continue1470:                          ; preds = %pred.store.if1469, %pred.store.continue1468
  %i.aes = extractelement <8 x i1> %i.adj, i64 7
  br i1 %i.aes, label %pred.store.if1471, label %pred.store.continue1472

pred.store.if1471:                                ; preds = %pred.store.continue1470
  %i.aet = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1456
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 14
  %i.aev = extractelement <8 x i16> %wide.load1457, i64 7
  %i.aew = add i16 %i.aev, -1
  store i16 %i.aew, ptr %i.aeu, align 2, !tbaa !77
  br label %pred.store.continue1472

pred.store.continue1472:                          ; preds = %pred.store.if1471, %pred.store.continue1470
  %i.aex = extractelement <8 x i1> %i.adk, i64 0
  br i1 %i.aex, label %pred.store.if1473, label %pred.store.continue1474

pred.store.if1473:                                ; preds = %pred.store.continue1472
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1456
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  %i.afa = extractelement <8 x i16> %wide.load1458, i64 0
  %i.afb = add i16 %i.afa, -1
  store i16 %i.afb, ptr %i.aez, align 2, !tbaa !77
  br label %pred.store.continue1474

pred.store.continue1474:                          ; preds = %pred.store.if1473, %pred.store.continue1472
  %i.afc = extractelement <8 x i1> %i.adk, i64 1
  br i1 %i.afc, label %pred.store.if1475, label %pred.store.continue1476

pred.store.if1475:                                ; preds = %pred.store.continue1474
  %i.afd = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1456
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 18
  %i.aff = extractelement <8 x i16> %wide.load1458, i64 1
  %i.afg = add i16 %i.aff, -1
  store i16 %i.afg, ptr %i.afe, align 2, !tbaa !77
  br label %pred.store.continue1476

pred.store.continue1476:                          ; preds = %pred.store.if1475, %pred.store.continue1474
  %i.afh = extractelement <8 x i1> %i.adk, i64 2
  br i1 %i.afh, label %pred.store.if1477, label %pred.store.continue1478

pred.store.if1477:                                ; preds = %pred.store.continue1476
  %i.afi = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1456
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 20
  %i.afk = extractelement <8 x i16> %wide.load1458, i64 2
  %i.afl = add i16 %i.afk, -1
  store i16 %i.afl, ptr %i.afj, align 2, !tbaa !77
  br label %pred.store.continue1478

pred.store.continue1478:                          ; preds = %pred.store.if1477, %pred.store.continue1476
  %i.afm = extractelement <8 x i1> %i.adk, i64 3
  br i1 %i.afm, label %pred.store.if1479, label %pred.store.continue1480

pred.store.if1479:                                ; preds = %pred.store.continue1478
  %i.afn = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1456
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 22
  %i.afp = extractelement <8 x i16> %wide.load1458, i64 3
  %i.afq = add i16 %i.afp, -1
  store i16 %i.afq, ptr %i.afo, align 2, !tbaa !77
  br label %pred.store.continue1480

pred.store.continue1480:                          ; preds = %pred.store.if1479, %pred.store.continue1478
  %i.afr = extractelement <8 x i1> %i.adk, i64 4
  br i1 %i.afr, label %pred.store.if1481, label %pred.store.continue1482

pred.store.if1481:                                ; preds = %pred.store.continue1480
  %i.afs = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1456
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 24
  %i.afu = extractelement <8 x i16> %wide.load1458, i64 4
  %i.afv = add i16 %i.afu, -1
  store i16 %i.afv, ptr %i.aft, align 2, !tbaa !77
  br label %pred.store.continue1482

pred.store.continue1482:                          ; preds = %pred.store.if1481, %pred.store.continue1480
  %i.afw = extractelement <8 x i1> %i.adk, i64 5
  br i1 %i.afw, label %pred.store.if1483, label %pred.store.continue1484

pred.store.if1483:                                ; preds = %pred.store.continue1482
  %i.afx = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1456
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 26
  %i.afz = extractelement <8 x i16> %wide.load1458, i64 5
  %i.aga = add i16 %i.afz, -1
  store i16 %i.aga, ptr %i.afy, align 2, !tbaa !77
  br label %pred.store.continue1484

pred.store.continue1484:                          ; preds = %pred.store.if1483, %pred.store.continue1482
  %i.agb = extractelement <8 x i1> %i.adk, i64 6
  br i1 %i.agb, label %pred.store.if1485, label %pred.store.continue1486

pred.store.if1485:                                ; preds = %pred.store.continue1484
  %i.agc = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1456
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 28
  %i.age = extractelement <8 x i16> %wide.load1458, i64 6
  %i.agf = add i16 %i.age, -1
  store i16 %i.agf, ptr %i.agd, align 2, !tbaa !77
  br label %pred.store.continue1486

pred.store.continue1486:                          ; preds = %pred.store.if1485, %pred.store.continue1484
  %i.agg = extractelement <8 x i1> %i.adk, i64 7
  br i1 %i.agg, label %pred.store.if1487, label %pred.store.continue1488

pred.store.if1487:                                ; preds = %pred.store.continue1486
  %i.agh = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1456
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 30
  %i.agj = extractelement <8 x i16> %wide.load1458, i64 7
  %i.agk = add i16 %i.agj, -1
  store i16 %i.agk, ptr %i.agi, align 2, !tbaa !77
  br label %pred.store.continue1488

pred.store.continue1488:                          ; preds = %pred.store.if1487, %pred.store.continue1486
  %index.next1489 = add nuw i64 %index1456, 16    ; 2 uses
  %i.agl = icmp eq i64 %index.next1489, %n.vec1454
  br i1 %i.agl, label %middle.block1490, label %vector.body1455, !llvm.loop !97
end_hunk_1
begin_hunk_2_@_Z15rcBuildPolyMeshP9rcContextRK12rcContourSetiR10rcPolyMesh:bb.a
  store i16 %i.avm, ptr %i.avn, align 2, !tbaa !77
  %indvars45.i.i.1 = trunc i64 %indvars.iv.next.i448.i to i32
  %i.avo = add nsw i32 %i.aos, %indvars45.i.i.1
  %i.avp = srem i32 %i.avo, %i.auq
  %i.avq = sext i32 %i.avp to i64
  %i.avr = getelementptr inbounds [2 x i8], ptr %i.aui, i64 %i.avq
  %i.avs = load i16, ptr %i.avr, align 2, !tbaa !77
  %indvars.iv.next.i448.i.1 = add nuw nsw i64 %indvars.iv.i447.i, 2 ; 2 uses
  %i.avt = getelementptr inbounds nuw [2 x i8], ptr %i.amx, i64 %indvars.iv.next.i448.i
  store i16 %i.avs, ptr %i.avt, align 2, !tbaa !77
  %niter1791.next.1 = add i64 %niter1791, 2       ; 2 uses
  %niter1791.ncmp.1 = icmp eq i64 %niter1791.next.1, %unroll_iter1790
  br i1 %niter1791.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %bb.dp

bb.dq:                                            ; preds = %bb.dq, %.lr.ph42.i.i.new
  %indvars.iv48.i.i = phi i64 [ %.027.lcssa.i.i, %.lr.ph42.i.i.new ], [ %indvars.iv.next49.i.i.1, %bb.dq ] ; 3 uses
  %.041.i.i = phi i32 [ 0, %.lr.ph42.i.i.new ], [ %i.awi, %bb.dq ] ; 3 uses
  %niter1797 = phi i32 [ 0, %.lr.ph42.i.i.new ], [ %niter1797.next.1, %bb.dq ]
  %i.avu = add nsw i32 %i.aot, %.041.i.i
  %i.avv = srem i32 %i.avu, %i.auv
  %i.avw = sext i32 %i.avv to i64
  %i.avx = getelementptr inbounds [2 x i8], ptr %i.aul, i64 %i.avw
  %i.avy = load i16, ptr %i.avx, align 2, !tbaa !77
  %i.avz = getelementptr inbounds nuw [2 x i8], ptr %i.amx, i64 %indvars.iv48.i.i
  store i16 %i.avy, ptr %i.avz, align 2, !tbaa !77
  %i.awa = or disjoint i32 %.041.i.i, 1
  %i.awb = add nsw i32 %i.aot, %i.awa
  %i.awc = srem i32 %i.awb, %i.auv
  %i.awd = sext i32 %i.awc to i64
  %i.awe = getelementptr inbounds [2 x i8], ptr %i.aul, i64 %i.awd
  %i.awf = load i16, ptr %i.awe, align 2, !tbaa !77
  %indvars.iv.next49.i.i.1 = add nuw nsw i64 %indvars.iv48.i.i, 2 ; 2 uses
  %i.awg = getelementptr inbounds nuw [2 x i8], ptr %i.amx, i64 %indvars.iv48.i.i
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awg, i64 2
  store i16 %i.awf, ptr %i.awh, align 2, !tbaa !77
  %i.awi = add nuw nsw i32 %.041.i.i, 2           ; 2 uses
  %niter1797.next.1 = add i32 %niter1797, 2       ; 2 uses
  %niter1797.ncmp.1 = icmp eq i32 %niter1797.next.1, %unroll_iter1796
  br i1 %niter1797.ncmp.1, label %_ZL14mergePolyVertsPtS_iiS_i.exit.i.loopexit.unr-lcssa, label %bb.dq

_ZL14mergePolyVertsPtS_iiS_i.exit.i.loopexit.unr-lcssa: ; preds = %bb.dq
  %lcmp.mod1794.not = icmp eq i32 %xtraiter1793, 0
  br i1 %lcmp.mod1794.not, label %_ZL14mergePolyVertsPtS_iiS_i.exit.i, label %.epil.preheader1792

.epil.preheader1792:                              ; preds = %_ZL14mergePolyVertsPtS_iiS_i.exit.i.loopexit.unr-lcssa, %.lr.ph42.i.i
  %indvars.iv48.i.i.epil.init = phi i64 [ %.027.lcssa.i.i, %.lr.ph42.i.i ], [ %indvars.iv.next49.i.i.1, %_ZL14mergePolyVertsPtS_iiS_i.exit.i.loopexit.unr-lcssa ]
  %.041.i.i.epil.init = phi i32 [ 0, %.lr.ph42.i.i ], [ %i.awi, %_ZL14mergePolyVertsPtS_iiS_i.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod1795 = trunc i32 %i.avg to i1
  tail call void @llvm.assume(i1 %lcmp.mod1795)
  %i.awj = add nsw i32 %i.aot, %.041.i.i.epil.init
  %i.awk = srem i32 %i.awj, %i.auv
  %i.awl = sext i32 %i.awk to i64
  %i.awm = getelementptr inbounds [2 x i8], ptr %i.aul, i64 %i.awl
  %i.awn = load i16, ptr %i.awm, align 2, !tbaa !77
  %i.awo = getelementptr inbounds nuw [2 x i8], ptr %i.amx, i64 %indvars.iv48.i.i.epil.init
  store i16 %i.awn, ptr %i.awo, align 2, !tbaa !77
  br label %_ZL14mergePolyVertsPtS_iiS_i.exit.i

_ZL14mergePolyVertsPtS_iiS_i.exit.i:              ; preds = %.epil.preheader1792, %_ZL14mergePolyVertsPtS_iiS_i.exit.i.loopexit.unr-lcssa, %.preheader.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.aui, ptr nonnull align 2 %i.amx, i64 %i.aom, i1 false)
  %i.awp = sext i32 %.2327.i to i64
  %i.awq = getelementptr inbounds [2 x i8], ptr %i.amt, i64 %i.awp ; 2 uses
  %i.awr = load i16, ptr %i.awq, align 2, !tbaa !77
  %i.aws = sext i32 %.2324.i to i64               ; 2 uses
  %i.awt = getelementptr inbounds [2 x i8], ptr %i.amt, i64 %i.aws ; 2 uses
  %i.awu = load i16, ptr %i.awt, align 2, !tbaa !77
  %.not404.i = icmp eq i16 %i.awr, %i.awu
  br i1 %.not404.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_ZL14mergePolyVertsPtS_iiS_i.exit.i
  store i16 0, ptr %i.awq, align 2, !tbaa !77
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %_ZL14mergePolyVertsPtS_iiS_i.exit.i
  %i.awv = mul nuw nsw i64 %indvars.iv.next762.i805, %i.xb ; 2 uses
  %i.aww = trunc nsw i64 %i.awv to i32
  %.not405.i = icmp eq i32 %i.auj, %i.aww
  br i1 %.not405.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.awx = getelementptr inbounds [2 x i8], ptr %i.amo, i64 %i.awv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.aul, ptr nonnull align 2 %i.awx, i64 %i.aon, i1 false)
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.awy = getelementptr inbounds [2 x i8], ptr %i.amt, i64 %indvars.iv.next762.i805
  %i.awz = load i16, ptr %i.awy, align 2, !tbaa !77
  store i16 %i.awz, ptr %i.awt, align 2, !tbaa !77
  %i.axa = getelementptr inbounds i8, ptr %i.amu, i64 %indvars.iv.next762.i805
  %i.axb = load i8, ptr %i.axa, align 1, !tbaa !78
  %i.axc = getelementptr inbounds i8, ptr %i.amu, i64 %i.aws
  store i8 %i.axb, ptr %i.axc, align 1, !tbaa !78
  %i.axd = icmp sgt i64 %indvars.iv761.i803, 2
  br i1 %i.axd, label %.lr.ph679.preheader.i, label %.thread.loopexit.i.loopexit

.thread.loopexit.i.loopexit:                      ; preds = %._crit_edge680.i, %bb.du
  %indvars.iv761.i.lcssa.ph = phi i64 [ 1, %bb.du ], [ %indvars.iv761.i803, %._crit_edge680.i ]
  %i.axe = trunc nsw i64 %indvars.iv761.i.lcssa.ph to i32
  br label %.thread.i445

.thread.i445:                                     ; preds = %.preheader.i447, %.thread.loopexit.i.loopexit, %bb.dc
  %.4.i = phi i32 [ %.1333.i, %bb.dc ], [ %.1333.i, %.preheader.i447 ], [ %i.axe, %.thread.loopexit.i.loopexit ] ; 2 uses
  %i.axf = icmp sgt i32 %.4.i, 0
  br i1 %i.axf, label %.lr.ph692.i, label %.loopexit.i446

.lr.ph692.i:                                      ; preds = %.thread.i445
  %i.axg = shl i32 %i.wt, 1
  %i.axh = shl nsw i64 %i.xb, 2
  %i.axi = icmp sgt i32 %i.wt, 0
  %wide.trip.count772.i = zext nneg i32 %.4.i to i64
  %.pre774.i = load i32, ptr %i.cd, align 4, !tbaa !73
  %wide.trip.count767.i = zext i32 %i.wt to i64   ; 8 uses
  %i.axj = mul nsw i64 %i.xb, -2
  %min.iters.check1424 = icmp ult i32 %i.wt, 4
  %min.iters.check1426 = icmp ult i32 %i.wt, 16
  %i.axk = and i64 %wide.trip.count767.i, 12
  %n.vec1428 = and i64 %wide.trip.count767.i, 2147483632 ; 4 uses
  %cmp.n1435 = icmp eq i64 %n.vec1428, %wide.trip.count767.i
  %min.epilog.iters.check1440 = icmp eq i64 %i.axk, 0
  %n.vec1442 = and i64 %wide.trip.count767.i, 2147483644 ; 3 uses
  %cmp.n1448 = icmp eq i64 %n.vec1442, %wide.trip.count767.i
  %xtraiter1798 = and i64 %wide.trip.count767.i, 3 ; 2 uses
  %lcmp.mod1799.not = icmp eq i64 %xtraiter1798, 0
  br label %bb.dw

bb.dv:                                            ; preds = %.critedge418.i
  %indvars.iv.next770.i = add nuw nsw i64 %indvars.iv769.i, 1 ; 2 uses
  %exitcond773.not.i = icmp eq i64 %indvars.iv.next770.i, %wide.trip.count772.i
  br i1 %exitcond773.not.i, label %.loopexit.i446, label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.lr.ph692.i
  %i.axl = phi i32 [ %.pre774.i, %.lr.ph692.i ], [ %i.ayv, %bb.dv ] ; 2 uses
  %indvars.iv769.i = phi i64 [ 0, %.lr.ph692.i ], [ %indvars.iv.next770.i, %bb.dv ] ; 5 uses
  %i.axm = mul i64 %i.axj, %indvars.iv769.i
  %i.axn = sub i64 %i.axm, %i.amp
  %.not406.i = icmp slt i32 %i.axl, %.0350.lcssa1115
  br i1 %.not406.i, label %bb.dx, label %.loopexit.i446

bb.dx:                                            ; preds = %bb.dw
  %i.axo = load ptr, ptr %i.bv, align 8, !tbaa !69 ; 2 uses
  %i.axp = ptrtoaddr ptr %i.axo to i64
  %i.axq = mul i32 %i.axg, %i.axl
  %i.axr = sext i32 %i.axq to i64                 ; 2 uses
  %i.axs = getelementptr inbounds [2 x i8], ptr %i.axo, i64 %i.axr ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.axs, i8 -1, i64 %i.axh, i1 false)
  br i1 %i.axi, label %iter.check1437, label %.critedge418.i

iter.check1437:                                   ; preds = %bb.dx
  %i.axt = mul nuw nsw i64 %indvars.iv769.i, %i.xb
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.amo, i64 %i.axt ; 7 uses
  br i1 %min.iters.check1424, label %vec.epilog.scalar.ph1438.preheader, label %vector.memcheck1422

vector.memcheck1422:                              ; preds = %iter.check1437
  %i.axu = add i64 %i.axn, %i.axp
  %i.axv = shl nsw i64 %i.axr, 1
  %i.axw = add i64 %i.axu, %i.axv
  %i.axx = add i64 %i.axw, -1
  %diff.check1423 = icmp ult i64 %i.axx, 31
  br i1 %diff.check1423, label %vec.epilog.scalar.ph1438.preheader, label %vector.main.loop.iter.check1425

vector.main.loop.iter.check1425:                  ; preds = %vector.memcheck1422
  br i1 %min.iters.check1426, label %vec.epilog.ph1441, label %vector.body1429

vector.body1429:                                  ; preds = %vector.main.loop.iter.check1425, %vector.body1429
  %index1430 = phi i64 [ %index.next1433, %vector.body1429 ], [ 0, %vector.main.loop.iter.check1425 ] ; 3 uses
  %i.axy = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index1430 ; 2 uses
  %i.axz = getelementptr i8, ptr %i.axy, i64 16
  %wide.load1431 = load <8 x i16>, ptr %i.axy, align 2, !tbaa !77
  %wide.load1432 = load <8 x i16>, ptr %i.axz, align 2, !tbaa !77
  %i.aya = getelementptr inbounds nuw [2 x i8], ptr %i.axs, i64 %index1430 ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 16
  store <8 x i16> %wide.load1431, ptr %i.aya, align 2, !tbaa !77
  store <8 x i16> %wide.load1432, ptr %i.ayb, align 2, !tbaa !77
  %index.next1433 = add nuw i64 %index1430, 16    ; 2 uses
  %i.ayc = icmp eq i64 %index.next1433, %n.vec1428
  br i1 %i.ayc, label %middle.block1434, label %vector.body1429, !llvm.loop !100

middle.block1434:                                 ; preds = %vector.body1429
  br i1 %cmp.n1435, label %.critedge418.i, label %vec.epilog.iter.check1439

vec.epilog.iter.check1439:                        ; preds = %middle.block1434
  br i1 %min.epilog.iters.check1440, label %vec.epilog.scalar.ph1438.preheader, label %vec.epilog.ph1441, !prof !114

vec.epilog.ph1441:                                ; preds = %vector.main.loop.iter.check1425, %vec.epilog.iter.check1439
  %vec.epilog.resume.val1436 = phi i64 [ %n.vec1428, %vec.epilog.iter.check1439 ], [ 0, %vector.main.loop.iter.check1425 ]
  br label %vec.epilog.vector.body1443

vec.epilog.vector.body1443:                       ; preds = %vec.epilog.vector.body1443, %vec.epilog.ph1441
  %index1444 = phi i64 [ %vec.epilog.resume.val1436, %vec.epilog.ph1441 ], [ %index.next1446, %vec.epilog.vector.body1443 ] ; 3 uses
  %i.ayd = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index1444
  %wide.load1445 = load <4 x i16>, ptr %i.ayd, align 2, !tbaa !77
  %i.aye = getelementptr inbounds nuw [2 x i8], ptr %i.axs, i64 %index1444
  store <4 x i16> %wide.load1445, ptr %i.aye, align 2, !tbaa !77
  %index.next1446 = add nuw i64 %index1444, 4     ; 2 uses
  %i.ayf = icmp eq i64 %index.next1446, %n.vec1442
  br i1 %i.ayf, label %vec.epilog.middle.block1447, label %vec.epilog.vector.body1443, !llvm.loop !101

vec.epilog.middle.block1447:                      ; preds = %vec.epilog.vector.body1443
  br i1 %cmp.n1448, label %.critedge418.i, label %vec.epilog.scalar.ph1438.preheader

vec.epilog.scalar.ph1438.preheader:               ; preds = %iter.check1437, %vector.memcheck1422, %vec.epilog.iter.check1439, %vec.epilog.middle.block1447
  %indvars.iv764.i.ph = phi i64 [ 0, %iter.check1437 ], [ 0, %vector.memcheck1422 ], [ %n.vec1428, %vec.epilog.iter.check1439 ], [ %n.vec1442, %vec.epilog.middle.block1447 ] ; 3 uses
  br i1 %lcmp.mod1799.not, label %vec.epilog.scalar.ph1438.prol.loopexit, label %vec.epilog.scalar.ph1438.prol

vec.epilog.scalar.ph1438.prol:                    ; preds = %vec.epilog.scalar.ph1438.preheader, %vec.epilog.scalar.ph1438.prol
  %indvars.iv764.i.prol = phi i64 [ %indvars.iv.next765.i.prol, %vec.epilog.scalar.ph1438.prol ], [ %indvars.iv764.i.ph, %vec.epilog.scalar.ph1438.preheader ] ; 3 uses
  %prol.iter1800 = phi i64 [ %prol.iter1800.next, %vec.epilog.scalar.ph1438.prol ], [ 0, %vec.epilog.scalar.ph1438.preheader ]
  %gep.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv764.i.prol
  %i.ayg = load i16, ptr %gep.i.prol, align 2, !tbaa !77
  %i.ayh = getelementptr inbounds nuw [2 x i8], ptr %i.axs, i64 %indvars.iv764.i.prol
  store i16 %i.ayg, ptr %i.ayh, align 2, !tbaa !77
  %indvars.iv.next765.i.prol = add nuw nsw i64 %indvars.iv764.i.prol, 1 ; 2 uses
  %prol.iter1800.next = add i64 %prol.iter1800, 1 ; 2 uses
  %prol.iter1800.cmp.not = icmp eq i64 %prol.iter1800.next, %xtraiter1798
  br i1 %prol.iter1800.cmp.not, label %vec.epilog.scalar.ph1438.prol.loopexit, label %vec.epilog.scalar.ph1438.prol, !llvm.loop !102

vec.epilog.scalar.ph1438.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1438.prol, %vec.epilog.scalar.ph1438.preheader
  %indvars.iv764.i.unr = phi i64 [ %indvars.iv764.i.ph, %vec.epilog.scalar.ph1438.preheader ], [ %indvars.iv.next765.i.prol, %vec.epilog.scalar.ph1438.prol ]
  %i.ayi = sub nsw i64 %indvars.iv764.i.ph, %wide.trip.count767.i
  %i.ayj = icmp ugt i64 %i.ayi, -4
  br i1 %i.ayj, label %.critedge418.i, label %vec.epilog.scalar.ph1438

.critedge418.i:                                   ; preds = %vec.epilog.scalar.ph1438.prol.loopexit, %vec.epilog.scalar.ph1438, %middle.block1434, %vec.epilog.middle.block1447, %bb.dx
  %i.ayk = getelementptr inbounds nuw [2 x i8], ptr %i.amt, i64 %indvars.iv769.i
  %i.ayl = load i16, ptr %i.ayk, align 2, !tbaa !77
  %i.aym = load ptr, ptr %i.bz, align 8, !tbaa !70
  %i.ayn = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.ayo = sext i32 %i.ayn to i64                 ; 2 uses
  %i.ayp = getelementptr inbounds [2 x i8], ptr %i.aym, i64 %i.ayo
  store i16 %i.ayl, ptr %i.ayp, align 2, !tbaa !77
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.amu, i64 %indvars.iv769.i
  %i.ayr = load i8, ptr %i.ayq, align 1, !tbaa !78
  %i.ays = load ptr, ptr %i.cb, align 8, !tbaa !71
  %i.ayt = getelementptr inbounds i8, ptr %i.ays, i64 %i.ayo
  store i8 %i.ayr, ptr %i.ayt, align 1, !tbaa !78
  %i.ayu = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  %i.ayv = add nsw i32 %i.ayu, 1                  ; 3 uses
  store i32 %i.ayv, ptr %i.cd, align 4, !tbaa !73
  %.not407.i = icmp slt i32 %i.ayu, %.0350.lcssa1115
  br i1 %.not407.i, label %bb.dv, label %bb.dy

vec.epilog.scalar.ph1438:                         ; preds = %vec.epilog.scalar.ph1438.prol.loopexit, %vec.epilog.scalar.ph1438
  %indvars.iv764.i = phi i64 [ %indvars.iv.next765.i.3, %vec.epilog.scalar.ph1438 ], [ %indvars.iv764.i.unr, %vec.epilog.scalar.ph1438.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv764.i
  %i.ayw = load i16, ptr %gep.i, align 2, !tbaa !77
  %i.ayx = getelementptr inbounds nuw [2 x i8], ptr %i.axs, i64 %indvars.iv764.i
  store i16 %i.ayw, ptr %i.ayx, align 2, !tbaa !77
  %indvars.iv.next765.i = add nuw nsw i64 %indvars.iv764.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next765.i
  %i.ayy = load i16, ptr %gep.i.1, align 2, !tbaa !77
  %i.ayz = getelementptr inbounds nuw [2 x i8], ptr %i.axs, i64 %indvars.iv.next765.i
  store i16 %i.ayy, ptr %i.ayz, align 2, !tbaa !77
  %indvars.iv.next765.i.1 = add nuw nsw i64 %indvars.iv764.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next765.i.1
  %i.aza = load i16, ptr %gep.i.2, align 2, !tbaa !77
  %i.azb = getelementptr inbounds nuw [2 x i8], ptr %i.axs, i64 %indvars.iv.next765.i.1
  store i16 %i.aza, ptr %i.azb, align 2, !tbaa !77
  %indvars.iv.next765.i.2 = add nuw nsw i64 %indvars.iv764.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next765.i.2
  %i.azc = load i16, ptr %gep.i.3, align 2, !tbaa !77
  %i.azd = getelementptr inbounds nuw [2 x i8], ptr %i.axs, i64 %indvars.iv.next765.i.2
  store i16 %i.azc, ptr %i.azd, align 2, !tbaa !77
  %indvars.iv.next765.i.3 = add nuw nsw i64 %indvars.iv764.i, 4 ; 2 uses
  %exitcond768.not.i.3 = icmp eq i64 %indvars.iv.next765.i.3, %wide.trip.count767.i
  br i1 %exitcond768.not.i.3, label %.critedge418.i, label %vec.epilog.scalar.ph1438, !llvm.loop !103

bb.dy:                                            ; preds = %.critedge418.i
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.46, i32 noundef %i.ayv, i32 noundef range(i32 0, -2147483648) %.0350.lcssa1115) #8
  br label %.critedge591

.loopexit.i446:                                   ; preds = %bb.dw, %bb.dv, %.thread.i445, %._crit_edge657.i, %bb.cw
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.amu) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.amt) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.amo) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alp) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alm) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alj) #8
  br label %.preheader

.critedge591:                                     ; preds = %bb.dy, %bb.cv
  tail call void @_Z6rcFreePv(ptr noundef %i.amu) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.amt) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.amo) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alp) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alm) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alj) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yk) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yi) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yg) #8
  br label %bb.dz

bb.dz:                                            ; preds = %.critedge591, %.critedge590, %.critedge589, %.critedge588, %.critedge587, %.critedge586, %.critedge584, %.critedge583, %.critedge582, %_ZL12removeVertexP9rcContextR10rcPolyMeshti.exit.thread
  %.sink = phi ptr [ %i.xe, %.critedge591 ], [ %i.xe, %.critedge590 ], [ %i.xe, %.critedge589 ], [ %i.xe, %.critedge588 ], [ %i.xe, %.critedge587 ], [ %i.xe, %.critedge586 ], [ %i.xe, %.critedge584 ], [ %i.xe, %.critedge583 ], [ %i.xe, %.critedge582 ], [ null, %_ZL12removeVertexP9rcContextR10rcPolyMeshti.exit.thread ]
  tail call void @_Z6rcFreePv(ptr noundef %.sink) #8
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef %.0314812) #8
  br label %bb.ev

.preheader:                                       ; preds = %._crit_edge635.i, %.loopexit.i446
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yk) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yi) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yg) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.xe) #8
  %i.aze = load i32, ptr %i.cc, align 8, !tbaa !72
  %i.azf = icmp slt i32 %.0314812, %i.aze
  br i1 %i.azf, label %.lr.ph809, label %._crit_edge810

._crit_edge810:                                   ; preds = %.lr.ph809, %.preheader
  %i.azg = add nsw i32 %.0314812, -1
  br label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread

.lr.ph809:                                        ; preds = %.preheader, %.lr.ph809
  %indvars.iv1007 = phi i64 [ %indvars.iv.next1008, %.lr.ph809 ], [ %i.rc, %.preheader ] ; 2 uses
  %indvars.iv.next1008 = add nsw i64 %indvars.iv1007, 1 ; 3 uses
  %i.azh = getelementptr inbounds i8, ptr %i.bm, i64 %indvars.iv.next1008
  %i.azi = load i8, ptr %i.azh, align 1, !tbaa !78
  %i.azj = getelementptr inbounds i8, ptr %i.bm, i64 %indvars.iv1007
  store i8 %i.azi, ptr %i.azj, align 1, !tbaa !78
  %i.azk = load i32, ptr %i.cc, align 8, !tbaa !72
  %i.azl = sext i32 %i.azk to i64
  %i.azm = icmp slt i64 %indvars.iv.next1008, %i.azl
  br i1 %i.azm, label %.lr.ph809, label %._crit_edge810

_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread: ; preds = %.lr.ph125.i, %bb.bg, %._crit_edge126.i, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread579, %.lr.ph813, %._crit_edge810, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit
  %.1 = phi i32 [ %i.azg, %._crit_edge810 ], [ %.0314812, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit ], [ %.0314812, %.lr.ph813 ], [ %.0314812, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread579 ], [ %.0314812, %._crit_edge126.i ], [ %.0314812, %bb.bg ], [ %.0314812, %.lr.ph125.i ]
  %i.azn = add nsw i32 %.1, 1                     ; 2 uses
  %i.azo = load i32, ptr %i.cc, align 8, !tbaa !72 ; 2 uses
  %.not399 = icmp slt i32 %i.azn, %i.azo
  br i1 %.not399, label %.lr.ph813, label %.critedge407

.critedge407:                                     ; preds = %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread, %.critedge405.preheader
  %i.azp = phi i32 [ %i.dj, %.critedge405.preheader ], [ %i.azo, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread ]
  %i.azq = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.azr = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.azs = tail call fastcc noundef zeroext i1 @_ZL18buildMeshAdjacencyPtiii(ptr noundef %i.azq, i32 noundef %i.azr, i32 noundef %i.azp, i32 noundef %2)
  br i1 %i.azs, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %.critedge407
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.14) #8
  br label %bb.ev

bb.eb:                                            ; preds = %.critedge407
  %i.azt = load i32, ptr %i.ad, align 8, !tbaa !65
  %i.azu = icmp sgt i32 %i.azt, 0
  %.pre1025 = load i32, ptr %i.cd, align 4, !tbaa !73 ; 3 uses
  br i1 %i.azu, label %bb.ec, label %.loopexit

bb.ec:                                            ; preds = %bb.eb
  %i.azv = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.azw = load i32, ptr %i.azv, align 4, !tbaa !118 ; 2 uses
  %i.azx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.azy = load i32, ptr %i.azx, align 8, !tbaa !119 ; 2 uses
  %i.azz = icmp sgt i32 %.pre1025, 0
  br i1 %i.azz, label %.lr.ph821, label %.loopexit

.lr.ph821:                                        ; preds = %bb.ec
  %i.baa = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.bab = shl i32 %2, 1
  %i.bac = icmp sgt i32 %2, 0
  br i1 %i.bac, label %.lr.ph816.preheader, label %.loopexit

.lr.ph816.preheader:                              ; preds = %.lr.ph821
  %i.bad = zext nneg i32 %2 to i64                ; 2 uses
  %wide.trip.count1021 = zext nneg i32 %.pre1025 to i64
  br label %.lr.ph816

.lr.ph816:                                        ; preds = %.lr.ph816.preheader, %._crit_edge817
  %indvars.iv1017 = phi i64 [ 0, %.lr.ph816.preheader ], [ %indvars.iv.next1018, %._crit_edge817 ] ; 2 uses
  %i.bae = trunc nuw nsw i64 %indvars.iv1017 to i32
  %i.baf = mul i32 %i.bab, %i.bae
  %i.bag = sext i32 %i.baf to i64
  %i.bah = getelementptr inbounds [2 x i8], ptr %i.baa, i64 %i.bag ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.bah, i64 %i.bad
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph816, %._crit_edge1026
  %indvars.iv1011 = phi i64 [ 0, %.lr.ph816 ], [ %i.bam, %._crit_edge1026 ] ; 3 uses
  %i.bai = getelementptr inbounds nuw [2 x i8], ptr %i.bah, i64 %indvars.iv1011
  %i.baj = load i16, ptr %i.bai, align 2, !tbaa !77 ; 2 uses
  %i.bak = icmp eq i16 %i.baj, -1
  br i1 %i.bak, label %._crit_edge817, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv1011 ; 2 uses
  %i.bal = load i16, ptr %gep, align 2, !tbaa !77
  %.not401 = icmp eq i16 %i.bal, -1
  %i.bam = add nuw nsw i64 %indvars.iv1011, 1     ; 4 uses
  br i1 %.not401, label %bb.ef, label %._crit_edge1026

bb.ef:                                            ; preds = %bb.ee
  %.not402 = icmp slt i64 %i.bam, %i.br
  br i1 %.not402, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.ban = getelementptr inbounds nuw [2 x i8], ptr %i.bah, i64 %i.bam
  %i.bao = load i16, ptr %i.ban, align 2, !tbaa !77 ; 2 uses
  %i.bap = icmp eq i16 %i.bao, -1
  br i1 %i.bap, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.pre1024 = load i16, ptr %i.bah, align 2, !tbaa !77
  br label %bb.ei
end_hunk_2
begin_hunk_3_@_Z17rcMergePolyMeshesP9rcContextPP10rcPolyMeshiRS1_:bb.a
  %broadcast.splat336 = shufflevector <8 x i1> %broadcast.splatinsert335, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splat338 = shufflevector <2 x i1> %i.ed, <2 x i1> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %bb.z

bb.u:                                             ; preds = %.lr.ph255, %_ZL9addVertextttPtPiS0_Ri.exit
  %i.fm = phi i32 [ %i.fa, %.lr.ph255 ], [ %i.hb, %_ZL9addVertextttPtPiS0_Ri.exit ]
  %indvars.iv281 = phi i64 [ 0, %.lr.ph255 ], [ %indvars.iv.next282, %_ZL9addVertextttPtPiS0_Ri.exit ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv281, 6
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.idx ; 3 uses
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !77
  %i.fp = add i16 %i.fo, %i.fe                    ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !77 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !77
  %i.fu = add i16 %i.ft, %.fr272                  ; 3 uses
  %i.fv = zext i16 %i.fp to i64
  %i.fw = zext i16 %i.fu to i64
  %i.fx = mul nuw nsw i64 %i.fv, 835
  %i.fy = mul nuw nsw i64 %i.fw, 799
  %i.fz = add nuw nsw i64 %i.fy, %i.fx
  %i.ga = and i64 %i.fz, 4095
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.ga ; 3 uses
  %.03642.i = load i32, ptr %i.gb, align 4, !tbaa !76 ; 2 uses
  %.not43.i = icmp eq i32 %.03642.i, -1
  br i1 %.not43.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.gc = zext i16 %i.fr to i32
  %invariant.op = sub i32 2, %i.gc
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %.lr.ph.i
  %.03644.i = phi i32 [ %.03642.i, %.lr.ph.i ], [ %.036.i, %bb.y ] ; 3 uses
  %i.gd = mul nsw i32 %.03644.i, 3
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [2 x i8], ptr %i.fd, i64 %i.ge ; 3 uses
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !77
  %i.gh = icmp eq i16 %i.gg, %i.fp
  br i1 %i.gh, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !77
  %i.gk = zext i16 %i.gj to i32
  %.reass.i.reass.reass = add i32 %i.gk, %invariant.op
  %i.gl = icmp ult i32 %.reass.i.reass.reass, 5
  br i1 %i.gl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !77
  %i.go = icmp eq i16 %i.gn, %i.fu
  br i1 %i.go, label %_ZL9addVertextttPtPiS0_Ri.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.gp = sext i32 %.03644.i to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.gp
  %.036.i = load i32, ptr %i.gq, align 4, !tbaa !76 ; 2 uses
  %.not.i = icmp eq i32 %.036.i, -1
  br i1 %.not.i, label %._crit_edge.i, label %bb.v

._crit_edge.i:                                    ; preds = %bb.y, %bb.u
  %i.gr = load i32, ptr %i.ai, align 8, !tbaa !76 ; 5 uses
  %i.gs = add nsw i32 %i.gr, 1
  store i32 %i.gs, ptr %i.ai, align 8, !tbaa !76
  %i.gt = mul nsw i32 %i.gr, 3
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [2 x i8], ptr %i.fd, i64 %i.gu ; 3 uses
  store i16 %i.fp, ptr %i.gv, align 2, !tbaa !77
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  store i16 %i.fr, ptr %i.gw, align 2, !tbaa !77
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store i16 %i.fu, ptr %i.gx, align 2, !tbaa !77
  %i.gy = load i32, ptr %i.gb, align 4, !tbaa !76
  %i.gz = sext i32 %i.gr to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.gz
  store i32 %i.gy, ptr %i.ha, align 4, !tbaa !76
  store i32 %i.gr, ptr %i.gb, align 4, !tbaa !76
  %.pre = load i32, ptr %i.ez, align 8, !tbaa !72
  br label %_ZL9addVertextttPtPiS0_Ri.exit

_ZL9addVertextttPtPiS0_Ri.exit:                   ; preds = %bb.x, %._crit_edge.i
  %i.hb = phi i32 [ %.pre, %._crit_edge.i ], [ %i.fm, %bb.x ] ; 2 uses
  %.2.in.i = phi i32 [ %i.gr, %._crit_edge.i ], [ %.03644.i, %bb.x ]
  %.2.i = trunc i32 %.2.in.i to i16
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv281
  store i16 %.2.i, ptr %i.hc, align 2, !tbaa !77
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.hd = sext i32 %i.hb to i64
  %i.he = icmp slt i64 %indvars.iv.next282, %i.hd
  br i1 %i.he, label %bb.u, label %.preheader238

._crit_edge267:                                   ; preds = %.loopexit, %.preheader238
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %._crit_edge271, label %bb.t

bb.z:                                             ; preds = %.lr.ph266, %.loopexit
  %i.hf = phi i32 [ %.pre308, %.lr.ph266 ], [ %i.im, %.loopexit ] ; 2 uses
  %i.hg = phi i32 [ %.pre307, %.lr.ph266 ], [ %i.il, %.loopexit ] ; 2 uses
  %indvars.iv299 = phi i64 [ 0, %.lr.ph266 ], [ %indvars.iv.next300, %.loopexit ] ; 5 uses
  %i.hh = load ptr, ptr %i.ci, align 8, !tbaa !69 ; 2 uses
  %i.hi = ptrtoaddr ptr %i.hh to i64              ; 2 uses
  %i.hj = shl i32 %i.hg, 1
  %i.hk = mul i32 %i.hj, %i.hf
  %i.hl = sext i32 %i.hk to i64                   ; 3 uses
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.hh, i64 %i.hl ; 39 uses
  %i.hn = load ptr, ptr %i.fi, align 8, !tbaa !69 ; 2 uses
  %i.ho = ptrtoaddr ptr %i.hn to i64              ; 2 uses
  %indvars.iv299.tr = trunc i64 %indvars.iv299 to i32
  %i.hp = shl nuw i32 %indvars.iv299.tr, 1
  %i.hq = mul i32 %i.hp, %i.hf
  %i.hr = sext i32 %i.hq to i64                   ; 3 uses
  %i.hs = getelementptr inbounds [2 x i8], ptr %i.hn, i64 %i.hr ; 10 uses
  %i.ht = load ptr, ptr %i.fj, align 8, !tbaa !70
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %indvars.iv299
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !77
  %i.hw = load ptr, ptr %i.cq, align 8, !tbaa !70
  %i.hx = sext i32 %i.hg to i64                   ; 2 uses
  %i.hy = getelementptr inbounds [2 x i8], ptr %i.hw, i64 %i.hx
  store i16 %i.hv, ptr %i.hy, align 2, !tbaa !77
  %i.hz = load ptr, ptr %i.fk, align 8, !tbaa !71
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %indvars.iv299
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !78
  %i.ic = load ptr, ptr %i.cs, align 8, !tbaa !71
  %i.id = getelementptr inbounds i8, ptr %i.ic, i64 %i.hx
  store i8 %i.ib, ptr %i.id, align 1, !tbaa !78
  %i.ie = load ptr, ptr %i.fl, align 8, !tbaa !82
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %indvars.iv299
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !77
  %i.ih = load ptr, ptr %i.cu, align 8, !tbaa !82
  %i.ii = load i32, ptr %i.ca, align 4, !tbaa !73 ; 2 uses
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [2 x i8], ptr %i.ih, i64 %i.ij
  store i16 %i.ig, ptr %i.ik, align 2, !tbaa !77
  %i.il = add nsw i32 %i.ii, 1                    ; 2 uses
  store i32 %i.il, ptr %i.ca, align 4, !tbaa !73
  %i.im = load i32, ptr %i.l, align 4, !tbaa !74  ; 6 uses
  %i.in = icmp sgt i32 %i.im, 0
  br i1 %i.in, label %.lr.ph258.preheader, label %._crit_edge259

.lr.ph258.preheader:                              ; preds = %bb.z
  %wide.trip.count287 = zext nneg i32 %i.im to i64
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.preheader, %bb.aa
  %indvars.iv284 = phi i64 [ 0, %.lr.ph258.preheader ], [ %indvars.iv.next285, %bb.aa ] ; 3 uses
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.hs, i64 %indvars.iv284
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !77 ; 2 uses
  %i.iq = icmp eq i16 %i.ip, -1
  br i1 %i.iq, label %._crit_edge259, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph258
  %i.ir = zext i16 %i.ip to i64
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.ir
  %i.it = load i16, ptr %i.is, align 2, !tbaa !77
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %indvars.iv284
  store i16 %i.it, ptr %i.iu, align 2, !tbaa !77
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count287
  br i1 %exitcond288.not, label %._crit_edge259, label %.lr.ph258

._crit_edge259:                                   ; preds = %bb.aa, %.lr.ph258, %bb.z
  br i1 %i.ey, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge259
  %i.iv = shl nsw i32 %i.im, 1                    ; 2 uses
  %i.iw = icmp slt i32 %i.im, %i.iv
  br i1 %i.iw, label %.lr.ph264, label %.loopexit

.lr.ph264:                                        ; preds = %.preheader
  %i.ix = sext i32 %i.im to i64                   ; 11 uses
  %wide.trip.count297 = sext i32 %i.iv to i64     ; 5 uses
  %i.iy = sub nsw i64 %wide.trip.count297, %i.ix  ; 9 uses
  %min.iters.check = icmp ult i64 %i.iy, 8        ; 2 uses
  br i1 %i.er, label %.lr.ph264.split.us.preheader, label %iter.check

iter.check:                                       ; preds = %.lr.ph264
  br i1 %min.iters.check, label %.lr.ph264.split.preheader, label %vector.memcheck353

vector.memcheck353:                               ; preds = %iter.check
  %i.iz = shl nsw i64 %i.hl, 1
  %i.ja = add i64 %i.iz, %i.hi
  %i.jb = shl nsw i64 %i.hr, 1
  %i.jc = add i64 %i.jb, %i.ho
  %i.jd = sub i64 %i.jc, %i.ja
  %diff.check354 = icmp ugt i64 %i.jd, -32
  br i1 %diff.check354, label %.lr.ph264.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck353
  %min.iters.check357 = icmp ult i64 %i.iy, 16
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph358

vector.ph358:                                     ; preds = %vector.main.loop.iter.check
  %i.je = and i64 %i.iy, 8
  %n.vec359 = and i64 %i.iy, -16                  ; 4 uses
  %i.jf = add nsw i64 %n.vec359, %i.ix
  br label %vector.body366

vector.body366:                                   ; preds = %vector.ph358, %pred.store.continue401
  %index367 = phi i64 [ 0, %vector.ph358 ], [ %index.next402, %pred.store.continue401 ] ; 2 uses
  %i.jg = add nuw i64 %index367, %i.ix            ; 17 uses
  %i.jh = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %wide.load368 = load <8 x i16>, ptr %i.jh, align 2, !tbaa !77 ; 10 uses
  %wide.load369 = load <8 x i16>, ptr %i.ji, align 2, !tbaa !77 ; 10 uses
  %i.jj = icmp slt <8 x i16> %wide.load368, splat (i16 -1) ; 3 uses
  %i.jk = icmp slt <8 x i16> %wide.load369, splat (i16 -1) ; 3 uses
  %i.jl = and <8 x i16> %wide.load368, splat (i16 15) ; 3 uses
  %i.jm = and <8 x i16> %wide.load369, splat (i16 15) ; 3 uses
  %i.jn = icmp eq <8 x i16> %i.jl, zeroinitializer
  %i.jo = icmp eq <8 x i16> %i.jm, zeroinitializer
  %i.jp = icmp eq <8 x i16> %i.jl, splat (i16 1)
  %i.jq = icmp eq <8 x i16> %i.jm, splat (i16 1)
  %i.jr = icmp eq <8 x i16> %i.jl, splat (i16 2)
  %i.js = icmp eq <8 x i16> %i.jm, splat (i16 2)
  %i.jt = and <8 x i1> %i.jj, %i.jn
  %i.ju = and <8 x i1> %i.jk, %i.jo
  %i.jv = and <8 x i1> %i.jj, %i.jp
  %i.jw = and <8 x i1> %i.jk, %i.jq
  %i.jx = and <8 x i1> %i.jj, %i.jr
  %i.jy = and <8 x i1> %i.jk, %i.js
  %i.jz = select <8 x i1> %i.jv, <8 x i1> %broadcast.splat363, <8 x i1> zeroinitializer
  %i.ka = select <8 x i1> %i.jw, <8 x i1> %broadcast.splat363, <8 x i1> zeroinitializer
  %i.kb = select <8 x i1> %i.jx, <8 x i1> %broadcast.splat361, <8 x i1> %i.jz
  %i.kc = select <8 x i1> %i.jy, <8 x i1> %broadcast.splat361, <8 x i1> %i.ka
  %i.kd = select <8 x i1> %i.jt, <8 x i1> %broadcast.splat365, <8 x i1> zeroinitializer
  %i.ke = select <8 x i1> %i.ju, <8 x i1> %broadcast.splat365, <8 x i1> zeroinitializer
  %i.kf = or <8 x i1> %i.kb, %i.kd                ; 8 uses
  %i.kg = or <8 x i1> %i.kc, %i.ke                ; 8 uses
  %i.kh = extractelement <8 x i1> %i.kf, i64 0
  br i1 %i.kh, label %pred.store.if370, label %pred.store.continue371

pred.store.if370:                                 ; preds = %vector.body366
  %i.ki = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.jg
  %i.kj = extractelement <8 x i16> %wide.load368, i64 0
  store i16 %i.kj, ptr %i.ki, align 2, !tbaa !77
  br label %pred.store.continue371

pred.store.continue371:                           ; preds = %pred.store.if370, %vector.body366
  %i.kk = extractelement <8 x i1> %i.kf, i64 1
  br i1 %i.kk, label %pred.store.if372, label %pred.store.continue373

pred.store.if372:                                 ; preds = %pred.store.continue371
  %i.kl = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.km = getelementptr i8, ptr %i.kl, i64 2
  %i.kn = extractelement <8 x i16> %wide.load368, i64 1
  store i16 %i.kn, ptr %i.km, align 2, !tbaa !77
  br label %pred.store.continue373

pred.store.continue373:                           ; preds = %pred.store.if372, %pred.store.continue371
  %i.ko = extractelement <8 x i1> %i.kf, i64 2
  br i1 %i.ko, label %pred.store.if374, label %pred.store.continue375

pred.store.if374:                                 ; preds = %pred.store.continue373
  %i.kp = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.kq = getelementptr i8, ptr %i.kp, i64 4
  %i.kr = extractelement <8 x i16> %wide.load368, i64 2
  store i16 %i.kr, ptr %i.kq, align 2, !tbaa !77
  br label %pred.store.continue375

pred.store.continue375:                           ; preds = %pred.store.if374, %pred.store.continue373
  %i.ks = extractelement <8 x i1> %i.kf, i64 3
  br i1 %i.ks, label %pred.store.if376, label %pred.store.continue377

pred.store.if376:                                 ; preds = %pred.store.continue375
  %i.kt = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.ku = getelementptr i8, ptr %i.kt, i64 6
  %i.kv = extractelement <8 x i16> %wide.load368, i64 3
  store i16 %i.kv, ptr %i.ku, align 2, !tbaa !77
  br label %pred.store.continue377

pred.store.continue377:                           ; preds = %pred.store.if376, %pred.store.continue375
  %i.kw = extractelement <8 x i1> %i.kf, i64 4
  br i1 %i.kw, label %pred.store.if378, label %pred.store.continue379

pred.store.if378:                                 ; preds = %pred.store.continue377
  %i.kx = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.ky = getelementptr i8, ptr %i.kx, i64 8
  %i.kz = extractelement <8 x i16> %wide.load368, i64 4
  store i16 %i.kz, ptr %i.ky, align 2, !tbaa !77
  br label %pred.store.continue379

pred.store.continue379:                           ; preds = %pred.store.if378, %pred.store.continue377
  %i.la = extractelement <8 x i1> %i.kf, i64 5
  br i1 %i.la, label %pred.store.if380, label %pred.store.continue381

pred.store.if380:                                 ; preds = %pred.store.continue379
  %i.lb = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.lc = getelementptr i8, ptr %i.lb, i64 10
  %i.ld = extractelement <8 x i16> %wide.load368, i64 5
  store i16 %i.ld, ptr %i.lc, align 2, !tbaa !77
  br label %pred.store.continue381

pred.store.continue381:                           ; preds = %pred.store.if380, %pred.store.continue379
  %i.le = extractelement <8 x i1> %i.kf, i64 6
  br i1 %i.le, label %pred.store.if382, label %pred.store.continue383

pred.store.if382:                                 ; preds = %pred.store.continue381
  %i.lf = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.lg = getelementptr i8, ptr %i.lf, i64 12
  %i.lh = extractelement <8 x i16> %wide.load368, i64 6
  store i16 %i.lh, ptr %i.lg, align 2, !tbaa !77
  br label %pred.store.continue383

pred.store.continue383:                           ; preds = %pred.store.if382, %pred.store.continue381
  %i.li = extractelement <8 x i1> %i.kf, i64 7
  br i1 %i.li, label %pred.store.if384, label %pred.store.continue385

pred.store.if384:                                 ; preds = %pred.store.continue383
  %i.lj = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.lk = getelementptr i8, ptr %i.lj, i64 14
  %i.ll = extractelement <8 x i16> %wide.load368, i64 7
  store i16 %i.ll, ptr %i.lk, align 2, !tbaa !77
  br label %pred.store.continue385

pred.store.continue385:                           ; preds = %pred.store.if384, %pred.store.continue383
  %i.lm = extractelement <8 x i1> %i.kg, i64 0
  br i1 %i.lm, label %pred.store.if386, label %pred.store.continue387

pred.store.if386:                                 ; preds = %pred.store.continue385
  %i.ln = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.lo = getelementptr i8, ptr %i.ln, i64 16
  %i.lp = extractelement <8 x i16> %wide.load369, i64 0
  store i16 %i.lp, ptr %i.lo, align 2, !tbaa !77
  br label %pred.store.continue387

pred.store.continue387:                           ; preds = %pred.store.if386, %pred.store.continue385
  %i.lq = extractelement <8 x i1> %i.kg, i64 1
  br i1 %i.lq, label %pred.store.if388, label %pred.store.continue389

pred.store.if388:                                 ; preds = %pred.store.continue387
  %i.lr = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.ls = getelementptr i8, ptr %i.lr, i64 18
  %i.lt = extractelement <8 x i16> %wide.load369, i64 1
  store i16 %i.lt, ptr %i.ls, align 2, !tbaa !77
  br label %pred.store.continue389

pred.store.continue389:                           ; preds = %pred.store.if388, %pred.store.continue387
  %i.lu = extractelement <8 x i1> %i.kg, i64 2
  br i1 %i.lu, label %pred.store.if390, label %pred.store.continue391

pred.store.if390:                                 ; preds = %pred.store.continue389
  %i.lv = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.lw = getelementptr i8, ptr %i.lv, i64 20
  %i.lx = extractelement <8 x i16> %wide.load369, i64 2
  store i16 %i.lx, ptr %i.lw, align 2, !tbaa !77
  br label %pred.store.continue391

pred.store.continue391:                           ; preds = %pred.store.if390, %pred.store.continue389
  %i.ly = extractelement <8 x i1> %i.kg, i64 3
  br i1 %i.ly, label %pred.store.if392, label %pred.store.continue393

pred.store.if392:                                 ; preds = %pred.store.continue391
  %i.lz = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.ma = getelementptr i8, ptr %i.lz, i64 22
  %i.mb = extractelement <8 x i16> %wide.load369, i64 3
  store i16 %i.mb, ptr %i.ma, align 2, !tbaa !77
  br label %pred.store.continue393

pred.store.continue393:                           ; preds = %pred.store.if392, %pred.store.continue391
  %i.mc = extractelement <8 x i1> %i.kg, i64 4
  br i1 %i.mc, label %pred.store.if394, label %pred.store.continue395

pred.store.if394:                                 ; preds = %pred.store.continue393
  %i.md = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.me = getelementptr i8, ptr %i.md, i64 24
  %i.mf = extractelement <8 x i16> %wide.load369, i64 4
  store i16 %i.mf, ptr %i.me, align 2, !tbaa !77
  br label %pred.store.continue395

pred.store.continue395:                           ; preds = %pred.store.if394, %pred.store.continue393
  %i.mg = extractelement <8 x i1> %i.kg, i64 5
  br i1 %i.mg, label %pred.store.if396, label %pred.store.continue397

pred.store.if396:                                 ; preds = %pred.store.continue395
  %i.mh = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.mi = getelementptr i8, ptr %i.mh, i64 26
  %i.mj = extractelement <8 x i16> %wide.load369, i64 5
  store i16 %i.mj, ptr %i.mi, align 2, !tbaa !77
  br label %pred.store.continue397

pred.store.continue397:                           ; preds = %pred.store.if396, %pred.store.continue395
  %i.mk = extractelement <8 x i1> %i.kg, i64 6
  br i1 %i.mk, label %pred.store.if398, label %pred.store.continue399

pred.store.if398:                                 ; preds = %pred.store.continue397
  %i.ml = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.mm = getelementptr i8, ptr %i.ml, i64 28
  %i.mn = extractelement <8 x i16> %wide.load369, i64 6
  store i16 %i.mn, ptr %i.mm, align 2, !tbaa !77
  br label %pred.store.continue399

pred.store.continue399:                           ; preds = %pred.store.if398, %pred.store.continue397
  %i.mo = extractelement <8 x i1> %i.kg, i64 7
  br i1 %i.mo, label %pred.store.if400, label %pred.store.continue401

pred.store.if400:                                 ; preds = %pred.store.continue399
  %i.mp = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.mq = getelementptr i8, ptr %i.mp, i64 30
  %i.mr = extractelement <8 x i16> %wide.load369, i64 7
  store i16 %i.mr, ptr %i.mq, align 2, !tbaa !77
  br label %pred.store.continue401

pred.store.continue401:                           ; preds = %pred.store.if400, %pred.store.continue399
  %index.next402 = add nuw i64 %index367, 16      ; 2 uses
  %i.ms = icmp eq i64 %index.next402, %n.vec359
  br i1 %i.ms, label %middle.block403, label %vector.body366, !llvm.loop !120

middle.block403:                                  ; preds = %pred.store.continue401
  %cmp.n404 = icmp eq i64 %i.iy, %n.vec359
  br i1 %cmp.n404, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block403
  %min.epilog.iters.check.not.not = icmp eq i64 %i.je, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph264.split.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec359, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec406 = and i64 %i.iy, -8                   ; 3 uses
  %i.mt = add nsw i64 %n.vec406, %i.ix
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue430, %vec.epilog.ph
  %index413 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next431, %pred.store.continue430 ] ; 2 uses
  %i.mu = add nuw i64 %index413, %i.ix            ; 9 uses
  %i.mv = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %i.mu
  %wide.load414 = load <8 x i16>, ptr %i.mv, align 2, !tbaa !77 ; 10 uses
  %i.mw = icmp slt <8 x i16> %wide.load414, splat (i16 -1) ; 3 uses
  %i.mx = and <8 x i16> %wide.load414, splat (i16 15) ; 3 uses
  %i.my = icmp eq <8 x i16> %i.mx, zeroinitializer
  %i.mz = icmp eq <8 x i16> %i.mx, splat (i16 1)
  %i.na = icmp eq <8 x i16> %i.mx, splat (i16 2)
  %i.nb = and <8 x i1> %i.mw, %i.my
  %i.nc = and <8 x i1> %i.mw, %i.mz
  %i.nd = and <8 x i1> %i.mw, %i.na
  %i.ne = select <8 x i1> %i.nc, <8 x i1> %broadcast.splat410, <8 x i1> zeroinitializer
  %i.nf = select <8 x i1> %i.nd, <8 x i1> %broadcast.splat408, <8 x i1> %i.ne
  %i.ng = select <8 x i1> %i.nb, <8 x i1> %broadcast.splat412, <8 x i1> zeroinitializer
  %i.nh = or <8 x i1> %i.nf, %i.ng                ; 8 uses
  %i.ni = extractelement <8 x i1> %i.nh, i64 0
  br i1 %i.ni, label %pred.store.if415, label %pred.store.continue416

pred.store.if415:                                 ; preds = %vec.epilog.vector.body
  %i.nj = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.mu
  %i.nk = extractelement <8 x i16> %wide.load414, i64 0
  store i16 %i.nk, ptr %i.nj, align 2, !tbaa !77
  br label %pred.store.continue416

pred.store.continue416:                           ; preds = %pred.store.if415, %vec.epilog.vector.body
  %i.nl = extractelement <8 x i1> %i.nh, i64 1
  br i1 %i.nl, label %pred.store.if417, label %pred.store.continue418

pred.store.if417:                                 ; preds = %pred.store.continue416
  %i.nm = getelementptr [2 x i8], ptr %i.hm, i64 %i.mu
  %i.nn = getelementptr i8, ptr %i.nm, i64 2
  %i.no = extractelement <8 x i16> %wide.load414, i64 1
  store i16 %i.no, ptr %i.nn, align 2, !tbaa !77
  br label %pred.store.continue418

pred.store.continue418:                           ; preds = %pred.store.if417, %pred.store.continue416
  %i.np = extractelement <8 x i1> %i.nh, i64 2
  br i1 %i.np, label %pred.store.if419, label %pred.store.continue420

pred.store.if419:                                 ; preds = %pred.store.continue418
  %i.nq = getelementptr [2 x i8], ptr %i.hm, i64 %i.mu
  %i.nr = getelementptr i8, ptr %i.nq, i64 4
  %i.ns = extractelement <8 x i16> %wide.load414, i64 2
  store i16 %i.ns, ptr %i.nr, align 2, !tbaa !77
  br label %pred.store.continue420

pred.store.continue420:                           ; preds = %pred.store.if419, %pred.store.continue418
  %i.nt = extractelement <8 x i1> %i.nh, i64 3
  br i1 %i.nt, label %pred.store.if421, label %pred.store.continue422

pred.store.if421:                                 ; preds = %pred.store.continue420
  %i.nu = getelementptr [2 x i8], ptr %i.hm, i64 %i.mu
  %i.nv = getelementptr i8, ptr %i.nu, i64 6
  %i.nw = extractelement <8 x i16> %wide.load414, i64 3
  store i16 %i.nw, ptr %i.nv, align 2, !tbaa !77
  br label %pred.store.continue422

pred.store.continue422:                           ; preds = %pred.store.if421, %pred.store.continue420
  %i.nx = extractelement <8 x i1> %i.nh, i64 4
  br i1 %i.nx, label %pred.store.if423, label %pred.store.continue424

pred.store.if423:                                 ; preds = %pred.store.continue422
  %i.ny = getelementptr [2 x i8], ptr %i.hm, i64 %i.mu
  %i.nz = getelementptr i8, ptr %i.ny, i64 8
  %i.oa = extractelement <8 x i16> %wide.load414, i64 4
  store i16 %i.oa, ptr %i.nz, align 2, !tbaa !77
  br label %pred.store.continue424

pred.store.continue424:                           ; preds = %pred.store.if423, %pred.store.continue422
  %i.ob = extractelement <8 x i1> %i.nh, i64 5
  br i1 %i.ob, label %pred.store.if425, label %pred.store.continue426

pred.store.if425:                                 ; preds = %pred.store.continue424
  %i.oc = getelementptr [2 x i8], ptr %i.hm, i64 %i.mu
  %i.od = getelementptr i8, ptr %i.oc, i64 10
  %i.oe = extractelement <8 x i16> %wide.load414, i64 5
  store i16 %i.oe, ptr %i.od, align 2, !tbaa !77
  br label %pred.store.continue426

pred.store.continue426:                           ; preds = %pred.store.if425, %pred.store.continue424
  %i.of = extractelement <8 x i1> %i.nh, i64 6
  br i1 %i.of, label %pred.store.if427, label %pred.store.continue428

pred.store.if427:                                 ; preds = %pred.store.continue426
  %i.og = getelementptr [2 x i8], ptr %i.hm, i64 %i.mu
  %i.oh = getelementptr i8, ptr %i.og, i64 12
  %i.oi = extractelement <8 x i16> %wide.load414, i64 6
  store i16 %i.oi, ptr %i.oh, align 2, !tbaa !77
  br label %pred.store.continue428

pred.store.continue428:                           ; preds = %pred.store.if427, %pred.store.continue426
  %i.oj = extractelement <8 x i1> %i.nh, i64 7
  br i1 %i.oj, label %pred.store.if429, label %pred.store.continue430

pred.store.if429:                                 ; preds = %pred.store.continue428
  %i.ok = getelementptr [2 x i8], ptr %i.hm, i64 %i.mu
  %i.ol = getelementptr i8, ptr %i.ok, i64 14
  %i.om = extractelement <8 x i16> %wide.load414, i64 7
  store i16 %i.om, ptr %i.ol, align 2, !tbaa !77
  br label %pred.store.continue430

pred.store.continue430:                           ; preds = %pred.store.if429, %pred.store.continue428
  %index.next431 = add nuw i64 %index413, 8       ; 2 uses
  %i.on = icmp eq i64 %index.next431, %n.vec406
  br i1 %i.on, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !121

vec.epilog.middle.block:                          ; preds = %pred.store.continue430
  %cmp.n432 = icmp eq i64 %i.iy, %n.vec406
  br i1 %cmp.n432, label %.loopexit, label %.lr.ph264.split.preheader

.lr.ph264.split.preheader:                        ; preds = %iter.check, %vector.memcheck353, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv289.ph = phi i64 [ %i.ix, %iter.check ], [ %i.ix, %vector.memcheck353 ], [ %i.jf, %vec.epilog.iter.check ], [ %i.mt, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %indvars.iv289.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph264.split.prol.loopexit, label %.lr.ph264.split.prol

.lr.ph264.split.prol:                             ; preds = %.lr.ph264.split.preheader
  %i.oo = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv289.ph
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !77 ; 3 uses
  %or.cond224.prol = icmp sgt i16 %i.op, -2
  br i1 %or.cond224.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph264.split.prol
  %i.oq = and i16 %i.op, 15
  switch i16 %i.oq, label %.lr.ph264.split.prol.loopexit.unr-lcssa [
    i16 0, label %bb.ae
    i16 1, label %bb.ad
    i16 2, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.ex, label %.sink.split330.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.ev, label %.sink.split330.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa

bb.ae:                                            ; preds = %bb.ab
  br i1 %i.ew, label %.sink.split330.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa

.sink.split330.prol:                              ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.or = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv289.ph
  store i16 %i.op, ptr %i.or, align 2, !tbaa !77
  br label %.lr.ph264.split.prol.loopexit.unr-lcssa

.lr.ph264.split.prol.loopexit.unr-lcssa:          ; preds = %.sink.split330.prol, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %.lr.ph264.split.prol
  %indvars.iv.next290.prol = add nuw nsw i64 %indvars.iv289.ph, 1
  br label %.lr.ph264.split.prol.loopexit

.lr.ph264.split.prol.loopexit:                    ; preds = %.lr.ph264.split.prol.loopexit.unr-lcssa, %.lr.ph264.split.preheader
  %indvars.iv289.unr = phi i64 [ %indvars.iv289.ph, %.lr.ph264.split.preheader ], [ %indvars.iv.next290.prol, %.lr.ph264.split.prol.loopexit.unr-lcssa ]
  %i.os = add nsw i64 %wide.trip.count297, -1
  %i.ot = icmp eq i64 %indvars.iv289.ph, %i.os
  br i1 %i.ot, label %.loopexit, label %.lr.ph264.split

.lr.ph264.split.us.preheader:                     ; preds = %.lr.ph264
  br i1 %min.iters.check, label %.lr.ph264.split.us.preheader434, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph264.split.us.preheader
  %i.ou = shl nsw i64 %i.hl, 1
  %i.ov = add i64 %i.ou, %i.hi
  %i.ow = shl nsw i64 %i.hr, 1
  %i.ox = add i64 %i.ow, %i.ho
  %i.oy = sub i64 %i.ox, %i.ov
  %diff.check = icmp ugt i64 %i.oy, -16
  br i1 %diff.check, label %.lr.ph264.split.us.preheader434, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iy, -8                      ; 3 uses
  %i.oz = add nsw i64 %n.vec, %i.ix
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue352, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue352 ] ; 2 uses
  %i.pa = add nuw i64 %index, %i.ix               ; 9 uses
  %i.pb = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %i.pa
  %wide.load = load <8 x i16>, ptr %i.pb, align 2, !tbaa !77 ; 10 uses
  %i.pc = icmp slt <8 x i16> %wide.load, splat (i16 -1) ; 4 uses
  %i.pd = and <8 x i16> %wide.load, splat (i16 15) ; 4 uses
  %i.pe = icmp eq <8 x i16> %i.pd, zeroinitializer
  %i.pf = icmp eq <8 x i16> %i.pd, splat (i16 1)
  %i.pg = icmp eq <8 x i16> %i.pd, splat (i16 2)
  %i.ph = icmp eq <8 x i16> %i.pd, splat (i16 3)
  %i.pi = and <8 x i1> %i.pc, %i.pe
  %i.pj = and <8 x i1> %i.pc, %i.pf
  %i.pk = and <8 x i1> %i.pc, %i.pg
  %i.pl = and <8 x i1> %i.pc, %i.ph
  %i.pm = select <8 x i1> %i.pj, <8 x i1> %broadcast.splat336, <8 x i1> zeroinitializer
  %i.pn = select <8 x i1> %i.pi, <8 x i1> %broadcast.splat338, <8 x i1> %i.pm
  %i.po = select <8 x i1> %i.pk, <8 x i1> %broadcast.splat, <8 x i1> zeroinitializer
  %i.pp = or <8 x i1> %i.pn, %i.po
  %i.pq = or <8 x i1> %i.pp, %i.pl                ; 8 uses
  %i.pr = extractelement <8 x i1> %i.pq, i64 0
  br i1 %i.pr, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ps = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.pa
  %i.pt = extractelement <8 x i16> %wide.load, i64 0
  store i16 %i.pt, ptr %i.ps, align 2, !tbaa !77
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.pu = extractelement <8 x i1> %i.pq, i64 1
  br i1 %i.pu, label %pred.store.if339, label %pred.store.continue340

pred.store.if339:                                 ; preds = %pred.store.continue
  %i.pv = getelementptr [2 x i8], ptr %i.hm, i64 %i.pa
  %i.pw = getelementptr i8, ptr %i.pv, i64 2
  %i.px = extractelement <8 x i16> %wide.load, i64 1
  store i16 %i.px, ptr %i.pw, align 2, !tbaa !77
  br label %pred.store.continue340

pred.store.continue340:                           ; preds = %pred.store.if339, %pred.store.continue
  %i.py = extractelement <8 x i1> %i.pq, i64 2
  br i1 %i.py, label %pred.store.if341, label %pred.store.continue342

pred.store.if341:                                 ; preds = %pred.store.continue340
  %i.pz = getelementptr [2 x i8], ptr %i.hm, i64 %i.pa
  %i.qa = getelementptr i8, ptr %i.pz, i64 4
  %i.qb = extractelement <8 x i16> %wide.load, i64 2
  store i16 %i.qb, ptr %i.qa, align 2, !tbaa !77
  br label %pred.store.continue342

pred.store.continue342:                           ; preds = %pred.store.if341, %pred.store.continue340
  %i.qc = extractelement <8 x i1> %i.pq, i64 3
  br i1 %i.qc, label %pred.store.if343, label %pred.store.continue344

pred.store.if343:                                 ; preds = %pred.store.continue342
  %i.qd = getelementptr [2 x i8], ptr %i.hm, i64 %i.pa
  %i.qe = getelementptr i8, ptr %i.qd, i64 6
  %i.qf = extractelement <8 x i16> %wide.load, i64 3
  store i16 %i.qf, ptr %i.qe, align 2, !tbaa !77
  br label %pred.store.continue344

pred.store.continue344:                           ; preds = %pred.store.if343, %pred.store.continue342
  %i.qg = extractelement <8 x i1> %i.pq, i64 4
  br i1 %i.qg, label %pred.store.if345, label %pred.store.continue346

pred.store.if345:                                 ; preds = %pred.store.continue344
  %i.qh = getelementptr [2 x i8], ptr %i.hm, i64 %i.pa
  %i.qi = getelementptr i8, ptr %i.qh, i64 8
  %i.qj = extractelement <8 x i16> %wide.load, i64 4
  store i16 %i.qj, ptr %i.qi, align 2, !tbaa !77
  br label %pred.store.continue346

pred.store.continue346:                           ; preds = %pred.store.if345, %pred.store.continue344
  %i.qk = extractelement <8 x i1> %i.pq, i64 5
  br i1 %i.qk, label %pred.store.if347, label %pred.store.continue348

pred.store.if347:                                 ; preds = %pred.store.continue346
  %i.ql = getelementptr [2 x i8], ptr %i.hm, i64 %i.pa
  %i.qm = getelementptr i8, ptr %i.ql, i64 10
  %i.qn = extractelement <8 x i16> %wide.load, i64 5
  store i16 %i.qn, ptr %i.qm, align 2, !tbaa !77
  br label %pred.store.continue348

pred.store.continue348:                           ; preds = %pred.store.if347, %pred.store.continue346
  %i.qo = extractelement <8 x i1> %i.pq, i64 6
  br i1 %i.qo, label %pred.store.if349, label %pred.store.continue350

pred.store.if349:                                 ; preds = %pred.store.continue348
  %i.qp = getelementptr [2 x i8], ptr %i.hm, i64 %i.pa
  %i.qq = getelementptr i8, ptr %i.qp, i64 12
  %i.qr = extractelement <8 x i16> %wide.load, i64 6
  store i16 %i.qr, ptr %i.qq, align 2, !tbaa !77
  br label %pred.store.continue350

pred.store.continue350:                           ; preds = %pred.store.if349, %pred.store.continue348
  %i.qs = extractelement <8 x i1> %i.pq, i64 7
  br i1 %i.qs, label %pred.store.if351, label %pred.store.continue352

pred.store.if351:                                 ; preds = %pred.store.continue350
  %i.qt = getelementptr [2 x i8], ptr %i.hm, i64 %i.pa
  %i.qu = getelementptr i8, ptr %i.qt, i64 14
  %i.qv = extractelement <8 x i16> %wide.load, i64 7
  store i16 %i.qv, ptr %i.qu, align 2, !tbaa !77
  br label %pred.store.continue352

pred.store.continue352:                           ; preds = %pred.store.if351, %pred.store.continue350
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.qw = icmp eq i64 %index.next, %n.vec
  br i1 %i.qw, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %pred.store.continue352
  %cmp.n = icmp eq i64 %i.iy, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph264.split.us.preheader434

.lr.ph264.split.us.preheader434:                  ; preds = %vector.memcheck, %.lr.ph264.split.us.preheader, %middle.block
  %indvars.iv294.ph = phi i64 [ %i.ix, %vector.memcheck ], [ %i.ix, %.lr.ph264.split.us.preheader ], [ %i.oz, %middle.block ] ; 6 uses
  %xtraiter439 = and i64 %indvars.iv294.ph, 1
  %lcmp.mod440.not = icmp eq i64 %xtraiter439, 0
  br i1 %lcmp.mod440.not, label %.lr.ph264.split.us.prol.loopexit, label %.lr.ph264.split.us.prol

.lr.ph264.split.us.prol:                          ; preds = %.lr.ph264.split.us.preheader434
  %i.qx = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv294.ph
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us.prol = icmp sgt i16 %i.qy, -2
  br i1 %or.cond224.us.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa, label %bb.af

bb.af:                                            ; preds = %.lr.ph264.split.us.prol
  %i.qz = and i16 %i.qy, 15
  switch i16 %i.qz, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa [
    i16 0, label %bb.ai
    i16 1, label %bb.ah
    i16 2, label %bb.ag
    i16 3, label %.sink.split.prol
  ]

bb.ag:                                            ; preds = %bb.af
  br i1 %i.ex, label %.sink.split.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

bb.ah:                                            ; preds = %bb.af
  br i1 %i.ev, label %.sink.split.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

bb.ai:                                            ; preds = %bb.af
  br i1 %i.ew, label %.sink.split.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

.sink.split.prol:                                 ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.ra = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv294.ph
  store i16 %i.qy, ptr %i.ra, align 2, !tbaa !77
  br label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

.lr.ph264.split.us.prol.loopexit.unr-lcssa:       ; preds = %.sink.split.prol, %bb.ai, %bb.ah, %bb.ag, %bb.af, %.lr.ph264.split.us.prol
  %indvars.iv.next295.prol = add nuw nsw i64 %indvars.iv294.ph, 1
  br label %.lr.ph264.split.us.prol.loopexit

.lr.ph264.split.us.prol.loopexit:                 ; preds = %.lr.ph264.split.us.prol.loopexit.unr-lcssa, %.lr.ph264.split.us.preheader434
  %indvars.iv294.unr = phi i64 [ %indvars.iv294.ph, %.lr.ph264.split.us.preheader434 ], [ %indvars.iv.next295.prol, %.lr.ph264.split.us.prol.loopexit.unr-lcssa ]
  %i.rb = add nsw i64 %wide.trip.count297, -1
  %i.rc = icmp eq i64 %indvars.iv294.ph, %i.rb
  br i1 %i.rc, label %.loopexit, label %.lr.ph264.split.us

.lr.ph264.split.us:                               ; preds = %.lr.ph264.split.us.prol.loopexit, %bb.ar
  %indvars.iv294 = phi i64 [ %indvars.iv.next295.1, %bb.ar ], [ %indvars.iv294.unr, %.lr.ph264.split.us.prol.loopexit ] ; 4 uses
  %i.rd = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv294
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us = icmp sgt i16 %i.re, -2
  br i1 %or.cond224.us, label %.lr.ph264.split.us.1, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph264.split.us
  %i.rf = and i16 %i.re, 15
  switch i16 %i.rf, label %.lr.ph264.split.us.1 [
    i16 0, label %bb.am
    i16 1, label %bb.al
    i16 2, label %bb.ak
    i16 3, label %.sink.split
  ]

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ex, label %.sink.split, label %.lr.ph264.split.us.1

bb.al:                                            ; preds = %bb.aj
  br i1 %i.ev, label %.sink.split, label %.lr.ph264.split.us.1

bb.am:                                            ; preds = %bb.aj
  br i1 %i.ew, label %.sink.split, label %.lr.ph264.split.us.1

.sink.split:                                      ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.rg = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv294
  store i16 %i.re, ptr %i.rg, align 2, !tbaa !77
  br label %.lr.ph264.split.us.1

.lr.ph264.split.us.1:                             ; preds = %.sink.split, %bb.am, %bb.al, %bb.ak, %bb.aj, %.lr.ph264.split.us
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.rh = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv.next295
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us.1 = icmp sgt i16 %i.ri, -2
  br i1 %or.cond224.us.1, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %.lr.ph264.split.us.1
  %i.rj = and i16 %i.ri, 15
  switch i16 %i.rj, label %bb.ar [
    i16 0, label %bb.aq
    i16 1, label %bb.ap
    i16 2, label %bb.ao
    i16 3, label %.sink.split.1
  ]

bb.ao:                                            ; preds = %bb.an
  br i1 %i.ex, label %.sink.split.1, label %bb.ar

bb.ap:                                            ; preds = %bb.an
  br i1 %i.ev, label %.sink.split.1, label %bb.ar

bb.aq:                                            ; preds = %bb.an
  br i1 %i.ew, label %.sink.split.1, label %bb.ar

.sink.split.1:                                    ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %i.rk = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv.next295
  store i16 %i.ri, ptr %i.rk, align 2, !tbaa !77
  br label %bb.ar
end_hunk_3
