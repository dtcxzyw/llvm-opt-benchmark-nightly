Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/avifinfo?download=true
inline.NumInlined: 68
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@AvifInfoGetFeaturesStream:bb.a
  %.not.i167.i.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i167.i.i.i, label %ParseIpco.exit.thread.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.oh = load ptr, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %.preheader.i171.i.i.i, label %.ParseIpco.exit.thread.sink.split.sink.split.i.i.i_crit_edge

.ParseIpco.exit.thread.sink.split.sink.split.i.i.i_crit_edge: ; preds = %bb.ce
  %.pre375 = load ptr, ptr %10, align 8, !tbaa !20
  br label %ParseIpco.exit.thread.sink.split.sink.split.i.i.i

.preheader.i171.i.i.i:                            ; preds = %bb.ce
  %i.oj = icmp ugt i32 %i.ct, 64
  %.pre376 = load ptr, ptr %i.d, align 8, !tbaa !21 ; 2 uses
  %.pre377 = load ptr, ptr %10, align 8, !tbaa !20 ; 2 uses
  br i1 %i.oj, label %.lr.ph.i175.i.i.i.preheader, label %._crit_edge.i172.i.i.i

.lr.ph.i175.i.i.i.preheader:                      ; preds = %.preheader.i171.i.i.i
  %.promoted230 = load i64, ptr %i.f, align 8
  br label %.lr.ph.i175.i.i.i

.lr.ph.i175.i.i.i:                                ; preds = %.lr.ph.i175.i.i.i.preheader, %bb.cf
  %i.ok = phi i64 [ %i.om, %bb.cf ], [ %.promoted230, %.lr.ph.i175.i.i.i.preheader ]
  %.01527.i176.i.i.i = phi i32 [ %i.on, %bb.cf ], [ %i.ct, %.lr.ph.i175.i.i.i.preheader ]
  %i.ol = tail call ptr %.pre376(ptr noundef %.pre377, i64 noundef 64) #8, !inline_history !65
  %.not.i.i177.i.i.i = icmp eq ptr %i.ol, null
  br i1 %.not.i.i177.i.i.i, label %.loopexit.i.i, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i175.i.i.i
  %i.om = add i64 %i.ok, 64                       ; 2 uses
  store i64 %i.om, ptr %i.f, align 8, !tbaa !23
  %i.on = add i32 %.01527.i176.i.i.i, -64         ; 3 uses
  %i.oo = icmp ugt i32 %i.on, 64
  br i1 %i.oo, label %.lr.ph.i175.i.i.i, label %._crit_edge.i172.i.i.i, !llvm.loop !0

._crit_edge.i172.i.i.i:                           ; preds = %bb.cf, %.preheader.i171.i.i.i
  %.015.lcssa.i173.i.i.i = phi i32 [ %i.ct, %.preheader.i171.i.i.i ], [ %i.on, %bb.cf ]
  %i.op = zext nneg i32 %.015.lcssa.i173.i.i.i to i64 ; 2 uses
  %i.oq = tail call ptr %.pre376(ptr noundef %.pre377, i64 noundef %i.op) #8, !inline_history !65
  %.not.i20.i174.i.i.i = icmp eq ptr %i.oq, null
  br i1 %.not.i20.i174.i.i.i, label %.loopexit.i.i.loopexit249, label %ParseIpco.exit.thread.sink.split.i.i.i

ParseIpco.exit.thread.sink.split.sink.split.i.i.i: ; preds = %.ParseIpco.exit.thread.sink.split.sink.split.i.i.i_crit_edge, %bb.cb
  %i.or = phi ptr [ %i.kf, %bb.cb ], [ %.pre375, %.ParseIpco.exit.thread.sink.split.sink.split.i.i.i_crit_edge ]
  %.sink442.i.i.i = phi i32 [ %i.nw, %bb.cb ], [ %i.ct, %.ParseIpco.exit.thread.sink.split.sink.split.i.i.i_crit_edge ]
  %.sink441.i.i.i = phi ptr [ %i.nx, %bb.cb ], [ %i.oh, %.ParseIpco.exit.thread.sink.split.sink.split.i.i.i_crit_edge ]
  %i.os = zext i32 %.sink442.i.i.i to i64         ; 2 uses
  tail call void %.sink441.i.i.i(ptr noundef %i.or, i64 noundef %i.os) #8, !inline_history !66
  br label %ParseIpco.exit.thread.sink.split.i.i.i

