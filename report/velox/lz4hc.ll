inline.NumInlined: 720
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@LZ4HC_compress_generic:bb.a
  %i.nv = zext i32 %i.np to i64
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.nv
  %i.nx = select i1 %i.nr, ptr %i.nw, ptr %i.nu   ; 8 uses
  %.val584.i = load i32, ptr %i.nx, align 1, !tbaa !15
  %i.ny = icmp eq i32 %.val584.i, %.val586.i
  br i1 %i.ny, label %bb.bs, label %.thread1042.i

bb.bs:                                            ; preds = %bb.br
  %i.nz = select i1 %i.nr, ptr %i.dk, ptr %.ptr1334.i ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 4 ; 4 uses
  %i.ob = ptrtoint ptr %i.nz to i64
  %i.oc = getelementptr inbounds i8, ptr %i.nz, i64 -7 ; 2 uses
  %i.od = icmp ult ptr %i.oa, %i.oc
  br i1 %i.od, label %.lr.ph.i675.i, label %.preheader.i660.i, !prof !23

.preheader.i660.i:                                ; preds = %bb.bt, %bb.bs
  %.037.lcssa.i661.i = phi ptr [ %i.oa, %bb.bs ], [ %i.ol, %bb.bt ] ; 4 uses
  %.037.lcssa53.i662.i = ptrtoint ptr %.037.lcssa.i661.i to i64 ; 2 uses
  %i.oe = icmp ult ptr %.037.lcssa.i661.i, %i.nz
  br i1 %i.oe, label %.lr.ph47.preheader.i666.i, label %LZ4HC_countPattern.exit680.i

.lr.ph47.preheader.i666.i:                        ; preds = %.preheader.i660.i
  %i.of = sub i64 %i.ob, %.037.lcssa53.i662.i
  %scevgep.i667.i = getelementptr i8, ptr %.037.lcssa.i661.i, i64 %i.of
  br label %.lr.ph47.i668.i

.lr.ph.i675.i:                                    ; preds = %bb.bs, %bb.bt
  %.03744.i676.i = phi ptr [ %i.ol, %bb.bt ], [ %i.oa, %bb.bs ] ; 3 uses
  %.037.val.i677.i = load i64, ptr %.03744.i676.i, align 1, !tbaa !20 ; 2 uses
  %.not.i678.i = icmp eq i64 %.037.val.i677.i, %i.ho
  br i1 %.not.i678.i, label %bb.bt, label %.thread.i679.i

.thread.i679.i:                                   ; preds = %.lr.ph.i675.i
  %i.og = xor i64 %.037.val.i677.i, %i.ho
  %i.oh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.og, i1 true)
  %i.oi = lshr i64 %i.oh, 3
  %i.oj = getelementptr inbounds nuw i8, ptr %.03744.i676.i, i64 %i.oi
  %i.ok = ptrtoint ptr %i.oj to i64
  br label %LZ4HC_countPattern.exit680.i

bb.bt:                                            ; preds = %.lr.ph.i675.i
  %i.ol = getelementptr inbounds nuw i8, ptr %.03744.i676.i, i64 8 ; 3 uses
  %i.om = icmp ult ptr %i.ol, %i.oc
  br i1 %i.om, label %.lr.ph.i675.i, label %.preheader.i660.i, !prof !24

.lr.ph47.i668.i:                                  ; preds = %bb.bu, %.lr.ph47.preheader.i666.i
  %.03446.i669.i = phi i64 [ %i.or, %bb.bu ], [ %i.ho, %.lr.ph47.preheader.i666.i ] ; 2 uses
  %.23945.i670.i = phi ptr [ %i.oq, %bb.bu ], [ %.037.lcssa.i661.i, %.lr.ph47.preheader.i666.i ] ; 3 uses
  %i.on = load i8, ptr %.23945.i670.i, align 1, !tbaa !27
  %i.oo = trunc i64 %.03446.i669.i to i8
  %i.op = icmp eq i8 %i.on, %i.oo
  br i1 %i.op, label %bb.bu, label %.critedge.loopexit.i671.i

bb.bu:                                            ; preds = %.lr.ph47.i668.i
  %i.oq = getelementptr inbounds nuw i8, ptr %.23945.i670.i, i64 1 ; 2 uses
  %i.or = lshr i64 %.03446.i669.i, 8
  %exitcond.not.i674.i = icmp eq ptr %i.oq, %i.nz
  br i1 %exitcond.not.i674.i, label %.critedge.loopexit.i671.i, label %.lr.ph47.i668.i, !llvm.loop !38

.critedge.loopexit.i671.i:                        ; preds = %bb.bu, %.lr.ph47.i668.i
  %.239.lcssa.ph.i672.i = phi ptr [ %scevgep.i667.i, %bb.bu ], [ %.23945.i670.i, %.lr.ph47.i668.i ]
  %.pre.i673.i = ptrtoint ptr %.239.lcssa.ph.i672.i to i64
  br label %LZ4HC_countPattern.exit680.i

LZ4HC_countPattern.exit680.i:                     ; preds = %.critedge.loopexit.i671.i, %.thread.i679.i, %.preheader.i660.i
  %.sink.i664.i = phi i64 [ %i.ok, %.thread.i679.i ], [ %.pre.i673.i, %.critedge.loopexit.i671.i ], [ %.037.lcssa53.i662.i, %.preheader.i660.i ]
  %i.os = ptrtoint ptr %i.oa to i64
  %i.ot = sub i64 %.sink.i664.i, %i.os            ; 3 uses
  %i.ou = and i64 %i.ot, 4294967295
  %i.ov = add nuw nsw i64 %i.ou, 4                ; 4 uses
  br i1 %i.nr, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %LZ4HC_countPattern.exit680.i
  %i.ow = add nuw nsw i64 %i.ov, %i.nt
  %i.ox = icmp eq i64 %i.ow, %i.ek
  br i1 %i.ox, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.oy = and i64 %i.ot, 3
  %i.oz = icmp eq i64 %i.oy, 0
  %.tr.i681.i = trunc i64 %i.ot to i32
  %i.pa = shl i32 %.tr.i681.i, 3
  %i.pb = tail call i32 @llvm.fshl.i32(i32 %.val586.i, i32 %.val586.i, i32 %i.pa)
  %.0.i682.i = select i1 %i.oz, i32 %.val586.i, i32 %i.pb
  %i.pc = zext i32 %.0.i682.i to i64
  %i.pd = mul nuw i64 %i.pc, 4294967297           ; 3 uses
  br i1 %i.eo, label %.lr.ph.i698.i, label %.preheader.i683.i, !prof !23

.preheader.i683.loopexit.i:                       ; preds = %bb.bx
  %.pre2194.i.a = ptrtoint ptr %i.pl to i64
  br label %.preheader.i683.i

.preheader.i683.i:                                ; preds = %.preheader.i683.loopexit.i, %bb.bw
  %.037.lcssa53.i685.pre-phi.i = phi i64 [ %.pre2194.i.a, %.preheader.i683.loopexit.i ], [ %i.ee, %bb.bw ] ; 2 uses
  %.037.lcssa.i684.i = phi ptr [ %i.pl, %.preheader.i683.loopexit.i ], [ %i.ec, %bb.bw ] ; 3 uses
  %i.pe = icmp ult ptr %.037.lcssa.i684.i, %i.dk
  br i1 %i.pe, label %.lr.ph47.preheader.i689.i, label %LZ4HC_countPattern.exit703.i

.lr.ph47.preheader.i689.i:                        ; preds = %.preheader.i683.i
  %i.pf = sub i64 %i.du, %.037.lcssa53.i685.pre-phi.i
  %scevgep.i690.i = getelementptr i8, ptr %.037.lcssa.i684.i, i64 %i.pf
  br label %.lr.ph47.i691.i

.lr.ph.i698.i:                                    ; preds = %bb.bw, %bb.bx
  %.03744.i699.i = phi ptr [ %i.pl, %bb.bx ], [ %i.ec, %bb.bw ] ; 3 uses
  %.037.val.i700.i = load i64, ptr %.03744.i699.i, align 1, !tbaa !20 ; 2 uses
  %.not.i701.i = icmp eq i64 %.037.val.i700.i, %i.pd
  br i1 %.not.i701.i, label %bb.bx, label %.thread.i702.i

.thread.i702.i:                                   ; preds = %.lr.ph.i698.i
  %i.pg = xor i64 %.037.val.i700.i, %i.pd
  %i.ph = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.pg, i1 true)
  %i.pi = lshr i64 %i.ph, 3
  %i.pj = getelementptr inbounds nuw i8, ptr %.03744.i699.i, i64 %i.pi
  %i.pk = ptrtoint ptr %i.pj to i64
  br label %LZ4HC_countPattern.exit703.i

bb.bx:                                            ; preds = %.lr.ph.i698.i
  %i.pl = getelementptr inbounds nuw i8, ptr %.03744.i699.i, i64 8 ; 4 uses
  %i.pm = icmp ult ptr %i.pl, %i.dj
  br i1 %i.pm, label %.lr.ph.i698.i, label %.preheader.i683.loopexit.i, !prof !24

.lr.ph47.i691.i:                                  ; preds = %bb.by, %.lr.ph47.preheader.i689.i
  %.03446.i692.i = phi i64 [ %i.pr, %bb.by ], [ %i.pd, %.lr.ph47.preheader.i689.i ] ; 2 uses
  %.23945.i693.i = phi ptr [ %i.pq, %bb.by ], [ %.037.lcssa.i684.i, %.lr.ph47.preheader.i689.i ] ; 3 uses
  %i.pn = load i8, ptr %.23945.i693.i, align 1, !tbaa !27
  %i.po = trunc i64 %.03446.i692.i to i8
  %i.pp = icmp eq i8 %i.pn, %i.po
  br i1 %i.pp, label %bb.by, label %.critedge.loopexit.i694.i

bb.by:                                            ; preds = %.lr.ph47.i691.i
  %i.pq = getelementptr inbounds nuw i8, ptr %.23945.i693.i, i64 1 ; 2 uses
  %i.pr = lshr i64 %.03446.i692.i, 8
  %exitcond.not.i697.i = icmp eq ptr %i.pq, %i.dk
  br i1 %exitcond.not.i697.i, label %.critedge.loopexit.i694.i, label %.lr.ph47.i691.i, !llvm.loop !38

.critedge.loopexit.i694.i:                        ; preds = %bb.by, %.lr.ph47.i691.i
  %.239.lcssa.ph.i695.i = phi ptr [ %scevgep.i690.i, %bb.by ], [ %.23945.i693.i, %.lr.ph47.i691.i ]
  %.pre.i696.i = ptrtoint ptr %.239.lcssa.ph.i695.i to i64
  br label %LZ4HC_countPattern.exit703.i

LZ4HC_countPattern.exit703.i:                     ; preds = %.critedge.loopexit.i694.i, %.thread.i702.i, %.preheader.i683.i
  %.sink.i687.i = phi i64 [ %i.pk, %.thread.i702.i ], [ %.pre.i696.i, %.critedge.loopexit.i694.i ], [ %.037.lcssa53.i685.pre-phi.i, %.preheader.i683.i ]
  %i.ps = sub i64 %.sink.i687.i, %i.ee
  %i.pt = and i64 %i.ps, 4294967295
  %i.pu = add nuw nsw i64 %i.pt, %i.ov
  br label %bb.bz

bb.bz:                                            ; preds = %LZ4HC_countPattern.exit703.i, %bb.bv, %LZ4HC_countPattern.exit680.i
  %i.pv = phi ptr [ %i.eh, %LZ4HC_countPattern.exit703.i ], [ %i.eh, %bb.bv ], [ %i.ec, %LZ4HC_countPattern.exit680.i ] ; 4 uses
  %.0393.i.i = phi i64 [ %i.pu, %LZ4HC_countPattern.exit703.i ], [ %i.ov, %bb.bv ], [ %i.ov, %LZ4HC_countPattern.exit680.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.pw = ptrtoint ptr %i.nx to i64               ; 2 uses
  %i.px = ptrtoint ptr %i.pv to i64
  store i32 %.val586.i, ptr %i.f, align 4, !tbaa !3
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 4 ; 2 uses
  %.not.i704.i1048 = icmp ult ptr %i.nx, %i.py
  br i1 %.not.i704.i1048, label %._crit_edge1050, label %.lr.ph, !prof !39

bb.ca:                                            ; preds = %.lr.ph
  %.not.i704.i = icmp ult ptr %i.pz, %i.py
  br i1 %.not.i704.i, label %._crit_edge1050, label %.lr.ph, !prof !40, !llvm.loop !41

.lr.ph:                                           ; preds = %bb.bz, %bb.ca
  %.013.i.i1049 = phi ptr [ %i.pz, %bb.ca ], [ %i.nx, %bb.bz ] ; 2 uses
  %i.pz = getelementptr inbounds i8, ptr %.013.i.i1049, i64 -4 ; 4 uses
  %.val.i705.i = load i32, ptr %i.pz, align 1, !tbaa !15
  %.not14.i.i = icmp eq i32 %.val.i705.i, %.val586.i
  br i1 %.not14.i.i, label %bb.ca, label %._crit_edge, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph
  br label %._crit_edge1050, !llvm.loop !41

._crit_edge1050:                                  ; preds = %bb.ca, %._crit_edge, %bb.bz
  %.013.i.i.lcssa = phi ptr [ %.013.i.i1049, %._crit_edge ], [ %i.nx, %bb.bz ], [ %i.pz, %bb.ca ] ; 3 uses
  %i.qa = icmp ugt ptr %.013.i.i.lcssa, %i.pv
  br i1 %i.qa, label %.lr.ph.preheader.i.i, label %LZ4HC_reverseCountPattern.exit.i, !prof !23

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge1050
  %i.qb = sub i64 %i.px, %i.pw
  %scevgep.i706.i = getelementptr i8, ptr %i.nx, i64 %i.qb
  br label %.lr.ph.i707.i

bb.cb:                                            ; preds = %.lr.ph.i707.i
  %i.qc = getelementptr inbounds i8, ptr %.017.i.i, i64 -1
  %i.qd = icmp ugt ptr %i.qe, %i.pv
  br i1 %i.qd, label %.lr.ph.i707.i, label %LZ4HC_reverseCountPattern.exit.i, !prof !24, !llvm.loop !42

.lr.ph.i707.i:                                    ; preds = %bb.cb, %.lr.ph.preheader.i.i
  %.017.i.i = phi ptr [ %i.qc, %bb.cb ], [ %i.dv, %.lr.ph.preheader.i.i ] ; 2 uses
  %.116.i.i = phi ptr [ %i.qe, %bb.cb ], [ %.013.i.i.lcssa, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.qe = getelementptr inbounds i8, ptr %.116.i.i, i64 -1 ; 3 uses
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !27
  %i.qg = load i8, ptr %.017.i.i, align 1, !tbaa !27
  %.not15.i.i = icmp eq i8 %i.qf, %i.qg
  br i1 %.not15.i.i, label %bb.cb, label %LZ4HC_reverseCountPattern.exit.i

LZ4HC_reverseCountPattern.exit.i:                 ; preds = %.lr.ph.i707.i, %bb.cb, %._crit_edge1050
  %.1.lcssa.i.i = phi ptr [ %.013.i.i.lcssa, %._crit_edge1050 ], [ %.116.i.i, %.lr.ph.i707.i ], [ %scevgep.i706.i, %bb.cb ]
  %i.qh = ptrtoint ptr %.1.lcssa.i.i to i64
  %i.qi = sub i64 %i.pw, %i.qh                    ; 3 uses
  %i.qj = trunc i64 %i.qi to i32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.qk = and i64 %i.qi, 4294967295
  %i.ql = sub nsw i64 0, %i.qk
  %i.qm = getelementptr inbounds i8, ptr %i.nx, i64 %i.ql
  %i.qn = icmp eq ptr %i.qm, %i.ec
  %or.cond454.i.i = select i1 %i.nr, i1 %i.qn, i1 false
  %or.cond455.i.i = select i1 %or.cond454.i.i, i1 %i.ep, i1 false
  br i1 %or.cond455.i.i, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %LZ4HC_reverseCountPattern.exit.i
  %7 = sub i64 0, %i.qi
  %8 = and i64 %7, 3
  %i.qo = icmp eq i64 %8, 0
  %.neg.i = mul i32 %i.qj, 24
  %i.qp = tail call i32 @llvm.fshl.i32(i32 %.val586.i, i32 %.val586.i, i32 %.neg.i)
  %.0.i709.i = select i1 %i.qo, i32 %.val586.i, i32 %i.qp ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %.0.i709.i, ptr %i.e, align 4, !tbaa !3
  br i1 %.not.i711.i1052, label %._crit_edge1056, label %.lr.ph1055, !prof !39

bb.cd:                                            ; preds = %.lr.ph1055
  %.not.i711.i = icmp slt i64 %.013.i710.idx.i1053, 8
  br i1 %.not.i711.i, label %._crit_edge1056, label %.lr.ph1055, !prof !40, !llvm.loop !41

.lr.ph1055:                                       ; preds = %bb.cc, %bb.cd
  %.013.i710.idx.i1053 = phi i64 [ %.013.i710.add.i, %bb.cd ], [ %i.ek, %bb.cc ] ; 3 uses
  %.013.i710.add.i = add nsw i64 %.013.i710.idx.i1053, -4 ; 3 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.013.i710.add.i
  %.val.i712.i = load i32, ptr %.ptr.i, align 1, !tbaa !15
  %.not14.i713.i = icmp eq i32 %.val.i712.i, %.0.i709.i
  br i1 %.not14.i713.i, label %bb.cd, label %.thread2461.i, !llvm.loop !41

.thread2461.i:                                    ; preds = %.lr.ph1055
  %.013.i710.ptr.le2462.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.013.i710.idx.i1053
  br label %.lr.ph.i717.i.preheader

._crit_edge1056:                                  ; preds = %bb.cd, %bb.cc
  %.013.i710.idx.i.lcssa = phi i64 [ %i.ek, %bb.cc ], [ %.013.i710.add.i, %bb.cd ] ; 2 uses
  %.013.i710.ptr.le.i = getelementptr inbounds i8, ptr %i.eh, i64 %.013.i710.idx.i.lcssa ; 2 uses
  %i.qq = icmp sgt i64 %.013.i710.idx.i.lcssa, 0
  br i1 %i.qq, label %.lr.ph.i717.i.preheader, label %LZ4HC_reverseCountPattern.exit721.i, !prof !43

.lr.ph.i717.i.preheader:                          ; preds = %._crit_edge1056, %.thread2461.i
  %.116.i719.i.ph = phi ptr [ %.013.i710.ptr.le2462.i, %.thread2461.i ], [ %.013.i710.ptr.le.i, %._crit_edge1056 ]
  br label %.lr.ph.i717.i

bb.ce:                                            ; preds = %.lr.ph.i717.i
  %i.qr = getelementptr inbounds i8, ptr %.017.i718.i, i64 -1
  %i.qs = icmp ugt ptr %i.qt, %i.eh
  br i1 %i.qs, label %.lr.ph.i717.i, label %LZ4HC_reverseCountPattern.exit721.i, !prof !24, !llvm.loop !42

.lr.ph.i717.i:                                    ; preds = %.lr.ph.i717.i.preheader, %bb.ce
  %.017.i718.i = phi ptr [ %i.qr, %bb.ce ], [ %i.dw, %.lr.ph.i717.i.preheader ] ; 2 uses
  %.116.i719.i = phi ptr [ %i.qt, %bb.ce ], [ %.116.i719.i.ph, %.lr.ph.i717.i.preheader ] ; 2 uses
  %i.qt = getelementptr inbounds i8, ptr %.116.i719.i, i64 -1 ; 3 uses
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !27
  %i.qv = load i8, ptr %.017.i718.i, align 1, !tbaa !27
  %.not15.i720.i = icmp eq i8 %i.qu, %i.qv
  br i1 %.not15.i720.i, label %bb.ce, label %LZ4HC_reverseCountPattern.exit721.i

LZ4HC_reverseCountPattern.exit721.i:              ; preds = %.lr.ph.i717.i, %bb.ce, %._crit_edge1056
  %.1.lcssa.i714.i = phi ptr [ %.013.i710.ptr.le.i, %._crit_edge1056 ], [ %.116.i719.i, %.lr.ph.i717.i ], [ %i.eh, %bb.ce ]
  %i.qw = ptrtoint ptr %.1.lcssa.i714.i to i64
  %i.qx = sub i64 %i.eq, %i.qw
  %i.qy = trunc i64 %i.qx to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.qz = add i32 %i.qy, %i.qj
  br label %bb.cf

bb.cf:                                            ; preds = %LZ4HC_reverseCountPattern.exit721.i, %LZ4HC_reverseCountPattern.exit.i
  %.0390.i.i = phi i32 [ %i.qj, %LZ4HC_reverseCountPattern.exit.i ], [ %i.qz, %LZ4HC_reverseCountPattern.exit721.i ]
  %i.ra = sub i32 %i.mv, %.0390.i.i
  %i.rb = tail call i32 @llvm.umax.i32(i32 %i.ra, i32 %i.fh) ; 7 uses
  %i.rc = sub i32 %i.mv, %i.rb
  %i.rd = zext i32 %i.rc to i64
  %i.re = add nuw nsw i64 %.0393.i.i, %i.rd       ; 2 uses
  %.not438.i.i = icmp ult i64 %i.re, %.1347.i.i
  %.not439.i.i = icmp ugt i64 %.0393.i.i, %.1347.i.i
  %or.cond456.i.i = or i1 %.not439.i.i, %.not438.i.i
  br i1 %or.cond456.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.rf = trunc i64 %.0393.i.i to i32
  %i.rg = trunc i64 %.1347.i.i to i32
  %i.rh = sub i32 %i.mv, %i.rg
  %i.ri = add i32 %i.rh, %i.rf                    ; 2 uses
  %i.rj = sub i32 %i.ri, %i.ed
  %i.rk = icmp ugt i32 %i.rj, -4
  %..i.i = select i1 %i.rk, i32 %i.ed, i32 %i.ri
  br label %bb.cm

bb.ch:                                            ; preds = %bb.cf
  %i.rl = sub i32 %i.rb, %i.ed
  %i.rm = icmp ugt i32 %i.rl, -4
  br i1 %i.rm, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.rn = tail call i64 @llvm.umin.i64(i64 %i.re, i64 %.1347.i.i) ; 2 uses
  %i.ro = sext i32 %.5.i119.i to i64
  %i.rp = icmp ugt i64 %i.rn, %i.ro
  br i1 %i.rp, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.rq = zext i32 %i.rb to i64
  %i.rr = sub i64 %i.gz, %i.rq
  %i.rs = icmp ugt i64 %i.rr, 65535
  br i1 %i.rs, label %.thread1086.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.rt = trunc i64 %i.rn to i32
  %i.ru = sub i32 %i.fe, %i.rb
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ci
  %.6357.i.i = phi i32 [ %i.ru, %bb.ck ], [ %.5356.i.i, %bb.ci ] ; 2 uses
  %.6.i122.i = phi i32 [ %i.rt, %bb.ck ], [ %.5.i119.i, %bb.ci ] ; 2 uses
  %i.rv = and i32 %i.rb, 65535
  %i.rw = zext nneg i32 %i.rv to i64
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.rw
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !29
  %i.rz = zext i16 %i.ry to i32                   ; 2 uses
  %i.sa = icmp ult i32 %i.rb, %i.rz
  %i.sb = sub nuw i32 %i.rb, %i.rz
  br i1 %i.sa, label %.thread1086.i, label %bb.cm

.thread1042.i:                                    ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bl, %bb.bj
  %.3349.i.ph.i = phi i64 [ %.1347.i.i, %bb.br ], [ %.1347.i.i, %bb.bp ], [ %.1347.i.i, %bb.bq ], [ %.0346.i1522.i, %bb.bj ], [ %.0346.i1522.i, %bb.bl ]
  %.3344.i.ph.i = phi i32 [ 2, %bb.br ], [ %.1342.i.i, %bb.bp ], [ 2, %bb.bq ], [ %.0341.i1141523.i, %bb.bj ], [ 1, %bb.bl ]
  %i.sc = zext i16 %i.mt to i32
  %i.sd = sub i32 %.0323.i1524.i, %i.sc
  br label %bb.cm

bb.cm:                                            ; preds = %.thread1042.i, %bb.cl, %bb.ch, %bb.cg
  %.16.i1083.i = phi i32 [ %.5.i119.i, %.thread1042.i ], [ %.5.i119.i, %bb.ch ], [ %.5.i119.i, %bb.cg ], [ %.6.i122.i, %bb.cl ] ; 2 uses
  %.3344.i1080.i = phi i32 [ %.3344.i.ph.i, %.thread1042.i ], [ 2, %bb.ch ], [ 2, %bb.cg ], [ 2, %bb.cl ]
  %.3349.i1078.i = phi i64 [ %.3349.i.ph.i, %.thread1042.i ], [ %.1347.i.i, %bb.ch ], [ %.1347.i.i, %bb.cg ], [ %.1347.i.i, %bb.cl ]
  %.16367.i1076.i = phi i32 [ %.5356.i.i, %.thread1042.i ], [ %.5356.i.i, %bb.ch ], [ %.5356.i.i, %bb.cg ], [ %.6357.i.i, %bb.cl ] ; 2 uses
  %.15338.i.i = phi i32 [ %i.sd, %.thread1042.i ], [ %i.ed, %bb.ch ], [ %..i.i, %bb.cg ], [ %i.sb, %bb.cl ] ; 2 uses
  %i.se = icmp uge i32 %.15338.i.i, %i.fh
  %i.sf = icmp sgt i32 %.0314.i1525.i, 1
  %i.sg = select i1 %i.se, i1 %i.sf, i1 false
  br i1 %i.sg, label %bb.q, label %.thread1086.i

.thread1086.i:                                    ; preds = %bb.cm, %bb.cl, %bb.cj, %LZ4HC_Insert.exit.i.i
  %.18369.i.i = phi i32 [ 0, %LZ4HC_Insert.exit.i.i ], [ %.16367.i1076.i, %bb.cm ], [ %.6357.i.i, %bb.cl ], [ %.5356.i.i, %bb.cj ] ; 3 uses
  %.1315.i.i = phi i32 [ %.sroa.04.4.extract.trunc.i.i, %LZ4HC_Insert.exit.i.i ], [ %i.hp, %bb.cj ], [ %i.hp, %bb.cl ], [ %i.hp, %bb.cm ] ; 2 uses
  %.18.i.i = phi i32 [ 3, %LZ4HC_Insert.exit.i.i ], [ %.16.i1083.i, %bb.cm ], [ %.6.i122.i, %bb.cl ], [ %.5.i119.i, %bb.cj ] ; 3 uses
  %i.sh = icmp sgt i32 %.1315.i.i, 0
  %or.cond15.i.i = and i1 %i.ff, %i.sh
  br i1 %or.cond15.i.i, label %bb.cn, label %LZ4HC_InsertAndGetWiderMatch.exit.i

bb.cn:                                            ; preds = %.thread1086.i
  %i.si = load ptr, ptr %i.er, align 8, !tbaa !7
  %i.sj = load ptr, ptr %i.es, align 8, !tbaa !13 ; 2 uses
  %i.sk = ptrtoint ptr %i.si to i64
  %i.sl = ptrtoint ptr %i.sj to i64
  %i.sm = sub i64 %i.sk, %i.sl
  %i.sn = load i32, ptr %i.et, align 8, !tbaa !14
  %i.so = zext i32 %i.sn to i64                   ; 2 uses
  %i.sp = add i64 %i.sm, %i.so                    ; 2 uses
  %.val594.i = load i32, ptr %.010091564.i, align 1, !tbaa !15
  %i.sq = mul i32 %.val594.i, -1640531535
  %i.sr = lshr i32 %i.sq, 17
  %i.ss = zext nneg i32 %i.sr to i64
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ss
  %i.su = load i32, ptr %i.st, align 4, !tbaa !3  ; 2 uses
  %i.sv = add i32 %i.su, %i.fh
  %i.sw = trunc i64 %i.sp to i32
  %i.sx = sub i32 %i.sv, %i.sw                    ; 2 uses
  %i.sy = sub i32 %i.fe, %i.sx                    ; 2 uses
  %i.sz = icmp ult i32 %i.sy, 65536
  br i1 %i.sz, label %.lr.ph1556.i, label %LZ4HC_InsertAndGetWiderMatch.exit.i

.lr.ph1556.i:                                     ; preds = %bb.cn
  %i.ta = sub nsw i64 0, %i.so
  %i.tb = getelementptr inbounds i8, ptr %i.sj, i64 %i.ta
  %i.tc = getelementptr inbounds nuw i8, ptr %.010091564.i, i64 4 ; 4 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.010091564.i, i64 12
  %i.te = ptrtoint ptr %i.tc to i64               ; 2 uses
  br label %bb.co

bb.co:                                            ; preds = %bb.dc, %.lr.ph1556.i
  %.in = phi i32 [ %.1315.i.i, %.lr.ph1556.i ], [ %i.tg, %bb.dc ]
  %.19370.i1550.i1061 = phi i32 [ %.18369.i.i, %.lr.ph1556.i ], [ %.21372.i.i, %bb.dc ] ; 2 uses
  %.0340.i1171551.i1060 = phi i32 [ %i.su, %.lr.ph1556.i ], [ %i.vh, %bb.dc ] ; 3 uses
  %.16339.i1552.i1059 = phi i32 [ %i.sx, %.lr.ph1556.i ], [ %i.ve, %bb.dc ]
  %.19.i1554.i1058 = phi i32 [ %.18.i.i, %.lr.ph1556.i ], [ %.21.i.i, %bb.dc ] ; 3 uses
  %i.tf = phi i32 [ %i.sy, %.lr.ph1556.i ], [ %i.vf, %bb.dc ]
  %i.tg = add nsw i32 %.in, -1                    ; 2 uses
  %i.th = zext i32 %.0340.i1171551.i1060 to i64   ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.th ; 3 uses
  %.val585.i = load i32, ptr %i.ti, align 1, !tbaa !15
  %i.tj = icmp eq i32 %.val585.i, %.val586.i
  br i1 %i.tj, label %bb.cp, label %bb.dc

bb.cp:                                            ; preds = %bb.co
  %i.tk = sub i64 %i.sp, %i.th
  %i.tl = getelementptr inbounds nuw i8, ptr %.010091564.i, i64 %i.tk ; 2 uses
  %i.tm = icmp ugt ptr %i.tl, %i.dk
  %spec.select457.i.i = select i1 %i.tm, ptr %i.dk, ptr %i.tl ; 4 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ti, i64 4 ; 2 uses
  %i.to = getelementptr inbounds i8, ptr %spec.select457.i.i, i64 -7 ; 3 uses
  %i.tp = icmp ult ptr %i.tc, %i.to
  br i1 %i.tp, label %bb.cq, label %bb.cs, !prof !19

bb.cq:                                            ; preds = %bb.cp
  %.val641.i = load i64, ptr %i.tn, align 1, !tbaa !20 ; 2 uses
  %.val640.i = load i64, ptr %i.tc, align 1, !tbaa !20 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.val641.i, %.val640.i
  br i1 %.not.i.i.i, label %.thread1093.i, label %bb.cr

.thread1093.i:                                    ; preds = %bb.cq
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ti, i64 12
  br label %bb.cs

end_hunk_0
begin_hunk_1_@LZ4HC_compress_generic:bb.a
  %i.aha = zext i32 %i.agu to i64
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.vo, i64 %i.aha
  %i.ahc = select i1 %i.agw, ptr %i.ahb, ptr %i.agz ; 8 uses
  %.val566.i = load i32, ptr %i.ahc, align 1, !tbaa !15
  %i.ahd = icmp eq i32 %.val566.i, %.val570.i
  br i1 %i.ahd, label %bb.fo, label %.thread1131.i

bb.fo:                                            ; preds = %bb.fn
  %i.ahe = select i1 %i.agw, ptr %i.dk, ptr %.ptr1339.i.a ; 4 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahc, i64 4 ; 4 uses
  %i.ahg = ptrtoint ptr %i.ahe to i64
  %i.ahh = getelementptr inbounds i8, ptr %i.ahe, i64 -7 ; 2 uses
  %i.ahi = icmp ult ptr %i.ahf, %i.ahh
  br i1 %i.ahi, label %.lr.ph.i758.i, label %.preheader.i743.i, !prof !23

.preheader.i743.i:                                ; preds = %bb.fp, %bb.fo
  %.037.lcssa.i744.i = phi ptr [ %i.ahf, %bb.fo ], [ %i.ahq, %bb.fp ] ; 4 uses
  %.037.lcssa53.i745.i = ptrtoint ptr %.037.lcssa.i744.i to i64 ; 2 uses
  %i.ahj = icmp ult ptr %.037.lcssa.i744.i, %i.ahe
  br i1 %i.ahj, label %.lr.ph47.preheader.i749.i, label %LZ4HC_countPattern.exit763.i

.lr.ph47.preheader.i749.i:                        ; preds = %.preheader.i743.i
  %i.ahk = sub i64 %i.ahg, %.037.lcssa53.i745.i
  %scevgep.i750.i = getelementptr i8, ptr %.037.lcssa.i744.i, i64 %i.ahk
  br label %.lr.ph47.i751.i

.lr.ph.i758.i:                                    ; preds = %bb.fo, %bb.fp
  %.03744.i759.i = phi ptr [ %i.ahq, %bb.fp ], [ %i.ahf, %bb.fo ] ; 3 uses
  %.037.val.i760.i = load i64, ptr %.03744.i759.i, align 1, !tbaa !20 ; 2 uses
  %.not.i761.i = icmp eq i64 %.037.val.i760.i, %i.ys
  br i1 %.not.i761.i, label %bb.fp, label %.thread.i762.i

.thread.i762.i:                                   ; preds = %.lr.ph.i758.i
  %i.ahl = xor i64 %.037.val.i760.i, %i.ys
  %i.ahm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ahl, i1 true)
  %i.ahn = lshr i64 %i.ahm, 3
  %i.aho = getelementptr inbounds nuw i8, ptr %.03744.i759.i, i64 %i.ahn
  %i.ahp = ptrtoint ptr %i.aho to i64
  br label %LZ4HC_countPattern.exit763.i

bb.fp:                                            ; preds = %.lr.ph.i758.i
  %i.ahq = getelementptr inbounds nuw i8, ptr %.03744.i759.i, i64 8 ; 3 uses
  %i.ahr = icmp ult ptr %i.ahq, %i.ahh
  br i1 %i.ahr, label %.lr.ph.i758.i, label %.preheader.i743.i, !prof !24

.lr.ph47.i751.i:                                  ; preds = %bb.fq, %.lr.ph47.preheader.i749.i
  %.03446.i752.i = phi i64 [ %i.ahw, %bb.fq ], [ %i.ys, %.lr.ph47.preheader.i749.i ] ; 2 uses
  %.23945.i753.i = phi ptr [ %i.ahv, %bb.fq ], [ %.037.lcssa.i744.i, %.lr.ph47.preheader.i749.i ] ; 3 uses
  %i.ahs = load i8, ptr %.23945.i753.i, align 1, !tbaa !27
  %i.aht = trunc i64 %.03446.i752.i to i8
  %i.ahu = icmp eq i8 %i.ahs, %i.aht
  br i1 %i.ahu, label %bb.fq, label %.critedge.loopexit.i754.i

bb.fq:                                            ; preds = %.lr.ph47.i751.i
  %i.ahv = getelementptr inbounds nuw i8, ptr %.23945.i753.i, i64 1 ; 2 uses
  %i.ahw = lshr i64 %.03446.i752.i, 8
  %exitcond.not.i757.i = icmp eq ptr %i.ahv, %i.ahe
  br i1 %exitcond.not.i757.i, label %.critedge.loopexit.i754.i, label %.lr.ph47.i751.i, !llvm.loop !38

.critedge.loopexit.i754.i:                        ; preds = %bb.fq, %.lr.ph47.i751.i
  %.239.lcssa.ph.i755.i = phi ptr [ %scevgep.i750.i, %bb.fq ], [ %.23945.i753.i, %.lr.ph47.i751.i ]
  %.pre.i756.i = ptrtoint ptr %.239.lcssa.ph.i755.i to i64
  br label %LZ4HC_countPattern.exit763.i

LZ4HC_countPattern.exit763.i:                     ; preds = %.critedge.loopexit.i754.i, %.thread.i762.i, %.preheader.i743.i
  %.sink.i747.i = phi i64 [ %i.ahp, %.thread.i762.i ], [ %.pre.i756.i, %.critedge.loopexit.i754.i ], [ %.037.lcssa53.i745.i, %.preheader.i743.i ]
  %i.ahx = ptrtoint ptr %i.ahf to i64
  %i.ahy = sub i64 %.sink.i747.i, %i.ahx          ; 3 uses
  %i.ahz = and i64 %i.ahy, 4294967295
  %i.aia = add nuw nsw i64 %i.ahz, 4              ; 4 uses
  br i1 %i.agw, label %bb.fv, label %bb.fr

bb.fr:                                            ; preds = %LZ4HC_countPattern.exit763.i
  %i.aib = add nuw nsw i64 %i.aia, %i.agy
  %i.aic = icmp eq i64 %i.aib, %i.wd
  br i1 %i.aic, label %bb.fs, label %bb.fv

bb.fs:                                            ; preds = %bb.fr
  %i.aid = and i64 %i.ahy, 3
  %i.aie = icmp eq i64 %i.aid, 0
  %.tr.i764.i = trunc i64 %i.ahy to i32
  %i.aif = shl i32 %.tr.i764.i, 3
  %i.aig = tail call i32 @llvm.fshl.i32(i32 %.val570.i, i32 %.val570.i, i32 %i.aif)
  %.0.i765.i = select i1 %i.aie, i32 %.val570.i, i32 %i.aig
  %i.aih = zext i32 %.0.i765.i to i64
  %i.aii = mul nuw i64 %i.aih, 4294967297         ; 3 uses
  br i1 %i.yv, label %.lr.ph.i20, label %.preheader.i15, !prof !23

.preheader.i15.loopexit:                          ; preds = %bb.ft
  %.pre = ptrtoint ptr %i.aiq to i64
  br label %.preheader.i15

.preheader.i15:                                   ; preds = %.preheader.i15.loopexit, %bb.fs
  %.037.lcssa53.i.pre-phi = phi i64 [ %.pre, %.preheader.i15.loopexit ], [ %i.vr, %bb.fs ] ; 2 uses
  %.037.lcssa.i = phi ptr [ %i.aiq, %.preheader.i15.loopexit ], [ %i.vo, %bb.fs ] ; 3 uses
  %i.aij = icmp ult ptr %.037.lcssa.i, %i.dk
  br i1 %i.aij, label %.lr.ph47.preheader.i, label %LZ4HC_countPattern.exit

.lr.ph47.preheader.i:                             ; preds = %.preheader.i15
  %i.aik = sub i64 %i.du, %.037.lcssa53.i.pre-phi
  %scevgep.i17 = getelementptr i8, ptr %.037.lcssa.i, i64 %i.aik
  br label %.lr.ph47.i

.lr.ph.i20:                                       ; preds = %bb.fs, %bb.ft
  %.03744.i = phi ptr [ %i.aiq, %bb.ft ], [ %i.vo, %bb.fs ] ; 3 uses
  %.037.val.i = load i64, ptr %.03744.i, align 1, !tbaa !20 ; 2 uses
  %.not.i21 = icmp eq i64 %.037.val.i, %i.aii
  br i1 %.not.i21, label %bb.ft, label %.thread.i22

.thread.i22:                                      ; preds = %.lr.ph.i20
  %i.ail = xor i64 %.037.val.i, %i.aii
  %i.aim = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ail, i1 true)
  %i.ain = lshr i64 %i.aim, 3
  %i.aio = getelementptr inbounds nuw i8, ptr %.03744.i, i64 %i.ain
  %i.aip = ptrtoint ptr %i.aio to i64
  br label %LZ4HC_countPattern.exit

