Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/UriNormalize?download=true
inline.NumInlined: 64
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@uriNormalizeSyntaxEngineA:bb.a
  %.not204 = icmp eq ptr %i.nj, null
  br i1 %.not204, label %uriDropLeadingZerosInplaceA.exit.thread350, label %bb.au

bb.au:                                            ; preds = %uriContainsUglyPercentEncodingA.exit.thread348
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !104
  %i.nm = ptrtoint ptr %i.nl to i64
  %i.nn = ptrtoint ptr %i.nj to i64
  %i.no = sub i64 %i.nm, %i.nn
  %i.np = icmp ugt i64 %i.no, 1
  br i1 %i.np, label %bb.av, label %uriDropLeadingZerosInplaceA.exit.thread350

bb.av:                                            ; preds = %bb.au
  %i.nq = load i8, ptr %i.nj, align 1, !tbaa !41
  %i.nr = icmp eq i8 %i.nq, 48
  br i1 %i.nr, label %bb.aw, label %uriDropLeadingZerosInplaceA.exit.thread350

bb.aw:                                            ; preds = %bb.av
  %i.ns = load i32, ptr %2, align 4, !tbaa !40
  %i.nt = or i32 %i.ns, 64
  store i32 %i.nt, ptr %2, align 4, !tbaa !40
  br label %uriDropLeadingZerosInplaceA.exit.thread350

bb.ax:                                            ; preds = %uriContainsUglyPercentEncodingA.exit
  %i.nu = and i32 %1, 64
  %.not201 = icmp eq i32 %i.nu, 0
  br i1 %.not201, label %uriDropLeadingZerosInplaceA.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !103 ; 15 uses
  %.not202 = icmp eq ptr %i.nw, null
  br i1 %.not202, label %uriDropLeadingZerosInplaceA.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !42
  %.not203 = icmp eq i32 %i.ny, 0
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !43 ; 10 uses
  %i.ob = icmp eq ptr %i.nw, %i.oa                ; 2 uses
  br i1 %.not203, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ob, label %uriDropLeadingZerosInplaceA.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.oc = icmp ult ptr %i.nw, %i.oa
  br i1 %i.oc, label %.lr.ph.preheader.i.i, label %uriPastLeadingZerosA.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bb
  %i.od = ptrtoaddr ptr %i.oa to i64
  %i.oe = ptrtoaddr ptr %i.nw to i64
  %i.of = sub i64 %i.od, %i.oe
  %scevgep.i.i = getelementptr i8, ptr %i.nw, i64 %i.of
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bc, %.lr.ph.preheader.i.i
  %.09.i.i = phi ptr [ %i.oi, %bb.bc ], [ %i.nw, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.og = load i8, ptr %.09.i.i, align 1, !tbaa !41
  %i.oh = icmp eq i8 %i.og, 48
  br i1 %i.oh, label %bb.bc, label %uriPastLeadingZerosA.exit.i

bb.bc:                                            ; preds = %.lr.ph.i.i
  %i.oi = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.oi, %i.oa
  br i1 %exitcond.not.i.i, label %uriPastLeadingZerosA.exit.i, label %.lr.ph.i.i, !llvm.loop !87

uriPastLeadingZerosA.exit.i:                      ; preds = %bb.bc, %.lr.ph.i.i, %bb.bb
  %.0.lcssa.i.i = phi ptr [ %i.nw, %bb.bb ], [ %scevgep.i.i, %bb.bc ], [ %.09.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.oj = icmp eq ptr %.0.lcssa.i.i, %i.oa
  %spec.select.idx.i.i = sext i1 %i.oj to i64
  %spec.select.i.i = getelementptr inbounds i8, ptr %.0.lcssa.i.i, i64 %spec.select.idx.i.i ; 3 uses
  %i.ok = icmp ugt ptr %spec.select.i.i, %i.nw
  br i1 %i.ok, label %bb.bd, label %uriDropLeadingZerosInplaceA.exit.thread

bb.bd:                                            ; preds = %uriPastLeadingZerosA.exit.i
  %i.ol = ptrtoint ptr %i.oa to i64
  %i.om = ptrtoint ptr %spec.select.i.i to i64
  %i.on = sub i64 %i.ol, %i.om                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.nw, ptr nonnull align 1 %spec.select.i.i, i64 %i.on, i1 false)
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.on ; 2 uses
  store i8 0, ptr %i.oo, align 1, !tbaa !41
  store ptr %i.oo, ptr %i.nz, align 8, !tbaa !43
  br label %uriDropLeadingZerosInplaceA.exit.thread

bb.be:                                            ; preds = %bb.az
  br i1 %i.ob, label %uriDropLeadingZerosInplaceA.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.op = icmp ult ptr %i.nw, %i.oa
  br i1 %i.op, label %.lr.ph.preheader.i.i266, label %uriPastLeadingZerosA.exit.i262

.lr.ph.preheader.i.i266:                          ; preds = %bb.bf
  %i.oq = ptrtoaddr ptr %i.oa to i64
  %i.or = ptrtoaddr ptr %i.nw to i64
  %i.os = sub i64 %i.oq, %i.or
  %scevgep.i.i267 = getelementptr i8, ptr %i.nw, i64 %i.os
  br label %.lr.ph.i.i268

.lr.ph.i.i268:                                    ; preds = %bb.bg, %.lr.ph.preheader.i.i266
  %.09.i.i269 = phi ptr [ %i.ov, %bb.bg ], [ %i.nw, %.lr.ph.preheader.i.i266 ] ; 3 uses
  %i.ot = load i8, ptr %.09.i.i269, align 1, !tbaa !41
  %i.ou = icmp eq i8 %i.ot, 48
  br i1 %i.ou, label %bb.bg, label %uriPastLeadingZerosA.exit.i262

bb.bg:                                            ; preds = %.lr.ph.i.i268
  %i.ov = getelementptr inbounds nuw i8, ptr %.09.i.i269, i64 1 ; 2 uses
  %exitcond.not.i.i270 = icmp eq ptr %i.ov, %i.oa
  br i1 %exitcond.not.i.i270, label %uriPastLeadingZerosA.exit.i262, label %.lr.ph.i.i268, !llvm.loop !87

uriPastLeadingZerosA.exit.i262:                   ; preds = %bb.bg, %.lr.ph.i.i268, %bb.bf
  %.0.lcssa.i.i263 = phi ptr [ %i.nw, %bb.bf ], [ %scevgep.i.i267, %bb.bg ], [ %.09.i.i269, %.lr.ph.i.i268 ] ; 2 uses
  %i.ow = icmp eq ptr %.0.lcssa.i.i263, %i.oa
  %spec.select.idx.i.i264 = sext i1 %i.ow to i64
  %spec.select.i.i265 = getelementptr inbounds i8, ptr %.0.lcssa.i.i263, i64 %spec.select.idx.i.i264
  store ptr %spec.select.i.i265, ptr %i.nv, align 8, !tbaa !43
  br label %uriDropLeadingZerosInplaceA.exit.thread

uriDropLeadingZerosInplaceA.exit.thread350:       ; preds = %uriContainsUglyPercentEncodingA.exit.thread348, %bb.aw, %bb.av, %bb.au
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !25 ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !26 ; 3 uses
  %i.pb = icmp ne ptr %i.oy, null
  %i.pc = icmp ugt ptr %i.pa, %i.oy
  %or.cond29.i271 = and i1 %i.pb, %i.pc
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oy, i64 2 ; 2 uses
  %i.pe = icmp ult ptr %i.pd, %i.pa
  %or.cond.i272 = select i1 %or.cond29.i271, i1 %i.pe, i1 false
  br i1 %or.cond.i272, label %.lr.ph.i274, label %uriContainsUglyPercentEncodingA.exit279.thread356

.lr.ph.i274:                                      ; preds = %uriDropLeadingZerosInplaceA.exit.thread350, %bb.bk
  %i.pf = phi ptr [ %i.pw, %bb.bk ], [ %i.pd, %uriDropLeadingZerosInplaceA.exit.thread350 ] ; 2 uses
  %.02132.i275 = phi ptr [ %i.pv, %bb.bk ], [ %i.oy, %uriDropLeadingZerosInplaceA.exit.thread350 ] ; 4 uses
  %i.pg = load i8, ptr %.02132.i275, align 1, !tbaa !41
  %i.ph = icmp eq i8 %i.pg, 37
  br i1 %i.ph, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %.lr.ph.i274
  %i.pi = getelementptr inbounds nuw i8, ptr %.02132.i275, i64 1
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !41  ; 2 uses
  %i.pk = add i8 %i.pj, -97
  %or.cond30.i276 = icmp ult i8 %i.pk, 6
  br i1 %or.cond30.i276, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.pl = load i8, ptr %i.pf, align 1, !tbaa !41
  %i.pm = add i8 %i.pl, -97
  %or.cond31.i277 = icmp ult i8 %i.pm, 6
  br i1 %or.cond31.i277, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.pn = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.pj) #6
  %i.po = load i8, ptr %i.pf, align 1, !tbaa !41
  %i.pp = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.po) #6
  %i.pq = zext i8 %i.pn to i32
  %i.pr = shl nuw nsw i32 %i.pq, 4
  %i.ps = zext i8 %i.pp to i32
  %i.pt = add nuw nsw i32 %i.pr, %i.ps
  %i.pu = tail call i32 @uriIsUnreserved(i32 noundef %i.pt) #6
  %.not.i278 = icmp eq i32 %i.pu, 0
  br i1 %.not.i278, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj, %.lr.ph.i274
  %i.pv = getelementptr inbounds nuw i8, ptr %.02132.i275, i64 1
  %i.pw = getelementptr inbounds nuw i8, ptr %.02132.i275, i64 3 ; 2 uses
  %i.px = icmp ult ptr %i.pw, %i.pa
  br i1 %i.px, label %.lr.ph.i274, label %uriContainsUglyPercentEncodingA.exit279, !llvm.loop !77

bb.bl:                                            ; preds = %bb.bi, %bb.bh, %bb.bj
  %i.py = load i32, ptr %2, align 4, !tbaa !40
  %i.pz = or i32 %i.py, 2
  store i32 %i.pz, ptr %2, align 4, !tbaa !40
  br label %uriContainsUglyPercentEncodingA.exit279.thread356

uriDropLeadingZerosInplaceA.exit.thread:          ; preds = %uriPastLeadingZerosA.exit.i, %bb.bd, %uriPastLeadingZerosA.exit.i262, %bb.ay, %bb.ax, %bb.ba, %bb.be
  %i.qa = and i32 %1, 2
  %.not205 = icmp eq i32 %i.qa, 0
  br i1 %.not205, label %uriContainsUglyPercentEncodingA.exit279.thread354, label %bb.bm

