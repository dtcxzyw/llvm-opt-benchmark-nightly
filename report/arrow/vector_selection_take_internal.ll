inline.NumInlined: 4651
inline.NumDeleted: 1750
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 114
begin_hunk_0_@_ZN5arrow7compute8internal14GetTakeIndicesERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE:bb.a
bb.bv:                                            ; preds = %bb.bs
  %i.oa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #24, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #24, !noalias !70
  br label %bb.el

_ZN5arrow6StatusD2Ev.exit196.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit190.i.i, %_ZN5arrow6StatusD2Ev.exit190.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #24, !noalias !70
  %i.ob = icmp eq i16 %.sroa.0280.0.extract.trunc.i.i, %.sroa.9.0.extract.trunc.i.i
  br i1 %i.ob, label %.preheader324.i.i, label %bb.bw

.preheader324.i.i:                                ; preds = %_ZN5arrow6StatusD2Ev.exit196.i.i
  %i.oc = sext i16 %.sroa.0280.0.extract.trunc.i.i to i64 ; 2 uses
  %i.od = icmp sgt i16 %.sroa.0280.0.extract.trunc.i.i, 0
  br i1 %i.od, label %.lr.ph336.preheader.i.i, label %._crit_edge.i.i

.lr.ph336.preheader.i.i:                          ; preds = %.preheader324.i.i
  %.pre.i.i = load i64, ptr %i.kx, align 8, !tbaa !131, !noalias !70 ; 2 uses
  %i.oe = icmp eq i16 %.sroa.0280.0.extract.trunc.i.i, 1
  br i1 %i.oe, label %.lr.ph336.i.i.epil.preheader, label %.lr.ph336.preheader.i.i.new

.lr.ph336.preheader.i.i.new:                      ; preds = %.lr.ph336.preheader.i.i
  %unroll_iter310 = and i64 %i.oc, 32766
  br label %.lr.ph336.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph336.i.i
  %i.of = and i16 %.sroa.0280.0.extract.trunc.i.i, 1
  %lcmp.mod307.not = icmp eq i16 %i.of, 0
  br i1 %lcmp.mod307.not, label %._crit_edge.i.i, label %.lr.ph336.i.i.epil.preheader

.lr.ph336.i.i.epil.preheader:                     ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph336.preheader.i.i
  %.epil.init306 = phi i64 [ %.pre.i.i, %.lr.ph336.preheader.i.i ], [ %i.ow, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.187334.i.i.epil.init = phi i16 [ %.086343.i.i, %.lr.ph336.preheader.i.i ], [ %i.os, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod309 = trunc i32 %.sroa.0.0.insert.insert.i267.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod309)
  %i.og = add i16 %.187334.i.i.epil.init, 1
  %i.oh = load ptr, ptr %i.kn, align 8, !tbaa !88, !noalias !70
  %i.oi = getelementptr inbounds i8, ptr %i.oh, i64 %.epil.init306
  store i16 %.187334.i.i.epil.init, ptr %i.oi, align 1, !noalias !70
  %i.oj = load i64, ptr %i.kx, align 8, !tbaa !131, !noalias !70
  %i.ok = add nsw i64 %i.oj, 2
  store i64 %i.ok, ptr %i.kx, align 8, !tbaa !131, !noalias !70
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph336.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %.preheader324.i.i
  %.187.lcssa.i.i = phi i16 [ %.086343.i.i, %.preheader324.i.i ], [ %i.os, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.og, %.lr.ph336.i.i.epil.preheader ]
  %i.ol = add nsw i64 %.082344.i.i, %i.oc
  br label %.loopexit326.i.i

.lr.ph336.i.i:                                    ; preds = %.lr.ph336.i.i, %.lr.ph336.preheader.i.i.new
  %i.om = phi i64 [ %.pre.i.i, %.lr.ph336.preheader.i.i.new ], [ %i.ow, %.lr.ph336.i.i ]
  %.187334.i.i = phi i16 [ %.086343.i.i, %.lr.ph336.preheader.i.i.new ], [ %i.os, %.lr.ph336.i.i ] ; 3 uses
  %niter311 = phi i64 [ 0, %.lr.ph336.preheader.i.i.new ], [ %niter311.next.1, %.lr.ph336.i.i ]
  %i.on = add i16 %.187334.i.i, 1
  %i.oo = load ptr, ptr %i.kn, align 8, !tbaa !88, !noalias !70
  %i.op = getelementptr inbounds i8, ptr %i.oo, i64 %i.om
  store i16 %.187334.i.i, ptr %i.op, align 1, !noalias !70
  %i.oq = load i64, ptr %i.kx, align 8, !tbaa !131, !noalias !70
  %i.or = add nsw i64 %i.oq, 2                    ; 2 uses
  store i64 %i.or, ptr %i.kx, align 8, !tbaa !131, !noalias !70
  %i.os = add i16 %.187334.i.i, 2                 ; 3 uses
  %i.ot = load ptr, ptr %i.kn, align 8, !tbaa !88, !noalias !70
  %i.ou = getelementptr inbounds i8, ptr %i.ot, i64 %i.or
  store i16 %i.on, ptr %i.ou, align 1, !noalias !70
  %i.ov = load i64, ptr %i.kx, align 8, !tbaa !131, !noalias !70
  %i.ow = add nsw i64 %i.ov, 2                    ; 3 uses
  store i64 %i.ow, ptr %i.kx, align 8, !tbaa !131, !noalias !70
  %niter311.next.1 = add i64 %niter311, 2         ; 2 uses
  %niter311.ncmp.1 = icmp eq i64 %niter311.next.1, %unroll_iter310
  br i1 %niter311.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph336.i.i, !llvm.loop !148

bb.bw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit196.i.i
  %i.ox = icmp eq i32 %.sroa.9.0.extract.shift.i.i, 0
  br i1 %i.ox, label %bb.ca, label %.preheader325.i.i

.preheader325.i.i:                                ; preds = %bb.bw
  %i.oy = sext i16 %.sroa.0280.0.extract.trunc.i.i to i64 ; 2 uses
  %i.oz = icmp sgt i16 %.sroa.0280.0.extract.trunc.i.i, 0
  br i1 %i.oz, label %.lr.ph.i.i, label %.loopexit326.i.i

.lr.ph.i.i:                                       ; preds = %.preheader325.i.i, %bb.bz
  %.080332.i.i = phi i64 [ %i.ps, %bb.bz ], [ 0, %.preheader325.i.i ]
  %.183331.i.i = phi i64 [ %i.pr, %bb.bz ], [ %.082344.i.i, %.preheader325.i.i ] ; 3 uses
  %.288330.i.i = phi i16 [ %i.pq, %bb.bz ], [ %.086343.i.i, %.preheader325.i.i ] ; 2 uses
  %i.pa = lshr i64 %.183331.i.i, 3                ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !98, !noalias !70
  %i.pd = trunc i64 %.183331.i.i to i8
  %i.pe = and i8 %i.pd, 7                         ; 2 uses
  %i.pf = lshr i8 %i.pc, %i.pe
  %i.pg = trunc i8 %i.pf to i1
  br i1 %i.pg, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %.lr.ph.i.i
  %i.ph = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.pa
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !98, !noalias !70
  %i.pj = lshr i8 %i.pi, %i.pe
  %i.pk = trunc i8 %i.pj to i1
  br i1 %i.pk, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.pl = load ptr, ptr %i.kn, align 8, !tbaa !88, !noalias !70
  %i.pm = load i64, ptr %i.kx, align 8, !tbaa !131, !noalias !70
  %i.pn = getelementptr inbounds i8, ptr %i.pl, i64 %i.pm
  store i16 %.288330.i.i, ptr %i.pn, align 1, !noalias !70
  %i.po = load i64, ptr %i.kx, align 8, !tbaa !131, !noalias !70
  %i.pp = add nsw i64 %i.po, 2
  store i64 %i.pp, ptr %i.kx, align 8, !tbaa !131, !noalias !70
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %.lr.ph.i.i
  %i.pq = add i16 %.288330.i.i, 1                 ; 2 uses
  %i.pr = add nsw i64 %.183331.i.i, 1
  %i.ps = add nuw nsw i64 %.080332.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ps, %i.oy
  br i1 %exitcond.not.i.i, label %.loopexit326.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !149

bb.ca:                                            ; preds = %bb.bw
  %i.pt = add i16 %.086343.i.i, %.sroa.0280.0.extract.trunc.i.i
  %i.pu = sext i16 %.sroa.0280.0.extract.trunc.i.i to i64
  %i.pv = add nsw i64 %.082344.i.i, %i.pu
  br label %.loopexit326.i.i

.loopexit326.loopexit.i.i:                        ; preds = %bb.bz
  %i.pw = add i64 %.082344.i.i, %i.oy
  br label %.loopexit326.i.i

.loopexit326.i.i:                                 ; preds = %.loopexit326.loopexit.i.i, %bb.ca, %.preheader325.i.i, %._crit_edge.i.i
  %.490.i.i = phi i16 [ %i.pt, %bb.ca ], [ %.187.lcssa.i.i, %._crit_edge.i.i ], [ %.086343.i.i, %.preheader325.i.i ], [ %i.pq, %.loopexit326.loopexit.i.i ] ; 2 uses
  %.385.i.i = phi i64 [ %i.pv, %bb.ca ], [ %i.ol, %._crit_edge.i.i ], [ %.082344.i.i, %.preheader325.i.i ], [ %i.pw, %.loopexit326.loopexit.i.i ]
  %i.px = zext i16 %.490.i.i to i64
  %i.py = load i64, ptr %i.e, align 8, !tbaa !62, !noalias !70
  %.not.i.i = icmp sgt i64 %i.py, %i.px
  br i1 %.not.i.i, label %bb.bk, label %.critedge153.i.i, !llvm.loop !150

bb.cb:                                            ; preds = %bb.bu, %bb.bt, %.critedge151.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #24, !noalias !70
  br label %bb.ee

bb.cc:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #24, !noalias !70
  %i.pz = icmp eq ptr %i.i, null
  br i1 %i.pz, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #24, !noalias !151
  %i.qa = shl i64 %i.f, 1                         ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %91, i64 40 ; 7 uses
  %.not.i.i.i.i197.i.i = icmp sgt i64 %i.qa, 0
  br i1 %.not.i.i.i.i197.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.thread.i.i.i.i:         ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #24, !noalias !151
  br label %_ZN5arrow6StatusD2Ev.exit13.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i:                ; preds = %bb.cd
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %82, ptr noundef nonnull align 8 dereferenceable(56) %91, i64 noundef %i.qa, i1 noundef zeroext false)
          to label %.noexc198.i.i unwind label %.loopexit.split-lp.i.i, !noalias !70

.noexc198.i.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %82, align 8, !tbaa !113, !noalias !151 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #24, !noalias !151
  %i.qc = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %i.qc, label %_ZN5arrow6StatusD2Ev.exit13.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit204.thread423.i.i, !prof !156

_ZN5arrow6StatusD2Ev.exit13.i.i.i.i:              ; preds = %.noexc198.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i.i
  %i.qd = icmp sgt i64 %i.f, 0
  br i1 %i.qd, label %.lr.ph.i.preheader.i.i.i, label %_ZN5arrow6StatusD2Ev.exit210.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZN5arrow6StatusD2Ev.exit13.i.i.i.i
  %.pre9.i.i.i = load i64, ptr %i.qb, align 8, !tbaa !131, !noalias !151 ; 2 uses
  %xtraiter291 = and i64 %i.f, 1
  %i.qe = icmp eq i64 %i.f, 1
  br i1 %i.qe, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.preheader.i.i.i.new

.lr.ph.i.preheader.i.i.i.new:                     ; preds = %.lr.ph.i.preheader.i.i.i
  %unroll_iter296 = and i64 %i.f, 9223372036854775806
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i.new
  %i.qf = phi i64 [ %.pre9.i.i.i, %.lr.ph.i.preheader.i.i.i.new ], [ %i.qq, %.lr.ph.i.i.i.i ]
  %.015.i.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %i.qr, %.lr.ph.i.i.i.i ] ; 3 uses
  %niter297 = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %niter297.next.1, %.lr.ph.i.i.i.i ]
  %i.qg = trunc i64 %.015.i.i.i.i to i16
  %i.qh = load ptr, ptr %i.kn, align 8, !tbaa !88, !noalias !151
  %i.qi = getelementptr inbounds i8, ptr %i.qh, i64 %i.qf
  store i16 %i.qg, ptr %i.qi, align 1, !noalias !151
  %i.qj = load i64, ptr %i.qb, align 8, !tbaa !131, !noalias !151
  %i.qk = add nsw i64 %i.qj, 2                    ; 2 uses
  store i64 %i.qk, ptr %i.qb, align 8, !tbaa !131, !noalias !151
  %i.ql = trunc i64 %.015.i.i.i.i to i16
  %i.qm = or disjoint i16 %i.ql, 1
  %i.qn = load ptr, ptr %i.kn, align 8, !tbaa !88, !noalias !151
  %i.qo = getelementptr inbounds i8, ptr %i.qn, i64 %i.qk
  store i16 %i.qm, ptr %i.qo, align 1, !noalias !151
  %i.qp = load i64, ptr %i.qb, align 8, !tbaa !131, !noalias !151
  %i.qq = add nsw i64 %i.qp, 2                    ; 3 uses
  store i64 %i.qq, ptr %i.qb, align 8, !tbaa !131, !noalias !151
  %i.qr = add nuw nsw i64 %.015.i.i.i.i, 2        ; 2 uses
  %niter297.next.1 = add nuw nsw i64 %niter297, 2 ; 2 uses
  %niter297.ncmp.1 = icmp eq i64 %niter297.next.1, %unroll_iter296
  br i1 %niter297.ncmp.1, label %_ZN5arrow6StatusD2Ev.exit210.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !157

bb.ce:                                            ; preds = %bb.cc
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !99, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #24, !noalias !158
  invoke void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %83, ptr noundef nonnull %i.i, i64 noundef %i.qt, i64 noundef %i.f)
          to label %.noexc199.i.i unwind label %.loopexit.split-lp.i.i, !noalias !70

.noexc199.i.i:                                    ; preds = %bb.ce
  %i.qu = invoke { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %83)
          to label %.noexc200.i.i unwind label %.loopexit.split-lp.i.i, !noalias !70 ; 2 uses

.noexc200.i.i:                                    ; preds = %.noexc199.i.i
  %i.qv = extractvalue { i64, i64 } %i.qu, 1      ; 2 uses
  %i.qw = icmp eq i64 %i.qv, 0
  br i1 %i.qw, label %_ZN5arrow6StatusD2Ev.exit204.thread425.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc200.i.i
  %i.qx = getelementptr inbounds nuw i8, ptr %91, i64 40 ; 8 uses
  br label %bb.cf

bb.cf:                                            ; preds = %.noexc202.i.i, %.lr.ph.i.i.i
  %i.qy = phi i64 [ %i.qv, %.lr.ph.i.i.i ], [ %i.sf, %.noexc202.i.i ] ; 6 uses
  %i.qz = phi { i64, i64 } [ %i.qu, %.lr.ph.i.i.i ], [ %i.se, %.noexc202.i.i ]
  %i.ra = extractvalue { i64, i64 } %i.qz, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #24, !noalias !159
  %i.rb = shl i64 %i.qy, 1
  %i.rc = load i64, ptr %i.qx, align 8, !tbaa !131, !noalias !162
  %i.rd = add nsw i64 %i.rc, %i.rb                ; 2 uses
  %i.re = load i64, ptr %i.ko, align 8, !tbaa !147, !noalias !162 ; 2 uses
  %.not.i.i.i15.i.i.i = icmp sgt i64 %i.rd, %i.re
  br i1 %.not.i.i.i15.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i22.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i16.i.i.i

_ZN5arrow6StatusD2Ev.exit.thread.i16.i.i.i:       ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #24, !noalias !159
  br label %_ZN5arrow6StatusD2Ev.exit13.i17.i.i.i

_ZN5arrow6StatusD2Ev.exit.i22.i.i.i:              ; preds = %bb.cf
  %i.rf = shl nsw i64 %i.re, 1
  %.sroa.speculated.i.i.i.i23.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.rd, i64 %i.rf)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %81, ptr noundef nonnull align 8 dereferenceable(56) %91, i64 noundef %.sroa.speculated.i.i.i.i23.i.i.i, i1 noundef zeroext false)
          to label %.noexc201.i.i unwind label %.loopexit327.i.i, !noalias !70

.noexc201.i.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i22.i.i.i
  %.pr.i24.i.i.i = load ptr, ptr %81, align 8, !tbaa !113, !noalias !159 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #24, !noalias !159
  %i.rg = icmp eq ptr %.pr.i24.i.i.i, null
  br i1 %i.rg, label %_ZN5arrow6StatusD2Ev.exit13.i17.i.i.i, label %_ZN5arrow6StatusD2Ev.exit204.i.i, !prof !156

_ZN5arrow6StatusD2Ev.exit13.i17.i.i.i:            ; preds = %.noexc201.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i16.i.i.i
  %i.rh = icmp sgt i64 %i.qy, 0
  br i1 %i.rh, label %.lr.ph.i19.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph.i19.preheader.i.i.i:                       ; preds = %_ZN5arrow6StatusD2Ev.exit13.i17.i.i.i
  %.pre.i.i.i = load i64, ptr %i.qx, align 8, !tbaa !131, !noalias !159 ; 2 uses
  %xtraiter287 = and i64 %i.qy, 1
  %i.ri = icmp eq i64 %i.qy, 1
  br i1 %i.ri, label %.lr.ph.i19.i.i.i.epil.preheader, label %.lr.ph.i19.preheader.i.i.i.new

.lr.ph.i19.preheader.i.i.i.new:                   ; preds = %.lr.ph.i19.preheader.i.i.i
  %unroll_iter = and i64 %i.qy, 9223372036854775806
  br label %.lr.ph.i19.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %.lr.ph.i19.i.i.i, %.lr.ph.i19.preheader.i.i.i.new
  %i.rj = phi i64 [ %.pre.i.i.i, %.lr.ph.i19.preheader.i.i.i.new ], [ %i.rw, %.lr.ph.i19.i.i.i ]
  %.015.i20.i.i.i = phi i64 [ 0, %.lr.ph.i19.preheader.i.i.i.new ], [ %i.rx, %.lr.ph.i19.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i19.preheader.i.i.i.new ], [ %niter.next.1, %.lr.ph.i19.i.i.i ]
  %i.rk = add nsw i64 %.015.i20.i.i.i, %i.ra
  %i.rl = trunc i64 %i.rk to i16
  %i.rm = load ptr, ptr %i.kn, align 8, !tbaa !88, !noalias !159
  %i.rn = getelementptr inbounds i8, ptr %i.rm, i64 %i.rj
  store i16 %i.rl, ptr %i.rn, align 1, !noalias !159
  %i.ro = load i64, ptr %i.qx, align 8, !tbaa !131, !noalias !159
  %i.rp = add nsw i64 %i.ro, 2                    ; 2 uses
  store i64 %i.rp, ptr %i.qx, align 8, !tbaa !131, !noalias !159
  %i.rq = or disjoint i64 %.015.i20.i.i.i, 1
  %i.rr = add nsw i64 %i.rq, %i.ra
  %i.rs = trunc i64 %i.rr to i16
  %i.rt = load ptr, ptr %i.kn, align 8, !tbaa !88, !noalias !159
  %i.ru = getelementptr inbounds i8, ptr %i.rt, i64 %i.rp
  store i16 %i.rs, ptr %i.ru, align 1, !noalias !159
  %i.rv = load i64, ptr %i.qx, align 8, !tbaa !131, !noalias !159
  %i.rw = add nsw i64 %i.rv, 2                    ; 3 uses
  store i64 %i.rw, ptr %i.qx, align 8, !tbaa !131, !noalias !159
  %i.rx = add nuw nsw i64 %.015.i20.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i.i, !llvm.loop !157

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i19.i.i.i
  %lcmp.mod289.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod289.not, label %.loopexit.i.i.i, label %.lr.ph.i19.i.i.i.epil.preheader

.lr.ph.i19.i.i.i.epil.preheader:                  ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.preheader.i.i.i
  %.epil.init = phi i64 [ %.pre.i.i.i, %.lr.ph.i19.preheader.i.i.i ], [ %i.rw, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.015.i20.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i19.preheader.i.i.i ], [ %i.rx, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod290 = trunc i64 %i.qy to i1
  call void @llvm.assume(i1 %lcmp.mod290)
  %i.ry = add nsw i64 %.015.i20.i.i.i.epil.init, %i.ra
  %i.rz = trunc i64 %i.ry to i16
  %i.sa = load ptr, ptr %i.kn, align 8, !tbaa !88, !noalias !159
  %i.sb = getelementptr inbounds i8, ptr %i.sa, i64 %.epil.init
  store i16 %i.rz, ptr %i.sb, align 1, !noalias !159
  %i.sc = load i64, ptr %i.qx, align 8, !tbaa !131, !noalias !159
  %i.sd = add nsw i64 %i.sc, 2
  store i64 %i.sd, ptr %i.qx, align 8, !tbaa !131, !noalias !159
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i19.i.i.i.epil.preheader, %.loopexit.i.i.i.loopexit.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit13.i17.i.i.i
  %i.se = invoke { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %83)
          to label %.noexc202.i.i unwind label %.loopexit327.i.i, !noalias !70 ; 2 uses

.noexc202.i.i:                                    ; preds = %.loopexit.i.i.i
  %i.sf = extractvalue { i64, i64 } %i.se, 1      ; 2 uses
  %i.sg = icmp eq i64 %i.sf, 0
  br i1 %i.sg, label %_ZN5arrow6StatusD2Ev.exit204.thread425.i.i, label %bb.cf

_ZN5arrow6StatusD2Ev.exit204.thread425.i.i:       ; preds = %.noexc202.i.i, %.noexc200.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #24, !noalias !158
  br label %_ZN5arrow6StatusD2Ev.exit210.i.i

_ZN5arrow6StatusD2Ev.exit204.i.i:                 ; preds = %.noexc201.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #24, !noalias !158
  br label %_ZN5arrow6StatusD2Ev.exit204.thread423.i.i

_ZN5arrow6StatusD2Ev.exit204.thread423.i.i:       ; preds = %_ZN5arrow6StatusD2Ev.exit204.i.i, %.noexc198.i.i
  %.pr.i24.i.lcssa.sink.i.i = phi ptr [ %.pr.i24.i.i.i, %_ZN5arrow6StatusD2Ev.exit204.i.i ], [ %.pr.i.i.i.i, %.noexc198.i.i ]
  store ptr %.pr.i24.i.lcssa.sink.i.i, ptr %94, align 8, !tbaa !113, !noalias !70
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %94) #24
  %i.sh = load ptr, ptr %94, align 8, !tbaa !113, !noalias !70 ; 2 uses
  %.not.i205.i.i = icmp eq ptr %i.sh, null
  br i1 %.not.i205.i.i, label %_ZN5arrow6StatusD2Ev.exit206.i.i, label %bb.cg, !prof !117

bb.cg:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit204.thread423.i.i
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 1
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !118, !range !127, !noundef !128
  %i.sk = trunc nuw i8 %i.sj to i1
  br i1 %i.sk, label %_ZN5arrow6StatusD2Ev.exit206.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %94) #24
  br label %_ZN5arrow6StatusD2Ev.exit206.i.i

_ZN5arrow6StatusD2Ev.exit206.i.i:                 ; preds = %bb.ch, %bb.cg, %_ZN5arrow6StatusD2Ev.exit204.thread423.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #24, !noalias !70
  br label %bb.ee

.loopexit327.i.i:                                 ; preds = %.loopexit.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i22.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.loopexit.split-lp.i.i:                           ; preds = %.noexc199.i.i, %bb.ce, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ci:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit327.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit327.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #24, !noalias !70
  br label %bb.el

_ZN5arrow6StatusD2Ev.exit210.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod294.not = icmp eq i64 %xtraiter291, 0
  br i1 %lcmp.mod294.not, label %_ZN5arrow6StatusD2Ev.exit210.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN5arrow6StatusD2Ev.exit210.i.i.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i.i
  %.epil.init293 = phi i64 [ %.pre9.i.i.i, %.lr.ph.i.preheader.i.i.i ], [ %i.qq, %_ZN5arrow6StatusD2Ev.exit210.i.i.loopexit.unr-lcssa ]
  %.015.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i ], [ %i.qr, %_ZN5arrow6StatusD2Ev.exit210.i.i.loopexit.unr-lcssa ]
  %lcmp.mod295 = trunc i64 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod295)
  %i.sl = trunc i64 %.015.i.i.i.i.epil.init to i16
  %i.sm = load ptr, ptr %i.kn, align 8, !tbaa !88, !noalias !151
  %i.sn = getelementptr inbounds i8, ptr %i.sm, i64 %.epil.init293
  store i16 %i.sl, ptr %i.sn, align 1, !noalias !151
  %i.so = load i64, ptr %i.qb, align 8, !tbaa !131, !noalias !151
  %i.sp = add nsw i64 %i.so, 2
  store i64 %i.sp, ptr %i.qb, align 8, !tbaa !131, !noalias !151
  br label %_ZN5arrow6StatusD2Ev.exit210.i.i

_ZN5arrow6StatusD2Ev.exit210.i.i:                 ; preds = %.lr.ph.i.i.i.i.epil.preheader, %_ZN5arrow6StatusD2Ev.exit210.i.i.loopexit.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit204.thread425.i.i, %_ZN5arrow6StatusD2Ev.exit13.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #24, !noalias !70
  br label %.critedge153.i.i

.critedge153.i.i:                                 ; preds = %.loopexit326.i.i, %_ZN5arrow6StatusD2Ev.exit210.i.i, %bb.bj
  %i.sq = getelementptr inbounds nuw i8, ptr %91, i64 40
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !131, !noalias !70
  %i.ss = lshr i64 %i.sr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #24, !noalias !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %95, i8 0, i64 16, i1 false), !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #24, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #24, !noalias !70
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %97, ptr noundef nonnull align 8 dereferenceable(56) %91, ptr noundef nonnull %95, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit213.i.i unwind label %bb.cm, !noalias !70

_ZN5arrow6StatusD2Ev.exit213.i.i:                 ; preds = %.critedge153.i.i
  %i.st = load ptr, ptr %97, align 8, !tbaa !113, !noalias !70 ; 2 uses
  store ptr %i.st, ptr %96, align 8, !tbaa !113, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #24, !noalias !70
  %i.su = icmp eq ptr %i.st, null
  br i1 %i.su, label %_ZN5arrow6StatusD2Ev.exit219.i.i, label %bb.cj, !prof !117

bb.cj:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit213.i.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %96) #24
  %i.sv = load ptr, ptr %96, align 8, !tbaa !113, !noalias !70 ; 2 uses
  %.not.i214.i.i = icmp eq ptr %i.sv, null
  br i1 %.not.i214.i.i, label %_ZN5arrow6StatusD2Ev.exit215.i.i, label %bb.ck, !prof !117

bb.ck:                                            ; preds = %bb.cj
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 1
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !118, !range !127, !noundef !128
  %i.sy = trunc nuw i8 %i.sx to i1
  br i1 %i.sy, label %_ZN5arrow6StatusD2Ev.exit215.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %96) #24
  br label %_ZN5arrow6StatusD2Ev.exit215.i.i

_ZN5arrow6StatusD2Ev.exit215.i.i:                 ; preds = %bb.cl, %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #24, !noalias !70
  br label %bb.dw

bb.cm:                                            ; preds = %.critedge153.i.i
  %i.sz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #24, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #24, !noalias !70
  br label %bb.ed

_ZN5arrow6StatusD2Ev.exit219.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit213.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #24, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #24, !noalias !70
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.ta = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint16Ev()
          to label %.noexc222.i.i unwind label %bb.dr, !noalias !70 ; 2 uses

.noexc222.i.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit219.i.i
  %i.tb = getelementptr inbounds nuw i8, ptr %98, i64 8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !95, !noalias !170 ; 2 uses
  %i.te = load <2 x ptr>, ptr %i.ta, align 8, !tbaa !97, !noalias !170
  store <2 x ptr> %i.te, ptr %98, align 16, !tbaa !97, !alias.scope !167, !noalias !70
  %.not.i.i.i.i220.i.i = icmp eq ptr %i.td, null
  br i1 %.not.i.i.i.i220.i.i, label %_ZN5arrow10TypeTraitsINS_10UInt16TypeEE14type_singletonEv.exit.i.i, label %bb.cn

bb.cn:                                            ; preds = %.noexc222.i.i
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 8 ; 3 uses
  %i.tg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !170
  %.not.i.i.i.i.i221.i.i = icmp eq i8 %i.tg, 0
  br i1 %.not.i.i.i.i.i221.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.th = load i32, ptr %i.tf, align 4, !tbaa !3, !noalias !170
  %i.ti = add nsw i32 %i.th, 1
  store i32 %i.ti, ptr %i.tf, align 4, !tbaa !3, !noalias !170
  br label %_ZN5arrow10TypeTraitsINS_10UInt16TypeEE14type_singletonEv.exit.i.i

bb.cp:                                            ; preds = %bb.cn
  %i.tj = atomicrmw volatile add ptr %i.tf, i32 1 acq_rel, align 4, !noalias !170 ; 0 uses
  br label %_ZN5arrow10TypeTraitsINS_10UInt16TypeEE14type_singletonEv.exit.i.i

_ZN5arrow10TypeTraitsINS_10UInt16TypeEE14type_singletonEv.exit.i.i: ; preds = %bb.cp, %bb.co, %.noexc222.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #24, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #24, !noalias !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %100, i8 0, i64 16, i1 false), !noalias !70
  %i.tk = getelementptr inbounds nuw i8, ptr %100, i64 16 ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %100, i64 24 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %95, i64 8
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !95, !noalias !70 ; 2 uses
  %i.to = load <2 x ptr>, ptr %95, align 16, !tbaa !97, !noalias !70
  store <2 x ptr> %i.to, ptr %i.tk, align 16, !tbaa !97, !noalias !70
  %.not.i.i.i223.i.i = icmp eq ptr %i.tn, null
  br i1 %.not.i.i.i223.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i.i, label %bb.cq

bb.cq:                                            ; preds = %_ZN5arrow10TypeTraitsINS_10UInt16TypeEE14type_singletonEv.exit.i.i
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 8 ; 3 uses
  %i.tq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !70
  %.not.i.i.i.i224.i.i = icmp eq i8 %i.tq, 0
  br i1 %.not.i.i.i.i224.i.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.tr = load i32, ptr %i.tp, align 4, !tbaa !3, !noalias !70
  %i.ts = add nsw i32 %i.tr, 1
  store i32 %i.ts, ptr %i.tp, align 4, !tbaa !3, !noalias !70
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i.i

end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal14GetTakeIndicesERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE:bb.a
  br i1 %i.aob, label %bb.hk, label %.preheader325.i128.i

.preheader325.i128.i:                             ; preds = %bb.hg
  %i.aoc = sext i16 %.sroa.0280.0.extract.trunc.i122.i to i64 ; 2 uses
  %i.aod = icmp sgt i16 %.sroa.0280.0.extract.trunc.i122.i, 0
  br i1 %i.aod, label %.lr.ph.i133.i, label %.loopexit326.i129.i

.lr.ph.i133.i:                                    ; preds = %.preheader325.i128.i, %bb.hj
  %.080332.i134.i = phi i64 [ %i.aow, %bb.hj ], [ 0, %.preheader325.i128.i ]
  %.183331.i135.i = phi i64 [ %i.aov, %bb.hj ], [ %.082344.i105.i, %.preheader325.i128.i ] ; 3 uses
  %.288330.i136.i = phi i32 [ %i.aou, %bb.hj ], [ %.086343.i106.i, %.preheader325.i128.i ] ; 2 uses
  %i.aoe = lshr i64 %.183331.i135.i, 3            ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.aoe
  %i.aog = load i8, ptr %i.aof, align 1, !tbaa !98, !noalias !205
  %i.aoh = trunc i64 %.183331.i135.i to i8
  %i.aoi = and i8 %i.aoh, 7                       ; 2 uses
  %i.aoj = lshr i8 %i.aog, %i.aoi
  %i.aok = trunc i8 %i.aoj to i1
  br i1 %i.aok, label %bb.hh, label %bb.hj

bb.hh:                                            ; preds = %.lr.ph.i133.i
  %i.aol = getelementptr inbounds nuw i8, ptr %i.yl, i64 %i.aoe
  %i.aom = load i8, ptr %i.aol, align 1, !tbaa !98, !noalias !205
  %i.aon = lshr i8 %i.aom, %i.aoi
  %i.aoo = trunc i8 %i.aon to i1
  br i1 %i.aoo, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.aop = load ptr, ptr %i.ajr, align 8, !tbaa !88, !noalias !205
  %i.aoq = load i64, ptr %i.akb, align 8, !tbaa !131, !noalias !205
  %i.aor = getelementptr inbounds i8, ptr %i.aop, i64 %i.aoq
  store i32 %.288330.i136.i, ptr %i.aor, align 1, !noalias !205
  %i.aos = load i64, ptr %i.akb, align 8, !tbaa !131, !noalias !205
  %i.aot = add nsw i64 %i.aos, 4
  store i64 %i.aot, ptr %i.akb, align 8, !tbaa !131, !noalias !205
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh, %.lr.ph.i133.i
  %i.aou = add i32 %.288330.i136.i, 1             ; 2 uses
  %i.aov = add nsw i64 %.183331.i135.i, 1
  %i.aow = add nuw nsw i64 %.080332.i134.i, 1     ; 2 uses
  %exitcond.not.i137.i = icmp eq i64 %i.aow, %i.aoc
  br i1 %exitcond.not.i137.i, label %.loopexit326.loopexit.i138.i, label %.lr.ph.i133.i, !llvm.loop !226

bb.hk:                                            ; preds = %bb.hg
  %sext.i.i = shl nuw i32 %.sroa.0.0.insert.insert.i267.i121.i, 16
  %i.aox = ashr exact i32 %sext.i.i, 16
  %i.aoy = add i32 %i.aox, %.086343.i106.i
  %i.aoz = sext i16 %.sroa.0280.0.extract.trunc.i122.i to i64
  %i.apa = add nsw i64 %.082344.i105.i, %i.aoz
  br label %.loopexit326.i129.i

.loopexit326.loopexit.i138.i:                     ; preds = %bb.hj
  %i.apb = add i64 %.082344.i105.i, %i.aoc
  br label %.loopexit326.i129.i

.loopexit326.i129.i:                              ; preds = %.loopexit326.loopexit.i138.i, %bb.hk, %.preheader325.i128.i, %._crit_edge.i140.i
  %.490.i130.i = phi i32 [ %i.aoy, %bb.hk ], [ %.187.lcssa.i141.i, %._crit_edge.i140.i ], [ %.086343.i106.i, %.preheader325.i128.i ], [ %i.aou, %.loopexit326.loopexit.i138.i ] ; 2 uses
  %.385.i131.i = phi i64 [ %i.apa, %bb.hk ], [ %i.anp, %._crit_edge.i140.i ], [ %.082344.i105.i, %.preheader325.i128.i ], [ %i.apb, %.loopexit326.loopexit.i138.i ]
  %i.apc = zext i32 %.490.i130.i to i64
  %i.apd = load i64, ptr %i.e, align 8, !tbaa !62, !noalias !205
  %.not.i132.i = icmp sgt i64 %i.apd, %i.apc
  br i1 %.not.i132.i, label %bb.gu, label %.critedge153.i28.i, !llvm.loop !227

bb.hl:                                            ; preds = %bb.he, %bb.hd, %.critedge151.i151.i
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #24, !noalias !205
  br label %bb.jn

bb.hm:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #24, !noalias !205
  %i.ape = icmp eq ptr %i.yl, null
  br i1 %i.ape, label %_ZN5arrow6StatusD2Ev.exit.i.i.i96.i, label %bb.hn

_ZN5arrow6StatusD2Ev.exit.i.i.i96.i:              ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #24, !noalias !228
  %i.apf = shl nuw nsw i64 %i.f, 2
  %i.apg = getelementptr inbounds nuw i8, ptr %71, i64 40 ; 7 uses
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %62, ptr noundef nonnull align 8 dereferenceable(56) %71, i64 noundef %i.apf, i1 noundef zeroext false)
          to label %.noexc198.i97.i unwind label %.loopexit.split-lp.i10.i, !noalias !205

.noexc198.i97.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i96.i
  %.pr.i.i.i98.i = load ptr, ptr %62, align 8, !tbaa !113, !noalias !228 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24, !noalias !228
  %i.aph = icmp eq ptr %.pr.i.i.i98.i, null
  br i1 %i.aph, label %.lr.ph.i.preheader.i.i91.i, label %_ZN5arrow6StatusD2Ev.exit204.thread423.i84.i, !prof !156

.lr.ph.i.preheader.i.i91.i:                       ; preds = %.noexc198.i97.i
  %xtraiter325 = and i64 %i.f, 1
  %.pre9.i.i92.i = load i64, ptr %i.apg, align 8, !tbaa !131, !noalias !228
  %unroll_iter330 = and i64 %i.f, 4294967294
  br label %.lr.ph.i.i.i93.i

.lr.ph.i.i.i93.i:                                 ; preds = %.lr.ph.i.i.i93.i, %.lr.ph.i.preheader.i.i91.i
  %i.api = phi i64 [ %.pre9.i.i92.i, %.lr.ph.i.preheader.i.i91.i ], [ %i.apt, %.lr.ph.i.i.i93.i ]
  %.015.i.i.i94.i = phi i64 [ 0, %.lr.ph.i.preheader.i.i91.i ], [ %i.apu, %.lr.ph.i.i.i93.i ] ; 3 uses
  %niter331 = phi i64 [ 0, %.lr.ph.i.preheader.i.i91.i ], [ %niter331.next.1, %.lr.ph.i.i.i93.i ]
  %i.apj = trunc i64 %.015.i.i.i94.i to i32
  %i.apk = load ptr, ptr %i.ajr, align 8, !tbaa !88, !noalias !228
  %i.apl = getelementptr inbounds i8, ptr %i.apk, i64 %i.api
  store i32 %i.apj, ptr %i.apl, align 1, !noalias !228
  %i.apm = load i64, ptr %i.apg, align 8, !tbaa !131, !noalias !228
  %i.apn = add nsw i64 %i.apm, 4                  ; 2 uses
  store i64 %i.apn, ptr %i.apg, align 8, !tbaa !131, !noalias !228
  %i.apo = trunc i64 %.015.i.i.i94.i to i32
  %i.app = or disjoint i32 %i.apo, 1
  %i.apq = load ptr, ptr %i.ajr, align 8, !tbaa !88, !noalias !228
  %i.apr = getelementptr inbounds i8, ptr %i.apq, i64 %i.apn
  store i32 %i.app, ptr %i.apr, align 1, !noalias !228
  %i.aps = load i64, ptr %i.apg, align 8, !tbaa !131, !noalias !228
  %i.apt = add nsw i64 %i.aps, 4                  ; 3 uses
  store i64 %i.apt, ptr %i.apg, align 8, !tbaa !131, !noalias !228
  %i.apu = add nuw nsw i64 %.015.i.i.i94.i, 2     ; 2 uses
  %niter331.next.1 = add nuw nsw i64 %niter331, 2 ; 2 uses
  %niter331.ncmp.1 = icmp eq i64 %niter331.next.1, %unroll_iter330
  br i1 %niter331.ncmp.1, label %_ZN5arrow6StatusD2Ev.exit210.i27.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i93.i, !llvm.loop !233

bb.hn:                                            ; preds = %bb.hm
  %i.apv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.apw = load i64, ptr %i.apv, align 8, !tbaa !99, !noalias !205
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #24, !noalias !234
  invoke void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %63, ptr noundef nonnull %i.yl, i64 noundef %i.apw, i64 noundef %i.f)
          to label %.noexc199.i16.i unwind label %.loopexit.split-lp.i10.i, !noalias !205

.noexc199.i16.i:                                  ; preds = %bb.hn
  %i.apx = invoke { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %63)
          to label %.noexc200.i17.i unwind label %.loopexit.split-lp.i10.i, !noalias !205 ; 2 uses

.noexc200.i17.i:                                  ; preds = %.noexc199.i16.i
  %i.apy = extractvalue { i64, i64 } %i.apx, 1    ; 2 uses
  %i.apz = icmp eq i64 %i.apy, 0
  br i1 %i.apz, label %_ZN5arrow6StatusD2Ev.exit204.thread425.i26.i, label %.lr.ph.i.i18.i

.lr.ph.i.i18.i:                                   ; preds = %.noexc200.i17.i
  %i.aqa = getelementptr inbounds nuw i8, ptr %71, i64 40 ; 8 uses
  br label %bb.ho

bb.ho:                                            ; preds = %.noexc202.i25.i, %.lr.ph.i.i18.i
  %i.aqb = phi i64 [ %i.apy, %.lr.ph.i.i18.i ], [ %i.ari, %.noexc202.i25.i ] ; 6 uses
  %i.aqc = phi { i64, i64 } [ %i.apx, %.lr.ph.i.i18.i ], [ %i.arh, %.noexc202.i25.i ]
  %i.aqd = extractvalue { i64, i64 } %i.aqc, 0    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #24, !noalias !235
  %i.aqe = shl i64 %i.aqb, 2
  %i.aqf = load i64, ptr %i.aqa, align 8, !tbaa !131, !noalias !238
  %i.aqg = add nsw i64 %i.aqf, %i.aqe             ; 2 uses
  %i.aqh = load i64, ptr %i.ajs, align 8, !tbaa !147, !noalias !238 ; 2 uses
  %.not.i.i.i15.i.i19.i = icmp sgt i64 %i.aqg, %i.aqh
  br i1 %.not.i.i.i15.i.i19.i, label %_ZN5arrow6StatusD2Ev.exit.i22.i.i79.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i16.i.i20.i

_ZN5arrow6StatusD2Ev.exit.thread.i16.i.i20.i:     ; preds = %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #24, !noalias !235
  br label %_ZN5arrow6StatusD2Ev.exit13.i17.i.i21.i

_ZN5arrow6StatusD2Ev.exit.i22.i.i79.i:            ; preds = %bb.ho
  %i.aqi = shl nsw i64 %i.aqh, 1
  %.sroa.speculated.i.i.i.i23.i.i80.i = call noundef i64 @llvm.smax.i64(i64 %i.aqg, i64 %i.aqi)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %61, ptr noundef nonnull align 8 dereferenceable(56) %71, i64 noundef %.sroa.speculated.i.i.i.i23.i.i80.i, i1 noundef zeroext false)
          to label %.noexc201.i81.i unwind label %.loopexit327.i23.i, !noalias !205

.noexc201.i81.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i22.i.i79.i
  %.pr.i24.i.i82.i = load ptr, ptr %61, align 8, !tbaa !113, !noalias !235 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #24, !noalias !235
  %i.aqj = icmp eq ptr %.pr.i24.i.i82.i, null
  br i1 %i.aqj, label %_ZN5arrow6StatusD2Ev.exit13.i17.i.i21.i, label %_ZN5arrow6StatusD2Ev.exit204.i83.i, !prof !156

_ZN5arrow6StatusD2Ev.exit13.i17.i.i21.i:          ; preds = %.noexc201.i81.i, %_ZN5arrow6StatusD2Ev.exit.thread.i16.i.i20.i
  %i.aqk = icmp sgt i64 %i.aqb, 0
  br i1 %i.aqk, label %.lr.ph.i19.preheader.i.i74.i, label %.loopexit.i.i22.i

.lr.ph.i19.preheader.i.i74.i:                     ; preds = %_ZN5arrow6StatusD2Ev.exit13.i17.i.i21.i
  %.pre.i.i75.i = load i64, ptr %i.aqa, align 8, !tbaa !131, !noalias !235 ; 2 uses
  %xtraiter318 = and i64 %i.aqb, 1
  %i.aql = icmp eq i64 %i.aqb, 1
  br i1 %i.aql, label %.lr.ph.i19.i.i76.i.epil.preheader, label %.lr.ph.i19.preheader.i.i74.i.new

.lr.ph.i19.preheader.i.i74.i.new:                 ; preds = %.lr.ph.i19.preheader.i.i74.i
  %unroll_iter323 = and i64 %i.aqb, 9223372036854775806
  br label %.lr.ph.i19.i.i76.i

.lr.ph.i19.i.i76.i:                               ; preds = %.lr.ph.i19.i.i76.i, %.lr.ph.i19.preheader.i.i74.i.new
  %i.aqm = phi i64 [ %.pre.i.i75.i, %.lr.ph.i19.preheader.i.i74.i.new ], [ %i.aqz, %.lr.ph.i19.i.i76.i ]
  %.015.i20.i.i77.i = phi i64 [ 0, %.lr.ph.i19.preheader.i.i74.i.new ], [ %i.ara, %.lr.ph.i19.i.i76.i ] ; 3 uses
  %niter324 = phi i64 [ 0, %.lr.ph.i19.preheader.i.i74.i.new ], [ %niter324.next.1, %.lr.ph.i19.i.i76.i ]
  %i.aqn = add nsw i64 %.015.i20.i.i77.i, %i.aqd
  %i.aqo = trunc i64 %i.aqn to i32
  %i.aqp = load ptr, ptr %i.ajr, align 8, !tbaa !88, !noalias !235
  %i.aqq = getelementptr inbounds i8, ptr %i.aqp, i64 %i.aqm
  store i32 %i.aqo, ptr %i.aqq, align 1, !noalias !235
  %i.aqr = load i64, ptr %i.aqa, align 8, !tbaa !131, !noalias !235
  %i.aqs = add nsw i64 %i.aqr, 4                  ; 2 uses
  store i64 %i.aqs, ptr %i.aqa, align 8, !tbaa !131, !noalias !235
  %i.aqt = or disjoint i64 %.015.i20.i.i77.i, 1
  %i.aqu = add nsw i64 %i.aqt, %i.aqd
  %i.aqv = trunc i64 %i.aqu to i32
  %i.aqw = load ptr, ptr %i.ajr, align 8, !tbaa !88, !noalias !235
  %i.aqx = getelementptr inbounds i8, ptr %i.aqw, i64 %i.aqs
  store i32 %i.aqv, ptr %i.aqx, align 1, !noalias !235
  %i.aqy = load i64, ptr %i.aqa, align 8, !tbaa !131, !noalias !235
  %i.aqz = add nsw i64 %i.aqy, 4                  ; 3 uses
  store i64 %i.aqz, ptr %i.aqa, align 8, !tbaa !131, !noalias !235
  %i.ara = add nuw nsw i64 %.015.i20.i.i77.i, 2   ; 2 uses
  %niter324.next.1 = add nuw nsw i64 %niter324, 2 ; 2 uses
  %niter324.ncmp.1 = icmp eq i64 %niter324.next.1, %unroll_iter323
  br i1 %niter324.ncmp.1, label %.loopexit.i.i22.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i76.i, !llvm.loop !233

.loopexit.i.i22.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i19.i.i76.i
  %lcmp.mod321.not = icmp eq i64 %xtraiter318, 0
  br i1 %lcmp.mod321.not, label %.loopexit.i.i22.i, label %.lr.ph.i19.i.i76.i.epil.preheader

.lr.ph.i19.i.i76.i.epil.preheader:                ; preds = %.loopexit.i.i22.i.loopexit.unr-lcssa, %.lr.ph.i19.preheader.i.i74.i
  %.epil.init320 = phi i64 [ %.pre.i.i75.i, %.lr.ph.i19.preheader.i.i74.i ], [ %i.aqz, %.loopexit.i.i22.i.loopexit.unr-lcssa ]
  %.015.i20.i.i77.i.epil.init = phi i64 [ 0, %.lr.ph.i19.preheader.i.i74.i ], [ %i.ara, %.loopexit.i.i22.i.loopexit.unr-lcssa ]
  %lcmp.mod322 = trunc i64 %i.aqb to i1
  call void @llvm.assume(i1 %lcmp.mod322)
  %i.arb = add nsw i64 %.015.i20.i.i77.i.epil.init, %i.aqd
  %i.arc = trunc i64 %i.arb to i32
  %i.ard = load ptr, ptr %i.ajr, align 8, !tbaa !88, !noalias !235
  %i.are = getelementptr inbounds i8, ptr %i.ard, i64 %.epil.init320
  store i32 %i.arc, ptr %i.are, align 1, !noalias !235
  %i.arf = load i64, ptr %i.aqa, align 8, !tbaa !131, !noalias !235
  %i.arg = add nsw i64 %i.arf, 4
  store i64 %i.arg, ptr %i.aqa, align 8, !tbaa !131, !noalias !235
  br label %.loopexit.i.i22.i

.loopexit.i.i22.i:                                ; preds = %.lr.ph.i19.i.i76.i.epil.preheader, %.loopexit.i.i22.i.loopexit.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit13.i17.i.i21.i
  %i.arh = invoke { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %63)
          to label %.noexc202.i25.i unwind label %.loopexit327.i23.i, !noalias !205 ; 2 uses

.noexc202.i25.i:                                  ; preds = %.loopexit.i.i22.i
  %i.ari = extractvalue { i64, i64 } %i.arh, 1    ; 2 uses
  %i.arj = icmp eq i64 %i.ari, 0
  br i1 %i.arj, label %_ZN5arrow6StatusD2Ev.exit204.thread425.i26.i, label %bb.ho

_ZN5arrow6StatusD2Ev.exit204.thread425.i26.i:     ; preds = %.noexc202.i25.i, %.noexc200.i17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24, !noalias !234
  br label %_ZN5arrow6StatusD2Ev.exit210.i27.i

_ZN5arrow6StatusD2Ev.exit204.i83.i:               ; preds = %.noexc201.i81.i
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24, !noalias !234
  br label %_ZN5arrow6StatusD2Ev.exit204.thread423.i84.i

_ZN5arrow6StatusD2Ev.exit204.thread423.i84.i:     ; preds = %_ZN5arrow6StatusD2Ev.exit204.i83.i, %.noexc198.i97.i
  %.pr.i24.i.lcssa.sink.i85.i = phi ptr [ %.pr.i24.i.i82.i, %_ZN5arrow6StatusD2Ev.exit204.i83.i ], [ %.pr.i.i.i98.i, %.noexc198.i97.i ]
  store ptr %.pr.i24.i.lcssa.sink.i85.i, ptr %74, align 8, !tbaa !113, !noalias !205
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %74) #24
  %i.ark = load ptr, ptr %74, align 8, !tbaa !113, !noalias !205 ; 2 uses
  %.not.i205.i86.i = icmp eq ptr %i.ark, null
  br i1 %.not.i205.i86.i, label %_ZN5arrow6StatusD2Ev.exit206.i87.i, label %bb.hp, !prof !117

bb.hp:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit204.thread423.i84.i
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 1
  %i.arm = load i8, ptr %i.arl, align 1, !tbaa !118, !range !127, !noundef !128
  %i.arn = trunc nuw i8 %i.arm to i1
  br i1 %i.arn, label %_ZN5arrow6StatusD2Ev.exit206.i87.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %74) #24
  br label %_ZN5arrow6StatusD2Ev.exit206.i87.i

_ZN5arrow6StatusD2Ev.exit206.i87.i:               ; preds = %bb.hq, %bb.hp, %_ZN5arrow6StatusD2Ev.exit204.thread423.i84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #24, !noalias !205
  br label %bb.jn

.loopexit327.i23.i:                               ; preds = %.loopexit.i.i22.i, %_ZN5arrow6StatusD2Ev.exit.i22.i.i79.i
  %lpad.loopexit.i24.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

.loopexit.split-lp.i10.i:                         ; preds = %.noexc199.i16.i, %bb.hn, %_ZN5arrow6StatusD2Ev.exit.i.i.i96.i
  %lpad.loopexit.split-lp.i11.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

bb.hr:                                            ; preds = %.loopexit.split-lp.i10.i, %.loopexit327.i23.i
  %lpad.phi.i12.i = phi { ptr, i32 } [ %lpad.loopexit.i24.i, %.loopexit327.i23.i ], [ %lpad.loopexit.split-lp.i11.i, %.loopexit.split-lp.i10.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #24, !noalias !205
  br label %bb.ju

_ZN5arrow6StatusD2Ev.exit210.i27.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i93.i
  %lcmp.mod328.not = icmp eq i64 %xtraiter325, 0
  br i1 %lcmp.mod328.not, label %_ZN5arrow6StatusD2Ev.exit210.i27.i, label %.lr.ph.i.i.i93.i.epil.preheader

.lr.ph.i.i.i93.i.epil.preheader:                  ; preds = %_ZN5arrow6StatusD2Ev.exit210.i27.i.loopexit.unr-lcssa
  %lcmp.mod329 = trunc i64 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod329)
  %i.aro = trunc i64 %i.apu to i32
  %i.arp = load ptr, ptr %i.ajr, align 8, !tbaa !88, !noalias !228
  %i.arq = getelementptr inbounds i8, ptr %i.arp, i64 %i.apt
  store i32 %i.aro, ptr %i.arq, align 1, !noalias !228
  %i.arr = load i64, ptr %i.apg, align 8, !tbaa !131, !noalias !228
  %i.ars = add nsw i64 %i.arr, 4
  store i64 %i.ars, ptr %i.apg, align 8, !tbaa !131, !noalias !228
  br label %_ZN5arrow6StatusD2Ev.exit210.i27.i

_ZN5arrow6StatusD2Ev.exit210.i27.i:               ; preds = %.lr.ph.i.i.i93.i.epil.preheader, %_ZN5arrow6StatusD2Ev.exit210.i27.i.loopexit.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit204.thread425.i26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #24, !noalias !205
  br label %.critedge153.i28.i

.critedge153.i28.i:                               ; preds = %.loopexit326.i129.i, %_ZN5arrow6StatusD2Ev.exit210.i27.i
  %i.art = getelementptr inbounds nuw i8, ptr %71, i64 40
  %i.aru = load i64, ptr %i.art, align 8, !tbaa !131, !noalias !205
  %i.arv = lshr i64 %i.aru, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #24, !noalias !205
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %75, i8 0, i64 16, i1 false), !noalias !205
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #24, !noalias !205
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #24, !noalias !205
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %77, ptr noundef nonnull align 8 dereferenceable(56) %71, ptr noundef nonnull %75, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit213.i30.i unwind label %bb.hv, !noalias !205

_ZN5arrow6StatusD2Ev.exit213.i30.i:               ; preds = %.critedge153.i28.i
  %i.arw = load ptr, ptr %77, align 8, !tbaa !113, !noalias !205 ; 2 uses
  store ptr %i.arw, ptr %76, align 8, !tbaa !113, !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #24, !noalias !205
  %i.arx = icmp eq ptr %i.arw, null
  br i1 %i.arx, label %_ZN5arrow6StatusD2Ev.exit219.i42.i, label %bb.hs, !prof !117

bb.hs:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit213.i30.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %76) #24
  %i.ary = load ptr, ptr %76, align 8, !tbaa !113, !noalias !205 ; 2 uses
  %.not.i214.i31.i = icmp eq ptr %i.ary, null
  br i1 %.not.i214.i31.i, label %_ZN5arrow6StatusD2Ev.exit215.i32.i, label %bb.ht, !prof !117

bb.ht:                                            ; preds = %bb.hs
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 1
  %i.asa = load i8, ptr %i.arz, align 1, !tbaa !118, !range !127, !noundef !128
  %i.asb = trunc nuw i8 %i.asa to i1
  br i1 %i.asb, label %_ZN5arrow6StatusD2Ev.exit215.i32.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %76) #24
  br label %_ZN5arrow6StatusD2Ev.exit215.i32.i

_ZN5arrow6StatusD2Ev.exit215.i32.i:               ; preds = %bb.hu, %bb.ht, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #24, !noalias !205
  br label %bb.jf

bb.hv:                                            ; preds = %.critedge153.i28.i
  %i.asc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #24, !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #24, !noalias !205
  br label %bb.jm

_ZN5arrow6StatusD2Ev.exit219.i42.i:               ; preds = %_ZN5arrow6StatusD2Ev.exit213.i30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #24, !noalias !205
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #24, !noalias !205
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.asd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint32Ev()
          to label %.noexc222.i44.i unwind label %bb.ja, !noalias !205 ; 2 uses

.noexc222.i44.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit219.i42.i
  %i.ase = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asd, i64 8
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !95, !noalias !246 ; 2 uses
  %i.ash = load <2 x ptr>, ptr %i.asd, align 8, !tbaa !97, !noalias !246
  store <2 x ptr> %i.ash, ptr %78, align 16, !tbaa !97, !alias.scope !243, !noalias !205
  %.not.i.i.i.i220.i45.i = icmp eq ptr %i.asg, null
  br i1 %.not.i.i.i.i220.i45.i, label %_ZN5arrow10TypeTraitsINS_10UInt32TypeEE14type_singletonEv.exit.i.i, label %bb.hw

bb.hw:                                            ; preds = %.noexc222.i44.i
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asg, i64 8 ; 3 uses
  %i.asj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !246
  %.not.i.i.i.i.i221.i46.i = icmp eq i8 %i.asj, 0
  br i1 %.not.i.i.i.i.i221.i46.i, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.ask = load i32, ptr %i.asi, align 4, !tbaa !3, !noalias !246
  %i.asl = add nsw i32 %i.ask, 1
  store i32 %i.asl, ptr %i.asi, align 4, !tbaa !3, !noalias !246
  br label %_ZN5arrow10TypeTraitsINS_10UInt32TypeEE14type_singletonEv.exit.i.i

bb.hy:                                            ; preds = %bb.hw
  %i.asm = atomicrmw volatile add ptr %i.asi, i32 1 acq_rel, align 4, !noalias !246 ; 0 uses
  br label %_ZN5arrow10TypeTraitsINS_10UInt32TypeEE14type_singletonEv.exit.i.i

_ZN5arrow10TypeTraitsINS_10UInt32TypeEE14type_singletonEv.exit.i.i: ; preds = %bb.hy, %bb.hx, %.noexc222.i44.i
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #24, !noalias !205
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #24, !noalias !205
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %80, i8 0, i64 16, i1 false), !noalias !205
  %i.asn = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 3 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %80, i64 24 ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !95, !noalias !205 ; 2 uses
  %i.asr = load <2 x ptr>, ptr %75, align 16, !tbaa !97, !noalias !205
  store <2 x ptr> %i.asr, ptr %i.asn, align 16, !tbaa !97, !noalias !205
  %.not.i.i.i223.i47.i = icmp eq ptr %i.asq, null
  br i1 %.not.i.i.i223.i47.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i49.i, label %bb.hz

bb.hz:                                            ; preds = %_ZN5arrow10TypeTraitsINS_10UInt32TypeEE14type_singletonEv.exit.i.i
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asq, i64 8 ; 3 uses
  %i.ast = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !205
  %.not.i.i.i.i224.i48.i = icmp eq i8 %i.ast, 0
  br i1 %.not.i.i.i.i224.i48.i, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.asu = load i32, ptr %i.ass, align 4, !tbaa !3, !noalias !205
  %i.asv = add nsw i32 %i.asu, 1
  store i32 %i.asv, ptr %i.ass, align 4, !tbaa !3, !noalias !205
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i49.i

bb.ib:                                            ; preds = %bb.hz
  %i.asw = atomicrmw volatile add ptr %i.ass, i32 1 acq_rel, align 4, !noalias !205 ; 0 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a

bb.mp:                                            ; preds = %.lr.ph44.i.i153
  %i.bzu = load i64, ptr %i.btq, align 8, !tbaa !99, !noalias !516
  %i.bzv = add nsw i64 %i.bzu, %.4.i42.i.i155     ; 2 uses
  %i.bzw = lshr i64 %i.bzv, 3
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.bzt, i64 %i.bzw
  %i.bzy = load i8, ptr %i.bzx, align 1, !tbaa !98, !noalias !516
  %i.bzz = trunc i64 %i.bzv to i8
  %i.caa = and i8 %i.bzz, 7
  %i.cab = lshr i8 %i.bzy, %i.caa
  %i.cac = trunc i8 %i.cab to i1
  br i1 %i.cac, label %bb.mu, label %bb.nb

bb.mq:                                            ; preds = %.lr.ph44.i.i153
  %i.cad = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !516
  %i.cae = getelementptr inbounds nuw i8, ptr %i.cad, i64 40
  %i.caf = load i32, ptr %i.cae, align 8, !tbaa !42, !noalias !516
  switch i32 %i.caf, label %bb.mt [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i162
    i32 28, label %bb.mr
    i32 38, label %bb.ms
  ]

bb.mr:                                            ; preds = %bb.mq
  %i.cag = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i155), !noalias !516
  br i1 %i.cag, label %bb.nb, label %bb.mu

bb.ms:                                            ; preds = %bb.mq
  %i.cah = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i155), !noalias !516
  br i1 %i.cah, label %bb.nb, label %bb.mu

bb.mt:                                            ; preds = %bb.mq
  %i.cai = load i64, ptr %i.buy, align 8, !tbaa !71, !noalias !516
  %i.caj = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !516
  %.not24.i.i163 = icmp eq i64 %i.cai, %i.caj
  br i1 %.not24.i.i163, label %bb.nb, label %bb.mu

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i162:     ; preds = %bb.mq
  %i.cak = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i155), !noalias !516
  br i1 %i.cak, label %bb.nb, label %bb.mu

bb.mu:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i162, %bb.mt, %bb.ms, %bb.mr, %bb.mp
  %i.cal = getelementptr inbounds i8, ptr %i.btv, i64 %.4.i42.i.i155 ; 2 uses
  %i.cam = load i8, ptr %i.cal, align 1, !tbaa !98, !noalias !516
  %i.can = zext i8 %i.cam to i64                  ; 4 uses
  %i.cao = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !516 ; 2 uses
  %.not.i29.i.i159 = icmp eq ptr %i.cao, null
  br i1 %.not.i29.i.i159, label %bb.mw, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.cap = load i64, ptr %i.buz, align 8, !tbaa !99, !noalias !516
  %i.caq = add nsw i64 %i.cap, %i.can             ; 2 uses
  %i.car = lshr i64 %i.caq, 3
  %i.cas = getelementptr inbounds nuw i8, ptr %i.cao, i64 %i.car
  %i.cat = load i8, ptr %i.cas, align 1, !tbaa !98, !noalias !516
  %i.cau = trunc i64 %i.caq to i8
  %i.cav = and i8 %i.cau, 7
  %i.caw = lshr i8 %i.cat, %i.cav
  %i.cax = trunc i8 %i.caw to i1
  br i1 %i.cax, label %bb.na, label %bb.nb

bb.mw:                                            ; preds = %bb.mu
  %i.cay = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !516
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cay, i64 40
  %i.cba = load i32, ptr %i.caz, align 8, !tbaa !42, !noalias !516
  switch i32 %i.cba, label %bb.mz [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i160
    i32 28, label %bb.mx
    i32 38, label %bb.my
  ]

bb.mx:                                            ; preds = %bb.mw
  %i.cbb = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.can), !noalias !516
  br i1 %i.cbb, label %bb.nb, label %bb.na

bb.my:                                            ; preds = %bb.mw
  %i.cbc = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.can), !noalias !516
  br i1 %i.cbc, label %bb.nb, label %bb.na

bb.mz:                                            ; preds = %bb.mw
  %i.cbd = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !516
  %i.cbe = load i64, ptr %i.bto, align 8, !tbaa !62, !noalias !516
  %.not25.i.i161 = icmp eq i64 %i.cbd, %i.cbe
  br i1 %.not25.i.i161, label %bb.nb, label %bb.na

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i160:     ; preds = %bb.mw
  %i.cbf = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.can), !noalias !516
  br i1 %i.cbf, label %bb.nb, label %bb.na

bb.na:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i160, %bb.mz, %bb.my, %bb.mx, %bb.mv
  %i.cbg = getelementptr inbounds i8, ptr %i.btn, i64 %.4.i42.i.i155
  %i.cbh = load i8, ptr %i.cal, align 1, !tbaa !98, !noalias !516
  %i.cbi = zext i8 %i.cbh to i64
  %i.cbj = getelementptr inbounds nuw i8, ptr %i.btm, i64 %i.cbi
  %i.cbk = load i8, ptr %i.cbj, align 1, !noalias !516
  store i8 %i.cbk, ptr %i.cbg, align 1, !noalias !516
  %i.cbl = srem i64 %.4.i42.i.i155, 8
  %i.cbm = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.cbl
  %i.cbn = load i8, ptr %i.cbm, align 1, !tbaa !98, !noalias !516
  %i.cbo = sdiv i64 %.4.i42.i.i155, 8
  %i.cbp = getelementptr inbounds i8, ptr %.0.i.i.i.i129, i64 %i.cbo ; 2 uses
  %i.cbq = load i8, ptr %i.cbp, align 1, !tbaa !98, !noalias !516
  %i.cbr = or i8 %i.cbq, %i.cbn
  store i8 %i.cbr, ptr %i.cbp, align 1, !tbaa !98, !noalias !516
  %i.cbs = add nsw i64 %.385.i41.i.i, 1
  br label %bb.nc

bb.nb:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i160, %bb.mz, %bb.my, %bb.mx, %bb.mv, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i162, %bb.mt, %bb.ms, %bb.mr, %bb.mp
  %i.cbt = getelementptr inbounds i8, ptr %i.btn, i64 %.4.i42.i.i155
  store i8 0, ptr %i.cbt, align 1, !noalias !516
  br label %bb.nc

bb.nc:                                            ; preds = %bb.nb, %bb.na
  %.486.i.i.i157 = phi i64 [ %i.cbs, %bb.na ], [ %.385.i41.i.i, %bb.nb ] ; 2 uses
  %i.cbu = add nsw i64 %.4.i42.i.i155, 1          ; 2 uses
  %i.cbv = add nuw nsw i64 %.0.i43.i.i154, 1      ; 2 uses
  %exitcond65.not.i.i158 = icmp eq i64 %i.cbv, %i.bzr
  br i1 %exitcond65.not.i.i158, label %.loopexit.i.i138, label %.lr.ph44.i.i153, !llvm.loop !522

.loopexit.sink.split.i.i:                         ; preds = %bb.mo, %bb.lw
  %.sink85.i.i = phi i64 [ %i.bwq, %bb.lw ], [ %i.bzr, %bb.mo ] ; 2 uses
  %.587.i.ph.i.i = phi i64 [ %i.bvg, %bb.lw ], [ %.082.i53.i.i, %bb.mo ]
  %i.cbw = getelementptr inbounds i8, ptr %i.btn, i64 %.081.i54.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.cbw, i8 0, i64 %.sink85.i.i, i1 false), !noalias !516
  %i.cbx = add nsw i64 %.sink85.i.i, %.081.i54.i.i
  br label %.loopexit.i.i138

.loopexit.i.i138.loopexit3136.unr-lcssa:          ; preds = %.lr.ph39.i.i148
  %i.cby = and i16 %.sroa.0.0.extract.trunc.i.i.i132, 3
  %lcmp.mod3563.not = icmp eq i16 %i.cby, 0
  br i1 %lcmp.mod3563.not, label %.loopexit.i.i138, label %.lr.ph39.i.i148.epil.preheader

.lr.ph39.i.i148.epil.preheader:                   ; preds = %.loopexit.i.i138.loopexit3136.unr-lcssa, %.lr.ph39.i.i148.preheader
  %.1.i37.i.i149.epil.init = phi i64 [ %.081.i54.i.i, %.lr.ph39.i.i148.preheader ], [ %i.bwo, %.loopexit.i.i138.loopexit3136.unr-lcssa ]
  %i.cbz = and i16 %.sroa.0.0.extract.trunc.i.i.i132, 3
  %lcmp.mod3565 = icmp ne i16 %i.cbz, 0
  call void @llvm.assume(i1 %lcmp.mod3565)
  br label %.lr.ph39.i.i148.epil

.lr.ph39.i.i148.epil:                             ; preds = %.lr.ph39.i.i148.epil, %.lr.ph39.i.i148.epil.preheader
  %.1.i37.i.i149.epil = phi i64 [ %i.ccg, %.lr.ph39.i.i148.epil ], [ %.1.i37.i.i149.epil.init, %.lr.ph39.i.i148.epil.preheader ] ; 3 uses
  %epil.iter3562 = phi i64 [ %epil.iter3562.next, %.lr.ph39.i.i148.epil ], [ 0, %.lr.ph39.i.i148.epil.preheader ]
  %i.cca = getelementptr inbounds i8, ptr %i.btn, i64 %.1.i37.i.i149.epil
  %i.ccb = getelementptr inbounds i8, ptr %i.btv, i64 %.1.i37.i.i149.epil
  %i.ccc = load i8, ptr %i.ccb, align 1, !tbaa !98, !noalias !516
  %i.ccd = zext i8 %i.ccc to i64
  %i.cce = getelementptr inbounds nuw i8, ptr %i.btm, i64 %i.ccd
  %i.ccf = load i8, ptr %i.cce, align 1, !noalias !516
  store i8 %i.ccf, ptr %i.cca, align 1, !noalias !516
  %i.ccg = add nsw i64 %.1.i37.i.i149.epil, 1     ; 2 uses
  %epil.iter3562.next = add i64 %epil.iter3562, 1 ; 2 uses
  %epil.iter3562.cmp.not = icmp eq i64 %epil.iter3562.next, %xtraiter3561
  br i1 %epil.iter3562.cmp.not, label %.loopexit.i.i138, label %.lr.ph39.i.i148.epil, !llvm.loop !523

.loopexit.i.i138:                                 ; preds = %bb.me, %.loopexit.i.i138.loopexit3136.unr-lcssa, %.lr.ph39.i.i148.epil, %bb.nc, %bb.mn, %.loopexit.sink.split.i.i, %.preheader27.i.i152, %.preheader.i.i164, %.preheader30.i.i141, %bb.lv
  %.587.i.i.i139 = phi i64 [ %.587.i.ph.i.i, %.loopexit.sink.split.i.i ], [ %i.bvg, %bb.lv ], [ %.486.i.i.i157, %bb.nc ], [ %i.bvg, %.loopexit.i.i138.loopexit3136.unr-lcssa ], [ %i.bvg, %.preheader30.i.i141 ], [ %.082.i53.i.i, %.preheader.i.i164 ], [ %.082.i53.i.i, %.preheader27.i.i152 ], [ %.284.i.i.i168, %bb.mn ], [ %i.bvg, %.lr.ph39.i.i148.epil ], [ %i.bvg, %bb.me ] ; 2 uses
  %.5.i.i.i140 = phi i64 [ %i.cbx, %.loopexit.sink.split.i.i ], [ %.081.i54.i.i, %bb.lv ], [ %i.cbu, %bb.nc ], [ %i.ccg, %.lr.ph39.i.i148.epil ], [ %.081.i54.i.i, %.preheader30.i.i141 ], [ %.081.i54.i.i, %.preheader.i.i164 ], [ %.081.i54.i.i, %.preheader27.i.i152 ], [ %i.bzo, %bb.mn ], [ %i.bwo, %.loopexit.i.i138.loopexit3136.unr-lcssa ], [ %i.bxy, %bb.me ] ; 2 uses
  %i.cch = icmp slt i64 %.5.i.i.i140, %i.btp
  br i1 %i.cch, label %bb.lt, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !525

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i.i138, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i128
  %.082.i.lcssa.i.i130 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i128 ], [ %.587.i.i.i139, %.loopexit.i.i138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24, !noalias !516
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i124:                                    ; preds = %.lr.ph.i.i124, %.lr.ph.i.i124.preheader.new
  %.0.i1833.i.i125 = phi i64 [ 0, %.lr.ph.i.i124.preheader.new ], [ %i.cdj, %.lr.ph.i.i124 ] ; 6 uses
  %niter3560 = phi i64 [ 0, %.lr.ph.i.i124.preheader.new ], [ %niter3560.next.3, %.lr.ph.i.i124 ]
  %i.cci = getelementptr inbounds nuw i8, ptr %i.btn, i64 %.0.i1833.i.i125
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.btv, i64 %.0.i1833.i.i125
  %i.cck = load i8, ptr %i.ccj, align 1, !tbaa !98, !noalias !516
  %i.ccl = zext i8 %i.cck to i64
  %i.ccm = getelementptr inbounds nuw i8, ptr %i.btm, i64 %i.ccl
  %i.ccn = load i8, ptr %i.ccm, align 1, !noalias !516
  store i8 %i.ccn, ptr %i.cci, align 1, !noalias !516
  %i.cco = or disjoint i64 %.0.i1833.i.i125, 1    ; 2 uses
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.btn, i64 %i.cco
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.btv, i64 %i.cco
  %i.ccr = load i8, ptr %i.ccq, align 1, !tbaa !98, !noalias !516
  %i.ccs = zext i8 %i.ccr to i64
  %i.cct = getelementptr inbounds nuw i8, ptr %i.btm, i64 %i.ccs
  %i.ccu = load i8, ptr %i.cct, align 1, !noalias !516
  store i8 %i.ccu, ptr %i.ccp, align 1, !noalias !516
  %i.ccv = or disjoint i64 %.0.i1833.i.i125, 2    ; 2 uses
  %i.ccw = getelementptr inbounds nuw i8, ptr %i.btn, i64 %i.ccv
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.btv, i64 %i.ccv
  %i.ccy = load i8, ptr %i.ccx, align 1, !tbaa !98, !noalias !516
  %i.ccz = zext i8 %i.ccy to i64
  %i.cda = getelementptr inbounds nuw i8, ptr %i.btm, i64 %i.ccz
  %i.cdb = load i8, ptr %i.cda, align 1, !noalias !516
  store i8 %i.cdb, ptr %i.ccw, align 1, !noalias !516
  %i.cdc = or disjoint i64 %.0.i1833.i.i125, 3    ; 2 uses
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.btn, i64 %i.cdc
  %i.cde = getelementptr inbounds nuw i8, ptr %i.btv, i64 %i.cdc
  %i.cdf = load i8, ptr %i.cde, align 1, !tbaa !98, !noalias !516
  %i.cdg = zext i8 %i.cdf to i64
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.btm, i64 %i.cdg
  %i.cdi = load i8, ptr %i.cdh, align 1, !noalias !516
  store i8 %i.cdi, ptr %i.cdd, align 1, !noalias !516
  %i.cdj = add nuw nsw i64 %.0.i1833.i.i125, 4    ; 2 uses
  %niter3560.next.3 = add nuw nsw i64 %niter3560, 4 ; 2 uses
  %niter3560.ncmp.3 = icmp eq i64 %niter3560.next.3, %unroll_iter3559
  br i1 %niter3560.ncmp.3, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3142.unr-lcssa, label %.lr.ph.i.i124, !llvm.loop !526

bb.nd:                                            ; preds = %bb.ln
  br i1 %i.btd, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.cdl = load i64, ptr %i.cdk, align 8, !tbaa !71, !noalias !527
  %.not.i19.i21.i111 = icmp ne i64 %i.cdl, 0
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.cdn = load ptr, ptr %i.cdm, align 8, !noalias !527
  %i.cdo = icmp ne ptr %i.cdn, null
  %i.cdp = select i1 %.not.i19.i21.i111, i1 %i.cdo, i1 false
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd
  %i.cdq = phi i1 [ true, %bb.nd ], [ %i.cdp, %bb.ne ]
  %i.cdr = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !527
  %i.cds = extractvalue { i32, ptr } %i.cdr, 1    ; 13 uses
  %i.cdt = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !527 ; 17 uses
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cdv = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !527 ; 10 uses
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.cdx = load i64, ptr %i.cdw, align 8, !tbaa !99, !noalias !527
  %i.cdy = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.cea = load ptr, ptr %i.cdz, align 8, !tbaa !66, !noalias !527
  %i.ceb = getelementptr inbounds [2 x i8], ptr %i.cea, i64 %i.cdx ; 13 uses
  br i1 %i.cdq, label %bb.ng, label %.preheader32.i22.i112

.preheader32.i22.i112:                            ; preds = %bb.nf
  %i.cec = icmp sgt i64 %i.cdv, 0
  br i1 %i.cec, label %.lr.ph.i24.i113.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i113.preheader:                        ; preds = %.preheader32.i22.i112
  %xtraiter3542 = and i64 %i.cdv, 3               ; 3 uses
  %i.ced = icmp ult i64 %i.cdv, 4
  br i1 %i.ced, label %.lr.ph.i24.i113.epil.preheader, label %.lr.ph.i24.i113.preheader.new

.lr.ph.i24.i113.preheader.new:                    ; preds = %.lr.ph.i24.i113.preheader
  %unroll_iter3546 = and i64 %i.cdv, 9223372036854775804
  br label %.lr.ph.i24.i113

bb.ng:                                            ; preds = %bb.nf
  %i.cee = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.cef = load ptr, ptr %i.cee, align 8, !tbaa !171, !noalias !527
  %i.ceg = load ptr, ptr %i.cef, align 8, !tbaa !306, !noalias !527 ; 4 uses
  %.not.i.i.i27.i = icmp eq ptr %i.ceg, null
  br i1 %.not.i.i.i27.i, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.cei = load i64, ptr %i.ceh, align 8, !tbaa !438, !noalias !527
  %i.cej = getelementptr inbounds nuw i8, ptr %i.ceg, i64 9
  %i.cek = load i8, ptr %i.cej, align 1, !tbaa !439, !range !127, !noalias !527, !noundef !128
  %i.cel = trunc nuw i8 %i.cek to i1
  %i.cem = getelementptr inbounds nuw i8, ptr %i.ceg, i64 8
  %i.cen = load i8, ptr %i.cem, align 8, !range !127, !noalias !527
  %i.ceo = trunc nuw i8 %i.cen to i1
  %i.cep = select i1 %i.cel, i1 %i.ceo, i1 false, !prof !117
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.ceg, i64 16
  %i.cer = load ptr, ptr %i.ceq, align 8, !noalias !527
  %i.ces = select i1 %i.cep, ptr %i.cer, ptr null, !prof !117
  %i.cet = getelementptr inbounds i8, ptr %i.ces, i64 %i.cei
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i: ; preds = %bb.nh, %bb.ng
  %.0.i.i.i29.i = phi ptr [ %i.cet, %bb.nh ], [ null, %bb.ng ] ; 5 uses
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.cev = load i64, ptr %i.ceu, align 8, !tbaa !178, !noalias !527 ; 2 uses
  %i.cew = ashr i64 %i.cev, 3
  %i.cex = and i64 %i.cev, 7
  %i.cey = icmp ne i64 %i.cex, 0
  %i.cez = zext i1 %i.cey to i64
  %i.cfa = add nsw i64 %i.cew, %i.cez
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i29.i, i8 0, i64 %i.cfa, i1 false), !noalias !527
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24, !noalias !527
  %i.cfb = load ptr, ptr %i.cdy, align 8, !tbaa !66, !noalias !527
  %i.cfc = load i64, ptr %i.cdw, align 8, !tbaa !99, !noalias !527
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef %i.cfb, i64 noundef %i.cfc, i64 noundef %i.cdv), !noalias !527
  %i.cfd = icmp sgt i64 %i.cdv, 0
  br i1 %i.cfd, label %.lr.ph55.i31.i, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i31.i:                                   ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.cff = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.ni

bb.ni:                                            ; preds = %.loopexit.i43.i, %.lr.ph55.i31.i
  %.081.i54.i32.i = phi i64 [ 0, %.lr.ph55.i31.i ], [ %.5.i.i45.i, %.loopexit.i43.i ] ; 12 uses
  %.082.i53.i33.i = phi i64 [ 0, %.lr.ph55.i31.i ], [ %.587.i.i44.i, %.loopexit.i43.i ] ; 6 uses
  %i.cfg = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %30), !noalias !527 ; 6 uses
  %.sroa.0.0.extract.trunc.i.i34.i = trunc i32 %i.cfg to i16 ; 11 uses
  %i.cfh = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !527
  %.not.i20.i35.i = icmp ne i64 %i.cfh, 0
  %i.cfi = load ptr, ptr %i.v, align 8, !noalias !527
  %i.cfj = icmp ne ptr %i.cfi, null
  %i.cfk = select i1 %.not.i20.i35.i, i1 %i.cfj, i1 false
  br i1 %i.cfk, label %bb.nu, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %.sroa.14.0.extract.shift.i.i36.i = lshr i32 %i.cfg, 16
  %.sroa.14.0.extract.trunc.i.i37.i = zext nneg i32 %.sroa.14.0.extract.shift.i.i36.i to i64
  %sext91.i.i38.i = shl nuw i64 %.sroa.14.0.extract.trunc.i.i37.i, 48
  %i.cfl = ashr exact i64 %sext91.i.i38.i, 48
  %i.cfm = add nsw i64 %i.cfl, %.082.i53.i33.i    ; 6 uses
  %i.cfn = ashr i32 %i.cfg, 16                    ; 2 uses
  %sext.i.i39.i = shl i32 %i.cfg, 16
  %i.cfo = ashr exact i32 %sext.i.i39.i, 16
  %i.cfp = icmp eq i32 %i.cfn, %i.cfo
  br i1 %i.cfp, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  %i.cfq = sext i16 %.sroa.0.0.extract.trunc.i.i34.i to i64 ; 3 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i29.i, i64 noundef %.081.i54.i32.i, i64 noundef %i.cfq, i1 noundef zeroext true), !noalias !527
  %i.cfr = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i, 0
  br i1 %i.cfr, label %.lr.ph39.i54.i.preheader, label %.loopexit.i43.i

.lr.ph39.i54.i.preheader:                         ; preds = %bb.nk
  %xtraiter3548 = and i64 %i.cfq, 3
  %i.cfs = icmp ult i16 %.sroa.0.0.extract.trunc.i.i34.i, 4
  br i1 %i.cfs, label %.lr.ph39.i54.i.epil.preheader, label %.lr.ph39.i54.i.preheader.new

.lr.ph39.i54.i.preheader.new:                     ; preds = %.lr.ph39.i54.i.preheader
  %unroll_iter3553 = and i64 %i.cfq, 32764
  br label %.lr.ph39.i54.i

.lr.ph39.i54.i:                                   ; preds = %.lr.ph39.i54.i, %.lr.ph39.i54.i.preheader.new
  %.1.i37.i56.i = phi i64 [ %.081.i54.i32.i, %.lr.ph39.i54.i.preheader.new ], [ %i.cgu, %.lr.ph39.i54.i ] ; 6 uses
  %niter3554 = phi i64 [ 0, %.lr.ph39.i54.i.preheader.new ], [ %niter3554.next.3, %.lr.ph39.i54.i ]
  %i.cft = getelementptr inbounds i8, ptr %i.cdt, i64 %.1.i37.i56.i
  %i.cfu = getelementptr inbounds [2 x i8], ptr %i.ceb, i64 %.1.i37.i56.i
  %i.cfv = load i16, ptr %i.cfu, align 2, !tbaa !269, !noalias !527
  %i.cfw = zext i16 %i.cfv to i64
  %i.cfx = getelementptr inbounds nuw i8, ptr %i.cds, i64 %i.cfw
  %i.cfy = load i8, ptr %i.cfx, align 1, !noalias !527
  store i8 %i.cfy, ptr %i.cft, align 1, !noalias !527
  %i.cfz = add nsw i64 %.1.i37.i56.i, 1           ; 2 uses
  %i.cga = getelementptr inbounds i8, ptr %i.cdt, i64 %i.cfz
  %i.cgb = getelementptr inbounds [2 x i8], ptr %i.ceb, i64 %i.cfz
  %i.cgc = load i16, ptr %i.cgb, align 2, !tbaa !269, !noalias !527
  %i.cgd = zext i16 %i.cgc to i64
  %i.cge = getelementptr inbounds nuw i8, ptr %i.cds, i64 %i.cgd
  %i.cgf = load i8, ptr %i.cge, align 1, !noalias !527
  store i8 %i.cgf, ptr %i.cga, align 1, !noalias !527
  %i.cgg = add nsw i64 %.1.i37.i56.i, 2           ; 2 uses
  %i.cgh = getelementptr inbounds i8, ptr %i.cdt, i64 %i.cgg
  %i.cgi = getelementptr inbounds [2 x i8], ptr %i.ceb, i64 %i.cgg
  %i.cgj = load i16, ptr %i.cgi, align 2, !tbaa !269, !noalias !527
  %i.cgk = zext i16 %i.cgj to i64
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.cds, i64 %i.cgk
  %i.cgm = load i8, ptr %i.cgl, align 1, !noalias !527
  store i8 %i.cgm, ptr %i.cgh, align 1, !noalias !527
  %i.cgn = add nsw i64 %.1.i37.i56.i, 3           ; 2 uses
  %i.cgo = getelementptr inbounds i8, ptr %i.cdt, i64 %i.cgn
  %i.cgp = getelementptr inbounds [2 x i8], ptr %i.ceb, i64 %i.cgn
  %i.cgq = load i16, ptr %i.cgp, align 2, !tbaa !269, !noalias !527
  %i.cgr = zext i16 %i.cgq to i64
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cds, i64 %i.cgr
  %i.cgt = load i8, ptr %i.cgs, align 1, !noalias !527
  store i8 %i.cgt, ptr %i.cgo, align 1, !noalias !527
  %i.cgu = add nsw i64 %.1.i37.i56.i, 4           ; 3 uses
  %niter3554.next.3 = add i64 %niter3554, 4       ; 2 uses
  %niter3554.ncmp.3 = icmp eq i64 %niter3554.next.3, %unroll_iter3553
  br i1 %niter3554.ncmp.3, label %.loopexit.i43.i.loopexit3144.unr-lcssa, label %.lr.ph39.i54.i, !llvm.loop !530

bb.nl:                                            ; preds = %bb.nj
  %i.cgv = icmp sgt i32 %i.cfn, 0
  %i.cgw = sext i16 %.sroa.0.0.extract.trunc.i.i34.i to i64 ; 2 uses
  br i1 %i.cgv, label %.preheader30.i46.i, label %.loopexit.sink.split.i40.i

.preheader30.i46.i:                               ; preds = %bb.nl
  %i.cgx = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i, 0
  br i1 %i.cgx, label %.lr.ph36.i47.i, label %.loopexit.i43.i

.lr.ph36.i47.i:                                   ; preds = %.preheader30.i46.i, %bb.nt
  %.079.i35.i48.i = phi i64 [ %i.cif, %bb.nt ], [ 0, %.preheader30.i46.i ]
  %.2.i34.i49.i = phi i64 [ %i.cie, %bb.nt ], [ %.081.i54.i32.i, %.preheader30.i46.i ] ; 10 uses
  %i.cgy = load ptr, ptr %i.cdy, align 8, !tbaa !66, !noalias !527 ; 2 uses
  %.not.i21.i50.i = icmp eq ptr %i.cgy, null
  br i1 %.not.i21.i50.i, label %bb.nn, label %bb.nm

bb.nm:                                            ; preds = %.lr.ph36.i47.i
  %i.cgz = load i64, ptr %i.cdw, align 8, !tbaa !99, !noalias !527
  %i.cha = add nsw i64 %i.cgz, %.2.i34.i49.i      ; 2 uses
  %i.chb = lshr i64 %i.cha, 3
  %i.chc = getelementptr inbounds nuw i8, ptr %i.cgy, i64 %i.chb
  %i.chd = load i8, ptr %i.chc, align 1, !tbaa !98, !noalias !527
  %i.che = trunc i64 %i.cha to i8
  %i.chf = and i8 %i.che, 7
  %i.chg = lshr i8 %i.chd, %i.chf
  %i.chh = trunc i8 %i.chg to i1
  br i1 %i.chh, label %bb.nr, label %bb.ns

bb.nn:                                            ; preds = %.lr.ph36.i47.i
  %i.chi = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !527
  %i.chj = getelementptr inbounds nuw i8, ptr %i.chi, i64 40
  %i.chk = load i32, ptr %i.chj, align 8, !tbaa !42, !noalias !527
  switch i32 %i.chk, label %bb.nq [
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a

bb.oe:                                            ; preds = %.lr.ph44.i60.i117
  %i.cka = load i64, ptr %i.cdw, align 8, !tbaa !99, !noalias !527
  %i.ckb = add nsw i64 %i.cka, %.4.i42.i62.i119   ; 2 uses
  %i.ckc = lshr i64 %i.ckb, 3
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.cjz, i64 %i.ckc
  %i.cke = load i8, ptr %i.ckd, align 1, !tbaa !98, !noalias !527
  %i.ckf = trunc i64 %i.ckb to i8
  %i.ckg = and i8 %i.ckf, 7
  %i.ckh = lshr i8 %i.cke, %i.ckg
  %i.cki = trunc i8 %i.ckh to i1
  br i1 %i.cki, label %bb.oj, label %bb.oq

bb.of:                                            ; preds = %.lr.ph44.i60.i117
  %i.ckj = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !527
  %i.ckk = getelementptr inbounds nuw i8, ptr %i.ckj, i64 40
  %i.ckl = load i32, ptr %i.ckk, align 8, !tbaa !42, !noalias !527
  switch i32 %i.ckl, label %bb.oi [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i
    i32 28, label %bb.og
    i32 38, label %bb.oh
  ]

bb.og:                                            ; preds = %bb.of
  %i.ckm = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i119), !noalias !527
  br i1 %i.ckm, label %bb.oq, label %bb.oj

bb.oh:                                            ; preds = %bb.of
  %i.ckn = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i119), !noalias !527
  br i1 %i.ckn, label %bb.oq, label %bb.oj

bb.oi:                                            ; preds = %bb.of
  %i.cko = load i64, ptr %i.cfe, align 8, !tbaa !71, !noalias !527
  %i.ckp = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !527
  %.not24.i71.i = icmp eq i64 %i.cko, %i.ckp
  br i1 %.not24.i71.i, label %bb.oq, label %bb.oj

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i:      ; preds = %bb.of
  %i.ckq = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i119), !noalias !527
  br i1 %i.ckq, label %bb.oq, label %bb.oj

bb.oj:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i, %bb.oi, %bb.oh, %bb.og, %bb.oe
  %i.ckr = getelementptr inbounds [2 x i8], ptr %i.ceb, i64 %.4.i42.i62.i119 ; 2 uses
  %i.cks = load i16, ptr %i.ckr, align 2, !tbaa !269, !noalias !527
  %i.ckt = zext i16 %i.cks to i64                 ; 4 uses
  %i.cku = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !527 ; 2 uses
  %.not.i29.i67.i = icmp eq ptr %i.cku, null
  br i1 %.not.i29.i67.i, label %bb.ol, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.ckv = load i64, ptr %i.cff, align 8, !tbaa !99, !noalias !527
  %i.ckw = add nsw i64 %i.ckv, %i.ckt             ; 2 uses
  %i.ckx = lshr i64 %i.ckw, 3
  %i.cky = getelementptr inbounds nuw i8, ptr %i.cku, i64 %i.ckx
  %i.ckz = load i8, ptr %i.cky, align 1, !tbaa !98, !noalias !527
  %i.cla = trunc i64 %i.ckw to i8
  %i.clb = and i8 %i.cla, 7
  %i.clc = lshr i8 %i.ckz, %i.clb
  %i.cld = trunc i8 %i.clc to i1
  br i1 %i.cld, label %bb.op, label %bb.oq

bb.ol:                                            ; preds = %bb.oj
  %i.cle = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !527
  %i.clf = getelementptr inbounds nuw i8, ptr %i.cle, i64 40
  %i.clg = load i32, ptr %i.clf, align 8, !tbaa !42, !noalias !527
  switch i32 %i.clg, label %bb.oo [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i
    i32 28, label %bb.om
    i32 38, label %bb.on
  ]

bb.om:                                            ; preds = %bb.ol
  %i.clh = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ckt), !noalias !527
  br i1 %i.clh, label %bb.oq, label %bb.op

bb.on:                                            ; preds = %bb.ol
  %i.cli = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ckt), !noalias !527
  br i1 %i.cli, label %bb.oq, label %bb.op

bb.oo:                                            ; preds = %bb.ol
  %i.clj = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !527
  %i.clk = load i64, ptr %i.cdu, align 8, !tbaa !62, !noalias !527
  %.not25.i69.i = icmp eq i64 %i.clj, %i.clk
  br i1 %.not25.i69.i, label %bb.oq, label %bb.op

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i:      ; preds = %bb.ol
  %i.cll = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ckt), !noalias !527
  br i1 %i.cll, label %bb.oq, label %bb.op

bb.op:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i, %bb.oo, %bb.on, %bb.om, %bb.ok
  %i.clm = getelementptr inbounds i8, ptr %i.cdt, i64 %.4.i42.i62.i119
  %i.cln = load i16, ptr %i.ckr, align 2, !tbaa !269, !noalias !527
  %i.clo = zext i16 %i.cln to i64
  %i.clp = getelementptr inbounds nuw i8, ptr %i.cds, i64 %i.clo
  %i.clq = load i8, ptr %i.clp, align 1, !noalias !527
  store i8 %i.clq, ptr %i.clm, align 1, !noalias !527
  %i.clr = srem i64 %.4.i42.i62.i119, 8
  %i.cls = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.clr
  %i.clt = load i8, ptr %i.cls, align 1, !tbaa !98, !noalias !527
  %i.clu = sdiv i64 %.4.i42.i62.i119, 8
  %i.clv = getelementptr inbounds i8, ptr %.0.i.i.i29.i, i64 %i.clu ; 2 uses
  %i.clw = load i8, ptr %i.clv, align 1, !tbaa !98, !noalias !527
  %i.clx = or i8 %i.clw, %i.clt
  store i8 %i.clx, ptr %i.clv, align 1, !tbaa !98, !noalias !527
  %i.cly = add nsw i64 %.385.i41.i63.i, 1
  br label %bb.or

bb.oq:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i, %bb.oo, %bb.on, %bb.om, %bb.ok, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i, %bb.oi, %bb.oh, %bb.og, %bb.oe
  %i.clz = getelementptr inbounds i8, ptr %i.cdt, i64 %.4.i42.i62.i119
  store i8 0, ptr %i.clz, align 1, !noalias !527
  br label %bb.or

bb.or:                                            ; preds = %bb.oq, %bb.op
  %.486.i.i65.i = phi i64 [ %i.cly, %bb.op ], [ %.385.i41.i63.i, %bb.oq ] ; 2 uses
  %i.cma = add nsw i64 %.4.i42.i62.i119, 1        ; 2 uses
  %i.cmb = add nuw nsw i64 %.0.i43.i61.i118, 1    ; 2 uses
  %exitcond65.not.i66.i120 = icmp eq i64 %i.cmb, %i.cjx
  br i1 %exitcond65.not.i66.i120, label %.loopexit.i43.i, label %.lr.ph44.i60.i117, !llvm.loop !533

.loopexit.sink.split.i40.i:                       ; preds = %bb.od, %bb.nl
  %.sink85.i41.i = phi i64 [ %i.cgw, %bb.nl ], [ %i.cjx, %bb.od ] ; 2 uses
  %.587.i.ph.i42.i = phi i64 [ %i.cfm, %bb.nl ], [ %.082.i53.i33.i, %bb.od ]
  %i.cmc = getelementptr inbounds i8, ptr %i.cdt, i64 %.081.i54.i32.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.cmc, i8 0, i64 %.sink85.i41.i, i1 false), !noalias !527
  %i.cmd = add nsw i64 %.sink85.i41.i, %.081.i54.i32.i
  br label %.loopexit.i43.i

.loopexit.i43.i.loopexit3144.unr-lcssa:           ; preds = %.lr.ph39.i54.i
  %i.cme = and i16 %.sroa.0.0.extract.trunc.i.i34.i, 3
  %lcmp.mod3550.not = icmp eq i16 %i.cme, 0
  br i1 %lcmp.mod3550.not, label %.loopexit.i43.i, label %.lr.ph39.i54.i.epil.preheader

.lr.ph39.i54.i.epil.preheader:                    ; preds = %.loopexit.i43.i.loopexit3144.unr-lcssa, %.lr.ph39.i54.i.preheader
  %.1.i37.i56.i.epil.init = phi i64 [ %.081.i54.i32.i, %.lr.ph39.i54.i.preheader ], [ %i.cgu, %.loopexit.i43.i.loopexit3144.unr-lcssa ]
  %i.cmf = and i16 %.sroa.0.0.extract.trunc.i.i34.i, 3
  %lcmp.mod3552 = icmp ne i16 %i.cmf, 0
  call void @llvm.assume(i1 %lcmp.mod3552)
  br label %.lr.ph39.i54.i.epil

.lr.ph39.i54.i.epil:                              ; preds = %.lr.ph39.i54.i.epil, %.lr.ph39.i54.i.epil.preheader
  %.1.i37.i56.i.epil = phi i64 [ %i.cmm, %.lr.ph39.i54.i.epil ], [ %.1.i37.i56.i.epil.init, %.lr.ph39.i54.i.epil.preheader ] ; 3 uses
  %epil.iter3549 = phi i64 [ %epil.iter3549.next, %.lr.ph39.i54.i.epil ], [ 0, %.lr.ph39.i54.i.epil.preheader ]
  %i.cmg = getelementptr inbounds i8, ptr %i.cdt, i64 %.1.i37.i56.i.epil
  %i.cmh = getelementptr inbounds [2 x i8], ptr %i.ceb, i64 %.1.i37.i56.i.epil
  %i.cmi = load i16, ptr %i.cmh, align 2, !tbaa !269, !noalias !527
  %i.cmj = zext i16 %i.cmi to i64
  %i.cmk = getelementptr inbounds nuw i8, ptr %i.cds, i64 %i.cmj
  %i.cml = load i8, ptr %i.cmk, align 1, !noalias !527
  store i8 %i.cml, ptr %i.cmg, align 1, !noalias !527
  %i.cmm = add nsw i64 %.1.i37.i56.i.epil, 1      ; 2 uses
  %epil.iter3549.next = add i64 %epil.iter3549, 1 ; 2 uses
  %epil.iter3549.cmp.not = icmp eq i64 %epil.iter3549.next, %xtraiter3548
  br i1 %epil.iter3549.cmp.not, label %.loopexit.i43.i, label %.lr.ph39.i54.i.epil, !llvm.loop !534

.loopexit.i43.i:                                  ; preds = %bb.nt, %.loopexit.i43.i.loopexit3144.unr-lcssa, %.lr.ph39.i54.i.epil, %bb.or, %bb.oc, %.loopexit.sink.split.i40.i, %.preheader27.i59.i116, %.preheader.i72.i, %.preheader30.i46.i, %bb.nk
  %.587.i.i44.i = phi i64 [ %.587.i.ph.i42.i, %.loopexit.sink.split.i40.i ], [ %i.cfm, %bb.nk ], [ %.486.i.i65.i, %bb.or ], [ %i.cfm, %.loopexit.i43.i.loopexit3144.unr-lcssa ], [ %i.cfm, %.preheader30.i46.i ], [ %.082.i53.i33.i, %.preheader.i72.i ], [ %.082.i53.i33.i, %.preheader27.i59.i116 ], [ %.284.i.i78.i, %bb.oc ], [ %i.cfm, %.lr.ph39.i54.i.epil ], [ %i.cfm, %bb.nt ] ; 2 uses
  %.5.i.i45.i = phi i64 [ %i.cmd, %.loopexit.sink.split.i40.i ], [ %.081.i54.i32.i, %bb.nk ], [ %i.cma, %bb.or ], [ %i.cmm, %.lr.ph39.i54.i.epil ], [ %.081.i54.i32.i, %.preheader30.i46.i ], [ %.081.i54.i32.i, %.preheader.i72.i ], [ %.081.i54.i32.i, %.preheader27.i59.i116 ], [ %i.cju, %bb.oc ], [ %i.cgu, %.loopexit.i43.i.loopexit3144.unr-lcssa ], [ %i.cie, %bb.nt ] ; 2 uses
  %i.cmn = icmp slt i64 %.5.i.i45.i, %i.cdv
  br i1 %i.cmn, label %bb.ni, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !535

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i43.i, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i
  %.082.i.lcssa.i30.i = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i ], [ %.587.i.i44.i, %.loopexit.i43.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24, !noalias !527
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i113:                                  ; preds = %.lr.ph.i24.i113, %.lr.ph.i24.i113.preheader.new
  %.0.i1833.i25.i114 = phi i64 [ 0, %.lr.ph.i24.i113.preheader.new ], [ %i.cnp, %.lr.ph.i24.i113 ] ; 6 uses
  %niter3547 = phi i64 [ 0, %.lr.ph.i24.i113.preheader.new ], [ %niter3547.next.3, %.lr.ph.i24.i113 ]
  %i.cmo = getelementptr inbounds nuw i8, ptr %i.cdt, i64 %.0.i1833.i25.i114
  %i.cmp = getelementptr inbounds nuw [2 x i8], ptr %i.ceb, i64 %.0.i1833.i25.i114
  %i.cmq = load i16, ptr %i.cmp, align 2, !tbaa !269, !noalias !527
  %i.cmr = zext i16 %i.cmq to i64
  %i.cms = getelementptr inbounds nuw i8, ptr %i.cds, i64 %i.cmr
  %i.cmt = load i8, ptr %i.cms, align 1, !noalias !527
  store i8 %i.cmt, ptr %i.cmo, align 1, !noalias !527
  %i.cmu = or disjoint i64 %.0.i1833.i25.i114, 1  ; 2 uses
  %i.cmv = getelementptr inbounds nuw i8, ptr %i.cdt, i64 %i.cmu
  %i.cmw = getelementptr inbounds nuw [2 x i8], ptr %i.ceb, i64 %i.cmu
  %i.cmx = load i16, ptr %i.cmw, align 2, !tbaa !269, !noalias !527
  %i.cmy = zext i16 %i.cmx to i64
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cds, i64 %i.cmy
  %i.cna = load i8, ptr %i.cmz, align 1, !noalias !527
  store i8 %i.cna, ptr %i.cmv, align 1, !noalias !527
  %i.cnb = or disjoint i64 %.0.i1833.i25.i114, 2  ; 2 uses
  %i.cnc = getelementptr inbounds nuw i8, ptr %i.cdt, i64 %i.cnb
  %i.cnd = getelementptr inbounds nuw [2 x i8], ptr %i.ceb, i64 %i.cnb
  %i.cne = load i16, ptr %i.cnd, align 2, !tbaa !269, !noalias !527
  %i.cnf = zext i16 %i.cne to i64
  %i.cng = getelementptr inbounds nuw i8, ptr %i.cds, i64 %i.cnf
  %i.cnh = load i8, ptr %i.cng, align 1, !noalias !527
  store i8 %i.cnh, ptr %i.cnc, align 1, !noalias !527
  %i.cni = or disjoint i64 %.0.i1833.i25.i114, 3  ; 2 uses
  %i.cnj = getelementptr inbounds nuw i8, ptr %i.cdt, i64 %i.cni
  %i.cnk = getelementptr inbounds nuw [2 x i8], ptr %i.ceb, i64 %i.cni
  %i.cnl = load i16, ptr %i.cnk, align 2, !tbaa !269, !noalias !527
  %i.cnm = zext i16 %i.cnl to i64
  %i.cnn = getelementptr inbounds nuw i8, ptr %i.cds, i64 %i.cnm
  %i.cno = load i8, ptr %i.cnn, align 1, !noalias !527
  store i8 %i.cno, ptr %i.cnj, align 1, !noalias !527
  %i.cnp = add nuw nsw i64 %.0.i1833.i25.i114, 4  ; 2 uses
  %niter3547.next.3 = add nuw nsw i64 %niter3547, 4 ; 2 uses
  %niter3547.ncmp.3 = icmp eq i64 %niter3547.next.3, %unroll_iter3546
  br i1 %niter3547.ncmp.3, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3150.unr-lcssa, label %.lr.ph.i24.i113, !llvm.loop !536

bb.os:                                            ; preds = %bb.ln
  br i1 %i.btd, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.cnq = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.cnr = load i64, ptr %i.cnq, align 8, !tbaa !71, !noalias !537
  %.not.i19.i83.i = icmp ne i64 %i.cnr, 0
  %i.cns = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.cnt = load ptr, ptr %i.cns, align 8, !noalias !537
  %i.cnu = icmp ne ptr %i.cnt, null
  %i.cnv = select i1 %.not.i19.i83.i, i1 %i.cnu, i1 false
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ot, %bb.os
  %i.cnw = phi i1 [ true, %bb.os ], [ %i.cnv, %bb.ot ]
  %i.cnx = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !537
  %i.cny = extractvalue { i32, ptr } %i.cnx, 1    ; 13 uses
  %i.cnz = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !537 ; 17 uses
  %i.coa = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cob = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !537 ; 10 uses
  %i.coc = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.cod = load i64, ptr %i.coc, align 8, !tbaa !99, !noalias !537
  %i.coe = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.cof = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.cog = load ptr, ptr %i.cof, align 8, !tbaa !66, !noalias !537
  %i.coh = getelementptr inbounds [4 x i8], ptr %i.cog, i64 %i.cod ; 13 uses
  br i1 %i.cnw, label %bb.ov, label %.preheader32.i84.i

.preheader32.i84.i:                               ; preds = %bb.ou
  %i.coi = icmp sgt i64 %i.cob, 0
  br i1 %i.coi, label %.lr.ph.i86.i.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i.preheader:                           ; preds = %.preheader32.i84.i
  %xtraiter3530 = and i64 %i.cob, 3               ; 3 uses
  %i.coj = icmp ult i64 %i.cob, 4
  br i1 %i.coj, label %.lr.ph.i86.i.epil.preheader, label %.lr.ph.i86.i.preheader.new

.lr.ph.i86.i.preheader.new:                       ; preds = %.lr.ph.i86.i.preheader
  %unroll_iter3533 = and i64 %i.cob, 9223372036854775804
  br label %.lr.ph.i86.i

bb.ov:                                            ; preds = %bb.ou
  %i.cok = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.col = load ptr, ptr %i.cok, align 8, !tbaa !171, !noalias !537
  %i.com = load ptr, ptr %i.col, align 8, !tbaa !306, !noalias !537 ; 4 uses
  %.not.i.i.i89.i = icmp eq ptr %i.com, null
  br i1 %.not.i.i.i89.i, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.con = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.coo = load i64, ptr %i.con, align 8, !tbaa !438, !noalias !537
  %i.cop = getelementptr inbounds nuw i8, ptr %i.com, i64 9
  %i.coq = load i8, ptr %i.cop, align 1, !tbaa !439, !range !127, !noalias !537, !noundef !128
  %i.cor = trunc nuw i8 %i.coq to i1
  %i.cos = getelementptr inbounds nuw i8, ptr %i.com, i64 8
  %i.cot = load i8, ptr %i.cos, align 8, !range !127, !noalias !537
  %i.cou = trunc nuw i8 %i.cot to i1
  %i.cov = select i1 %i.cor, i1 %i.cou, i1 false, !prof !117
  %i.cow = getelementptr inbounds nuw i8, ptr %i.com, i64 16
  %i.cox = load ptr, ptr %i.cow, align 8, !noalias !537
  %i.coy = select i1 %i.cov, ptr %i.cox, ptr null, !prof !117
  %i.coz = getelementptr inbounds i8, ptr %i.coy, i64 %i.coo
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i: ; preds = %bb.ow, %bb.ov
  %.0.i.i.i91.i = phi ptr [ %i.coz, %bb.ow ], [ null, %bb.ov ] ; 5 uses
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.cpb = load i64, ptr %i.cpa, align 8, !tbaa !178, !noalias !537 ; 2 uses
  %i.cpc = ashr i64 %i.cpb, 3
  %i.cpd = and i64 %i.cpb, 7
  %i.cpe = icmp ne i64 %i.cpd, 0
  %i.cpf = zext i1 %i.cpe to i64
  %i.cpg = add nsw i64 %i.cpc, %i.cpf
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i91.i, i8 0, i64 %i.cpg, i1 false), !noalias !537
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24, !noalias !537
  %i.cph = load ptr, ptr %i.coe, align 8, !tbaa !66, !noalias !537
  %i.cpi = load i64, ptr %i.coc, align 8, !tbaa !99, !noalias !537
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef %i.cph, i64 noundef %i.cpi, i64 noundef %i.cob), !noalias !537
  %i.cpj = icmp sgt i64 %i.cob, 0
  br i1 %i.cpj, label %.lr.ph55.i93.i, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i93.i:                                   ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i
  %i.cpk = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.cpl = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.ox

bb.ox:                                            ; preds = %.loopexit.i105.i103, %.lr.ph55.i93.i
  %.081.i54.i94.i = phi i64 [ 0, %.lr.ph55.i93.i ], [ %.5.i.i107.i104, %.loopexit.i105.i103 ] ; 12 uses
  %.082.i53.i95.i = phi i64 [ 0, %.lr.ph55.i93.i ], [ %.587.i.i106.i, %.loopexit.i105.i103 ] ; 6 uses
  %i.cpm = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %29), !noalias !537 ; 6 uses
  %.sroa.0.0.extract.trunc.i.i96.i = trunc i32 %i.cpm to i16 ; 11 uses
  %i.cpn = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !537
  %.not.i20.i97.i = icmp ne i64 %i.cpn, 0
  %i.cpo = load ptr, ptr %i.v, align 8, !noalias !537
  %i.cpp = icmp ne ptr %i.cpo, null
  %i.cpq = select i1 %.not.i20.i97.i, i1 %i.cpp, i1 false
  br i1 %i.cpq, label %bb.pj, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %.sroa.14.0.extract.shift.i.i98.i = lshr i32 %i.cpm, 16
  %.sroa.14.0.extract.trunc.i.i99.i = zext nneg i32 %.sroa.14.0.extract.shift.i.i98.i to i64
  %sext91.i.i100.i = shl nuw i64 %.sroa.14.0.extract.trunc.i.i99.i, 48
  %i.cpr = ashr exact i64 %sext91.i.i100.i, 48
  %i.cps = add nsw i64 %i.cpr, %.082.i53.i95.i    ; 6 uses
  %i.cpt = ashr i32 %i.cpm, 16                    ; 2 uses
  %sext.i.i101.i = shl i32 %i.cpm, 16
  %i.cpu = ashr exact i32 %sext.i.i101.i, 16
  %i.cpv = icmp eq i32 %i.cpt, %i.cpu
  br i1 %i.cpv, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  %i.cpw = sext i16 %.sroa.0.0.extract.trunc.i.i96.i to i64 ; 3 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i91.i, i64 noundef %.081.i54.i94.i, i64 noundef %i.cpw, i1 noundef zeroext true), !noalias !537
  %i.cpx = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i, 0
  br i1 %i.cpx, label %.lr.ph39.i116.i.preheader, label %.loopexit.i105.i103

.lr.ph39.i116.i.preheader:                        ; preds = %bb.oz
  %xtraiter3535 = and i64 %i.cpw, 3
  %i.cpy = icmp ult i16 %.sroa.0.0.extract.trunc.i.i96.i, 4
  br i1 %i.cpy, label %.lr.ph39.i116.i.epil.preheader, label %.lr.ph39.i116.i.preheader.new

.lr.ph39.i116.i.preheader.new:                    ; preds = %.lr.ph39.i116.i.preheader
  %unroll_iter3540 = and i64 %i.cpw, 32764
  br label %.lr.ph39.i116.i

.lr.ph39.i116.i:                                  ; preds = %.lr.ph39.i116.i, %.lr.ph39.i116.i.preheader.new
  %.1.i37.i118.i = phi i64 [ %.081.i54.i94.i, %.lr.ph39.i116.i.preheader.new ], [ %i.cra, %.lr.ph39.i116.i ] ; 6 uses
  %niter3541 = phi i64 [ 0, %.lr.ph39.i116.i.preheader.new ], [ %niter3541.next.3, %.lr.ph39.i116.i ]
  %i.cpz = getelementptr inbounds i8, ptr %i.cnz, i64 %.1.i37.i118.i
  %i.cqa = getelementptr inbounds [4 x i8], ptr %i.coh, i64 %.1.i37.i118.i
  %i.cqb = load i32, ptr %i.cqa, align 4, !tbaa !3, !noalias !537
  %i.cqc = zext i32 %i.cqb to i64
  %i.cqd = getelementptr inbounds nuw i8, ptr %i.cny, i64 %i.cqc
  %i.cqe = load i8, ptr %i.cqd, align 1, !noalias !537
  store i8 %i.cqe, ptr %i.cpz, align 1, !noalias !537
  %i.cqf = add nsw i64 %.1.i37.i118.i, 1          ; 2 uses
  %i.cqg = getelementptr inbounds i8, ptr %i.cnz, i64 %i.cqf
  %i.cqh = getelementptr inbounds [4 x i8], ptr %i.coh, i64 %i.cqf
  %i.cqi = load i32, ptr %i.cqh, align 4, !tbaa !3, !noalias !537
  %i.cqj = zext i32 %i.cqi to i64
  %i.cqk = getelementptr inbounds nuw i8, ptr %i.cny, i64 %i.cqj
  %i.cql = load i8, ptr %i.cqk, align 1, !noalias !537
  store i8 %i.cql, ptr %i.cqg, align 1, !noalias !537
  %i.cqm = add nsw i64 %.1.i37.i118.i, 2          ; 2 uses
  %i.cqn = getelementptr inbounds i8, ptr %i.cnz, i64 %i.cqm
  %i.cqo = getelementptr inbounds [4 x i8], ptr %i.coh, i64 %i.cqm
  %i.cqp = load i32, ptr %i.cqo, align 4, !tbaa !3, !noalias !537
  %i.cqq = zext i32 %i.cqp to i64
  %i.cqr = getelementptr inbounds nuw i8, ptr %i.cny, i64 %i.cqq
  %i.cqs = load i8, ptr %i.cqr, align 1, !noalias !537
  store i8 %i.cqs, ptr %i.cqn, align 1, !noalias !537
  %i.cqt = add nsw i64 %.1.i37.i118.i, 3          ; 2 uses
  %i.cqu = getelementptr inbounds i8, ptr %i.cnz, i64 %i.cqt
  %i.cqv = getelementptr inbounds [4 x i8], ptr %i.coh, i64 %i.cqt
  %i.cqw = load i32, ptr %i.cqv, align 4, !tbaa !3, !noalias !537
  %i.cqx = zext i32 %i.cqw to i64
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.cny, i64 %i.cqx
  %i.cqz = load i8, ptr %i.cqy, align 1, !noalias !537
  store i8 %i.cqz, ptr %i.cqu, align 1, !noalias !537
  %i.cra = add nsw i64 %.1.i37.i118.i, 4          ; 3 uses
  %niter3541.next.3 = add i64 %niter3541, 4       ; 2 uses
  %niter3541.ncmp.3 = icmp eq i64 %niter3541.next.3, %unroll_iter3540
  br i1 %niter3541.ncmp.3, label %.loopexit.i105.i103.loopexit3152.unr-lcssa, label %.lr.ph39.i116.i, !llvm.loop !540

bb.pa:                                            ; preds = %bb.oy
  %i.crb = icmp sgt i32 %i.cpt, 0
  %i.crc = sext i16 %.sroa.0.0.extract.trunc.i.i96.i to i64 ; 2 uses
  br i1 %i.crb, label %.preheader30.i108.i105, label %.loopexit.sink.split.i102.i

.preheader30.i108.i105:                           ; preds = %bb.pa
  %i.crd = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i, 0
  br i1 %i.crd, label %.lr.ph36.i109.i106, label %.loopexit.i105.i103

.lr.ph36.i109.i106:                               ; preds = %.preheader30.i108.i105, %bb.pi
  %.079.i35.i110.i = phi i64 [ %i.csl, %bb.pi ], [ 0, %.preheader30.i108.i105 ]
  %.2.i34.i111.i107 = phi i64 [ %i.csk, %bb.pi ], [ %.081.i54.i94.i, %.preheader30.i108.i105 ] ; 10 uses
  %i.cre = load ptr, ptr %i.coe, align 8, !tbaa !66, !noalias !537 ; 2 uses
  %.not.i21.i112.i108 = icmp eq ptr %i.cre, null
  br i1 %.not.i21.i112.i108, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %.lr.ph36.i109.i106
  %i.crf = load i64, ptr %i.coc, align 8, !tbaa !99, !noalias !537
  %i.crg = add nsw i64 %i.crf, %.2.i34.i111.i107  ; 2 uses
  %i.crh = lshr i64 %i.crg, 3
  %i.cri = getelementptr inbounds nuw i8, ptr %i.cre, i64 %i.crh
  %i.crj = load i8, ptr %i.cri, align 1, !tbaa !98, !noalias !537
  %i.crk = trunc i64 %i.crg to i8
  %i.crl = and i8 %i.crk, 7
  %i.crm = lshr i8 %i.crj, %i.crl
  %i.crn = trunc i8 %i.crm to i1
  br i1 %i.crn, label %bb.pg, label %bb.ph

bb.pc:                                            ; preds = %.lr.ph36.i109.i106
  %i.cro = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !537
  %i.crp = getelementptr inbounds nuw i8, ptr %i.cro, i64 40
  %i.crq = load i32, ptr %i.crp, align 8, !tbaa !42, !noalias !537
  switch i32 %i.crq, label %bb.pf [
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a

bb.pt:                                            ; preds = %.lr.ph44.i122.i
  %i.cug = load i64, ptr %i.coc, align 8, !tbaa !99, !noalias !537
  %i.cuh = add nsw i64 %i.cug, %.4.i42.i124.i     ; 2 uses
  %i.cui = lshr i64 %i.cuh, 3
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.cuf, i64 %i.cui
  %i.cuk = load i8, ptr %i.cuj, align 1, !tbaa !98, !noalias !537
  %i.cul = trunc i64 %i.cuh to i8
  %i.cum = and i8 %i.cul, 7
  %i.cun = lshr i8 %i.cuk, %i.cum
  %i.cuo = trunc i8 %i.cun to i1
  br i1 %i.cuo, label %bb.py, label %bb.qf

bb.pu:                                            ; preds = %.lr.ph44.i122.i
  %i.cup = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !537
  %i.cuq = getelementptr inbounds nuw i8, ptr %i.cup, i64 40
  %i.cur = load i32, ptr %i.cuq, align 8, !tbaa !42, !noalias !537
  switch i32 %i.cur, label %bb.px [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i
    i32 28, label %bb.pv
    i32 38, label %bb.pw
  ]

bb.pv:                                            ; preds = %bb.pu
  %i.cus = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i), !noalias !537
  br i1 %i.cus, label %bb.qf, label %bb.py

bb.pw:                                            ; preds = %bb.pu
  %i.cut = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i), !noalias !537
  br i1 %i.cut, label %bb.qf, label %bb.py

bb.px:                                            ; preds = %bb.pu
  %i.cuu = load i64, ptr %i.cpk, align 8, !tbaa !71, !noalias !537
  %i.cuv = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !537
  %.not24.i133.i = icmp eq i64 %i.cuu, %i.cuv
  br i1 %.not24.i133.i, label %bb.qf, label %bb.py

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i:     ; preds = %bb.pu
  %i.cuw = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i), !noalias !537
  br i1 %i.cuw, label %bb.qf, label %bb.py

bb.py:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i, %bb.px, %bb.pw, %bb.pv, %bb.pt
  %i.cux = getelementptr inbounds [4 x i8], ptr %i.coh, i64 %.4.i42.i124.i ; 2 uses
  %i.cuy = load i32, ptr %i.cux, align 4, !tbaa !3, !noalias !537
  %i.cuz = zext i32 %i.cuy to i64                 ; 4 uses
  %i.cva = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !537 ; 2 uses
  %.not.i29.i129.i = icmp eq ptr %i.cva, null
  br i1 %.not.i29.i129.i, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.cvb = load i64, ptr %i.cpl, align 8, !tbaa !99, !noalias !537
  %i.cvc = add nsw i64 %i.cvb, %i.cuz             ; 2 uses
  %i.cvd = lshr i64 %i.cvc, 3
  %i.cve = getelementptr inbounds nuw i8, ptr %i.cva, i64 %i.cvd
  %i.cvf = load i8, ptr %i.cve, align 1, !tbaa !98, !noalias !537
  %i.cvg = trunc i64 %i.cvc to i8
  %i.cvh = and i8 %i.cvg, 7
  %i.cvi = lshr i8 %i.cvf, %i.cvh
  %i.cvj = trunc i8 %i.cvi to i1
  br i1 %i.cvj, label %bb.qe, label %bb.qf

bb.qa:                                            ; preds = %bb.py
  %i.cvk = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !537
  %i.cvl = getelementptr inbounds nuw i8, ptr %i.cvk, i64 40
  %i.cvm = load i32, ptr %i.cvl, align 8, !tbaa !42, !noalias !537
  switch i32 %i.cvm, label %bb.qd [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i
    i32 28, label %bb.qb
    i32 38, label %bb.qc
  ]

bb.qb:                                            ; preds = %bb.qa
  %i.cvn = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.cuz), !noalias !537
  br i1 %i.cvn, label %bb.qf, label %bb.qe

bb.qc:                                            ; preds = %bb.qa
  %i.cvo = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.cuz), !noalias !537
  br i1 %i.cvo, label %bb.qf, label %bb.qe

bb.qd:                                            ; preds = %bb.qa
  %i.cvp = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !537
  %i.cvq = load i64, ptr %i.coa, align 8, !tbaa !62, !noalias !537
  %.not25.i131.i = icmp eq i64 %i.cvp, %i.cvq
  br i1 %.not25.i131.i, label %bb.qf, label %bb.qe

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i:     ; preds = %bb.qa
  %i.cvr = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.cuz), !noalias !537
  br i1 %i.cvr, label %bb.qf, label %bb.qe

bb.qe:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i, %bb.qd, %bb.qc, %bb.qb, %bb.pz
  %i.cvs = getelementptr inbounds i8, ptr %i.cnz, i64 %.4.i42.i124.i
  %i.cvt = load i32, ptr %i.cux, align 4, !tbaa !3, !noalias !537
  %i.cvu = zext i32 %i.cvt to i64
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.cny, i64 %i.cvu
  %i.cvw = load i8, ptr %i.cvv, align 1, !noalias !537
  store i8 %i.cvw, ptr %i.cvs, align 1, !noalias !537
  %i.cvx = srem i64 %.4.i42.i124.i, 8
  %i.cvy = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.cvx
  %i.cvz = load i8, ptr %i.cvy, align 1, !tbaa !98, !noalias !537
  %i.cwa = sdiv i64 %.4.i42.i124.i, 8
  %i.cwb = getelementptr inbounds i8, ptr %.0.i.i.i91.i, i64 %i.cwa ; 2 uses
  %i.cwc = load i8, ptr %i.cwb, align 1, !tbaa !98, !noalias !537
  %i.cwd = or i8 %i.cwc, %i.cvz
  store i8 %i.cwd, ptr %i.cwb, align 1, !tbaa !98, !noalias !537
  %i.cwe = add nsw i64 %.385.i41.i125.i, 1
  br label %bb.qg

bb.qf:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i, %bb.qd, %bb.qc, %bb.qb, %bb.pz, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i, %bb.px, %bb.pw, %bb.pv, %bb.pt
  %i.cwf = getelementptr inbounds i8, ptr %i.cnz, i64 %.4.i42.i124.i
  store i8 0, ptr %i.cwf, align 1, !noalias !537
  br label %bb.qg

bb.qg:                                            ; preds = %bb.qf, %bb.qe
  %.486.i.i127.i = phi i64 [ %i.cwe, %bb.qe ], [ %.385.i41.i125.i, %bb.qf ] ; 2 uses
  %i.cwg = add nsw i64 %.4.i42.i124.i, 1          ; 2 uses
  %i.cwh = add nuw nsw i64 %.0.i43.i123.i, 1      ; 2 uses
  %exitcond65.not.i128.i = icmp eq i64 %i.cwh, %i.cud
  br i1 %exitcond65.not.i128.i, label %.loopexit.i105.i103, label %.lr.ph44.i122.i, !llvm.loop !543

.loopexit.sink.split.i102.i:                      ; preds = %bb.ps, %bb.pa
  %.sink85.i103.i = phi i64 [ %i.crc, %bb.pa ], [ %i.cud, %bb.ps ] ; 2 uses
  %.587.i.ph.i104.i = phi i64 [ %i.cps, %bb.pa ], [ %.082.i53.i95.i, %bb.ps ]
  %i.cwi = getelementptr inbounds i8, ptr %i.cnz, i64 %.081.i54.i94.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.cwi, i8 0, i64 %.sink85.i103.i, i1 false), !noalias !537
  %i.cwj = add nsw i64 %.sink85.i103.i, %.081.i54.i94.i
  br label %.loopexit.i105.i103

.loopexit.i105.i103.loopexit3152.unr-lcssa:       ; preds = %.lr.ph39.i116.i
  %i.cwk = and i16 %.sroa.0.0.extract.trunc.i.i96.i, 3
  %lcmp.mod3537.not = icmp eq i16 %i.cwk, 0
  br i1 %lcmp.mod3537.not, label %.loopexit.i105.i103, label %.lr.ph39.i116.i.epil.preheader

.lr.ph39.i116.i.epil.preheader:                   ; preds = %.loopexit.i105.i103.loopexit3152.unr-lcssa, %.lr.ph39.i116.i.preheader
  %.1.i37.i118.i.epil.init = phi i64 [ %.081.i54.i94.i, %.lr.ph39.i116.i.preheader ], [ %i.cra, %.loopexit.i105.i103.loopexit3152.unr-lcssa ]
  %i.cwl = and i16 %.sroa.0.0.extract.trunc.i.i96.i, 3
  %lcmp.mod3539 = icmp ne i16 %i.cwl, 0
  call void @llvm.assume(i1 %lcmp.mod3539)
  br label %.lr.ph39.i116.i.epil

.lr.ph39.i116.i.epil:                             ; preds = %.lr.ph39.i116.i.epil, %.lr.ph39.i116.i.epil.preheader
  %.1.i37.i118.i.epil = phi i64 [ %i.cws, %.lr.ph39.i116.i.epil ], [ %.1.i37.i118.i.epil.init, %.lr.ph39.i116.i.epil.preheader ] ; 3 uses
  %epil.iter3536 = phi i64 [ %epil.iter3536.next, %.lr.ph39.i116.i.epil ], [ 0, %.lr.ph39.i116.i.epil.preheader ]
  %i.cwm = getelementptr inbounds i8, ptr %i.cnz, i64 %.1.i37.i118.i.epil
  %i.cwn = getelementptr inbounds [4 x i8], ptr %i.coh, i64 %.1.i37.i118.i.epil
  %i.cwo = load i32, ptr %i.cwn, align 4, !tbaa !3, !noalias !537
  %i.cwp = zext i32 %i.cwo to i64
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.cny, i64 %i.cwp
  %i.cwr = load i8, ptr %i.cwq, align 1, !noalias !537
  store i8 %i.cwr, ptr %i.cwm, align 1, !noalias !537
  %i.cws = add nsw i64 %.1.i37.i118.i.epil, 1     ; 2 uses
  %epil.iter3536.next = add i64 %epil.iter3536, 1 ; 2 uses
  %epil.iter3536.cmp.not = icmp eq i64 %epil.iter3536.next, %xtraiter3535
  br i1 %epil.iter3536.cmp.not, label %.loopexit.i105.i103, label %.lr.ph39.i116.i.epil, !llvm.loop !544

.loopexit.i105.i103:                              ; preds = %bb.pi, %.loopexit.i105.i103.loopexit3152.unr-lcssa, %.lr.ph39.i116.i.epil, %bb.qg, %bb.pr, %.loopexit.sink.split.i102.i, %.preheader27.i121.i, %.preheader.i134.i, %.preheader30.i108.i105, %bb.oz
  %.587.i.i106.i = phi i64 [ %.587.i.ph.i104.i, %.loopexit.sink.split.i102.i ], [ %i.cps, %bb.oz ], [ %.486.i.i127.i, %bb.qg ], [ %i.cps, %.loopexit.i105.i103.loopexit3152.unr-lcssa ], [ %i.cps, %.preheader30.i108.i105 ], [ %.082.i53.i95.i, %.preheader.i134.i ], [ %.082.i53.i95.i, %.preheader27.i121.i ], [ %.284.i.i140.i, %bb.pr ], [ %i.cps, %.lr.ph39.i116.i.epil ], [ %i.cps, %bb.pi ] ; 2 uses
  %.5.i.i107.i104 = phi i64 [ %i.cwj, %.loopexit.sink.split.i102.i ], [ %.081.i54.i94.i, %bb.oz ], [ %i.cwg, %bb.qg ], [ %i.cws, %.lr.ph39.i116.i.epil ], [ %.081.i54.i94.i, %.preheader30.i108.i105 ], [ %.081.i54.i94.i, %.preheader.i134.i ], [ %.081.i54.i94.i, %.preheader27.i121.i ], [ %i.cua, %bb.pr ], [ %i.cra, %.loopexit.i105.i103.loopexit3152.unr-lcssa ], [ %i.csk, %bb.pi ] ; 2 uses
  %i.cwt = icmp slt i64 %.5.i.i107.i104, %i.cob
  br i1 %i.cwt, label %bb.ox, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !545

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i105.i103, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i
  %.082.i.lcssa.i92.i = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i ], [ %.587.i.i106.i, %.loopexit.i105.i103 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24, !noalias !537
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i:                                     ; preds = %.lr.ph.i86.i, %.lr.ph.i86.i.preheader.new
  %.0.i1833.i87.i = phi i64 [ 0, %.lr.ph.i86.i.preheader.new ], [ %i.cxv, %.lr.ph.i86.i ] ; 6 uses
  %niter3534 = phi i64 [ 0, %.lr.ph.i86.i.preheader.new ], [ %niter3534.next.3, %.lr.ph.i86.i ]
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.0.i1833.i87.i
  %i.cwv = getelementptr inbounds nuw [4 x i8], ptr %i.coh, i64 %.0.i1833.i87.i
  %i.cww = load i32, ptr %i.cwv, align 4, !tbaa !3, !noalias !537
  %i.cwx = zext i32 %i.cww to i64
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.cny, i64 %i.cwx
  %i.cwz = load i8, ptr %i.cwy, align 1, !noalias !537
  store i8 %i.cwz, ptr %i.cwu, align 1, !noalias !537
  %i.cxa = or disjoint i64 %.0.i1833.i87.i, 1     ; 2 uses
  %i.cxb = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %i.cxa
  %i.cxc = getelementptr inbounds nuw [4 x i8], ptr %i.coh, i64 %i.cxa
  %i.cxd = load i32, ptr %i.cxc, align 4, !tbaa !3, !noalias !537
  %i.cxe = zext i32 %i.cxd to i64
  %i.cxf = getelementptr inbounds nuw i8, ptr %i.cny, i64 %i.cxe
  %i.cxg = load i8, ptr %i.cxf, align 1, !noalias !537
  store i8 %i.cxg, ptr %i.cxb, align 1, !noalias !537
  %i.cxh = or disjoint i64 %.0.i1833.i87.i, 2     ; 2 uses
  %i.cxi = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %i.cxh
  %i.cxj = getelementptr inbounds nuw [4 x i8], ptr %i.coh, i64 %i.cxh
  %i.cxk = load i32, ptr %i.cxj, align 4, !tbaa !3, !noalias !537
  %i.cxl = zext i32 %i.cxk to i64
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.cny, i64 %i.cxl
  %i.cxn = load i8, ptr %i.cxm, align 1, !noalias !537
  store i8 %i.cxn, ptr %i.cxi, align 1, !noalias !537
  %i.cxo = or disjoint i64 %.0.i1833.i87.i, 3     ; 2 uses
  %i.cxp = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %i.cxo
  %i.cxq = getelementptr inbounds nuw [4 x i8], ptr %i.coh, i64 %i.cxo
  %i.cxr = load i32, ptr %i.cxq, align 4, !tbaa !3, !noalias !537
  %i.cxs = zext i32 %i.cxr to i64
  %i.cxt = getelementptr inbounds nuw i8, ptr %i.cny, i64 %i.cxs
  %i.cxu = load i8, ptr %i.cxt, align 1, !noalias !537
  store i8 %i.cxu, ptr %i.cxp, align 1, !noalias !537
  %i.cxv = add nuw nsw i64 %.0.i1833.i87.i, 4     ; 2 uses
  %niter3534.next.3 = add nuw nsw i64 %niter3534, 4 ; 2 uses
  %niter3534.ncmp.3 = icmp eq i64 %niter3534.next.3, %unroll_iter3533
  br i1 %niter3534.ncmp.3, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3158.unr-lcssa, label %.lr.ph.i86.i, !llvm.loop !546

bb.qh:                                            ; preds = %bb.ln
  br i1 %i.btd, label %bb.qj, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.cxx = load i64, ptr %i.cxw, align 8, !tbaa !71, !noalias !547
  %.not.i19.i145.i = icmp ne i64 %i.cxx, 0
  %i.cxy = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.cxz = load ptr, ptr %i.cxy, align 8, !noalias !547
  %i.cya = icmp ne ptr %i.cxz, null
  %i.cyb = select i1 %.not.i19.i145.i, i1 %i.cya, i1 false
  br label %bb.qj

bb.qj:                                            ; preds = %bb.qi, %bb.qh
  %i.cyc = phi i1 [ true, %bb.qh ], [ %i.cyb, %bb.qi ]
  %i.cyd = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !547
  %i.cye = extractvalue { i32, ptr } %i.cyd, 1    ; 13 uses
  %i.cyf = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !547 ; 17 uses
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cyh = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !547 ; 10 uses
  %i.cyi = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.cyj = load i64, ptr %i.cyi, align 8, !tbaa !99, !noalias !547
  %i.cyk = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.cym = load ptr, ptr %i.cyl, align 8, !tbaa !66, !noalias !547
  %i.cyn = getelementptr inbounds [8 x i8], ptr %i.cym, i64 %i.cyj ; 13 uses
  br i1 %i.cyc, label %bb.qk, label %.preheader32.i146.i

.preheader32.i146.i:                              ; preds = %bb.qj
  %i.cyo = icmp sgt i64 %i.cyh, 0
  br i1 %i.cyo, label %.lr.ph.i148.i.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i.preheader:                          ; preds = %.preheader32.i146.i
  %xtraiter3568 = and i64 %i.cyh, 3               ; 3 uses
  %i.cyp = icmp ult i64 %i.cyh, 4
  br i1 %i.cyp, label %.lr.ph.i148.i.epil.preheader, label %.lr.ph.i148.i.preheader.new

.lr.ph.i148.i.preheader.new:                      ; preds = %.lr.ph.i148.i.preheader
  %unroll_iter3572 = and i64 %i.cyh, 9223372036854775804
  br label %.lr.ph.i148.i

bb.qk:                                            ; preds = %bb.qj
  %i.cyq = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.cyr = load ptr, ptr %i.cyq, align 8, !tbaa !171, !noalias !547
  %i.cys = load ptr, ptr %i.cyr, align 8, !tbaa !306, !noalias !547 ; 4 uses
  %.not.i.i.i151.i = icmp eq ptr %i.cys, null
  br i1 %.not.i.i.i151.i, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.cyt = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.cyu = load i64, ptr %i.cyt, align 8, !tbaa !438, !noalias !547
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.cys, i64 9
  %i.cyw = load i8, ptr %i.cyv, align 1, !tbaa !439, !range !127, !noalias !547, !noundef !128
  %i.cyx = trunc nuw i8 %i.cyw to i1
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.cys, i64 8
  %i.cyz = load i8, ptr %i.cyy, align 8, !range !127, !noalias !547
  %i.cza = trunc nuw i8 %i.cyz to i1
  %i.czb = select i1 %i.cyx, i1 %i.cza, i1 false, !prof !117
  %i.czc = getelementptr inbounds nuw i8, ptr %i.cys, i64 16
  %i.czd = load ptr, ptr %i.czc, align 8, !noalias !547
  %i.cze = select i1 %i.czb, ptr %i.czd, ptr null, !prof !117
  %i.czf = getelementptr inbounds i8, ptr %i.cze, i64 %i.cyu
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i: ; preds = %bb.ql, %bb.qk
  %.0.i.i.i153.i = phi ptr [ %i.czf, %bb.ql ], [ null, %bb.qk ] ; 5 uses
  %i.czg = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.czh = load i64, ptr %i.czg, align 8, !tbaa !178, !noalias !547 ; 2 uses
  %i.czi = ashr i64 %i.czh, 3
  %i.czj = and i64 %i.czh, 7
  %i.czk = icmp ne i64 %i.czj, 0
  %i.czl = zext i1 %i.czk to i64
  %i.czm = add nsw i64 %i.czi, %i.czl
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i153.i, i8 0, i64 %i.czm, i1 false), !noalias !547
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24, !noalias !547
  %i.czn = load ptr, ptr %i.cyk, align 8, !tbaa !66, !noalias !547
  %i.czo = load i64, ptr %i.cyi, align 8, !tbaa !99, !noalias !547
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef %i.czn, i64 noundef %i.czo, i64 noundef %i.cyh), !noalias !547
  %i.czp = icmp sgt i64 %i.cyh, 0
  br i1 %i.czp, label %.lr.ph55.i155.i, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i155.i:                                  ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i
  %i.czq = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.czr = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.qm

bb.qm:                                            ; preds = %.loopexit.i167.i, %.lr.ph55.i155.i
  %.081.i54.i156.i = phi i64 [ 0, %.lr.ph55.i155.i ], [ %.5.i.i169.i, %.loopexit.i167.i ] ; 12 uses
  %.082.i53.i157.i = phi i64 [ 0, %.lr.ph55.i155.i ], [ %.587.i.i168.i, %.loopexit.i167.i ] ; 6 uses
  %i.czs = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %28), !noalias !547 ; 6 uses
  %.sroa.0.0.extract.trunc.i.i158.i = trunc i32 %i.czs to i16 ; 11 uses
  %i.czt = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !547
  %.not.i20.i159.i = icmp ne i64 %i.czt, 0
  %i.czu = load ptr, ptr %i.v, align 8, !noalias !547
  %i.czv = icmp ne ptr %i.czu, null
  %i.czw = select i1 %.not.i20.i159.i, i1 %i.czv, i1 false
  br i1 %i.czw, label %bb.qy, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %.sroa.14.0.extract.shift.i.i160.i = lshr i32 %i.czs, 16
  %.sroa.14.0.extract.trunc.i.i161.i = zext nneg i32 %.sroa.14.0.extract.shift.i.i160.i to i64
  %sext91.i.i162.i = shl nuw i64 %.sroa.14.0.extract.trunc.i.i161.i, 48
  %i.czx = ashr exact i64 %sext91.i.i162.i, 48
  %i.czy = add nsw i64 %i.czx, %.082.i53.i157.i   ; 6 uses
  %i.czz = ashr i32 %i.czs, 16                    ; 2 uses
  %sext.i.i163.i = shl i32 %i.czs, 16
  %i.daa = ashr exact i32 %sext.i.i163.i, 16
  %i.dab = icmp eq i32 %i.czz, %i.daa
  br i1 %i.dab, label %bb.qo, label %bb.qp

bb.qo:                                            ; preds = %bb.qn
  %i.dac = sext i16 %.sroa.0.0.extract.trunc.i.i158.i to i64 ; 3 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i153.i, i64 noundef %.081.i54.i156.i, i64 noundef %i.dac, i1 noundef zeroext true), !noalias !547
  %i.dad = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i, 0
  br i1 %i.dad, label %.lr.ph39.i178.i.preheader, label %.loopexit.i167.i

.lr.ph39.i178.i.preheader:                        ; preds = %bb.qo
  %xtraiter3574 = and i64 %i.dac, 3
  %i.dae = icmp ult i16 %.sroa.0.0.extract.trunc.i.i158.i, 4
  br i1 %i.dae, label %.lr.ph39.i178.i.epil.preheader, label %.lr.ph39.i178.i.preheader.new

.lr.ph39.i178.i.preheader.new:                    ; preds = %.lr.ph39.i178.i.preheader
  %unroll_iter3579 = and i64 %i.dac, 32764
  br label %.lr.ph39.i178.i

.lr.ph39.i178.i:                                  ; preds = %.lr.ph39.i178.i, %.lr.ph39.i178.i.preheader.new
  %.1.i37.i180.i = phi i64 [ %.081.i54.i156.i, %.lr.ph39.i178.i.preheader.new ], [ %i.dbc, %.lr.ph39.i178.i ] ; 6 uses
  %niter3580 = phi i64 [ 0, %.lr.ph39.i178.i.preheader.new ], [ %niter3580.next.3, %.lr.ph39.i178.i ]
  %i.daf = getelementptr inbounds i8, ptr %i.cyf, i64 %.1.i37.i180.i
  %i.dag = getelementptr inbounds [8 x i8], ptr %i.cyn, i64 %.1.i37.i180.i
  %i.dah = load i64, ptr %i.dag, align 8, !tbaa !130, !noalias !547
  %i.dai = getelementptr inbounds nuw i8, ptr %i.cye, i64 %i.dah
  %i.daj = load i8, ptr %i.dai, align 1, !noalias !547
  store i8 %i.daj, ptr %i.daf, align 1, !noalias !547
  %i.dak = add nsw i64 %.1.i37.i180.i, 1          ; 2 uses
  %i.dal = getelementptr inbounds i8, ptr %i.cyf, i64 %i.dak
  %i.dam = getelementptr inbounds [8 x i8], ptr %i.cyn, i64 %i.dak
  %i.dan = load i64, ptr %i.dam, align 8, !tbaa !130, !noalias !547
  %i.dao = getelementptr inbounds nuw i8, ptr %i.cye, i64 %i.dan
  %i.dap = load i8, ptr %i.dao, align 1, !noalias !547
  store i8 %i.dap, ptr %i.dal, align 1, !noalias !547
  %i.daq = add nsw i64 %.1.i37.i180.i, 2          ; 2 uses
  %i.dar = getelementptr inbounds i8, ptr %i.cyf, i64 %i.daq
  %i.das = getelementptr inbounds [8 x i8], ptr %i.cyn, i64 %i.daq
  %i.dat = load i64, ptr %i.das, align 8, !tbaa !130, !noalias !547
  %i.dau = getelementptr inbounds nuw i8, ptr %i.cye, i64 %i.dat
  %i.dav = load i8, ptr %i.dau, align 1, !noalias !547
  store i8 %i.dav, ptr %i.dar, align 1, !noalias !547
  %i.daw = add nsw i64 %.1.i37.i180.i, 3          ; 2 uses
  %i.dax = getelementptr inbounds i8, ptr %i.cyf, i64 %i.daw
  %i.day = getelementptr inbounds [8 x i8], ptr %i.cyn, i64 %i.daw
  %i.daz = load i64, ptr %i.day, align 8, !tbaa !130, !noalias !547
  %i.dba = getelementptr inbounds nuw i8, ptr %i.cye, i64 %i.daz
  %i.dbb = load i8, ptr %i.dba, align 1, !noalias !547
  store i8 %i.dbb, ptr %i.dax, align 1, !noalias !547
  %i.dbc = add nsw i64 %.1.i37.i180.i, 4          ; 3 uses
  %niter3580.next.3 = add i64 %niter3580, 4       ; 2 uses
  %niter3580.ncmp.3 = icmp eq i64 %niter3580.next.3, %unroll_iter3579
  br i1 %niter3580.ncmp.3, label %.loopexit.i167.i.loopexit3129.unr-lcssa, label %.lr.ph39.i178.i, !llvm.loop !550

bb.qp:                                            ; preds = %bb.qn
  %i.dbd = icmp sgt i32 %i.czz, 0
  %i.dbe = sext i16 %.sroa.0.0.extract.trunc.i.i158.i to i64 ; 2 uses
  br i1 %i.dbd, label %.preheader30.i170.i, label %.loopexit.sink.split.i164.i

.preheader30.i170.i:                              ; preds = %bb.qp
  %i.dbf = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i, 0
  br i1 %i.dbf, label %.lr.ph36.i171.i, label %.loopexit.i167.i

.lr.ph36.i171.i:                                  ; preds = %.preheader30.i170.i, %bb.qx
  %.079.i35.i172.i = phi i64 [ %i.dcm, %bb.qx ], [ 0, %.preheader30.i170.i ]
  %.2.i34.i173.i = phi i64 [ %i.dcl, %bb.qx ], [ %.081.i54.i156.i, %.preheader30.i170.i ] ; 10 uses
  %i.dbg = load ptr, ptr %i.cyk, align 8, !tbaa !66, !noalias !547 ; 2 uses
  %.not.i21.i174.i = icmp eq ptr %i.dbg, null
  br i1 %.not.i21.i174.i, label %bb.qr, label %bb.qq

bb.qq:                                            ; preds = %.lr.ph36.i171.i
  %i.dbh = load i64, ptr %i.cyi, align 8, !tbaa !99, !noalias !547
  %i.dbi = add nsw i64 %i.dbh, %.2.i34.i173.i     ; 2 uses
  %i.dbj = lshr i64 %i.dbi, 3
  %i.dbk = getelementptr inbounds nuw i8, ptr %i.dbg, i64 %i.dbj
  %i.dbl = load i8, ptr %i.dbk, align 1, !tbaa !98, !noalias !547
  %i.dbm = trunc i64 %i.dbi to i8
  %i.dbn = and i8 %i.dbm, 7
  %i.dbo = lshr i8 %i.dbl, %i.dbn
  %i.dbp = trunc i8 %i.dbo to i1
  br i1 %i.dbp, label %bb.qv, label %bb.qw

bb.qr:                                            ; preds = %.lr.ph36.i171.i
  %i.dbq = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !547
  %i.dbr = getelementptr inbounds nuw i8, ptr %i.dbq, i64 40
  %i.dbs = load i32, ptr %i.dbr, align 8, !tbaa !42, !noalias !547
  switch i32 %i.dbs, label %bb.qu [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i176.i
    i32 28, label %bb.qs
    i32 38, label %bb.qt
  ]
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
.lr.ph44.i184.i:                                  ; preds = %.preheader27.i183.i, %bb.rv
  %.0.i43.i185.i = phi i64 [ %i.dge, %bb.rv ], [ 0, %.preheader27.i183.i ]
  %.4.i42.i186.i = phi i64 [ %i.dgd, %bb.rv ], [ %.081.i54.i156.i, %.preheader27.i183.i ] ; 10 uses
  %.385.i41.i187.i = phi i64 [ %.486.i.i189.i, %bb.rv ], [ %.082.i53.i157.i, %.preheader27.i183.i ] ; 2 uses
  %i.dee = load ptr, ptr %i.cyk, align 8, !tbaa !66, !noalias !547 ; 2 uses
  %.not.i26.i188.i = icmp eq ptr %i.dee, null
  br i1 %.not.i26.i188.i, label %bb.rj, label %bb.ri

bb.ri:                                            ; preds = %.lr.ph44.i184.i
  %i.def = load i64, ptr %i.cyi, align 8, !tbaa !99, !noalias !547
  %i.deg = add nsw i64 %i.def, %.4.i42.i186.i     ; 2 uses
  %i.deh = lshr i64 %i.deg, 3
  %i.dei = getelementptr inbounds nuw i8, ptr %i.dee, i64 %i.deh
  %i.dej = load i8, ptr %i.dei, align 1, !tbaa !98, !noalias !547
  %i.dek = trunc i64 %i.deg to i8
  %i.del = and i8 %i.dek, 7
  %i.dem = lshr i8 %i.dej, %i.del
  %i.den = trunc i8 %i.dem to i1
  br i1 %i.den, label %bb.rn, label %bb.ru

bb.rj:                                            ; preds = %.lr.ph44.i184.i
  %i.deo = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !547
  %i.dep = getelementptr inbounds nuw i8, ptr %i.deo, i64 40
  %i.deq = load i32, ptr %i.dep, align 8, !tbaa !42, !noalias !547
  switch i32 %i.deq, label %bb.rm [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i
    i32 28, label %bb.rk
    i32 38, label %bb.rl
  ]

bb.rk:                                            ; preds = %bb.rj
  %i.der = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i), !noalias !547
  br i1 %i.der, label %bb.ru, label %bb.rn

bb.rl:                                            ; preds = %bb.rj
  %i.des = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i), !noalias !547
  br i1 %i.des, label %bb.ru, label %bb.rn

bb.rm:                                            ; preds = %bb.rj
  %i.det = load i64, ptr %i.czq, align 8, !tbaa !71, !noalias !547
  %i.deu = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !547
  %.not24.i195.i = icmp eq i64 %i.det, %i.deu
  br i1 %.not24.i195.i, label %bb.ru, label %bb.rn

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i:     ; preds = %bb.rj
  %i.dev = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i), !noalias !547
  br i1 %i.dev, label %bb.ru, label %bb.rn

bb.rn:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i, %bb.rm, %bb.rl, %bb.rk, %bb.ri
  %i.dew = getelementptr inbounds [8 x i8], ptr %i.cyn, i64 %.4.i42.i186.i ; 2 uses
  %i.dex = load i64, ptr %i.dew, align 8, !tbaa !130, !noalias !547 ; 4 uses
  %i.dey = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !547 ; 2 uses
  %.not.i29.i191.i = icmp eq ptr %i.dey, null
  br i1 %.not.i29.i191.i, label %bb.rp, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.dez = load i64, ptr %i.czr, align 8, !tbaa !99, !noalias !547
  %i.dfa = add nsw i64 %i.dez, %i.dex             ; 2 uses
  %i.dfb = lshr i64 %i.dfa, 3
  %i.dfc = getelementptr inbounds nuw i8, ptr %i.dey, i64 %i.dfb
  %i.dfd = load i8, ptr %i.dfc, align 1, !tbaa !98, !noalias !547
  %i.dfe = trunc i64 %i.dfa to i8
  %i.dff = and i8 %i.dfe, 7
  %i.dfg = lshr i8 %i.dfd, %i.dff
  %i.dfh = trunc i8 %i.dfg to i1
  br i1 %i.dfh, label %bb.rt, label %bb.ru

bb.rp:                                            ; preds = %bb.rn
  %i.dfi = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !547
  %i.dfj = getelementptr inbounds nuw i8, ptr %i.dfi, i64 40
  %i.dfk = load i32, ptr %i.dfj, align 8, !tbaa !42, !noalias !547
  switch i32 %i.dfk, label %bb.rs [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i
    i32 28, label %bb.rq
    i32 38, label %bb.rr
  ]

bb.rq:                                            ; preds = %bb.rp
  %i.dfl = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.dex), !noalias !547
  br i1 %i.dfl, label %bb.ru, label %bb.rt

bb.rr:                                            ; preds = %bb.rp
  %i.dfm = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.dex), !noalias !547
  br i1 %i.dfm, label %bb.ru, label %bb.rt

bb.rs:                                            ; preds = %bb.rp
  %i.dfn = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !547
  %i.dfo = load i64, ptr %i.cyg, align 8, !tbaa !62, !noalias !547
  %.not25.i193.i = icmp eq i64 %i.dfn, %i.dfo
  br i1 %.not25.i193.i, label %bb.ru, label %bb.rt

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i:     ; preds = %bb.rp
  %i.dfp = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.dex), !noalias !547
  br i1 %i.dfp, label %bb.ru, label %bb.rt

bb.rt:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i, %bb.rs, %bb.rr, %bb.rq, %bb.ro
  %i.dfq = getelementptr inbounds i8, ptr %i.cyf, i64 %.4.i42.i186.i
  %i.dfr = load i64, ptr %i.dew, align 8, !tbaa !130, !noalias !547
  %i.dfs = getelementptr inbounds nuw i8, ptr %i.cye, i64 %i.dfr
  %i.dft = load i8, ptr %i.dfs, align 1, !noalias !547
  store i8 %i.dft, ptr %i.dfq, align 1, !noalias !547
  %i.dfu = srem i64 %.4.i42.i186.i, 8
  %i.dfv = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.dfu
  %i.dfw = load i8, ptr %i.dfv, align 1, !tbaa !98, !noalias !547
  %i.dfx = sdiv i64 %.4.i42.i186.i, 8
  %i.dfy = getelementptr inbounds i8, ptr %.0.i.i.i153.i, i64 %i.dfx ; 2 uses
  %i.dfz = load i8, ptr %i.dfy, align 1, !tbaa !98, !noalias !547
  %i.dga = or i8 %i.dfz, %i.dfw
  store i8 %i.dga, ptr %i.dfy, align 1, !tbaa !98, !noalias !547
  %i.dgb = add nsw i64 %.385.i41.i187.i, 1
  br label %bb.rv

bb.ru:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i, %bb.rs, %bb.rr, %bb.rq, %bb.ro, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i, %bb.rm, %bb.rl, %bb.rk, %bb.ri
  %i.dgc = getelementptr inbounds i8, ptr %i.cyf, i64 %.4.i42.i186.i
  store i8 0, ptr %i.dgc, align 1, !noalias !547
  br label %bb.rv

bb.rv:                                            ; preds = %bb.ru, %bb.rt
  %.486.i.i189.i = phi i64 [ %i.dgb, %bb.rt ], [ %.385.i41.i187.i, %bb.ru ] ; 2 uses
  %i.dgd = add nsw i64 %.4.i42.i186.i, 1          ; 2 uses
  %i.dge = add nuw nsw i64 %.0.i43.i185.i, 1      ; 2 uses
  %exitcond65.not.i190.i = icmp eq i64 %i.dge, %i.dec
  br i1 %exitcond65.not.i190.i, label %.loopexit.i167.i, label %.lr.ph44.i184.i, !llvm.loop !553

.loopexit.sink.split.i164.i:                      ; preds = %bb.rh, %bb.qp
  %.sink85.i165.i = phi i64 [ %i.dbe, %bb.qp ], [ %i.dec, %bb.rh ] ; 2 uses
  %.587.i.ph.i166.i = phi i64 [ %i.czy, %bb.qp ], [ %.082.i53.i157.i, %bb.rh ]
  %i.dgf = getelementptr inbounds i8, ptr %i.cyf, i64 %.081.i54.i156.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.dgf, i8 0, i64 %.sink85.i165.i, i1 false), !noalias !547
  %i.dgg = add nsw i64 %.sink85.i165.i, %.081.i54.i156.i
  br label %.loopexit.i167.i

.loopexit.i167.i.loopexit3129.unr-lcssa:          ; preds = %.lr.ph39.i178.i
  %i.dgh = and i16 %.sroa.0.0.extract.trunc.i.i158.i, 3
  %lcmp.mod3576.not = icmp eq i16 %i.dgh, 0
  br i1 %lcmp.mod3576.not, label %.loopexit.i167.i, label %.lr.ph39.i178.i.epil.preheader

.lr.ph39.i178.i.epil.preheader:                   ; preds = %.loopexit.i167.i.loopexit3129.unr-lcssa, %.lr.ph39.i178.i.preheader
  %.1.i37.i180.i.epil.init = phi i64 [ %.081.i54.i156.i, %.lr.ph39.i178.i.preheader ], [ %i.dbc, %.loopexit.i167.i.loopexit3129.unr-lcssa ]
  %i.dgi = and i16 %.sroa.0.0.extract.trunc.i.i158.i, 3
  %lcmp.mod3578 = icmp ne i16 %i.dgi, 0
  call void @llvm.assume(i1 %lcmp.mod3578)
  br label %.lr.ph39.i178.i.epil

.lr.ph39.i178.i.epil:                             ; preds = %.lr.ph39.i178.i.epil, %.lr.ph39.i178.i.epil.preheader
  %.1.i37.i180.i.epil = phi i64 [ %i.dgo, %.lr.ph39.i178.i.epil ], [ %.1.i37.i180.i.epil.init, %.lr.ph39.i178.i.epil.preheader ] ; 3 uses
  %epil.iter3575 = phi i64 [ %epil.iter3575.next, %.lr.ph39.i178.i.epil ], [ 0, %.lr.ph39.i178.i.epil.preheader ]
  %i.dgj = getelementptr inbounds i8, ptr %i.cyf, i64 %.1.i37.i180.i.epil
  %i.dgk = getelementptr inbounds [8 x i8], ptr %i.cyn, i64 %.1.i37.i180.i.epil
  %i.dgl = load i64, ptr %i.dgk, align 8, !tbaa !130, !noalias !547
  %i.dgm = getelementptr inbounds nuw i8, ptr %i.cye, i64 %i.dgl
  %i.dgn = load i8, ptr %i.dgm, align 1, !noalias !547
  store i8 %i.dgn, ptr %i.dgj, align 1, !noalias !547
  %i.dgo = add nsw i64 %.1.i37.i180.i.epil, 1     ; 2 uses
  %epil.iter3575.next = add i64 %epil.iter3575, 1 ; 2 uses
  %epil.iter3575.cmp.not = icmp eq i64 %epil.iter3575.next, %xtraiter3574
  br i1 %epil.iter3575.cmp.not, label %.loopexit.i167.i, label %.lr.ph39.i178.i.epil, !llvm.loop !554

.loopexit.i167.i:                                 ; preds = %bb.qx, %.loopexit.i167.i.loopexit3129.unr-lcssa, %.lr.ph39.i178.i.epil, %bb.rv, %bb.rg, %.loopexit.sink.split.i164.i, %.preheader27.i183.i, %.preheader.i196.i, %.preheader30.i170.i, %bb.qo
  %.587.i.i168.i = phi i64 [ %.587.i.ph.i166.i, %.loopexit.sink.split.i164.i ], [ %i.czy, %bb.qo ], [ %.486.i.i189.i, %bb.rv ], [ %i.czy, %.loopexit.i167.i.loopexit3129.unr-lcssa ], [ %i.czy, %.preheader30.i170.i ], [ %.082.i53.i157.i, %.preheader.i196.i ], [ %.082.i53.i157.i, %.preheader27.i183.i ], [ %.284.i.i202.i, %bb.rg ], [ %i.czy, %.lr.ph39.i178.i.epil ], [ %i.czy, %bb.qx ] ; 2 uses
  %.5.i.i169.i = phi i64 [ %i.dgg, %.loopexit.sink.split.i164.i ], [ %.081.i54.i156.i, %bb.qo ], [ %i.dgd, %bb.rv ], [ %i.dgo, %.lr.ph39.i178.i.epil ], [ %.081.i54.i156.i, %.preheader30.i170.i ], [ %.081.i54.i156.i, %.preheader.i196.i ], [ %.081.i54.i156.i, %.preheader27.i183.i ], [ %i.ddz, %bb.rg ], [ %i.dbc, %.loopexit.i167.i.loopexit3129.unr-lcssa ], [ %i.dcl, %bb.qx ] ; 2 uses
  %i.dgp = icmp slt i64 %.5.i.i169.i, %i.cyh
  br i1 %i.dgp, label %bb.qm, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !555

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i167.i, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i
  %.082.i.lcssa.i154.i = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i ], [ %.587.i.i168.i, %.loopexit.i167.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24, !noalias !547
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i:                                    ; preds = %.lr.ph.i148.i, %.lr.ph.i148.i.preheader.new
  %.0.i1833.i149.i = phi i64 [ 0, %.lr.ph.i148.i.preheader.new ], [ %i.dhn, %.lr.ph.i148.i ] ; 6 uses
  %niter3573 = phi i64 [ 0, %.lr.ph.i148.i.preheader.new ], [ %niter3573.next.3, %.lr.ph.i148.i ]
  %i.dgq = getelementptr inbounds nuw i8, ptr %i.cyf, i64 %.0.i1833.i149.i
  %i.dgr = getelementptr inbounds nuw [8 x i8], ptr %i.cyn, i64 %.0.i1833.i149.i
  %i.dgs = load i64, ptr %i.dgr, align 8, !tbaa !130, !noalias !547
  %i.dgt = getelementptr inbounds nuw i8, ptr %i.cye, i64 %i.dgs
  %i.dgu = load i8, ptr %i.dgt, align 1, !noalias !547
  store i8 %i.dgu, ptr %i.dgq, align 1, !noalias !547
  %i.dgv = or disjoint i64 %.0.i1833.i149.i, 1    ; 2 uses
  %i.dgw = getelementptr inbounds nuw i8, ptr %i.cyf, i64 %i.dgv
  %i.dgx = getelementptr inbounds nuw [8 x i8], ptr %i.cyn, i64 %i.dgv
  %i.dgy = load i64, ptr %i.dgx, align 8, !tbaa !130, !noalias !547
  %i.dgz = getelementptr inbounds nuw i8, ptr %i.cye, i64 %i.dgy
  %i.dha = load i8, ptr %i.dgz, align 1, !noalias !547
  store i8 %i.dha, ptr %i.dgw, align 1, !noalias !547
  %i.dhb = or disjoint i64 %.0.i1833.i149.i, 2    ; 2 uses
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.cyf, i64 %i.dhb
  %i.dhd = getelementptr inbounds nuw [8 x i8], ptr %i.cyn, i64 %i.dhb
  %i.dhe = load i64, ptr %i.dhd, align 8, !tbaa !130, !noalias !547
  %i.dhf = getelementptr inbounds nuw i8, ptr %i.cye, i64 %i.dhe
  %i.dhg = load i8, ptr %i.dhf, align 1, !noalias !547
  store i8 %i.dhg, ptr %i.dhc, align 1, !noalias !547
  %i.dhh = or disjoint i64 %.0.i1833.i149.i, 3    ; 2 uses
  %i.dhi = getelementptr inbounds nuw i8, ptr %i.cyf, i64 %i.dhh
  %i.dhj = getelementptr inbounds nuw [8 x i8], ptr %i.cyn, i64 %i.dhh
  %i.dhk = load i64, ptr %i.dhj, align 8, !tbaa !130, !noalias !547
  %i.dhl = getelementptr inbounds nuw i8, ptr %i.cye, i64 %i.dhk
  %i.dhm = load i8, ptr %i.dhl, align 1, !noalias !547
  store i8 %i.dhm, ptr %i.dhi, align 1, !noalias !547
  %i.dhn = add nuw nsw i64 %.0.i1833.i149.i, 4    ; 2 uses
  %niter3573.next.3 = add nuw nsw i64 %niter3573, 4 ; 2 uses
  %niter3573.ncmp.3 = icmp eq i64 %niter3573.next.3, %unroll_iter3572
  br i1 %niter3573.ncmp.3, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, label %.lr.ph.i148.i, !llvm.loop !556

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i148.i
  %lcmp.mod3570.not = icmp eq i64 %xtraiter3568, 0
  br i1 %lcmp.mod3570.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i148.i.epil.preheader

.lr.ph.i148.i.epil.preheader:                     ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.lr.ph.i148.i.preheader
  %.0.i1833.i149.i.epil.init = phi i64 [ 0, %.lr.ph.i148.i.preheader ], [ %i.dhn, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ]
  %lcmp.mod3571 = icmp ne i64 %xtraiter3568, 0
  call void @llvm.assume(i1 %lcmp.mod3571)
  br label %.lr.ph.i148.i.epil

.lr.ph.i148.i.epil:                               ; preds = %.lr.ph.i148.i.epil, %.lr.ph.i148.i.epil.preheader
  %.0.i1833.i149.i.epil = phi i64 [ %i.dht, %.lr.ph.i148.i.epil ], [ %.0.i1833.i149.i.epil.init, %.lr.ph.i148.i.epil.preheader ] ; 3 uses
  %epil.iter3569 = phi i64 [ %epil.iter3569.next, %.lr.ph.i148.i.epil ], [ 0, %.lr.ph.i148.i.epil.preheader ]
  %i.dho = getelementptr inbounds nuw i8, ptr %i.cyf, i64 %.0.i1833.i149.i.epil
  %i.dhp = getelementptr inbounds nuw [8 x i8], ptr %i.cyn, i64 %.0.i1833.i149.i.epil
  %i.dhq = load i64, ptr %i.dhp, align 8, !tbaa !130, !noalias !547
  %i.dhr = getelementptr inbounds nuw i8, ptr %i.cye, i64 %i.dhq
  %i.dhs = load i8, ptr %i.dhr, align 1, !noalias !547
  store i8 %i.dhs, ptr %i.dho, align 1, !noalias !547
  %i.dht = add nuw nsw i64 %.0.i1833.i149.i.epil, 1
  %epil.iter3569.next = add i64 %epil.iter3569, 1 ; 2 uses
  %epil.iter3569.cmp.not = icmp eq i64 %epil.iter3569.next, %xtraiter3568
  br i1 %epil.iter3569.cmp.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i148.i.epil, !llvm.loop !557

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3142.unr-lcssa: ; preds = %.lr.ph.i.i124
  %lcmp.mod3557.not = icmp eq i64 %xtraiter3555, 0
  br i1 %lcmp.mod3557.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i.i124.epil.preheader

.lr.ph.i.i124.epil.preheader:                     ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3142.unr-lcssa, %.lr.ph.i.i124.preheader
  %.0.i1833.i.i125.epil.init = phi i64 [ 0, %.lr.ph.i.i124.preheader ], [ %i.cdj, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3142.unr-lcssa ]
  %lcmp.mod3558 = icmp ne i64 %xtraiter3555, 0
  call void @llvm.assume(i1 %lcmp.mod3558)
  br label %.lr.ph.i.i124.epil

.lr.ph.i.i124.epil:                               ; preds = %.lr.ph.i.i124.epil, %.lr.ph.i.i124.epil.preheader
  %.0.i1833.i.i125.epil = phi i64 [ %i.dia, %.lr.ph.i.i124.epil ], [ %.0.i1833.i.i125.epil.init, %.lr.ph.i.i124.epil.preheader ] ; 3 uses
  %epil.iter3556 = phi i64 [ %epil.iter3556.next, %.lr.ph.i.i124.epil ], [ 0, %.lr.ph.i.i124.epil.preheader ]
  %i.dhu = getelementptr inbounds nuw i8, ptr %i.btn, i64 %.0.i1833.i.i125.epil
  %i.dhv = getelementptr inbounds nuw i8, ptr %i.btv, i64 %.0.i1833.i.i125.epil
  %i.dhw = load i8, ptr %i.dhv, align 1, !tbaa !98, !noalias !516
  %i.dhx = zext i8 %i.dhw to i64
  %i.dhy = getelementptr inbounds nuw i8, ptr %i.btm, i64 %i.dhx
  %i.dhz = load i8, ptr %i.dhy, align 1, !noalias !516
  store i8 %i.dhz, ptr %i.dhu, align 1, !noalias !516
  %i.dia = add nuw nsw i64 %.0.i1833.i.i125.epil, 1
  %epil.iter3556.next = add i64 %epil.iter3556, 1 ; 2 uses
  %epil.iter3556.cmp.not = icmp eq i64 %epil.iter3556.next, %xtraiter3555
  br i1 %epil.iter3556.cmp.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i.i124.epil, !llvm.loop !558

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3150.unr-lcssa: ; preds = %.lr.ph.i24.i113
  %lcmp.mod3544.not = icmp eq i64 %xtraiter3542, 0
  br i1 %lcmp.mod3544.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i24.i113.epil.preheader

.lr.ph.i24.i113.epil.preheader:                   ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3150.unr-lcssa, %.lr.ph.i24.i113.preheader
  %.0.i1833.i25.i114.epil.init = phi i64 [ 0, %.lr.ph.i24.i113.preheader ], [ %i.cnp, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3150.unr-lcssa ]
  %lcmp.mod3545 = icmp ne i64 %xtraiter3542, 0
  call void @llvm.assume(i1 %lcmp.mod3545)
  br label %.lr.ph.i24.i113.epil

.lr.ph.i24.i113.epil:                             ; preds = %.lr.ph.i24.i113.epil, %.lr.ph.i24.i113.epil.preheader
  %.0.i1833.i25.i114.epil = phi i64 [ %i.dih, %.lr.ph.i24.i113.epil ], [ %.0.i1833.i25.i114.epil.init, %.lr.ph.i24.i113.epil.preheader ] ; 3 uses
  %epil.iter3543 = phi i64 [ %epil.iter3543.next, %.lr.ph.i24.i113.epil ], [ 0, %.lr.ph.i24.i113.epil.preheader ]
  %i.dib = getelementptr inbounds nuw i8, ptr %i.cdt, i64 %.0.i1833.i25.i114.epil
  %i.dic = getelementptr inbounds nuw [2 x i8], ptr %i.ceb, i64 %.0.i1833.i25.i114.epil
  %i.did = load i16, ptr %i.dic, align 2, !tbaa !269, !noalias !527
  %i.die = zext i16 %i.did to i64
  %i.dif = getelementptr inbounds nuw i8, ptr %i.cds, i64 %i.die
  %i.dig = load i8, ptr %i.dif, align 1, !noalias !527
  store i8 %i.dig, ptr %i.dib, align 1, !noalias !527
  %i.dih = add nuw nsw i64 %.0.i1833.i25.i114.epil, 1
  %epil.iter3543.next = add i64 %epil.iter3543, 1 ; 2 uses
  %epil.iter3543.cmp.not = icmp eq i64 %epil.iter3543.next, %xtraiter3542
  br i1 %epil.iter3543.cmp.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i24.i113.epil, !llvm.loop !559

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3158.unr-lcssa: ; preds = %.lr.ph.i86.i
  %lcmp.mod3531.not = icmp eq i64 %xtraiter3530, 0
  br i1 %lcmp.mod3531.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i86.i.epil.preheader

.lr.ph.i86.i.epil.preheader:                      ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3158.unr-lcssa, %.lr.ph.i86.i.preheader
  %.0.i1833.i87.i.epil.init = phi i64 [ 0, %.lr.ph.i86.i.preheader ], [ %i.cxv, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3158.unr-lcssa ]
  %lcmp.mod3532 = icmp ne i64 %xtraiter3530, 0
  call void @llvm.assume(i1 %lcmp.mod3532)
  br label %.lr.ph.i86.i.epil

.lr.ph.i86.i.epil:                                ; preds = %.lr.ph.i86.i.epil, %.lr.ph.i86.i.epil.preheader
  %.0.i1833.i87.i.epil = phi i64 [ %i.dio, %.lr.ph.i86.i.epil ], [ %.0.i1833.i87.i.epil.init, %.lr.ph.i86.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i86.i.epil ], [ 0, %.lr.ph.i86.i.epil.preheader ]
  %i.dii = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.0.i1833.i87.i.epil
  %i.dij = getelementptr inbounds nuw [4 x i8], ptr %i.coh, i64 %.0.i1833.i87.i.epil
  %i.dik = load i32, ptr %i.dij, align 4, !tbaa !3, !noalias !537
  %i.dil = zext i32 %i.dik to i64
  %i.dim = getelementptr inbounds nuw i8, ptr %i.cny, i64 %i.dil
  %i.din = load i8, ptr %i.dim, align 1, !noalias !537
  store i8 %i.din, ptr %i.dii, align 1, !noalias !537
  %i.dio = add nuw nsw i64 %.0.i1833.i87.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3530
  br i1 %epil.iter.cmp.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i86.i.epil, !llvm.loop !560

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit: ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3158.unr-lcssa, %.lr.ph.i86.i.epil, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3150.unr-lcssa, %.lr.ph.i24.i113.epil, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3142.unr-lcssa, %.lr.ph.i.i124.epil, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.lr.ph.i148.i.epil, %.preheader32.i.i123, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i22.i112, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i84.i, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i146.i, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i
  %.0.i147.sink.i = phi i64 [ %i.cdv, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3150.unr-lcssa ], [ %i.btp, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3142.unr-lcssa ], [ %i.cyh, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ], [ %.082.i.lcssa.i.i130, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.btp, %.preheader32.i.i123 ], [ %.082.i.lcssa.i30.i, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.cdv, %.preheader32.i22.i112 ], [ %.082.i.lcssa.i92.i, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.cob, %.preheader32.i84.i ], [ %.082.i.lcssa.i154.i, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.cyh, %.preheader32.i146.i ], [ %i.cyh, %.lr.ph.i148.i.epil ], [ %i.btp, %.lr.ph.i.i124.epil ], [ %i.cdv, %.lr.ph.i24.i113.epil ], [ %i.cob, %.lr.ph.i86.i.epil ], [ %i.cob, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3158.unr-lcssa ]
  %i.dip = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.diq = load i64, ptr %i.dip, align 8, !tbaa !178, !noalias !512
  %i.dir = sub nsw i64 %i.diq, %.0.i147.sink.i
  %i.dis = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store atomic i64 %i.dir, ptr %i.dis seq_cst, align 8, !noalias !512
  store ptr null, ptr %0, align 8, !tbaa !113, !alias.scope !512
  br label %.critedge69

bb.rw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit83
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.dit = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !561 ; 2 uses
  %i.diu = load ptr, ptr %i.dit, align 8, !tbaa !90, !noalias !561
  %i.div = getelementptr inbounds nuw i8, ptr %i.diu, i64 64
  %i.diw = load ptr, ptr %i.div, align 8, !noalias !561
  %i.dix = call noundef i32 %i.diw(ptr noundef nonnull align 8 dereferenceable(72) %i.dit), !noalias !561, !inline_history !564
  %i.diy = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !561
  %.not.i.i144.i353 = icmp ne i64 %i.diy, 0
  %i.diz = load ptr, ptr %i.v, align 8, !noalias !561
  %i.dja = icmp ne ptr %i.diz, null
  %i.djb = select i1 %.not.i.i144.i353, i1 %i.dja, i1 false ; 4 uses
  switch i32 %i.dix, label %bb.wq [
    i32 1, label %bb.rx
    i32 2, label %bb.tm
    i32 4, label %bb.vb
  ]

bb.rx:                                            ; preds = %bb.rw
  br i1 %i.djb, label %bb.rz, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  %i.djc = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.djd = load i64, ptr %i.djc, align 8, !tbaa !71, !noalias !565
  %.not.i19.i.i294 = icmp ne i64 %i.djd, 0
  %i.dje = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.djf = load ptr, ptr %i.dje, align 8, !noalias !565
  %i.djg = icmp ne ptr %i.djf, null
  %i.djh = select i1 %.not.i19.i.i294, i1 %i.djg, i1 false
  br label %bb.rz

bb.rz:                                            ; preds = %bb.ry, %bb.rx
  %i.dji = phi i1 [ true, %bb.rx ], [ %i.djh, %bb.ry ]
  %i.djj = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !565
  %i.djk = extractvalue { i32, ptr } %i.djj, 1    ; 9 uses
  %i.djl = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !565 ; 13 uses
  %i.djm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.djn = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !565 ; 11 uses
  %i.djo = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.djp = load i64, ptr %i.djo, align 8, !tbaa !99, !noalias !565
  %i.djq = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.djr = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.djs = load ptr, ptr %i.djr, align 8, !tbaa !66, !noalias !565
  %i.djt = getelementptr inbounds i8, ptr %i.djs, i64 %i.djp ; 9 uses
  br i1 %i.dji, label %bb.sa, label %.preheader32.i.i295

.preheader32.i.i295:                              ; preds = %bb.rz
  %i.dju = icmp sgt i64 %i.djn, 0
  br i1 %i.dju, label %.lr.ph.i.i296.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i296.preheader:                          ; preds = %.preheader32.i.i295
  %xtraiter3508 = and i64 %i.djn, 1
  %i.djv = icmp eq i64 %i.djn, 1
  br i1 %i.djv, label %.lr.ph.i.i296.epil.preheader, label %.lr.ph.i.i296.preheader.new

.lr.ph.i.i296.preheader.new:                      ; preds = %.lr.ph.i.i296.preheader
  %unroll_iter3511 = and i64 %i.djn, 9223372036854775806
  br label %.lr.ph.i.i296

bb.sa:                                            ; preds = %bb.rz
  %i.djw = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.djx = load ptr, ptr %i.djw, align 8, !tbaa !171, !noalias !565
  %i.djy = load ptr, ptr %i.djx, align 8, !tbaa !306, !noalias !565 ; 4 uses
  %.not.i.i.i.i299 = icmp eq ptr %i.djy, null
  br i1 %.not.i.i.i.i299, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i300, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.djz = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.dka = load i64, ptr %i.djz, align 8, !tbaa !438, !noalias !565
  %i.dkb = getelementptr inbounds nuw i8, ptr %i.djy, i64 9
  %i.dkc = load i8, ptr %i.dkb, align 1, !tbaa !439, !range !127, !noalias !565, !noundef !128
  %i.dkd = trunc nuw i8 %i.dkc to i1
  %i.dke = getelementptr inbounds nuw i8, ptr %i.djy, i64 8
  %i.dkf = load i8, ptr %i.dke, align 8, !range !127, !noalias !565
  %i.dkg = trunc nuw i8 %i.dkf to i1
  %i.dkh = select i1 %i.dkd, i1 %i.dkg, i1 false, !prof !117
  %i.dki = getelementptr inbounds nuw i8, ptr %i.djy, i64 16
  %i.dkj = load ptr, ptr %i.dki, align 8, !noalias !565
  %i.dkk = select i1 %i.dkh, ptr %i.dkj, ptr null, !prof !117
  %i.dkl = getelementptr inbounds i8, ptr %i.dkk, i64 %i.dka
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i300

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i300: ; preds = %bb.sb, %bb.sa
  %.0.i.i.i.i301 = phi ptr [ %i.dkl, %bb.sb ], [ null, %bb.sa ] ; 5 uses
  %i.dkm = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.dkn = load i64, ptr %i.dkm, align 8, !tbaa !178, !noalias !565 ; 2 uses
  %i.dko = ashr i64 %i.dkn, 3
  %i.dkp = and i64 %i.dkn, 7
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  br i1 %i.dpk, label %.preheader27.i.i330, label %.loopexit.sink.split.i.i312

.preheader27.i.i330:                              ; preds = %bb.sx
  %i.dpm = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i306, 0
  br i1 %i.dpm, label %.lr.ph44.i.i331, label %.loopexit.i.i314

.lr.ph44.i.i331:                                  ; preds = %.preheader27.i.i330, %bb.tl
  %.0.i43.i.i332 = phi i64 [ %i.drs, %bb.tl ], [ 0, %.preheader27.i.i330 ]
  %.4.i42.i.i333 = phi i64 [ %i.drr, %bb.tl ], [ %.081.i54.i.i304, %.preheader27.i.i330 ] ; 10 uses
  %.385.i41.i.i334 = phi i64 [ %.486.i.i.i336, %bb.tl ], [ %.082.i53.i.i305, %.preheader27.i.i330 ] ; 2 uses
  %i.dpn = load ptr, ptr %i.djq, align 8, !tbaa !66, !noalias !565 ; 2 uses
  %.not.i26.i.i335 = icmp eq ptr %i.dpn, null
  br i1 %.not.i26.i.i335, label %bb.sz, label %bb.sy

bb.sy:                                            ; preds = %.lr.ph44.i.i331
  %i.dpo = load i64, ptr %i.djo, align 8, !tbaa !99, !noalias !565
  %i.dpp = add nsw i64 %i.dpo, %.4.i42.i.i333     ; 2 uses
  %i.dpq = lshr i64 %i.dpp, 3
  %i.dpr = getelementptr inbounds nuw i8, ptr %i.dpn, i64 %i.dpq
  %i.dps = load i8, ptr %i.dpr, align 1, !tbaa !98, !noalias !565
  %i.dpt = trunc i64 %i.dpp to i8
  %i.dpu = and i8 %i.dpt, 7
  %i.dpv = lshr i8 %i.dps, %i.dpu
  %i.dpw = trunc i8 %i.dpv to i1
  br i1 %i.dpw, label %bb.td, label %bb.tk

bb.sz:                                            ; preds = %.lr.ph44.i.i331
  %i.dpx = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !565
  %i.dpy = getelementptr inbounds nuw i8, ptr %i.dpx, i64 40
  %i.dpz = load i32, ptr %i.dpy, align 8, !tbaa !42, !noalias !565
  switch i32 %i.dpz, label %bb.tc [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i341
    i32 28, label %bb.ta
    i32 38, label %bb.tb
  ]

bb.ta:                                            ; preds = %bb.sz
  %i.dqa = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i333), !noalias !565
  br i1 %i.dqa, label %bb.tk, label %bb.td

bb.tb:                                            ; preds = %bb.sz
  %i.dqb = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i333), !noalias !565
  br i1 %i.dqb, label %bb.tk, label %bb.td

bb.tc:                                            ; preds = %bb.sz
  %i.dqc = load i64, ptr %i.dkw, align 8, !tbaa !71, !noalias !565
  %i.dqd = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !565
  %.not24.i.i342 = icmp eq i64 %i.dqc, %i.dqd
  br i1 %.not24.i.i342, label %bb.tk, label %bb.td

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i341:     ; preds = %bb.sz
  %i.dqe = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i333), !noalias !565
  br i1 %i.dqe, label %bb.tk, label %bb.td

bb.td:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i341, %bb.tc, %bb.tb, %bb.ta, %bb.sy
  %i.dqf = getelementptr inbounds i8, ptr %i.djt, i64 %.4.i42.i.i333 ; 2 uses
  %i.dqg = load i8, ptr %i.dqf, align 1, !tbaa !98, !noalias !565
  %i.dqh = zext i8 %i.dqg to i64                  ; 4 uses
  %i.dqi = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !565 ; 2 uses
  %.not.i29.i.i338 = icmp eq ptr %i.dqi, null
  br i1 %.not.i29.i.i338, label %bb.tf, label %bb.te

bb.te:                                            ; preds = %bb.td
  %i.dqj = load i64, ptr %i.dkx, align 8, !tbaa !99, !noalias !565
  %i.dqk = add nsw i64 %i.dqj, %i.dqh             ; 2 uses
  %i.dql = lshr i64 %i.dqk, 3
  %i.dqm = getelementptr inbounds nuw i8, ptr %i.dqi, i64 %i.dql
  %i.dqn = load i8, ptr %i.dqm, align 1, !tbaa !98, !noalias !565
  %i.dqo = trunc i64 %i.dqk to i8
  %i.dqp = and i8 %i.dqo, 7
  %i.dqq = lshr i8 %i.dqn, %i.dqp
  %i.dqr = trunc i8 %i.dqq to i1
  br i1 %i.dqr, label %bb.tj, label %bb.tk

bb.tf:                                            ; preds = %bb.td
  %i.dqs = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !565
  %i.dqt = getelementptr inbounds nuw i8, ptr %i.dqs, i64 40
  %i.dqu = load i32, ptr %i.dqt, align 8, !tbaa !42, !noalias !565
  switch i32 %i.dqu, label %bb.ti [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i339
    i32 28, label %bb.tg
    i32 38, label %bb.th
  ]

bb.tg:                                            ; preds = %bb.tf
  %i.dqv = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.dqh), !noalias !565
  br i1 %i.dqv, label %bb.tk, label %bb.tj

bb.th:                                            ; preds = %bb.tf
  %i.dqw = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.dqh), !noalias !565
  br i1 %i.dqw, label %bb.tk, label %bb.tj

bb.ti:                                            ; preds = %bb.tf
  %i.dqx = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !565
  %i.dqy = load i64, ptr %i.djm, align 8, !tbaa !62, !noalias !565
  %.not25.i.i340 = icmp eq i64 %i.dqx, %i.dqy
  br i1 %.not25.i.i340, label %bb.tk, label %bb.tj

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i339:     ; preds = %bb.tf
  %i.dqz = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.dqh), !noalias !565
  br i1 %i.dqz, label %bb.tk, label %bb.tj

bb.tj:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i339, %bb.ti, %bb.th, %bb.tg, %bb.te
  %i.dra = shl nsw i64 %.4.i42.i.i333, 1
  %i.drb = getelementptr inbounds i8, ptr %i.djl, i64 %i.dra
  %i.drc = load i8, ptr %i.dqf, align 1, !tbaa !98, !noalias !565
  %i.drd = zext i8 %i.drc to i64
  %i.dre = shl nuw nsw i64 %i.drd, 1
  %i.drf = getelementptr inbounds nuw i8, ptr %i.djk, i64 %i.dre
  %i.drg = load i16, ptr %i.drf, align 1, !noalias !565
  store i16 %i.drg, ptr %i.drb, align 1, !noalias !565
  %i.drh = srem i64 %.4.i42.i.i333, 8
  %i.dri = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.drh
  %i.drj = load i8, ptr %i.dri, align 1, !tbaa !98, !noalias !565
  %i.drk = sdiv i64 %.4.i42.i.i333, 8
  %i.drl = getelementptr inbounds i8, ptr %.0.i.i.i.i301, i64 %i.drk ; 2 uses
  %i.drm = load i8, ptr %i.drl, align 1, !tbaa !98, !noalias !565
  %i.drn = or i8 %i.drm, %i.drj
  store i8 %i.drn, ptr %i.drl, align 1, !tbaa !98, !noalias !565
  %i.dro = add nsw i64 %.385.i41.i.i334, 1
  br label %bb.tl

bb.tk:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i339, %bb.ti, %bb.th, %bb.tg, %bb.te, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i341, %bb.tc, %bb.tb, %bb.ta, %bb.sy
  %i.drp = shl nsw i64 %.4.i42.i.i333, 1
  %i.drq = getelementptr inbounds i8, ptr %i.djl, i64 %i.drp
  store i16 0, ptr %i.drq, align 1, !noalias !565
  br label %bb.tl

bb.tl:                                            ; preds = %bb.tk, %bb.tj
  %.486.i.i.i336 = phi i64 [ %i.dro, %bb.tj ], [ %.385.i41.i.i334, %bb.tk ] ; 2 uses
  %i.drr = add nsw i64 %.4.i42.i.i333, 1          ; 2 uses
  %i.drs = add nuw nsw i64 %.0.i43.i.i332, 1      ; 2 uses
  %exitcond65.not.i.i337 = icmp eq i64 %i.drs, %i.dpl
  br i1 %exitcond65.not.i.i337, label %.loopexit.i.i314, label %.lr.ph44.i.i331, !llvm.loop !571

.loopexit.sink.split.i.i312:                      ; preds = %bb.sx, %bb.sf
  %.sink86.i.i = phi i64 [ %i.dme, %bb.sf ], [ %i.dpl, %bb.sx ] ; 2 uses
  %.587.i.ph.i.i313 = phi i64 [ %i.dle, %bb.sf ], [ %.082.i53.i.i305, %bb.sx ]
  %i.drt = shl nsw i64 %.081.i54.i.i304, 1
  %i.dru = getelementptr inbounds i8, ptr %i.djl, i64 %i.drt
  %i.drv = shl nsw i64 %.sink86.i.i, 1
  call void @llvm.memset.p0.i64(ptr align 1 %i.dru, i8 0, i64 %i.drv, i1 false), !noalias !565
  %i.drw = add nsw i64 %.sink86.i.i, %.081.i54.i.i304
  br label %.loopexit.i.i314

.loopexit.i.i314.loopexit3167.unr-lcssa:          ; preds = %.lr.ph39.i.i325
  %i.drx = and i16 %.sroa.0.0.extract.trunc.i.i.i306, 1
  %lcmp.mod3514.not = icmp eq i16 %i.drx, 0
  br i1 %lcmp.mod3514.not, label %.loopexit.i.i314, label %.lr.ph39.i.i325.epil.preheader

.lr.ph39.i.i325.epil.preheader:                   ; preds = %.loopexit.i.i314.loopexit3167.unr-lcssa, %.lr.ph39.i.i325.preheader
  %.1.i37.i.i327.epil.init = phi i64 [ %.081.i54.i.i304, %.lr.ph39.i.i325.preheader ], [ %i.dmc, %.loopexit.i.i314.loopexit3167.unr-lcssa ] ; 3 uses
  %lcmp.mod3516 = trunc i32 %i.dky to i1
  call void @llvm.assume(i1 %lcmp.mod3516)
  %i.dry = shl nsw i64 %.1.i37.i.i327.epil.init, 1
  %i.drz = getelementptr inbounds i8, ptr %i.djl, i64 %i.dry
  %i.dsa = getelementptr inbounds i8, ptr %i.djt, i64 %.1.i37.i.i327.epil.init
  %i.dsb = load i8, ptr %i.dsa, align 1, !tbaa !98, !noalias !565
  %i.dsc = zext i8 %i.dsb to i64
  %i.dsd = shl nuw nsw i64 %i.dsc, 1
  %i.dse = getelementptr inbounds nuw i8, ptr %i.djk, i64 %i.dsd
  %i.dsf = load i16, ptr %i.dse, align 1, !noalias !565
  store i16 %i.dsf, ptr %i.drz, align 1, !noalias !565
  %i.dsg = add nsw i64 %.1.i37.i.i327.epil.init, 1
  br label %.loopexit.i.i314

.loopexit.i.i314:                                 ; preds = %bb.sn, %.lr.ph39.i.i325.epil.preheader, %.loopexit.i.i314.loopexit3167.unr-lcssa, %bb.tl, %bb.sw, %.loopexit.sink.split.i.i312, %.preheader27.i.i330, %.preheader.i.i343, %.preheader30.i.i317, %bb.se
  %.587.i.i.i315 = phi i64 [ %.587.i.ph.i.i313, %.loopexit.sink.split.i.i312 ], [ %i.dle, %bb.se ], [ %.486.i.i.i336, %bb.tl ], [ %i.dle, %.lr.ph39.i.i325.epil.preheader ], [ %i.dle, %.preheader30.i.i317 ], [ %.082.i53.i.i305, %.preheader.i.i343 ], [ %.082.i53.i.i305, %.preheader27.i.i330 ], [ %.284.i.i.i349, %bb.sw ], [ %i.dle, %.loopexit.i.i314.loopexit3167.unr-lcssa ], [ %i.dle, %bb.sn ] ; 2 uses
  %.5.i.i.i316 = phi i64 [ %i.drw, %.loopexit.sink.split.i.i312 ], [ %.081.i54.i.i304, %bb.se ], [ %i.drr, %bb.tl ], [ %i.dsg, %.lr.ph39.i.i325.epil.preheader ], [ %.081.i54.i.i304, %.preheader30.i.i317 ], [ %.081.i54.i.i304, %.preheader.i.i343 ], [ %.081.i54.i.i304, %.preheader27.i.i330 ], [ %i.dpi, %bb.sw ], [ %i.dmc, %.loopexit.i.i314.loopexit3167.unr-lcssa ], [ %i.dnp, %bb.sn ] ; 2 uses
  %i.dsh = icmp slt i64 %.5.i.i.i316, %i.djn
  br i1 %i.dsh, label %bb.sc, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !572

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i.i314, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i300
  %.082.i.lcssa.i.i302 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i300 ], [ %.587.i.i.i315, %.loopexit.i.i314 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24, !noalias !565
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i296:                                    ; preds = %.lr.ph.i.i296, %.lr.ph.i.i296.preheader.new
  %.0.i1833.i.i297 = phi i64 [ 0, %.lr.ph.i.i296.preheader.new ], [ %i.dsz, %.lr.ph.i.i296 ] ; 4 uses
  %niter3512 = phi i64 [ 0, %.lr.ph.i.i296.preheader.new ], [ %niter3512.next.1, %.lr.ph.i.i296 ]
  %i.dsi = shl nuw nsw i64 %.0.i1833.i.i297, 1
  %i.dsj = getelementptr inbounds nuw i8, ptr %i.djl, i64 %i.dsi
  %i.dsk = getelementptr inbounds nuw i8, ptr %i.djt, i64 %.0.i1833.i.i297
  %i.dsl = load i8, ptr %i.dsk, align 1, !tbaa !98, !noalias !565
  %i.dsm = zext i8 %i.dsl to i64
  %i.dsn = shl nuw nsw i64 %i.dsm, 1
  %i.dso = getelementptr inbounds nuw i8, ptr %i.djk, i64 %i.dsn
  %i.dsp = load i16, ptr %i.dso, align 1, !noalias !565
  store i16 %i.dsp, ptr %i.dsj, align 1, !noalias !565
  %i.dsq = or disjoint i64 %.0.i1833.i.i297, 1    ; 2 uses
  %i.dsr = shl nuw nsw i64 %i.dsq, 1
  %i.dss = getelementptr inbounds nuw i8, ptr %i.djl, i64 %i.dsr
  %i.dst = getelementptr inbounds nuw i8, ptr %i.djt, i64 %i.dsq
  %i.dsu = load i8, ptr %i.dst, align 1, !tbaa !98, !noalias !565
  %i.dsv = zext i8 %i.dsu to i64
  %i.dsw = shl nuw nsw i64 %i.dsv, 1
  %i.dsx = getelementptr inbounds nuw i8, ptr %i.djk, i64 %i.dsw
  %i.dsy = load i16, ptr %i.dsx, align 1, !noalias !565
  store i16 %i.dsy, ptr %i.dss, align 1, !noalias !565
  %i.dsz = add nuw nsw i64 %.0.i1833.i.i297, 2    ; 2 uses
  %niter3512.next.1 = add nuw nsw i64 %niter3512, 2 ; 2 uses
  %niter3512.ncmp.1 = icmp eq i64 %niter3512.next.1, %unroll_iter3511
  br i1 %niter3512.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3173.unr-lcssa, label %.lr.ph.i.i296, !llvm.loop !573

bb.tm:                                            ; preds = %bb.rw
  br i1 %i.djb, label %bb.to, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  %i.dta = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.dtb = load i64, ptr %i.dta, align 8, !tbaa !71, !noalias !574
  %.not.i19.i21.i234 = icmp ne i64 %i.dtb, 0
  %i.dtc = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.dtd = load ptr, ptr %i.dtc, align 8, !noalias !574
  %i.dte = icmp ne ptr %i.dtd, null
  %i.dtf = select i1 %.not.i19.i21.i234, i1 %i.dte, i1 false
  br label %bb.to

bb.to:                                            ; preds = %bb.tn, %bb.tm
  %i.dtg = phi i1 [ true, %bb.tm ], [ %i.dtf, %bb.tn ]
  %i.dth = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !574
  %i.dti = extractvalue { i32, ptr } %i.dth, 1    ; 9 uses
  %i.dtj = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !574 ; 13 uses
  %i.dtk = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.dtl = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !574 ; 11 uses
  %i.dtm = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.dtn = load i64, ptr %i.dtm, align 8, !tbaa !99, !noalias !574
  %i.dto = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.dtp = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.dtq = load ptr, ptr %i.dtp, align 8, !tbaa !66, !noalias !574
  %i.dtr = getelementptr inbounds [2 x i8], ptr %i.dtq, i64 %i.dtn ; 9 uses
  br i1 %i.dtg, label %bb.tp, label %.preheader32.i22.i235

.preheader32.i22.i235:                            ; preds = %bb.to
  %i.dts = icmp sgt i64 %i.dtl, 0
  br i1 %i.dts, label %.lr.ph.i24.i236.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i236.preheader:                        ; preds = %.preheader32.i22.i235
  %xtraiter3497 = and i64 %i.dtl, 1
  %i.dtt = icmp eq i64 %i.dtl, 1
  br i1 %i.dtt, label %.lr.ph.i24.i236.epil.preheader, label %.lr.ph.i24.i236.preheader.new

.lr.ph.i24.i236.preheader.new:                    ; preds = %.lr.ph.i24.i236.preheader
  %unroll_iter3500 = and i64 %i.dtl, 9223372036854775806
  br label %.lr.ph.i24.i236

bb.tp:                                            ; preds = %bb.to
  %i.dtu = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.dtv = load ptr, ptr %i.dtu, align 8, !tbaa !171, !noalias !574
  %i.dtw = load ptr, ptr %i.dtv, align 8, !tbaa !306, !noalias !574 ; 4 uses
  %.not.i.i.i27.i239 = icmp eq ptr %i.dtw, null
  br i1 %.not.i.i.i27.i239, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i240, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.dtx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.dty = load i64, ptr %i.dtx, align 8, !tbaa !438, !noalias !574
  %i.dtz = getelementptr inbounds nuw i8, ptr %i.dtw, i64 9
  %i.dua = load i8, ptr %i.dtz, align 1, !tbaa !439, !range !127, !noalias !574, !noundef !128
  %i.dub = trunc nuw i8 %i.dua to i1
  %i.duc = getelementptr inbounds nuw i8, ptr %i.dtw, i64 8
  %i.dud = load i8, ptr %i.duc, align 8, !range !127, !noalias !574
  %i.due = trunc nuw i8 %i.dud to i1
  %i.duf = select i1 %i.dub, i1 %i.due, i1 false, !prof !117
  %i.dug = getelementptr inbounds nuw i8, ptr %i.dtw, i64 16
  %i.duh = load ptr, ptr %i.dug, align 8, !noalias !574
  %i.dui = select i1 %i.duf, ptr %i.duh, ptr null, !prof !117
  %i.duj = getelementptr inbounds i8, ptr %i.dui, i64 %i.dty
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i240

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i240: ; preds = %bb.tq, %bb.tp
  %.0.i.i.i29.i241 = phi ptr [ %i.duj, %bb.tq ], [ null, %bb.tp ] ; 5 uses
  %i.duk = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.dul = load i64, ptr %i.duk, align 8, !tbaa !178, !noalias !574 ; 2 uses
  %i.dum = ashr i64 %i.dul, 3
  %i.dun = and i64 %i.dul, 7
  %i.duo = icmp ne i64 %i.dun, 0
  %i.dup = zext i1 %i.duo to i64
  %i.duq = add nsw i64 %i.dum, %i.dup
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i29.i241, i8 0, i64 %i.duq, i1 false), !noalias !574
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24, !noalias !574
  %i.dur = load ptr, ptr %i.dto, align 8, !tbaa !66, !noalias !574
  %i.dus = load i64, ptr %i.dtm, align 8, !tbaa !99, !noalias !574
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef %i.dur, i64 noundef %i.dus, i64 noundef %i.dtl), !noalias !574
  %i.dut = icmp sgt i64 %i.dtl, 0
  br i1 %i.dut, label %.lr.ph55.i31.i243, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i31.i243:                                ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i240
  %i.duu = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.duv = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.tr

bb.tr:                                            ; preds = %.loopexit.i43.i254, %.lr.ph55.i31.i243
  %.081.i54.i32.i244 = phi i64 [ 0, %.lr.ph55.i31.i243 ], [ %.5.i.i45.i256, %.loopexit.i43.i254 ] ; 12 uses
  %.082.i53.i33.i245 = phi i64 [ 0, %.lr.ph55.i31.i243 ], [ %.587.i.i44.i255, %.loopexit.i43.i254 ] ; 6 uses
  %i.duw = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %26), !noalias !574 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i34.i246 = trunc i32 %i.duw to i16 ; 10 uses
  %i.dux = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !574
  %.not.i20.i35.i247 = icmp ne i64 %i.dux, 0
  %i.duy = load ptr, ptr %i.v, align 8, !noalias !574
  %i.duz = icmp ne ptr %i.duy, null
  %i.dva = select i1 %.not.i20.i35.i247, i1 %i.duz, i1 false
  br i1 %i.dva, label %bb.ud, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  %.sroa.14.0.extract.shift.i.i36.i248 = lshr i32 %i.duw, 16
  %.sroa.14.0.extract.trunc.i.i37.i249 = zext nneg i32 %.sroa.14.0.extract.shift.i.i36.i248 to i64
  %sext91.i.i38.i250 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i37.i249, 48
  %i.dvb = ashr exact i64 %sext91.i.i38.i250, 48
  %i.dvc = add nsw i64 %i.dvb, %.082.i53.i33.i245 ; 6 uses
  %i.dvd = ashr i32 %i.duw, 16                    ; 2 uses
  %sext.i.i39.i251 = shl i32 %i.duw, 16
  %i.dve = ashr exact i32 %sext.i.i39.i251, 16
  %i.dvf = icmp eq i32 %i.dvd, %i.dve
  br i1 %i.dvf, label %bb.tt, label %bb.tu

bb.tt:                                            ; preds = %bb.ts
  %i.dvg = sext i16 %.sroa.0.0.extract.trunc.i.i34.i246 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i29.i241, i64 noundef %.081.i54.i32.i244, i64 noundef %i.dvg, i1 noundef zeroext true), !noalias !574
  %i.dvh = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i246, 0
  br i1 %i.dvh, label %.lr.ph39.i54.i265.preheader, label %.loopexit.i43.i254

.lr.ph39.i54.i265.preheader:                      ; preds = %bb.tt
  %i.dvi = icmp eq i16 %.sroa.0.0.extract.trunc.i.i34.i246, 1
  br i1 %i.dvi, label %.lr.ph39.i54.i265.epil.preheader, label %.lr.ph39.i54.i265.preheader.new

.lr.ph39.i54.i265.preheader.new:                  ; preds = %.lr.ph39.i54.i265.preheader
  %unroll_iter3506 = and i64 %i.dvg, 32766
  br label %.lr.ph39.i54.i265

.lr.ph39.i54.i265:                                ; preds = %.lr.ph39.i54.i265, %.lr.ph39.i54.i265.preheader.new
  %.1.i37.i56.i267 = phi i64 [ %.081.i54.i32.i244, %.lr.ph39.i54.i265.preheader.new ], [ %i.dwa, %.lr.ph39.i54.i265 ] ; 4 uses
  %niter3507 = phi i64 [ 0, %.lr.ph39.i54.i265.preheader.new ], [ %niter3507.next.1, %.lr.ph39.i54.i265 ]
  %i.dvj = shl nsw i64 %.1.i37.i56.i267, 1
  %i.dvk = getelementptr inbounds i8, ptr %i.dtj, i64 %i.dvj
  %i.dvl = getelementptr inbounds [2 x i8], ptr %i.dtr, i64 %.1.i37.i56.i267
  %i.dvm = load i16, ptr %i.dvl, align 2, !tbaa !269, !noalias !574
  %i.dvn = zext i16 %i.dvm to i64
  %i.dvo = shl nuw nsw i64 %i.dvn, 1
  %i.dvp = getelementptr inbounds nuw i8, ptr %i.dti, i64 %i.dvo
  %i.dvq = load i16, ptr %i.dvp, align 1, !noalias !574
  store i16 %i.dvq, ptr %i.dvk, align 1, !noalias !574
  %i.dvr = add nsw i64 %.1.i37.i56.i267, 1        ; 2 uses
  %i.dvs = shl nsw i64 %i.dvr, 1
  %i.dvt = getelementptr inbounds i8, ptr %i.dtj, i64 %i.dvs
  %i.dvu = getelementptr inbounds [2 x i8], ptr %i.dtr, i64 %i.dvr
  %i.dvv = load i16, ptr %i.dvu, align 2, !tbaa !269, !noalias !574
  %i.dvw = zext i16 %i.dvv to i64
  %i.dvx = shl nuw nsw i64 %i.dvw, 1
  %i.dvy = getelementptr inbounds nuw i8, ptr %i.dti, i64 %i.dvx
  %i.dvz = load i16, ptr %i.dvy, align 1, !noalias !574
  store i16 %i.dvz, ptr %i.dvt, align 1, !noalias !574
  %i.dwa = add nsw i64 %.1.i37.i56.i267, 2        ; 3 uses
  %niter3507.next.1 = add i64 %niter3507, 2       ; 2 uses
  %niter3507.ncmp.1 = icmp eq i64 %niter3507.next.1, %unroll_iter3506
  br i1 %niter3507.ncmp.1, label %.loopexit.i43.i254.loopexit3175.unr-lcssa, label %.lr.ph39.i54.i265, !llvm.loop !577

bb.tu:                                            ; preds = %bb.ts
  %i.dwb = icmp sgt i32 %i.dvd, 0
  %i.dwc = sext i16 %.sroa.0.0.extract.trunc.i.i34.i246 to i64 ; 2 uses
  br i1 %i.dwb, label %.preheader30.i46.i257, label %.loopexit.sink.split.i40.i252

.preheader30.i46.i257:                            ; preds = %bb.tu
  %i.dwd = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i246, 0
  br i1 %i.dwd, label %.lr.ph36.i47.i258, label %.loopexit.i43.i254

.lr.ph36.i47.i258:                                ; preds = %.preheader30.i46.i257, %bb.uc
  %.079.i35.i48.i259 = phi i64 [ %i.dxo, %bb.uc ], [ 0, %.preheader30.i46.i257 ]
  %.2.i34.i49.i260 = phi i64 [ %i.dxn, %bb.uc ], [ %.081.i54.i32.i244, %.preheader30.i46.i257 ] ; 10 uses
  %i.dwe = load ptr, ptr %i.dto, align 8, !tbaa !66, !noalias !574 ; 2 uses
  %.not.i21.i50.i261 = icmp eq ptr %i.dwe, null
  br i1 %.not.i21.i50.i261, label %bb.tw, label %bb.tv

bb.tv:                                            ; preds = %.lr.ph36.i47.i258
  %i.dwf = load i64, ptr %i.dtm, align 8, !tbaa !99, !noalias !574
  %i.dwg = add nsw i64 %i.dwf, %.2.i34.i49.i260   ; 2 uses
  %i.dwh = lshr i64 %i.dwg, 3
  %i.dwi = getelementptr inbounds nuw i8, ptr %i.dwe, i64 %i.dwh
  %i.dwj = load i8, ptr %i.dwi, align 1, !tbaa !98, !noalias !574
  %i.dwk = trunc i64 %i.dwg to i8
  %i.dwl = and i8 %i.dwk, 7
  %i.dwm = lshr i8 %i.dwj, %i.dwl
  %i.dwn = trunc i8 %i.dwm to i1
  br i1 %i.dwn, label %bb.ua, label %bb.ub

bb.tw:                                            ; preds = %.lr.ph36.i47.i258
  %i.dwo = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !574
  %i.dwp = getelementptr inbounds nuw i8, ptr %i.dwo, i64 40
  %i.dwq = load i32, ptr %i.dwp, align 8, !tbaa !42, !noalias !574
  switch i32 %i.dwq, label %bb.tz [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i52.i263
    i32 28, label %bb.tx
    i32 38, label %bb.ty
  ]

bb.tx:                                            ; preds = %bb.tw
  %i.dwr = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i49.i260), !noalias !574
  br i1 %i.dwr, label %bb.ub, label %bb.ua

bb.ty:                                            ; preds = %bb.tw
  %i.dws = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i49.i260), !noalias !574
  br i1 %i.dws, label %bb.ub, label %bb.ua

end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  br i1 %i.dzi, label %.preheader27.i59.i270, label %.loopexit.sink.split.i40.i252

.preheader27.i59.i270:                            ; preds = %bb.um
  %i.dzk = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i246, 0
  br i1 %i.dzk, label %.lr.ph44.i60.i271, label %.loopexit.i43.i254

.lr.ph44.i60.i271:                                ; preds = %.preheader27.i59.i270, %bb.va
  %.0.i43.i61.i272 = phi i64 [ %i.ebq, %bb.va ], [ 0, %.preheader27.i59.i270 ]
  %.4.i42.i62.i273 = phi i64 [ %i.ebp, %bb.va ], [ %.081.i54.i32.i244, %.preheader27.i59.i270 ] ; 10 uses
  %.385.i41.i63.i274 = phi i64 [ %.486.i.i65.i276, %bb.va ], [ %.082.i53.i33.i245, %.preheader27.i59.i270 ] ; 2 uses
  %i.dzl = load ptr, ptr %i.dto, align 8, !tbaa !66, !noalias !574 ; 2 uses
  %.not.i26.i64.i275 = icmp eq ptr %i.dzl, null
  br i1 %.not.i26.i64.i275, label %bb.uo, label %bb.un

bb.un:                                            ; preds = %.lr.ph44.i60.i271
  %i.dzm = load i64, ptr %i.dtm, align 8, !tbaa !99, !noalias !574
  %i.dzn = add nsw i64 %i.dzm, %.4.i42.i62.i273   ; 2 uses
  %i.dzo = lshr i64 %i.dzn, 3
  %i.dzp = getelementptr inbounds nuw i8, ptr %i.dzl, i64 %i.dzo
  %i.dzq = load i8, ptr %i.dzp, align 1, !tbaa !98, !noalias !574
  %i.dzr = trunc i64 %i.dzn to i8
  %i.dzs = and i8 %i.dzr, 7
  %i.dzt = lshr i8 %i.dzq, %i.dzs
  %i.dzu = trunc i8 %i.dzt to i1
  br i1 %i.dzu, label %bb.us, label %bb.uz

bb.uo:                                            ; preds = %.lr.ph44.i60.i271
  %i.dzv = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !574
  %i.dzw = getelementptr inbounds nuw i8, ptr %i.dzv, i64 40
  %i.dzx = load i32, ptr %i.dzw, align 8, !tbaa !42, !noalias !574
  switch i32 %i.dzx, label %bb.ur [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i281
    i32 28, label %bb.up
    i32 38, label %bb.uq
  ]

bb.up:                                            ; preds = %bb.uo
  %i.dzy = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i273), !noalias !574
  br i1 %i.dzy, label %bb.uz, label %bb.us

bb.uq:                                            ; preds = %bb.uo
  %i.dzz = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i273), !noalias !574
  br i1 %i.dzz, label %bb.uz, label %bb.us

bb.ur:                                            ; preds = %bb.uo
  %i.eaa = load i64, ptr %i.duu, align 8, !tbaa !71, !noalias !574
  %i.eab = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !574
  %.not24.i71.i282 = icmp eq i64 %i.eaa, %i.eab
  br i1 %.not24.i71.i282, label %bb.uz, label %bb.us

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i281:   ; preds = %bb.uo
  %i.eac = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i273), !noalias !574
  br i1 %i.eac, label %bb.uz, label %bb.us

bb.us:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i281, %bb.ur, %bb.uq, %bb.up, %bb.un
  %i.ead = getelementptr inbounds [2 x i8], ptr %i.dtr, i64 %.4.i42.i62.i273 ; 2 uses
  %i.eae = load i16, ptr %i.ead, align 2, !tbaa !269, !noalias !574
  %i.eaf = zext i16 %i.eae to i64                 ; 4 uses
  %i.eag = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !574 ; 2 uses
  %.not.i29.i67.i278 = icmp eq ptr %i.eag, null
  br i1 %.not.i29.i67.i278, label %bb.uu, label %bb.ut

bb.ut:                                            ; preds = %bb.us
  %i.eah = load i64, ptr %i.duv, align 8, !tbaa !99, !noalias !574
  %i.eai = add nsw i64 %i.eah, %i.eaf             ; 2 uses
  %i.eaj = lshr i64 %i.eai, 3
  %i.eak = getelementptr inbounds nuw i8, ptr %i.eag, i64 %i.eaj
  %i.eal = load i8, ptr %i.eak, align 1, !tbaa !98, !noalias !574
  %i.eam = trunc i64 %i.eai to i8
  %i.ean = and i8 %i.eam, 7
  %i.eao = lshr i8 %i.eal, %i.ean
  %i.eap = trunc i8 %i.eao to i1
  br i1 %i.eap, label %bb.uy, label %bb.uz

bb.uu:                                            ; preds = %bb.us
  %i.eaq = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !574
  %i.ear = getelementptr inbounds nuw i8, ptr %i.eaq, i64 40
  %i.eas = load i32, ptr %i.ear, align 8, !tbaa !42, !noalias !574
  switch i32 %i.eas, label %bb.ux [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i279
    i32 28, label %bb.uv
    i32 38, label %bb.uw
  ]

bb.uv:                                            ; preds = %bb.uu
  %i.eat = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.eaf), !noalias !574
  br i1 %i.eat, label %bb.uz, label %bb.uy

bb.uw:                                            ; preds = %bb.uu
  %i.eau = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.eaf), !noalias !574
  br i1 %i.eau, label %bb.uz, label %bb.uy

bb.ux:                                            ; preds = %bb.uu
  %i.eav = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !574
  %i.eaw = load i64, ptr %i.dtk, align 8, !tbaa !62, !noalias !574
  %.not25.i69.i280 = icmp eq i64 %i.eav, %i.eaw
  br i1 %.not25.i69.i280, label %bb.uz, label %bb.uy

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i279:   ; preds = %bb.uu
  %i.eax = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.eaf), !noalias !574
  br i1 %i.eax, label %bb.uz, label %bb.uy

bb.uy:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i279, %bb.ux, %bb.uw, %bb.uv, %bb.ut
  %i.eay = shl nsw i64 %.4.i42.i62.i273, 1
  %i.eaz = getelementptr inbounds i8, ptr %i.dtj, i64 %i.eay
  %i.eba = load i16, ptr %i.ead, align 2, !tbaa !269, !noalias !574
  %i.ebb = zext i16 %i.eba to i64
  %i.ebc = shl nuw nsw i64 %i.ebb, 1
  %i.ebd = getelementptr inbounds nuw i8, ptr %i.dti, i64 %i.ebc
  %i.ebe = load i16, ptr %i.ebd, align 1, !noalias !574
  store i16 %i.ebe, ptr %i.eaz, align 1, !noalias !574
  %i.ebf = srem i64 %.4.i42.i62.i273, 8
  %i.ebg = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ebf
  %i.ebh = load i8, ptr %i.ebg, align 1, !tbaa !98, !noalias !574
  %i.ebi = sdiv i64 %.4.i42.i62.i273, 8
  %i.ebj = getelementptr inbounds i8, ptr %.0.i.i.i29.i241, i64 %i.ebi ; 2 uses
  %i.ebk = load i8, ptr %i.ebj, align 1, !tbaa !98, !noalias !574
  %i.ebl = or i8 %i.ebk, %i.ebh
  store i8 %i.ebl, ptr %i.ebj, align 1, !tbaa !98, !noalias !574
  %i.ebm = add nsw i64 %.385.i41.i63.i274, 1
  br label %bb.va

bb.uz:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i279, %bb.ux, %bb.uw, %bb.uv, %bb.ut, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i281, %bb.ur, %bb.uq, %bb.up, %bb.un
  %i.ebn = shl nsw i64 %.4.i42.i62.i273, 1
  %i.ebo = getelementptr inbounds i8, ptr %i.dtj, i64 %i.ebn
  store i16 0, ptr %i.ebo, align 1, !noalias !574
  br label %bb.va

bb.va:                                            ; preds = %bb.uz, %bb.uy
  %.486.i.i65.i276 = phi i64 [ %i.ebm, %bb.uy ], [ %.385.i41.i63.i274, %bb.uz ] ; 2 uses
  %i.ebp = add nsw i64 %.4.i42.i62.i273, 1        ; 2 uses
  %i.ebq = add nuw nsw i64 %.0.i43.i61.i272, 1    ; 2 uses
  %exitcond65.not.i66.i277 = icmp eq i64 %i.ebq, %i.dzj
  br i1 %exitcond65.not.i66.i277, label %.loopexit.i43.i254, label %.lr.ph44.i60.i271, !llvm.loop !580

.loopexit.sink.split.i40.i252:                    ; preds = %bb.um, %bb.tu
  %.sink86.i41.i = phi i64 [ %i.dwc, %bb.tu ], [ %i.dzj, %bb.um ] ; 2 uses
  %.587.i.ph.i42.i253 = phi i64 [ %i.dvc, %bb.tu ], [ %.082.i53.i33.i245, %bb.um ]
  %i.ebr = shl nsw i64 %.081.i54.i32.i244, 1
  %i.ebs = getelementptr inbounds i8, ptr %i.dtj, i64 %i.ebr
  %i.ebt = shl nsw i64 %.sink86.i41.i, 1
  call void @llvm.memset.p0.i64(ptr align 1 %i.ebs, i8 0, i64 %i.ebt, i1 false), !noalias !574
  %i.ebu = add nsw i64 %.sink86.i41.i, %.081.i54.i32.i244
  br label %.loopexit.i43.i254

.loopexit.i43.i254.loopexit3175.unr-lcssa:        ; preds = %.lr.ph39.i54.i265
  %i.ebv = and i16 %.sroa.0.0.extract.trunc.i.i34.i246, 1
  %lcmp.mod3503.not = icmp eq i16 %i.ebv, 0
  br i1 %lcmp.mod3503.not, label %.loopexit.i43.i254, label %.lr.ph39.i54.i265.epil.preheader

.lr.ph39.i54.i265.epil.preheader:                 ; preds = %.loopexit.i43.i254.loopexit3175.unr-lcssa, %.lr.ph39.i54.i265.preheader
  %.1.i37.i56.i267.epil.init = phi i64 [ %.081.i54.i32.i244, %.lr.ph39.i54.i265.preheader ], [ %i.dwa, %.loopexit.i43.i254.loopexit3175.unr-lcssa ] ; 3 uses
  %lcmp.mod3505 = trunc i32 %i.duw to i1
  call void @llvm.assume(i1 %lcmp.mod3505)
  %i.ebw = shl nsw i64 %.1.i37.i56.i267.epil.init, 1
  %i.ebx = getelementptr inbounds i8, ptr %i.dtj, i64 %i.ebw
  %i.eby = getelementptr inbounds [2 x i8], ptr %i.dtr, i64 %.1.i37.i56.i267.epil.init
  %i.ebz = load i16, ptr %i.eby, align 2, !tbaa !269, !noalias !574
  %i.eca = zext i16 %i.ebz to i64
  %i.ecb = shl nuw nsw i64 %i.eca, 1
  %i.ecc = getelementptr inbounds nuw i8, ptr %i.dti, i64 %i.ecb
  %i.ecd = load i16, ptr %i.ecc, align 1, !noalias !574
  store i16 %i.ecd, ptr %i.ebx, align 1, !noalias !574
  %i.ece = add nsw i64 %.1.i37.i56.i267.epil.init, 1
  br label %.loopexit.i43.i254

.loopexit.i43.i254:                               ; preds = %bb.uc, %.lr.ph39.i54.i265.epil.preheader, %.loopexit.i43.i254.loopexit3175.unr-lcssa, %bb.va, %bb.ul, %.loopexit.sink.split.i40.i252, %.preheader27.i59.i270, %.preheader.i72.i283, %.preheader30.i46.i257, %bb.tt
  %.587.i.i44.i255 = phi i64 [ %.587.i.ph.i42.i253, %.loopexit.sink.split.i40.i252 ], [ %i.dvc, %bb.tt ], [ %.486.i.i65.i276, %bb.va ], [ %i.dvc, %.lr.ph39.i54.i265.epil.preheader ], [ %i.dvc, %.preheader30.i46.i257 ], [ %.082.i53.i33.i245, %.preheader.i72.i283 ], [ %.082.i53.i33.i245, %.preheader27.i59.i270 ], [ %.284.i.i78.i289, %bb.ul ], [ %i.dvc, %.loopexit.i43.i254.loopexit3175.unr-lcssa ], [ %i.dvc, %bb.uc ] ; 2 uses
  %.5.i.i45.i256 = phi i64 [ %i.ebu, %.loopexit.sink.split.i40.i252 ], [ %.081.i54.i32.i244, %bb.tt ], [ %i.ebp, %bb.va ], [ %i.ece, %.lr.ph39.i54.i265.epil.preheader ], [ %.081.i54.i32.i244, %.preheader30.i46.i257 ], [ %.081.i54.i32.i244, %.preheader.i72.i283 ], [ %.081.i54.i32.i244, %.preheader27.i59.i270 ], [ %i.dzg, %bb.ul ], [ %i.dwa, %.loopexit.i43.i254.loopexit3175.unr-lcssa ], [ %i.dxn, %bb.uc ] ; 2 uses
  %i.ecf = icmp slt i64 %.5.i.i45.i256, %i.dtl
  br i1 %i.ecf, label %bb.tr, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !581

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i43.i254, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i240
  %.082.i.lcssa.i30.i242 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i240 ], [ %.587.i.i44.i255, %.loopexit.i43.i254 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24, !noalias !574
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i236:                                  ; preds = %.lr.ph.i24.i236, %.lr.ph.i24.i236.preheader.new
  %.0.i1833.i25.i237 = phi i64 [ 0, %.lr.ph.i24.i236.preheader.new ], [ %i.ecx, %.lr.ph.i24.i236 ] ; 4 uses
  %niter3501 = phi i64 [ 0, %.lr.ph.i24.i236.preheader.new ], [ %niter3501.next.1, %.lr.ph.i24.i236 ]
  %i.ecg = shl nuw nsw i64 %.0.i1833.i25.i237, 1
  %i.ech = getelementptr inbounds nuw i8, ptr %i.dtj, i64 %i.ecg
  %i.eci = getelementptr inbounds nuw [2 x i8], ptr %i.dtr, i64 %.0.i1833.i25.i237
  %i.ecj = load i16, ptr %i.eci, align 2, !tbaa !269, !noalias !574
  %i.eck = zext i16 %i.ecj to i64
  %i.ecl = shl nuw nsw i64 %i.eck, 1
  %i.ecm = getelementptr inbounds nuw i8, ptr %i.dti, i64 %i.ecl
  %i.ecn = load i16, ptr %i.ecm, align 1, !noalias !574
  store i16 %i.ecn, ptr %i.ech, align 1, !noalias !574
  %i.eco = or disjoint i64 %.0.i1833.i25.i237, 1  ; 2 uses
  %i.ecp = shl nuw nsw i64 %i.eco, 1
  %i.ecq = getelementptr inbounds nuw i8, ptr %i.dtj, i64 %i.ecp
  %i.ecr = getelementptr inbounds nuw [2 x i8], ptr %i.dtr, i64 %i.eco
  %i.ecs = load i16, ptr %i.ecr, align 2, !tbaa !269, !noalias !574
  %i.ect = zext i16 %i.ecs to i64
  %i.ecu = shl nuw nsw i64 %i.ect, 1
  %i.ecv = getelementptr inbounds nuw i8, ptr %i.dti, i64 %i.ecu
  %i.ecw = load i16, ptr %i.ecv, align 1, !noalias !574
  store i16 %i.ecw, ptr %i.ecq, align 1, !noalias !574
  %i.ecx = add nuw nsw i64 %.0.i1833.i25.i237, 2  ; 2 uses
  %niter3501.next.1 = add nuw nsw i64 %niter3501, 2 ; 2 uses
  %niter3501.ncmp.1 = icmp eq i64 %niter3501.next.1, %unroll_iter3500
  br i1 %niter3501.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3181.unr-lcssa, label %.lr.ph.i24.i236, !llvm.loop !582

bb.vb:                                            ; preds = %bb.rw
  br i1 %i.djb, label %bb.vd, label %bb.vc

bb.vc:                                            ; preds = %bb.vb
  %i.ecy = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ecz = load i64, ptr %i.ecy, align 8, !tbaa !71, !noalias !583
  %.not.i19.i83.i173 = icmp ne i64 %i.ecz, 0
  %i.eda = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.edb = load ptr, ptr %i.eda, align 8, !noalias !583
  %i.edc = icmp ne ptr %i.edb, null
  %i.edd = select i1 %.not.i19.i83.i173, i1 %i.edc, i1 false
  br label %bb.vd

bb.vd:                                            ; preds = %bb.vc, %bb.vb
  %i.ede = phi i1 [ true, %bb.vb ], [ %i.edd, %bb.vc ]
  %i.edf = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !583
  %i.edg = extractvalue { i32, ptr } %i.edf, 1    ; 9 uses
  %i.edh = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !583 ; 13 uses
  %i.edi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.edj = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !583 ; 11 uses
  %i.edk = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.edl = load i64, ptr %i.edk, align 8, !tbaa !99, !noalias !583
  %i.edm = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.edn = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.edo = load ptr, ptr %i.edn, align 8, !tbaa !66, !noalias !583
  %i.edp = getelementptr inbounds [4 x i8], ptr %i.edo, i64 %i.edl ; 9 uses
  br i1 %i.ede, label %bb.ve, label %.preheader32.i84.i174

.preheader32.i84.i174:                            ; preds = %bb.vd
  %i.edq = icmp sgt i64 %i.edj, 0
  br i1 %i.edq, label %.lr.ph.i86.i176.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i176.preheader:                        ; preds = %.preheader32.i84.i174
  %xtraiter3486 = and i64 %i.edj, 1
  %i.edr = icmp eq i64 %i.edj, 1
  br i1 %i.edr, label %.lr.ph.i86.i176.epil.preheader, label %.lr.ph.i86.i176.preheader.new

.lr.ph.i86.i176.preheader.new:                    ; preds = %.lr.ph.i86.i176.preheader
  %unroll_iter3489 = and i64 %i.edj, 9223372036854775806
  br label %.lr.ph.i86.i176

bb.ve:                                            ; preds = %bb.vd
  %i.eds = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.edt = load ptr, ptr %i.eds, align 8, !tbaa !171, !noalias !583
  %i.edu = load ptr, ptr %i.edt, align 8, !tbaa !306, !noalias !583 ; 4 uses
  %.not.i.i.i89.i179 = icmp eq ptr %i.edu, null
  br i1 %.not.i.i.i89.i179, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i180, label %bb.vf

bb.vf:                                            ; preds = %bb.ve
  %i.edv = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.edw = load i64, ptr %i.edv, align 8, !tbaa !438, !noalias !583
  %i.edx = getelementptr inbounds nuw i8, ptr %i.edu, i64 9
  %i.edy = load i8, ptr %i.edx, align 1, !tbaa !439, !range !127, !noalias !583, !noundef !128
  %i.edz = trunc nuw i8 %i.edy to i1
  %i.eea = getelementptr inbounds nuw i8, ptr %i.edu, i64 8
  %i.eeb = load i8, ptr %i.eea, align 8, !range !127, !noalias !583
  %i.eec = trunc nuw i8 %i.eeb to i1
  %i.eed = select i1 %i.edz, i1 %i.eec, i1 false, !prof !117
  %i.eee = getelementptr inbounds nuw i8, ptr %i.edu, i64 16
  %i.eef = load ptr, ptr %i.eee, align 8, !noalias !583
  %i.eeg = select i1 %i.eed, ptr %i.eef, ptr null, !prof !117
  %i.eeh = getelementptr inbounds i8, ptr %i.eeg, i64 %i.edw
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i180

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i180: ; preds = %bb.vf, %bb.ve
  %.0.i.i.i91.i181 = phi ptr [ %i.eeh, %bb.vf ], [ null, %bb.ve ] ; 5 uses
  %i.eei = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.eej = load i64, ptr %i.eei, align 8, !tbaa !178, !noalias !583 ; 2 uses
  %i.eek = ashr i64 %i.eej, 3
  %i.eel = and i64 %i.eej, 7
  %i.eem = icmp ne i64 %i.eel, 0
  %i.een = zext i1 %i.eem to i64
  %i.eeo = add nsw i64 %i.eek, %i.een
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i91.i181, i8 0, i64 %i.eeo, i1 false), !noalias !583
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24, !noalias !583
  %i.eep = load ptr, ptr %i.edm, align 8, !tbaa !66, !noalias !583
  %i.eeq = load i64, ptr %i.edk, align 8, !tbaa !99, !noalias !583
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef %i.eep, i64 noundef %i.eeq, i64 noundef %i.edj), !noalias !583
  %i.eer = icmp sgt i64 %i.edj, 0
  br i1 %i.eer, label %.lr.ph55.i93.i183, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i93.i183:                                ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i180
  %i.ees = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.eet = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.vg

bb.vg:                                            ; preds = %.loopexit.i105.i194, %.lr.ph55.i93.i183
  %.081.i54.i94.i184 = phi i64 [ 0, %.lr.ph55.i93.i183 ], [ %.5.i.i107.i196, %.loopexit.i105.i194 ] ; 12 uses
  %.082.i53.i95.i185 = phi i64 [ 0, %.lr.ph55.i93.i183 ], [ %.587.i.i106.i195, %.loopexit.i105.i194 ] ; 6 uses
  %i.eeu = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %25), !noalias !583 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i96.i186 = trunc i32 %i.eeu to i16 ; 10 uses
  %i.eev = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !583
  %.not.i20.i97.i187 = icmp ne i64 %i.eev, 0
  %i.eew = load ptr, ptr %i.v, align 8, !noalias !583
  %i.eex = icmp ne ptr %i.eew, null
  %i.eey = select i1 %.not.i20.i97.i187, i1 %i.eex, i1 false
  br i1 %i.eey, label %bb.vs, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  %.sroa.14.0.extract.shift.i.i98.i188 = lshr i32 %i.eeu, 16
  %.sroa.14.0.extract.trunc.i.i99.i189 = zext nneg i32 %.sroa.14.0.extract.shift.i.i98.i188 to i64
  %sext91.i.i100.i190 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i99.i189, 48
  %i.eez = ashr exact i64 %sext91.i.i100.i190, 48
  %i.efa = add nsw i64 %i.eez, %.082.i53.i95.i185 ; 6 uses
  %i.efb = ashr i32 %i.eeu, 16                    ; 2 uses
  %sext.i.i101.i191 = shl i32 %i.eeu, 16
  %i.efc = ashr exact i32 %sext.i.i101.i191, 16
  %i.efd = icmp eq i32 %i.efb, %i.efc
  br i1 %i.efd, label %bb.vi, label %bb.vj

bb.vi:                                            ; preds = %bb.vh
  %i.efe = sext i16 %.sroa.0.0.extract.trunc.i.i96.i186 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i91.i181, i64 noundef %.081.i54.i94.i184, i64 noundef %i.efe, i1 noundef zeroext true), !noalias !583
  %i.eff = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i186, 0
  br i1 %i.eff, label %.lr.ph39.i116.i205.preheader, label %.loopexit.i105.i194

.lr.ph39.i116.i205.preheader:                     ; preds = %bb.vi
  %i.efg = icmp eq i16 %.sroa.0.0.extract.trunc.i.i96.i186, 1
  br i1 %i.efg, label %.lr.ph39.i116.i205.epil.preheader, label %.lr.ph39.i116.i205.preheader.new

.lr.ph39.i116.i205.preheader.new:                 ; preds = %.lr.ph39.i116.i205.preheader
  %unroll_iter3495 = and i64 %i.efe, 32766
  br label %.lr.ph39.i116.i205

.lr.ph39.i116.i205:                               ; preds = %.lr.ph39.i116.i205, %.lr.ph39.i116.i205.preheader.new
  %.1.i37.i118.i207 = phi i64 [ %.081.i54.i94.i184, %.lr.ph39.i116.i205.preheader.new ], [ %i.efy, %.lr.ph39.i116.i205 ] ; 4 uses
  %niter3496 = phi i64 [ 0, %.lr.ph39.i116.i205.preheader.new ], [ %niter3496.next.1, %.lr.ph39.i116.i205 ]
  %i.efh = shl nsw i64 %.1.i37.i118.i207, 1
  %i.efi = getelementptr inbounds i8, ptr %i.edh, i64 %i.efh
  %i.efj = getelementptr inbounds [4 x i8], ptr %i.edp, i64 %.1.i37.i118.i207
  %i.efk = load i32, ptr %i.efj, align 4, !tbaa !3, !noalias !583
  %i.efl = shl i32 %i.efk, 1
  %i.efm = zext i32 %i.efl to i64
  %i.efn = getelementptr inbounds nuw i8, ptr %i.edg, i64 %i.efm
  %i.efo = load i16, ptr %i.efn, align 1, !noalias !583
  store i16 %i.efo, ptr %i.efi, align 1, !noalias !583
  %i.efp = add nsw i64 %.1.i37.i118.i207, 1       ; 2 uses
  %i.efq = shl nsw i64 %i.efp, 1
  %i.efr = getelementptr inbounds i8, ptr %i.edh, i64 %i.efq
  %i.efs = getelementptr inbounds [4 x i8], ptr %i.edp, i64 %i.efp
  %i.eft = load i32, ptr %i.efs, align 4, !tbaa !3, !noalias !583
  %i.efu = shl i32 %i.eft, 1
  %i.efv = zext i32 %i.efu to i64
  %i.efw = getelementptr inbounds nuw i8, ptr %i.edg, i64 %i.efv
  %i.efx = load i16, ptr %i.efw, align 1, !noalias !583
  store i16 %i.efx, ptr %i.efr, align 1, !noalias !583
  %i.efy = add nsw i64 %.1.i37.i118.i207, 2       ; 3 uses
  %niter3496.next.1 = add i64 %niter3496, 2       ; 2 uses
  %niter3496.ncmp.1 = icmp eq i64 %niter3496.next.1, %unroll_iter3495
  br i1 %niter3496.ncmp.1, label %.loopexit.i105.i194.loopexit3183.unr-lcssa, label %.lr.ph39.i116.i205, !llvm.loop !586

bb.vj:                                            ; preds = %bb.vh
  %i.efz = icmp sgt i32 %i.efb, 0
  %i.ega = sext i16 %.sroa.0.0.extract.trunc.i.i96.i186 to i64 ; 2 uses
  br i1 %i.efz, label %.preheader30.i108.i197, label %.loopexit.sink.split.i102.i192

.preheader30.i108.i197:                           ; preds = %bb.vj
  %i.egb = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i186, 0
  br i1 %i.egb, label %.lr.ph36.i109.i198, label %.loopexit.i105.i194

.lr.ph36.i109.i198:                               ; preds = %.preheader30.i108.i197, %bb.vr
  %.079.i35.i110.i199 = phi i64 [ %i.ehm, %bb.vr ], [ 0, %.preheader30.i108.i197 ]
  %.2.i34.i111.i200 = phi i64 [ %i.ehl, %bb.vr ], [ %.081.i54.i94.i184, %.preheader30.i108.i197 ] ; 10 uses
  %i.egc = load ptr, ptr %i.edm, align 8, !tbaa !66, !noalias !583 ; 2 uses
  %.not.i21.i112.i201 = icmp eq ptr %i.egc, null
  br i1 %.not.i21.i112.i201, label %bb.vl, label %bb.vk

bb.vk:                                            ; preds = %.lr.ph36.i109.i198
  %i.egd = load i64, ptr %i.edk, align 8, !tbaa !99, !noalias !583
  %i.ege = add nsw i64 %i.egd, %.2.i34.i111.i200  ; 2 uses
  %i.egf = lshr i64 %i.ege, 3
  %i.egg = getelementptr inbounds nuw i8, ptr %i.egc, i64 %i.egf
  %i.egh = load i8, ptr %i.egg, align 1, !tbaa !98, !noalias !583
  %i.egi = trunc i64 %i.ege to i8
  %i.egj = and i8 %i.egi, 7
  %i.egk = lshr i8 %i.egh, %i.egj
  %i.egl = trunc i8 %i.egk to i1
  br i1 %i.egl, label %bb.vp, label %bb.vq

bb.vl:                                            ; preds = %.lr.ph36.i109.i198
  %i.egm = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !583
  %i.egn = getelementptr inbounds nuw i8, ptr %i.egm, i64 40
  %i.ego = load i32, ptr %i.egn, align 8, !tbaa !42, !noalias !583
  switch i32 %i.ego, label %bb.vo [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i114.i203
    i32 28, label %bb.vm
    i32 38, label %bb.vn
  ]

bb.vm:                                            ; preds = %bb.vl
  %i.egp = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i111.i200), !noalias !583
  br i1 %i.egp, label %bb.vq, label %bb.vp

bb.vn:                                            ; preds = %bb.vl
  %i.egq = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i111.i200), !noalias !583
  br i1 %i.egq, label %bb.vq, label %bb.vp

end_hunk_7
begin_hunk_8_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  br i1 %i.ejg, label %.preheader27.i121.i210, label %.loopexit.sink.split.i102.i192

.preheader27.i121.i210:                           ; preds = %bb.wb
  %i.eji = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i186, 0
  br i1 %i.eji, label %.lr.ph44.i122.i211, label %.loopexit.i105.i194

.lr.ph44.i122.i211:                               ; preds = %.preheader27.i121.i210, %bb.wp
  %.0.i43.i123.i212 = phi i64 [ %i.elo, %bb.wp ], [ 0, %.preheader27.i121.i210 ]
  %.4.i42.i124.i213 = phi i64 [ %i.eln, %bb.wp ], [ %.081.i54.i94.i184, %.preheader27.i121.i210 ] ; 10 uses
  %.385.i41.i125.i214 = phi i64 [ %.486.i.i127.i216, %bb.wp ], [ %.082.i53.i95.i185, %.preheader27.i121.i210 ] ; 2 uses
  %i.ejj = load ptr, ptr %i.edm, align 8, !tbaa !66, !noalias !583 ; 2 uses
  %.not.i26.i126.i215 = icmp eq ptr %i.ejj, null
  br i1 %.not.i26.i126.i215, label %bb.wd, label %bb.wc

bb.wc:                                            ; preds = %.lr.ph44.i122.i211
  %i.ejk = load i64, ptr %i.edk, align 8, !tbaa !99, !noalias !583
  %i.ejl = add nsw i64 %i.ejk, %.4.i42.i124.i213  ; 2 uses
  %i.ejm = lshr i64 %i.ejl, 3
  %i.ejn = getelementptr inbounds nuw i8, ptr %i.ejj, i64 %i.ejm
  %i.ejo = load i8, ptr %i.ejn, align 1, !tbaa !98, !noalias !583
  %i.ejp = trunc i64 %i.ejl to i8
  %i.ejq = and i8 %i.ejp, 7
  %i.ejr = lshr i8 %i.ejo, %i.ejq
  %i.ejs = trunc i8 %i.ejr to i1
  br i1 %i.ejs, label %bb.wh, label %bb.wo

bb.wd:                                            ; preds = %.lr.ph44.i122.i211
  %i.ejt = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !583
  %i.eju = getelementptr inbounds nuw i8, ptr %i.ejt, i64 40
  %i.ejv = load i32, ptr %i.eju, align 8, !tbaa !42, !noalias !583
  switch i32 %i.ejv, label %bb.wg [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i221
    i32 28, label %bb.we
    i32 38, label %bb.wf
  ]

bb.we:                                            ; preds = %bb.wd
  %i.ejw = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i213), !noalias !583
  br i1 %i.ejw, label %bb.wo, label %bb.wh

bb.wf:                                            ; preds = %bb.wd
  %i.ejx = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i213), !noalias !583
  br i1 %i.ejx, label %bb.wo, label %bb.wh

bb.wg:                                            ; preds = %bb.wd
  %i.ejy = load i64, ptr %i.ees, align 8, !tbaa !71, !noalias !583
  %i.ejz = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !583
  %.not24.i133.i222 = icmp eq i64 %i.ejy, %i.ejz
  br i1 %.not24.i133.i222, label %bb.wo, label %bb.wh

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i221:  ; preds = %bb.wd
  %i.eka = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i213), !noalias !583
  br i1 %i.eka, label %bb.wo, label %bb.wh

bb.wh:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i221, %bb.wg, %bb.wf, %bb.we, %bb.wc
  %i.ekb = getelementptr inbounds [4 x i8], ptr %i.edp, i64 %.4.i42.i124.i213 ; 2 uses
  %i.ekc = load i32, ptr %i.ekb, align 4, !tbaa !3, !noalias !583
  %i.ekd = zext i32 %i.ekc to i64                 ; 4 uses
  %i.eke = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !583 ; 2 uses
  %.not.i29.i129.i218 = icmp eq ptr %i.eke, null
  br i1 %.not.i29.i129.i218, label %bb.wj, label %bb.wi

bb.wi:                                            ; preds = %bb.wh
  %i.ekf = load i64, ptr %i.eet, align 8, !tbaa !99, !noalias !583
  %i.ekg = add nsw i64 %i.ekf, %i.ekd             ; 2 uses
  %i.ekh = lshr i64 %i.ekg, 3
  %i.eki = getelementptr inbounds nuw i8, ptr %i.eke, i64 %i.ekh
  %i.ekj = load i8, ptr %i.eki, align 1, !tbaa !98, !noalias !583
  %i.ekk = trunc i64 %i.ekg to i8
  %i.ekl = and i8 %i.ekk, 7
  %i.ekm = lshr i8 %i.ekj, %i.ekl
  %i.ekn = trunc i8 %i.ekm to i1
  br i1 %i.ekn, label %bb.wn, label %bb.wo

bb.wj:                                            ; preds = %bb.wh
  %i.eko = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !583
  %i.ekp = getelementptr inbounds nuw i8, ptr %i.eko, i64 40
  %i.ekq = load i32, ptr %i.ekp, align 8, !tbaa !42, !noalias !583
  switch i32 %i.ekq, label %bb.wm [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i219
    i32 28, label %bb.wk
    i32 38, label %bb.wl
  ]

bb.wk:                                            ; preds = %bb.wj
  %i.ekr = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ekd), !noalias !583
  br i1 %i.ekr, label %bb.wo, label %bb.wn

bb.wl:                                            ; preds = %bb.wj
  %i.eks = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ekd), !noalias !583
  br i1 %i.eks, label %bb.wo, label %bb.wn

bb.wm:                                            ; preds = %bb.wj
  %i.ekt = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !583
  %i.eku = load i64, ptr %i.edi, align 8, !tbaa !62, !noalias !583
  %.not25.i131.i220 = icmp eq i64 %i.ekt, %i.eku
  br i1 %.not25.i131.i220, label %bb.wo, label %bb.wn

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i219:  ; preds = %bb.wj
  %i.ekv = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ekd), !noalias !583
  br i1 %i.ekv, label %bb.wo, label %bb.wn

bb.wn:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i219, %bb.wm, %bb.wl, %bb.wk, %bb.wi
  %i.ekw = shl nsw i64 %.4.i42.i124.i213, 1
  %i.ekx = getelementptr inbounds i8, ptr %i.edh, i64 %i.ekw
  %i.eky = load i32, ptr %i.ekb, align 4, !tbaa !3, !noalias !583
  %i.ekz = shl i32 %i.eky, 1
  %i.ela = zext i32 %i.ekz to i64
  %i.elb = getelementptr inbounds nuw i8, ptr %i.edg, i64 %i.ela
  %i.elc = load i16, ptr %i.elb, align 1, !noalias !583
  store i16 %i.elc, ptr %i.ekx, align 1, !noalias !583
  %i.eld = srem i64 %.4.i42.i124.i213, 8
  %i.ele = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.eld
  %i.elf = load i8, ptr %i.ele, align 1, !tbaa !98, !noalias !583
  %i.elg = sdiv i64 %.4.i42.i124.i213, 8
  %i.elh = getelementptr inbounds i8, ptr %.0.i.i.i91.i181, i64 %i.elg ; 2 uses
  %i.eli = load i8, ptr %i.elh, align 1, !tbaa !98, !noalias !583
  %i.elj = or i8 %i.eli, %i.elf
  store i8 %i.elj, ptr %i.elh, align 1, !tbaa !98, !noalias !583
  %i.elk = add nsw i64 %.385.i41.i125.i214, 1
  br label %bb.wp

bb.wo:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i219, %bb.wm, %bb.wl, %bb.wk, %bb.wi, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i221, %bb.wg, %bb.wf, %bb.we, %bb.wc
  %i.ell = shl nsw i64 %.4.i42.i124.i213, 1
  %i.elm = getelementptr inbounds i8, ptr %i.edh, i64 %i.ell
  store i16 0, ptr %i.elm, align 1, !noalias !583
  br label %bb.wp

bb.wp:                                            ; preds = %bb.wo, %bb.wn
  %.486.i.i127.i216 = phi i64 [ %i.elk, %bb.wn ], [ %.385.i41.i125.i214, %bb.wo ] ; 2 uses
  %i.eln = add nsw i64 %.4.i42.i124.i213, 1       ; 2 uses
  %i.elo = add nuw nsw i64 %.0.i43.i123.i212, 1   ; 2 uses
  %exitcond65.not.i128.i217 = icmp eq i64 %i.elo, %i.ejh
  br i1 %exitcond65.not.i128.i217, label %.loopexit.i105.i194, label %.lr.ph44.i122.i211, !llvm.loop !589

.loopexit.sink.split.i102.i192:                   ; preds = %bb.wb, %bb.vj
  %.sink86.i103.i = phi i64 [ %i.ega, %bb.vj ], [ %i.ejh, %bb.wb ] ; 2 uses
  %.587.i.ph.i104.i193 = phi i64 [ %i.efa, %bb.vj ], [ %.082.i53.i95.i185, %bb.wb ]
  %i.elp = shl nsw i64 %.081.i54.i94.i184, 1
  %i.elq = getelementptr inbounds i8, ptr %i.edh, i64 %i.elp
  %i.elr = shl nsw i64 %.sink86.i103.i, 1
  call void @llvm.memset.p0.i64(ptr align 1 %i.elq, i8 0, i64 %i.elr, i1 false), !noalias !583
  %i.els = add nsw i64 %.sink86.i103.i, %.081.i54.i94.i184
  br label %.loopexit.i105.i194

.loopexit.i105.i194.loopexit3183.unr-lcssa:       ; preds = %.lr.ph39.i116.i205
  %i.elt = and i16 %.sroa.0.0.extract.trunc.i.i96.i186, 1
  %lcmp.mod3492.not = icmp eq i16 %i.elt, 0
  br i1 %lcmp.mod3492.not, label %.loopexit.i105.i194, label %.lr.ph39.i116.i205.epil.preheader

.lr.ph39.i116.i205.epil.preheader:                ; preds = %.loopexit.i105.i194.loopexit3183.unr-lcssa, %.lr.ph39.i116.i205.preheader
  %.1.i37.i118.i207.epil.init = phi i64 [ %.081.i54.i94.i184, %.lr.ph39.i116.i205.preheader ], [ %i.efy, %.loopexit.i105.i194.loopexit3183.unr-lcssa ] ; 3 uses
  %lcmp.mod3494 = trunc i32 %i.eeu to i1
  call void @llvm.assume(i1 %lcmp.mod3494)
  %i.elu = shl nsw i64 %.1.i37.i118.i207.epil.init, 1
  %i.elv = getelementptr inbounds i8, ptr %i.edh, i64 %i.elu
  %i.elw = getelementptr inbounds [4 x i8], ptr %i.edp, i64 %.1.i37.i118.i207.epil.init
  %i.elx = load i32, ptr %i.elw, align 4, !tbaa !3, !noalias !583
  %i.ely = shl i32 %i.elx, 1
  %i.elz = zext i32 %i.ely to i64
  %i.ema = getelementptr inbounds nuw i8, ptr %i.edg, i64 %i.elz
  %i.emb = load i16, ptr %i.ema, align 1, !noalias !583
  store i16 %i.emb, ptr %i.elv, align 1, !noalias !583
  %i.emc = add nsw i64 %.1.i37.i118.i207.epil.init, 1
  br label %.loopexit.i105.i194

.loopexit.i105.i194:                              ; preds = %bb.vr, %.lr.ph39.i116.i205.epil.preheader, %.loopexit.i105.i194.loopexit3183.unr-lcssa, %bb.wp, %bb.wa, %.loopexit.sink.split.i102.i192, %.preheader27.i121.i210, %.preheader.i134.i223, %.preheader30.i108.i197, %bb.vi
  %.587.i.i106.i195 = phi i64 [ %.587.i.ph.i104.i193, %.loopexit.sink.split.i102.i192 ], [ %i.efa, %bb.vi ], [ %.486.i.i127.i216, %bb.wp ], [ %i.efa, %.lr.ph39.i116.i205.epil.preheader ], [ %i.efa, %.preheader30.i108.i197 ], [ %.082.i53.i95.i185, %.preheader.i134.i223 ], [ %.082.i53.i95.i185, %.preheader27.i121.i210 ], [ %.284.i.i140.i229, %bb.wa ], [ %i.efa, %.loopexit.i105.i194.loopexit3183.unr-lcssa ], [ %i.efa, %bb.vr ] ; 2 uses
  %.5.i.i107.i196 = phi i64 [ %i.els, %.loopexit.sink.split.i102.i192 ], [ %.081.i54.i94.i184, %bb.vi ], [ %i.eln, %bb.wp ], [ %i.emc, %.lr.ph39.i116.i205.epil.preheader ], [ %.081.i54.i94.i184, %.preheader30.i108.i197 ], [ %.081.i54.i94.i184, %.preheader.i134.i223 ], [ %.081.i54.i94.i184, %.preheader27.i121.i210 ], [ %i.eje, %bb.wa ], [ %i.efy, %.loopexit.i105.i194.loopexit3183.unr-lcssa ], [ %i.ehl, %bb.vr ] ; 2 uses
  %i.emd = icmp slt i64 %.5.i.i107.i196, %i.edj
  br i1 %i.emd, label %bb.vg, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !590

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i105.i194, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i180
  %.082.i.lcssa.i92.i182 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i180 ], [ %.587.i.i106.i195, %.loopexit.i105.i194 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24, !noalias !583
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i176:                                  ; preds = %.lr.ph.i86.i176, %.lr.ph.i86.i176.preheader.new
  %.0.i1833.i87.i177 = phi i64 [ 0, %.lr.ph.i86.i176.preheader.new ], [ %i.emv, %.lr.ph.i86.i176 ] ; 4 uses
  %niter3490 = phi i64 [ 0, %.lr.ph.i86.i176.preheader.new ], [ %niter3490.next.1, %.lr.ph.i86.i176 ]
  %i.eme = shl nuw nsw i64 %.0.i1833.i87.i177, 1
  %i.emf = getelementptr inbounds nuw i8, ptr %i.edh, i64 %i.eme
  %i.emg = getelementptr inbounds nuw [4 x i8], ptr %i.edp, i64 %.0.i1833.i87.i177
  %i.emh = load i32, ptr %i.emg, align 4, !tbaa !3, !noalias !583
  %i.emi = shl i32 %i.emh, 1
  %i.emj = zext i32 %i.emi to i64
  %i.emk = getelementptr inbounds nuw i8, ptr %i.edg, i64 %i.emj
  %i.eml = load i16, ptr %i.emk, align 1, !noalias !583
  store i16 %i.eml, ptr %i.emf, align 1, !noalias !583
  %i.emm = or disjoint i64 %.0.i1833.i87.i177, 1  ; 2 uses
  %i.emn = shl nuw nsw i64 %i.emm, 1
  %i.emo = getelementptr inbounds nuw i8, ptr %i.edh, i64 %i.emn
  %i.emp = getelementptr inbounds nuw [4 x i8], ptr %i.edp, i64 %i.emm
  %i.emq = load i32, ptr %i.emp, align 4, !tbaa !3, !noalias !583
  %i.emr = shl i32 %i.emq, 1
  %i.ems = zext i32 %i.emr to i64
  %i.emt = getelementptr inbounds nuw i8, ptr %i.edg, i64 %i.ems
  %i.emu = load i16, ptr %i.emt, align 1, !noalias !583
  store i16 %i.emu, ptr %i.emo, align 1, !noalias !583
  %i.emv = add nuw nsw i64 %.0.i1833.i87.i177, 2  ; 2 uses
  %niter3490.next.1 = add nuw nsw i64 %niter3490, 2 ; 2 uses
  %niter3490.ncmp.1 = icmp eq i64 %niter3490.next.1, %unroll_iter3489
  br i1 %niter3490.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3189.unr-lcssa, label %.lr.ph.i86.i176, !llvm.loop !591

bb.wq:                                            ; preds = %bb.rw
  br i1 %i.djb, label %bb.ws, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  %i.emw = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.emx = load i64, ptr %i.emw, align 8, !tbaa !71, !noalias !592
  %.not.i19.i145.i354 = icmp ne i64 %i.emx, 0
  %i.emy = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.emz = load ptr, ptr %i.emy, align 8, !noalias !592
  %i.ena = icmp ne ptr %i.emz, null
  %i.enb = select i1 %.not.i19.i145.i354, i1 %i.ena, i1 false
  br label %bb.ws

bb.ws:                                            ; preds = %bb.wr, %bb.wq
  %i.enc = phi i1 [ true, %bb.wq ], [ %i.enb, %bb.wr ]
  %i.end = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !592
  %i.ene = extractvalue { i32, ptr } %i.end, 1    ; 9 uses
  %i.enf = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !592 ; 13 uses
  %i.eng = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.enh = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !592 ; 11 uses
  %i.eni = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.enj = load i64, ptr %i.eni, align 8, !tbaa !99, !noalias !592
  %i.enk = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.enl = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.enm = load ptr, ptr %i.enl, align 8, !tbaa !66, !noalias !592
  %i.enn = getelementptr inbounds [8 x i8], ptr %i.enm, i64 %i.enj ; 9 uses
  br i1 %i.enc, label %bb.wt, label %.preheader32.i146.i355

.preheader32.i146.i355:                           ; preds = %bb.ws
  %i.eno = icmp sgt i64 %i.enh, 0
  br i1 %i.eno, label %.lr.ph.i148.i356.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i356.preheader:                       ; preds = %.preheader32.i146.i355
  %xtraiter3519 = and i64 %i.enh, 1
  %i.enp = icmp eq i64 %i.enh, 1
  br i1 %i.enp, label %.lr.ph.i148.i356.epil.preheader, label %.lr.ph.i148.i356.preheader.new

.lr.ph.i148.i356.preheader.new:                   ; preds = %.lr.ph.i148.i356.preheader
  %unroll_iter3522 = and i64 %i.enh, 9223372036854775806
  br label %.lr.ph.i148.i356

bb.wt:                                            ; preds = %bb.ws
  %i.enq = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.enr = load ptr, ptr %i.enq, align 8, !tbaa !171, !noalias !592
  %i.ens = load ptr, ptr %i.enr, align 8, !tbaa !306, !noalias !592 ; 4 uses
  %.not.i.i.i151.i359 = icmp eq ptr %i.ens, null
  br i1 %.not.i.i.i151.i359, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i360, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  %i.ent = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.enu = load i64, ptr %i.ent, align 8, !tbaa !438, !noalias !592
  %i.env = getelementptr inbounds nuw i8, ptr %i.ens, i64 9
  %i.enw = load i8, ptr %i.env, align 1, !tbaa !439, !range !127, !noalias !592, !noundef !128
  %i.enx = trunc nuw i8 %i.enw to i1
  %i.eny = getelementptr inbounds nuw i8, ptr %i.ens, i64 8
  %i.enz = load i8, ptr %i.eny, align 8, !range !127, !noalias !592
  %i.eoa = trunc nuw i8 %i.enz to i1
  %i.eob = select i1 %i.enx, i1 %i.eoa, i1 false, !prof !117
  %i.eoc = getelementptr inbounds nuw i8, ptr %i.ens, i64 16
  %i.eod = load ptr, ptr %i.eoc, align 8, !noalias !592
  %i.eoe = select i1 %i.eob, ptr %i.eod, ptr null, !prof !117
  %i.eof = getelementptr inbounds i8, ptr %i.eoe, i64 %i.enu
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i360

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i360: ; preds = %bb.wu, %bb.wt
  %.0.i.i.i153.i361 = phi ptr [ %i.eof, %bb.wu ], [ null, %bb.wt ] ; 5 uses
  %i.eog = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.eoh = load i64, ptr %i.eog, align 8, !tbaa !178, !noalias !592 ; 2 uses
  %i.eoi = ashr i64 %i.eoh, 3
  %i.eoj = and i64 %i.eoh, 7
  %i.eok = icmp ne i64 %i.eoj, 0
  %i.eol = zext i1 %i.eok to i64
  %i.eom = add nsw i64 %i.eoi, %i.eol
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i153.i361, i8 0, i64 %i.eom, i1 false), !noalias !592
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24, !noalias !592
  %i.eon = load ptr, ptr %i.enk, align 8, !tbaa !66, !noalias !592
  %i.eoo = load i64, ptr %i.eni, align 8, !tbaa !99, !noalias !592
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %i.eon, i64 noundef %i.eoo, i64 noundef %i.enh), !noalias !592
  %i.eop = icmp sgt i64 %i.enh, 0
  br i1 %i.eop, label %.lr.ph55.i155.i363, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i155.i363:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i360
  %i.eoq = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.eor = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.wv

bb.wv:                                            ; preds = %.loopexit.i167.i374, %.lr.ph55.i155.i363
  %.081.i54.i156.i364 = phi i64 [ 0, %.lr.ph55.i155.i363 ], [ %.5.i.i169.i376, %.loopexit.i167.i374 ] ; 12 uses
  %.082.i53.i157.i365 = phi i64 [ 0, %.lr.ph55.i155.i363 ], [ %.587.i.i168.i375, %.loopexit.i167.i374 ] ; 6 uses
  %i.eos = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %24), !noalias !592 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i158.i366 = trunc i32 %i.eos to i16 ; 10 uses
  %i.eot = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !592
  %.not.i20.i159.i367 = icmp ne i64 %i.eot, 0
  %i.eou = load ptr, ptr %i.v, align 8, !noalias !592
  %i.eov = icmp ne ptr %i.eou, null
  %i.eow = select i1 %.not.i20.i159.i367, i1 %i.eov, i1 false
  br i1 %i.eow, label %bb.xh, label %bb.ww

bb.ww:                                            ; preds = %bb.wv
  %.sroa.14.0.extract.shift.i.i160.i368 = lshr i32 %i.eos, 16
  %.sroa.14.0.extract.trunc.i.i161.i369 = zext nneg i32 %.sroa.14.0.extract.shift.i.i160.i368 to i64
  %sext91.i.i162.i370 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i161.i369, 48
  %i.eox = ashr exact i64 %sext91.i.i162.i370, 48
  %i.eoy = add nsw i64 %i.eox, %.082.i53.i157.i365 ; 6 uses
  %i.eoz = ashr i32 %i.eos, 16                    ; 2 uses
  %sext.i.i163.i371 = shl i32 %i.eos, 16
  %i.epa = ashr exact i32 %sext.i.i163.i371, 16
  %i.epb = icmp eq i32 %i.eoz, %i.epa
  br i1 %i.epb, label %bb.wx, label %bb.wy

bb.wx:                                            ; preds = %bb.ww
  %i.epc = sext i16 %.sroa.0.0.extract.trunc.i.i158.i366 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i153.i361, i64 noundef %.081.i54.i156.i364, i64 noundef %i.epc, i1 noundef zeroext true), !noalias !592
  %i.epd = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i366, 0
  br i1 %i.epd, label %.lr.ph39.i178.i385.preheader, label %.loopexit.i167.i374

.lr.ph39.i178.i385.preheader:                     ; preds = %bb.wx
  %i.epe = icmp eq i16 %.sroa.0.0.extract.trunc.i.i158.i366, 1
  br i1 %i.epe, label %.lr.ph39.i178.i385.epil.preheader, label %.lr.ph39.i178.i385.preheader.new

.lr.ph39.i178.i385.preheader.new:                 ; preds = %.lr.ph39.i178.i385.preheader
  %unroll_iter3528 = and i64 %i.epc, 32766
  br label %.lr.ph39.i178.i385

.lr.ph39.i178.i385:                               ; preds = %.lr.ph39.i178.i385, %.lr.ph39.i178.i385.preheader.new
  %.1.i37.i180.i387 = phi i64 [ %.081.i54.i156.i364, %.lr.ph39.i178.i385.preheader.new ], [ %i.epu, %.lr.ph39.i178.i385 ] ; 4 uses
  %niter3529 = phi i64 [ 0, %.lr.ph39.i178.i385.preheader.new ], [ %niter3529.next.1, %.lr.ph39.i178.i385 ]
  %i.epf = shl nsw i64 %.1.i37.i180.i387, 1
  %i.epg = getelementptr inbounds i8, ptr %i.enf, i64 %i.epf
  %i.eph = getelementptr inbounds [8 x i8], ptr %i.enn, i64 %.1.i37.i180.i387
  %i.epi = load i64, ptr %i.eph, align 8, !tbaa !130, !noalias !592
  %i.epj = shl i64 %i.epi, 1
  %i.epk = getelementptr inbounds nuw i8, ptr %i.ene, i64 %i.epj
  %i.epl = load i16, ptr %i.epk, align 1, !noalias !592
  store i16 %i.epl, ptr %i.epg, align 1, !noalias !592
  %i.epm = add nsw i64 %.1.i37.i180.i387, 1       ; 2 uses
  %i.epn = shl nsw i64 %i.epm, 1
  %i.epo = getelementptr inbounds i8, ptr %i.enf, i64 %i.epn
  %i.epp = getelementptr inbounds [8 x i8], ptr %i.enn, i64 %i.epm
  %i.epq = load i64, ptr %i.epp, align 8, !tbaa !130, !noalias !592
  %i.epr = shl i64 %i.epq, 1
  %i.eps = getelementptr inbounds nuw i8, ptr %i.ene, i64 %i.epr
  %i.ept = load i16, ptr %i.eps, align 1, !noalias !592
  store i16 %i.ept, ptr %i.epo, align 1, !noalias !592
  %i.epu = add nsw i64 %.1.i37.i180.i387, 2       ; 3 uses
  %niter3529.next.1 = add i64 %niter3529, 2       ; 2 uses
  %niter3529.ncmp.1 = icmp eq i64 %niter3529.next.1, %unroll_iter3528
  br i1 %niter3529.ncmp.1, label %.loopexit.i167.i374.loopexit3160.unr-lcssa, label %.lr.ph39.i178.i385, !llvm.loop !595

bb.wy:                                            ; preds = %bb.ww
  %i.epv = icmp sgt i32 %i.eoz, 0
  %i.epw = sext i16 %.sroa.0.0.extract.trunc.i.i158.i366 to i64 ; 2 uses
  br i1 %i.epv, label %.preheader30.i170.i377, label %.loopexit.sink.split.i164.i372

.preheader30.i170.i377:                           ; preds = %bb.wy
  %i.epx = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i366, 0
  br i1 %i.epx, label %.lr.ph36.i171.i378, label %.loopexit.i167.i374

.lr.ph36.i171.i378:                               ; preds = %.preheader30.i170.i377, %bb.xg
  %.079.i35.i172.i379 = phi i64 [ %i.erh, %bb.xg ], [ 0, %.preheader30.i170.i377 ]
  %.2.i34.i173.i380 = phi i64 [ %i.erg, %bb.xg ], [ %.081.i54.i156.i364, %.preheader30.i170.i377 ] ; 10 uses
  %i.epy = load ptr, ptr %i.enk, align 8, !tbaa !66, !noalias !592 ; 2 uses
  %.not.i21.i174.i381 = icmp eq ptr %i.epy, null
  br i1 %.not.i21.i174.i381, label %bb.xa, label %bb.wz

bb.wz:                                            ; preds = %.lr.ph36.i171.i378
  %i.epz = load i64, ptr %i.eni, align 8, !tbaa !99, !noalias !592
  %i.eqa = add nsw i64 %i.epz, %.2.i34.i173.i380  ; 2 uses
  %i.eqb = lshr i64 %i.eqa, 3
  %i.eqc = getelementptr inbounds nuw i8, ptr %i.epy, i64 %i.eqb
  %i.eqd = load i8, ptr %i.eqc, align 1, !tbaa !98, !noalias !592
  %i.eqe = trunc i64 %i.eqa to i8
  %i.eqf = and i8 %i.eqe, 7
  %i.eqg = lshr i8 %i.eqd, %i.eqf
  %i.eqh = trunc i8 %i.eqg to i1
  br i1 %i.eqh, label %bb.xe, label %bb.xf

bb.xa:                                            ; preds = %.lr.ph36.i171.i378
  %i.eqi = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !592
  %i.eqj = getelementptr inbounds nuw i8, ptr %i.eqi, i64 40
  %i.eqk = load i32, ptr %i.eqj, align 8, !tbaa !42, !noalias !592
  switch i32 %i.eqk, label %bb.xd [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i176.i383
    i32 28, label %bb.xb
    i32 38, label %bb.xc
  ]

bb.xb:                                            ; preds = %bb.xa
  %i.eql = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i173.i380), !noalias !592
  br i1 %i.eql, label %bb.xf, label %bb.xe

bb.xc:                                            ; preds = %bb.xa
  %i.eqm = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i173.i380), !noalias !592
  br i1 %i.eqm, label %bb.xf, label %bb.xe

bb.xd:                                            ; preds = %bb.xa
  %i.eqn = load i64, ptr %i.eoq, align 8, !tbaa !71, !noalias !592
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  br i1 %exitcond66.not.i203.i410, label %.loopexit.i167.i374, label %.lr.ph50.i197.i404, !llvm.loop !597

bb.xq:                                            ; preds = %bb.xh
  %i.esz = icmp sgt i32 %i.eri, 0
  %i.eta = sext i16 %.sroa.0.0.extract.trunc.i.i158.i366 to i64 ; 2 uses
  br i1 %i.esz, label %.preheader27.i183.i390, label %.loopexit.sink.split.i164.i372

.preheader27.i183.i390:                           ; preds = %bb.xq
  %i.etb = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i366, 0
  br i1 %i.etb, label %.lr.ph44.i184.i391, label %.loopexit.i167.i374

.lr.ph44.i184.i391:                               ; preds = %.preheader27.i183.i390, %bb.ye
  %.0.i43.i185.i392 = phi i64 [ %i.evf, %bb.ye ], [ 0, %.preheader27.i183.i390 ]
  %.4.i42.i186.i393 = phi i64 [ %i.eve, %bb.ye ], [ %.081.i54.i156.i364, %.preheader27.i183.i390 ] ; 10 uses
  %.385.i41.i187.i394 = phi i64 [ %.486.i.i189.i396, %bb.ye ], [ %.082.i53.i157.i365, %.preheader27.i183.i390 ] ; 2 uses
  %i.etc = load ptr, ptr %i.enk, align 8, !tbaa !66, !noalias !592 ; 2 uses
  %.not.i26.i188.i395 = icmp eq ptr %i.etc, null
  br i1 %.not.i26.i188.i395, label %bb.xs, label %bb.xr

bb.xr:                                            ; preds = %.lr.ph44.i184.i391
  %i.etd = load i64, ptr %i.eni, align 8, !tbaa !99, !noalias !592
  %i.ete = add nsw i64 %i.etd, %.4.i42.i186.i393  ; 2 uses
  %i.etf = lshr i64 %i.ete, 3
  %i.etg = getelementptr inbounds nuw i8, ptr %i.etc, i64 %i.etf
  %i.eth = load i8, ptr %i.etg, align 1, !tbaa !98, !noalias !592
  %i.eti = trunc i64 %i.ete to i8
  %i.etj = and i8 %i.eti, 7
  %i.etk = lshr i8 %i.eth, %i.etj
  %i.etl = trunc i8 %i.etk to i1
  br i1 %i.etl, label %bb.xw, label %bb.yd

bb.xs:                                            ; preds = %.lr.ph44.i184.i391
  %i.etm = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !592
  %i.etn = getelementptr inbounds nuw i8, ptr %i.etm, i64 40
  %i.eto = load i32, ptr %i.etn, align 8, !tbaa !42, !noalias !592
  switch i32 %i.eto, label %bb.xv [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i401
    i32 28, label %bb.xt
    i32 38, label %bb.xu
  ]

bb.xt:                                            ; preds = %bb.xs
  %i.etp = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i393), !noalias !592
  br i1 %i.etp, label %bb.yd, label %bb.xw

bb.xu:                                            ; preds = %bb.xs
  %i.etq = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i393), !noalias !592
  br i1 %i.etq, label %bb.yd, label %bb.xw

bb.xv:                                            ; preds = %bb.xs
  %i.etr = load i64, ptr %i.eoq, align 8, !tbaa !71, !noalias !592
  %i.ets = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !592
  %.not24.i195.i402 = icmp eq i64 %i.etr, %i.ets
  br i1 %.not24.i195.i402, label %bb.yd, label %bb.xw

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i401:  ; preds = %bb.xs
  %i.ett = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i393), !noalias !592
  br i1 %i.ett, label %bb.yd, label %bb.xw

bb.xw:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i401, %bb.xv, %bb.xu, %bb.xt, %bb.xr
  %i.etu = getelementptr inbounds [8 x i8], ptr %i.enn, i64 %.4.i42.i186.i393 ; 2 uses
  %i.etv = load i64, ptr %i.etu, align 8, !tbaa !130, !noalias !592 ; 4 uses
  %i.etw = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !592 ; 2 uses
  %.not.i29.i191.i398 = icmp eq ptr %i.etw, null
  br i1 %.not.i29.i191.i398, label %bb.xy, label %bb.xx

bb.xx:                                            ; preds = %bb.xw
  %i.etx = load i64, ptr %i.eor, align 8, !tbaa !99, !noalias !592
  %i.ety = add nsw i64 %i.etx, %i.etv             ; 2 uses
  %i.etz = lshr i64 %i.ety, 3
  %i.eua = getelementptr inbounds nuw i8, ptr %i.etw, i64 %i.etz
  %i.eub = load i8, ptr %i.eua, align 1, !tbaa !98, !noalias !592
  %i.euc = trunc i64 %i.ety to i8
  %i.eud = and i8 %i.euc, 7
  %i.eue = lshr i8 %i.eub, %i.eud
  %i.euf = trunc i8 %i.eue to i1
  br i1 %i.euf, label %bb.yc, label %bb.yd

bb.xy:                                            ; preds = %bb.xw
  %i.eug = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !592
  %i.euh = getelementptr inbounds nuw i8, ptr %i.eug, i64 40
  %i.eui = load i32, ptr %i.euh, align 8, !tbaa !42, !noalias !592
  switch i32 %i.eui, label %bb.yb [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i399
    i32 28, label %bb.xz
    i32 38, label %bb.ya
  ]

bb.xz:                                            ; preds = %bb.xy
  %i.euj = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.etv), !noalias !592
  br i1 %i.euj, label %bb.yd, label %bb.yc

bb.ya:                                            ; preds = %bb.xy
  %i.euk = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.etv), !noalias !592
  br i1 %i.euk, label %bb.yd, label %bb.yc

bb.yb:                                            ; preds = %bb.xy
  %i.eul = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !592
  %i.eum = load i64, ptr %i.eng, align 8, !tbaa !62, !noalias !592
  %.not25.i193.i400 = icmp eq i64 %i.eul, %i.eum
  br i1 %.not25.i193.i400, label %bb.yd, label %bb.yc

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i399:  ; preds = %bb.xy
  %i.eun = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.etv), !noalias !592
  br i1 %i.eun, label %bb.yd, label %bb.yc

bb.yc:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i399, %bb.yb, %bb.ya, %bb.xz, %bb.xx
  %i.euo = shl nsw i64 %.4.i42.i186.i393, 1
  %i.eup = getelementptr inbounds i8, ptr %i.enf, i64 %i.euo
  %i.euq = load i64, ptr %i.etu, align 8, !tbaa !130, !noalias !592
  %i.eur = shl i64 %i.euq, 1
  %i.eus = getelementptr inbounds nuw i8, ptr %i.ene, i64 %i.eur
  %i.eut = load i16, ptr %i.eus, align 1, !noalias !592
  store i16 %i.eut, ptr %i.eup, align 1, !noalias !592
  %i.euu = srem i64 %.4.i42.i186.i393, 8
  %i.euv = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.euu
  %i.euw = load i8, ptr %i.euv, align 1, !tbaa !98, !noalias !592
  %i.eux = sdiv i64 %.4.i42.i186.i393, 8
  %i.euy = getelementptr inbounds i8, ptr %.0.i.i.i153.i361, i64 %i.eux ; 2 uses
  %i.euz = load i8, ptr %i.euy, align 1, !tbaa !98, !noalias !592
  %i.eva = or i8 %i.euz, %i.euw
  store i8 %i.eva, ptr %i.euy, align 1, !tbaa !98, !noalias !592
  %i.evb = add nsw i64 %.385.i41.i187.i394, 1
  br label %bb.ye

bb.yd:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i399, %bb.yb, %bb.ya, %bb.xz, %bb.xx, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i401, %bb.xv, %bb.xu, %bb.xt, %bb.xr
  %i.evc = shl nsw i64 %.4.i42.i186.i393, 1
  %i.evd = getelementptr inbounds i8, ptr %i.enf, i64 %i.evc
  store i16 0, ptr %i.evd, align 1, !noalias !592
  br label %bb.ye

bb.ye:                                            ; preds = %bb.yd, %bb.yc
  %.486.i.i189.i396 = phi i64 [ %i.evb, %bb.yc ], [ %.385.i41.i187.i394, %bb.yd ] ; 2 uses
  %i.eve = add nsw i64 %.4.i42.i186.i393, 1       ; 2 uses
  %i.evf = add nuw nsw i64 %.0.i43.i185.i392, 1   ; 2 uses
  %exitcond65.not.i190.i397 = icmp eq i64 %i.evf, %i.eta
  br i1 %exitcond65.not.i190.i397, label %.loopexit.i167.i374, label %.lr.ph44.i184.i391, !llvm.loop !598

.loopexit.sink.split.i164.i372:                   ; preds = %bb.xq, %bb.wy
  %.sink86.i165.i = phi i64 [ %i.epw, %bb.wy ], [ %i.eta, %bb.xq ] ; 2 uses
  %.587.i.ph.i166.i373 = phi i64 [ %i.eoy, %bb.wy ], [ %.082.i53.i157.i365, %bb.xq ]
  %i.evg = shl nsw i64 %.081.i54.i156.i364, 1
  %i.evh = getelementptr inbounds i8, ptr %i.enf, i64 %i.evg
  %i.evi = shl nsw i64 %.sink86.i165.i, 1
  call void @llvm.memset.p0.i64(ptr align 1 %i.evh, i8 0, i64 %i.evi, i1 false), !noalias !592
  %i.evj = add nsw i64 %.sink86.i165.i, %.081.i54.i156.i364
  br label %.loopexit.i167.i374

.loopexit.i167.i374.loopexit3160.unr-lcssa:       ; preds = %.lr.ph39.i178.i385
  %i.evk = and i16 %.sroa.0.0.extract.trunc.i.i158.i366, 1
  %lcmp.mod3525.not = icmp eq i16 %i.evk, 0
  br i1 %lcmp.mod3525.not, label %.loopexit.i167.i374, label %.lr.ph39.i178.i385.epil.preheader

.lr.ph39.i178.i385.epil.preheader:                ; preds = %.loopexit.i167.i374.loopexit3160.unr-lcssa, %.lr.ph39.i178.i385.preheader
  %.1.i37.i180.i387.epil.init = phi i64 [ %.081.i54.i156.i364, %.lr.ph39.i178.i385.preheader ], [ %i.epu, %.loopexit.i167.i374.loopexit3160.unr-lcssa ] ; 3 uses
  %lcmp.mod3527 = trunc i32 %i.eos to i1
  call void @llvm.assume(i1 %lcmp.mod3527)
  %i.evl = shl nsw i64 %.1.i37.i180.i387.epil.init, 1
  %i.evm = getelementptr inbounds i8, ptr %i.enf, i64 %i.evl
  %i.evn = getelementptr inbounds [8 x i8], ptr %i.enn, i64 %.1.i37.i180.i387.epil.init
  %i.evo = load i64, ptr %i.evn, align 8, !tbaa !130, !noalias !592
  %i.evp = shl i64 %i.evo, 1
  %i.evq = getelementptr inbounds nuw i8, ptr %i.ene, i64 %i.evp
  %i.evr = load i16, ptr %i.evq, align 1, !noalias !592
  store i16 %i.evr, ptr %i.evm, align 1, !noalias !592
  %i.evs = add nsw i64 %.1.i37.i180.i387.epil.init, 1
  br label %.loopexit.i167.i374

.loopexit.i167.i374:                              ; preds = %bb.xg, %.lr.ph39.i178.i385.epil.preheader, %.loopexit.i167.i374.loopexit3160.unr-lcssa, %bb.ye, %bb.xp, %.loopexit.sink.split.i164.i372, %.preheader27.i183.i390, %.preheader.i196.i403, %.preheader30.i170.i377, %bb.wx
  %.587.i.i168.i375 = phi i64 [ %.587.i.ph.i166.i373, %.loopexit.sink.split.i164.i372 ], [ %i.eoy, %bb.wx ], [ %.486.i.i189.i396, %bb.ye ], [ %i.eoy, %.lr.ph39.i178.i385.epil.preheader ], [ %i.eoy, %.preheader30.i170.i377 ], [ %.082.i53.i157.i365, %.preheader.i196.i403 ], [ %.082.i53.i157.i365, %.preheader27.i183.i390 ], [ %.284.i.i202.i409, %bb.xp ], [ %i.eoy, %.loopexit.i167.i374.loopexit3160.unr-lcssa ], [ %i.eoy, %bb.xg ] ; 2 uses
  %.5.i.i169.i376 = phi i64 [ %i.evj, %.loopexit.sink.split.i164.i372 ], [ %.081.i54.i156.i364, %bb.wx ], [ %i.eve, %bb.ye ], [ %i.evs, %.lr.ph39.i178.i385.epil.preheader ], [ %.081.i54.i156.i364, %.preheader30.i170.i377 ], [ %.081.i54.i156.i364, %.preheader.i196.i403 ], [ %.081.i54.i156.i364, %.preheader27.i183.i390 ], [ %i.esx, %bb.xp ], [ %i.epu, %.loopexit.i167.i374.loopexit3160.unr-lcssa ], [ %i.erg, %bb.xg ] ; 2 uses
  %i.evt = icmp slt i64 %.5.i.i169.i376, %i.enh
  br i1 %i.evt, label %bb.wv, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !599

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i167.i374, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i360
  %.082.i.lcssa.i154.i362 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i360 ], [ %.587.i.i168.i375, %.loopexit.i167.i374 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24, !noalias !592
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i356:                                 ; preds = %.lr.ph.i148.i356, %.lr.ph.i148.i356.preheader.new
  %.0.i1833.i149.i357 = phi i64 [ 0, %.lr.ph.i148.i356.preheader.new ], [ %i.ewj, %.lr.ph.i148.i356 ] ; 4 uses
  %niter3523 = phi i64 [ 0, %.lr.ph.i148.i356.preheader.new ], [ %niter3523.next.1, %.lr.ph.i148.i356 ]
  %i.evu = shl nuw nsw i64 %.0.i1833.i149.i357, 1
  %i.evv = getelementptr inbounds nuw i8, ptr %i.enf, i64 %i.evu
  %i.evw = getelementptr inbounds nuw [8 x i8], ptr %i.enn, i64 %.0.i1833.i149.i357
  %i.evx = load i64, ptr %i.evw, align 8, !tbaa !130, !noalias !592
  %i.evy = shl i64 %i.evx, 1
  %i.evz = getelementptr inbounds nuw i8, ptr %i.ene, i64 %i.evy
  %i.ewa = load i16, ptr %i.evz, align 1, !noalias !592
  store i16 %i.ewa, ptr %i.evv, align 1, !noalias !592
  %i.ewb = or disjoint i64 %.0.i1833.i149.i357, 1 ; 2 uses
  %i.ewc = shl nuw nsw i64 %i.ewb, 1
  %i.ewd = getelementptr inbounds nuw i8, ptr %i.enf, i64 %i.ewc
  %i.ewe = getelementptr inbounds nuw [8 x i8], ptr %i.enn, i64 %i.ewb
  %i.ewf = load i64, ptr %i.ewe, align 8, !tbaa !130, !noalias !592
  %i.ewg = shl i64 %i.ewf, 1
  %i.ewh = getelementptr inbounds nuw i8, ptr %i.ene, i64 %i.ewg
  %i.ewi = load i16, ptr %i.ewh, align 1, !noalias !592
  store i16 %i.ewi, ptr %i.ewd, align 1, !noalias !592
  %i.ewj = add nuw nsw i64 %.0.i1833.i149.i357, 2 ; 2 uses
  %niter3523.next.1 = add nuw nsw i64 %niter3523, 2 ; 2 uses
  %niter3523.ncmp.1 = icmp eq i64 %niter3523.next.1, %unroll_iter3522
  br i1 %niter3523.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, label %.lr.ph.i148.i356, !llvm.loop !600

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i148.i356
  %lcmp.mod3520.not = icmp eq i64 %xtraiter3519, 0
  br i1 %lcmp.mod3520.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i148.i356.epil.preheader

.lr.ph.i148.i356.epil.preheader:                  ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.lr.ph.i148.i356.preheader
  %.0.i1833.i149.i357.epil.init = phi i64 [ 0, %.lr.ph.i148.i356.preheader ], [ %i.ewj, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3521 = trunc i64 %i.enh to i1
  call void @llvm.assume(i1 %lcmp.mod3521)
  %i.ewk = shl nuw nsw i64 %.0.i1833.i149.i357.epil.init, 1
  %i.ewl = getelementptr inbounds nuw i8, ptr %i.enf, i64 %i.ewk
  %i.ewm = getelementptr inbounds nuw [8 x i8], ptr %i.enn, i64 %.0.i1833.i149.i357.epil.init
  %i.ewn = load i64, ptr %i.ewm, align 8, !tbaa !130, !noalias !592
  %i.ewo = shl i64 %i.ewn, 1
  %i.ewp = getelementptr inbounds nuw i8, ptr %i.ene, i64 %i.ewo
  %i.ewq = load i16, ptr %i.ewp, align 1, !noalias !592
  store i16 %i.ewq, ptr %i.ewl, align 1, !noalias !592
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3173.unr-lcssa: ; preds = %.lr.ph.i.i296
  %lcmp.mod3509.not = icmp eq i64 %xtraiter3508, 0
  br i1 %lcmp.mod3509.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i.i296.epil.preheader

.lr.ph.i.i296.epil.preheader:                     ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3173.unr-lcssa, %.lr.ph.i.i296.preheader
  %.0.i1833.i.i297.epil.init = phi i64 [ 0, %.lr.ph.i.i296.preheader ], [ %i.dsz, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3173.unr-lcssa ] ; 2 uses
  %lcmp.mod3510 = trunc i64 %i.djn to i1
  call void @llvm.assume(i1 %lcmp.mod3510)
  %i.ewr = shl nuw nsw i64 %.0.i1833.i.i297.epil.init, 1
  %i.ews = getelementptr inbounds nuw i8, ptr %i.djl, i64 %i.ewr
  %i.ewt = getelementptr inbounds nuw i8, ptr %i.djt, i64 %.0.i1833.i.i297.epil.init
  %i.ewu = load i8, ptr %i.ewt, align 1, !tbaa !98, !noalias !565
  %i.ewv = zext i8 %i.ewu to i64
  %i.eww = shl nuw nsw i64 %i.ewv, 1
  %i.ewx = getelementptr inbounds nuw i8, ptr %i.djk, i64 %i.eww
  %i.ewy = load i16, ptr %i.ewx, align 1, !noalias !565
  store i16 %i.ewy, ptr %i.ews, align 1, !noalias !565
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3181.unr-lcssa: ; preds = %.lr.ph.i24.i236
  %lcmp.mod3498.not = icmp eq i64 %xtraiter3497, 0
  br i1 %lcmp.mod3498.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i24.i236.epil.preheader

.lr.ph.i24.i236.epil.preheader:                   ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3181.unr-lcssa, %.lr.ph.i24.i236.preheader
  %.0.i1833.i25.i237.epil.init = phi i64 [ 0, %.lr.ph.i24.i236.preheader ], [ %i.ecx, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3181.unr-lcssa ] ; 2 uses
  %lcmp.mod3499 = trunc i64 %i.dtl to i1
  call void @llvm.assume(i1 %lcmp.mod3499)
  %i.ewz = shl nuw nsw i64 %.0.i1833.i25.i237.epil.init, 1
  %i.exa = getelementptr inbounds nuw i8, ptr %i.dtj, i64 %i.ewz
  %i.exb = getelementptr inbounds nuw [2 x i8], ptr %i.dtr, i64 %.0.i1833.i25.i237.epil.init
  %i.exc = load i16, ptr %i.exb, align 2, !tbaa !269, !noalias !574
  %i.exd = zext i16 %i.exc to i64
  %i.exe = shl nuw nsw i64 %i.exd, 1
  %i.exf = getelementptr inbounds nuw i8, ptr %i.dti, i64 %i.exe
  %i.exg = load i16, ptr %i.exf, align 1, !noalias !574
  store i16 %i.exg, ptr %i.exa, align 1, !noalias !574
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3189.unr-lcssa: ; preds = %.lr.ph.i86.i176
  %lcmp.mod3487.not = icmp eq i64 %xtraiter3486, 0
  br i1 %lcmp.mod3487.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i86.i176.epil.preheader

.lr.ph.i86.i176.epil.preheader:                   ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3189.unr-lcssa, %.lr.ph.i86.i176.preheader
  %.0.i1833.i87.i177.epil.init = phi i64 [ 0, %.lr.ph.i86.i176.preheader ], [ %i.emv, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3189.unr-lcssa ] ; 2 uses
  %lcmp.mod3488 = trunc i64 %i.edj to i1
  call void @llvm.assume(i1 %lcmp.mod3488)
  %i.exh = shl nuw nsw i64 %.0.i1833.i87.i177.epil.init, 1
  %i.exi = getelementptr inbounds nuw i8, ptr %i.edh, i64 %i.exh
  %i.exj = getelementptr inbounds nuw [4 x i8], ptr %i.edp, i64 %.0.i1833.i87.i177.epil.init
  %i.exk = load i32, ptr %i.exj, align 4, !tbaa !3, !noalias !583
  %i.exl = shl i32 %i.exk, 1
  %i.exm = zext i32 %i.exl to i64
  %i.exn = getelementptr inbounds nuw i8, ptr %i.edg, i64 %i.exm
  %i.exo = load i16, ptr %i.exn, align 1, !noalias !583
  store i16 %i.exo, ptr %i.exi, align 1, !noalias !583
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit: ; preds = %.lr.ph.i86.i176.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3189.unr-lcssa, %.lr.ph.i24.i236.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3181.unr-lcssa, %.lr.ph.i.i296.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3173.unr-lcssa, %.lr.ph.i148.i356.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.preheader32.i.i295, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i22.i235, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i84.i174, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i146.i355, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i
  %.0.i147.sink.i175 = phi i64 [ %i.dtl, %.lr.ph.i24.i236.epil.preheader ], [ %i.djn, %.lr.ph.i.i296.epil.preheader ], [ %i.enh, %.lr.ph.i148.i356.epil.preheader ], [ %.082.i.lcssa.i.i302, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.djn, %.preheader32.i.i295 ], [ %.082.i.lcssa.i30.i242, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.dtl, %.preheader32.i22.i235 ], [ %.082.i.lcssa.i92.i182, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.edj, %.preheader32.i84.i174 ], [ %.082.i.lcssa.i154.i362, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi16EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.enh, %.preheader32.i146.i355 ], [ %i.enh, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ], [ %i.djn, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3173.unr-lcssa ], [ %i.dtl, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3181.unr-lcssa ], [ %i.edj, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3189.unr-lcssa ], [ %i.edj, %.lr.ph.i86.i176.epil.preheader ]
  %i.exp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.exq = load i64, ptr %i.exp, align 8, !tbaa !178, !noalias !561
  %i.exr = sub nsw i64 %i.exq, %.0.i147.sink.i175
  %i.exs = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store atomic i64 %i.exr, ptr %i.exs seq_cst, align 8, !noalias !561
  store ptr null, ptr %0, align 8, !tbaa !113, !alias.scope !561
  br label %.critedge69

bb.yf:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit83
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  %i.ext = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !601 ; 2 uses
  %i.exu = load ptr, ptr %i.ext, align 8, !tbaa !90, !noalias !601
  %i.exv = getelementptr inbounds nuw i8, ptr %i.exu, i64 64
  %i.exw = load ptr, ptr %i.exv, align 8, !noalias !601
  %i.exx = call noundef i32 %i.exw(ptr noundef nonnull align 8 dereferenceable(72) %i.ext), !noalias !601, !inline_history !604
  %i.exy = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !601
  %.not.i.i144.i597 = icmp ne i64 %i.exy, 0
  %i.exz = load ptr, ptr %i.v, align 8, !noalias !601
  %i.eya = icmp ne ptr %i.exz, null
  %i.eyb = select i1 %.not.i.i144.i597, i1 %i.eya, i1 false ; 4 uses
  switch i32 %i.exx, label %bb.acz [
    i32 1, label %bb.yg
    i32 2, label %bb.zv
    i32 4, label %bb.abk
  ]

bb.yg:                                            ; preds = %bb.yf
  br i1 %i.eyb, label %bb.yi, label %bb.yh

bb.yh:                                            ; preds = %bb.yg
  %i.eyc = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.eyd = load i64, ptr %i.eyc, align 8, !tbaa !71, !noalias !605
  %.not.i19.i.i537 = icmp ne i64 %i.eyd, 0
  %i.eye = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.eyf = load ptr, ptr %i.eye, align 8, !noalias !605
  %i.eyg = icmp ne ptr %i.eyf, null
  %i.eyh = select i1 %.not.i19.i.i537, i1 %i.eyg, i1 false
  br label %bb.yi

bb.yi:                                            ; preds = %bb.yh, %bb.yg
  %i.eyi = phi i1 [ true, %bb.yg ], [ %i.eyh, %bb.yh ]
  %i.eyj = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !605
  %i.eyk = extractvalue { i32, ptr } %i.eyj, 1    ; 9 uses
  %i.eyl = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !605 ; 13 uses
  %i.eym = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.eyn = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !605 ; 11 uses
  %i.eyo = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.eyp = load i64, ptr %i.eyo, align 8, !tbaa !99, !noalias !605
  %i.eyq = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.eyr = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.eys = load ptr, ptr %i.eyr, align 8, !tbaa !66, !noalias !605
  %i.eyt = getelementptr inbounds i8, ptr %i.eys, i64 %i.eyp ; 9 uses
  br i1 %i.eyi, label %bb.yj, label %.preheader32.i.i538

.preheader32.i.i538:                              ; preds = %bb.yi
  %i.eyu = icmp sgt i64 %i.eyn, 0
  br i1 %i.eyu, label %.lr.ph.i.i539.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i539.preheader:                          ; preds = %.preheader32.i.i538
  %xtraiter3464 = and i64 %i.eyn, 1
  %i.eyv = icmp eq i64 %i.eyn, 1
  br i1 %i.eyv, label %.lr.ph.i.i539.epil.preheader, label %.lr.ph.i.i539.preheader.new

.lr.ph.i.i539.preheader.new:                      ; preds = %.lr.ph.i.i539.preheader
  %unroll_iter3467 = and i64 %i.eyn, 9223372036854775806
  br label %.lr.ph.i.i539

bb.yj:                                            ; preds = %bb.yi
  %i.eyw = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.eyx = load ptr, ptr %i.eyw, align 8, !tbaa !171, !noalias !605
  %i.eyy = load ptr, ptr %i.eyx, align 8, !tbaa !306, !noalias !605 ; 4 uses
  %.not.i.i.i.i542 = icmp eq ptr %i.eyy, null
  br i1 %.not.i.i.i.i542, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i543, label %bb.yk

bb.yk:                                            ; preds = %bb.yj
  %i.eyz = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.eza = load i64, ptr %i.eyz, align 8, !tbaa !438, !noalias !605
  %i.ezb = getelementptr inbounds nuw i8, ptr %i.eyy, i64 9
  %i.ezc = load i8, ptr %i.ezb, align 1, !tbaa !439, !range !127, !noalias !605, !noundef !128
  %i.ezd = trunc nuw i8 %i.ezc to i1
  %i.eze = getelementptr inbounds nuw i8, ptr %i.eyy, i64 8
  %i.ezf = load i8, ptr %i.eze, align 8, !range !127, !noalias !605
  %i.ezg = trunc nuw i8 %i.ezf to i1
  %i.ezh = select i1 %i.ezd, i1 %i.ezg, i1 false, !prof !117
  %i.ezi = getelementptr inbounds nuw i8, ptr %i.eyy, i64 16
  %i.ezj = load ptr, ptr %i.ezi, align 8, !noalias !605
  %i.ezk = select i1 %i.ezh, ptr %i.ezj, ptr null, !prof !117
  %i.ezl = getelementptr inbounds i8, ptr %i.ezk, i64 %i.eza
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i543

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i543: ; preds = %bb.yk, %bb.yj
  %.0.i.i.i.i544 = phi ptr [ %i.ezl, %bb.yk ], [ null, %bb.yj ] ; 5 uses
  %i.ezm = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ezn = load i64, ptr %i.ezm, align 8, !tbaa !178, !noalias !605 ; 2 uses
  %i.ezo = ashr i64 %i.ezn, 3
  %i.ezp = and i64 %i.ezn, 7
  %i.ezq = icmp ne i64 %i.ezp, 0
  %i.ezr = zext i1 %i.ezq to i64
  %i.ezs = add nsw i64 %i.ezo, %i.ezr
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i.i544, i8 0, i64 %i.ezs, i1 false), !noalias !605
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24, !noalias !605
  %i.ezt = load ptr, ptr %i.eyq, align 8, !tbaa !66, !noalias !605
  %i.ezu = load i64, ptr %i.eyo, align 8, !tbaa !99, !noalias !605
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef %i.ezt, i64 noundef %i.ezu, i64 noundef %i.eyn), !noalias !605
  %i.ezv = icmp sgt i64 %i.eyn, 0
  br i1 %i.ezv, label %.lr.ph55.i.i546, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i.i546:                                  ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i543
  %i.ezw = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.ezx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.yl

bb.yl:                                            ; preds = %.loopexit.i.i558, %.lr.ph55.i.i546
  %.081.i54.i.i547 = phi i64 [ 0, %.lr.ph55.i.i546 ], [ %.5.i.i.i560, %.loopexit.i.i558 ] ; 12 uses
  %.082.i53.i.i548 = phi i64 [ 0, %.lr.ph55.i.i546 ], [ %.587.i.i.i559, %.loopexit.i.i558 ] ; 6 uses
  %i.ezy = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %23), !noalias !605 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i.i549 = trunc i32 %i.ezy to i16 ; 10 uses
  %i.ezz = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !605
  %.not.i20.i.i550 = icmp ne i64 %i.ezz, 0
  %i.faa = load ptr, ptr %i.v, align 8, !noalias !605
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  br i1 %i.fek, label %.preheader27.i.i574, label %.loopexit.sink.split.i.i555

.preheader27.i.i574:                              ; preds = %bb.zg
  %i.fem = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i549, 0
  br i1 %i.fem, label %.lr.ph44.i.i575, label %.loopexit.i.i558

.lr.ph44.i.i575:                                  ; preds = %.preheader27.i.i574, %bb.zu
  %.0.i43.i.i576 = phi i64 [ %i.fgs, %bb.zu ], [ 0, %.preheader27.i.i574 ]
  %.4.i42.i.i577 = phi i64 [ %i.fgr, %bb.zu ], [ %.081.i54.i.i547, %.preheader27.i.i574 ] ; 10 uses
  %.385.i41.i.i578 = phi i64 [ %.486.i.i.i580, %bb.zu ], [ %.082.i53.i.i548, %.preheader27.i.i574 ] ; 2 uses
  %i.fen = load ptr, ptr %i.eyq, align 8, !tbaa !66, !noalias !605 ; 2 uses
  %.not.i26.i.i579 = icmp eq ptr %i.fen, null
  br i1 %.not.i26.i.i579, label %bb.zi, label %bb.zh

bb.zh:                                            ; preds = %.lr.ph44.i.i575
  %i.feo = load i64, ptr %i.eyo, align 8, !tbaa !99, !noalias !605
  %i.fep = add nsw i64 %i.feo, %.4.i42.i.i577     ; 2 uses
  %i.feq = lshr i64 %i.fep, 3
  %i.fer = getelementptr inbounds nuw i8, ptr %i.fen, i64 %i.feq
  %i.fes = load i8, ptr %i.fer, align 1, !tbaa !98, !noalias !605
  %i.fet = trunc i64 %i.fep to i8
  %i.feu = and i8 %i.fet, 7
  %i.fev = lshr i8 %i.fes, %i.feu
  %i.few = trunc i8 %i.fev to i1
  br i1 %i.few, label %bb.zm, label %bb.zt

bb.zi:                                            ; preds = %.lr.ph44.i.i575
  %i.fex = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !605
  %i.fey = getelementptr inbounds nuw i8, ptr %i.fex, i64 40
  %i.fez = load i32, ptr %i.fey, align 8, !tbaa !42, !noalias !605
  switch i32 %i.fez, label %bb.zl [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i585
    i32 28, label %bb.zj
    i32 38, label %bb.zk
  ]

bb.zj:                                            ; preds = %bb.zi
  %i.ffa = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i577), !noalias !605
  br i1 %i.ffa, label %bb.zt, label %bb.zm

bb.zk:                                            ; preds = %bb.zi
  %i.ffb = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i577), !noalias !605
  br i1 %i.ffb, label %bb.zt, label %bb.zm

bb.zl:                                            ; preds = %bb.zi
  %i.ffc = load i64, ptr %i.ezw, align 8, !tbaa !71, !noalias !605
  %i.ffd = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !605
  %.not24.i.i586 = icmp eq i64 %i.ffc, %i.ffd
  br i1 %.not24.i.i586, label %bb.zt, label %bb.zm

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i585:     ; preds = %bb.zi
  %i.ffe = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i577), !noalias !605
  br i1 %i.ffe, label %bb.zt, label %bb.zm

bb.zm:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i585, %bb.zl, %bb.zk, %bb.zj, %bb.zh
  %i.fff = getelementptr inbounds i8, ptr %i.eyt, i64 %.4.i42.i.i577 ; 2 uses
  %i.ffg = load i8, ptr %i.fff, align 1, !tbaa !98, !noalias !605
  %i.ffh = zext i8 %i.ffg to i64                  ; 4 uses
  %i.ffi = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !605 ; 2 uses
  %.not.i29.i.i582 = icmp eq ptr %i.ffi, null
  br i1 %.not.i29.i.i582, label %bb.zo, label %bb.zn

bb.zn:                                            ; preds = %bb.zm
  %i.ffj = load i64, ptr %i.ezx, align 8, !tbaa !99, !noalias !605
  %i.ffk = add nsw i64 %i.ffj, %i.ffh             ; 2 uses
  %i.ffl = lshr i64 %i.ffk, 3
  %i.ffm = getelementptr inbounds nuw i8, ptr %i.ffi, i64 %i.ffl
  %i.ffn = load i8, ptr %i.ffm, align 1, !tbaa !98, !noalias !605
  %i.ffo = trunc i64 %i.ffk to i8
  %i.ffp = and i8 %i.ffo, 7
  %i.ffq = lshr i8 %i.ffn, %i.ffp
  %i.ffr = trunc i8 %i.ffq to i1
  br i1 %i.ffr, label %bb.zs, label %bb.zt

bb.zo:                                            ; preds = %bb.zm
  %i.ffs = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !605
  %i.fft = getelementptr inbounds nuw i8, ptr %i.ffs, i64 40
  %i.ffu = load i32, ptr %i.fft, align 8, !tbaa !42, !noalias !605
  switch i32 %i.ffu, label %bb.zr [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i583
    i32 28, label %bb.zp
    i32 38, label %bb.zq
  ]

bb.zp:                                            ; preds = %bb.zo
  %i.ffv = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ffh), !noalias !605
  br i1 %i.ffv, label %bb.zt, label %bb.zs

bb.zq:                                            ; preds = %bb.zo
  %i.ffw = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ffh), !noalias !605
  br i1 %i.ffw, label %bb.zt, label %bb.zs

bb.zr:                                            ; preds = %bb.zo
  %i.ffx = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !605
  %i.ffy = load i64, ptr %i.eym, align 8, !tbaa !62, !noalias !605
  %.not25.i.i584 = icmp eq i64 %i.ffx, %i.ffy
  br i1 %.not25.i.i584, label %bb.zt, label %bb.zs

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i583:     ; preds = %bb.zo
  %i.ffz = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ffh), !noalias !605
  br i1 %i.ffz, label %bb.zt, label %bb.zs

bb.zs:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i583, %bb.zr, %bb.zq, %bb.zp, %bb.zn
  %i.fga = shl nsw i64 %.4.i42.i.i577, 2
  %i.fgb = getelementptr inbounds i8, ptr %i.eyl, i64 %i.fga
  %i.fgc = load i8, ptr %i.fff, align 1, !tbaa !98, !noalias !605
  %i.fgd = zext i8 %i.fgc to i64
  %i.fge = shl nuw nsw i64 %i.fgd, 2
  %i.fgf = getelementptr inbounds nuw i8, ptr %i.eyk, i64 %i.fge
  %i.fgg = load i32, ptr %i.fgf, align 1, !noalias !605
  store i32 %i.fgg, ptr %i.fgb, align 1, !noalias !605
  %i.fgh = srem i64 %.4.i42.i.i577, 8
  %i.fgi = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.fgh
  %i.fgj = load i8, ptr %i.fgi, align 1, !tbaa !98, !noalias !605
  %i.fgk = sdiv i64 %.4.i42.i.i577, 8
  %i.fgl = getelementptr inbounds i8, ptr %.0.i.i.i.i544, i64 %i.fgk ; 2 uses
  %i.fgm = load i8, ptr %i.fgl, align 1, !tbaa !98, !noalias !605
  %i.fgn = or i8 %i.fgm, %i.fgj
  store i8 %i.fgn, ptr %i.fgl, align 1, !tbaa !98, !noalias !605
  %i.fgo = add nsw i64 %.385.i41.i.i578, 1
  br label %bb.zu

bb.zt:                                            ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i583, %bb.zr, %bb.zq, %bb.zp, %bb.zn, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i585, %bb.zl, %bb.zk, %bb.zj, %bb.zh
  %i.fgp = shl nsw i64 %.4.i42.i.i577, 2
  %i.fgq = getelementptr inbounds i8, ptr %i.eyl, i64 %i.fgp
  store i32 0, ptr %i.fgq, align 1, !noalias !605
  br label %bb.zu

bb.zu:                                            ; preds = %bb.zt, %bb.zs
  %.486.i.i.i580 = phi i64 [ %i.fgo, %bb.zs ], [ %.385.i41.i.i578, %bb.zt ] ; 2 uses
  %i.fgr = add nsw i64 %.4.i42.i.i577, 1          ; 2 uses
  %i.fgs = add nuw nsw i64 %.0.i43.i.i576, 1      ; 2 uses
  %exitcond65.not.i.i581 = icmp eq i64 %i.fgs, %i.fel
  br i1 %exitcond65.not.i.i581, label %.loopexit.i.i558, label %.lr.ph44.i.i575, !llvm.loop !611

.loopexit.sink.split.i.i555:                      ; preds = %bb.zg, %bb.yo
  %.sink86.i.i556 = phi i64 [ %i.fbe, %bb.yo ], [ %i.fel, %bb.zg ] ; 2 uses
  %.587.i.ph.i.i557 = phi i64 [ %i.fae, %bb.yo ], [ %.082.i53.i.i548, %bb.zg ]
  %i.fgt = shl nsw i64 %.081.i54.i.i547, 2
  %i.fgu = getelementptr inbounds i8, ptr %i.eyl, i64 %i.fgt
  %i.fgv = shl nsw i64 %.sink86.i.i556, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.fgu, i8 0, i64 %i.fgv, i1 false), !noalias !605
  %i.fgw = add nsw i64 %.sink86.i.i556, %.081.i54.i.i547
  br label %.loopexit.i.i558

.loopexit.i.i558.loopexit3198.unr-lcssa:          ; preds = %.lr.ph39.i.i569
  %i.fgx = and i16 %.sroa.0.0.extract.trunc.i.i.i549, 1
  %lcmp.mod3470.not = icmp eq i16 %i.fgx, 0
  br i1 %lcmp.mod3470.not, label %.loopexit.i.i558, label %.lr.ph39.i.i569.epil.preheader

.lr.ph39.i.i569.epil.preheader:                   ; preds = %.loopexit.i.i558.loopexit3198.unr-lcssa, %.lr.ph39.i.i569.preheader
  %.1.i37.i.i571.epil.init = phi i64 [ %.081.i54.i.i547, %.lr.ph39.i.i569.preheader ], [ %i.fbc, %.loopexit.i.i558.loopexit3198.unr-lcssa ] ; 3 uses
  %lcmp.mod3472 = trunc i32 %i.ezy to i1
  call void @llvm.assume(i1 %lcmp.mod3472)
  %i.fgy = shl nsw i64 %.1.i37.i.i571.epil.init, 2
  %i.fgz = getelementptr inbounds i8, ptr %i.eyl, i64 %i.fgy
  %i.fha = getelementptr inbounds i8, ptr %i.eyt, i64 %.1.i37.i.i571.epil.init
  %i.fhb = load i8, ptr %i.fha, align 1, !tbaa !98, !noalias !605
  %i.fhc = zext i8 %i.fhb to i64
  %i.fhd = shl nuw nsw i64 %i.fhc, 2
  %i.fhe = getelementptr inbounds nuw i8, ptr %i.eyk, i64 %i.fhd
  %i.fhf = load i32, ptr %i.fhe, align 1, !noalias !605
  store i32 %i.fhf, ptr %i.fgz, align 1, !noalias !605
  %i.fhg = add nsw i64 %.1.i37.i.i571.epil.init, 1
  br label %.loopexit.i.i558

.loopexit.i.i558:                                 ; preds = %bb.yw, %.lr.ph39.i.i569.epil.preheader, %.loopexit.i.i558.loopexit3198.unr-lcssa, %bb.zu, %bb.zf, %.loopexit.sink.split.i.i555, %.preheader27.i.i574, %.preheader.i.i587, %.preheader30.i.i561, %bb.yn
  %.587.i.i.i559 = phi i64 [ %.587.i.ph.i.i557, %.loopexit.sink.split.i.i555 ], [ %i.fae, %bb.yn ], [ %.486.i.i.i580, %bb.zu ], [ %i.fae, %.lr.ph39.i.i569.epil.preheader ], [ %i.fae, %.preheader30.i.i561 ], [ %.082.i53.i.i548, %.preheader.i.i587 ], [ %.082.i53.i.i548, %.preheader27.i.i574 ], [ %.284.i.i.i593, %bb.zf ], [ %i.fae, %.loopexit.i.i558.loopexit3198.unr-lcssa ], [ %i.fae, %bb.yw ] ; 2 uses
  %.5.i.i.i560 = phi i64 [ %i.fgw, %.loopexit.sink.split.i.i555 ], [ %.081.i54.i.i547, %bb.yn ], [ %i.fgr, %bb.zu ], [ %i.fhg, %.lr.ph39.i.i569.epil.preheader ], [ %.081.i54.i.i547, %.preheader30.i.i561 ], [ %.081.i54.i.i547, %.preheader.i.i587 ], [ %.081.i54.i.i547, %.preheader27.i.i574 ], [ %i.fei, %bb.zf ], [ %i.fbc, %.loopexit.i.i558.loopexit3198.unr-lcssa ], [ %i.fcp, %bb.yw ] ; 2 uses
  %i.fhh = icmp slt i64 %.5.i.i.i560, %i.eyn
  br i1 %i.fhh, label %bb.yl, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !612

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i.i558, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i543
  %.082.i.lcssa.i.i545 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i543 ], [ %.587.i.i.i559, %.loopexit.i.i558 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24, !noalias !605
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i539:                                    ; preds = %.lr.ph.i.i539, %.lr.ph.i.i539.preheader.new
  %.0.i1833.i.i540 = phi i64 [ 0, %.lr.ph.i.i539.preheader.new ], [ %i.fhz, %.lr.ph.i.i539 ] ; 4 uses
  %niter3468 = phi i64 [ 0, %.lr.ph.i.i539.preheader.new ], [ %niter3468.next.1, %.lr.ph.i.i539 ]
  %i.fhi = shl nuw nsw i64 %.0.i1833.i.i540, 2
  %i.fhj = getelementptr inbounds nuw i8, ptr %i.eyl, i64 %i.fhi
  %i.fhk = getelementptr inbounds nuw i8, ptr %i.eyt, i64 %.0.i1833.i.i540
  %i.fhl = load i8, ptr %i.fhk, align 1, !tbaa !98, !noalias !605
  %i.fhm = zext i8 %i.fhl to i64
  %i.fhn = shl nuw nsw i64 %i.fhm, 2
  %i.fho = getelementptr inbounds nuw i8, ptr %i.eyk, i64 %i.fhn
  %i.fhp = load i32, ptr %i.fho, align 1, !noalias !605
  store i32 %i.fhp, ptr %i.fhj, align 1, !noalias !605
  %i.fhq = or disjoint i64 %.0.i1833.i.i540, 1    ; 2 uses
  %i.fhr = shl nuw nsw i64 %i.fhq, 2
  %i.fhs = getelementptr inbounds nuw i8, ptr %i.eyl, i64 %i.fhr
  %i.fht = getelementptr inbounds nuw i8, ptr %i.eyt, i64 %i.fhq
  %i.fhu = load i8, ptr %i.fht, align 1, !tbaa !98, !noalias !605
  %i.fhv = zext i8 %i.fhu to i64
  %i.fhw = shl nuw nsw i64 %i.fhv, 2
  %i.fhx = getelementptr inbounds nuw i8, ptr %i.eyk, i64 %i.fhw
  %i.fhy = load i32, ptr %i.fhx, align 1, !noalias !605
  store i32 %i.fhy, ptr %i.fhs, align 1, !noalias !605
  %i.fhz = add nuw nsw i64 %.0.i1833.i.i540, 2    ; 2 uses
  %niter3468.next.1 = add nuw nsw i64 %niter3468, 2 ; 2 uses
  %niter3468.ncmp.1 = icmp eq i64 %niter3468.next.1, %unroll_iter3467
  br i1 %niter3468.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3204.unr-lcssa, label %.lr.ph.i.i539, !llvm.loop !613

bb.zv:                                            ; preds = %bb.yf
  br i1 %i.eyb, label %bb.zx, label %bb.zw

bb.zw:                                            ; preds = %bb.zv
  %i.fia = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.fib = load i64, ptr %i.fia, align 8, !tbaa !71, !noalias !614
  %.not.i19.i21.i476 = icmp ne i64 %i.fib, 0
  %i.fic = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.fid = load ptr, ptr %i.fic, align 8, !noalias !614
  %i.fie = icmp ne ptr %i.fid, null
  %i.fif = select i1 %.not.i19.i21.i476, i1 %i.fie, i1 false
  br label %bb.zx

bb.zx:                                            ; preds = %bb.zw, %bb.zv
  %i.fig = phi i1 [ true, %bb.zv ], [ %i.fif, %bb.zw ]
  %i.fih = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !614
  %i.fii = extractvalue { i32, ptr } %i.fih, 1    ; 9 uses
  %i.fij = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !614 ; 13 uses
  %i.fik = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.fil = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !614 ; 11 uses
  %i.fim = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.fin = load i64, ptr %i.fim, align 8, !tbaa !99, !noalias !614
  %i.fio = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.fip = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.fiq = load ptr, ptr %i.fip, align 8, !tbaa !66, !noalias !614
  %i.fir = getelementptr inbounds [2 x i8], ptr %i.fiq, i64 %i.fin ; 9 uses
  br i1 %i.fig, label %bb.zy, label %.preheader32.i22.i477

.preheader32.i22.i477:                            ; preds = %bb.zx
  %i.fis = icmp sgt i64 %i.fil, 0
  br i1 %i.fis, label %.lr.ph.i24.i478.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i478.preheader:                        ; preds = %.preheader32.i22.i477
  %xtraiter3453 = and i64 %i.fil, 1
  %i.fit = icmp eq i64 %i.fil, 1
  br i1 %i.fit, label %.lr.ph.i24.i478.epil.preheader, label %.lr.ph.i24.i478.preheader.new

.lr.ph.i24.i478.preheader.new:                    ; preds = %.lr.ph.i24.i478.preheader
  %unroll_iter3456 = and i64 %i.fil, 9223372036854775806
  br label %.lr.ph.i24.i478

bb.zy:                                            ; preds = %bb.zx
  %i.fiu = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.fiv = load ptr, ptr %i.fiu, align 8, !tbaa !171, !noalias !614
  %i.fiw = load ptr, ptr %i.fiv, align 8, !tbaa !306, !noalias !614 ; 4 uses
  %.not.i.i.i27.i481 = icmp eq ptr %i.fiw, null
  br i1 %.not.i.i.i27.i481, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i482, label %bb.zz

bb.zz:                                            ; preds = %bb.zy
  %i.fix = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.fiy = load i64, ptr %i.fix, align 8, !tbaa !438, !noalias !614
  %i.fiz = getelementptr inbounds nuw i8, ptr %i.fiw, i64 9
  %i.fja = load i8, ptr %i.fiz, align 1, !tbaa !439, !range !127, !noalias !614, !noundef !128
  %i.fjb = trunc nuw i8 %i.fja to i1
  %i.fjc = getelementptr inbounds nuw i8, ptr %i.fiw, i64 8
  %i.fjd = load i8, ptr %i.fjc, align 8, !range !127, !noalias !614
  %i.fje = trunc nuw i8 %i.fjd to i1
  %i.fjf = select i1 %i.fjb, i1 %i.fje, i1 false, !prof !117
  %i.fjg = getelementptr inbounds nuw i8, ptr %i.fiw, i64 16
  %i.fjh = load ptr, ptr %i.fjg, align 8, !noalias !614
  %i.fji = select i1 %i.fjf, ptr %i.fjh, ptr null, !prof !117
  %i.fjj = getelementptr inbounds i8, ptr %i.fji, i64 %i.fiy
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i482

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i482: ; preds = %bb.zz, %bb.zy
  %.0.i.i.i29.i483 = phi ptr [ %i.fjj, %bb.zz ], [ null, %bb.zy ] ; 5 uses
  %i.fjk = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.fjl = load i64, ptr %i.fjk, align 8, !tbaa !178, !noalias !614 ; 2 uses
  %i.fjm = ashr i64 %i.fjl, 3
  %i.fjn = and i64 %i.fjl, 7
  %i.fjo = icmp ne i64 %i.fjn, 0
  %i.fjp = zext i1 %i.fjo to i64
  %i.fjq = add nsw i64 %i.fjm, %i.fjp
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i29.i483, i8 0, i64 %i.fjq, i1 false), !noalias !614
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24, !noalias !614
  %i.fjr = load ptr, ptr %i.fio, align 8, !tbaa !66, !noalias !614
  %i.fjs = load i64, ptr %i.fim, align 8, !tbaa !99, !noalias !614
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef %i.fjr, i64 noundef %i.fjs, i64 noundef %i.fil), !noalias !614
  %i.fjt = icmp sgt i64 %i.fil, 0
  br i1 %i.fjt, label %.lr.ph55.i31.i485, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i31.i485:                                ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i482
  %i.fju = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.fjv = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.aaa

bb.aaa:                                           ; preds = %.loopexit.i43.i497, %.lr.ph55.i31.i485
  %.081.i54.i32.i486 = phi i64 [ 0, %.lr.ph55.i31.i485 ], [ %.5.i.i45.i499, %.loopexit.i43.i497 ] ; 12 uses
  %.082.i53.i33.i487 = phi i64 [ 0, %.lr.ph55.i31.i485 ], [ %.587.i.i44.i498, %.loopexit.i43.i497 ] ; 6 uses
  %i.fjw = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %22), !noalias !614 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i34.i488 = trunc i32 %i.fjw to i16 ; 10 uses
  %i.fjx = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !614
  %.not.i20.i35.i489 = icmp ne i64 %i.fjx, 0
  %i.fjy = load ptr, ptr %i.v, align 8, !noalias !614
  %i.fjz = icmp ne ptr %i.fjy, null
  %i.fka = select i1 %.not.i20.i35.i489, i1 %i.fjz, i1 false
  br i1 %i.fka, label %bb.aam, label %bb.aab

bb.aab:                                           ; preds = %bb.aaa
  %.sroa.14.0.extract.shift.i.i36.i490 = lshr i32 %i.fjw, 16
  %.sroa.14.0.extract.trunc.i.i37.i491 = zext nneg i32 %.sroa.14.0.extract.shift.i.i36.i490 to i64
  %sext91.i.i38.i492 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i37.i491, 48
  %i.fkb = ashr exact i64 %sext91.i.i38.i492, 48
  %i.fkc = add nsw i64 %i.fkb, %.082.i53.i33.i487 ; 6 uses
  %i.fkd = ashr i32 %i.fjw, 16                    ; 2 uses
  %sext.i.i39.i493 = shl i32 %i.fjw, 16
  %i.fke = ashr exact i32 %sext.i.i39.i493, 16
  %i.fkf = icmp eq i32 %i.fkd, %i.fke
  br i1 %i.fkf, label %bb.aac, label %bb.aad

bb.aac:                                           ; preds = %bb.aab
  %i.fkg = sext i16 %.sroa.0.0.extract.trunc.i.i34.i488 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i29.i483, i64 noundef %.081.i54.i32.i486, i64 noundef %i.fkg, i1 noundef zeroext true), !noalias !614
  %i.fkh = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i488, 0
  br i1 %i.fkh, label %.lr.ph39.i54.i508.preheader, label %.loopexit.i43.i497

.lr.ph39.i54.i508.preheader:                      ; preds = %bb.aac
  %i.fki = icmp eq i16 %.sroa.0.0.extract.trunc.i.i34.i488, 1
  br i1 %i.fki, label %.lr.ph39.i54.i508.epil.preheader, label %.lr.ph39.i54.i508.preheader.new

.lr.ph39.i54.i508.preheader.new:                  ; preds = %.lr.ph39.i54.i508.preheader
  %unroll_iter3462 = and i64 %i.fkg, 32766
  br label %.lr.ph39.i54.i508

.lr.ph39.i54.i508:                                ; preds = %.lr.ph39.i54.i508, %.lr.ph39.i54.i508.preheader.new
  %.1.i37.i56.i510 = phi i64 [ %.081.i54.i32.i486, %.lr.ph39.i54.i508.preheader.new ], [ %i.fla, %.lr.ph39.i54.i508 ] ; 4 uses
  %niter3463 = phi i64 [ 0, %.lr.ph39.i54.i508.preheader.new ], [ %niter3463.next.1, %.lr.ph39.i54.i508 ]
  %i.fkj = shl nsw i64 %.1.i37.i56.i510, 2
  %i.fkk = getelementptr inbounds i8, ptr %i.fij, i64 %i.fkj
  %i.fkl = getelementptr inbounds [2 x i8], ptr %i.fir, i64 %.1.i37.i56.i510
  %i.fkm = load i16, ptr %i.fkl, align 2, !tbaa !269, !noalias !614
  %i.fkn = zext i16 %i.fkm to i64
  %i.fko = shl nuw nsw i64 %i.fkn, 2
  %i.fkp = getelementptr inbounds nuw i8, ptr %i.fii, i64 %i.fko
  %i.fkq = load i32, ptr %i.fkp, align 1, !noalias !614
  store i32 %i.fkq, ptr %i.fkk, align 1, !noalias !614
  %i.fkr = add nsw i64 %.1.i37.i56.i510, 1        ; 2 uses
  %i.fks = shl nsw i64 %i.fkr, 2
  %i.fkt = getelementptr inbounds i8, ptr %i.fij, i64 %i.fks
  %i.fku = getelementptr inbounds [2 x i8], ptr %i.fir, i64 %i.fkr
  %i.fkv = load i16, ptr %i.fku, align 2, !tbaa !269, !noalias !614
  %i.fkw = zext i16 %i.fkv to i64
  %i.fkx = shl nuw nsw i64 %i.fkw, 2
  %i.fky = getelementptr inbounds nuw i8, ptr %i.fii, i64 %i.fkx
  %i.fkz = load i32, ptr %i.fky, align 1, !noalias !614
  store i32 %i.fkz, ptr %i.fkt, align 1, !noalias !614
  %i.fla = add nsw i64 %.1.i37.i56.i510, 2        ; 3 uses
  %niter3463.next.1 = add i64 %niter3463, 2       ; 2 uses
  %niter3463.ncmp.1 = icmp eq i64 %niter3463.next.1, %unroll_iter3462
  br i1 %niter3463.ncmp.1, label %.loopexit.i43.i497.loopexit3206.unr-lcssa, label %.lr.ph39.i54.i508, !llvm.loop !617

bb.aad:                                           ; preds = %bb.aab
  %i.flb = icmp sgt i32 %i.fkd, 0
  %i.flc = sext i16 %.sroa.0.0.extract.trunc.i.i34.i488 to i64 ; 2 uses
  br i1 %i.flb, label %.preheader30.i46.i500, label %.loopexit.sink.split.i40.i494

.preheader30.i46.i500:                            ; preds = %bb.aad
  %i.fld = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i488, 0
  br i1 %i.fld, label %.lr.ph36.i47.i501, label %.loopexit.i43.i497

.lr.ph36.i47.i501:                                ; preds = %.preheader30.i46.i500, %bb.aal
  %.079.i35.i48.i502 = phi i64 [ %i.fmo, %bb.aal ], [ 0, %.preheader30.i46.i500 ]
  %.2.i34.i49.i503 = phi i64 [ %i.fmn, %bb.aal ], [ %.081.i54.i32.i486, %.preheader30.i46.i500 ] ; 10 uses
  %i.fle = load ptr, ptr %i.fio, align 8, !tbaa !66, !noalias !614 ; 2 uses
  %.not.i21.i50.i504 = icmp eq ptr %i.fle, null
  br i1 %.not.i21.i50.i504, label %bb.aaf, label %bb.aae

bb.aae:                                           ; preds = %.lr.ph36.i47.i501
  %i.flf = load i64, ptr %i.fim, align 8, !tbaa !99, !noalias !614
  %i.flg = add nsw i64 %i.flf, %.2.i34.i49.i503   ; 2 uses
  %i.flh = lshr i64 %i.flg, 3
  %i.fli = getelementptr inbounds nuw i8, ptr %i.fle, i64 %i.flh
  %i.flj = load i8, ptr %i.fli, align 1, !tbaa !98, !noalias !614
  %i.flk = trunc i64 %i.flg to i8
  %i.fll = and i8 %i.flk, 7
  %i.flm = lshr i8 %i.flj, %i.fll
  %i.fln = trunc i8 %i.flm to i1
  br i1 %i.fln, label %bb.aaj, label %bb.aak

bb.aaf:                                           ; preds = %.lr.ph36.i47.i501
  %i.flo = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !614
  %i.flp = getelementptr inbounds nuw i8, ptr %i.flo, i64 40
  %i.flq = load i32, ptr %i.flp, align 8, !tbaa !42, !noalias !614
  switch i32 %i.flq, label %bb.aai [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i52.i506
    i32 28, label %bb.aag
    i32 38, label %bb.aah
  ]

bb.aag:                                           ; preds = %bb.aaf
  %i.flr = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i49.i503), !noalias !614
  br i1 %i.flr, label %bb.aak, label %bb.aaj

bb.aah:                                           ; preds = %bb.aaf
  %i.fls = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i49.i503), !noalias !614
  br i1 %i.fls, label %bb.aak, label %bb.aaj

end_hunk_10
begin_hunk_11_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  br i1 %i.foi, label %.preheader27.i59.i513, label %.loopexit.sink.split.i40.i494

.preheader27.i59.i513:                            ; preds = %bb.aav
  %i.fok = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i488, 0
  br i1 %i.fok, label %.lr.ph44.i60.i514, label %.loopexit.i43.i497

.lr.ph44.i60.i514:                                ; preds = %.preheader27.i59.i513, %bb.abj
  %.0.i43.i61.i515 = phi i64 [ %i.fqq, %bb.abj ], [ 0, %.preheader27.i59.i513 ]
  %.4.i42.i62.i516 = phi i64 [ %i.fqp, %bb.abj ], [ %.081.i54.i32.i486, %.preheader27.i59.i513 ] ; 10 uses
  %.385.i41.i63.i517 = phi i64 [ %.486.i.i65.i519, %bb.abj ], [ %.082.i53.i33.i487, %.preheader27.i59.i513 ] ; 2 uses
  %i.fol = load ptr, ptr %i.fio, align 8, !tbaa !66, !noalias !614 ; 2 uses
  %.not.i26.i64.i518 = icmp eq ptr %i.fol, null
  br i1 %.not.i26.i64.i518, label %bb.aax, label %bb.aaw

bb.aaw:                                           ; preds = %.lr.ph44.i60.i514
  %i.fom = load i64, ptr %i.fim, align 8, !tbaa !99, !noalias !614
  %i.fon = add nsw i64 %i.fom, %.4.i42.i62.i516   ; 2 uses
  %i.foo = lshr i64 %i.fon, 3
  %i.fop = getelementptr inbounds nuw i8, ptr %i.fol, i64 %i.foo
  %i.foq = load i8, ptr %i.fop, align 1, !tbaa !98, !noalias !614
  %i.for = trunc i64 %i.fon to i8
  %i.fos = and i8 %i.for, 7
  %i.fot = lshr i8 %i.foq, %i.fos
  %i.fou = trunc i8 %i.fot to i1
  br i1 %i.fou, label %bb.abb, label %bb.abi

bb.aax:                                           ; preds = %.lr.ph44.i60.i514
  %i.fov = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !614
  %i.fow = getelementptr inbounds nuw i8, ptr %i.fov, i64 40
  %i.fox = load i32, ptr %i.fow, align 8, !tbaa !42, !noalias !614
  switch i32 %i.fox, label %bb.aba [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i524
    i32 28, label %bb.aay
    i32 38, label %bb.aaz
  ]

bb.aay:                                           ; preds = %bb.aax
  %i.foy = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i516), !noalias !614
  br i1 %i.foy, label %bb.abi, label %bb.abb

bb.aaz:                                           ; preds = %bb.aax
  %i.foz = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i516), !noalias !614
  br i1 %i.foz, label %bb.abi, label %bb.abb

bb.aba:                                           ; preds = %bb.aax
  %i.fpa = load i64, ptr %i.fju, align 8, !tbaa !71, !noalias !614
  %i.fpb = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !614
  %.not24.i71.i525 = icmp eq i64 %i.fpa, %i.fpb
  br i1 %.not24.i71.i525, label %bb.abi, label %bb.abb

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i524:   ; preds = %bb.aax
  %i.fpc = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i516), !noalias !614
  br i1 %i.fpc, label %bb.abi, label %bb.abb

bb.abb:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i524, %bb.aba, %bb.aaz, %bb.aay, %bb.aaw
  %i.fpd = getelementptr inbounds [2 x i8], ptr %i.fir, i64 %.4.i42.i62.i516 ; 2 uses
  %i.fpe = load i16, ptr %i.fpd, align 2, !tbaa !269, !noalias !614
  %i.fpf = zext i16 %i.fpe to i64                 ; 4 uses
  %i.fpg = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !614 ; 2 uses
  %.not.i29.i67.i521 = icmp eq ptr %i.fpg, null
  br i1 %.not.i29.i67.i521, label %bb.abd, label %bb.abc

bb.abc:                                           ; preds = %bb.abb
  %i.fph = load i64, ptr %i.fjv, align 8, !tbaa !99, !noalias !614
  %i.fpi = add nsw i64 %i.fph, %i.fpf             ; 2 uses
  %i.fpj = lshr i64 %i.fpi, 3
  %i.fpk = getelementptr inbounds nuw i8, ptr %i.fpg, i64 %i.fpj
  %i.fpl = load i8, ptr %i.fpk, align 1, !tbaa !98, !noalias !614
  %i.fpm = trunc i64 %i.fpi to i8
  %i.fpn = and i8 %i.fpm, 7
  %i.fpo = lshr i8 %i.fpl, %i.fpn
  %i.fpp = trunc i8 %i.fpo to i1
  br i1 %i.fpp, label %bb.abh, label %bb.abi

bb.abd:                                           ; preds = %bb.abb
  %i.fpq = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !614
  %i.fpr = getelementptr inbounds nuw i8, ptr %i.fpq, i64 40
  %i.fps = load i32, ptr %i.fpr, align 8, !tbaa !42, !noalias !614
  switch i32 %i.fps, label %bb.abg [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i522
    i32 28, label %bb.abe
    i32 38, label %bb.abf
  ]

bb.abe:                                           ; preds = %bb.abd
  %i.fpt = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.fpf), !noalias !614
  br i1 %i.fpt, label %bb.abi, label %bb.abh

bb.abf:                                           ; preds = %bb.abd
  %i.fpu = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.fpf), !noalias !614
  br i1 %i.fpu, label %bb.abi, label %bb.abh

bb.abg:                                           ; preds = %bb.abd
  %i.fpv = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !614
  %i.fpw = load i64, ptr %i.fik, align 8, !tbaa !62, !noalias !614
  %.not25.i69.i523 = icmp eq i64 %i.fpv, %i.fpw
  br i1 %.not25.i69.i523, label %bb.abi, label %bb.abh

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i522:   ; preds = %bb.abd
  %i.fpx = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.fpf), !noalias !614
  br i1 %i.fpx, label %bb.abi, label %bb.abh

bb.abh:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i522, %bb.abg, %bb.abf, %bb.abe, %bb.abc
  %i.fpy = shl nsw i64 %.4.i42.i62.i516, 2
  %i.fpz = getelementptr inbounds i8, ptr %i.fij, i64 %i.fpy
  %i.fqa = load i16, ptr %i.fpd, align 2, !tbaa !269, !noalias !614
  %i.fqb = zext i16 %i.fqa to i64
  %i.fqc = shl nuw nsw i64 %i.fqb, 2
  %i.fqd = getelementptr inbounds nuw i8, ptr %i.fii, i64 %i.fqc
  %i.fqe = load i32, ptr %i.fqd, align 1, !noalias !614
  store i32 %i.fqe, ptr %i.fpz, align 1, !noalias !614
  %i.fqf = srem i64 %.4.i42.i62.i516, 8
  %i.fqg = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.fqf
  %i.fqh = load i8, ptr %i.fqg, align 1, !tbaa !98, !noalias !614
  %i.fqi = sdiv i64 %.4.i42.i62.i516, 8
  %i.fqj = getelementptr inbounds i8, ptr %.0.i.i.i29.i483, i64 %i.fqi ; 2 uses
  %i.fqk = load i8, ptr %i.fqj, align 1, !tbaa !98, !noalias !614
  %i.fql = or i8 %i.fqk, %i.fqh
  store i8 %i.fql, ptr %i.fqj, align 1, !tbaa !98, !noalias !614
  %i.fqm = add nsw i64 %.385.i41.i63.i517, 1
  br label %bb.abj

bb.abi:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i522, %bb.abg, %bb.abf, %bb.abe, %bb.abc, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i524, %bb.aba, %bb.aaz, %bb.aay, %bb.aaw
  %i.fqn = shl nsw i64 %.4.i42.i62.i516, 2
  %i.fqo = getelementptr inbounds i8, ptr %i.fij, i64 %i.fqn
  store i32 0, ptr %i.fqo, align 1, !noalias !614
  br label %bb.abj

bb.abj:                                           ; preds = %bb.abi, %bb.abh
  %.486.i.i65.i519 = phi i64 [ %i.fqm, %bb.abh ], [ %.385.i41.i63.i517, %bb.abi ] ; 2 uses
  %i.fqp = add nsw i64 %.4.i42.i62.i516, 1        ; 2 uses
  %i.fqq = add nuw nsw i64 %.0.i43.i61.i515, 1    ; 2 uses
  %exitcond65.not.i66.i520 = icmp eq i64 %i.fqq, %i.foj
  br i1 %exitcond65.not.i66.i520, label %.loopexit.i43.i497, label %.lr.ph44.i60.i514, !llvm.loop !620

.loopexit.sink.split.i40.i494:                    ; preds = %bb.aav, %bb.aad
  %.sink86.i41.i495 = phi i64 [ %i.flc, %bb.aad ], [ %i.foj, %bb.aav ] ; 2 uses
  %.587.i.ph.i42.i496 = phi i64 [ %i.fkc, %bb.aad ], [ %.082.i53.i33.i487, %bb.aav ]
  %i.fqr = shl nsw i64 %.081.i54.i32.i486, 2
  %i.fqs = getelementptr inbounds i8, ptr %i.fij, i64 %i.fqr
  %i.fqt = shl nsw i64 %.sink86.i41.i495, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.fqs, i8 0, i64 %i.fqt, i1 false), !noalias !614
  %i.fqu = add nsw i64 %.sink86.i41.i495, %.081.i54.i32.i486
  br label %.loopexit.i43.i497

.loopexit.i43.i497.loopexit3206.unr-lcssa:        ; preds = %.lr.ph39.i54.i508
  %i.fqv = and i16 %.sroa.0.0.extract.trunc.i.i34.i488, 1
  %lcmp.mod3459.not = icmp eq i16 %i.fqv, 0
  br i1 %lcmp.mod3459.not, label %.loopexit.i43.i497, label %.lr.ph39.i54.i508.epil.preheader

.lr.ph39.i54.i508.epil.preheader:                 ; preds = %.loopexit.i43.i497.loopexit3206.unr-lcssa, %.lr.ph39.i54.i508.preheader
  %.1.i37.i56.i510.epil.init = phi i64 [ %.081.i54.i32.i486, %.lr.ph39.i54.i508.preheader ], [ %i.fla, %.loopexit.i43.i497.loopexit3206.unr-lcssa ] ; 3 uses
  %lcmp.mod3461 = trunc i32 %i.fjw to i1
  call void @llvm.assume(i1 %lcmp.mod3461)
  %i.fqw = shl nsw i64 %.1.i37.i56.i510.epil.init, 2
  %i.fqx = getelementptr inbounds i8, ptr %i.fij, i64 %i.fqw
  %i.fqy = getelementptr inbounds [2 x i8], ptr %i.fir, i64 %.1.i37.i56.i510.epil.init
  %i.fqz = load i16, ptr %i.fqy, align 2, !tbaa !269, !noalias !614
  %i.fra = zext i16 %i.fqz to i64
  %i.frb = shl nuw nsw i64 %i.fra, 2
  %i.frc = getelementptr inbounds nuw i8, ptr %i.fii, i64 %i.frb
  %i.frd = load i32, ptr %i.frc, align 1, !noalias !614
  store i32 %i.frd, ptr %i.fqx, align 1, !noalias !614
  %i.fre = add nsw i64 %.1.i37.i56.i510.epil.init, 1
  br label %.loopexit.i43.i497

.loopexit.i43.i497:                               ; preds = %bb.aal, %.lr.ph39.i54.i508.epil.preheader, %.loopexit.i43.i497.loopexit3206.unr-lcssa, %bb.abj, %bb.aau, %.loopexit.sink.split.i40.i494, %.preheader27.i59.i513, %.preheader.i72.i526, %.preheader30.i46.i500, %bb.aac
  %.587.i.i44.i498 = phi i64 [ %.587.i.ph.i42.i496, %.loopexit.sink.split.i40.i494 ], [ %i.fkc, %bb.aac ], [ %.486.i.i65.i519, %bb.abj ], [ %i.fkc, %.lr.ph39.i54.i508.epil.preheader ], [ %i.fkc, %.preheader30.i46.i500 ], [ %.082.i53.i33.i487, %.preheader.i72.i526 ], [ %.082.i53.i33.i487, %.preheader27.i59.i513 ], [ %.284.i.i78.i532, %bb.aau ], [ %i.fkc, %.loopexit.i43.i497.loopexit3206.unr-lcssa ], [ %i.fkc, %bb.aal ] ; 2 uses
  %.5.i.i45.i499 = phi i64 [ %i.fqu, %.loopexit.sink.split.i40.i494 ], [ %.081.i54.i32.i486, %bb.aac ], [ %i.fqp, %bb.abj ], [ %i.fre, %.lr.ph39.i54.i508.epil.preheader ], [ %.081.i54.i32.i486, %.preheader30.i46.i500 ], [ %.081.i54.i32.i486, %.preheader.i72.i526 ], [ %.081.i54.i32.i486, %.preheader27.i59.i513 ], [ %i.fog, %bb.aau ], [ %i.fla, %.loopexit.i43.i497.loopexit3206.unr-lcssa ], [ %i.fmn, %bb.aal ] ; 2 uses
  %i.frf = icmp slt i64 %.5.i.i45.i499, %i.fil
  br i1 %i.frf, label %bb.aaa, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !621

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i43.i497, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i482
  %.082.i.lcssa.i30.i484 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i482 ], [ %.587.i.i44.i498, %.loopexit.i43.i497 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24, !noalias !614
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i478:                                  ; preds = %.lr.ph.i24.i478, %.lr.ph.i24.i478.preheader.new
  %.0.i1833.i25.i479 = phi i64 [ 0, %.lr.ph.i24.i478.preheader.new ], [ %i.frx, %.lr.ph.i24.i478 ] ; 4 uses
  %niter3457 = phi i64 [ 0, %.lr.ph.i24.i478.preheader.new ], [ %niter3457.next.1, %.lr.ph.i24.i478 ]
  %i.frg = shl nuw nsw i64 %.0.i1833.i25.i479, 2
  %i.frh = getelementptr inbounds nuw i8, ptr %i.fij, i64 %i.frg
  %i.fri = getelementptr inbounds nuw [2 x i8], ptr %i.fir, i64 %.0.i1833.i25.i479
  %i.frj = load i16, ptr %i.fri, align 2, !tbaa !269, !noalias !614
  %i.frk = zext i16 %i.frj to i64
  %i.frl = shl nuw nsw i64 %i.frk, 2
  %i.frm = getelementptr inbounds nuw i8, ptr %i.fii, i64 %i.frl
  %i.frn = load i32, ptr %i.frm, align 1, !noalias !614
  store i32 %i.frn, ptr %i.frh, align 1, !noalias !614
  %i.fro = or disjoint i64 %.0.i1833.i25.i479, 1  ; 2 uses
  %i.frp = shl nuw nsw i64 %i.fro, 2
  %i.frq = getelementptr inbounds nuw i8, ptr %i.fij, i64 %i.frp
  %i.frr = getelementptr inbounds nuw [2 x i8], ptr %i.fir, i64 %i.fro
  %i.frs = load i16, ptr %i.frr, align 2, !tbaa !269, !noalias !614
  %i.frt = zext i16 %i.frs to i64
  %i.fru = shl nuw nsw i64 %i.frt, 2
  %i.frv = getelementptr inbounds nuw i8, ptr %i.fii, i64 %i.fru
  %i.frw = load i32, ptr %i.frv, align 1, !noalias !614
  store i32 %i.frw, ptr %i.frq, align 1, !noalias !614
  %i.frx = add nuw nsw i64 %.0.i1833.i25.i479, 2  ; 2 uses
  %niter3457.next.1 = add nuw nsw i64 %niter3457, 2 ; 2 uses
  %niter3457.ncmp.1 = icmp eq i64 %niter3457.next.1, %unroll_iter3456
  br i1 %niter3457.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3212.unr-lcssa, label %.lr.ph.i24.i478, !llvm.loop !622

bb.abk:                                           ; preds = %bb.yf
  br i1 %i.eyb, label %bb.abm, label %bb.abl

bb.abl:                                           ; preds = %bb.abk
  %i.fry = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.frz = load i64, ptr %i.fry, align 8, !tbaa !71, !noalias !623
  %.not.i19.i83.i414 = icmp ne i64 %i.frz, 0
  %i.fsa = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.fsb = load ptr, ptr %i.fsa, align 8, !noalias !623
  %i.fsc = icmp ne ptr %i.fsb, null
  %i.fsd = select i1 %.not.i19.i83.i414, i1 %i.fsc, i1 false
  br label %bb.abm

bb.abm:                                           ; preds = %bb.abl, %bb.abk
  %i.fse = phi i1 [ true, %bb.abk ], [ %i.fsd, %bb.abl ]
  %i.fsf = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !623
  %i.fsg = extractvalue { i32, ptr } %i.fsf, 1    ; 9 uses
  %i.fsh = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !623 ; 13 uses
  %i.fsi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.fsj = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !623 ; 11 uses
  %i.fsk = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.fsl = load i64, ptr %i.fsk, align 8, !tbaa !99, !noalias !623
  %i.fsm = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.fsn = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.fso = load ptr, ptr %i.fsn, align 8, !tbaa !66, !noalias !623
  %i.fsp = getelementptr inbounds [4 x i8], ptr %i.fso, i64 %i.fsl ; 9 uses
  br i1 %i.fse, label %bb.abn, label %.preheader32.i84.i415

.preheader32.i84.i415:                            ; preds = %bb.abm
  %i.fsq = icmp sgt i64 %i.fsj, 0
  br i1 %i.fsq, label %.lr.ph.i86.i417.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i417.preheader:                        ; preds = %.preheader32.i84.i415
  %xtraiter3442 = and i64 %i.fsj, 1
  %i.fsr = icmp eq i64 %i.fsj, 1
  br i1 %i.fsr, label %.lr.ph.i86.i417.epil.preheader, label %.lr.ph.i86.i417.preheader.new

.lr.ph.i86.i417.preheader.new:                    ; preds = %.lr.ph.i86.i417.preheader
  %unroll_iter3445 = and i64 %i.fsj, 9223372036854775806
  br label %.lr.ph.i86.i417

bb.abn:                                           ; preds = %bb.abm
  %i.fss = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.fst = load ptr, ptr %i.fss, align 8, !tbaa !171, !noalias !623
  %i.fsu = load ptr, ptr %i.fst, align 8, !tbaa !306, !noalias !623 ; 4 uses
  %.not.i.i.i89.i420 = icmp eq ptr %i.fsu, null
  br i1 %.not.i.i.i89.i420, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i421, label %bb.abo

bb.abo:                                           ; preds = %bb.abn
  %i.fsv = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.fsw = load i64, ptr %i.fsv, align 8, !tbaa !438, !noalias !623
  %i.fsx = getelementptr inbounds nuw i8, ptr %i.fsu, i64 9
  %i.fsy = load i8, ptr %i.fsx, align 1, !tbaa !439, !range !127, !noalias !623, !noundef !128
  %i.fsz = trunc nuw i8 %i.fsy to i1
  %i.fta = getelementptr inbounds nuw i8, ptr %i.fsu, i64 8
  %i.ftb = load i8, ptr %i.fta, align 8, !range !127, !noalias !623
  %i.ftc = trunc nuw i8 %i.ftb to i1
  %i.ftd = select i1 %i.fsz, i1 %i.ftc, i1 false, !prof !117
  %i.fte = getelementptr inbounds nuw i8, ptr %i.fsu, i64 16
  %i.ftf = load ptr, ptr %i.fte, align 8, !noalias !623
  %i.ftg = select i1 %i.ftd, ptr %i.ftf, ptr null, !prof !117
  %i.fth = getelementptr inbounds i8, ptr %i.ftg, i64 %i.fsw
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i421

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i421: ; preds = %bb.abo, %bb.abn
  %.0.i.i.i91.i422 = phi ptr [ %i.fth, %bb.abo ], [ null, %bb.abn ] ; 5 uses
  %i.fti = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ftj = load i64, ptr %i.fti, align 8, !tbaa !178, !noalias !623 ; 2 uses
  %i.ftk = ashr i64 %i.ftj, 3
  %i.ftl = and i64 %i.ftj, 7
  %i.ftm = icmp ne i64 %i.ftl, 0
  %i.ftn = zext i1 %i.ftm to i64
  %i.fto = add nsw i64 %i.ftk, %i.ftn
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i91.i422, i8 0, i64 %i.fto, i1 false), !noalias !623
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24, !noalias !623
  %i.ftp = load ptr, ptr %i.fsm, align 8, !tbaa !66, !noalias !623
  %i.ftq = load i64, ptr %i.fsk, align 8, !tbaa !99, !noalias !623
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %i.ftp, i64 noundef %i.ftq, i64 noundef %i.fsj), !noalias !623
  %i.ftr = icmp sgt i64 %i.fsj, 0
  br i1 %i.ftr, label %.lr.ph55.i93.i424, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i93.i424:                                ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i421
  %i.fts = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.ftt = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.abp

bb.abp:                                           ; preds = %.loopexit.i105.i436, %.lr.ph55.i93.i424
  %.081.i54.i94.i425 = phi i64 [ 0, %.lr.ph55.i93.i424 ], [ %.5.i.i107.i438, %.loopexit.i105.i436 ] ; 12 uses
  %.082.i53.i95.i426 = phi i64 [ 0, %.lr.ph55.i93.i424 ], [ %.587.i.i106.i437, %.loopexit.i105.i436 ] ; 6 uses
  %i.ftu = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %21), !noalias !623 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i96.i427 = trunc i32 %i.ftu to i16 ; 10 uses
  %i.ftv = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !623
  %.not.i20.i97.i428 = icmp ne i64 %i.ftv, 0
  %i.ftw = load ptr, ptr %i.v, align 8, !noalias !623
  %i.ftx = icmp ne ptr %i.ftw, null
  %i.fty = select i1 %.not.i20.i97.i428, i1 %i.ftx, i1 false
  br i1 %i.fty, label %bb.acb, label %bb.abq

bb.abq:                                           ; preds = %bb.abp
  %.sroa.14.0.extract.shift.i.i98.i429 = lshr i32 %i.ftu, 16
  %.sroa.14.0.extract.trunc.i.i99.i430 = zext nneg i32 %.sroa.14.0.extract.shift.i.i98.i429 to i64
  %sext91.i.i100.i431 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i99.i430, 48
  %i.ftz = ashr exact i64 %sext91.i.i100.i431, 48
  %i.fua = add nsw i64 %i.ftz, %.082.i53.i95.i426 ; 6 uses
  %i.fub = ashr i32 %i.ftu, 16                    ; 2 uses
  %sext.i.i101.i432 = shl i32 %i.ftu, 16
  %i.fuc = ashr exact i32 %sext.i.i101.i432, 16
  %i.fud = icmp eq i32 %i.fub, %i.fuc
  br i1 %i.fud, label %bb.abr, label %bb.abs

bb.abr:                                           ; preds = %bb.abq
  %i.fue = sext i16 %.sroa.0.0.extract.trunc.i.i96.i427 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i91.i422, i64 noundef %.081.i54.i94.i425, i64 noundef %i.fue, i1 noundef zeroext true), !noalias !623
  %i.fuf = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i427, 0
  br i1 %i.fuf, label %.lr.ph39.i116.i447.preheader, label %.loopexit.i105.i436

.lr.ph39.i116.i447.preheader:                     ; preds = %bb.abr
  %i.fug = icmp eq i16 %.sroa.0.0.extract.trunc.i.i96.i427, 1
  br i1 %i.fug, label %.lr.ph39.i116.i447.epil.preheader, label %.lr.ph39.i116.i447.preheader.new

.lr.ph39.i116.i447.preheader.new:                 ; preds = %.lr.ph39.i116.i447.preheader
  %unroll_iter3451 = and i64 %i.fue, 32766
  br label %.lr.ph39.i116.i447

.lr.ph39.i116.i447:                               ; preds = %.lr.ph39.i116.i447, %.lr.ph39.i116.i447.preheader.new
  %.1.i37.i118.i449 = phi i64 [ %.081.i54.i94.i425, %.lr.ph39.i116.i447.preheader.new ], [ %i.fuy, %.lr.ph39.i116.i447 ] ; 4 uses
  %niter3452 = phi i64 [ 0, %.lr.ph39.i116.i447.preheader.new ], [ %niter3452.next.1, %.lr.ph39.i116.i447 ]
  %i.fuh = shl nsw i64 %.1.i37.i118.i449, 2
  %i.fui = getelementptr inbounds i8, ptr %i.fsh, i64 %i.fuh
  %i.fuj = getelementptr inbounds [4 x i8], ptr %i.fsp, i64 %.1.i37.i118.i449
  %i.fuk = load i32, ptr %i.fuj, align 4, !tbaa !3, !noalias !623
  %i.ful = shl i32 %i.fuk, 2
  %i.fum = zext i32 %i.ful to i64
  %i.fun = getelementptr inbounds nuw i8, ptr %i.fsg, i64 %i.fum
  %i.fuo = load i32, ptr %i.fun, align 1, !noalias !623
  store i32 %i.fuo, ptr %i.fui, align 1, !noalias !623
  %i.fup = add nsw i64 %.1.i37.i118.i449, 1       ; 2 uses
  %i.fuq = shl nsw i64 %i.fup, 2
  %i.fur = getelementptr inbounds i8, ptr %i.fsh, i64 %i.fuq
  %i.fus = getelementptr inbounds [4 x i8], ptr %i.fsp, i64 %i.fup
  %i.fut = load i32, ptr %i.fus, align 4, !tbaa !3, !noalias !623
  %i.fuu = shl i32 %i.fut, 2
  %i.fuv = zext i32 %i.fuu to i64
  %i.fuw = getelementptr inbounds nuw i8, ptr %i.fsg, i64 %i.fuv
  %i.fux = load i32, ptr %i.fuw, align 1, !noalias !623
  store i32 %i.fux, ptr %i.fur, align 1, !noalias !623
  %i.fuy = add nsw i64 %.1.i37.i118.i449, 2       ; 3 uses
  %niter3452.next.1 = add i64 %niter3452, 2       ; 2 uses
  %niter3452.ncmp.1 = icmp eq i64 %niter3452.next.1, %unroll_iter3451
  br i1 %niter3452.ncmp.1, label %.loopexit.i105.i436.loopexit3214.unr-lcssa, label %.lr.ph39.i116.i447, !llvm.loop !626

bb.abs:                                           ; preds = %bb.abq
  %i.fuz = icmp sgt i32 %i.fub, 0
  %i.fva = sext i16 %.sroa.0.0.extract.trunc.i.i96.i427 to i64 ; 2 uses
  br i1 %i.fuz, label %.preheader30.i108.i439, label %.loopexit.sink.split.i102.i433

.preheader30.i108.i439:                           ; preds = %bb.abs
  %i.fvb = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i427, 0
  br i1 %i.fvb, label %.lr.ph36.i109.i440, label %.loopexit.i105.i436

.lr.ph36.i109.i440:                               ; preds = %.preheader30.i108.i439, %bb.aca
  %.079.i35.i110.i441 = phi i64 [ %i.fwm, %bb.aca ], [ 0, %.preheader30.i108.i439 ]
  %.2.i34.i111.i442 = phi i64 [ %i.fwl, %bb.aca ], [ %.081.i54.i94.i425, %.preheader30.i108.i439 ] ; 10 uses
  %i.fvc = load ptr, ptr %i.fsm, align 8, !tbaa !66, !noalias !623 ; 2 uses
  %.not.i21.i112.i443 = icmp eq ptr %i.fvc, null
  br i1 %.not.i21.i112.i443, label %bb.abu, label %bb.abt

bb.abt:                                           ; preds = %.lr.ph36.i109.i440
  %i.fvd = load i64, ptr %i.fsk, align 8, !tbaa !99, !noalias !623
  %i.fve = add nsw i64 %i.fvd, %.2.i34.i111.i442  ; 2 uses
  %i.fvf = lshr i64 %i.fve, 3
  %i.fvg = getelementptr inbounds nuw i8, ptr %i.fvc, i64 %i.fvf
  %i.fvh = load i8, ptr %i.fvg, align 1, !tbaa !98, !noalias !623
  %i.fvi = trunc i64 %i.fve to i8
  %i.fvj = and i8 %i.fvi, 7
  %i.fvk = lshr i8 %i.fvh, %i.fvj
  %i.fvl = trunc i8 %i.fvk to i1
  br i1 %i.fvl, label %bb.aby, label %bb.abz

bb.abu:                                           ; preds = %.lr.ph36.i109.i440
  %i.fvm = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !623
  %i.fvn = getelementptr inbounds nuw i8, ptr %i.fvm, i64 40
  %i.fvo = load i32, ptr %i.fvn, align 8, !tbaa !42, !noalias !623
  switch i32 %i.fvo, label %bb.abx [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i114.i445
    i32 28, label %bb.abv
    i32 38, label %bb.abw
  ]

bb.abv:                                           ; preds = %bb.abu
  %i.fvp = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i111.i442), !noalias !623
  br i1 %i.fvp, label %bb.abz, label %bb.aby

bb.abw:                                           ; preds = %bb.abu
  %i.fvq = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i111.i442), !noalias !623
  br i1 %i.fvq, label %bb.abz, label %bb.aby

end_hunk_11
begin_hunk_12_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  br i1 %i.fyg, label %.preheader27.i121.i452, label %.loopexit.sink.split.i102.i433

.preheader27.i121.i452:                           ; preds = %bb.ack
  %i.fyi = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i427, 0
  br i1 %i.fyi, label %.lr.ph44.i122.i453, label %.loopexit.i105.i436

.lr.ph44.i122.i453:                               ; preds = %.preheader27.i121.i452, %bb.acy
  %.0.i43.i123.i454 = phi i64 [ %i.gao, %bb.acy ], [ 0, %.preheader27.i121.i452 ]
  %.4.i42.i124.i455 = phi i64 [ %i.gan, %bb.acy ], [ %.081.i54.i94.i425, %.preheader27.i121.i452 ] ; 10 uses
  %.385.i41.i125.i456 = phi i64 [ %.486.i.i127.i458, %bb.acy ], [ %.082.i53.i95.i426, %.preheader27.i121.i452 ] ; 2 uses
  %i.fyj = load ptr, ptr %i.fsm, align 8, !tbaa !66, !noalias !623 ; 2 uses
  %.not.i26.i126.i457 = icmp eq ptr %i.fyj, null
  br i1 %.not.i26.i126.i457, label %bb.acm, label %bb.acl

bb.acl:                                           ; preds = %.lr.ph44.i122.i453
  %i.fyk = load i64, ptr %i.fsk, align 8, !tbaa !99, !noalias !623
  %i.fyl = add nsw i64 %i.fyk, %.4.i42.i124.i455  ; 2 uses
  %i.fym = lshr i64 %i.fyl, 3
  %i.fyn = getelementptr inbounds nuw i8, ptr %i.fyj, i64 %i.fym
  %i.fyo = load i8, ptr %i.fyn, align 1, !tbaa !98, !noalias !623
  %i.fyp = trunc i64 %i.fyl to i8
  %i.fyq = and i8 %i.fyp, 7
  %i.fyr = lshr i8 %i.fyo, %i.fyq
  %i.fys = trunc i8 %i.fyr to i1
  br i1 %i.fys, label %bb.acq, label %bb.acx

bb.acm:                                           ; preds = %.lr.ph44.i122.i453
  %i.fyt = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !623
  %i.fyu = getelementptr inbounds nuw i8, ptr %i.fyt, i64 40
  %i.fyv = load i32, ptr %i.fyu, align 8, !tbaa !42, !noalias !623
  switch i32 %i.fyv, label %bb.acp [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i463
    i32 28, label %bb.acn
    i32 38, label %bb.aco
  ]

bb.acn:                                           ; preds = %bb.acm
  %i.fyw = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i455), !noalias !623
  br i1 %i.fyw, label %bb.acx, label %bb.acq

bb.aco:                                           ; preds = %bb.acm
  %i.fyx = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i455), !noalias !623
  br i1 %i.fyx, label %bb.acx, label %bb.acq

bb.acp:                                           ; preds = %bb.acm
  %i.fyy = load i64, ptr %i.fts, align 8, !tbaa !71, !noalias !623
  %i.fyz = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !623
  %.not24.i133.i464 = icmp eq i64 %i.fyy, %i.fyz
  br i1 %.not24.i133.i464, label %bb.acx, label %bb.acq

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i463:  ; preds = %bb.acm
  %i.fza = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i455), !noalias !623
  br i1 %i.fza, label %bb.acx, label %bb.acq

bb.acq:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i463, %bb.acp, %bb.aco, %bb.acn, %bb.acl
  %i.fzb = getelementptr inbounds [4 x i8], ptr %i.fsp, i64 %.4.i42.i124.i455 ; 2 uses
  %i.fzc = load i32, ptr %i.fzb, align 4, !tbaa !3, !noalias !623
  %i.fzd = zext i32 %i.fzc to i64                 ; 4 uses
  %i.fze = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !623 ; 2 uses
  %.not.i29.i129.i460 = icmp eq ptr %i.fze, null
  br i1 %.not.i29.i129.i460, label %bb.acs, label %bb.acr

bb.acr:                                           ; preds = %bb.acq
  %i.fzf = load i64, ptr %i.ftt, align 8, !tbaa !99, !noalias !623
  %i.fzg = add nsw i64 %i.fzf, %i.fzd             ; 2 uses
  %i.fzh = lshr i64 %i.fzg, 3
  %i.fzi = getelementptr inbounds nuw i8, ptr %i.fze, i64 %i.fzh
  %i.fzj = load i8, ptr %i.fzi, align 1, !tbaa !98, !noalias !623
  %i.fzk = trunc i64 %i.fzg to i8
  %i.fzl = and i8 %i.fzk, 7
  %i.fzm = lshr i8 %i.fzj, %i.fzl
  %i.fzn = trunc i8 %i.fzm to i1
  br i1 %i.fzn, label %bb.acw, label %bb.acx

bb.acs:                                           ; preds = %bb.acq
  %i.fzo = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !623
  %i.fzp = getelementptr inbounds nuw i8, ptr %i.fzo, i64 40
  %i.fzq = load i32, ptr %i.fzp, align 8, !tbaa !42, !noalias !623
  switch i32 %i.fzq, label %bb.acv [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i461
    i32 28, label %bb.act
    i32 38, label %bb.acu
  ]

bb.act:                                           ; preds = %bb.acs
  %i.fzr = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.fzd), !noalias !623
  br i1 %i.fzr, label %bb.acx, label %bb.acw

bb.acu:                                           ; preds = %bb.acs
  %i.fzs = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.fzd), !noalias !623
  br i1 %i.fzs, label %bb.acx, label %bb.acw

bb.acv:                                           ; preds = %bb.acs
  %i.fzt = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !623
  %i.fzu = load i64, ptr %i.fsi, align 8, !tbaa !62, !noalias !623
  %.not25.i131.i462 = icmp eq i64 %i.fzt, %i.fzu
  br i1 %.not25.i131.i462, label %bb.acx, label %bb.acw

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i461:  ; preds = %bb.acs
  %i.fzv = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.fzd), !noalias !623
  br i1 %i.fzv, label %bb.acx, label %bb.acw

bb.acw:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i461, %bb.acv, %bb.acu, %bb.act, %bb.acr
  %i.fzw = shl nsw i64 %.4.i42.i124.i455, 2
  %i.fzx = getelementptr inbounds i8, ptr %i.fsh, i64 %i.fzw
  %i.fzy = load i32, ptr %i.fzb, align 4, !tbaa !3, !noalias !623
  %i.fzz = shl i32 %i.fzy, 2
  %i.gaa = zext i32 %i.fzz to i64
  %i.gab = getelementptr inbounds nuw i8, ptr %i.fsg, i64 %i.gaa
  %i.gac = load i32, ptr %i.gab, align 1, !noalias !623
  store i32 %i.gac, ptr %i.fzx, align 1, !noalias !623
  %i.gad = srem i64 %.4.i42.i124.i455, 8
  %i.gae = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.gad
  %i.gaf = load i8, ptr %i.gae, align 1, !tbaa !98, !noalias !623
  %i.gag = sdiv i64 %.4.i42.i124.i455, 8
  %i.gah = getelementptr inbounds i8, ptr %.0.i.i.i91.i422, i64 %i.gag ; 2 uses
  %i.gai = load i8, ptr %i.gah, align 1, !tbaa !98, !noalias !623
  %i.gaj = or i8 %i.gai, %i.gaf
  store i8 %i.gaj, ptr %i.gah, align 1, !tbaa !98, !noalias !623
  %i.gak = add nsw i64 %.385.i41.i125.i456, 1
  br label %bb.acy

bb.acx:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i461, %bb.acv, %bb.acu, %bb.act, %bb.acr, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i463, %bb.acp, %bb.aco, %bb.acn, %bb.acl
  %i.gal = shl nsw i64 %.4.i42.i124.i455, 2
  %i.gam = getelementptr inbounds i8, ptr %i.fsh, i64 %i.gal
  store i32 0, ptr %i.gam, align 1, !noalias !623
  br label %bb.acy

bb.acy:                                           ; preds = %bb.acx, %bb.acw
  %.486.i.i127.i458 = phi i64 [ %i.gak, %bb.acw ], [ %.385.i41.i125.i456, %bb.acx ] ; 2 uses
  %i.gan = add nsw i64 %.4.i42.i124.i455, 1       ; 2 uses
  %i.gao = add nuw nsw i64 %.0.i43.i123.i454, 1   ; 2 uses
  %exitcond65.not.i128.i459 = icmp eq i64 %i.gao, %i.fyh
  br i1 %exitcond65.not.i128.i459, label %.loopexit.i105.i436, label %.lr.ph44.i122.i453, !llvm.loop !629

.loopexit.sink.split.i102.i433:                   ; preds = %bb.ack, %bb.abs
  %.sink86.i103.i434 = phi i64 [ %i.fva, %bb.abs ], [ %i.fyh, %bb.ack ] ; 2 uses
  %.587.i.ph.i104.i435 = phi i64 [ %i.fua, %bb.abs ], [ %.082.i53.i95.i426, %bb.ack ]
  %i.gap = shl nsw i64 %.081.i54.i94.i425, 2
  %i.gaq = getelementptr inbounds i8, ptr %i.fsh, i64 %i.gap
  %i.gar = shl nsw i64 %.sink86.i103.i434, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.gaq, i8 0, i64 %i.gar, i1 false), !noalias !623
  %i.gas = add nsw i64 %.sink86.i103.i434, %.081.i54.i94.i425
  br label %.loopexit.i105.i436

.loopexit.i105.i436.loopexit3214.unr-lcssa:       ; preds = %.lr.ph39.i116.i447
  %i.gat = and i16 %.sroa.0.0.extract.trunc.i.i96.i427, 1
  %lcmp.mod3448.not = icmp eq i16 %i.gat, 0
  br i1 %lcmp.mod3448.not, label %.loopexit.i105.i436, label %.lr.ph39.i116.i447.epil.preheader

.lr.ph39.i116.i447.epil.preheader:                ; preds = %.loopexit.i105.i436.loopexit3214.unr-lcssa, %.lr.ph39.i116.i447.preheader
  %.1.i37.i118.i449.epil.init = phi i64 [ %.081.i54.i94.i425, %.lr.ph39.i116.i447.preheader ], [ %i.fuy, %.loopexit.i105.i436.loopexit3214.unr-lcssa ] ; 3 uses
  %lcmp.mod3450 = trunc i32 %i.ftu to i1
  call void @llvm.assume(i1 %lcmp.mod3450)
  %i.gau = shl nsw i64 %.1.i37.i118.i449.epil.init, 2
  %i.gav = getelementptr inbounds i8, ptr %i.fsh, i64 %i.gau
  %i.gaw = getelementptr inbounds [4 x i8], ptr %i.fsp, i64 %.1.i37.i118.i449.epil.init
  %i.gax = load i32, ptr %i.gaw, align 4, !tbaa !3, !noalias !623
  %i.gay = shl i32 %i.gax, 2
  %i.gaz = zext i32 %i.gay to i64
  %i.gba = getelementptr inbounds nuw i8, ptr %i.fsg, i64 %i.gaz
  %i.gbb = load i32, ptr %i.gba, align 1, !noalias !623
  store i32 %i.gbb, ptr %i.gav, align 1, !noalias !623
  %i.gbc = add nsw i64 %.1.i37.i118.i449.epil.init, 1
  br label %.loopexit.i105.i436

.loopexit.i105.i436:                              ; preds = %bb.aca, %.lr.ph39.i116.i447.epil.preheader, %.loopexit.i105.i436.loopexit3214.unr-lcssa, %bb.acy, %bb.acj, %.loopexit.sink.split.i102.i433, %.preheader27.i121.i452, %.preheader.i134.i465, %.preheader30.i108.i439, %bb.abr
  %.587.i.i106.i437 = phi i64 [ %.587.i.ph.i104.i435, %.loopexit.sink.split.i102.i433 ], [ %i.fua, %bb.abr ], [ %.486.i.i127.i458, %bb.acy ], [ %i.fua, %.lr.ph39.i116.i447.epil.preheader ], [ %i.fua, %.preheader30.i108.i439 ], [ %.082.i53.i95.i426, %.preheader.i134.i465 ], [ %.082.i53.i95.i426, %.preheader27.i121.i452 ], [ %.284.i.i140.i471, %bb.acj ], [ %i.fua, %.loopexit.i105.i436.loopexit3214.unr-lcssa ], [ %i.fua, %bb.aca ] ; 2 uses
  %.5.i.i107.i438 = phi i64 [ %i.gas, %.loopexit.sink.split.i102.i433 ], [ %.081.i54.i94.i425, %bb.abr ], [ %i.gan, %bb.acy ], [ %i.gbc, %.lr.ph39.i116.i447.epil.preheader ], [ %.081.i54.i94.i425, %.preheader30.i108.i439 ], [ %.081.i54.i94.i425, %.preheader.i134.i465 ], [ %.081.i54.i94.i425, %.preheader27.i121.i452 ], [ %i.fye, %bb.acj ], [ %i.fuy, %.loopexit.i105.i436.loopexit3214.unr-lcssa ], [ %i.fwl, %bb.aca ] ; 2 uses
  %i.gbd = icmp slt i64 %.5.i.i107.i438, %i.fsj
  br i1 %i.gbd, label %bb.abp, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !630

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i105.i436, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i421
  %.082.i.lcssa.i92.i423 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i421 ], [ %.587.i.i106.i437, %.loopexit.i105.i436 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24, !noalias !623
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i417:                                  ; preds = %.lr.ph.i86.i417, %.lr.ph.i86.i417.preheader.new
  %.0.i1833.i87.i418 = phi i64 [ 0, %.lr.ph.i86.i417.preheader.new ], [ %i.gbv, %.lr.ph.i86.i417 ] ; 4 uses
  %niter3446 = phi i64 [ 0, %.lr.ph.i86.i417.preheader.new ], [ %niter3446.next.1, %.lr.ph.i86.i417 ]
  %i.gbe = shl nuw nsw i64 %.0.i1833.i87.i418, 2
  %i.gbf = getelementptr inbounds nuw i8, ptr %i.fsh, i64 %i.gbe
  %i.gbg = getelementptr inbounds nuw [4 x i8], ptr %i.fsp, i64 %.0.i1833.i87.i418
  %i.gbh = load i32, ptr %i.gbg, align 4, !tbaa !3, !noalias !623
  %i.gbi = shl i32 %i.gbh, 2
  %i.gbj = zext i32 %i.gbi to i64
  %i.gbk = getelementptr inbounds nuw i8, ptr %i.fsg, i64 %i.gbj
  %i.gbl = load i32, ptr %i.gbk, align 1, !noalias !623
  store i32 %i.gbl, ptr %i.gbf, align 1, !noalias !623
  %i.gbm = or disjoint i64 %.0.i1833.i87.i418, 1  ; 2 uses
  %i.gbn = shl nuw nsw i64 %i.gbm, 2
  %i.gbo = getelementptr inbounds nuw i8, ptr %i.fsh, i64 %i.gbn
  %i.gbp = getelementptr inbounds nuw [4 x i8], ptr %i.fsp, i64 %i.gbm
  %i.gbq = load i32, ptr %i.gbp, align 4, !tbaa !3, !noalias !623
  %i.gbr = shl i32 %i.gbq, 2
  %i.gbs = zext i32 %i.gbr to i64
  %i.gbt = getelementptr inbounds nuw i8, ptr %i.fsg, i64 %i.gbs
  %i.gbu = load i32, ptr %i.gbt, align 1, !noalias !623
  store i32 %i.gbu, ptr %i.gbo, align 1, !noalias !623
  %i.gbv = add nuw nsw i64 %.0.i1833.i87.i418, 2  ; 2 uses
  %niter3446.next.1 = add nuw nsw i64 %niter3446, 2 ; 2 uses
  %niter3446.ncmp.1 = icmp eq i64 %niter3446.next.1, %unroll_iter3445
  br i1 %niter3446.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3220.unr-lcssa, label %.lr.ph.i86.i417, !llvm.loop !631

bb.acz:                                           ; preds = %bb.yf
  br i1 %i.eyb, label %bb.adb, label %bb.ada

bb.ada:                                           ; preds = %bb.acz
  %i.gbw = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.gbx = load i64, ptr %i.gbw, align 8, !tbaa !71, !noalias !632
  %.not.i19.i145.i598 = icmp ne i64 %i.gbx, 0
  %i.gby = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.gbz = load ptr, ptr %i.gby, align 8, !noalias !632
  %i.gca = icmp ne ptr %i.gbz, null
  %i.gcb = select i1 %.not.i19.i145.i598, i1 %i.gca, i1 false
  br label %bb.adb

bb.adb:                                           ; preds = %bb.ada, %bb.acz
  %i.gcc = phi i1 [ true, %bb.acz ], [ %i.gcb, %bb.ada ]
  %i.gcd = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !632
  %i.gce = extractvalue { i32, ptr } %i.gcd, 1    ; 9 uses
  %i.gcf = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !632 ; 13 uses
  %i.gcg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.gch = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !632 ; 11 uses
  %i.gci = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.gcj = load i64, ptr %i.gci, align 8, !tbaa !99, !noalias !632
  %i.gck = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.gcl = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.gcm = load ptr, ptr %i.gcl, align 8, !tbaa !66, !noalias !632
  %i.gcn = getelementptr inbounds [8 x i8], ptr %i.gcm, i64 %i.gcj ; 9 uses
  br i1 %i.gcc, label %bb.adc, label %.preheader32.i146.i599

.preheader32.i146.i599:                           ; preds = %bb.adb
  %i.gco = icmp sgt i64 %i.gch, 0
  br i1 %i.gco, label %.lr.ph.i148.i600.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i600.preheader:                       ; preds = %.preheader32.i146.i599
  %xtraiter3475 = and i64 %i.gch, 1
  %i.gcp = icmp eq i64 %i.gch, 1
  br i1 %i.gcp, label %.lr.ph.i148.i600.epil.preheader, label %.lr.ph.i148.i600.preheader.new

.lr.ph.i148.i600.preheader.new:                   ; preds = %.lr.ph.i148.i600.preheader
  %unroll_iter3478 = and i64 %i.gch, 9223372036854775806
  br label %.lr.ph.i148.i600

bb.adc:                                           ; preds = %bb.adb
  %i.gcq = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.gcr = load ptr, ptr %i.gcq, align 8, !tbaa !171, !noalias !632
  %i.gcs = load ptr, ptr %i.gcr, align 8, !tbaa !306, !noalias !632 ; 4 uses
  %.not.i.i.i151.i603 = icmp eq ptr %i.gcs, null
  br i1 %.not.i.i.i151.i603, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i604, label %bb.add

bb.add:                                           ; preds = %bb.adc
  %i.gct = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.gcu = load i64, ptr %i.gct, align 8, !tbaa !438, !noalias !632
  %i.gcv = getelementptr inbounds nuw i8, ptr %i.gcs, i64 9
  %i.gcw = load i8, ptr %i.gcv, align 1, !tbaa !439, !range !127, !noalias !632, !noundef !128
  %i.gcx = trunc nuw i8 %i.gcw to i1
  %i.gcy = getelementptr inbounds nuw i8, ptr %i.gcs, i64 8
  %i.gcz = load i8, ptr %i.gcy, align 8, !range !127, !noalias !632
  %i.gda = trunc nuw i8 %i.gcz to i1
  %i.gdb = select i1 %i.gcx, i1 %i.gda, i1 false, !prof !117
  %i.gdc = getelementptr inbounds nuw i8, ptr %i.gcs, i64 16
  %i.gdd = load ptr, ptr %i.gdc, align 8, !noalias !632
  %i.gde = select i1 %i.gdb, ptr %i.gdd, ptr null, !prof !117
  %i.gdf = getelementptr inbounds i8, ptr %i.gde, i64 %i.gcu
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i604

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i604: ; preds = %bb.add, %bb.adc
  %.0.i.i.i153.i605 = phi ptr [ %i.gdf, %bb.add ], [ null, %bb.adc ] ; 5 uses
  %i.gdg = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.gdh = load i64, ptr %i.gdg, align 8, !tbaa !178, !noalias !632 ; 2 uses
  %i.gdi = ashr i64 %i.gdh, 3
  %i.gdj = and i64 %i.gdh, 7
  %i.gdk = icmp ne i64 %i.gdj, 0
  %i.gdl = zext i1 %i.gdk to i64
  %i.gdm = add nsw i64 %i.gdi, %i.gdl
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i153.i605, i8 0, i64 %i.gdm, i1 false), !noalias !632
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24, !noalias !632
  %i.gdn = load ptr, ptr %i.gck, align 8, !tbaa !66, !noalias !632
  %i.gdo = load i64, ptr %i.gci, align 8, !tbaa !99, !noalias !632
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef %i.gdn, i64 noundef %i.gdo, i64 noundef %i.gch), !noalias !632
  %i.gdp = icmp sgt i64 %i.gch, 0
  br i1 %i.gdp, label %.lr.ph55.i155.i607, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i155.i607:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i604
  %i.gdq = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.gdr = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.ade

bb.ade:                                           ; preds = %.loopexit.i167.i619, %.lr.ph55.i155.i607
  %.081.i54.i156.i608 = phi i64 [ 0, %.lr.ph55.i155.i607 ], [ %.5.i.i169.i621, %.loopexit.i167.i619 ] ; 12 uses
  %.082.i53.i157.i609 = phi i64 [ 0, %.lr.ph55.i155.i607 ], [ %.587.i.i168.i620, %.loopexit.i167.i619 ] ; 6 uses
  %i.gds = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %20), !noalias !632 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i158.i610 = trunc i32 %i.gds to i16 ; 10 uses
  %i.gdt = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !632
  %.not.i20.i159.i611 = icmp ne i64 %i.gdt, 0
  %i.gdu = load ptr, ptr %i.v, align 8, !noalias !632
  %i.gdv = icmp ne ptr %i.gdu, null
  %i.gdw = select i1 %.not.i20.i159.i611, i1 %i.gdv, i1 false
  br i1 %i.gdw, label %bb.adq, label %bb.adf

bb.adf:                                           ; preds = %bb.ade
  %.sroa.14.0.extract.shift.i.i160.i612 = lshr i32 %i.gds, 16
  %.sroa.14.0.extract.trunc.i.i161.i613 = zext nneg i32 %.sroa.14.0.extract.shift.i.i160.i612 to i64
  %sext91.i.i162.i614 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i161.i613, 48
  %i.gdx = ashr exact i64 %sext91.i.i162.i614, 48
  %i.gdy = add nsw i64 %i.gdx, %.082.i53.i157.i609 ; 6 uses
  %i.gdz = ashr i32 %i.gds, 16                    ; 2 uses
  %sext.i.i163.i615 = shl i32 %i.gds, 16
  %i.gea = ashr exact i32 %sext.i.i163.i615, 16
  %i.geb = icmp eq i32 %i.gdz, %i.gea
  br i1 %i.geb, label %bb.adg, label %bb.adh

bb.adg:                                           ; preds = %bb.adf
  %i.gec = sext i16 %.sroa.0.0.extract.trunc.i.i158.i610 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i153.i605, i64 noundef %.081.i54.i156.i608, i64 noundef %i.gec, i1 noundef zeroext true), !noalias !632
  %i.ged = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i610, 0
  br i1 %i.ged, label %.lr.ph39.i178.i630.preheader, label %.loopexit.i167.i619

.lr.ph39.i178.i630.preheader:                     ; preds = %bb.adg
  %i.gee = icmp eq i16 %.sroa.0.0.extract.trunc.i.i158.i610, 1
  br i1 %i.gee, label %.lr.ph39.i178.i630.epil.preheader, label %.lr.ph39.i178.i630.preheader.new

.lr.ph39.i178.i630.preheader.new:                 ; preds = %.lr.ph39.i178.i630.preheader
  %unroll_iter3484 = and i64 %i.gec, 32766
  br label %.lr.ph39.i178.i630

.lr.ph39.i178.i630:                               ; preds = %.lr.ph39.i178.i630, %.lr.ph39.i178.i630.preheader.new
  %.1.i37.i180.i632 = phi i64 [ %.081.i54.i156.i608, %.lr.ph39.i178.i630.preheader.new ], [ %i.geu, %.lr.ph39.i178.i630 ] ; 4 uses
  %niter3485 = phi i64 [ 0, %.lr.ph39.i178.i630.preheader.new ], [ %niter3485.next.1, %.lr.ph39.i178.i630 ]
  %i.gef = shl nsw i64 %.1.i37.i180.i632, 2
  %i.geg = getelementptr inbounds i8, ptr %i.gcf, i64 %i.gef
  %i.geh = getelementptr inbounds [8 x i8], ptr %i.gcn, i64 %.1.i37.i180.i632
  %i.gei = load i64, ptr %i.geh, align 8, !tbaa !130, !noalias !632
  %i.gej = shl i64 %i.gei, 2
  %i.gek = getelementptr inbounds nuw i8, ptr %i.gce, i64 %i.gej
  %i.gel = load i32, ptr %i.gek, align 1, !noalias !632
  store i32 %i.gel, ptr %i.geg, align 1, !noalias !632
  %i.gem = add nsw i64 %.1.i37.i180.i632, 1       ; 2 uses
  %i.gen = shl nsw i64 %i.gem, 2
  %i.geo = getelementptr inbounds i8, ptr %i.gcf, i64 %i.gen
  %i.gep = getelementptr inbounds [8 x i8], ptr %i.gcn, i64 %i.gem
  %i.geq = load i64, ptr %i.gep, align 8, !tbaa !130, !noalias !632
  %i.ger = shl i64 %i.geq, 2
  %i.ges = getelementptr inbounds nuw i8, ptr %i.gce, i64 %i.ger
  %i.get = load i32, ptr %i.ges, align 1, !noalias !632
  store i32 %i.get, ptr %i.geo, align 1, !noalias !632
  %i.geu = add nsw i64 %.1.i37.i180.i632, 2       ; 3 uses
  %niter3485.next.1 = add i64 %niter3485, 2       ; 2 uses
  %niter3485.ncmp.1 = icmp eq i64 %niter3485.next.1, %unroll_iter3484
  br i1 %niter3485.ncmp.1, label %.loopexit.i167.i619.loopexit3191.unr-lcssa, label %.lr.ph39.i178.i630, !llvm.loop !635

bb.adh:                                           ; preds = %bb.adf
  %i.gev = icmp sgt i32 %i.gdz, 0
  %i.gew = sext i16 %.sroa.0.0.extract.trunc.i.i158.i610 to i64 ; 2 uses
  br i1 %i.gev, label %.preheader30.i170.i622, label %.loopexit.sink.split.i164.i616

.preheader30.i170.i622:                           ; preds = %bb.adh
  %i.gex = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i610, 0
  br i1 %i.gex, label %.lr.ph36.i171.i623, label %.loopexit.i167.i619

.lr.ph36.i171.i623:                               ; preds = %.preheader30.i170.i622, %bb.adp
  %.079.i35.i172.i624 = phi i64 [ %i.ggh, %bb.adp ], [ 0, %.preheader30.i170.i622 ]
  %.2.i34.i173.i625 = phi i64 [ %i.ggg, %bb.adp ], [ %.081.i54.i156.i608, %.preheader30.i170.i622 ] ; 10 uses
  %i.gey = load ptr, ptr %i.gck, align 8, !tbaa !66, !noalias !632 ; 2 uses
  %.not.i21.i174.i626 = icmp eq ptr %i.gey, null
  br i1 %.not.i21.i174.i626, label %bb.adj, label %bb.adi

bb.adi:                                           ; preds = %.lr.ph36.i171.i623
  %i.gez = load i64, ptr %i.gci, align 8, !tbaa !99, !noalias !632
  %i.gfa = add nsw i64 %i.gez, %.2.i34.i173.i625  ; 2 uses
  %i.gfb = lshr i64 %i.gfa, 3
  %i.gfc = getelementptr inbounds nuw i8, ptr %i.gey, i64 %i.gfb
  %i.gfd = load i8, ptr %i.gfc, align 1, !tbaa !98, !noalias !632
  %i.gfe = trunc i64 %i.gfa to i8
  %i.gff = and i8 %i.gfe, 7
  %i.gfg = lshr i8 %i.gfd, %i.gff
  %i.gfh = trunc i8 %i.gfg to i1
  br i1 %i.gfh, label %bb.adn, label %bb.ado

bb.adj:                                           ; preds = %.lr.ph36.i171.i623
  %i.gfi = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !632
  %i.gfj = getelementptr inbounds nuw i8, ptr %i.gfi, i64 40
  %i.gfk = load i32, ptr %i.gfj, align 8, !tbaa !42, !noalias !632
  switch i32 %i.gfk, label %bb.adm [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i176.i628
    i32 28, label %bb.adk
    i32 38, label %bb.adl
  ]

bb.adk:                                           ; preds = %bb.adj
  %i.gfl = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i173.i625), !noalias !632
  br i1 %i.gfl, label %bb.ado, label %bb.adn

bb.adl:                                           ; preds = %bb.adj
  %i.gfm = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i173.i625), !noalias !632
  br i1 %i.gfm, label %bb.ado, label %bb.adn

bb.adm:                                           ; preds = %bb.adj
  %i.gfn = load i64, ptr %i.gdq, align 8, !tbaa !71, !noalias !632
end_hunk_12
begin_hunk_13_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  br i1 %exitcond66.not.i203.i655, label %.loopexit.i167.i619, label %.lr.ph50.i197.i649, !llvm.loop !637

bb.adz:                                           ; preds = %bb.adq
  %i.ghz = icmp sgt i32 %i.ggi, 0
  %i.gia = sext i16 %.sroa.0.0.extract.trunc.i.i158.i610 to i64 ; 2 uses
  br i1 %i.ghz, label %.preheader27.i183.i635, label %.loopexit.sink.split.i164.i616

.preheader27.i183.i635:                           ; preds = %bb.adz
  %i.gib = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i610, 0
  br i1 %i.gib, label %.lr.ph44.i184.i636, label %.loopexit.i167.i619

.lr.ph44.i184.i636:                               ; preds = %.preheader27.i183.i635, %bb.aen
  %.0.i43.i185.i637 = phi i64 [ %i.gkf, %bb.aen ], [ 0, %.preheader27.i183.i635 ]
  %.4.i42.i186.i638 = phi i64 [ %i.gke, %bb.aen ], [ %.081.i54.i156.i608, %.preheader27.i183.i635 ] ; 10 uses
  %.385.i41.i187.i639 = phi i64 [ %.486.i.i189.i641, %bb.aen ], [ %.082.i53.i157.i609, %.preheader27.i183.i635 ] ; 2 uses
  %i.gic = load ptr, ptr %i.gck, align 8, !tbaa !66, !noalias !632 ; 2 uses
  %.not.i26.i188.i640 = icmp eq ptr %i.gic, null
  br i1 %.not.i26.i188.i640, label %bb.aeb, label %bb.aea

bb.aea:                                           ; preds = %.lr.ph44.i184.i636
  %i.gid = load i64, ptr %i.gci, align 8, !tbaa !99, !noalias !632
  %i.gie = add nsw i64 %i.gid, %.4.i42.i186.i638  ; 2 uses
  %i.gif = lshr i64 %i.gie, 3
  %i.gig = getelementptr inbounds nuw i8, ptr %i.gic, i64 %i.gif
  %i.gih = load i8, ptr %i.gig, align 1, !tbaa !98, !noalias !632
  %i.gii = trunc i64 %i.gie to i8
  %i.gij = and i8 %i.gii, 7
  %i.gik = lshr i8 %i.gih, %i.gij
  %i.gil = trunc i8 %i.gik to i1
  br i1 %i.gil, label %bb.aef, label %bb.aem

bb.aeb:                                           ; preds = %.lr.ph44.i184.i636
  %i.gim = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !632
  %i.gin = getelementptr inbounds nuw i8, ptr %i.gim, i64 40
  %i.gio = load i32, ptr %i.gin, align 8, !tbaa !42, !noalias !632
  switch i32 %i.gio, label %bb.aee [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i646
    i32 28, label %bb.aec
    i32 38, label %bb.aed
  ]

bb.aec:                                           ; preds = %bb.aeb
  %i.gip = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i638), !noalias !632
  br i1 %i.gip, label %bb.aem, label %bb.aef

bb.aed:                                           ; preds = %bb.aeb
  %i.giq = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i638), !noalias !632
  br i1 %i.giq, label %bb.aem, label %bb.aef

bb.aee:                                           ; preds = %bb.aeb
  %i.gir = load i64, ptr %i.gdq, align 8, !tbaa !71, !noalias !632
  %i.gis = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !632
  %.not24.i195.i647 = icmp eq i64 %i.gir, %i.gis
  br i1 %.not24.i195.i647, label %bb.aem, label %bb.aef

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i646:  ; preds = %bb.aeb
  %i.git = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i638), !noalias !632
  br i1 %i.git, label %bb.aem, label %bb.aef

bb.aef:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i646, %bb.aee, %bb.aed, %bb.aec, %bb.aea
  %i.giu = getelementptr inbounds [8 x i8], ptr %i.gcn, i64 %.4.i42.i186.i638 ; 2 uses
  %i.giv = load i64, ptr %i.giu, align 8, !tbaa !130, !noalias !632 ; 4 uses
  %i.giw = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !632 ; 2 uses
  %.not.i29.i191.i643 = icmp eq ptr %i.giw, null
  br i1 %.not.i29.i191.i643, label %bb.aeh, label %bb.aeg

bb.aeg:                                           ; preds = %bb.aef
  %i.gix = load i64, ptr %i.gdr, align 8, !tbaa !99, !noalias !632
  %i.giy = add nsw i64 %i.gix, %i.giv             ; 2 uses
  %i.giz = lshr i64 %i.giy, 3
  %i.gja = getelementptr inbounds nuw i8, ptr %i.giw, i64 %i.giz
  %i.gjb = load i8, ptr %i.gja, align 1, !tbaa !98, !noalias !632
  %i.gjc = trunc i64 %i.giy to i8
  %i.gjd = and i8 %i.gjc, 7
  %i.gje = lshr i8 %i.gjb, %i.gjd
  %i.gjf = trunc i8 %i.gje to i1
  br i1 %i.gjf, label %bb.ael, label %bb.aem

bb.aeh:                                           ; preds = %bb.aef
  %i.gjg = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !632
  %i.gjh = getelementptr inbounds nuw i8, ptr %i.gjg, i64 40
  %i.gji = load i32, ptr %i.gjh, align 8, !tbaa !42, !noalias !632
  switch i32 %i.gji, label %bb.aek [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i644
    i32 28, label %bb.aei
    i32 38, label %bb.aej
  ]

bb.aei:                                           ; preds = %bb.aeh
  %i.gjj = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.giv), !noalias !632
  br i1 %i.gjj, label %bb.aem, label %bb.ael

bb.aej:                                           ; preds = %bb.aeh
  %i.gjk = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.giv), !noalias !632
  br i1 %i.gjk, label %bb.aem, label %bb.ael

bb.aek:                                           ; preds = %bb.aeh
  %i.gjl = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !632
  %i.gjm = load i64, ptr %i.gcg, align 8, !tbaa !62, !noalias !632
  %.not25.i193.i645 = icmp eq i64 %i.gjl, %i.gjm
  br i1 %.not25.i193.i645, label %bb.aem, label %bb.ael

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i644:  ; preds = %bb.aeh
  %i.gjn = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.giv), !noalias !632
  br i1 %i.gjn, label %bb.aem, label %bb.ael

bb.ael:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i644, %bb.aek, %bb.aej, %bb.aei, %bb.aeg
  %i.gjo = shl nsw i64 %.4.i42.i186.i638, 2
  %i.gjp = getelementptr inbounds i8, ptr %i.gcf, i64 %i.gjo
  %i.gjq = load i64, ptr %i.giu, align 8, !tbaa !130, !noalias !632
  %i.gjr = shl i64 %i.gjq, 2
  %i.gjs = getelementptr inbounds nuw i8, ptr %i.gce, i64 %i.gjr
  %i.gjt = load i32, ptr %i.gjs, align 1, !noalias !632
  store i32 %i.gjt, ptr %i.gjp, align 1, !noalias !632
  %i.gju = srem i64 %.4.i42.i186.i638, 8
  %i.gjv = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.gju
  %i.gjw = load i8, ptr %i.gjv, align 1, !tbaa !98, !noalias !632
  %i.gjx = sdiv i64 %.4.i42.i186.i638, 8
  %i.gjy = getelementptr inbounds i8, ptr %.0.i.i.i153.i605, i64 %i.gjx ; 2 uses
  %i.gjz = load i8, ptr %i.gjy, align 1, !tbaa !98, !noalias !632
  %i.gka = or i8 %i.gjz, %i.gjw
  store i8 %i.gka, ptr %i.gjy, align 1, !tbaa !98, !noalias !632
  %i.gkb = add nsw i64 %.385.i41.i187.i639, 1
  br label %bb.aen

bb.aem:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i644, %bb.aek, %bb.aej, %bb.aei, %bb.aeg, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i646, %bb.aee, %bb.aed, %bb.aec, %bb.aea
  %i.gkc = shl nsw i64 %.4.i42.i186.i638, 2
  %i.gkd = getelementptr inbounds i8, ptr %i.gcf, i64 %i.gkc
  store i32 0, ptr %i.gkd, align 1, !noalias !632
  br label %bb.aen

bb.aen:                                           ; preds = %bb.aem, %bb.ael
  %.486.i.i189.i641 = phi i64 [ %i.gkb, %bb.ael ], [ %.385.i41.i187.i639, %bb.aem ] ; 2 uses
  %i.gke = add nsw i64 %.4.i42.i186.i638, 1       ; 2 uses
  %i.gkf = add nuw nsw i64 %.0.i43.i185.i637, 1   ; 2 uses
  %exitcond65.not.i190.i642 = icmp eq i64 %i.gkf, %i.gia
  br i1 %exitcond65.not.i190.i642, label %.loopexit.i167.i619, label %.lr.ph44.i184.i636, !llvm.loop !638

.loopexit.sink.split.i164.i616:                   ; preds = %bb.adz, %bb.adh
  %.sink86.i165.i617 = phi i64 [ %i.gew, %bb.adh ], [ %i.gia, %bb.adz ] ; 2 uses
  %.587.i.ph.i166.i618 = phi i64 [ %i.gdy, %bb.adh ], [ %.082.i53.i157.i609, %bb.adz ]
  %i.gkg = shl nsw i64 %.081.i54.i156.i608, 2
  %i.gkh = getelementptr inbounds i8, ptr %i.gcf, i64 %i.gkg
  %i.gki = shl nsw i64 %.sink86.i165.i617, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.gkh, i8 0, i64 %i.gki, i1 false), !noalias !632
  %i.gkj = add nsw i64 %.sink86.i165.i617, %.081.i54.i156.i608
  br label %.loopexit.i167.i619

.loopexit.i167.i619.loopexit3191.unr-lcssa:       ; preds = %.lr.ph39.i178.i630
  %i.gkk = and i16 %.sroa.0.0.extract.trunc.i.i158.i610, 1
  %lcmp.mod3481.not = icmp eq i16 %i.gkk, 0
  br i1 %lcmp.mod3481.not, label %.loopexit.i167.i619, label %.lr.ph39.i178.i630.epil.preheader

.lr.ph39.i178.i630.epil.preheader:                ; preds = %.loopexit.i167.i619.loopexit3191.unr-lcssa, %.lr.ph39.i178.i630.preheader
  %.1.i37.i180.i632.epil.init = phi i64 [ %.081.i54.i156.i608, %.lr.ph39.i178.i630.preheader ], [ %i.geu, %.loopexit.i167.i619.loopexit3191.unr-lcssa ] ; 3 uses
  %lcmp.mod3483 = trunc i32 %i.gds to i1
  call void @llvm.assume(i1 %lcmp.mod3483)
  %i.gkl = shl nsw i64 %.1.i37.i180.i632.epil.init, 2
  %i.gkm = getelementptr inbounds i8, ptr %i.gcf, i64 %i.gkl
  %i.gkn = getelementptr inbounds [8 x i8], ptr %i.gcn, i64 %.1.i37.i180.i632.epil.init
  %i.gko = load i64, ptr %i.gkn, align 8, !tbaa !130, !noalias !632
  %i.gkp = shl i64 %i.gko, 2
  %i.gkq = getelementptr inbounds nuw i8, ptr %i.gce, i64 %i.gkp
  %i.gkr = load i32, ptr %i.gkq, align 1, !noalias !632
  store i32 %i.gkr, ptr %i.gkm, align 1, !noalias !632
  %i.gks = add nsw i64 %.1.i37.i180.i632.epil.init, 1
  br label %.loopexit.i167.i619

.loopexit.i167.i619:                              ; preds = %bb.adp, %.lr.ph39.i178.i630.epil.preheader, %.loopexit.i167.i619.loopexit3191.unr-lcssa, %bb.aen, %bb.ady, %.loopexit.sink.split.i164.i616, %.preheader27.i183.i635, %.preheader.i196.i648, %.preheader30.i170.i622, %bb.adg
  %.587.i.i168.i620 = phi i64 [ %.587.i.ph.i166.i618, %.loopexit.sink.split.i164.i616 ], [ %i.gdy, %bb.adg ], [ %.486.i.i189.i641, %bb.aen ], [ %i.gdy, %.lr.ph39.i178.i630.epil.preheader ], [ %i.gdy, %.preheader30.i170.i622 ], [ %.082.i53.i157.i609, %.preheader.i196.i648 ], [ %.082.i53.i157.i609, %.preheader27.i183.i635 ], [ %.284.i.i202.i654, %bb.ady ], [ %i.gdy, %.loopexit.i167.i619.loopexit3191.unr-lcssa ], [ %i.gdy, %bb.adp ] ; 2 uses
  %.5.i.i169.i621 = phi i64 [ %i.gkj, %.loopexit.sink.split.i164.i616 ], [ %.081.i54.i156.i608, %bb.adg ], [ %i.gke, %bb.aen ], [ %i.gks, %.lr.ph39.i178.i630.epil.preheader ], [ %.081.i54.i156.i608, %.preheader30.i170.i622 ], [ %.081.i54.i156.i608, %.preheader.i196.i648 ], [ %.081.i54.i156.i608, %.preheader27.i183.i635 ], [ %i.ghx, %bb.ady ], [ %i.geu, %.loopexit.i167.i619.loopexit3191.unr-lcssa ], [ %i.ggg, %bb.adp ] ; 2 uses
  %i.gkt = icmp slt i64 %.5.i.i169.i621, %i.gch
  br i1 %i.gkt, label %bb.ade, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !639

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i167.i619, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i604
  %.082.i.lcssa.i154.i606 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i604 ], [ %.587.i.i168.i620, %.loopexit.i167.i619 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24, !noalias !632
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i600:                                 ; preds = %.lr.ph.i148.i600, %.lr.ph.i148.i600.preheader.new
  %.0.i1833.i149.i601 = phi i64 [ 0, %.lr.ph.i148.i600.preheader.new ], [ %i.glj, %.lr.ph.i148.i600 ] ; 4 uses
  %niter3479 = phi i64 [ 0, %.lr.ph.i148.i600.preheader.new ], [ %niter3479.next.1, %.lr.ph.i148.i600 ]
  %i.gku = shl nuw nsw i64 %.0.i1833.i149.i601, 2
  %i.gkv = getelementptr inbounds nuw i8, ptr %i.gcf, i64 %i.gku
  %i.gkw = getelementptr inbounds nuw [8 x i8], ptr %i.gcn, i64 %.0.i1833.i149.i601
  %i.gkx = load i64, ptr %i.gkw, align 8, !tbaa !130, !noalias !632
  %i.gky = shl i64 %i.gkx, 2
  %i.gkz = getelementptr inbounds nuw i8, ptr %i.gce, i64 %i.gky
  %i.gla = load i32, ptr %i.gkz, align 1, !noalias !632
  store i32 %i.gla, ptr %i.gkv, align 1, !noalias !632
  %i.glb = or disjoint i64 %.0.i1833.i149.i601, 1 ; 2 uses
  %i.glc = shl nuw nsw i64 %i.glb, 2
  %i.gld = getelementptr inbounds nuw i8, ptr %i.gcf, i64 %i.glc
  %i.gle = getelementptr inbounds nuw [8 x i8], ptr %i.gcn, i64 %i.glb
  %i.glf = load i64, ptr %i.gle, align 8, !tbaa !130, !noalias !632
  %i.glg = shl i64 %i.glf, 2
  %i.glh = getelementptr inbounds nuw i8, ptr %i.gce, i64 %i.glg
  %i.gli = load i32, ptr %i.glh, align 1, !noalias !632
  store i32 %i.gli, ptr %i.gld, align 1, !noalias !632
  %i.glj = add nuw nsw i64 %.0.i1833.i149.i601, 2 ; 2 uses
  %niter3479.next.1 = add nuw nsw i64 %niter3479, 2 ; 2 uses
  %niter3479.ncmp.1 = icmp eq i64 %niter3479.next.1, %unroll_iter3478
  br i1 %niter3479.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, label %.lr.ph.i148.i600, !llvm.loop !640

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i148.i600
  %lcmp.mod3476.not = icmp eq i64 %xtraiter3475, 0
  br i1 %lcmp.mod3476.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i148.i600.epil.preheader

.lr.ph.i148.i600.epil.preheader:                  ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.lr.ph.i148.i600.preheader
  %.0.i1833.i149.i601.epil.init = phi i64 [ 0, %.lr.ph.i148.i600.preheader ], [ %i.glj, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3477 = trunc i64 %i.gch to i1
  call void @llvm.assume(i1 %lcmp.mod3477)
  %i.glk = shl nuw nsw i64 %.0.i1833.i149.i601.epil.init, 2
  %i.gll = getelementptr inbounds nuw i8, ptr %i.gcf, i64 %i.glk
  %i.glm = getelementptr inbounds nuw [8 x i8], ptr %i.gcn, i64 %.0.i1833.i149.i601.epil.init
  %i.gln = load i64, ptr %i.glm, align 8, !tbaa !130, !noalias !632
  %i.glo = shl i64 %i.gln, 2
  %i.glp = getelementptr inbounds nuw i8, ptr %i.gce, i64 %i.glo
  %i.glq = load i32, ptr %i.glp, align 1, !noalias !632
  store i32 %i.glq, ptr %i.gll, align 1, !noalias !632
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3204.unr-lcssa: ; preds = %.lr.ph.i.i539
  %lcmp.mod3465.not = icmp eq i64 %xtraiter3464, 0
  br i1 %lcmp.mod3465.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i.i539.epil.preheader

.lr.ph.i.i539.epil.preheader:                     ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3204.unr-lcssa, %.lr.ph.i.i539.preheader
  %.0.i1833.i.i540.epil.init = phi i64 [ 0, %.lr.ph.i.i539.preheader ], [ %i.fhz, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3204.unr-lcssa ] ; 2 uses
  %lcmp.mod3466 = trunc i64 %i.eyn to i1
  call void @llvm.assume(i1 %lcmp.mod3466)
  %i.glr = shl nuw nsw i64 %.0.i1833.i.i540.epil.init, 2
  %i.gls = getelementptr inbounds nuw i8, ptr %i.eyl, i64 %i.glr
  %i.glt = getelementptr inbounds nuw i8, ptr %i.eyt, i64 %.0.i1833.i.i540.epil.init
  %i.glu = load i8, ptr %i.glt, align 1, !tbaa !98, !noalias !605
  %i.glv = zext i8 %i.glu to i64
  %i.glw = shl nuw nsw i64 %i.glv, 2
  %i.glx = getelementptr inbounds nuw i8, ptr %i.eyk, i64 %i.glw
  %i.gly = load i32, ptr %i.glx, align 1, !noalias !605
  store i32 %i.gly, ptr %i.gls, align 1, !noalias !605
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3212.unr-lcssa: ; preds = %.lr.ph.i24.i478
  %lcmp.mod3454.not = icmp eq i64 %xtraiter3453, 0
  br i1 %lcmp.mod3454.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i24.i478.epil.preheader

.lr.ph.i24.i478.epil.preheader:                   ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3212.unr-lcssa, %.lr.ph.i24.i478.preheader
  %.0.i1833.i25.i479.epil.init = phi i64 [ 0, %.lr.ph.i24.i478.preheader ], [ %i.frx, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3212.unr-lcssa ] ; 2 uses
  %lcmp.mod3455 = trunc i64 %i.fil to i1
  call void @llvm.assume(i1 %lcmp.mod3455)
  %i.glz = shl nuw nsw i64 %.0.i1833.i25.i479.epil.init, 2
  %i.gma = getelementptr inbounds nuw i8, ptr %i.fij, i64 %i.glz
  %i.gmb = getelementptr inbounds nuw [2 x i8], ptr %i.fir, i64 %.0.i1833.i25.i479.epil.init
  %i.gmc = load i16, ptr %i.gmb, align 2, !tbaa !269, !noalias !614
  %i.gmd = zext i16 %i.gmc to i64
  %i.gme = shl nuw nsw i64 %i.gmd, 2
  %i.gmf = getelementptr inbounds nuw i8, ptr %i.fii, i64 %i.gme
  %i.gmg = load i32, ptr %i.gmf, align 1, !noalias !614
  store i32 %i.gmg, ptr %i.gma, align 1, !noalias !614
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3220.unr-lcssa: ; preds = %.lr.ph.i86.i417
  %lcmp.mod3443.not = icmp eq i64 %xtraiter3442, 0
  br i1 %lcmp.mod3443.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i86.i417.epil.preheader

.lr.ph.i86.i417.epil.preheader:                   ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3220.unr-lcssa, %.lr.ph.i86.i417.preheader
  %.0.i1833.i87.i418.epil.init = phi i64 [ 0, %.lr.ph.i86.i417.preheader ], [ %i.gbv, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3220.unr-lcssa ] ; 2 uses
  %lcmp.mod3444 = trunc i64 %i.fsj to i1
  call void @llvm.assume(i1 %lcmp.mod3444)
  %i.gmh = shl nuw nsw i64 %.0.i1833.i87.i418.epil.init, 2
  %i.gmi = getelementptr inbounds nuw i8, ptr %i.fsh, i64 %i.gmh
  %i.gmj = getelementptr inbounds nuw [4 x i8], ptr %i.fsp, i64 %.0.i1833.i87.i418.epil.init
  %i.gmk = load i32, ptr %i.gmj, align 4, !tbaa !3, !noalias !623
  %i.gml = shl i32 %i.gmk, 2
  %i.gmm = zext i32 %i.gml to i64
  %i.gmn = getelementptr inbounds nuw i8, ptr %i.fsg, i64 %i.gmm
  %i.gmo = load i32, ptr %i.gmn, align 1, !noalias !623
  store i32 %i.gmo, ptr %i.gmi, align 1, !noalias !623
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit: ; preds = %.lr.ph.i86.i417.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3220.unr-lcssa, %.lr.ph.i24.i478.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3212.unr-lcssa, %.lr.ph.i.i539.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3204.unr-lcssa, %.lr.ph.i148.i600.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.preheader32.i.i538, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i22.i477, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i84.i415, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i146.i599, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i
  %.0.i147.sink.i416 = phi i64 [ %i.fil, %.lr.ph.i24.i478.epil.preheader ], [ %i.eyn, %.lr.ph.i.i539.epil.preheader ], [ %i.gch, %.lr.ph.i148.i600.epil.preheader ], [ %.082.i.lcssa.i.i545, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.eyn, %.preheader32.i.i538 ], [ %.082.i.lcssa.i30.i484, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.fil, %.preheader32.i22.i477 ], [ %.082.i.lcssa.i92.i423, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.fsj, %.preheader32.i84.i415 ], [ %.082.i.lcssa.i154.i606, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi32EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.gch, %.preheader32.i146.i599 ], [ %i.gch, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ], [ %i.eyn, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3204.unr-lcssa ], [ %i.fil, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3212.unr-lcssa ], [ %i.fsj, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3220.unr-lcssa ], [ %i.fsj, %.lr.ph.i86.i417.epil.preheader ]
  %i.gmp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.gmq = load i64, ptr %i.gmp, align 8, !tbaa !178, !noalias !601
  %i.gmr = sub nsw i64 %i.gmq, %.0.i147.sink.i416
  %i.gms = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store atomic i64 %i.gmr, ptr %i.gms seq_cst, align 8, !noalias !601
  store ptr null, ptr %0, align 8, !tbaa !113, !alias.scope !601
  br label %.critedge69

bb.aeo:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit83
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.gmt = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !641 ; 2 uses
  %i.gmu = load ptr, ptr %i.gmt, align 8, !tbaa !90, !noalias !641
  %i.gmv = getelementptr inbounds nuw i8, ptr %i.gmu, i64 64
  %i.gmw = load ptr, ptr %i.gmv, align 8, !noalias !641
  %i.gmx = call noundef i32 %i.gmw(ptr noundef nonnull align 8 dereferenceable(72) %i.gmt), !noalias !641, !inline_history !644
  %i.gmy = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !641
  %.not.i.i144.i842 = icmp ne i64 %i.gmy, 0
  %i.gmz = load ptr, ptr %i.v, align 8, !noalias !641
  %i.gna = icmp ne ptr %i.gmz, null
  %i.gnb = select i1 %.not.i.i144.i842, i1 %i.gna, i1 false ; 4 uses
  switch i32 %i.gmx, label %bb.aji [
    i32 1, label %bb.aep
    i32 2, label %bb.age
    i32 4, label %bb.aht
  ]

bb.aep:                                           ; preds = %bb.aeo
  br i1 %i.gnb, label %bb.aer, label %bb.aeq

bb.aeq:                                           ; preds = %bb.aep
  %i.gnc = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.gnd = load i64, ptr %i.gnc, align 8, !tbaa !71, !noalias !645
  %.not.i19.i.i782 = icmp ne i64 %i.gnd, 0
  %i.gne = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.gnf = load ptr, ptr %i.gne, align 8, !noalias !645
  %i.gng = icmp ne ptr %i.gnf, null
  %i.gnh = select i1 %.not.i19.i.i782, i1 %i.gng, i1 false
  br label %bb.aer

bb.aer:                                           ; preds = %bb.aeq, %bb.aep
  %i.gni = phi i1 [ true, %bb.aep ], [ %i.gnh, %bb.aeq ]
  %i.gnj = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !645
  %i.gnk = extractvalue { i32, ptr } %i.gnj, 1    ; 9 uses
  %i.gnl = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !645 ; 13 uses
  %i.gnm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.gnn = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !645 ; 11 uses
  %i.gno = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.gnp = load i64, ptr %i.gno, align 8, !tbaa !99, !noalias !645
  %i.gnq = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.gnr = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.gns = load ptr, ptr %i.gnr, align 8, !tbaa !66, !noalias !645
  %i.gnt = getelementptr inbounds i8, ptr %i.gns, i64 %i.gnp ; 9 uses
  br i1 %i.gni, label %bb.aes, label %.preheader32.i.i783

.preheader32.i.i783:                              ; preds = %bb.aer
  %i.gnu = icmp sgt i64 %i.gnn, 0
  br i1 %i.gnu, label %.lr.ph.i.i784.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i784.preheader:                          ; preds = %.preheader32.i.i783
  %xtraiter3420 = and i64 %i.gnn, 1
  %i.gnv = icmp eq i64 %i.gnn, 1
  br i1 %i.gnv, label %.lr.ph.i.i784.epil.preheader, label %.lr.ph.i.i784.preheader.new

.lr.ph.i.i784.preheader.new:                      ; preds = %.lr.ph.i.i784.preheader
  %unroll_iter3423 = and i64 %i.gnn, 9223372036854775806
  br label %.lr.ph.i.i784

bb.aes:                                           ; preds = %bb.aer
  %i.gnw = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.gnx = load ptr, ptr %i.gnw, align 8, !tbaa !171, !noalias !645
  %i.gny = load ptr, ptr %i.gnx, align 8, !tbaa !306, !noalias !645 ; 4 uses
  %.not.i.i.i.i787 = icmp eq ptr %i.gny, null
  br i1 %.not.i.i.i.i787, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i788, label %bb.aet

bb.aet:                                           ; preds = %bb.aes
  %i.gnz = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.goa = load i64, ptr %i.gnz, align 8, !tbaa !438, !noalias !645
  %i.gob = getelementptr inbounds nuw i8, ptr %i.gny, i64 9
  %i.goc = load i8, ptr %i.gob, align 1, !tbaa !439, !range !127, !noalias !645, !noundef !128
  %i.god = trunc nuw i8 %i.goc to i1
  %i.goe = getelementptr inbounds nuw i8, ptr %i.gny, i64 8
  %i.gof = load i8, ptr %i.goe, align 8, !range !127, !noalias !645
  %i.gog = trunc nuw i8 %i.gof to i1
  %i.goh = select i1 %i.god, i1 %i.gog, i1 false, !prof !117
  %i.goi = getelementptr inbounds nuw i8, ptr %i.gny, i64 16
  %i.goj = load ptr, ptr %i.goi, align 8, !noalias !645
  %i.gok = select i1 %i.goh, ptr %i.goj, ptr null, !prof !117
  %i.gol = getelementptr inbounds i8, ptr %i.gok, i64 %i.goa
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i788

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i788: ; preds = %bb.aet, %bb.aes
  %.0.i.i.i.i789 = phi ptr [ %i.gol, %bb.aet ], [ null, %bb.aes ] ; 5 uses
  %i.gom = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.gon = load i64, ptr %i.gom, align 8, !tbaa !178, !noalias !645 ; 2 uses
  %i.goo = ashr i64 %i.gon, 3
  %i.gop = and i64 %i.gon, 7
  %i.goq = icmp ne i64 %i.gop, 0
  %i.gor = zext i1 %i.goq to i64
  %i.gos = add nsw i64 %i.goo, %i.gor
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i.i789, i8 0, i64 %i.gos, i1 false), !noalias !645
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24, !noalias !645
  %i.got = load ptr, ptr %i.gnq, align 8, !tbaa !66, !noalias !645
  %i.gou = load i64, ptr %i.gno, align 8, !tbaa !99, !noalias !645
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %i.got, i64 noundef %i.gou, i64 noundef %i.gnn), !noalias !645
  %i.gov = icmp sgt i64 %i.gnn, 0
  br i1 %i.gov, label %.lr.ph55.i.i791, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i.i791:                                  ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i788
  %i.gow = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.gox = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.aeu

bb.aeu:                                           ; preds = %.loopexit.i.i803, %.lr.ph55.i.i791
  %.081.i54.i.i792 = phi i64 [ 0, %.lr.ph55.i.i791 ], [ %.5.i.i.i805, %.loopexit.i.i803 ] ; 12 uses
  %.082.i53.i.i793 = phi i64 [ 0, %.lr.ph55.i.i791 ], [ %.587.i.i.i804, %.loopexit.i.i803 ] ; 6 uses
  %i.goy = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %19), !noalias !645 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i.i794 = trunc i32 %i.goy to i16 ; 10 uses
  %i.goz = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !645
  %.not.i20.i.i795 = icmp ne i64 %i.goz, 0
  %i.gpa = load ptr, ptr %i.v, align 8, !noalias !645
end_hunk_13
begin_hunk_14_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  br i1 %i.gtk, label %.preheader27.i.i819, label %.loopexit.sink.split.i.i800

.preheader27.i.i819:                              ; preds = %bb.afp
  %i.gtm = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i794, 0
  br i1 %i.gtm, label %.lr.ph44.i.i820, label %.loopexit.i.i803

.lr.ph44.i.i820:                                  ; preds = %.preheader27.i.i819, %bb.agd
  %.0.i43.i.i821 = phi i64 [ %i.gvs, %bb.agd ], [ 0, %.preheader27.i.i819 ]
  %.4.i42.i.i822 = phi i64 [ %i.gvr, %bb.agd ], [ %.081.i54.i.i792, %.preheader27.i.i819 ] ; 10 uses
  %.385.i41.i.i823 = phi i64 [ %.486.i.i.i825, %bb.agd ], [ %.082.i53.i.i793, %.preheader27.i.i819 ] ; 2 uses
  %i.gtn = load ptr, ptr %i.gnq, align 8, !tbaa !66, !noalias !645 ; 2 uses
  %.not.i26.i.i824 = icmp eq ptr %i.gtn, null
  br i1 %.not.i26.i.i824, label %bb.afr, label %bb.afq

bb.afq:                                           ; preds = %.lr.ph44.i.i820
  %i.gto = load i64, ptr %i.gno, align 8, !tbaa !99, !noalias !645
  %i.gtp = add nsw i64 %i.gto, %.4.i42.i.i822     ; 2 uses
  %i.gtq = lshr i64 %i.gtp, 3
  %i.gtr = getelementptr inbounds nuw i8, ptr %i.gtn, i64 %i.gtq
  %i.gts = load i8, ptr %i.gtr, align 1, !tbaa !98, !noalias !645
  %i.gtt = trunc i64 %i.gtp to i8
  %i.gtu = and i8 %i.gtt, 7
  %i.gtv = lshr i8 %i.gts, %i.gtu
  %i.gtw = trunc i8 %i.gtv to i1
  br i1 %i.gtw, label %bb.afv, label %bb.agc

bb.afr:                                           ; preds = %.lr.ph44.i.i820
  %i.gtx = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !645
  %i.gty = getelementptr inbounds nuw i8, ptr %i.gtx, i64 40
  %i.gtz = load i32, ptr %i.gty, align 8, !tbaa !42, !noalias !645
  switch i32 %i.gtz, label %bb.afu [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i830
    i32 28, label %bb.afs
    i32 38, label %bb.aft
  ]

bb.afs:                                           ; preds = %bb.afr
  %i.gua = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i822), !noalias !645
  br i1 %i.gua, label %bb.agc, label %bb.afv

bb.aft:                                           ; preds = %bb.afr
  %i.gub = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i822), !noalias !645
  br i1 %i.gub, label %bb.agc, label %bb.afv

bb.afu:                                           ; preds = %bb.afr
  %i.guc = load i64, ptr %i.gow, align 8, !tbaa !71, !noalias !645
  %i.gud = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !645
  %.not24.i.i831 = icmp eq i64 %i.guc, %i.gud
  br i1 %.not24.i.i831, label %bb.agc, label %bb.afv

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i830:     ; preds = %bb.afr
  %i.gue = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i822), !noalias !645
  br i1 %i.gue, label %bb.agc, label %bb.afv

bb.afv:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i830, %bb.afu, %bb.aft, %bb.afs, %bb.afq
  %i.guf = getelementptr inbounds i8, ptr %i.gnt, i64 %.4.i42.i.i822 ; 2 uses
  %i.gug = load i8, ptr %i.guf, align 1, !tbaa !98, !noalias !645
  %i.guh = zext i8 %i.gug to i64                  ; 4 uses
  %i.gui = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !645 ; 2 uses
  %.not.i29.i.i827 = icmp eq ptr %i.gui, null
  br i1 %.not.i29.i.i827, label %bb.afx, label %bb.afw

bb.afw:                                           ; preds = %bb.afv
  %i.guj = load i64, ptr %i.gox, align 8, !tbaa !99, !noalias !645
  %i.guk = add nsw i64 %i.guj, %i.guh             ; 2 uses
  %i.gul = lshr i64 %i.guk, 3
  %i.gum = getelementptr inbounds nuw i8, ptr %i.gui, i64 %i.gul
  %i.gun = load i8, ptr %i.gum, align 1, !tbaa !98, !noalias !645
  %i.guo = trunc i64 %i.guk to i8
  %i.gup = and i8 %i.guo, 7
  %i.guq = lshr i8 %i.gun, %i.gup
  %i.gur = trunc i8 %i.guq to i1
  br i1 %i.gur, label %bb.agb, label %bb.agc

bb.afx:                                           ; preds = %bb.afv
  %i.gus = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !645
  %i.gut = getelementptr inbounds nuw i8, ptr %i.gus, i64 40
  %i.guu = load i32, ptr %i.gut, align 8, !tbaa !42, !noalias !645
  switch i32 %i.guu, label %bb.aga [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i828
    i32 28, label %bb.afy
    i32 38, label %bb.afz
  ]

bb.afy:                                           ; preds = %bb.afx
  %i.guv = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.guh), !noalias !645
  br i1 %i.guv, label %bb.agc, label %bb.agb

bb.afz:                                           ; preds = %bb.afx
  %i.guw = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.guh), !noalias !645
  br i1 %i.guw, label %bb.agc, label %bb.agb

bb.aga:                                           ; preds = %bb.afx
  %i.gux = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !645
  %i.guy = load i64, ptr %i.gnm, align 8, !tbaa !62, !noalias !645
  %.not25.i.i829 = icmp eq i64 %i.gux, %i.guy
  br i1 %.not25.i.i829, label %bb.agc, label %bb.agb

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i828:     ; preds = %bb.afx
  %i.guz = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.guh), !noalias !645
  br i1 %i.guz, label %bb.agc, label %bb.agb

bb.agb:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i828, %bb.aga, %bb.afz, %bb.afy, %bb.afw
  %i.gva = shl nsw i64 %.4.i42.i.i822, 3
  %i.gvb = getelementptr inbounds i8, ptr %i.gnl, i64 %i.gva
  %i.gvc = load i8, ptr %i.guf, align 1, !tbaa !98, !noalias !645
  %i.gvd = zext i8 %i.gvc to i64
  %i.gve = shl nuw nsw i64 %i.gvd, 3
  %i.gvf = getelementptr inbounds nuw i8, ptr %i.gnk, i64 %i.gve
  %i.gvg = load i64, ptr %i.gvf, align 1, !noalias !645
  store i64 %i.gvg, ptr %i.gvb, align 1, !noalias !645
  %i.gvh = srem i64 %.4.i42.i.i822, 8
  %i.gvi = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.gvh
  %i.gvj = load i8, ptr %i.gvi, align 1, !tbaa !98, !noalias !645
  %i.gvk = sdiv i64 %.4.i42.i.i822, 8
  %i.gvl = getelementptr inbounds i8, ptr %.0.i.i.i.i789, i64 %i.gvk ; 2 uses
  %i.gvm = load i8, ptr %i.gvl, align 1, !tbaa !98, !noalias !645
  %i.gvn = or i8 %i.gvm, %i.gvj
  store i8 %i.gvn, ptr %i.gvl, align 1, !tbaa !98, !noalias !645
  %i.gvo = add nsw i64 %.385.i41.i.i823, 1
  br label %bb.agd

bb.agc:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i828, %bb.aga, %bb.afz, %bb.afy, %bb.afw, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i830, %bb.afu, %bb.aft, %bb.afs, %bb.afq
  %i.gvp = shl nsw i64 %.4.i42.i.i822, 3
  %i.gvq = getelementptr inbounds i8, ptr %i.gnl, i64 %i.gvp
  store i64 0, ptr %i.gvq, align 1, !noalias !645
  br label %bb.agd

bb.agd:                                           ; preds = %bb.agc, %bb.agb
  %.486.i.i.i825 = phi i64 [ %i.gvo, %bb.agb ], [ %.385.i41.i.i823, %bb.agc ] ; 2 uses
  %i.gvr = add nsw i64 %.4.i42.i.i822, 1          ; 2 uses
  %i.gvs = add nuw nsw i64 %.0.i43.i.i821, 1      ; 2 uses
  %exitcond65.not.i.i826 = icmp eq i64 %i.gvs, %i.gtl
  br i1 %exitcond65.not.i.i826, label %.loopexit.i.i803, label %.lr.ph44.i.i820, !llvm.loop !651

.loopexit.sink.split.i.i800:                      ; preds = %bb.afp, %bb.aex
  %.sink86.i.i801 = phi i64 [ %i.gqe, %bb.aex ], [ %i.gtl, %bb.afp ] ; 2 uses
  %.587.i.ph.i.i802 = phi i64 [ %i.gpe, %bb.aex ], [ %.082.i53.i.i793, %bb.afp ]
  %i.gvt = shl nsw i64 %.081.i54.i.i792, 3
  %i.gvu = getelementptr inbounds i8, ptr %i.gnl, i64 %i.gvt
  %i.gvv = shl nsw i64 %.sink86.i.i801, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.gvu, i8 0, i64 %i.gvv, i1 false), !noalias !645
  %i.gvw = add nsw i64 %.sink86.i.i801, %.081.i54.i.i792
  br label %.loopexit.i.i803

.loopexit.i.i803.loopexit3229.unr-lcssa:          ; preds = %.lr.ph39.i.i814
  %i.gvx = and i16 %.sroa.0.0.extract.trunc.i.i.i794, 1
  %lcmp.mod3426.not = icmp eq i16 %i.gvx, 0
  br i1 %lcmp.mod3426.not, label %.loopexit.i.i803, label %.lr.ph39.i.i814.epil.preheader

.lr.ph39.i.i814.epil.preheader:                   ; preds = %.loopexit.i.i803.loopexit3229.unr-lcssa, %.lr.ph39.i.i814.preheader
  %.1.i37.i.i816.epil.init = phi i64 [ %.081.i54.i.i792, %.lr.ph39.i.i814.preheader ], [ %i.gqc, %.loopexit.i.i803.loopexit3229.unr-lcssa ] ; 3 uses
  %lcmp.mod3428 = trunc i32 %i.goy to i1
  call void @llvm.assume(i1 %lcmp.mod3428)
  %i.gvy = shl nsw i64 %.1.i37.i.i816.epil.init, 3
  %i.gvz = getelementptr inbounds i8, ptr %i.gnl, i64 %i.gvy
  %i.gwa = getelementptr inbounds i8, ptr %i.gnt, i64 %.1.i37.i.i816.epil.init
  %i.gwb = load i8, ptr %i.gwa, align 1, !tbaa !98, !noalias !645
  %i.gwc = zext i8 %i.gwb to i64
  %i.gwd = shl nuw nsw i64 %i.gwc, 3
  %i.gwe = getelementptr inbounds nuw i8, ptr %i.gnk, i64 %i.gwd
  %i.gwf = load i64, ptr %i.gwe, align 1, !noalias !645
  store i64 %i.gwf, ptr %i.gvz, align 1, !noalias !645
  %i.gwg = add nsw i64 %.1.i37.i.i816.epil.init, 1
  br label %.loopexit.i.i803

.loopexit.i.i803:                                 ; preds = %bb.aff, %.lr.ph39.i.i814.epil.preheader, %.loopexit.i.i803.loopexit3229.unr-lcssa, %bb.agd, %bb.afo, %.loopexit.sink.split.i.i800, %.preheader27.i.i819, %.preheader.i.i832, %.preheader30.i.i806, %bb.aew
  %.587.i.i.i804 = phi i64 [ %.587.i.ph.i.i802, %.loopexit.sink.split.i.i800 ], [ %i.gpe, %bb.aew ], [ %.486.i.i.i825, %bb.agd ], [ %i.gpe, %.lr.ph39.i.i814.epil.preheader ], [ %i.gpe, %.preheader30.i.i806 ], [ %.082.i53.i.i793, %.preheader.i.i832 ], [ %.082.i53.i.i793, %.preheader27.i.i819 ], [ %.284.i.i.i838, %bb.afo ], [ %i.gpe, %.loopexit.i.i803.loopexit3229.unr-lcssa ], [ %i.gpe, %bb.aff ] ; 2 uses
  %.5.i.i.i805 = phi i64 [ %i.gvw, %.loopexit.sink.split.i.i800 ], [ %.081.i54.i.i792, %bb.aew ], [ %i.gvr, %bb.agd ], [ %i.gwg, %.lr.ph39.i.i814.epil.preheader ], [ %.081.i54.i.i792, %.preheader30.i.i806 ], [ %.081.i54.i.i792, %.preheader.i.i832 ], [ %.081.i54.i.i792, %.preheader27.i.i819 ], [ %i.gti, %bb.afo ], [ %i.gqc, %.loopexit.i.i803.loopexit3229.unr-lcssa ], [ %i.grp, %bb.aff ] ; 2 uses
  %i.gwh = icmp slt i64 %.5.i.i.i805, %i.gnn
  br i1 %i.gwh, label %bb.aeu, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !652

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i.i803, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i788
  %.082.i.lcssa.i.i790 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i788 ], [ %.587.i.i.i804, %.loopexit.i.i803 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24, !noalias !645
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i784:                                    ; preds = %.lr.ph.i.i784, %.lr.ph.i.i784.preheader.new
  %.0.i1833.i.i785 = phi i64 [ 0, %.lr.ph.i.i784.preheader.new ], [ %i.gwz, %.lr.ph.i.i784 ] ; 4 uses
  %niter3424 = phi i64 [ 0, %.lr.ph.i.i784.preheader.new ], [ %niter3424.next.1, %.lr.ph.i.i784 ]
  %i.gwi = shl nuw nsw i64 %.0.i1833.i.i785, 3
  %i.gwj = getelementptr inbounds nuw i8, ptr %i.gnl, i64 %i.gwi
  %i.gwk = getelementptr inbounds nuw i8, ptr %i.gnt, i64 %.0.i1833.i.i785
  %i.gwl = load i8, ptr %i.gwk, align 1, !tbaa !98, !noalias !645
  %i.gwm = zext i8 %i.gwl to i64
  %i.gwn = shl nuw nsw i64 %i.gwm, 3
  %i.gwo = getelementptr inbounds nuw i8, ptr %i.gnk, i64 %i.gwn
  %i.gwp = load i64, ptr %i.gwo, align 1, !noalias !645
  store i64 %i.gwp, ptr %i.gwj, align 1, !noalias !645
  %i.gwq = or disjoint i64 %.0.i1833.i.i785, 1    ; 2 uses
  %i.gwr = shl nuw nsw i64 %i.gwq, 3
  %i.gws = getelementptr inbounds nuw i8, ptr %i.gnl, i64 %i.gwr
  %i.gwt = getelementptr inbounds nuw i8, ptr %i.gnt, i64 %i.gwq
  %i.gwu = load i8, ptr %i.gwt, align 1, !tbaa !98, !noalias !645
  %i.gwv = zext i8 %i.gwu to i64
  %i.gww = shl nuw nsw i64 %i.gwv, 3
  %i.gwx = getelementptr inbounds nuw i8, ptr %i.gnk, i64 %i.gww
  %i.gwy = load i64, ptr %i.gwx, align 1, !noalias !645
  store i64 %i.gwy, ptr %i.gws, align 1, !noalias !645
  %i.gwz = add nuw nsw i64 %.0.i1833.i.i785, 2    ; 2 uses
  %niter3424.next.1 = add nuw nsw i64 %niter3424, 2 ; 2 uses
  %niter3424.ncmp.1 = icmp eq i64 %niter3424.next.1, %unroll_iter3423
  br i1 %niter3424.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3235.unr-lcssa, label %.lr.ph.i.i784, !llvm.loop !653

bb.age:                                           ; preds = %bb.aeo
  br i1 %i.gnb, label %bb.agg, label %bb.agf

bb.agf:                                           ; preds = %bb.age
  %i.gxa = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.gxb = load i64, ptr %i.gxa, align 8, !tbaa !71, !noalias !654
  %.not.i19.i21.i721 = icmp ne i64 %i.gxb, 0
  %i.gxc = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.gxd = load ptr, ptr %i.gxc, align 8, !noalias !654
  %i.gxe = icmp ne ptr %i.gxd, null
  %i.gxf = select i1 %.not.i19.i21.i721, i1 %i.gxe, i1 false
  br label %bb.agg

bb.agg:                                           ; preds = %bb.agf, %bb.age
  %i.gxg = phi i1 [ true, %bb.age ], [ %i.gxf, %bb.agf ]
  %i.gxh = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !654
  %i.gxi = extractvalue { i32, ptr } %i.gxh, 1    ; 9 uses
  %i.gxj = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !654 ; 13 uses
  %i.gxk = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.gxl = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !654 ; 11 uses
  %i.gxm = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.gxn = load i64, ptr %i.gxm, align 8, !tbaa !99, !noalias !654
  %i.gxo = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.gxp = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.gxq = load ptr, ptr %i.gxp, align 8, !tbaa !66, !noalias !654
  %i.gxr = getelementptr inbounds [2 x i8], ptr %i.gxq, i64 %i.gxn ; 9 uses
  br i1 %i.gxg, label %bb.agh, label %.preheader32.i22.i722

.preheader32.i22.i722:                            ; preds = %bb.agg
  %i.gxs = icmp sgt i64 %i.gxl, 0
  br i1 %i.gxs, label %.lr.ph.i24.i723.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i723.preheader:                        ; preds = %.preheader32.i22.i722
  %xtraiter3409 = and i64 %i.gxl, 1
  %i.gxt = icmp eq i64 %i.gxl, 1
  br i1 %i.gxt, label %.lr.ph.i24.i723.epil.preheader, label %.lr.ph.i24.i723.preheader.new

.lr.ph.i24.i723.preheader.new:                    ; preds = %.lr.ph.i24.i723.preheader
  %unroll_iter3412 = and i64 %i.gxl, 9223372036854775806
  br label %.lr.ph.i24.i723

bb.agh:                                           ; preds = %bb.agg
  %i.gxu = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.gxv = load ptr, ptr %i.gxu, align 8, !tbaa !171, !noalias !654
  %i.gxw = load ptr, ptr %i.gxv, align 8, !tbaa !306, !noalias !654 ; 4 uses
  %.not.i.i.i27.i726 = icmp eq ptr %i.gxw, null
  br i1 %.not.i.i.i27.i726, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i727, label %bb.agi

bb.agi:                                           ; preds = %bb.agh
  %i.gxx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.gxy = load i64, ptr %i.gxx, align 8, !tbaa !438, !noalias !654
  %i.gxz = getelementptr inbounds nuw i8, ptr %i.gxw, i64 9
  %i.gya = load i8, ptr %i.gxz, align 1, !tbaa !439, !range !127, !noalias !654, !noundef !128
  %i.gyb = trunc nuw i8 %i.gya to i1
  %i.gyc = getelementptr inbounds nuw i8, ptr %i.gxw, i64 8
  %i.gyd = load i8, ptr %i.gyc, align 8, !range !127, !noalias !654
  %i.gye = trunc nuw i8 %i.gyd to i1
  %i.gyf = select i1 %i.gyb, i1 %i.gye, i1 false, !prof !117
  %i.gyg = getelementptr inbounds nuw i8, ptr %i.gxw, i64 16
  %i.gyh = load ptr, ptr %i.gyg, align 8, !noalias !654
  %i.gyi = select i1 %i.gyf, ptr %i.gyh, ptr null, !prof !117
  %i.gyj = getelementptr inbounds i8, ptr %i.gyi, i64 %i.gxy
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i727

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i727: ; preds = %bb.agi, %bb.agh
  %.0.i.i.i29.i728 = phi ptr [ %i.gyj, %bb.agi ], [ null, %bb.agh ] ; 5 uses
  %i.gyk = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.gyl = load i64, ptr %i.gyk, align 8, !tbaa !178, !noalias !654 ; 2 uses
  %i.gym = ashr i64 %i.gyl, 3
  %i.gyn = and i64 %i.gyl, 7
  %i.gyo = icmp ne i64 %i.gyn, 0
  %i.gyp = zext i1 %i.gyo to i64
  %i.gyq = add nsw i64 %i.gym, %i.gyp
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i29.i728, i8 0, i64 %i.gyq, i1 false), !noalias !654
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24, !noalias !654
  %i.gyr = load ptr, ptr %i.gxo, align 8, !tbaa !66, !noalias !654
  %i.gys = load i64, ptr %i.gxm, align 8, !tbaa !99, !noalias !654
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef %i.gyr, i64 noundef %i.gys, i64 noundef %i.gxl), !noalias !654
  %i.gyt = icmp sgt i64 %i.gxl, 0
  br i1 %i.gyt, label %.lr.ph55.i31.i730, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i31.i730:                                ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i727
  %i.gyu = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.gyv = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.agj

bb.agj:                                           ; preds = %.loopexit.i43.i742, %.lr.ph55.i31.i730
  %.081.i54.i32.i731 = phi i64 [ 0, %.lr.ph55.i31.i730 ], [ %.5.i.i45.i744, %.loopexit.i43.i742 ] ; 12 uses
  %.082.i53.i33.i732 = phi i64 [ 0, %.lr.ph55.i31.i730 ], [ %.587.i.i44.i743, %.loopexit.i43.i742 ] ; 6 uses
  %i.gyw = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %18), !noalias !654 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i34.i733 = trunc i32 %i.gyw to i16 ; 10 uses
  %i.gyx = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !654
  %.not.i20.i35.i734 = icmp ne i64 %i.gyx, 0
  %i.gyy = load ptr, ptr %i.v, align 8, !noalias !654
  %i.gyz = icmp ne ptr %i.gyy, null
  %i.gza = select i1 %.not.i20.i35.i734, i1 %i.gyz, i1 false
  br i1 %i.gza, label %bb.agv, label %bb.agk

bb.agk:                                           ; preds = %bb.agj
  %.sroa.14.0.extract.shift.i.i36.i735 = lshr i32 %i.gyw, 16
  %.sroa.14.0.extract.trunc.i.i37.i736 = zext nneg i32 %.sroa.14.0.extract.shift.i.i36.i735 to i64
  %sext91.i.i38.i737 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i37.i736, 48
  %i.gzb = ashr exact i64 %sext91.i.i38.i737, 48
  %i.gzc = add nsw i64 %i.gzb, %.082.i53.i33.i732 ; 6 uses
  %i.gzd = ashr i32 %i.gyw, 16                    ; 2 uses
  %sext.i.i39.i738 = shl i32 %i.gyw, 16
  %i.gze = ashr exact i32 %sext.i.i39.i738, 16
  %i.gzf = icmp eq i32 %i.gzd, %i.gze
  br i1 %i.gzf, label %bb.agl, label %bb.agm

bb.agl:                                           ; preds = %bb.agk
  %i.gzg = sext i16 %.sroa.0.0.extract.trunc.i.i34.i733 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i29.i728, i64 noundef %.081.i54.i32.i731, i64 noundef %i.gzg, i1 noundef zeroext true), !noalias !654
  %i.gzh = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i733, 0
  br i1 %i.gzh, label %.lr.ph39.i54.i753.preheader, label %.loopexit.i43.i742

.lr.ph39.i54.i753.preheader:                      ; preds = %bb.agl
  %i.gzi = icmp eq i16 %.sroa.0.0.extract.trunc.i.i34.i733, 1
  br i1 %i.gzi, label %.lr.ph39.i54.i753.epil.preheader, label %.lr.ph39.i54.i753.preheader.new

.lr.ph39.i54.i753.preheader.new:                  ; preds = %.lr.ph39.i54.i753.preheader
  %unroll_iter3418 = and i64 %i.gzg, 32766
  br label %.lr.ph39.i54.i753

.lr.ph39.i54.i753:                                ; preds = %.lr.ph39.i54.i753, %.lr.ph39.i54.i753.preheader.new
  %.1.i37.i56.i755 = phi i64 [ %.081.i54.i32.i731, %.lr.ph39.i54.i753.preheader.new ], [ %i.haa, %.lr.ph39.i54.i753 ] ; 4 uses
  %niter3419 = phi i64 [ 0, %.lr.ph39.i54.i753.preheader.new ], [ %niter3419.next.1, %.lr.ph39.i54.i753 ]
  %i.gzj = shl nsw i64 %.1.i37.i56.i755, 3
  %i.gzk = getelementptr inbounds i8, ptr %i.gxj, i64 %i.gzj
  %i.gzl = getelementptr inbounds [2 x i8], ptr %i.gxr, i64 %.1.i37.i56.i755
  %i.gzm = load i16, ptr %i.gzl, align 2, !tbaa !269, !noalias !654
  %i.gzn = zext i16 %i.gzm to i64
  %i.gzo = shl nuw nsw i64 %i.gzn, 3
  %i.gzp = getelementptr inbounds nuw i8, ptr %i.gxi, i64 %i.gzo
  %i.gzq = load i64, ptr %i.gzp, align 1, !noalias !654
  store i64 %i.gzq, ptr %i.gzk, align 1, !noalias !654
  %i.gzr = add nsw i64 %.1.i37.i56.i755, 1        ; 2 uses
  %i.gzs = shl nsw i64 %i.gzr, 3
  %i.gzt = getelementptr inbounds i8, ptr %i.gxj, i64 %i.gzs
  %i.gzu = getelementptr inbounds [2 x i8], ptr %i.gxr, i64 %i.gzr
  %i.gzv = load i16, ptr %i.gzu, align 2, !tbaa !269, !noalias !654
  %i.gzw = zext i16 %i.gzv to i64
  %i.gzx = shl nuw nsw i64 %i.gzw, 3
  %i.gzy = getelementptr inbounds nuw i8, ptr %i.gxi, i64 %i.gzx
  %i.gzz = load i64, ptr %i.gzy, align 1, !noalias !654
  store i64 %i.gzz, ptr %i.gzt, align 1, !noalias !654
  %i.haa = add nsw i64 %.1.i37.i56.i755, 2        ; 3 uses
  %niter3419.next.1 = add i64 %niter3419, 2       ; 2 uses
  %niter3419.ncmp.1 = icmp eq i64 %niter3419.next.1, %unroll_iter3418
  br i1 %niter3419.ncmp.1, label %.loopexit.i43.i742.loopexit3237.unr-lcssa, label %.lr.ph39.i54.i753, !llvm.loop !657

bb.agm:                                           ; preds = %bb.agk
  %i.hab = icmp sgt i32 %i.gzd, 0
  %i.hac = sext i16 %.sroa.0.0.extract.trunc.i.i34.i733 to i64 ; 2 uses
  br i1 %i.hab, label %.preheader30.i46.i745, label %.loopexit.sink.split.i40.i739

.preheader30.i46.i745:                            ; preds = %bb.agm
  %i.had = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i733, 0
  br i1 %i.had, label %.lr.ph36.i47.i746, label %.loopexit.i43.i742

.lr.ph36.i47.i746:                                ; preds = %.preheader30.i46.i745, %bb.agu
  %.079.i35.i48.i747 = phi i64 [ %i.hbo, %bb.agu ], [ 0, %.preheader30.i46.i745 ]
  %.2.i34.i49.i748 = phi i64 [ %i.hbn, %bb.agu ], [ %.081.i54.i32.i731, %.preheader30.i46.i745 ] ; 10 uses
  %i.hae = load ptr, ptr %i.gxo, align 8, !tbaa !66, !noalias !654 ; 2 uses
  %.not.i21.i50.i749 = icmp eq ptr %i.hae, null
  br i1 %.not.i21.i50.i749, label %bb.ago, label %bb.agn

bb.agn:                                           ; preds = %.lr.ph36.i47.i746
  %i.haf = load i64, ptr %i.gxm, align 8, !tbaa !99, !noalias !654
  %i.hag = add nsw i64 %i.haf, %.2.i34.i49.i748   ; 2 uses
  %i.hah = lshr i64 %i.hag, 3
  %i.hai = getelementptr inbounds nuw i8, ptr %i.hae, i64 %i.hah
  %i.haj = load i8, ptr %i.hai, align 1, !tbaa !98, !noalias !654
  %i.hak = trunc i64 %i.hag to i8
  %i.hal = and i8 %i.hak, 7
  %i.ham = lshr i8 %i.haj, %i.hal
  %i.han = trunc i8 %i.ham to i1
  br i1 %i.han, label %bb.ags, label %bb.agt

bb.ago:                                           ; preds = %.lr.ph36.i47.i746
  %i.hao = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !654
  %i.hap = getelementptr inbounds nuw i8, ptr %i.hao, i64 40
  %i.haq = load i32, ptr %i.hap, align 8, !tbaa !42, !noalias !654
  switch i32 %i.haq, label %bb.agr [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i52.i751
    i32 28, label %bb.agp
    i32 38, label %bb.agq
  ]

bb.agp:                                           ; preds = %bb.ago
  %i.har = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i49.i748), !noalias !654
  br i1 %i.har, label %bb.agt, label %bb.ags

bb.agq:                                           ; preds = %bb.ago
  %i.has = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i49.i748), !noalias !654
  br i1 %i.has, label %bb.agt, label %bb.ags

end_hunk_14
begin_hunk_15_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  br i1 %i.hdi, label %.preheader27.i59.i758, label %.loopexit.sink.split.i40.i739

.preheader27.i59.i758:                            ; preds = %bb.ahe
  %i.hdk = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i733, 0
  br i1 %i.hdk, label %.lr.ph44.i60.i759, label %.loopexit.i43.i742

.lr.ph44.i60.i759:                                ; preds = %.preheader27.i59.i758, %bb.ahs
  %.0.i43.i61.i760 = phi i64 [ %i.hfq, %bb.ahs ], [ 0, %.preheader27.i59.i758 ]
  %.4.i42.i62.i761 = phi i64 [ %i.hfp, %bb.ahs ], [ %.081.i54.i32.i731, %.preheader27.i59.i758 ] ; 10 uses
  %.385.i41.i63.i762 = phi i64 [ %.486.i.i65.i764, %bb.ahs ], [ %.082.i53.i33.i732, %.preheader27.i59.i758 ] ; 2 uses
  %i.hdl = load ptr, ptr %i.gxo, align 8, !tbaa !66, !noalias !654 ; 2 uses
  %.not.i26.i64.i763 = icmp eq ptr %i.hdl, null
  br i1 %.not.i26.i64.i763, label %bb.ahg, label %bb.ahf

bb.ahf:                                           ; preds = %.lr.ph44.i60.i759
  %i.hdm = load i64, ptr %i.gxm, align 8, !tbaa !99, !noalias !654
  %i.hdn = add nsw i64 %i.hdm, %.4.i42.i62.i761   ; 2 uses
  %i.hdo = lshr i64 %i.hdn, 3
  %i.hdp = getelementptr inbounds nuw i8, ptr %i.hdl, i64 %i.hdo
  %i.hdq = load i8, ptr %i.hdp, align 1, !tbaa !98, !noalias !654
  %i.hdr = trunc i64 %i.hdn to i8
  %i.hds = and i8 %i.hdr, 7
  %i.hdt = lshr i8 %i.hdq, %i.hds
  %i.hdu = trunc i8 %i.hdt to i1
  br i1 %i.hdu, label %bb.ahk, label %bb.ahr

bb.ahg:                                           ; preds = %.lr.ph44.i60.i759
  %i.hdv = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !654
  %i.hdw = getelementptr inbounds nuw i8, ptr %i.hdv, i64 40
  %i.hdx = load i32, ptr %i.hdw, align 8, !tbaa !42, !noalias !654
  switch i32 %i.hdx, label %bb.ahj [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i769
    i32 28, label %bb.ahh
    i32 38, label %bb.ahi
  ]

bb.ahh:                                           ; preds = %bb.ahg
  %i.hdy = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i761), !noalias !654
  br i1 %i.hdy, label %bb.ahr, label %bb.ahk

bb.ahi:                                           ; preds = %bb.ahg
  %i.hdz = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i761), !noalias !654
  br i1 %i.hdz, label %bb.ahr, label %bb.ahk

bb.ahj:                                           ; preds = %bb.ahg
  %i.hea = load i64, ptr %i.gyu, align 8, !tbaa !71, !noalias !654
  %i.heb = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !654
  %.not24.i71.i770 = icmp eq i64 %i.hea, %i.heb
  br i1 %.not24.i71.i770, label %bb.ahr, label %bb.ahk

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i769:   ; preds = %bb.ahg
  %i.hec = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i761), !noalias !654
  br i1 %i.hec, label %bb.ahr, label %bb.ahk

bb.ahk:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i769, %bb.ahj, %bb.ahi, %bb.ahh, %bb.ahf
  %i.hed = getelementptr inbounds [2 x i8], ptr %i.gxr, i64 %.4.i42.i62.i761 ; 2 uses
  %i.hee = load i16, ptr %i.hed, align 2, !tbaa !269, !noalias !654
  %i.hef = zext i16 %i.hee to i64                 ; 4 uses
  %i.heg = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !654 ; 2 uses
  %.not.i29.i67.i766 = icmp eq ptr %i.heg, null
  br i1 %.not.i29.i67.i766, label %bb.ahm, label %bb.ahl

bb.ahl:                                           ; preds = %bb.ahk
  %i.heh = load i64, ptr %i.gyv, align 8, !tbaa !99, !noalias !654
  %i.hei = add nsw i64 %i.heh, %i.hef             ; 2 uses
  %i.hej = lshr i64 %i.hei, 3
  %i.hek = getelementptr inbounds nuw i8, ptr %i.heg, i64 %i.hej
  %i.hel = load i8, ptr %i.hek, align 1, !tbaa !98, !noalias !654
  %i.hem = trunc i64 %i.hei to i8
  %i.hen = and i8 %i.hem, 7
  %i.heo = lshr i8 %i.hel, %i.hen
  %i.hep = trunc i8 %i.heo to i1
  br i1 %i.hep, label %bb.ahq, label %bb.ahr

bb.ahm:                                           ; preds = %bb.ahk
  %i.heq = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !654
  %i.her = getelementptr inbounds nuw i8, ptr %i.heq, i64 40
  %i.hes = load i32, ptr %i.her, align 8, !tbaa !42, !noalias !654
  switch i32 %i.hes, label %bb.ahp [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i767
    i32 28, label %bb.ahn
    i32 38, label %bb.aho
  ]

bb.ahn:                                           ; preds = %bb.ahm
  %i.het = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hef), !noalias !654
  br i1 %i.het, label %bb.ahr, label %bb.ahq

bb.aho:                                           ; preds = %bb.ahm
  %i.heu = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hef), !noalias !654
  br i1 %i.heu, label %bb.ahr, label %bb.ahq

bb.ahp:                                           ; preds = %bb.ahm
  %i.hev = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !654
  %i.hew = load i64, ptr %i.gxk, align 8, !tbaa !62, !noalias !654
  %.not25.i69.i768 = icmp eq i64 %i.hev, %i.hew
  br i1 %.not25.i69.i768, label %bb.ahr, label %bb.ahq

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i767:   ; preds = %bb.ahm
  %i.hex = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hef), !noalias !654
  br i1 %i.hex, label %bb.ahr, label %bb.ahq

bb.ahq:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i767, %bb.ahp, %bb.aho, %bb.ahn, %bb.ahl
  %i.hey = shl nsw i64 %.4.i42.i62.i761, 3
  %i.hez = getelementptr inbounds i8, ptr %i.gxj, i64 %i.hey
  %i.hfa = load i16, ptr %i.hed, align 2, !tbaa !269, !noalias !654
  %i.hfb = zext i16 %i.hfa to i64
  %i.hfc = shl nuw nsw i64 %i.hfb, 3
  %i.hfd = getelementptr inbounds nuw i8, ptr %i.gxi, i64 %i.hfc
  %i.hfe = load i64, ptr %i.hfd, align 1, !noalias !654
  store i64 %i.hfe, ptr %i.hez, align 1, !noalias !654
  %i.hff = srem i64 %.4.i42.i62.i761, 8
  %i.hfg = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.hff
  %i.hfh = load i8, ptr %i.hfg, align 1, !tbaa !98, !noalias !654
  %i.hfi = sdiv i64 %.4.i42.i62.i761, 8
  %i.hfj = getelementptr inbounds i8, ptr %.0.i.i.i29.i728, i64 %i.hfi ; 2 uses
  %i.hfk = load i8, ptr %i.hfj, align 1, !tbaa !98, !noalias !654
  %i.hfl = or i8 %i.hfk, %i.hfh
  store i8 %i.hfl, ptr %i.hfj, align 1, !tbaa !98, !noalias !654
  %i.hfm = add nsw i64 %.385.i41.i63.i762, 1
  br label %bb.ahs

bb.ahr:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i767, %bb.ahp, %bb.aho, %bb.ahn, %bb.ahl, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i769, %bb.ahj, %bb.ahi, %bb.ahh, %bb.ahf
  %i.hfn = shl nsw i64 %.4.i42.i62.i761, 3
  %i.hfo = getelementptr inbounds i8, ptr %i.gxj, i64 %i.hfn
  store i64 0, ptr %i.hfo, align 1, !noalias !654
  br label %bb.ahs

bb.ahs:                                           ; preds = %bb.ahr, %bb.ahq
  %.486.i.i65.i764 = phi i64 [ %i.hfm, %bb.ahq ], [ %.385.i41.i63.i762, %bb.ahr ] ; 2 uses
  %i.hfp = add nsw i64 %.4.i42.i62.i761, 1        ; 2 uses
  %i.hfq = add nuw nsw i64 %.0.i43.i61.i760, 1    ; 2 uses
  %exitcond65.not.i66.i765 = icmp eq i64 %i.hfq, %i.hdj
  br i1 %exitcond65.not.i66.i765, label %.loopexit.i43.i742, label %.lr.ph44.i60.i759, !llvm.loop !660

.loopexit.sink.split.i40.i739:                    ; preds = %bb.ahe, %bb.agm
  %.sink86.i41.i740 = phi i64 [ %i.hac, %bb.agm ], [ %i.hdj, %bb.ahe ] ; 2 uses
  %.587.i.ph.i42.i741 = phi i64 [ %i.gzc, %bb.agm ], [ %.082.i53.i33.i732, %bb.ahe ]
  %i.hfr = shl nsw i64 %.081.i54.i32.i731, 3
  %i.hfs = getelementptr inbounds i8, ptr %i.gxj, i64 %i.hfr
  %i.hft = shl nsw i64 %.sink86.i41.i740, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.hfs, i8 0, i64 %i.hft, i1 false), !noalias !654
  %i.hfu = add nsw i64 %.sink86.i41.i740, %.081.i54.i32.i731
  br label %.loopexit.i43.i742

.loopexit.i43.i742.loopexit3237.unr-lcssa:        ; preds = %.lr.ph39.i54.i753
  %i.hfv = and i16 %.sroa.0.0.extract.trunc.i.i34.i733, 1
  %lcmp.mod3415.not = icmp eq i16 %i.hfv, 0
  br i1 %lcmp.mod3415.not, label %.loopexit.i43.i742, label %.lr.ph39.i54.i753.epil.preheader

.lr.ph39.i54.i753.epil.preheader:                 ; preds = %.loopexit.i43.i742.loopexit3237.unr-lcssa, %.lr.ph39.i54.i753.preheader
  %.1.i37.i56.i755.epil.init = phi i64 [ %.081.i54.i32.i731, %.lr.ph39.i54.i753.preheader ], [ %i.haa, %.loopexit.i43.i742.loopexit3237.unr-lcssa ] ; 3 uses
  %lcmp.mod3417 = trunc i32 %i.gyw to i1
  call void @llvm.assume(i1 %lcmp.mod3417)
  %i.hfw = shl nsw i64 %.1.i37.i56.i755.epil.init, 3
  %i.hfx = getelementptr inbounds i8, ptr %i.gxj, i64 %i.hfw
  %i.hfy = getelementptr inbounds [2 x i8], ptr %i.gxr, i64 %.1.i37.i56.i755.epil.init
  %i.hfz = load i16, ptr %i.hfy, align 2, !tbaa !269, !noalias !654
  %i.hga = zext i16 %i.hfz to i64
  %i.hgb = shl nuw nsw i64 %i.hga, 3
  %i.hgc = getelementptr inbounds nuw i8, ptr %i.gxi, i64 %i.hgb
  %i.hgd = load i64, ptr %i.hgc, align 1, !noalias !654
  store i64 %i.hgd, ptr %i.hfx, align 1, !noalias !654
  %i.hge = add nsw i64 %.1.i37.i56.i755.epil.init, 1
  br label %.loopexit.i43.i742

.loopexit.i43.i742:                               ; preds = %bb.agu, %.lr.ph39.i54.i753.epil.preheader, %.loopexit.i43.i742.loopexit3237.unr-lcssa, %bb.ahs, %bb.ahd, %.loopexit.sink.split.i40.i739, %.preheader27.i59.i758, %.preheader.i72.i771, %.preheader30.i46.i745, %bb.agl
  %.587.i.i44.i743 = phi i64 [ %.587.i.ph.i42.i741, %.loopexit.sink.split.i40.i739 ], [ %i.gzc, %bb.agl ], [ %.486.i.i65.i764, %bb.ahs ], [ %i.gzc, %.lr.ph39.i54.i753.epil.preheader ], [ %i.gzc, %.preheader30.i46.i745 ], [ %.082.i53.i33.i732, %.preheader.i72.i771 ], [ %.082.i53.i33.i732, %.preheader27.i59.i758 ], [ %.284.i.i78.i777, %bb.ahd ], [ %i.gzc, %.loopexit.i43.i742.loopexit3237.unr-lcssa ], [ %i.gzc, %bb.agu ] ; 2 uses
  %.5.i.i45.i744 = phi i64 [ %i.hfu, %.loopexit.sink.split.i40.i739 ], [ %.081.i54.i32.i731, %bb.agl ], [ %i.hfp, %bb.ahs ], [ %i.hge, %.lr.ph39.i54.i753.epil.preheader ], [ %.081.i54.i32.i731, %.preheader30.i46.i745 ], [ %.081.i54.i32.i731, %.preheader.i72.i771 ], [ %.081.i54.i32.i731, %.preheader27.i59.i758 ], [ %i.hdg, %bb.ahd ], [ %i.haa, %.loopexit.i43.i742.loopexit3237.unr-lcssa ], [ %i.hbn, %bb.agu ] ; 2 uses
  %i.hgf = icmp slt i64 %.5.i.i45.i744, %i.gxl
  br i1 %i.hgf, label %bb.agj, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !661

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i43.i742, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i727
  %.082.i.lcssa.i30.i729 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i727 ], [ %.587.i.i44.i743, %.loopexit.i43.i742 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24, !noalias !654
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i723:                                  ; preds = %.lr.ph.i24.i723, %.lr.ph.i24.i723.preheader.new
  %.0.i1833.i25.i724 = phi i64 [ 0, %.lr.ph.i24.i723.preheader.new ], [ %i.hgx, %.lr.ph.i24.i723 ] ; 4 uses
  %niter3413 = phi i64 [ 0, %.lr.ph.i24.i723.preheader.new ], [ %niter3413.next.1, %.lr.ph.i24.i723 ]
  %i.hgg = shl nuw nsw i64 %.0.i1833.i25.i724, 3
  %i.hgh = getelementptr inbounds nuw i8, ptr %i.gxj, i64 %i.hgg
  %i.hgi = getelementptr inbounds nuw [2 x i8], ptr %i.gxr, i64 %.0.i1833.i25.i724
  %i.hgj = load i16, ptr %i.hgi, align 2, !tbaa !269, !noalias !654
  %i.hgk = zext i16 %i.hgj to i64
  %i.hgl = shl nuw nsw i64 %i.hgk, 3
  %i.hgm = getelementptr inbounds nuw i8, ptr %i.gxi, i64 %i.hgl
  %i.hgn = load i64, ptr %i.hgm, align 1, !noalias !654
  store i64 %i.hgn, ptr %i.hgh, align 1, !noalias !654
  %i.hgo = or disjoint i64 %.0.i1833.i25.i724, 1  ; 2 uses
  %i.hgp = shl nuw nsw i64 %i.hgo, 3
  %i.hgq = getelementptr inbounds nuw i8, ptr %i.gxj, i64 %i.hgp
  %i.hgr = getelementptr inbounds nuw [2 x i8], ptr %i.gxr, i64 %i.hgo
  %i.hgs = load i16, ptr %i.hgr, align 2, !tbaa !269, !noalias !654
  %i.hgt = zext i16 %i.hgs to i64
  %i.hgu = shl nuw nsw i64 %i.hgt, 3
  %i.hgv = getelementptr inbounds nuw i8, ptr %i.gxi, i64 %i.hgu
  %i.hgw = load i64, ptr %i.hgv, align 1, !noalias !654
  store i64 %i.hgw, ptr %i.hgq, align 1, !noalias !654
  %i.hgx = add nuw nsw i64 %.0.i1833.i25.i724, 2  ; 2 uses
  %niter3413.next.1 = add nuw nsw i64 %niter3413, 2 ; 2 uses
  %niter3413.ncmp.1 = icmp eq i64 %niter3413.next.1, %unroll_iter3412
  br i1 %niter3413.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3243.unr-lcssa, label %.lr.ph.i24.i723, !llvm.loop !662

bb.aht:                                           ; preds = %bb.aeo
  br i1 %i.gnb, label %bb.ahv, label %bb.ahu

bb.ahu:                                           ; preds = %bb.aht
  %i.hgy = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.hgz = load i64, ptr %i.hgy, align 8, !tbaa !71, !noalias !663
  %.not.i19.i83.i659 = icmp ne i64 %i.hgz, 0
  %i.hha = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.hhb = load ptr, ptr %i.hha, align 8, !noalias !663
  %i.hhc = icmp ne ptr %i.hhb, null
  %i.hhd = select i1 %.not.i19.i83.i659, i1 %i.hhc, i1 false
  br label %bb.ahv

bb.ahv:                                           ; preds = %bb.ahu, %bb.aht
  %i.hhe = phi i1 [ true, %bb.aht ], [ %i.hhd, %bb.ahu ]
  %i.hhf = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !663
  %i.hhg = extractvalue { i32, ptr } %i.hhf, 1    ; 9 uses
  %i.hhh = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !663 ; 13 uses
  %i.hhi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.hhj = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !663 ; 11 uses
  %i.hhk = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.hhl = load i64, ptr %i.hhk, align 8, !tbaa !99, !noalias !663
  %i.hhm = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.hhn = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.hho = load ptr, ptr %i.hhn, align 8, !tbaa !66, !noalias !663
  %i.hhp = getelementptr inbounds [4 x i8], ptr %i.hho, i64 %i.hhl ; 9 uses
  br i1 %i.hhe, label %bb.ahw, label %.preheader32.i84.i660

.preheader32.i84.i660:                            ; preds = %bb.ahv
  %i.hhq = icmp sgt i64 %i.hhj, 0
  br i1 %i.hhq, label %.lr.ph.i86.i662.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i662.preheader:                        ; preds = %.preheader32.i84.i660
  %xtraiter3398 = and i64 %i.hhj, 1
  %i.hhr = icmp eq i64 %i.hhj, 1
  br i1 %i.hhr, label %.lr.ph.i86.i662.epil.preheader, label %.lr.ph.i86.i662.preheader.new

.lr.ph.i86.i662.preheader.new:                    ; preds = %.lr.ph.i86.i662.preheader
  %unroll_iter3401 = and i64 %i.hhj, 9223372036854775806
  br label %.lr.ph.i86.i662

bb.ahw:                                           ; preds = %bb.ahv
  %i.hhs = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.hht = load ptr, ptr %i.hhs, align 8, !tbaa !171, !noalias !663
  %i.hhu = load ptr, ptr %i.hht, align 8, !tbaa !306, !noalias !663 ; 4 uses
  %.not.i.i.i89.i665 = icmp eq ptr %i.hhu, null
  br i1 %.not.i.i.i89.i665, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i666, label %bb.ahx

bb.ahx:                                           ; preds = %bb.ahw
  %i.hhv = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.hhw = load i64, ptr %i.hhv, align 8, !tbaa !438, !noalias !663
  %i.hhx = getelementptr inbounds nuw i8, ptr %i.hhu, i64 9
  %i.hhy = load i8, ptr %i.hhx, align 1, !tbaa !439, !range !127, !noalias !663, !noundef !128
  %i.hhz = trunc nuw i8 %i.hhy to i1
  %i.hia = getelementptr inbounds nuw i8, ptr %i.hhu, i64 8
  %i.hib = load i8, ptr %i.hia, align 8, !range !127, !noalias !663
  %i.hic = trunc nuw i8 %i.hib to i1
  %i.hid = select i1 %i.hhz, i1 %i.hic, i1 false, !prof !117
  %i.hie = getelementptr inbounds nuw i8, ptr %i.hhu, i64 16
  %i.hif = load ptr, ptr %i.hie, align 8, !noalias !663
  %i.hig = select i1 %i.hid, ptr %i.hif, ptr null, !prof !117
  %i.hih = getelementptr inbounds i8, ptr %i.hig, i64 %i.hhw
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i666

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i666: ; preds = %bb.ahx, %bb.ahw
  %.0.i.i.i91.i667 = phi ptr [ %i.hih, %bb.ahx ], [ null, %bb.ahw ] ; 5 uses
  %i.hii = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.hij = load i64, ptr %i.hii, align 8, !tbaa !178, !noalias !663 ; 2 uses
  %i.hik = ashr i64 %i.hij, 3
  %i.hil = and i64 %i.hij, 7
  %i.him = icmp ne i64 %i.hil, 0
  %i.hin = zext i1 %i.him to i64
  %i.hio = add nsw i64 %i.hik, %i.hin
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i91.i667, i8 0, i64 %i.hio, i1 false), !noalias !663
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24, !noalias !663
  %i.hip = load ptr, ptr %i.hhm, align 8, !tbaa !66, !noalias !663
  %i.hiq = load i64, ptr %i.hhk, align 8, !tbaa !99, !noalias !663
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.hip, i64 noundef %i.hiq, i64 noundef %i.hhj), !noalias !663
  %i.hir = icmp sgt i64 %i.hhj, 0
  br i1 %i.hir, label %.lr.ph55.i93.i669, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i93.i669:                                ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i666
  %i.his = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.hit = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.ahy

bb.ahy:                                           ; preds = %.loopexit.i105.i681, %.lr.ph55.i93.i669
  %.081.i54.i94.i670 = phi i64 [ 0, %.lr.ph55.i93.i669 ], [ %.5.i.i107.i683, %.loopexit.i105.i681 ] ; 12 uses
  %.082.i53.i95.i671 = phi i64 [ 0, %.lr.ph55.i93.i669 ], [ %.587.i.i106.i682, %.loopexit.i105.i681 ] ; 6 uses
  %i.hiu = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %17), !noalias !663 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i96.i672 = trunc i32 %i.hiu to i16 ; 10 uses
  %i.hiv = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !663
  %.not.i20.i97.i673 = icmp ne i64 %i.hiv, 0
  %i.hiw = load ptr, ptr %i.v, align 8, !noalias !663
  %i.hix = icmp ne ptr %i.hiw, null
  %i.hiy = select i1 %.not.i20.i97.i673, i1 %i.hix, i1 false
  br i1 %i.hiy, label %bb.aik, label %bb.ahz

bb.ahz:                                           ; preds = %bb.ahy
  %.sroa.14.0.extract.shift.i.i98.i674 = lshr i32 %i.hiu, 16
  %.sroa.14.0.extract.trunc.i.i99.i675 = zext nneg i32 %.sroa.14.0.extract.shift.i.i98.i674 to i64
  %sext91.i.i100.i676 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i99.i675, 48
  %i.hiz = ashr exact i64 %sext91.i.i100.i676, 48
  %i.hja = add nsw i64 %i.hiz, %.082.i53.i95.i671 ; 6 uses
  %i.hjb = ashr i32 %i.hiu, 16                    ; 2 uses
  %sext.i.i101.i677 = shl i32 %i.hiu, 16
  %i.hjc = ashr exact i32 %sext.i.i101.i677, 16
  %i.hjd = icmp eq i32 %i.hjb, %i.hjc
  br i1 %i.hjd, label %bb.aia, label %bb.aib

bb.aia:                                           ; preds = %bb.ahz
  %i.hje = sext i16 %.sroa.0.0.extract.trunc.i.i96.i672 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i91.i667, i64 noundef %.081.i54.i94.i670, i64 noundef %i.hje, i1 noundef zeroext true), !noalias !663
  %i.hjf = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i672, 0
  br i1 %i.hjf, label %.lr.ph39.i116.i692.preheader, label %.loopexit.i105.i681

.lr.ph39.i116.i692.preheader:                     ; preds = %bb.aia
  %i.hjg = icmp eq i16 %.sroa.0.0.extract.trunc.i.i96.i672, 1
  br i1 %i.hjg, label %.lr.ph39.i116.i692.epil.preheader, label %.lr.ph39.i116.i692.preheader.new

.lr.ph39.i116.i692.preheader.new:                 ; preds = %.lr.ph39.i116.i692.preheader
  %unroll_iter3407 = and i64 %i.hje, 32766
  br label %.lr.ph39.i116.i692

.lr.ph39.i116.i692:                               ; preds = %.lr.ph39.i116.i692, %.lr.ph39.i116.i692.preheader.new
  %.1.i37.i118.i694 = phi i64 [ %.081.i54.i94.i670, %.lr.ph39.i116.i692.preheader.new ], [ %i.hjy, %.lr.ph39.i116.i692 ] ; 4 uses
  %niter3408 = phi i64 [ 0, %.lr.ph39.i116.i692.preheader.new ], [ %niter3408.next.1, %.lr.ph39.i116.i692 ]
  %i.hjh = shl nsw i64 %.1.i37.i118.i694, 3
  %i.hji = getelementptr inbounds i8, ptr %i.hhh, i64 %i.hjh
  %i.hjj = getelementptr inbounds [4 x i8], ptr %i.hhp, i64 %.1.i37.i118.i694
  %i.hjk = load i32, ptr %i.hjj, align 4, !tbaa !3, !noalias !663
  %i.hjl = shl i32 %i.hjk, 3
  %i.hjm = zext i32 %i.hjl to i64
  %i.hjn = getelementptr inbounds nuw i8, ptr %i.hhg, i64 %i.hjm
  %i.hjo = load i64, ptr %i.hjn, align 1, !noalias !663
  store i64 %i.hjo, ptr %i.hji, align 1, !noalias !663
  %i.hjp = add nsw i64 %.1.i37.i118.i694, 1       ; 2 uses
  %i.hjq = shl nsw i64 %i.hjp, 3
  %i.hjr = getelementptr inbounds i8, ptr %i.hhh, i64 %i.hjq
  %i.hjs = getelementptr inbounds [4 x i8], ptr %i.hhp, i64 %i.hjp
  %i.hjt = load i32, ptr %i.hjs, align 4, !tbaa !3, !noalias !663
  %i.hju = shl i32 %i.hjt, 3
  %i.hjv = zext i32 %i.hju to i64
  %i.hjw = getelementptr inbounds nuw i8, ptr %i.hhg, i64 %i.hjv
  %i.hjx = load i64, ptr %i.hjw, align 1, !noalias !663
  store i64 %i.hjx, ptr %i.hjr, align 1, !noalias !663
  %i.hjy = add nsw i64 %.1.i37.i118.i694, 2       ; 3 uses
  %niter3408.next.1 = add i64 %niter3408, 2       ; 2 uses
  %niter3408.ncmp.1 = icmp eq i64 %niter3408.next.1, %unroll_iter3407
  br i1 %niter3408.ncmp.1, label %.loopexit.i105.i681.loopexit3245.unr-lcssa, label %.lr.ph39.i116.i692, !llvm.loop !666

bb.aib:                                           ; preds = %bb.ahz
  %i.hjz = icmp sgt i32 %i.hjb, 0
  %i.hka = sext i16 %.sroa.0.0.extract.trunc.i.i96.i672 to i64 ; 2 uses
  br i1 %i.hjz, label %.preheader30.i108.i684, label %.loopexit.sink.split.i102.i678

.preheader30.i108.i684:                           ; preds = %bb.aib
  %i.hkb = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i672, 0
  br i1 %i.hkb, label %.lr.ph36.i109.i685, label %.loopexit.i105.i681

.lr.ph36.i109.i685:                               ; preds = %.preheader30.i108.i684, %bb.aij
  %.079.i35.i110.i686 = phi i64 [ %i.hlm, %bb.aij ], [ 0, %.preheader30.i108.i684 ]
  %.2.i34.i111.i687 = phi i64 [ %i.hll, %bb.aij ], [ %.081.i54.i94.i670, %.preheader30.i108.i684 ] ; 10 uses
  %i.hkc = load ptr, ptr %i.hhm, align 8, !tbaa !66, !noalias !663 ; 2 uses
  %.not.i21.i112.i688 = icmp eq ptr %i.hkc, null
  br i1 %.not.i21.i112.i688, label %bb.aid, label %bb.aic

bb.aic:                                           ; preds = %.lr.ph36.i109.i685
  %i.hkd = load i64, ptr %i.hhk, align 8, !tbaa !99, !noalias !663
  %i.hke = add nsw i64 %i.hkd, %.2.i34.i111.i687  ; 2 uses
  %i.hkf = lshr i64 %i.hke, 3
  %i.hkg = getelementptr inbounds nuw i8, ptr %i.hkc, i64 %i.hkf
  %i.hkh = load i8, ptr %i.hkg, align 1, !tbaa !98, !noalias !663
  %i.hki = trunc i64 %i.hke to i8
  %i.hkj = and i8 %i.hki, 7
  %i.hkk = lshr i8 %i.hkh, %i.hkj
  %i.hkl = trunc i8 %i.hkk to i1
  br i1 %i.hkl, label %bb.aih, label %bb.aii

bb.aid:                                           ; preds = %.lr.ph36.i109.i685
  %i.hkm = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !663
  %i.hkn = getelementptr inbounds nuw i8, ptr %i.hkm, i64 40
  %i.hko = load i32, ptr %i.hkn, align 8, !tbaa !42, !noalias !663
  switch i32 %i.hko, label %bb.aig [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i114.i690
    i32 28, label %bb.aie
    i32 38, label %bb.aif
  ]

bb.aie:                                           ; preds = %bb.aid
  %i.hkp = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i111.i687), !noalias !663
  br i1 %i.hkp, label %bb.aii, label %bb.aih

bb.aif:                                           ; preds = %bb.aid
  %i.hkq = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i111.i687), !noalias !663
  br i1 %i.hkq, label %bb.aii, label %bb.aih

end_hunk_15
begin_hunk_16_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  br i1 %i.hng, label %.preheader27.i121.i697, label %.loopexit.sink.split.i102.i678

.preheader27.i121.i697:                           ; preds = %bb.ait
  %i.hni = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i672, 0
  br i1 %i.hni, label %.lr.ph44.i122.i698, label %.loopexit.i105.i681

.lr.ph44.i122.i698:                               ; preds = %.preheader27.i121.i697, %bb.ajh
  %.0.i43.i123.i699 = phi i64 [ %i.hpo, %bb.ajh ], [ 0, %.preheader27.i121.i697 ]
  %.4.i42.i124.i700 = phi i64 [ %i.hpn, %bb.ajh ], [ %.081.i54.i94.i670, %.preheader27.i121.i697 ] ; 10 uses
  %.385.i41.i125.i701 = phi i64 [ %.486.i.i127.i703, %bb.ajh ], [ %.082.i53.i95.i671, %.preheader27.i121.i697 ] ; 2 uses
  %i.hnj = load ptr, ptr %i.hhm, align 8, !tbaa !66, !noalias !663 ; 2 uses
  %.not.i26.i126.i702 = icmp eq ptr %i.hnj, null
  br i1 %.not.i26.i126.i702, label %bb.aiv, label %bb.aiu

bb.aiu:                                           ; preds = %.lr.ph44.i122.i698
  %i.hnk = load i64, ptr %i.hhk, align 8, !tbaa !99, !noalias !663
  %i.hnl = add nsw i64 %i.hnk, %.4.i42.i124.i700  ; 2 uses
  %i.hnm = lshr i64 %i.hnl, 3
  %i.hnn = getelementptr inbounds nuw i8, ptr %i.hnj, i64 %i.hnm
  %i.hno = load i8, ptr %i.hnn, align 1, !tbaa !98, !noalias !663
  %i.hnp = trunc i64 %i.hnl to i8
  %i.hnq = and i8 %i.hnp, 7
  %i.hnr = lshr i8 %i.hno, %i.hnq
  %i.hns = trunc i8 %i.hnr to i1
  br i1 %i.hns, label %bb.aiz, label %bb.ajg

bb.aiv:                                           ; preds = %.lr.ph44.i122.i698
  %i.hnt = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !663
  %i.hnu = getelementptr inbounds nuw i8, ptr %i.hnt, i64 40
  %i.hnv = load i32, ptr %i.hnu, align 8, !tbaa !42, !noalias !663
  switch i32 %i.hnv, label %bb.aiy [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i708
    i32 28, label %bb.aiw
    i32 38, label %bb.aix
  ]

bb.aiw:                                           ; preds = %bb.aiv
  %i.hnw = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i700), !noalias !663
  br i1 %i.hnw, label %bb.ajg, label %bb.aiz

bb.aix:                                           ; preds = %bb.aiv
  %i.hnx = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i700), !noalias !663
  br i1 %i.hnx, label %bb.ajg, label %bb.aiz

bb.aiy:                                           ; preds = %bb.aiv
  %i.hny = load i64, ptr %i.his, align 8, !tbaa !71, !noalias !663
  %i.hnz = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !663
  %.not24.i133.i709 = icmp eq i64 %i.hny, %i.hnz
  br i1 %.not24.i133.i709, label %bb.ajg, label %bb.aiz

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i708:  ; preds = %bb.aiv
  %i.hoa = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i700), !noalias !663
  br i1 %i.hoa, label %bb.ajg, label %bb.aiz

bb.aiz:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i708, %bb.aiy, %bb.aix, %bb.aiw, %bb.aiu
  %i.hob = getelementptr inbounds [4 x i8], ptr %i.hhp, i64 %.4.i42.i124.i700 ; 2 uses
  %i.hoc = load i32, ptr %i.hob, align 4, !tbaa !3, !noalias !663
  %i.hod = zext i32 %i.hoc to i64                 ; 4 uses
  %i.hoe = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !663 ; 2 uses
  %.not.i29.i129.i705 = icmp eq ptr %i.hoe, null
  br i1 %.not.i29.i129.i705, label %bb.ajb, label %bb.aja

bb.aja:                                           ; preds = %bb.aiz
  %i.hof = load i64, ptr %i.hit, align 8, !tbaa !99, !noalias !663
  %i.hog = add nsw i64 %i.hof, %i.hod             ; 2 uses
  %i.hoh = lshr i64 %i.hog, 3
  %i.hoi = getelementptr inbounds nuw i8, ptr %i.hoe, i64 %i.hoh
  %i.hoj = load i8, ptr %i.hoi, align 1, !tbaa !98, !noalias !663
  %i.hok = trunc i64 %i.hog to i8
  %i.hol = and i8 %i.hok, 7
  %i.hom = lshr i8 %i.hoj, %i.hol
  %i.hon = trunc i8 %i.hom to i1
  br i1 %i.hon, label %bb.ajf, label %bb.ajg

bb.ajb:                                           ; preds = %bb.aiz
  %i.hoo = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !663
  %i.hop = getelementptr inbounds nuw i8, ptr %i.hoo, i64 40
  %i.hoq = load i32, ptr %i.hop, align 8, !tbaa !42, !noalias !663
  switch i32 %i.hoq, label %bb.aje [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i706
    i32 28, label %bb.ajc
    i32 38, label %bb.ajd
  ]

bb.ajc:                                           ; preds = %bb.ajb
  %i.hor = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hod), !noalias !663
  br i1 %i.hor, label %bb.ajg, label %bb.ajf

bb.ajd:                                           ; preds = %bb.ajb
  %i.hos = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hod), !noalias !663
  br i1 %i.hos, label %bb.ajg, label %bb.ajf

bb.aje:                                           ; preds = %bb.ajb
  %i.hot = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !663
  %i.hou = load i64, ptr %i.hhi, align 8, !tbaa !62, !noalias !663
  %.not25.i131.i707 = icmp eq i64 %i.hot, %i.hou
  br i1 %.not25.i131.i707, label %bb.ajg, label %bb.ajf

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i706:  ; preds = %bb.ajb
  %i.hov = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hod), !noalias !663
  br i1 %i.hov, label %bb.ajg, label %bb.ajf

bb.ajf:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i706, %bb.aje, %bb.ajd, %bb.ajc, %bb.aja
  %i.how = shl nsw i64 %.4.i42.i124.i700, 3
  %i.hox = getelementptr inbounds i8, ptr %i.hhh, i64 %i.how
  %i.hoy = load i32, ptr %i.hob, align 4, !tbaa !3, !noalias !663
  %i.hoz = shl i32 %i.hoy, 3
  %i.hpa = zext i32 %i.hoz to i64
  %i.hpb = getelementptr inbounds nuw i8, ptr %i.hhg, i64 %i.hpa
  %i.hpc = load i64, ptr %i.hpb, align 1, !noalias !663
  store i64 %i.hpc, ptr %i.hox, align 1, !noalias !663
  %i.hpd = srem i64 %.4.i42.i124.i700, 8
  %i.hpe = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.hpd
  %i.hpf = load i8, ptr %i.hpe, align 1, !tbaa !98, !noalias !663
  %i.hpg = sdiv i64 %.4.i42.i124.i700, 8
  %i.hph = getelementptr inbounds i8, ptr %.0.i.i.i91.i667, i64 %i.hpg ; 2 uses
  %i.hpi = load i8, ptr %i.hph, align 1, !tbaa !98, !noalias !663
  %i.hpj = or i8 %i.hpi, %i.hpf
  store i8 %i.hpj, ptr %i.hph, align 1, !tbaa !98, !noalias !663
  %i.hpk = add nsw i64 %.385.i41.i125.i701, 1
  br label %bb.ajh

bb.ajg:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i706, %bb.aje, %bb.ajd, %bb.ajc, %bb.aja, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i708, %bb.aiy, %bb.aix, %bb.aiw, %bb.aiu
  %i.hpl = shl nsw i64 %.4.i42.i124.i700, 3
  %i.hpm = getelementptr inbounds i8, ptr %i.hhh, i64 %i.hpl
  store i64 0, ptr %i.hpm, align 1, !noalias !663
  br label %bb.ajh

bb.ajh:                                           ; preds = %bb.ajg, %bb.ajf
  %.486.i.i127.i703 = phi i64 [ %i.hpk, %bb.ajf ], [ %.385.i41.i125.i701, %bb.ajg ] ; 2 uses
  %i.hpn = add nsw i64 %.4.i42.i124.i700, 1       ; 2 uses
  %i.hpo = add nuw nsw i64 %.0.i43.i123.i699, 1   ; 2 uses
  %exitcond65.not.i128.i704 = icmp eq i64 %i.hpo, %i.hnh
  br i1 %exitcond65.not.i128.i704, label %.loopexit.i105.i681, label %.lr.ph44.i122.i698, !llvm.loop !669

.loopexit.sink.split.i102.i678:                   ; preds = %bb.ait, %bb.aib
  %.sink86.i103.i679 = phi i64 [ %i.hka, %bb.aib ], [ %i.hnh, %bb.ait ] ; 2 uses
  %.587.i.ph.i104.i680 = phi i64 [ %i.hja, %bb.aib ], [ %.082.i53.i95.i671, %bb.ait ]
  %i.hpp = shl nsw i64 %.081.i54.i94.i670, 3
  %i.hpq = getelementptr inbounds i8, ptr %i.hhh, i64 %i.hpp
  %i.hpr = shl nsw i64 %.sink86.i103.i679, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.hpq, i8 0, i64 %i.hpr, i1 false), !noalias !663
  %i.hps = add nsw i64 %.sink86.i103.i679, %.081.i54.i94.i670
  br label %.loopexit.i105.i681

.loopexit.i105.i681.loopexit3245.unr-lcssa:       ; preds = %.lr.ph39.i116.i692
  %i.hpt = and i16 %.sroa.0.0.extract.trunc.i.i96.i672, 1
  %lcmp.mod3404.not = icmp eq i16 %i.hpt, 0
  br i1 %lcmp.mod3404.not, label %.loopexit.i105.i681, label %.lr.ph39.i116.i692.epil.preheader

.lr.ph39.i116.i692.epil.preheader:                ; preds = %.loopexit.i105.i681.loopexit3245.unr-lcssa, %.lr.ph39.i116.i692.preheader
  %.1.i37.i118.i694.epil.init = phi i64 [ %.081.i54.i94.i670, %.lr.ph39.i116.i692.preheader ], [ %i.hjy, %.loopexit.i105.i681.loopexit3245.unr-lcssa ] ; 3 uses
  %lcmp.mod3406 = trunc i32 %i.hiu to i1
  call void @llvm.assume(i1 %lcmp.mod3406)
  %i.hpu = shl nsw i64 %.1.i37.i118.i694.epil.init, 3
  %i.hpv = getelementptr inbounds i8, ptr %i.hhh, i64 %i.hpu
  %i.hpw = getelementptr inbounds [4 x i8], ptr %i.hhp, i64 %.1.i37.i118.i694.epil.init
  %i.hpx = load i32, ptr %i.hpw, align 4, !tbaa !3, !noalias !663
  %i.hpy = shl i32 %i.hpx, 3
  %i.hpz = zext i32 %i.hpy to i64
  %i.hqa = getelementptr inbounds nuw i8, ptr %i.hhg, i64 %i.hpz
  %i.hqb = load i64, ptr %i.hqa, align 1, !noalias !663
  store i64 %i.hqb, ptr %i.hpv, align 1, !noalias !663
  %i.hqc = add nsw i64 %.1.i37.i118.i694.epil.init, 1
  br label %.loopexit.i105.i681

.loopexit.i105.i681:                              ; preds = %bb.aij, %.lr.ph39.i116.i692.epil.preheader, %.loopexit.i105.i681.loopexit3245.unr-lcssa, %bb.ajh, %bb.ais, %.loopexit.sink.split.i102.i678, %.preheader27.i121.i697, %.preheader.i134.i710, %.preheader30.i108.i684, %bb.aia
  %.587.i.i106.i682 = phi i64 [ %.587.i.ph.i104.i680, %.loopexit.sink.split.i102.i678 ], [ %i.hja, %bb.aia ], [ %.486.i.i127.i703, %bb.ajh ], [ %i.hja, %.lr.ph39.i116.i692.epil.preheader ], [ %i.hja, %.preheader30.i108.i684 ], [ %.082.i53.i95.i671, %.preheader.i134.i710 ], [ %.082.i53.i95.i671, %.preheader27.i121.i697 ], [ %.284.i.i140.i716, %bb.ais ], [ %i.hja, %.loopexit.i105.i681.loopexit3245.unr-lcssa ], [ %i.hja, %bb.aij ] ; 2 uses
  %.5.i.i107.i683 = phi i64 [ %i.hps, %.loopexit.sink.split.i102.i678 ], [ %.081.i54.i94.i670, %bb.aia ], [ %i.hpn, %bb.ajh ], [ %i.hqc, %.lr.ph39.i116.i692.epil.preheader ], [ %.081.i54.i94.i670, %.preheader30.i108.i684 ], [ %.081.i54.i94.i670, %.preheader.i134.i710 ], [ %.081.i54.i94.i670, %.preheader27.i121.i697 ], [ %i.hne, %bb.ais ], [ %i.hjy, %.loopexit.i105.i681.loopexit3245.unr-lcssa ], [ %i.hll, %bb.aij ] ; 2 uses
  %i.hqd = icmp slt i64 %.5.i.i107.i683, %i.hhj
  br i1 %i.hqd, label %bb.ahy, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !670

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i105.i681, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i666
  %.082.i.lcssa.i92.i668 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i666 ], [ %.587.i.i106.i682, %.loopexit.i105.i681 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24, !noalias !663
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i662:                                  ; preds = %.lr.ph.i86.i662, %.lr.ph.i86.i662.preheader.new
  %.0.i1833.i87.i663 = phi i64 [ 0, %.lr.ph.i86.i662.preheader.new ], [ %i.hqv, %.lr.ph.i86.i662 ] ; 4 uses
  %niter3402 = phi i64 [ 0, %.lr.ph.i86.i662.preheader.new ], [ %niter3402.next.1, %.lr.ph.i86.i662 ]
  %i.hqe = shl nuw nsw i64 %.0.i1833.i87.i663, 3
  %i.hqf = getelementptr inbounds nuw i8, ptr %i.hhh, i64 %i.hqe
  %i.hqg = getelementptr inbounds nuw [4 x i8], ptr %i.hhp, i64 %.0.i1833.i87.i663
  %i.hqh = load i32, ptr %i.hqg, align 4, !tbaa !3, !noalias !663
  %i.hqi = shl i32 %i.hqh, 3
  %i.hqj = zext i32 %i.hqi to i64
  %i.hqk = getelementptr inbounds nuw i8, ptr %i.hhg, i64 %i.hqj
  %i.hql = load i64, ptr %i.hqk, align 1, !noalias !663
  store i64 %i.hql, ptr %i.hqf, align 1, !noalias !663
  %i.hqm = or disjoint i64 %.0.i1833.i87.i663, 1  ; 2 uses
  %i.hqn = shl nuw nsw i64 %i.hqm, 3
  %i.hqo = getelementptr inbounds nuw i8, ptr %i.hhh, i64 %i.hqn
  %i.hqp = getelementptr inbounds nuw [4 x i8], ptr %i.hhp, i64 %i.hqm
  %i.hqq = load i32, ptr %i.hqp, align 4, !tbaa !3, !noalias !663
  %i.hqr = shl i32 %i.hqq, 3
  %i.hqs = zext i32 %i.hqr to i64
  %i.hqt = getelementptr inbounds nuw i8, ptr %i.hhg, i64 %i.hqs
  %i.hqu = load i64, ptr %i.hqt, align 1, !noalias !663
  store i64 %i.hqu, ptr %i.hqo, align 1, !noalias !663
  %i.hqv = add nuw nsw i64 %.0.i1833.i87.i663, 2  ; 2 uses
  %niter3402.next.1 = add nuw nsw i64 %niter3402, 2 ; 2 uses
  %niter3402.ncmp.1 = icmp eq i64 %niter3402.next.1, %unroll_iter3401
  br i1 %niter3402.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3251.unr-lcssa, label %.lr.ph.i86.i662, !llvm.loop !671

bb.aji:                                           ; preds = %bb.aeo
  br i1 %i.gnb, label %bb.ajk, label %bb.ajj

bb.ajj:                                           ; preds = %bb.aji
  %i.hqw = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.hqx = load i64, ptr %i.hqw, align 8, !tbaa !71, !noalias !672
  %.not.i19.i145.i843 = icmp ne i64 %i.hqx, 0
  %i.hqy = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.hqz = load ptr, ptr %i.hqy, align 8, !noalias !672
  %i.hra = icmp ne ptr %i.hqz, null
  %i.hrb = select i1 %.not.i19.i145.i843, i1 %i.hra, i1 false
  br label %bb.ajk

bb.ajk:                                           ; preds = %bb.ajj, %bb.aji
  %i.hrc = phi i1 [ true, %bb.aji ], [ %i.hrb, %bb.ajj ]
  %i.hrd = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !672
  %i.hre = extractvalue { i32, ptr } %i.hrd, 1    ; 9 uses
  %i.hrf = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !672 ; 13 uses
  %i.hrg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.hrh = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !672 ; 11 uses
  %i.hri = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.hrj = load i64, ptr %i.hri, align 8, !tbaa !99, !noalias !672
  %i.hrk = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.hrl = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.hrm = load ptr, ptr %i.hrl, align 8, !tbaa !66, !noalias !672
  %i.hrn = getelementptr inbounds [8 x i8], ptr %i.hrm, i64 %i.hrj ; 9 uses
  br i1 %i.hrc, label %bb.ajl, label %.preheader32.i146.i844

.preheader32.i146.i844:                           ; preds = %bb.ajk
  %i.hro = icmp sgt i64 %i.hrh, 0
  br i1 %i.hro, label %.lr.ph.i148.i845.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i845.preheader:                       ; preds = %.preheader32.i146.i844
  %xtraiter3431 = and i64 %i.hrh, 1
  %i.hrp = icmp eq i64 %i.hrh, 1
  br i1 %i.hrp, label %.lr.ph.i148.i845.epil.preheader, label %.lr.ph.i148.i845.preheader.new

.lr.ph.i148.i845.preheader.new:                   ; preds = %.lr.ph.i148.i845.preheader
  %unroll_iter3434 = and i64 %i.hrh, 9223372036854775806
  br label %.lr.ph.i148.i845

bb.ajl:                                           ; preds = %bb.ajk
  %i.hrq = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.hrr = load ptr, ptr %i.hrq, align 8, !tbaa !171, !noalias !672
  %i.hrs = load ptr, ptr %i.hrr, align 8, !tbaa !306, !noalias !672 ; 4 uses
  %.not.i.i.i151.i848 = icmp eq ptr %i.hrs, null
  br i1 %.not.i.i.i151.i848, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i849, label %bb.ajm

bb.ajm:                                           ; preds = %bb.ajl
  %i.hrt = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.hru = load i64, ptr %i.hrt, align 8, !tbaa !438, !noalias !672
  %i.hrv = getelementptr inbounds nuw i8, ptr %i.hrs, i64 9
  %i.hrw = load i8, ptr %i.hrv, align 1, !tbaa !439, !range !127, !noalias !672, !noundef !128
  %i.hrx = trunc nuw i8 %i.hrw to i1
  %i.hry = getelementptr inbounds nuw i8, ptr %i.hrs, i64 8
  %i.hrz = load i8, ptr %i.hry, align 8, !range !127, !noalias !672
  %i.hsa = trunc nuw i8 %i.hrz to i1
  %i.hsb = select i1 %i.hrx, i1 %i.hsa, i1 false, !prof !117
  %i.hsc = getelementptr inbounds nuw i8, ptr %i.hrs, i64 16
  %i.hsd = load ptr, ptr %i.hsc, align 8, !noalias !672
  %i.hse = select i1 %i.hsb, ptr %i.hsd, ptr null, !prof !117
  %i.hsf = getelementptr inbounds i8, ptr %i.hse, i64 %i.hru
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i849

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i849: ; preds = %bb.ajm, %bb.ajl
  %.0.i.i.i153.i850 = phi ptr [ %i.hsf, %bb.ajm ], [ null, %bb.ajl ] ; 5 uses
  %i.hsg = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.hsh = load i64, ptr %i.hsg, align 8, !tbaa !178, !noalias !672 ; 2 uses
  %i.hsi = ashr i64 %i.hsh, 3
  %i.hsj = and i64 %i.hsh, 7
  %i.hsk = icmp ne i64 %i.hsj, 0
  %i.hsl = zext i1 %i.hsk to i64
  %i.hsm = add nsw i64 %i.hsi, %i.hsl
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i153.i850, i8 0, i64 %i.hsm, i1 false), !noalias !672
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24, !noalias !672
  %i.hsn = load ptr, ptr %i.hrk, align 8, !tbaa !66, !noalias !672
  %i.hso = load i64, ptr %i.hri, align 8, !tbaa !99, !noalias !672
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef %i.hsn, i64 noundef %i.hso, i64 noundef %i.hrh), !noalias !672
  %i.hsp = icmp sgt i64 %i.hrh, 0
  br i1 %i.hsp, label %.lr.ph55.i155.i852, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i155.i852:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i849
  %i.hsq = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.hsr = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.ajn

bb.ajn:                                           ; preds = %.loopexit.i167.i864, %.lr.ph55.i155.i852
  %.081.i54.i156.i853 = phi i64 [ 0, %.lr.ph55.i155.i852 ], [ %.5.i.i169.i866, %.loopexit.i167.i864 ] ; 12 uses
  %.082.i53.i157.i854 = phi i64 [ 0, %.lr.ph55.i155.i852 ], [ %.587.i.i168.i865, %.loopexit.i167.i864 ] ; 6 uses
  %i.hss = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %16), !noalias !672 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i158.i855 = trunc i32 %i.hss to i16 ; 10 uses
  %i.hst = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !672
  %.not.i20.i159.i856 = icmp ne i64 %i.hst, 0
  %i.hsu = load ptr, ptr %i.v, align 8, !noalias !672
  %i.hsv = icmp ne ptr %i.hsu, null
  %i.hsw = select i1 %.not.i20.i159.i856, i1 %i.hsv, i1 false
  br i1 %i.hsw, label %bb.ajz, label %bb.ajo

bb.ajo:                                           ; preds = %bb.ajn
  %.sroa.14.0.extract.shift.i.i160.i857 = lshr i32 %i.hss, 16
  %.sroa.14.0.extract.trunc.i.i161.i858 = zext nneg i32 %.sroa.14.0.extract.shift.i.i160.i857 to i64
  %sext91.i.i162.i859 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i161.i858, 48
  %i.hsx = ashr exact i64 %sext91.i.i162.i859, 48
  %i.hsy = add nsw i64 %i.hsx, %.082.i53.i157.i854 ; 6 uses
  %i.hsz = ashr i32 %i.hss, 16                    ; 2 uses
  %sext.i.i163.i860 = shl i32 %i.hss, 16
  %i.hta = ashr exact i32 %sext.i.i163.i860, 16
  %i.htb = icmp eq i32 %i.hsz, %i.hta
  br i1 %i.htb, label %bb.ajp, label %bb.ajq

bb.ajp:                                           ; preds = %bb.ajo
  %i.htc = sext i16 %.sroa.0.0.extract.trunc.i.i158.i855 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i153.i850, i64 noundef %.081.i54.i156.i853, i64 noundef %i.htc, i1 noundef zeroext true), !noalias !672
  %i.htd = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i855, 0
  br i1 %i.htd, label %.lr.ph39.i178.i875.preheader, label %.loopexit.i167.i864

.lr.ph39.i178.i875.preheader:                     ; preds = %bb.ajp
  %i.hte = icmp eq i16 %.sroa.0.0.extract.trunc.i.i158.i855, 1
  br i1 %i.hte, label %.lr.ph39.i178.i875.epil.preheader, label %.lr.ph39.i178.i875.preheader.new

.lr.ph39.i178.i875.preheader.new:                 ; preds = %.lr.ph39.i178.i875.preheader
  %unroll_iter3440 = and i64 %i.htc, 32766
  br label %.lr.ph39.i178.i875

.lr.ph39.i178.i875:                               ; preds = %.lr.ph39.i178.i875, %.lr.ph39.i178.i875.preheader.new
  %.1.i37.i180.i877 = phi i64 [ %.081.i54.i156.i853, %.lr.ph39.i178.i875.preheader.new ], [ %i.htu, %.lr.ph39.i178.i875 ] ; 4 uses
  %niter3441 = phi i64 [ 0, %.lr.ph39.i178.i875.preheader.new ], [ %niter3441.next.1, %.lr.ph39.i178.i875 ]
  %i.htf = shl nsw i64 %.1.i37.i180.i877, 3
  %i.htg = getelementptr inbounds i8, ptr %i.hrf, i64 %i.htf
  %i.hth = getelementptr inbounds [8 x i8], ptr %i.hrn, i64 %.1.i37.i180.i877
  %i.hti = load i64, ptr %i.hth, align 8, !tbaa !130, !noalias !672
  %i.htj = shl i64 %i.hti, 3
  %i.htk = getelementptr inbounds nuw i8, ptr %i.hre, i64 %i.htj
  %i.htl = load i64, ptr %i.htk, align 1, !noalias !672
  store i64 %i.htl, ptr %i.htg, align 1, !noalias !672
  %i.htm = add nsw i64 %.1.i37.i180.i877, 1       ; 2 uses
  %i.htn = shl nsw i64 %i.htm, 3
  %i.hto = getelementptr inbounds i8, ptr %i.hrf, i64 %i.htn
  %i.htp = getelementptr inbounds [8 x i8], ptr %i.hrn, i64 %i.htm
  %i.htq = load i64, ptr %i.htp, align 8, !tbaa !130, !noalias !672
  %i.htr = shl i64 %i.htq, 3
  %i.hts = getelementptr inbounds nuw i8, ptr %i.hre, i64 %i.htr
  %i.htt = load i64, ptr %i.hts, align 1, !noalias !672
  store i64 %i.htt, ptr %i.hto, align 1, !noalias !672
  %i.htu = add nsw i64 %.1.i37.i180.i877, 2       ; 3 uses
  %niter3441.next.1 = add i64 %niter3441, 2       ; 2 uses
  %niter3441.ncmp.1 = icmp eq i64 %niter3441.next.1, %unroll_iter3440
  br i1 %niter3441.ncmp.1, label %.loopexit.i167.i864.loopexit3222.unr-lcssa, label %.lr.ph39.i178.i875, !llvm.loop !675

bb.ajq:                                           ; preds = %bb.ajo
  %i.htv = icmp sgt i32 %i.hsz, 0
  %i.htw = sext i16 %.sroa.0.0.extract.trunc.i.i158.i855 to i64 ; 2 uses
  br i1 %i.htv, label %.preheader30.i170.i867, label %.loopexit.sink.split.i164.i861

.preheader30.i170.i867:                           ; preds = %bb.ajq
  %i.htx = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i855, 0
  br i1 %i.htx, label %.lr.ph36.i171.i868, label %.loopexit.i167.i864

.lr.ph36.i171.i868:                               ; preds = %.preheader30.i170.i867, %bb.ajy
  %.079.i35.i172.i869 = phi i64 [ %i.hvh, %bb.ajy ], [ 0, %.preheader30.i170.i867 ]
  %.2.i34.i173.i870 = phi i64 [ %i.hvg, %bb.ajy ], [ %.081.i54.i156.i853, %.preheader30.i170.i867 ] ; 10 uses
  %i.hty = load ptr, ptr %i.hrk, align 8, !tbaa !66, !noalias !672 ; 2 uses
  %.not.i21.i174.i871 = icmp eq ptr %i.hty, null
  br i1 %.not.i21.i174.i871, label %bb.ajs, label %bb.ajr

bb.ajr:                                           ; preds = %.lr.ph36.i171.i868
  %i.htz = load i64, ptr %i.hri, align 8, !tbaa !99, !noalias !672
  %i.hua = add nsw i64 %i.htz, %.2.i34.i173.i870  ; 2 uses
  %i.hub = lshr i64 %i.hua, 3
  %i.huc = getelementptr inbounds nuw i8, ptr %i.hty, i64 %i.hub
  %i.hud = load i8, ptr %i.huc, align 1, !tbaa !98, !noalias !672
  %i.hue = trunc i64 %i.hua to i8
  %i.huf = and i8 %i.hue, 7
  %i.hug = lshr i8 %i.hud, %i.huf
  %i.huh = trunc i8 %i.hug to i1
  br i1 %i.huh, label %bb.ajw, label %bb.ajx

bb.ajs:                                           ; preds = %.lr.ph36.i171.i868
  %i.hui = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !672
  %i.huj = getelementptr inbounds nuw i8, ptr %i.hui, i64 40
  %i.huk = load i32, ptr %i.huj, align 8, !tbaa !42, !noalias !672
  switch i32 %i.huk, label %bb.ajv [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i176.i873
    i32 28, label %bb.ajt
    i32 38, label %bb.aju
  ]

bb.ajt:                                           ; preds = %bb.ajs
  %i.hul = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i173.i870), !noalias !672
  br i1 %i.hul, label %bb.ajx, label %bb.ajw

bb.aju:                                           ; preds = %bb.ajs
  %i.hum = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i173.i870), !noalias !672
  br i1 %i.hum, label %bb.ajx, label %bb.ajw

bb.ajv:                                           ; preds = %bb.ajs
  %i.hun = load i64, ptr %i.hsq, align 8, !tbaa !71, !noalias !672
end_hunk_16
begin_hunk_17_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  br i1 %exitcond66.not.i203.i900, label %.loopexit.i167.i864, label %.lr.ph50.i197.i894, !llvm.loop !677

bb.aki:                                           ; preds = %bb.ajz
  %i.hwz = icmp sgt i32 %i.hvi, 0
  %i.hxa = sext i16 %.sroa.0.0.extract.trunc.i.i158.i855 to i64 ; 2 uses
  br i1 %i.hwz, label %.preheader27.i183.i880, label %.loopexit.sink.split.i164.i861

.preheader27.i183.i880:                           ; preds = %bb.aki
  %i.hxb = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i855, 0
  br i1 %i.hxb, label %.lr.ph44.i184.i881, label %.loopexit.i167.i864

.lr.ph44.i184.i881:                               ; preds = %.preheader27.i183.i880, %bb.akw
  %.0.i43.i185.i882 = phi i64 [ %i.hzf, %bb.akw ], [ 0, %.preheader27.i183.i880 ]
  %.4.i42.i186.i883 = phi i64 [ %i.hze, %bb.akw ], [ %.081.i54.i156.i853, %.preheader27.i183.i880 ] ; 10 uses
  %.385.i41.i187.i884 = phi i64 [ %.486.i.i189.i886, %bb.akw ], [ %.082.i53.i157.i854, %.preheader27.i183.i880 ] ; 2 uses
  %i.hxc = load ptr, ptr %i.hrk, align 8, !tbaa !66, !noalias !672 ; 2 uses
  %.not.i26.i188.i885 = icmp eq ptr %i.hxc, null
  br i1 %.not.i26.i188.i885, label %bb.akk, label %bb.akj

bb.akj:                                           ; preds = %.lr.ph44.i184.i881
  %i.hxd = load i64, ptr %i.hri, align 8, !tbaa !99, !noalias !672
  %i.hxe = add nsw i64 %i.hxd, %.4.i42.i186.i883  ; 2 uses
  %i.hxf = lshr i64 %i.hxe, 3
  %i.hxg = getelementptr inbounds nuw i8, ptr %i.hxc, i64 %i.hxf
  %i.hxh = load i8, ptr %i.hxg, align 1, !tbaa !98, !noalias !672
  %i.hxi = trunc i64 %i.hxe to i8
  %i.hxj = and i8 %i.hxi, 7
  %i.hxk = lshr i8 %i.hxh, %i.hxj
  %i.hxl = trunc i8 %i.hxk to i1
  br i1 %i.hxl, label %bb.ako, label %bb.akv

bb.akk:                                           ; preds = %.lr.ph44.i184.i881
  %i.hxm = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !672
  %i.hxn = getelementptr inbounds nuw i8, ptr %i.hxm, i64 40
  %i.hxo = load i32, ptr %i.hxn, align 8, !tbaa !42, !noalias !672
  switch i32 %i.hxo, label %bb.akn [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i891
    i32 28, label %bb.akl
    i32 38, label %bb.akm
  ]

bb.akl:                                           ; preds = %bb.akk
  %i.hxp = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i883), !noalias !672
  br i1 %i.hxp, label %bb.akv, label %bb.ako

bb.akm:                                           ; preds = %bb.akk
  %i.hxq = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i883), !noalias !672
  br i1 %i.hxq, label %bb.akv, label %bb.ako

bb.akn:                                           ; preds = %bb.akk
  %i.hxr = load i64, ptr %i.hsq, align 8, !tbaa !71, !noalias !672
  %i.hxs = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !672
  %.not24.i195.i892 = icmp eq i64 %i.hxr, %i.hxs
  br i1 %.not24.i195.i892, label %bb.akv, label %bb.ako

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i891:  ; preds = %bb.akk
  %i.hxt = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i883), !noalias !672
  br i1 %i.hxt, label %bb.akv, label %bb.ako

bb.ako:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i891, %bb.akn, %bb.akm, %bb.akl, %bb.akj
  %i.hxu = getelementptr inbounds [8 x i8], ptr %i.hrn, i64 %.4.i42.i186.i883 ; 2 uses
  %i.hxv = load i64, ptr %i.hxu, align 8, !tbaa !130, !noalias !672 ; 4 uses
  %i.hxw = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !672 ; 2 uses
  %.not.i29.i191.i888 = icmp eq ptr %i.hxw, null
  br i1 %.not.i29.i191.i888, label %bb.akq, label %bb.akp

bb.akp:                                           ; preds = %bb.ako
  %i.hxx = load i64, ptr %i.hsr, align 8, !tbaa !99, !noalias !672
  %i.hxy = add nsw i64 %i.hxx, %i.hxv             ; 2 uses
  %i.hxz = lshr i64 %i.hxy, 3
  %i.hya = getelementptr inbounds nuw i8, ptr %i.hxw, i64 %i.hxz
  %i.hyb = load i8, ptr %i.hya, align 1, !tbaa !98, !noalias !672
  %i.hyc = trunc i64 %i.hxy to i8
  %i.hyd = and i8 %i.hyc, 7
  %i.hye = lshr i8 %i.hyb, %i.hyd
  %i.hyf = trunc i8 %i.hye to i1
  br i1 %i.hyf, label %bb.aku, label %bb.akv

bb.akq:                                           ; preds = %bb.ako
  %i.hyg = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !672
  %i.hyh = getelementptr inbounds nuw i8, ptr %i.hyg, i64 40
  %i.hyi = load i32, ptr %i.hyh, align 8, !tbaa !42, !noalias !672
  switch i32 %i.hyi, label %bb.akt [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i889
    i32 28, label %bb.akr
    i32 38, label %bb.aks
  ]

bb.akr:                                           ; preds = %bb.akq
  %i.hyj = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hxv), !noalias !672
  br i1 %i.hyj, label %bb.akv, label %bb.aku

bb.aks:                                           ; preds = %bb.akq
  %i.hyk = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hxv), !noalias !672
  br i1 %i.hyk, label %bb.akv, label %bb.aku

bb.akt:                                           ; preds = %bb.akq
  %i.hyl = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !672
  %i.hym = load i64, ptr %i.hrg, align 8, !tbaa !62, !noalias !672
  %.not25.i193.i890 = icmp eq i64 %i.hyl, %i.hym
  br i1 %.not25.i193.i890, label %bb.akv, label %bb.aku

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i889:  ; preds = %bb.akq
  %i.hyn = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.hxv), !noalias !672
  br i1 %i.hyn, label %bb.akv, label %bb.aku

bb.aku:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i889, %bb.akt, %bb.aks, %bb.akr, %bb.akp
  %i.hyo = shl nsw i64 %.4.i42.i186.i883, 3
  %i.hyp = getelementptr inbounds i8, ptr %i.hrf, i64 %i.hyo
  %i.hyq = load i64, ptr %i.hxu, align 8, !tbaa !130, !noalias !672
  %i.hyr = shl i64 %i.hyq, 3
  %i.hys = getelementptr inbounds nuw i8, ptr %i.hre, i64 %i.hyr
  %i.hyt = load i64, ptr %i.hys, align 1, !noalias !672
  store i64 %i.hyt, ptr %i.hyp, align 1, !noalias !672
  %i.hyu = srem i64 %.4.i42.i186.i883, 8
  %i.hyv = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.hyu
  %i.hyw = load i8, ptr %i.hyv, align 1, !tbaa !98, !noalias !672
  %i.hyx = sdiv i64 %.4.i42.i186.i883, 8
  %i.hyy = getelementptr inbounds i8, ptr %.0.i.i.i153.i850, i64 %i.hyx ; 2 uses
  %i.hyz = load i8, ptr %i.hyy, align 1, !tbaa !98, !noalias !672
  %i.hza = or i8 %i.hyz, %i.hyw
  store i8 %i.hza, ptr %i.hyy, align 1, !tbaa !98, !noalias !672
  %i.hzb = add nsw i64 %.385.i41.i187.i884, 1
  br label %bb.akw

bb.akv:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i889, %bb.akt, %bb.aks, %bb.akr, %bb.akp, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i891, %bb.akn, %bb.akm, %bb.akl, %bb.akj
  %i.hzc = shl nsw i64 %.4.i42.i186.i883, 3
  %i.hzd = getelementptr inbounds i8, ptr %i.hrf, i64 %i.hzc
  store i64 0, ptr %i.hzd, align 1, !noalias !672
  br label %bb.akw

bb.akw:                                           ; preds = %bb.akv, %bb.aku
  %.486.i.i189.i886 = phi i64 [ %i.hzb, %bb.aku ], [ %.385.i41.i187.i884, %bb.akv ] ; 2 uses
  %i.hze = add nsw i64 %.4.i42.i186.i883, 1       ; 2 uses
  %i.hzf = add nuw nsw i64 %.0.i43.i185.i882, 1   ; 2 uses
  %exitcond65.not.i190.i887 = icmp eq i64 %i.hzf, %i.hxa
  br i1 %exitcond65.not.i190.i887, label %.loopexit.i167.i864, label %.lr.ph44.i184.i881, !llvm.loop !678

.loopexit.sink.split.i164.i861:                   ; preds = %bb.aki, %bb.ajq
  %.sink86.i165.i862 = phi i64 [ %i.htw, %bb.ajq ], [ %i.hxa, %bb.aki ] ; 2 uses
  %.587.i.ph.i166.i863 = phi i64 [ %i.hsy, %bb.ajq ], [ %.082.i53.i157.i854, %bb.aki ]
  %i.hzg = shl nsw i64 %.081.i54.i156.i853, 3
  %i.hzh = getelementptr inbounds i8, ptr %i.hrf, i64 %i.hzg
  %i.hzi = shl nsw i64 %.sink86.i165.i862, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.hzh, i8 0, i64 %i.hzi, i1 false), !noalias !672
  %i.hzj = add nsw i64 %.sink86.i165.i862, %.081.i54.i156.i853
  br label %.loopexit.i167.i864

.loopexit.i167.i864.loopexit3222.unr-lcssa:       ; preds = %.lr.ph39.i178.i875
  %i.hzk = and i16 %.sroa.0.0.extract.trunc.i.i158.i855, 1
  %lcmp.mod3437.not = icmp eq i16 %i.hzk, 0
  br i1 %lcmp.mod3437.not, label %.loopexit.i167.i864, label %.lr.ph39.i178.i875.epil.preheader

.lr.ph39.i178.i875.epil.preheader:                ; preds = %.loopexit.i167.i864.loopexit3222.unr-lcssa, %.lr.ph39.i178.i875.preheader
  %.1.i37.i180.i877.epil.init = phi i64 [ %.081.i54.i156.i853, %.lr.ph39.i178.i875.preheader ], [ %i.htu, %.loopexit.i167.i864.loopexit3222.unr-lcssa ] ; 3 uses
  %lcmp.mod3439 = trunc i32 %i.hss to i1
  call void @llvm.assume(i1 %lcmp.mod3439)
  %i.hzl = shl nsw i64 %.1.i37.i180.i877.epil.init, 3
  %i.hzm = getelementptr inbounds i8, ptr %i.hrf, i64 %i.hzl
  %i.hzn = getelementptr inbounds [8 x i8], ptr %i.hrn, i64 %.1.i37.i180.i877.epil.init
  %i.hzo = load i64, ptr %i.hzn, align 8, !tbaa !130, !noalias !672
  %i.hzp = shl i64 %i.hzo, 3
  %i.hzq = getelementptr inbounds nuw i8, ptr %i.hre, i64 %i.hzp
  %i.hzr = load i64, ptr %i.hzq, align 1, !noalias !672
  store i64 %i.hzr, ptr %i.hzm, align 1, !noalias !672
  %i.hzs = add nsw i64 %.1.i37.i180.i877.epil.init, 1
  br label %.loopexit.i167.i864

.loopexit.i167.i864:                              ; preds = %bb.ajy, %.lr.ph39.i178.i875.epil.preheader, %.loopexit.i167.i864.loopexit3222.unr-lcssa, %bb.akw, %bb.akh, %.loopexit.sink.split.i164.i861, %.preheader27.i183.i880, %.preheader.i196.i893, %.preheader30.i170.i867, %bb.ajp
  %.587.i.i168.i865 = phi i64 [ %.587.i.ph.i166.i863, %.loopexit.sink.split.i164.i861 ], [ %i.hsy, %bb.ajp ], [ %.486.i.i189.i886, %bb.akw ], [ %i.hsy, %.lr.ph39.i178.i875.epil.preheader ], [ %i.hsy, %.preheader30.i170.i867 ], [ %.082.i53.i157.i854, %.preheader.i196.i893 ], [ %.082.i53.i157.i854, %.preheader27.i183.i880 ], [ %.284.i.i202.i899, %bb.akh ], [ %i.hsy, %.loopexit.i167.i864.loopexit3222.unr-lcssa ], [ %i.hsy, %bb.ajy ] ; 2 uses
  %.5.i.i169.i866 = phi i64 [ %i.hzj, %.loopexit.sink.split.i164.i861 ], [ %.081.i54.i156.i853, %bb.ajp ], [ %i.hze, %bb.akw ], [ %i.hzs, %.lr.ph39.i178.i875.epil.preheader ], [ %.081.i54.i156.i853, %.preheader30.i170.i867 ], [ %.081.i54.i156.i853, %.preheader.i196.i893 ], [ %.081.i54.i156.i853, %.preheader27.i183.i880 ], [ %i.hwx, %bb.akh ], [ %i.htu, %.loopexit.i167.i864.loopexit3222.unr-lcssa ], [ %i.hvg, %bb.ajy ] ; 2 uses
  %i.hzt = icmp slt i64 %.5.i.i169.i866, %i.hrh
  br i1 %i.hzt, label %bb.ajn, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !679

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i167.i864, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i849
  %.082.i.lcssa.i154.i851 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i849 ], [ %.587.i.i168.i865, %.loopexit.i167.i864 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24, !noalias !672
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i845:                                 ; preds = %.lr.ph.i148.i845, %.lr.ph.i148.i845.preheader.new
  %.0.i1833.i149.i846 = phi i64 [ 0, %.lr.ph.i148.i845.preheader.new ], [ %i.iaj, %.lr.ph.i148.i845 ] ; 4 uses
  %niter3435 = phi i64 [ 0, %.lr.ph.i148.i845.preheader.new ], [ %niter3435.next.1, %.lr.ph.i148.i845 ]
  %i.hzu = shl nuw nsw i64 %.0.i1833.i149.i846, 3
  %i.hzv = getelementptr inbounds nuw i8, ptr %i.hrf, i64 %i.hzu
  %i.hzw = getelementptr inbounds nuw [8 x i8], ptr %i.hrn, i64 %.0.i1833.i149.i846
  %i.hzx = load i64, ptr %i.hzw, align 8, !tbaa !130, !noalias !672
  %i.hzy = shl i64 %i.hzx, 3
  %i.hzz = getelementptr inbounds nuw i8, ptr %i.hre, i64 %i.hzy
  %i.iaa = load i64, ptr %i.hzz, align 1, !noalias !672
  store i64 %i.iaa, ptr %i.hzv, align 1, !noalias !672
  %i.iab = or disjoint i64 %.0.i1833.i149.i846, 1 ; 2 uses
  %i.iac = shl nuw nsw i64 %i.iab, 3
  %i.iad = getelementptr inbounds nuw i8, ptr %i.hrf, i64 %i.iac
  %i.iae = getelementptr inbounds nuw [8 x i8], ptr %i.hrn, i64 %i.iab
  %i.iaf = load i64, ptr %i.iae, align 8, !tbaa !130, !noalias !672
  %i.iag = shl i64 %i.iaf, 3
  %i.iah = getelementptr inbounds nuw i8, ptr %i.hre, i64 %i.iag
  %i.iai = load i64, ptr %i.iah, align 1, !noalias !672
  store i64 %i.iai, ptr %i.iad, align 1, !noalias !672
  %i.iaj = add nuw nsw i64 %.0.i1833.i149.i846, 2 ; 2 uses
  %niter3435.next.1 = add nuw nsw i64 %niter3435, 2 ; 2 uses
  %niter3435.ncmp.1 = icmp eq i64 %niter3435.next.1, %unroll_iter3434
  br i1 %niter3435.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, label %.lr.ph.i148.i845, !llvm.loop !680

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i148.i845
  %lcmp.mod3432.not = icmp eq i64 %xtraiter3431, 0
  br i1 %lcmp.mod3432.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i148.i845.epil.preheader

.lr.ph.i148.i845.epil.preheader:                  ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.lr.ph.i148.i845.preheader
  %.0.i1833.i149.i846.epil.init = phi i64 [ 0, %.lr.ph.i148.i845.preheader ], [ %i.iaj, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3433 = trunc i64 %i.hrh to i1
  call void @llvm.assume(i1 %lcmp.mod3433)
  %i.iak = shl nuw nsw i64 %.0.i1833.i149.i846.epil.init, 3
  %i.ial = getelementptr inbounds nuw i8, ptr %i.hrf, i64 %i.iak
  %i.iam = getelementptr inbounds nuw [8 x i8], ptr %i.hrn, i64 %.0.i1833.i149.i846.epil.init
  %i.ian = load i64, ptr %i.iam, align 8, !tbaa !130, !noalias !672
  %i.iao = shl i64 %i.ian, 3
  %i.iap = getelementptr inbounds nuw i8, ptr %i.hre, i64 %i.iao
  %i.iaq = load i64, ptr %i.iap, align 1, !noalias !672
  store i64 %i.iaq, ptr %i.ial, align 1, !noalias !672
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3235.unr-lcssa: ; preds = %.lr.ph.i.i784
  %lcmp.mod3421.not = icmp eq i64 %xtraiter3420, 0
  br i1 %lcmp.mod3421.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i.i784.epil.preheader

.lr.ph.i.i784.epil.preheader:                     ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3235.unr-lcssa, %.lr.ph.i.i784.preheader
  %.0.i1833.i.i785.epil.init = phi i64 [ 0, %.lr.ph.i.i784.preheader ], [ %i.gwz, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3235.unr-lcssa ] ; 2 uses
  %lcmp.mod3422 = trunc i64 %i.gnn to i1
  call void @llvm.assume(i1 %lcmp.mod3422)
  %i.iar = shl nuw nsw i64 %.0.i1833.i.i785.epil.init, 3
  %i.ias = getelementptr inbounds nuw i8, ptr %i.gnl, i64 %i.iar
  %i.iat = getelementptr inbounds nuw i8, ptr %i.gnt, i64 %.0.i1833.i.i785.epil.init
  %i.iau = load i8, ptr %i.iat, align 1, !tbaa !98, !noalias !645
  %i.iav = zext i8 %i.iau to i64
  %i.iaw = shl nuw nsw i64 %i.iav, 3
  %i.iax = getelementptr inbounds nuw i8, ptr %i.gnk, i64 %i.iaw
  %i.iay = load i64, ptr %i.iax, align 1, !noalias !645
  store i64 %i.iay, ptr %i.ias, align 1, !noalias !645
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3243.unr-lcssa: ; preds = %.lr.ph.i24.i723
  %lcmp.mod3410.not = icmp eq i64 %xtraiter3409, 0
  br i1 %lcmp.mod3410.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i24.i723.epil.preheader

.lr.ph.i24.i723.epil.preheader:                   ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3243.unr-lcssa, %.lr.ph.i24.i723.preheader
  %.0.i1833.i25.i724.epil.init = phi i64 [ 0, %.lr.ph.i24.i723.preheader ], [ %i.hgx, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3243.unr-lcssa ] ; 2 uses
  %lcmp.mod3411 = trunc i64 %i.gxl to i1
  call void @llvm.assume(i1 %lcmp.mod3411)
  %i.iaz = shl nuw nsw i64 %.0.i1833.i25.i724.epil.init, 3
  %i.iba = getelementptr inbounds nuw i8, ptr %i.gxj, i64 %i.iaz
  %i.ibb = getelementptr inbounds nuw [2 x i8], ptr %i.gxr, i64 %.0.i1833.i25.i724.epil.init
  %i.ibc = load i16, ptr %i.ibb, align 2, !tbaa !269, !noalias !654
  %i.ibd = zext i16 %i.ibc to i64
  %i.ibe = shl nuw nsw i64 %i.ibd, 3
  %i.ibf = getelementptr inbounds nuw i8, ptr %i.gxi, i64 %i.ibe
  %i.ibg = load i64, ptr %i.ibf, align 1, !noalias !654
  store i64 %i.ibg, ptr %i.iba, align 1, !noalias !654
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3251.unr-lcssa: ; preds = %.lr.ph.i86.i662
  %lcmp.mod3399.not = icmp eq i64 %xtraiter3398, 0
  br i1 %lcmp.mod3399.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i86.i662.epil.preheader

.lr.ph.i86.i662.epil.preheader:                   ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3251.unr-lcssa, %.lr.ph.i86.i662.preheader
  %.0.i1833.i87.i663.epil.init = phi i64 [ 0, %.lr.ph.i86.i662.preheader ], [ %i.hqv, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3251.unr-lcssa ] ; 2 uses
  %lcmp.mod3400 = trunc i64 %i.hhj to i1
  call void @llvm.assume(i1 %lcmp.mod3400)
  %i.ibh = shl nuw nsw i64 %.0.i1833.i87.i663.epil.init, 3
  %i.ibi = getelementptr inbounds nuw i8, ptr %i.hhh, i64 %i.ibh
  %i.ibj = getelementptr inbounds nuw [4 x i8], ptr %i.hhp, i64 %.0.i1833.i87.i663.epil.init
  %i.ibk = load i32, ptr %i.ibj, align 4, !tbaa !3, !noalias !663
  %i.ibl = shl i32 %i.ibk, 3
  %i.ibm = zext i32 %i.ibl to i64
  %i.ibn = getelementptr inbounds nuw i8, ptr %i.hhg, i64 %i.ibm
  %i.ibo = load i64, ptr %i.ibn, align 1, !noalias !663
  store i64 %i.ibo, ptr %i.ibi, align 1, !noalias !663
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit: ; preds = %.lr.ph.i86.i662.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3251.unr-lcssa, %.lr.ph.i24.i723.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3243.unr-lcssa, %.lr.ph.i.i784.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3235.unr-lcssa, %.lr.ph.i148.i845.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.preheader32.i.i783, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i22.i722, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i84.i660, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i146.i844, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i
  %.0.i147.sink.i661 = phi i64 [ %i.gxl, %.lr.ph.i24.i723.epil.preheader ], [ %i.gnn, %.lr.ph.i.i784.epil.preheader ], [ %i.hrh, %.lr.ph.i148.i845.epil.preheader ], [ %.082.i.lcssa.i.i790, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.gnn, %.preheader32.i.i783 ], [ %.082.i.lcssa.i30.i729, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.gxl, %.preheader32.i22.i722 ], [ %.082.i.lcssa.i92.i668, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.hhj, %.preheader32.i84.i660 ], [ %.082.i.lcssa.i154.i851, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi64EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.hrh, %.preheader32.i146.i844 ], [ %i.hrh, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ], [ %i.gnn, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3235.unr-lcssa ], [ %i.gxl, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3243.unr-lcssa ], [ %i.hhj, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3251.unr-lcssa ], [ %i.hhj, %.lr.ph.i86.i662.epil.preheader ]
  %i.ibp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ibq = load i64, ptr %i.ibp, align 8, !tbaa !178, !noalias !641
  %i.ibr = sub nsw i64 %i.ibq, %.0.i147.sink.i661
  %i.ibs = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store atomic i64 %i.ibr, ptr %i.ibs seq_cst, align 8, !noalias !641
  store ptr null, ptr %0, align 8, !tbaa !113, !alias.scope !641
  br label %.critedge69

bb.akx:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit83
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %i.ibt = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !681 ; 2 uses
  %i.ibu = load ptr, ptr %i.ibt, align 8, !tbaa !90, !noalias !681
  %i.ibv = getelementptr inbounds nuw i8, ptr %i.ibu, i64 64
  %i.ibw = load ptr, ptr %i.ibv, align 8, !noalias !681
  %i.ibx = call noundef i32 %i.ibw(ptr noundef nonnull align 8 dereferenceable(72) %i.ibt), !noalias !681, !inline_history !684
  %i.iby = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !681
  %.not.i.i144.i1087 = icmp ne i64 %i.iby, 0
  %i.ibz = load ptr, ptr %i.v, align 8, !noalias !681
  %i.ica = icmp ne ptr %i.ibz, null
  %i.icb = select i1 %.not.i.i144.i1087, i1 %i.ica, i1 false ; 4 uses
  switch i32 %i.ibx, label %bb.apr [
    i32 1, label %bb.aky
    i32 2, label %bb.amn
    i32 4, label %bb.aoc
  ]

bb.aky:                                           ; preds = %bb.akx
  br i1 %i.icb, label %bb.ala, label %bb.akz

bb.akz:                                           ; preds = %bb.aky
  %i.icc = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.icd = load i64, ptr %i.icc, align 8, !tbaa !71, !noalias !685
  %.not.i19.i.i1027 = icmp ne i64 %i.icd, 0
  %i.ice = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.icf = load ptr, ptr %i.ice, align 8, !noalias !685
  %i.icg = icmp ne ptr %i.icf, null
  %i.ich = select i1 %.not.i19.i.i1027, i1 %i.icg, i1 false
  br label %bb.ala

bb.ala:                                           ; preds = %bb.akz, %bb.aky
  %i.ici = phi i1 [ true, %bb.aky ], [ %i.ich, %bb.akz ]
  %i.icj = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !685
  %i.ick = extractvalue { i32, ptr } %i.icj, 1    ; 9 uses
  %i.icl = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !685 ; 13 uses
  %i.icm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.icn = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !685 ; 11 uses
  %i.ico = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.icp = load i64, ptr %i.ico, align 8, !tbaa !99, !noalias !685
  %i.icq = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.icr = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ics = load ptr, ptr %i.icr, align 8, !tbaa !66, !noalias !685
  %i.ict = getelementptr inbounds i8, ptr %i.ics, i64 %i.icp ; 9 uses
  br i1 %i.ici, label %bb.alb, label %.preheader32.i.i1028

.preheader32.i.i1028:                             ; preds = %bb.ala
  %i.icu = icmp sgt i64 %i.icn, 0
  br i1 %i.icu, label %.lr.ph.i.i1029.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i1029.preheader:                         ; preds = %.preheader32.i.i1028
  %xtraiter3376 = and i64 %i.icn, 1
  %i.icv = icmp eq i64 %i.icn, 1
  br i1 %i.icv, label %.lr.ph.i.i1029.epil.preheader, label %.lr.ph.i.i1029.preheader.new

.lr.ph.i.i1029.preheader.new:                     ; preds = %.lr.ph.i.i1029.preheader
  %unroll_iter3379 = and i64 %i.icn, 9223372036854775806
  br label %.lr.ph.i.i1029

bb.alb:                                           ; preds = %bb.ala
  %i.icw = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.icx = load ptr, ptr %i.icw, align 8, !tbaa !171, !noalias !685
  %i.icy = load ptr, ptr %i.icx, align 8, !tbaa !306, !noalias !685 ; 4 uses
  %.not.i.i.i.i1032 = icmp eq ptr %i.icy, null
  br i1 %.not.i.i.i.i1032, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1033, label %bb.alc

bb.alc:                                           ; preds = %bb.alb
  %i.icz = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ida = load i64, ptr %i.icz, align 8, !tbaa !438, !noalias !685
  %i.idb = getelementptr inbounds nuw i8, ptr %i.icy, i64 9
  %i.idc = load i8, ptr %i.idb, align 1, !tbaa !439, !range !127, !noalias !685, !noundef !128
  %i.idd = trunc nuw i8 %i.idc to i1
  %i.ide = getelementptr inbounds nuw i8, ptr %i.icy, i64 8
  %i.idf = load i8, ptr %i.ide, align 8, !range !127, !noalias !685
  %i.idg = trunc nuw i8 %i.idf to i1
  %i.idh = select i1 %i.idd, i1 %i.idg, i1 false, !prof !117
  %i.idi = getelementptr inbounds nuw i8, ptr %i.icy, i64 16
  %i.idj = load ptr, ptr %i.idi, align 8, !noalias !685
  %i.idk = select i1 %i.idh, ptr %i.idj, ptr null, !prof !117
  %i.idl = getelementptr inbounds i8, ptr %i.idk, i64 %i.ida
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1033

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1033: ; preds = %bb.alc, %bb.alb
  %.0.i.i.i.i1034 = phi ptr [ %i.idl, %bb.alc ], [ null, %bb.alb ] ; 5 uses
  %i.idm = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.idn = load i64, ptr %i.idm, align 8, !tbaa !178, !noalias !685 ; 2 uses
  %i.ido = ashr i64 %i.idn, 3
  %i.idp = and i64 %i.idn, 7
  %i.idq = icmp ne i64 %i.idp, 0
  %i.idr = zext i1 %i.idq to i64
  %i.ids = add nsw i64 %i.ido, %i.idr
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i.i1034, i8 0, i64 %i.ids, i1 false), !noalias !685
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24, !noalias !685
  %i.idt = load ptr, ptr %i.icq, align 8, !tbaa !66, !noalias !685
  %i.idu = load i64, ptr %i.ico, align 8, !tbaa !99, !noalias !685
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.idt, i64 noundef %i.idu, i64 noundef %i.icn), !noalias !685
  %i.idv = icmp sgt i64 %i.icn, 0
  br i1 %i.idv, label %.lr.ph55.i.i1036, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i.i1036:                                 ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1033
  %i.idw = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.ald

bb.ald:                                           ; preds = %.loopexit.i.i1048, %.lr.ph55.i.i1036
  %.081.i54.i.i1037 = phi i64 [ 0, %.lr.ph55.i.i1036 ], [ %.5.i.i.i1050, %.loopexit.i.i1048 ] ; 12 uses
  %.082.i53.i.i1038 = phi i64 [ 0, %.lr.ph55.i.i1036 ], [ %.587.i.i.i1049, %.loopexit.i.i1048 ] ; 6 uses
  %i.idy = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %15), !noalias !685 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i.i1039 = trunc i32 %i.idy to i16 ; 10 uses
  %i.idz = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !685
  %.not.i20.i.i1040 = icmp ne i64 %i.idz, 0
  %i.iea = load ptr, ptr %i.v, align 8, !noalias !685
end_hunk_17
begin_hunk_18_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a

bb.aly:                                           ; preds = %bb.alp
  %i.iig = icmp sgt i32 %i.igo, 0
  %i.iih = sext i16 %.sroa.0.0.extract.trunc.i.i.i1039 to i64 ; 2 uses
  br i1 %i.iig, label %.preheader27.i.i1064, label %.loopexit.sink.split.i.i1045

.preheader27.i.i1064:                             ; preds = %bb.aly
  %i.iii = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i1039, 0
  br i1 %i.iii, label %.lr.ph44.i.i1065, label %.loopexit.i.i1048

.lr.ph44.i.i1065:                                 ; preds = %.preheader27.i.i1064, %bb.amm
  %.0.i43.i.i1066 = phi i64 [ %i.ikn, %bb.amm ], [ 0, %.preheader27.i.i1064 ]
  %.4.i42.i.i1067 = phi i64 [ %i.ikm, %bb.amm ], [ %.081.i54.i.i1037, %.preheader27.i.i1064 ] ; 10 uses
  %.385.i41.i.i1068 = phi i64 [ %.486.i.i.i1070, %bb.amm ], [ %.082.i53.i.i1038, %.preheader27.i.i1064 ] ; 2 uses
  %i.iij = load ptr, ptr %i.icq, align 8, !tbaa !66, !noalias !685 ; 2 uses
  %.not.i26.i.i1069 = icmp eq ptr %i.iij, null
  br i1 %.not.i26.i.i1069, label %bb.ama, label %bb.alz

bb.alz:                                           ; preds = %.lr.ph44.i.i1065
  %i.iik = load i64, ptr %i.ico, align 8, !tbaa !99, !noalias !685
  %i.iil = add nsw i64 %i.iik, %.4.i42.i.i1067    ; 2 uses
  %i.iim = lshr i64 %i.iil, 3
  %i.iin = getelementptr inbounds nuw i8, ptr %i.iij, i64 %i.iim
  %i.iio = load i8, ptr %i.iin, align 1, !tbaa !98, !noalias !685
  %i.iip = trunc i64 %i.iil to i8
  %i.iiq = and i8 %i.iip, 7
  %i.iir = lshr i8 %i.iio, %i.iiq
  %i.iis = trunc i8 %i.iir to i1
  br i1 %i.iis, label %bb.ame, label %bb.aml

bb.ama:                                           ; preds = %.lr.ph44.i.i1065
  %i.iit = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !685
  %i.iiu = getelementptr inbounds nuw i8, ptr %i.iit, i64 40
  %i.iiv = load i32, ptr %i.iiu, align 8, !tbaa !42, !noalias !685
  switch i32 %i.iiv, label %bb.amd [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1075
    i32 28, label %bb.amb
    i32 38, label %bb.amc
  ]

bb.amb:                                           ; preds = %bb.ama
  %i.iiw = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i1067), !noalias !685
  br i1 %i.iiw, label %bb.aml, label %bb.ame

bb.amc:                                           ; preds = %bb.ama
  %i.iix = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i1067), !noalias !685
  br i1 %i.iix, label %bb.aml, label %bb.ame

bb.amd:                                           ; preds = %bb.ama
  %i.iiy = load i64, ptr %i.idw, align 8, !tbaa !71, !noalias !685
  %i.iiz = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !685
  %.not24.i.i1076 = icmp eq i64 %i.iiy, %i.iiz
  br i1 %.not24.i.i1076, label %bb.aml, label %bb.ame

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1075:    ; preds = %bb.ama
  %i.ija = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i1067), !noalias !685
  br i1 %i.ija, label %bb.aml, label %bb.ame

bb.ame:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1075, %bb.amd, %bb.amc, %bb.amb, %bb.alz
  %i.ijb = getelementptr inbounds i8, ptr %i.ict, i64 %.4.i42.i.i1067 ; 2 uses
  %i.ijc = load i8, ptr %i.ijb, align 1, !tbaa !98, !noalias !685
  %i.ijd = zext i8 %i.ijc to i64                  ; 4 uses
  %i.ije = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !685 ; 2 uses
  %.not.i29.i.i1072 = icmp eq ptr %i.ije, null
  br i1 %.not.i29.i.i1072, label %bb.amg, label %bb.amf

bb.amf:                                           ; preds = %bb.ame
  %i.ijf = load i64, ptr %i.idx, align 8, !tbaa !99, !noalias !685
  %i.ijg = add nsw i64 %i.ijf, %i.ijd             ; 2 uses
  %i.ijh = lshr i64 %i.ijg, 3
  %i.iji = getelementptr inbounds nuw i8, ptr %i.ije, i64 %i.ijh
  %i.ijj = load i8, ptr %i.iji, align 1, !tbaa !98, !noalias !685
  %i.ijk = trunc i64 %i.ijg to i8
  %i.ijl = and i8 %i.ijk, 7
  %i.ijm = lshr i8 %i.ijj, %i.ijl
  %i.ijn = trunc i8 %i.ijm to i1
  br i1 %i.ijn, label %bb.amk, label %bb.aml

bb.amg:                                           ; preds = %bb.ame
  %i.ijo = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !685
  %i.ijp = getelementptr inbounds nuw i8, ptr %i.ijo, i64 40
  %i.ijq = load i32, ptr %i.ijp, align 8, !tbaa !42, !noalias !685
  switch i32 %i.ijq, label %bb.amj [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1073
    i32 28, label %bb.amh
    i32 38, label %bb.ami
  ]

bb.amh:                                           ; preds = %bb.amg
  %i.ijr = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ijd), !noalias !685
  br i1 %i.ijr, label %bb.aml, label %bb.amk

bb.ami:                                           ; preds = %bb.amg
  %i.ijs = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ijd), !noalias !685
  br i1 %i.ijs, label %bb.aml, label %bb.amk

bb.amj:                                           ; preds = %bb.amg
  %i.ijt = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !685
  %i.iju = load i64, ptr %i.icm, align 8, !tbaa !62, !noalias !685
  %.not25.i.i1074 = icmp eq i64 %i.ijt, %i.iju
  br i1 %.not25.i.i1074, label %bb.aml, label %bb.amk

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1073:    ; preds = %bb.amg
  %i.ijv = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ijd), !noalias !685
  br i1 %i.ijv, label %bb.aml, label %bb.amk

bb.amk:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1073, %bb.amj, %bb.ami, %bb.amh, %bb.amf
  %i.ijw = shl nsw i64 %.4.i42.i.i1067, 4
  %i.ijx = getelementptr inbounds i8, ptr %i.icl, i64 %i.ijw
  %i.ijy = load i8, ptr %i.ijb, align 1, !tbaa !98, !noalias !685
  %i.ijz = zext i8 %i.ijy to i64
  %i.ika = shl nuw nsw i64 %i.ijz, 4
  %i.ikb = getelementptr inbounds nuw i8, ptr %i.ick, i64 %i.ika
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ijx, ptr noundef nonnull align 1 dereferenceable(16) %i.ikb, i64 16, i1 false), !noalias !685
  %i.ikc = srem i64 %.4.i42.i.i1067, 8
  %i.ikd = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ikc
  %i.ike = load i8, ptr %i.ikd, align 1, !tbaa !98, !noalias !685
  %i.ikf = sdiv i64 %.4.i42.i.i1067, 8
  %i.ikg = getelementptr inbounds i8, ptr %.0.i.i.i.i1034, i64 %i.ikf ; 2 uses
  %i.ikh = load i8, ptr %i.ikg, align 1, !tbaa !98, !noalias !685
  %i.iki = or i8 %i.ikh, %i.ike
  store i8 %i.iki, ptr %i.ikg, align 1, !tbaa !98, !noalias !685
  %i.ikj = add nsw i64 %.385.i41.i.i1068, 1
  br label %bb.amm

bb.aml:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1073, %bb.amj, %bb.ami, %bb.amh, %bb.amf, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1075, %bb.amd, %bb.amc, %bb.amb, %bb.alz
  %i.ikk = shl nsw i64 %.4.i42.i.i1067, 4
  %i.ikl = getelementptr inbounds i8, ptr %i.icl, i64 %i.ikk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ikl, i8 0, i64 16, i1 false), !noalias !685
  br label %bb.amm

bb.amm:                                           ; preds = %bb.aml, %bb.amk
  %.486.i.i.i1070 = phi i64 [ %i.ikj, %bb.amk ], [ %.385.i41.i.i1068, %bb.aml ] ; 2 uses
  %i.ikm = add nsw i64 %.4.i42.i.i1067, 1         ; 2 uses
  %i.ikn = add nuw nsw i64 %.0.i43.i.i1066, 1     ; 2 uses
  %exitcond65.not.i.i1071 = icmp eq i64 %i.ikn, %i.iih
  br i1 %exitcond65.not.i.i1071, label %.loopexit.i.i1048, label %.lr.ph44.i.i1065, !llvm.loop !691

.loopexit.sink.split.i.i1045:                     ; preds = %bb.aly, %bb.alg
  %.sink86.i.i1046 = phi i64 [ %i.ifc, %bb.alg ], [ %i.iih, %bb.aly ] ; 2 uses
  %.587.i.ph.i.i1047 = phi i64 [ %i.iee, %bb.alg ], [ %.082.i53.i.i1038, %bb.aly ]
  %i.iko = shl nsw i64 %.081.i54.i.i1037, 4
  %i.ikp = getelementptr inbounds i8, ptr %i.icl, i64 %i.iko
  %i.ikq = shl nsw i64 %.sink86.i.i1046, 4
  call void @llvm.memset.p0.i64(ptr align 1 %i.ikp, i8 0, i64 %i.ikq, i1 false), !noalias !685
  %i.ikr = add nsw i64 %.sink86.i.i1046, %.081.i54.i.i1037
  br label %.loopexit.i.i1048

.loopexit.i.i1048.loopexit3260.unr-lcssa:         ; preds = %.lr.ph39.i.i1059
  %i.iks = and i16 %.sroa.0.0.extract.trunc.i.i.i1039, 1
  %lcmp.mod3382.not = icmp eq i16 %i.iks, 0
  br i1 %lcmp.mod3382.not, label %.loopexit.i.i1048, label %.lr.ph39.i.i1059.epil.preheader

.lr.ph39.i.i1059.epil.preheader:                  ; preds = %.loopexit.i.i1048.loopexit3260.unr-lcssa, %.lr.ph39.i.i1059.preheader
  %.1.i37.i.i1061.epil.init = phi i64 [ %.081.i54.i.i1037, %.lr.ph39.i.i1059.preheader ], [ %i.ifa, %.loopexit.i.i1048.loopexit3260.unr-lcssa ] ; 3 uses
  %lcmp.mod3384 = trunc i32 %i.idy to i1
  call void @llvm.assume(i1 %lcmp.mod3384)
  %i.ikt = shl nsw i64 %.1.i37.i.i1061.epil.init, 4
  %i.iku = getelementptr inbounds i8, ptr %i.icl, i64 %i.ikt
  %i.ikv = getelementptr inbounds i8, ptr %i.ict, i64 %.1.i37.i.i1061.epil.init
  %i.ikw = load i8, ptr %i.ikv, align 1, !tbaa !98, !noalias !685
  %i.ikx = zext i8 %i.ikw to i64
  %i.iky = shl nuw nsw i64 %i.ikx, 4
  %i.ikz = getelementptr inbounds nuw i8, ptr %i.ick, i64 %i.iky
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iku, ptr noundef nonnull align 1 dereferenceable(16) %i.ikz, i64 16, i1 false), !noalias !685
  %i.ila = add nsw i64 %.1.i37.i.i1061.epil.init, 1
  br label %.loopexit.i.i1048

.loopexit.i.i1048:                                ; preds = %bb.alo, %.lr.ph39.i.i1059.epil.preheader, %.loopexit.i.i1048.loopexit3260.unr-lcssa, %bb.amm, %bb.alx, %.loopexit.sink.split.i.i1045, %.preheader27.i.i1064, %.preheader.i.i1077, %.preheader30.i.i1051, %bb.alf
  %.587.i.i.i1049 = phi i64 [ %.587.i.ph.i.i1047, %.loopexit.sink.split.i.i1045 ], [ %i.iee, %bb.alf ], [ %.486.i.i.i1070, %bb.amm ], [ %i.iee, %.lr.ph39.i.i1059.epil.preheader ], [ %i.iee, %.preheader30.i.i1051 ], [ %.082.i53.i.i1038, %.preheader.i.i1077 ], [ %.082.i53.i.i1038, %.preheader27.i.i1064 ], [ %.284.i.i.i1083, %bb.alx ], [ %i.iee, %.loopexit.i.i1048.loopexit3260.unr-lcssa ], [ %i.iee, %bb.alo ] ; 2 uses
  %.5.i.i.i1050 = phi i64 [ %i.ikr, %.loopexit.sink.split.i.i1045 ], [ %.081.i54.i.i1037, %bb.alf ], [ %i.ikm, %bb.amm ], [ %i.ila, %.lr.ph39.i.i1059.epil.preheader ], [ %.081.i54.i.i1037, %.preheader30.i.i1051 ], [ %.081.i54.i.i1037, %.preheader.i.i1077 ], [ %.081.i54.i.i1037, %.preheader27.i.i1064 ], [ %i.iie, %bb.alx ], [ %i.ifa, %.loopexit.i.i1048.loopexit3260.unr-lcssa ], [ %i.igm, %bb.alo ] ; 2 uses
  %i.ilb = icmp slt i64 %.5.i.i.i1050, %i.icn
  br i1 %i.ilb, label %bb.ald, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !692

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i.i1048, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1033
  %.082.i.lcssa.i.i1035 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1033 ], [ %.587.i.i.i1049, %.loopexit.i.i1048 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24, !noalias !685
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i1029:                                   ; preds = %.lr.ph.i.i1029, %.lr.ph.i.i1029.preheader.new
  %.0.i1833.i.i1030 = phi i64 [ 0, %.lr.ph.i.i1029.preheader.new ], [ %i.ilr, %.lr.ph.i.i1029 ] ; 4 uses
  %niter3380 = phi i64 [ 0, %.lr.ph.i.i1029.preheader.new ], [ %niter3380.next.1, %.lr.ph.i.i1029 ]
  %i.ilc = shl nuw nsw i64 %.0.i1833.i.i1030, 4
  %i.ild = getelementptr inbounds nuw i8, ptr %i.icl, i64 %i.ilc
  %i.ile = getelementptr inbounds nuw i8, ptr %i.ict, i64 %.0.i1833.i.i1030
  %i.ilf = load i8, ptr %i.ile, align 1, !tbaa !98, !noalias !685
  %i.ilg = zext i8 %i.ilf to i64
  %i.ilh = shl nuw nsw i64 %i.ilg, 4
  %i.ili = getelementptr inbounds nuw i8, ptr %i.ick, i64 %i.ilh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ild, ptr noundef nonnull align 1 dereferenceable(16) %i.ili, i64 16, i1 false), !noalias !685
  %i.ilj = or disjoint i64 %.0.i1833.i.i1030, 1   ; 2 uses
  %i.ilk = shl nuw nsw i64 %i.ilj, 4
  %i.ill = getelementptr inbounds nuw i8, ptr %i.icl, i64 %i.ilk
  %i.ilm = getelementptr inbounds nuw i8, ptr %i.ict, i64 %i.ilj
  %i.iln = load i8, ptr %i.ilm, align 1, !tbaa !98, !noalias !685
  %i.ilo = zext i8 %i.iln to i64
  %i.ilp = shl nuw nsw i64 %i.ilo, 4
  %i.ilq = getelementptr inbounds nuw i8, ptr %i.ick, i64 %i.ilp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ill, ptr noundef nonnull align 1 dereferenceable(16) %i.ilq, i64 16, i1 false), !noalias !685
  %i.ilr = add nuw nsw i64 %.0.i1833.i.i1030, 2   ; 2 uses
  %niter3380.next.1 = add nuw nsw i64 %niter3380, 2 ; 2 uses
  %niter3380.ncmp.1 = icmp eq i64 %niter3380.next.1, %unroll_iter3379
  br i1 %niter3380.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3266.unr-lcssa, label %.lr.ph.i.i1029, !llvm.loop !693

bb.amn:                                           ; preds = %bb.akx
  br i1 %i.icb, label %bb.amp, label %bb.amo

bb.amo:                                           ; preds = %bb.amn
  %i.ils = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ilt = load i64, ptr %i.ils, align 8, !tbaa !71, !noalias !694
  %.not.i19.i21.i966 = icmp ne i64 %i.ilt, 0
  %i.ilu = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ilv = load ptr, ptr %i.ilu, align 8, !noalias !694
  %i.ilw = icmp ne ptr %i.ilv, null
  %i.ilx = select i1 %.not.i19.i21.i966, i1 %i.ilw, i1 false
  br label %bb.amp

bb.amp:                                           ; preds = %bb.amo, %bb.amn
  %i.ily = phi i1 [ true, %bb.amn ], [ %i.ilx, %bb.amo ]
  %i.ilz = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !694
  %i.ima = extractvalue { i32, ptr } %i.ilz, 1    ; 9 uses
  %i.imb = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !694 ; 13 uses
  %i.imc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.imd = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !694 ; 11 uses
  %i.ime = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.imf = load i64, ptr %i.ime, align 8, !tbaa !99, !noalias !694
  %i.img = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.imh = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.imi = load ptr, ptr %i.imh, align 8, !tbaa !66, !noalias !694
  %i.imj = getelementptr inbounds [2 x i8], ptr %i.imi, i64 %i.imf ; 9 uses
  br i1 %i.ily, label %bb.amq, label %.preheader32.i22.i967

.preheader32.i22.i967:                            ; preds = %bb.amp
  %i.imk = icmp sgt i64 %i.imd, 0
  br i1 %i.imk, label %.lr.ph.i24.i968.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i968.preheader:                        ; preds = %.preheader32.i22.i967
  %xtraiter3365 = and i64 %i.imd, 1
  %i.iml = icmp eq i64 %i.imd, 1
  br i1 %i.iml, label %.lr.ph.i24.i968.epil.preheader, label %.lr.ph.i24.i968.preheader.new

.lr.ph.i24.i968.preheader.new:                    ; preds = %.lr.ph.i24.i968.preheader
  %unroll_iter3368 = and i64 %i.imd, 9223372036854775806
  br label %.lr.ph.i24.i968

bb.amq:                                           ; preds = %bb.amp
  %i.imm = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.imn = load ptr, ptr %i.imm, align 8, !tbaa !171, !noalias !694
  %i.imo = load ptr, ptr %i.imn, align 8, !tbaa !306, !noalias !694 ; 4 uses
  %.not.i.i.i27.i971 = icmp eq ptr %i.imo, null
  br i1 %.not.i.i.i27.i971, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i972, label %bb.amr

bb.amr:                                           ; preds = %bb.amq
  %i.imp = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.imq = load i64, ptr %i.imp, align 8, !tbaa !438, !noalias !694
  %i.imr = getelementptr inbounds nuw i8, ptr %i.imo, i64 9
  %i.ims = load i8, ptr %i.imr, align 1, !tbaa !439, !range !127, !noalias !694, !noundef !128
  %i.imt = trunc nuw i8 %i.ims to i1
  %i.imu = getelementptr inbounds nuw i8, ptr %i.imo, i64 8
  %i.imv = load i8, ptr %i.imu, align 8, !range !127, !noalias !694
  %i.imw = trunc nuw i8 %i.imv to i1
  %i.imx = select i1 %i.imt, i1 %i.imw, i1 false, !prof !117
  %i.imy = getelementptr inbounds nuw i8, ptr %i.imo, i64 16
  %i.imz = load ptr, ptr %i.imy, align 8, !noalias !694
  %i.ina = select i1 %i.imx, ptr %i.imz, ptr null, !prof !117
  %i.inb = getelementptr inbounds i8, ptr %i.ina, i64 %i.imq
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i972

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i972: ; preds = %bb.amr, %bb.amq
  %.0.i.i.i29.i973 = phi ptr [ %i.inb, %bb.amr ], [ null, %bb.amq ] ; 5 uses
  %i.inc = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ind = load i64, ptr %i.inc, align 8, !tbaa !178, !noalias !694 ; 2 uses
  %i.ine = ashr i64 %i.ind, 3
  %i.inf = and i64 %i.ind, 7
  %i.ing = icmp ne i64 %i.inf, 0
  %i.inh = zext i1 %i.ing to i64
  %i.ini = add nsw i64 %i.ine, %i.inh
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i29.i973, i8 0, i64 %i.ini, i1 false), !noalias !694
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24, !noalias !694
  %i.inj = load ptr, ptr %i.img, align 8, !tbaa !66, !noalias !694
  %i.ink = load i64, ptr %i.ime, align 8, !tbaa !99, !noalias !694
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.inj, i64 noundef %i.ink, i64 noundef %i.imd), !noalias !694
  %i.inl = icmp sgt i64 %i.imd, 0
  br i1 %i.inl, label %.lr.ph55.i31.i975, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i31.i975:                                ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i972
  %i.inm = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.inn = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.ams

bb.ams:                                           ; preds = %.loopexit.i43.i987, %.lr.ph55.i31.i975
  %.081.i54.i32.i976 = phi i64 [ 0, %.lr.ph55.i31.i975 ], [ %.5.i.i45.i989, %.loopexit.i43.i987 ] ; 12 uses
  %.082.i53.i33.i977 = phi i64 [ 0, %.lr.ph55.i31.i975 ], [ %.587.i.i44.i988, %.loopexit.i43.i987 ] ; 6 uses
  %i.ino = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %14), !noalias !694 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i34.i978 = trunc i32 %i.ino to i16 ; 10 uses
  %i.inp = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !694
  %.not.i20.i35.i979 = icmp ne i64 %i.inp, 0
  %i.inq = load ptr, ptr %i.v, align 8, !noalias !694
  %i.inr = icmp ne ptr %i.inq, null
  %i.ins = select i1 %.not.i20.i35.i979, i1 %i.inr, i1 false
  br i1 %i.ins, label %bb.ane, label %bb.amt

bb.amt:                                           ; preds = %bb.ams
  %.sroa.14.0.extract.shift.i.i36.i980 = lshr i32 %i.ino, 16
  %.sroa.14.0.extract.trunc.i.i37.i981 = zext nneg i32 %.sroa.14.0.extract.shift.i.i36.i980 to i64
  %sext91.i.i38.i982 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i37.i981, 48
  %i.int = ashr exact i64 %sext91.i.i38.i982, 48
  %i.inu = add nsw i64 %i.int, %.082.i53.i33.i977 ; 6 uses
  %i.inv = ashr i32 %i.ino, 16                    ; 2 uses
  %sext.i.i39.i983 = shl i32 %i.ino, 16
  %i.inw = ashr exact i32 %sext.i.i39.i983, 16
  %i.inx = icmp eq i32 %i.inv, %i.inw
  br i1 %i.inx, label %bb.amu, label %bb.amv

bb.amu:                                           ; preds = %bb.amt
  %i.iny = sext i16 %.sroa.0.0.extract.trunc.i.i34.i978 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i29.i973, i64 noundef %.081.i54.i32.i976, i64 noundef %i.iny, i1 noundef zeroext true), !noalias !694
  %i.inz = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i978, 0
  br i1 %i.inz, label %.lr.ph39.i54.i998.preheader, label %.loopexit.i43.i987

.lr.ph39.i54.i998.preheader:                      ; preds = %bb.amu
  %i.ioa = icmp eq i16 %.sroa.0.0.extract.trunc.i.i34.i978, 1
  br i1 %i.ioa, label %.lr.ph39.i54.i998.epil.preheader, label %.lr.ph39.i54.i998.preheader.new

.lr.ph39.i54.i998.preheader.new:                  ; preds = %.lr.ph39.i54.i998.preheader
  %unroll_iter3374 = and i64 %i.iny, 32766
  br label %.lr.ph39.i54.i998

.lr.ph39.i54.i998:                                ; preds = %.lr.ph39.i54.i998, %.lr.ph39.i54.i998.preheader.new
  %.1.i37.i56.i1000 = phi i64 [ %.081.i54.i32.i976, %.lr.ph39.i54.i998.preheader.new ], [ %i.ioq, %.lr.ph39.i54.i998 ] ; 4 uses
  %niter3375 = phi i64 [ 0, %.lr.ph39.i54.i998.preheader.new ], [ %niter3375.next.1, %.lr.ph39.i54.i998 ]
  %i.iob = shl nsw i64 %.1.i37.i56.i1000, 4
  %i.ioc = getelementptr inbounds i8, ptr %i.imb, i64 %i.iob
  %i.iod = getelementptr inbounds [2 x i8], ptr %i.imj, i64 %.1.i37.i56.i1000
  %i.ioe = load i16, ptr %i.iod, align 2, !tbaa !269, !noalias !694
  %i.iof = zext i16 %i.ioe to i64
  %i.iog = shl nuw nsw i64 %i.iof, 4
  %i.ioh = getelementptr inbounds nuw i8, ptr %i.ima, i64 %i.iog
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ioc, ptr noundef nonnull align 1 dereferenceable(16) %i.ioh, i64 16, i1 false), !noalias !694
  %i.ioi = add nsw i64 %.1.i37.i56.i1000, 1       ; 2 uses
  %i.ioj = shl nsw i64 %i.ioi, 4
  %i.iok = getelementptr inbounds i8, ptr %i.imb, i64 %i.ioj
  %i.iol = getelementptr inbounds [2 x i8], ptr %i.imj, i64 %i.ioi
  %i.iom = load i16, ptr %i.iol, align 2, !tbaa !269, !noalias !694
  %i.ion = zext i16 %i.iom to i64
  %i.ioo = shl nuw nsw i64 %i.ion, 4
  %i.iop = getelementptr inbounds nuw i8, ptr %i.ima, i64 %i.ioo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iok, ptr noundef nonnull align 1 dereferenceable(16) %i.iop, i64 16, i1 false), !noalias !694
  %i.ioq = add nsw i64 %.1.i37.i56.i1000, 2       ; 3 uses
  %niter3375.next.1 = add i64 %niter3375, 2       ; 2 uses
  %niter3375.ncmp.1 = icmp eq i64 %niter3375.next.1, %unroll_iter3374
  br i1 %niter3375.ncmp.1, label %.loopexit.i43.i987.loopexit3268.unr-lcssa, label %.lr.ph39.i54.i998, !llvm.loop !697

bb.amv:                                           ; preds = %bb.amt
  %i.ior = icmp sgt i32 %i.inv, 0
  %i.ios = sext i16 %.sroa.0.0.extract.trunc.i.i34.i978 to i64 ; 2 uses
  br i1 %i.ior, label %.preheader30.i46.i990, label %.loopexit.sink.split.i40.i984

.preheader30.i46.i990:                            ; preds = %bb.amv
  %i.iot = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i978, 0
  br i1 %i.iot, label %.lr.ph36.i47.i991, label %.loopexit.i43.i987

.lr.ph36.i47.i991:                                ; preds = %.preheader30.i46.i990, %bb.and
  %.079.i35.i48.i992 = phi i64 [ %i.iqd, %bb.and ], [ 0, %.preheader30.i46.i990 ]
  %.2.i34.i49.i993 = phi i64 [ %i.iqc, %bb.and ], [ %.081.i54.i32.i976, %.preheader30.i46.i990 ] ; 10 uses
  %i.iou = load ptr, ptr %i.img, align 8, !tbaa !66, !noalias !694 ; 2 uses
  %.not.i21.i50.i994 = icmp eq ptr %i.iou, null
  br i1 %.not.i21.i50.i994, label %bb.amx, label %bb.amw

bb.amw:                                           ; preds = %.lr.ph36.i47.i991
  %i.iov = load i64, ptr %i.ime, align 8, !tbaa !99, !noalias !694
  %i.iow = add nsw i64 %i.iov, %.2.i34.i49.i993   ; 2 uses
  %i.iox = lshr i64 %i.iow, 3
  %i.ioy = getelementptr inbounds nuw i8, ptr %i.iou, i64 %i.iox
  %i.ioz = load i8, ptr %i.ioy, align 1, !tbaa !98, !noalias !694
  %i.ipa = trunc i64 %i.iow to i8
  %i.ipb = and i8 %i.ipa, 7
  %i.ipc = lshr i8 %i.ioz, %i.ipb
  %i.ipd = trunc i8 %i.ipc to i1
  br i1 %i.ipd, label %bb.anb, label %bb.anc

bb.amx:                                           ; preds = %.lr.ph36.i47.i991
  %i.ipe = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !694
  %i.ipf = getelementptr inbounds nuw i8, ptr %i.ipe, i64 40
  %i.ipg = load i32, ptr %i.ipf, align 8, !tbaa !42, !noalias !694
  switch i32 %i.ipg, label %bb.ana [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i52.i996
    i32 28, label %bb.amy
    i32 38, label %bb.amz
  ]

bb.amy:                                           ; preds = %bb.amx
  %i.iph = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i49.i993), !noalias !694
  br i1 %i.iph, label %bb.anc, label %bb.anb

bb.amz:                                           ; preds = %bb.amx
  %i.ipi = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i49.i993), !noalias !694
  br i1 %i.ipi, label %bb.anc, label %bb.anb

bb.ana:                                           ; preds = %bb.amx
  %i.ipj = load i64, ptr %i.inm, align 8, !tbaa !71, !noalias !694
end_hunk_18
begin_hunk_19_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a

bb.ann:                                           ; preds = %bb.ane
  %i.irw = icmp sgt i32 %i.iqe, 0
  %i.irx = sext i16 %.sroa.0.0.extract.trunc.i.i34.i978 to i64 ; 2 uses
  br i1 %i.irw, label %.preheader27.i59.i1003, label %.loopexit.sink.split.i40.i984

.preheader27.i59.i1003:                           ; preds = %bb.ann
  %i.iry = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i978, 0
  br i1 %i.iry, label %.lr.ph44.i60.i1004, label %.loopexit.i43.i987

.lr.ph44.i60.i1004:                               ; preds = %.preheader27.i59.i1003, %bb.aob
  %.0.i43.i61.i1005 = phi i64 [ %i.iud, %bb.aob ], [ 0, %.preheader27.i59.i1003 ]
  %.4.i42.i62.i1006 = phi i64 [ %i.iuc, %bb.aob ], [ %.081.i54.i32.i976, %.preheader27.i59.i1003 ] ; 10 uses
  %.385.i41.i63.i1007 = phi i64 [ %.486.i.i65.i1009, %bb.aob ], [ %.082.i53.i33.i977, %.preheader27.i59.i1003 ] ; 2 uses
  %i.irz = load ptr, ptr %i.img, align 8, !tbaa !66, !noalias !694 ; 2 uses
  %.not.i26.i64.i1008 = icmp eq ptr %i.irz, null
  br i1 %.not.i26.i64.i1008, label %bb.anp, label %bb.ano

bb.ano:                                           ; preds = %.lr.ph44.i60.i1004
  %i.isa = load i64, ptr %i.ime, align 8, !tbaa !99, !noalias !694
  %i.isb = add nsw i64 %i.isa, %.4.i42.i62.i1006  ; 2 uses
  %i.isc = lshr i64 %i.isb, 3
  %i.isd = getelementptr inbounds nuw i8, ptr %i.irz, i64 %i.isc
  %i.ise = load i8, ptr %i.isd, align 1, !tbaa !98, !noalias !694
  %i.isf = trunc i64 %i.isb to i8
  %i.isg = and i8 %i.isf, 7
  %i.ish = lshr i8 %i.ise, %i.isg
  %i.isi = trunc i8 %i.ish to i1
  br i1 %i.isi, label %bb.ant, label %bb.aoa

bb.anp:                                           ; preds = %.lr.ph44.i60.i1004
  %i.isj = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !694
  %i.isk = getelementptr inbounds nuw i8, ptr %i.isj, i64 40
  %i.isl = load i32, ptr %i.isk, align 8, !tbaa !42, !noalias !694
  switch i32 %i.isl, label %bb.ans [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1014
    i32 28, label %bb.anq
    i32 38, label %bb.anr
  ]

bb.anq:                                           ; preds = %bb.anp
  %i.ism = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i1006), !noalias !694
  br i1 %i.ism, label %bb.aoa, label %bb.ant

bb.anr:                                           ; preds = %bb.anp
  %i.isn = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i1006), !noalias !694
  br i1 %i.isn, label %bb.aoa, label %bb.ant

bb.ans:                                           ; preds = %bb.anp
  %i.iso = load i64, ptr %i.inm, align 8, !tbaa !71, !noalias !694
  %i.isp = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !694
  %.not24.i71.i1015 = icmp eq i64 %i.iso, %i.isp
  br i1 %.not24.i71.i1015, label %bb.aoa, label %bb.ant

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1014:  ; preds = %bb.anp
  %i.isq = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i1006), !noalias !694
  br i1 %i.isq, label %bb.aoa, label %bb.ant

bb.ant:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1014, %bb.ans, %bb.anr, %bb.anq, %bb.ano
  %i.isr = getelementptr inbounds [2 x i8], ptr %i.imj, i64 %.4.i42.i62.i1006 ; 2 uses
  %i.iss = load i16, ptr %i.isr, align 2, !tbaa !269, !noalias !694
  %i.ist = zext i16 %i.iss to i64                 ; 4 uses
  %i.isu = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !694 ; 2 uses
  %.not.i29.i67.i1011 = icmp eq ptr %i.isu, null
  br i1 %.not.i29.i67.i1011, label %bb.anv, label %bb.anu

bb.anu:                                           ; preds = %bb.ant
  %i.isv = load i64, ptr %i.inn, align 8, !tbaa !99, !noalias !694
  %i.isw = add nsw i64 %i.isv, %i.ist             ; 2 uses
  %i.isx = lshr i64 %i.isw, 3
  %i.isy = getelementptr inbounds nuw i8, ptr %i.isu, i64 %i.isx
  %i.isz = load i8, ptr %i.isy, align 1, !tbaa !98, !noalias !694
  %i.ita = trunc i64 %i.isw to i8
  %i.itb = and i8 %i.ita, 7
  %i.itc = lshr i8 %i.isz, %i.itb
  %i.itd = trunc i8 %i.itc to i1
  br i1 %i.itd, label %bb.anz, label %bb.aoa

bb.anv:                                           ; preds = %bb.ant
  %i.ite = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !694
  %i.itf = getelementptr inbounds nuw i8, ptr %i.ite, i64 40
  %i.itg = load i32, ptr %i.itf, align 8, !tbaa !42, !noalias !694
  switch i32 %i.itg, label %bb.any [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1012
    i32 28, label %bb.anw
    i32 38, label %bb.anx
  ]

bb.anw:                                           ; preds = %bb.anv
  %i.ith = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ist), !noalias !694
  br i1 %i.ith, label %bb.aoa, label %bb.anz

bb.anx:                                           ; preds = %bb.anv
  %i.iti = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ist), !noalias !694
  br i1 %i.iti, label %bb.aoa, label %bb.anz

bb.any:                                           ; preds = %bb.anv
  %i.itj = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !694
  %i.itk = load i64, ptr %i.imc, align 8, !tbaa !62, !noalias !694
  %.not25.i69.i1013 = icmp eq i64 %i.itj, %i.itk
  br i1 %.not25.i69.i1013, label %bb.aoa, label %bb.anz

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1012:  ; preds = %bb.anv
  %i.itl = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.ist), !noalias !694
  br i1 %i.itl, label %bb.aoa, label %bb.anz

bb.anz:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1012, %bb.any, %bb.anx, %bb.anw, %bb.anu
  %i.itm = shl nsw i64 %.4.i42.i62.i1006, 4
  %i.itn = getelementptr inbounds i8, ptr %i.imb, i64 %i.itm
  %i.ito = load i16, ptr %i.isr, align 2, !tbaa !269, !noalias !694
  %i.itp = zext i16 %i.ito to i64
  %i.itq = shl nuw nsw i64 %i.itp, 4
  %i.itr = getelementptr inbounds nuw i8, ptr %i.ima, i64 %i.itq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.itn, ptr noundef nonnull align 1 dereferenceable(16) %i.itr, i64 16, i1 false), !noalias !694
  %i.its = srem i64 %.4.i42.i62.i1006, 8
  %i.itt = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.its
  %i.itu = load i8, ptr %i.itt, align 1, !tbaa !98, !noalias !694
  %i.itv = sdiv i64 %.4.i42.i62.i1006, 8
  %i.itw = getelementptr inbounds i8, ptr %.0.i.i.i29.i973, i64 %i.itv ; 2 uses
  %i.itx = load i8, ptr %i.itw, align 1, !tbaa !98, !noalias !694
  %i.ity = or i8 %i.itx, %i.itu
  store i8 %i.ity, ptr %i.itw, align 1, !tbaa !98, !noalias !694
  %i.itz = add nsw i64 %.385.i41.i63.i1007, 1
  br label %bb.aob

bb.aoa:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1012, %bb.any, %bb.anx, %bb.anw, %bb.anu, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1014, %bb.ans, %bb.anr, %bb.anq, %bb.ano
  %i.iua = shl nsw i64 %.4.i42.i62.i1006, 4
  %i.iub = getelementptr inbounds i8, ptr %i.imb, i64 %i.iua
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iub, i8 0, i64 16, i1 false), !noalias !694
  br label %bb.aob

bb.aob:                                           ; preds = %bb.aoa, %bb.anz
  %.486.i.i65.i1009 = phi i64 [ %i.itz, %bb.anz ], [ %.385.i41.i63.i1007, %bb.aoa ] ; 2 uses
  %i.iuc = add nsw i64 %.4.i42.i62.i1006, 1       ; 2 uses
  %i.iud = add nuw nsw i64 %.0.i43.i61.i1005, 1   ; 2 uses
  %exitcond65.not.i66.i1010 = icmp eq i64 %i.iud, %i.irx
  br i1 %exitcond65.not.i66.i1010, label %.loopexit.i43.i987, label %.lr.ph44.i60.i1004, !llvm.loop !700

.loopexit.sink.split.i40.i984:                    ; preds = %bb.ann, %bb.amv
  %.sink86.i41.i985 = phi i64 [ %i.ios, %bb.amv ], [ %i.irx, %bb.ann ] ; 2 uses
  %.587.i.ph.i42.i986 = phi i64 [ %i.inu, %bb.amv ], [ %.082.i53.i33.i977, %bb.ann ]
  %i.iue = shl nsw i64 %.081.i54.i32.i976, 4
  %i.iuf = getelementptr inbounds i8, ptr %i.imb, i64 %i.iue
  %i.iug = shl nsw i64 %.sink86.i41.i985, 4
  call void @llvm.memset.p0.i64(ptr align 1 %i.iuf, i8 0, i64 %i.iug, i1 false), !noalias !694
  %i.iuh = add nsw i64 %.sink86.i41.i985, %.081.i54.i32.i976
  br label %.loopexit.i43.i987

.loopexit.i43.i987.loopexit3268.unr-lcssa:        ; preds = %.lr.ph39.i54.i998
  %i.iui = and i16 %.sroa.0.0.extract.trunc.i.i34.i978, 1
  %lcmp.mod3371.not = icmp eq i16 %i.iui, 0
  br i1 %lcmp.mod3371.not, label %.loopexit.i43.i987, label %.lr.ph39.i54.i998.epil.preheader

.lr.ph39.i54.i998.epil.preheader:                 ; preds = %.loopexit.i43.i987.loopexit3268.unr-lcssa, %.lr.ph39.i54.i998.preheader
  %.1.i37.i56.i1000.epil.init = phi i64 [ %.081.i54.i32.i976, %.lr.ph39.i54.i998.preheader ], [ %i.ioq, %.loopexit.i43.i987.loopexit3268.unr-lcssa ] ; 3 uses
  %lcmp.mod3373 = trunc i32 %i.ino to i1
  call void @llvm.assume(i1 %lcmp.mod3373)
  %i.iuj = shl nsw i64 %.1.i37.i56.i1000.epil.init, 4
  %i.iuk = getelementptr inbounds i8, ptr %i.imb, i64 %i.iuj
  %i.iul = getelementptr inbounds [2 x i8], ptr %i.imj, i64 %.1.i37.i56.i1000.epil.init
  %i.ium = load i16, ptr %i.iul, align 2, !tbaa !269, !noalias !694
  %i.iun = zext i16 %i.ium to i64
  %i.iuo = shl nuw nsw i64 %i.iun, 4
  %i.iup = getelementptr inbounds nuw i8, ptr %i.ima, i64 %i.iuo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iuk, ptr noundef nonnull align 1 dereferenceable(16) %i.iup, i64 16, i1 false), !noalias !694
  %i.iuq = add nsw i64 %.1.i37.i56.i1000.epil.init, 1
  br label %.loopexit.i43.i987

.loopexit.i43.i987:                               ; preds = %bb.and, %.lr.ph39.i54.i998.epil.preheader, %.loopexit.i43.i987.loopexit3268.unr-lcssa, %bb.aob, %bb.anm, %.loopexit.sink.split.i40.i984, %.preheader27.i59.i1003, %.preheader.i72.i1016, %.preheader30.i46.i990, %bb.amu
  %.587.i.i44.i988 = phi i64 [ %.587.i.ph.i42.i986, %.loopexit.sink.split.i40.i984 ], [ %i.inu, %bb.amu ], [ %.486.i.i65.i1009, %bb.aob ], [ %i.inu, %.lr.ph39.i54.i998.epil.preheader ], [ %i.inu, %.preheader30.i46.i990 ], [ %.082.i53.i33.i977, %.preheader.i72.i1016 ], [ %.082.i53.i33.i977, %.preheader27.i59.i1003 ], [ %.284.i.i78.i1022, %bb.anm ], [ %i.inu, %.loopexit.i43.i987.loopexit3268.unr-lcssa ], [ %i.inu, %bb.and ] ; 2 uses
  %.5.i.i45.i989 = phi i64 [ %i.iuh, %.loopexit.sink.split.i40.i984 ], [ %.081.i54.i32.i976, %bb.amu ], [ %i.iuc, %bb.aob ], [ %i.iuq, %.lr.ph39.i54.i998.epil.preheader ], [ %.081.i54.i32.i976, %.preheader30.i46.i990 ], [ %.081.i54.i32.i976, %.preheader.i72.i1016 ], [ %.081.i54.i32.i976, %.preheader27.i59.i1003 ], [ %i.iru, %bb.anm ], [ %i.ioq, %.loopexit.i43.i987.loopexit3268.unr-lcssa ], [ %i.iqc, %bb.and ] ; 2 uses
  %i.iur = icmp slt i64 %.5.i.i45.i989, %i.imd
  br i1 %i.iur, label %bb.ams, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !701

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i43.i987, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i972
  %.082.i.lcssa.i30.i974 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i972 ], [ %.587.i.i44.i988, %.loopexit.i43.i987 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24, !noalias !694
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i968:                                  ; preds = %.lr.ph.i24.i968, %.lr.ph.i24.i968.preheader.new
  %.0.i1833.i25.i969 = phi i64 [ 0, %.lr.ph.i24.i968.preheader.new ], [ %i.ivh, %.lr.ph.i24.i968 ] ; 4 uses
  %niter3369 = phi i64 [ 0, %.lr.ph.i24.i968.preheader.new ], [ %niter3369.next.1, %.lr.ph.i24.i968 ]
  %i.ius = shl nuw nsw i64 %.0.i1833.i25.i969, 4
  %i.iut = getelementptr inbounds nuw i8, ptr %i.imb, i64 %i.ius
  %i.iuu = getelementptr inbounds nuw [2 x i8], ptr %i.imj, i64 %.0.i1833.i25.i969
  %i.iuv = load i16, ptr %i.iuu, align 2, !tbaa !269, !noalias !694
  %i.iuw = zext i16 %i.iuv to i64
  %i.iux = shl nuw nsw i64 %i.iuw, 4
  %i.iuy = getelementptr inbounds nuw i8, ptr %i.ima, i64 %i.iux
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iut, ptr noundef nonnull align 1 dereferenceable(16) %i.iuy, i64 16, i1 false), !noalias !694
  %i.iuz = or disjoint i64 %.0.i1833.i25.i969, 1  ; 2 uses
  %i.iva = shl nuw nsw i64 %i.iuz, 4
  %i.ivb = getelementptr inbounds nuw i8, ptr %i.imb, i64 %i.iva
  %i.ivc = getelementptr inbounds nuw [2 x i8], ptr %i.imj, i64 %i.iuz
  %i.ivd = load i16, ptr %i.ivc, align 2, !tbaa !269, !noalias !694
  %i.ive = zext i16 %i.ivd to i64
  %i.ivf = shl nuw nsw i64 %i.ive, 4
  %i.ivg = getelementptr inbounds nuw i8, ptr %i.ima, i64 %i.ivf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ivb, ptr noundef nonnull align 1 dereferenceable(16) %i.ivg, i64 16, i1 false), !noalias !694
  %i.ivh = add nuw nsw i64 %.0.i1833.i25.i969, 2  ; 2 uses
  %niter3369.next.1 = add nuw nsw i64 %niter3369, 2 ; 2 uses
  %niter3369.ncmp.1 = icmp eq i64 %niter3369.next.1, %unroll_iter3368
  br i1 %niter3369.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3274.unr-lcssa, label %.lr.ph.i24.i968, !llvm.loop !702

bb.aoc:                                           ; preds = %bb.akx
  br i1 %i.icb, label %bb.aoe, label %bb.aod

bb.aod:                                           ; preds = %bb.aoc
  %i.ivi = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ivj = load i64, ptr %i.ivi, align 8, !tbaa !71, !noalias !703
  %.not.i19.i83.i904 = icmp ne i64 %i.ivj, 0
  %i.ivk = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ivl = load ptr, ptr %i.ivk, align 8, !noalias !703
  %i.ivm = icmp ne ptr %i.ivl, null
  %i.ivn = select i1 %.not.i19.i83.i904, i1 %i.ivm, i1 false
  br label %bb.aoe

bb.aoe:                                           ; preds = %bb.aod, %bb.aoc
  %i.ivo = phi i1 [ true, %bb.aoc ], [ %i.ivn, %bb.aod ]
  %i.ivp = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !703
  %i.ivq = extractvalue { i32, ptr } %i.ivp, 1    ; 9 uses
  %i.ivr = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !703 ; 13 uses
  %i.ivs = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ivt = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !703 ; 11 uses
  %i.ivu = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.ivv = load i64, ptr %i.ivu, align 8, !tbaa !99, !noalias !703
  %i.ivw = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.ivx = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ivy = load ptr, ptr %i.ivx, align 8, !tbaa !66, !noalias !703
  %i.ivz = getelementptr inbounds [4 x i8], ptr %i.ivy, i64 %i.ivv ; 9 uses
  br i1 %i.ivo, label %bb.aof, label %.preheader32.i84.i905

.preheader32.i84.i905:                            ; preds = %bb.aoe
  %i.iwa = icmp sgt i64 %i.ivt, 0
  br i1 %i.iwa, label %.lr.ph.i86.i907.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i907.preheader:                        ; preds = %.preheader32.i84.i905
  %xtraiter3354 = and i64 %i.ivt, 1
  %i.iwb = icmp eq i64 %i.ivt, 1
  br i1 %i.iwb, label %.lr.ph.i86.i907.epil.preheader, label %.lr.ph.i86.i907.preheader.new

.lr.ph.i86.i907.preheader.new:                    ; preds = %.lr.ph.i86.i907.preheader
  %unroll_iter3357 = and i64 %i.ivt, 9223372036854775806
  br label %.lr.ph.i86.i907

bb.aof:                                           ; preds = %bb.aoe
  %i.iwc = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.iwd = load ptr, ptr %i.iwc, align 8, !tbaa !171, !noalias !703
  %i.iwe = load ptr, ptr %i.iwd, align 8, !tbaa !306, !noalias !703 ; 4 uses
  %.not.i.i.i89.i910 = icmp eq ptr %i.iwe, null
  br i1 %.not.i.i.i89.i910, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i911, label %bb.aog

bb.aog:                                           ; preds = %bb.aof
  %i.iwf = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.iwg = load i64, ptr %i.iwf, align 8, !tbaa !438, !noalias !703
  %i.iwh = getelementptr inbounds nuw i8, ptr %i.iwe, i64 9
  %i.iwi = load i8, ptr %i.iwh, align 1, !tbaa !439, !range !127, !noalias !703, !noundef !128
  %i.iwj = trunc nuw i8 %i.iwi to i1
  %i.iwk = getelementptr inbounds nuw i8, ptr %i.iwe, i64 8
  %i.iwl = load i8, ptr %i.iwk, align 8, !range !127, !noalias !703
  %i.iwm = trunc nuw i8 %i.iwl to i1
  %i.iwn = select i1 %i.iwj, i1 %i.iwm, i1 false, !prof !117
  %i.iwo = getelementptr inbounds nuw i8, ptr %i.iwe, i64 16
  %i.iwp = load ptr, ptr %i.iwo, align 8, !noalias !703
  %i.iwq = select i1 %i.iwn, ptr %i.iwp, ptr null, !prof !117
  %i.iwr = getelementptr inbounds i8, ptr %i.iwq, i64 %i.iwg
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i911

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i911: ; preds = %bb.aog, %bb.aof
  %.0.i.i.i91.i912 = phi ptr [ %i.iwr, %bb.aog ], [ null, %bb.aof ] ; 5 uses
  %i.iws = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.iwt = load i64, ptr %i.iws, align 8, !tbaa !178, !noalias !703 ; 2 uses
  %i.iwu = ashr i64 %i.iwt, 3
  %i.iwv = and i64 %i.iwt, 7
  %i.iww = icmp ne i64 %i.iwv, 0
  %i.iwx = zext i1 %i.iww to i64
  %i.iwy = add nsw i64 %i.iwu, %i.iwx
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i91.i912, i8 0, i64 %i.iwy, i1 false), !noalias !703
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !703
  %i.iwz = load ptr, ptr %i.ivw, align 8, !tbaa !66, !noalias !703
  %i.ixa = load i64, ptr %i.ivu, align 8, !tbaa !99, !noalias !703
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.iwz, i64 noundef %i.ixa, i64 noundef %i.ivt), !noalias !703
  %i.ixb = icmp sgt i64 %i.ivt, 0
  br i1 %i.ixb, label %.lr.ph55.i93.i914, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i93.i914:                                ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i911
  %i.ixc = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.ixd = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.aoh

bb.aoh:                                           ; preds = %.loopexit.i105.i926, %.lr.ph55.i93.i914
  %.081.i54.i94.i915 = phi i64 [ 0, %.lr.ph55.i93.i914 ], [ %.5.i.i107.i928, %.loopexit.i105.i926 ] ; 12 uses
  %.082.i53.i95.i916 = phi i64 [ 0, %.lr.ph55.i93.i914 ], [ %.587.i.i106.i927, %.loopexit.i105.i926 ] ; 6 uses
  %i.ixe = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %13), !noalias !703 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i96.i917 = trunc i32 %i.ixe to i16 ; 10 uses
  %i.ixf = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !703
  %.not.i20.i97.i918 = icmp ne i64 %i.ixf, 0
  %i.ixg = load ptr, ptr %i.v, align 8, !noalias !703
  %i.ixh = icmp ne ptr %i.ixg, null
  %i.ixi = select i1 %.not.i20.i97.i918, i1 %i.ixh, i1 false
  br i1 %i.ixi, label %bb.aot, label %bb.aoi

bb.aoi:                                           ; preds = %bb.aoh
  %.sroa.14.0.extract.shift.i.i98.i919 = lshr i32 %i.ixe, 16
  %.sroa.14.0.extract.trunc.i.i99.i920 = zext nneg i32 %.sroa.14.0.extract.shift.i.i98.i919 to i64
  %sext91.i.i100.i921 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i99.i920, 48
  %i.ixj = ashr exact i64 %sext91.i.i100.i921, 48
  %i.ixk = add nsw i64 %i.ixj, %.082.i53.i95.i916 ; 6 uses
  %i.ixl = ashr i32 %i.ixe, 16                    ; 2 uses
  %sext.i.i101.i922 = shl i32 %i.ixe, 16
  %i.ixm = ashr exact i32 %sext.i.i101.i922, 16
  %i.ixn = icmp eq i32 %i.ixl, %i.ixm
  br i1 %i.ixn, label %bb.aoj, label %bb.aok

bb.aoj:                                           ; preds = %bb.aoi
  %i.ixo = sext i16 %.sroa.0.0.extract.trunc.i.i96.i917 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i91.i912, i64 noundef %.081.i54.i94.i915, i64 noundef %i.ixo, i1 noundef zeroext true), !noalias !703
  %i.ixp = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i917, 0
  br i1 %i.ixp, label %.lr.ph39.i116.i937.preheader, label %.loopexit.i105.i926

.lr.ph39.i116.i937.preheader:                     ; preds = %bb.aoj
  %i.ixq = icmp eq i16 %.sroa.0.0.extract.trunc.i.i96.i917, 1
  br i1 %i.ixq, label %.lr.ph39.i116.i937.epil.preheader, label %.lr.ph39.i116.i937.preheader.new

.lr.ph39.i116.i937.preheader.new:                 ; preds = %.lr.ph39.i116.i937.preheader
  %unroll_iter3363 = and i64 %i.ixo, 32766
  br label %.lr.ph39.i116.i937

.lr.ph39.i116.i937:                               ; preds = %.lr.ph39.i116.i937, %.lr.ph39.i116.i937.preheader.new
  %.1.i37.i118.i939 = phi i64 [ %.081.i54.i94.i915, %.lr.ph39.i116.i937.preheader.new ], [ %i.iyg, %.lr.ph39.i116.i937 ] ; 4 uses
  %niter3364 = phi i64 [ 0, %.lr.ph39.i116.i937.preheader.new ], [ %niter3364.next.1, %.lr.ph39.i116.i937 ]
  %i.ixr = shl nsw i64 %.1.i37.i118.i939, 4
  %i.ixs = getelementptr inbounds i8, ptr %i.ivr, i64 %i.ixr
  %i.ixt = getelementptr inbounds [4 x i8], ptr %i.ivz, i64 %.1.i37.i118.i939
  %i.ixu = load i32, ptr %i.ixt, align 4, !tbaa !3, !noalias !703
  %i.ixv = shl i32 %i.ixu, 4
  %i.ixw = zext i32 %i.ixv to i64
  %i.ixx = getelementptr inbounds nuw i8, ptr %i.ivq, i64 %i.ixw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ixs, ptr noundef nonnull align 1 dereferenceable(16) %i.ixx, i64 16, i1 false), !noalias !703
  %i.ixy = add nsw i64 %.1.i37.i118.i939, 1       ; 2 uses
  %i.ixz = shl nsw i64 %i.ixy, 4
  %i.iya = getelementptr inbounds i8, ptr %i.ivr, i64 %i.ixz
  %i.iyb = getelementptr inbounds [4 x i8], ptr %i.ivz, i64 %i.ixy
  %i.iyc = load i32, ptr %i.iyb, align 4, !tbaa !3, !noalias !703
  %i.iyd = shl i32 %i.iyc, 4
  %i.iye = zext i32 %i.iyd to i64
  %i.iyf = getelementptr inbounds nuw i8, ptr %i.ivq, i64 %i.iye
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iya, ptr noundef nonnull align 1 dereferenceable(16) %i.iyf, i64 16, i1 false), !noalias !703
  %i.iyg = add nsw i64 %.1.i37.i118.i939, 2       ; 3 uses
  %niter3364.next.1 = add i64 %niter3364, 2       ; 2 uses
  %niter3364.ncmp.1 = icmp eq i64 %niter3364.next.1, %unroll_iter3363
  br i1 %niter3364.ncmp.1, label %.loopexit.i105.i926.loopexit3276.unr-lcssa, label %.lr.ph39.i116.i937, !llvm.loop !706

bb.aok:                                           ; preds = %bb.aoi
  %i.iyh = icmp sgt i32 %i.ixl, 0
  %i.iyi = sext i16 %.sroa.0.0.extract.trunc.i.i96.i917 to i64 ; 2 uses
  br i1 %i.iyh, label %.preheader30.i108.i929, label %.loopexit.sink.split.i102.i923

.preheader30.i108.i929:                           ; preds = %bb.aok
  %i.iyj = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i917, 0
  br i1 %i.iyj, label %.lr.ph36.i109.i930, label %.loopexit.i105.i926

.lr.ph36.i109.i930:                               ; preds = %.preheader30.i108.i929, %bb.aos
  %.079.i35.i110.i931 = phi i64 [ %i.izt, %bb.aos ], [ 0, %.preheader30.i108.i929 ]
  %.2.i34.i111.i932 = phi i64 [ %i.izs, %bb.aos ], [ %.081.i54.i94.i915, %.preheader30.i108.i929 ] ; 10 uses
  %i.iyk = load ptr, ptr %i.ivw, align 8, !tbaa !66, !noalias !703 ; 2 uses
  %.not.i21.i112.i933 = icmp eq ptr %i.iyk, null
  br i1 %.not.i21.i112.i933, label %bb.aom, label %bb.aol

bb.aol:                                           ; preds = %.lr.ph36.i109.i930
  %i.iyl = load i64, ptr %i.ivu, align 8, !tbaa !99, !noalias !703
  %i.iym = add nsw i64 %i.iyl, %.2.i34.i111.i932  ; 2 uses
  %i.iyn = lshr i64 %i.iym, 3
  %i.iyo = getelementptr inbounds nuw i8, ptr %i.iyk, i64 %i.iyn
  %i.iyp = load i8, ptr %i.iyo, align 1, !tbaa !98, !noalias !703
  %i.iyq = trunc i64 %i.iym to i8
  %i.iyr = and i8 %i.iyq, 7
  %i.iys = lshr i8 %i.iyp, %i.iyr
  %i.iyt = trunc i8 %i.iys to i1
  br i1 %i.iyt, label %bb.aoq, label %bb.aor

bb.aom:                                           ; preds = %.lr.ph36.i109.i930
  %i.iyu = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !703
  %i.iyv = getelementptr inbounds nuw i8, ptr %i.iyu, i64 40
  %i.iyw = load i32, ptr %i.iyv, align 8, !tbaa !42, !noalias !703
  switch i32 %i.iyw, label %bb.aop [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i114.i935
    i32 28, label %bb.aon
    i32 38, label %bb.aoo
  ]

bb.aon:                                           ; preds = %bb.aom
  %i.iyx = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i111.i932), !noalias !703
  br i1 %i.iyx, label %bb.aor, label %bb.aoq

bb.aoo:                                           ; preds = %bb.aom
  %i.iyy = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i111.i932), !noalias !703
  br i1 %i.iyy, label %bb.aor, label %bb.aoq

bb.aop:                                           ; preds = %bb.aom
  %i.iyz = load i64, ptr %i.ixc, align 8, !tbaa !71, !noalias !703
end_hunk_19
begin_hunk_20_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a

bb.apc:                                           ; preds = %bb.aot
  %i.jbm = icmp sgt i32 %i.izu, 0
  %i.jbn = sext i16 %.sroa.0.0.extract.trunc.i.i96.i917 to i64 ; 2 uses
  br i1 %i.jbm, label %.preheader27.i121.i942, label %.loopexit.sink.split.i102.i923

.preheader27.i121.i942:                           ; preds = %bb.apc
  %i.jbo = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i917, 0
  br i1 %i.jbo, label %.lr.ph44.i122.i943, label %.loopexit.i105.i926

.lr.ph44.i122.i943:                               ; preds = %.preheader27.i121.i942, %bb.apq
  %.0.i43.i123.i944 = phi i64 [ %i.jdt, %bb.apq ], [ 0, %.preheader27.i121.i942 ]
  %.4.i42.i124.i945 = phi i64 [ %i.jds, %bb.apq ], [ %.081.i54.i94.i915, %.preheader27.i121.i942 ] ; 10 uses
  %.385.i41.i125.i946 = phi i64 [ %.486.i.i127.i948, %bb.apq ], [ %.082.i53.i95.i916, %.preheader27.i121.i942 ] ; 2 uses
  %i.jbp = load ptr, ptr %i.ivw, align 8, !tbaa !66, !noalias !703 ; 2 uses
  %.not.i26.i126.i947 = icmp eq ptr %i.jbp, null
  br i1 %.not.i26.i126.i947, label %bb.ape, label %bb.apd

bb.apd:                                           ; preds = %.lr.ph44.i122.i943
  %i.jbq = load i64, ptr %i.ivu, align 8, !tbaa !99, !noalias !703
  %i.jbr = add nsw i64 %i.jbq, %.4.i42.i124.i945  ; 2 uses
  %i.jbs = lshr i64 %i.jbr, 3
  %i.jbt = getelementptr inbounds nuw i8, ptr %i.jbp, i64 %i.jbs
  %i.jbu = load i8, ptr %i.jbt, align 1, !tbaa !98, !noalias !703
  %i.jbv = trunc i64 %i.jbr to i8
  %i.jbw = and i8 %i.jbv, 7
  %i.jbx = lshr i8 %i.jbu, %i.jbw
  %i.jby = trunc i8 %i.jbx to i1
  br i1 %i.jby, label %bb.api, label %bb.app

bb.ape:                                           ; preds = %.lr.ph44.i122.i943
  %i.jbz = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !703
  %i.jca = getelementptr inbounds nuw i8, ptr %i.jbz, i64 40
  %i.jcb = load i32, ptr %i.jca, align 8, !tbaa !42, !noalias !703
  switch i32 %i.jcb, label %bb.aph [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i953
    i32 28, label %bb.apf
    i32 38, label %bb.apg
  ]

bb.apf:                                           ; preds = %bb.ape
  %i.jcc = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i945), !noalias !703
  br i1 %i.jcc, label %bb.app, label %bb.api

bb.apg:                                           ; preds = %bb.ape
  %i.jcd = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i945), !noalias !703
  br i1 %i.jcd, label %bb.app, label %bb.api

bb.aph:                                           ; preds = %bb.ape
  %i.jce = load i64, ptr %i.ixc, align 8, !tbaa !71, !noalias !703
  %i.jcf = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !703
  %.not24.i133.i954 = icmp eq i64 %i.jce, %i.jcf
  br i1 %.not24.i133.i954, label %bb.app, label %bb.api

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i953:  ; preds = %bb.ape
  %i.jcg = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i945), !noalias !703
  br i1 %i.jcg, label %bb.app, label %bb.api

bb.api:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i953, %bb.aph, %bb.apg, %bb.apf, %bb.apd
  %i.jch = getelementptr inbounds [4 x i8], ptr %i.ivz, i64 %.4.i42.i124.i945 ; 2 uses
  %i.jci = load i32, ptr %i.jch, align 4, !tbaa !3, !noalias !703
  %i.jcj = zext i32 %i.jci to i64                 ; 4 uses
  %i.jck = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !703 ; 2 uses
  %.not.i29.i129.i950 = icmp eq ptr %i.jck, null
  br i1 %.not.i29.i129.i950, label %bb.apk, label %bb.apj

bb.apj:                                           ; preds = %bb.api
  %i.jcl = load i64, ptr %i.ixd, align 8, !tbaa !99, !noalias !703
  %i.jcm = add nsw i64 %i.jcl, %i.jcj             ; 2 uses
  %i.jcn = lshr i64 %i.jcm, 3
  %i.jco = getelementptr inbounds nuw i8, ptr %i.jck, i64 %i.jcn
  %i.jcp = load i8, ptr %i.jco, align 1, !tbaa !98, !noalias !703
  %i.jcq = trunc i64 %i.jcm to i8
  %i.jcr = and i8 %i.jcq, 7
  %i.jcs = lshr i8 %i.jcp, %i.jcr
  %i.jct = trunc i8 %i.jcs to i1
  br i1 %i.jct, label %bb.apo, label %bb.app

bb.apk:                                           ; preds = %bb.api
  %i.jcu = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !703
  %i.jcv = getelementptr inbounds nuw i8, ptr %i.jcu, i64 40
  %i.jcw = load i32, ptr %i.jcv, align 8, !tbaa !42, !noalias !703
  switch i32 %i.jcw, label %bb.apn [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i951
    i32 28, label %bb.apl
    i32 38, label %bb.apm
  ]

bb.apl:                                           ; preds = %bb.apk
  %i.jcx = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jcj), !noalias !703
  br i1 %i.jcx, label %bb.app, label %bb.apo

bb.apm:                                           ; preds = %bb.apk
  %i.jcy = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jcj), !noalias !703
  br i1 %i.jcy, label %bb.app, label %bb.apo

bb.apn:                                           ; preds = %bb.apk
  %i.jcz = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !703
  %i.jda = load i64, ptr %i.ivs, align 8, !tbaa !62, !noalias !703
  %.not25.i131.i952 = icmp eq i64 %i.jcz, %i.jda
  br i1 %.not25.i131.i952, label %bb.app, label %bb.apo

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i951:  ; preds = %bb.apk
  %i.jdb = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jcj), !noalias !703
  br i1 %i.jdb, label %bb.app, label %bb.apo

bb.apo:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i951, %bb.apn, %bb.apm, %bb.apl, %bb.apj
  %i.jdc = shl nsw i64 %.4.i42.i124.i945, 4
  %i.jdd = getelementptr inbounds i8, ptr %i.ivr, i64 %i.jdc
  %i.jde = load i32, ptr %i.jch, align 4, !tbaa !3, !noalias !703
  %i.jdf = shl i32 %i.jde, 4
  %i.jdg = zext i32 %i.jdf to i64
  %i.jdh = getelementptr inbounds nuw i8, ptr %i.ivq, i64 %i.jdg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jdd, ptr noundef nonnull align 1 dereferenceable(16) %i.jdh, i64 16, i1 false), !noalias !703
  %i.jdi = srem i64 %.4.i42.i124.i945, 8
  %i.jdj = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.jdi
  %i.jdk = load i8, ptr %i.jdj, align 1, !tbaa !98, !noalias !703
  %i.jdl = sdiv i64 %.4.i42.i124.i945, 8
  %i.jdm = getelementptr inbounds i8, ptr %.0.i.i.i91.i912, i64 %i.jdl ; 2 uses
  %i.jdn = load i8, ptr %i.jdm, align 1, !tbaa !98, !noalias !703
  %i.jdo = or i8 %i.jdn, %i.jdk
  store i8 %i.jdo, ptr %i.jdm, align 1, !tbaa !98, !noalias !703
  %i.jdp = add nsw i64 %.385.i41.i125.i946, 1
  br label %bb.apq

bb.app:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i951, %bb.apn, %bb.apm, %bb.apl, %bb.apj, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i953, %bb.aph, %bb.apg, %bb.apf, %bb.apd
  %i.jdq = shl nsw i64 %.4.i42.i124.i945, 4
  %i.jdr = getelementptr inbounds i8, ptr %i.ivr, i64 %i.jdq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jdr, i8 0, i64 16, i1 false), !noalias !703
  br label %bb.apq

bb.apq:                                           ; preds = %bb.app, %bb.apo
  %.486.i.i127.i948 = phi i64 [ %i.jdp, %bb.apo ], [ %.385.i41.i125.i946, %bb.app ] ; 2 uses
  %i.jds = add nsw i64 %.4.i42.i124.i945, 1       ; 2 uses
  %i.jdt = add nuw nsw i64 %.0.i43.i123.i944, 1   ; 2 uses
  %exitcond65.not.i128.i949 = icmp eq i64 %i.jdt, %i.jbn
  br i1 %exitcond65.not.i128.i949, label %.loopexit.i105.i926, label %.lr.ph44.i122.i943, !llvm.loop !709

.loopexit.sink.split.i102.i923:                   ; preds = %bb.apc, %bb.aok
  %.sink86.i103.i924 = phi i64 [ %i.iyi, %bb.aok ], [ %i.jbn, %bb.apc ] ; 2 uses
  %.587.i.ph.i104.i925 = phi i64 [ %i.ixk, %bb.aok ], [ %.082.i53.i95.i916, %bb.apc ]
  %i.jdu = shl nsw i64 %.081.i54.i94.i915, 4
  %i.jdv = getelementptr inbounds i8, ptr %i.ivr, i64 %i.jdu
  %i.jdw = shl nsw i64 %.sink86.i103.i924, 4
  call void @llvm.memset.p0.i64(ptr align 1 %i.jdv, i8 0, i64 %i.jdw, i1 false), !noalias !703
  %i.jdx = add nsw i64 %.sink86.i103.i924, %.081.i54.i94.i915
  br label %.loopexit.i105.i926

.loopexit.i105.i926.loopexit3276.unr-lcssa:       ; preds = %.lr.ph39.i116.i937
  %i.jdy = and i16 %.sroa.0.0.extract.trunc.i.i96.i917, 1
  %lcmp.mod3360.not = icmp eq i16 %i.jdy, 0
  br i1 %lcmp.mod3360.not, label %.loopexit.i105.i926, label %.lr.ph39.i116.i937.epil.preheader

.lr.ph39.i116.i937.epil.preheader:                ; preds = %.loopexit.i105.i926.loopexit3276.unr-lcssa, %.lr.ph39.i116.i937.preheader
  %.1.i37.i118.i939.epil.init = phi i64 [ %.081.i54.i94.i915, %.lr.ph39.i116.i937.preheader ], [ %i.iyg, %.loopexit.i105.i926.loopexit3276.unr-lcssa ] ; 3 uses
  %lcmp.mod3362 = trunc i32 %i.ixe to i1
  call void @llvm.assume(i1 %lcmp.mod3362)
  %i.jdz = shl nsw i64 %.1.i37.i118.i939.epil.init, 4
  %i.jea = getelementptr inbounds i8, ptr %i.ivr, i64 %i.jdz
  %i.jeb = getelementptr inbounds [4 x i8], ptr %i.ivz, i64 %.1.i37.i118.i939.epil.init
  %i.jec = load i32, ptr %i.jeb, align 4, !tbaa !3, !noalias !703
  %i.jed = shl i32 %i.jec, 4
  %i.jee = zext i32 %i.jed to i64
  %i.jef = getelementptr inbounds nuw i8, ptr %i.ivq, i64 %i.jee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jea, ptr noundef nonnull align 1 dereferenceable(16) %i.jef, i64 16, i1 false), !noalias !703
  %i.jeg = add nsw i64 %.1.i37.i118.i939.epil.init, 1
  br label %.loopexit.i105.i926

.loopexit.i105.i926:                              ; preds = %bb.aos, %.lr.ph39.i116.i937.epil.preheader, %.loopexit.i105.i926.loopexit3276.unr-lcssa, %bb.apq, %bb.apb, %.loopexit.sink.split.i102.i923, %.preheader27.i121.i942, %.preheader.i134.i955, %.preheader30.i108.i929, %bb.aoj
  %.587.i.i106.i927 = phi i64 [ %.587.i.ph.i104.i925, %.loopexit.sink.split.i102.i923 ], [ %i.ixk, %bb.aoj ], [ %.486.i.i127.i948, %bb.apq ], [ %i.ixk, %.lr.ph39.i116.i937.epil.preheader ], [ %i.ixk, %.preheader30.i108.i929 ], [ %.082.i53.i95.i916, %.preheader.i134.i955 ], [ %.082.i53.i95.i916, %.preheader27.i121.i942 ], [ %.284.i.i140.i961, %bb.apb ], [ %i.ixk, %.loopexit.i105.i926.loopexit3276.unr-lcssa ], [ %i.ixk, %bb.aos ] ; 2 uses
  %.5.i.i107.i928 = phi i64 [ %i.jdx, %.loopexit.sink.split.i102.i923 ], [ %.081.i54.i94.i915, %bb.aoj ], [ %i.jds, %bb.apq ], [ %i.jeg, %.lr.ph39.i116.i937.epil.preheader ], [ %.081.i54.i94.i915, %.preheader30.i108.i929 ], [ %.081.i54.i94.i915, %.preheader.i134.i955 ], [ %.081.i54.i94.i915, %.preheader27.i121.i942 ], [ %i.jbk, %bb.apb ], [ %i.iyg, %.loopexit.i105.i926.loopexit3276.unr-lcssa ], [ %i.izs, %bb.aos ] ; 2 uses
  %i.jeh = icmp slt i64 %.5.i.i107.i928, %i.ivt
  br i1 %i.jeh, label %bb.aoh, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !710

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i105.i926, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i911
  %.082.i.lcssa.i92.i913 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i911 ], [ %.587.i.i106.i927, %.loopexit.i105.i926 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !703
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i907:                                  ; preds = %.lr.ph.i86.i907, %.lr.ph.i86.i907.preheader.new
  %.0.i1833.i87.i908 = phi i64 [ 0, %.lr.ph.i86.i907.preheader.new ], [ %i.jex, %.lr.ph.i86.i907 ] ; 4 uses
  %niter3358 = phi i64 [ 0, %.lr.ph.i86.i907.preheader.new ], [ %niter3358.next.1, %.lr.ph.i86.i907 ]
  %i.jei = shl nuw nsw i64 %.0.i1833.i87.i908, 4
  %i.jej = getelementptr inbounds nuw i8, ptr %i.ivr, i64 %i.jei
  %i.jek = getelementptr inbounds nuw [4 x i8], ptr %i.ivz, i64 %.0.i1833.i87.i908
  %i.jel = load i32, ptr %i.jek, align 4, !tbaa !3, !noalias !703
  %i.jem = shl i32 %i.jel, 4
  %i.jen = zext i32 %i.jem to i64
  %i.jeo = getelementptr inbounds nuw i8, ptr %i.ivq, i64 %i.jen
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jej, ptr noundef nonnull align 1 dereferenceable(16) %i.jeo, i64 16, i1 false), !noalias !703
  %i.jep = or disjoint i64 %.0.i1833.i87.i908, 1  ; 2 uses
  %i.jeq = shl nuw nsw i64 %i.jep, 4
  %i.jer = getelementptr inbounds nuw i8, ptr %i.ivr, i64 %i.jeq
  %i.jes = getelementptr inbounds nuw [4 x i8], ptr %i.ivz, i64 %i.jep
  %i.jet = load i32, ptr %i.jes, align 4, !tbaa !3, !noalias !703
  %i.jeu = shl i32 %i.jet, 4
  %i.jev = zext i32 %i.jeu to i64
  %i.jew = getelementptr inbounds nuw i8, ptr %i.ivq, i64 %i.jev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jer, ptr noundef nonnull align 1 dereferenceable(16) %i.jew, i64 16, i1 false), !noalias !703
  %i.jex = add nuw nsw i64 %.0.i1833.i87.i908, 2  ; 2 uses
  %niter3358.next.1 = add nuw nsw i64 %niter3358, 2 ; 2 uses
  %niter3358.ncmp.1 = icmp eq i64 %niter3358.next.1, %unroll_iter3357
  br i1 %niter3358.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3282.unr-lcssa, label %.lr.ph.i86.i907, !llvm.loop !711

bb.apr:                                           ; preds = %bb.akx
  br i1 %i.icb, label %bb.apt, label %bb.aps

bb.aps:                                           ; preds = %bb.apr
  %i.jey = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.jez = load i64, ptr %i.jey, align 8, !tbaa !71, !noalias !712
  %.not.i19.i145.i1088 = icmp ne i64 %i.jez, 0
  %i.jfa = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.jfb = load ptr, ptr %i.jfa, align 8, !noalias !712
  %i.jfc = icmp ne ptr %i.jfb, null
  %i.jfd = select i1 %.not.i19.i145.i1088, i1 %i.jfc, i1 false
  br label %bb.apt

bb.apt:                                           ; preds = %bb.aps, %bb.apr
  %i.jfe = phi i1 [ true, %bb.apr ], [ %i.jfd, %bb.aps ]
  %i.jff = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !712
  %i.jfg = extractvalue { i32, ptr } %i.jff, 1    ; 9 uses
  %i.jfh = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !712 ; 13 uses
  %i.jfi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.jfj = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !712 ; 11 uses
  %i.jfk = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.jfl = load i64, ptr %i.jfk, align 8, !tbaa !99, !noalias !712
  %i.jfm = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.jfn = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.jfo = load ptr, ptr %i.jfn, align 8, !tbaa !66, !noalias !712
  %i.jfp = getelementptr inbounds [8 x i8], ptr %i.jfo, i64 %i.jfl ; 9 uses
  br i1 %i.jfe, label %bb.apu, label %.preheader32.i146.i1089

.preheader32.i146.i1089:                          ; preds = %bb.apt
  %i.jfq = icmp sgt i64 %i.jfj, 0
  br i1 %i.jfq, label %.lr.ph.i148.i1090.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i1090.preheader:                      ; preds = %.preheader32.i146.i1089
  %xtraiter3387 = and i64 %i.jfj, 1
  %i.jfr = icmp eq i64 %i.jfj, 1
  br i1 %i.jfr, label %.lr.ph.i148.i1090.epil.preheader, label %.lr.ph.i148.i1090.preheader.new

.lr.ph.i148.i1090.preheader.new:                  ; preds = %.lr.ph.i148.i1090.preheader
  %unroll_iter3390 = and i64 %i.jfj, 9223372036854775806
  br label %.lr.ph.i148.i1090

bb.apu:                                           ; preds = %bb.apt
  %i.jfs = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.jft = load ptr, ptr %i.jfs, align 8, !tbaa !171, !noalias !712
  %i.jfu = load ptr, ptr %i.jft, align 8, !tbaa !306, !noalias !712 ; 4 uses
  %.not.i.i.i151.i1093 = icmp eq ptr %i.jfu, null
  br i1 %.not.i.i.i151.i1093, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1094, label %bb.apv

bb.apv:                                           ; preds = %bb.apu
  %i.jfv = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.jfw = load i64, ptr %i.jfv, align 8, !tbaa !438, !noalias !712
  %i.jfx = getelementptr inbounds nuw i8, ptr %i.jfu, i64 9
  %i.jfy = load i8, ptr %i.jfx, align 1, !tbaa !439, !range !127, !noalias !712, !noundef !128
  %i.jfz = trunc nuw i8 %i.jfy to i1
  %i.jga = getelementptr inbounds nuw i8, ptr %i.jfu, i64 8
  %i.jgb = load i8, ptr %i.jga, align 8, !range !127, !noalias !712
  %i.jgc = trunc nuw i8 %i.jgb to i1
  %i.jgd = select i1 %i.jfz, i1 %i.jgc, i1 false, !prof !117
  %i.jge = getelementptr inbounds nuw i8, ptr %i.jfu, i64 16
  %i.jgf = load ptr, ptr %i.jge, align 8, !noalias !712
  %i.jgg = select i1 %i.jgd, ptr %i.jgf, ptr null, !prof !117
  %i.jgh = getelementptr inbounds i8, ptr %i.jgg, i64 %i.jfw
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1094

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1094: ; preds = %bb.apv, %bb.apu
  %.0.i.i.i153.i1095 = phi ptr [ %i.jgh, %bb.apv ], [ null, %bb.apu ] ; 5 uses
  %i.jgi = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.jgj = load i64, ptr %i.jgi, align 8, !tbaa !178, !noalias !712 ; 2 uses
  %i.jgk = ashr i64 %i.jgj, 3
  %i.jgl = and i64 %i.jgj, 7
  %i.jgm = icmp ne i64 %i.jgl, 0
  %i.jgn = zext i1 %i.jgm to i64
  %i.jgo = add nsw i64 %i.jgk, %i.jgn
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i153.i1095, i8 0, i64 %i.jgo, i1 false), !noalias !712
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !712
  %i.jgp = load ptr, ptr %i.jfm, align 8, !tbaa !66, !noalias !712
  %i.jgq = load i64, ptr %i.jfk, align 8, !tbaa !99, !noalias !712
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.jgp, i64 noundef %i.jgq, i64 noundef %i.jfj), !noalias !712
  %i.jgr = icmp sgt i64 %i.jfj, 0
  br i1 %i.jgr, label %.lr.ph55.i155.i1097, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i155.i1097:                              ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1094
  %i.jgs = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.jgt = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.apw

bb.apw:                                           ; preds = %.loopexit.i167.i1109, %.lr.ph55.i155.i1097
  %.081.i54.i156.i1098 = phi i64 [ 0, %.lr.ph55.i155.i1097 ], [ %.5.i.i169.i1111, %.loopexit.i167.i1109 ] ; 12 uses
  %.082.i53.i157.i1099 = phi i64 [ 0, %.lr.ph55.i155.i1097 ], [ %.587.i.i168.i1110, %.loopexit.i167.i1109 ] ; 6 uses
  %i.jgu = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %12), !noalias !712 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i158.i1100 = trunc i32 %i.jgu to i16 ; 10 uses
  %i.jgv = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !712
  %.not.i20.i159.i1101 = icmp ne i64 %i.jgv, 0
  %i.jgw = load ptr, ptr %i.v, align 8, !noalias !712
  %i.jgx = icmp ne ptr %i.jgw, null
  %i.jgy = select i1 %.not.i20.i159.i1101, i1 %i.jgx, i1 false
  br i1 %i.jgy, label %bb.aqi, label %bb.apx

bb.apx:                                           ; preds = %bb.apw
  %.sroa.14.0.extract.shift.i.i160.i1102 = lshr i32 %i.jgu, 16
  %.sroa.14.0.extract.trunc.i.i161.i1103 = zext nneg i32 %.sroa.14.0.extract.shift.i.i160.i1102 to i64
  %sext91.i.i162.i1104 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i161.i1103, 48
  %i.jgz = ashr exact i64 %sext91.i.i162.i1104, 48
  %i.jha = add nsw i64 %i.jgz, %.082.i53.i157.i1099 ; 6 uses
  %i.jhb = ashr i32 %i.jgu, 16                    ; 2 uses
  %sext.i.i163.i1105 = shl i32 %i.jgu, 16
  %i.jhc = ashr exact i32 %sext.i.i163.i1105, 16
  %i.jhd = icmp eq i32 %i.jhb, %i.jhc
  br i1 %i.jhd, label %bb.apy, label %bb.apz

bb.apy:                                           ; preds = %bb.apx
  %i.jhe = sext i16 %.sroa.0.0.extract.trunc.i.i158.i1100 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i153.i1095, i64 noundef %.081.i54.i156.i1098, i64 noundef %i.jhe, i1 noundef zeroext true), !noalias !712
  %i.jhf = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i1100, 0
  br i1 %i.jhf, label %.lr.ph39.i178.i1120.preheader, label %.loopexit.i167.i1109

.lr.ph39.i178.i1120.preheader:                    ; preds = %bb.apy
  %i.jhg = icmp eq i16 %.sroa.0.0.extract.trunc.i.i158.i1100, 1
  br i1 %i.jhg, label %.lr.ph39.i178.i1120.epil.preheader, label %.lr.ph39.i178.i1120.preheader.new

.lr.ph39.i178.i1120.preheader.new:                ; preds = %.lr.ph39.i178.i1120.preheader
  %unroll_iter3396 = and i64 %i.jhe, 32766
  br label %.lr.ph39.i178.i1120

.lr.ph39.i178.i1120:                              ; preds = %.lr.ph39.i178.i1120, %.lr.ph39.i178.i1120.preheader.new
  %.1.i37.i180.i1122 = phi i64 [ %.081.i54.i156.i1098, %.lr.ph39.i178.i1120.preheader.new ], [ %i.jhu, %.lr.ph39.i178.i1120 ] ; 4 uses
  %niter3397 = phi i64 [ 0, %.lr.ph39.i178.i1120.preheader.new ], [ %niter3397.next.1, %.lr.ph39.i178.i1120 ]
  %i.jhh = shl nsw i64 %.1.i37.i180.i1122, 4
  %i.jhi = getelementptr inbounds i8, ptr %i.jfh, i64 %i.jhh
  %i.jhj = getelementptr inbounds [8 x i8], ptr %i.jfp, i64 %.1.i37.i180.i1122
  %i.jhk = load i64, ptr %i.jhj, align 8, !tbaa !130, !noalias !712
  %i.jhl = shl i64 %i.jhk, 4
  %i.jhm = getelementptr inbounds nuw i8, ptr %i.jfg, i64 %i.jhl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jhi, ptr noundef nonnull align 1 dereferenceable(16) %i.jhm, i64 16, i1 false), !noalias !712
  %i.jhn = add nsw i64 %.1.i37.i180.i1122, 1      ; 2 uses
  %i.jho = shl nsw i64 %i.jhn, 4
  %i.jhp = getelementptr inbounds i8, ptr %i.jfh, i64 %i.jho
  %i.jhq = getelementptr inbounds [8 x i8], ptr %i.jfp, i64 %i.jhn
  %i.jhr = load i64, ptr %i.jhq, align 8, !tbaa !130, !noalias !712
  %i.jhs = shl i64 %i.jhr, 4
  %i.jht = getelementptr inbounds nuw i8, ptr %i.jfg, i64 %i.jhs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jhp, ptr noundef nonnull align 1 dereferenceable(16) %i.jht, i64 16, i1 false), !noalias !712
  %i.jhu = add nsw i64 %.1.i37.i180.i1122, 2      ; 3 uses
  %niter3397.next.1 = add i64 %niter3397, 2       ; 2 uses
  %niter3397.ncmp.1 = icmp eq i64 %niter3397.next.1, %unroll_iter3396
  br i1 %niter3397.ncmp.1, label %.loopexit.i167.i1109.loopexit3253.unr-lcssa, label %.lr.ph39.i178.i1120, !llvm.loop !715

bb.apz:                                           ; preds = %bb.apx
  %i.jhv = icmp sgt i32 %i.jhb, 0
  %i.jhw = sext i16 %.sroa.0.0.extract.trunc.i.i158.i1100 to i64 ; 2 uses
  br i1 %i.jhv, label %.preheader30.i170.i1112, label %.loopexit.sink.split.i164.i1106

.preheader30.i170.i1112:                          ; preds = %bb.apz
  %i.jhx = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i1100, 0
  br i1 %i.jhx, label %.lr.ph36.i171.i1113, label %.loopexit.i167.i1109

.lr.ph36.i171.i1113:                              ; preds = %.preheader30.i170.i1112, %bb.aqh
  %.079.i35.i172.i1114 = phi i64 [ %i.jjg, %bb.aqh ], [ 0, %.preheader30.i170.i1112 ]
  %.2.i34.i173.i1115 = phi i64 [ %i.jjf, %bb.aqh ], [ %.081.i54.i156.i1098, %.preheader30.i170.i1112 ] ; 10 uses
  %i.jhy = load ptr, ptr %i.jfm, align 8, !tbaa !66, !noalias !712 ; 2 uses
  %.not.i21.i174.i1116 = icmp eq ptr %i.jhy, null
  br i1 %.not.i21.i174.i1116, label %bb.aqb, label %bb.aqa

bb.aqa:                                           ; preds = %.lr.ph36.i171.i1113
  %i.jhz = load i64, ptr %i.jfk, align 8, !tbaa !99, !noalias !712
  %i.jia = add nsw i64 %i.jhz, %.2.i34.i173.i1115 ; 2 uses
  %i.jib = lshr i64 %i.jia, 3
  %i.jic = getelementptr inbounds nuw i8, ptr %i.jhy, i64 %i.jib
  %i.jid = load i8, ptr %i.jic, align 1, !tbaa !98, !noalias !712
  %i.jie = trunc i64 %i.jia to i8
  %i.jif = and i8 %i.jie, 7
  %i.jig = lshr i8 %i.jid, %i.jif
  %i.jih = trunc i8 %i.jig to i1
  br i1 %i.jih, label %bb.aqf, label %bb.aqg

bb.aqb:                                           ; preds = %.lr.ph36.i171.i1113
  %i.jii = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !712
  %i.jij = getelementptr inbounds nuw i8, ptr %i.jii, i64 40
  %i.jik = load i32, ptr %i.jij, align 8, !tbaa !42, !noalias !712
  switch i32 %i.jik, label %bb.aqe [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i176.i1118
    i32 28, label %bb.aqc
    i32 38, label %bb.aqd
  ]

bb.aqc:                                           ; preds = %bb.aqb
  %i.jil = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i173.i1115), !noalias !712
  br i1 %i.jil, label %bb.aqg, label %bb.aqf

bb.aqd:                                           ; preds = %bb.aqb
  %i.jim = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i173.i1115), !noalias !712
  br i1 %i.jim, label %bb.aqg, label %bb.aqf

bb.aqe:                                           ; preds = %bb.aqb
  %i.jin = load i64, ptr %i.jgs, align 8, !tbaa !71, !noalias !712
  %i.jio = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !712
  %.not.i177.i1119 = icmp eq i64 %i.jin, %i.jio
end_hunk_20
begin_hunk_21_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %.284.i.i202.i1144 = phi i64 [ %i.jks, %bb.aqo ], [ %.183.i47.i200.i1142, %bb.aqp ] ; 2 uses
  %i.jkv = add nsw i64 %.3.i48.i199.i1141, 1      ; 2 uses
  %i.jkw = add nuw nsw i64 %.078.i49.i198.i1140, 1 ; 2 uses
  %exitcond66.not.i203.i1145 = icmp eq i64 %i.jkw, %i.jjk
  br i1 %exitcond66.not.i203.i1145, label %.loopexit.i167.i1109, label %.lr.ph50.i197.i1139, !llvm.loop !717

bb.aqr:                                           ; preds = %bb.aqi
  %i.jkx = icmp sgt i32 %i.jjh, 0
  %i.jky = sext i16 %.sroa.0.0.extract.trunc.i.i158.i1100 to i64 ; 2 uses
  br i1 %i.jkx, label %.preheader27.i183.i1125, label %.loopexit.sink.split.i164.i1106

.preheader27.i183.i1125:                          ; preds = %bb.aqr
  %i.jkz = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i1100, 0
  br i1 %i.jkz, label %.lr.ph44.i184.i1126, label %.loopexit.i167.i1109

.lr.ph44.i184.i1126:                              ; preds = %.preheader27.i183.i1125, %bb.arf
  %.0.i43.i185.i1127 = phi i64 [ %i.jnc, %bb.arf ], [ 0, %.preheader27.i183.i1125 ]
  %.4.i42.i186.i1128 = phi i64 [ %i.jnb, %bb.arf ], [ %.081.i54.i156.i1098, %.preheader27.i183.i1125 ] ; 10 uses
  %.385.i41.i187.i1129 = phi i64 [ %.486.i.i189.i1131, %bb.arf ], [ %.082.i53.i157.i1099, %.preheader27.i183.i1125 ] ; 2 uses
  %i.jla = load ptr, ptr %i.jfm, align 8, !tbaa !66, !noalias !712 ; 2 uses
  %.not.i26.i188.i1130 = icmp eq ptr %i.jla, null
  br i1 %.not.i26.i188.i1130, label %bb.aqt, label %bb.aqs

bb.aqs:                                           ; preds = %.lr.ph44.i184.i1126
  %i.jlb = load i64, ptr %i.jfk, align 8, !tbaa !99, !noalias !712
  %i.jlc = add nsw i64 %i.jlb, %.4.i42.i186.i1128 ; 2 uses
  %i.jld = lshr i64 %i.jlc, 3
  %i.jle = getelementptr inbounds nuw i8, ptr %i.jla, i64 %i.jld
  %i.jlf = load i8, ptr %i.jle, align 1, !tbaa !98, !noalias !712
  %i.jlg = trunc i64 %i.jlc to i8
  %i.jlh = and i8 %i.jlg, 7
  %i.jli = lshr i8 %i.jlf, %i.jlh
  %i.jlj = trunc i8 %i.jli to i1
  br i1 %i.jlj, label %bb.aqx, label %bb.are

bb.aqt:                                           ; preds = %.lr.ph44.i184.i1126
  %i.jlk = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !712
  %i.jll = getelementptr inbounds nuw i8, ptr %i.jlk, i64 40
  %i.jlm = load i32, ptr %i.jll, align 8, !tbaa !42, !noalias !712
  switch i32 %i.jlm, label %bb.aqw [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1136
    i32 28, label %bb.aqu
    i32 38, label %bb.aqv
  ]

bb.aqu:                                           ; preds = %bb.aqt
  %i.jln = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i1128), !noalias !712
  br i1 %i.jln, label %bb.are, label %bb.aqx

bb.aqv:                                           ; preds = %bb.aqt
  %i.jlo = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i1128), !noalias !712
  br i1 %i.jlo, label %bb.are, label %bb.aqx

bb.aqw:                                           ; preds = %bb.aqt
  %i.jlp = load i64, ptr %i.jgs, align 8, !tbaa !71, !noalias !712
  %i.jlq = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !712
  %.not24.i195.i1137 = icmp eq i64 %i.jlp, %i.jlq
  br i1 %.not24.i195.i1137, label %bb.are, label %bb.aqx

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1136: ; preds = %bb.aqt
  %i.jlr = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i1128), !noalias !712
  br i1 %i.jlr, label %bb.are, label %bb.aqx

bb.aqx:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1136, %bb.aqw, %bb.aqv, %bb.aqu, %bb.aqs
  %i.jls = getelementptr inbounds [8 x i8], ptr %i.jfp, i64 %.4.i42.i186.i1128 ; 2 uses
  %i.jlt = load i64, ptr %i.jls, align 8, !tbaa !130, !noalias !712 ; 4 uses
  %i.jlu = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !712 ; 2 uses
  %.not.i29.i191.i1133 = icmp eq ptr %i.jlu, null
  br i1 %.not.i29.i191.i1133, label %bb.aqz, label %bb.aqy

bb.aqy:                                           ; preds = %bb.aqx
  %i.jlv = load i64, ptr %i.jgt, align 8, !tbaa !99, !noalias !712
  %i.jlw = add nsw i64 %i.jlv, %i.jlt             ; 2 uses
  %i.jlx = lshr i64 %i.jlw, 3
  %i.jly = getelementptr inbounds nuw i8, ptr %i.jlu, i64 %i.jlx
  %i.jlz = load i8, ptr %i.jly, align 1, !tbaa !98, !noalias !712
  %i.jma = trunc i64 %i.jlw to i8
  %i.jmb = and i8 %i.jma, 7
  %i.jmc = lshr i8 %i.jlz, %i.jmb
  %i.jmd = trunc i8 %i.jmc to i1
  br i1 %i.jmd, label %bb.ard, label %bb.are

bb.aqz:                                           ; preds = %bb.aqx
  %i.jme = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !712
  %i.jmf = getelementptr inbounds nuw i8, ptr %i.jme, i64 40
  %i.jmg = load i32, ptr %i.jmf, align 8, !tbaa !42, !noalias !712
  switch i32 %i.jmg, label %bb.arc [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1134
    i32 28, label %bb.ara
    i32 38, label %bb.arb
  ]

bb.ara:                                           ; preds = %bb.aqz
  %i.jmh = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jlt), !noalias !712
  br i1 %i.jmh, label %bb.are, label %bb.ard

bb.arb:                                           ; preds = %bb.aqz
  %i.jmi = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jlt), !noalias !712
  br i1 %i.jmi, label %bb.are, label %bb.ard

bb.arc:                                           ; preds = %bb.aqz
  %i.jmj = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !712
  %i.jmk = load i64, ptr %i.jfi, align 8, !tbaa !62, !noalias !712
  %.not25.i193.i1135 = icmp eq i64 %i.jmj, %i.jmk
  br i1 %.not25.i193.i1135, label %bb.are, label %bb.ard

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1134: ; preds = %bb.aqz
  %i.jml = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jlt), !noalias !712
  br i1 %i.jml, label %bb.are, label %bb.ard

bb.ard:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1134, %bb.arc, %bb.arb, %bb.ara, %bb.aqy
  %i.jmm = shl nsw i64 %.4.i42.i186.i1128, 4
  %i.jmn = getelementptr inbounds i8, ptr %i.jfh, i64 %i.jmm
  %i.jmo = load i64, ptr %i.jls, align 8, !tbaa !130, !noalias !712
  %i.jmp = shl i64 %i.jmo, 4
  %i.jmq = getelementptr inbounds nuw i8, ptr %i.jfg, i64 %i.jmp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jmn, ptr noundef nonnull align 1 dereferenceable(16) %i.jmq, i64 16, i1 false), !noalias !712
  %i.jmr = srem i64 %.4.i42.i186.i1128, 8
  %i.jms = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.jmr
  %i.jmt = load i8, ptr %i.jms, align 1, !tbaa !98, !noalias !712
  %i.jmu = sdiv i64 %.4.i42.i186.i1128, 8
  %i.jmv = getelementptr inbounds i8, ptr %.0.i.i.i153.i1095, i64 %i.jmu ; 2 uses
  %i.jmw = load i8, ptr %i.jmv, align 1, !tbaa !98, !noalias !712
  %i.jmx = or i8 %i.jmw, %i.jmt
  store i8 %i.jmx, ptr %i.jmv, align 1, !tbaa !98, !noalias !712
  %i.jmy = add nsw i64 %.385.i41.i187.i1129, 1
  br label %bb.arf

bb.are:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1134, %bb.arc, %bb.arb, %bb.ara, %bb.aqy, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1136, %bb.aqw, %bb.aqv, %bb.aqu, %bb.aqs
  %i.jmz = shl nsw i64 %.4.i42.i186.i1128, 4
  %i.jna = getelementptr inbounds i8, ptr %i.jfh, i64 %i.jmz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jna, i8 0, i64 16, i1 false), !noalias !712
  br label %bb.arf

bb.arf:                                           ; preds = %bb.are, %bb.ard
  %.486.i.i189.i1131 = phi i64 [ %i.jmy, %bb.ard ], [ %.385.i41.i187.i1129, %bb.are ] ; 2 uses
  %i.jnb = add nsw i64 %.4.i42.i186.i1128, 1      ; 2 uses
  %i.jnc = add nuw nsw i64 %.0.i43.i185.i1127, 1  ; 2 uses
  %exitcond65.not.i190.i1132 = icmp eq i64 %i.jnc, %i.jky
  br i1 %exitcond65.not.i190.i1132, label %.loopexit.i167.i1109, label %.lr.ph44.i184.i1126, !llvm.loop !718

.loopexit.sink.split.i164.i1106:                  ; preds = %bb.aqr, %bb.apz
  %.sink86.i165.i1107 = phi i64 [ %i.jhw, %bb.apz ], [ %i.jky, %bb.aqr ] ; 2 uses
  %.587.i.ph.i166.i1108 = phi i64 [ %i.jha, %bb.apz ], [ %.082.i53.i157.i1099, %bb.aqr ]
  %i.jnd = shl nsw i64 %.081.i54.i156.i1098, 4
  %i.jne = getelementptr inbounds i8, ptr %i.jfh, i64 %i.jnd
  %i.jnf = shl nsw i64 %.sink86.i165.i1107, 4
  call void @llvm.memset.p0.i64(ptr align 1 %i.jne, i8 0, i64 %i.jnf, i1 false), !noalias !712
  %i.jng = add nsw i64 %.sink86.i165.i1107, %.081.i54.i156.i1098
  br label %.loopexit.i167.i1109

.loopexit.i167.i1109.loopexit3253.unr-lcssa:      ; preds = %.lr.ph39.i178.i1120
  %i.jnh = and i16 %.sroa.0.0.extract.trunc.i.i158.i1100, 1
  %lcmp.mod3393.not = icmp eq i16 %i.jnh, 0
  br i1 %lcmp.mod3393.not, label %.loopexit.i167.i1109, label %.lr.ph39.i178.i1120.epil.preheader

.lr.ph39.i178.i1120.epil.preheader:               ; preds = %.loopexit.i167.i1109.loopexit3253.unr-lcssa, %.lr.ph39.i178.i1120.preheader
  %.1.i37.i180.i1122.epil.init = phi i64 [ %.081.i54.i156.i1098, %.lr.ph39.i178.i1120.preheader ], [ %i.jhu, %.loopexit.i167.i1109.loopexit3253.unr-lcssa ] ; 3 uses
  %lcmp.mod3395 = trunc i32 %i.jgu to i1
  call void @llvm.assume(i1 %lcmp.mod3395)
  %i.jni = shl nsw i64 %.1.i37.i180.i1122.epil.init, 4
  %i.jnj = getelementptr inbounds i8, ptr %i.jfh, i64 %i.jni
  %i.jnk = getelementptr inbounds [8 x i8], ptr %i.jfp, i64 %.1.i37.i180.i1122.epil.init
  %i.jnl = load i64, ptr %i.jnk, align 8, !tbaa !130, !noalias !712
  %i.jnm = shl i64 %i.jnl, 4
  %i.jnn = getelementptr inbounds nuw i8, ptr %i.jfg, i64 %i.jnm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jnj, ptr noundef nonnull align 1 dereferenceable(16) %i.jnn, i64 16, i1 false), !noalias !712
  %i.jno = add nsw i64 %.1.i37.i180.i1122.epil.init, 1
  br label %.loopexit.i167.i1109

.loopexit.i167.i1109:                             ; preds = %bb.aqh, %.lr.ph39.i178.i1120.epil.preheader, %.loopexit.i167.i1109.loopexit3253.unr-lcssa, %bb.arf, %bb.aqq, %.loopexit.sink.split.i164.i1106, %.preheader27.i183.i1125, %.preheader.i196.i1138, %.preheader30.i170.i1112, %bb.apy
  %.587.i.i168.i1110 = phi i64 [ %.587.i.ph.i166.i1108, %.loopexit.sink.split.i164.i1106 ], [ %i.jha, %bb.apy ], [ %.486.i.i189.i1131, %bb.arf ], [ %i.jha, %.lr.ph39.i178.i1120.epil.preheader ], [ %i.jha, %.preheader30.i170.i1112 ], [ %.082.i53.i157.i1099, %.preheader.i196.i1138 ], [ %.082.i53.i157.i1099, %.preheader27.i183.i1125 ], [ %.284.i.i202.i1144, %bb.aqq ], [ %i.jha, %.loopexit.i167.i1109.loopexit3253.unr-lcssa ], [ %i.jha, %bb.aqh ] ; 2 uses
  %.5.i.i169.i1111 = phi i64 [ %i.jng, %.loopexit.sink.split.i164.i1106 ], [ %.081.i54.i156.i1098, %bb.apy ], [ %i.jnb, %bb.arf ], [ %i.jno, %.lr.ph39.i178.i1120.epil.preheader ], [ %.081.i54.i156.i1098, %.preheader30.i170.i1112 ], [ %.081.i54.i156.i1098, %.preheader.i196.i1138 ], [ %.081.i54.i156.i1098, %.preheader27.i183.i1125 ], [ %i.jkv, %bb.aqq ], [ %i.jhu, %.loopexit.i167.i1109.loopexit3253.unr-lcssa ], [ %i.jjf, %bb.aqh ] ; 2 uses
  %i.jnp = icmp slt i64 %.5.i.i169.i1111, %i.jfj
  br i1 %i.jnp, label %bb.apw, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !719

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i167.i1109, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1094
  %.082.i.lcssa.i154.i1096 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1094 ], [ %.587.i.i168.i1110, %.loopexit.i167.i1109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !712
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i1090:                                ; preds = %.lr.ph.i148.i1090, %.lr.ph.i148.i1090.preheader.new
  %.0.i1833.i149.i1091 = phi i64 [ 0, %.lr.ph.i148.i1090.preheader.new ], [ %i.jod, %.lr.ph.i148.i1090 ] ; 4 uses
  %niter3391 = phi i64 [ 0, %.lr.ph.i148.i1090.preheader.new ], [ %niter3391.next.1, %.lr.ph.i148.i1090 ]
  %i.jnq = shl nuw nsw i64 %.0.i1833.i149.i1091, 4
  %i.jnr = getelementptr inbounds nuw i8, ptr %i.jfh, i64 %i.jnq
  %i.jns = getelementptr inbounds nuw [8 x i8], ptr %i.jfp, i64 %.0.i1833.i149.i1091
  %i.jnt = load i64, ptr %i.jns, align 8, !tbaa !130, !noalias !712
  %i.jnu = shl i64 %i.jnt, 4
  %i.jnv = getelementptr inbounds nuw i8, ptr %i.jfg, i64 %i.jnu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jnr, ptr noundef nonnull align 1 dereferenceable(16) %i.jnv, i64 16, i1 false), !noalias !712
  %i.jnw = or disjoint i64 %.0.i1833.i149.i1091, 1 ; 2 uses
  %i.jnx = shl nuw nsw i64 %i.jnw, 4
  %i.jny = getelementptr inbounds nuw i8, ptr %i.jfh, i64 %i.jnx
  %i.jnz = getelementptr inbounds nuw [8 x i8], ptr %i.jfp, i64 %i.jnw
  %i.joa = load i64, ptr %i.jnz, align 8, !tbaa !130, !noalias !712
  %i.job = shl i64 %i.joa, 4
  %i.joc = getelementptr inbounds nuw i8, ptr %i.jfg, i64 %i.job
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jny, ptr noundef nonnull align 1 dereferenceable(16) %i.joc, i64 16, i1 false), !noalias !712
  %i.jod = add nuw nsw i64 %.0.i1833.i149.i1091, 2 ; 2 uses
  %niter3391.next.1 = add nuw nsw i64 %niter3391, 2 ; 2 uses
  %niter3391.ncmp.1 = icmp eq i64 %niter3391.next.1, %unroll_iter3390
  br i1 %niter3391.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, label %.lr.ph.i148.i1090, !llvm.loop !720

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i148.i1090
  %lcmp.mod3388.not = icmp eq i64 %xtraiter3387, 0
  br i1 %lcmp.mod3388.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i148.i1090.epil.preheader

.lr.ph.i148.i1090.epil.preheader:                 ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.lr.ph.i148.i1090.preheader
  %.0.i1833.i149.i1091.epil.init = phi i64 [ 0, %.lr.ph.i148.i1090.preheader ], [ %i.jod, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3389 = trunc i64 %i.jfj to i1
  call void @llvm.assume(i1 %lcmp.mod3389)
  %i.joe = shl nuw nsw i64 %.0.i1833.i149.i1091.epil.init, 4
  %i.jof = getelementptr inbounds nuw i8, ptr %i.jfh, i64 %i.joe
  %i.jog = getelementptr inbounds nuw [8 x i8], ptr %i.jfp, i64 %.0.i1833.i149.i1091.epil.init
  %i.joh = load i64, ptr %i.jog, align 8, !tbaa !130, !noalias !712
  %i.joi = shl i64 %i.joh, 4
  %i.joj = getelementptr inbounds nuw i8, ptr %i.jfg, i64 %i.joi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jof, ptr noundef nonnull align 1 dereferenceable(16) %i.joj, i64 16, i1 false), !noalias !712
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3266.unr-lcssa: ; preds = %.lr.ph.i.i1029
  %lcmp.mod3377.not = icmp eq i64 %xtraiter3376, 0
  br i1 %lcmp.mod3377.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i.i1029.epil.preheader

.lr.ph.i.i1029.epil.preheader:                    ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3266.unr-lcssa, %.lr.ph.i.i1029.preheader
  %.0.i1833.i.i1030.epil.init = phi i64 [ 0, %.lr.ph.i.i1029.preheader ], [ %i.ilr, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3266.unr-lcssa ] ; 2 uses
  %lcmp.mod3378 = trunc i64 %i.icn to i1
  call void @llvm.assume(i1 %lcmp.mod3378)
  %i.jok = shl nuw nsw i64 %.0.i1833.i.i1030.epil.init, 4
  %i.jol = getelementptr inbounds nuw i8, ptr %i.icl, i64 %i.jok
  %i.jom = getelementptr inbounds nuw i8, ptr %i.ict, i64 %.0.i1833.i.i1030.epil.init
  %i.jon = load i8, ptr %i.jom, align 1, !tbaa !98, !noalias !685
  %i.joo = zext i8 %i.jon to i64
  %i.jop = shl nuw nsw i64 %i.joo, 4
  %i.joq = getelementptr inbounds nuw i8, ptr %i.ick, i64 %i.jop
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jol, ptr noundef nonnull align 1 dereferenceable(16) %i.joq, i64 16, i1 false), !noalias !685
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3274.unr-lcssa: ; preds = %.lr.ph.i24.i968
  %lcmp.mod3366.not = icmp eq i64 %xtraiter3365, 0
  br i1 %lcmp.mod3366.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i24.i968.epil.preheader

.lr.ph.i24.i968.epil.preheader:                   ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3274.unr-lcssa, %.lr.ph.i24.i968.preheader
  %.0.i1833.i25.i969.epil.init = phi i64 [ 0, %.lr.ph.i24.i968.preheader ], [ %i.ivh, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3274.unr-lcssa ] ; 2 uses
  %lcmp.mod3367 = trunc i64 %i.imd to i1
  call void @llvm.assume(i1 %lcmp.mod3367)
  %i.jor = shl nuw nsw i64 %.0.i1833.i25.i969.epil.init, 4
  %i.jos = getelementptr inbounds nuw i8, ptr %i.imb, i64 %i.jor
  %i.jot = getelementptr inbounds nuw [2 x i8], ptr %i.imj, i64 %.0.i1833.i25.i969.epil.init
  %i.jou = load i16, ptr %i.jot, align 2, !tbaa !269, !noalias !694
  %i.jov = zext i16 %i.jou to i64
  %i.jow = shl nuw nsw i64 %i.jov, 4
  %i.jox = getelementptr inbounds nuw i8, ptr %i.ima, i64 %i.jow
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jos, ptr noundef nonnull align 1 dereferenceable(16) %i.jox, i64 16, i1 false), !noalias !694
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3282.unr-lcssa: ; preds = %.lr.ph.i86.i907
  %lcmp.mod3355.not = icmp eq i64 %xtraiter3354, 0
  br i1 %lcmp.mod3355.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i86.i907.epil.preheader

.lr.ph.i86.i907.epil.preheader:                   ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3282.unr-lcssa, %.lr.ph.i86.i907.preheader
  %.0.i1833.i87.i908.epil.init = phi i64 [ 0, %.lr.ph.i86.i907.preheader ], [ %i.jex, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3282.unr-lcssa ] ; 2 uses
  %lcmp.mod3356 = trunc i64 %i.ivt to i1
  call void @llvm.assume(i1 %lcmp.mod3356)
  %i.joy = shl nuw nsw i64 %.0.i1833.i87.i908.epil.init, 4
  %i.joz = getelementptr inbounds nuw i8, ptr %i.ivr, i64 %i.joy
  %i.jpa = getelementptr inbounds nuw [4 x i8], ptr %i.ivz, i64 %.0.i1833.i87.i908.epil.init
  %i.jpb = load i32, ptr %i.jpa, align 4, !tbaa !3, !noalias !703
  %i.jpc = shl i32 %i.jpb, 4
  %i.jpd = zext i32 %i.jpc to i64
  %i.jpe = getelementptr inbounds nuw i8, ptr %i.ivq, i64 %i.jpd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.joz, ptr noundef nonnull align 1 dereferenceable(16) %i.jpe, i64 16, i1 false), !noalias !703
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit: ; preds = %.lr.ph.i86.i907.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3282.unr-lcssa, %.lr.ph.i24.i968.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3274.unr-lcssa, %.lr.ph.i.i1029.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3266.unr-lcssa, %.lr.ph.i148.i1090.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.preheader32.i.i1028, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i22.i967, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i84.i905, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i146.i1089, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i
  %.0.i147.sink.i906 = phi i64 [ %i.imd, %.lr.ph.i24.i968.epil.preheader ], [ %i.icn, %.lr.ph.i.i1029.epil.preheader ], [ %i.jfj, %.lr.ph.i148.i1090.epil.preheader ], [ %.082.i.lcssa.i.i1035, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.icn, %.preheader32.i.i1028 ], [ %.082.i.lcssa.i30.i974, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.imd, %.preheader32.i22.i967 ], [ %.082.i.lcssa.i92.i913, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.ivt, %.preheader32.i84.i905 ], [ %.082.i.lcssa.i154.i1096, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi128EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.jfj, %.preheader32.i146.i1089 ], [ %i.jfj, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ], [ %i.icn, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3266.unr-lcssa ], [ %i.imd, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3274.unr-lcssa ], [ %i.ivt, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3282.unr-lcssa ], [ %i.ivt, %.lr.ph.i86.i907.epil.preheader ]
  %i.jpf = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.jpg = load i64, ptr %i.jpf, align 8, !tbaa !178, !noalias !681
  %i.jph = sub nsw i64 %i.jpg, %.0.i147.sink.i906
  %i.jpi = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store atomic i64 %i.jph, ptr %i.jpi seq_cst, align 8, !noalias !681
  store ptr null, ptr %0, align 8, !tbaa !113, !alias.scope !681
  br label %.critedge69

bb.arg:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit83
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.jpj = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !721 ; 2 uses
  %i.jpk = load ptr, ptr %i.jpj, align 8, !tbaa !90, !noalias !721
  %i.jpl = getelementptr inbounds nuw i8, ptr %i.jpk, i64 64
  %i.jpm = load ptr, ptr %i.jpl, align 8, !noalias !721
  %i.jpn = call noundef i32 %i.jpm(ptr noundef nonnull align 8 dereferenceable(72) %i.jpj), !noalias !721, !inline_history !724
  %i.jpo = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !721
  %.not.i.i144.i1332 = icmp ne i64 %i.jpo, 0
  %i.jpp = load ptr, ptr %i.v, align 8, !noalias !721
  %i.jpq = icmp ne ptr %i.jpp, null
  %i.jpr = select i1 %.not.i.i144.i1332, i1 %i.jpq, i1 false ; 4 uses
  switch i32 %i.jpn, label %bb.awa [
    i32 1, label %bb.arh
    i32 2, label %bb.asw
    i32 4, label %bb.aul
  ]

bb.arh:                                           ; preds = %bb.arg
  br i1 %i.jpr, label %bb.arj, label %bb.ari

bb.ari:                                           ; preds = %bb.arh
  %i.jps = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.jpt = load i64, ptr %i.jps, align 8, !tbaa !71, !noalias !725
  %.not.i19.i.i1272 = icmp ne i64 %i.jpt, 0
  %i.jpu = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.jpv = load ptr, ptr %i.jpu, align 8, !noalias !725
  %i.jpw = icmp ne ptr %i.jpv, null
  %i.jpx = select i1 %.not.i19.i.i1272, i1 %i.jpw, i1 false
  br label %bb.arj

bb.arj:                                           ; preds = %bb.ari, %bb.arh
  %i.jpy = phi i1 [ true, %bb.arh ], [ %i.jpx, %bb.ari ]
  %i.jpz = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !725
  %i.jqa = extractvalue { i32, ptr } %i.jpz, 1    ; 9 uses
  %i.jqb = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !725 ; 13 uses
  %i.jqc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.jqd = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !725 ; 11 uses
  %i.jqe = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.jqf = load i64, ptr %i.jqe, align 8, !tbaa !99, !noalias !725
  %i.jqg = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.jqh = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.jqi = load ptr, ptr %i.jqh, align 8, !tbaa !66, !noalias !725
  %i.jqj = getelementptr inbounds i8, ptr %i.jqi, i64 %i.jqf ; 9 uses
  br i1 %i.jpy, label %bb.ark, label %.preheader32.i.i1273

.preheader32.i.i1273:                             ; preds = %bb.arj
  %i.jqk = icmp sgt i64 %i.jqd, 0
  br i1 %i.jqk, label %.lr.ph.i.i1274.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i1274.preheader:                         ; preds = %.preheader32.i.i1273
  %xtraiter3332 = and i64 %i.jqd, 1
  %i.jql = icmp eq i64 %i.jqd, 1
  br i1 %i.jql, label %.lr.ph.i.i1274.epil.preheader, label %.lr.ph.i.i1274.preheader.new

.lr.ph.i.i1274.preheader.new:                     ; preds = %.lr.ph.i.i1274.preheader
  %unroll_iter3335 = and i64 %i.jqd, 9223372036854775806
  br label %.lr.ph.i.i1274

bb.ark:                                           ; preds = %bb.arj
  %i.jqm = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.jqn = load ptr, ptr %i.jqm, align 8, !tbaa !171, !noalias !725
  %i.jqo = load ptr, ptr %i.jqn, align 8, !tbaa !306, !noalias !725 ; 4 uses
  %.not.i.i.i.i1277 = icmp eq ptr %i.jqo, null
  br i1 %.not.i.i.i.i1277, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1278, label %bb.arl

bb.arl:                                           ; preds = %bb.ark
  %i.jqp = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.jqq = load i64, ptr %i.jqp, align 8, !tbaa !438, !noalias !725
  %i.jqr = getelementptr inbounds nuw i8, ptr %i.jqo, i64 9
  %i.jqs = load i8, ptr %i.jqr, align 1, !tbaa !439, !range !127, !noalias !725, !noundef !128
  %i.jqt = trunc nuw i8 %i.jqs to i1
  %i.jqu = getelementptr inbounds nuw i8, ptr %i.jqo, i64 8
  %i.jqv = load i8, ptr %i.jqu, align 8, !range !127, !noalias !725
  %i.jqw = trunc nuw i8 %i.jqv to i1
  %i.jqx = select i1 %i.jqt, i1 %i.jqw, i1 false, !prof !117
  %i.jqy = getelementptr inbounds nuw i8, ptr %i.jqo, i64 16
  %i.jqz = load ptr, ptr %i.jqy, align 8, !noalias !725
  %i.jra = select i1 %i.jqx, ptr %i.jqz, ptr null, !prof !117
  %i.jrb = getelementptr inbounds i8, ptr %i.jra, i64 %i.jqq
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1278

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1278: ; preds = %bb.arl, %bb.ark
  %.0.i.i.i.i1279 = phi ptr [ %i.jrb, %bb.arl ], [ null, %bb.ark ] ; 5 uses
  %i.jrc = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.jrd = load i64, ptr %i.jrc, align 8, !tbaa !178, !noalias !725 ; 2 uses
  %i.jre = ashr i64 %i.jrd, 3
  %i.jrf = and i64 %i.jrd, 7
  %i.jrg = icmp ne i64 %i.jrf, 0
  %i.jrh = zext i1 %i.jrg to i64
  %i.jri = add nsw i64 %i.jre, %i.jrh
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i.i1279, i8 0, i64 %i.jri, i1 false), !noalias !725
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !725
  %i.jrj = load ptr, ptr %i.jqg, align 8, !tbaa !66, !noalias !725
  %i.jrk = load i64, ptr %i.jqe, align 8, !tbaa !99, !noalias !725
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.jrj, i64 noundef %i.jrk, i64 noundef %i.jqd), !noalias !725
  %i.jrl = icmp sgt i64 %i.jqd, 0
  br i1 %i.jrl, label %.lr.ph55.i.i1281, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i.i1281:                                 ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1278
  %i.jrm = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.jrn = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.arm

bb.arm:                                           ; preds = %.loopexit.i.i1293, %.lr.ph55.i.i1281
  %.081.i54.i.i1282 = phi i64 [ 0, %.lr.ph55.i.i1281 ], [ %.5.i.i.i1295, %.loopexit.i.i1293 ] ; 12 uses
  %.082.i53.i.i1283 = phi i64 [ 0, %.lr.ph55.i.i1281 ], [ %.587.i.i.i1294, %.loopexit.i.i1293 ] ; 6 uses
  %i.jro = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %11), !noalias !725 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i.i1284 = trunc i32 %i.jro to i16 ; 10 uses
  %i.jrp = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !725
  %.not.i20.i.i1285 = icmp ne i64 %i.jrp, 0
  %i.jrq = load ptr, ptr %i.v, align 8, !noalias !725
  %i.jrr = icmp ne ptr %i.jrq, null
  %i.jrs = select i1 %.not.i20.i.i1285, i1 %i.jrr, i1 false
  br i1 %i.jrs, label %bb.ary, label %bb.arn

end_hunk_21
begin_hunk_22_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a

bb.ash:                                           ; preds = %bb.ary
  %i.jvw = icmp sgt i32 %i.jue, 0
  %i.jvx = sext i16 %.sroa.0.0.extract.trunc.i.i.i1284 to i64 ; 2 uses
  br i1 %i.jvw, label %.preheader27.i.i1309, label %.loopexit.sink.split.i.i1290

.preheader27.i.i1309:                             ; preds = %bb.ash
  %i.jvy = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i1284, 0
  br i1 %i.jvy, label %.lr.ph44.i.i1310, label %.loopexit.i.i1293

.lr.ph44.i.i1310:                                 ; preds = %.preheader27.i.i1309, %bb.asv
  %.0.i43.i.i1311 = phi i64 [ %i.jyd, %bb.asv ], [ 0, %.preheader27.i.i1309 ]
  %.4.i42.i.i1312 = phi i64 [ %i.jyc, %bb.asv ], [ %.081.i54.i.i1282, %.preheader27.i.i1309 ] ; 10 uses
  %.385.i41.i.i1313 = phi i64 [ %.486.i.i.i1315, %bb.asv ], [ %.082.i53.i.i1283, %.preheader27.i.i1309 ] ; 2 uses
  %i.jvz = load ptr, ptr %i.jqg, align 8, !tbaa !66, !noalias !725 ; 2 uses
  %.not.i26.i.i1314 = icmp eq ptr %i.jvz, null
  br i1 %.not.i26.i.i1314, label %bb.asj, label %bb.asi

bb.asi:                                           ; preds = %.lr.ph44.i.i1310
  %i.jwa = load i64, ptr %i.jqe, align 8, !tbaa !99, !noalias !725
  %i.jwb = add nsw i64 %i.jwa, %.4.i42.i.i1312    ; 2 uses
  %i.jwc = lshr i64 %i.jwb, 3
  %i.jwd = getelementptr inbounds nuw i8, ptr %i.jvz, i64 %i.jwc
  %i.jwe = load i8, ptr %i.jwd, align 1, !tbaa !98, !noalias !725
  %i.jwf = trunc i64 %i.jwb to i8
  %i.jwg = and i8 %i.jwf, 7
  %i.jwh = lshr i8 %i.jwe, %i.jwg
  %i.jwi = trunc i8 %i.jwh to i1
  br i1 %i.jwi, label %bb.asn, label %bb.asu

bb.asj:                                           ; preds = %.lr.ph44.i.i1310
  %i.jwj = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !725
  %i.jwk = getelementptr inbounds nuw i8, ptr %i.jwj, i64 40
  %i.jwl = load i32, ptr %i.jwk, align 8, !tbaa !42, !noalias !725
  switch i32 %i.jwl, label %bb.asm [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1320
    i32 28, label %bb.ask
    i32 38, label %bb.asl
  ]

bb.ask:                                           ; preds = %bb.asj
  %i.jwm = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i1312), !noalias !725
  br i1 %i.jwm, label %bb.asu, label %bb.asn

bb.asl:                                           ; preds = %bb.asj
  %i.jwn = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i1312), !noalias !725
  br i1 %i.jwn, label %bb.asu, label %bb.asn

bb.asm:                                           ; preds = %bb.asj
  %i.jwo = load i64, ptr %i.jrm, align 8, !tbaa !71, !noalias !725
  %i.jwp = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !725
  %.not24.i.i1321 = icmp eq i64 %i.jwo, %i.jwp
  br i1 %.not24.i.i1321, label %bb.asu, label %bb.asn

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1320:    ; preds = %bb.asj
  %i.jwq = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i.i1312), !noalias !725
  br i1 %i.jwq, label %bb.asu, label %bb.asn

bb.asn:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1320, %bb.asm, %bb.asl, %bb.ask, %bb.asi
  %i.jwr = getelementptr inbounds i8, ptr %i.jqj, i64 %.4.i42.i.i1312 ; 2 uses
  %i.jws = load i8, ptr %i.jwr, align 1, !tbaa !98, !noalias !725
  %i.jwt = zext i8 %i.jws to i64                  ; 4 uses
  %i.jwu = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !725 ; 2 uses
  %.not.i29.i.i1317 = icmp eq ptr %i.jwu, null
  br i1 %.not.i29.i.i1317, label %bb.asp, label %bb.aso

bb.aso:                                           ; preds = %bb.asn
  %i.jwv = load i64, ptr %i.jrn, align 8, !tbaa !99, !noalias !725
  %i.jww = add nsw i64 %i.jwv, %i.jwt             ; 2 uses
  %i.jwx = lshr i64 %i.jww, 3
  %i.jwy = getelementptr inbounds nuw i8, ptr %i.jwu, i64 %i.jwx
  %i.jwz = load i8, ptr %i.jwy, align 1, !tbaa !98, !noalias !725
  %i.jxa = trunc i64 %i.jww to i8
  %i.jxb = and i8 %i.jxa, 7
  %i.jxc = lshr i8 %i.jwz, %i.jxb
  %i.jxd = trunc i8 %i.jxc to i1
  br i1 %i.jxd, label %bb.ast, label %bb.asu

bb.asp:                                           ; preds = %bb.asn
  %i.jxe = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !725
  %i.jxf = getelementptr inbounds nuw i8, ptr %i.jxe, i64 40
  %i.jxg = load i32, ptr %i.jxf, align 8, !tbaa !42, !noalias !725
  switch i32 %i.jxg, label %bb.ass [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1318
    i32 28, label %bb.asq
    i32 38, label %bb.asr
  ]

bb.asq:                                           ; preds = %bb.asp
  %i.jxh = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jwt), !noalias !725
  br i1 %i.jxh, label %bb.asu, label %bb.ast

bb.asr:                                           ; preds = %bb.asp
  %i.jxi = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jwt), !noalias !725
  br i1 %i.jxi, label %bb.asu, label %bb.ast

bb.ass:                                           ; preds = %bb.asp
  %i.jxj = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !725
  %i.jxk = load i64, ptr %i.jqc, align 8, !tbaa !62, !noalias !725
  %.not25.i.i1319 = icmp eq i64 %i.jxj, %i.jxk
  br i1 %.not25.i.i1319, label %bb.asu, label %bb.ast

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1318:    ; preds = %bb.asp
  %i.jxl = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.jwt), !noalias !725
  br i1 %i.jxl, label %bb.asu, label %bb.ast

bb.ast:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1318, %bb.ass, %bb.asr, %bb.asq, %bb.aso
  %i.jxm = shl nsw i64 %.4.i42.i.i1312, 5
  %i.jxn = getelementptr inbounds i8, ptr %i.jqb, i64 %i.jxm
  %i.jxo = load i8, ptr %i.jwr, align 1, !tbaa !98, !noalias !725
  %i.jxp = zext i8 %i.jxo to i64
  %i.jxq = shl nuw nsw i64 %i.jxp, 5
  %i.jxr = getelementptr inbounds nuw i8, ptr %i.jqa, i64 %i.jxq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jxn, ptr noundef nonnull align 1 dereferenceable(32) %i.jxr, i64 32, i1 false), !noalias !725
  %i.jxs = srem i64 %.4.i42.i.i1312, 8
  %i.jxt = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.jxs
  %i.jxu = load i8, ptr %i.jxt, align 1, !tbaa !98, !noalias !725
  %i.jxv = sdiv i64 %.4.i42.i.i1312, 8
  %i.jxw = getelementptr inbounds i8, ptr %.0.i.i.i.i1279, i64 %i.jxv ; 2 uses
  %i.jxx = load i8, ptr %i.jxw, align 1, !tbaa !98, !noalias !725
  %i.jxy = or i8 %i.jxx, %i.jxu
  store i8 %i.jxy, ptr %i.jxw, align 1, !tbaa !98, !noalias !725
  %i.jxz = add nsw i64 %.385.i41.i.i1313, 1
  br label %bb.asv

bb.asu:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1318, %bb.ass, %bb.asr, %bb.asq, %bb.aso, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1320, %bb.asm, %bb.asl, %bb.ask, %bb.asi
  %i.jya = shl nsw i64 %.4.i42.i.i1312, 5
  %i.jyb = getelementptr inbounds i8, ptr %i.jqb, i64 %i.jya
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jyb, i8 0, i64 32, i1 false), !noalias !725
  br label %bb.asv

bb.asv:                                           ; preds = %bb.asu, %bb.ast
  %.486.i.i.i1315 = phi i64 [ %i.jxz, %bb.ast ], [ %.385.i41.i.i1313, %bb.asu ] ; 2 uses
  %i.jyc = add nsw i64 %.4.i42.i.i1312, 1         ; 2 uses
  %i.jyd = add nuw nsw i64 %.0.i43.i.i1311, 1     ; 2 uses
  %exitcond65.not.i.i1316 = icmp eq i64 %i.jyd, %i.jvx
  br i1 %exitcond65.not.i.i1316, label %.loopexit.i.i1293, label %.lr.ph44.i.i1310, !llvm.loop !731

.loopexit.sink.split.i.i1290:                     ; preds = %bb.ash, %bb.arp
  %.sink86.i.i1291 = phi i64 [ %i.jss, %bb.arp ], [ %i.jvx, %bb.ash ] ; 2 uses
  %.587.i.ph.i.i1292 = phi i64 [ %i.jru, %bb.arp ], [ %.082.i53.i.i1283, %bb.ash ]
  %i.jye = shl nsw i64 %.081.i54.i.i1282, 5
  %i.jyf = getelementptr inbounds i8, ptr %i.jqb, i64 %i.jye
  %i.jyg = shl nsw i64 %.sink86.i.i1291, 5
  call void @llvm.memset.p0.i64(ptr align 1 %i.jyf, i8 0, i64 %i.jyg, i1 false), !noalias !725
  %i.jyh = add nsw i64 %.sink86.i.i1291, %.081.i54.i.i1282
  br label %.loopexit.i.i1293

.loopexit.i.i1293.loopexit3291.unr-lcssa:         ; preds = %.lr.ph39.i.i1304
  %i.jyi = and i16 %.sroa.0.0.extract.trunc.i.i.i1284, 1
  %lcmp.mod3338.not = icmp eq i16 %i.jyi, 0
  br i1 %lcmp.mod3338.not, label %.loopexit.i.i1293, label %.lr.ph39.i.i1304.epil.preheader

.lr.ph39.i.i1304.epil.preheader:                  ; preds = %.loopexit.i.i1293.loopexit3291.unr-lcssa, %.lr.ph39.i.i1304.preheader
  %.1.i37.i.i1306.epil.init = phi i64 [ %.081.i54.i.i1282, %.lr.ph39.i.i1304.preheader ], [ %i.jsq, %.loopexit.i.i1293.loopexit3291.unr-lcssa ] ; 3 uses
  %lcmp.mod3340 = trunc i32 %i.jro to i1
  call void @llvm.assume(i1 %lcmp.mod3340)
  %i.jyj = shl nsw i64 %.1.i37.i.i1306.epil.init, 5
  %i.jyk = getelementptr inbounds i8, ptr %i.jqb, i64 %i.jyj
  %i.jyl = getelementptr inbounds i8, ptr %i.jqj, i64 %.1.i37.i.i1306.epil.init
  %i.jym = load i8, ptr %i.jyl, align 1, !tbaa !98, !noalias !725
  %i.jyn = zext i8 %i.jym to i64
  %i.jyo = shl nuw nsw i64 %i.jyn, 5
  %i.jyp = getelementptr inbounds nuw i8, ptr %i.jqa, i64 %i.jyo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jyk, ptr noundef nonnull align 1 dereferenceable(32) %i.jyp, i64 32, i1 false), !noalias !725
  %i.jyq = add nsw i64 %.1.i37.i.i1306.epil.init, 1
  br label %.loopexit.i.i1293

.loopexit.i.i1293:                                ; preds = %bb.arx, %.lr.ph39.i.i1304.epil.preheader, %.loopexit.i.i1293.loopexit3291.unr-lcssa, %bb.asv, %bb.asg, %.loopexit.sink.split.i.i1290, %.preheader27.i.i1309, %.preheader.i.i1322, %.preheader30.i.i1296, %bb.aro
  %.587.i.i.i1294 = phi i64 [ %.587.i.ph.i.i1292, %.loopexit.sink.split.i.i1290 ], [ %i.jru, %bb.aro ], [ %.486.i.i.i1315, %bb.asv ], [ %i.jru, %.lr.ph39.i.i1304.epil.preheader ], [ %i.jru, %.preheader30.i.i1296 ], [ %.082.i53.i.i1283, %.preheader.i.i1322 ], [ %.082.i53.i.i1283, %.preheader27.i.i1309 ], [ %.284.i.i.i1328, %bb.asg ], [ %i.jru, %.loopexit.i.i1293.loopexit3291.unr-lcssa ], [ %i.jru, %bb.arx ] ; 2 uses
  %.5.i.i.i1295 = phi i64 [ %i.jyh, %.loopexit.sink.split.i.i1290 ], [ %.081.i54.i.i1282, %bb.aro ], [ %i.jyc, %bb.asv ], [ %i.jyq, %.lr.ph39.i.i1304.epil.preheader ], [ %.081.i54.i.i1282, %.preheader30.i.i1296 ], [ %.081.i54.i.i1282, %.preheader.i.i1322 ], [ %.081.i54.i.i1282, %.preheader27.i.i1309 ], [ %i.jvu, %bb.asg ], [ %i.jsq, %.loopexit.i.i1293.loopexit3291.unr-lcssa ], [ %i.juc, %bb.arx ] ; 2 uses
  %i.jyr = icmp slt i64 %.5.i.i.i1295, %i.jqd
  br i1 %i.jyr, label %bb.arm, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !732

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i.i1293, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1278
  %.082.i.lcssa.i.i1280 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1278 ], [ %.587.i.i.i1294, %.loopexit.i.i1293 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !725
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i.i1274:                                   ; preds = %.lr.ph.i.i1274, %.lr.ph.i.i1274.preheader.new
  %.0.i1833.i.i1275 = phi i64 [ 0, %.lr.ph.i.i1274.preheader.new ], [ %i.jzh, %.lr.ph.i.i1274 ] ; 4 uses
  %niter3336 = phi i64 [ 0, %.lr.ph.i.i1274.preheader.new ], [ %niter3336.next.1, %.lr.ph.i.i1274 ]
  %i.jys = shl nuw nsw i64 %.0.i1833.i.i1275, 5
  %i.jyt = getelementptr inbounds nuw i8, ptr %i.jqb, i64 %i.jys
  %i.jyu = getelementptr inbounds nuw i8, ptr %i.jqj, i64 %.0.i1833.i.i1275
  %i.jyv = load i8, ptr %i.jyu, align 1, !tbaa !98, !noalias !725
  %i.jyw = zext i8 %i.jyv to i64
  %i.jyx = shl nuw nsw i64 %i.jyw, 5
  %i.jyy = getelementptr inbounds nuw i8, ptr %i.jqa, i64 %i.jyx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jyt, ptr noundef nonnull align 1 dereferenceable(32) %i.jyy, i64 32, i1 false), !noalias !725
  %i.jyz = or disjoint i64 %.0.i1833.i.i1275, 1   ; 2 uses
  %i.jza = shl nuw nsw i64 %i.jyz, 5
  %i.jzb = getelementptr inbounds nuw i8, ptr %i.jqb, i64 %i.jza
  %i.jzc = getelementptr inbounds nuw i8, ptr %i.jqj, i64 %i.jyz
  %i.jzd = load i8, ptr %i.jzc, align 1, !tbaa !98, !noalias !725
  %i.jze = zext i8 %i.jzd to i64
  %i.jzf = shl nuw nsw i64 %i.jze, 5
  %i.jzg = getelementptr inbounds nuw i8, ptr %i.jqa, i64 %i.jzf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jzb, ptr noundef nonnull align 1 dereferenceable(32) %i.jzg, i64 32, i1 false), !noalias !725
  %i.jzh = add nuw nsw i64 %.0.i1833.i.i1275, 2   ; 2 uses
  %niter3336.next.1 = add nuw nsw i64 %niter3336, 2 ; 2 uses
  %niter3336.ncmp.1 = icmp eq i64 %niter3336.next.1, %unroll_iter3335
  br i1 %niter3336.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3297.unr-lcssa, label %.lr.ph.i.i1274, !llvm.loop !733

bb.asw:                                           ; preds = %bb.arg
  br i1 %i.jpr, label %bb.asy, label %bb.asx

bb.asx:                                           ; preds = %bb.asw
  %i.jzi = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.jzj = load i64, ptr %i.jzi, align 8, !tbaa !71, !noalias !734
  %.not.i19.i21.i1211 = icmp ne i64 %i.jzj, 0
  %i.jzk = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.jzl = load ptr, ptr %i.jzk, align 8, !noalias !734
  %i.jzm = icmp ne ptr %i.jzl, null
  %i.jzn = select i1 %.not.i19.i21.i1211, i1 %i.jzm, i1 false
  br label %bb.asy

bb.asy:                                           ; preds = %bb.asx, %bb.asw
  %i.jzo = phi i1 [ true, %bb.asw ], [ %i.jzn, %bb.asx ]
  %i.jzp = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !734
  %i.jzq = extractvalue { i32, ptr } %i.jzp, 1    ; 9 uses
  %i.jzr = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !734 ; 13 uses
  %i.jzs = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.jzt = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !734 ; 11 uses
  %i.jzu = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.jzv = load i64, ptr %i.jzu, align 8, !tbaa !99, !noalias !734
  %i.jzw = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.jzx = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.jzy = load ptr, ptr %i.jzx, align 8, !tbaa !66, !noalias !734
  %i.jzz = getelementptr inbounds [2 x i8], ptr %i.jzy, i64 %i.jzv ; 9 uses
  br i1 %i.jzo, label %bb.asz, label %.preheader32.i22.i1212

.preheader32.i22.i1212:                           ; preds = %bb.asy
  %i.kaa = icmp sgt i64 %i.jzt, 0
  br i1 %i.kaa, label %.lr.ph.i24.i1213.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i1213.preheader:                       ; preds = %.preheader32.i22.i1212
  %xtraiter3321 = and i64 %i.jzt, 1
  %i.kab = icmp eq i64 %i.jzt, 1
  br i1 %i.kab, label %.lr.ph.i24.i1213.epil.preheader, label %.lr.ph.i24.i1213.preheader.new

.lr.ph.i24.i1213.preheader.new:                   ; preds = %.lr.ph.i24.i1213.preheader
  %unroll_iter3324 = and i64 %i.jzt, 9223372036854775806
  br label %.lr.ph.i24.i1213

bb.asz:                                           ; preds = %bb.asy
  %i.kac = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.kad = load ptr, ptr %i.kac, align 8, !tbaa !171, !noalias !734
  %i.kae = load ptr, ptr %i.kad, align 8, !tbaa !306, !noalias !734 ; 4 uses
  %.not.i.i.i27.i1216 = icmp eq ptr %i.kae, null
  br i1 %.not.i.i.i27.i1216, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1217, label %bb.ata

bb.ata:                                           ; preds = %bb.asz
  %i.kaf = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.kag = load i64, ptr %i.kaf, align 8, !tbaa !438, !noalias !734
  %i.kah = getelementptr inbounds nuw i8, ptr %i.kae, i64 9
  %i.kai = load i8, ptr %i.kah, align 1, !tbaa !439, !range !127, !noalias !734, !noundef !128
  %i.kaj = trunc nuw i8 %i.kai to i1
  %i.kak = getelementptr inbounds nuw i8, ptr %i.kae, i64 8
  %i.kal = load i8, ptr %i.kak, align 8, !range !127, !noalias !734
  %i.kam = trunc nuw i8 %i.kal to i1
  %i.kan = select i1 %i.kaj, i1 %i.kam, i1 false, !prof !117
  %i.kao = getelementptr inbounds nuw i8, ptr %i.kae, i64 16
  %i.kap = load ptr, ptr %i.kao, align 8, !noalias !734
  %i.kaq = select i1 %i.kan, ptr %i.kap, ptr null, !prof !117
  %i.kar = getelementptr inbounds i8, ptr %i.kaq, i64 %i.kag
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1217

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1217: ; preds = %bb.ata, %bb.asz
  %.0.i.i.i29.i1218 = phi ptr [ %i.kar, %bb.ata ], [ null, %bb.asz ] ; 5 uses
  %i.kas = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.kat = load i64, ptr %i.kas, align 8, !tbaa !178, !noalias !734 ; 2 uses
  %i.kau = ashr i64 %i.kat, 3
  %i.kav = and i64 %i.kat, 7
  %i.kaw = icmp ne i64 %i.kav, 0
  %i.kax = zext i1 %i.kaw to i64
  %i.kay = add nsw i64 %i.kau, %i.kax
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i29.i1218, i8 0, i64 %i.kay, i1 false), !noalias !734
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !734
  %i.kaz = load ptr, ptr %i.jzw, align 8, !tbaa !66, !noalias !734
  %i.kba = load i64, ptr %i.jzu, align 8, !tbaa !99, !noalias !734
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %i.kaz, i64 noundef %i.kba, i64 noundef %i.jzt), !noalias !734
  %i.kbb = icmp sgt i64 %i.jzt, 0
  br i1 %i.kbb, label %.lr.ph55.i31.i1220, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i31.i1220:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1217
  %i.kbc = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.kbd = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.atb

bb.atb:                                           ; preds = %.loopexit.i43.i1232, %.lr.ph55.i31.i1220
  %.081.i54.i32.i1221 = phi i64 [ 0, %.lr.ph55.i31.i1220 ], [ %.5.i.i45.i1234, %.loopexit.i43.i1232 ] ; 12 uses
  %.082.i53.i33.i1222 = phi i64 [ 0, %.lr.ph55.i31.i1220 ], [ %.587.i.i44.i1233, %.loopexit.i43.i1232 ] ; 6 uses
  %i.kbe = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %10), !noalias !734 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i34.i1223 = trunc i32 %i.kbe to i16 ; 10 uses
  %i.kbf = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !734
  %.not.i20.i35.i1224 = icmp ne i64 %i.kbf, 0
  %i.kbg = load ptr, ptr %i.v, align 8, !noalias !734
  %i.kbh = icmp ne ptr %i.kbg, null
  %i.kbi = select i1 %.not.i20.i35.i1224, i1 %i.kbh, i1 false
  br i1 %i.kbi, label %bb.atn, label %bb.atc

bb.atc:                                           ; preds = %bb.atb
  %.sroa.14.0.extract.shift.i.i36.i1225 = lshr i32 %i.kbe, 16
  %.sroa.14.0.extract.trunc.i.i37.i1226 = zext nneg i32 %.sroa.14.0.extract.shift.i.i36.i1225 to i64
  %sext91.i.i38.i1227 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i37.i1226, 48
  %i.kbj = ashr exact i64 %sext91.i.i38.i1227, 48
  %i.kbk = add nsw i64 %i.kbj, %.082.i53.i33.i1222 ; 6 uses
  %i.kbl = ashr i32 %i.kbe, 16                    ; 2 uses
  %sext.i.i39.i1228 = shl i32 %i.kbe, 16
  %i.kbm = ashr exact i32 %sext.i.i39.i1228, 16
  %i.kbn = icmp eq i32 %i.kbl, %i.kbm
  br i1 %i.kbn, label %bb.atd, label %bb.ate

bb.atd:                                           ; preds = %bb.atc
  %i.kbo = sext i16 %.sroa.0.0.extract.trunc.i.i34.i1223 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i29.i1218, i64 noundef %.081.i54.i32.i1221, i64 noundef %i.kbo, i1 noundef zeroext true), !noalias !734
  %i.kbp = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i1223, 0
  br i1 %i.kbp, label %.lr.ph39.i54.i1243.preheader, label %.loopexit.i43.i1232

.lr.ph39.i54.i1243.preheader:                     ; preds = %bb.atd
  %i.kbq = icmp eq i16 %.sroa.0.0.extract.trunc.i.i34.i1223, 1
  br i1 %i.kbq, label %.lr.ph39.i54.i1243.epil.preheader, label %.lr.ph39.i54.i1243.preheader.new

.lr.ph39.i54.i1243.preheader.new:                 ; preds = %.lr.ph39.i54.i1243.preheader
  %unroll_iter3330 = and i64 %i.kbo, 32766
  br label %.lr.ph39.i54.i1243

.lr.ph39.i54.i1243:                               ; preds = %.lr.ph39.i54.i1243, %.lr.ph39.i54.i1243.preheader.new
  %.1.i37.i56.i1245 = phi i64 [ %.081.i54.i32.i1221, %.lr.ph39.i54.i1243.preheader.new ], [ %i.kcg, %.lr.ph39.i54.i1243 ] ; 4 uses
  %niter3331 = phi i64 [ 0, %.lr.ph39.i54.i1243.preheader.new ], [ %niter3331.next.1, %.lr.ph39.i54.i1243 ]
  %i.kbr = shl nsw i64 %.1.i37.i56.i1245, 5
  %i.kbs = getelementptr inbounds i8, ptr %i.jzr, i64 %i.kbr
  %i.kbt = getelementptr inbounds [2 x i8], ptr %i.jzz, i64 %.1.i37.i56.i1245
  %i.kbu = load i16, ptr %i.kbt, align 2, !tbaa !269, !noalias !734
  %i.kbv = zext i16 %i.kbu to i64
  %i.kbw = shl nuw nsw i64 %i.kbv, 5
  %i.kbx = getelementptr inbounds nuw i8, ptr %i.jzq, i64 %i.kbw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kbs, ptr noundef nonnull align 1 dereferenceable(32) %i.kbx, i64 32, i1 false), !noalias !734
  %i.kby = add nsw i64 %.1.i37.i56.i1245, 1       ; 2 uses
  %i.kbz = shl nsw i64 %i.kby, 5
  %i.kca = getelementptr inbounds i8, ptr %i.jzr, i64 %i.kbz
  %i.kcb = getelementptr inbounds [2 x i8], ptr %i.jzz, i64 %i.kby
  %i.kcc = load i16, ptr %i.kcb, align 2, !tbaa !269, !noalias !734
  %i.kcd = zext i16 %i.kcc to i64
  %i.kce = shl nuw nsw i64 %i.kcd, 5
  %i.kcf = getelementptr inbounds nuw i8, ptr %i.jzq, i64 %i.kce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kca, ptr noundef nonnull align 1 dereferenceable(32) %i.kcf, i64 32, i1 false), !noalias !734
  %i.kcg = add nsw i64 %.1.i37.i56.i1245, 2       ; 3 uses
  %niter3331.next.1 = add i64 %niter3331, 2       ; 2 uses
  %niter3331.ncmp.1 = icmp eq i64 %niter3331.next.1, %unroll_iter3330
  br i1 %niter3331.ncmp.1, label %.loopexit.i43.i1232.loopexit3299.unr-lcssa, label %.lr.ph39.i54.i1243, !llvm.loop !737

bb.ate:                                           ; preds = %bb.atc
  %i.kch = icmp sgt i32 %i.kbl, 0
  %i.kci = sext i16 %.sroa.0.0.extract.trunc.i.i34.i1223 to i64 ; 2 uses
  br i1 %i.kch, label %.preheader30.i46.i1235, label %.loopexit.sink.split.i40.i1229

.preheader30.i46.i1235:                           ; preds = %bb.ate
  %i.kcj = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i1223, 0
  br i1 %i.kcj, label %.lr.ph36.i47.i1236, label %.loopexit.i43.i1232

.lr.ph36.i47.i1236:                               ; preds = %.preheader30.i46.i1235, %bb.atm
  %.079.i35.i48.i1237 = phi i64 [ %i.kdt, %bb.atm ], [ 0, %.preheader30.i46.i1235 ]
  %.2.i34.i49.i1238 = phi i64 [ %i.kds, %bb.atm ], [ %.081.i54.i32.i1221, %.preheader30.i46.i1235 ] ; 10 uses
  %i.kck = load ptr, ptr %i.jzw, align 8, !tbaa !66, !noalias !734 ; 2 uses
  %.not.i21.i50.i1239 = icmp eq ptr %i.kck, null
  br i1 %.not.i21.i50.i1239, label %bb.atg, label %bb.atf

bb.atf:                                           ; preds = %.lr.ph36.i47.i1236
  %i.kcl = load i64, ptr %i.jzu, align 8, !tbaa !99, !noalias !734
  %i.kcm = add nsw i64 %i.kcl, %.2.i34.i49.i1238  ; 2 uses
  %i.kcn = lshr i64 %i.kcm, 3
  %i.kco = getelementptr inbounds nuw i8, ptr %i.kck, i64 %i.kcn
  %i.kcp = load i8, ptr %i.kco, align 1, !tbaa !98, !noalias !734
  %i.kcq = trunc i64 %i.kcm to i8
  %i.kcr = and i8 %i.kcq, 7
  %i.kcs = lshr i8 %i.kcp, %i.kcr
  %i.kct = trunc i8 %i.kcs to i1
  br i1 %i.kct, label %bb.atk, label %bb.atl

bb.atg:                                           ; preds = %.lr.ph36.i47.i1236
  %i.kcu = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !734
  %i.kcv = getelementptr inbounds nuw i8, ptr %i.kcu, i64 40
  %i.kcw = load i32, ptr %i.kcv, align 8, !tbaa !42, !noalias !734
  switch i32 %i.kcw, label %bb.atj [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i52.i1241
    i32 28, label %bb.ath
    i32 38, label %bb.ati
  ]

bb.ath:                                           ; preds = %bb.atg
  %i.kcx = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i49.i1238), !noalias !734
  br i1 %i.kcx, label %bb.atl, label %bb.atk

bb.ati:                                           ; preds = %bb.atg
  %i.kcy = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i49.i1238), !noalias !734
  br i1 %i.kcy, label %bb.atl, label %bb.atk

bb.atj:                                           ; preds = %bb.atg
  %i.kcz = load i64, ptr %i.kbc, align 8, !tbaa !71, !noalias !734
end_hunk_22
begin_hunk_23_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a

bb.atw:                                           ; preds = %bb.atn
  %i.kfm = icmp sgt i32 %i.kdu, 0
  %i.kfn = sext i16 %.sroa.0.0.extract.trunc.i.i34.i1223 to i64 ; 2 uses
  br i1 %i.kfm, label %.preheader27.i59.i1248, label %.loopexit.sink.split.i40.i1229

.preheader27.i59.i1248:                           ; preds = %bb.atw
  %i.kfo = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i1223, 0
  br i1 %i.kfo, label %.lr.ph44.i60.i1249, label %.loopexit.i43.i1232

.lr.ph44.i60.i1249:                               ; preds = %.preheader27.i59.i1248, %bb.auk
  %.0.i43.i61.i1250 = phi i64 [ %i.kht, %bb.auk ], [ 0, %.preheader27.i59.i1248 ]
  %.4.i42.i62.i1251 = phi i64 [ %i.khs, %bb.auk ], [ %.081.i54.i32.i1221, %.preheader27.i59.i1248 ] ; 10 uses
  %.385.i41.i63.i1252 = phi i64 [ %.486.i.i65.i1254, %bb.auk ], [ %.082.i53.i33.i1222, %.preheader27.i59.i1248 ] ; 2 uses
  %i.kfp = load ptr, ptr %i.jzw, align 8, !tbaa !66, !noalias !734 ; 2 uses
  %.not.i26.i64.i1253 = icmp eq ptr %i.kfp, null
  br i1 %.not.i26.i64.i1253, label %bb.aty, label %bb.atx

bb.atx:                                           ; preds = %.lr.ph44.i60.i1249
  %i.kfq = load i64, ptr %i.jzu, align 8, !tbaa !99, !noalias !734
  %i.kfr = add nsw i64 %i.kfq, %.4.i42.i62.i1251  ; 2 uses
  %i.kfs = lshr i64 %i.kfr, 3
  %i.kft = getelementptr inbounds nuw i8, ptr %i.kfp, i64 %i.kfs
  %i.kfu = load i8, ptr %i.kft, align 1, !tbaa !98, !noalias !734
  %i.kfv = trunc i64 %i.kfr to i8
  %i.kfw = and i8 %i.kfv, 7
  %i.kfx = lshr i8 %i.kfu, %i.kfw
  %i.kfy = trunc i8 %i.kfx to i1
  br i1 %i.kfy, label %bb.auc, label %bb.auj

bb.aty:                                           ; preds = %.lr.ph44.i60.i1249
  %i.kfz = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !734
  %i.kga = getelementptr inbounds nuw i8, ptr %i.kfz, i64 40
  %i.kgb = load i32, ptr %i.kga, align 8, !tbaa !42, !noalias !734
  switch i32 %i.kgb, label %bb.aub [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1259
    i32 28, label %bb.atz
    i32 38, label %bb.aua
  ]

bb.atz:                                           ; preds = %bb.aty
  %i.kgc = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i1251), !noalias !734
  br i1 %i.kgc, label %bb.auj, label %bb.auc

bb.aua:                                           ; preds = %bb.aty
  %i.kgd = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i1251), !noalias !734
  br i1 %i.kgd, label %bb.auj, label %bb.auc

bb.aub:                                           ; preds = %bb.aty
  %i.kge = load i64, ptr %i.kbc, align 8, !tbaa !71, !noalias !734
  %i.kgf = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !734
  %.not24.i71.i1260 = icmp eq i64 %i.kge, %i.kgf
  br i1 %.not24.i71.i1260, label %bb.auj, label %bb.auc

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1259:  ; preds = %bb.aty
  %i.kgg = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i62.i1251), !noalias !734
  br i1 %i.kgg, label %bb.auj, label %bb.auc

bb.auc:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1259, %bb.aub, %bb.aua, %bb.atz, %bb.atx
  %i.kgh = getelementptr inbounds [2 x i8], ptr %i.jzz, i64 %.4.i42.i62.i1251 ; 2 uses
  %i.kgi = load i16, ptr %i.kgh, align 2, !tbaa !269, !noalias !734
  %i.kgj = zext i16 %i.kgi to i64                 ; 4 uses
  %i.kgk = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !734 ; 2 uses
  %.not.i29.i67.i1256 = icmp eq ptr %i.kgk, null
  br i1 %.not.i29.i67.i1256, label %bb.aue, label %bb.aud

bb.aud:                                           ; preds = %bb.auc
  %i.kgl = load i64, ptr %i.kbd, align 8, !tbaa !99, !noalias !734
  %i.kgm = add nsw i64 %i.kgl, %i.kgj             ; 2 uses
  %i.kgn = lshr i64 %i.kgm, 3
  %i.kgo = getelementptr inbounds nuw i8, ptr %i.kgk, i64 %i.kgn
  %i.kgp = load i8, ptr %i.kgo, align 1, !tbaa !98, !noalias !734
  %i.kgq = trunc i64 %i.kgm to i8
  %i.kgr = and i8 %i.kgq, 7
  %i.kgs = lshr i8 %i.kgp, %i.kgr
  %i.kgt = trunc i8 %i.kgs to i1
  br i1 %i.kgt, label %bb.aui, label %bb.auj

bb.aue:                                           ; preds = %bb.auc
  %i.kgu = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !734
  %i.kgv = getelementptr inbounds nuw i8, ptr %i.kgu, i64 40
  %i.kgw = load i32, ptr %i.kgv, align 8, !tbaa !42, !noalias !734
  switch i32 %i.kgw, label %bb.auh [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1257
    i32 28, label %bb.auf
    i32 38, label %bb.aug
  ]

bb.auf:                                           ; preds = %bb.aue
  %i.kgx = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kgj), !noalias !734
  br i1 %i.kgx, label %bb.auj, label %bb.aui

bb.aug:                                           ; preds = %bb.aue
  %i.kgy = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kgj), !noalias !734
  br i1 %i.kgy, label %bb.auj, label %bb.aui

bb.auh:                                           ; preds = %bb.aue
  %i.kgz = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !734
  %i.kha = load i64, ptr %i.jzs, align 8, !tbaa !62, !noalias !734
  %.not25.i69.i1258 = icmp eq i64 %i.kgz, %i.kha
  br i1 %.not25.i69.i1258, label %bb.auj, label %bb.aui

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1257:  ; preds = %bb.aue
  %i.khb = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kgj), !noalias !734
  br i1 %i.khb, label %bb.auj, label %bb.aui

bb.aui:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1257, %bb.auh, %bb.aug, %bb.auf, %bb.aud
  %i.khc = shl nsw i64 %.4.i42.i62.i1251, 5
  %i.khd = getelementptr inbounds i8, ptr %i.jzr, i64 %i.khc
  %i.khe = load i16, ptr %i.kgh, align 2, !tbaa !269, !noalias !734
  %i.khf = zext i16 %i.khe to i64
  %i.khg = shl nuw nsw i64 %i.khf, 5
  %i.khh = getelementptr inbounds nuw i8, ptr %i.jzq, i64 %i.khg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.khd, ptr noundef nonnull align 1 dereferenceable(32) %i.khh, i64 32, i1 false), !noalias !734
  %i.khi = srem i64 %.4.i42.i62.i1251, 8
  %i.khj = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.khi
  %i.khk = load i8, ptr %i.khj, align 1, !tbaa !98, !noalias !734
  %i.khl = sdiv i64 %.4.i42.i62.i1251, 8
  %i.khm = getelementptr inbounds i8, ptr %.0.i.i.i29.i1218, i64 %i.khl ; 2 uses
  %i.khn = load i8, ptr %i.khm, align 1, !tbaa !98, !noalias !734
  %i.kho = or i8 %i.khn, %i.khk
  store i8 %i.kho, ptr %i.khm, align 1, !tbaa !98, !noalias !734
  %i.khp = add nsw i64 %.385.i41.i63.i1252, 1
  br label %bb.auk

bb.auj:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1257, %bb.auh, %bb.aug, %bb.auf, %bb.aud, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1259, %bb.aub, %bb.aua, %bb.atz, %bb.atx
  %i.khq = shl nsw i64 %.4.i42.i62.i1251, 5
  %i.khr = getelementptr inbounds i8, ptr %i.jzr, i64 %i.khq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.khr, i8 0, i64 32, i1 false), !noalias !734
  br label %bb.auk

bb.auk:                                           ; preds = %bb.auj, %bb.aui
  %.486.i.i65.i1254 = phi i64 [ %i.khp, %bb.aui ], [ %.385.i41.i63.i1252, %bb.auj ] ; 2 uses
  %i.khs = add nsw i64 %.4.i42.i62.i1251, 1       ; 2 uses
  %i.kht = add nuw nsw i64 %.0.i43.i61.i1250, 1   ; 2 uses
  %exitcond65.not.i66.i1255 = icmp eq i64 %i.kht, %i.kfn
  br i1 %exitcond65.not.i66.i1255, label %.loopexit.i43.i1232, label %.lr.ph44.i60.i1249, !llvm.loop !740

.loopexit.sink.split.i40.i1229:                   ; preds = %bb.atw, %bb.ate
  %.sink86.i41.i1230 = phi i64 [ %i.kci, %bb.ate ], [ %i.kfn, %bb.atw ] ; 2 uses
  %.587.i.ph.i42.i1231 = phi i64 [ %i.kbk, %bb.ate ], [ %.082.i53.i33.i1222, %bb.atw ]
  %i.khu = shl nsw i64 %.081.i54.i32.i1221, 5
  %i.khv = getelementptr inbounds i8, ptr %i.jzr, i64 %i.khu
  %i.khw = shl nsw i64 %.sink86.i41.i1230, 5
  call void @llvm.memset.p0.i64(ptr align 1 %i.khv, i8 0, i64 %i.khw, i1 false), !noalias !734
  %i.khx = add nsw i64 %.sink86.i41.i1230, %.081.i54.i32.i1221
  br label %.loopexit.i43.i1232

.loopexit.i43.i1232.loopexit3299.unr-lcssa:       ; preds = %.lr.ph39.i54.i1243
  %i.khy = and i16 %.sroa.0.0.extract.trunc.i.i34.i1223, 1
  %lcmp.mod3327.not = icmp eq i16 %i.khy, 0
  br i1 %lcmp.mod3327.not, label %.loopexit.i43.i1232, label %.lr.ph39.i54.i1243.epil.preheader

.lr.ph39.i54.i1243.epil.preheader:                ; preds = %.loopexit.i43.i1232.loopexit3299.unr-lcssa, %.lr.ph39.i54.i1243.preheader
  %.1.i37.i56.i1245.epil.init = phi i64 [ %.081.i54.i32.i1221, %.lr.ph39.i54.i1243.preheader ], [ %i.kcg, %.loopexit.i43.i1232.loopexit3299.unr-lcssa ] ; 3 uses
  %lcmp.mod3329 = trunc i32 %i.kbe to i1
  call void @llvm.assume(i1 %lcmp.mod3329)
  %i.khz = shl nsw i64 %.1.i37.i56.i1245.epil.init, 5
  %i.kia = getelementptr inbounds i8, ptr %i.jzr, i64 %i.khz
  %i.kib = getelementptr inbounds [2 x i8], ptr %i.jzz, i64 %.1.i37.i56.i1245.epil.init
  %i.kic = load i16, ptr %i.kib, align 2, !tbaa !269, !noalias !734
  %i.kid = zext i16 %i.kic to i64
  %i.kie = shl nuw nsw i64 %i.kid, 5
  %i.kif = getelementptr inbounds nuw i8, ptr %i.jzq, i64 %i.kie
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kia, ptr noundef nonnull align 1 dereferenceable(32) %i.kif, i64 32, i1 false), !noalias !734
  %i.kig = add nsw i64 %.1.i37.i56.i1245.epil.init, 1
  br label %.loopexit.i43.i1232

.loopexit.i43.i1232:                              ; preds = %bb.atm, %.lr.ph39.i54.i1243.epil.preheader, %.loopexit.i43.i1232.loopexit3299.unr-lcssa, %bb.auk, %bb.atv, %.loopexit.sink.split.i40.i1229, %.preheader27.i59.i1248, %.preheader.i72.i1261, %.preheader30.i46.i1235, %bb.atd
  %.587.i.i44.i1233 = phi i64 [ %.587.i.ph.i42.i1231, %.loopexit.sink.split.i40.i1229 ], [ %i.kbk, %bb.atd ], [ %.486.i.i65.i1254, %bb.auk ], [ %i.kbk, %.lr.ph39.i54.i1243.epil.preheader ], [ %i.kbk, %.preheader30.i46.i1235 ], [ %.082.i53.i33.i1222, %.preheader.i72.i1261 ], [ %.082.i53.i33.i1222, %.preheader27.i59.i1248 ], [ %.284.i.i78.i1267, %bb.atv ], [ %i.kbk, %.loopexit.i43.i1232.loopexit3299.unr-lcssa ], [ %i.kbk, %bb.atm ] ; 2 uses
  %.5.i.i45.i1234 = phi i64 [ %i.khx, %.loopexit.sink.split.i40.i1229 ], [ %.081.i54.i32.i1221, %bb.atd ], [ %i.khs, %bb.auk ], [ %i.kig, %.lr.ph39.i54.i1243.epil.preheader ], [ %.081.i54.i32.i1221, %.preheader30.i46.i1235 ], [ %.081.i54.i32.i1221, %.preheader.i72.i1261 ], [ %.081.i54.i32.i1221, %.preheader27.i59.i1248 ], [ %i.kfk, %bb.atv ], [ %i.kcg, %.loopexit.i43.i1232.loopexit3299.unr-lcssa ], [ %i.kds, %bb.atm ] ; 2 uses
  %i.kih = icmp slt i64 %.5.i.i45.i1234, %i.jzt
  br i1 %i.kih, label %bb.atb, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !741

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i43.i1232, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1217
  %.082.i.lcssa.i30.i1219 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1217 ], [ %.587.i.i44.i1233, %.loopexit.i43.i1232 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !734
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i24.i1213:                                 ; preds = %.lr.ph.i24.i1213, %.lr.ph.i24.i1213.preheader.new
  %.0.i1833.i25.i1214 = phi i64 [ 0, %.lr.ph.i24.i1213.preheader.new ], [ %i.kix, %.lr.ph.i24.i1213 ] ; 4 uses
  %niter3325 = phi i64 [ 0, %.lr.ph.i24.i1213.preheader.new ], [ %niter3325.next.1, %.lr.ph.i24.i1213 ]
  %i.kii = shl nuw nsw i64 %.0.i1833.i25.i1214, 5
  %i.kij = getelementptr inbounds nuw i8, ptr %i.jzr, i64 %i.kii
  %i.kik = getelementptr inbounds nuw [2 x i8], ptr %i.jzz, i64 %.0.i1833.i25.i1214
  %i.kil = load i16, ptr %i.kik, align 2, !tbaa !269, !noalias !734
  %i.kim = zext i16 %i.kil to i64
  %i.kin = shl nuw nsw i64 %i.kim, 5
  %i.kio = getelementptr inbounds nuw i8, ptr %i.jzq, i64 %i.kin
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kij, ptr noundef nonnull align 1 dereferenceable(32) %i.kio, i64 32, i1 false), !noalias !734
  %i.kip = or disjoint i64 %.0.i1833.i25.i1214, 1 ; 2 uses
  %i.kiq = shl nuw nsw i64 %i.kip, 5
  %i.kir = getelementptr inbounds nuw i8, ptr %i.jzr, i64 %i.kiq
  %i.kis = getelementptr inbounds nuw [2 x i8], ptr %i.jzz, i64 %i.kip
  %i.kit = load i16, ptr %i.kis, align 2, !tbaa !269, !noalias !734
  %i.kiu = zext i16 %i.kit to i64
  %i.kiv = shl nuw nsw i64 %i.kiu, 5
  %i.kiw = getelementptr inbounds nuw i8, ptr %i.jzq, i64 %i.kiv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kir, ptr noundef nonnull align 1 dereferenceable(32) %i.kiw, i64 32, i1 false), !noalias !734
  %i.kix = add nuw nsw i64 %.0.i1833.i25.i1214, 2 ; 2 uses
  %niter3325.next.1 = add nuw nsw i64 %niter3325, 2 ; 2 uses
  %niter3325.ncmp.1 = icmp eq i64 %niter3325.next.1, %unroll_iter3324
  br i1 %niter3325.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3305.unr-lcssa, label %.lr.ph.i24.i1213, !llvm.loop !742

bb.aul:                                           ; preds = %bb.arg
  br i1 %i.jpr, label %bb.aun, label %bb.aum

bb.aum:                                           ; preds = %bb.aul
  %i.kiy = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.kiz = load i64, ptr %i.kiy, align 8, !tbaa !71, !noalias !743
  %.not.i19.i83.i1149 = icmp ne i64 %i.kiz, 0
  %i.kja = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.kjb = load ptr, ptr %i.kja, align 8, !noalias !743
  %i.kjc = icmp ne ptr %i.kjb, null
  %i.kjd = select i1 %.not.i19.i83.i1149, i1 %i.kjc, i1 false
  br label %bb.aun

bb.aun:                                           ; preds = %bb.aum, %bb.aul
  %i.kje = phi i1 [ true, %bb.aul ], [ %i.kjd, %bb.aum ]
  %i.kjf = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !743
  %i.kjg = extractvalue { i32, ptr } %i.kjf, 1    ; 9 uses
  %i.kjh = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !743 ; 13 uses
  %i.kji = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.kjj = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !743 ; 11 uses
  %i.kjk = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.kjl = load i64, ptr %i.kjk, align 8, !tbaa !99, !noalias !743
  %i.kjm = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.kjn = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.kjo = load ptr, ptr %i.kjn, align 8, !tbaa !66, !noalias !743
  %i.kjp = getelementptr inbounds [4 x i8], ptr %i.kjo, i64 %i.kjl ; 9 uses
  br i1 %i.kje, label %bb.auo, label %.preheader32.i84.i1150

.preheader32.i84.i1150:                           ; preds = %bb.aun
  %i.kjq = icmp sgt i64 %i.kjj, 0
  br i1 %i.kjq, label %.lr.ph.i86.i1152.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i1152.preheader:                       ; preds = %.preheader32.i84.i1150
  %xtraiter = and i64 %i.kjj, 1
  %i.kjr = icmp eq i64 %i.kjj, 1
  br i1 %i.kjr, label %.lr.ph.i86.i1152.epil.preheader, label %.lr.ph.i86.i1152.preheader.new

.lr.ph.i86.i1152.preheader.new:                   ; preds = %.lr.ph.i86.i1152.preheader
  %unroll_iter = and i64 %i.kjj, 9223372036854775806
  br label %.lr.ph.i86.i1152

bb.auo:                                           ; preds = %bb.aun
  %i.kjs = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.kjt = load ptr, ptr %i.kjs, align 8, !tbaa !171, !noalias !743
  %i.kju = load ptr, ptr %i.kjt, align 8, !tbaa !306, !noalias !743 ; 4 uses
  %.not.i.i.i89.i1155 = icmp eq ptr %i.kju, null
  br i1 %.not.i.i.i89.i1155, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1156, label %bb.aup

bb.aup:                                           ; preds = %bb.auo
  %i.kjv = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.kjw = load i64, ptr %i.kjv, align 8, !tbaa !438, !noalias !743
  %i.kjx = getelementptr inbounds nuw i8, ptr %i.kju, i64 9
  %i.kjy = load i8, ptr %i.kjx, align 1, !tbaa !439, !range !127, !noalias !743, !noundef !128
  %i.kjz = trunc nuw i8 %i.kjy to i1
  %i.kka = getelementptr inbounds nuw i8, ptr %i.kju, i64 8
  %i.kkb = load i8, ptr %i.kka, align 8, !range !127, !noalias !743
  %i.kkc = trunc nuw i8 %i.kkb to i1
  %i.kkd = select i1 %i.kjz, i1 %i.kkc, i1 false, !prof !117
  %i.kke = getelementptr inbounds nuw i8, ptr %i.kju, i64 16
  %i.kkf = load ptr, ptr %i.kke, align 8, !noalias !743
  %i.kkg = select i1 %i.kkd, ptr %i.kkf, ptr null, !prof !117
  %i.kkh = getelementptr inbounds i8, ptr %i.kkg, i64 %i.kjw
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1156

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1156: ; preds = %bb.aup, %bb.auo
  %.0.i.i.i91.i1157 = phi ptr [ %i.kkh, %bb.aup ], [ null, %bb.auo ] ; 5 uses
  %i.kki = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.kkj = load i64, ptr %i.kki, align 8, !tbaa !178, !noalias !743 ; 2 uses
  %i.kkk = ashr i64 %i.kkj, 3
  %i.kkl = and i64 %i.kkj, 7
  %i.kkm = icmp ne i64 %i.kkl, 0
  %i.kkn = zext i1 %i.kkm to i64
  %i.kko = add nsw i64 %i.kkk, %i.kkn
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i91.i1157, i8 0, i64 %i.kko, i1 false), !noalias !743
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !743
  %i.kkp = load ptr, ptr %i.kjm, align 8, !tbaa !66, !noalias !743
  %i.kkq = load i64, ptr %i.kjk, align 8, !tbaa !99, !noalias !743
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.kkp, i64 noundef %i.kkq, i64 noundef %i.kjj), !noalias !743
  %i.kkr = icmp sgt i64 %i.kjj, 0
  br i1 %i.kkr, label %.lr.ph55.i93.i1159, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i93.i1159:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1156
  %i.kks = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.kkt = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.auq

bb.auq:                                           ; preds = %.loopexit.i105.i1171, %.lr.ph55.i93.i1159
  %.081.i54.i94.i1160 = phi i64 [ 0, %.lr.ph55.i93.i1159 ], [ %.5.i.i107.i1173, %.loopexit.i105.i1171 ] ; 12 uses
  %.082.i53.i95.i1161 = phi i64 [ 0, %.lr.ph55.i93.i1159 ], [ %.587.i.i106.i1172, %.loopexit.i105.i1171 ] ; 6 uses
  %i.kku = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %9), !noalias !743 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i96.i1162 = trunc i32 %i.kku to i16 ; 10 uses
  %i.kkv = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !743
  %.not.i20.i97.i1163 = icmp ne i64 %i.kkv, 0
  %i.kkw = load ptr, ptr %i.v, align 8, !noalias !743
  %i.kkx = icmp ne ptr %i.kkw, null
  %i.kky = select i1 %.not.i20.i97.i1163, i1 %i.kkx, i1 false
  br i1 %i.kky, label %bb.avc, label %bb.aur

bb.aur:                                           ; preds = %bb.auq
  %.sroa.14.0.extract.shift.i.i98.i1164 = lshr i32 %i.kku, 16
  %.sroa.14.0.extract.trunc.i.i99.i1165 = zext nneg i32 %.sroa.14.0.extract.shift.i.i98.i1164 to i64
  %sext91.i.i100.i1166 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i99.i1165, 48
  %i.kkz = ashr exact i64 %sext91.i.i100.i1166, 48
  %i.kla = add nsw i64 %i.kkz, %.082.i53.i95.i1161 ; 6 uses
  %i.klb = ashr i32 %i.kku, 16                    ; 2 uses
  %sext.i.i101.i1167 = shl i32 %i.kku, 16
  %i.klc = ashr exact i32 %sext.i.i101.i1167, 16
  %i.kld = icmp eq i32 %i.klb, %i.klc
  br i1 %i.kld, label %bb.aus, label %bb.aut

bb.aus:                                           ; preds = %bb.aur
  %i.kle = sext i16 %.sroa.0.0.extract.trunc.i.i96.i1162 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i91.i1157, i64 noundef %.081.i54.i94.i1160, i64 noundef %i.kle, i1 noundef zeroext true), !noalias !743
  %i.klf = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i1162, 0
  br i1 %i.klf, label %.lr.ph39.i116.i1182.preheader, label %.loopexit.i105.i1171

.lr.ph39.i116.i1182.preheader:                    ; preds = %bb.aus
  %i.klg = icmp eq i16 %.sroa.0.0.extract.trunc.i.i96.i1162, 1
  br i1 %i.klg, label %.lr.ph39.i116.i1182.epil.preheader, label %.lr.ph39.i116.i1182.preheader.new

.lr.ph39.i116.i1182.preheader.new:                ; preds = %.lr.ph39.i116.i1182.preheader
  %unroll_iter3319 = and i64 %i.kle, 32766
  br label %.lr.ph39.i116.i1182

.lr.ph39.i116.i1182:                              ; preds = %.lr.ph39.i116.i1182, %.lr.ph39.i116.i1182.preheader.new
  %.1.i37.i118.i1184 = phi i64 [ %.081.i54.i94.i1160, %.lr.ph39.i116.i1182.preheader.new ], [ %i.klw, %.lr.ph39.i116.i1182 ] ; 4 uses
  %niter3320 = phi i64 [ 0, %.lr.ph39.i116.i1182.preheader.new ], [ %niter3320.next.1, %.lr.ph39.i116.i1182 ]
  %i.klh = shl nsw i64 %.1.i37.i118.i1184, 5
  %i.kli = getelementptr inbounds i8, ptr %i.kjh, i64 %i.klh
  %i.klj = getelementptr inbounds [4 x i8], ptr %i.kjp, i64 %.1.i37.i118.i1184
  %i.klk = load i32, ptr %i.klj, align 4, !tbaa !3, !noalias !743
  %i.kll = shl i32 %i.klk, 5
  %i.klm = zext i32 %i.kll to i64
  %i.kln = getelementptr inbounds nuw i8, ptr %i.kjg, i64 %i.klm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kli, ptr noundef nonnull align 1 dereferenceable(32) %i.kln, i64 32, i1 false), !noalias !743
  %i.klo = add nsw i64 %.1.i37.i118.i1184, 1      ; 2 uses
  %i.klp = shl nsw i64 %i.klo, 5
  %i.klq = getelementptr inbounds i8, ptr %i.kjh, i64 %i.klp
  %i.klr = getelementptr inbounds [4 x i8], ptr %i.kjp, i64 %i.klo
  %i.kls = load i32, ptr %i.klr, align 4, !tbaa !3, !noalias !743
  %i.klt = shl i32 %i.kls, 5
  %i.klu = zext i32 %i.klt to i64
  %i.klv = getelementptr inbounds nuw i8, ptr %i.kjg, i64 %i.klu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.klq, ptr noundef nonnull align 1 dereferenceable(32) %i.klv, i64 32, i1 false), !noalias !743
  %i.klw = add nsw i64 %.1.i37.i118.i1184, 2      ; 3 uses
  %niter3320.next.1 = add i64 %niter3320, 2       ; 2 uses
  %niter3320.ncmp.1 = icmp eq i64 %niter3320.next.1, %unroll_iter3319
  br i1 %niter3320.ncmp.1, label %.loopexit.i105.i1171.loopexit3307.unr-lcssa, label %.lr.ph39.i116.i1182, !llvm.loop !746

bb.aut:                                           ; preds = %bb.aur
  %i.klx = icmp sgt i32 %i.klb, 0
  %i.kly = sext i16 %.sroa.0.0.extract.trunc.i.i96.i1162 to i64 ; 2 uses
  br i1 %i.klx, label %.preheader30.i108.i1174, label %.loopexit.sink.split.i102.i1168

.preheader30.i108.i1174:                          ; preds = %bb.aut
  %i.klz = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i1162, 0
  br i1 %i.klz, label %.lr.ph36.i109.i1175, label %.loopexit.i105.i1171

.lr.ph36.i109.i1175:                              ; preds = %.preheader30.i108.i1174, %bb.avb
  %.079.i35.i110.i1176 = phi i64 [ %i.knj, %bb.avb ], [ 0, %.preheader30.i108.i1174 ]
  %.2.i34.i111.i1177 = phi i64 [ %i.kni, %bb.avb ], [ %.081.i54.i94.i1160, %.preheader30.i108.i1174 ] ; 10 uses
  %i.kma = load ptr, ptr %i.kjm, align 8, !tbaa !66, !noalias !743 ; 2 uses
  %.not.i21.i112.i1178 = icmp eq ptr %i.kma, null
  br i1 %.not.i21.i112.i1178, label %bb.auv, label %bb.auu

bb.auu:                                           ; preds = %.lr.ph36.i109.i1175
  %i.kmb = load i64, ptr %i.kjk, align 8, !tbaa !99, !noalias !743
  %i.kmc = add nsw i64 %i.kmb, %.2.i34.i111.i1177 ; 2 uses
  %i.kmd = lshr i64 %i.kmc, 3
  %i.kme = getelementptr inbounds nuw i8, ptr %i.kma, i64 %i.kmd
  %i.kmf = load i8, ptr %i.kme, align 1, !tbaa !98, !noalias !743
  %i.kmg = trunc i64 %i.kmc to i8
  %i.kmh = and i8 %i.kmg, 7
  %i.kmi = lshr i8 %i.kmf, %i.kmh
  %i.kmj = trunc i8 %i.kmi to i1
  br i1 %i.kmj, label %bb.auz, label %bb.ava

bb.auv:                                           ; preds = %.lr.ph36.i109.i1175
  %i.kmk = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !743
  %i.kml = getelementptr inbounds nuw i8, ptr %i.kmk, i64 40
  %i.kmm = load i32, ptr %i.kml, align 8, !tbaa !42, !noalias !743
  switch i32 %i.kmm, label %bb.auy [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i114.i1180
    i32 28, label %bb.auw
    i32 38, label %bb.aux
  ]

bb.auw:                                           ; preds = %bb.auv
  %i.kmn = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i111.i1177), !noalias !743
  br i1 %i.kmn, label %bb.ava, label %bb.auz

bb.aux:                                           ; preds = %bb.auv
  %i.kmo = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i111.i1177), !noalias !743
  br i1 %i.kmo, label %bb.ava, label %bb.auz

bb.auy:                                           ; preds = %bb.auv
  %i.kmp = load i64, ptr %i.kks, align 8, !tbaa !71, !noalias !743
end_hunk_23
begin_hunk_24_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a

bb.avl:                                           ; preds = %bb.avc
  %i.kpc = icmp sgt i32 %i.knk, 0
  %i.kpd = sext i16 %.sroa.0.0.extract.trunc.i.i96.i1162 to i64 ; 2 uses
  br i1 %i.kpc, label %.preheader27.i121.i1187, label %.loopexit.sink.split.i102.i1168

.preheader27.i121.i1187:                          ; preds = %bb.avl
  %i.kpe = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i1162, 0
  br i1 %i.kpe, label %.lr.ph44.i122.i1188, label %.loopexit.i105.i1171

.lr.ph44.i122.i1188:                              ; preds = %.preheader27.i121.i1187, %bb.avz
  %.0.i43.i123.i1189 = phi i64 [ %i.krj, %bb.avz ], [ 0, %.preheader27.i121.i1187 ]
  %.4.i42.i124.i1190 = phi i64 [ %i.kri, %bb.avz ], [ %.081.i54.i94.i1160, %.preheader27.i121.i1187 ] ; 10 uses
  %.385.i41.i125.i1191 = phi i64 [ %.486.i.i127.i1193, %bb.avz ], [ %.082.i53.i95.i1161, %.preheader27.i121.i1187 ] ; 2 uses
  %i.kpf = load ptr, ptr %i.kjm, align 8, !tbaa !66, !noalias !743 ; 2 uses
  %.not.i26.i126.i1192 = icmp eq ptr %i.kpf, null
  br i1 %.not.i26.i126.i1192, label %bb.avn, label %bb.avm

bb.avm:                                           ; preds = %.lr.ph44.i122.i1188
  %i.kpg = load i64, ptr %i.kjk, align 8, !tbaa !99, !noalias !743
  %i.kph = add nsw i64 %i.kpg, %.4.i42.i124.i1190 ; 2 uses
  %i.kpi = lshr i64 %i.kph, 3
  %i.kpj = getelementptr inbounds nuw i8, ptr %i.kpf, i64 %i.kpi
  %i.kpk = load i8, ptr %i.kpj, align 1, !tbaa !98, !noalias !743
  %i.kpl = trunc i64 %i.kph to i8
  %i.kpm = and i8 %i.kpl, 7
  %i.kpn = lshr i8 %i.kpk, %i.kpm
  %i.kpo = trunc i8 %i.kpn to i1
  br i1 %i.kpo, label %bb.avr, label %bb.avy

bb.avn:                                           ; preds = %.lr.ph44.i122.i1188
  %i.kpp = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !743
  %i.kpq = getelementptr inbounds nuw i8, ptr %i.kpp, i64 40
  %i.kpr = load i32, ptr %i.kpq, align 8, !tbaa !42, !noalias !743
  switch i32 %i.kpr, label %bb.avq [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i1198
    i32 28, label %bb.avo
    i32 38, label %bb.avp
  ]

bb.avo:                                           ; preds = %bb.avn
  %i.kps = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i1190), !noalias !743
  br i1 %i.kps, label %bb.avy, label %bb.avr

bb.avp:                                           ; preds = %bb.avn
  %i.kpt = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i1190), !noalias !743
  br i1 %i.kpt, label %bb.avy, label %bb.avr

bb.avq:                                           ; preds = %bb.avn
  %i.kpu = load i64, ptr %i.kks, align 8, !tbaa !71, !noalias !743
  %i.kpv = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !743
  %.not24.i133.i1199 = icmp eq i64 %i.kpu, %i.kpv
  br i1 %.not24.i133.i1199, label %bb.avy, label %bb.avr

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i1198: ; preds = %bb.avn
  %i.kpw = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i124.i1190), !noalias !743
  br i1 %i.kpw, label %bb.avy, label %bb.avr

bb.avr:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i1198, %bb.avq, %bb.avp, %bb.avo, %bb.avm
  %i.kpx = getelementptr inbounds [4 x i8], ptr %i.kjp, i64 %.4.i42.i124.i1190 ; 2 uses
  %i.kpy = load i32, ptr %i.kpx, align 4, !tbaa !3, !noalias !743
  %i.kpz = zext i32 %i.kpy to i64                 ; 4 uses
  %i.kqa = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !743 ; 2 uses
  %.not.i29.i129.i1195 = icmp eq ptr %i.kqa, null
  br i1 %.not.i29.i129.i1195, label %bb.avt, label %bb.avs

bb.avs:                                           ; preds = %bb.avr
  %i.kqb = load i64, ptr %i.kkt, align 8, !tbaa !99, !noalias !743
  %i.kqc = add nsw i64 %i.kqb, %i.kpz             ; 2 uses
  %i.kqd = lshr i64 %i.kqc, 3
  %i.kqe = getelementptr inbounds nuw i8, ptr %i.kqa, i64 %i.kqd
  %i.kqf = load i8, ptr %i.kqe, align 1, !tbaa !98, !noalias !743
  %i.kqg = trunc i64 %i.kqc to i8
  %i.kqh = and i8 %i.kqg, 7
  %i.kqi = lshr i8 %i.kqf, %i.kqh
  %i.kqj = trunc i8 %i.kqi to i1
  br i1 %i.kqj, label %bb.avx, label %bb.avy

bb.avt:                                           ; preds = %bb.avr
  %i.kqk = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !743
  %i.kql = getelementptr inbounds nuw i8, ptr %i.kqk, i64 40
  %i.kqm = load i32, ptr %i.kql, align 8, !tbaa !42, !noalias !743
  switch i32 %i.kqm, label %bb.avw [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i1196
    i32 28, label %bb.avu
    i32 38, label %bb.avv
  ]

bb.avu:                                           ; preds = %bb.avt
  %i.kqn = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kpz), !noalias !743
  br i1 %i.kqn, label %bb.avy, label %bb.avx

bb.avv:                                           ; preds = %bb.avt
  %i.kqo = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kpz), !noalias !743
  br i1 %i.kqo, label %bb.avy, label %bb.avx

bb.avw:                                           ; preds = %bb.avt
  %i.kqp = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !743
  %i.kqq = load i64, ptr %i.kji, align 8, !tbaa !62, !noalias !743
  %.not25.i131.i1197 = icmp eq i64 %i.kqp, %i.kqq
  br i1 %.not25.i131.i1197, label %bb.avy, label %bb.avx

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i1196: ; preds = %bb.avt
  %i.kqr = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kpz), !noalias !743
  br i1 %i.kqr, label %bb.avy, label %bb.avx

bb.avx:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i1196, %bb.avw, %bb.avv, %bb.avu, %bb.avs
  %i.kqs = shl nsw i64 %.4.i42.i124.i1190, 5
  %i.kqt = getelementptr inbounds i8, ptr %i.kjh, i64 %i.kqs
  %i.kqu = load i32, ptr %i.kpx, align 4, !tbaa !3, !noalias !743
  %i.kqv = shl i32 %i.kqu, 5
  %i.kqw = zext i32 %i.kqv to i64
  %i.kqx = getelementptr inbounds nuw i8, ptr %i.kjg, i64 %i.kqw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kqt, ptr noundef nonnull align 1 dereferenceable(32) %i.kqx, i64 32, i1 false), !noalias !743
  %i.kqy = srem i64 %.4.i42.i124.i1190, 8
  %i.kqz = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.kqy
  %i.kra = load i8, ptr %i.kqz, align 1, !tbaa !98, !noalias !743
  %i.krb = sdiv i64 %.4.i42.i124.i1190, 8
  %i.krc = getelementptr inbounds i8, ptr %.0.i.i.i91.i1157, i64 %i.krb ; 2 uses
  %i.krd = load i8, ptr %i.krc, align 1, !tbaa !98, !noalias !743
  %i.kre = or i8 %i.krd, %i.kra
  store i8 %i.kre, ptr %i.krc, align 1, !tbaa !98, !noalias !743
  %i.krf = add nsw i64 %.385.i41.i125.i1191, 1
  br label %bb.avz

bb.avy:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i1196, %bb.avw, %bb.avv, %bb.avu, %bb.avs, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i1198, %bb.avq, %bb.avp, %bb.avo, %bb.avm
  %i.krg = shl nsw i64 %.4.i42.i124.i1190, 5
  %i.krh = getelementptr inbounds i8, ptr %i.kjh, i64 %i.krg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.krh, i8 0, i64 32, i1 false), !noalias !743
  br label %bb.avz

bb.avz:                                           ; preds = %bb.avy, %bb.avx
  %.486.i.i127.i1193 = phi i64 [ %i.krf, %bb.avx ], [ %.385.i41.i125.i1191, %bb.avy ] ; 2 uses
  %i.kri = add nsw i64 %.4.i42.i124.i1190, 1      ; 2 uses
  %i.krj = add nuw nsw i64 %.0.i43.i123.i1189, 1  ; 2 uses
  %exitcond65.not.i128.i1194 = icmp eq i64 %i.krj, %i.kpd
  br i1 %exitcond65.not.i128.i1194, label %.loopexit.i105.i1171, label %.lr.ph44.i122.i1188, !llvm.loop !749

.loopexit.sink.split.i102.i1168:                  ; preds = %bb.avl, %bb.aut
  %.sink86.i103.i1169 = phi i64 [ %i.kly, %bb.aut ], [ %i.kpd, %bb.avl ] ; 2 uses
  %.587.i.ph.i104.i1170 = phi i64 [ %i.kla, %bb.aut ], [ %.082.i53.i95.i1161, %bb.avl ]
  %i.krk = shl nsw i64 %.081.i54.i94.i1160, 5
  %i.krl = getelementptr inbounds i8, ptr %i.kjh, i64 %i.krk
  %i.krm = shl nsw i64 %.sink86.i103.i1169, 5
  call void @llvm.memset.p0.i64(ptr align 1 %i.krl, i8 0, i64 %i.krm, i1 false), !noalias !743
  %i.krn = add nsw i64 %.sink86.i103.i1169, %.081.i54.i94.i1160
  br label %.loopexit.i105.i1171

.loopexit.i105.i1171.loopexit3307.unr-lcssa:      ; preds = %.lr.ph39.i116.i1182
  %i.kro = and i16 %.sroa.0.0.extract.trunc.i.i96.i1162, 1
  %lcmp.mod3316.not = icmp eq i16 %i.kro, 0
  br i1 %lcmp.mod3316.not, label %.loopexit.i105.i1171, label %.lr.ph39.i116.i1182.epil.preheader

.lr.ph39.i116.i1182.epil.preheader:               ; preds = %.loopexit.i105.i1171.loopexit3307.unr-lcssa, %.lr.ph39.i116.i1182.preheader
  %.1.i37.i118.i1184.epil.init = phi i64 [ %.081.i54.i94.i1160, %.lr.ph39.i116.i1182.preheader ], [ %i.klw, %.loopexit.i105.i1171.loopexit3307.unr-lcssa ] ; 3 uses
  %lcmp.mod3318 = trunc i32 %i.kku to i1
  call void @llvm.assume(i1 %lcmp.mod3318)
  %i.krp = shl nsw i64 %.1.i37.i118.i1184.epil.init, 5
  %i.krq = getelementptr inbounds i8, ptr %i.kjh, i64 %i.krp
  %i.krr = getelementptr inbounds [4 x i8], ptr %i.kjp, i64 %.1.i37.i118.i1184.epil.init
  %i.krs = load i32, ptr %i.krr, align 4, !tbaa !3, !noalias !743
  %i.krt = shl i32 %i.krs, 5
  %i.kru = zext i32 %i.krt to i64
  %i.krv = getelementptr inbounds nuw i8, ptr %i.kjg, i64 %i.kru
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.krq, ptr noundef nonnull align 1 dereferenceable(32) %i.krv, i64 32, i1 false), !noalias !743
  %i.krw = add nsw i64 %.1.i37.i118.i1184.epil.init, 1
  br label %.loopexit.i105.i1171

.loopexit.i105.i1171:                             ; preds = %bb.avb, %.lr.ph39.i116.i1182.epil.preheader, %.loopexit.i105.i1171.loopexit3307.unr-lcssa, %bb.avz, %bb.avk, %.loopexit.sink.split.i102.i1168, %.preheader27.i121.i1187, %.preheader.i134.i1200, %.preheader30.i108.i1174, %bb.aus
  %.587.i.i106.i1172 = phi i64 [ %.587.i.ph.i104.i1170, %.loopexit.sink.split.i102.i1168 ], [ %i.kla, %bb.aus ], [ %.486.i.i127.i1193, %bb.avz ], [ %i.kla, %.lr.ph39.i116.i1182.epil.preheader ], [ %i.kla, %.preheader30.i108.i1174 ], [ %.082.i53.i95.i1161, %.preheader.i134.i1200 ], [ %.082.i53.i95.i1161, %.preheader27.i121.i1187 ], [ %.284.i.i140.i1206, %bb.avk ], [ %i.kla, %.loopexit.i105.i1171.loopexit3307.unr-lcssa ], [ %i.kla, %bb.avb ] ; 2 uses
  %.5.i.i107.i1173 = phi i64 [ %i.krn, %.loopexit.sink.split.i102.i1168 ], [ %.081.i54.i94.i1160, %bb.aus ], [ %i.kri, %bb.avz ], [ %i.krw, %.lr.ph39.i116.i1182.epil.preheader ], [ %.081.i54.i94.i1160, %.preheader30.i108.i1174 ], [ %.081.i54.i94.i1160, %.preheader.i134.i1200 ], [ %.081.i54.i94.i1160, %.preheader27.i121.i1187 ], [ %i.kpa, %bb.avk ], [ %i.klw, %.loopexit.i105.i1171.loopexit3307.unr-lcssa ], [ %i.kni, %bb.avb ] ; 2 uses
  %i.krx = icmp slt i64 %.5.i.i107.i1173, %i.kjj
  br i1 %i.krx, label %bb.auq, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !750

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i105.i1171, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1156
  %.082.i.lcssa.i92.i1158 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1156 ], [ %.587.i.i106.i1172, %.loopexit.i105.i1171 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !743
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i86.i1152:                                 ; preds = %.lr.ph.i86.i1152, %.lr.ph.i86.i1152.preheader.new
  %.0.i1833.i87.i1153 = phi i64 [ 0, %.lr.ph.i86.i1152.preheader.new ], [ %i.ksn, %.lr.ph.i86.i1152 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i86.i1152.preheader.new ], [ %niter.next.1, %.lr.ph.i86.i1152 ]
  %i.kry = shl nuw nsw i64 %.0.i1833.i87.i1153, 5
  %i.krz = getelementptr inbounds nuw i8, ptr %i.kjh, i64 %i.kry
  %i.ksa = getelementptr inbounds nuw [4 x i8], ptr %i.kjp, i64 %.0.i1833.i87.i1153
  %i.ksb = load i32, ptr %i.ksa, align 4, !tbaa !3, !noalias !743
  %i.ksc = shl i32 %i.ksb, 5
  %i.ksd = zext i32 %i.ksc to i64
  %i.kse = getelementptr inbounds nuw i8, ptr %i.kjg, i64 %i.ksd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.krz, ptr noundef nonnull align 1 dereferenceable(32) %i.kse, i64 32, i1 false), !noalias !743
  %i.ksf = or disjoint i64 %.0.i1833.i87.i1153, 1 ; 2 uses
  %i.ksg = shl nuw nsw i64 %i.ksf, 5
  %i.ksh = getelementptr inbounds nuw i8, ptr %i.kjh, i64 %i.ksg
  %i.ksi = getelementptr inbounds nuw [4 x i8], ptr %i.kjp, i64 %i.ksf
  %i.ksj = load i32, ptr %i.ksi, align 4, !tbaa !3, !noalias !743
  %i.ksk = shl i32 %i.ksj, 5
  %i.ksl = zext i32 %i.ksk to i64
  %i.ksm = getelementptr inbounds nuw i8, ptr %i.kjg, i64 %i.ksl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ksh, ptr noundef nonnull align 1 dereferenceable(32) %i.ksm, i64 32, i1 false), !noalias !743
  %i.ksn = add nuw nsw i64 %.0.i1833.i87.i1153, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3313.unr-lcssa, label %.lr.ph.i86.i1152, !llvm.loop !751

bb.awa:                                           ; preds = %bb.arg
  br i1 %i.jpr, label %bb.awc, label %bb.awb

bb.awb:                                           ; preds = %bb.awa
  %i.kso = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ksp = load i64, ptr %i.kso, align 8, !tbaa !71, !noalias !752
  %.not.i19.i145.i1333 = icmp ne i64 %i.ksp, 0
  %i.ksq = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ksr = load ptr, ptr %i.ksq, align 8, !noalias !752
  %i.kss = icmp ne ptr %i.ksr, null
  %i.kst = select i1 %.not.i19.i145.i1333, i1 %i.kss, i1 false
  br label %bb.awc

bb.awc:                                           ; preds = %bb.awb, %bb.awa
  %i.ksu = phi i1 [ true, %bb.awa ], [ %i.kst, %bb.awb ]
  %i.ksv = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !752
  %i.ksw = extractvalue { i32, ptr } %i.ksv, 1    ; 9 uses
  %i.ksx = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !752 ; 13 uses
  %i.ksy = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ksz = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !752 ; 11 uses
  %i.kta = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.ktb = load i64, ptr %i.kta, align 8, !tbaa !99, !noalias !752
  %i.ktc = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.ktd = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.kte = load ptr, ptr %i.ktd, align 8, !tbaa !66, !noalias !752
  %i.ktf = getelementptr inbounds [8 x i8], ptr %i.kte, i64 %i.ktb ; 9 uses
  br i1 %i.ksu, label %bb.awd, label %.preheader32.i146.i1334

.preheader32.i146.i1334:                          ; preds = %bb.awc
  %i.ktg = icmp sgt i64 %i.ksz, 0
  br i1 %i.ktg, label %.lr.ph.i148.i1335.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i1335.preheader:                      ; preds = %.preheader32.i146.i1334
  %xtraiter3343 = and i64 %i.ksz, 1
  %i.kth = icmp eq i64 %i.ksz, 1
  br i1 %i.kth, label %.lr.ph.i148.i1335.epil.preheader, label %.lr.ph.i148.i1335.preheader.new

.lr.ph.i148.i1335.preheader.new:                  ; preds = %.lr.ph.i148.i1335.preheader
  %unroll_iter3346 = and i64 %i.ksz, 9223372036854775806
  br label %.lr.ph.i148.i1335

bb.awd:                                           ; preds = %bb.awc
  %i.kti = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ktj = load ptr, ptr %i.kti, align 8, !tbaa !171, !noalias !752
  %i.ktk = load ptr, ptr %i.ktj, align 8, !tbaa !306, !noalias !752 ; 4 uses
  %.not.i.i.i151.i1338 = icmp eq ptr %i.ktk, null
  br i1 %.not.i.i.i151.i1338, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1339, label %bb.awe

bb.awe:                                           ; preds = %bb.awd
  %i.ktl = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ktm = load i64, ptr %i.ktl, align 8, !tbaa !438, !noalias !752
  %i.ktn = getelementptr inbounds nuw i8, ptr %i.ktk, i64 9
  %i.kto = load i8, ptr %i.ktn, align 1, !tbaa !439, !range !127, !noalias !752, !noundef !128
  %i.ktp = trunc nuw i8 %i.kto to i1
  %i.ktq = getelementptr inbounds nuw i8, ptr %i.ktk, i64 8
  %i.ktr = load i8, ptr %i.ktq, align 8, !range !127, !noalias !752
  %i.kts = trunc nuw i8 %i.ktr to i1
  %i.ktt = select i1 %i.ktp, i1 %i.kts, i1 false, !prof !117
  %i.ktu = getelementptr inbounds nuw i8, ptr %i.ktk, i64 16
  %i.ktv = load ptr, ptr %i.ktu, align 8, !noalias !752
  %i.ktw = select i1 %i.ktt, ptr %i.ktv, ptr null, !prof !117
  %i.ktx = getelementptr inbounds i8, ptr %i.ktw, i64 %i.ktm
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1339

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1339: ; preds = %bb.awe, %bb.awd
  %.0.i.i.i153.i1340 = phi ptr [ %i.ktx, %bb.awe ], [ null, %bb.awd ] ; 5 uses
  %i.kty = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ktz = load i64, ptr %i.kty, align 8, !tbaa !178, !noalias !752 ; 2 uses
  %i.kua = ashr i64 %i.ktz, 3
  %i.kub = and i64 %i.ktz, 7
  %i.kuc = icmp ne i64 %i.kub, 0
  %i.kud = zext i1 %i.kuc to i64
  %i.kue = add nsw i64 %i.kua, %i.kud
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i153.i1340, i8 0, i64 %i.kue, i1 false), !noalias !752
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !752
  %i.kuf = load ptr, ptr %i.ktc, align 8, !tbaa !66, !noalias !752
  %i.kug = load i64, ptr %i.kta, align 8, !tbaa !99, !noalias !752
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.kuf, i64 noundef %i.kug, i64 noundef %i.ksz), !noalias !752
  %i.kuh = icmp sgt i64 %i.ksz, 0
  br i1 %i.kuh, label %.lr.ph55.i155.i1342, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph55.i155.i1342:                              ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1339
  %i.kui = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.kuj = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.awf

bb.awf:                                           ; preds = %.loopexit.i167.i1354, %.lr.ph55.i155.i1342
  %.081.i54.i156.i1343 = phi i64 [ 0, %.lr.ph55.i155.i1342 ], [ %.5.i.i169.i1356, %.loopexit.i167.i1354 ] ; 12 uses
  %.082.i53.i157.i1344 = phi i64 [ 0, %.lr.ph55.i155.i1342 ], [ %.587.i.i168.i1355, %.loopexit.i167.i1354 ] ; 6 uses
  %i.kuk = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %8), !noalias !752 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i158.i1345 = trunc i32 %i.kuk to i16 ; 10 uses
  %i.kul = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !752
  %.not.i20.i159.i1346 = icmp ne i64 %i.kul, 0
  %i.kum = load ptr, ptr %i.v, align 8, !noalias !752
  %i.kun = icmp ne ptr %i.kum, null
  %i.kuo = select i1 %.not.i20.i159.i1346, i1 %i.kun, i1 false
  br i1 %i.kuo, label %bb.awr, label %bb.awg

bb.awg:                                           ; preds = %bb.awf
  %.sroa.14.0.extract.shift.i.i160.i1347 = lshr i32 %i.kuk, 16
  %.sroa.14.0.extract.trunc.i.i161.i1348 = zext nneg i32 %.sroa.14.0.extract.shift.i.i160.i1347 to i64
  %sext91.i.i162.i1349 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i161.i1348, 48
  %i.kup = ashr exact i64 %sext91.i.i162.i1349, 48
  %i.kuq = add nsw i64 %i.kup, %.082.i53.i157.i1344 ; 6 uses
  %i.kur = ashr i32 %i.kuk, 16                    ; 2 uses
  %sext.i.i163.i1350 = shl i32 %i.kuk, 16
  %i.kus = ashr exact i32 %sext.i.i163.i1350, 16
  %i.kut = icmp eq i32 %i.kur, %i.kus
  br i1 %i.kut, label %bb.awh, label %bb.awi

bb.awh:                                           ; preds = %bb.awg
  %i.kuu = sext i16 %.sroa.0.0.extract.trunc.i.i158.i1345 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i153.i1340, i64 noundef %.081.i54.i156.i1343, i64 noundef %i.kuu, i1 noundef zeroext true), !noalias !752
  %i.kuv = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i1345, 0
  br i1 %i.kuv, label %.lr.ph39.i178.i1365.preheader, label %.loopexit.i167.i1354

.lr.ph39.i178.i1365.preheader:                    ; preds = %bb.awh
  %i.kuw = icmp eq i16 %.sroa.0.0.extract.trunc.i.i158.i1345, 1
  br i1 %i.kuw, label %.lr.ph39.i178.i1365.epil.preheader, label %.lr.ph39.i178.i1365.preheader.new

.lr.ph39.i178.i1365.preheader.new:                ; preds = %.lr.ph39.i178.i1365.preheader
  %unroll_iter3352 = and i64 %i.kuu, 32766
  br label %.lr.ph39.i178.i1365

.lr.ph39.i178.i1365:                              ; preds = %.lr.ph39.i178.i1365, %.lr.ph39.i178.i1365.preheader.new
  %.1.i37.i180.i1367 = phi i64 [ %.081.i54.i156.i1343, %.lr.ph39.i178.i1365.preheader.new ], [ %i.kvk, %.lr.ph39.i178.i1365 ] ; 4 uses
  %niter3353 = phi i64 [ 0, %.lr.ph39.i178.i1365.preheader.new ], [ %niter3353.next.1, %.lr.ph39.i178.i1365 ]
  %i.kux = shl nsw i64 %.1.i37.i180.i1367, 5
  %i.kuy = getelementptr inbounds i8, ptr %i.ksx, i64 %i.kux
  %i.kuz = getelementptr inbounds [8 x i8], ptr %i.ktf, i64 %.1.i37.i180.i1367
  %i.kva = load i64, ptr %i.kuz, align 8, !tbaa !130, !noalias !752
  %i.kvb = shl i64 %i.kva, 5
  %i.kvc = getelementptr inbounds nuw i8, ptr %i.ksw, i64 %i.kvb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kuy, ptr noundef nonnull align 1 dereferenceable(32) %i.kvc, i64 32, i1 false), !noalias !752
  %i.kvd = add nsw i64 %.1.i37.i180.i1367, 1      ; 2 uses
  %i.kve = shl nsw i64 %i.kvd, 5
  %i.kvf = getelementptr inbounds i8, ptr %i.ksx, i64 %i.kve
  %i.kvg = getelementptr inbounds [8 x i8], ptr %i.ktf, i64 %i.kvd
  %i.kvh = load i64, ptr %i.kvg, align 8, !tbaa !130, !noalias !752
  %i.kvi = shl i64 %i.kvh, 5
  %i.kvj = getelementptr inbounds nuw i8, ptr %i.ksw, i64 %i.kvi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kvf, ptr noundef nonnull align 1 dereferenceable(32) %i.kvj, i64 32, i1 false), !noalias !752
  %i.kvk = add nsw i64 %.1.i37.i180.i1367, 2      ; 3 uses
  %niter3353.next.1 = add i64 %niter3353, 2       ; 2 uses
  %niter3353.ncmp.1 = icmp eq i64 %niter3353.next.1, %unroll_iter3352
  br i1 %niter3353.ncmp.1, label %.loopexit.i167.i1354.loopexit3284.unr-lcssa, label %.lr.ph39.i178.i1365, !llvm.loop !755

bb.awi:                                           ; preds = %bb.awg
  %i.kvl = icmp sgt i32 %i.kur, 0
  %i.kvm = sext i16 %.sroa.0.0.extract.trunc.i.i158.i1345 to i64 ; 2 uses
  br i1 %i.kvl, label %.preheader30.i170.i1357, label %.loopexit.sink.split.i164.i1351

.preheader30.i170.i1357:                          ; preds = %bb.awi
  %i.kvn = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i1345, 0
  br i1 %i.kvn, label %.lr.ph36.i171.i1358, label %.loopexit.i167.i1354

.lr.ph36.i171.i1358:                              ; preds = %.preheader30.i170.i1357, %bb.awq
  %.079.i35.i172.i1359 = phi i64 [ %i.kww, %bb.awq ], [ 0, %.preheader30.i170.i1357 ]
  %.2.i34.i173.i1360 = phi i64 [ %i.kwv, %bb.awq ], [ %.081.i54.i156.i1343, %.preheader30.i170.i1357 ] ; 10 uses
  %i.kvo = load ptr, ptr %i.ktc, align 8, !tbaa !66, !noalias !752 ; 2 uses
  %.not.i21.i174.i1361 = icmp eq ptr %i.kvo, null
  br i1 %.not.i21.i174.i1361, label %bb.awk, label %bb.awj

bb.awj:                                           ; preds = %.lr.ph36.i171.i1358
  %i.kvp = load i64, ptr %i.kta, align 8, !tbaa !99, !noalias !752
  %i.kvq = add nsw i64 %i.kvp, %.2.i34.i173.i1360 ; 2 uses
  %i.kvr = lshr i64 %i.kvq, 3
  %i.kvs = getelementptr inbounds nuw i8, ptr %i.kvo, i64 %i.kvr
  %i.kvt = load i8, ptr %i.kvs, align 1, !tbaa !98, !noalias !752
  %i.kvu = trunc i64 %i.kvq to i8
  %i.kvv = and i8 %i.kvu, 7
  %i.kvw = lshr i8 %i.kvt, %i.kvv
  %i.kvx = trunc i8 %i.kvw to i1
  br i1 %i.kvx, label %bb.awo, label %bb.awp

bb.awk:                                           ; preds = %.lr.ph36.i171.i1358
  %i.kvy = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !752
  %i.kvz = getelementptr inbounds nuw i8, ptr %i.kvy, i64 40
  %i.kwa = load i32, ptr %i.kvz, align 8, !tbaa !42, !noalias !752
  switch i32 %i.kwa, label %bb.awn [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i176.i1363
    i32 28, label %bb.awl
    i32 38, label %bb.awm
  ]

bb.awl:                                           ; preds = %bb.awk
  %i.kwb = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i173.i1360), !noalias !752
  br i1 %i.kwb, label %bb.awp, label %bb.awo

bb.awm:                                           ; preds = %bb.awk
  %i.kwc = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i34.i173.i1360), !noalias !752
  br i1 %i.kwc, label %bb.awp, label %bb.awo

bb.awn:                                           ; preds = %bb.awk
  %i.kwd = load i64, ptr %i.kui, align 8, !tbaa !71, !noalias !752
  %i.kwe = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !752
  %.not.i177.i1364 = icmp eq i64 %i.kwd, %i.kwe
end_hunk_24
begin_hunk_25_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %.284.i.i202.i1389 = phi i64 [ %i.kyi, %bb.awx ], [ %.183.i47.i200.i1387, %bb.awy ] ; 2 uses
  %i.kyl = add nsw i64 %.3.i48.i199.i1386, 1      ; 2 uses
  %i.kym = add nuw nsw i64 %.078.i49.i198.i1385, 1 ; 2 uses
  %exitcond66.not.i203.i1390 = icmp eq i64 %i.kym, %i.kxa
  br i1 %exitcond66.not.i203.i1390, label %.loopexit.i167.i1354, label %.lr.ph50.i197.i1384, !llvm.loop !757

bb.axa:                                           ; preds = %bb.awr
  %i.kyn = icmp sgt i32 %i.kwx, 0
  %i.kyo = sext i16 %.sroa.0.0.extract.trunc.i.i158.i1345 to i64 ; 2 uses
  br i1 %i.kyn, label %.preheader27.i183.i1370, label %.loopexit.sink.split.i164.i1351

.preheader27.i183.i1370:                          ; preds = %bb.axa
  %i.kyp = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i1345, 0
  br i1 %i.kyp, label %.lr.ph44.i184.i1371, label %.loopexit.i167.i1354

.lr.ph44.i184.i1371:                              ; preds = %.preheader27.i183.i1370, %bb.axo
  %.0.i43.i185.i1372 = phi i64 [ %i.las, %bb.axo ], [ 0, %.preheader27.i183.i1370 ]
  %.4.i42.i186.i1373 = phi i64 [ %i.lar, %bb.axo ], [ %.081.i54.i156.i1343, %.preheader27.i183.i1370 ] ; 10 uses
  %.385.i41.i187.i1374 = phi i64 [ %.486.i.i189.i1376, %bb.axo ], [ %.082.i53.i157.i1344, %.preheader27.i183.i1370 ] ; 2 uses
  %i.kyq = load ptr, ptr %i.ktc, align 8, !tbaa !66, !noalias !752 ; 2 uses
  %.not.i26.i188.i1375 = icmp eq ptr %i.kyq, null
  br i1 %.not.i26.i188.i1375, label %bb.axc, label %bb.axb

bb.axb:                                           ; preds = %.lr.ph44.i184.i1371
  %i.kyr = load i64, ptr %i.kta, align 8, !tbaa !99, !noalias !752
  %i.kys = add nsw i64 %i.kyr, %.4.i42.i186.i1373 ; 2 uses
  %i.kyt = lshr i64 %i.kys, 3
  %i.kyu = getelementptr inbounds nuw i8, ptr %i.kyq, i64 %i.kyt
  %i.kyv = load i8, ptr %i.kyu, align 1, !tbaa !98, !noalias !752
  %i.kyw = trunc i64 %i.kys to i8
  %i.kyx = and i8 %i.kyw, 7
  %i.kyy = lshr i8 %i.kyv, %i.kyx
  %i.kyz = trunc i8 %i.kyy to i1
  br i1 %i.kyz, label %bb.axg, label %bb.axn

bb.axc:                                           ; preds = %.lr.ph44.i184.i1371
  %i.kza = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !752
  %i.kzb = getelementptr inbounds nuw i8, ptr %i.kza, i64 40
  %i.kzc = load i32, ptr %i.kzb, align 8, !tbaa !42, !noalias !752
  switch i32 %i.kzc, label %bb.axf [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1381
    i32 28, label %bb.axd
    i32 38, label %bb.axe
  ]

bb.axd:                                           ; preds = %bb.axc
  %i.kzd = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i1373), !noalias !752
  br i1 %i.kzd, label %bb.axn, label %bb.axg

bb.axe:                                           ; preds = %bb.axc
  %i.kze = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i1373), !noalias !752
  br i1 %i.kze, label %bb.axn, label %bb.axg

bb.axf:                                           ; preds = %bb.axc
  %i.kzf = load i64, ptr %i.kui, align 8, !tbaa !71, !noalias !752
  %i.kzg = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !752
  %.not24.i195.i1382 = icmp eq i64 %i.kzf, %i.kzg
  br i1 %.not24.i195.i1382, label %bb.axn, label %bb.axg

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1381: ; preds = %bb.axc
  %i.kzh = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i42.i186.i1373), !noalias !752
  br i1 %i.kzh, label %bb.axn, label %bb.axg

bb.axg:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1381, %bb.axf, %bb.axe, %bb.axd, %bb.axb
  %i.kzi = getelementptr inbounds [8 x i8], ptr %i.ktf, i64 %.4.i42.i186.i1373 ; 2 uses
  %i.kzj = load i64, ptr %i.kzi, align 8, !tbaa !130, !noalias !752 ; 4 uses
  %i.kzk = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !752 ; 2 uses
  %.not.i29.i191.i1378 = icmp eq ptr %i.kzk, null
  br i1 %.not.i29.i191.i1378, label %bb.axi, label %bb.axh

bb.axh:                                           ; preds = %bb.axg
  %i.kzl = load i64, ptr %i.kuj, align 8, !tbaa !99, !noalias !752
  %i.kzm = add nsw i64 %i.kzl, %i.kzj             ; 2 uses
  %i.kzn = lshr i64 %i.kzm, 3
  %i.kzo = getelementptr inbounds nuw i8, ptr %i.kzk, i64 %i.kzn
  %i.kzp = load i8, ptr %i.kzo, align 1, !tbaa !98, !noalias !752
  %i.kzq = trunc i64 %i.kzm to i8
  %i.kzr = and i8 %i.kzq, 7
  %i.kzs = lshr i8 %i.kzp, %i.kzr
  %i.kzt = trunc i8 %i.kzs to i1
  br i1 %i.kzt, label %bb.axm, label %bb.axn

bb.axi:                                           ; preds = %bb.axg
  %i.kzu = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !752
  %i.kzv = getelementptr inbounds nuw i8, ptr %i.kzu, i64 40
  %i.kzw = load i32, ptr %i.kzv, align 8, !tbaa !42, !noalias !752
  switch i32 %i.kzw, label %bb.axl [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1379
    i32 28, label %bb.axj
    i32 38, label %bb.axk
  ]

bb.axj:                                           ; preds = %bb.axi
  %i.kzx = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kzj), !noalias !752
  br i1 %i.kzx, label %bb.axn, label %bb.axm

bb.axk:                                           ; preds = %bb.axi
  %i.kzy = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kzj), !noalias !752
  br i1 %i.kzy, label %bb.axn, label %bb.axm

bb.axl:                                           ; preds = %bb.axi
  %i.kzz = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !752
  %i.laa = load i64, ptr %i.ksy, align 8, !tbaa !62, !noalias !752
  %.not25.i193.i1380 = icmp eq i64 %i.kzz, %i.laa
  br i1 %.not25.i193.i1380, label %bb.axn, label %bb.axm

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1379: ; preds = %bb.axi
  %i.lab = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.kzj), !noalias !752
  br i1 %i.lab, label %bb.axn, label %bb.axm

bb.axm:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1379, %bb.axl, %bb.axk, %bb.axj, %bb.axh
  %i.lac = shl nsw i64 %.4.i42.i186.i1373, 5
  %i.lad = getelementptr inbounds i8, ptr %i.ksx, i64 %i.lac
  %i.lae = load i64, ptr %i.kzi, align 8, !tbaa !130, !noalias !752
  %i.laf = shl i64 %i.lae, 5
  %i.lag = getelementptr inbounds nuw i8, ptr %i.ksw, i64 %i.laf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lad, ptr noundef nonnull align 1 dereferenceable(32) %i.lag, i64 32, i1 false), !noalias !752
  %i.lah = srem i64 %.4.i42.i186.i1373, 8
  %i.lai = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.lah
  %i.laj = load i8, ptr %i.lai, align 1, !tbaa !98, !noalias !752
  %i.lak = sdiv i64 %.4.i42.i186.i1373, 8
  %i.lal = getelementptr inbounds i8, ptr %.0.i.i.i153.i1340, i64 %i.lak ; 2 uses
  %i.lam = load i8, ptr %i.lal, align 1, !tbaa !98, !noalias !752
  %i.lan = or i8 %i.lam, %i.laj
  store i8 %i.lan, ptr %i.lal, align 1, !tbaa !98, !noalias !752
  %i.lao = add nsw i64 %.385.i41.i187.i1374, 1
  br label %bb.axo

bb.axn:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1379, %bb.axl, %bb.axk, %bb.axj, %bb.axh, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1381, %bb.axf, %bb.axe, %bb.axd, %bb.axb
  %i.lap = shl nsw i64 %.4.i42.i186.i1373, 5
  %i.laq = getelementptr inbounds i8, ptr %i.ksx, i64 %i.lap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.laq, i8 0, i64 32, i1 false), !noalias !752
  br label %bb.axo

bb.axo:                                           ; preds = %bb.axn, %bb.axm
  %.486.i.i189.i1376 = phi i64 [ %i.lao, %bb.axm ], [ %.385.i41.i187.i1374, %bb.axn ] ; 2 uses
  %i.lar = add nsw i64 %.4.i42.i186.i1373, 1      ; 2 uses
  %i.las = add nuw nsw i64 %.0.i43.i185.i1372, 1  ; 2 uses
  %exitcond65.not.i190.i1377 = icmp eq i64 %i.las, %i.kyo
  br i1 %exitcond65.not.i190.i1377, label %.loopexit.i167.i1354, label %.lr.ph44.i184.i1371, !llvm.loop !758

.loopexit.sink.split.i164.i1351:                  ; preds = %bb.axa, %bb.awi
  %.sink86.i165.i1352 = phi i64 [ %i.kvm, %bb.awi ], [ %i.kyo, %bb.axa ] ; 2 uses
  %.587.i.ph.i166.i1353 = phi i64 [ %i.kuq, %bb.awi ], [ %.082.i53.i157.i1344, %bb.axa ]
  %i.lat = shl nsw i64 %.081.i54.i156.i1343, 5
  %i.lau = getelementptr inbounds i8, ptr %i.ksx, i64 %i.lat
  %i.lav = shl nsw i64 %.sink86.i165.i1352, 5
  call void @llvm.memset.p0.i64(ptr align 1 %i.lau, i8 0, i64 %i.lav, i1 false), !noalias !752
  %i.law = add nsw i64 %.sink86.i165.i1352, %.081.i54.i156.i1343
  br label %.loopexit.i167.i1354

.loopexit.i167.i1354.loopexit3284.unr-lcssa:      ; preds = %.lr.ph39.i178.i1365
  %i.lax = and i16 %.sroa.0.0.extract.trunc.i.i158.i1345, 1
  %lcmp.mod3349.not = icmp eq i16 %i.lax, 0
  br i1 %lcmp.mod3349.not, label %.loopexit.i167.i1354, label %.lr.ph39.i178.i1365.epil.preheader

.lr.ph39.i178.i1365.epil.preheader:               ; preds = %.loopexit.i167.i1354.loopexit3284.unr-lcssa, %.lr.ph39.i178.i1365.preheader
  %.1.i37.i180.i1367.epil.init = phi i64 [ %.081.i54.i156.i1343, %.lr.ph39.i178.i1365.preheader ], [ %i.kvk, %.loopexit.i167.i1354.loopexit3284.unr-lcssa ] ; 3 uses
  %lcmp.mod3351 = trunc i32 %i.kuk to i1
  call void @llvm.assume(i1 %lcmp.mod3351)
  %i.lay = shl nsw i64 %.1.i37.i180.i1367.epil.init, 5
  %i.laz = getelementptr inbounds i8, ptr %i.ksx, i64 %i.lay
  %i.lba = getelementptr inbounds [8 x i8], ptr %i.ktf, i64 %.1.i37.i180.i1367.epil.init
  %i.lbb = load i64, ptr %i.lba, align 8, !tbaa !130, !noalias !752
  %i.lbc = shl i64 %i.lbb, 5
  %i.lbd = getelementptr inbounds nuw i8, ptr %i.ksw, i64 %i.lbc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.laz, ptr noundef nonnull align 1 dereferenceable(32) %i.lbd, i64 32, i1 false), !noalias !752
  %i.lbe = add nsw i64 %.1.i37.i180.i1367.epil.init, 1
  br label %.loopexit.i167.i1354

.loopexit.i167.i1354:                             ; preds = %bb.awq, %.lr.ph39.i178.i1365.epil.preheader, %.loopexit.i167.i1354.loopexit3284.unr-lcssa, %bb.axo, %bb.awz, %.loopexit.sink.split.i164.i1351, %.preheader27.i183.i1370, %.preheader.i196.i1383, %.preheader30.i170.i1357, %bb.awh
  %.587.i.i168.i1355 = phi i64 [ %.587.i.ph.i166.i1353, %.loopexit.sink.split.i164.i1351 ], [ %i.kuq, %bb.awh ], [ %.486.i.i189.i1376, %bb.axo ], [ %i.kuq, %.lr.ph39.i178.i1365.epil.preheader ], [ %i.kuq, %.preheader30.i170.i1357 ], [ %.082.i53.i157.i1344, %.preheader.i196.i1383 ], [ %.082.i53.i157.i1344, %.preheader27.i183.i1370 ], [ %.284.i.i202.i1389, %bb.awz ], [ %i.kuq, %.loopexit.i167.i1354.loopexit3284.unr-lcssa ], [ %i.kuq, %bb.awq ] ; 2 uses
  %.5.i.i169.i1356 = phi i64 [ %i.law, %.loopexit.sink.split.i164.i1351 ], [ %.081.i54.i156.i1343, %bb.awh ], [ %i.lar, %bb.axo ], [ %i.lbe, %.lr.ph39.i178.i1365.epil.preheader ], [ %.081.i54.i156.i1343, %.preheader30.i170.i1357 ], [ %.081.i54.i156.i1343, %.preheader.i196.i1383 ], [ %.081.i54.i156.i1343, %.preheader27.i183.i1370 ], [ %i.kyl, %bb.awz ], [ %i.kvk, %.loopexit.i167.i1354.loopexit3284.unr-lcssa ], [ %i.kwv, %bb.awq ] ; 2 uses
  %i.lbf = icmp slt i64 %.5.i.i169.i1356, %i.ksz
  br i1 %i.lbf, label %bb.awf, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !759

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i167.i1354, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1339
  %.082.i.lcssa.i154.i1341 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1339 ], [ %.587.i.i168.i1355, %.loopexit.i167.i1354 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !752
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

.lr.ph.i148.i1335:                                ; preds = %.lr.ph.i148.i1335, %.lr.ph.i148.i1335.preheader.new
  %.0.i1833.i149.i1336 = phi i64 [ 0, %.lr.ph.i148.i1335.preheader.new ], [ %i.lbt, %.lr.ph.i148.i1335 ] ; 4 uses
  %niter3347 = phi i64 [ 0, %.lr.ph.i148.i1335.preheader.new ], [ %niter3347.next.1, %.lr.ph.i148.i1335 ]
  %i.lbg = shl nuw nsw i64 %.0.i1833.i149.i1336, 5
  %i.lbh = getelementptr inbounds nuw i8, ptr %i.ksx, i64 %i.lbg
  %i.lbi = getelementptr inbounds nuw [8 x i8], ptr %i.ktf, i64 %.0.i1833.i149.i1336
  %i.lbj = load i64, ptr %i.lbi, align 8, !tbaa !130, !noalias !752
  %i.lbk = shl i64 %i.lbj, 5
  %i.lbl = getelementptr inbounds nuw i8, ptr %i.ksw, i64 %i.lbk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lbh, ptr noundef nonnull align 1 dereferenceable(32) %i.lbl, i64 32, i1 false), !noalias !752
  %i.lbm = or disjoint i64 %.0.i1833.i149.i1336, 1 ; 2 uses
  %i.lbn = shl nuw nsw i64 %i.lbm, 5
  %i.lbo = getelementptr inbounds nuw i8, ptr %i.ksx, i64 %i.lbn
  %i.lbp = getelementptr inbounds nuw [8 x i8], ptr %i.ktf, i64 %i.lbm
  %i.lbq = load i64, ptr %i.lbp, align 8, !tbaa !130, !noalias !752
  %i.lbr = shl i64 %i.lbq, 5
  %i.lbs = getelementptr inbounds nuw i8, ptr %i.ksw, i64 %i.lbr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lbo, ptr noundef nonnull align 1 dereferenceable(32) %i.lbs, i64 32, i1 false), !noalias !752
  %i.lbt = add nuw nsw i64 %.0.i1833.i149.i1336, 2 ; 2 uses
  %niter3347.next.1 = add nuw nsw i64 %niter3347, 2 ; 2 uses
  %niter3347.ncmp.1 = icmp eq i64 %niter3347.next.1, %unroll_iter3346
  br i1 %niter3347.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, label %.lr.ph.i148.i1335, !llvm.loop !760

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i148.i1335
  %lcmp.mod3344.not = icmp eq i64 %xtraiter3343, 0
  br i1 %lcmp.mod3344.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i148.i1335.epil.preheader

.lr.ph.i148.i1335.epil.preheader:                 ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.lr.ph.i148.i1335.preheader
  %.0.i1833.i149.i1336.epil.init = phi i64 [ 0, %.lr.ph.i148.i1335.preheader ], [ %i.lbt, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3345 = trunc i64 %i.ksz to i1
  call void @llvm.assume(i1 %lcmp.mod3345)
  %i.lbu = shl nuw nsw i64 %.0.i1833.i149.i1336.epil.init, 5
  %i.lbv = getelementptr inbounds nuw i8, ptr %i.ksx, i64 %i.lbu
  %i.lbw = getelementptr inbounds nuw [8 x i8], ptr %i.ktf, i64 %.0.i1833.i149.i1336.epil.init
  %i.lbx = load i64, ptr %i.lbw, align 8, !tbaa !130, !noalias !752
  %i.lby = shl i64 %i.lbx, 5
  %i.lbz = getelementptr inbounds nuw i8, ptr %i.ksw, i64 %i.lby
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lbv, ptr noundef nonnull align 1 dereferenceable(32) %i.lbz, i64 32, i1 false), !noalias !752
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3297.unr-lcssa: ; preds = %.lr.ph.i.i1274
  %lcmp.mod3333.not = icmp eq i64 %xtraiter3332, 0
  br i1 %lcmp.mod3333.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i.i1274.epil.preheader

.lr.ph.i.i1274.epil.preheader:                    ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3297.unr-lcssa, %.lr.ph.i.i1274.preheader
  %.0.i1833.i.i1275.epil.init = phi i64 [ 0, %.lr.ph.i.i1274.preheader ], [ %i.jzh, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3297.unr-lcssa ] ; 2 uses
  %lcmp.mod3334 = trunc i64 %i.jqd to i1
  call void @llvm.assume(i1 %lcmp.mod3334)
  %i.lca = shl nuw nsw i64 %.0.i1833.i.i1275.epil.init, 5
  %i.lcb = getelementptr inbounds nuw i8, ptr %i.jqb, i64 %i.lca
  %i.lcc = getelementptr inbounds nuw i8, ptr %i.jqj, i64 %.0.i1833.i.i1275.epil.init
  %i.lcd = load i8, ptr %i.lcc, align 1, !tbaa !98, !noalias !725
  %i.lce = zext i8 %i.lcd to i64
  %i.lcf = shl nuw nsw i64 %i.lce, 5
  %i.lcg = getelementptr inbounds nuw i8, ptr %i.jqa, i64 %i.lcf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lcb, ptr noundef nonnull align 1 dereferenceable(32) %i.lcg, i64 32, i1 false), !noalias !725
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3305.unr-lcssa: ; preds = %.lr.ph.i24.i1213
  %lcmp.mod3322.not = icmp eq i64 %xtraiter3321, 0
  br i1 %lcmp.mod3322.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i24.i1213.epil.preheader

.lr.ph.i24.i1213.epil.preheader:                  ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3305.unr-lcssa, %.lr.ph.i24.i1213.preheader
  %.0.i1833.i25.i1214.epil.init = phi i64 [ 0, %.lr.ph.i24.i1213.preheader ], [ %i.kix, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3305.unr-lcssa ] ; 2 uses
  %lcmp.mod3323 = trunc i64 %i.jzt to i1
  call void @llvm.assume(i1 %lcmp.mod3323)
  %i.lch = shl nuw nsw i64 %.0.i1833.i25.i1214.epil.init, 5
  %i.lci = getelementptr inbounds nuw i8, ptr %i.jzr, i64 %i.lch
  %i.lcj = getelementptr inbounds nuw [2 x i8], ptr %i.jzz, i64 %.0.i1833.i25.i1214.epil.init
  %i.lck = load i16, ptr %i.lcj, align 2, !tbaa !269, !noalias !734
  %i.lcl = zext i16 %i.lck to i64
  %i.lcm = shl nuw nsw i64 %i.lcl, 5
  %i.lcn = getelementptr inbounds nuw i8, ptr %i.jzq, i64 %i.lcm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lci, ptr noundef nonnull align 1 dereferenceable(32) %i.lcn, i64 32, i1 false), !noalias !734
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3313.unr-lcssa: ; preds = %.lr.ph.i86.i1152
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, label %.lr.ph.i86.i1152.epil.preheader

.lr.ph.i86.i1152.epil.preheader:                  ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3313.unr-lcssa, %.lr.ph.i86.i1152.preheader
  %.0.i1833.i87.i1153.epil.init = phi i64 [ 0, %.lr.ph.i86.i1152.preheader ], [ %i.ksn, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3313.unr-lcssa ] ; 2 uses
  %lcmp.mod3314 = trunc i64 %i.kjj to i1
  call void @llvm.assume(i1 %lcmp.mod3314)
  %i.lco = shl nuw nsw i64 %.0.i1833.i87.i1153.epil.init, 5
  %i.lcp = getelementptr inbounds nuw i8, ptr %i.kjh, i64 %i.lco
  %i.lcq = getelementptr inbounds nuw [4 x i8], ptr %i.kjp, i64 %.0.i1833.i87.i1153.epil.init
  %i.lcr = load i32, ptr %i.lcq, align 4, !tbaa !3, !noalias !743
  %i.lcs = shl i32 %i.lcr, 5
  %i.lct = zext i32 %i.lcs to i64
  %i.lcu = getelementptr inbounds nuw i8, ptr %i.kjg, i64 %i.lct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lcp, ptr noundef nonnull align 1 dereferenceable(32) %i.lcu, i64 32, i1 false), !noalias !743
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit: ; preds = %.lr.ph.i86.i1152.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3313.unr-lcssa, %.lr.ph.i24.i1213.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3305.unr-lcssa, %.lr.ph.i.i1274.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3297.unr-lcssa, %.lr.ph.i148.i1335.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.preheader32.i.i1273, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i22.i1212, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i84.i1150, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader32.i146.i1334, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i
  %.0.i147.sink.i1151 = phi i64 [ %i.jzt, %.lr.ph.i24.i1213.epil.preheader ], [ %i.jqd, %.lr.ph.i.i1274.epil.preheader ], [ %i.ksz, %.lr.ph.i148.i1335.epil.preheader ], [ %.082.i.lcssa.i.i1280, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EhLb0EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.jqd, %.preheader32.i.i1273 ], [ %.082.i.lcssa.i30.i1219, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EtLb0EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.jzt, %.preheader32.i22.i1212 ], [ %.082.i.lcssa.i92.i1158, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EjLb0EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.kjj, %.preheader32.i84.i1150 ], [ %.082.i.lcssa.i154.i1341, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi256EmLb0EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.ksz, %.preheader32.i146.i1334 ], [ %i.ksz, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ], [ %i.jqd, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3297.unr-lcssa ], [ %i.jzt, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3305.unr-lcssa ], [ %i.kjj, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit.loopexit3313.unr-lcssa ], [ %i.kjj, %.lr.ph.i86.i1152.epil.preheader ]
  %i.lcv = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.lcw = load i64, ptr %i.lcv, align 8, !tbaa !178, !noalias !721
  %i.lcx = sub nsw i64 %i.lcw, %.0.i147.sink.i1151
  %i.lcy = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store atomic i64 %i.lcx, ptr %i.lcy seq_cst, align 8, !noalias !721
  store ptr null, ptr %0, align 8, !tbaa !113, !alias.scope !721
  br label %.critedge69

bb.axp:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit83
  %i.lcz = load ptr, ptr %i.b, align 8, !tbaa !33 ; 3 uses
  %i.lda = getelementptr inbounds nuw i8, ptr %i.lcz, i64 40
  %i.ldb = load i32, ptr %i.lda, align 8, !tbaa !42
  switch i32 %i.ldb, label %bb.bdy [
    i32 15, label %.critedge71
    i32 32, label %.critedge71
  ], !prof !761

.critedge71:                                      ; preds = %bb.axp, %bb.axp
  %i.ldc = call noundef i64 @_ZN5arrow4util17FixedWidthInBytesERKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(72) %i.lcz) ; 140 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %i.ldd = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !762 ; 2 uses
  %i.lde = load ptr, ptr %i.ldd, align 8, !tbaa !90, !noalias !762
  %i.ldf = getelementptr inbounds nuw i8, ptr %i.lde, i64 64
  %i.ldg = load ptr, ptr %i.ldf, align 8, !noalias !762
  %i.ldh = call noundef i32 %i.ldg(ptr noundef nonnull align 8 dereferenceable(72) %i.ldd), !noalias !762, !inline_history !765
  %i.ldi = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !762
  %.not.i.i144.i1490 = icmp ne i64 %i.ldi, 0
  %i.ldj = load ptr, ptr %i.v, align 8, !noalias !762
  %i.ldk = icmp ne ptr %i.ldj, null
  %i.ldl = select i1 %.not.i.i144.i1490, i1 %i.ldk, i1 false ; 4 uses
  switch i32 %i.ldh, label %bb.bcj [
    i32 1, label %bb.axq
    i32 2, label %bb.azf
    i32 4, label %bb.bau
  ]

bb.axq:                                           ; preds = %.critedge71
  br i1 %i.ldl, label %bb.axs, label %bb.axr

bb.axr:                                           ; preds = %bb.axq
  %i.ldm = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ldn = load i64, ptr %i.ldm, align 8, !tbaa !71, !noalias !766
  %.not.i19.i.i1459 = icmp ne i64 %i.ldn, 0
  %i.ldo = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ldp = load ptr, ptr %i.ldo, align 8, !noalias !766
  %i.ldq = icmp ne ptr %i.ldp, null
  %i.ldr = select i1 %.not.i19.i.i1459, i1 %i.ldq, i1 false
  br label %bb.axs

bb.axs:                                           ; preds = %bb.axr, %bb.axq
  %i.lds = phi i1 [ true, %bb.axq ], [ %i.ldr, %bb.axr ]
  %i.ldt = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !766
  %i.ldu = extractvalue { i32, ptr } %i.ldt, 1    ; 9 uses
  %i.ldv = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !766 ; 13 uses
  %i.ldw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ldx = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !766 ; 11 uses
  %i.ldy = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.ldz = load i64, ptr %i.ldy, align 8, !tbaa !99, !noalias !766
  %i.lea = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.leb = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.lec = load ptr, ptr %i.leb, align 8, !tbaa !66, !noalias !766
  %i.led = getelementptr inbounds i8, ptr %i.lec, i64 %i.ldz ; 9 uses
  br i1 %i.lds, label %bb.axt, label %.preheader41.i.i

.preheader41.i.i:                                 ; preds = %bb.axs
  %i.lee = icmp sgt i64 %i.ldx, 0
  br i1 %i.lee, label %.lr.ph.i.i1460.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit

.lr.ph.i.i1460.preheader:                         ; preds = %.preheader41.i.i
  %xtraiter3607 = and i64 %i.ldx, 1
  %i.lef = icmp eq i64 %i.ldx, 1
  br i1 %i.lef, label %.lr.ph.i.i1460.epil.preheader, label %.lr.ph.i.i1460.preheader.new

.lr.ph.i.i1460.preheader.new:                     ; preds = %.lr.ph.i.i1460.preheader
  %unroll_iter3611 = and i64 %i.ldx, 9223372036854775806
  br label %.lr.ph.i.i1460

bb.axt:                                           ; preds = %bb.axs
  %i.leg = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.leh = load ptr, ptr %i.leg, align 8, !tbaa !171, !noalias !766
  %i.lei = load ptr, ptr %i.leh, align 8, !tbaa !306, !noalias !766 ; 4 uses
  %.not.i.i.i.i1462 = icmp eq ptr %i.lei, null
  br i1 %.not.i.i.i.i1462, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1463, label %bb.axu

bb.axu:                                           ; preds = %bb.axt
  %i.lej = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.lek = load i64, ptr %i.lej, align 8, !tbaa !438, !noalias !766
  %i.lel = getelementptr inbounds nuw i8, ptr %i.lei, i64 9
  %i.lem = load i8, ptr %i.lel, align 1, !tbaa !439, !range !127, !noalias !766, !noundef !128
  %i.len = trunc nuw i8 %i.lem to i1
  %i.leo = getelementptr inbounds nuw i8, ptr %i.lei, i64 8
  %i.lep = load i8, ptr %i.leo, align 8, !range !127, !noalias !766
  %i.leq = trunc nuw i8 %i.lep to i1
  %i.ler = select i1 %i.len, i1 %i.leq, i1 false, !prof !117
  %i.les = getelementptr inbounds nuw i8, ptr %i.lei, i64 16
  %i.let = load ptr, ptr %i.les, align 8, !noalias !766
  %i.leu = select i1 %i.ler, ptr %i.let, ptr null, !prof !117
  %i.lev = getelementptr inbounds i8, ptr %i.leu, i64 %i.lek
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1463

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1463: ; preds = %bb.axu, %bb.axt
  %.0.i.i.i.i1464 = phi ptr [ %i.lev, %bb.axu ], [ null, %bb.axt ] ; 5 uses
  %i.lew = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.lex = load i64, ptr %i.lew, align 8, !tbaa !178, !noalias !766 ; 2 uses
  %i.ley = ashr i64 %i.lex, 3
  %i.lez = and i64 %i.lex, 7
  %i.lfa = icmp ne i64 %i.lez, 0
  %i.lfb = zext i1 %i.lfa to i64
  %i.lfc = add nsw i64 %i.ley, %i.lfb
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i.i1464, i8 0, i64 %i.lfc, i1 false), !noalias !766
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !766
  %i.lfd = load ptr, ptr %i.lea, align 8, !tbaa !66, !noalias !766
  %i.lfe = load i64, ptr %i.ldy, align 8, !tbaa !99, !noalias !766
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.lfd, i64 noundef %i.lfe, i64 noundef %i.ldx), !noalias !766
  %i.lff = icmp sgt i64 %i.ldx, 0
  br i1 %i.lff, label %.lr.ph64.i.i, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EhLb1EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph64.i.i:                                     ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1463
  %i.lfg = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.lfh = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.axv

bb.axv:                                           ; preds = %.loopexit.i.i1474, %.lr.ph64.i.i
  %.081.i63.i.i = phi i64 [ 0, %.lr.ph64.i.i ], [ %.5.i.i.i1476, %.loopexit.i.i1474 ] ; 12 uses
end_hunk_25
begin_hunk_26_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a

bb.ayq:                                           ; preds = %bb.ayh
  %i.ljq = icmp sgt i32 %i.lhy, 0
  %i.ljr = sext i16 %.sroa.0.0.extract.trunc.i.i.i1466 to i64 ; 2 uses
  br i1 %i.ljq, label %.preheader36.i.i, label %.loopexit.sink.split.i.i1472

.preheader36.i.i:                                 ; preds = %bb.ayq
  %i.ljs = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i1466, 0
  br i1 %i.ljs, label %.lr.ph53.i.i, label %.loopexit.i.i1474

.lr.ph53.i.i:                                     ; preds = %.preheader36.i.i, %bb.aze
  %.0.i52.i.i = phi i64 [ %i.llx, %bb.aze ], [ 0, %.preheader36.i.i ]
  %.4.i51.i.i = phi i64 [ %i.llw, %bb.aze ], [ %.081.i63.i.i, %.preheader36.i.i ] ; 10 uses
  %.385.i50.i.i = phi i64 [ %.486.i.i.i1482, %bb.aze ], [ %.082.i62.i.i, %.preheader36.i.i ] ; 2 uses
  %i.ljt = load ptr, ptr %i.lea, align 8, !tbaa !66, !noalias !766 ; 2 uses
  %.not.i26.i.i1481 = icmp eq ptr %i.ljt, null
  br i1 %.not.i26.i.i1481, label %bb.ays, label %bb.ayr

bb.ayr:                                           ; preds = %.lr.ph53.i.i
  %i.lju = load i64, ptr %i.ldy, align 8, !tbaa !99, !noalias !766
  %i.ljv = add nsw i64 %i.lju, %.4.i51.i.i        ; 2 uses
  %i.ljw = lshr i64 %i.ljv, 3
  %i.ljx = getelementptr inbounds nuw i8, ptr %i.ljt, i64 %i.ljw
  %i.ljy = load i8, ptr %i.ljx, align 1, !tbaa !98, !noalias !766
  %i.ljz = trunc i64 %i.ljv to i8
  %i.lka = and i8 %i.ljz, 7
  %i.lkb = lshr i8 %i.ljy, %i.lka
  %i.lkc = trunc i8 %i.lkb to i1
  br i1 %i.lkc, label %bb.ayw, label %bb.azd

bb.ays:                                           ; preds = %.lr.ph53.i.i
  %i.lkd = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !766
  %i.lke = getelementptr inbounds nuw i8, ptr %i.lkd, i64 40
  %i.lkf = load i32, ptr %i.lke, align 8, !tbaa !42, !noalias !766
  switch i32 %i.lkf, label %bb.ayv [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1485
    i32 28, label %bb.ayt
    i32 38, label %bb.ayu
  ]

bb.ayt:                                           ; preds = %bb.ays
  %i.lkg = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i51.i.i), !noalias !766
  br i1 %i.lkg, label %bb.azd, label %bb.ayw

bb.ayu:                                           ; preds = %bb.ays
  %i.lkh = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i51.i.i), !noalias !766
  br i1 %i.lkh, label %bb.azd, label %bb.ayw

bb.ayv:                                           ; preds = %bb.ays
  %i.lki = load i64, ptr %i.lfg, align 8, !tbaa !71, !noalias !766
  %i.lkj = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !766
  %.not33.i.i = icmp eq i64 %i.lki, %i.lkj
  br i1 %.not33.i.i, label %bb.azd, label %bb.ayw

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1485:    ; preds = %bb.ays
  %i.lkk = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i51.i.i), !noalias !766
  br i1 %i.lkk, label %bb.azd, label %bb.ayw

bb.ayw:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1485, %bb.ayv, %bb.ayu, %bb.ayt, %bb.ayr
  %i.lkl = getelementptr inbounds i8, ptr %i.led, i64 %.4.i51.i.i ; 2 uses
  %i.lkm = load i8, ptr %i.lkl, align 1, !tbaa !98, !noalias !766
  %i.lkn = zext i8 %i.lkm to i64                  ; 4 uses
  %i.lko = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !766 ; 2 uses
  %.not.i29.i.i1483 = icmp eq ptr %i.lko, null
  br i1 %.not.i29.i.i1483, label %bb.ayy, label %bb.ayx

bb.ayx:                                           ; preds = %bb.ayw
  %i.lkp = load i64, ptr %i.lfh, align 8, !tbaa !99, !noalias !766
  %i.lkq = add nsw i64 %i.lkp, %i.lkn             ; 2 uses
  %i.lkr = lshr i64 %i.lkq, 3
  %i.lks = getelementptr inbounds nuw i8, ptr %i.lko, i64 %i.lkr
  %i.lkt = load i8, ptr %i.lks, align 1, !tbaa !98, !noalias !766
  %i.lku = trunc i64 %i.lkq to i8
  %i.lkv = and i8 %i.lku, 7
  %i.lkw = lshr i8 %i.lkt, %i.lkv
  %i.lkx = trunc i8 %i.lkw to i1
  br i1 %i.lkx, label %bb.azc, label %bb.azd

bb.ayy:                                           ; preds = %bb.ayw
  %i.lky = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !766
  %i.lkz = getelementptr inbounds nuw i8, ptr %i.lky, i64 40
  %i.lla = load i32, ptr %i.lkz, align 8, !tbaa !42, !noalias !766
  switch i32 %i.lla, label %bb.azb [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1484
    i32 28, label %bb.ayz
    i32 38, label %bb.aza
  ]

bb.ayz:                                           ; preds = %bb.ayy
  %i.llb = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.lkn), !noalias !766
  br i1 %i.llb, label %bb.azd, label %bb.azc

bb.aza:                                           ; preds = %bb.ayy
  %i.llc = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.lkn), !noalias !766
  br i1 %i.llc, label %bb.azd, label %bb.azc

bb.azb:                                           ; preds = %bb.ayy
  %i.lld = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !766
  %i.lle = load i64, ptr %i.ldw, align 8, !tbaa !62, !noalias !766
  %.not34.i.i = icmp eq i64 %i.lld, %i.lle
  br i1 %.not34.i.i, label %bb.azd, label %bb.azc

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1484:    ; preds = %bb.ayy
  %i.llf = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.lkn), !noalias !766
  br i1 %i.llf, label %bb.azd, label %bb.azc

bb.azc:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1484, %bb.azb, %bb.aza, %bb.ayz, %bb.ayx
  %i.llg = mul nsw i64 %.4.i51.i.i, %i.ldc
  %i.llh = getelementptr inbounds i8, ptr %i.ldv, i64 %i.llg
  %i.lli = load i8, ptr %i.lkl, align 1, !tbaa !98, !noalias !766
  %i.llj = zext i8 %i.lli to i64
  %i.llk = mul nsw i64 %i.ldc, %i.llj
  %i.lll = getelementptr inbounds i8, ptr %i.ldu, i64 %i.llk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.llh, ptr align 1 %i.lll, i64 %i.ldc, i1 false), !noalias !766
  %i.llm = srem i64 %.4.i51.i.i, 8
  %i.lln = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.llm
  %i.llo = load i8, ptr %i.lln, align 1, !tbaa !98, !noalias !766
  %i.llp = sdiv i64 %.4.i51.i.i, 8
  %i.llq = getelementptr inbounds i8, ptr %.0.i.i.i.i1464, i64 %i.llp ; 2 uses
  %i.llr = load i8, ptr %i.llq, align 1, !tbaa !98, !noalias !766
  %i.lls = or i8 %i.llr, %i.llo
  store i8 %i.lls, ptr %i.llq, align 1, !tbaa !98, !noalias !766
  %i.llt = add nsw i64 %.385.i50.i.i, 1
  br label %bb.aze

bb.azd:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i.i1484, %bb.azb, %bb.aza, %bb.ayz, %bb.ayx, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i.i1485, %bb.ayv, %bb.ayu, %bb.ayt, %bb.ayr
  %i.llu = mul nsw i64 %.4.i51.i.i, %i.ldc
  %i.llv = getelementptr inbounds i8, ptr %i.ldv, i64 %i.llu
  call void @llvm.memset.p0.i64(ptr align 1 %i.llv, i8 0, i64 %i.ldc, i1 false), !noalias !766
  br label %bb.aze

bb.aze:                                           ; preds = %bb.azd, %bb.azc
  %.486.i.i.i1482 = phi i64 [ %i.llt, %bb.azc ], [ %.385.i50.i.i, %bb.azd ] ; 2 uses
  %i.llw = add nsw i64 %.4.i51.i.i, 1             ; 2 uses
  %i.llx = add nuw nsw i64 %.0.i52.i.i, 1         ; 2 uses
  %exitcond74.not.i.i = icmp eq i64 %i.llx, %i.ljr
  br i1 %exitcond74.not.i.i, label %.loopexit.i.i1474, label %.lr.ph53.i.i, !llvm.loop !772

.loopexit.sink.split.i.i1472:                     ; preds = %bb.ayq, %bb.axy
  %.sink95.i.i = phi i64 [ %i.lgm, %bb.axy ], [ %i.ljr, %bb.ayq ] ; 2 uses
  %.587.i.ph.i.i1473 = phi i64 [ %i.lfo, %bb.axy ], [ %.082.i62.i.i, %bb.ayq ]
  %i.lly = mul nsw i64 %.081.i63.i.i, %i.ldc
  %i.llz = getelementptr inbounds i8, ptr %i.ldv, i64 %i.lly
  %i.lma = mul nsw i64 %.sink95.i.i, %i.ldc
  call void @llvm.memset.p0.i64(ptr align 1 %i.llz, i8 0, i64 %i.lma, i1 false), !noalias !766
  %i.lmb = add nsw i64 %.sink95.i.i, %.081.i63.i.i
  br label %.loopexit.i.i1474

.loopexit.i.i1474.loopexit3054.unr-lcssa:         ; preds = %.lr.ph48.i.i
  %i.lmc = and i16 %.sroa.0.0.extract.trunc.i.i.i1466, 1
  %lcmp.mod3615.not = icmp eq i16 %i.lmc, 0
  br i1 %lcmp.mod3615.not, label %.loopexit.i.i1474, label %.lr.ph48.i.i.epil.preheader

.lr.ph48.i.i.epil.preheader:                      ; preds = %.loopexit.i.i1474.loopexit3054.unr-lcssa, %.lr.ph48.i.i.preheader
  %.1.i46.i.i.epil.init = phi i64 [ %.081.i63.i.i, %.lr.ph48.i.i.preheader ], [ %i.lgk, %.loopexit.i.i1474.loopexit3054.unr-lcssa ] ; 3 uses
  %lcmp.mod3617 = trunc i32 %i.lfi to i1
  call void @llvm.assume(i1 %lcmp.mod3617)
  %i.lmd = mul nsw i64 %.1.i46.i.i.epil.init, %i.ldc
  %i.lme = getelementptr inbounds i8, ptr %i.ldv, i64 %i.lmd
  %i.lmf = getelementptr inbounds i8, ptr %i.led, i64 %.1.i46.i.i.epil.init
  %i.lmg = load i8, ptr %i.lmf, align 1, !tbaa !98, !noalias !766
  %i.lmh = zext i8 %i.lmg to i64
  %i.lmi = mul nsw i64 %i.ldc, %i.lmh
  %i.lmj = getelementptr inbounds i8, ptr %i.ldu, i64 %i.lmi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lme, ptr align 1 %i.lmj, i64 %i.ldc, i1 false), !noalias !766
  %i.lmk = add nsw i64 %.1.i46.i.i.epil.init, 1
  br label %.loopexit.i.i1474

.loopexit.i.i1474:                                ; preds = %bb.ayg, %.lr.ph48.i.i.epil.preheader, %.loopexit.i.i1474.loopexit3054.unr-lcssa, %bb.aze, %bb.ayp, %.loopexit.sink.split.i.i1472, %.preheader36.i.i, %.preheader.i.i1486, %.preheader39.i.i, %bb.axx
  %.587.i.i.i1475 = phi i64 [ %.587.i.ph.i.i1473, %.loopexit.sink.split.i.i1472 ], [ %i.lfo, %bb.axx ], [ %.486.i.i.i1482, %bb.aze ], [ %i.lfo, %.lr.ph48.i.i.epil.preheader ], [ %i.lfo, %.preheader39.i.i ], [ %.082.i62.i.i, %.preheader.i.i1486 ], [ %.082.i62.i.i, %.preheader36.i.i ], [ %.284.i.i.i1488, %bb.ayp ], [ %i.lfo, %.loopexit.i.i1474.loopexit3054.unr-lcssa ], [ %i.lfo, %bb.ayg ] ; 2 uses
  %.5.i.i.i1476 = phi i64 [ %i.lmb, %.loopexit.sink.split.i.i1472 ], [ %.081.i63.i.i, %bb.axx ], [ %i.llw, %bb.aze ], [ %i.lmk, %.lr.ph48.i.i.epil.preheader ], [ %.081.i63.i.i, %.preheader39.i.i ], [ %.081.i63.i.i, %.preheader.i.i1486 ], [ %.081.i63.i.i, %.preheader36.i.i ], [ %i.ljo, %bb.ayp ], [ %i.lgk, %.loopexit.i.i1474.loopexit3054.unr-lcssa ], [ %i.lhw, %bb.ayg ] ; 2 uses
  %i.lml = icmp slt i64 %.5.i.i.i1476, %i.ldx
  br i1 %i.lml, label %bb.axv, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EhLb1EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !773

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EhLb1EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i.i1474, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1463
  %.082.i.lcssa.i.i1465 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i.i1463 ], [ %.587.i.i.i1475, %.loopexit.i.i1474 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !766
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit

.lr.ph.i.i1460:                                   ; preds = %.lr.ph.i.i1460, %.lr.ph.i.i1460.preheader.new
  %.0.i1842.i.i = phi i64 [ 0, %.lr.ph.i.i1460.preheader.new ], [ %i.lnb, %.lr.ph.i.i1460 ] ; 4 uses
  %niter3612 = phi i64 [ 0, %.lr.ph.i.i1460.preheader.new ], [ %niter3612.next.1, %.lr.ph.i.i1460 ]
  %i.lmm = mul nsw i64 %.0.i1842.i.i, %i.ldc
  %i.lmn = getelementptr inbounds i8, ptr %i.ldv, i64 %i.lmm
  %i.lmo = getelementptr inbounds nuw i8, ptr %i.led, i64 %.0.i1842.i.i
  %i.lmp = load i8, ptr %i.lmo, align 1, !tbaa !98, !noalias !766
  %i.lmq = zext i8 %i.lmp to i64
  %i.lmr = mul nsw i64 %i.ldc, %i.lmq
  %i.lms = getelementptr inbounds i8, ptr %i.ldu, i64 %i.lmr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lmn, ptr align 1 %i.lms, i64 %i.ldc, i1 false), !noalias !766
  %i.lmt = or disjoint i64 %.0.i1842.i.i, 1       ; 2 uses
  %i.lmu = mul nsw i64 %i.lmt, %i.ldc
  %i.lmv = getelementptr inbounds i8, ptr %i.ldv, i64 %i.lmu
  %i.lmw = getelementptr inbounds nuw i8, ptr %i.led, i64 %i.lmt
  %i.lmx = load i8, ptr %i.lmw, align 1, !tbaa !98, !noalias !766
  %i.lmy = zext i8 %i.lmx to i64
  %i.lmz = mul nsw i64 %i.ldc, %i.lmy
  %i.lna = getelementptr inbounds i8, ptr %i.ldu, i64 %i.lmz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lmv, ptr align 1 %i.lna, i64 %i.ldc, i1 false), !noalias !766
  %i.lnb = add nuw nsw i64 %.0.i1842.i.i, 2       ; 2 uses
  %niter3612.next.1 = add nuw nsw i64 %niter3612, 2 ; 2 uses
  %niter3612.ncmp.1 = icmp eq i64 %niter3612.next.1, %unroll_iter3611
  br i1 %niter3612.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3060.unr-lcssa, label %.lr.ph.i.i1460, !llvm.loop !774

bb.azf:                                           ; preds = %.critedge71
  br i1 %i.ldl, label %bb.azh, label %bb.azg

bb.azg:                                           ; preds = %bb.azf
  %i.lnc = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.lnd = load i64, ptr %i.lnc, align 8, !tbaa !71, !noalias !775
  %.not.i19.i21.i1427 = icmp ne i64 %i.lnd, 0
  %i.lne = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.lnf = load ptr, ptr %i.lne, align 8, !noalias !775
  %i.lng = icmp ne ptr %i.lnf, null
  %i.lnh = select i1 %.not.i19.i21.i1427, i1 %i.lng, i1 false
  br label %bb.azh

bb.azh:                                           ; preds = %bb.azg, %bb.azf
  %i.lni = phi i1 [ true, %bb.azf ], [ %i.lnh, %bb.azg ]
  %i.lnj = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !775
  %i.lnk = extractvalue { i32, ptr } %i.lnj, 1    ; 9 uses
  %i.lnl = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !775 ; 13 uses
  %i.lnm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.lnn = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !775 ; 11 uses
  %i.lno = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.lnp = load i64, ptr %i.lno, align 8, !tbaa !99, !noalias !775
  %i.lnq = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.lnr = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.lns = load ptr, ptr %i.lnr, align 8, !tbaa !66, !noalias !775
  %i.lnt = getelementptr inbounds [2 x i8], ptr %i.lns, i64 %i.lnp ; 9 uses
  br i1 %i.lni, label %bb.azi, label %.preheader41.i22.i

.preheader41.i22.i:                               ; preds = %bb.azh
  %i.lnu = icmp sgt i64 %i.lnn, 0
  br i1 %i.lnu, label %.lr.ph.i24.i1428.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit

.lr.ph.i24.i1428.preheader:                       ; preds = %.preheader41.i22.i
  %xtraiter3594 = and i64 %i.lnn, 1
  %i.lnv = icmp eq i64 %i.lnn, 1
  br i1 %i.lnv, label %.lr.ph.i24.i1428.epil.preheader, label %.lr.ph.i24.i1428.preheader.new

.lr.ph.i24.i1428.preheader.new:                   ; preds = %.lr.ph.i24.i1428.preheader
  %unroll_iter3598 = and i64 %i.lnn, 9223372036854775806
  br label %.lr.ph.i24.i1428

bb.azi:                                           ; preds = %bb.azh
  %i.lnw = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.lnx = load ptr, ptr %i.lnw, align 8, !tbaa !171, !noalias !775
  %i.lny = load ptr, ptr %i.lnx, align 8, !tbaa !306, !noalias !775 ; 4 uses
  %.not.i.i.i27.i1430 = icmp eq ptr %i.lny, null
  br i1 %.not.i.i.i27.i1430, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1431, label %bb.azj

bb.azj:                                           ; preds = %bb.azi
  %i.lnz = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.loa = load i64, ptr %i.lnz, align 8, !tbaa !438, !noalias !775
  %i.lob = getelementptr inbounds nuw i8, ptr %i.lny, i64 9
  %i.loc = load i8, ptr %i.lob, align 1, !tbaa !439, !range !127, !noalias !775, !noundef !128
  %i.lod = trunc nuw i8 %i.loc to i1
  %i.loe = getelementptr inbounds nuw i8, ptr %i.lny, i64 8
  %i.lof = load i8, ptr %i.loe, align 8, !range !127, !noalias !775
  %i.log = trunc nuw i8 %i.lof to i1
  %i.loh = select i1 %i.lod, i1 %i.log, i1 false, !prof !117
  %i.loi = getelementptr inbounds nuw i8, ptr %i.lny, i64 16
  %i.loj = load ptr, ptr %i.loi, align 8, !noalias !775
  %i.lok = select i1 %i.loh, ptr %i.loj, ptr null, !prof !117
  %i.lol = getelementptr inbounds i8, ptr %i.lok, i64 %i.loa
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1431

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1431: ; preds = %bb.azj, %bb.azi
  %.0.i.i.i29.i1432 = phi ptr [ %i.lol, %bb.azj ], [ null, %bb.azi ] ; 5 uses
  %i.lom = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.lon = load i64, ptr %i.lom, align 8, !tbaa !178, !noalias !775 ; 2 uses
  %i.loo = ashr i64 %i.lon, 3
  %i.lop = and i64 %i.lon, 7
  %i.loq = icmp ne i64 %i.lop, 0
  %i.lor = zext i1 %i.loq to i64
  %i.los = add nsw i64 %i.loo, %i.lor
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i29.i1432, i8 0, i64 %i.los, i1 false), !noalias !775
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !775
  %i.lot = load ptr, ptr %i.lnq, align 8, !tbaa !66, !noalias !775
  %i.lou = load i64, ptr %i.lno, align 8, !tbaa !99, !noalias !775
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.lot, i64 noundef %i.lou, i64 noundef %i.lnn), !noalias !775
  %i.lov = icmp sgt i64 %i.lnn, 0
  br i1 %i.lov, label %.lr.ph64.i31.i, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EtLb1EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph64.i31.i:                                   ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1431
  %i.low = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.lox = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.azk

bb.azk:                                           ; preds = %.loopexit.i43.i1442, %.lr.ph64.i31.i
  %.081.i63.i32.i = phi i64 [ 0, %.lr.ph64.i31.i ], [ %.5.i.i45.i1444, %.loopexit.i43.i1442 ] ; 12 uses
  %.082.i62.i33.i = phi i64 [ 0, %.lr.ph64.i31.i ], [ %.587.i.i44.i1443, %.loopexit.i43.i1442 ] ; 6 uses
  %i.loy = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %6), !noalias !775 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i34.i1434 = trunc i32 %i.loy to i16 ; 10 uses
  %i.loz = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !775
  %.not.i20.i35.i1435 = icmp ne i64 %i.loz, 0
  %i.lpa = load ptr, ptr %i.v, align 8, !noalias !775
  %i.lpb = icmp ne ptr %i.lpa, null
  %i.lpc = select i1 %.not.i20.i35.i1435, i1 %i.lpb, i1 false
  br i1 %i.lpc, label %bb.azw, label %bb.azl

bb.azl:                                           ; preds = %bb.azk
  %.sroa.14.0.extract.shift.i.i36.i1436 = lshr i32 %i.loy, 16
  %.sroa.14.0.extract.trunc.i.i37.i1437 = zext nneg i32 %.sroa.14.0.extract.shift.i.i36.i1436 to i64
  %sext91.i.i38.i1438 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i37.i1437, 48
  %i.lpd = ashr exact i64 %sext91.i.i38.i1438, 48
  %i.lpe = add nsw i64 %i.lpd, %.082.i62.i33.i    ; 6 uses
  %i.lpf = ashr i32 %i.loy, 16                    ; 2 uses
  %sext.i.i39.i1439 = shl i32 %i.loy, 16
  %i.lpg = ashr exact i32 %sext.i.i39.i1439, 16
  %i.lph = icmp eq i32 %i.lpf, %i.lpg
  br i1 %i.lph, label %bb.azm, label %bb.azn

bb.azm:                                           ; preds = %bb.azl
  %i.lpi = sext i16 %.sroa.0.0.extract.trunc.i.i34.i1434 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i29.i1432, i64 noundef %.081.i63.i32.i, i64 noundef %i.lpi, i1 noundef zeroext true), !noalias !775
  %i.lpj = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i1434, 0
  br i1 %i.lpj, label %.lr.ph48.i54.i.preheader, label %.loopexit.i43.i1442

.lr.ph48.i54.i.preheader:                         ; preds = %bb.azm
  %i.lpk = icmp eq i16 %.sroa.0.0.extract.trunc.i.i34.i1434, 1
  br i1 %i.lpk, label %.lr.ph48.i54.i.epil.preheader, label %.lr.ph48.i54.i.preheader.new

.lr.ph48.i54.i.preheader.new:                     ; preds = %.lr.ph48.i54.i.preheader
  %unroll_iter3605 = and i64 %i.lpi, 32766
  br label %.lr.ph48.i54.i

.lr.ph48.i54.i:                                   ; preds = %.lr.ph48.i54.i, %.lr.ph48.i54.i.preheader.new
  %.1.i46.i56.i = phi i64 [ %.081.i63.i32.i, %.lr.ph48.i54.i.preheader.new ], [ %i.lqa, %.lr.ph48.i54.i ] ; 4 uses
  %niter3606 = phi i64 [ 0, %.lr.ph48.i54.i.preheader.new ], [ %niter3606.next.1, %.lr.ph48.i54.i ]
  %i.lpl = mul nsw i64 %.1.i46.i56.i, %i.ldc
  %i.lpm = getelementptr inbounds i8, ptr %i.lnl, i64 %i.lpl
  %i.lpn = getelementptr inbounds [2 x i8], ptr %i.lnt, i64 %.1.i46.i56.i
  %i.lpo = load i16, ptr %i.lpn, align 2, !tbaa !269, !noalias !775
  %i.lpp = zext i16 %i.lpo to i64
  %i.lpq = mul nsw i64 %i.ldc, %i.lpp
  %i.lpr = getelementptr inbounds i8, ptr %i.lnk, i64 %i.lpq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lpm, ptr align 1 %i.lpr, i64 %i.ldc, i1 false), !noalias !775
  %i.lps = add nsw i64 %.1.i46.i56.i, 1           ; 2 uses
  %i.lpt = mul nsw i64 %i.lps, %i.ldc
  %i.lpu = getelementptr inbounds i8, ptr %i.lnl, i64 %i.lpt
  %i.lpv = getelementptr inbounds [2 x i8], ptr %i.lnt, i64 %i.lps
  %i.lpw = load i16, ptr %i.lpv, align 2, !tbaa !269, !noalias !775
  %i.lpx = zext i16 %i.lpw to i64
  %i.lpy = mul nsw i64 %i.ldc, %i.lpx
  %i.lpz = getelementptr inbounds i8, ptr %i.lnk, i64 %i.lpy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lpu, ptr align 1 %i.lpz, i64 %i.ldc, i1 false), !noalias !775
  %i.lqa = add nsw i64 %.1.i46.i56.i, 2           ; 3 uses
  %niter3606.next.1 = add i64 %niter3606, 2       ; 2 uses
  %niter3606.ncmp.1 = icmp eq i64 %niter3606.next.1, %unroll_iter3605
  br i1 %niter3606.ncmp.1, label %.loopexit.i43.i1442.loopexit3062.unr-lcssa, label %.lr.ph48.i54.i, !llvm.loop !778

bb.azn:                                           ; preds = %bb.azl
  %i.lqb = icmp sgt i32 %i.lpf, 0
  %i.lqc = sext i16 %.sroa.0.0.extract.trunc.i.i34.i1434 to i64 ; 2 uses
  br i1 %i.lqb, label %.preheader39.i46.i, label %.loopexit.sink.split.i40.i1440

.preheader39.i46.i:                               ; preds = %bb.azn
  %i.lqd = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i1434, 0
  br i1 %i.lqd, label %.lr.ph45.i47.i, label %.loopexit.i43.i1442

.lr.ph45.i47.i:                                   ; preds = %.preheader39.i46.i, %bb.azv
  %.079.i44.i48.i = phi i64 [ %i.lrn, %bb.azv ], [ 0, %.preheader39.i46.i ]
  %.2.i43.i49.i = phi i64 [ %i.lrm, %bb.azv ], [ %.081.i63.i32.i, %.preheader39.i46.i ] ; 10 uses
  %i.lqe = load ptr, ptr %i.lnq, align 8, !tbaa !66, !noalias !775 ; 2 uses
  %.not.i21.i50.i1445 = icmp eq ptr %i.lqe, null
  br i1 %.not.i21.i50.i1445, label %bb.azp, label %bb.azo

bb.azo:                                           ; preds = %.lr.ph45.i47.i
  %i.lqf = load i64, ptr %i.lno, align 8, !tbaa !99, !noalias !775
  %i.lqg = add nsw i64 %i.lqf, %.2.i43.i49.i      ; 2 uses
  %i.lqh = lshr i64 %i.lqg, 3
  %i.lqi = getelementptr inbounds nuw i8, ptr %i.lqe, i64 %i.lqh
  %i.lqj = load i8, ptr %i.lqi, align 1, !tbaa !98, !noalias !775
  %i.lqk = trunc i64 %i.lqg to i8
  %i.lql = and i8 %i.lqk, 7
  %i.lqm = lshr i8 %i.lqj, %i.lql
  %i.lqn = trunc i8 %i.lqm to i1
  br i1 %i.lqn, label %bb.azt, label %bb.azu

bb.azp:                                           ; preds = %.lr.ph45.i47.i
  %i.lqo = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !775
  %i.lqp = getelementptr inbounds nuw i8, ptr %i.lqo, i64 40
  %i.lqq = load i32, ptr %i.lqp, align 8, !tbaa !42, !noalias !775
  switch i32 %i.lqq, label %bb.azs [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i52.i1446
    i32 28, label %bb.azq
    i32 38, label %bb.azr
  ]

bb.azq:                                           ; preds = %bb.azp
  %i.lqr = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i43.i49.i), !noalias !775
  br i1 %i.lqr, label %bb.azu, label %bb.azt

bb.azr:                                           ; preds = %bb.azp
  %i.lqs = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i43.i49.i), !noalias !775
  br i1 %i.lqs, label %bb.azu, label %bb.azt

bb.azs:                                           ; preds = %bb.azp
  %i.lqt = load i64, ptr %i.low, align 8, !tbaa !71, !noalias !775
end_hunk_26
begin_hunk_27_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a

bb.baf:                                           ; preds = %bb.azw
  %i.ltg = icmp sgt i32 %i.lro, 0
  %i.lth = sext i16 %.sroa.0.0.extract.trunc.i.i34.i1434 to i64 ; 2 uses
  br i1 %i.ltg, label %.preheader36.i59.i, label %.loopexit.sink.split.i40.i1440

.preheader36.i59.i:                               ; preds = %bb.baf
  %i.lti = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i34.i1434, 0
  br i1 %i.lti, label %.lr.ph53.i60.i, label %.loopexit.i43.i1442

.lr.ph53.i60.i:                                   ; preds = %.preheader36.i59.i, %bb.bat
  %.0.i52.i61.i = phi i64 [ %i.lvn, %bb.bat ], [ 0, %.preheader36.i59.i ]
  %.4.i51.i62.i = phi i64 [ %i.lvm, %bb.bat ], [ %.081.i63.i32.i, %.preheader36.i59.i ] ; 10 uses
  %.385.i50.i63.i = phi i64 [ %.486.i.i65.i1450, %bb.bat ], [ %.082.i62.i33.i, %.preheader36.i59.i ] ; 2 uses
  %i.ltj = load ptr, ptr %i.lnq, align 8, !tbaa !66, !noalias !775 ; 2 uses
  %.not.i26.i64.i1449 = icmp eq ptr %i.ltj, null
  br i1 %.not.i26.i64.i1449, label %bb.bah, label %bb.bag

bb.bag:                                           ; preds = %.lr.ph53.i60.i
  %i.ltk = load i64, ptr %i.lno, align 8, !tbaa !99, !noalias !775
  %i.ltl = add nsw i64 %i.ltk, %.4.i51.i62.i      ; 2 uses
  %i.ltm = lshr i64 %i.ltl, 3
  %i.ltn = getelementptr inbounds nuw i8, ptr %i.ltj, i64 %i.ltm
  %i.lto = load i8, ptr %i.ltn, align 1, !tbaa !98, !noalias !775
  %i.ltp = trunc i64 %i.ltl to i8
  %i.ltq = and i8 %i.ltp, 7
  %i.ltr = lshr i8 %i.lto, %i.ltq
  %i.lts = trunc i8 %i.ltr to i1
  br i1 %i.lts, label %bb.bal, label %bb.bas

bb.bah:                                           ; preds = %.lr.ph53.i60.i
  %i.ltt = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !775
  %i.ltu = getelementptr inbounds nuw i8, ptr %i.ltt, i64 40
  %i.ltv = load i32, ptr %i.ltu, align 8, !tbaa !42, !noalias !775
  switch i32 %i.ltv, label %bb.bak [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1453
    i32 28, label %bb.bai
    i32 38, label %bb.baj
  ]

bb.bai:                                           ; preds = %bb.bah
  %i.ltw = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i51.i62.i), !noalias !775
  br i1 %i.ltw, label %bb.bas, label %bb.bal

bb.baj:                                           ; preds = %bb.bah
  %i.ltx = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i51.i62.i), !noalias !775
  br i1 %i.ltx, label %bb.bas, label %bb.bal

bb.bak:                                           ; preds = %bb.bah
  %i.lty = load i64, ptr %i.low, align 8, !tbaa !71, !noalias !775
  %i.ltz = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !775
  %.not33.i71.i = icmp eq i64 %i.lty, %i.ltz
  br i1 %.not33.i71.i, label %bb.bas, label %bb.bal

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1453:  ; preds = %bb.bah
  %i.lua = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i51.i62.i), !noalias !775
  br i1 %i.lua, label %bb.bas, label %bb.bal

bb.bal:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1453, %bb.bak, %bb.baj, %bb.bai, %bb.bag
  %i.lub = getelementptr inbounds [2 x i8], ptr %i.lnt, i64 %.4.i51.i62.i ; 2 uses
  %i.luc = load i16, ptr %i.lub, align 2, !tbaa !269, !noalias !775
  %i.lud = zext i16 %i.luc to i64                 ; 4 uses
  %i.lue = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !775 ; 2 uses
  %.not.i29.i67.i1451 = icmp eq ptr %i.lue, null
  br i1 %.not.i29.i67.i1451, label %bb.ban, label %bb.bam

bb.bam:                                           ; preds = %bb.bal
  %i.luf = load i64, ptr %i.lox, align 8, !tbaa !99, !noalias !775
  %i.lug = add nsw i64 %i.luf, %i.lud             ; 2 uses
  %i.luh = lshr i64 %i.lug, 3
  %i.lui = getelementptr inbounds nuw i8, ptr %i.lue, i64 %i.luh
  %i.luj = load i8, ptr %i.lui, align 1, !tbaa !98, !noalias !775
  %i.luk = trunc i64 %i.lug to i8
  %i.lul = and i8 %i.luk, 7
  %i.lum = lshr i8 %i.luj, %i.lul
  %i.lun = trunc i8 %i.lum to i1
  br i1 %i.lun, label %bb.bar, label %bb.bas

bb.ban:                                           ; preds = %bb.bal
  %i.luo = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !775
  %i.lup = getelementptr inbounds nuw i8, ptr %i.luo, i64 40
  %i.luq = load i32, ptr %i.lup, align 8, !tbaa !42, !noalias !775
  switch i32 %i.luq, label %bb.baq [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1452
    i32 28, label %bb.bao
    i32 38, label %bb.bap
  ]

bb.bao:                                           ; preds = %bb.ban
  %i.lur = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.lud), !noalias !775
  br i1 %i.lur, label %bb.bas, label %bb.bar

bb.bap:                                           ; preds = %bb.ban
  %i.lus = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.lud), !noalias !775
  br i1 %i.lus, label %bb.bas, label %bb.bar

bb.baq:                                           ; preds = %bb.ban
  %i.lut = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !775
  %i.luu = load i64, ptr %i.lnm, align 8, !tbaa !62, !noalias !775
  %.not34.i69.i = icmp eq i64 %i.lut, %i.luu
  br i1 %.not34.i69.i, label %bb.bas, label %bb.bar

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1452:  ; preds = %bb.ban
  %i.luv = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.lud), !noalias !775
  br i1 %i.luv, label %bb.bas, label %bb.bar

bb.bar:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1452, %bb.baq, %bb.bap, %bb.bao, %bb.bam
  %i.luw = mul nsw i64 %.4.i51.i62.i, %i.ldc
  %i.lux = getelementptr inbounds i8, ptr %i.lnl, i64 %i.luw
  %i.luy = load i16, ptr %i.lub, align 2, !tbaa !269, !noalias !775
  %i.luz = zext i16 %i.luy to i64
  %i.lva = mul nsw i64 %i.ldc, %i.luz
  %i.lvb = getelementptr inbounds i8, ptr %i.lnk, i64 %i.lva
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lux, ptr align 1 %i.lvb, i64 %i.ldc, i1 false), !noalias !775
  %i.lvc = srem i64 %.4.i51.i62.i, 8
  %i.lvd = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.lvc
  %i.lve = load i8, ptr %i.lvd, align 1, !tbaa !98, !noalias !775
  %i.lvf = sdiv i64 %.4.i51.i62.i, 8
  %i.lvg = getelementptr inbounds i8, ptr %.0.i.i.i29.i1432, i64 %i.lvf ; 2 uses
  %i.lvh = load i8, ptr %i.lvg, align 1, !tbaa !98, !noalias !775
  %i.lvi = or i8 %i.lvh, %i.lve
  store i8 %i.lvi, ptr %i.lvg, align 1, !tbaa !98, !noalias !775
  %i.lvj = add nsw i64 %.385.i50.i63.i, 1
  br label %bb.bat

bb.bas:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i68.i1452, %bb.baq, %bb.bap, %bb.bao, %bb.bam, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i70.i1453, %bb.bak, %bb.baj, %bb.bai, %bb.bag
  %i.lvk = mul nsw i64 %.4.i51.i62.i, %i.ldc
  %i.lvl = getelementptr inbounds i8, ptr %i.lnl, i64 %i.lvk
  call void @llvm.memset.p0.i64(ptr align 1 %i.lvl, i8 0, i64 %i.ldc, i1 false), !noalias !775
  br label %bb.bat

bb.bat:                                           ; preds = %bb.bas, %bb.bar
  %.486.i.i65.i1450 = phi i64 [ %i.lvj, %bb.bar ], [ %.385.i50.i63.i, %bb.bas ] ; 2 uses
  %i.lvm = add nsw i64 %.4.i51.i62.i, 1           ; 2 uses
  %i.lvn = add nuw nsw i64 %.0.i52.i61.i, 1       ; 2 uses
  %exitcond74.not.i66.i = icmp eq i64 %i.lvn, %i.lth
  br i1 %exitcond74.not.i66.i, label %.loopexit.i43.i1442, label %.lr.ph53.i60.i, !llvm.loop !781

.loopexit.sink.split.i40.i1440:                   ; preds = %bb.baf, %bb.azn
  %.sink95.i41.i = phi i64 [ %i.lqc, %bb.azn ], [ %i.lth, %bb.baf ] ; 2 uses
  %.587.i.ph.i42.i1441 = phi i64 [ %i.lpe, %bb.azn ], [ %.082.i62.i33.i, %bb.baf ]
  %i.lvo = mul nsw i64 %.081.i63.i32.i, %i.ldc
  %i.lvp = getelementptr inbounds i8, ptr %i.lnl, i64 %i.lvo
  %i.lvq = mul nsw i64 %.sink95.i41.i, %i.ldc
  call void @llvm.memset.p0.i64(ptr align 1 %i.lvp, i8 0, i64 %i.lvq, i1 false), !noalias !775
  %i.lvr = add nsw i64 %.sink95.i41.i, %.081.i63.i32.i
  br label %.loopexit.i43.i1442

.loopexit.i43.i1442.loopexit3062.unr-lcssa:       ; preds = %.lr.ph48.i54.i
  %i.lvs = and i16 %.sroa.0.0.extract.trunc.i.i34.i1434, 1
  %lcmp.mod3602.not = icmp eq i16 %i.lvs, 0
  br i1 %lcmp.mod3602.not, label %.loopexit.i43.i1442, label %.lr.ph48.i54.i.epil.preheader

.lr.ph48.i54.i.epil.preheader:                    ; preds = %.loopexit.i43.i1442.loopexit3062.unr-lcssa, %.lr.ph48.i54.i.preheader
  %.1.i46.i56.i.epil.init = phi i64 [ %.081.i63.i32.i, %.lr.ph48.i54.i.preheader ], [ %i.lqa, %.loopexit.i43.i1442.loopexit3062.unr-lcssa ] ; 3 uses
  %lcmp.mod3604 = trunc i32 %i.loy to i1
  call void @llvm.assume(i1 %lcmp.mod3604)
  %i.lvt = mul nsw i64 %.1.i46.i56.i.epil.init, %i.ldc
  %i.lvu = getelementptr inbounds i8, ptr %i.lnl, i64 %i.lvt
  %i.lvv = getelementptr inbounds [2 x i8], ptr %i.lnt, i64 %.1.i46.i56.i.epil.init
  %i.lvw = load i16, ptr %i.lvv, align 2, !tbaa !269, !noalias !775
  %i.lvx = zext i16 %i.lvw to i64
  %i.lvy = mul nsw i64 %i.ldc, %i.lvx
  %i.lvz = getelementptr inbounds i8, ptr %i.lnk, i64 %i.lvy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lvu, ptr align 1 %i.lvz, i64 %i.ldc, i1 false), !noalias !775
  %i.lwa = add nsw i64 %.1.i46.i56.i.epil.init, 1
  br label %.loopexit.i43.i1442

.loopexit.i43.i1442:                              ; preds = %bb.azv, %.lr.ph48.i54.i.epil.preheader, %.loopexit.i43.i1442.loopexit3062.unr-lcssa, %bb.bat, %bb.bae, %.loopexit.sink.split.i40.i1440, %.preheader36.i59.i, %.preheader.i72.i1454, %.preheader39.i46.i, %bb.azm
  %.587.i.i44.i1443 = phi i64 [ %.587.i.ph.i42.i1441, %.loopexit.sink.split.i40.i1440 ], [ %i.lpe, %bb.azm ], [ %.486.i.i65.i1450, %bb.bat ], [ %i.lpe, %.lr.ph48.i54.i.epil.preheader ], [ %i.lpe, %.preheader39.i46.i ], [ %.082.i62.i33.i, %.preheader.i72.i1454 ], [ %.082.i62.i33.i, %.preheader36.i59.i ], [ %.284.i.i78.i1456, %bb.bae ], [ %i.lpe, %.loopexit.i43.i1442.loopexit3062.unr-lcssa ], [ %i.lpe, %bb.azv ] ; 2 uses
  %.5.i.i45.i1444 = phi i64 [ %i.lvr, %.loopexit.sink.split.i40.i1440 ], [ %.081.i63.i32.i, %bb.azm ], [ %i.lvm, %bb.bat ], [ %i.lwa, %.lr.ph48.i54.i.epil.preheader ], [ %.081.i63.i32.i, %.preheader39.i46.i ], [ %.081.i63.i32.i, %.preheader.i72.i1454 ], [ %.081.i63.i32.i, %.preheader36.i59.i ], [ %i.lte, %bb.bae ], [ %i.lqa, %.loopexit.i43.i1442.loopexit3062.unr-lcssa ], [ %i.lrm, %bb.azv ] ; 2 uses
  %i.lwb = icmp slt i64 %.5.i.i45.i1444, %i.lnn
  br i1 %i.lwb, label %bb.azk, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EtLb1EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !782

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EtLb1EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i43.i1442, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1431
  %.082.i.lcssa.i30.i1433 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i28.i1431 ], [ %.587.i.i44.i1443, %.loopexit.i43.i1442 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !775
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit

.lr.ph.i24.i1428:                                 ; preds = %.lr.ph.i24.i1428, %.lr.ph.i24.i1428.preheader.new
  %.0.i1842.i25.i = phi i64 [ 0, %.lr.ph.i24.i1428.preheader.new ], [ %i.lwr, %.lr.ph.i24.i1428 ] ; 4 uses
  %niter3599 = phi i64 [ 0, %.lr.ph.i24.i1428.preheader.new ], [ %niter3599.next.1, %.lr.ph.i24.i1428 ]
  %i.lwc = mul nsw i64 %.0.i1842.i25.i, %i.ldc
  %i.lwd = getelementptr inbounds i8, ptr %i.lnl, i64 %i.lwc
  %i.lwe = getelementptr inbounds nuw [2 x i8], ptr %i.lnt, i64 %.0.i1842.i25.i
  %i.lwf = load i16, ptr %i.lwe, align 2, !tbaa !269, !noalias !775
  %i.lwg = zext i16 %i.lwf to i64
  %i.lwh = mul nsw i64 %i.ldc, %i.lwg
  %i.lwi = getelementptr inbounds i8, ptr %i.lnk, i64 %i.lwh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lwd, ptr align 1 %i.lwi, i64 %i.ldc, i1 false), !noalias !775
  %i.lwj = or disjoint i64 %.0.i1842.i25.i, 1     ; 2 uses
  %i.lwk = mul nsw i64 %i.lwj, %i.ldc
  %i.lwl = getelementptr inbounds i8, ptr %i.lnl, i64 %i.lwk
  %i.lwm = getelementptr inbounds nuw [2 x i8], ptr %i.lnt, i64 %i.lwj
  %i.lwn = load i16, ptr %i.lwm, align 2, !tbaa !269, !noalias !775
  %i.lwo = zext i16 %i.lwn to i64
  %i.lwp = mul nsw i64 %i.ldc, %i.lwo
  %i.lwq = getelementptr inbounds i8, ptr %i.lnk, i64 %i.lwp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lwl, ptr align 1 %i.lwq, i64 %i.ldc, i1 false), !noalias !775
  %i.lwr = add nuw nsw i64 %.0.i1842.i25.i, 2     ; 2 uses
  %niter3599.next.1 = add nuw nsw i64 %niter3599, 2 ; 2 uses
  %niter3599.ncmp.1 = icmp eq i64 %niter3599.next.1, %unroll_iter3598
  br i1 %niter3599.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3068.unr-lcssa, label %.lr.ph.i24.i1428, !llvm.loop !783

bb.bau:                                           ; preds = %.critedge71
  br i1 %i.ldl, label %bb.baw, label %bb.bav

bb.bav:                                           ; preds = %bb.bau
  %i.lws = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.lwt = load i64, ptr %i.lws, align 8, !tbaa !71, !noalias !784
  %.not.i19.i83.i1394 = icmp ne i64 %i.lwt, 0
  %i.lwu = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.lwv = load ptr, ptr %i.lwu, align 8, !noalias !784
  %i.lww = icmp ne ptr %i.lwv, null
  %i.lwx = select i1 %.not.i19.i83.i1394, i1 %i.lww, i1 false
  br label %bb.baw

bb.baw:                                           ; preds = %bb.bav, %bb.bau
  %i.lwy = phi i1 [ true, %bb.bau ], [ %i.lwx, %bb.bav ]
  %i.lwz = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !784
  %i.lxa = extractvalue { i32, ptr } %i.lwz, 1    ; 9 uses
  %i.lxb = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !784 ; 13 uses
  %i.lxc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.lxd = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !784 ; 11 uses
  %i.lxe = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.lxf = load i64, ptr %i.lxe, align 8, !tbaa !99, !noalias !784
  %i.lxg = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.lxh = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.lxi = load ptr, ptr %i.lxh, align 8, !tbaa !66, !noalias !784
  %i.lxj = getelementptr inbounds [4 x i8], ptr %i.lxi, i64 %i.lxf ; 9 uses
  br i1 %i.lwy, label %bb.bax, label %.preheader41.i84.i

.preheader41.i84.i:                               ; preds = %bb.baw
  %i.lxk = icmp sgt i64 %i.lxd, 0
  br i1 %i.lxk, label %.lr.ph.i86.i1396.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit

.lr.ph.i86.i1396.preheader:                       ; preds = %.preheader41.i84.i
  %xtraiter3581 = and i64 %i.lxd, 1
  %i.lxl = icmp eq i64 %i.lxd, 1
  br i1 %i.lxl, label %.lr.ph.i86.i1396.epil.preheader, label %.lr.ph.i86.i1396.preheader.new

.lr.ph.i86.i1396.preheader.new:                   ; preds = %.lr.ph.i86.i1396.preheader
  %unroll_iter3585 = and i64 %i.lxd, 9223372036854775806
  br label %.lr.ph.i86.i1396

bb.bax:                                           ; preds = %bb.baw
  %i.lxm = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.lxn = load ptr, ptr %i.lxm, align 8, !tbaa !171, !noalias !784
  %i.lxo = load ptr, ptr %i.lxn, align 8, !tbaa !306, !noalias !784 ; 4 uses
  %.not.i.i.i89.i1398 = icmp eq ptr %i.lxo, null
  br i1 %.not.i.i.i89.i1398, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1399, label %bb.bay

bb.bay:                                           ; preds = %bb.bax
  %i.lxp = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.lxq = load i64, ptr %i.lxp, align 8, !tbaa !438, !noalias !784
  %i.lxr = getelementptr inbounds nuw i8, ptr %i.lxo, i64 9
  %i.lxs = load i8, ptr %i.lxr, align 1, !tbaa !439, !range !127, !noalias !784, !noundef !128
  %i.lxt = trunc nuw i8 %i.lxs to i1
  %i.lxu = getelementptr inbounds nuw i8, ptr %i.lxo, i64 8
  %i.lxv = load i8, ptr %i.lxu, align 8, !range !127, !noalias !784
  %i.lxw = trunc nuw i8 %i.lxv to i1
  %i.lxx = select i1 %i.lxt, i1 %i.lxw, i1 false, !prof !117
  %i.lxy = getelementptr inbounds nuw i8, ptr %i.lxo, i64 16
  %i.lxz = load ptr, ptr %i.lxy, align 8, !noalias !784
  %i.lya = select i1 %i.lxx, ptr %i.lxz, ptr null, !prof !117
  %i.lyb = getelementptr inbounds i8, ptr %i.lya, i64 %i.lxq
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1399

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1399: ; preds = %bb.bay, %bb.bax
  %.0.i.i.i91.i1400 = phi ptr [ %i.lyb, %bb.bay ], [ null, %bb.bax ] ; 5 uses
  %i.lyc = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.lyd = load i64, ptr %i.lyc, align 8, !tbaa !178, !noalias !784 ; 2 uses
  %i.lye = ashr i64 %i.lyd, 3
  %i.lyf = and i64 %i.lyd, 7
  %i.lyg = icmp ne i64 %i.lyf, 0
  %i.lyh = zext i1 %i.lyg to i64
  %i.lyi = add nsw i64 %i.lye, %i.lyh
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i91.i1400, i8 0, i64 %i.lyi, i1 false), !noalias !784
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !784
  %i.lyj = load ptr, ptr %i.lxg, align 8, !tbaa !66, !noalias !784
  %i.lyk = load i64, ptr %i.lxe, align 8, !tbaa !99, !noalias !784
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.lyj, i64 noundef %i.lyk, i64 noundef %i.lxd), !noalias !784
  %i.lyl = icmp sgt i64 %i.lxd, 0
  br i1 %i.lyl, label %.lr.ph64.i93.i, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EjLb1EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph64.i93.i:                                   ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1399
  %i.lym = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.lyn = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.baz

bb.baz:                                           ; preds = %.loopexit.i105.i1410, %.lr.ph64.i93.i
  %.081.i63.i94.i = phi i64 [ 0, %.lr.ph64.i93.i ], [ %.5.i.i107.i1412, %.loopexit.i105.i1410 ] ; 12 uses
  %.082.i62.i95.i = phi i64 [ 0, %.lr.ph64.i93.i ], [ %.587.i.i106.i1411, %.loopexit.i105.i1410 ] ; 6 uses
  %i.lyo = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5), !noalias !784 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i96.i1402 = trunc i32 %i.lyo to i16 ; 10 uses
  %i.lyp = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !784
  %.not.i20.i97.i1403 = icmp ne i64 %i.lyp, 0
  %i.lyq = load ptr, ptr %i.v, align 8, !noalias !784
  %i.lyr = icmp ne ptr %i.lyq, null
  %i.lys = select i1 %.not.i20.i97.i1403, i1 %i.lyr, i1 false
  br i1 %i.lys, label %bb.bbl, label %bb.bba

bb.bba:                                           ; preds = %bb.baz
  %.sroa.14.0.extract.shift.i.i98.i1404 = lshr i32 %i.lyo, 16
  %.sroa.14.0.extract.trunc.i.i99.i1405 = zext nneg i32 %.sroa.14.0.extract.shift.i.i98.i1404 to i64
  %sext91.i.i100.i1406 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i99.i1405, 48
  %i.lyt = ashr exact i64 %sext91.i.i100.i1406, 48
  %i.lyu = add nsw i64 %i.lyt, %.082.i62.i95.i    ; 6 uses
  %i.lyv = ashr i32 %i.lyo, 16                    ; 2 uses
  %sext.i.i101.i1407 = shl i32 %i.lyo, 16
  %i.lyw = ashr exact i32 %sext.i.i101.i1407, 16
  %i.lyx = icmp eq i32 %i.lyv, %i.lyw
  br i1 %i.lyx, label %bb.bbb, label %bb.bbc

bb.bbb:                                           ; preds = %bb.bba
  %i.lyy = sext i16 %.sroa.0.0.extract.trunc.i.i96.i1402 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i91.i1400, i64 noundef %.081.i63.i94.i, i64 noundef %i.lyy, i1 noundef zeroext true), !noalias !784
  %i.lyz = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i1402, 0
  br i1 %i.lyz, label %.lr.ph48.i116.i.preheader, label %.loopexit.i105.i1410

.lr.ph48.i116.i.preheader:                        ; preds = %bb.bbb
  %i.lza = icmp eq i16 %.sroa.0.0.extract.trunc.i.i96.i1402, 1
  br i1 %i.lza, label %.lr.ph48.i116.i.epil.preheader, label %.lr.ph48.i116.i.preheader.new

.lr.ph48.i116.i.preheader.new:                    ; preds = %.lr.ph48.i116.i.preheader
  %unroll_iter3592 = and i64 %i.lyy, 32766
  br label %.lr.ph48.i116.i

.lr.ph48.i116.i:                                  ; preds = %.lr.ph48.i116.i, %.lr.ph48.i116.i.preheader.new
  %.1.i46.i118.i = phi i64 [ %.081.i63.i94.i, %.lr.ph48.i116.i.preheader.new ], [ %i.lzq, %.lr.ph48.i116.i ] ; 4 uses
  %niter3593 = phi i64 [ 0, %.lr.ph48.i116.i.preheader.new ], [ %niter3593.next.1, %.lr.ph48.i116.i ]
  %i.lzb = mul nsw i64 %.1.i46.i118.i, %i.ldc
  %i.lzc = getelementptr inbounds i8, ptr %i.lxb, i64 %i.lzb
  %i.lzd = getelementptr inbounds [4 x i8], ptr %i.lxj, i64 %.1.i46.i118.i
  %i.lze = load i32, ptr %i.lzd, align 4, !tbaa !3, !noalias !784
  %i.lzf = zext i32 %i.lze to i64
  %i.lzg = mul nsw i64 %i.ldc, %i.lzf
  %i.lzh = getelementptr inbounds i8, ptr %i.lxa, i64 %i.lzg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lzc, ptr align 1 %i.lzh, i64 %i.ldc, i1 false), !noalias !784
  %i.lzi = add nsw i64 %.1.i46.i118.i, 1          ; 2 uses
  %i.lzj = mul nsw i64 %i.lzi, %i.ldc
  %i.lzk = getelementptr inbounds i8, ptr %i.lxb, i64 %i.lzj
  %i.lzl = getelementptr inbounds [4 x i8], ptr %i.lxj, i64 %i.lzi
  %i.lzm = load i32, ptr %i.lzl, align 4, !tbaa !3, !noalias !784
  %i.lzn = zext i32 %i.lzm to i64
  %i.lzo = mul nsw i64 %i.ldc, %i.lzn
  %i.lzp = getelementptr inbounds i8, ptr %i.lxa, i64 %i.lzo
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lzk, ptr align 1 %i.lzp, i64 %i.ldc, i1 false), !noalias !784
  %i.lzq = add nsw i64 %.1.i46.i118.i, 2          ; 3 uses
  %niter3593.next.1 = add i64 %niter3593, 2       ; 2 uses
  %niter3593.ncmp.1 = icmp eq i64 %niter3593.next.1, %unroll_iter3592
  br i1 %niter3593.ncmp.1, label %.loopexit.i105.i1410.loopexit3070.unr-lcssa, label %.lr.ph48.i116.i, !llvm.loop !787

bb.bbc:                                           ; preds = %bb.bba
  %i.lzr = icmp sgt i32 %i.lyv, 0
  %i.lzs = sext i16 %.sroa.0.0.extract.trunc.i.i96.i1402 to i64 ; 2 uses
  br i1 %i.lzr, label %.preheader39.i108.i, label %.loopexit.sink.split.i102.i1408

.preheader39.i108.i:                              ; preds = %bb.bbc
  %i.lzt = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i1402, 0
  br i1 %i.lzt, label %.lr.ph45.i109.i, label %.loopexit.i105.i1410

.lr.ph45.i109.i:                                  ; preds = %.preheader39.i108.i, %bb.bbk
  %.079.i44.i110.i = phi i64 [ %i.mbd, %bb.bbk ], [ 0, %.preheader39.i108.i ]
  %.2.i43.i111.i = phi i64 [ %i.mbc, %bb.bbk ], [ %.081.i63.i94.i, %.preheader39.i108.i ] ; 10 uses
  %i.lzu = load ptr, ptr %i.lxg, align 8, !tbaa !66, !noalias !784 ; 2 uses
  %.not.i21.i112.i1413 = icmp eq ptr %i.lzu, null
  br i1 %.not.i21.i112.i1413, label %bb.bbe, label %bb.bbd

bb.bbd:                                           ; preds = %.lr.ph45.i109.i
  %i.lzv = load i64, ptr %i.lxe, align 8, !tbaa !99, !noalias !784
  %i.lzw = add nsw i64 %i.lzv, %.2.i43.i111.i     ; 2 uses
  %i.lzx = lshr i64 %i.lzw, 3
  %i.lzy = getelementptr inbounds nuw i8, ptr %i.lzu, i64 %i.lzx
  %i.lzz = load i8, ptr %i.lzy, align 1, !tbaa !98, !noalias !784
  %i.maa = trunc i64 %i.lzw to i8
  %i.mab = and i8 %i.maa, 7
  %i.mac = lshr i8 %i.lzz, %i.mab
  %i.mad = trunc i8 %i.mac to i1
  br i1 %i.mad, label %bb.bbi, label %bb.bbj

bb.bbe:                                           ; preds = %.lr.ph45.i109.i
  %i.mae = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !784
  %i.maf = getelementptr inbounds nuw i8, ptr %i.mae, i64 40
  %i.mag = load i32, ptr %i.maf, align 8, !tbaa !42, !noalias !784
  switch i32 %i.mag, label %bb.bbh [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i114.i1414
    i32 28, label %bb.bbf
    i32 38, label %bb.bbg
  ]

bb.bbf:                                           ; preds = %bb.bbe
  %i.mah = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i43.i111.i), !noalias !784
  br i1 %i.mah, label %bb.bbj, label %bb.bbi

bb.bbg:                                           ; preds = %bb.bbe
  %i.mai = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i43.i111.i), !noalias !784
  br i1 %i.mai, label %bb.bbj, label %bb.bbi

bb.bbh:                                           ; preds = %bb.bbe
  %i.maj = load i64, ptr %i.lym, align 8, !tbaa !71, !noalias !784
end_hunk_27
begin_hunk_28_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a

bb.bbu:                                           ; preds = %bb.bbl
  %i.mcw = icmp sgt i32 %i.mbe, 0
  %i.mcx = sext i16 %.sroa.0.0.extract.trunc.i.i96.i1402 to i64 ; 2 uses
  br i1 %i.mcw, label %.preheader36.i121.i, label %.loopexit.sink.split.i102.i1408

.preheader36.i121.i:                              ; preds = %bb.bbu
  %i.mcy = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i96.i1402, 0
  br i1 %i.mcy, label %.lr.ph53.i122.i, label %.loopexit.i105.i1410

.lr.ph53.i122.i:                                  ; preds = %.preheader36.i121.i, %bb.bci
  %.0.i52.i123.i = phi i64 [ %i.mfd, %bb.bci ], [ 0, %.preheader36.i121.i ]
  %.4.i51.i124.i = phi i64 [ %i.mfc, %bb.bci ], [ %.081.i63.i94.i, %.preheader36.i121.i ] ; 10 uses
  %.385.i50.i125.i = phi i64 [ %.486.i.i127.i1418, %bb.bci ], [ %.082.i62.i95.i, %.preheader36.i121.i ] ; 2 uses
  %i.mcz = load ptr, ptr %i.lxg, align 8, !tbaa !66, !noalias !784 ; 2 uses
  %.not.i26.i126.i1417 = icmp eq ptr %i.mcz, null
  br i1 %.not.i26.i126.i1417, label %bb.bbw, label %bb.bbv

bb.bbv:                                           ; preds = %.lr.ph53.i122.i
  %i.mda = load i64, ptr %i.lxe, align 8, !tbaa !99, !noalias !784
  %i.mdb = add nsw i64 %i.mda, %.4.i51.i124.i     ; 2 uses
  %i.mdc = lshr i64 %i.mdb, 3
  %i.mdd = getelementptr inbounds nuw i8, ptr %i.mcz, i64 %i.mdc
  %i.mde = load i8, ptr %i.mdd, align 1, !tbaa !98, !noalias !784
  %i.mdf = trunc i64 %i.mdb to i8
  %i.mdg = and i8 %i.mdf, 7
  %i.mdh = lshr i8 %i.mde, %i.mdg
  %i.mdi = trunc i8 %i.mdh to i1
  br i1 %i.mdi, label %bb.bca, label %bb.bch

bb.bbw:                                           ; preds = %.lr.ph53.i122.i
  %i.mdj = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !784
  %i.mdk = getelementptr inbounds nuw i8, ptr %i.mdj, i64 40
  %i.mdl = load i32, ptr %i.mdk, align 8, !tbaa !42, !noalias !784
  switch i32 %i.mdl, label %bb.bbz [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i1421
    i32 28, label %bb.bbx
    i32 38, label %bb.bby
  ]

bb.bbx:                                           ; preds = %bb.bbw
  %i.mdm = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i51.i124.i), !noalias !784
  br i1 %i.mdm, label %bb.bch, label %bb.bca

bb.bby:                                           ; preds = %bb.bbw
  %i.mdn = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i51.i124.i), !noalias !784
  br i1 %i.mdn, label %bb.bch, label %bb.bca

bb.bbz:                                           ; preds = %bb.bbw
  %i.mdo = load i64, ptr %i.lym, align 8, !tbaa !71, !noalias !784
  %i.mdp = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !784
  %.not33.i133.i = icmp eq i64 %i.mdo, %i.mdp
  br i1 %.not33.i133.i, label %bb.bch, label %bb.bca

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i1421: ; preds = %bb.bbw
  %i.mdq = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i51.i124.i), !noalias !784
  br i1 %i.mdq, label %bb.bch, label %bb.bca

bb.bca:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i1421, %bb.bbz, %bb.bby, %bb.bbx, %bb.bbv
  %i.mdr = getelementptr inbounds [4 x i8], ptr %i.lxj, i64 %.4.i51.i124.i ; 2 uses
  %i.mds = load i32, ptr %i.mdr, align 4, !tbaa !3, !noalias !784
  %i.mdt = zext i32 %i.mds to i64                 ; 4 uses
  %i.mdu = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !784 ; 2 uses
  %.not.i29.i129.i1419 = icmp eq ptr %i.mdu, null
  br i1 %.not.i29.i129.i1419, label %bb.bcc, label %bb.bcb

bb.bcb:                                           ; preds = %bb.bca
  %i.mdv = load i64, ptr %i.lyn, align 8, !tbaa !99, !noalias !784
  %i.mdw = add nsw i64 %i.mdv, %i.mdt             ; 2 uses
  %i.mdx = lshr i64 %i.mdw, 3
  %i.mdy = getelementptr inbounds nuw i8, ptr %i.mdu, i64 %i.mdx
  %i.mdz = load i8, ptr %i.mdy, align 1, !tbaa !98, !noalias !784
  %i.mea = trunc i64 %i.mdw to i8
  %i.meb = and i8 %i.mea, 7
  %i.mec = lshr i8 %i.mdz, %i.meb
  %i.med = trunc i8 %i.mec to i1
  br i1 %i.med, label %bb.bcg, label %bb.bch

bb.bcc:                                           ; preds = %bb.bca
  %i.mee = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !784
  %i.mef = getelementptr inbounds nuw i8, ptr %i.mee, i64 40
  %i.meg = load i32, ptr %i.mef, align 8, !tbaa !42, !noalias !784
  switch i32 %i.meg, label %bb.bcf [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i1420
    i32 28, label %bb.bcd
    i32 38, label %bb.bce
  ]

bb.bcd:                                           ; preds = %bb.bcc
  %i.meh = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.mdt), !noalias !784
  br i1 %i.meh, label %bb.bch, label %bb.bcg

bb.bce:                                           ; preds = %bb.bcc
  %i.mei = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.mdt), !noalias !784
  br i1 %i.mei, label %bb.bch, label %bb.bcg

bb.bcf:                                           ; preds = %bb.bcc
  %i.mej = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !784
  %i.mek = load i64, ptr %i.lxc, align 8, !tbaa !62, !noalias !784
  %.not34.i131.i = icmp eq i64 %i.mej, %i.mek
  br i1 %.not34.i131.i, label %bb.bch, label %bb.bcg

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i1420: ; preds = %bb.bcc
  %i.mel = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.mdt), !noalias !784
  br i1 %i.mel, label %bb.bch, label %bb.bcg

bb.bcg:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i1420, %bb.bcf, %bb.bce, %bb.bcd, %bb.bcb
  %i.mem = mul nsw i64 %.4.i51.i124.i, %i.ldc
  %i.men = getelementptr inbounds i8, ptr %i.lxb, i64 %i.mem
  %i.meo = load i32, ptr %i.mdr, align 4, !tbaa !3, !noalias !784
  %i.mep = zext i32 %i.meo to i64
  %i.meq = mul nsw i64 %i.ldc, %i.mep
  %i.mer = getelementptr inbounds i8, ptr %i.lxa, i64 %i.meq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.men, ptr align 1 %i.mer, i64 %i.ldc, i1 false), !noalias !784
  %i.mes = srem i64 %.4.i51.i124.i, 8
  %i.met = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.mes
  %i.meu = load i8, ptr %i.met, align 1, !tbaa !98, !noalias !784
  %i.mev = sdiv i64 %.4.i51.i124.i, 8
  %i.mew = getelementptr inbounds i8, ptr %.0.i.i.i91.i1400, i64 %i.mev ; 2 uses
  %i.mex = load i8, ptr %i.mew, align 1, !tbaa !98, !noalias !784
  %i.mey = or i8 %i.mex, %i.meu
  store i8 %i.mey, ptr %i.mew, align 1, !tbaa !98, !noalias !784
  %i.mez = add nsw i64 %.385.i50.i125.i, 1
  br label %bb.bci

bb.bch:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i130.i1420, %bb.bcf, %bb.bce, %bb.bcd, %bb.bcb, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i132.i1421, %bb.bbz, %bb.bby, %bb.bbx, %bb.bbv
  %i.mfa = mul nsw i64 %.4.i51.i124.i, %i.ldc
  %i.mfb = getelementptr inbounds i8, ptr %i.lxb, i64 %i.mfa
  call void @llvm.memset.p0.i64(ptr align 1 %i.mfb, i8 0, i64 %i.ldc, i1 false), !noalias !784
  br label %bb.bci

bb.bci:                                           ; preds = %bb.bch, %bb.bcg
  %.486.i.i127.i1418 = phi i64 [ %i.mez, %bb.bcg ], [ %.385.i50.i125.i, %bb.bch ] ; 2 uses
  %i.mfc = add nsw i64 %.4.i51.i124.i, 1          ; 2 uses
  %i.mfd = add nuw nsw i64 %.0.i52.i123.i, 1      ; 2 uses
  %exitcond74.not.i128.i = icmp eq i64 %i.mfd, %i.mcx
  br i1 %exitcond74.not.i128.i, label %.loopexit.i105.i1410, label %.lr.ph53.i122.i, !llvm.loop !790

.loopexit.sink.split.i102.i1408:                  ; preds = %bb.bbu, %bb.bbc
  %.sink95.i103.i = phi i64 [ %i.lzs, %bb.bbc ], [ %i.mcx, %bb.bbu ] ; 2 uses
  %.587.i.ph.i104.i1409 = phi i64 [ %i.lyu, %bb.bbc ], [ %.082.i62.i95.i, %bb.bbu ]
  %i.mfe = mul nsw i64 %.081.i63.i94.i, %i.ldc
  %i.mff = getelementptr inbounds i8, ptr %i.lxb, i64 %i.mfe
  %i.mfg = mul nsw i64 %.sink95.i103.i, %i.ldc
  call void @llvm.memset.p0.i64(ptr align 1 %i.mff, i8 0, i64 %i.mfg, i1 false), !noalias !784
  %i.mfh = add nsw i64 %.sink95.i103.i, %.081.i63.i94.i
  br label %.loopexit.i105.i1410

.loopexit.i105.i1410.loopexit3070.unr-lcssa:      ; preds = %.lr.ph48.i116.i
  %i.mfi = and i16 %.sroa.0.0.extract.trunc.i.i96.i1402, 1
  %lcmp.mod3589.not = icmp eq i16 %i.mfi, 0
  br i1 %lcmp.mod3589.not, label %.loopexit.i105.i1410, label %.lr.ph48.i116.i.epil.preheader

.lr.ph48.i116.i.epil.preheader:                   ; preds = %.loopexit.i105.i1410.loopexit3070.unr-lcssa, %.lr.ph48.i116.i.preheader
  %.1.i46.i118.i.epil.init = phi i64 [ %.081.i63.i94.i, %.lr.ph48.i116.i.preheader ], [ %i.lzq, %.loopexit.i105.i1410.loopexit3070.unr-lcssa ] ; 3 uses
  %lcmp.mod3591 = trunc i32 %i.lyo to i1
  call void @llvm.assume(i1 %lcmp.mod3591)
  %i.mfj = mul nsw i64 %.1.i46.i118.i.epil.init, %i.ldc
  %i.mfk = getelementptr inbounds i8, ptr %i.lxb, i64 %i.mfj
  %i.mfl = getelementptr inbounds [4 x i8], ptr %i.lxj, i64 %.1.i46.i118.i.epil.init
  %i.mfm = load i32, ptr %i.mfl, align 4, !tbaa !3, !noalias !784
  %i.mfn = zext i32 %i.mfm to i64
  %i.mfo = mul nsw i64 %i.ldc, %i.mfn
  %i.mfp = getelementptr inbounds i8, ptr %i.lxa, i64 %i.mfo
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mfk, ptr align 1 %i.mfp, i64 %i.ldc, i1 false), !noalias !784
  %i.mfq = add nsw i64 %.1.i46.i118.i.epil.init, 1
  br label %.loopexit.i105.i1410

.loopexit.i105.i1410:                             ; preds = %bb.bbk, %.lr.ph48.i116.i.epil.preheader, %.loopexit.i105.i1410.loopexit3070.unr-lcssa, %bb.bci, %bb.bbt, %.loopexit.sink.split.i102.i1408, %.preheader36.i121.i, %.preheader.i134.i1422, %.preheader39.i108.i, %bb.bbb
  %.587.i.i106.i1411 = phi i64 [ %.587.i.ph.i104.i1409, %.loopexit.sink.split.i102.i1408 ], [ %i.lyu, %bb.bbb ], [ %.486.i.i127.i1418, %bb.bci ], [ %i.lyu, %.lr.ph48.i116.i.epil.preheader ], [ %i.lyu, %.preheader39.i108.i ], [ %.082.i62.i95.i, %.preheader.i134.i1422 ], [ %.082.i62.i95.i, %.preheader36.i121.i ], [ %.284.i.i140.i1424, %bb.bbt ], [ %i.lyu, %.loopexit.i105.i1410.loopexit3070.unr-lcssa ], [ %i.lyu, %bb.bbk ] ; 2 uses
  %.5.i.i107.i1412 = phi i64 [ %i.mfh, %.loopexit.sink.split.i102.i1408 ], [ %.081.i63.i94.i, %bb.bbb ], [ %i.mfc, %bb.bci ], [ %i.mfq, %.lr.ph48.i116.i.epil.preheader ], [ %.081.i63.i94.i, %.preheader39.i108.i ], [ %.081.i63.i94.i, %.preheader.i134.i1422 ], [ %.081.i63.i94.i, %.preheader36.i121.i ], [ %i.mcu, %bb.bbt ], [ %i.lzq, %.loopexit.i105.i1410.loopexit3070.unr-lcssa ], [ %i.mbc, %bb.bbk ] ; 2 uses
  %i.mfr = icmp slt i64 %.5.i.i107.i1412, %i.lxd
  br i1 %i.mfr, label %bb.baz, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EjLb1EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !791

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EjLb1EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i105.i1410, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1399
  %.082.i.lcssa.i92.i1401 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i90.i1399 ], [ %.587.i.i106.i1411, %.loopexit.i105.i1410 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !784
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit

.lr.ph.i86.i1396:                                 ; preds = %.lr.ph.i86.i1396, %.lr.ph.i86.i1396.preheader.new
  %.0.i1842.i87.i = phi i64 [ 0, %.lr.ph.i86.i1396.preheader.new ], [ %i.mgh, %.lr.ph.i86.i1396 ] ; 4 uses
  %niter3586 = phi i64 [ 0, %.lr.ph.i86.i1396.preheader.new ], [ %niter3586.next.1, %.lr.ph.i86.i1396 ]
  %i.mfs = mul nsw i64 %.0.i1842.i87.i, %i.ldc
  %i.mft = getelementptr inbounds i8, ptr %i.lxb, i64 %i.mfs
  %i.mfu = getelementptr inbounds nuw [4 x i8], ptr %i.lxj, i64 %.0.i1842.i87.i
  %i.mfv = load i32, ptr %i.mfu, align 4, !tbaa !3, !noalias !784
  %i.mfw = zext i32 %i.mfv to i64
  %i.mfx = mul nsw i64 %i.ldc, %i.mfw
  %i.mfy = getelementptr inbounds i8, ptr %i.lxa, i64 %i.mfx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mft, ptr align 1 %i.mfy, i64 %i.ldc, i1 false), !noalias !784
  %i.mfz = or disjoint i64 %.0.i1842.i87.i, 1     ; 2 uses
  %i.mga = mul nsw i64 %i.mfz, %i.ldc
  %i.mgb = getelementptr inbounds i8, ptr %i.lxb, i64 %i.mga
  %i.mgc = getelementptr inbounds nuw [4 x i8], ptr %i.lxj, i64 %i.mfz
  %i.mgd = load i32, ptr %i.mgc, align 4, !tbaa !3, !noalias !784
  %i.mge = zext i32 %i.mgd to i64
  %i.mgf = mul nsw i64 %i.ldc, %i.mge
  %i.mgg = getelementptr inbounds i8, ptr %i.lxa, i64 %i.mgf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mgb, ptr align 1 %i.mgg, i64 %i.ldc, i1 false), !noalias !784
  %i.mgh = add nuw nsw i64 %.0.i1842.i87.i, 2     ; 2 uses
  %niter3586.next.1 = add nuw nsw i64 %niter3586, 2 ; 2 uses
  %niter3586.ncmp.1 = icmp eq i64 %niter3586.next.1, %unroll_iter3585
  br i1 %niter3586.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3076.unr-lcssa, label %.lr.ph.i86.i1396, !llvm.loop !792

bb.bcj:                                           ; preds = %.critedge71
  br i1 %i.ldl, label %bb.bcl, label %bb.bck

bb.bck:                                           ; preds = %bb.bcj
  %i.mgi = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.mgj = load i64, ptr %i.mgi, align 8, !tbaa !71, !noalias !793
  %.not.i19.i145.i1491 = icmp ne i64 %i.mgj, 0
  %i.mgk = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.mgl = load ptr, ptr %i.mgk, align 8, !noalias !793
  %i.mgm = icmp ne ptr %i.mgl, null
  %i.mgn = select i1 %.not.i19.i145.i1491, i1 %i.mgm, i1 false
  br label %bb.bcl

bb.bcl:                                           ; preds = %bb.bck, %bb.bcj
  %i.mgo = phi i1 [ true, %bb.bcj ], [ %i.mgn, %bb.bck ]
  %i.mgp = call { i32, ptr } @_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %i.b), !noalias !793
  %i.mgq = extractvalue { i32, ptr } %i.mgp, 1    ; 9 uses
  %i.mgr = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef %i.s), !noalias !793 ; 13 uses
  %i.mgs = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.mgt = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !793 ; 11 uses
  %i.mgu = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.mgv = load i64, ptr %i.mgu, align 8, !tbaa !99, !noalias !793
  %i.mgw = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.mgx = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.mgy = load ptr, ptr %i.mgx, align 8, !tbaa !66, !noalias !793
  %i.mgz = getelementptr inbounds [8 x i8], ptr %i.mgy, i64 %i.mgv ; 9 uses
  br i1 %i.mgo, label %bb.bcm, label %.preheader41.i146.i

.preheader41.i146.i:                              ; preds = %bb.bcl
  %i.mha = icmp sgt i64 %i.mgt, 0
  br i1 %i.mha, label %.lr.ph.i148.i1492.preheader, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit

.lr.ph.i148.i1492.preheader:                      ; preds = %.preheader41.i146.i
  %xtraiter3620 = and i64 %i.mgt, 1
  %i.mhb = icmp eq i64 %i.mgt, 1
  br i1 %i.mhb, label %.lr.ph.i148.i1492.epil.preheader, label %.lr.ph.i148.i1492.preheader.new

.lr.ph.i148.i1492.preheader.new:                  ; preds = %.lr.ph.i148.i1492.preheader
  %unroll_iter3624 = and i64 %i.mgt, 9223372036854775806
  br label %.lr.ph.i148.i1492

bb.bcm:                                           ; preds = %bb.bcl
  %i.mhc = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.mhd = load ptr, ptr %i.mhc, align 8, !tbaa !171, !noalias !793
  %i.mhe = load ptr, ptr %i.mhd, align 8, !tbaa !306, !noalias !793 ; 4 uses
  %.not.i.i.i151.i1494 = icmp eq ptr %i.mhe, null
  br i1 %.not.i.i.i151.i1494, label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1495, label %bb.bcn

bb.bcn:                                           ; preds = %bb.bcm
  %i.mhf = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.mhg = load i64, ptr %i.mhf, align 8, !tbaa !438, !noalias !793
  %i.mhh = getelementptr inbounds nuw i8, ptr %i.mhe, i64 9
  %i.mhi = load i8, ptr %i.mhh, align 1, !tbaa !439, !range !127, !noalias !793, !noundef !128
  %i.mhj = trunc nuw i8 %i.mhi to i1
  %i.mhk = getelementptr inbounds nuw i8, ptr %i.mhe, i64 8
  %i.mhl = load i8, ptr %i.mhk, align 8, !range !127, !noalias !793
  %i.mhm = trunc nuw i8 %i.mhl to i1
  %i.mhn = select i1 %i.mhj, i1 %i.mhm, i1 false, !prof !117
  %i.mho = getelementptr inbounds nuw i8, ptr %i.mhe, i64 16
  %i.mhp = load ptr, ptr %i.mho, align 8, !noalias !793
  %i.mhq = select i1 %i.mhn, ptr %i.mhp, ptr null, !prof !117
  %i.mhr = getelementptr inbounds i8, ptr %i.mhq, i64 %i.mhg
  br label %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1495

_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1495: ; preds = %bb.bcn, %bb.bcm
  %.0.i.i.i153.i1496 = phi ptr [ %i.mhr, %bb.bcn ], [ null, %bb.bcm ] ; 5 uses
  %i.mhs = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.mht = load i64, ptr %i.mhs, align 8, !tbaa !178, !noalias !793 ; 2 uses
  %i.mhu = ashr i64 %i.mht, 3
  %i.mhv = and i64 %i.mht, 7
  %i.mhw = icmp ne i64 %i.mhv, 0
  %i.mhx = zext i1 %i.mhw to i64
  %i.mhy = add nsw i64 %i.mhu, %i.mhx
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i153.i1496, i8 0, i64 %i.mhy, i1 false), !noalias !793
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !793
  %i.mhz = load ptr, ptr %i.mgw, align 8, !tbaa !66, !noalias !793
  %i.mia = load i64, ptr %i.mgu, align 8, !tbaa !99, !noalias !793
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.mhz, i64 noundef %i.mia, i64 noundef %i.mgt), !noalias !793
  %i.mib = icmp sgt i64 %i.mgt, 0
  br i1 %i.mib, label %.lr.ph64.i155.i, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EmLb1EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i

.lr.ph64.i155.i:                                  ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1495
  %i.mic = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.mid = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.bco

bb.bco:                                           ; preds = %.loopexit.i167.i1506, %.lr.ph64.i155.i
  %.081.i63.i156.i = phi i64 [ 0, %.lr.ph64.i155.i ], [ %.5.i.i169.i1508, %.loopexit.i167.i1506 ] ; 12 uses
  %.082.i62.i157.i = phi i64 [ 0, %.lr.ph64.i155.i ], [ %.587.i.i168.i1507, %.loopexit.i167.i1506 ] ; 6 uses
  %i.mie = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %4), !noalias !793 ; 7 uses
  %.sroa.0.0.extract.trunc.i.i158.i1498 = trunc i32 %i.mie to i16 ; 10 uses
  %i.mif = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !793
  %.not.i20.i159.i1499 = icmp ne i64 %i.mif, 0
  %i.mig = load ptr, ptr %i.v, align 8, !noalias !793
  %i.mih = icmp ne ptr %i.mig, null
  %i.mii = select i1 %.not.i20.i159.i1499, i1 %i.mih, i1 false
  br i1 %i.mii, label %bb.bda, label %bb.bcp

bb.bcp:                                           ; preds = %bb.bco
  %.sroa.14.0.extract.shift.i.i160.i1500 = lshr i32 %i.mie, 16
  %.sroa.14.0.extract.trunc.i.i161.i1501 = zext nneg i32 %.sroa.14.0.extract.shift.i.i160.i1500 to i64
  %sext91.i.i162.i1502 = shl nuw i64 %.sroa.14.0.extract.trunc.i.i161.i1501, 48
  %i.mij = ashr exact i64 %sext91.i.i162.i1502, 48
  %i.mik = add nsw i64 %i.mij, %.082.i62.i157.i   ; 6 uses
  %i.mil = ashr i32 %i.mie, 16                    ; 2 uses
  %sext.i.i163.i1503 = shl i32 %i.mie, 16
  %i.mim = ashr exact i32 %sext.i.i163.i1503, 16
  %i.min = icmp eq i32 %i.mil, %i.mim
  br i1 %i.min, label %bb.bcq, label %bb.bcr

bb.bcq:                                           ; preds = %bb.bcp
  %i.mio = sext i16 %.sroa.0.0.extract.trunc.i.i158.i1498 to i64 ; 2 uses
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %.0.i.i.i153.i1496, i64 noundef %.081.i63.i156.i, i64 noundef %i.mio, i1 noundef zeroext true), !noalias !793
  %i.mip = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i1498, 0
  br i1 %i.mip, label %.lr.ph48.i178.i.preheader, label %.loopexit.i167.i1506

.lr.ph48.i178.i.preheader:                        ; preds = %bb.bcq
  %i.miq = icmp eq i16 %.sroa.0.0.extract.trunc.i.i158.i1498, 1
  br i1 %i.miq, label %.lr.ph48.i178.i.epil.preheader, label %.lr.ph48.i178.i.preheader.new

.lr.ph48.i178.i.preheader.new:                    ; preds = %.lr.ph48.i178.i.preheader
  %unroll_iter3631 = and i64 %i.mio, 32766
  br label %.lr.ph48.i178.i

.lr.ph48.i178.i:                                  ; preds = %.lr.ph48.i178.i, %.lr.ph48.i178.i.preheader.new
  %.1.i46.i180.i = phi i64 [ %.081.i63.i156.i, %.lr.ph48.i178.i.preheader.new ], [ %i.mje, %.lr.ph48.i178.i ] ; 4 uses
  %niter3632 = phi i64 [ 0, %.lr.ph48.i178.i.preheader.new ], [ %niter3632.next.1, %.lr.ph48.i178.i ]
  %i.mir = mul nsw i64 %.1.i46.i180.i, %i.ldc
  %i.mis = getelementptr inbounds i8, ptr %i.mgr, i64 %i.mir
  %i.mit = getelementptr inbounds [8 x i8], ptr %i.mgz, i64 %.1.i46.i180.i
  %i.miu = load i64, ptr %i.mit, align 8, !tbaa !130, !noalias !793
  %i.miv = mul i64 %i.miu, %i.ldc
  %i.miw = getelementptr inbounds nuw i8, ptr %i.mgq, i64 %i.miv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mis, ptr align 1 %i.miw, i64 %i.ldc, i1 false), !noalias !793
  %i.mix = add nsw i64 %.1.i46.i180.i, 1          ; 2 uses
  %i.miy = mul nsw i64 %i.mix, %i.ldc
  %i.miz = getelementptr inbounds i8, ptr %i.mgr, i64 %i.miy
  %i.mja = getelementptr inbounds [8 x i8], ptr %i.mgz, i64 %i.mix
  %i.mjb = load i64, ptr %i.mja, align 8, !tbaa !130, !noalias !793
  %i.mjc = mul i64 %i.mjb, %i.ldc
  %i.mjd = getelementptr inbounds nuw i8, ptr %i.mgq, i64 %i.mjc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.miz, ptr align 1 %i.mjd, i64 %i.ldc, i1 false), !noalias !793
  %i.mje = add nsw i64 %.1.i46.i180.i, 2          ; 3 uses
  %niter3632.next.1 = add i64 %niter3632, 2       ; 2 uses
  %niter3632.ncmp.1 = icmp eq i64 %niter3632.next.1, %unroll_iter3631
  br i1 %niter3632.ncmp.1, label %.loopexit.i167.i1506.loopexit3048.unr-lcssa, label %.lr.ph48.i178.i, !llvm.loop !796

bb.bcr:                                           ; preds = %bb.bcp
  %i.mjf = icmp sgt i32 %i.mil, 0
  %i.mjg = sext i16 %.sroa.0.0.extract.trunc.i.i158.i1498 to i64 ; 2 uses
  br i1 %i.mjf, label %.preheader39.i170.i, label %.loopexit.sink.split.i164.i1504

.preheader39.i170.i:                              ; preds = %bb.bcr
  %i.mjh = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i1498, 0
  br i1 %i.mjh, label %.lr.ph45.i171.i, label %.loopexit.i167.i1506

.lr.ph45.i171.i:                                  ; preds = %.preheader39.i170.i, %bb.bcz
  %.079.i44.i172.i = phi i64 [ %i.mkq, %bb.bcz ], [ 0, %.preheader39.i170.i ]
  %.2.i43.i173.i = phi i64 [ %i.mkp, %bb.bcz ], [ %.081.i63.i156.i, %.preheader39.i170.i ] ; 10 uses
  %i.mji = load ptr, ptr %i.mgw, align 8, !tbaa !66, !noalias !793 ; 2 uses
  %.not.i21.i174.i1509 = icmp eq ptr %i.mji, null
  br i1 %.not.i21.i174.i1509, label %bb.bct, label %bb.bcs

bb.bcs:                                           ; preds = %.lr.ph45.i171.i
  %i.mjj = load i64, ptr %i.mgu, align 8, !tbaa !99, !noalias !793
  %i.mjk = add nsw i64 %i.mjj, %.2.i43.i173.i     ; 2 uses
  %i.mjl = lshr i64 %i.mjk, 3
  %i.mjm = getelementptr inbounds nuw i8, ptr %i.mji, i64 %i.mjl
  %i.mjn = load i8, ptr %i.mjm, align 1, !tbaa !98, !noalias !793
  %i.mjo = trunc i64 %i.mjk to i8
  %i.mjp = and i8 %i.mjo, 7
  %i.mjq = lshr i8 %i.mjn, %i.mjp
  %i.mjr = trunc i8 %i.mjq to i1
  br i1 %i.mjr, label %bb.bcx, label %bb.bcy

bb.bct:                                           ; preds = %.lr.ph45.i171.i
  %i.mjs = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !793
  %i.mjt = getelementptr inbounds nuw i8, ptr %i.mjs, i64 40
  %i.mju = load i32, ptr %i.mjt, align 8, !tbaa !42, !noalias !793
  switch i32 %i.mju, label %bb.bcw [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit.i176.i1510
    i32 28, label %bb.bcu
    i32 38, label %bb.bcv
  ]

bb.bcu:                                           ; preds = %bb.bct
  %i.mjv = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i43.i173.i), !noalias !793
  br i1 %i.mjv, label %bb.bcy, label %bb.bcx

bb.bcv:                                           ; preds = %bb.bct
  %i.mjw = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.2.i43.i173.i), !noalias !793
  br i1 %i.mjw, label %bb.bcy, label %bb.bcx

bb.bcw:                                           ; preds = %bb.bct
  %i.mjx = load i64, ptr %i.mic, align 8, !tbaa !71, !noalias !793
  %i.mjy = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !793
  %.not.i177.i1511 = icmp eq i64 %i.mjx, %i.mjy
end_hunk_28
begin_hunk_29_@_ZN5arrow7compute8internal18FixedWidthTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %.284.i.i202.i1520 = phi i64 [ %i.mmc, %bb.bdg ], [ %.183.i56.i200.i, %bb.bdh ] ; 2 uses
  %i.mmf = add nsw i64 %.3.i57.i199.i, 1          ; 2 uses
  %i.mmg = add nuw nsw i64 %.078.i58.i198.i, 1    ; 2 uses
  %exitcond75.not.i203.i = icmp eq i64 %i.mmg, %i.mku
  br i1 %exitcond75.not.i203.i, label %.loopexit.i167.i1506, label %.lr.ph59.i197.i, !llvm.loop !798

bb.bdj:                                           ; preds = %bb.bda
  %i.mmh = icmp sgt i32 %i.mkr, 0
  %i.mmi = sext i16 %.sroa.0.0.extract.trunc.i.i158.i1498 to i64 ; 2 uses
  br i1 %i.mmh, label %.preheader36.i183.i, label %.loopexit.sink.split.i164.i1504

.preheader36.i183.i:                              ; preds = %bb.bdj
  %i.mmj = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i158.i1498, 0
  br i1 %i.mmj, label %.lr.ph53.i184.i, label %.loopexit.i167.i1506

.lr.ph53.i184.i:                                  ; preds = %.preheader36.i183.i, %bb.bdx
  %.0.i52.i185.i = phi i64 [ %i.mom, %bb.bdx ], [ 0, %.preheader36.i183.i ]
  %.4.i51.i186.i = phi i64 [ %i.mol, %bb.bdx ], [ %.081.i63.i156.i, %.preheader36.i183.i ] ; 10 uses
  %.385.i50.i187.i = phi i64 [ %.486.i.i189.i1514, %bb.bdx ], [ %.082.i62.i157.i, %.preheader36.i183.i ] ; 2 uses
  %i.mmk = load ptr, ptr %i.mgw, align 8, !tbaa !66, !noalias !793 ; 2 uses
  %.not.i26.i188.i1513 = icmp eq ptr %i.mmk, null
  br i1 %.not.i26.i188.i1513, label %bb.bdl, label %bb.bdk

bb.bdk:                                           ; preds = %.lr.ph53.i184.i
  %i.mml = load i64, ptr %i.mgu, align 8, !tbaa !99, !noalias !793
  %i.mmm = add nsw i64 %i.mml, %.4.i51.i186.i     ; 2 uses
  %i.mmn = lshr i64 %i.mmm, 3
  %i.mmo = getelementptr inbounds nuw i8, ptr %i.mmk, i64 %i.mmn
  %i.mmp = load i8, ptr %i.mmo, align 1, !tbaa !98, !noalias !793
  %i.mmq = trunc i64 %i.mmm to i8
  %i.mmr = and i8 %i.mmq, 7
  %i.mms = lshr i8 %i.mmp, %i.mmr
  %i.mmt = trunc i8 %i.mms to i1
  br i1 %i.mmt, label %bb.bdp, label %bb.bdw

bb.bdl:                                           ; preds = %.lr.ph53.i184.i
  %i.mmu = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !793
  %i.mmv = getelementptr inbounds nuw i8, ptr %i.mmu, i64 40
  %i.mmw = load i32, ptr %i.mmv, align 8, !tbaa !42, !noalias !793
  switch i32 %i.mmw, label %bb.bdo [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1517
    i32 28, label %bb.bdm
    i32 38, label %bb.bdn
  ]

bb.bdm:                                           ; preds = %bb.bdl
  %i.mmx = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i51.i186.i), !noalias !793
  br i1 %i.mmx, label %bb.bdw, label %bb.bdp

bb.bdn:                                           ; preds = %bb.bdl
  %i.mmy = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i51.i186.i), !noalias !793
  br i1 %i.mmy, label %bb.bdw, label %bb.bdp

bb.bdo:                                           ; preds = %bb.bdl
  %i.mmz = load i64, ptr %i.mic, align 8, !tbaa !71, !noalias !793
  %i.mna = load i64, ptr %i.ag, align 8, !tbaa !62, !noalias !793
  %.not33.i195.i = icmp eq i64 %i.mmz, %i.mna
  br i1 %.not33.i195.i, label %bb.bdw, label %bb.bdp

_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1517: ; preds = %bb.bdl
  %i.mnb = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %.4.i51.i186.i), !noalias !793
  br i1 %i.mnb, label %bb.bdw, label %bb.bdp

bb.bdp:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1517, %bb.bdo, %bb.bdn, %bb.bdm, %bb.bdk
  %i.mnc = getelementptr inbounds [8 x i8], ptr %i.mgz, i64 %.4.i51.i186.i ; 2 uses
  %i.mnd = load i64, ptr %i.mnc, align 8, !tbaa !130, !noalias !793 ; 4 uses
  %i.mne = load ptr, ptr %i.v, align 8, !tbaa !66, !noalias !793 ; 2 uses
  %.not.i29.i191.i1515 = icmp eq ptr %i.mne, null
  br i1 %.not.i29.i191.i1515, label %bb.bdr, label %bb.bdq

bb.bdq:                                           ; preds = %bb.bdp
  %i.mnf = load i64, ptr %i.mid, align 8, !tbaa !99, !noalias !793
  %i.mng = add nsw i64 %i.mnf, %i.mnd             ; 2 uses
  %i.mnh = lshr i64 %i.mng, 3
  %i.mni = getelementptr inbounds nuw i8, ptr %i.mne, i64 %i.mnh
  %i.mnj = load i8, ptr %i.mni, align 1, !tbaa !98, !noalias !793
  %i.mnk = trunc i64 %i.mng to i8
  %i.mnl = and i8 %i.mnk, 7
  %i.mnm = lshr i8 %i.mnj, %i.mnl
  %i.mnn = trunc i8 %i.mnm to i1
  br i1 %i.mnn, label %bb.bdv, label %bb.bdw

bb.bdr:                                           ; preds = %bb.bdp
  %i.mno = load ptr, ptr %i.b, align 8, !tbaa !33, !noalias !793
  %i.mnp = getelementptr inbounds nuw i8, ptr %i.mno, i64 40
  %i.mnq = load i32, ptr %i.mnp, align 8, !tbaa !42, !noalias !793
  switch i32 %i.mnq, label %bb.bdu [
    i32 27, label %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1516
    i32 28, label %bb.bds
    i32 38, label %bb.bdt
  ]

bb.bds:                                           ; preds = %bb.bdr
  %i.mnr = call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.mnd), !noalias !793
  br i1 %i.mnr, label %bb.bdw, label %bb.bdv

bb.bdt:                                           ; preds = %bb.bdr
  %i.mns = call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.mnd), !noalias !793
  br i1 %i.mns, label %bb.bdw, label %bb.bdv

bb.bdu:                                           ; preds = %bb.bdr
  %i.mnt = load i64, ptr %i.t, align 8, !tbaa !71, !noalias !793
  %i.mnu = load i64, ptr %i.mgs, align 8, !tbaa !62, !noalias !793
  %.not34.i193.i = icmp eq i64 %i.mnt, %i.mnu
  br i1 %.not34.i193.i, label %bb.bdw, label %bb.bdv

_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1516: ; preds = %bb.bdr
  %i.mnv = call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %i.mnd), !noalias !793
  br i1 %i.mnv, label %bb.bdw, label %bb.bdv

bb.bdv:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1516, %bb.bdu, %bb.bdt, %bb.bds, %bb.bdq
  %i.mnw = mul nsw i64 %.4.i51.i186.i, %i.ldc
  %i.mnx = getelementptr inbounds i8, ptr %i.mgr, i64 %i.mnw
  %i.mny = load i64, ptr %i.mnc, align 8, !tbaa !130, !noalias !793
  %i.mnz = mul i64 %i.mny, %i.ldc
  %i.moa = getelementptr inbounds nuw i8, ptr %i.mgq, i64 %i.mnz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mnx, ptr align 1 %i.moa, i64 %i.ldc, i1 false), !noalias !793
  %i.mob = srem i64 %.4.i51.i186.i, 8
  %i.moc = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.mob
  %i.mod = load i8, ptr %i.moc, align 1, !tbaa !98, !noalias !793
  %i.moe = sdiv i64 %.4.i51.i186.i, 8
  %i.mof = getelementptr inbounds i8, ptr %.0.i.i.i153.i1496, i64 %i.moe ; 2 uses
  %i.mog = load i8, ptr %i.mof, align 1, !tbaa !98, !noalias !793
  %i.moh = or i8 %i.mog, %i.mod
  store i8 %i.moh, ptr %i.mof, align 1, !tbaa !98, !noalias !793
  %i.moi = add nsw i64 %.385.i50.i187.i, 1
  br label %bb.bdx

bb.bdw:                                           ; preds = %_ZNK5arrow9ArraySpan7IsValidEl.exit31.i192.i1516, %bb.bdu, %bb.bdt, %bb.bds, %bb.bdq, %_ZNK5arrow9ArraySpan7IsValidEl.exit28.i194.i1517, %bb.bdo, %bb.bdn, %bb.bdm, %bb.bdk
  %i.moj = mul nsw i64 %.4.i51.i186.i, %i.ldc
  %i.mok = getelementptr inbounds i8, ptr %i.mgr, i64 %i.moj
  call void @llvm.memset.p0.i64(ptr align 1 %i.mok, i8 0, i64 %i.ldc, i1 false), !noalias !793
  br label %bb.bdx

bb.bdx:                                           ; preds = %bb.bdw, %bb.bdv
  %.486.i.i189.i1514 = phi i64 [ %i.moi, %bb.bdv ], [ %.385.i50.i187.i, %bb.bdw ] ; 2 uses
  %i.mol = add nsw i64 %.4.i51.i186.i, 1          ; 2 uses
  %i.mom = add nuw nsw i64 %.0.i52.i185.i, 1      ; 2 uses
  %exitcond74.not.i190.i = icmp eq i64 %i.mom, %i.mmi
  br i1 %exitcond74.not.i190.i, label %.loopexit.i167.i1506, label %.lr.ph53.i184.i, !llvm.loop !799

.loopexit.sink.split.i164.i1504:                  ; preds = %bb.bdj, %bb.bcr
  %.sink95.i165.i = phi i64 [ %i.mjg, %bb.bcr ], [ %i.mmi, %bb.bdj ] ; 2 uses
  %.587.i.ph.i166.i1505 = phi i64 [ %i.mik, %bb.bcr ], [ %.082.i62.i157.i, %bb.bdj ]
  %i.mon = mul nsw i64 %.081.i63.i156.i, %i.ldc
  %i.moo = getelementptr inbounds i8, ptr %i.mgr, i64 %i.mon
  %i.mop = mul nsw i64 %.sink95.i165.i, %i.ldc
  call void @llvm.memset.p0.i64(ptr align 1 %i.moo, i8 0, i64 %i.mop, i1 false), !noalias !793
  %i.moq = add nsw i64 %.sink95.i165.i, %.081.i63.i156.i
  br label %.loopexit.i167.i1506

.loopexit.i167.i1506.loopexit3048.unr-lcssa:      ; preds = %.lr.ph48.i178.i
  %i.mor = and i16 %.sroa.0.0.extract.trunc.i.i158.i1498, 1
  %lcmp.mod3628.not = icmp eq i16 %i.mor, 0
  br i1 %lcmp.mod3628.not, label %.loopexit.i167.i1506, label %.lr.ph48.i178.i.epil.preheader

.lr.ph48.i178.i.epil.preheader:                   ; preds = %.loopexit.i167.i1506.loopexit3048.unr-lcssa, %.lr.ph48.i178.i.preheader
  %.1.i46.i180.i.epil.init = phi i64 [ %.081.i63.i156.i, %.lr.ph48.i178.i.preheader ], [ %i.mje, %.loopexit.i167.i1506.loopexit3048.unr-lcssa ] ; 3 uses
  %lcmp.mod3630 = trunc i32 %i.mie to i1
  call void @llvm.assume(i1 %lcmp.mod3630)
  %i.mos = mul nsw i64 %.1.i46.i180.i.epil.init, %i.ldc
  %i.mot = getelementptr inbounds i8, ptr %i.mgr, i64 %i.mos
  %i.mou = getelementptr inbounds [8 x i8], ptr %i.mgz, i64 %.1.i46.i180.i.epil.init
  %i.mov = load i64, ptr %i.mou, align 8, !tbaa !130, !noalias !793
  %i.mow = mul i64 %i.mov, %i.ldc
  %i.mox = getelementptr inbounds nuw i8, ptr %i.mgq, i64 %i.mow
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mot, ptr align 1 %i.mox, i64 %i.ldc, i1 false), !noalias !793
  %i.moy = add nsw i64 %.1.i46.i180.i.epil.init, 1
  br label %.loopexit.i167.i1506

.loopexit.i167.i1506:                             ; preds = %bb.bcz, %.lr.ph48.i178.i.epil.preheader, %.loopexit.i167.i1506.loopexit3048.unr-lcssa, %bb.bdx, %bb.bdi, %.loopexit.sink.split.i164.i1504, %.preheader36.i183.i, %.preheader.i196.i1518, %.preheader39.i170.i, %bb.bcq
  %.587.i.i168.i1507 = phi i64 [ %.587.i.ph.i166.i1505, %.loopexit.sink.split.i164.i1504 ], [ %i.mik, %bb.bcq ], [ %.486.i.i189.i1514, %bb.bdx ], [ %i.mik, %.lr.ph48.i178.i.epil.preheader ], [ %i.mik, %.preheader39.i170.i ], [ %.082.i62.i157.i, %.preheader.i196.i1518 ], [ %.082.i62.i157.i, %.preheader36.i183.i ], [ %.284.i.i202.i1520, %bb.bdi ], [ %i.mik, %.loopexit.i167.i1506.loopexit3048.unr-lcssa ], [ %i.mik, %bb.bcz ] ; 2 uses
  %.5.i.i169.i1508 = phi i64 [ %i.moq, %.loopexit.sink.split.i164.i1504 ], [ %.081.i63.i156.i, %bb.bcq ], [ %i.mol, %bb.bdx ], [ %i.moy, %.lr.ph48.i178.i.epil.preheader ], [ %.081.i63.i156.i, %.preheader39.i170.i ], [ %.081.i63.i156.i, %.preheader.i196.i1518 ], [ %.081.i63.i156.i, %.preheader36.i183.i ], [ %i.mmf, %bb.bdi ], [ %i.mje, %.loopexit.i167.i1506.loopexit3048.unr-lcssa ], [ %i.mkp, %bb.bcz ] ; 2 uses
  %i.moz = icmp slt i64 %.5.i.i169.i1508, %i.mgt
  br i1 %i.moz, label %bb.bco, label %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EmLb1EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, !llvm.loop !800

_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EmLb1EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i: ; preds = %.loopexit.i167.i1506, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1495
  %.082.i.lcssa.i154.i1497 = phi i64 [ 0, %_ZN5arrow9ArrayData16GetMutableValuesIhEEPT_i.exit.i152.i1495 ], [ %.587.i.i168.i1507, %.loopexit.i167.i1506 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !793
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit

.lr.ph.i148.i1492:                                ; preds = %.lr.ph.i148.i1492, %.lr.ph.i148.i1492.preheader.new
  %.0.i1842.i149.i = phi i64 [ 0, %.lr.ph.i148.i1492.preheader.new ], [ %i.mpn, %.lr.ph.i148.i1492 ] ; 4 uses
  %niter3625 = phi i64 [ 0, %.lr.ph.i148.i1492.preheader.new ], [ %niter3625.next.1, %.lr.ph.i148.i1492 ]
  %i.mpa = mul nsw i64 %.0.i1842.i149.i, %i.ldc
  %i.mpb = getelementptr inbounds i8, ptr %i.mgr, i64 %i.mpa
  %i.mpc = getelementptr inbounds nuw [8 x i8], ptr %i.mgz, i64 %.0.i1842.i149.i
  %i.mpd = load i64, ptr %i.mpc, align 8, !tbaa !130, !noalias !793
  %i.mpe = mul i64 %i.mpd, %i.ldc
  %i.mpf = getelementptr inbounds nuw i8, ptr %i.mgq, i64 %i.mpe
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mpb, ptr align 1 %i.mpf, i64 %i.ldc, i1 false), !noalias !793
  %i.mpg = or disjoint i64 %.0.i1842.i149.i, 1    ; 2 uses
  %i.mph = mul nsw i64 %i.mpg, %i.ldc
  %i.mpi = getelementptr inbounds i8, ptr %i.mgr, i64 %i.mph
  %i.mpj = getelementptr inbounds nuw [8 x i8], ptr %i.mgz, i64 %i.mpg
  %i.mpk = load i64, ptr %i.mpj, align 8, !tbaa !130, !noalias !793
  %i.mpl = mul i64 %i.mpk, %i.ldc
  %i.mpm = getelementptr inbounds nuw i8, ptr %i.mgq, i64 %i.mpl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mpi, ptr align 1 %i.mpm, i64 %i.ldc, i1 false), !noalias !793
  %i.mpn = add nuw nsw i64 %.0.i1842.i149.i, 2    ; 2 uses
  %niter3625.next.1 = add nuw nsw i64 %niter3625, 2 ; 2 uses
  %niter3625.ncmp.1 = icmp eq i64 %niter3625.next.1, %unroll_iter3624
  br i1 %niter3625.ncmp.1, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, label %.lr.ph.i148.i1492, !llvm.loop !801

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i148.i1492
  %lcmp.mod3622.not = icmp eq i64 %xtraiter3620, 0
  br i1 %lcmp.mod3622.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit, label %.lr.ph.i148.i1492.epil.preheader

.lr.ph.i148.i1492.epil.preheader:                 ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.lr.ph.i148.i1492.preheader
  %.0.i1842.i149.i.epil.init = phi i64 [ 0, %.lr.ph.i148.i1492.preheader ], [ %i.mpn, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3623 = trunc i64 %i.mgt to i1
  call void @llvm.assume(i1 %lcmp.mod3623)
  %i.mpo = mul nsw i64 %.0.i1842.i149.i.epil.init, %i.ldc
  %i.mpp = getelementptr inbounds i8, ptr %i.mgr, i64 %i.mpo
  %i.mpq = getelementptr inbounds nuw [8 x i8], ptr %i.mgz, i64 %.0.i1842.i149.i.epil.init
  %i.mpr = load i64, ptr %i.mpq, align 8, !tbaa !130, !noalias !793
  %i.mps = mul i64 %i.mpr, %i.ldc
  %i.mpt = getelementptr inbounds nuw i8, ptr %i.mgq, i64 %i.mps
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mpp, ptr align 1 %i.mpt, i64 %i.ldc, i1 false), !noalias !793
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3060.unr-lcssa: ; preds = %.lr.ph.i.i1460
  %lcmp.mod3609.not = icmp eq i64 %xtraiter3607, 0
  br i1 %lcmp.mod3609.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit, label %.lr.ph.i.i1460.epil.preheader

.lr.ph.i.i1460.epil.preheader:                    ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3060.unr-lcssa, %.lr.ph.i.i1460.preheader
  %.0.i1842.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i1460.preheader ], [ %i.lnb, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3060.unr-lcssa ] ; 2 uses
  %lcmp.mod3610 = trunc i64 %i.ldx to i1
  call void @llvm.assume(i1 %lcmp.mod3610)
  %i.mpu = mul nsw i64 %.0.i1842.i.i.epil.init, %i.ldc
  %i.mpv = getelementptr inbounds i8, ptr %i.ldv, i64 %i.mpu
  %i.mpw = getelementptr inbounds nuw i8, ptr %i.led, i64 %.0.i1842.i.i.epil.init
  %i.mpx = load i8, ptr %i.mpw, align 1, !tbaa !98, !noalias !766
  %i.mpy = zext i8 %i.mpx to i64
  %i.mpz = mul nsw i64 %i.ldc, %i.mpy
  %i.mqa = getelementptr inbounds i8, ptr %i.ldu, i64 %i.mpz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mpv, ptr align 1 %i.mqa, i64 %i.ldc, i1 false), !noalias !766
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3068.unr-lcssa: ; preds = %.lr.ph.i24.i1428
  %lcmp.mod3596.not = icmp eq i64 %xtraiter3594, 0
  br i1 %lcmp.mod3596.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit, label %.lr.ph.i24.i1428.epil.preheader

.lr.ph.i24.i1428.epil.preheader:                  ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3068.unr-lcssa, %.lr.ph.i24.i1428.preheader
  %.0.i1842.i25.i.epil.init = phi i64 [ 0, %.lr.ph.i24.i1428.preheader ], [ %i.lwr, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3068.unr-lcssa ] ; 2 uses
  %lcmp.mod3597 = trunc i64 %i.lnn to i1
  call void @llvm.assume(i1 %lcmp.mod3597)
  %i.mqb = mul nsw i64 %.0.i1842.i25.i.epil.init, %i.ldc
  %i.mqc = getelementptr inbounds i8, ptr %i.lnl, i64 %i.mqb
  %i.mqd = getelementptr inbounds nuw [2 x i8], ptr %i.lnt, i64 %.0.i1842.i25.i.epil.init
  %i.mqe = load i16, ptr %i.mqd, align 2, !tbaa !269, !noalias !775
  %i.mqf = zext i16 %i.mqe to i64
  %i.mqg = mul nsw i64 %i.ldc, %i.mqf
  %i.mqh = getelementptr inbounds i8, ptr %i.lnk, i64 %i.mqg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mqc, ptr align 1 %i.mqh, i64 %i.ldc, i1 false), !noalias !775
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3076.unr-lcssa: ; preds = %.lr.ph.i86.i1396
  %lcmp.mod3583.not = icmp eq i64 %xtraiter3581, 0
  br i1 %lcmp.mod3583.not, label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit, label %.lr.ph.i86.i1396.epil.preheader

.lr.ph.i86.i1396.epil.preheader:                  ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3076.unr-lcssa, %.lr.ph.i86.i1396.preheader
  %.0.i1842.i87.i.epil.init = phi i64 [ 0, %.lr.ph.i86.i1396.preheader ], [ %i.mgh, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3076.unr-lcssa ] ; 2 uses
  %lcmp.mod3584 = trunc i64 %i.lxd to i1
  call void @llvm.assume(i1 %lcmp.mod3584)
  %i.mqi = mul nsw i64 %.0.i1842.i87.i.epil.init, %i.ldc
  %i.mqj = getelementptr inbounds i8, ptr %i.lxb, i64 %i.mqi
  %i.mqk = getelementptr inbounds nuw [4 x i8], ptr %i.lxj, i64 %.0.i1842.i87.i.epil.init
  %i.mql = load i32, ptr %i.mqk, align 4, !tbaa !3, !noalias !784
  %i.mqm = zext i32 %i.mql to i64
  %i.mqn = mul nsw i64 %i.ldc, %i.mqm
  %i.mqo = getelementptr inbounds i8, ptr %i.lxa, i64 %i.mqn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mqj, ptr align 1 %i.mqo, i64 %i.ldc, i1 false), !noalias !784
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit: ; preds = %.lr.ph.i86.i1396.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3076.unr-lcssa, %.lr.ph.i24.i1428.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3068.unr-lcssa, %.lr.ph.i.i1460.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3060.unr-lcssa, %.lr.ph.i148.i1492.epil.preheader, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa, %.preheader41.i.i, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EhLb1EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader41.i22.i, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EtLb1EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader41.i84.i, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EjLb1EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i, %.preheader41.i146.i, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EmLb1EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i
  %.0.i147.sink.i1395 = phi i64 [ %i.lnn, %.lr.ph.i24.i1428.epil.preheader ], [ %i.ldx, %.lr.ph.i.i1460.epil.preheader ], [ %i.mgt, %.lr.ph.i148.i1492.epil.preheader ], [ %.082.i.lcssa.i.i1465, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EhLb1EEEE16ExecuteWithNullsILb0EhEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.ldx, %.preheader41.i.i ], [ %.082.i.lcssa.i30.i1433, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EtLb1EEEE16ExecuteWithNullsILb0EtEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.lnn, %.preheader41.i22.i ], [ %.082.i.lcssa.i92.i1401, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EjLb1EEEE16ExecuteWithNullsILb0EjEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.lxd, %.preheader41.i84.i ], [ %.082.i.lcssa.i154.i1497, %_ZN5arrow8internal14GatherBaseCRTPINS0_6GatherILi8EmLb1EEEE16ExecuteWithNullsILb0EmEElRKNS_9ArraySpanElPKT0_S8_Ph.exit.i.i ], [ %i.mgt, %.preheader41.i146.i ], [ %i.mgt, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit.unr-lcssa ], [ %i.ldx, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3060.unr-lcssa ], [ %i.lnn, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3068.unr-lcssa ], [ %i.lxd, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit.loopexit3076.unr-lcssa ], [ %i.lxd, %.lr.ph.i86.i1396.epil.preheader ]
  %i.mqp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.mqq = load i64, ptr %i.mqp, align 8, !tbaa !178, !noalias !762
  %i.mqr = sub nsw i64 %i.mqq, %.0.i147.sink.i1395
  %i.mqs = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store atomic i64 %i.mqr, ptr %i.mqs seq_cst, align 8, !noalias !762
  store ptr null, ptr %0, align 8, !tbaa !113, !alias.scope !762
  br label %.critedge69

bb.bdy:                                           ; preds = %bb.axp
  call void @_ZN5arrow6Status14NotImplementedIJRA38_KcRKNS_8DataTypeEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(38) @.str, ptr noundef nonnull align 8 dereferenceable(72) %i.lcz)
  br label %.critedge69

.critedge69:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi0EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi1EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESD_PNS_9ArrayDataEl.exit, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi16EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi32EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi64EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi128EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi256EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESC_PNS_9ArrayDataEl.exit, %_ZN5arrow7compute8internal12_GLOBAL__N_117TakeIndexDispatchITtTpTyENS2_18FixedWidthTakeImplEJSt17integral_constantIiLi8EES5_IbLb0EES5_IbLb1EEEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESE_PNS_9ArrayDataEl.exit, %bb.bdy, %_ZN5arrow6StatusD2Ev.exit79
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN5arrow8internal16CheckIndexBoundsERKNS_9ArraySpanEm(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(128), i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN5arrow4util8internal30PreallocateFixedWidthArrayDataEPNS_7compute13KernelContextElRKNS_9ArraySpanEbPNS_9ArrayDataE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare noundef i64 @_ZN5arrow4util16FixedWidthInBitsERKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare noundef i64 @_ZN5arrow4util17FixedWidthInBytesERKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status14NotImplementedIJRA38_KcRKNS_8DataTypeEEEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !802
  call void @_ZN5arrow8internal12JoinToStringIJRA38_KcRKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(72) %2), !noalias !802
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !805, !noalias !802 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5arrow6Status8FromArgsIJRA38_KcRKNS_8DataTypeEEEES0_NS_10StatusCodeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !98, !noalias !802
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZN5arrow6Status8FromArgsIJRA38_KcRKNS_8DataTypeEEEES0_NS_10StatusCodeEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %3, align 8, !tbaa !805, !noalias !802 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !98, !noalias !802
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !802
  resume { ptr, i32 } %i.f

_ZN5arrow6Status8FromArgsIJRA38_KcRKNS_8DataTypeEEEES0_NS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !802
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !806
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #26
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !104

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !805
  store i64 %i.c, ptr %i.a, align 8, !tbaa !98
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
end_hunk_29