bb.ft:                                            ; preds = %.lr.ph.i20
  %i.aiq = getelementptr inbounds nuw i8, ptr %.03744.i, i64 8 ; 4 uses
  %i.air = icmp ult ptr %i.aiq, %i.dj
  br i1 %i.air, label %.lr.ph.i20, label %.preheader.i15.loopexit, !prof !24

.lr.ph47.i:                                       ; preds = %bb.fu, %.lr.ph47.preheader.i
  %.03446.i = phi i64 [ %i.aiw, %bb.fu ], [ %i.aii, %.lr.ph47.preheader.i ] ; 2 uses
  %.23945.i = phi ptr [ %i.aiv, %bb.fu ], [ %.037.lcssa.i, %.lr.ph47.preheader.i ] ; 3 uses
  %i.ais = load i8, ptr %.23945.i, align 1, !tbaa !27
  %i.ait = trunc i64 %.03446.i to i8
  %i.aiu = icmp eq i8 %i.ais, %i.ait
  br i1 %i.aiu, label %bb.fu, label %.critedge.loopexit.i

bb.fu:                                            ; preds = %.lr.ph47.i
  %i.aiv = getelementptr inbounds nuw i8, ptr %.23945.i, i64 1 ; 2 uses
  %i.aiw = lshr i64 %.03446.i, 8
  %exitcond.not.i19 = icmp eq ptr %i.aiv, %i.dk
  br i1 %exitcond.not.i19, label %.critedge.loopexit.i, label %.lr.ph47.i, !llvm.loop !38

.critedge.loopexit.i:                             ; preds = %bb.fu, %.lr.ph47.i
  %.239.lcssa.ph.i = phi ptr [ %scevgep.i17, %bb.fu ], [ %.23945.i, %.lr.ph47.i ]
  %.pre.i18 = ptrtoint ptr %.239.lcssa.ph.i to i64
  br label %LZ4HC_countPattern.exit

LZ4HC_countPattern.exit:                          ; preds = %.preheader.i15, %.thread.i22, %.critedge.loopexit.i
  %.sink.i = phi i64 [ %i.aip, %.thread.i22 ], [ %.pre.i18, %.critedge.loopexit.i ], [ %.037.lcssa53.i.pre-phi, %.preheader.i15 ]
  %i.aix = sub i64 %.sink.i, %i.vr
  %i.aiy = and i64 %i.aix, 4294967295
  %i.aiz = add nuw nsw i64 %i.aiy, %i.aia
  br label %bb.fv

bb.fv:                                            ; preds = %LZ4HC_countPattern.exit, %bb.fr, %LZ4HC_countPattern.exit763.i
  %i.aja = phi ptr [ %i.wa, %LZ4HC_countPattern.exit ], [ %i.wa, %bb.fr ], [ %i.vo, %LZ4HC_countPattern.exit763.i ] ; 4 uses
  %.0393.i433.i = phi i64 [ %i.aiz, %LZ4HC_countPattern.exit ], [ %i.aia, %bb.fr ], [ %i.aia, %LZ4HC_countPattern.exit763.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ajb = ptrtoint ptr %i.ahc to i64             ; 2 uses
  %i.ajc = ptrtoint ptr %i.aja to i64
  store i32 %.val570.i, ptr %i.d, align 4, !tbaa !3
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aja, i64 4 ; 2 uses
  %.not.i767.i1066 = icmp ult ptr %i.ahc, %i.ajd
  br i1 %.not.i767.i1066, label %._crit_edge1072, label %.lr.ph1069, !prof !39

bb.fw:                                            ; preds = %.lr.ph1069
  %.not.i767.i = icmp ult ptr %i.aje, %i.ajd
  br i1 %.not.i767.i, label %._crit_edge1072, label %.lr.ph1069, !prof !40, !llvm.loop !41

.lr.ph1069:                                       ; preds = %bb.fv, %bb.fw
  %.013.i766.i1067 = phi ptr [ %i.aje, %bb.fw ], [ %i.ahc, %bb.fv ] ; 2 uses
  %i.aje = getelementptr inbounds i8, ptr %.013.i766.i1067, i64 -4 ; 4 uses
  %.val.i768.i = load i32, ptr %i.aje, align 1, !tbaa !15
  %.not14.i769.i = icmp eq i32 %.val.i768.i, %.val570.i
  br i1 %.not14.i769.i, label %bb.fw, label %._crit_edge1070, !llvm.loop !41

._crit_edge1070:                                  ; preds = %.lr.ph1069
  br label %._crit_edge1072, !llvm.loop !41

._crit_edge1072:                                  ; preds = %bb.fw, %._crit_edge1070, %bb.fv
  %.013.i766.i.lcssa = phi ptr [ %.013.i766.i1067, %._crit_edge1070 ], [ %i.ahc, %bb.fv ], [ %i.aje, %bb.fw ] ; 3 uses
  %i.ajf = icmp ugt ptr %.013.i766.i.lcssa, %i.aja
  br i1 %i.ajf, label %.lr.ph.preheader.i771.i, label %LZ4HC_reverseCountPattern.exit777.i, !prof !23

.lr.ph.preheader.i771.i:                          ; preds = %._crit_edge1072
  %i.ajg = sub i64 %i.ajc, %i.ajb
  %scevgep.i772.i = getelementptr i8, ptr %i.ahc, i64 %i.ajg
  br label %.lr.ph.i773.i

bb.fx:                                            ; preds = %.lr.ph.i773.i
  %i.ajh = getelementptr inbounds i8, ptr %.017.i774.i, i64 -1
  %i.aji = icmp ugt ptr %i.ajj, %i.aja
  br i1 %i.aji, label %.lr.ph.i773.i, label %LZ4HC_reverseCountPattern.exit777.i, !prof !24, !llvm.loop !42

.lr.ph.i773.i:                                    ; preds = %bb.fx, %.lr.ph.preheader.i771.i
  %.017.i774.i = phi ptr [ %i.ajh, %bb.fx ], [ %i.dx, %.lr.ph.preheader.i771.i ] ; 2 uses
  %.116.i775.i = phi ptr [ %i.ajj, %bb.fx ], [ %.013.i766.i.lcssa, %.lr.ph.preheader.i771.i ] ; 2 uses
  %i.ajj = getelementptr inbounds i8, ptr %.116.i775.i, i64 -1 ; 3 uses
  %i.ajk = load i8, ptr %i.ajj, align 1, !tbaa !27
  %i.ajl = load i8, ptr %.017.i774.i, align 1, !tbaa !27
  %.not15.i776.i = icmp eq i8 %i.ajk, %i.ajl
  br i1 %.not15.i776.i, label %bb.fx, label %LZ4HC_reverseCountPattern.exit777.i

LZ4HC_reverseCountPattern.exit777.i:              ; preds = %.lr.ph.i773.i, %bb.fx, %._crit_edge1072
  %.1.lcssa.i770.i = phi ptr [ %.013.i766.i.lcssa, %._crit_edge1072 ], [ %.116.i775.i, %.lr.ph.i773.i ], [ %scevgep.i772.i, %bb.fx ]
  %i.ajm = ptrtoint ptr %.1.lcssa.i770.i to i64
  %i.ajn = sub i64 %i.ajb, %i.ajm                 ; 3 uses
  %i.ajo = trunc i64 %i.ajn to i32                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ajp = and i64 %i.ajn, 4294967295
  %i.ajq = sub nsw i64 0, %i.ajp
  %i.ajr = getelementptr inbounds i8, ptr %i.ahc, i64 %i.ajq
  %i.ajs = icmp eq ptr %i.ajr, %i.vo
  %or.cond454.i435.i = select i1 %i.agw, i1 %i.ajs, i1 false
  %or.cond455.i436.i = select i1 %or.cond454.i435.i, i1 %i.yt, i1 false
  br i1 %or.cond455.i436.i, label %bb.fy, label %bb.gb

bb.fy:                                            ; preds = %LZ4HC_reverseCountPattern.exit777.i
  %9 = sub i64 0, %i.ajn
  %10 = and i64 %9, 3
  %i.ajt = icmp eq i64 %10, 0
  %.neg1338.i = mul i32 %i.ajo, 24
  %i.aju = tail call i32 @llvm.fshl.i32(i32 %.val570.i, i32 %.val570.i, i32 %.neg1338.i)
  %.0.i779.i = select i1 %i.ajt, i32 %.val570.i, i32 %i.aju ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.0.i779.i, ptr %i.c, align 4, !tbaa !3
  br i1 %.not.i781.i1074, label %._crit_edge1078, label %.lr.ph1077, !prof !39

bb.fz:                                            ; preds = %.lr.ph1077
  %.not.i781.i = icmp slt i64 %.013.i780.idx.i1075, 8
  br i1 %.not.i781.i, label %._crit_edge1078, label %.lr.ph1077, !prof !40, !llvm.loop !41

.lr.ph1077:                                       ; preds = %bb.fy, %bb.fz
  %.013.i780.idx.i1075 = phi i64 [ %.013.i780.add.i, %bb.fz ], [ %i.wd, %bb.fy ] ; 3 uses
  %.013.i780.add.i = add nsw i64 %.013.i780.idx.i1075, -4 ; 3 uses
  %.ptr1338.i = getelementptr inbounds nuw i8, ptr %i.wa, i64 %.013.i780.add.i
  %.val.i782.i = load i32, ptr %.ptr1338.i, align 1, !tbaa !15
  %.not14.i783.i = icmp eq i32 %.val.i782.i, %.0.i779.i
  br i1 %.not14.i783.i, label %bb.fz, label %.thread2464.i, !llvm.loop !41

.thread2464.i:                                    ; preds = %.lr.ph1077
  %.013.i780.ptr.le2465.i = getelementptr inbounds nuw i8, ptr %i.wa, i64 %.013.i780.idx.i1075
  br label %.lr.ph.i787.i.preheader

._crit_edge1078:                                  ; preds = %bb.fz, %bb.fy
  %.013.i780.idx.i.lcssa = phi i64 [ %i.wd, %bb.fy ], [ %.013.i780.add.i, %bb.fz ] ; 2 uses
  %.013.i780.ptr.le.i = getelementptr inbounds i8, ptr %i.wa, i64 %.013.i780.idx.i.lcssa ; 2 uses
  %i.ajv = icmp sgt i64 %.013.i780.idx.i.lcssa, 0
  br i1 %i.ajv, label %.lr.ph.i787.i.preheader, label %LZ4HC_reverseCountPattern.exit791.i, !prof !43

.lr.ph.i787.i.preheader:                          ; preds = %._crit_edge1078, %.thread2464.i
  %.116.i789.i.ph = phi ptr [ %.013.i780.ptr.le2465.i, %.thread2464.i ], [ %.013.i780.ptr.le.i, %._crit_edge1078 ]
  br label %.lr.ph.i787.i

bb.ga:                                            ; preds = %.lr.ph.i787.i
  %i.ajw = getelementptr inbounds i8, ptr %.017.i788.i, i64 -1
  %i.ajx = icmp ugt ptr %i.ajy, %i.wa
  br i1 %i.ajx, label %.lr.ph.i787.i, label %LZ4HC_reverseCountPattern.exit791.i, !prof !24, !llvm.loop !42

.lr.ph.i787.i:                                    ; preds = %.lr.ph.i787.i.preheader, %bb.ga
  %.017.i788.i = phi ptr [ %i.ajw, %bb.ga ], [ %i.dy, %.lr.ph.i787.i.preheader ] ; 2 uses
  %.116.i789.i = phi ptr [ %i.ajy, %bb.ga ], [ %.116.i789.i.ph, %.lr.ph.i787.i.preheader ] ; 2 uses
  %i.ajy = getelementptr inbounds i8, ptr %.116.i789.i, i64 -1 ; 3 uses
  %i.ajz = load i8, ptr %i.ajy, align 1, !tbaa !27
  %i.aka = load i8, ptr %.017.i788.i, align 1, !tbaa !27
  %.not15.i790.i = icmp eq i8 %i.ajz, %i.aka
  br i1 %.not15.i790.i, label %bb.ga, label %LZ4HC_reverseCountPattern.exit791.i

LZ4HC_reverseCountPattern.exit791.i:              ; preds = %.lr.ph.i787.i, %bb.ga, %._crit_edge1078
  %.1.lcssa.i784.i = phi ptr [ %.013.i780.ptr.le.i, %._crit_edge1078 ], [ %.116.i789.i, %.lr.ph.i787.i ], [ %i.wa, %bb.ga ]
  %i.akb = ptrtoint ptr %.1.lcssa.i784.i to i64
  %i.akc = sub i64 %i.yu, %i.akb
  %i.akd = trunc i64 %i.akc to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ake = add i32 %i.akd, %i.ajo
  br label %bb.gb

bb.gb:                                            ; preds = %LZ4HC_reverseCountPattern.exit791.i, %LZ4HC_reverseCountPattern.exit777.i
  %.0390.i437.i = phi i32 [ %i.ajo, %LZ4HC_reverseCountPattern.exit777.i ], [ %i.ake, %LZ4HC_reverseCountPattern.exit791.i ]
  %i.akf = sub i32 %i.aga, %.0390.i437.i
  %i.akg = tail call i32 @llvm.umax.i32(i32 %i.akf, i32 %i.vz) ; 8 uses
  %i.akh = sub i32 %i.aga, %i.akg
  %i.aki = zext i32 %i.akh to i64
  %i.akj = add nuw nsw i64 %.0393.i433.i, %i.aki  ; 2 uses
  %.not438.i438.i = icmp ult i64 %i.akj, %.1347.i418.i
  %.not439.i439.i = icmp ugt i64 %.0393.i433.i, %.1347.i418.i
  %or.cond456.i440.i = or i1 %.not439.i439.i, %.not438.i438.i
  br i1 %or.cond456.i440.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.akk = trunc i64 %.0393.i433.i to i32
  %i.akl = trunc i64 %.1347.i418.i to i32
  %i.akm = sub i32 %i.aga, %i.akl
  %i.akn = add i32 %i.akm, %i.akk                 ; 2 uses
  %i.ako = sub i32 %i.akn, %i.vp
  %i.akp = icmp ugt i32 %i.ako, -4
  %..i442.i = select i1 %i.akp, i32 %i.vp, i32 %i.akn
  br label %.thread1159.i

bb.gd:                                            ; preds = %bb.gb
  %i.akq = sub i32 %i.akg, %i.vp
  %i.akr = icmp ugt i32 %i.akq, -4
  br i1 %i.akr, label %.thread1159.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  br i1 %.not433.i464.i, label %bb.gf, label %.thread1159.i

bb.gf:                                            ; preds = %bb.ge
  %i.aks = tail call i64 @llvm.umin.i64(i64 %i.akj, i64 %.1347.i418.i) ; 2 uses
  %i.akt = sext i32 %.5.i405.i to i64
  %i.aku = icmp ugt i64 %i.aks, %i.akt
  br i1 %i.aku, label %bb.gg, label %bb.gi

bb.gg:                                            ; preds = %bb.gf
  %i.akv = zext i32 %i.akg to i64
  %i.akw = sub i64 %i.xz, %i.akv
  %i.akx = icmp ugt i64 %i.akw, 65535
  br i1 %i.akx, label %.thread1159.thread.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aky = trunc i64 %i.aks to i32
  %i.akz = sub i32 %i.vu, %i.akg
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gf
  %.6357.i455.i = phi i32 [ %i.akz, %bb.gh ], [ %.5356.i404.i, %bb.gf ] ; 2 uses
  %.6.i456.i = phi i32 [ %i.aky, %bb.gh ], [ %.5.i405.i, %bb.gf ] ; 2 uses
  %i.ala = and i32 %i.akg, 65535
  %i.alb = zext nneg i32 %i.ala to i64
  %i.alc = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.alb
  %i.ald = load i16, ptr %i.alc, align 2, !tbaa !29
  %i.ale = zext i16 %i.ald to i32                 ; 2 uses
  %i.alf = icmp ult i32 %i.akg, %i.ale
  %i.alg = sub nuw i32 %i.akg, %i.ale
  br i1 %i.alf, label %.thread1159.thread.i, label %.thread1159.i

.thread1131.i:                                    ; preds = %bb.fn, %bb.fm, %bb.fl, %bb.fh, %bb.ff
  %.3349.i413.i = phi i64 [ %.0346.i3331607.i, %bb.ff ], [ %.1347.i418.i, %bb.fn ], [ %.1347.i418.i, %bb.fm ], [ %.1347.i418.i, %bb.fl ], [ %.0346.i3331607.i, %bb.fh ]
  %.3344.i414.i = phi i32 [ %.0341.i3341608.i, %bb.ff ], [ 2, %bb.fn ], [ 2, %bb.fm ], [ %.1342.i419.i, %bb.fl ], [ 1, %bb.fh ]
  %i.alh = zext i16 %i.afy to i32
  %i.ali = sub i32 %.0323.i3351609.i, %i.alh
  br label %.thread1159.i

.thread1159.i:                                    ; preds = %.thread1131.i, %bb.gi, %bb.ge, %bb.gd, %bb.gc
  %.16.i4161170.i = phi i32 [ %.5.i405.i, %.thread1131.i ], [ %.5.i405.i, %bb.gc ], [ %.5.i405.i, %bb.gd ], [ %.5.i405.i, %bb.ge ], [ %.6.i456.i, %bb.gi ] ; 2 uses
  %.3344.i4141169.i = phi i32 [ %.3344.i414.i, %.thread1131.i ], [ 2, %bb.gc ], [ 2, %bb.gd ], [ 2, %bb.ge ], [ 2, %bb.gi ]
  %.3349.i4131168.i = phi i64 [ %.3349.i413.i, %.thread1131.i ], [ %.1347.i418.i, %bb.gc ], [ %.1347.i418.i, %bb.gd ], [ %.1347.i418.i, %bb.ge ], [ %.1347.i418.i, %bb.gi ]
  %.16367.i4121167.i = phi i32 [ %.5356.i404.i, %.thread1131.i ], [ %.5356.i404.i, %bb.gc ], [ %.5356.i404.i, %bb.gd ], [ %.5356.i404.i, %bb.ge ], [ %.6357.i455.i, %bb.gi ] ; 2 uses
  %.15338.i408.i = phi i32 [ %i.ali, %.thread1131.i ], [ %..i442.i, %bb.gc ], [ %i.vp, %bb.gd ], [ %i.akg, %bb.ge ], [ %i.alg, %bb.gi ] ; 2 uses
  %i.alj = icmp uge i32 %.15338.i408.i, %i.vz
  %i.alk = icmp sgt i32 %.0314.i3371610.i, 1
  %i.all = select i1 %i.alj, i1 %i.alk, i1 false
  br i1 %i.all, label %bb.dg, label %.thread1159.thread.i

.thread1159.thread.i:                             ; preds = %.thread1159.i, %bb.gi, %bb.gg, %LZ4HC_Insert.exit.i330.i
  %.6380.i339.i = phi i32 [ 0, %LZ4HC_Insert.exit.i330.i ], [ %.5379.i403.i, %bb.gg ], [ %.5379.i403.i, %bb.gi ], [ %.5379.i403.i, %.thread1159.i ] ; 3 uses
  %.18369.i340.i = phi i32 [ 0, %LZ4HC_Insert.exit.i330.i ], [ %.16367.i4121167.i, %.thread1159.i ], [ %.6357.i455.i, %bb.gi ], [ %.5356.i404.i, %bb.gg ] ; 3 uses
  %.1315.i341.i = phi i32 [ %.sroa.04.4.extract.trunc.i.i, %LZ4HC_Insert.exit.i330.i ], [ %i.yw, %bb.gg ], [ %i.yw, %bb.gi ], [ %i.yw, %.thread1159.i ] ; 2 uses
  %.18.i342.i = phi i32 [ %.sroa.0162.sroa.14.0.i.i, %LZ4HC_Insert.exit.i330.i ], [ %.16.i4161170.i, %.thread1159.i ], [ %.6.i456.i, %bb.gi ], [ %.5.i405.i, %bb.gg ] ; 3 uses
  %i.alm = icmp sgt i32 %.1315.i341.i, 0
  %or.cond15.i343.i = and i1 %i.vx, %i.alm
  br i1 %or.cond15.i343.i, label %bb.gj, label %LZ4HC_InsertAndGetWiderMatch.exit560.i

bb.gj:                                            ; preds = %.thread1159.thread.i
  %i.aln = getelementptr inbounds nuw i8, ptr %i.vn, i64 262144
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !7
  %i.alp = getelementptr inbounds nuw i8, ptr %i.vn, i64 262152
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !13 ; 2 uses
  %i.alr = ptrtoint ptr %i.alo to i64
  %i.als = ptrtoint ptr %i.alq to i64
  %i.alt = sub i64 %i.alr, %i.als
  %i.alu = getelementptr inbounds nuw i8, ptr %i.vn, i64 262168
  %i.alv = load i32, ptr %i.alu, align 8, !tbaa !14
  %i.alw = zext i32 %i.alv to i64                 ; 3 uses
  %i.alx = add i64 %i.alt, %i.alw                 ; 2 uses
  %.val588.i = load i32, ptr %i.vm, align 1, !tbaa !15
  %i.aly = mul i32 %.val588.i, -1640531535
  %i.alz = lshr i32 %i.aly, 17
  %i.ama = zext nneg i32 %i.alz to i64
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %i.ama
  %i.amc = load i32, ptr %i.amb, align 4, !tbaa !3 ; 2 uses
  %i.amd = add i32 %i.amc, %i.vz
  %i.ame = trunc i64 %i.alx to i32
  %i.amf = sub i32 %i.amd, %i.ame                 ; 2 uses
  %i.amg = sub i32 %i.vu, %i.amf                  ; 2 uses
  %i.amh = icmp ult i32 %i.amg, 65536
  br i1 %i.amh, label %.lr.ph1645.i, label %LZ4HC_InsertAndGetWiderMatch.exit560.i

.lr.ph1645.i:                                     ; preds = %bb.gj
  %i.ami = sub nsw i64 0, %i.alw
  %i.amj = getelementptr inbounds i8, ptr %i.alq, i64 %i.ami
  %i.amk = getelementptr inbounds nuw i8, ptr %i.vl, i64 2 ; 4 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.vl, i64 10
  %i.amm = ptrtoint ptr %i.amk to i64             ; 2 uses
  %.not443.i378.i = icmp eq i32 %i.wf, 0
  %gepdiff1340.i = sub nsw i64 2, %i.vk
  %i.amn = getelementptr inbounds nuw i8, ptr %i.vn, i64 131072
  br label %bb.gk

bb.gk:                                            ; preds = %bb.hb, %.lr.ph1645.i
  %.in1224 = phi i32 [ %.1315.i341.i, %.lr.ph1645.i ], [ %i.amp, %bb.hb ]
  %.7381.i3541638.i1086 = phi i32 [ %.6380.i339.i, %.lr.ph1645.i ], [ %.9383.i361.i, %bb.hb ] ; 2 uses
  %.19370.i3551639.i1085 = phi i32 [ %.18369.i340.i, %.lr.ph1645.i ], [ %.21372.i362.i, %bb.hb ] ; 2 uses
  %.0340.i3561640.i1084 = phi i32 [ %i.amc, %.lr.ph1645.i ], [ %i.app, %bb.hb ] ; 3 uses
  %.16339.i3571641.i1083 = phi i32 [ %i.amf, %.lr.ph1645.i ], [ %i.apm, %bb.hb ]
  %.19.i3591643.i1082 = phi i32 [ %.18.i342.i, %.lr.ph1645.i ], [ %.21.i363.i, %bb.hb ] ; 3 uses
  %i.amo = phi i32 [ %i.amg, %.lr.ph1645.i ], [ %i.apn, %bb.hb ]
  %i.amp = add nsw i32 %.in1224, -1               ; 2 uses
  %i.amq = zext i32 %.0340.i3561640.i1084 to i64  ; 3 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amj, i64 %i.amq ; 5 uses
  %.val569.i = load i32, ptr %i.amr, align 1, !tbaa !15
  %i.ams = icmp eq i32 %.val569.i, %.val570.i
  br i1 %i.ams, label %bb.gl, label %bb.hb

bb.gl:                                            ; preds = %bb.gk
  %i.amt = sub i64 %i.alx, %i.amq
  %i.amu = getelementptr inbounds nuw i8, ptr %i.vm, i64 %i.amt ; 2 uses
  %i.amv = icmp ugt ptr %i.amu, %i.dk
  %spec.select457.i364.i = select i1 %i.amv, ptr %i.dk, ptr %i.amu ; 4 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amr, i64 4 ; 2 uses
  %i.amx = getelementptr inbounds i8, ptr %spec.select457.i364.i, i64 -7 ; 3 uses
  %i.amy = icmp ult ptr %i.amk, %i.amx
  br i1 %i.amy, label %bb.gm, label %bb.go, !prof !19
end_hunk_1
begin_hunk_2_@LZ4HC_compress_generic:bb.a
  %i.bep = zext i32 %i.bej to i64
  %i.beq = getelementptr inbounds nuw i8, ptr %i.atd, i64 %i.bep
  %i.ber = select i1 %i.bel, ptr %i.beq, ptr %i.beo ; 8 uses
  %.val577.i = load i32, ptr %i.ber, align 1, !tbaa !15
  %i.bes = icmp eq i32 %.val577.i, %.val581.i
  br i1 %i.bes, label %bb.ka, label %.thread1217.i

bb.ka:                                            ; preds = %bb.jz
  %i.bet = select i1 %i.bel, ptr %i.dk, ptr %.ptr1347.i ; 4 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %i.ber, i64 4 ; 4 uses
  %i.bev = ptrtoint ptr %i.bet to i64
  %i.bew = getelementptr inbounds i8, ptr %i.bet, i64 -7 ; 2 uses
  %i.bex = icmp ult ptr %i.beu, %i.bew
  br i1 %i.bex, label %.lr.ph.i828.i, label %.preheader.i813.i, !prof !23

.preheader.i813.i:                                ; preds = %bb.kb, %bb.ka
  %.037.lcssa.i814.i = phi ptr [ %i.beu, %bb.ka ], [ %i.bff, %bb.kb ] ; 4 uses
  %.037.lcssa53.i815.i = ptrtoint ptr %.037.lcssa.i814.i to i64 ; 2 uses
  %i.bey = icmp ult ptr %.037.lcssa.i814.i, %i.bet
  br i1 %i.bey, label %.lr.ph47.preheader.i819.i, label %LZ4HC_countPattern.exit833.i

.lr.ph47.preheader.i819.i:                        ; preds = %.preheader.i813.i
  %i.bez = sub i64 %i.bev, %.037.lcssa53.i815.i
  %scevgep.i820.i = getelementptr i8, ptr %.037.lcssa.i814.i, i64 %i.bez
  br label %.lr.ph47.i821.i

.lr.ph.i828.i:                                    ; preds = %bb.ka, %bb.kb
  %.03744.i829.i = phi ptr [ %i.bff, %bb.kb ], [ %i.beu, %bb.ka ] ; 3 uses
  %.037.val.i830.i = load i64, ptr %.03744.i829.i, align 1, !tbaa !20 ; 2 uses
  %.not.i831.i = icmp eq i64 %.037.val.i830.i, %i.awh
  br i1 %.not.i831.i, label %bb.kb, label %.thread.i832.i

.thread.i832.i:                                   ; preds = %.lr.ph.i828.i
  %i.bfa = xor i64 %.037.val.i830.i, %i.awh
  %i.bfb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bfa, i1 true)
  %i.bfc = lshr i64 %i.bfb, 3
  %i.bfd = getelementptr inbounds nuw i8, ptr %.03744.i829.i, i64 %i.bfc
  %i.bfe = ptrtoint ptr %i.bfd to i64
  br label %LZ4HC_countPattern.exit833.i

bb.kb:                                            ; preds = %.lr.ph.i828.i
  %i.bff = getelementptr inbounds nuw i8, ptr %.03744.i829.i, i64 8 ; 3 uses
  %i.bfg = icmp ult ptr %i.bff, %i.bew
  br i1 %i.bfg, label %.lr.ph.i828.i, label %.preheader.i813.i, !prof !24

.lr.ph47.i821.i:                                  ; preds = %bb.kc, %.lr.ph47.preheader.i819.i
  %.03446.i822.i = phi i64 [ %i.bfl, %bb.kc ], [ %i.awh, %.lr.ph47.preheader.i819.i ] ; 2 uses
  %.23945.i823.i = phi ptr [ %i.bfk, %bb.kc ], [ %.037.lcssa.i814.i, %.lr.ph47.preheader.i819.i ] ; 3 uses
  %i.bfh = load i8, ptr %.23945.i823.i, align 1, !tbaa !27
  %i.bfi = trunc i64 %.03446.i822.i to i8
  %i.bfj = icmp eq i8 %i.bfh, %i.bfi
  br i1 %i.bfj, label %bb.kc, label %.critedge.loopexit.i824.i

bb.kc:                                            ; preds = %.lr.ph47.i821.i
  %i.bfk = getelementptr inbounds nuw i8, ptr %.23945.i823.i, i64 1 ; 2 uses
  %i.bfl = lshr i64 %.03446.i822.i, 8
  %exitcond.not.i827.i = icmp eq ptr %i.bfk, %i.bet
  br i1 %exitcond.not.i827.i, label %.critedge.loopexit.i824.i, label %.lr.ph47.i821.i, !llvm.loop !38

.critedge.loopexit.i824.i:                        ; preds = %bb.kc, %.lr.ph47.i821.i
  %.239.lcssa.ph.i825.i = phi ptr [ %scevgep.i820.i, %bb.kc ], [ %.23945.i823.i, %.lr.ph47.i821.i ]
  %.pre.i826.i = ptrtoint ptr %.239.lcssa.ph.i825.i to i64
  br label %LZ4HC_countPattern.exit833.i

LZ4HC_countPattern.exit833.i:                     ; preds = %.critedge.loopexit.i824.i, %.thread.i832.i, %.preheader.i813.i
  %.sink.i817.i = phi i64 [ %i.bfe, %.thread.i832.i ], [ %.pre.i826.i, %.critedge.loopexit.i824.i ], [ %.037.lcssa53.i815.i, %.preheader.i813.i ]
  %i.bfm = ptrtoint ptr %i.beu to i64
  %i.bfn = sub i64 %.sink.i817.i, %i.bfm          ; 3 uses
  %i.bfo = and i64 %i.bfn, 4294967295
  %i.bfp = add nuw nsw i64 %i.bfo, 4              ; 4 uses
  br i1 %i.bel, label %bb.kh, label %bb.kd

bb.kd:                                            ; preds = %LZ4HC_countPattern.exit833.i
  %i.bfq = add nuw nsw i64 %i.bfp, %i.ben
  %i.bfr = icmp eq i64 %i.bfq, %i.ats
  br i1 %i.bfr, label %bb.ke, label %bb.kh

bb.ke:                                            ; preds = %bb.kd
  %i.bfs = and i64 %i.bfn, 3
  %i.bft = icmp eq i64 %i.bfs, 0
  %.tr.i834.i = trunc i64 %i.bfn to i32
  %i.bfu = shl i32 %.tr.i834.i, 3
  %i.bfv = tail call i32 @llvm.fshl.i32(i32 %.val581.i, i32 %.val581.i, i32 %i.bfu)
  %.0.i835.i = select i1 %i.bft, i32 %.val581.i, i32 %i.bfv
  %i.bfw = zext i32 %.0.i835.i to i64
  %i.bfx = mul nuw i64 %i.bfw, 4294967297         ; 3 uses
  br i1 %i.awi, label %.lr.ph.i851.i, label %.preheader.i836.i, !prof !23

.preheader.i836.loopexit.i:                       ; preds = %bb.kf
  %.pre2192.i = ptrtoint ptr %i.bgf to i64
  br label %.preheader.i836.i

.preheader.i836.i:                                ; preds = %.preheader.i836.loopexit.i, %bb.ke
  %.037.lcssa53.i838.pre-phi.i = phi i64 [ %.pre2192.i, %.preheader.i836.loopexit.i ], [ %i.atg, %bb.ke ] ; 2 uses
  %.037.lcssa.i837.i = phi ptr [ %i.bgf, %.preheader.i836.loopexit.i ], [ %i.atd, %bb.ke ] ; 3 uses
  %i.bfy = icmp ult ptr %.037.lcssa.i837.i, %i.dk
  br i1 %i.bfy, label %.lr.ph47.preheader.i842.i, label %LZ4HC_countPattern.exit856.i