bb.bm:                                            ; preds = %uriDropLeadingZerosInplaceA.exit.thread
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !25 ; 9 uses
  %.not206 = icmp eq ptr %i.qc, null
  br i1 %.not206, label %uriContainsUglyPercentEncodingA.exit279.thread354, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !42
  %.not207 = icmp eq i32 %i.qe, 0
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %.not207, label %bb.bv, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !43 ; 2 uses
  %i.qh = icmp eq ptr %i.qg, null
  br i1 %i.qh, label %uriContainsUglyPercentEncodingA.exit279.thread354, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qi = ptrtoint ptr %i.qg to i64
  %i.qj = ptrtoint ptr %i.qc to i64               ; 2 uses
  %i.qk = sub i64 %i.qi, %i.qj                    ; 5 uses
  %i.ql = icmp ugt i64 %i.qk, 2
  br i1 %i.ql, label %.lr.ph.i.i281, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.bu, %bb.bp
  %.039.lcssa.i.i = phi ptr [ %i.qc, %bb.bp ], [ %.241.i.i, %bb.bu ] ; 8 uses
  %.0.lcssa.i.i280 = phi i64 [ 0, %bb.bp ], [ %i.ry, %bb.bu ] ; 9 uses
  %.039.lcssa.i.i649 = ptrtoaddr ptr %.039.lcssa.i.i to i64
  %i.qm = icmp ult i64 %.0.lcssa.i.i280, %i.qk
  br i1 %i.qm, label %iter.check665, label %uriFixPercentEncodingEngineA.exit.i

iter.check665:                                    ; preds = %.preheader.i.i
  %i.qn = sub nuw i64 %i.qk, %.0.lcssa.i.i280     ; 7 uses
  %min.iters.check650 = icmp ult i64 %i.qn, 8
  br i1 %min.iters.check650, label %.lr.ph49.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check665
  %i.qo = add i64 %.0.lcssa.i.i280, %i.qj
  %i.qp = sub i64 %i.qo, %.039.lcssa.i.i649
  %diff.check = icmp ugt i64 %i.qp, -32
  br i1 %diff.check, label %.lr.ph49.i.i.preheader, label %vector.main.loop.iter.check651

vector.main.loop.iter.check651:                   ; preds = %vector.memcheck
  %min.iters.check652 = icmp ult i64 %i.qn, 32
  br i1 %min.iters.check652, label %vec.epilog.ph669, label %vector.ph653

vector.ph653:                                     ; preds = %vector.main.loop.iter.check651
  %i.qq = and i64 %i.qn, 24
  %n.vec654 = and i64 %i.qn, -32                  ; 5 uses
  %i.qr = add i64 %.0.lcssa.i.i280, %n.vec654
  %i.qs = getelementptr i8, ptr %.039.lcssa.i.i, i64 %n.vec654 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qc, i64 %.0.lcssa.i.i280
  br label %vector.body655

vector.body655:                                   ; preds = %vector.ph653, %vector.body655
  %index656 = phi i64 [ 0, %vector.ph653 ], [ %index.next660, %vector.body655 ] ; 3 uses
  %next.gep657 = getelementptr i8, ptr %.039.lcssa.i.i, i64 %index656 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 %index656 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %wide.load658 = load <16 x i8>, ptr %i.qu, align 1, !tbaa !41
  %wide.load659 = load <16 x i8>, ptr %i.qv, align 1, !tbaa !41
  %i.qw = getelementptr i8, ptr %next.gep657, i64 16
  store <16 x i8> %wide.load658, ptr %next.gep657, align 1, !tbaa !41
  store <16 x i8> %wide.load659, ptr %i.qw, align 1, !tbaa !41
  %index.next660 = add nuw i64 %index656, 32      ; 2 uses
  %i.qx = icmp eq i64 %index.next660, %n.vec654
  br i1 %i.qx, label %middle.block661, label %vector.body655, !llvm.loop !88

middle.block661:                                  ; preds = %vector.body655
  %cmp.n662 = icmp eq i64 %i.qn, %n.vec654
  br i1 %cmp.n662, label %uriFixPercentEncodingEngineA.exit.i, label %vec.epilog.iter.check667

vec.epilog.iter.check667:                         ; preds = %middle.block661
  %min.epilog.iters.check668 = icmp eq i64 %i.qq, 0
  br i1 %min.epilog.iters.check668, label %.lr.ph49.i.i.preheader, label %vec.epilog.ph669, !prof !47

vec.epilog.ph669:                                 ; preds = %vector.main.loop.iter.check651, %vec.epilog.iter.check667
  %vec.epilog.resume.val663 = phi i64 [ %n.vec654, %vec.epilog.iter.check667 ], [ 0, %vector.main.loop.iter.check651 ]
  %n.vec670 = and i64 %i.qn, -8                   ; 4 uses
  %i.qy = add i64 %.0.lcssa.i.i280, %n.vec670
  %i.qz = getelementptr i8, ptr %.039.lcssa.i.i, i64 %n.vec670 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qc, i64 %.0.lcssa.i.i280
  br label %vec.epilog.vector.body671

vec.epilog.vector.body671:                        ; preds = %vec.epilog.vector.body671, %vec.epilog.ph669
  %index672 = phi i64 [ %vec.epilog.resume.val663, %vec.epilog.ph669 ], [ %index.next675, %vec.epilog.vector.body671 ] ; 3 uses
  %next.gep673 = getelementptr i8, ptr %.039.lcssa.i.i, i64 %index672
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 %index672
  %wide.load674 = load <8 x i8>, ptr %i.rb, align 1, !tbaa !41
  store <8 x i8> %wide.load674, ptr %next.gep673, align 1, !tbaa !41
  %index.next675 = add nuw i64 %index672, 8       ; 2 uses
  %i.rc = icmp eq i64 %index.next675, %n.vec670
  br i1 %i.rc, label %vec.epilog.middle.block676, label %vec.epilog.vector.body671, !llvm.loop !89

vec.epilog.middle.block676:                       ; preds = %vec.epilog.vector.body671
  %cmp.n677 = icmp eq i64 %i.qn, %n.vec670
  br i1 %cmp.n677, label %uriFixPercentEncodingEngineA.exit.i, label %.lr.ph49.i.i.preheader

.lr.ph49.i.i.preheader:                           ; preds = %iter.check665, %vector.memcheck, %vec.epilog.iter.check667, %vec.epilog.middle.block676
  %.248.i.i.ph = phi i64 [ %.0.lcssa.i.i280, %iter.check665 ], [ %.0.lcssa.i.i280, %vector.memcheck ], [ %i.qr, %vec.epilog.iter.check667 ], [ %i.qy, %vec.epilog.middle.block676 ]
  %.347.i.i.ph = phi ptr [ %.039.lcssa.i.i, %iter.check665 ], [ %.039.lcssa.i.i, %vector.memcheck ], [ %i.qs, %vec.epilog.iter.check667 ], [ %i.qz, %vec.epilog.middle.block676 ]
  br label %.lr.ph49.i.i

.lr.ph.i.i281:                                    ; preds = %bb.bp, %bb.bu
  %i.rd = phi i64 [ %i.rz, %bb.bu ], [ 2, %bb.bp ] ; 3 uses
  %.045.i.i = phi i64 [ %i.ry, %bb.bu ], [ 0, %bb.bp ] ; 2 uses
  %.03944.i.i = phi ptr [ %.241.i.i, %bb.bu ], [ %i.qc, %bb.bp ] ; 7 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.qc, i64 %.045.i.i ; 2 uses
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !41  ; 2 uses
  %.not.i.i = icmp eq i8 %i.rf, 37
  br i1 %.not.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i281
  store i8 %i.rf, ptr %.03944.i.i, align 1, !tbaa !41
  %i.rg = getelementptr inbounds nuw i8, ptr %.03944.i.i, i64 1
  br label %bb.bu

bb.br:                                            ; preds = %.lr.ph.i.i281
  %i.rh = getelementptr i8, ptr %i.re, i64 1
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !41
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qc, i64 %i.rd
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !41
  %i.rl = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.ri) #6
  %i.rm = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.rk) #6
  %i.rn = zext i8 %i.rl to i32                    ; 2 uses
  %i.ro = shl nuw nsw i32 %i.rn, 4
  %i.rp = zext i8 %i.rm to i32                    ; 2 uses
  %i.rq = add nuw nsw i32 %i.ro, %i.rp            ; 2 uses
  %i.rr = tail call i32 @uriIsUnreserved(i32 noundef %i.rq) #6
  %.not43.i.i = icmp eq i32 %i.rr, 0
  %i.rs = getelementptr inbounds nuw i8, ptr %.03944.i.i, i64 1 ; 2 uses
  br i1 %.not43.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.rt = trunc i32 %i.rq to i8
  store i8 %i.rt, ptr %.03944.i.i, align 1, !tbaa !41
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  store i8 37, ptr %.03944.i.i, align 1, !tbaa !41
  %i.ru = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.rn, i32 noundef 1) #6
  store i8 %i.ru, ptr %i.rs, align 1, !tbaa !41
  %i.rv = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.rp, i32 noundef 1) #6
  %i.rw = getelementptr inbounds nuw i8, ptr %.03944.i.i, i64 2
  store i8 %i.rv, ptr %i.rw, align 1, !tbaa !41
  %i.rx = getelementptr inbounds nuw i8, ptr %.03944.i.i, i64 3
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.bq
  %.241.i.i = phi ptr [ %i.rg, %bb.bq ], [ %i.rs, %bb.bs ], [ %i.rx, %bb.bt ] ; 2 uses
  %.1.i.i = phi i64 [ %.045.i.i, %bb.bq ], [ %i.rd, %bb.bs ], [ %i.rd, %bb.bt ] ; 2 uses
  %i.ry = add i64 %.1.i.i, 1                      ; 2 uses
  %i.rz = add i64 %.1.i.i, 3                      ; 2 uses
  %i.sa = icmp ult i64 %i.rz, %i.qk
  br i1 %i.sa, label %.lr.ph.i.i281, label %.preheader.i.i, !llvm.loop !0

.lr.ph49.i.i:                                     ; preds = %.lr.ph49.i.i.preheader, %.lr.ph49.i.i
  %.248.i.i = phi i64 [ %i.se, %.lr.ph49.i.i ], [ %.248.i.i.ph, %.lr.ph49.i.i.preheader ] ; 2 uses
  %.347.i.i = phi ptr [ %i.sd, %.lr.ph49.i.i ], [ %.347.i.i.ph, %.lr.ph49.i.i.preheader ] ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.qc, i64 %.248.i.i
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !41
  store i8 %i.sc, ptr %.347.i.i, align 1, !tbaa !41
  %i.sd = getelementptr inbounds nuw i8, ptr %.347.i.i, i64 1 ; 2 uses
  %i.se = add nuw i64 %.248.i.i, 1                ; 2 uses
  %i.sf = icmp ult i64 %i.se, %i.qk
  br i1 %i.sf, label %.lr.ph49.i.i, label %uriFixPercentEncodingEngineA.exit.i, !llvm.loop !90