ParseIpco.exit.thread.sink.split.i.i.i:           ; preds = %ParseIpco.exit.thread.sink.split.sink.split.i.i.i, %._crit_edge.i172.i.i.i, %._crit_edge.i164.i.i.i
  %.sink32.i169.sink.i.i.i = phi i64 [ %i.of, %._crit_edge.i164.i.i.i ], [ %i.op, %._crit_edge.i172.i.i.i ], [ %i.os, %ParseIpco.exit.thread.sink.split.sink.split.i.i.i ]
  %i.ot = load i64, ptr %i.f, align 8, !tbaa !23
  %i.ou = add i64 %i.ot, %.sink32.i169.sink.i.i.i
  store i64 %i.ou, ptr %i.f, align 8, !tbaa !23
  br label %ParseIpco.exit.thread.i.i.i

ParseIpco.exit.thread.i.i.i:                      ; preds = %.thread329.i.i.i.i, %ParseIpco.exit.thread.sink.split.i.i.i, %bb.cd, %bb.ca, %ParseIpco.exit.i.i.i
  %i.ov = load i32, ptr %7, align 4, !tbaa !44
  %i.ow = sub i32 %.0113.i.i.i, %i.ov             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %.not134.i.i.i = icmp eq i32 %i.ow, 0
  br i1 %.not134.i.i.i, label %.thread173.i.i, label %bb.r, !llvm.loop !72

.loopexit.i.i.loopexit:                           ; preds = %bb.bv, %bb.bw
  %.16.ph.i.ph.i.i.ph = phi i32 [ 2, %bb.bw ], [ 4, %bb.bv ]
  store i8 %.lcssa635638, ptr %i.s, align 8
  store i8 %.lcssa579645, ptr %i.ae, align 1
  store i8 %i.mt, ptr %i.s, align 8
  br label %.loopexit.i.i

.loopexit.i.i.loopexit249:                        ; preds = %ParseIpco.exit.i.i.i, %bb.bm, %bb.bn, %.loopexit.i.i.i, %._crit_edge.i164.i.i.i, %._crit_edge.i172.i.i.i
  %.16.ph.i.ph.i.i.ph250 = phi i32 [ %i.cu, %ParseIpco.exit.i.i.i ], [ 0, %.loopexit.i.i.i ], [ 2, %._crit_edge.i172.i.i.i ], [ 2, %bb.bn ], [ 4, %bb.bm ], [ 2, %._crit_edge.i164.i.i.i ]
  %i.ox = freeze i32 %.16.ph.i.ph.i.i.ph250
  br label %.loopexit.i.i