.lr.ph47.preheader.i842.i:                        ; preds = %.preheader.i836.i
  %i.bfz = sub i64 %i.du, %.037.lcssa53.i838.pre-phi.i
  %scevgep.i843.i = getelementptr i8, ptr %.037.lcssa.i837.i, i64 %i.bfz
  br label %.lr.ph47.i844.i

.lr.ph.i851.i:                                    ; preds = %bb.ke, %bb.kf
  %.03744.i852.i = phi ptr [ %i.bgf, %bb.kf ], [ %i.atd, %bb.ke ] ; 3 uses
  %.037.val.i853.i = load i64, ptr %.03744.i852.i, align 1, !tbaa !20 ; 2 uses
  %.not.i854.i = icmp eq i64 %.037.val.i853.i, %i.bfx
  br i1 %.not.i854.i, label %bb.kf, label %.thread.i855.i

.thread.i855.i:                                   ; preds = %.lr.ph.i851.i
  %i.bga = xor i64 %.037.val.i853.i, %i.bfx
  %i.bgb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bga, i1 true)
  %i.bgc = lshr i64 %i.bgb, 3
  %i.bgd = getelementptr inbounds nuw i8, ptr %.03744.i852.i, i64 %i.bgc
  %i.bge = ptrtoint ptr %i.bgd to i64
  br label %LZ4HC_countPattern.exit856.i

bb.kf:                                            ; preds = %.lr.ph.i851.i
  %i.bgf = getelementptr inbounds nuw i8, ptr %.03744.i852.i, i64 8 ; 4 uses
  %i.bgg = icmp ult ptr %i.bgf, %i.dj
  br i1 %i.bgg, label %.lr.ph.i851.i, label %.preheader.i836.loopexit.i, !prof !24

.lr.ph47.i844.i:                                  ; preds = %bb.kg, %.lr.ph47.preheader.i842.i
  %.03446.i845.i = phi i64 [ %i.bgl, %bb.kg ], [ %i.bfx, %.lr.ph47.preheader.i842.i ] ; 2 uses
  %.23945.i846.i = phi ptr [ %i.bgk, %bb.kg ], [ %.037.lcssa.i837.i, %.lr.ph47.preheader.i842.i ] ; 3 uses
  %i.bgh = load i8, ptr %.23945.i846.i, align 1, !tbaa !27
  %i.bgi = trunc i64 %.03446.i845.i to i8
  %i.bgj = icmp eq i8 %i.bgh, %i.bgi
  br i1 %i.bgj, label %bb.kg, label %.critedge.loopexit.i847.i

bb.kg:                                            ; preds = %.lr.ph47.i844.i
  %i.bgk = getelementptr inbounds nuw i8, ptr %.23945.i846.i, i64 1 ; 2 uses
  %i.bgl = lshr i64 %.03446.i845.i, 8
  %exitcond.not.i850.i = icmp eq ptr %i.bgk, %i.dk
  br i1 %exitcond.not.i850.i, label %.critedge.loopexit.i847.i, label %.lr.ph47.i844.i, !llvm.loop !38

.critedge.loopexit.i847.i:                        ; preds = %bb.kg, %.lr.ph47.i844.i
  %.239.lcssa.ph.i848.i = phi ptr [ %scevgep.i843.i, %bb.kg ], [ %.23945.i846.i, %.lr.ph47.i844.i ]
  %.pre.i849.i = ptrtoint ptr %.239.lcssa.ph.i848.i to i64
  br label %LZ4HC_countPattern.exit856.i

LZ4HC_countPattern.exit856.i:                     ; preds = %.critedge.loopexit.i847.i, %.thread.i855.i, %.preheader.i836.i
  %.sink.i840.i = phi i64 [ %i.bge, %.thread.i855.i ], [ %.pre.i849.i, %.critedge.loopexit.i847.i ], [ %.037.lcssa53.i838.pre-phi.i, %.preheader.i836.i ]
  %i.bgm = sub i64 %.sink.i840.i, %i.atg
  %i.bgn = and i64 %i.bgm, 4294967295
  %i.bgo = add nuw nsw i64 %i.bgn, %i.bfp
  br label %bb.kh

bb.kh:                                            ; preds = %LZ4HC_countPattern.exit856.i, %bb.kd, %LZ4HC_countPattern.exit833.i
  %i.bgp = phi ptr [ %i.atp, %LZ4HC_countPattern.exit856.i ], [ %i.atp, %bb.kd ], [ %i.atd, %LZ4HC_countPattern.exit833.i ] ; 4 uses
  %.0393.i221.i = phi i64 [ %i.bgo, %LZ4HC_countPattern.exit856.i ], [ %i.bfp, %bb.kd ], [ %i.bfp, %LZ4HC_countPattern.exit833.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bgq = ptrtoint ptr %i.ber to i64             ; 2 uses
  %i.bgr = ptrtoint ptr %i.bgp to i64
  store i32 %.val581.i, ptr %i.b, align 4, !tbaa !3
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgp, i64 4 ; 2 uses
  %.not.i858.i1091 = icmp ult ptr %i.ber, %i.bgs
  br i1 %.not.i858.i1091, label %._crit_edge1097, label %.lr.ph1094, !prof !39

bb.ki:                                            ; preds = %.lr.ph1094
  %.not.i858.i = icmp ult ptr %i.bgt, %i.bgs
  br i1 %.not.i858.i, label %._crit_edge1097, label %.lr.ph1094, !prof !40, !llvm.loop !41

.lr.ph1094:                                       ; preds = %bb.kh, %bb.ki
  %.013.i857.i1092 = phi ptr [ %i.bgt, %bb.ki ], [ %i.ber, %bb.kh ] ; 2 uses
  %i.bgt = getelementptr inbounds i8, ptr %.013.i857.i1092, i64 -4 ; 4 uses
  %.val.i859.i = load i32, ptr %i.bgt, align 1, !tbaa !15
  %.not14.i860.i = icmp eq i32 %.val.i859.i, %.val581.i
  br i1 %.not14.i860.i, label %bb.ki, label %._crit_edge1095, !llvm.loop !41

._crit_edge1095:                                  ; preds = %.lr.ph1094
  br label %._crit_edge1097, !llvm.loop !41

._crit_edge1097:                                  ; preds = %bb.ki, %._crit_edge1095, %bb.kh
  %.013.i857.i.lcssa = phi ptr [ %.013.i857.i1092, %._crit_edge1095 ], [ %i.ber, %bb.kh ], [ %i.bgt, %bb.ki ] ; 3 uses
  %i.bgu = icmp ugt ptr %.013.i857.i.lcssa, %i.bgp
  br i1 %i.bgu, label %.lr.ph.preheader.i862.i, label %LZ4HC_reverseCountPattern.exit868.i, !prof !23

.lr.ph.preheader.i862.i:                          ; preds = %._crit_edge1097
  %i.bgv = sub i64 %i.bgr, %i.bgq
  %scevgep.i863.i = getelementptr i8, ptr %i.ber, i64 %i.bgv
  br label %.lr.ph.i864.i

bb.kj:                                            ; preds = %.lr.ph.i864.i
  %i.bgw = getelementptr inbounds i8, ptr %.017.i865.i, i64 -1
  %i.bgx = icmp ugt ptr %i.bgy, %i.bgp
  br i1 %i.bgx, label %.lr.ph.i864.i, label %LZ4HC_reverseCountPattern.exit868.i, !prof !24, !llvm.loop !42

.lr.ph.i864.i:                                    ; preds = %bb.kj, %.lr.ph.preheader.i862.i
  %.017.i865.i = phi ptr [ %i.bgw, %bb.kj ], [ %i.dz, %.lr.ph.preheader.i862.i ] ; 2 uses
  %.116.i866.i = phi ptr [ %i.bgy, %bb.kj ], [ %.013.i857.i.lcssa, %.lr.ph.preheader.i862.i ] ; 2 uses
  %i.bgy = getelementptr inbounds i8, ptr %.116.i866.i, i64 -1 ; 3 uses
  %i.bgz = load i8, ptr %i.bgy, align 1, !tbaa !27
  %i.bha = load i8, ptr %.017.i865.i, align 1, !tbaa !27
  %.not15.i867.i = icmp eq i8 %i.bgz, %i.bha
  br i1 %.not15.i867.i, label %bb.kj, label %LZ4HC_reverseCountPattern.exit868.i

LZ4HC_reverseCountPattern.exit868.i:              ; preds = %.lr.ph.i864.i, %bb.kj, %._crit_edge1097
  %.1.lcssa.i861.i = phi ptr [ %.013.i857.i.lcssa, %._crit_edge1097 ], [ %.116.i866.i, %.lr.ph.i864.i ], [ %scevgep.i863.i, %bb.kj ]
  %i.bhb = ptrtoint ptr %.1.lcssa.i861.i to i64
  %i.bhc = sub i64 %i.bgq, %i.bhb                 ; 3 uses
  %i.bhd = trunc i64 %i.bhc to i32                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bhe = and i64 %i.bhc, 4294967295
  %i.bhf = sub nsw i64 0, %i.bhe
  %i.bhg = getelementptr inbounds i8, ptr %i.ber, i64 %i.bhf
  %i.bhh = icmp eq ptr %i.bhg, %i.atd
  %or.cond454.i223.i = select i1 %i.bel, i1 %i.bhh, i1 false
  %or.cond455.i224.i = select i1 %or.cond454.i223.i, i1 %i.awj, i1 false
  br i1 %or.cond455.i224.i, label %bb.kk, label %bb.kn

bb.kk:                                            ; preds = %LZ4HC_reverseCountPattern.exit868.i
  %11 = sub i64 0, %i.bhc
  %12 = and i64 %11, 3
  %i.bhi = icmp eq i64 %12, 0
  %.neg1348.i = mul i32 %i.bhd, 24
  %i.bhj = tail call i32 @llvm.fshl.i32(i32 %.val581.i, i32 %.val581.i, i32 %.neg1348.i)
  %.0.i870.i = select i1 %i.bhi, i32 %.val581.i, i32 %i.bhj ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.0.i870.i, ptr %i.a, align 4, !tbaa !3
  br i1 %.not.i872.i1099, label %._crit_edge1103, label %.lr.ph1102, !prof !39

bb.kl:                                            ; preds = %.lr.ph1102
  %.not.i872.i = icmp slt i64 %.013.i871.idx.i1100, 8
  br i1 %.not.i872.i, label %._crit_edge1103, label %.lr.ph1102, !prof !40, !llvm.loop !41

.lr.ph1102:                                       ; preds = %bb.kk, %bb.kl
  %.013.i871.idx.i1100 = phi i64 [ %.013.i871.add.i, %bb.kl ], [ %i.ats, %bb.kk ] ; 3 uses
  %.013.i871.add.i = add nsw i64 %.013.i871.idx.i1100, -4 ; 3 uses
  %.ptr1346.i = getelementptr inbounds nuw i8, ptr %i.atp, i64 %.013.i871.add.i
  %.val.i873.i = load i32, ptr %.ptr1346.i, align 1, !tbaa !15
  %.not14.i874.i = icmp eq i32 %.val.i873.i, %.0.i870.i
  br i1 %.not14.i874.i, label %bb.kl, label %.thread2467.i, !llvm.loop !41

.thread2467.i:                                    ; preds = %.lr.ph1102
  %.013.i871.ptr.le2468.i = getelementptr inbounds nuw i8, ptr %i.atp, i64 %.013.i871.idx.i1100
  br label %.lr.ph.i878.i.preheader

._crit_edge1103:                                  ; preds = %bb.kl, %bb.kk
  %.013.i871.idx.i.lcssa = phi i64 [ %i.ats, %bb.kk ], [ %.013.i871.add.i, %bb.kl ] ; 2 uses
  %.013.i871.ptr.le.i = getelementptr inbounds i8, ptr %i.atp, i64 %.013.i871.idx.i.lcssa ; 2 uses
  %i.bhk = icmp sgt i64 %.013.i871.idx.i.lcssa, 0
  br i1 %i.bhk, label %.lr.ph.i878.i.preheader, label %LZ4HC_reverseCountPattern.exit882.i, !prof !43

.lr.ph.i878.i.preheader:                          ; preds = %._crit_edge1103, %.thread2467.i
  %.116.i880.i.ph = phi ptr [ %.013.i871.ptr.le2468.i, %.thread2467.i ], [ %.013.i871.ptr.le.i, %._crit_edge1103 ]
  br label %.lr.ph.i878.i

bb.km:                                            ; preds = %.lr.ph.i878.i
  %i.bhl = getelementptr inbounds i8, ptr %.017.i879.i, i64 -1
  %i.bhm = icmp ugt ptr %i.bhn, %i.atp
  br i1 %i.bhm, label %.lr.ph.i878.i, label %LZ4HC_reverseCountPattern.exit882.i, !prof !24, !llvm.loop !42

.lr.ph.i878.i:                                    ; preds = %.lr.ph.i878.i.preheader, %bb.km
  %.017.i879.i = phi ptr [ %i.bhl, %bb.km ], [ %i.ea, %.lr.ph.i878.i.preheader ] ; 2 uses
  %.116.i880.i = phi ptr [ %i.bhn, %bb.km ], [ %.116.i880.i.ph, %.lr.ph.i878.i.preheader ] ; 2 uses
  %i.bhn = getelementptr inbounds i8, ptr %.116.i880.i, i64 -1 ; 3 uses
  %i.bho = load i8, ptr %i.bhn, align 1, !tbaa !27
  %i.bhp = load i8, ptr %.017.i879.i, align 1, !tbaa !27
  %.not15.i881.i = icmp eq i8 %i.bho, %i.bhp
  br i1 %.not15.i881.i, label %bb.km, label %LZ4HC_reverseCountPattern.exit882.i

LZ4HC_reverseCountPattern.exit882.i:              ; preds = %.lr.ph.i878.i, %bb.km, %._crit_edge1103
  %.1.lcssa.i875.i = phi ptr [ %.013.i871.ptr.le.i, %._crit_edge1103 ], [ %.116.i880.i, %.lr.ph.i878.i ], [ %i.atp, %bb.km ]
  %i.bhq = ptrtoint ptr %.1.lcssa.i875.i to i64
  %i.bhr = sub i64 %i.awk, %i.bhq
  %i.bhs = trunc i64 %i.bhr to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bht = add i32 %i.bhs, %i.bhd
  br label %bb.kn

bb.kn:                                            ; preds = %LZ4HC_reverseCountPattern.exit882.i, %LZ4HC_reverseCountPattern.exit868.i
  %.0390.i225.i = phi i32 [ %i.bhd, %LZ4HC_reverseCountPattern.exit868.i ], [ %i.bht, %LZ4HC_reverseCountPattern.exit882.i ]
  %i.bhu = sub i32 %i.bdp, %.0390.i225.i
  %i.bhv = tail call i32 @llvm.umax.i32(i32 %i.bhu, i32 %i.ato) ; 8 uses
  %i.bhw = sub i32 %i.bdp, %i.bhv
  %i.bhx = zext i32 %i.bhw to i64
  %i.bhy = add nuw nsw i64 %.0393.i221.i, %i.bhx  ; 2 uses
  %.not438.i226.i = icmp ult i64 %i.bhy, %.1347.i206.i
  %.not439.i227.i = icmp ugt i64 %.0393.i221.i, %.1347.i206.i
  %or.cond456.i228.i = or i1 %.not439.i227.i, %.not438.i226.i
  br i1 %or.cond456.i228.i, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.bhz = trunc i64 %.0393.i221.i to i32
  %i.bia = trunc i64 %.1347.i206.i to i32
  %i.bib = sub i32 %i.bdp, %i.bia
  %i.bic = add i32 %i.bib, %i.bhz                 ; 2 uses
  %i.bid = sub i32 %i.bic, %i.ate
  %i.bie = icmp ugt i32 %i.bid, -4
  %..i230.i = select i1 %i.bie, i32 %i.ate, i32 %i.bic
  br label %.thread1245.i

bb.kp:                                            ; preds = %bb.kn
  %i.bif = sub i32 %i.bhv, %i.ate
  %i.big = icmp ugt i32 %i.bif, -4
  br i1 %i.big, label %.thread1245.i, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  br i1 %.not433.i.i, label %bb.kr, label %.thread1245.i

bb.kr:                                            ; preds = %bb.kq
  %i.bih = tail call i64 @llvm.umin.i64(i64 %i.bhy, i64 %.1347.i206.i) ; 2 uses
  %i.bii = sext i32 %.5.i193.i to i64
  %i.bij = icmp ugt i64 %i.bih, %i.bii
  br i1 %i.bij, label %bb.ks, label %bb.ku

bb.ks:                                            ; preds = %bb.kr
  %i.bik = zext i32 %i.bhv to i64
  %i.bil = sub i64 %i.avo, %i.bik
  %i.bim = icmp ugt i64 %i.bil, 65535
  br i1 %i.bim, label %.thread1245.thread.i, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.bin = trunc i64 %i.bih to i32
  %i.bio = sub i32 %i.atj, %i.bhv
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %bb.kr
  %.6357.i243.i = phi i32 [ %i.bio, %bb.kt ], [ %.5356.i192.i, %bb.kr ] ; 2 uses
  %.6.i244.i = phi i32 [ %i.bin, %bb.kt ], [ %.5.i193.i, %bb.kr ] ; 2 uses
  %i.bip = and i32 %i.bhv, 65535
  %i.biq = zext nneg i32 %i.bip to i64
  %i.bir = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.biq
  %i.bis = load i16, ptr %i.bir, align 2, !tbaa !29
  %i.bit = zext i16 %i.bis to i32                 ; 2 uses
  %i.biu = icmp ult i32 %i.bhv, %i.bit
  %i.biv = sub nuw i32 %i.bhv, %i.bit
  br i1 %i.biu, label %.thread1245.thread.i, label %.thread1245.i

.thread1217.i:                                    ; preds = %bb.jz, %bb.jy, %bb.jx, %bb.jt, %bb.jr
  %.3349.i201.i = phi i64 [ %.0346.i1311696.i, %bb.jr ], [ %.1347.i206.i, %bb.jz ], [ %.1347.i206.i, %bb.jy ], [ %.1347.i206.i, %bb.jx ], [ %.0346.i1311696.i, %bb.jt ]
  %.3344.i202.i = phi i32 [ %.0341.i1321697.i, %bb.jr ], [ 2, %bb.jz ], [ 2, %bb.jy ], [ %.1342.i207.i, %bb.jx ], [ 1, %bb.jt ]
  %i.biw = zext i16 %i.bdn to i32
  %i.bix = sub i32 %.0323.i1331698.i, %i.biw
  br label %.thread1245.i

.thread1245.i:                                    ; preds = %.thread1217.i, %bb.ku, %bb.kq, %bb.kp, %bb.ko
  %.16.i2041256.i = phi i32 [ %.5.i193.i, %.thread1217.i ], [ %.5.i193.i, %bb.ko ], [ %.5.i193.i, %bb.kp ], [ %.5.i193.i, %bb.kq ], [ %.6.i244.i, %bb.ku ] ; 2 uses
  %.3344.i2021255.i = phi i32 [ %.3344.i202.i, %.thread1217.i ], [ 2, %bb.ko ], [ 2, %bb.kp ], [ 2, %bb.kq ], [ 2, %bb.ku ]
  %.3349.i2011254.i = phi i64 [ %.3349.i201.i, %.thread1217.i ], [ %.1347.i206.i, %bb.ko ], [ %.1347.i206.i, %bb.kp ], [ %.1347.i206.i, %bb.kq ], [ %.1347.i206.i, %bb.ku ]
  %.16367.i2001253.i = phi i32 [ %.5356.i192.i, %.thread1217.i ], [ %.5356.i192.i, %bb.ko ], [ %.5356.i192.i, %bb.kp ], [ %.5356.i192.i, %bb.kq ], [ %.6357.i243.i, %bb.ku ] ; 2 uses
  %.15338.i196.i = phi i32 [ %i.bix, %.thread1217.i ], [ %..i230.i, %bb.ko ], [ %i.ate, %bb.kp ], [ %i.bhv, %bb.kq ], [ %i.biv, %bb.ku ] ; 2 uses
  %i.biy = icmp uge i32 %.15338.i196.i, %i.ato
  %i.biz = icmp sgt i32 %.0314.i1351699.i, 1
  %i.bja = select i1 %i.biy, i1 %i.biz, i1 false
  br i1 %i.bja, label %bb.hs, label %.thread1245.thread.i

.thread1245.thread.i:                             ; preds = %.thread1245.i, %bb.ku, %bb.ks, %LZ4HC_Insert.exit.i128.i
  %.6380.i137.i = phi i32 [ 0, %LZ4HC_Insert.exit.i128.i ], [ %.5379.i191.i, %bb.ks ], [ %.5379.i191.i, %bb.ku ], [ %.5379.i191.i, %.thread1245.i ] ; 3 uses
  %.18369.i138.i = phi i32 [ 0, %LZ4HC_Insert.exit.i128.i ], [ %.16367.i2001253.i, %.thread1245.i ], [ %.6357.i243.i, %bb.ku ], [ %.5356.i192.i, %bb.ks ] ; 3 uses
  %.1315.i139.i = phi i32 [ %.sroa.04.4.extract.trunc.i.i, %LZ4HC_Insert.exit.i128.i ], [ %i.awl, %bb.ks ], [ %i.awl, %bb.ku ], [ %i.awl, %.thread1245.i ] ; 2 uses
  %.18.i140.i = phi i32 [ %.sroa.090.sroa.12.3.i.i, %LZ4HC_Insert.exit.i128.i ], [ %.16.i2041256.i, %.thread1245.i ], [ %.6.i244.i, %bb.ku ], [ %.5.i193.i, %bb.ks ] ; 3 uses
  %i.bjb = icmp sgt i32 %.1315.i139.i, 0
  %or.cond15.i141.i = and i1 %i.atm, %i.bjb
  br i1 %or.cond15.i141.i, label %bb.kv, label %LZ4HC_InsertAndGetWiderMatch.exit328.i

bb.kv:                                            ; preds = %.thread1245.thread.i
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.atc, i64 262144
  %i.bjd = load ptr, ptr %i.bjc, align 8, !tbaa !7
  %i.bje = getelementptr inbounds nuw i8, ptr %i.atc, i64 262152
  %i.bjf = load ptr, ptr %i.bje, align 8, !tbaa !13 ; 2 uses
  %i.bjg = ptrtoint ptr %i.bjd to i64
  %i.bjh = ptrtoint ptr %i.bjf to i64
  %i.bji = sub i64 %i.bjg, %i.bjh
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.atc, i64 262168
  %i.bjk = load i32, ptr %i.bjj, align 8, !tbaa !14
  %i.bjl = zext i32 %i.bjk to i64                 ; 3 uses
  %i.bjm = add i64 %i.bji, %i.bjl                 ; 2 uses
  %.val591.i = load i32, ptr %i.atb, align 1, !tbaa !15
  %i.bjn = mul i32 %.val591.i, -1640531535
  %i.bjo = lshr i32 %i.bjn, 17
  %i.bjp = zext nneg i32 %i.bjo to i64
  %i.bjq = getelementptr inbounds nuw [4 x i8], ptr %i.atc, i64 %i.bjp
  %i.bjr = load i32, ptr %i.bjq, align 4, !tbaa !3 ; 2 uses
  %i.bjs = add i32 %i.bjr, %i.ato
  %i.bjt = trunc i64 %i.bjm to i32
  %i.bju = sub i32 %i.bjs, %i.bjt                 ; 2 uses
  %i.bjv = sub i32 %i.atj, %i.bju                 ; 2 uses
  %i.bjw = icmp ult i32 %i.bjv, 65536
  br i1 %i.bjw, label %.lr.ph1734.i, label %LZ4HC_InsertAndGetWiderMatch.exit328.i

.lr.ph1734.i:                                     ; preds = %bb.kv
  %i.bjx = sub nsw i64 0, %i.bjl
  %i.bjy = getelementptr inbounds i8, ptr %i.bjf, i64 %i.bjx
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.ata, i64 1 ; 4 uses
  %i.bka = getelementptr inbounds nuw i8, ptr %i.ata, i64 9
  %i.bkb = ptrtoint ptr %i.bjz to i64             ; 2 uses
  %.not443.i.i = icmp eq i32 %i.atu, 0
  %gepdiff1348.i = sub nsw i64 3, %i.asz
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.atc, i64 131072
  br label %bb.kw

bb.kw:                                            ; preds = %bb.ln, %.lr.ph1734.i
  %.in1225 = phi i32 [ %.1315.i139.i, %.lr.ph1734.i ], [ %i.bke, %bb.ln ]
  %.7381.i1521727.i1111 = phi i32 [ %.6380.i137.i, %.lr.ph1734.i ], [ %.9383.i159.i, %bb.ln ] ; 2 uses
  %.19370.i1531728.i1110 = phi i32 [ %.18369.i138.i, %.lr.ph1734.i ], [ %.21372.i160.i, %bb.ln ] ; 2 uses
  %.0340.i1541729.i1109 = phi i32 [ %i.bjr, %.lr.ph1734.i ], [ %i.bne, %bb.ln ] ; 3 uses
  %.16339.i1551730.i1108 = phi i32 [ %i.bju, %.lr.ph1734.i ], [ %i.bnb, %bb.ln ]
  %.19.i1571732.i1107 = phi i32 [ %.18.i140.i, %.lr.ph1734.i ], [ %.21.i161.i, %bb.ln ] ; 3 uses
  %i.bkd = phi i32 [ %i.bjv, %.lr.ph1734.i ], [ %i.bnc, %bb.ln ]
  %i.bke = add nsw i32 %.in1225, -1               ; 2 uses
  %i.bkf = zext i32 %.0340.i1541729.i1109 to i64  ; 3 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bjy, i64 %i.bkf ; 5 uses
  %.val580.i = load i32, ptr %i.bkg, align 1, !tbaa !15
  %i.bkh = icmp eq i32 %.val580.i, %.val581.i
  br i1 %i.bkh, label %bb.kx, label %bb.ln

bb.kx:                                            ; preds = %bb.kw
  %i.bki = sub i64 %i.bjm, %i.bkf
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.atb, i64 %i.bki ; 2 uses
  %i.bkk = icmp ugt ptr %i.bkj, %i.dk
  %spec.select457.i162.i = select i1 %i.bkk, ptr %i.dk, ptr %i.bkj ; 4 uses
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bkg, i64 4 ; 2 uses
  %i.bkm = getelementptr inbounds i8, ptr %spec.select457.i162.i, i64 -7 ; 3 uses
  %i.bkn = icmp ult ptr %i.bjz, %i.bkm
  br i1 %i.bkn, label %bb.ky, label %bb.la, !prof !19
end_hunk_2
begin_hunk_3_@LZ4HC_compress_generic_noDictCtx:bb.a
  %i.ki = zext i32 %i.kc to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ki
  %i.kk = select i1 %i.ke, ptr %i.kj, ptr %i.kh   ; 8 uses
  %.val458 = load i32, ptr %i.kk, align 1, !tbaa !15
  %i.kl = icmp eq i32 %.val458, %.val459
  br i1 %i.kl, label %bb.bi, label %.thread914

bb.bi:                                            ; preds = %bb.bh
  %i.km = select i1 %i.ke, ptr %i.x, ptr %.ptr1176 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 4 ; 4 uses
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = getelementptr inbounds i8, ptr %i.km, i64 -7 ; 2 uses
  %i.kq = icmp ult ptr %i.kn, %i.kp
  br i1 %i.kq, label %.lr.ph.i528, label %.preheader.i513, !prof !23

.preheader.i513:                                  ; preds = %bb.bj, %bb.bi
  %.037.lcssa.i514 = phi ptr [ %i.kn, %bb.bi ], [ %i.ky, %bb.bj ] ; 4 uses
  %.037.lcssa53.i515 = ptrtoint ptr %.037.lcssa.i514 to i64 ; 2 uses
  %i.kr = icmp ult ptr %.037.lcssa.i514, %i.km
  br i1 %i.kr, label %.lr.ph47.preheader.i519, label %LZ4HC_countPattern.exit533

.lr.ph47.preheader.i519:                          ; preds = %.preheader.i513
  %i.ks = sub i64 %i.ko, %.037.lcssa53.i515
  %scevgep.i520 = getelementptr i8, ptr %.037.lcssa.i514, i64 %i.ks
  br label %.lr.ph47.i521

.lr.ph.i528:                                      ; preds = %bb.bi, %bb.bj
  %.03744.i529 = phi ptr [ %i.ky, %bb.bj ], [ %i.kn, %bb.bi ] ; 3 uses
  %.037.val.i530 = load i64, ptr %.03744.i529, align 1, !tbaa !20 ; 2 uses
  %.not.i531 = icmp eq i64 %.037.val.i530, %i.eb
  br i1 %.not.i531, label %bb.bj, label %.thread.i532

.thread.i532:                                     ; preds = %.lr.ph.i528
  %i.kt = xor i64 %.037.val.i530, %i.eb
  %i.ku = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.kt, i1 true)
  %i.kv = lshr i64 %i.ku, 3
  %i.kw = getelementptr inbounds nuw i8, ptr %.03744.i529, i64 %i.kv
  %i.kx = ptrtoint ptr %i.kw to i64
  br label %LZ4HC_countPattern.exit533

bb.bj:                                            ; preds = %.lr.ph.i528
  %i.ky = getelementptr inbounds nuw i8, ptr %.03744.i529, i64 8 ; 3 uses
  %i.kz = icmp ult ptr %i.ky, %i.kp
  br i1 %i.kz, label %.lr.ph.i528, label %.preheader.i513, !prof !24

.lr.ph47.i521:                                    ; preds = %bb.bk, %.lr.ph47.preheader.i519
  %.03446.i522 = phi i64 [ %i.le, %bb.bk ], [ %i.eb, %.lr.ph47.preheader.i519 ] ; 2 uses
  %.23945.i523 = phi ptr [ %i.ld, %bb.bk ], [ %.037.lcssa.i514, %.lr.ph47.preheader.i519 ] ; 3 uses
  %i.la = load i8, ptr %.23945.i523, align 1, !tbaa !27
  %i.lb = trunc i64 %.03446.i522 to i8
  %i.lc = icmp eq i8 %i.la, %i.lb
  br i1 %i.lc, label %bb.bk, label %.critedge.loopexit.i524

bb.bk:                                            ; preds = %.lr.ph47.i521
  %i.ld = getelementptr inbounds nuw i8, ptr %.23945.i523, i64 1 ; 2 uses
  %i.le = lshr i64 %.03446.i522, 8
  %exitcond.not.i527 = icmp eq ptr %i.ld, %i.km
  br i1 %exitcond.not.i527, label %.critedge.loopexit.i524, label %.lr.ph47.i521, !llvm.loop !38

.critedge.loopexit.i524:                          ; preds = %bb.bk, %.lr.ph47.i521
  %.239.lcssa.ph.i525 = phi ptr [ %scevgep.i520, %bb.bk ], [ %.23945.i523, %.lr.ph47.i521 ]
  %.pre.i526 = ptrtoint ptr %.239.lcssa.ph.i525 to i64
  br label %LZ4HC_countPattern.exit533

LZ4HC_countPattern.exit533:                       ; preds = %.preheader.i513, %.thread.i532, %.critedge.loopexit.i524
  %.sink.i517 = phi i64 [ %i.kx, %.thread.i532 ], [ %.pre.i526, %.critedge.loopexit.i524 ], [ %.037.lcssa53.i515, %.preheader.i513 ]
  %i.lf = ptrtoint ptr %i.kn to i64
  %i.lg = sub i64 %.sink.i517, %i.lf              ; 3 uses
  %i.lh = and i64 %i.lg, 4294967295
  %i.li = add nuw nsw i64 %i.lh, 4                ; 4 uses
  br i1 %i.ke, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %LZ4HC_countPattern.exit533
  %i.lj = add nuw nsw i64 %i.li, %i.kg
  %i.lk = icmp eq i64 %i.lj, %i.az
  br i1 %i.lk, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.ll = and i64 %i.lg, 3
  %i.lm = icmp eq i64 %i.ll, 0
  %.tr.i534 = trunc i64 %i.lg to i32
  %i.ln = shl i32 %.tr.i534, 3
  %i.lo = tail call i32 @llvm.fshl.i32(i32 %.val459, i32 %.val459, i32 %i.ln)
  %.0.i535 = select i1 %i.lm, i32 %.val459, i32 %i.lo
  %i.lp = zext i32 %.0.i535 to i64
  %i.lq = mul nuw i64 %i.lp, 4294967297           ; 3 uses
  br i1 %i.bd, label %.lr.ph.i551, label %.preheader.i536, !prof !23

.preheader.i536.loopexit:                         ; preds = %bb.bn
  %.pre1898.a = ptrtoint ptr %i.ly to i64
  br label %.preheader.i536

.preheader.i536:                                  ; preds = %.preheader.i536.loopexit, %bb.bm
  %.037.lcssa53.i538.pre-phi = phi i64 [ %.pre1898.a, %.preheader.i536.loopexit ], [ %i.at, %bb.bm ] ; 2 uses
  %.037.lcssa.i537 = phi ptr [ %i.ly, %.preheader.i536.loopexit ], [ %i.ar, %bb.bm ] ; 3 uses
  %i.lr = icmp ult ptr %.037.lcssa.i537, %i.x
  br i1 %i.lr, label %.lr.ph47.preheader.i542, label %LZ4HC_countPattern.exit556

.lr.ph47.preheader.i542:                          ; preds = %.preheader.i536
  %i.ls = sub i64 %i.ak, %.037.lcssa53.i538.pre-phi
  %scevgep.i543 = getelementptr i8, ptr %.037.lcssa.i537, i64 %i.ls
  br label %.lr.ph47.i544

.lr.ph.i551:                                      ; preds = %bb.bm, %bb.bn
  %.03744.i552 = phi ptr [ %i.ly, %bb.bn ], [ %i.ar, %bb.bm ] ; 3 uses
  %.037.val.i553 = load i64, ptr %.03744.i552, align 1, !tbaa !20 ; 2 uses
  %.not.i554 = icmp eq i64 %.037.val.i553, %i.lq
  br i1 %.not.i554, label %bb.bn, label %.thread.i555

.thread.i555:                                     ; preds = %.lr.ph.i551
  %i.lt = xor i64 %.037.val.i553, %i.lq
  %i.lu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.lt, i1 true)
  %i.lv = lshr i64 %i.lu, 3
  %i.lw = getelementptr inbounds nuw i8, ptr %.03744.i552, i64 %i.lv
  %i.lx = ptrtoint ptr %i.lw to i64
  br label %LZ4HC_countPattern.exit556

bb.bn:                                            ; preds = %.lr.ph.i551
  %i.ly = getelementptr inbounds nuw i8, ptr %.03744.i552, i64 8 ; 4 uses
  %i.lz = icmp ult ptr %i.ly, %i.w
  br i1 %i.lz, label %.lr.ph.i551, label %.preheader.i536.loopexit, !prof !24

.lr.ph47.i544:                                    ; preds = %bb.bo, %.lr.ph47.preheader.i542
  %.03446.i545 = phi i64 [ %i.me, %bb.bo ], [ %i.lq, %.lr.ph47.preheader.i542 ] ; 2 uses
  %.23945.i546 = phi ptr [ %i.md, %bb.bo ], [ %.037.lcssa.i537, %.lr.ph47.preheader.i542 ] ; 3 uses
  %i.ma = load i8, ptr %.23945.i546, align 1, !tbaa !27
  %i.mb = trunc i64 %.03446.i545 to i8
  %i.mc = icmp eq i8 %i.ma, %i.mb
  br i1 %i.mc, label %bb.bo, label %.critedge.loopexit.i547

bb.bo:                                            ; preds = %.lr.ph47.i544
  %i.md = getelementptr inbounds nuw i8, ptr %.23945.i546, i64 1 ; 2 uses
  %i.me = lshr i64 %.03446.i545, 8
  %exitcond.not.i550 = icmp eq ptr %i.md, %i.x
  br i1 %exitcond.not.i550, label %.critedge.loopexit.i547, label %.lr.ph47.i544, !llvm.loop !38