uriFixPercentEncodingEngineA.exit.i:              ; preds = %.lr.ph49.i.i, %middle.block661, %vec.epilog.middle.block676, %.preheader.i.i
  %.3.lcssa.i.i = phi ptr [ %.039.lcssa.i.i, %.preheader.i.i ], [ %i.qz, %vec.epilog.middle.block676 ], [ %i.qs, %middle.block661 ], [ %i.sd, %.lr.ph49.i.i ]
  store ptr %.3.lcssa.i.i, ptr %i.qf, align 8, !tbaa !43
  br label %uriContainsUglyPercentEncodingA.exit279

bb.bv:                                            ; preds = %bb.bn
  %i.sg = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.qb, ptr noundef %i.qf, ptr noundef %3)
  %.not208 = icmp eq i32 %i.sg, 0
  %i.sh = load i32, ptr %i.a, align 4, !tbaa !40  ; 2 uses
  br i1 %.not208, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  tail call void @uriPreventLeakageA(ptr noundef nonnull %0, i32 noundef %i.sh, ptr noundef %3)
  br label %bb.dz

bb.bx:                                            ; preds = %bb.bv
  %i.si = or i32 %i.sh, 2
  store i32 %i.si, ptr %i.a, align 4, !tbaa !40
  br label %uriContainsUglyPercentEncodingA.exit279.thread354

uriContainsUglyPercentEncodingA.exit279:          ; preds = %bb.bk, %uriFixPercentEncodingEngineA.exit.i
  br i1 %.not231, label %uriContainsUglyPercentEncodingA.exit279.thread354, label %uriContainsUglyPercentEncodingA.exit279.thread356

uriContainsUglyPercentEncodingA.exit279.thread356: ; preds = %bb.bl, %uriDropLeadingZerosInplaceA.exit.thread350, %uriContainsUglyPercentEncodingA.exit279
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.0168374 = load ptr, ptr %i.sj, align 8, !tbaa !105 ; 2 uses
  %.not217375 = icmp eq ptr %.0168374, null
  br i1 %.not217375, label %.loopexit366.thread, label %.lr.ph

.lr.ph:                                           ; preds = %uriContainsUglyPercentEncodingA.exit279.thread356, %.loopexit365
  %.0168376 = phi ptr [ %.0168, %.loopexit365 ], [ %.0168374, %uriContainsUglyPercentEncodingA.exit279.thread356 ] ; 3 uses
  %i.sk = load ptr, ptr %.0168376, align 8, !tbaa !34 ; 8 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.0168376, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !33 ; 4 uses
  %i.sn = icmp ne ptr %i.sk, null
  %i.so = icmp ugt ptr %i.sm, %i.sk
  %or.cond232 = select i1 %i.sn, i1 %i.so, i1 false
  br i1 %or.cond232, label %bb.by, label %.loopexit365

bb.by:                                            ; preds = %.lr.ph
  %i.sp = ptrtoint ptr %i.sm to i64
  %i.sq = ptrtoint ptr %i.sk to i64
  %i.sr = sub i64 %i.sp, %i.sq
  switch i64 %i.sr, label %bb.cc [
    i64 1, label %bb.bz
    i64 2, label %bb.ca
  ]

bb.bz:                                            ; preds = %bb.by
  %i.ss = load i8, ptr %i.sk, align 1, !tbaa !41
  %i.st = icmp eq i8 %i.ss, 46
  br i1 %i.st, label %.thread363, label %bb.cc

bb.ca:                                            ; preds = %bb.by
  %i.su = load i8, ptr %i.sk, align 1, !tbaa !41
  %i.sv = icmp eq i8 %i.su, 46
  br i1 %i.sv, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sk, i64 1
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !41
  %i.sy = icmp eq i8 %i.sx, 46
  br i1 %i.sy, label %.thread363, label %bb.cc

bb.cc:                                            ; preds = %bb.bz, %bb.by, %bb.cb, %bb.ca
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sk, i64 2 ; 2 uses
end_hunk_0
begin_hunk_1_@uriNormalizeSyntaxEngineA:bb.a
  %i.uj = getelementptr inbounds nuw i8, ptr %.0378, i64 8
  tail call fastcc void @uriFixPercentEncodingInplaceA(ptr noundef %i.ui, ptr noundef %i.uj)
  %i.uk = getelementptr inbounds nuw i8, ptr %.0378, i64 16
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !32 ; 2 uses
  %.not215 = icmp eq ptr %i.ul, null
  br i1 %.not215, label %.loopexit, label %.lr.ph379, !llvm.loop !91

.lr.ph382:                                        ; preds = %.preheader, %bb.cl
  %.1381 = phi ptr [ %i.uq, %bb.cl ], [ %i.uf, %.preheader ] ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.1381, i64 8
  %i.un = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %.1381, ptr noundef %i.um, ptr noundef %3)
  %.not214 = icmp eq i32 %i.un, 0
  br i1 %.not214, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.lr.ph382
  %i.uo = load i32, ptr %i.a, align 4, !tbaa !40
  tail call void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.uo, ptr noundef %3)
  br label %bb.dz

bb.cl:                                            ; preds = %.lr.ph382
  %i.up = getelementptr inbounds nuw i8, ptr %.1381, i64 16
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !32 ; 2 uses
  %.not213 = icmp eq ptr %i.uq, null
  br i1 %.not213, label %._crit_edge, label %.lr.ph382, !llvm.loop !92

._crit_edge:                                      ; preds = %bb.cl, %.preheader
  %i.ur = load i32, ptr %i.a, align 4, !tbaa !40
  %i.us = or i32 %i.ur, 8
  store i32 %i.us, ptr %i.a, align 4, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph379, %.preheader364, %._crit_edge
  %i.ut = load i32, ptr %i.ug, align 4, !tbaa !42
  %i.uu = icmp eq i32 %i.ut, 1
  %i.uv = load i32, ptr %i.a, align 4             ; 2 uses
  %i.uw = and i32 %i.uv, 8
  %i.ux = icmp ne i32 %i.uw, 0
  %i.uy = select i1 %i.uu, i1 true, i1 %i.ux
  %i.uz = zext i1 %i.uy to i32
  %i.va = tail call i32 @uriRemoveDotSegmentsExA(ptr noundef %0, i32 noundef %i.ud, i32 noundef %i.uz, ptr noundef %3) #6
  %.not216 = icmp eq i32 %i.va, 0
  br i1 %.not216, label %bb.cm, label %.critedge

bb.cm:                                            ; preds = %.loopexit
  tail call void @uriPreventLeakageA(ptr noundef nonnull %0, i32 noundef %i.uv, ptr noundef %3)
  br label %bb.dz

.critedge:                                        ; preds = %.loopexit
  tail call void @uriFixEmptyTrailSegmentA(ptr noundef nonnull %0, ptr noundef %3) #6
  br label %.loopexit366

.loopexit366:                                     ; preds = %.loopexit365, %.critedge
  br i1 %.not231, label %.thread362, label %.loopexit366.thread

.loopexit366.thread:                              ; preds = %uriContainsUglyPercentEncodingA.exit279.thread356, %.thread363, %.loopexit366
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !36 ; 4 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !37 ; 3 uses
  %i.vf = icmp ne ptr %i.vc, null
  %i.vg = icmp ugt ptr %i.ve, %i.vc
  %or.cond29.i291 = and i1 %i.vf, %i.vg
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vc, i64 2 ; 2 uses
  %i.vi = icmp ult ptr %i.vh, %i.ve
  %or.cond.i292 = select i1 %or.cond29.i291, i1 %i.vi, i1 false
  br i1 %or.cond.i292, label %.lr.ph.i294, label %uriContainsUglyPercentEncodingA.exit299

.lr.ph.i294:                                      ; preds = %.loopexit366.thread, %bb.cq
  %i.vj = phi ptr [ %i.wa, %bb.cq ], [ %i.vh, %.loopexit366.thread ] ; 2 uses
  %.02132.i295 = phi ptr [ %i.vz, %bb.cq ], [ %i.vc, %.loopexit366.thread ] ; 4 uses
  %i.vk = load i8, ptr %.02132.i295, align 1, !tbaa !41
  %i.vl = icmp eq i8 %i.vk, 37
  br i1 %i.vl, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %.lr.ph.i294
  %i.vm = getelementptr inbounds nuw i8, ptr %.02132.i295, i64 1
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !41  ; 2 uses
  %i.vo = add i8 %i.vn, -97
  %or.cond30.i296 = icmp ult i8 %i.vo, 6
  br i1 %or.cond30.i296, label %uriContainsUglyPercentEncodingA.exit299, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.vp = load i8, ptr %i.vj, align 1, !tbaa !41
  %i.vq = add i8 %i.vp, -97
  %or.cond31.i297 = icmp ult i8 %i.vq, 6
  br i1 %or.cond31.i297, label %uriContainsUglyPercentEncodingA.exit299, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.vr = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.vn) #6
  %i.vs = load i8, ptr %i.vj, align 1, !tbaa !41
  %i.vt = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.vs) #6
  %i.vu = zext i8 %i.vr to i32
  %i.vv = shl nuw nsw i32 %i.vu, 4
  %i.vw = zext i8 %i.vt to i32
  %i.vx = add nuw nsw i32 %i.vv, %i.vw
  %i.vy = tail call i32 @uriIsUnreserved(i32 noundef %i.vx) #6
  %.not.i298 = icmp eq i32 %i.vy, 0
  br i1 %.not.i298, label %bb.cq, label %uriContainsUglyPercentEncodingA.exit299

bb.cq:                                            ; preds = %bb.cp, %.lr.ph.i294
  %i.vz = getelementptr inbounds nuw i8, ptr %.02132.i295, i64 1
  %i.wa = getelementptr inbounds nuw i8, ptr %.02132.i295, i64 3 ; 2 uses
  %i.wb = icmp ult ptr %i.wa, %i.ve
  br i1 %i.wb, label %.lr.ph.i294, label %uriContainsUglyPercentEncodingA.exit299, !llvm.loop !77