.loopexit.i.i.loopexit510:                        ; preds = %bb.bp, %bb.bq
  %.16.ph.i.ph.i.i.ph511 = phi i32 [ 4, %bb.bp ], [ 2, %bb.bq ]
  store i8 %.lcssa635638, ptr %i.s, align 8
  store i8 %.lcssa579645, ptr %i.ae, align 1
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i165.i.i.i, %.lr.ph.i175.i.i.i, %.loopexit.i.i.loopexit510, %.loopexit.i.i.loopexit249, %.loopexit.i.i.loopexit, %ParseIpco.exit.thread197.i.i.i
  %.16.ph.i.ph.i.i = phi i32 [ %i.ox, %.loopexit.i.i.loopexit249 ], [ 2, %.lr.ph.i175.i.i.i ], [ %.29.ph.i.ph.i.i.i, %ParseIpco.exit.thread197.i.i.i ], [ %.16.ph.i.ph.i.i.ph511, %.loopexit.i.i.loopexit510 ], [ %.16.ph.i.ph.i.i.ph, %.loopexit.i.i.loopexit ], [ 2, %.lr.ph.i165.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %ParseFile.exit

ParseIprp.exit.i.i:                               ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.oy = icmp eq i32 %i.cr, 1
  br i1 %i.oy, label %.thread173.i.i, label %ParseFile.exit.thread17

bb.cg:                                            ; preds = %bb.h
  %i.oz = load i32, ptr %i.m, align 4, !tbaa !26  ; 2 uses
  store i8 1, ptr %i.u, align 1, !tbaa !49
  %.not174.i.i.i = icmp eq i32 %i.oz, 0
  br i1 %.not174.i.i.i, label %.thread173.i.i, label %.lr.ph177.i.i.i

.lr.ph177.i.i.i:                                  ; preds = %bb.cg, %AvifInfoInternalSkip.exit127.thread.i.i.i
  %.084175.i.i.i = phi i32 [ %i.tu, %AvifInfoInternalSkip.exit127.thread.i.i.i ], [ %i.oz, %bb.cg ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.pa = call fastcc i32 @AvifInfoInternalParseBox(i32 noundef 2, ptr noundef nonnull %10, i32 noundef %.084175.i.i.i, ptr noundef nonnull %i.a, ptr noundef %5) ; 3 uses
  %i.pb = icmp eq i32 %i.pa, 0
  br i1 %i.pb, label %bb.ch, label %ParseIref.exit.i.i

bb.ch:                                            ; preds = %.lr.ph177.i.i.i
  %lhsv.i105.i.i = load i32, ptr %i.v, align 4
  %.not97.i.i.i = icmp eq i32 %lhsv.i105.i.i, 1735223652
  br i1 %.not97.i.i.i, label %bb.ci, label %bb.cw

bb.ci:                                            ; preds = %bb.ch
  %i.pc = load i32, ptr %i.x, align 4, !tbaa !28
  %i.pd = icmp eq i32 %i.pc, 0                    ; 5 uses
  %i.pe = select i1 %i.pd, i32 2, i32 4           ; 3 uses
  %i.pf = add nuw nsw i32 %i.pe, 2                ; 4 uses
  %i.pg = load i32, ptr %i.w, align 4, !tbaa !26  ; 3 uses
  %.not98.i.i.i = icmp ult i32 %i.pg, %i.pf
  br i1 %.not98.i.i.i, label %ParseIref.exit.thread184.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ph = load ptr, ptr %i.d, align 8, !tbaa !21  ; 4 uses
  %i.pi = load ptr, ptr %10, align 8, !tbaa !20   ; 5 uses
  %i.pj = zext nneg i32 %i.pf to i64              ; 2 uses
  %i.pk = tail call ptr %i.ph(ptr noundef %i.pi, i64 noundef %i.pj) #8, !inline_history !73 ; 7 uses
  %.not.i.i107.i.i = icmp eq ptr %i.pk, null
  br i1 %.not.i.i107.i.i, label %ParseIref.exit.thread184.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pl = load i64, ptr %i.f, align 8, !tbaa !23
  %i.pm = add i64 %i.pl, %i.pj                    ; 3 uses
  store i64 %i.pm, ptr %i.f, align 8, !tbaa !23
  %wide.trip.count.i.i108.i.i = zext nneg i32 %i.pe to i64 ; 7 uses
  %xtraiter951 = and i64 %wide.trip.count.i.i108.i.i, 2 ; 2 uses
  br i1 %i.pd, label %.epil.preheader950, label %.new949

.new949:                                          ; preds = %bb.ck
  %unroll_iter957 = and i64 %wide.trip.count.i.i108.i.i, 4
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %.new949
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.new949 ], [ %indvars.iv.next.i.i.i.i.3, %bb.cl ] ; 5 uses
  %niter958 = phi i64 [ 0, %.new949 ], [ %niter958.next.3, %bb.cl ]
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %niter958.next.3 = add i64 %niter958, 4         ; 2 uses
  %niter958.ncmp.3 = icmp eq i64 %niter958.next.3, %unroll_iter957
  br i1 %niter958.ncmp.3, label %AvifInfoInternalReadBigEndian.exit.i110.i.i.unr-lcssa, label %bb.cl, !llvm.loop !59

AvifInfoInternalReadBigEndian.exit.i110.i.i.unr-lcssa: ; preds = %bb.cl
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pk, i64 %indvars.iv.i.i.i.i
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !29
  %i.pp = zext i8 %i.po to i32
  %i.pq = shl nuw nsw i32 %i.pp, 16
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pk, i64 %indvars.iv.i.i.i.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 1
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !29
  %i.pu = zext i8 %i.pt to i32
  %i.pv = shl nuw nsw i32 %i.pu, 8
  %i.pw = or disjoint i32 %i.pq, %i.pv
  %i.px = getelementptr inbounds nuw i8, ptr %i.pk, i64 %indvars.iv.i.i.i.i
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 2
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !29
  %i.qa = zext i8 %i.pz to i32
  %i.qb = or disjoint i32 %i.pw, %i.qa
  %i.qc = shl nuw i32 %i.qb, 8                    ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pk, i64 %indvars.iv.i.i.i.i
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 3
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !29  ; 2 uses
  %i.qg = zext i8 %i.qf to i32
  %i.qh = or disjoint i32 %i.qc, %i.qg
  %lcmp.mod953.not = icmp eq i64 %xtraiter951, 0
  br i1 %lcmp.mod953.not, label %AvifInfoInternalReadBigEndian.exit.i110.i.i, label %.epil.preheader950

.epil.preheader950:                               ; preds = %AvifInfoInternalReadBigEndian.exit.i110.i.i.unr-lcssa, %bb.ck
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %bb.ck ], [ %indvars.iv.next.i.i.i.i.3, %AvifInfoInternalReadBigEndian.exit.i110.i.i.unr-lcssa ]
  %.067.i.i.i.i.epil.init = phi i32 [ 0, %bb.ck ], [ %i.qh, %AvifInfoInternalReadBigEndian.exit.i110.i.i.unr-lcssa ]
  %lcmp.mod956 = icmp ne i64 %xtraiter951, 0
  tail call void @llvm.assume(i1 %lcmp.mod956)
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %.epil.preheader950
  %indvars.iv.i.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.i.epil.init, %.epil.preheader950 ], [ %indvars.iv.next.i.i.i.i.epil, %bb.cm ] ; 2 uses
  %.067.i.i.i.i.epil = phi i32 [ %.067.i.i.i.i.epil.init, %.epil.preheader950 ], [ %i.qm, %bb.cm ]
  %epil.iter952 = phi i64 [ 0, %.epil.preheader950 ], [ %epil.iter952.next, %bb.cm ]
  %i.qi = shl i32 %.067.i.i.i.i.epil, 8           ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pk, i64 %indvars.iv.i.i.i.i.epil
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !29  ; 2 uses
  %i.ql = zext i8 %i.qk to i32
  %i.qm = or disjoint i32 %i.qi, %i.ql
  %indvars.iv.next.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.epil, 1
  %epil.iter952.next = add i64 %epil.iter952, 1   ; 2 uses
  %epil.iter952.cmp.not = icmp eq i64 %epil.iter952.next, 2
  br i1 %epil.iter952.cmp.not, label %AvifInfoInternalReadBigEndian.exit.i110.i.i, label %bb.cm, !llvm.loop !74