.critedge.loopexit.i547:                          ; preds = %bb.bo, %.lr.ph47.i544
  %.239.lcssa.ph.i548 = phi ptr [ %scevgep.i543, %bb.bo ], [ %.23945.i546, %.lr.ph47.i544 ]
  %.pre.i549 = ptrtoint ptr %.239.lcssa.ph.i548 to i64
  br label %LZ4HC_countPattern.exit556

LZ4HC_countPattern.exit556:                       ; preds = %.preheader.i536, %.thread.i555, %.critedge.loopexit.i547
  %.sink.i540 = phi i64 [ %i.lx, %.thread.i555 ], [ %.pre.i549, %.critedge.loopexit.i547 ], [ %.037.lcssa53.i538.pre-phi, %.preheader.i536 ]
  %i.mf = sub i64 %.sink.i540, %i.at
  %i.mg = and i64 %i.mf, 4294967295
  %i.mh = add nuw nsw i64 %i.mg, %i.li
  br label %bb.bp

bb.bp:                                            ; preds = %LZ4HC_countPattern.exit556, %bb.bl, %LZ4HC_countPattern.exit533
  %i.mi = phi ptr [ %i.aw, %LZ4HC_countPattern.exit556 ], [ %i.aw, %bb.bl ], [ %i.ar, %LZ4HC_countPattern.exit533 ] ; 4 uses
  %.0393.i = phi i64 [ %i.mh, %LZ4HC_countPattern.exit556 ], [ %i.li, %bb.bl ], [ %i.li, %LZ4HC_countPattern.exit533 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.mj = ptrtoint ptr %i.kk to i64               ; 2 uses
  %i.mk = ptrtoint ptr %i.mi to i64
  store i32 %.val459, ptr %i.f, align 4, !tbaa !3
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 4 ; 2 uses
  %.not.i5572485 = icmp ult ptr %i.kk, %i.ml
  br i1 %.not.i5572485, label %._crit_edge2490, label %.lr.ph2488, !prof !39

bb.bq:                                            ; preds = %.lr.ph2488
  %.not.i557 = icmp ult ptr %i.mm, %i.ml
  br i1 %.not.i557, label %._crit_edge2490, label %.lr.ph2488, !prof !40, !llvm.loop !41

.lr.ph2488:                                       ; preds = %bb.bp, %bb.bq
  %.013.i2486 = phi ptr [ %i.mm, %bb.bq ], [ %i.kk, %bb.bp ] ; 2 uses
  %i.mm = getelementptr inbounds i8, ptr %.013.i2486, i64 -4 ; 4 uses
  %.val.i = load i32, ptr %i.mm, align 1, !tbaa !15
  %.not14.i = icmp eq i32 %.val.i, %.val459
  br i1 %.not14.i, label %bb.bq, label %._crit_edge2489, !llvm.loop !41

._crit_edge2489:                                  ; preds = %.lr.ph2488
  br label %._crit_edge2490, !llvm.loop !41

._crit_edge2490:                                  ; preds = %bb.bq, %._crit_edge2489, %bb.bp
  %.013.i.lcssa = phi ptr [ %.013.i2486, %._crit_edge2489 ], [ %i.kk, %bb.bp ], [ %i.mm, %bb.bq ] ; 3 uses
  %i.mn = icmp ugt ptr %.013.i.lcssa, %i.mi
  br i1 %i.mn, label %.lr.ph.preheader.i, label %LZ4HC_reverseCountPattern.exit, !prof !23

.lr.ph.preheader.i:                               ; preds = %._crit_edge2490
  %i.mo = sub i64 %i.mk, %i.mj
  %scevgep.i558 = getelementptr i8, ptr %i.kk, i64 %i.mo
  br label %.lr.ph.i559

bb.br:                                            ; preds = %.lr.ph.i559
  %i.mp = getelementptr inbounds i8, ptr %.017.i, i64 -1
  %i.mq = icmp ugt ptr %i.mr, %i.mi
  br i1 %i.mq, label %.lr.ph.i559, label %LZ4HC_reverseCountPattern.exit, !prof !24, !llvm.loop !42

.lr.ph.i559:                                      ; preds = %bb.br, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.mp, %bb.br ], [ %i.al, %.lr.ph.preheader.i ] ; 2 uses
  %.116.i = phi ptr [ %i.mr, %bb.br ], [ %.013.i.lcssa, %.lr.ph.preheader.i ] ; 2 uses
  %i.mr = getelementptr inbounds i8, ptr %.116.i, i64 -1 ; 3 uses
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !27
  %i.mt = load i8, ptr %.017.i, align 1, !tbaa !27
  %.not15.i = icmp eq i8 %i.ms, %i.mt
  br i1 %.not15.i, label %bb.br, label %LZ4HC_reverseCountPattern.exit

LZ4HC_reverseCountPattern.exit:                   ; preds = %bb.br, %.lr.ph.i559, %._crit_edge2490
  %.1.lcssa.i = phi ptr [ %.013.i.lcssa, %._crit_edge2490 ], [ %scevgep.i558, %bb.br ], [ %.116.i, %.lr.ph.i559 ]
  %i.mu = ptrtoint ptr %.1.lcssa.i to i64
  %i.mv = sub i64 %i.mj, %i.mu                    ; 3 uses
  %i.mw = trunc i64 %i.mv to i32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.mx = and i64 %i.mv, 4294967295
  %i.my = sub nsw i64 0, %i.mx
  %i.mz = getelementptr inbounds i8, ptr %i.kk, i64 %i.my
  %i.na = icmp eq ptr %i.mz, %i.ar
  %or.cond454.i = select i1 %i.ke, i1 %i.na, i1 false
  %or.cond455.i = select i1 %or.cond454.i, i1 %i.be, i1 false
  br i1 %or.cond455.i, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %LZ4HC_reverseCountPattern.exit
  %7 = sub i64 0, %i.mv
  %8 = and i64 %7, 3
  %i.nb = icmp eq i64 %8, 0
  %.neg = mul i32 %i.mw, 24
  %i.nc = tail call i32 @llvm.fshl.i32(i32 %.val459, i32 %.val459, i32 %.neg)
  %.0.i561 = select i1 %i.nb, i32 %.val459, i32 %i.nc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %.0.i561, ptr %i.e, align 4, !tbaa !3
  br i1 %.not.i5632492, label %._crit_edge2496, label %.lr.ph2495, !prof !39

bb.bt:                                            ; preds = %.lr.ph2495
  %.not.i563 = icmp slt i64 %.013.i562.idx2493, 8
  br i1 %.not.i563, label %._crit_edge2496, label %.lr.ph2495, !prof !40, !llvm.loop !41

.lr.ph2495:                                       ; preds = %bb.bs, %bb.bt
  %.013.i562.idx2493 = phi i64 [ %.013.i562.add, %bb.bt ], [ %i.az, %bb.bs ] ; 3 uses
  %.013.i562.add = add nsw i64 %.013.i562.idx2493, -4 ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.013.i562.add
  %.val.i564 = load i32, ptr %.ptr, align 1, !tbaa !15
  %.not14.i565 = icmp eq i32 %.val.i564, %.0.i561
  br i1 %.not14.i565, label %bb.bt, label %.thread2129, !llvm.loop !41

.thread2129:                                      ; preds = %.lr.ph2495
  %.013.i562.ptr.le2130 = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.013.i562.idx2493
  br label %.lr.ph.i569.preheader

._crit_edge2496:                                  ; preds = %bb.bt, %bb.bs
  %.013.i562.idx.lcssa = phi i64 [ %i.az, %bb.bs ], [ %.013.i562.add, %bb.bt ] ; 2 uses
  %.013.i562.ptr.le = getelementptr inbounds i8, ptr %i.aw, i64 %.013.i562.idx.lcssa ; 2 uses
  %i.nd = icmp sgt i64 %.013.i562.idx.lcssa, 0
  br i1 %i.nd, label %.lr.ph.i569.preheader, label %LZ4HC_reverseCountPattern.exit573, !prof !43

.lr.ph.i569.preheader:                            ; preds = %.thread2129, %._crit_edge2496
  %.116.i571.ph = phi ptr [ %.013.i562.ptr.le, %._crit_edge2496 ], [ %.013.i562.ptr.le2130, %.thread2129 ]
  br label %.lr.ph.i569

bb.bu:                                            ; preds = %.lr.ph.i569
  %i.ne = getelementptr inbounds i8, ptr %.017.i570, i64 -1
  %i.nf = icmp ugt ptr %i.ng, %i.aw
  br i1 %i.nf, label %.lr.ph.i569, label %LZ4HC_reverseCountPattern.exit573, !prof !24, !llvm.loop !42

.lr.ph.i569:                                      ; preds = %.lr.ph.i569.preheader, %bb.bu
  %.017.i570 = phi ptr [ %i.ne, %bb.bu ], [ %i.am, %.lr.ph.i569.preheader ] ; 2 uses
  %.116.i571 = phi ptr [ %i.ng, %bb.bu ], [ %.116.i571.ph, %.lr.ph.i569.preheader ] ; 2 uses
  %i.ng = getelementptr inbounds i8, ptr %.116.i571, i64 -1 ; 3 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !27
  %i.ni = load i8, ptr %.017.i570, align 1, !tbaa !27
  %.not15.i572 = icmp eq i8 %i.nh, %i.ni
  br i1 %.not15.i572, label %bb.bu, label %LZ4HC_reverseCountPattern.exit573

LZ4HC_reverseCountPattern.exit573:                ; preds = %bb.bu, %.lr.ph.i569, %._crit_edge2496
  %.1.lcssa.i566 = phi ptr [ %.013.i562.ptr.le, %._crit_edge2496 ], [ %i.aw, %bb.bu ], [ %.116.i571, %.lr.ph.i569 ]
  %i.nj = ptrtoint ptr %.1.lcssa.i566 to i64
  %i.nk = sub i64 %i.bf, %i.nj
  %i.nl = trunc i64 %i.nk to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.nm = add i32 %i.nl, %i.mw
  br label %bb.bv

bb.bv:                                            ; preds = %LZ4HC_reverseCountPattern.exit573, %LZ4HC_reverseCountPattern.exit
  %.0390.i = phi i32 [ %i.mw, %LZ4HC_reverseCountPattern.exit ], [ %i.nm, %LZ4HC_reverseCountPattern.exit573 ]
  %i.nn = sub i32 %i.ji, %.0390.i
  %i.no = tail call i32 @llvm.umax.i32(i32 %i.nn, i32 %i.br) ; 7 uses
  %i.np = sub i32 %i.ji, %i.no
  %i.nq = zext i32 %i.np to i64
  %i.nr = add nuw nsw i64 %.0393.i, %i.nq         ; 2 uses
  %.not438.i = icmp ult i64 %i.nr, %.1347.i
  %.not439.i = icmp ugt i64 %.0393.i, %.1347.i
  %or.cond456.i = or i1 %.not439.i, %.not438.i
  br i1 %or.cond456.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ns = trunc i64 %.0393.i to i32
  %i.nt = trunc i64 %.1347.i to i32
  %i.nu = sub i32 %i.ji, %i.nt
  %i.nv = add i32 %i.nu, %i.ns                    ; 2 uses
  %i.nw = sub i32 %i.nv, %i.as
  %i.nx = icmp ugt i32 %i.nw, -4
  %..i = select i1 %i.nx, i32 %i.as, i32 %i.nv
  br label %bb.cc

bb.bx:                                            ; preds = %bb.bv
  %i.ny = sub i32 %i.no, %i.as
  %i.nz = icmp ugt i32 %i.ny, -4
  br i1 %i.nz, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.oa = tail call i64 @llvm.umin.i64(i64 %i.nr, i64 %.1347.i) ; 2 uses
  %i.ob = sext i32 %.5.i87 to i64
  %i.oc = icmp ugt i64 %i.oa, %i.ob
  br i1 %i.oc, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.od = zext i32 %i.no to i64
  %i.oe = sub i64 %i.dm, %i.od
  %i.of = icmp ugt i64 %i.oe, 65535
  br i1 %i.of, label %LZ4HC_InsertAndGetWiderMatch.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.og = trunc i64 %i.oa to i32
  %i.oh = sub i32 %i.bo, %i.no
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.by
  %.6357.i = phi i32 [ %i.oh, %bb.ca ], [ %.5356.i, %bb.by ] ; 2 uses
  %.6.i90 = phi i32 [ %i.og, %bb.ca ], [ %.5.i87, %bb.by ] ; 2 uses
  %i.oi = and i32 %i.no, 65535
  %i.oj = zext nneg i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.oj
  %i.ol = load i16, ptr %i.ok, align 2, !tbaa !29
  %i.om = zext i16 %i.ol to i32                   ; 2 uses
  %i.on = icmp ult i32 %i.no, %i.om
  %i.oo = sub nuw i32 %i.no, %i.om
  br i1 %i.on, label %LZ4HC_InsertAndGetWiderMatch.exit, label %bb.cc

.thread914:                                       ; preds = %bb.bb, %bb.az, %bb.bg, %bb.bf, %bb.bh
  %.3349.i.ph = phi i64 [ %.1347.i, %bb.bh ], [ %.1347.i, %bb.bf ], [ %.1347.i, %bb.bg ], [ %.0346.i1348, %bb.az ], [ %.0346.i1348, %bb.bb ]
  %.3344.i.ph = phi i32 [ 2, %bb.bh ], [ %.1342.i, %bb.bf ], [ 2, %bb.bg ], [ %.0341.i821349, %bb.az ], [ 1, %bb.bb ]
  %i.op = zext i16 %i.jg to i32
  %i.oq = sub i32 %.0323.i1350, %i.op
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bx, %bb.bw, %.thread914
  %.16.i955 = phi i32 [ %.5.i87, %.thread914 ], [ %.5.i87, %bb.bx ], [ %.5.i87, %bb.bw ], [ %.6.i90, %bb.cb ] ; 2 uses
  %.3344.i952 = phi i32 [ %.3344.i.ph, %.thread914 ], [ 2, %bb.bx ], [ 2, %bb.bw ], [ 2, %bb.cb ]
  %.3349.i950 = phi i64 [ %.3349.i.ph, %.thread914 ], [ %.1347.i, %bb.bx ], [ %.1347.i, %bb.bw ], [ %.1347.i, %bb.cb ]
  %.16367.i948 = phi i32 [ %.5356.i, %.thread914 ], [ %.5356.i, %bb.bx ], [ %.5356.i, %bb.bw ], [ %.6357.i, %bb.cb ] ; 2 uses
  %.15338.i = phi i32 [ %i.oq, %.thread914 ], [ %i.as, %bb.bx ], [ %..i, %bb.bw ], [ %i.oo, %bb.cb ] ; 2 uses
  %i.or = icmp uge i32 %.15338.i, %i.br
  %i.os = icmp sgt i32 %.0314.i1351, 1
  %i.ot = select i1 %i.or, i1 %i.os, i1 false
  br i1 %i.ot, label %bb.g, label %LZ4HC_InsertAndGetWiderMatch.exit

LZ4HC_InsertAndGetWiderMatch.exit:                ; preds = %bb.cc, %bb.bz, %bb.cb
  %.18369.i.ph = phi i32 [ %.16367.i948, %bb.cc ], [ %.6357.i, %bb.cb ], [ %.5356.i, %bb.bz ]
  %.18.i.ph = phi i32 [ %.16.i955, %bb.cc ], [ %.6.i90, %bb.cb ], [ %.5.i87, %bb.bz ] ; 3 uses
  %i.ou = icmp slt i32 %.18.i.ph, 4
  br i1 %i.ou, label %LZ4HC_InsertAndGetWiderMatch.exit.thread, label %.preheader1204.a

.preheader1204.a:                                 ; preds = %LZ4HC_InsertAndGetWiderMatch.exit
  %i.ov = zext i32 %.18369.i.ph to i64
  %.sroa.2313.0.insert.ext.i.le = zext nneg i32 %.18.i.ph to i64
  %.sroa.2313.0.insert.shift.i.le = shl nuw nsw i64 %.sroa.2313.0.insert.ext.i.le, 32
  %.sroa.0312.0.insert.insert.i.le = or disjoint i64 %.sroa.2313.0.insert.shift.i.le, %i.ov ; 2 uses
  br label %.outer1206

LZ4HC_InsertAndGetWiderMatch.exit.thread:         ; preds = %LZ4HC_Insert.exit.i, %LZ4HC_InsertAndGetWiderMatch.exit
  %i.ow = getelementptr inbounds nuw i8, ptr %.08811364, i64 1 ; 2 uses
  %.not.i6 = icmp ugt ptr %i.ow, %i.w
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.i6, label %.loopexit, label %bb.f, !llvm.loop !45

bb.cd:                                            ; preds = %bb.ft, %.outer1206
  %.1882 = phi ptr [ %.2.i, %bb.ft ], [ %.1882.ph, %.outer1206 ] ; 8 uses
  %.sroa.0162.sroa.0.0.in.i = phi i64 [ %.sroa.090.sroa.0.0.insert.ext.i, %bb.ft ], [ %.sroa.0162.sroa.0.0.in.i.ph, %.outer1206 ] ; 4 uses
  %.sroa.0162.sroa.14.0.i = phi i32 [ %.sroa.090.sroa.12.0.i, %bb.ft ], [ %.sroa.0162.sroa.14.0.i.ph, %.outer1206 ] ; 7 uses
  %.1333.i = phi ptr [ %.2.i, %bb.ft ], [ %.1333.i.ph, %.outer1206 ]
  %i.ox = sext i32 %.sroa.0162.sroa.14.0.i to i64 ; 6 uses
  %i.oy = getelementptr inbounds i8, ptr %.1882, i64 %i.ox ; 6 uses
  %.not356.i = icmp ugt ptr %i.oy, %i.w
  br i1 %.not356.i, label %bb.fi, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.oz = getelementptr inbounds i8, ptr %i.oy, i64 -2 ; 10 uses
  %i.pa = load ptr, ptr %i.ac, align 8, !tbaa !13 ; 12 uses
  %i.pb = load i32, ptr %i.ad, align 8, !tbaa !14 ; 13 uses
  %i.pc = ptrtoint ptr %i.oz to i64
  %i.pd = ptrtoint ptr %i.pa to i64               ; 3 uses
  %i.pe = sub i64 %i.pc, %i.pd                    ; 2 uses
  %i.pf = trunc i64 %i.pe to i32
  %i.pg = add i32 %i.pb, %i.pf                    ; 7 uses
  %i.ph = load i32, ptr %i.ae, align 4, !tbaa !34 ; 6 uses
  %i.pi = add i32 %i.ph, 65536
  %i.pj = icmp ugt i32 %i.pi, %i.pg
  %i.pk = add i32 %i.pg, -65535
  %i.pl = select i1 %i.pj, i32 %i.ph, i32 %i.pk   ; 4 uses
  %i.pm = load ptr, ptr %i.af, align 8, !tbaa !33 ; 10 uses
  %i.pn = zext i32 %i.pb to i64                   ; 3 uses
  %i.po = zext i32 %i.ph to i64
  %i.pp = sub nsw i64 %i.pn, %i.po                ; 5 uses
  %.ptr1181.a = getelementptr inbounds i8, ptr %i.pm, i64 %i.pp ; 2 uses
  %i.pq = add nsw i64 %i.ox, -2                   ; 2 uses
  %.val447 = load i32, ptr %i.oz, align 1, !tbaa !15 ; 17 uses
  %i.pr = load i32, ptr %i.ag, align 8, !tbaa !32 ; 4 uses
  %i.ps = icmp ult i32 %i.pr, %i.pg
  br i1 %i.ps, label %.lr.ph1372, label %LZ4HC_Insert.exit.i259

.lr.ph1372:                                       ; preds = %bb.ce
  %i.pt = sub nsw i64 0, %i.pn
  %invariant.gep1373 = getelementptr i8, ptr %i.pa, i64 %i.pt ; 3 uses
  %i.pu = zext i32 %i.pr to i64                   ; 6 uses
  %i.pv = zext i32 %i.pg to i64                   ; 3 uses
  %i.pw = sub nsw i64 %i.pv, %i.pu
  %xtraiter2836 = and i64 %i.pw, 1
  %lcmp.mod2837.not = icmp eq i64 %xtraiter2836, 0
  br i1 %lcmp.mod2837.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph1372
  %gep1374.prol = getelementptr i8, ptr %invariant.gep1373, i64 %i.pu
  %.val460.prol = load i32, ptr %gep1374.prol, align 1, !tbaa !15
  %i.px = mul i32 %.val460.prol, -1640531535
  %i.py = lshr i32 %i.px, 17
  %i.pz = zext nneg i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pz ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !3
end_hunk_3
begin_hunk_4_@LZ4HC_compress_generic_noDictCtx:bb.a
  %i.aan = zext i32 %i.aah to i64
  %i.aao = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.aan
  %i.aap = select i1 %i.aaj, ptr %i.aao, ptr %i.aam ; 8 uses
  %.val446 = load i32, ptr %i.aap, align 1, !tbaa !15
  %i.aaq = icmp eq i32 %.val446, %.val447
  br i1 %i.aaq, label %bb.en, label %.thread995

bb.en:                                            ; preds = %bb.em
  %i.aar = select i1 %i.aaj, ptr %i.x, ptr %.ptr1181.a ; 4 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aap, i64 4 ; 4 uses
  %i.aat = ptrtoint ptr %i.aar to i64
  %i.aau = getelementptr inbounds i8, ptr %i.aar, i64 -7 ; 2 uses
  %i.aav = icmp ult ptr %i.aas, %i.aau
  br i1 %i.aav, label %.lr.ph.i610, label %.preheader.i595, !prof !23

.preheader.i595:                                  ; preds = %bb.eo, %bb.en
  %.037.lcssa.i596 = phi ptr [ %i.aas, %bb.en ], [ %i.abd, %bb.eo ] ; 4 uses
  %.037.lcssa53.i597 = ptrtoint ptr %.037.lcssa.i596 to i64 ; 2 uses
  %i.aaw = icmp ult ptr %.037.lcssa.i596, %i.aar
  br i1 %i.aaw, label %.lr.ph47.preheader.i601, label %LZ4HC_countPattern.exit615

.lr.ph47.preheader.i601:                          ; preds = %.preheader.i595
  %i.aax = sub i64 %i.aat, %.037.lcssa53.i597
  %scevgep.i602 = getelementptr i8, ptr %.037.lcssa.i596, i64 %i.aax
  br label %.lr.ph47.i603

.lr.ph.i610:                                      ; preds = %bb.en, %bb.eo
  %.03744.i611 = phi ptr [ %i.abd, %bb.eo ], [ %i.aas, %bb.en ] ; 3 uses
  %.037.val.i612 = load i64, ptr %.03744.i611, align 1, !tbaa !20 ; 2 uses
  %.not.i613 = icmp eq i64 %.037.val.i612, %i.sf
  br i1 %.not.i613, label %bb.eo, label %.thread.i614

.thread.i614:                                     ; preds = %.lr.ph.i610
  %i.aay = xor i64 %.037.val.i612, %i.sf
  %i.aaz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.aay, i1 true)
  %i.aba = lshr i64 %i.aaz, 3
  %i.abb = getelementptr inbounds nuw i8, ptr %.03744.i611, i64 %i.aba
  %i.abc = ptrtoint ptr %i.abb to i64
  br label %LZ4HC_countPattern.exit615

bb.eo:                                            ; preds = %.lr.ph.i610
  %i.abd = getelementptr inbounds nuw i8, ptr %.03744.i611, i64 8 ; 3 uses
  %i.abe = icmp ult ptr %i.abd, %i.aau
  br i1 %i.abe, label %.lr.ph.i610, label %.preheader.i595, !prof !24

.lr.ph47.i603:                                    ; preds = %bb.ep, %.lr.ph47.preheader.i601
  %.03446.i604 = phi i64 [ %i.abj, %bb.ep ], [ %i.sf, %.lr.ph47.preheader.i601 ] ; 2 uses
  %.23945.i605 = phi ptr [ %i.abi, %bb.ep ], [ %.037.lcssa.i596, %.lr.ph47.preheader.i601 ] ; 3 uses
  %i.abf = load i8, ptr %.23945.i605, align 1, !tbaa !27
  %i.abg = trunc i64 %.03446.i604 to i8
  %i.abh = icmp eq i8 %i.abf, %i.abg
  br i1 %i.abh, label %bb.ep, label %.critedge.loopexit.i606

bb.ep:                                            ; preds = %.lr.ph47.i603
  %i.abi = getelementptr inbounds nuw i8, ptr %.23945.i605, i64 1 ; 2 uses
  %i.abj = lshr i64 %.03446.i604, 8
  %exitcond.not.i609 = icmp eq ptr %i.abi, %i.aar
  br i1 %exitcond.not.i609, label %.critedge.loopexit.i606, label %.lr.ph47.i603, !llvm.loop !38

.critedge.loopexit.i606:                          ; preds = %bb.ep, %.lr.ph47.i603
  %.239.lcssa.ph.i607 = phi ptr [ %scevgep.i602, %bb.ep ], [ %.23945.i605, %.lr.ph47.i603 ]
  %.pre.i608 = ptrtoint ptr %.239.lcssa.ph.i607 to i64
  br label %LZ4HC_countPattern.exit615

LZ4HC_countPattern.exit615:                       ; preds = %.preheader.i595, %.thread.i614, %.critedge.loopexit.i606
  %.sink.i599 = phi i64 [ %i.abc, %.thread.i614 ], [ %.pre.i608, %.critedge.loopexit.i606 ], [ %.037.lcssa53.i597, %.preheader.i595 ]
  %i.abk = ptrtoint ptr %i.aas to i64
  %i.abl = sub i64 %.sink.i599, %i.abk            ; 3 uses
  %i.abm = and i64 %i.abl, 4294967295
  %i.abn = add nuw nsw i64 %i.abm, 4              ; 4 uses
  br i1 %i.aaj, label %bb.eu, label %bb.eq

bb.eq:                                            ; preds = %LZ4HC_countPattern.exit615
  %i.abo = add nuw nsw i64 %i.abn, %i.aal
  %i.abp = icmp eq i64 %i.abo, %i.pp
  br i1 %i.abp, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  %i.abq = and i64 %i.abl, 3
  %i.abr = icmp eq i64 %i.abq, 0
  %.tr.i616 = trunc i64 %i.abl to i32
  %i.abs = shl i32 %.tr.i616, 3
  %i.abt = tail call i32 @llvm.fshl.i32(i32 %.val447, i32 %.val447, i32 %i.abs)
  %.0.i617 = select i1 %i.abr, i32 %.val447, i32 %i.abt
  %i.abu = zext i32 %.0.i617 to i64
  %i.abv = mul nuw i64 %i.abu, 4294967297         ; 3 uses
  br i1 %i.sg, label %.lr.ph.i633, label %.preheader.i618, !prof !23

.preheader.i618.loopexit:                         ; preds = %bb.es
  %.pre1897.a = ptrtoint ptr %i.acd to i64
  br label %.preheader.i618

.preheader.i618:                                  ; preds = %.preheader.i618.loopexit, %bb.er
  %.037.lcssa53.i620.pre-phi = phi i64 [ %.pre1897.a, %.preheader.i618.loopexit ], [ %i.pd, %bb.er ] ; 2 uses
  %.037.lcssa.i619 = phi ptr [ %i.acd, %.preheader.i618.loopexit ], [ %i.pa, %bb.er ] ; 3 uses
  %i.abw = icmp ult ptr %.037.lcssa.i619, %i.x
  br i1 %i.abw, label %.lr.ph47.preheader.i624, label %LZ4HC_countPattern.exit638

.lr.ph47.preheader.i624:                          ; preds = %.preheader.i618
  %i.abx = sub i64 %i.ak, %.037.lcssa53.i620.pre-phi
  %scevgep.i625 = getelementptr i8, ptr %.037.lcssa.i619, i64 %i.abx
  br label %.lr.ph47.i626

.lr.ph.i633:                                      ; preds = %bb.er, %bb.es
  %.03744.i634 = phi ptr [ %i.acd, %bb.es ], [ %i.pa, %bb.er ] ; 3 uses
  %.037.val.i635 = load i64, ptr %.03744.i634, align 1, !tbaa !20 ; 2 uses
  %.not.i636 = icmp eq i64 %.037.val.i635, %i.abv
  br i1 %.not.i636, label %bb.es, label %.thread.i637

.thread.i637:                                     ; preds = %.lr.ph.i633
  %i.aby = xor i64 %.037.val.i635, %i.abv
  %i.abz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.aby, i1 true)
  %i.aca = lshr i64 %i.abz, 3
  %i.acb = getelementptr inbounds nuw i8, ptr %.03744.i634, i64 %i.aca
  %i.acc = ptrtoint ptr %i.acb to i64
  br label %LZ4HC_countPattern.exit638

bb.es:                                            ; preds = %.lr.ph.i633
  %i.acd = getelementptr inbounds nuw i8, ptr %.03744.i634, i64 8 ; 4 uses
  %i.ace = icmp ult ptr %i.acd, %i.w
  br i1 %i.ace, label %.lr.ph.i633, label %.preheader.i618.loopexit, !prof !24

.lr.ph47.i626:                                    ; preds = %bb.et, %.lr.ph47.preheader.i624
  %.03446.i627 = phi i64 [ %i.acj, %bb.et ], [ %i.abv, %.lr.ph47.preheader.i624 ] ; 2 uses
  %.23945.i628 = phi ptr [ %i.aci, %bb.et ], [ %.037.lcssa.i619, %.lr.ph47.preheader.i624 ] ; 3 uses
  %i.acf = load i8, ptr %.23945.i628, align 1, !tbaa !27
  %i.acg = trunc i64 %.03446.i627 to i8
  %i.ach = icmp eq i8 %i.acf, %i.acg
  br i1 %i.ach, label %bb.et, label %.critedge.loopexit.i629

bb.et:                                            ; preds = %.lr.ph47.i626
  %i.aci = getelementptr inbounds nuw i8, ptr %.23945.i628, i64 1 ; 2 uses
  %i.acj = lshr i64 %.03446.i627, 8
  %exitcond.not.i632 = icmp eq ptr %i.aci, %i.x
  br i1 %exitcond.not.i632, label %.critedge.loopexit.i629, label %.lr.ph47.i626, !llvm.loop !38

.critedge.loopexit.i629:                          ; preds = %bb.et, %.lr.ph47.i626
  %.239.lcssa.ph.i630 = phi ptr [ %scevgep.i625, %bb.et ], [ %.23945.i628, %.lr.ph47.i626 ]
  %.pre.i631 = ptrtoint ptr %.239.lcssa.ph.i630 to i64
  br label %LZ4HC_countPattern.exit638

LZ4HC_countPattern.exit638:                       ; preds = %.preheader.i618, %.thread.i637, %.critedge.loopexit.i629
  %.sink.i622 = phi i64 [ %i.acc, %.thread.i637 ], [ %.pre.i631, %.critedge.loopexit.i629 ], [ %.037.lcssa53.i620.pre-phi, %.preheader.i618 ]
  %i.ack = sub i64 %.sink.i622, %i.pd
  %i.acl = and i64 %i.ack, 4294967295
  %i.acm = add nuw nsw i64 %i.acl, %i.abn
  br label %bb.eu