uriContainsUglyPercentEncodingA.exit299:          ; preds = %bb.cn, %bb.co, %bb.cp, %bb.cq, %.loopexit366.thread
  %.not227 = phi i1 [ true, %.loopexit366.thread ], [ false, %bb.cp ], [ true, %bb.cq ], [ false, %bb.cn ], [ false, %bb.co ]
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !38 ; 4 uses
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !39 ; 3 uses
  %i.wg = icmp ne ptr %i.wd, null
  %i.wh = icmp ugt ptr %i.wf, %i.wd
  %or.cond29.i300 = and i1 %i.wg, %i.wh
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wd, i64 2 ; 2 uses
  %i.wj = icmp ult ptr %i.wi, %i.wf
  %or.cond.i301 = select i1 %or.cond29.i300, i1 %i.wj, i1 false
  br i1 %or.cond.i301, label %.lr.ph.i303, label %uriContainsUglyPercentEncodingA.exit308

.lr.ph.i303:                                      ; preds = %uriContainsUglyPercentEncodingA.exit299, %bb.cu
  %i.wk = phi ptr [ %i.xb, %bb.cu ], [ %i.wi, %uriContainsUglyPercentEncodingA.exit299 ] ; 2 uses
  %.02132.i304 = phi ptr [ %i.xa, %bb.cu ], [ %i.wd, %uriContainsUglyPercentEncodingA.exit299 ] ; 4 uses
  %i.wl = load i8, ptr %.02132.i304, align 1, !tbaa !41
  %i.wm = icmp eq i8 %i.wl, 37
  br i1 %i.wm, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %.lr.ph.i303
  %i.wn = getelementptr inbounds nuw i8, ptr %.02132.i304, i64 1
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !41  ; 2 uses
  %i.wp = add i8 %i.wo, -97
  %or.cond30.i305 = icmp ult i8 %i.wp, 6
  br i1 %or.cond30.i305, label %uriContainsUglyPercentEncodingA.exit308, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.wq = load i8, ptr %i.wk, align 1, !tbaa !41
  %i.wr = add i8 %i.wq, -97
  %or.cond31.i306 = icmp ult i8 %i.wr, 6
  br i1 %or.cond31.i306, label %uriContainsUglyPercentEncodingA.exit308, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ws = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.wo) #6
  %i.wt = load i8, ptr %i.wk, align 1, !tbaa !41
  %i.wu = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.wt) #6
  %i.wv = zext i8 %i.ws to i32
  %i.ww = shl nuw nsw i32 %i.wv, 4
  %i.wx = zext i8 %i.wu to i32
  %i.wy = add nuw nsw i32 %i.ww, %i.wx
  %i.wz = tail call i32 @uriIsUnreserved(i32 noundef %i.wy) #6
  %.not.i307 = icmp eq i32 %i.wz, 0
  br i1 %.not.i307, label %bb.cu, label %uriContainsUglyPercentEncodingA.exit308

bb.cu:                                            ; preds = %bb.ct, %.lr.ph.i303
  %i.xa = getelementptr inbounds nuw i8, ptr %.02132.i304, i64 1
  %i.xb = getelementptr inbounds nuw i8, ptr %.02132.i304, i64 3 ; 2 uses
  %i.xc = icmp ult ptr %i.xb, %i.wf
  br i1 %i.xc, label %.lr.ph.i303, label %uriContainsUglyPercentEncodingA.exit308, !llvm.loop !77

uriContainsUglyPercentEncodingA.exit308:          ; preds = %bb.cr, %bb.cs, %bb.ct, %bb.cu, %uriContainsUglyPercentEncodingA.exit299
  %.not228 = phi i1 [ true, %uriContainsUglyPercentEncodingA.exit299 ], [ false, %bb.ct ], [ true, %bb.cu ], [ false, %bb.cr ], [ false, %bb.cs ]
  br i1 %.not227, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %uriContainsUglyPercentEncodingA.exit308
  %i.xd = load i32, ptr %2, align 4, !tbaa !40
  %i.xe = or i32 %i.xd, 16
  store i32 %i.xe, ptr %2, align 4, !tbaa !40
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %uriContainsUglyPercentEncodingA.exit308
  br i1 %.not228, label %uriFixPercentEncodingInplaceA.exit340, label %uriFixPercentEncodingInplaceA.exit340.thread

uriFixPercentEncodingInplaceA.exit340.thread:     ; preds = %bb.cw
  %i.xf = load i32, ptr %2, align 4, !tbaa !40
  %i.xg = or i32 %i.xf, 32
  store i32 %i.xg, ptr %2, align 4, !tbaa !40
  br label %bb.dz

.thread362:                                       ; preds = %uriContainsUglyPercentEncodingA.exit279.thread354, %.loopexit366
  %i.xh = and i32 %1, 16
  %.not219 = icmp eq i32 %i.xh, 0
  br i1 %.not219, label %uriFixPercentEncodingInplaceA.exit324, label %bb.cx

bb.cx:                                            ; preds = %.thread362
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !36 ; 9 uses
  %.not220 = icmp eq ptr %i.xj, null
  br i1 %.not220, label %uriFixPercentEncodingInplaceA.exit324, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !42
  %.not221 = icmp eq i32 %i.xl, 0
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  br i1 %.not221, label %bb.dg, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !43 ; 2 uses
  %i.xo = icmp eq ptr %i.xn, null
  br i1 %i.xo, label %uriFixPercentEncodingInplaceA.exit324, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.xp = ptrtoint ptr %i.xn to i64
  %i.xq = ptrtoint ptr %i.xj to i64               ; 2 uses
  %i.xr = sub i64 %i.xp, %i.xq                    ; 5 uses
  %i.xs = icmp ugt i64 %i.xr, 2
  br i1 %i.xs, label %.lr.ph.i.i317, label %.preheader.i.i309

.preheader.i.i309:                                ; preds = %bb.df, %bb.da
  %.039.lcssa.i.i310 = phi ptr [ %i.xj, %bb.da ], [ %.241.i.i321, %bb.df ] ; 8 uses
  %.0.lcssa.i.i311 = phi i64 [ 0, %bb.da ], [ %i.zf, %bb.df ] ; 9 uses
  %.039.lcssa.i.i310681 = ptrtoaddr ptr %.039.lcssa.i.i310 to i64
  %i.xt = icmp ult i64 %.0.lcssa.i.i311, %i.xr
  br i1 %i.xt, label %iter.check698, label %uriFixPercentEncodingEngineA.exit.i312

iter.check698:                                    ; preds = %.preheader.i.i309
  %i.xu = sub nuw i64 %i.xr, %.0.lcssa.i.i311     ; 7 uses
  %min.iters.check683 = icmp ult i64 %i.xu, 8
  br i1 %min.iters.check683, label %.lr.ph49.i.i314.preheader, label %vector.memcheck680

vector.memcheck680:                               ; preds = %iter.check698
  %i.xv = add i64 %.0.lcssa.i.i311, %i.xq
  %i.xw = sub i64 %i.xv, %.039.lcssa.i.i310681
  %diff.check682 = icmp ugt i64 %i.xw, -32
  br i1 %diff.check682, label %.lr.ph49.i.i314.preheader, label %vector.main.loop.iter.check684

vector.main.loop.iter.check684:                   ; preds = %vector.memcheck680
  %min.iters.check685 = icmp ult i64 %i.xu, 32
  br i1 %min.iters.check685, label %vec.epilog.ph702, label %vector.ph686

vector.ph686:                                     ; preds = %vector.main.loop.iter.check684
  %i.xx = and i64 %i.xu, 24
  %n.vec687 = and i64 %i.xu, -32                  ; 5 uses
  %i.xy = add i64 %.0.lcssa.i.i311, %n.vec687
  %i.xz = getelementptr i8, ptr %.039.lcssa.i.i310, i64 %n.vec687 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xj, i64 %.0.lcssa.i.i311
  br label %vector.body688

vector.body688:                                   ; preds = %vector.ph686, %vector.body688
  %index689 = phi i64 [ 0, %vector.ph686 ], [ %index.next693, %vector.body688 ] ; 3 uses
  %next.gep690 = getelementptr i8, ptr %.039.lcssa.i.i310, i64 %index689 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 %index689 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 16
  %wide.load691 = load <16 x i8>, ptr %i.yb, align 1, !tbaa !41
  %wide.load692 = load <16 x i8>, ptr %i.yc, align 1, !tbaa !41
  %i.yd = getelementptr i8, ptr %next.gep690, i64 16
  store <16 x i8> %wide.load691, ptr %next.gep690, align 1, !tbaa !41
  store <16 x i8> %wide.load692, ptr %i.yd, align 1, !tbaa !41
  %index.next693 = add nuw i64 %index689, 32      ; 2 uses
  %i.ye = icmp eq i64 %index.next693, %n.vec687
  br i1 %i.ye, label %middle.block694, label %vector.body688, !llvm.loop !93

middle.block694:                                  ; preds = %vector.body688
  %cmp.n695 = icmp eq i64 %i.xu, %n.vec687
  br i1 %cmp.n695, label %uriFixPercentEncodingEngineA.exit.i312, label %vec.epilog.iter.check700

vec.epilog.iter.check700:                         ; preds = %middle.block694
  %min.epilog.iters.check701 = icmp eq i64 %i.xx, 0
  br i1 %min.epilog.iters.check701, label %.lr.ph49.i.i314.preheader, label %vec.epilog.ph702, !prof !47

vec.epilog.ph702:                                 ; preds = %vector.main.loop.iter.check684, %vec.epilog.iter.check700
  %vec.epilog.resume.val696 = phi i64 [ %n.vec687, %vec.epilog.iter.check700 ], [ 0, %vector.main.loop.iter.check684 ]
  %n.vec703 = and i64 %i.xu, -8                   ; 4 uses
  %i.yf = add i64 %.0.lcssa.i.i311, %n.vec703
  %i.yg = getelementptr i8, ptr %.039.lcssa.i.i310, i64 %n.vec703 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xj, i64 %.0.lcssa.i.i311
  br label %vec.epilog.vector.body704

vec.epilog.vector.body704:                        ; preds = %vec.epilog.vector.body704, %vec.epilog.ph702
  %index705 = phi i64 [ %vec.epilog.resume.val696, %vec.epilog.ph702 ], [ %index.next708, %vec.epilog.vector.body704 ] ; 3 uses
  %next.gep706 = getelementptr i8, ptr %.039.lcssa.i.i310, i64 %index705
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 %index705
  %wide.load707 = load <8 x i8>, ptr %i.yi, align 1, !tbaa !41
  store <8 x i8> %wide.load707, ptr %next.gep706, align 1, !tbaa !41
  %index.next708 = add nuw i64 %index705, 8       ; 2 uses
  %i.yj = icmp eq i64 %index.next708, %n.vec703
  br i1 %i.yj, label %vec.epilog.middle.block709, label %vec.epilog.vector.body704, !llvm.loop !94