AvifInfoInternalReadBigEndian.exit.i110.i.i:      ; preds = %bb.cm, %AvifInfoInternalReadBigEndian.exit.i110.i.i.unr-lcssa
  %.lcssa839 = phi i32 [ %i.qc, %AvifInfoInternalReadBigEndian.exit.i110.i.i.unr-lcssa ], [ %i.qi, %bb.cm ]
  %.lcssa838 = phi i8 [ %i.qf, %AvifInfoInternalReadBigEndian.exit.i110.i.i.unr-lcssa ], [ %i.qk, %bb.cm ]
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pk, i64 %wide.trip.count.i.i108.i.i ; 2 uses
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !29
  %i.qp = zext i8 %i.qo to i32
  %i.qq = shl nuw nsw i32 %i.qp, 8
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qn, i64 1
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !29
  %i.qt = zext i8 %i.qs to i32
  %i.qu = or disjoint i32 %i.qq, %i.qt            ; 3 uses
  %.not178.i.i.i = icmp eq i32 %i.qu, 0
  br i1 %.not178.i.i.i, label %.loopexit.i114.i.i, label %.lr.ph.i111.i.i

.lr.ph.i111.i.i:                                  ; preds = %AvifInfoInternalReadBigEndian.exit.i110.i.i
  %i.qv = icmp eq i32 %.lcssa839, 0
  %i.qw = select i1 %i.pd, i32 36, i32 70
  %i.qx = add nuw nsw i32 %i.qu, 1
  %i.qy = select i1 %i.pd, i32 1, i32 2
  %i.qz = shl nuw nsw i32 %i.qx, %i.qy
  %i.ra = add nuw nsw i32 %i.qz, 2
  %.promoted201 = load i8, ptr %i.y, align 4
  %.promoted205 = load i8, ptr %i.s, align 8
  %xtraiter962 = and i64 %wide.trip.count.i.i108.i.i, 2 ; 2 uses
  %unroll_iter968 = and i64 %wide.trip.count.i.i108.i.i, 4
  %lcmp.mod964.not = icmp eq i64 %xtraiter962, 0
  %lcmp.mod967 = icmp ne i64 %xtraiter962, 0
  br label %bb.cn