bb.eu:                                            ; preds = %LZ4HC_countPattern.exit638, %bb.eq, %LZ4HC_countPattern.exit615
  %i.acn = phi ptr [ %i.pm, %LZ4HC_countPattern.exit638 ], [ %i.pm, %bb.eq ], [ %i.pa, %LZ4HC_countPattern.exit615 ] ; 4 uses
  %.0393.i313 = phi i64 [ %i.acm, %LZ4HC_countPattern.exit638 ], [ %i.abn, %bb.eq ], [ %i.abn, %LZ4HC_countPattern.exit615 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aco = ptrtoint ptr %i.aap to i64             ; 2 uses
  %i.acp = ptrtoint ptr %i.acn to i64
  store i32 %.val447, ptr %i.d, align 4, !tbaa !3
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acn, i64 4 ; 2 uses
  %.not.i6402502 = icmp ult ptr %i.aap, %i.acq
  br i1 %.not.i6402502, label %._crit_edge2508, label %.lr.ph2505, !prof !39

bb.ev:                                            ; preds = %.lr.ph2505
  %.not.i640 = icmp ult ptr %i.acr, %i.acq
  br i1 %.not.i640, label %._crit_edge2508, label %.lr.ph2505, !prof !40, !llvm.loop !41

.lr.ph2505:                                       ; preds = %bb.eu, %bb.ev
  %.013.i6392503 = phi ptr [ %i.acr, %bb.ev ], [ %i.aap, %bb.eu ] ; 2 uses
  %i.acr = getelementptr inbounds i8, ptr %.013.i6392503, i64 -4 ; 4 uses
  %.val.i641 = load i32, ptr %i.acr, align 1, !tbaa !15
  %.not14.i642 = icmp eq i32 %.val.i641, %.val447
  br i1 %.not14.i642, label %bb.ev, label %._crit_edge2506, !llvm.loop !41

._crit_edge2506:                                  ; preds = %.lr.ph2505
  br label %._crit_edge2508, !llvm.loop !41

._crit_edge2508:                                  ; preds = %bb.ev, %._crit_edge2506, %bb.eu
  %.013.i639.lcssa = phi ptr [ %.013.i6392503, %._crit_edge2506 ], [ %i.aap, %bb.eu ], [ %i.acr, %bb.ev ] ; 3 uses
  %i.acs = icmp ugt ptr %.013.i639.lcssa, %i.acn
  br i1 %i.acs, label %.lr.ph.preheader.i644, label %LZ4HC_reverseCountPattern.exit650, !prof !23

.lr.ph.preheader.i644:                            ; preds = %._crit_edge2508
  %i.act = sub i64 %i.acp, %i.aco
  %scevgep.i645 = getelementptr i8, ptr %i.aap, i64 %i.act
  br label %.lr.ph.i646

bb.ew:                                            ; preds = %.lr.ph.i646
  %i.acu = getelementptr inbounds i8, ptr %.017.i647, i64 -1
  %i.acv = icmp ugt ptr %i.acw, %i.acn
  br i1 %i.acv, label %.lr.ph.i646, label %LZ4HC_reverseCountPattern.exit650, !prof !24, !llvm.loop !42

.lr.ph.i646:                                      ; preds = %bb.ew, %.lr.ph.preheader.i644
  %.017.i647 = phi ptr [ %i.acu, %bb.ew ], [ %i.an, %.lr.ph.preheader.i644 ] ; 2 uses
  %.116.i648 = phi ptr [ %i.acw, %bb.ew ], [ %.013.i639.lcssa, %.lr.ph.preheader.i644 ] ; 2 uses
  %i.acw = getelementptr inbounds i8, ptr %.116.i648, i64 -1 ; 3 uses
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !27
  %i.acy = load i8, ptr %.017.i647, align 1, !tbaa !27
  %.not15.i649 = icmp eq i8 %i.acx, %i.acy
  br i1 %.not15.i649, label %bb.ew, label %LZ4HC_reverseCountPattern.exit650

LZ4HC_reverseCountPattern.exit650:                ; preds = %bb.ew, %.lr.ph.i646, %._crit_edge2508
  %.1.lcssa.i643 = phi ptr [ %.013.i639.lcssa, %._crit_edge2508 ], [ %scevgep.i645, %bb.ew ], [ %.116.i648, %.lr.ph.i646 ]
  %i.acz = ptrtoint ptr %.1.lcssa.i643 to i64
  %i.ada = sub i64 %i.aco, %i.acz                 ; 3 uses
  %i.adb = trunc i64 %i.ada to i32                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.adc = and i64 %i.ada, 4294967295
  %i.add = sub nsw i64 0, %i.adc
  %i.ade = getelementptr inbounds i8, ptr %i.aap, i64 %i.add
  %i.adf = icmp eq ptr %i.ade, %i.pa
  %or.cond454.i315 = select i1 %i.aaj, i1 %i.adf, i1 false
  %or.cond455.i316 = select i1 %or.cond454.i315, i1 %i.sh, i1 false
  br i1 %or.cond455.i316, label %bb.ex, label %bb.fa

bb.ex:                                            ; preds = %LZ4HC_reverseCountPattern.exit650
  %9 = sub i64 0, %i.ada
  %10 = and i64 %9, 3
  %i.adg = icmp eq i64 %10, 0
  %.neg1180 = mul i32 %i.adb, 24
  %i.adh = tail call i32 @llvm.fshl.i32(i32 %.val447, i32 %.val447, i32 %.neg1180)
  %.0.i652 = select i1 %i.adg, i32 %.val447, i32 %i.adh ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.0.i652, ptr %i.c, align 4, !tbaa !3
  br i1 %.not.i6542510, label %._crit_edge2514, label %.lr.ph2513, !prof !39

bb.ey:                                            ; preds = %.lr.ph2513
  %.not.i654 = icmp slt i64 %.013.i653.idx2511, 8
  br i1 %.not.i654, label %._crit_edge2514, label %.lr.ph2513, !prof !40, !llvm.loop !41

.lr.ph2513:                                       ; preds = %bb.ex, %bb.ey
  %.013.i653.idx2511 = phi i64 [ %.013.i653.add, %bb.ey ], [ %i.pp, %bb.ex ] ; 3 uses
  %.013.i653.add = add nsw i64 %.013.i653.idx2511, -4 ; 3 uses
  %.ptr1180 = getelementptr inbounds nuw i8, ptr %i.pm, i64 %.013.i653.add
  %.val.i655 = load i32, ptr %.ptr1180, align 1, !tbaa !15
  %.not14.i656 = icmp eq i32 %.val.i655, %.0.i652
  br i1 %.not14.i656, label %bb.ey, label %.thread2134, !llvm.loop !41

.thread2134:                                      ; preds = %.lr.ph2513
  %.013.i653.ptr.le2135 = getelementptr inbounds nuw i8, ptr %i.pm, i64 %.013.i653.idx2511
  br label %.lr.ph.i660.preheader

._crit_edge2514:                                  ; preds = %bb.ey, %bb.ex
  %.013.i653.idx.lcssa = phi i64 [ %i.pp, %bb.ex ], [ %.013.i653.add, %bb.ey ] ; 2 uses
  %.013.i653.ptr.le = getelementptr inbounds i8, ptr %i.pm, i64 %.013.i653.idx.lcssa ; 2 uses
  %i.adi = icmp sgt i64 %.013.i653.idx.lcssa, 0
  br i1 %i.adi, label %.lr.ph.i660.preheader, label %LZ4HC_reverseCountPattern.exit664, !prof !43

.lr.ph.i660.preheader:                            ; preds = %.thread2134, %._crit_edge2514
  %.116.i662.ph = phi ptr [ %.013.i653.ptr.le, %._crit_edge2514 ], [ %.013.i653.ptr.le2135, %.thread2134 ]
  br label %.lr.ph.i660

bb.ez:                                            ; preds = %.lr.ph.i660
  %i.adj = getelementptr inbounds i8, ptr %.017.i661, i64 -1
  %i.adk = icmp ugt ptr %i.adl, %i.pm
  br i1 %i.adk, label %.lr.ph.i660, label %LZ4HC_reverseCountPattern.exit664, !prof !24, !llvm.loop !42

.lr.ph.i660:                                      ; preds = %.lr.ph.i660.preheader, %bb.ez
  %.017.i661 = phi ptr [ %i.adj, %bb.ez ], [ %i.ao, %.lr.ph.i660.preheader ] ; 2 uses
  %.116.i662 = phi ptr [ %i.adl, %bb.ez ], [ %.116.i662.ph, %.lr.ph.i660.preheader ] ; 2 uses
  %i.adl = getelementptr inbounds i8, ptr %.116.i662, i64 -1 ; 3 uses
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !27
  %i.adn = load i8, ptr %.017.i661, align 1, !tbaa !27
  %.not15.i663 = icmp eq i8 %i.adm, %i.adn
  br i1 %.not15.i663, label %bb.ez, label %LZ4HC_reverseCountPattern.exit664

LZ4HC_reverseCountPattern.exit664:                ; preds = %bb.ez, %.lr.ph.i660, %._crit_edge2514
  %.1.lcssa.i657 = phi ptr [ %.013.i653.ptr.le, %._crit_edge2514 ], [ %i.pm, %bb.ez ], [ %.116.i662, %.lr.ph.i660 ]
  %i.ado = ptrtoint ptr %.1.lcssa.i657 to i64
  %i.adp = sub i64 %i.si, %i.ado
  %i.adq = trunc i64 %i.adp to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.adr = add i32 %i.adq, %i.adb
  br label %bb.fa

bb.fa:                                            ; preds = %LZ4HC_reverseCountPattern.exit664, %LZ4HC_reverseCountPattern.exit650
  %.0390.i317 = phi i32 [ %i.adb, %LZ4HC_reverseCountPattern.exit650 ], [ %i.adr, %LZ4HC_reverseCountPattern.exit664 ]
  %i.ads = sub i32 %i.zn, %.0390.i317
  %i.adt = tail call i32 @llvm.umax.i32(i32 %i.ads, i32 %i.pl) ; 8 uses
  %i.adu = sub i32 %i.zn, %i.adt
  %i.adv = zext i32 %i.adu to i64
  %i.adw = add nuw nsw i64 %.0393.i313, %i.adv    ; 2 uses
  %.not438.i318 = icmp ult i64 %i.adw, %.1347.i298
  %.not439.i319 = icmp ugt i64 %.0393.i313, %.1347.i298
  %or.cond456.i320 = or i1 %.not439.i319, %.not438.i318
  br i1 %or.cond456.i320, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.adx = trunc i64 %.0393.i313 to i32
  %i.ady = trunc i64 %.1347.i298 to i32
  %i.adz = sub i32 %i.zn, %i.ady
  %i.aea = add i32 %i.adz, %i.adx                 ; 2 uses
  %i.aeb = sub i32 %i.aea, %i.pb
  %i.aec = icmp ugt i32 %i.aeb, -4
  %..i322 = select i1 %i.aec, i32 %i.pb, i32 %i.aea
  br label %.thread1023

bb.fc:                                            ; preds = %bb.fa
  %i.aed = sub i32 %i.adt, %i.pb
  %i.aee = icmp ugt i32 %i.aed, -4
  br i1 %i.aee, label %.thread1023, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  br i1 %.not433.i344, label %bb.fe, label %.thread1023

bb.fe:                                            ; preds = %bb.fd
  %i.aef = tail call i64 @llvm.umin.i64(i64 %i.adw, i64 %.1347.i298) ; 2 uses
  %i.aeg = sext i32 %.5.i285 to i64
  %i.aeh = icmp ugt i64 %i.aef, %i.aeg
  br i1 %i.aeh, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.aei = zext i32 %i.adt to i64
  %i.aej = sub i64 %i.rl, %i.aei
  %i.aek = icmp ugt i64 %i.aej, 65535
  br i1 %i.aek, label %LZ4HC_InsertAndGetWiderMatch.exit440.loopexit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ael = trunc i64 %i.aef to i32
  %i.aem = sub i32 %i.pg, %i.adt
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.fe
  %.6357.i335 = phi i32 [ %i.aem, %bb.fg ], [ %.5356.i284, %bb.fe ] ; 2 uses
  %.6.i336 = phi i32 [ %i.ael, %bb.fg ], [ %.5.i285, %bb.fe ] ; 2 uses
  %i.aen = and i32 %i.adt, 65535
  %i.aeo = zext nneg i32 %i.aen to i64
  %i.aep = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.aeo
  %i.aeq = load i16, ptr %i.aep, align 2, !tbaa !29
  %i.aer = zext i16 %i.aeq to i32                 ; 2 uses
  %i.aes = icmp ult i32 %i.adt, %i.aer
  %i.aet = sub nuw i32 %i.adt, %i.aer
  br i1 %i.aes, label %LZ4HC_InsertAndGetWiderMatch.exit440.loopexit, label %.thread1023

.thread995:                                       ; preds = %bb.eg, %bb.ee, %bb.em, %bb.el, %bb.ek
  %.3349.i293 = phi i64 [ %.0346.i2621407, %bb.ee ], [ %.1347.i298, %bb.em ], [ %.1347.i298, %bb.el ], [ %.1347.i298, %bb.ek ], [ %.0346.i2621407, %bb.eg ]
  %.3344.i294 = phi i32 [ %.0341.i2631408, %bb.ee ], [ 2, %bb.em ], [ 2, %bb.el ], [ %.1342.i299, %bb.ek ], [ 1, %bb.eg ]
  %i.aeu = zext i16 %i.zl to i32
  %i.aev = sub i32 %.0323.i2641409, %i.aeu
  br label %.thread1023

.thread1023:                                      ; preds = %bb.fh, %bb.fc, %bb.fd, %bb.fb, %.thread995
  %.16.i2961034 = phi i32 [ %.5.i285, %.thread995 ], [ %.5.i285, %bb.fb ], [ %.5.i285, %bb.fc ], [ %.5.i285, %bb.fd ], [ %.6.i336, %bb.fh ] ; 2 uses
  %.3344.i2941033 = phi i32 [ %.3344.i294, %.thread995 ], [ 2, %bb.fb ], [ 2, %bb.fc ], [ 2, %bb.fd ], [ 2, %bb.fh ]
  %.3349.i2931032 = phi i64 [ %.3349.i293, %.thread995 ], [ %.1347.i298, %bb.fb ], [ %.1347.i298, %bb.fc ], [ %.1347.i298, %bb.fd ], [ %.1347.i298, %bb.fh ]
  %.16367.i2921031 = phi i32 [ %.5356.i284, %.thread995 ], [ %.5356.i284, %bb.fb ], [ %.5356.i284, %bb.fc ], [ %.5356.i284, %bb.fd ], [ %.6357.i335, %bb.fh ] ; 2 uses
  %.15338.i288 = phi i32 [ %i.aev, %.thread995 ], [ %..i322, %bb.fb ], [ %i.pb, %bb.fc ], [ %i.adt, %bb.fd ], [ %i.aet, %bb.fh ] ; 2 uses
  %i.aew = icmp uge i32 %.15338.i288, %i.pl
  %i.aex = icmp sgt i32 %.0314.i2661410, 1
  %i.aey = select i1 %i.aew, i1 %i.aex, i1 false
  br i1 %i.aey, label %bb.cf, label %LZ4HC_InsertAndGetWiderMatch.exit440.loopexit

LZ4HC_InsertAndGetWiderMatch.exit440.loopexit:    ; preds = %bb.fh, %bb.ff, %.thread1023
  %.18369.i269.ph = phi i32 [ %.16367.i2921031, %.thread1023 ], [ %.6357.i335, %bb.fh ], [ %.5356.i284, %bb.ff ]
  %.18.i271.ph = phi i32 [ %.16.i2961034, %.thread1023 ], [ %.6.i336, %bb.fh ], [ %.5.i285, %bb.ff ]
  %i.aez = sext i32 %.5379.i283 to i64
  br label %LZ4HC_InsertAndGetWiderMatch.exit440

LZ4HC_InsertAndGetWiderMatch.exit440:             ; preds = %LZ4HC_InsertAndGetWiderMatch.exit440.loopexit, %LZ4HC_Insert.exit.i259
  %.6380.i268 = phi i64 [ 0, %LZ4HC_Insert.exit.i259 ], [ %i.aez, %LZ4HC_InsertAndGetWiderMatch.exit440.loopexit ]
  %.18369.i269 = phi i32 [ 0, %LZ4HC_Insert.exit.i259 ], [ %.18369.i269.ph, %LZ4HC_InsertAndGetWiderMatch.exit440.loopexit ]
  %.18.i271 = phi i32 [ %.sroa.0162.sroa.14.0.i, %LZ4HC_Insert.exit.i259 ], [ %.18.i271.ph, %LZ4HC_InsertAndGetWiderMatch.exit440.loopexit ]
  %i.afa = getelementptr inbounds i8, ptr %i.oz, i64 %.6380.i268
  br label %bb.fi

bb.fi:                                            ; preds = %LZ4HC_InsertAndGetWiderMatch.exit440, %bb.cd
  %.sroa.090.sroa.0.0.i = phi i32 [ %.18369.i269, %LZ4HC_InsertAndGetWiderMatch.exit440 ], [ 0, %bb.cd ] ; 2 uses
  %.sroa.090.sroa.12.0.i = phi i32 [ %.18.i271, %LZ4HC_InsertAndGetWiderMatch.exit440 ], [ 0, %bb.cd ] ; 3 uses
  %.2.i = phi ptr [ %i.afa, %LZ4HC_InsertAndGetWiderMatch.exit440 ], [ %.1333.i, %bb.cd ] ; 7 uses
  %.not357.i = icmp sgt i32 %.sroa.090.sroa.12.0.i, %.sroa.0162.sroa.14.0.i
  br i1 %.not357.i, label %bb.ft, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %.1872.ph2563.le = ptrtoaddr ptr %.1872.ph to i64
  %i.afb = getelementptr i8, ptr %.1.ph, i64 1    ; 4 uses
  %i.afc = ptrtoint ptr %.1882 to i64             ; 4 uses
  %i.afd = ptrtoint ptr %.1872.ph to i64          ; 4 uses
  %i.afe = sub i64 %i.afc, %i.afd                 ; 6 uses
  %i.aff = udiv i64 %i.afe, 255
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afb, i64 %i.aff
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 %i.afe
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 8
  %i.afj = icmp ugt ptr %i.afi, %spec.select.i
  %or.cond.i57 = select i1 %.not.i14, i1 %i.afj, i1 false
  br i1 %or.cond.i57, label %LZ4HC_encodeSequence.exit.loopexit1208.split.loop.exit1554, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.afk = icmp ugt i64 %i.afe, 14
  br i1 %i.afk, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.afl = add i64 %i.afe, -15                    ; 2 uses
  store i8 -16, ptr %.1.ph, align 1, !tbaa !27
  %i.afm = icmp ugt i64 %i.afl, 254
  br i1 %i.afm, label %.lr.ph1515.preheader, label %._crit_edge1516

.lr.ph1515.preheader:                             ; preds = %bb.fl
  %reass.sub2111 = sub i64 %i.afc, %i.afd
  %i.afn = add i64 %reass.sub2111, -270           ; 2 uses
  %i.afo = udiv i64 %i.afn, 255                   ; 3 uses
  %i.afp = add nuw nsw i64 %i.afo, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.afb, i8 -1, i64 %i.afp, i1 false), !tbaa !27
  %scevgep1862 = getelementptr i8, ptr %.1.ph, i64 2
  %scevgep1863 = getelementptr i8, ptr %scevgep1862, i64 %i.afo
  %.neg.a = mul i64 %i.afo, -255
  %i.afq = add i64 %.neg.a, %i.afn
  br label %._crit_edge1516

._crit_edge1516:                                  ; preds = %.lr.ph1515.preheader, %bb.fl
  %.39.lcssa = phi ptr [ %i.afb, %bb.fl ], [ %scevgep1863, %.lr.ph1515.preheader ] ; 2 uses
  %.0.i64.lcssa = phi i64 [ %i.afl, %bb.fl ], [ %i.afq, %.lr.ph1515.preheader ]
  %i.afr = trunc nuw i64 %.0.i64.lcssa to i8
  %i.afs = getelementptr inbounds nuw i8, ptr %.39.lcssa, i64 1
  store i8 %i.afr, ptr %.39.lcssa, align 1, !tbaa !27
  br label %bb.fn

bb.fm:                                            ; preds = %bb.fk
  %.tr.i58 = trunc nuw nsw i64 %i.afe to i8
  %i.aft = shl nuw i8 %.tr.i58, 4
  store i8 %i.aft, ptr %.1.ph, align 1, !tbaa !27
  br label %bb.fn
end_hunk_4
begin_hunk_5_@LZ4HC_compress_generic_noDictCtx:bb.a
  %i.aty = zext i32 %i.ats to i64
  %i.atz = getelementptr inbounds nuw i8, ptr %i.ail, i64 %i.aty
  %i.aua = select i1 %i.atu, ptr %i.atz, ptr %i.atx ; 8 uses
  %.val454 = load i32, ptr %i.aua, align 1, !tbaa !15
  %i.aub = icmp eq i32 %.val454, %.val455
  br i1 %i.aub, label %bb.ig, label %.thread1070

bb.ig:                                            ; preds = %bb.if
  %i.auc = select i1 %i.atu, ptr %i.x, ptr %.ptr1187 ; 4 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.aua, i64 4 ; 4 uses
  %i.aue = ptrtoint ptr %i.auc to i64
  %i.auf = getelementptr inbounds i8, ptr %i.auc, i64 -7 ; 2 uses
  %i.aug = icmp ult ptr %i.aud, %i.auf
  br i1 %i.aug, label %.lr.ph.i701, label %.preheader.i686, !prof !23

.preheader.i686:                                  ; preds = %bb.ih, %bb.ig
  %.037.lcssa.i687 = phi ptr [ %i.aud, %bb.ig ], [ %i.auo, %bb.ih ] ; 4 uses
  %.037.lcssa53.i688 = ptrtoint ptr %.037.lcssa.i687 to i64 ; 2 uses
  %i.auh = icmp ult ptr %.037.lcssa.i687, %i.auc
  br i1 %i.auh, label %.lr.ph47.preheader.i692, label %LZ4HC_countPattern.exit706

.lr.ph47.preheader.i692:                          ; preds = %.preheader.i686
  %i.aui = sub i64 %i.aue, %.037.lcssa53.i688
  %scevgep.i693 = getelementptr i8, ptr %.037.lcssa.i687, i64 %i.aui
  br label %.lr.ph47.i694

.lr.ph.i701:                                      ; preds = %bb.ig, %bb.ih
  %.03744.i702 = phi ptr [ %i.auo, %bb.ih ], [ %i.aud, %bb.ig ] ; 3 uses
  %.037.val.i703 = load i64, ptr %.03744.i702, align 1, !tbaa !20 ; 2 uses
  %.not.i704 = icmp eq i64 %.037.val.i703, %i.alq
  br i1 %.not.i704, label %bb.ih, label %.thread.i705

.thread.i705:                                     ; preds = %.lr.ph.i701
  %i.auj = xor i64 %.037.val.i703, %i.alq
  %i.auk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.auj, i1 true)
  %i.aul = lshr i64 %i.auk, 3
  %i.aum = getelementptr inbounds nuw i8, ptr %.03744.i702, i64 %i.aul
  %i.aun = ptrtoint ptr %i.aum to i64
  br label %LZ4HC_countPattern.exit706

bb.ih:                                            ; preds = %.lr.ph.i701
  %i.auo = getelementptr inbounds nuw i8, ptr %.03744.i702, i64 8 ; 3 uses
  %i.aup = icmp ult ptr %i.auo, %i.auf
  br i1 %i.aup, label %.lr.ph.i701, label %.preheader.i686, !prof !24

.lr.ph47.i694:                                    ; preds = %bb.ii, %.lr.ph47.preheader.i692
  %.03446.i695 = phi i64 [ %i.auu, %bb.ii ], [ %i.alq, %.lr.ph47.preheader.i692 ] ; 2 uses
  %.23945.i696 = phi ptr [ %i.aut, %bb.ii ], [ %.037.lcssa.i687, %.lr.ph47.preheader.i692 ] ; 3 uses
  %i.auq = load i8, ptr %.23945.i696, align 1, !tbaa !27
  %i.aur = trunc i64 %.03446.i695 to i8
  %i.aus = icmp eq i8 %i.auq, %i.aur
  br i1 %i.aus, label %bb.ii, label %.critedge.loopexit.i697

bb.ii:                                            ; preds = %.lr.ph47.i694
  %i.aut = getelementptr inbounds nuw i8, ptr %.23945.i696, i64 1 ; 2 uses
  %i.auu = lshr i64 %.03446.i695, 8
  %exitcond.not.i700 = icmp eq ptr %i.aut, %i.auc
  br i1 %exitcond.not.i700, label %.critedge.loopexit.i697, label %.lr.ph47.i694, !llvm.loop !38

.critedge.loopexit.i697:                          ; preds = %bb.ii, %.lr.ph47.i694
  %.239.lcssa.ph.i698 = phi ptr [ %scevgep.i693, %bb.ii ], [ %.23945.i696, %.lr.ph47.i694 ]
  %.pre.i699 = ptrtoint ptr %.239.lcssa.ph.i698 to i64
  br label %LZ4HC_countPattern.exit706

LZ4HC_countPattern.exit706:                       ; preds = %.preheader.i686, %.thread.i705, %.critedge.loopexit.i697
  %.sink.i690 = phi i64 [ %i.aun, %.thread.i705 ], [ %.pre.i699, %.critedge.loopexit.i697 ], [ %.037.lcssa53.i688, %.preheader.i686 ]
  %i.auv = ptrtoint ptr %i.aud to i64
  %i.auw = sub i64 %.sink.i690, %i.auv            ; 3 uses
  %i.aux = and i64 %i.auw, 4294967295
  %i.auy = add nuw nsw i64 %i.aux, 4              ; 4 uses
  br i1 %i.atu, label %bb.in, label %bb.ij

bb.ij:                                            ; preds = %LZ4HC_countPattern.exit706
  %i.auz = add nuw nsw i64 %i.auy, %i.atw
  %i.ava = icmp eq i64 %i.auz, %i.aja
  br i1 %i.ava, label %bb.ik, label %bb.in

bb.ik:                                            ; preds = %bb.ij
  %i.avb = and i64 %i.auw, 3
  %i.avc = icmp eq i64 %i.avb, 0
  %.tr.i707 = trunc i64 %i.auw to i32
  %i.avd = shl i32 %.tr.i707, 3
  %i.ave = tail call i32 @llvm.fshl.i32(i32 %.val455, i32 %.val455, i32 %i.avd)
  %.0.i708 = select i1 %i.avc, i32 %.val455, i32 %i.ave
  %i.avf = zext i32 %.0.i708 to i64
  %i.avg = mul nuw i64 %i.avf, 4294967297         ; 3 uses
  br i1 %i.alr, label %.lr.ph.i724, label %.preheader.i709, !prof !23

.preheader.i709.loopexit:                         ; preds = %bb.il
  %.pre1895 = ptrtoint ptr %i.avo to i64
  br label %.preheader.i709

.preheader.i709:                                  ; preds = %.preheader.i709.loopexit, %bb.ik
  %.037.lcssa53.i711.pre-phi = phi i64 [ %.pre1895, %.preheader.i709.loopexit ], [ %i.aio, %bb.ik ] ; 2 uses
  %.037.lcssa.i710 = phi ptr [ %i.avo, %.preheader.i709.loopexit ], [ %i.ail, %bb.ik ] ; 3 uses
  %i.avh = icmp ult ptr %.037.lcssa.i710, %i.x
  br i1 %i.avh, label %.lr.ph47.preheader.i715, label %LZ4HC_countPattern.exit729

.lr.ph47.preheader.i715:                          ; preds = %.preheader.i709
  %i.avi = sub i64 %i.ak, %.037.lcssa53.i711.pre-phi
  %scevgep.i716 = getelementptr i8, ptr %.037.lcssa.i710, i64 %i.avi
  br label %.lr.ph47.i717

.lr.ph.i724:                                      ; preds = %bb.ik, %bb.il
  %.03744.i725 = phi ptr [ %i.avo, %bb.il ], [ %i.ail, %bb.ik ] ; 3 uses
  %.037.val.i726 = load i64, ptr %.03744.i725, align 1, !tbaa !20 ; 2 uses
  %.not.i727 = icmp eq i64 %.037.val.i726, %i.avg
  br i1 %.not.i727, label %bb.il, label %.thread.i728

.thread.i728:                                     ; preds = %.lr.ph.i724
  %i.avj = xor i64 %.037.val.i726, %i.avg
  %i.avk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.avj, i1 true)
  %i.avl = lshr i64 %i.avk, 3
  %i.avm = getelementptr inbounds nuw i8, ptr %.03744.i725, i64 %i.avl
  %i.avn = ptrtoint ptr %i.avm to i64
  br label %LZ4HC_countPattern.exit729

bb.il:                                            ; preds = %.lr.ph.i724
  %i.avo = getelementptr inbounds nuw i8, ptr %.03744.i725, i64 8 ; 4 uses
  %i.avp = icmp ult ptr %i.avo, %i.w
  br i1 %i.avp, label %.lr.ph.i724, label %.preheader.i709.loopexit, !prof !24

.lr.ph47.i717:                                    ; preds = %bb.im, %.lr.ph47.preheader.i715
  %.03446.i718 = phi i64 [ %i.avu, %bb.im ], [ %i.avg, %.lr.ph47.preheader.i715 ] ; 2 uses
  %.23945.i719 = phi ptr [ %i.avt, %bb.im ], [ %.037.lcssa.i710, %.lr.ph47.preheader.i715 ] ; 3 uses
  %i.avq = load i8, ptr %.23945.i719, align 1, !tbaa !27
  %i.avr = trunc i64 %.03446.i718 to i8
  %i.avs = icmp eq i8 %i.avq, %i.avr
  br i1 %i.avs, label %bb.im, label %.critedge.loopexit.i720

bb.im:                                            ; preds = %.lr.ph47.i717
  %i.avt = getelementptr inbounds nuw i8, ptr %.23945.i719, i64 1 ; 2 uses
  %i.avu = lshr i64 %.03446.i718, 8
  %exitcond.not.i723 = icmp eq ptr %i.avt, %i.x
  br i1 %exitcond.not.i723, label %.critedge.loopexit.i720, label %.lr.ph47.i717, !llvm.loop !38

.critedge.loopexit.i720:                          ; preds = %bb.im, %.lr.ph47.i717
  %.239.lcssa.ph.i721 = phi ptr [ %scevgep.i716, %bb.im ], [ %.23945.i719, %.lr.ph47.i717 ]
  %.pre.i722 = ptrtoint ptr %.239.lcssa.ph.i721 to i64
  br label %LZ4HC_countPattern.exit729

LZ4HC_countPattern.exit729:                       ; preds = %.preheader.i709, %.thread.i728, %.critedge.loopexit.i720
  %.sink.i713 = phi i64 [ %i.avn, %.thread.i728 ], [ %.pre.i722, %.critedge.loopexit.i720 ], [ %.037.lcssa53.i711.pre-phi, %.preheader.i709 ]
  %i.avv = sub i64 %.sink.i713, %i.aio
  %i.avw = and i64 %i.avv, 4294967295
  %i.avx = add nuw nsw i64 %i.avw, %i.auy
  br label %bb.in

bb.in:                                            ; preds = %LZ4HC_countPattern.exit729, %bb.ij, %LZ4HC_countPattern.exit706
  %i.avy = phi ptr [ %i.aix, %LZ4HC_countPattern.exit729 ], [ %i.aix, %bb.ij ], [ %i.ail, %LZ4HC_countPattern.exit706 ] ; 4 uses
  %.0393.i150 = phi i64 [ %i.avx, %LZ4HC_countPattern.exit729 ], [ %i.auy, %bb.ij ], [ %i.auy, %LZ4HC_countPattern.exit706 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.avz = ptrtoint ptr %i.aua to i64             ; 2 uses
  %i.awa = ptrtoint ptr %i.avy to i64
  store i32 %.val455, ptr %i.b, align 4, !tbaa !3
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avy, i64 4 ; 2 uses
  %.not.i7312520 = icmp ult ptr %i.aua, %i.awb
  br i1 %.not.i7312520, label %._crit_edge2526, label %.lr.ph2523, !prof !39

bb.io:                                            ; preds = %.lr.ph2523
  %.not.i731 = icmp ult ptr %i.awc, %i.awb
  br i1 %.not.i731, label %._crit_edge2526, label %.lr.ph2523, !prof !40, !llvm.loop !41

.lr.ph2523:                                       ; preds = %bb.in, %bb.io
  %.013.i7302521 = phi ptr [ %i.awc, %bb.io ], [ %i.aua, %bb.in ] ; 2 uses
  %i.awc = getelementptr inbounds i8, ptr %.013.i7302521, i64 -4 ; 4 uses
  %.val.i732 = load i32, ptr %i.awc, align 1, !tbaa !15
  %.not14.i733 = icmp eq i32 %.val.i732, %.val455
  br i1 %.not14.i733, label %bb.io, label %._crit_edge2524, !llvm.loop !41

._crit_edge2524:                                  ; preds = %.lr.ph2523
  br label %._crit_edge2526, !llvm.loop !41

._crit_edge2526:                                  ; preds = %bb.io, %._crit_edge2524, %bb.in
  %.013.i730.lcssa = phi ptr [ %.013.i7302521, %._crit_edge2524 ], [ %i.aua, %bb.in ], [ %i.awc, %bb.io ] ; 3 uses
  %i.awd = icmp ugt ptr %.013.i730.lcssa, %i.avy
  br i1 %i.awd, label %.lr.ph.preheader.i735, label %LZ4HC_reverseCountPattern.exit741, !prof !23

.lr.ph.preheader.i735:                            ; preds = %._crit_edge2526
  %i.awe = sub i64 %i.awa, %i.avz
  %scevgep.i736 = getelementptr i8, ptr %i.aua, i64 %i.awe
  br label %.lr.ph.i737

bb.ip:                                            ; preds = %.lr.ph.i737
  %i.awf = getelementptr inbounds i8, ptr %.017.i738, i64 -1
  %i.awg = icmp ugt ptr %i.awh, %i.avy
  br i1 %i.awg, label %.lr.ph.i737, label %LZ4HC_reverseCountPattern.exit741, !prof !24, !llvm.loop !42

.lr.ph.i737:                                      ; preds = %bb.ip, %.lr.ph.preheader.i735
  %.017.i738 = phi ptr [ %i.awf, %bb.ip ], [ %i.ap, %.lr.ph.preheader.i735 ] ; 2 uses
  %.116.i739 = phi ptr [ %i.awh, %bb.ip ], [ %.013.i730.lcssa, %.lr.ph.preheader.i735 ] ; 2 uses
  %i.awh = getelementptr inbounds i8, ptr %.116.i739, i64 -1 ; 3 uses
  %i.awi = load i8, ptr %i.awh, align 1, !tbaa !27
  %i.awj = load i8, ptr %.017.i738, align 1, !tbaa !27
  %.not15.i740 = icmp eq i8 %i.awi, %i.awj
  br i1 %.not15.i740, label %bb.ip, label %LZ4HC_reverseCountPattern.exit741

LZ4HC_reverseCountPattern.exit741:                ; preds = %bb.ip, %.lr.ph.i737, %._crit_edge2526
  %.1.lcssa.i734 = phi ptr [ %.013.i730.lcssa, %._crit_edge2526 ], [ %scevgep.i736, %bb.ip ], [ %.116.i739, %.lr.ph.i737 ]
  %i.awk = ptrtoint ptr %.1.lcssa.i734 to i64
  %i.awl = sub i64 %i.avz, %i.awk                 ; 3 uses
  %i.awm = trunc i64 %i.awl to i32                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.awn = and i64 %i.awl, 4294967295
  %i.awo = sub nsw i64 0, %i.awn
  %i.awp = getelementptr inbounds i8, ptr %i.aua, i64 %i.awo
  %i.awq = icmp eq ptr %i.awp, %i.ail
  %or.cond454.i152 = select i1 %i.atu, i1 %i.awq, i1 false
  %or.cond455.i153 = select i1 %or.cond454.i152, i1 %i.als, i1 false
  br i1 %or.cond455.i153, label %bb.iq, label %bb.it

bb.iq:                                            ; preds = %LZ4HC_reverseCountPattern.exit741
  %11 = sub i64 0, %i.awl
  %12 = and i64 %11, 3
  %i.awr = icmp eq i64 %12, 0
  %.neg1187 = mul i32 %i.awm, 24
  %i.aws = tail call i32 @llvm.fshl.i32(i32 %.val455, i32 %.val455, i32 %.neg1187)
  %.0.i743 = select i1 %i.awr, i32 %.val455, i32 %i.aws ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.0.i743, ptr %i.a, align 4, !tbaa !3
  br i1 %.not.i7452528, label %._crit_edge2532, label %.lr.ph2531, !prof !39

bb.ir:                                            ; preds = %.lr.ph2531
  %.not.i745 = icmp slt i64 %.013.i744.idx2529, 8
  br i1 %.not.i745, label %._crit_edge2532, label %.lr.ph2531, !prof !40, !llvm.loop !41

.lr.ph2531:                                       ; preds = %bb.iq, %bb.ir
  %.013.i744.idx2529 = phi i64 [ %.013.i744.add, %bb.ir ], [ %i.aja, %bb.iq ] ; 3 uses
  %.013.i744.add = add nsw i64 %.013.i744.idx2529, -4 ; 3 uses
  %.ptr1186 = getelementptr inbounds nuw i8, ptr %i.aix, i64 %.013.i744.add
  %.val.i746 = load i32, ptr %.ptr1186, align 1, !tbaa !15
  %.not14.i747 = icmp eq i32 %.val.i746, %.0.i743
  br i1 %.not14.i747, label %bb.ir, label %.thread2137, !llvm.loop !41

.thread2137:                                      ; preds = %.lr.ph2531
  %.013.i744.ptr.le2138 = getelementptr inbounds nuw i8, ptr %i.aix, i64 %.013.i744.idx2529
  br label %.lr.ph.i751.preheader

._crit_edge2532:                                  ; preds = %bb.ir, %bb.iq
  %.013.i744.idx.lcssa = phi i64 [ %i.aja, %bb.iq ], [ %.013.i744.add, %bb.ir ] ; 2 uses
  %.013.i744.ptr.le = getelementptr inbounds i8, ptr %i.aix, i64 %.013.i744.idx.lcssa ; 2 uses
  %i.awt = icmp sgt i64 %.013.i744.idx.lcssa, 0
  br i1 %i.awt, label %.lr.ph.i751.preheader, label %LZ4HC_reverseCountPattern.exit755, !prof !43

.lr.ph.i751.preheader:                            ; preds = %.thread2137, %._crit_edge2532
  %.116.i753.ph = phi ptr [ %.013.i744.ptr.le, %._crit_edge2532 ], [ %.013.i744.ptr.le2138, %.thread2137 ]
  br label %.lr.ph.i751

bb.is:                                            ; preds = %.lr.ph.i751
  %i.awu = getelementptr inbounds i8, ptr %.017.i752, i64 -1
  %i.awv = icmp ugt ptr %i.aww, %i.aix
  br i1 %i.awv, label %.lr.ph.i751, label %LZ4HC_reverseCountPattern.exit755, !prof !24, !llvm.loop !42

.lr.ph.i751:                                      ; preds = %.lr.ph.i751.preheader, %bb.is
  %.017.i752 = phi ptr [ %i.awu, %bb.is ], [ %i.aq, %.lr.ph.i751.preheader ] ; 2 uses
  %.116.i753 = phi ptr [ %i.aww, %bb.is ], [ %.116.i753.ph, %.lr.ph.i751.preheader ] ; 2 uses
  %i.aww = getelementptr inbounds i8, ptr %.116.i753, i64 -1 ; 3 uses
  %i.awx = load i8, ptr %i.aww, align 1, !tbaa !27
  %i.awy = load i8, ptr %.017.i752, align 1, !tbaa !27
  %.not15.i754 = icmp eq i8 %i.awx, %i.awy
  br i1 %.not15.i754, label %bb.is, label %LZ4HC_reverseCountPattern.exit755

LZ4HC_reverseCountPattern.exit755:                ; preds = %bb.is, %.lr.ph.i751, %._crit_edge2532
  %.1.lcssa.i748 = phi ptr [ %.013.i744.ptr.le, %._crit_edge2532 ], [ %i.aix, %bb.is ], [ %.116.i753, %.lr.ph.i751 ]
  %i.awz = ptrtoint ptr %.1.lcssa.i748 to i64
  %i.axa = sub i64 %i.alt, %i.awz
  %i.axb = trunc i64 %i.axa to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.axc = add i32 %i.axb, %i.awm
  br label %bb.it

bb.it:                                            ; preds = %LZ4HC_reverseCountPattern.exit755, %LZ4HC_reverseCountPattern.exit741
  %.0390.i154 = phi i32 [ %i.awm, %LZ4HC_reverseCountPattern.exit741 ], [ %i.axc, %LZ4HC_reverseCountPattern.exit755 ]
  %i.axd = sub i32 %i.asy, %.0390.i154
  %i.axe = tail call i32 @llvm.umax.i32(i32 %i.axd, i32 %i.aiw) ; 8 uses
  %i.axf = sub i32 %i.asy, %i.axe
  %i.axg = zext i32 %i.axf to i64
  %i.axh = add nuw nsw i64 %.0393.i150, %i.axg    ; 2 uses
  %.not438.i155 = icmp ult i64 %i.axh, %.1347.i135
  %.not439.i156 = icmp ugt i64 %.0393.i150, %.1347.i135
  %or.cond456.i157 = or i1 %.not439.i156, %.not438.i155
  br i1 %or.cond456.i157, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.axi = trunc i64 %.0393.i150 to i32
  %i.axj = trunc i64 %.1347.i135 to i32
  %i.axk = sub i32 %i.asy, %i.axj
  %i.axl = add i32 %i.axk, %i.axi                 ; 2 uses
  %i.axm = sub i32 %i.axl, %i.aim
  %i.axn = icmp ugt i32 %i.axm, -4
  %..i159 = select i1 %i.axn, i32 %i.aim, i32 %i.axl
  br label %.thread1098

bb.iv:                                            ; preds = %bb.it
  %i.axo = sub i32 %i.axe, %i.aim
  %i.axp = icmp ugt i32 %i.axo, -4
  br i1 %i.axp, label %.thread1098, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  br i1 %.not433.i, label %bb.ix, label %.thread1098

bb.ix:                                            ; preds = %bb.iw
  %i.axq = tail call i64 @llvm.umin.i64(i64 %i.axh, i64 %.1347.i135) ; 2 uses
  %i.axr = sext i32 %.5.i122 to i64
  %i.axs = icmp ugt i64 %i.axq, %i.axr
  br i1 %i.axs, label %bb.iy, label %bb.ja

bb.iy:                                            ; preds = %bb.ix
  %i.axt = zext i32 %i.axe to i64
  %i.axu = sub i64 %i.akw, %i.axt
  %i.axv = icmp ugt i64 %i.axu, 65535
  br i1 %i.axv, label %LZ4HC_InsertAndGetWiderMatch.exit257.loopexit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.axw = trunc i64 %i.axq to i32
  %i.axx = sub i32 %i.air, %i.axe
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.ix
  %.6357.i172 = phi i32 [ %i.axx, %bb.iz ], [ %.5356.i121, %bb.ix ] ; 2 uses
  %.6.i173 = phi i32 [ %i.axw, %bb.iz ], [ %.5.i122, %bb.ix ] ; 2 uses
  %i.axy = and i32 %i.axe, 65535
  %i.axz = zext nneg i32 %i.axy to i64
  %i.aya = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.axz
  %i.ayb = load i16, ptr %i.aya, align 2, !tbaa !29
  %i.ayc = zext i16 %i.ayb to i32                 ; 2 uses
  %i.ayd = icmp ult i32 %i.axe, %i.ayc
  %i.aye = sub nuw i32 %i.axe, %i.ayc
  br i1 %i.ayd, label %LZ4HC_InsertAndGetWiderMatch.exit257.loopexit, label %.thread1098

.thread1070:                                      ; preds = %bb.hz, %bb.hx, %bb.if, %bb.ie, %bb.id
  %.3349.i130 = phi i64 [ %.0346.i991467, %bb.hx ], [ %.1347.i135, %bb.if ], [ %.1347.i135, %bb.ie ], [ %.1347.i135, %bb.id ], [ %.0346.i991467, %bb.hz ]
  %.3344.i131 = phi i32 [ %.0341.i1001468, %bb.hx ], [ 2, %bb.if ], [ 2, %bb.ie ], [ %.1342.i136, %bb.id ], [ 1, %bb.hz ]
  %i.ayf = zext i16 %i.asw to i32
  %i.ayg = sub i32 %.0323.i1011469, %i.ayf
  br label %.thread1098

.thread1098:                                      ; preds = %bb.ja, %bb.iv, %bb.iw, %bb.iu, %.thread1070
  %.16.i1331109 = phi i32 [ %.5.i122, %.thread1070 ], [ %.5.i122, %bb.iu ], [ %.5.i122, %bb.iv ], [ %.5.i122, %bb.iw ], [ %.6.i173, %bb.ja ] ; 2 uses
  %.3344.i1311108 = phi i32 [ %.3344.i131, %.thread1070 ], [ 2, %bb.iu ], [ 2, %bb.iv ], [ 2, %bb.iw ], [ 2, %bb.ja ]
  %.3349.i1301107 = phi i64 [ %.3349.i130, %.thread1070 ], [ %.1347.i135, %bb.iu ], [ %.1347.i135, %bb.iv ], [ %.1347.i135, %bb.iw ], [ %.1347.i135, %bb.ja ]
  %.16367.i1291106 = phi i32 [ %.5356.i121, %.thread1070 ], [ %.5356.i121, %bb.iu ], [ %.5356.i121, %bb.iv ], [ %.5356.i121, %bb.iw ], [ %.6357.i172, %bb.ja ] ; 2 uses
  %.15338.i125 = phi i32 [ %i.ayg, %.thread1070 ], [ %..i159, %bb.iu ], [ %i.aim, %bb.iv ], [ %i.axe, %bb.iw ], [ %i.aye, %bb.ja ] ; 2 uses
  %i.ayh = icmp uge i32 %.15338.i125, %i.aiw
  %i.ayi = icmp sgt i32 %.0314.i1031470, 1
  %i.ayj = select i1 %i.ayh, i1 %i.ayi, i1 false
  br i1 %i.ayj, label %bb.fy, label %LZ4HC_InsertAndGetWiderMatch.exit257.loopexit

LZ4HC_InsertAndGetWiderMatch.exit257.loopexit:    ; preds = %bb.ja, %bb.iy, %.thread1098
  %.18369.i106.ph = phi i32 [ %.16367.i1291106, %.thread1098 ], [ %.6357.i172, %bb.ja ], [ %.5356.i121, %bb.iy ]
  %.18.i108.ph = phi i32 [ %.16.i1331109, %.thread1098 ], [ %.6.i173, %bb.ja ], [ %.5.i122, %bb.iy ]
  %i.ayk = zext i32 %.18369.i106.ph to i64
  %i.ayl = sext i32 %.5379.i120 to i64
  br label %LZ4HC_InsertAndGetWiderMatch.exit257

LZ4HC_InsertAndGetWiderMatch.exit257:             ; preds = %LZ4HC_InsertAndGetWiderMatch.exit257.loopexit, %LZ4HC_Insert.exit.i96
  %.6380.i105 = phi i64 [ 0, %LZ4HC_Insert.exit.i96 ], [ %i.ayl, %LZ4HC_InsertAndGetWiderMatch.exit257.loopexit ]
  %.18369.i106 = phi i64 [ 0, %LZ4HC_Insert.exit.i96 ], [ %i.ayk, %LZ4HC_InsertAndGetWiderMatch.exit257.loopexit ]
  %.18.i108 = phi i32 [ %.sroa.090.sroa.12.3.i, %LZ4HC_Insert.exit.i96 ], [ %.18.i108.ph, %LZ4HC_InsertAndGetWiderMatch.exit257.loopexit ]
  %i.aym = getelementptr inbounds i8, ptr %i.aik, i64 %.6380.i105
  br label %bb.jb

bb.jb:                                            ; preds = %LZ4HC_InsertAndGetWiderMatch.exit257, %bb.fw
  %.sroa.051.sroa.0.0.i = phi i64 [ %.18369.i106, %LZ4HC_InsertAndGetWiderMatch.exit257 ], [ 0, %bb.fw ] ; 3 uses
  %.sroa.051.sroa.8.0.i = phi i32 [ %.18.i108, %LZ4HC_InsertAndGetWiderMatch.exit257 ], [ 0, %bb.fw ] ; 5 uses
  %.3337.i = phi ptr [ %i.aym, %LZ4HC_InsertAndGetWiderMatch.exit257 ], [ %.2336.i, %bb.fw ] ; 11 uses
  %.not360.i = icmp sgt i32 %.sroa.051.sroa.8.0.i, %.sroa.090.sroa.12.3.i
  br i1 %.not360.i, label %bb.jw, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.ayn = icmp ult ptr %.5.i, %i.bjy
  %i.ayo = ptrtoint ptr %.5.i to i64              ; 5 uses
  %i.ayp = sub i64 %i.ayo, %i.bju
  %i.ayq = trunc i64 %i.ayp to i32
  %.sroa.0162.sroa.14.3.i = select i1 %i.ayn, i32 %i.ayq, i32 %.sroa.0162.sroa.14.2.i.ph ; 3 uses
  %i.ayr = getelementptr i8, ptr %.5.ph, i64 1    ; 4 uses
  %i.ays = ptrtoint ptr %.4875.ph to i64          ; 3 uses
  %i.ayt = sub i64 %i.bju, %i.ays                 ; 7 uses
  %i.ayu = udiv i64 %i.ayt, 255
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayr, i64 %i.ayu
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 %i.ayt
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 8
  %i.ayy = icmp ugt ptr %i.ayx, %spec.select.i
  %or.cond.i38 = select i1 %.not.i14, i1 %i.ayy, i1 false
  br i1 %or.cond.i38, label %LZ4HC_encodeSequence.exit, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.ayz = icmp ugt i64 %i.ayt, 14
  br i1 %i.ayz, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.aza = add i64 %i.ayt, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph, align 1, !tbaa !27
  %i.azb = icmp ugt i64 %i.aza, 254
  br i1 %i.azb, label %.lr.ph1529.preheader, label %._crit_edge1530

.lr.ph1529.preheader:                             ; preds = %bb.je
  %i.azc = add i64 %i.bju, -270
  %i.azd = sub i64 %i.azc, %i.ays                 ; 2 uses
  %i.aze = udiv i64 %i.azd, 255                   ; 3 uses
  %i.azf = add nuw nsw i64 %i.aze, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ayr, i8 -1, i64 %i.azf, i1 false), !tbaa !27
  %scevgep1874 = getelementptr i8, ptr %.5.ph, i64 2
  %scevgep1875 = getelementptr i8, ptr %scevgep1874, i64 %i.aze
  %.neg2117 = mul i64 %i.aze, -255
  %i.azg = add i64 %.neg2117, %i.azd
  br label %._crit_edge1530