vec.epilog.middle.block709:                       ; preds = %vec.epilog.vector.body704
  %cmp.n710 = icmp eq i64 %i.xu, %n.vec703
  br i1 %cmp.n710, label %uriFixPercentEncodingEngineA.exit.i312, label %.lr.ph49.i.i314.preheader

.lr.ph49.i.i314.preheader:                        ; preds = %iter.check698, %vector.memcheck680, %vec.epilog.iter.check700, %vec.epilog.middle.block709
  %.248.i.i315.ph = phi i64 [ %.0.lcssa.i.i311, %iter.check698 ], [ %.0.lcssa.i.i311, %vector.memcheck680 ], [ %i.xy, %vec.epilog.iter.check700 ], [ %i.yf, %vec.epilog.middle.block709 ]
  %.347.i.i316.ph = phi ptr [ %.039.lcssa.i.i310, %iter.check698 ], [ %.039.lcssa.i.i310, %vector.memcheck680 ], [ %i.xz, %vec.epilog.iter.check700 ], [ %i.yg, %vec.epilog.middle.block709 ]
  br label %.lr.ph49.i.i314

.lr.ph.i.i317:                                    ; preds = %bb.da, %bb.df
  %i.yk = phi i64 [ %i.zg, %bb.df ], [ 2, %bb.da ] ; 3 uses
  %.045.i.i318 = phi i64 [ %i.zf, %bb.df ], [ 0, %bb.da ] ; 2 uses
  %.03944.i.i319 = phi ptr [ %.241.i.i321, %bb.df ], [ %i.xj, %bb.da ] ; 7 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xj, i64 %.045.i.i318 ; 2 uses
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !41  ; 2 uses
  %.not.i.i320 = icmp eq i8 %i.ym, 37
  br i1 %.not.i.i320, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %.lr.ph.i.i317
  store i8 %i.ym, ptr %.03944.i.i319, align 1, !tbaa !41
  %i.yn = getelementptr inbounds nuw i8, ptr %.03944.i.i319, i64 1
  br label %bb.df

bb.dc:                                            ; preds = %.lr.ph.i.i317
  %i.yo = getelementptr i8, ptr %i.yl, i64 1
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !41
  %i.yq = getelementptr inbounds nuw i8, ptr %i.xj, i64 %i.yk
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !41
  %i.ys = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.yp) #6
  %i.yt = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.yr) #6
  %i.yu = zext i8 %i.ys to i32                    ; 2 uses
  %i.yv = shl nuw nsw i32 %i.yu, 4
  %i.yw = zext i8 %i.yt to i32                    ; 2 uses
  %i.yx = add nuw nsw i32 %i.yv, %i.yw            ; 2 uses
  %i.yy = tail call i32 @uriIsUnreserved(i32 noundef %i.yx) #6
  %.not43.i.i323 = icmp eq i32 %i.yy, 0
  %i.yz = getelementptr inbounds nuw i8, ptr %.03944.i.i319, i64 1 ; 2 uses
  br i1 %.not43.i.i323, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.za = trunc i32 %i.yx to i8
  store i8 %i.za, ptr %.03944.i.i319, align 1, !tbaa !41
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  store i8 37, ptr %.03944.i.i319, align 1, !tbaa !41
  %i.zb = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.yu, i32 noundef 1) #6
  store i8 %i.zb, ptr %i.yz, align 1, !tbaa !41
  %i.zc = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.yw, i32 noundef 1) #6
  %i.zd = getelementptr inbounds nuw i8, ptr %.03944.i.i319, i64 2
  store i8 %i.zc, ptr %i.zd, align 1, !tbaa !41
  %i.ze = getelementptr inbounds nuw i8, ptr %.03944.i.i319, i64 3
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.db
  %.241.i.i321 = phi ptr [ %i.yn, %bb.db ], [ %i.yz, %bb.dd ], [ %i.ze, %bb.de ] ; 2 uses
  %.1.i.i322 = phi i64 [ %.045.i.i318, %bb.db ], [ %i.yk, %bb.dd ], [ %i.yk, %bb.de ] ; 2 uses
  %i.zf = add i64 %.1.i.i322, 1                   ; 2 uses
  %i.zg = add i64 %.1.i.i322, 3                   ; 2 uses
  %i.zh = icmp ult i64 %i.zg, %i.xr
  br i1 %i.zh, label %.lr.ph.i.i317, label %.preheader.i.i309, !llvm.loop !0

.lr.ph49.i.i314:                                  ; preds = %.lr.ph49.i.i314.preheader, %.lr.ph49.i.i314
  %.248.i.i315 = phi i64 [ %i.zl, %.lr.ph49.i.i314 ], [ %.248.i.i315.ph, %.lr.ph49.i.i314.preheader ] ; 2 uses
  %.347.i.i316 = phi ptr [ %i.zk, %.lr.ph49.i.i314 ], [ %.347.i.i316.ph, %.lr.ph49.i.i314.preheader ] ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.xj, i64 %.248.i.i315
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !41
  store i8 %i.zj, ptr %.347.i.i316, align 1, !tbaa !41
  %i.zk = getelementptr inbounds nuw i8, ptr %.347.i.i316, i64 1 ; 2 uses
  %i.zl = add nuw i64 %.248.i.i315, 1             ; 2 uses
  %i.zm = icmp ult i64 %i.zl, %i.xr
  br i1 %i.zm, label %.lr.ph49.i.i314, label %uriFixPercentEncodingEngineA.exit.i312, !llvm.loop !95

uriFixPercentEncodingEngineA.exit.i312:           ; preds = %.lr.ph49.i.i314, %middle.block694, %vec.epilog.middle.block709, %.preheader.i.i309
  %.3.lcssa.i.i313 = phi ptr [ %.039.lcssa.i.i310, %.preheader.i.i309 ], [ %i.yg, %vec.epilog.middle.block709 ], [ %i.xz, %middle.block694 ], [ %i.zk, %.lr.ph49.i.i314 ]
  store ptr %.3.lcssa.i.i313, ptr %i.xm, align 8, !tbaa !43
  br label %uriFixPercentEncodingInplaceA.exit324

bb.dg:                                            ; preds = %bb.cy
  %i.zn = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.xi, ptr noundef %i.xm, ptr noundef %3)
  %.not222 = icmp eq i32 %i.zn, 0
  %i.zo = load i32, ptr %i.a, align 4, !tbaa !40  ; 2 uses
  br i1 %.not222, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  tail call void @uriPreventLeakageA(ptr noundef nonnull %0, i32 noundef %i.zo, ptr noundef %3)
  br label %bb.dz

bb.di:                                            ; preds = %bb.dg
  %i.zp = or i32 %i.zo, 16
  store i32 %i.zp, ptr %i.a, align 4, !tbaa !40
  br label %uriFixPercentEncodingInplaceA.exit324

uriFixPercentEncodingInplaceA.exit324:            ; preds = %uriFixPercentEncodingEngineA.exit.i312, %bb.cz, %bb.di, %bb.cx, %.thread362
  %i.zq = and i32 %1, 32
  %.not223 = icmp eq i32 %i.zq, 0
  br i1 %.not223, label %uriFixPercentEncodingInplaceA.exit340, label %bb.dj

bb.dj:                                            ; preds = %uriFixPercentEncodingInplaceA.exit324
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !38 ; 9 uses
  %.not224 = icmp eq ptr %i.zs, null
  br i1 %.not224, label %uriFixPercentEncodingInplaceA.exit340, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !42
  %.not225 = icmp eq i32 %i.zu, 0
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  br i1 %.not225, label %bb.ds, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !43 ; 2 uses
  %i.zx = icmp eq ptr %i.zw, null
  br i1 %i.zx, label %uriFixPercentEncodingInplaceA.exit340, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.zy = ptrtoint ptr %i.zw to i64
  %i.zz = ptrtoint ptr %i.zs to i64               ; 2 uses
  %i.aaa = sub i64 %i.zy, %i.zz                   ; 5 uses
  %i.aab = icmp ugt i64 %i.aaa, 2
  br i1 %i.aab, label %.lr.ph.i.i333, label %.preheader.i.i325

.preheader.i.i325:                                ; preds = %bb.dr, %bb.dm
  %.039.lcssa.i.i326 = phi ptr [ %i.zs, %bb.dm ], [ %.241.i.i337, %bb.dr ] ; 8 uses
  %.0.lcssa.i.i327 = phi i64 [ 0, %bb.dm ], [ %i.abo, %bb.dr ] ; 9 uses
  %.039.lcssa.i.i326714 = ptrtoaddr ptr %.039.lcssa.i.i326 to i64
  %i.aac = icmp ult i64 %.0.lcssa.i.i327, %i.aaa
  br i1 %i.aac, label %iter.check731, label %uriFixPercentEncodingEngineA.exit.i328

iter.check731:                                    ; preds = %.preheader.i.i325
  %i.aad = sub nuw i64 %i.aaa, %.0.lcssa.i.i327   ; 7 uses
  %min.iters.check716 = icmp ult i64 %i.aad, 8
  br i1 %min.iters.check716, label %.lr.ph49.i.i330.preheader, label %vector.memcheck713

vector.memcheck713:                               ; preds = %iter.check731
  %i.aae = add i64 %.0.lcssa.i.i327, %i.zz
  %i.aaf = sub i64 %i.aae, %.039.lcssa.i.i326714
  %diff.check715 = icmp ugt i64 %i.aaf, -32
  br i1 %diff.check715, label %.lr.ph49.i.i330.preheader, label %vector.main.loop.iter.check717

vector.main.loop.iter.check717:                   ; preds = %vector.memcheck713
  %min.iters.check718 = icmp ult i64 %i.aad, 32
  br i1 %min.iters.check718, label %vec.epilog.ph735, label %vector.ph719

vector.ph719:                                     ; preds = %vector.main.loop.iter.check717
  %i.aag = and i64 %i.aad, 24
  %n.vec720 = and i64 %i.aad, -32                 ; 5 uses
  %i.aah = add i64 %.0.lcssa.i.i327, %n.vec720
  %i.aai = getelementptr i8, ptr %.039.lcssa.i.i326, i64 %n.vec720 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zs, i64 %.0.lcssa.i.i327
  br label %vector.body721