bb.cn:                                            ; preds = %AvifInfoInternalReadBigEndian.exit105.i.i.i, %.lr.ph.i111.i.i
  %i.rb = phi i8 [ %.promoted205, %.lr.ph.i111.i.i ], [ %i.sp, %AvifInfoInternalReadBigEndian.exit105.i.i.i ]
  %i.rc = phi i8 [ %.promoted201, %.lr.ph.i111.i.i ], [ %i.sq, %AvifInfoInternalReadBigEndian.exit105.i.i.i ] ; 5 uses
  %i.rd = phi i64 [ %i.pm, %.lr.ph.i111.i.i ], [ %i.rg, %AvifInfoInternalReadBigEndian.exit105.i.i.i ] ; 2 uses
  %.0172.i.i.i = phi i32 [ 0, %.lr.ph.i111.i.i ], [ %i.sr, %AvifInfoInternalReadBigEndian.exit105.i.i.i ] ; 3 uses
  %.071171.i.i.i = phi i32 [ %i.pf, %.lr.ph.i111.i.i ], [ %i.re, %AvifInfoInternalReadBigEndian.exit105.i.i.i ]
  %exitcond.i112.i.i = icmp eq i32 %.0172.i.i.i, 16
  br i1 %exitcond.i112.i.i, label %.loopexit.i114.i.i.sink.split, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.re = add nuw nsw i32 %.071171.i.i.i, %i.pe   ; 2 uses
  %.not99.i.i.i = icmp ult i32 %i.pg, %i.re
  br i1 %.not99.i.i.i, label %ParseIref.exit.thread184.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.rf = tail call ptr %i.ph(ptr noundef %i.pi, i64 noundef %wide.trip.count.i.i108.i.i) #8, !inline_history !73 ; 6 uses
  %.not.i106.i.i.i = icmp eq ptr %i.rf, null
  br i1 %.not.i106.i.i.i, label %ParseIref.exit.thread184.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.rg = add i64 %i.rd, %wide.trip.count.i.i108.i.i ; 3 uses
  store i64 %i.rg, ptr %i.f, align 8, !tbaa !23
  br i1 %i.pd, label %.epil.preheader961, label %.new960

.new960:                                          ; preds = %bb.cq, %.new960
  %indvars.iv.i110.i.i.i = phi i64 [ %indvars.iv.next.i112.i.i.i.3, %.new960 ], [ 0, %bb.cq ] ; 5 uses
  %niter969 = phi i64 [ %niter969.next.3, %.new960 ], [ 0, %bb.cq ]
  %indvars.iv.next.i112.i.i.i.3 = add nuw nsw i64 %indvars.iv.i110.i.i.i, 4 ; 2 uses
  %niter969.next.3 = add i64 %niter969, 4         ; 2 uses
  %niter969.ncmp.3 = icmp eq i64 %niter969.next.3, %unroll_iter968
  br i1 %niter969.ncmp.3, label %AvifInfoInternalReadBigEndian.exit114.i.i.i.unr-lcssa, label %.new960, !llvm.loop !59