._crit_edge1530:                                  ; preds = %.lr.ph1529.preheader, %bb.je
  %.28.lcssa = phi ptr [ %i.ayr, %bb.je ], [ %scevgep1875, %.lr.ph1529.preheader ] ; 2 uses
  %.0.i45.lcssa = phi i64 [ %i.aza, %bb.je ], [ %i.azg, %.lr.ph1529.preheader ]
  %i.azh = trunc nuw i64 %.0.i45.lcssa to i8
  %i.azi = getelementptr inbounds nuw i8, ptr %.28.lcssa, i64 1
  store i8 %i.azh, ptr %.28.lcssa, align 1, !tbaa !27
  br label %bb.jg

bb.jf:                                            ; preds = %bb.jd
end_hunk_5
begin_hunk_6_@LZ4HC_compress_optimal:bb.a
  %i.lt = zext i32 %i.ln to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.lt
  %i.lv = select i1 %i.lp, ptr %i.lu, ptr %i.ls   ; 8 uses
  %.val940 = load i32, ptr %i.lv, align 1, !tbaa !15
  %i.lw = icmp eq i32 %.val940, %.val942
  br i1 %i.lw, label %bb.bg, label %.thread1358

bb.bg:                                            ; preds = %bb.bf
  %i.lx = select i1 %i.lp, ptr %i.l, ptr %.ptr1687.ptr.ptr ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 4 ; 4 uses
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = getelementptr inbounds i8, ptr %i.lx, i64 -7 ; 2 uses
  %i.mb = icmp ult ptr %i.ly, %i.ma
  br i1 %i.mb, label %.lr.ph.i1031, label %.preheader.i1017, !prof !23

.preheader.i1017:                                 ; preds = %bb.bh, %bb.bg
  %.037.lcssa.i1018 = phi ptr [ %i.ly, %bb.bg ], [ %i.mj, %bb.bh ] ; 4 uses
  %.037.lcssa53.i1019 = ptrtoint ptr %.037.lcssa.i1018 to i64 ; 2 uses
  %i.mc = icmp ult ptr %.037.lcssa.i1018, %i.lx
  br i1 %i.mc, label %.lr.ph47.preheader.i1022, label %LZ4HC_countPattern.exit1036

.lr.ph47.preheader.i1022:                         ; preds = %.preheader.i1017
  %i.md = sub i64 %i.lz, %.037.lcssa53.i1019
  %scevgep.i1023 = getelementptr i8, ptr %.037.lcssa.i1018, i64 %i.md
  br label %.lr.ph47.i1024

.lr.ph.i1031:                                     ; preds = %bb.bg, %bb.bh
  %.03744.i1032 = phi ptr [ %i.mj, %bb.bh ], [ %i.ly, %bb.bg ] ; 3 uses
  %.037.val.i1033 = load i64, ptr %.03744.i1032, align 1, !tbaa !20 ; 2 uses
  %.not.i1034 = icmp eq i64 %.037.val.i1033, %i.en
  br i1 %.not.i1034, label %bb.bh, label %.thread.i1035

.thread.i1035:                                    ; preds = %.lr.ph.i1031
  %i.me = xor i64 %.037.val.i1033, %i.en
  %i.mf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.me, i1 true)
  %i.mg = lshr i64 %i.mf, 3
  %i.mh = getelementptr inbounds nuw i8, ptr %.03744.i1032, i64 %i.mg
  %i.mi = ptrtoint ptr %i.mh to i64
  br label %LZ4HC_countPattern.exit1036

bb.bh:                                            ; preds = %.lr.ph.i1031
  %i.mj = getelementptr inbounds nuw i8, ptr %.03744.i1032, i64 8 ; 3 uses
  %i.mk = icmp ult ptr %i.mj, %i.ma
  br i1 %i.mk, label %.lr.ph.i1031, label %.preheader.i1017, !prof !24

.lr.ph47.i1024:                                   ; preds = %bb.bi, %.lr.ph47.preheader.i1022
  %.03446.i1025 = phi i64 [ %i.mp, %bb.bi ], [ %i.en, %.lr.ph47.preheader.i1022 ] ; 2 uses
  %.23945.i1026 = phi ptr [ %i.mo, %bb.bi ], [ %.037.lcssa.i1018, %.lr.ph47.preheader.i1022 ] ; 3 uses
  %i.ml = load i8, ptr %.23945.i1026, align 1, !tbaa !27
  %i.mm = trunc i64 %.03446.i1025 to i8
  %i.mn = icmp eq i8 %i.ml, %i.mm
  br i1 %i.mn, label %bb.bi, label %.critedge.loopexit.i1027

bb.bi:                                            ; preds = %.lr.ph47.i1024
  %i.mo = getelementptr inbounds nuw i8, ptr %.23945.i1026, i64 1 ; 2 uses
  %i.mp = lshr i64 %.03446.i1025, 8
  %exitcond.not.i1030 = icmp eq ptr %i.mo, %i.lx
  br i1 %exitcond.not.i1030, label %.critedge.loopexit.i1027, label %.lr.ph47.i1024, !llvm.loop !38

.critedge.loopexit.i1027:                         ; preds = %bb.bi, %.lr.ph47.i1024
  %.239.lcssa.ph.i1028 = phi ptr [ %scevgep.i1023, %bb.bi ], [ %.23945.i1026, %.lr.ph47.i1024 ]
  %.pre.i1029 = ptrtoint ptr %.239.lcssa.ph.i1028 to i64
  br label %LZ4HC_countPattern.exit1036

LZ4HC_countPattern.exit1036:                      ; preds = %.preheader.i1017, %.thread.i1035, %.critedge.loopexit.i1027
  %.sink.i1020 = phi i64 [ %i.mi, %.thread.i1035 ], [ %.pre.i1029, %.critedge.loopexit.i1027 ], [ %.037.lcssa53.i1019, %.preheader.i1017 ]
  %i.mq = ptrtoint ptr %i.ly to i64
  %i.mr = sub i64 %.sink.i1020, %i.mq             ; 3 uses
  %i.ms = and i64 %i.mr, 4294967295
  %i.mt = add nuw nsw i64 %i.ms, 4                ; 4 uses
  br i1 %i.lp, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %LZ4HC_countPattern.exit1036
  %i.mu = add nuw nsw i64 %i.mt, %i.lr
  %i.mv = icmp eq i64 %i.mu, %i.cd
  br i1 %i.mv, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.mw = and i64 %i.mr, 3
  %i.mx = icmp eq i64 %i.mw, 0
  %.tr.i1037 = trunc i64 %i.mr to i32
  %i.my = shl i32 %.tr.i1037, 3
  %i.mz = tail call i32 @llvm.fshl.i32(i32 %.val942, i32 %.val942, i32 %i.my)
  %.0.i1038 = select i1 %i.mx, i32 %.val942, i32 %i.mz
  %i.na = zext i32 %.0.i1038 to i64
  %i.nb = mul nuw i64 %i.na, 4294967297           ; 3 uses
  br i1 %i.eo, label %.lr.ph.i1053, label %.preheader.i1039, !prof !23

.preheader.i1039.loopexit:                        ; preds = %bb.bl
  %.pre2197.a = ptrtoint ptr %i.nj to i64
  br label %.preheader.i1039

.preheader.i1039:                                 ; preds = %.preheader.i1039.loopexit, %bb.bk
  %.037.lcssa53.i1041.pre-phi = phi i64 [ %.pre2197.a, %.preheader.i1039.loopexit ], [ %i.br, %bb.bk ] ; 2 uses
  %.037.lcssa.i1040 = phi ptr [ %i.nj, %.preheader.i1039.loopexit ], [ %i.bp, %bb.bk ] ; 3 uses
  %i.nc = icmp ult ptr %.037.lcssa.i1040, %i.l
  br i1 %i.nc, label %.lr.ph47.preheader.i1044, label %LZ4HC_countPattern.exit1058

.lr.ph47.preheader.i1044:                         ; preds = %.preheader.i1039
  %i.nd = sub i64 %i.z, %.037.lcssa53.i1041.pre-phi
  %scevgep.i1045 = getelementptr i8, ptr %.037.lcssa.i1040, i64 %i.nd
  br label %.lr.ph47.i1046

.lr.ph.i1053:                                     ; preds = %bb.bk, %bb.bl
  %.03744.i1054 = phi ptr [ %i.nj, %bb.bl ], [ %i.bp, %bb.bk ] ; 3 uses
  %.037.val.i1055 = load i64, ptr %.03744.i1054, align 1, !tbaa !20 ; 2 uses
  %.not.i1056 = icmp eq i64 %.037.val.i1055, %i.nb
  br i1 %.not.i1056, label %bb.bl, label %.thread.i1057

.thread.i1057:                                    ; preds = %.lr.ph.i1053
  %i.ne = xor i64 %.037.val.i1055, %i.nb
  %i.nf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ne, i1 true)
  %i.ng = lshr i64 %i.nf, 3
  %i.nh = getelementptr inbounds nuw i8, ptr %.03744.i1054, i64 %i.ng
  %i.ni = ptrtoint ptr %i.nh to i64
  br label %LZ4HC_countPattern.exit1058

bb.bl:                                            ; preds = %.lr.ph.i1053
  %i.nj = getelementptr inbounds nuw i8, ptr %.03744.i1054, i64 8 ; 4 uses
  %i.nk = icmp ult ptr %i.nj, %i.k
  br i1 %i.nk, label %.lr.ph.i1053, label %.preheader.i1039.loopexit, !prof !24

.lr.ph47.i1046:                                   ; preds = %bb.bm, %.lr.ph47.preheader.i1044
  %.03446.i1047 = phi i64 [ %i.np, %bb.bm ], [ %i.nb, %.lr.ph47.preheader.i1044 ] ; 2 uses
  %.23945.i1048 = phi ptr [ %i.no, %bb.bm ], [ %.037.lcssa.i1040, %.lr.ph47.preheader.i1044 ] ; 3 uses
  %i.nl = load i8, ptr %.23945.i1048, align 1, !tbaa !27
  %i.nm = trunc i64 %.03446.i1047 to i8
  %i.nn = icmp eq i8 %i.nl, %i.nm
  br i1 %i.nn, label %bb.bm, label %.critedge.loopexit.i1049

bb.bm:                                            ; preds = %.lr.ph47.i1046
  %i.no = getelementptr inbounds nuw i8, ptr %.23945.i1048, i64 1 ; 2 uses
  %i.np = lshr i64 %.03446.i1047, 8
  %exitcond.not.i1052 = icmp eq ptr %i.no, %i.l
  br i1 %exitcond.not.i1052, label %.critedge.loopexit.i1049, label %.lr.ph47.i1046, !llvm.loop !38

.critedge.loopexit.i1049:                         ; preds = %bb.bm, %.lr.ph47.i1046
  %.239.lcssa.ph.i1050 = phi ptr [ %scevgep.i1045, %bb.bm ], [ %.23945.i1048, %.lr.ph47.i1046 ]
  %.pre.i1051 = ptrtoint ptr %.239.lcssa.ph.i1050 to i64
  br label %LZ4HC_countPattern.exit1058

LZ4HC_countPattern.exit1058:                      ; preds = %.preheader.i1039, %.thread.i1057, %.critedge.loopexit.i1049
  %.sink.i1042 = phi i64 [ %i.ni, %.thread.i1057 ], [ %.pre.i1051, %.critedge.loopexit.i1049 ], [ %.037.lcssa53.i1041.pre-phi, %.preheader.i1039 ]
  %i.nq = sub i64 %.sink.i1042, %i.br
  %i.nr = and i64 %i.nq, 4294967295
  %i.ns = add nuw nsw i64 %i.nr, %i.mt
  br label %bb.bn

bb.bn:                                            ; preds = %LZ4HC_countPattern.exit1058, %bb.bj, %LZ4HC_countPattern.exit1036
  %i.nt = phi ptr [ %i.ca, %LZ4HC_countPattern.exit1058 ], [ %i.ca, %bb.bj ], [ %i.bp, %LZ4HC_countPattern.exit1036 ] ; 4 uses
  %.0393.i.i810 = phi i64 [ %i.ns, %LZ4HC_countPattern.exit1058 ], [ %i.mt, %bb.bj ], [ %i.mt, %LZ4HC_countPattern.exit1036 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.nu = ptrtoint ptr %i.lv to i64               ; 2 uses
  %i.nv = ptrtoint ptr %i.nt to i64
  store i32 %.val942, ptr %i.f, align 4, !tbaa !3
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 4 ; 2 uses
  %.not.i10592661 = icmp ult ptr %i.lv, %i.nw
  br i1 %.not.i10592661, label %._crit_edge2666, label %.lr.ph2664, !prof !39

bb.bo:                                            ; preds = %.lr.ph2664
  %.not.i1059 = icmp ult ptr %i.nx, %i.nw
  br i1 %.not.i1059, label %._crit_edge2666, label %.lr.ph2664, !prof !40, !llvm.loop !41

.lr.ph2664:                                       ; preds = %bb.bn, %bb.bo
  %.013.i2662 = phi ptr [ %i.nx, %bb.bo ], [ %i.lv, %bb.bn ] ; 2 uses
  %i.nx = getelementptr inbounds i8, ptr %.013.i2662, i64 -4 ; 4 uses
  %.val.i = load i32, ptr %i.nx, align 1, !tbaa !15
  %.not14.i = icmp eq i32 %.val.i, %.val942
  br i1 %.not14.i, label %bb.bo, label %._crit_edge2665, !llvm.loop !41

._crit_edge2665:                                  ; preds = %.lr.ph2664
  br label %._crit_edge2666, !llvm.loop !41

._crit_edge2666:                                  ; preds = %bb.bo, %._crit_edge2665, %bb.bn
  %.013.i.lcssa = phi ptr [ %.013.i2662, %._crit_edge2665 ], [ %i.lv, %bb.bn ], [ %i.nx, %bb.bo ] ; 3 uses
  %i.ny = icmp ugt ptr %.013.i.lcssa, %i.nt
  br i1 %i.ny, label %.lr.ph.preheader.i, label %LZ4HC_reverseCountPattern.exit, !prof !23

.lr.ph.preheader.i:                               ; preds = %._crit_edge2666
  %i.nz = sub i64 %i.nv, %i.nu
  %scevgep.i1060 = getelementptr i8, ptr %i.lv, i64 %i.nz
  br label %.lr.ph.i1061

bb.bp:                                            ; preds = %.lr.ph.i1061
  %i.oa = getelementptr inbounds i8, ptr %.017.i, i64 -1
  %i.ob = icmp ugt ptr %i.oc, %i.nt
  br i1 %i.ob, label %.lr.ph.i1061, label %LZ4HC_reverseCountPattern.exit, !prof !24, !llvm.loop !42

.lr.ph.i1061:                                     ; preds = %bb.bp, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.oa, %bb.bp ], [ %i.aa, %.lr.ph.preheader.i ] ; 2 uses
  %.116.i = phi ptr [ %i.oc, %bb.bp ], [ %.013.i.lcssa, %.lr.ph.preheader.i ] ; 2 uses
  %i.oc = getelementptr inbounds i8, ptr %.116.i, i64 -1 ; 3 uses
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !27
  %i.oe = load i8, ptr %.017.i, align 1, !tbaa !27
  %.not15.i = icmp eq i8 %i.od, %i.oe
  br i1 %.not15.i, label %bb.bp, label %LZ4HC_reverseCountPattern.exit

LZ4HC_reverseCountPattern.exit:                   ; preds = %bb.bp, %.lr.ph.i1061, %._crit_edge2666
  %.1.lcssa.i = phi ptr [ %.013.i.lcssa, %._crit_edge2666 ], [ %scevgep.i1060, %bb.bp ], [ %.116.i, %.lr.ph.i1061 ]
  %i.of = ptrtoint ptr %.1.lcssa.i to i64
  %i.og = sub i64 %i.nu, %i.of                    ; 3 uses
  %i.oh = trunc i64 %i.og to i32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.oi = and i64 %i.og, 4294967295
  %i.oj = sub nsw i64 0, %i.oi
  %i.ok = getelementptr inbounds i8, ptr %i.lv, i64 %i.oj
  %i.ol = icmp eq ptr %i.ok, %i.bp
  %or.cond454.i.i812 = select i1 %i.lp, i1 %i.ol, i1 false
  %or.cond455.i.i813 = select i1 %or.cond454.i.i812, i1 %i.ep, i1 false
  br i1 %or.cond455.i.i813, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %LZ4HC_reverseCountPattern.exit
  %11 = sub i64 0, %i.og
  %12 = and i64 %11, 3
  %i.om = icmp eq i64 %12, 0
  %.neg = mul i32 %i.oh, 24
  %i.on = tail call i32 @llvm.fshl.i32(i32 %.val942, i32 %.val942, i32 %.neg)
  %.0.i1063 = select i1 %i.om, i32 %.val942, i32 %i.on ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %.0.i1063, ptr %i.e, align 4, !tbaa !3
  br i1 %.not.i10652668, label %._crit_edge2672, label %.lr.ph2671, !prof !39

bb.br:                                            ; preds = %.lr.ph2671
  %.not.i1065 = icmp slt i64 %.013.i1064.idx2669, 8
  br i1 %.not.i1065, label %._crit_edge2672, label %.lr.ph2671, !prof !40, !llvm.loop !41

.lr.ph2671:                                       ; preds = %bb.bq, %bb.br
  %.013.i1064.idx2669 = phi i64 [ %.013.i1064.add, %bb.br ], [ %i.cd, %bb.bq ] ; 3 uses
  %.013.i1064.add = add nsw i64 %.013.i1064.idx2669, -4 ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.013.i1064.add
  %.val.i1066 = load i32, ptr %.ptr, align 1, !tbaa !15
  %.not14.i1067 = icmp eq i32 %.val.i1066, %.0.i1063
  br i1 %.not14.i1067, label %bb.br, label %.thread2412, !llvm.loop !41

.thread2412:                                      ; preds = %.lr.ph2671
  %.013.i1064.ptr.le2413 = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.013.i1064.idx2669
  br label %.lr.ph.i1071.preheader

._crit_edge2672:                                  ; preds = %bb.br, %bb.bq
  %.013.i1064.idx.lcssa = phi i64 [ %i.cd, %bb.bq ], [ %.013.i1064.add, %bb.br ] ; 2 uses
  %.013.i1064.ptr.le = getelementptr inbounds i8, ptr %i.ca, i64 %.013.i1064.idx.lcssa ; 2 uses
  %i.oo = icmp sgt i64 %.013.i1064.idx.lcssa, 0
  br i1 %i.oo, label %.lr.ph.i1071.preheader, label %LZ4HC_reverseCountPattern.exit1075, !prof !43

.lr.ph.i1071.preheader:                           ; preds = %.thread2412, %._crit_edge2672
  %.116.i1073.ph = phi ptr [ %.013.i1064.ptr.le, %._crit_edge2672 ], [ %.013.i1064.ptr.le2413, %.thread2412 ]
  br label %.lr.ph.i1071

bb.bs:                                            ; preds = %.lr.ph.i1071
  %i.op = getelementptr inbounds i8, ptr %.017.i1072, i64 -1
  %i.oq = icmp ugt ptr %i.or, %i.ca
  br i1 %i.oq, label %.lr.ph.i1071, label %LZ4HC_reverseCountPattern.exit1075, !prof !24, !llvm.loop !42

.lr.ph.i1071:                                     ; preds = %.lr.ph.i1071.preheader, %bb.bs
  %.017.i1072 = phi ptr [ %i.op, %bb.bs ], [ %i.ab, %.lr.ph.i1071.preheader ] ; 2 uses
  %.116.i1073 = phi ptr [ %i.or, %bb.bs ], [ %.116.i1073.ph, %.lr.ph.i1071.preheader ] ; 2 uses
  %i.or = getelementptr inbounds i8, ptr %.116.i1073, i64 -1 ; 3 uses
  %i.os = load i8, ptr %i.or, align 1, !tbaa !27
  %i.ot = load i8, ptr %.017.i1072, align 1, !tbaa !27
  %.not15.i1074 = icmp eq i8 %i.os, %i.ot
  br i1 %.not15.i1074, label %bb.bs, label %LZ4HC_reverseCountPattern.exit1075

LZ4HC_reverseCountPattern.exit1075:               ; preds = %bb.bs, %.lr.ph.i1071, %._crit_edge2672
  %.1.lcssa.i1068 = phi ptr [ %.013.i1064.ptr.le, %._crit_edge2672 ], [ %i.ca, %bb.bs ], [ %.116.i1073, %.lr.ph.i1071 ]
  %i.ou = ptrtoint ptr %.1.lcssa.i1068 to i64
  %i.ov = sub i64 %i.eq, %i.ou
  %i.ow = trunc i64 %i.ov to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ox = add i32 %i.ow, %i.oh
  br label %bb.bt

bb.bt:                                            ; preds = %LZ4HC_reverseCountPattern.exit1075, %LZ4HC_reverseCountPattern.exit
  %.0390.i.i814 = phi i32 [ %i.oh, %LZ4HC_reverseCountPattern.exit ], [ %i.ox, %LZ4HC_reverseCountPattern.exit1075 ]
  %i.oy = sub i32 %i.kt, %.0390.i.i814
  %i.oz = tail call i32 @llvm.umax.i32(i32 %i.oy, i32 %i.bz) ; 7 uses
  %i.pa = sub i32 %i.kt, %i.oz
  %i.pb = zext i32 %i.pa to i64
  %i.pc = add nuw nsw i64 %.0393.i.i810, %i.pb    ; 2 uses
  %.not438.i.i815 = icmp ult i64 %i.pc, %.1347.i.i795
  %.not439.i.i816 = icmp ugt i64 %.0393.i.i810, %.1347.i.i795
  %or.cond456.i.i817 = or i1 %.not439.i.i816, %.not438.i.i815
  br i1 %or.cond456.i.i817, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.pd = trunc i64 %.0393.i.i810 to i32
  %i.pe = trunc i64 %.1347.i.i795 to i32
  %i.pf = sub i32 %i.kt, %i.pe
  %i.pg = add i32 %i.pf, %i.pd                    ; 2 uses
  %i.ph = sub i32 %i.pg, %i.bq
  %i.pi = icmp ugt i32 %i.ph, -4
  %..i.i819 = select i1 %i.pi, i32 %i.bq, i32 %i.pg
  br label %.backedge2443

bb.bv:                                            ; preds = %bb.bt
  %i.pj = sub i32 %i.oz, %i.bq
  %i.pk = icmp ugt i32 %i.pj, -4
  br i1 %i.pk, label %bb.ca, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.pl = tail call i64 @llvm.umin.i64(i64 %i.pc, i64 %.1347.i.i795) ; 2 uses
  %i.pm = sext i32 %.5.i.i766 to i64
  %i.pn = icmp ugt i64 %i.pl, %i.pm
  br i1 %i.pn, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.po = zext i32 %i.oz to i64
  %i.pp = sub i64 %i.dy, %i.po
  %i.pq = icmp ugt i64 %i.pp, 65535
  br i1 %i.pq, label %.thread1398, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pr = trunc i64 %i.pl to i32
  %i.ps = sub i32 %i.bu, %i.oz
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bw
  %.6357.i.i827 = phi i32 [ %i.ps, %bb.by ], [ %.5356.i.i765, %bb.bw ] ; 2 uses
  %.6.i.i828 = phi i32 [ %i.pr, %bb.by ], [ %.5.i.i766, %bb.bw ] ; 2 uses
  %i.pt = and i32 %i.oz, 65535
  %i.pu = zext nneg i32 %i.pt to i64
  %i.pv = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.pu
  %i.pw = load i16, ptr %i.pv, align 2, !tbaa !29
  %i.px = zext i16 %i.pw to i32                   ; 2 uses
  %i.py = icmp ult i32 %i.oz, %i.px
  %i.pz = sub nuw i32 %i.oz, %i.px
  br i1 %i.py, label %.thread1398, label %bb.ca

.thread1358:                                      ; preds = %bb.az, %._crit_edge1802.thread, %bb.be, %bb.bd, %bb.bf
  %.3349.i.i790.ph = phi i64 [ %.1347.i.i795, %bb.bf ], [ %.1347.i.i795, %bb.bd ], [ %.1347.i.i795, %bb.be ], [ %.0346.i.i6922675, %._crit_edge1802.thread ], [ %.0346.i.i6922675, %bb.az ]
  %.3344.i.i791.ph = phi i32 [ 2, %bb.bf ], [ %.1342.i.i796, %bb.bd ], [ 2, %bb.be ], [ %.0341.i.i6932676, %._crit_edge1802.thread ], [ 1, %bb.az ]
  %i.qa = add i32 %.3320.i.i786, %.0323.i.i6942677
  %i.qb = and i32 %i.qa, 65535
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.qc
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !29
  %i.qf = zext i16 %i.qe to i32
  %i.qg = sub i32 %.0323.i.i6942677, %i.qf
  br label %.backedge2443

bb.ca:                                            ; preds = %bb.bz, %bb.bv, %._crit_edge1802
  %.8405.i.i778 = phi i1 [ false, %bb.bz ], [ %i.kl, %._crit_edge1802 ], [ false, %bb.bv ]
  %.17368.i.i779 = phi i32 [ %.6357.i.i827, %bb.bz ], [ %.5356.i.i765, %._crit_edge1802 ], [ %.5356.i.i765, %bb.bv ] ; 2 uses
  %.4350.i.i780 = phi i64 [ %.1347.i.i795, %bb.bz ], [ %.0346.i.i6922675, %._crit_edge1802 ], [ %.1347.i.i795, %bb.bv ]
  %.4345.i.i781 = phi i32 [ 2, %bb.bz ], [ %.0341.i.i6932676, %._crit_edge1802 ], [ 2, %bb.bv ]
  %.15338.i.i782 = phi i32 [ %i.pz, %bb.bz ], [ %spec.select459.i.i775, %._crit_edge1802 ], [ %i.bq, %bb.bv ]
  %.4321.i.i783 = phi i32 [ 0, %bb.bz ], [ %.2319.i.i843, %._crit_edge1802 ], [ 0, %bb.bv ]
  %.17.i.i784 = phi i32 [ %.6.i.i828, %bb.bz ], [ %.3388.i.i763, %._crit_edge1802 ], [ %.5.i.i766, %bb.bv ] ; 2 uses
  br i1 %.8405.i.i778, label %.thread1398, label %.backedge2443