vector.body721:                                   ; preds = %vector.ph719, %vector.body721
  %index722 = phi i64 [ 0, %vector.ph719 ], [ %index.next726, %vector.body721 ] ; 3 uses
  %next.gep723 = getelementptr i8, ptr %.039.lcssa.i.i326, i64 %index722 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %index722 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %wide.load724 = load <16 x i8>, ptr %i.aak, align 1, !tbaa !41
  %wide.load725 = load <16 x i8>, ptr %i.aal, align 1, !tbaa !41
  %i.aam = getelementptr i8, ptr %next.gep723, i64 16
  store <16 x i8> %wide.load724, ptr %next.gep723, align 1, !tbaa !41
  store <16 x i8> %wide.load725, ptr %i.aam, align 1, !tbaa !41
  %index.next726 = add nuw i64 %index722, 32      ; 2 uses
  %i.aan = icmp eq i64 %index.next726, %n.vec720
  br i1 %i.aan, label %middle.block727, label %vector.body721, !llvm.loop !96

middle.block727:                                  ; preds = %vector.body721
  %cmp.n728 = icmp eq i64 %i.aad, %n.vec720
  br i1 %cmp.n728, label %uriFixPercentEncodingEngineA.exit.i328, label %vec.epilog.iter.check733

vec.epilog.iter.check733:                         ; preds = %middle.block727
  %min.epilog.iters.check734 = icmp eq i64 %i.aag, 0
  br i1 %min.epilog.iters.check734, label %.lr.ph49.i.i330.preheader, label %vec.epilog.ph735, !prof !47

vec.epilog.ph735:                                 ; preds = %vector.main.loop.iter.check717, %vec.epilog.iter.check733
  %vec.epilog.resume.val729 = phi i64 [ %n.vec720, %vec.epilog.iter.check733 ], [ 0, %vector.main.loop.iter.check717 ]
  %n.vec736 = and i64 %i.aad, -8                  ; 4 uses
  %i.aao = add i64 %.0.lcssa.i.i327, %n.vec736
  %i.aap = getelementptr i8, ptr %.039.lcssa.i.i326, i64 %n.vec736 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.zs, i64 %.0.lcssa.i.i327
  br label %vec.epilog.vector.body737

vec.epilog.vector.body737:                        ; preds = %vec.epilog.vector.body737, %vec.epilog.ph735
  %index738 = phi i64 [ %vec.epilog.resume.val729, %vec.epilog.ph735 ], [ %index.next741, %vec.epilog.vector.body737 ] ; 3 uses
  %next.gep739 = getelementptr i8, ptr %.039.lcssa.i.i326, i64 %index738
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %index738
  %wide.load740 = load <8 x i8>, ptr %i.aar, align 1, !tbaa !41
  store <8 x i8> %wide.load740, ptr %next.gep739, align 1, !tbaa !41
  %index.next741 = add nuw i64 %index738, 8       ; 2 uses
  %i.aas = icmp eq i64 %index.next741, %n.vec736
  br i1 %i.aas, label %vec.epilog.middle.block742, label %vec.epilog.vector.body737, !llvm.loop !97

vec.epilog.middle.block742:                       ; preds = %vec.epilog.vector.body737
  %cmp.n743 = icmp eq i64 %i.aad, %n.vec736
  br i1 %cmp.n743, label %uriFixPercentEncodingEngineA.exit.i328, label %.lr.ph49.i.i330.preheader

.lr.ph49.i.i330.preheader:                        ; preds = %iter.check731, %vector.memcheck713, %vec.epilog.iter.check733, %vec.epilog.middle.block742
  %.248.i.i331.ph = phi i64 [ %.0.lcssa.i.i327, %iter.check731 ], [ %.0.lcssa.i.i327, %vector.memcheck713 ], [ %i.aah, %vec.epilog.iter.check733 ], [ %i.aao, %vec.epilog.middle.block742 ]
  %.347.i.i332.ph = phi ptr [ %.039.lcssa.i.i326, %iter.check731 ], [ %.039.lcssa.i.i326, %vector.memcheck713 ], [ %i.aai, %vec.epilog.iter.check733 ], [ %i.aap, %vec.epilog.middle.block742 ]
  br label %.lr.ph49.i.i330

.lr.ph.i.i333:                                    ; preds = %bb.dm, %bb.dr
  %i.aat = phi i64 [ %i.abp, %bb.dr ], [ 2, %bb.dm ] ; 3 uses
  %.045.i.i334 = phi i64 [ %i.abo, %bb.dr ], [ 0, %bb.dm ] ; 2 uses
  %.03944.i.i335 = phi ptr [ %.241.i.i337, %bb.dr ], [ %i.zs, %bb.dm ] ; 7 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.zs, i64 %.045.i.i334 ; 2 uses
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !41 ; 2 uses
  %.not.i.i336 = icmp eq i8 %i.aav, 37
  br i1 %.not.i.i336, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.i.i333
  store i8 %i.aav, ptr %.03944.i.i335, align 1, !tbaa !41
  %i.aaw = getelementptr inbounds nuw i8, ptr %.03944.i.i335, i64 1
  br label %bb.dr

bb.do:                                            ; preds = %.lr.ph.i.i333
  %i.aax = getelementptr i8, ptr %i.aau, i64 1
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !41
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.aat
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !41
  %i.abb = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.aay) #6
  %i.abc = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.aba) #6
  %i.abd = zext i8 %i.abb to i32                  ; 2 uses
  %i.abe = shl nuw nsw i32 %i.abd, 4
  %i.abf = zext i8 %i.abc to i32                  ; 2 uses
  %i.abg = add nuw nsw i32 %i.abe, %i.abf         ; 2 uses
  %i.abh = tail call i32 @uriIsUnreserved(i32 noundef %i.abg) #6
  %.not43.i.i339 = icmp eq i32 %i.abh, 0
  %i.abi = getelementptr inbounds nuw i8, ptr %.03944.i.i335, i64 1 ; 2 uses
  br i1 %.not43.i.i339, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.abj = trunc i32 %i.abg to i8
  store i8 %i.abj, ptr %.03944.i.i335, align 1, !tbaa !41
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  store i8 37, ptr %.03944.i.i335, align 1, !tbaa !41
  %i.abk = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.abd, i32 noundef 1) #6
  store i8 %i.abk, ptr %i.abi, align 1, !tbaa !41
  %i.abl = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.abf, i32 noundef 1) #6
  %i.abm = getelementptr inbounds nuw i8, ptr %.03944.i.i335, i64 2
  store i8 %i.abl, ptr %i.abm, align 1, !tbaa !41
  %i.abn = getelementptr inbounds nuw i8, ptr %.03944.i.i335, i64 3
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.dn
  %.241.i.i337 = phi ptr [ %i.aaw, %bb.dn ], [ %i.abi, %bb.dp ], [ %i.abn, %bb.dq ] ; 2 uses
  %.1.i.i338 = phi i64 [ %.045.i.i334, %bb.dn ], [ %i.aat, %bb.dp ], [ %i.aat, %bb.dq ] ; 2 uses
  %i.abo = add i64 %.1.i.i338, 1                  ; 2 uses
  %i.abp = add i64 %.1.i.i338, 3                  ; 2 uses
  %i.abq = icmp ult i64 %i.abp, %i.aaa
  br i1 %i.abq, label %.lr.ph.i.i333, label %.preheader.i.i325, !llvm.loop !0

.lr.ph49.i.i330:                                  ; preds = %.lr.ph49.i.i330.preheader, %.lr.ph49.i.i330
  %.248.i.i331 = phi i64 [ %i.abu, %.lr.ph49.i.i330 ], [ %.248.i.i331.ph, %.lr.ph49.i.i330.preheader ] ; 2 uses
  %.347.i.i332 = phi ptr [ %i.abt, %.lr.ph49.i.i330 ], [ %.347.i.i332.ph, %.lr.ph49.i.i330.preheader ] ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.zs, i64 %.248.i.i331
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !41
  store i8 %i.abs, ptr %.347.i.i332, align 1, !tbaa !41
  %i.abt = getelementptr inbounds nuw i8, ptr %.347.i.i332, i64 1 ; 2 uses
  %i.abu = add nuw i64 %.248.i.i331, 1            ; 2 uses
  %i.abv = icmp ult i64 %i.abu, %i.aaa
  br i1 %i.abv, label %.lr.ph49.i.i330, label %uriFixPercentEncodingEngineA.exit.i328, !llvm.loop !98

uriFixPercentEncodingEngineA.exit.i328:           ; preds = %.lr.ph49.i.i330, %middle.block727, %vec.epilog.middle.block742, %.preheader.i.i325
  %.3.lcssa.i.i329 = phi ptr [ %.039.lcssa.i.i326, %.preheader.i.i325 ], [ %i.aap, %vec.epilog.middle.block742 ], [ %i.aai, %middle.block727 ], [ %i.abt, %.lr.ph49.i.i330 ]
  store ptr %.3.lcssa.i.i329, ptr %i.zv, align 8, !tbaa !43
  br label %uriFixPercentEncodingInplaceA.exit340

bb.ds:                                            ; preds = %bb.dk
  %i.abw = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.zr, ptr noundef %i.zv, ptr noundef %3)
  %.not226 = icmp eq i32 %i.abw, 0
  %i.abx = load i32, ptr %i.a, align 4, !tbaa !40 ; 2 uses
  br i1 %.not226, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  tail call void @uriPreventLeakageA(ptr noundef nonnull %0, i32 noundef %i.abx, ptr noundef %3)
  br label %bb.dz

bb.du:                                            ; preds = %bb.ds
  %i.aby = or i32 %i.abx, 32
  store i32 %i.aby, ptr %i.a, align 4, !tbaa !40
  br label %uriFixPercentEncodingInplaceA.exit340

uriFixPercentEncodingInplaceA.exit340:            ; preds = %uriFixPercentEncodingEngineA.exit.i328, %bb.dl, %bb.cw, %uriFixPercentEncodingInplaceA.exit324, %bb.dj, %bb.du
  br i1 %.not231, label %bb.dv, label %bb.dz

bb.dv:                                            ; preds = %uriFixPercentEncodingInplaceA.exit340
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !42
  %.not229 = icmp eq i32 %i.aca, 0
  br i1 %.not229, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  %i.acb = call fastcc i32 @uriMakeOwnerEngineA(ptr noundef %0, ptr noundef %i.a, ptr noundef %3)
  %.not230 = icmp eq i32 %i.acb, 0
  br i1 %.not230, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.acc = load i32, ptr %i.a, align 4, !tbaa !40
  tail call void @uriPreventLeakageA(ptr noundef nonnull %0, i32 noundef %i.acc, ptr noundef %3)
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  store i32 1, ptr %i.abz, align 4, !tbaa !42
  br label %bb.dz