AvifInfoInternalReadBigEndian.exit114.i.i.i.unr-lcssa: ; preds = %.new960
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rf, i64 %indvars.iv.i110.i.i.i
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !29
  %i.rj = zext i8 %i.ri to i32
  %i.rk = shl nuw nsw i32 %i.rj, 16
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rf, i64 %indvars.iv.i110.i.i.i
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 1
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !29
  %i.ro = zext i8 %i.rn to i32
  %i.rp = shl nuw nsw i32 %i.ro, 8
  %i.rq = or disjoint i32 %i.rk, %i.rp
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rf, i64 %indvars.iv.i110.i.i.i
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 2
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !29
  %i.ru = zext i8 %i.rt to i32
  %i.rv = or disjoint i32 %i.rq, %i.ru
  %i.rw = shl nuw i32 %i.rv, 8                    ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rf, i64 %indvars.iv.i110.i.i.i
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 3
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !29  ; 2 uses
  %i.sa = zext i8 %i.rz to i32
  %i.sb = or disjoint i32 %i.rw, %i.sa
  br i1 %lcmp.mod964.not, label %AvifInfoInternalReadBigEndian.exit114.i.i.i, label %.epil.preheader961

.epil.preheader961:                               ; preds = %AvifInfoInternalReadBigEndian.exit114.i.i.i.unr-lcssa, %bb.cq
  %indvars.iv.i110.i.i.i.epil.init = phi i64 [ 0, %bb.cq ], [ %indvars.iv.next.i112.i.i.i.3, %AvifInfoInternalReadBigEndian.exit114.i.i.i.unr-lcssa ]
  %.067.i111.i.i.i.epil.init = phi i32 [ 0, %bb.cq ], [ %i.sb, %AvifInfoInternalReadBigEndian.exit114.i.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod967)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %.epil.preheader961
  %indvars.iv.i110.i.i.i.epil = phi i64 [ %indvars.iv.i110.i.i.i.epil.init, %.epil.preheader961 ], [ %indvars.iv.next.i112.i.i.i.epil, %bb.cr ] ; 2 uses
  %.067.i111.i.i.i.epil = phi i32 [ %.067.i111.i.i.i.epil.init, %.epil.preheader961 ], [ %i.sg, %bb.cr ]
  %epil.iter963 = phi i64 [ 0, %.epil.preheader961 ], [ %epil.iter963.next, %bb.cr ]
  %i.sc = shl i32 %.067.i111.i.i.i.epil, 8        ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rf, i64 %indvars.iv.i110.i.i.i.epil
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !29  ; 2 uses
  %i.sf = zext i8 %i.se to i32
  %i.sg = or disjoint i32 %i.sc, %i.sf
  %indvars.iv.next.i112.i.i.i.epil = add nuw nsw i64 %indvars.iv.i110.i.i.i.epil, 1
  %epil.iter963.next = add i64 %epil.iter963, 1   ; 2 uses
  %epil.iter963.cmp.not = icmp eq i64 %epil.iter963.next, 2
  br i1 %epil.iter963.cmp.not, label %AvifInfoInternalReadBigEndian.exit114.i.i.i, label %bb.cr, !llvm.loop !75

AvifInfoInternalReadBigEndian.exit114.i.i.i:      ; preds = %bb.cr, %AvifInfoInternalReadBigEndian.exit114.i.i.i.unr-lcssa
  %.lcssa841 = phi i32 [ %i.rw, %AvifInfoInternalReadBigEndian.exit114.i.i.i.unr-lcssa ], [ %i.sc, %bb.cr ]
  %.lcssa840 = phi i8 [ %i.rz, %AvifInfoInternalReadBigEndian.exit114.i.i.i.unr-lcssa ], [ %i.se, %bb.cr ]
  %i.sh = icmp eq i32 %.lcssa841, 0
  %or.cond.i113.i.i = select i1 %i.qv, i1 %i.sh, i1 false
  %i.si = icmp ult i8 %i.rc, 16
  %or.cond233 = select i1 %or.cond.i113.i.i, i1 %i.si, i1 false
  br i1 %or.cond233, label %bb.cs, label %AvifInfoInternalReadBigEndian.exit105.i.i.i

bb.cs:                                            ; preds = %AvifInfoInternalReadBigEndian.exit114.i.i.i
  %i.sj = zext nneg i8 %i.rc to i64
  %i.sk = getelementptr inbounds nuw [3 x i8], ptr %i.z, i64 %i.sj ; 3 uses
  store i8 %.lcssa840, ptr %i.sk, align 1, !tbaa !39
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 1
  store i8 %.lcssa838, ptr %i.sl, align 1, !tbaa !40
  %i.sm = trunc nuw nsw i32 %.0172.i.i.i to i8
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sk, i64 2
  store i8 %i.sm, ptr %i.sn, align 1, !tbaa !41
  %i.so = add nuw nsw i8 %i.rc, 1
  br label %AvifInfoInternalReadBigEndian.exit105.i.i.i