.backedge2443:                                    ; preds = %bb.ca, %bb.bu, %.thread1358
  %.0351.i.i691.be = phi i32 [ %.17368.i.i779, %bb.ca ], [ %.5356.i.i765, %.thread1358 ], [ %.5356.i.i765, %bb.bu ] ; 2 uses
  %.0346.i.i692.be = phi i64 [ %.4350.i.i780, %bb.ca ], [ %.3349.i.i790.ph, %.thread1358 ], [ %.1347.i.i795, %bb.bu ]
  %.0341.i.i693.be = phi i32 [ %.4345.i.i781, %bb.ca ], [ %.3344.i.i791.ph, %.thread1358 ], [ 2, %bb.bu ]
  %.0323.i.i694.be = phi i32 [ %.15338.i.i782, %bb.ca ], [ %i.qg, %.thread1358 ], [ %..i.i819, %bb.bu ] ; 2 uses
  %.0317.i.i695.be = phi i32 [ %.4321.i.i783, %bb.ca ], [ %.3320.i.i786, %.thread1358 ], [ 0, %bb.bu ]
  %.0.i.i697.be = phi i32 [ %.17.i.i784, %bb.ca ], [ %.5.i.i766, %.thread1358 ], [ %.5.i.i766, %bb.bu ] ; 2 uses
  %i.qh = icmp uge i32 %.0323.i.i694.be, %i.bz
  %i.qi = icmp sgt i32 %.0314.i.i6962679, 1
  %i.qj = select i1 %i.qh, i1 %i.qi, i1 false
  br i1 %i.qj, label %.lr.ph2681, label %.thread1398

.thread1398:                                      ; preds = %.backedge2443, %bb.ca, %bb.bx, %bb.bz, %LZ4HC_Insert.exit.i.i689
  %.18369.i.i699 = phi i32 [ 0, %LZ4HC_Insert.exit.i.i689 ], [ %.0351.i.i691.be, %.backedge2443 ], [ %.6357.i.i827, %bb.bz ], [ %.17368.i.i779, %bb.ca ], [ %.5356.i.i765, %bb.bx ] ; 3 uses
  %.1315.i.i700 = phi i32 [ %5, %LZ4HC_Insert.exit.i.i689 ], [ %i.et, %bb.bz ], [ %i.et, %bb.bx ], [ %i.et, %bb.ca ], [ %i.et, %.backedge2443 ] ; 2 uses
  %.18.i.i701 = phi i32 [ 3, %LZ4HC_Insert.exit.i.i689 ], [ %.0.i.i697.be, %.backedge2443 ], [ %.6.i.i828, %bb.bz ], [ %.17.i.i784, %bb.ca ], [ %.5.i.i766, %bb.bx ] ; 3 uses
  %i.qk = icmp sgt i32 %.1315.i.i700, 0
  %or.cond13.i.i702 = select i1 %i.ac, i1 %i.qk, i1 false
  %or.cond15.i.i703 = and i1 %i.bx, %or.cond13.i.i702
  br i1 %or.cond15.i.i703, label %bb.cb, label %LZ4HC_InsertAndGetWiderMatch.exit.i704

bb.cb:                                            ; preds = %.thread1398
  %i.ql = getelementptr inbounds nuw i8, ptr %i.bo, i64 262144
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !7
  %i.qn = getelementptr inbounds nuw i8, ptr %i.bo, i64 262152
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !13 ; 2 uses
  %i.qp = ptrtoint ptr %i.qm to i64
  %i.qq = ptrtoint ptr %i.qo to i64
  %i.qr = sub i64 %i.qp, %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.bo, i64 262168
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !14
  %i.qu = zext i32 %i.qt to i64                   ; 2 uses
  %i.qv = add i64 %i.qr, %i.qu                    ; 2 uses
  %.val954 = load i32, ptr %.013271995, align 1, !tbaa !15
  %i.qw = mul i32 %.val954, -1640531535
  %i.qx = lshr i32 %i.qw, 17
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.qy
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !3  ; 2 uses
  %i.rb = add i32 %i.ra, %i.bz
  %i.rc = trunc i64 %i.qv to i32
  %i.rd = sub i32 %i.rb, %i.rc                    ; 2 uses
  %i.re = sub i32 %i.bu, %i.rd                    ; 2 uses
  %i.rf = icmp ult i32 %i.re, 65536
  br i1 %i.rf, label %.lr.ph1820, label %LZ4HC_InsertAndGetWiderMatch.exit.i704

.lr.ph1820:                                       ; preds = %bb.cb
  %i.rg = sub nsw i64 0, %i.qu
  %i.rh = getelementptr inbounds i8, ptr %i.qo, i64 %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %i.bo, i64 131072
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cq, %.lr.ph1820
  %.in = phi i32 [ %.1315.i.i700, %.lr.ph1820 ], [ %i.rk, %bb.cq ]
  %.19370.i.i72518142700 = phi i32 [ %.18369.i.i699, %.lr.ph1820 ], [ %.21372.i.i732, %bb.cq ] ; 2 uses
  %.0340.i.i72618152699 = phi i32 [ %i.ra, %.lr.ph1820 ], [ %i.tl, %bb.cq ] ; 3 uses
  %.16339.i.i72718162698 = phi i32 [ %i.rd, %.lr.ph1820 ], [ %i.ti, %bb.cq ]
  %.19.i.i72918182697 = phi i32 [ %.18.i.i701, %.lr.ph1820 ], [ %.21.i.i733, %bb.cq ] ; 3 uses
  %i.rj = phi i32 [ %i.re, %.lr.ph1820 ], [ %i.tj, %bb.cq ]
  %i.rk = add nsw i32 %.in, -1                    ; 2 uses
  %i.rl = zext i32 %.0340.i.i72618152699 to i64   ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.rl ; 3 uses
  %.val941 = load i32, ptr %i.rm, align 1, !tbaa !15
  %i.rn = icmp eq i32 %.val941, %.val942
  br i1 %i.rn, label %bb.cd, label %bb.cq

bb.cd:                                            ; preds = %bb.cc
  %i.ro = sub i64 %i.qv, %i.rl
end_hunk_6
begin_hunk_7_@LZ4HC_compress_optimal:bb.a
  %i.ajo = zext i32 %i.aji to i64
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ajo
  %i.ajq = select i1 %i.ajk, ptr %i.ajp, ptr %i.ajn ; 8 uses
  %.val945 = load i32, ptr %i.ajq, align 1, !tbaa !15
  %i.ajr = icmp eq i32 %.val945, %.val947
  br i1 %i.ajr, label %bb.fm, label %.thread1446

bb.fm:                                            ; preds = %bb.fl
  %i.ajs = select i1 %i.ajk, ptr %i.l, ptr %.ptr1687.ptr.ptr ; 4 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajq, i64 4 ; 4 uses
  %i.aju = ptrtoint ptr %i.ajs to i64
  %i.ajv = getelementptr inbounds i8, ptr %i.ajs, i64 -7 ; 2 uses
  %i.ajw = icmp ult ptr %i.ajt, %i.ajv
  br i1 %i.ajw, label %.lr.ph.i1110, label %.preheader.i1096, !prof !23

.preheader.i1096:                                 ; preds = %bb.fn, %bb.fm
  %.037.lcssa.i1097 = phi ptr [ %i.ajt, %bb.fm ], [ %i.ake, %bb.fn ] ; 4 uses
  %.037.lcssa53.i1098 = ptrtoint ptr %.037.lcssa.i1097 to i64 ; 2 uses
  %i.ajx = icmp ult ptr %.037.lcssa.i1097, %i.ajs
  br i1 %i.ajx, label %.lr.ph47.preheader.i1101, label %LZ4HC_countPattern.exit1115

.lr.ph47.preheader.i1101:                         ; preds = %.preheader.i1096
  %i.ajy = sub i64 %i.aju, %.037.lcssa53.i1098
  %scevgep.i1102 = getelementptr i8, ptr %.037.lcssa.i1097, i64 %i.ajy
  br label %.lr.ph47.i1103

.lr.ph.i1110:                                     ; preds = %bb.fm, %bb.fn
  %.03744.i1111 = phi ptr [ %i.ake, %bb.fn ], [ %i.ajt, %bb.fm ] ; 3 uses
  %.037.val.i1112 = load i64, ptr %.03744.i1111, align 1, !tbaa !20 ; 2 uses
  %.not.i1113 = icmp eq i64 %.037.val.i1112, %i.acl
  br i1 %.not.i1113, label %bb.fn, label %.thread.i1114

.thread.i1114:                                    ; preds = %.lr.ph.i1110
  %i.ajz = xor i64 %.037.val.i1112, %i.acl
  %i.aka = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ajz, i1 true)
  %i.akb = lshr i64 %i.aka, 3
  %i.akc = getelementptr inbounds nuw i8, ptr %.03744.i1111, i64 %i.akb
  %i.akd = ptrtoint ptr %i.akc to i64
  br label %LZ4HC_countPattern.exit1115

bb.fn:                                            ; preds = %.lr.ph.i1110
  %i.ake = getelementptr inbounds nuw i8, ptr %.03744.i1111, i64 8 ; 3 uses
  %i.akf = icmp ult ptr %i.ake, %i.ajv
  br i1 %i.akf, label %.lr.ph.i1110, label %.preheader.i1096, !prof !24

.lr.ph47.i1103:                                   ; preds = %bb.fo, %.lr.ph47.preheader.i1101
  %.03446.i1104 = phi i64 [ %i.akk, %bb.fo ], [ %i.acl, %.lr.ph47.preheader.i1101 ] ; 2 uses
  %.23945.i1105 = phi ptr [ %i.akj, %bb.fo ], [ %.037.lcssa.i1097, %.lr.ph47.preheader.i1101 ] ; 3 uses
  %i.akg = load i8, ptr %.23945.i1105, align 1, !tbaa !27
  %i.akh = trunc i64 %.03446.i1104 to i8
  %i.aki = icmp eq i8 %i.akg, %i.akh
  br i1 %i.aki, label %bb.fo, label %.critedge.loopexit.i1106

bb.fo:                                            ; preds = %.lr.ph47.i1103
  %i.akj = getelementptr inbounds nuw i8, ptr %.23945.i1105, i64 1 ; 2 uses
  %i.akk = lshr i64 %.03446.i1104, 8
  %exitcond.not.i1109 = icmp eq ptr %i.akj, %i.ajs
  br i1 %exitcond.not.i1109, label %.critedge.loopexit.i1106, label %.lr.ph47.i1103, !llvm.loop !38

.critedge.loopexit.i1106:                         ; preds = %bb.fo, %.lr.ph47.i1103
  %.239.lcssa.ph.i1107 = phi ptr [ %scevgep.i1102, %bb.fo ], [ %.23945.i1105, %.lr.ph47.i1103 ]
  %.pre.i1108 = ptrtoint ptr %.239.lcssa.ph.i1107 to i64
  br label %LZ4HC_countPattern.exit1115

LZ4HC_countPattern.exit1115:                      ; preds = %.preheader.i1096, %.thread.i1114, %.critedge.loopexit.i1106
  %.sink.i1099 = phi i64 [ %i.akd, %.thread.i1114 ], [ %.pre.i1108, %.critedge.loopexit.i1106 ], [ %.037.lcssa53.i1098, %.preheader.i1096 ]
  %i.akl = ptrtoint ptr %i.ajt to i64
  %i.akm = sub i64 %.sink.i1099, %i.akl           ; 3 uses
  %i.akn = and i64 %i.akm, 4294967295
  %i.ako = add nuw nsw i64 %i.akn, 4              ; 4 uses
  br i1 %i.ajk, label %bb.ft, label %bb.fp

bb.fp:                                            ; preds = %LZ4HC_countPattern.exit1115
  %i.akp = add nuw nsw i64 %i.ako, %i.ajm
  %i.akq = icmp eq i64 %i.akp, %i.cd
  br i1 %i.akq, label %bb.fq, label %bb.ft

bb.fq:                                            ; preds = %bb.fp
  %i.akr = and i64 %i.akm, 3
  %i.aks = icmp eq i64 %i.akr, 0
  %.tr.i1116 = trunc i64 %i.akm to i32
  %i.akt = shl i32 %.tr.i1116, 3
  %i.aku = tail call i32 @llvm.fshl.i32(i32 %.val947, i32 %.val947, i32 %i.akt)
  %.0.i1117 = select i1 %i.aks, i32 %.val947, i32 %i.aku
  %i.akv = zext i32 %.0.i1117 to i64
  %i.akw = mul nuw i64 %i.akv, 4294967297         ; 3 uses
  br i1 %i.eo, label %.lr.ph.i1132, label %.preheader.i1118, !prof !23

.preheader.i1118.loopexit:                        ; preds = %bb.fr
  %.pre2196 = ptrtoint ptr %i.ale to i64
  br label %.preheader.i1118

.preheader.i1118:                                 ; preds = %.preheader.i1118.loopexit, %bb.fq
  %.037.lcssa53.i1120.pre-phi = phi i64 [ %.pre2196, %.preheader.i1118.loopexit ], [ %i.br, %bb.fq ] ; 2 uses
  %.037.lcssa.i1119 = phi ptr [ %i.ale, %.preheader.i1118.loopexit ], [ %i.bp, %bb.fq ] ; 3 uses
  %i.akx = icmp ult ptr %.037.lcssa.i1119, %i.l
  br i1 %i.akx, label %.lr.ph47.preheader.i1123, label %LZ4HC_countPattern.exit1137

.lr.ph47.preheader.i1123:                         ; preds = %.preheader.i1118
  %i.aky = sub i64 %i.z, %.037.lcssa53.i1120.pre-phi
  %scevgep.i1124 = getelementptr i8, ptr %.037.lcssa.i1119, i64 %i.aky
  br label %.lr.ph47.i1125

.lr.ph.i1132:                                     ; preds = %bb.fq, %bb.fr
  %.03744.i1133 = phi ptr [ %i.ale, %bb.fr ], [ %i.bp, %bb.fq ] ; 3 uses
  %.037.val.i1134 = load i64, ptr %.03744.i1133, align 1, !tbaa !20 ; 2 uses
  %.not.i1135 = icmp eq i64 %.037.val.i1134, %i.akw
  br i1 %.not.i1135, label %bb.fr, label %.thread.i1136

.thread.i1136:                                    ; preds = %.lr.ph.i1132
  %i.akz = xor i64 %.037.val.i1134, %i.akw
  %i.ala = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.akz, i1 true)
  %i.alb = lshr i64 %i.ala, 3
  %i.alc = getelementptr inbounds nuw i8, ptr %.03744.i1133, i64 %i.alb
  %i.ald = ptrtoint ptr %i.alc to i64
  br label %LZ4HC_countPattern.exit1137

bb.fr:                                            ; preds = %.lr.ph.i1132
  %i.ale = getelementptr inbounds nuw i8, ptr %.03744.i1133, i64 8 ; 4 uses
  %i.alf = icmp ult ptr %i.ale, %i.k
  br i1 %i.alf, label %.lr.ph.i1132, label %.preheader.i1118.loopexit, !prof !24

.lr.ph47.i1125:                                   ; preds = %bb.fs, %.lr.ph47.preheader.i1123
  %.03446.i1126 = phi i64 [ %i.alk, %bb.fs ], [ %i.akw, %.lr.ph47.preheader.i1123 ] ; 2 uses
  %.23945.i1127 = phi ptr [ %i.alj, %bb.fs ], [ %.037.lcssa.i1119, %.lr.ph47.preheader.i1123 ] ; 3 uses
  %i.alg = load i8, ptr %.23945.i1127, align 1, !tbaa !27
  %i.alh = trunc i64 %.03446.i1126 to i8
  %i.ali = icmp eq i8 %i.alg, %i.alh
  br i1 %i.ali, label %bb.fs, label %.critedge.loopexit.i1128

bb.fs:                                            ; preds = %.lr.ph47.i1125
  %i.alj = getelementptr inbounds nuw i8, ptr %.23945.i1127, i64 1 ; 2 uses
  %i.alk = lshr i64 %.03446.i1126, 8
  %exitcond.not.i1131 = icmp eq ptr %i.alj, %i.l
  br i1 %exitcond.not.i1131, label %.critedge.loopexit.i1128, label %.lr.ph47.i1125, !llvm.loop !38

.critedge.loopexit.i1128:                         ; preds = %bb.fs, %.lr.ph47.i1125
  %.239.lcssa.ph.i1129 = phi ptr [ %scevgep.i1124, %bb.fs ], [ %.23945.i1127, %.lr.ph47.i1125 ]
  %.pre.i1130 = ptrtoint ptr %.239.lcssa.ph.i1129 to i64
  br label %LZ4HC_countPattern.exit1137

LZ4HC_countPattern.exit1137:                      ; preds = %.preheader.i1118, %.thread.i1136, %.critedge.loopexit.i1128
  %.sink.i1121 = phi i64 [ %i.ald, %.thread.i1136 ], [ %.pre.i1130, %.critedge.loopexit.i1128 ], [ %.037.lcssa53.i1120.pre-phi, %.preheader.i1118 ]
  %i.all = sub i64 %.sink.i1121, %i.br
  %i.alm = and i64 %i.all, 4294967295
  %i.aln = add nuw nsw i64 %i.alm, %i.ako
  br label %bb.ft

bb.ft:                                            ; preds = %LZ4HC_countPattern.exit1137, %bb.fp, %LZ4HC_countPattern.exit1115
  %i.alo = phi ptr [ %i.ca, %LZ4HC_countPattern.exit1137 ], [ %i.ca, %bb.fp ], [ %i.bp, %LZ4HC_countPattern.exit1115 ] ; 4 uses
  %.0393.i.i577 = phi i64 [ %i.aln, %LZ4HC_countPattern.exit1137 ], [ %i.ako, %bb.fp ], [ %i.ako, %LZ4HC_countPattern.exit1115 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.alp = ptrtoint ptr %i.ajq to i64             ; 2 uses
  %i.alq = ptrtoint ptr %i.alo to i64
  store i32 %.val947, ptr %i.d, align 4, !tbaa !3
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alo, i64 4 ; 2 uses
  %.not.i11392701 = icmp ult ptr %i.ajq, %i.alr
  br i1 %.not.i11392701, label %._crit_edge2707, label %.lr.ph2704, !prof !39

bb.fu:                                            ; preds = %.lr.ph2704
  %.not.i1139 = icmp ult ptr %i.als, %i.alr
  br i1 %.not.i1139, label %._crit_edge2707, label %.lr.ph2704, !prof !40, !llvm.loop !41

.lr.ph2704:                                       ; preds = %bb.ft, %bb.fu
  %.013.i11382702 = phi ptr [ %i.als, %bb.fu ], [ %i.ajq, %bb.ft ] ; 2 uses
  %i.als = getelementptr inbounds i8, ptr %.013.i11382702, i64 -4 ; 4 uses
  %.val.i1140 = load i32, ptr %i.als, align 1, !tbaa !15
  %.not14.i1141 = icmp eq i32 %.val.i1140, %.val947
  br i1 %.not14.i1141, label %bb.fu, label %._crit_edge2705, !llvm.loop !41

._crit_edge2705:                                  ; preds = %.lr.ph2704
  br label %._crit_edge2707, !llvm.loop !41

._crit_edge2707:                                  ; preds = %bb.fu, %._crit_edge2705, %bb.ft
  %.013.i1138.lcssa = phi ptr [ %.013.i11382702, %._crit_edge2705 ], [ %i.ajq, %bb.ft ], [ %i.als, %bb.fu ] ; 3 uses
  %i.alt = icmp ugt ptr %.013.i1138.lcssa, %i.alo
  br i1 %i.alt, label %.lr.ph.preheader.i1143, label %LZ4HC_reverseCountPattern.exit1149, !prof !23

.lr.ph.preheader.i1143:                           ; preds = %._crit_edge2707
  %i.alu = sub i64 %i.alq, %i.alp
  %scevgep.i1144 = getelementptr i8, ptr %i.ajq, i64 %i.alu
  br label %.lr.ph.i1145

bb.fv:                                            ; preds = %.lr.ph.i1145
  %i.alv = getelementptr inbounds i8, ptr %.017.i1146, i64 -1
  %i.alw = icmp ugt ptr %i.alx, %i.alo
  br i1 %i.alw, label %.lr.ph.i1145, label %LZ4HC_reverseCountPattern.exit1149, !prof !24, !llvm.loop !42

.lr.ph.i1145:                                     ; preds = %bb.fv, %.lr.ph.preheader.i1143
  %.017.i1146 = phi ptr [ %i.alv, %bb.fv ], [ %i.ad, %.lr.ph.preheader.i1143 ] ; 2 uses
  %.116.i1147 = phi ptr [ %i.alx, %bb.fv ], [ %.013.i1138.lcssa, %.lr.ph.preheader.i1143 ] ; 2 uses
  %i.alx = getelementptr inbounds i8, ptr %.116.i1147, i64 -1 ; 3 uses
  %i.aly = load i8, ptr %i.alx, align 1, !tbaa !27
  %i.alz = load i8, ptr %.017.i1146, align 1, !tbaa !27
  %.not15.i1148 = icmp eq i8 %i.aly, %i.alz
  br i1 %.not15.i1148, label %bb.fv, label %LZ4HC_reverseCountPattern.exit1149

LZ4HC_reverseCountPattern.exit1149:               ; preds = %bb.fv, %.lr.ph.i1145, %._crit_edge2707
  %.1.lcssa.i1142 = phi ptr [ %.013.i1138.lcssa, %._crit_edge2707 ], [ %scevgep.i1144, %bb.fv ], [ %.116.i1147, %.lr.ph.i1145 ]
  %i.ama = ptrtoint ptr %.1.lcssa.i1142 to i64
  %i.amb = sub i64 %i.alp, %i.ama                 ; 3 uses
  %i.amc = trunc i64 %i.amb to i32                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.amd = and i64 %i.amb, 4294967295
  %i.ame = sub nsw i64 0, %i.amd
  %i.amf = getelementptr inbounds i8, ptr %i.ajq, i64 %i.ame
  %i.amg = icmp eq ptr %i.amf, %i.bp
  %or.cond454.i.i579 = select i1 %i.ajk, i1 %i.amg, i1 false
  %or.cond455.i.i580 = select i1 %or.cond454.i.i579, i1 %i.ep, i1 false
  br i1 %or.cond455.i.i580, label %bb.fw, label %bb.fz

bb.fw:                                            ; preds = %LZ4HC_reverseCountPattern.exit1149
  %13 = sub i64 0, %i.amb
  %14 = and i64 %13, 3
  %i.amh = icmp eq i64 %14, 0
  %.neg1688 = mul i32 %i.amc, 24
  %i.ami = tail call i32 @llvm.fshl.i32(i32 %.val947, i32 %.val947, i32 %.neg1688)
  %.0.i1151 = select i1 %i.amh, i32 %.val947, i32 %i.ami ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.0.i1151, ptr %i.c, align 4, !tbaa !3
  br i1 %.not.i11532709, label %._crit_edge2713, label %.lr.ph2712, !prof !39

bb.fx:                                            ; preds = %.lr.ph2712
  %.not.i1153 = icmp slt i64 %.013.i1152.idx2710, 8
  br i1 %.not.i1153, label %._crit_edge2713, label %.lr.ph2712, !prof !40, !llvm.loop !41

.lr.ph2712:                                       ; preds = %bb.fw, %bb.fx
  %.013.i1152.idx2710 = phi i64 [ %.013.i1152.add, %bb.fx ], [ %i.cd, %bb.fw ] ; 3 uses
  %.013.i1152.add = add nsw i64 %.013.i1152.idx2710, -4 ; 3 uses
  %.ptr1688 = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.013.i1152.add
  %.val.i1154 = load i32, ptr %.ptr1688, align 1, !tbaa !15
  %.not14.i1155 = icmp eq i32 %.val.i1154, %.0.i1151
  br i1 %.not14.i1155, label %bb.fx, label %.thread2427, !llvm.loop !41

.thread2427:                                      ; preds = %.lr.ph2712
  %.013.i1152.ptr.le2428 = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.013.i1152.idx2710
  br label %.lr.ph.i1159.preheader

._crit_edge2713:                                  ; preds = %bb.fx, %bb.fw
  %.013.i1152.idx.lcssa = phi i64 [ %i.cd, %bb.fw ], [ %.013.i1152.add, %bb.fx ] ; 2 uses
  %.013.i1152.ptr.le = getelementptr inbounds i8, ptr %i.ca, i64 %.013.i1152.idx.lcssa ; 2 uses
  %i.amj = icmp sgt i64 %.013.i1152.idx.lcssa, 0
  br i1 %i.amj, label %.lr.ph.i1159.preheader, label %LZ4HC_reverseCountPattern.exit1163, !prof !43

.lr.ph.i1159.preheader:                           ; preds = %.thread2427, %._crit_edge2713
  %.116.i1161.ph = phi ptr [ %.013.i1152.ptr.le, %._crit_edge2713 ], [ %.013.i1152.ptr.le2428, %.thread2427 ]
  br label %.lr.ph.i1159

bb.fy:                                            ; preds = %.lr.ph.i1159
  %i.amk = getelementptr inbounds i8, ptr %.017.i1160, i64 -1
  %i.aml = icmp ugt ptr %i.amm, %i.ca
  br i1 %i.aml, label %.lr.ph.i1159, label %LZ4HC_reverseCountPattern.exit1163, !prof !24, !llvm.loop !42

.lr.ph.i1159:                                     ; preds = %.lr.ph.i1159.preheader, %bb.fy
  %.017.i1160 = phi ptr [ %i.amk, %bb.fy ], [ %i.ae, %.lr.ph.i1159.preheader ] ; 2 uses
  %.116.i1161 = phi ptr [ %i.amm, %bb.fy ], [ %.116.i1161.ph, %.lr.ph.i1159.preheader ] ; 2 uses
  %i.amm = getelementptr inbounds i8, ptr %.116.i1161, i64 -1 ; 3 uses
  %i.amn = load i8, ptr %i.amm, align 1, !tbaa !27
  %i.amo = load i8, ptr %.017.i1160, align 1, !tbaa !27
  %.not15.i1162 = icmp eq i8 %i.amn, %i.amo
  br i1 %.not15.i1162, label %bb.fy, label %LZ4HC_reverseCountPattern.exit1163

LZ4HC_reverseCountPattern.exit1163:               ; preds = %bb.fy, %.lr.ph.i1159, %._crit_edge2713
  %.1.lcssa.i1156 = phi ptr [ %.013.i1152.ptr.le, %._crit_edge2713 ], [ %i.ca, %bb.fy ], [ %.116.i1161, %.lr.ph.i1159 ]
  %i.amp = ptrtoint ptr %.1.lcssa.i1156 to i64
  %i.amq = sub i64 %i.eq, %i.amp
  %i.amr = trunc i64 %i.amq to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ams = add i32 %i.amr, %i.amc
  br label %bb.fz

bb.fz:                                            ; preds = %LZ4HC_reverseCountPattern.exit1163, %LZ4HC_reverseCountPattern.exit1149
  %.0390.i.i581 = phi i32 [ %i.amc, %LZ4HC_reverseCountPattern.exit1149 ], [ %i.ams, %LZ4HC_reverseCountPattern.exit1163 ]
  %i.amt = sub i32 %i.aio, %.0390.i.i581
  %i.amu = tail call i32 @llvm.umax.i32(i32 %i.amt, i32 %i.aae) ; 7 uses
  %i.amv = sub i32 %i.aio, %i.amu
  %i.amw = zext i32 %i.amv to i64
  %i.amx = add nuw nsw i64 %.0393.i.i577, %i.amw  ; 2 uses
  %.not438.i.i582 = icmp ult i64 %i.amx, %.1347.i.i562
  %.not439.i.i583 = icmp ugt i64 %.0393.i.i577, %.1347.i.i562
  %or.cond456.i.i584 = or i1 %.not439.i.i583, %.not438.i.i582
  br i1 %or.cond456.i.i584, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.amy = trunc i64 %.0393.i.i577 to i32
  %i.amz = trunc i64 %.1347.i.i562 to i32
  %i.ana = sub i32 %i.aio, %i.amz
  %i.anb = add i32 %i.ana, %i.amy                 ; 2 uses
  %i.anc = sub i32 %i.anb, %i.bq
  %i.and = icmp ugt i32 %i.anc, -4
  %..i.i586 = select i1 %i.and, i32 %i.bq, i32 %i.anb
  br label %.backedge2442

bb.gb:                                            ; preds = %bb.fz
  %i.ane = sub i32 %i.amu, %i.bq
  %i.anf = icmp ugt i32 %i.ane, -4
  br i1 %i.anf, label %bb.gg, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.ang = tail call i64 @llvm.umin.i64(i64 %i.amx, i64 %.1347.i.i562) ; 2 uses
  %i.anh = sext i32 %.5.i.i533 to i64
  %i.ani = icmp ugt i64 %i.ang, %i.anh
  br i1 %i.ani, label %bb.gd, label %bb.gf

bb.gd:                                            ; preds = %bb.gc
  %i.anj = zext i32 %i.amu to i64
  %i.ank = sub i64 %i.aby, %i.anj
  %i.anl = icmp ugt i64 %i.ank, 65535
  br i1 %i.anl, label %.thread1488, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.anm = trunc i64 %i.ang to i32
  %i.ann = sub i32 %i.aab, %i.amu
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gc
  %.6357.i.i594 = phi i32 [ %i.ann, %bb.ge ], [ %.5356.i.i532, %bb.gc ] ; 2 uses
  %.6.i.i595 = phi i32 [ %i.anm, %bb.ge ], [ %.5.i.i533, %bb.gc ] ; 2 uses
  %i.ano = and i32 %i.amu, 65535
  %i.anp = zext nneg i32 %i.ano to i64
  %i.anq = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.anp
  %i.anr = load i16, ptr %i.anq, align 2, !tbaa !29
  %i.ans = zext i16 %i.anr to i32                 ; 2 uses
  %i.ant = icmp ult i32 %i.amu, %i.ans
  %i.anu = sub nuw i32 %i.amu, %i.ans
  br i1 %i.ant, label %.thread1488, label %bb.gg

.thread1446:                                      ; preds = %bb.ff, %._crit_edge1863.thread, %bb.fk, %bb.fj, %bb.fl
  %.3349.i.i557.ph = phi i64 [ %.1347.i.i562, %bb.fl ], [ %.1347.i.i562, %bb.fj ], [ %.1347.i.i562, %bb.fk ], [ %.0346.i.i4592716, %._crit_edge1863.thread ], [ %.0346.i.i4592716, %bb.ff ]
  %.3344.i.i558.ph = phi i32 [ 2, %bb.fl ], [ %.1342.i.i563, %bb.fj ], [ 2, %bb.fk ], [ %.0341.i.i4602717, %._crit_edge1863.thread ], [ 1, %bb.ff ]
  %i.anv = add i32 %.3320.i.i553, %.0323.i.i4612718
  %i.anw = and i32 %i.anv, 65535
  %i.anx = zext nneg i32 %i.anw to i64
  %i.any = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.anx
  %i.anz = load i16, ptr %i.any, align 2, !tbaa !29
  %i.aoa = zext i16 %i.anz to i32
  %i.aob = sub i32 %.0323.i.i4612718, %i.aoa
  br label %.backedge2442

bb.gg:                                            ; preds = %bb.gf, %bb.gb, %._crit_edge1863
  %.8405.i.i545 = phi i1 [ false, %bb.gf ], [ %i.aig, %._crit_edge1863 ], [ false, %bb.gb ]
  %.17368.i.i546 = phi i32 [ %.6357.i.i594, %bb.gf ], [ %.5356.i.i532, %._crit_edge1863 ], [ %.5356.i.i532, %bb.gb ] ; 2 uses
  %.4350.i.i547 = phi i64 [ %.1347.i.i562, %bb.gf ], [ %.0346.i.i4592716, %._crit_edge1863 ], [ %.1347.i.i562, %bb.gb ]
  %.4345.i.i548 = phi i32 [ 2, %bb.gf ], [ %.0341.i.i4602717, %._crit_edge1863 ], [ 2, %bb.gb ]
  %.15338.i.i549 = phi i32 [ %i.anu, %bb.gf ], [ %spec.select459.i.i542, %._crit_edge1863 ], [ %i.bq, %bb.gb ]
  %.4321.i.i550 = phi i32 [ 0, %bb.gf ], [ %.2319.i.i610, %._crit_edge1863 ], [ 0, %bb.gb ]
  %.17.i.i551 = phi i32 [ %.6.i.i595, %bb.gf ], [ %.3388.i.i530, %._crit_edge1863 ], [ %.5.i.i533, %bb.gb ] ; 2 uses
  br i1 %.8405.i.i545, label %.thread1488, label %.backedge2442

.backedge2442:                                    ; preds = %bb.gg, %bb.ga, %.thread1446
  %.0351.i.i458.be = phi i32 [ %.17368.i.i546, %bb.gg ], [ %.5356.i.i532, %.thread1446 ], [ %.5356.i.i532, %bb.ga ] ; 2 uses
  %.0346.i.i459.be = phi i64 [ %.4350.i.i547, %bb.gg ], [ %.3349.i.i557.ph, %.thread1446 ], [ %.1347.i.i562, %bb.ga ]
  %.0341.i.i460.be = phi i32 [ %.4345.i.i548, %bb.gg ], [ %.3344.i.i558.ph, %.thread1446 ], [ 2, %bb.ga ]
  %.0323.i.i461.be = phi i32 [ %.15338.i.i549, %bb.gg ], [ %i.aob, %.thread1446 ], [ %..i.i586, %bb.ga ] ; 2 uses
  %.0317.i.i462.be = phi i32 [ %.4321.i.i550, %bb.gg ], [ %.3320.i.i553, %.thread1446 ], [ 0, %bb.ga ]
  %.0.i.i464.be = phi i32 [ %.17.i.i551, %bb.gg ], [ %.5.i.i533, %.thread1446 ], [ %.5.i.i533, %bb.ga ] ; 2 uses
  %i.aoc = icmp uge i32 %.0323.i.i461.be, %i.aae
  %i.aod = icmp sgt i32 %.0314.i.i4632720, 1
  %i.aoe = select i1 %i.aoc, i1 %i.aod, i1 false
  br i1 %i.aoe, label %.lr.ph2722, label %.thread1488

.thread1488:                                      ; preds = %.backedge2442, %bb.gg, %bb.gd, %bb.gf, %LZ4HC_Insert.exit.i.i456
  %.18369.i.i466 = phi i32 [ 0, %LZ4HC_Insert.exit.i.i456 ], [ %.0351.i.i458.be, %.backedge2442 ], [ %.6357.i.i594, %bb.gf ], [ %.17368.i.i546, %bb.gg ], [ %.5356.i.i532, %bb.gd ] ; 3 uses
  %.1315.i.i467 = phi i32 [ %5, %LZ4HC_Insert.exit.i.i456 ], [ %i.aco, %bb.gf ], [ %i.aco, %bb.gd ], [ %i.aco, %bb.gg ], [ %i.aco, %.backedge2442 ] ; 2 uses
  %.18.i.i468 = phi i32 [ 3, %LZ4HC_Insert.exit.i.i456 ], [ %.0.i.i464.be, %.backedge2442 ], [ %.6.i.i595, %bb.gf ], [ %.17.i.i551, %bb.gg ], [ %.5.i.i533, %bb.gd ] ; 3 uses
  %i.aof = icmp sgt i32 %.1315.i.i467, 0
  %or.cond13.i.i469 = select i1 %i.ac, i1 %i.aof, i1 false
  %or.cond15.i.i470 = and i1 %i.aac, %or.cond13.i.i469
  br i1 %or.cond15.i.i470, label %bb.gh, label %LZ4HC_InsertAndGetWiderMatch.exit.i471

bb.gh:                                            ; preds = %.thread1488
  %i.aog = load ptr, ptr %i.zb, align 8, !tbaa !7
  %i.aoh = load ptr, ptr %i.zc, align 8, !tbaa !13 ; 2 uses
  %i.aoi = ptrtoint ptr %i.aog to i64
  %i.aoj = ptrtoint ptr %i.aoh to i64
  %i.aok = sub i64 %i.aoi, %i.aoj
  %i.aol = load i32, ptr %i.zd, align 8, !tbaa !14
  %i.aom = zext i32 %i.aol to i64                 ; 2 uses
  %i.aon = add i64 %i.aok, %i.aom                 ; 2 uses
  %.val957 = load i32, ptr %i.zo, align 1, !tbaa !15
  %i.aoo = mul i32 %.val957, -1640531535
  %i.aop = lshr i32 %i.aoo, 17
  %i.aoq = zext nneg i32 %i.aop to i64
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aoq
  %i.aos = load i32, ptr %i.aor, align 4, !tbaa !3 ; 2 uses
  %i.aot = add i32 %i.aos, %i.aae
  %i.aou = trunc i64 %i.aon to i32
  %i.aov = sub i32 %i.aot, %i.aou                 ; 2 uses
  %i.aow = sub i32 %i.aab, %i.aov                 ; 2 uses
  %i.aox = icmp ult i32 %i.aow, 65536
  br i1 %i.aox, label %.lr.ph1881, label %LZ4HC_InsertAndGetWiderMatch.exit.i471

.lr.ph1881:                                       ; preds = %bb.gh
  %i.aoy = sub nsw i64 0, %i.aom
  %i.aoz = getelementptr inbounds i8, ptr %i.aoh, i64 %i.aoy
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gw, %.lr.ph1881
  %.in2830 = phi i32 [ %.1315.i.i467, %.lr.ph1881 ], [ %i.apb, %bb.gw ]
  %.19370.i.i49218752741 = phi i32 [ %.18369.i.i466, %.lr.ph1881 ], [ %.21372.i.i499, %bb.gw ] ; 2 uses
  %.0340.i.i49318762740 = phi i32 [ %i.aos, %.lr.ph1881 ], [ %i.arc, %bb.gw ] ; 3 uses
  %.16339.i.i49418772739 = phi i32 [ %i.aov, %.lr.ph1881 ], [ %i.aqz, %bb.gw ]
  %.19.i.i49618792738 = phi i32 [ %.18.i.i468, %.lr.ph1881 ], [ %.21.i.i500, %bb.gw ] ; 3 uses
  %i.apa = phi i32 [ %i.aow, %.lr.ph1881 ], [ %i.ara, %bb.gw ]
  %i.apb = add nsw i32 %.in2830, -1               ; 2 uses
  %i.apc = zext i32 %.0340.i.i49318762740 to i64  ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %i.apc ; 3 uses
  %.val946 = load i32, ptr %i.apd, align 1, !tbaa !15
  %i.ape = icmp eq i32 %.val946, %.val947
  br i1 %i.ape, label %bb.gj, label %bb.gw

bb.gj:                                            ; preds = %bb.gi
  %i.apf = sub i64 %i.aon, %i.apc
  %i.apg = getelementptr inbounds nuw i8, ptr %i.zo, i64 %i.apf ; 2 uses
  %i.aph = icmp ugt ptr %i.apg, %i.l
  %spec.select457.i.i501 = select i1 %i.aph, ptr %i.l, ptr %i.apg ; 4 uses
  %i.api = getelementptr inbounds nuw i8, ptr %i.apd, i64 4 ; 2 uses
end_hunk_7
begin_hunk_8_@LZ4HC_compress_optimal:bb.a
  %i.bav = zext i32 %i.bap to i64
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bav
  %i.bax = select i1 %i.bar, ptr %i.baw, ptr %i.bau ; 8 uses
  %.val950 = load i32, ptr %i.bax, align 1, !tbaa !15
  %i.bay = icmp eq i32 %.val950, %.val952
  br i1 %i.bay, label %bb.jb, label %.thread1528

bb.jb:                                            ; preds = %bb.ja
  %i.baz = select i1 %i.bar, ptr %i.l, ptr %.ptr1687.ptr.ptr ; 4 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bax, i64 4 ; 4 uses
  %i.bbb = ptrtoint ptr %i.baz to i64
  %i.bbc = getelementptr inbounds i8, ptr %i.baz, i64 -7 ; 2 uses
  %i.bbd = icmp ult ptr %i.bba, %i.bbc
  br i1 %i.bbd, label %.lr.ph.i1198, label %.preheader.i1184, !prof !23

.preheader.i1184:                                 ; preds = %bb.jc, %bb.jb
  %.037.lcssa.i1185 = phi ptr [ %i.bba, %bb.jb ], [ %i.bbl, %bb.jc ] ; 4 uses
  %.037.lcssa53.i1186 = ptrtoint ptr %.037.lcssa.i1185 to i64 ; 2 uses
  %i.bbe = icmp ult ptr %.037.lcssa.i1185, %i.baz
  br i1 %i.bbe, label %.lr.ph47.preheader.i1189, label %LZ4HC_countPattern.exit1203

.lr.ph47.preheader.i1189:                         ; preds = %.preheader.i1184
  %i.bbf = sub i64 %i.bbb, %.037.lcssa53.i1186
  %scevgep.i1190 = getelementptr i8, ptr %.037.lcssa.i1185, i64 %i.bbf
  br label %.lr.ph47.i1191

.lr.ph.i1198:                                     ; preds = %bb.jb, %bb.jc
  %.03744.i1199 = phi ptr [ %i.bbl, %bb.jc ], [ %i.bba, %bb.jb ] ; 3 uses
  %.037.val.i1200 = load i64, ptr %.03744.i1199, align 1, !tbaa !20 ; 2 uses
  %.not.i1201 = icmp eq i64 %.037.val.i1200, %i.ats
  br i1 %.not.i1201, label %bb.jc, label %.thread.i1202

.thread.i1202:                                    ; preds = %.lr.ph.i1198
  %i.bbg = xor i64 %.037.val.i1200, %i.ats
  %i.bbh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bbg, i1 true)
  %i.bbi = lshr i64 %i.bbh, 3
  %i.bbj = getelementptr inbounds nuw i8, ptr %.03744.i1199, i64 %i.bbi
  %i.bbk = ptrtoint ptr %i.bbj to i64
  br label %LZ4HC_countPattern.exit1203