bb.dz:                                            ; preds = %uriFixPercentEncodingInplaceA.exit340.thread, %uriFixPercentEncodingInplaceA.exit340, %bb.dv, %bb.dy, %bb.ck, %bb.cm, %bb.e, %bb.b, %bb.dx, %bb.dt, %bb.dh, %bb.bw, %bb.am, %bb.ag, %bb.x, %bb.c
  %.1173 = phi i32 [ 0, %bb.c ], [ 2, %bb.b ], [ 3, %bb.ck ], [ 3, %bb.dx ], [ 3, %bb.dt ], [ 3, %bb.dh ], [ 0, %bb.e ], [ 3, %bb.bw ], [ 3, %bb.ag ], [ 3, %bb.am ], [ 3, %bb.x ], [ 3, %bb.cm ], [ 0, %bb.dy ], [ 0, %bb.dv ], [ 0, %uriFixPercentEncodingInplaceA.exit340 ], [ 0, %uriFixPercentEncodingInplaceA.exit340.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.1173
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 4) i32 @uriNormalizeSyntaxExA(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @uriNormalizeSyntaxEngineA(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef nonnull @defaultMemoryManager)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 11) i32 @uriNormalizeSyntaxExMmA(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %2) #6
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.c, label %bb.d
end_hunk_1
begin_hunk_2_@uriMakeOwnerEngineW:bb.a
  br i1 %i.be, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bh = tail call i32 @uriCopyRangeW(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.ba, ptr noundef %2) #6
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %uriMakeRangeOwnerW.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = load i32, ptr %1, align 4, !tbaa !40
  %i.bk = or i32 %i.bj, 4                         ; 2 uses
  store i32 %i.bk, ptr %1, align 4, !tbaa !40
  %i.bl = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !71
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.bm = phi i32 [ %i.bk, %bb.y ], [ %i.ax, %bb.w ]
  %i.bn = phi <2 x ptr> [ %i.bl, %bb.y ], [ %i.bg, %bb.w ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x ptr> %i.bn, ptr %i.bo, align 8, !tbaa !71
  br label %bb.ac

bb.aa:                                            ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !59
  %.not67 = icmp eq ptr %i.bq, null
  br i1 %.not67, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = tail call fastcc i32 @uriMakeRangeOwnerW(ptr noundef %1, i32 noundef 4, ptr noundef %i.bp, ptr noundef %2)
  %.not68 = icmp eq i32 %i.br, 0
  br i1 %.not68, label %uriMakeRangeOwnerW.exit, label %._crit_edge119

._crit_edge119:                                   ; preds = %bb.ab
  %.pre120 = load i32, ptr %1, align 4, !tbaa !40
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge119, %bb.z, %bb.aa, %bb.u
  %i.bs = phi i32 [ %.pre120, %._crit_edge119 ], [ %i.bm, %bb.z ], [ %i.ax, %bb.aa ], [ %i.ax, %bb.u ] ; 2 uses
  %i.bt = and i32 %i.bs, 8
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.preheader109, label %bb.am

.preheader109:                                    ; preds = %bb.ac
  %.not70111 = icmp eq ptr %i.b, null
  br i1 %.not70111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader109, %bb.al
  %.060112 = phi ptr [ %i.cq, %bb.al ], [ %i.b, %.preheader109 ] ; 8 uses
  %i.bv = load ptr, ptr %.060112, align 8, !tbaa !73 ; 2 uses
  %.not.i90 = icmp eq ptr %i.bv, null
  br i1 %.not.i90, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph
  %i.bw = getelementptr inbounds nuw i8, ptr %.060112, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !74
  %i.by = icmp ugt ptr %i.bx, %i.bv
  br i1 %i.by, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.bz = tail call i32 @uriCopyRangeW(ptr noundef nonnull %.060112, ptr noundef nonnull %.060112, ptr noundef %2) #6
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %uriMakeRangeOwnerW.exit91, label %bb.al

uriMakeRangeOwnerW.exit91:                        ; preds = %bb.ae
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %.not73113 = icmp eq ptr %i.cb, %.060112
  br i1 %.not73113, label %.preheader, label %.lr.ph115

.lr.ph115:                                        ; preds = %uriMakeRangeOwnerW.exit91
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br label %bb.af

.preheader:                                       ; preds = %bb.ai, %uriMakeRangeOwnerW.exit91
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.aj

bb.af:                                            ; preds = %.lr.ph115, %bb.ai
  %.059114 = phi ptr [ %i.cb, %.lr.ph115 ], [ %i.cf, %bb.ai ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.059114, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !63 ; 2 uses
  %i.cg = load ptr, ptr %.059114, align 8, !tbaa !65 ; 3 uses
  %.not75 = icmp eq ptr %i.cg, null
  br i1 %.not75, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ch = getelementptr inbounds nuw i8, ptr %.059114, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !64
  %i.cj = icmp ugt ptr %i.ci, %i.cg
  br i1 %i.cj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ck = load ptr, ptr %i.cc, align 8, !tbaa !16
  tail call void %i.ck(ptr noundef %2, ptr noundef nonnull %i.cg) #6
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !16
  tail call void %i.cl(ptr noundef %2, ptr noundef nonnull %.059114) #6
  %.not73 = icmp eq ptr %i.cf, %.060112
  br i1 %.not73, label %.preheader, label %bb.af, !llvm.loop !141

bb.aj:                                            ; preds = %.preheader, %bb.aj
  %.1116 = phi ptr [ %.060112, %.preheader ], [ %i.cn, %bb.aj ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.1116, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !63 ; 2 uses
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !16
  tail call void %i.co(ptr noundef %2, ptr noundef nonnull %.1116) #6
  %.not74 = icmp eq ptr %i.cn, null
  br i1 %.not74, label %bb.ak, label %bb.aj, !llvm.loop !142

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %uriMakeRangeOwnerW.exit

bb.al:                                            ; preds = %bb.ae, %bb.ad, %.lr.ph
  %i.cp = getelementptr inbounds nuw i8, ptr %.060112, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !63 ; 2 uses
  %.not70 = icmp eq ptr %i.cq, null
  br i1 %.not70, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !143

._crit_edge.loopexit:                             ; preds = %bb.al
  %.pre121 = load i32, ptr %1, align 4, !tbaa !40
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader109
  %i.cr = phi i32 [ %.pre121, %._crit_edge.loopexit ], [ %i.bs, %.preheader109 ]
  %i.cs = or i32 %i.cr, 8
  store i32 %i.cs, ptr %1, align 4, !tbaa !40
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge, %bb.ac
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !73 ; 2 uses
  %.not.i93 = icmp eq ptr %i.cu, null
  br i1 %.not.i93, label %uriMakeRangeOwnerW.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !74
  %i.cx = icmp ugt ptr %i.cw, %i.cu
  br i1 %i.cx, label %bb.ao, label %uriMakeRangeOwnerW.exit

bb.ao:                                            ; preds = %bb.an
  %i.cy = tail call i32 @uriCopyRangeW(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.ct, ptr noundef %2) #6
  %i.cz = icmp ne i32 %i.cy, 0
  %spec.select = zext i1 %i.cz to i32
  br label %uriMakeRangeOwnerW.exit

uriMakeRangeOwnerW.exit:                          ; preds = %bb.ao, %bb.am, %bb.an, %bb.x, %bb.s, %bb.n, %bb.i, %bb.d, %bb.ab, %bb.ak
  %.0 = phi i32 [ 0, %bb.ak ], [ 0, %bb.ab ], [ 0, %bb.x ], [ 0, %bb.d ], [ 0, %bb.s ], [ 0, %bb.n ], [ 0, %bb.i ], [ %spec.select, %bb.ao ], [ 1, %bb.am ], [ 1, %bb.an ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 4) i32 @uriMakeOwnerW(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !40
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %uriMakeOwnerMmW.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !70
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %uriMakeOwnerMmW.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call fastcc i32 @uriMakeOwnerEngineW(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull @defaultMemoryManager)
  %.not12.i = icmp eq i32 %i.f, 0
  br i1 %.not12.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.a, align 4, !tbaa !40
  tail call void @uriPreventLeakageW(ptr noundef nonnull %0, i32 noundef %i.g, ptr noundef nonnull @defaultMemoryManager)
  br label %uriMakeOwnerMmW.exit

bb.e:                                             ; preds = %bb.c
  store i32 1, ptr %i.c, align 4, !tbaa !70
  br label %uriMakeOwnerMmW.exit

uriMakeOwnerMmW.exit:                             ; preds = %bb.a, %bb.b, %bb.d, %bb.e
  %.09.i = phi i32 [ 0, %bb.b ], [ 2, %bb.a ], [ 0, %bb.e ], [ 3, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.09.i
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @uriFixPercentEncodingInplaceA(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = icmp ugt i64 %i.f, 2
  br i1 %i.g, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.c
  %.039.lcssa.i = phi ptr [ %0, %bb.c ], [ %.241.i, %bb.h ] ; 8 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.at, %bb.h ] ; 9 uses
  %.039.lcssa.i18 = ptrtoaddr ptr %.039.lcssa.i to i64
  %i.h = icmp ult i64 %.0.lcssa.i, %i.f
  br i1 %i.h, label %iter.check, label %uriFixPercentEncodingEngineA.exit

iter.check:                                       ; preds = %.preheader.i
  %i.i = sub nuw i64 %i.f, %.0.lcssa.i            ; 7 uses
  %min.iters.check = icmp ult i64 %i.i, 8
  br i1 %min.iters.check, label %.lr.ph49.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.j = add i64 %.0.lcssa.i, %i.e
  %i.k = sub i64 %i.j, %.039.lcssa.i18
  %diff.check = icmp ugt i64 %i.k, -32
  br i1 %diff.check, label %.lr.ph49.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check19 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.i, 24
  %n.vec = and i64 %i.i, -32                      ; 5 uses
  %i.m = add i64 %.0.lcssa.i, %n.vec
  %i.n = getelementptr i8, ptr %.039.lcssa.i, i64 %n.vec ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.039.lcssa.i, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <16 x i8>, ptr %i.p, align 1, !tbaa !41
  %wide.load20 = load <16 x i8>, ptr %i.q, align 1, !tbaa !41
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !41
  store <16 x i8> %wide.load20, ptr %i.r, align 1, !tbaa !41
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %uriFixPercentEncodingEngineA.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %.lr.ph49.i.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.i, -8                     ; 4 uses
  %i.t = add i64 %.0.lcssa.i, %n.vec22
  %i.u = getelementptr i8, ptr %.039.lcssa.i, i64 %n.vec22 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %next.gep24 = getelementptr i8, ptr %.039.lcssa.i, i64 %index23
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %index23
  %wide.load25 = load <8 x i8>, ptr %i.w, align 1, !tbaa !41
  store <8 x i8> %wide.load25, ptr %next.gep24, align 1, !tbaa !41
  %index.next26 = add nuw i64 %index23, 8         ; 2 uses
  %i.x = icmp eq i64 %index.next26, %n.vec22
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !145

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.i, %n.vec22
  br i1 %cmp.n27, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i.preheader

.lr.ph49.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.248.i.ph = phi i64 [ %.0.lcssa.i, %iter.check ], [ %.0.lcssa.i, %vector.memcheck ], [ %i.m, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  %.347.i.ph = phi ptr [ %.039.lcssa.i, %iter.check ], [ %.039.lcssa.i, %vector.memcheck ], [ %i.n, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %.lr.ph49.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.h
  %i.y = phi i64 [ %i.au, %bb.h ], [ 2, %bb.c ]   ; 3 uses
  %.045.i = phi i64 [ %i.at, %bb.h ], [ 0, %bb.c ] ; 2 uses
  %.03944.i = phi ptr [ %.241.i, %bb.h ], [ %0, %bb.c ] ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.045.i ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i8 %i.aa, 37
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  store i8 %i.aa, ptr %.03944.i, align 1, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %.03944.i, i64 1
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr i8, ptr %i.z, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !41
  %i.ag = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.ad) #6
  %i.ah = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.af) #6
  %i.ai = zext i8 %i.ag to i32                    ; 2 uses
  %i.aj = shl nuw nsw i32 %i.ai, 4
  %i.ak = zext i8 %i.ah to i32                    ; 2 uses
  %i.al = add nuw nsw i32 %i.aj, %i.ak            ; 2 uses
  %i.am = tail call i32 @uriIsUnreserved(i32 noundef %i.al) #6
  %.not43.i = icmp eq i32 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %.03944.i, i64 1 ; 2 uses
  br i1 %.not43.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = trunc i32 %i.al to i8
  store i8 %i.ao, ptr %.03944.i, align 1, !tbaa !41
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i8 37, ptr %.03944.i, align 1, !tbaa !41
  %i.ap = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.ai, i32 noundef 1) #6
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !41
  %i.aq = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.ak, i32 noundef 1) #6
  %i.ar = getelementptr inbounds nuw i8, ptr %.03944.i, i64 2
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %.03944.i, i64 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.241.i = phi ptr [ %i.ab, %bb.d ], [ %i.an, %bb.f ], [ %i.as, %bb.g ] ; 2 uses
  %.1.i = phi i64 [ %.045.i, %bb.d ], [ %i.y, %bb.f ], [ %i.y, %bb.g ] ; 2 uses
  %i.at = add i64 %.1.i, 1                        ; 2 uses
  %i.au = add i64 %.1.i, 3                        ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.f
  br i1 %i.av, label %.lr.ph.i, label %.preheader.i, !llvm.loop !0

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.preheader, %.lr.ph49.i
  %.248.i = phi i64 [ %i.az, %.lr.ph49.i ], [ %.248.i.ph, %.lr.ph49.i.preheader ] ; 2 uses
  %.347.i = phi ptr [ %i.ay, %.lr.ph49.i ], [ %.347.i.ph, %.lr.ph49.i.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.248.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !41
  store i8 %i.ax, ptr %.347.i, align 1, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %.347.i, i64 1 ; 2 uses
  %i.az = add nuw i64 %.248.i, 1                  ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.f
  br i1 %i.ba, label %.lr.ph49.i, label %uriFixPercentEncodingEngineA.exit, !llvm.loop !146

uriFixPercentEncodingEngineA.exit:                ; preds = %.lr.ph49.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.039.lcssa.i, %.preheader.i ], [ %i.u, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.ay, %.lr.ph49.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %uriFixPercentEncodingEngineA.exit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriFixPercentEncodingMallocA(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !43     ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %i.c, %i.a
  br i1 %i.e, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = load ptr, ptr %2, align 8, !tbaa !46
  %i.j = tail call ptr %i.i(ptr noundef nonnull %2, i64 noundef %i.h) #6 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !43     ; 6 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !43
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 5 uses
  %i.q = icmp ugt i64 %i.p, 2
  br i1 %i.q, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j, %bb.e
  %.039.lcssa.i = phi ptr [ %i.j, %bb.e ], [ %.241.i, %bb.j ] ; 8 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.bd, %bb.j ] ; 9 uses
  %.039.lcssa.i35 = ptrtoaddr ptr %.039.lcssa.i to i64
  %i.r = icmp ult i64 %.0.lcssa.i, %i.p
  br i1 %i.r, label %iter.check, label %uriFixPercentEncodingEngineA.exit

iter.check:                                       ; preds = %.preheader.i
  %i.s = sub nuw i64 %i.p, %.0.lcssa.i            ; 7 uses
  %min.iters.check = icmp ult i64 %i.s, 8
  br i1 %min.iters.check, label %.lr.ph49.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add i64 %.0.lcssa.i, %i.o
  %i.u = sub i64 %i.t, %.039.lcssa.i35
  %diff.check = icmp ugt i64 %i.u, -32
  br i1 %diff.check, label %.lr.ph49.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check36 = icmp ult i64 %i.s, 32
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.s, 24
  %n.vec = and i64 %i.s, -32                      ; 5 uses
  %i.w = add i64 %.0.lcssa.i, %n.vec
  %i.x = getelementptr i8, ptr %.039.lcssa.i, i64 %n.vec ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.039.lcssa.i, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <16 x i8>, ptr %i.z, align 1, !tbaa !41
  %wide.load37 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !41
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !41
  store <16 x i8> %wide.load37, ptr %i.ab, align 1, !tbaa !41
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %uriFixPercentEncodingEngineA.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph49.i.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.s, -8                     ; 4 uses
  %i.ad = add i64 %.0.lcssa.i, %n.vec39
  %i.ae = getelementptr i8, ptr %.039.lcssa.i, i64 %n.vec39 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0.lcssa.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 3 uses
  %next.gep41 = getelementptr i8, ptr %.039.lcssa.i, i64 %index40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %index40
  %wide.load42 = load <8 x i8>, ptr %i.ag, align 1, !tbaa !41
  store <8 x i8> %wide.load42, ptr %next.gep41, align 1, !tbaa !41
  %index.next43 = add nuw i64 %index40, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next43, %n.vec39
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !148

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n44 = icmp eq i64 %i.s, %n.vec39
  br i1 %cmp.n44, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i.preheader

.lr.ph49.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.248.i.ph = phi i64 [ %.0.lcssa.i, %iter.check ], [ %.0.lcssa.i, %vector.memcheck ], [ %i.w, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  %.347.i.ph = phi ptr [ %.039.lcssa.i, %iter.check ], [ %.039.lcssa.i, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %.lr.ph49.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.j
  %i.ai = phi i64 [ %i.be, %bb.j ], [ 2, %bb.e ]  ; 3 uses
  %.045.i = phi i64 [ %i.bd, %bb.j ], [ 0, %bb.e ] ; 2 uses
  %.03944.i = phi ptr [ %.241.i, %bb.j ], [ %i.j, %bb.e ] ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 %.045.i ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !41  ; 2 uses
  %.not.i = icmp eq i8 %i.ak, 37
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  store i8 %i.ak, ptr %.03944.i, align 1, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %.03944.i, i64 1
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph.i
  %i.am = getelementptr i8, ptr %i.aj, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ai
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !41
  %i.aq = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.an) #6
  %i.ar = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.ap) #6
  %i.as = zext i8 %i.aq to i32                    ; 2 uses
  %i.at = shl nuw nsw i32 %i.as, 4
  %i.au = zext i8 %i.ar to i32                    ; 2 uses
  %i.av = add nuw nsw i32 %i.at, %i.au            ; 2 uses
  %i.aw = tail call i32 @uriIsUnreserved(i32 noundef %i.av) #6
  %.not43.i = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %.03944.i, i64 1 ; 2 uses
  br i1 %.not43.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = trunc i32 %i.av to i8
  store i8 %i.ay, ptr %.03944.i, align 1, !tbaa !41
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i8 37, ptr %.03944.i, align 1, !tbaa !41
  %i.az = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.as, i32 noundef 1) #6
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !41
  %i.ba = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.au, i32 noundef 1) #6
  %i.bb = getelementptr inbounds nuw i8, ptr %.03944.i, i64 2
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %.03944.i, i64 3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.241.i = phi ptr [ %i.al, %bb.f ], [ %i.ax, %bb.h ], [ %i.bc, %bb.i ] ; 2 uses
  %.1.i = phi i64 [ %.045.i, %bb.f ], [ %i.ai, %bb.h ], [ %i.ai, %bb.i ] ; 2 uses
  %i.bd = add i64 %.1.i, 1                        ; 2 uses
  %i.be = add i64 %.1.i, 3                        ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.p
  br i1 %i.bf, label %.lr.ph.i, label %.preheader.i, !llvm.loop !0

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.preheader, %.lr.ph49.i
  %.248.i = phi i64 [ %i.bj, %.lr.ph49.i ], [ %.248.i.ph, %.lr.ph49.i.preheader ] ; 2 uses
  %.347.i = phi ptr [ %i.bi, %.lr.ph49.i ], [ %.347.i.ph, %.lr.ph49.i.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 %.248.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !41
  store i8 %i.bh, ptr %.347.i, align 1, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %.347.i, i64 1 ; 2 uses
  %i.bj = add nuw i64 %.248.i, 1                  ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.p
  br i1 %i.bk, label %.lr.ph49.i, label %uriFixPercentEncodingEngineA.exit, !llvm.loop !149

uriFixPercentEncodingEngineA.exit:                ; preds = %.lr.ph49.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.039.lcssa.i, %.preheader.i ], [ %i.ae, %vec.epilog.middle.block ], [ %i.x, %middle.block ], [ %i.bi, %.lr.ph49.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !43
  store ptr %i.j, ptr %0, align 8, !tbaa !43
  br label %bb.k

bb.k:                                             ; preds = %uriFixPercentEncodingEngineA.exit, %bb.c, %bb.d, %bb.a, %bb.b
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %uriFixPercentEncodingEngineA.exit ], [ 0, %bb.d ]
  ret i32 %.1
}

declare i32 @uriRemoveDotSegmentsExA(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @uriFixEmptyTrailSegmentA(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @uriHexdigToIntA(i8 noundef signext) local_unnamed_addr #3

declare i32 @uriIsUnreserved(i32 noundef) local_unnamed_addr #3

declare signext i8 @uriHexToLetterExA(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriMakeRangeOwnerA(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 33) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !40
  %i.b = and i32 %i.a, %1
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = icmp ugt ptr %i.f, %i.d
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @uriCopyRangeA(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef %3) #6
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %0, align 4, !tbaa !40
  %i.k = or i32 %i.j, %1
  store i32 %i.k, ptr %0, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare i32 @uriCopyRangeA(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @uriFixPercentEncodingInplaceW(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b
end_hunk_2