AvifInfoInternalReadBigEndian.exit105.i.i.i:      ; preds = %AvifInfoInternalReadBigEndian.exit114.i.i.i, %bb.cs
  %i.sp = phi i8 [ %i.rb, %bb.cs ], [ 1, %AvifInfoInternalReadBigEndian.exit114.i.i.i ] ; 2 uses
  %i.sq = phi i8 [ %i.so, %bb.cs ], [ %i.rc, %AvifInfoInternalReadBigEndian.exit114.i.i.i ] ; 2 uses
  %i.sr = add nuw nsw i32 %.0172.i.i.i, 1         ; 2 uses
  %exitcond193.not.i.i.i = icmp eq i32 %i.sr, %i.qu
  br i1 %exitcond193.not.i.i.i, label %.loopexit.i114.i.i.sink.split, label %bb.cn, !llvm.loop !76

.loopexit.i114.i.i.sink.split:                    ; preds = %AvifInfoInternalReadBigEndian.exit105.i.i.i, %bb.cn
  %.sink796 = phi i8 [ %i.rc, %bb.cn ], [ %i.sq, %AvifInfoInternalReadBigEndian.exit105.i.i.i ]
  %.sink = phi i8 [ 1, %bb.cn ], [ %i.sp, %AvifInfoInternalReadBigEndian.exit105.i.i.i ]
  %.promoted209.ph = phi i64 [ %i.rd, %bb.cn ], [ %i.rg, %AvifInfoInternalReadBigEndian.exit105.i.i.i ]
  %.071169.i.i.i.ph = phi i32 [ %i.qw, %bb.cn ], [ %i.ra, %AvifInfoInternalReadBigEndian.exit105.i.i.i ]
  store i8 %.sink796, ptr %i.y, align 4
  store i8 %.sink, ptr %i.s, align 8
  br label %.loopexit.i114.i.i

.loopexit.i114.i.i:                               ; preds = %.loopexit.i114.i.i.sink.split, %AvifInfoInternalReadBigEndian.exit.i110.i.i
  %.promoted209 = phi i64 [ %i.pm, %AvifInfoInternalReadBigEndian.exit.i110.i.i ], [ %.promoted209.ph, %.loopexit.i114.i.i.sink.split ]
  %.071169.i.i.i = phi i32 [ %i.pf, %AvifInfoInternalReadBigEndian.exit.i110.i.i ], [ %.071169.i.i.i.ph, %.loopexit.i114.i.i.sink.split ]
  %i.ss = call fastcc i32 @AvifInfoInternalGetPrimaryItemFeatures(ptr noundef nonnull %11)
  %.not156.i.i.i = icmp eq i32 %i.ss, 0
  br i1 %.not156.i.i.i, label %ParseIref.exit.thread184.i.i, label %bb.ct

bb.ct:                                            ; preds = %.loopexit.i114.i.i
  %i.st = sub i32 %i.pg, %.071169.i.i.i           ; 5 uses
  %.not.i115.i.i.i = icmp eq i32 %i.st, 0
  br i1 %.not.i115.i.i.i, label %AvifInfoInternalSkip.exit127.thread.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.su = load ptr, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  %i.sv = icmp eq ptr %i.su, null
  br i1 %i.sv, label %.preheader.i.i115.i.i, label %AvifInfoInternalSkip.exit127.thread.sink.split.sink.split.i.i.i

.preheader.i.i115.i.i:                            ; preds = %bb.cu
  %i.sw = icmp ugt i32 %i.st, 64
  br i1 %i.sw, label %.lr.ph.i.i119.i.i, label %._crit_edge.i.i116.i.i