bb.jc:                                            ; preds = %.lr.ph.i1198
  %i.bbl = getelementptr inbounds nuw i8, ptr %.03744.i1199, i64 8 ; 3 uses
  %i.bbm = icmp ult ptr %i.bbl, %i.bbc
  br i1 %i.bbm, label %.lr.ph.i1198, label %.preheader.i1184, !prof !24

.lr.ph47.i1191:                                   ; preds = %bb.jd, %.lr.ph47.preheader.i1189
  %.03446.i1192 = phi i64 [ %i.bbr, %bb.jd ], [ %i.ats, %.lr.ph47.preheader.i1189 ] ; 2 uses
  %.23945.i1193 = phi ptr [ %i.bbq, %bb.jd ], [ %.037.lcssa.i1185, %.lr.ph47.preheader.i1189 ] ; 3 uses
  %i.bbn = load i8, ptr %.23945.i1193, align 1, !tbaa !27
  %i.bbo = trunc i64 %.03446.i1192 to i8
  %i.bbp = icmp eq i8 %i.bbn, %i.bbo
  br i1 %i.bbp, label %bb.jd, label %.critedge.loopexit.i1194

bb.jd:                                            ; preds = %.lr.ph47.i1191
  %i.bbq = getelementptr inbounds nuw i8, ptr %.23945.i1193, i64 1 ; 2 uses
  %i.bbr = lshr i64 %.03446.i1192, 8
  %exitcond.not.i1197 = icmp eq ptr %i.bbq, %i.baz
  br i1 %exitcond.not.i1197, label %.critedge.loopexit.i1194, label %.lr.ph47.i1191, !llvm.loop !38

.critedge.loopexit.i1194:                         ; preds = %bb.jd, %.lr.ph47.i1191
  %.239.lcssa.ph.i1195 = phi ptr [ %scevgep.i1190, %bb.jd ], [ %.23945.i1193, %.lr.ph47.i1191 ]
  %.pre.i1196 = ptrtoint ptr %.239.lcssa.ph.i1195 to i64
  br label %LZ4HC_countPattern.exit1203

LZ4HC_countPattern.exit1203:                      ; preds = %.preheader.i1184, %.thread.i1202, %.critedge.loopexit.i1194
  %.sink.i1187 = phi i64 [ %i.bbk, %.thread.i1202 ], [ %.pre.i1196, %.critedge.loopexit.i1194 ], [ %.037.lcssa53.i1186, %.preheader.i1184 ]
  %i.bbs = ptrtoint ptr %i.bba to i64
  %i.bbt = sub i64 %.sink.i1187, %i.bbs           ; 3 uses
  %i.bbu = and i64 %i.bbt, 4294967295
  %i.bbv = add nuw nsw i64 %i.bbu, 4              ; 4 uses
  br i1 %i.bar, label %bb.ji, label %bb.je

bb.je:                                            ; preds = %LZ4HC_countPattern.exit1203
  %i.bbw = add nuw nsw i64 %i.bbv, %i.bat
  %i.bbx = icmp eq i64 %i.bbw, %i.cd
  br i1 %i.bbx, label %bb.jf, label %bb.ji

bb.jf:                                            ; preds = %bb.je
  %i.bby = and i64 %i.bbt, 3
  %i.bbz = icmp eq i64 %i.bby, 0
  %.tr.i1204 = trunc i64 %i.bbt to i32
  %i.bca = shl i32 %.tr.i1204, 3
  %i.bcb = tail call i32 @llvm.fshl.i32(i32 %.val952, i32 %.val952, i32 %i.bca)
  %.0.i1205 = select i1 %i.bbz, i32 %.val952, i32 %i.bcb
  %i.bcc = zext i32 %.0.i1205 to i64
  %i.bcd = mul nuw i64 %i.bcc, 4294967297         ; 3 uses
  br i1 %i.eo, label %.lr.ph.i1220, label %.preheader.i1206, !prof !23

.preheader.i1206.loopexit:                        ; preds = %bb.jg
  %.pre2194 = ptrtoint ptr %i.bcl to i64
  br label %.preheader.i1206

.preheader.i1206:                                 ; preds = %.preheader.i1206.loopexit, %bb.jf
  %.037.lcssa53.i1208.pre-phi = phi i64 [ %.pre2194, %.preheader.i1206.loopexit ], [ %i.br, %bb.jf ] ; 2 uses
  %.037.lcssa.i1207 = phi ptr [ %i.bcl, %.preheader.i1206.loopexit ], [ %i.bp, %bb.jf ] ; 3 uses
  %i.bce = icmp ult ptr %.037.lcssa.i1207, %i.l
  br i1 %i.bce, label %.lr.ph47.preheader.i1211, label %LZ4HC_countPattern.exit1225

.lr.ph47.preheader.i1211:                         ; preds = %.preheader.i1206
  %i.bcf = sub i64 %i.z, %.037.lcssa53.i1208.pre-phi
  %scevgep.i1212 = getelementptr i8, ptr %.037.lcssa.i1207, i64 %i.bcf
  br label %.lr.ph47.i1213

.lr.ph.i1220:                                     ; preds = %bb.jf, %bb.jg
  %.03744.i1221 = phi ptr [ %i.bcl, %bb.jg ], [ %i.bp, %bb.jf ] ; 3 uses
  %.037.val.i1222 = load i64, ptr %.03744.i1221, align 1, !tbaa !20 ; 2 uses
  %.not.i1223 = icmp eq i64 %.037.val.i1222, %i.bcd
  br i1 %.not.i1223, label %bb.jg, label %.thread.i1224

.thread.i1224:                                    ; preds = %.lr.ph.i1220
  %i.bcg = xor i64 %.037.val.i1222, %i.bcd
  %i.bch = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bcg, i1 true)
  %i.bci = lshr i64 %i.bch, 3
  %i.bcj = getelementptr inbounds nuw i8, ptr %.03744.i1221, i64 %i.bci
  %i.bck = ptrtoint ptr %i.bcj to i64
  br label %LZ4HC_countPattern.exit1225

bb.jg:                                            ; preds = %.lr.ph.i1220
  %i.bcl = getelementptr inbounds nuw i8, ptr %.03744.i1221, i64 8 ; 4 uses
  %i.bcm = icmp ult ptr %i.bcl, %i.k
  br i1 %i.bcm, label %.lr.ph.i1220, label %.preheader.i1206.loopexit, !prof !24

.lr.ph47.i1213:                                   ; preds = %bb.jh, %.lr.ph47.preheader.i1211
  %.03446.i1214 = phi i64 [ %i.bcr, %bb.jh ], [ %i.bcd, %.lr.ph47.preheader.i1211 ] ; 2 uses
  %.23945.i1215 = phi ptr [ %i.bcq, %bb.jh ], [ %.037.lcssa.i1207, %.lr.ph47.preheader.i1211 ] ; 3 uses
  %i.bcn = load i8, ptr %.23945.i1215, align 1, !tbaa !27
  %i.bco = trunc i64 %.03446.i1214 to i8
  %i.bcp = icmp eq i8 %i.bcn, %i.bco
  br i1 %i.bcp, label %bb.jh, label %.critedge.loopexit.i1216

bb.jh:                                            ; preds = %.lr.ph47.i1213
  %i.bcq = getelementptr inbounds nuw i8, ptr %.23945.i1215, i64 1 ; 2 uses
  %i.bcr = lshr i64 %.03446.i1214, 8
  %exitcond.not.i1219 = icmp eq ptr %i.bcq, %i.l
  br i1 %exitcond.not.i1219, label %.critedge.loopexit.i1216, label %.lr.ph47.i1213, !llvm.loop !38

.critedge.loopexit.i1216:                         ; preds = %bb.jh, %.lr.ph47.i1213
  %.239.lcssa.ph.i1217 = phi ptr [ %scevgep.i1212, %bb.jh ], [ %.23945.i1215, %.lr.ph47.i1213 ]
  %.pre.i1218 = ptrtoint ptr %.239.lcssa.ph.i1217 to i64
  br label %LZ4HC_countPattern.exit1225

LZ4HC_countPattern.exit1225:                      ; preds = %.preheader.i1206, %.thread.i1224, %.critedge.loopexit.i1216
  %.sink.i1209 = phi i64 [ %i.bck, %.thread.i1224 ], [ %.pre.i1218, %.critedge.loopexit.i1216 ], [ %.037.lcssa53.i1208.pre-phi, %.preheader.i1206 ]
  %i.bcs = sub i64 %.sink.i1209, %i.br
  %i.bct = and i64 %i.bcs, 4294967295
  %i.bcu = add nuw nsw i64 %i.bct, %i.bbv
  br label %bb.ji

bb.ji:                                            ; preds = %LZ4HC_countPattern.exit1225, %bb.je, %LZ4HC_countPattern.exit1203
  %i.bcv = phi ptr [ %i.ca, %LZ4HC_countPattern.exit1225 ], [ %i.ca, %bb.je ], [ %i.bp, %LZ4HC_countPattern.exit1203 ] ; 4 uses
  %.0393.i.i = phi i64 [ %i.bcu, %LZ4HC_countPattern.exit1225 ], [ %i.bbv, %bb.je ], [ %i.bbv, %LZ4HC_countPattern.exit1203 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bcw = ptrtoint ptr %i.bax to i64             ; 2 uses
  %i.bcx = ptrtoint ptr %i.bcv to i64
  store i32 %.val952, ptr %i.b, align 4, !tbaa !3
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcv, i64 4 ; 2 uses
  %.not.i12272742 = icmp ult ptr %i.bax, %i.bcy
  br i1 %.not.i12272742, label %._crit_edge2748, label %.lr.ph2745, !prof !39

bb.jj:                                            ; preds = %.lr.ph2745
  %.not.i1227 = icmp ult ptr %i.bcz, %i.bcy
  br i1 %.not.i1227, label %._crit_edge2748, label %.lr.ph2745, !prof !40, !llvm.loop !41

.lr.ph2745:                                       ; preds = %bb.ji, %bb.jj
  %.013.i12262743 = phi ptr [ %i.bcz, %bb.jj ], [ %i.bax, %bb.ji ] ; 2 uses
  %i.bcz = getelementptr inbounds i8, ptr %.013.i12262743, i64 -4 ; 4 uses
  %.val.i1228 = load i32, ptr %i.bcz, align 1, !tbaa !15
  %.not14.i1229 = icmp eq i32 %.val.i1228, %.val952
  br i1 %.not14.i1229, label %bb.jj, label %._crit_edge2746, !llvm.loop !41

._crit_edge2746:                                  ; preds = %.lr.ph2745
  br label %._crit_edge2748, !llvm.loop !41

._crit_edge2748:                                  ; preds = %bb.jj, %._crit_edge2746, %bb.ji
  %.013.i1226.lcssa = phi ptr [ %.013.i12262743, %._crit_edge2746 ], [ %i.bax, %bb.ji ], [ %i.bcz, %bb.jj ] ; 3 uses
  %i.bda = icmp ugt ptr %.013.i1226.lcssa, %i.bcv
  br i1 %i.bda, label %.lr.ph.preheader.i1231, label %LZ4HC_reverseCountPattern.exit1237, !prof !23

.lr.ph.preheader.i1231:                           ; preds = %._crit_edge2748
  %i.bdb = sub i64 %i.bcx, %i.bcw
  %scevgep.i1232 = getelementptr i8, ptr %i.bax, i64 %i.bdb
  br label %.lr.ph.i1233

bb.jk:                                            ; preds = %.lr.ph.i1233
  %i.bdc = getelementptr inbounds i8, ptr %.017.i1234, i64 -1
  %i.bdd = icmp ugt ptr %i.bde, %i.bcv
  br i1 %i.bdd, label %.lr.ph.i1233, label %LZ4HC_reverseCountPattern.exit1237, !prof !24, !llvm.loop !42

.lr.ph.i1233:                                     ; preds = %bb.jk, %.lr.ph.preheader.i1231
  %.017.i1234 = phi ptr [ %i.bdc, %bb.jk ], [ %i.af, %.lr.ph.preheader.i1231 ] ; 2 uses
  %.116.i1235 = phi ptr [ %i.bde, %bb.jk ], [ %.013.i1226.lcssa, %.lr.ph.preheader.i1231 ] ; 2 uses
  %i.bde = getelementptr inbounds i8, ptr %.116.i1235, i64 -1 ; 3 uses
  %i.bdf = load i8, ptr %i.bde, align 1, !tbaa !27
  %i.bdg = load i8, ptr %.017.i1234, align 1, !tbaa !27
  %.not15.i1236 = icmp eq i8 %i.bdf, %i.bdg
  br i1 %.not15.i1236, label %bb.jk, label %LZ4HC_reverseCountPattern.exit1237

LZ4HC_reverseCountPattern.exit1237:               ; preds = %bb.jk, %.lr.ph.i1233, %._crit_edge2748
  %.1.lcssa.i1230 = phi ptr [ %.013.i1226.lcssa, %._crit_edge2748 ], [ %scevgep.i1232, %bb.jk ], [ %.116.i1235, %.lr.ph.i1233 ]
  %i.bdh = ptrtoint ptr %.1.lcssa.i1230 to i64
  %i.bdi = sub i64 %i.bcw, %i.bdh                 ; 3 uses
  %i.bdj = trunc i64 %i.bdi to i32                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bdk = and i64 %i.bdi, 4294967295
  %i.bdl = sub nsw i64 0, %i.bdk
  %i.bdm = getelementptr inbounds i8, ptr %i.bax, i64 %i.bdl
  %i.bdn = icmp eq ptr %i.bdm, %i.bp
  %or.cond454.i.i = select i1 %i.bar, i1 %i.bdn, i1 false
  %or.cond455.i.i = select i1 %or.cond454.i.i, i1 %i.ep, i1 false
  br i1 %or.cond455.i.i, label %bb.jl, label %bb.jo

bb.jl:                                            ; preds = %LZ4HC_reverseCountPattern.exit1237
  %15 = sub i64 0, %i.bdi
  %16 = and i64 %15, 3
  %i.bdo = icmp eq i64 %16, 0
  %.neg1690 = mul i32 %i.bdj, 24
  %i.bdp = tail call i32 @llvm.fshl.i32(i32 %.val952, i32 %.val952, i32 %.neg1690)
  %.0.i1239 = select i1 %i.bdo, i32 %.val952, i32 %i.bdp ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.0.i1239, ptr %i.a, align 4, !tbaa !3
  br i1 %.not.i12412750, label %._crit_edge2754, label %.lr.ph2753, !prof !39

bb.jm:                                            ; preds = %.lr.ph2753
  %.not.i1241 = icmp slt i64 %.013.i1240.idx2751, 8
  br i1 %.not.i1241, label %._crit_edge2754, label %.lr.ph2753, !prof !40, !llvm.loop !41

.lr.ph2753:                                       ; preds = %bb.jl, %bb.jm
  %.013.i1240.idx2751 = phi i64 [ %.013.i1240.add, %bb.jm ], [ %i.cd, %bb.jl ] ; 3 uses
  %.013.i1240.add = add nsw i64 %.013.i1240.idx2751, -4 ; 3 uses
  %.ptr1689 = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.013.i1240.add
  %.val.i1242 = load i32, ptr %.ptr1689, align 1, !tbaa !15
  %.not14.i1243 = icmp eq i32 %.val.i1242, %.0.i1239
  br i1 %.not14.i1243, label %bb.jm, label %.thread2433, !llvm.loop !41

.thread2433:                                      ; preds = %.lr.ph2753
  %.013.i1240.ptr.le2434 = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.013.i1240.idx2751
  br label %.lr.ph.i1247.preheader

._crit_edge2754:                                  ; preds = %bb.jm, %bb.jl
  %.013.i1240.idx.lcssa = phi i64 [ %i.cd, %bb.jl ], [ %.013.i1240.add, %bb.jm ] ; 2 uses
  %.013.i1240.ptr.le = getelementptr inbounds i8, ptr %i.ca, i64 %.013.i1240.idx.lcssa ; 2 uses
  %i.bdq = icmp sgt i64 %.013.i1240.idx.lcssa, 0
  br i1 %i.bdq, label %.lr.ph.i1247.preheader, label %LZ4HC_reverseCountPattern.exit1251, !prof !43

.lr.ph.i1247.preheader:                           ; preds = %.thread2433, %._crit_edge2754
  %.116.i1249.ph = phi ptr [ %.013.i1240.ptr.le, %._crit_edge2754 ], [ %.013.i1240.ptr.le2434, %.thread2433 ]
  br label %.lr.ph.i1247

bb.jn:                                            ; preds = %.lr.ph.i1247
  %i.bdr = getelementptr inbounds i8, ptr %.017.i1248, i64 -1
  %i.bds = icmp ugt ptr %i.bdt, %i.ca
  br i1 %i.bds, label %.lr.ph.i1247, label %LZ4HC_reverseCountPattern.exit1251, !prof !24, !llvm.loop !42

.lr.ph.i1247:                                     ; preds = %.lr.ph.i1247.preheader, %bb.jn
  %.017.i1248 = phi ptr [ %i.bdr, %bb.jn ], [ %i.ag, %.lr.ph.i1247.preheader ] ; 2 uses
  %.116.i1249 = phi ptr [ %i.bdt, %bb.jn ], [ %.116.i1249.ph, %.lr.ph.i1247.preheader ] ; 2 uses
  %i.bdt = getelementptr inbounds i8, ptr %.116.i1249, i64 -1 ; 3 uses
  %i.bdu = load i8, ptr %i.bdt, align 1, !tbaa !27
  %i.bdv = load i8, ptr %.017.i1248, align 1, !tbaa !27
  %.not15.i1250 = icmp eq i8 %i.bdu, %i.bdv
  br i1 %.not15.i1250, label %bb.jn, label %LZ4HC_reverseCountPattern.exit1251

LZ4HC_reverseCountPattern.exit1251:               ; preds = %bb.jn, %.lr.ph.i1247, %._crit_edge2754
  %.1.lcssa.i1244 = phi ptr [ %.013.i1240.ptr.le, %._crit_edge2754 ], [ %i.ca, %bb.jn ], [ %.116.i1249, %.lr.ph.i1247 ]
  %i.bdw = ptrtoint ptr %.1.lcssa.i1244 to i64
  %i.bdx = sub i64 %i.eq, %i.bdw
  %i.bdy = trunc i64 %i.bdx to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bdz = add i32 %i.bdy, %i.bdj
  br label %bb.jo

bb.jo:                                            ; preds = %LZ4HC_reverseCountPattern.exit1251, %LZ4HC_reverseCountPattern.exit1237
  %.0390.i.i = phi i32 [ %i.bdj, %LZ4HC_reverseCountPattern.exit1237 ], [ %i.bdz, %LZ4HC_reverseCountPattern.exit1251 ]
  %i.bea = sub i32 %i.azv, %.0390.i.i
  %i.beb = tail call i32 @llvm.umax.i32(i32 %i.bea, i32 %i.arl) ; 7 uses
  %i.bec = sub i32 %i.azv, %i.beb
  %i.bed = zext i32 %i.bec to i64
  %i.bee = add nuw nsw i64 %.0393.i.i, %i.bed     ; 2 uses
  %.not438.i.i = icmp ult i64 %i.bee, %.1347.i.i
  %.not439.i.i = icmp ugt i64 %.0393.i.i, %.1347.i.i
  %or.cond456.i.i = or i1 %.not439.i.i, %.not438.i.i
  br i1 %or.cond456.i.i, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.bef = trunc i64 %.0393.i.i to i32
  %i.beg = trunc i64 %.1347.i.i to i32
  %i.beh = sub i32 %i.azv, %i.beg
  %i.bei = add i32 %i.beh, %i.bef                 ; 2 uses
  %i.bej = sub i32 %i.bei, %i.bq
  %i.bek = icmp ugt i32 %i.bej, -4
  %..i.i = select i1 %i.bek, i32 %i.bq, i32 %i.bei
  br label %.backedge

bb.jq:                                            ; preds = %bb.jo
  %i.bel = sub i32 %i.beb, %i.bq
  %i.bem = icmp ugt i32 %i.bel, -4
  br i1 %i.bem, label %bb.jv, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.ben = tail call i64 @llvm.umin.i64(i64 %i.bee, i64 %.1347.i.i) ; 2 uses
  %i.beo = sext i32 %.5.i.i to i64
  %i.bep = icmp ugt i64 %i.ben, %i.beo
  br i1 %i.bep, label %bb.js, label %bb.ju

bb.js:                                            ; preds = %bb.jr
  %i.beq = zext i32 %i.beb to i64
  %i.ber = sub i64 %i.atf, %i.beq
  %i.bes = icmp ugt i64 %i.ber, 65535
  br i1 %i.bes, label %.thread1570, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.bet = trunc i64 %i.ben to i32
  %i.beu = sub i32 %i.ari, %i.beb
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.jr
  %.6357.i.i = phi i32 [ %i.beu, %bb.jt ], [ %.5356.i.i, %bb.jr ] ; 2 uses
  %.6.i.i = phi i32 [ %i.bet, %bb.jt ], [ %.5.i.i, %bb.jr ] ; 2 uses
  %i.bev = and i32 %i.beb, 65535
  %i.bew = zext nneg i32 %i.bev to i64
  %i.bex = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.bew
  %i.bey = load i16, ptr %i.bex, align 2, !tbaa !29
  %i.bez = zext i16 %i.bey to i32                 ; 2 uses
  %i.bfa = icmp ult i32 %i.beb, %i.bez
  %i.bfb = sub nuw i32 %i.beb, %i.bez
  br i1 %i.bfa, label %.thread1570, label %bb.jv

.thread1528:                                      ; preds = %bb.iu, %._crit_edge1919.thread, %bb.iz, %bb.iy, %bb.ja
  %.3349.i.i.ph = phi i64 [ %.1347.i.i, %bb.ja ], [ %.1347.i.i, %bb.iy ], [ %.1347.i.i, %bb.iz ], [ %.0346.i.i2757, %._crit_edge1919.thread ], [ %.0346.i.i2757, %bb.iu ]
  %.3344.i.i.ph = phi i32 [ 2, %bb.ja ], [ %.1342.i.i, %bb.iy ], [ 2, %bb.iz ], [ %.0341.i.i2758, %._crit_edge1919.thread ], [ 1, %bb.iu ]
  %i.bfc = add i32 %.3320.i.i, %.0323.i.i2759
  %i.bfd = and i32 %i.bfc, 65535
  %i.bfe = zext nneg i32 %i.bfd to i64
  %i.bff = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.bfe
  %i.bfg = load i16, ptr %i.bff, align 2, !tbaa !29
  %i.bfh = zext i16 %i.bfg to i32
  %i.bfi = sub i32 %.0323.i.i2759, %i.bfh
  br label %.backedge

bb.jv:                                            ; preds = %bb.ju, %bb.jq, %._crit_edge1919
  %.8405.i.i = phi i1 [ false, %bb.ju ], [ %i.azn, %._crit_edge1919 ], [ false, %bb.jq ]
  %.17368.i.i = phi i32 [ %.6357.i.i, %bb.ju ], [ %.5356.i.i, %._crit_edge1919 ], [ %.5356.i.i, %bb.jq ] ; 2 uses
  %.4350.i.i = phi i64 [ %.1347.i.i, %bb.ju ], [ %.0346.i.i2757, %._crit_edge1919 ], [ %.1347.i.i, %bb.jq ]
  %.4345.i.i = phi i32 [ 2, %bb.ju ], [ %.0341.i.i2758, %._crit_edge1919 ], [ 2, %bb.jq ]
  %.15338.i.i = phi i32 [ %i.bfb, %bb.ju ], [ %spec.select459.i.i, %._crit_edge1919 ], [ %i.bq, %bb.jq ]
  %.4321.i.i = phi i32 [ 0, %bb.ju ], [ %.2319.i.i, %._crit_edge1919 ], [ 0, %bb.jq ]
  %.17.i.i = phi i32 [ %.6.i.i, %bb.ju ], [ %.3388.i.i, %._crit_edge1919 ], [ %.5.i.i, %bb.jq ] ; 2 uses
  br i1 %.8405.i.i, label %.thread1570, label %.backedge

.backedge:                                        ; preds = %bb.jv, %bb.jp, %.thread1528
  %.0351.i.i.be = phi i32 [ %.17368.i.i, %bb.jv ], [ %.5356.i.i, %.thread1528 ], [ %.5356.i.i, %bb.jp ] ; 2 uses
  %.0346.i.i.be = phi i64 [ %.4350.i.i, %bb.jv ], [ %.3349.i.i.ph, %.thread1528 ], [ %.1347.i.i, %bb.jp ]
  %.0341.i.i.be = phi i32 [ %.4345.i.i, %bb.jv ], [ %.3344.i.i.ph, %.thread1528 ], [ 2, %bb.jp ]
  %.0323.i.i.be = phi i32 [ %.15338.i.i, %bb.jv ], [ %i.bfi, %.thread1528 ], [ %..i.i, %bb.jp ] ; 2 uses
  %.0317.i.i.be = phi i32 [ %.4321.i.i, %bb.jv ], [ %.3320.i.i, %.thread1528 ], [ 0, %bb.jp ]
  %.0.i.i.be = phi i32 [ %.17.i.i, %bb.jv ], [ %.5.i.i, %.thread1528 ], [ %.5.i.i, %bb.jp ] ; 2 uses
  %i.bfj = icmp uge i32 %.0323.i.i.be, %i.arl
  %i.bfk = icmp sgt i32 %.0314.i.i2761, 1
  %i.bfl = select i1 %i.bfj, i1 %i.bfk, i1 false
  br i1 %i.bfl, label %.lr.ph2763, label %.thread1570

.thread1570:                                      ; preds = %.backedge, %bb.jv, %bb.js, %bb.ju, %LZ4HC_Insert.exit.i.i
  %.18369.i.i = phi i32 [ 0, %LZ4HC_Insert.exit.i.i ], [ %.0351.i.i.be, %.backedge ], [ %.6357.i.i, %bb.ju ], [ %.17368.i.i, %bb.jv ], [ %.5356.i.i, %bb.js ] ; 3 uses
  %.1315.i.i = phi i32 [ %5, %LZ4HC_Insert.exit.i.i ], [ %i.atv, %bb.ju ], [ %i.atv, %bb.js ], [ %i.atv, %bb.jv ], [ %i.atv, %.backedge ] ; 2 uses
  %.18.i.i = phi i32 [ %i.are, %LZ4HC_Insert.exit.i.i ], [ %.0.i.i.be, %.backedge ], [ %.6.i.i, %bb.ju ], [ %.17.i.i, %bb.jv ], [ %.5.i.i, %bb.js ] ; 3 uses
  %i.bfm = icmp sgt i32 %.1315.i.i, 0
  %or.cond13.i.i = select i1 %i.ac, i1 %i.bfm, i1 false
  %or.cond15.i.i = and i1 %i.arj, %or.cond13.i.i
  br i1 %or.cond15.i.i, label %bb.jw, label %LZ4HC_InsertAndGetWiderMatch.exit.i

bb.jw:                                            ; preds = %.thread1570
  %i.bfn = load ptr, ptr %i.zb, align 8, !tbaa !7
  %i.bfo = load ptr, ptr %i.zc, align 8, !tbaa !13 ; 2 uses
  %i.bfp = ptrtoint ptr %i.bfn to i64
  %i.bfq = ptrtoint ptr %i.bfo to i64
  %i.bfr = sub i64 %i.bfp, %i.bfq
  %i.bfs = load i32, ptr %i.zd, align 8, !tbaa !14
  %i.bft = zext i32 %i.bfs to i64                 ; 2 uses
  %i.bfu = add i64 %i.bfr, %i.bft                 ; 2 uses
  %.val960 = load i32, ptr %i.zo, align 1, !tbaa !15
  %i.bfv = mul i32 %.val960, -1640531535
  %i.bfw = lshr i32 %i.bfv, 17
  %i.bfx = zext nneg i32 %i.bfw to i64
  %i.bfy = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bfx
  %i.bfz = load i32, ptr %i.bfy, align 4, !tbaa !3 ; 2 uses
  %i.bga = add i32 %i.bfz, %i.arl
  %i.bgb = trunc i64 %i.bfu to i32
  %i.bgc = sub i32 %i.bga, %i.bgb                 ; 2 uses
  %i.bgd = sub i32 %i.ari, %i.bgc                 ; 2 uses
  %i.bge = icmp ult i32 %i.bgd, 65536
  br i1 %i.bge, label %.lr.ph1937, label %LZ4HC_InsertAndGetWiderMatch.exit.i

.lr.ph1937:                                       ; preds = %bb.jw
  %i.bgf = sub nsw i64 0, %i.bft
  %i.bgg = getelementptr inbounds i8, ptr %i.bfo, i64 %i.bgf
  br label %bb.jx

bb.jx:                                            ; preds = %bb.kl, %.lr.ph1937
  %.in2831 = phi i32 [ %.1315.i.i, %.lr.ph1937 ], [ %i.bgi, %bb.kl ]
  %.19370.i.i19312782 = phi i32 [ %.18369.i.i, %.lr.ph1937 ], [ %.21372.i.i, %bb.kl ] ; 2 uses
  %.0340.i.i19322781 = phi i32 [ %i.bfz, %.lr.ph1937 ], [ %i.bij, %bb.kl ] ; 3 uses
  %.16339.i.i19332780 = phi i32 [ %i.bgc, %.lr.ph1937 ], [ %i.big, %bb.kl ]
  %.19.i.i19352779 = phi i32 [ %.18.i.i, %.lr.ph1937 ], [ %.21.i.i, %bb.kl ] ; 3 uses
  %i.bgh = phi i32 [ %i.bgd, %.lr.ph1937 ], [ %i.bih, %bb.kl ]
  %i.bgi = add nsw i32 %.in2831, -1               ; 2 uses
  %i.bgj = zext i32 %.0340.i.i19322781 to i64     ; 2 uses
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgg, i64 %i.bgj ; 3 uses
  %.val951 = load i32, ptr %i.bgk, align 1, !tbaa !15
  %i.bgl = icmp eq i32 %.val951, %.val952
  br i1 %i.bgl, label %bb.jy, label %bb.kl

bb.jy:                                            ; preds = %bb.jx
  %i.bgm = sub i64 %i.bfu, %i.bgj
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.zo, i64 %i.bgm ; 2 uses
  %i.bgo = icmp ugt ptr %i.bgn, %i.l
  %spec.select457.i.i = select i1 %i.bgo, ptr %i.l, ptr %i.bgn ; 4 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgk, i64 4 ; 2 uses
end_hunk_8