.lr.ph.i.i119.i.i:                                ; preds = %.preheader.i.i115.i.i, %bb.cv
  %i.sx = phi i64 [ %i.sz, %bb.cv ], [ %.promoted209, %.preheader.i.i115.i.i ]
  %.01527.i.i120.i.i = phi i32 [ %i.ta, %bb.cv ], [ %i.st, %.preheader.i.i115.i.i ]
  %i.sy = tail call ptr %i.ph(ptr noundef %i.pi, i64 noundef 64) #8, !inline_history !77
  %.not.i.i.i121.i.i = icmp eq ptr %i.sy, null
  br i1 %.not.i.i.i121.i.i, label %ParseIref.exit.thread184.i.i, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.i.i119.i.i
  %i.sz = add i64 %i.sx, 64                       ; 2 uses
  store i64 %i.sz, ptr %i.f, align 8, !tbaa !23
  %i.ta = add i32 %.01527.i.i120.i.i, -64         ; 3 uses
  %i.tb = icmp ugt i32 %i.ta, 64
  br i1 %i.tb, label %.lr.ph.i.i119.i.i, label %._crit_edge.i.i116.i.i, !llvm.loop !0

._crit_edge.i.i116.i.i:                           ; preds = %bb.cv, %.preheader.i.i115.i.i
  %.015.lcssa.i.i117.i.i = phi i32 [ %i.st, %.preheader.i.i115.i.i ], [ %i.ta, %bb.cv ]
  %i.tc = zext nneg i32 %.015.lcssa.i.i117.i.i to i64 ; 2 uses
  %i.td = tail call ptr %i.ph(ptr noundef %i.pi, i64 noundef %i.tc) #8, !inline_history !77
  %.not.i20.i.i118.i.i = icmp eq ptr %i.td, null
  br i1 %.not.i20.i.i118.i.i, label %ParseIref.exit.thread184.i.i, label %AvifInfoInternalSkip.exit127.thread.sink.split.i.i.i

bb.cw:                                            ; preds = %bb.ch
  %i.te = load i32, ptr %i.w, align 4, !tbaa !26  ; 5 uses
  %.not.i116.i.i.i = icmp eq i32 %i.te, 0
  br i1 %.not.i116.i.i.i, label %AvifInfoInternalSkip.exit127.thread.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.tf = load ptr, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  %i.tg = icmp eq ptr %i.tf, null
  %.pre364 = load ptr, ptr %10, align 8, !tbaa !20 ; 3 uses
  br i1 %i.tg, label %.preheader.i120.i.i.i, label %AvifInfoInternalSkip.exit127.thread.sink.split.sink.split.i.i.i

.preheader.i120.i.i.i:                            ; preds = %bb.cx
  %i.th = icmp ugt i32 %i.te, 64
  %.pre362 = load ptr, ptr %i.d, align 8, !tbaa !21 ; 2 uses
  br i1 %i.th, label %.lr.ph.i124.i.i.i.preheader, label %._crit_edge.i121.i.i.i

.lr.ph.i124.i.i.i.preheader:                      ; preds = %.preheader.i120.i.i.i
  %.promoted199 = load i64, ptr %i.f, align 8
  br label %.lr.ph.i124.i.i.i

.lr.ph.i124.i.i.i:                                ; preds = %.lr.ph.i124.i.i.i.preheader, %bb.cy
  %i.ti = phi i64 [ %i.tk, %bb.cy ], [ %.promoted199, %.lr.ph.i124.i.i.i.preheader ]
  %.01527.i125.i.i.i = phi i32 [ %i.tl, %bb.cy ], [ %i.te, %.lr.ph.i124.i.i.i.preheader ]
  %i.tj = tail call ptr %.pre362(ptr noundef %.pre364, i64 noundef 64) #8, !inline_history !77
  %.not.i.i126.i.i.i = icmp eq ptr %i.tj, null
  br i1 %.not.i.i126.i.i.i, label %ParseIref.exit.thread184.i.i, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i124.i.i.i
  %i.tk = add i64 %i.ti, 64                       ; 2 uses
  store i64 %i.tk, ptr %i.f, align 8, !tbaa !23
  %i.tl = add i32 %.01527.i125.i.i.i, -64         ; 3 uses
  %i.tm = icmp ugt i32 %i.tl, 64
  br i1 %i.tm, label %.lr.ph.i124.i.i.i, label %._crit_edge.i121.i.i.i, !llvm.loop !0

end_hunk_0
