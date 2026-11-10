Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_RLEaccel?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@SDL_RLEAlphaBlit:bb.a
  %i.mi = getelementptr inbounds nuw i8, ptr %.18.i, i64 4 ; 3 uses
  %.not387.i = icmp eq i16 %i.mg, 0
  br i1 %.not387.i, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %.preheader.i
  %i.mj = sub nsw i32 %i.bv, %i.me                ; 2 uses
  %i.mk = icmp sgt i32 %i.mj, 0
  %spec.select412.i = select i1 %i.mk, i32 %i.bv, i32 %i.me ; 3 uses
  %i.ml = tail call i32 @llvm.smax.i32(i32 %i.mj, i32 0)
  %spec.select413.i = sub nsw i32 %i.mh, %i.ml
  %i.mm = sub nsw i32 %i.kz, %spec.select412.i
  %.1311.i = tail call i32 @llvm.smin.i32(i32 %spec.select413.i, i32 %i.mm) ; 3 uses
  %i.mn = icmp sgt i32 %.1311.i, 0
  br i1 %i.mn, label %bb.bf, label %.loopexit449.i

bb.bf:                                            ; preds = %bb.be
  %i.mo = sext i32 %spec.select412.i to i64       ; 2 uses
  %i.mp = getelementptr inbounds [4 x i8], ptr %.4306.i, i64 %i.mo ; 3 uses
  %i.mq = sub nsw i32 %spec.select412.i, %i.me
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.mr ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.1311.i to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %.1311.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.bf
  %i.mt = add nsw i64 %i.mo, %wide.trip.count.i
  %i.mu = shl nsw i64 %i.mt, 2                    ; 2 uses
  %i.mv = getelementptr i8, ptr %.4306.i, i64 %i.mu
  %i.mw = sext i32 %i.me to i64
  %i.mx = shl nsw i64 %i.mw, 2
  %i.my = add nsw i64 %i.mu, 4
  %i.mz = sub nsw i64 %i.my, %i.mx
  %i.na = getelementptr i8, ptr %.18.i, i64 %i.mz
  %bound0 = icmp ult ptr %i.mp, %i.na
  %bound1 = icmp ult ptr %i.ms, %i.mv
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %index
  %wide.load = load <4 x i32>, ptr %i.nb, align 4, !alias.scope !206 ; 3 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %index ; 2 uses
  %wide.load535 = load <4 x i32>, ptr %i.nc, align 4, !alias.scope !207, !noalias !206 ; 2 uses
  %i.nd = lshr <4 x i32> %wide.load, splat (i32 24) ; 2 uses
  %i.ne = and <4 x i32> %wide.load, splat (i32 16711935)
  %i.nf = and <4 x i32> %wide.load535, splat (i32 16711935) ; 2 uses
  %i.ng = sub nsw <4 x i32> %i.ne, %i.nf
  %i.nh = mul <4 x i32> %i.ng, %i.nd
  %i.ni = lshr <4 x i32> %i.nh, splat (i32 8)
  %i.nj = add nuw nsw <4 x i32> %i.ni, %i.nf
  %i.nk = and <4 x i32> %i.nj, splat (i32 16711935)
  %i.nl = and <4 x i32> %wide.load, splat (i32 65280)
  %i.nm = and <4 x i32> %wide.load535, splat (i32 65280) ; 2 uses
  %i.nn = sub nsw <4 x i32> %i.nl, %i.nm
  %i.no = mul nsw <4 x i32> %i.nn, %i.nd
  %i.np = lshr exact <4 x i32> %i.no, splat (i32 8)
  %i.nq = add nuw nsw <4 x i32> %i.np, %i.nm
  %i.nr = and <4 x i32> %i.nq, splat (i32 65280)
  %i.ns = or disjoint <4 x i32> %i.nk, %i.nr
  %i.nt = or disjoint <4 x i32> %i.ns, splat (i32 -16777216)
  store <4 x i32> %i.nt, ptr %i.nc, align 4, !alias.scope !207, !noalias !206
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nu = icmp eq i64 %index.next, %n.vec
  br i1 %i.nu, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit449.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.bf, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.bf ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %indvars.iv.i
  %i.nw = load i32, ptr %i.nv, align 4            ; 3 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.i ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4            ; 2 uses
  %i.nz = lshr i32 %i.nw, 24                      ; 2 uses
  %i.oa = and i32 %i.nw, 16711935
  %i.ob = and i32 %i.ny, 16711935                 ; 2 uses
  %i.oc = sub nsw i32 %i.oa, %i.ob
  %i.od = mul i32 %i.oc, %i.nz
  %i.oe = lshr i32 %i.od, 8
  %i.of = add nuw nsw i32 %i.oe, %i.ob
  %i.og = and i32 %i.of, 16711935
  %i.oh = and i32 %i.nw, 65280
  %i.oi = and i32 %i.ny, 65280                    ; 2 uses
  %i.oj = sub nsw i32 %i.oh, %i.oi
  %i.ok = mul nsw i32 %i.oj, %i.nz
  %i.ol = lshr exact i32 %i.ok, 8
  %i.om = add nuw nsw i32 %i.ol, %i.oi
  %i.on = and i32 %i.om, 65280
  %i.oo = or disjoint i32 %i.og, %i.on
  %i.op = or disjoint i32 %i.oo, -16777216
  store i32 %i.op, ptr %i.nx, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit449.i, label %scalar.ph, !llvm.loop !175

.loopexit449.i:                                   ; preds = %scalar.ph, %middle.block, %bb.be
  %i.oq = shl nuw nsw i32 %i.mh, 2
  %i.or = zext nneg i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.or
  %i.ot = add i32 %i.me, %i.mh
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit449.i, %.preheader.i
  %.4320.i = phi i32 [ %i.ot, %.loopexit449.i ], [ %i.me, %.preheader.i ] ; 2 uses
  %.19.i = phi ptr [ %i.os, %.loopexit449.i ], [ %i.mi, %.preheader.i ] ; 2 uses
  %i.ou = icmp slt i32 %.4320.i, %i.b
  br i1 %i.ou, label %.preheader.i, label %bb.bh, !llvm.loop !176

bb.bh:                                            ; preds = %bb.bg
  %i.ov = load i32, ptr %i.m, align 8
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds i8, ptr %.4306.i, i64 %i.ow
  %i.oy = add nsw i32 %.0321.i, -1                ; 2 uses
  %.not388.i = icmp eq i32 %i.oy, 0
  br i1 %.not388.i, label %RLEAlphaClipBlit.exit, label %bb.ay, !llvm.loop !177

bb.bi:                                            ; preds = %bb.s
  switch i8 %i.s, label %RLEAlphaClipBlit.exit [
    i8 2, label %bb.bj
    i8 4, label %bb.ci
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.oz = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.pa = load i32, ptr %i.oz, align 4
  %i.pb = icmp eq i32 %i.pa, 2016
  br i1 %i.pb, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.pc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.pd = load i32, ptr %i.pc, align 4
  %i.pe = icmp eq i32 %i.pd, 2016
  br i1 %i.pe, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pf = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.pg = load i32, ptr %i.pf, align 4
  %i.ph = icmp eq i32 %i.pg, 2016
  br i1 %i.ph, label %bb.bm, label %bb.bx

bb.bm:                                            ; preds = %bb.bj, %bb.bk, %bb.bl
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.pj = load i32, ptr %i.pi, align 4
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bw, %bb.bm
  %.0294 = phi i32 [ %i.pj, %bb.bm ], [ %i.sq, %bb.bw ]
  %.0250 = phi ptr [ %i.w, %bb.bm ], [ %i.sp, %bb.bw ] ; 4 uses
  %.13 = phi ptr [ %.12372, %bb.bm ], [ %.19, %bb.bw ]
  br label %bb.bo

bb.bo:                                            ; preds = %bb.br, %bb.bn
  %.0295 = phi i32 [ 0, %bb.bn ], [ %.2297.ph, %bb.br ]
  %.14 = phi ptr [ %.13, %bb.bn ], [ %.16.ph, %bb.br ] ; 3 uses
  %i.pk = load i8, ptr %.14, align 1
  %i.pl = zext i8 %i.pk to i32
  %i.pm = add nsw i32 %.0295, %i.pl               ; 4 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.14, i64 1
  %i.po = load i8, ptr %i.pn, align 1             ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.14, i64 2 ; 3 uses
  %.not345 = icmp eq i8 %i.po, 0
  br i1 %.not345, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pq = zext i8 %i.po to i32
  %i.pr = sext i32 %i.pm to i64
  %i.ps = shl nsw i64 %i.pr, 1
  %i.pt = getelementptr inbounds nuw i8, ptr %.0250, i64 %i.ps
  %i.pu = zext i8 %i.po to i64
  %i.pv = shl nuw nsw i64 %i.pu, 1                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pt, ptr nonnull align 1 %i.pp, i64 %i.pv, i1 false)
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.pv
  %i.px = add i32 %i.pm, %i.pq
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %.not346 = icmp eq i32 %i.pm, 0
  br i1 %.not346, label %RLEAlphaClipBlit.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.2297.ph = phi i32 [ %i.px, %bb.bp ], [ %i.pm, %bb.bq ] ; 2 uses
  %.16.ph = phi ptr [ %i.pw, %bb.bp ], [ %i.pp, %bb.bq ] ; 3 uses
  %i.py = icmp slt i32 %.2297.ph, %i.b
  br i1 %i.py, label %bb.bo, label %bb.bs, !llvm.loop !178

bb.bs:                                            ; preds = %bb.br
  %i.pz = ptrtoint ptr %.16.ph to i64
  %i.qa = and i64 %i.pz, 2
  %i.qb = getelementptr inbounds nuw i8, ptr %.16.ph, i64 %i.qa
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %bb.bs
  %.3298 = phi i32 [ 0, %bb.bs ], [ %.4299, %bb.bv ]
  %.17 = phi ptr [ %i.qb, %bb.bs ], [ %.19, %bb.bv ] ; 4 uses
  %i.qc = load i16, ptr %.17, align 2
  %i.qd = zext i16 %i.qc to i32
  %i.qe = add i32 %.3298, %i.qd                   ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.17, i64 2
  %i.qg = load i16, ptr %i.qf, align 2            ; 4 uses
  %i.qh = zext i16 %i.qg to i32                   ; 3 uses
  %i.qi = getelementptr i8, ptr %.17, i64 4       ; 6 uses
  %.not347 = icmp eq i16 %i.qg, 0
  br i1 %.not347, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qj = sext i32 %i.qe to i64                   ; 2 uses
  %i.qk = getelementptr [2 x i8], ptr %.0250, i64 %i.qj ; 5 uses
  %i.ql = zext i16 %i.qg to i64                   ; 2 uses
  %min.iters.check641 = icmp ult i16 %i.qg, 4
  br i1 %min.iters.check641, label %scalar.ph640.preheader, label %vector.memcheck642

vector.memcheck642:                               ; preds = %bb.bu
  %i.qm = add nsw i32 %i.qh, -1
  %i.qn = zext i32 %i.qm to i64                   ; 2 uses
  %i.qo = add nsw i64 %i.qj, %i.qn
  %i.qp = shl nsw i64 %i.qo, 1
  %4 = getelementptr i8, ptr %.0250, i64 %i.qp
  %i.qq = getelementptr i8, ptr %4, i64 2
  %i.qr = shl nuw nsw i64 %i.qn, 2
  %i.qs = getelementptr i8, ptr %.17, i64 %i.qr
  %i.qt = getelementptr i8, ptr %i.qs, i64 8
  %bound0643 = icmp ult ptr %i.qk, %i.qt
  %bound1644 = icmp ult ptr %i.qi, %i.qq
  %found.conflict645 = and i1 %bound0643, %bound1644
  br i1 %found.conflict645, label %scalar.ph640.preheader, label %vector.ph646

vector.ph646:                                     ; preds = %vector.memcheck642
  %n.vec647 = and i64 %i.ql, 65532                ; 5 uses
  %i.qu = shl nuw nsw i64 %n.vec647, 2
  %i.qv = getelementptr i8, ptr %i.qi, i64 %i.qu  ; 2 uses
  %i.qw = trunc nuw nsw i64 %n.vec647 to i32
  %i.qx = shl nuw nsw i64 %n.vec647, 1
  %i.qy = getelementptr i8, ptr %i.qk, i64 %i.qx
  br label %vector.body648

vector.body648:                                   ; preds = %vector.body648, %vector.ph646
  %index649 = phi i64 [ 0, %vector.ph646 ], [ %index.next654, %vector.body648 ] ; 3 uses
  %i.qz = shl i64 %index649, 2
  %next.gep650 = getelementptr i8, ptr %i.qi, i64 %i.qz
  %i.ra = shl i64 %index649, 1
  %next.gep651 = getelementptr i8, ptr %i.qk, i64 %i.ra ; 2 uses
  %wide.load652 = load <4 x i32>, ptr %next.gep650, align 4, !alias.scope !208 ; 2 uses
  %wide.load653 = load <4 x i16>, ptr %next.gep651, align 2, !alias.scope !209, !noalias !208
  %i.rb = zext <4 x i16> %wide.load653 to <4 x i32> ; 2 uses
  %i.rc = lshr <4 x i32> %wide.load652, splat (i32 5)
  %i.rd = and <4 x i32> %i.rc, splat (i32 31)
  %i.re = and <4 x i32> %wide.load652, splat (i32 132184095)
  %i.rf = shl nuw <4 x i32> %i.rb, splat (i32 16)
  %i.rg = or disjoint <4 x i32> %i.rf, %i.rb
  %i.rh = and <4 x i32> %i.rg, splat (i32 132184095) ; 2 uses
  %i.ri = sub nsw <4 x i32> %i.re, %i.rh
  %i.rj = mul <4 x i32> %i.ri, %i.rd
  %i.rk = lshr <4 x i32> %i.rj, splat (i32 5)
  %i.rl = add nuw nsw <4 x i32> %i.rk, %i.rh
  %i.rm = and <4 x i32> %i.rl, splat (i32 132184095) ; 2 uses
  %i.rn = lshr <4 x i32> %i.rm, splat (i32 16)
  %i.ro = or disjoint <4 x i32> %i.rn, %i.rm
  %i.rp = trunc <4 x i32> %i.ro to <4 x i16>
  store <4 x i16> %i.rp, ptr %next.gep651, align 2, !alias.scope !209, !noalias !208
  %index.next654 = add nuw i64 %index649, 4       ; 2 uses
  %i.rq = icmp eq i64 %index.next654, %n.vec647
  br i1 %i.rq, label %middle.block655, label %vector.body648, !llvm.loop !182

middle.block655:                                  ; preds = %vector.body648
  %cmp.n656 = icmp eq i64 %n.vec647, %i.ql
  br i1 %cmp.n656, label %.loopexit, label %scalar.ph640.preheader

scalar.ph640.preheader:                           ; preds = %vector.memcheck642, %bb.bu, %middle.block655
  %.18446.ph = phi ptr [ %i.qi, %vector.memcheck642 ], [ %i.qi, %bb.bu ], [ %i.qv, %middle.block655 ]
  %.0300445.ph = phi i32 [ 0, %vector.memcheck642 ], [ 0, %bb.bu ], [ %i.qw, %middle.block655 ]
  %.0301444.ph = phi ptr [ %i.qk, %vector.memcheck642 ], [ %i.qk, %bb.bu ], [ %i.qy, %middle.block655 ]
  br label %scalar.ph640

scalar.ph640:                                     ; preds = %scalar.ph640.preheader, %scalar.ph640
  %.18446 = phi ptr [ %i.si, %scalar.ph640 ], [ %.18446.ph, %scalar.ph640.preheader ] ; 2 uses
  %.0300445 = phi i32 [ %i.sk, %scalar.ph640 ], [ %.0300445.ph, %scalar.ph640.preheader ]
  %.0301444 = phi ptr [ %i.sj, %scalar.ph640 ], [ %.0301444.ph, %scalar.ph640.preheader ] ; 3 uses
  %i.rr = load i32, ptr %.18446, align 4          ; 2 uses
  %i.rs = load i16, ptr %.0301444, align 2
  %i.rt = zext i16 %i.rs to i32                   ; 2 uses
  %i.ru = lshr i32 %i.rr, 5
  %i.rv = and i32 %i.ru, 31
  %i.rw = and i32 %i.rr, 132184095
  %i.rx = shl nuw i32 %i.rt, 16
  %i.ry = or disjoint i32 %i.rx, %i.rt
  %i.rz = and i32 %i.ry, 132184095                ; 2 uses
  %i.sa = sub nsw i32 %i.rw, %i.rz
  %i.sb = mul i32 %i.sa, %i.rv
  %i.sc = lshr i32 %i.sb, 5
  %i.sd = add nuw nsw i32 %i.sc, %i.rz
  %i.se = and i32 %i.sd, 132184095                ; 2 uses
  %i.sf = lshr i32 %i.se, 16
  %i.sg = or disjoint i32 %i.sf, %i.se
  %i.sh = trunc i32 %i.sg to i16
  store i16 %i.sh, ptr %.0301444, align 2
  %i.si = getelementptr inbounds nuw i8, ptr %.18446, i64 4 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.0301444, i64 2
  %i.sk = add nuw nsw i32 %.0300445, 1            ; 2 uses
  %exitcond465.not = icmp eq i32 %i.sk, %i.qh
  br i1 %exitcond465.not, label %.loopexit, label %scalar.ph640, !llvm.loop !183

.loopexit:                                        ; preds = %scalar.ph640, %middle.block655
  %.lcssa = phi ptr [ %i.qv, %middle.block655 ], [ %i.si, %scalar.ph640 ]
  %i.sl = add i32 %i.qe, %i.qh
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit, %bb.bt
  %.4299 = phi i32 [ %i.sl, %.loopexit ], [ %i.qe, %bb.bt ] ; 2 uses
  %.19 = phi ptr [ %.lcssa, %.loopexit ], [ %i.qi, %bb.bt ] ; 2 uses
  %i.sm = icmp slt i32 %.4299, %i.b
  br i1 %i.sm, label %bb.bt, label %bb.bw, !llvm.loop !184

bb.bw:                                            ; preds = %bb.bv
  %i.sn = load i32, ptr %i.m, align 8
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr inbounds i8, ptr %.0250, i64 %i.so
  %i.sq = add nsw i32 %.0294, -1                  ; 2 uses
  %.not348 = icmp eq i32 %i.sq, 0
  br i1 %.not348, label %RLEAlphaClipBlit.exit, label %bb.bn, !llvm.loop !185

bb.bx:                                            ; preds = %bb.bl
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ss = load i32, ptr %i.sr, align 4
  br label %bb.by

bb.by:                                            ; preds = %bb.ch, %bb.bx
  %.0293 = phi i32 [ %i.ss, %bb.bx ], [ %i.vz, %bb.ch ]
  %.2252 = phi ptr [ %i.w, %bb.bx ], [ %i.vy, %bb.ch ] ; 4 uses
  %.21 = phi ptr [ %.12372, %bb.bx ], [ %.27, %bb.ch ]
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cc, %bb.by
  %.0288 = phi i32 [ 0, %bb.by ], [ %.2290.ph, %bb.cc ]
  %.22 = phi ptr [ %.21, %bb.by ], [ %.24.ph, %bb.cc ] ; 3 uses
  %i.st = load i8, ptr %.22, align 1
  %i.su = zext i8 %i.st to i32
  %i.sv = add nsw i32 %.0288, %i.su               ; 4 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.22, i64 1
  %i.sx = load i8, ptr %i.sw, align 1             ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.22, i64 2 ; 3 uses
  %.not341 = icmp eq i8 %i.sx, 0
  br i1 %.not341, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.sz = zext i8 %i.sx to i32
  %i.ta = sext i32 %i.sv to i64
  %i.tb = shl nsw i64 %i.ta, 1
  %i.tc = getelementptr inbounds nuw i8, ptr %.2252, i64 %i.tb
  %i.td = zext i8 %i.sx to i64
  %i.te = shl nuw nsw i64 %i.td, 1                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tc, ptr nonnull align 1 %i.sy, i64 %i.te, i1 false)
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.te
  %i.tg = add i32 %i.sv, %i.sz
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %.not342 = icmp eq i32 %i.sv, 0
  br i1 %.not342, label %RLEAlphaClipBlit.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.2290.ph = phi i32 [ %i.tg, %bb.ca ], [ %i.sv, %bb.cb ] ; 2 uses
  %.24.ph = phi ptr [ %i.tf, %bb.ca ], [ %i.sy, %bb.cb ] ; 3 uses
  %i.th = icmp slt i32 %.2290.ph, %i.b
  br i1 %i.th, label %bb.bz, label %bb.cd, !llvm.loop !186

bb.cd:                                            ; preds = %bb.cc
  %i.ti = ptrtoint ptr %.24.ph to i64
  %i.tj = and i64 %i.ti, 2
  %i.tk = getelementptr inbounds nuw i8, ptr %.24.ph, i64 %i.tj
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cg, %bb.cd
  %.3291 = phi i32 [ 0, %bb.cd ], [ %.4292, %bb.cg ]
  %.25 = phi ptr [ %i.tk, %bb.cd ], [ %.27, %bb.cg ] ; 4 uses
  %i.tl = load i16, ptr %.25, align 2
  %i.tm = zext i16 %i.tl to i32
  %i.tn = add i32 %.3291, %i.tm                   ; 3 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.25, i64 2
  %i.tp = load i16, ptr %i.to, align 2            ; 4 uses
  %i.tq = zext i16 %i.tp to i32                   ; 3 uses
  %i.tr = getelementptr i8, ptr %.25, i64 4       ; 6 uses
  %.not343 = icmp eq i16 %i.tp, 0
  br i1 %.not343, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ts = sext i32 %i.tn to i64                   ; 2 uses
  %i.tt = getelementptr [2 x i8], ptr %.2252, i64 %i.ts ; 5 uses
  %i.tu = zext i16 %i.tp to i64                   ; 2 uses
  %min.iters.check614 = icmp ult i16 %i.tp, 4
  br i1 %min.iters.check614, label %scalar.ph613.preheader, label %vector.memcheck615

vector.memcheck615:                               ; preds = %bb.cf
  %i.tv = add nsw i32 %i.tq, -1
  %i.tw = zext i32 %i.tv to i64                   ; 2 uses
  %i.tx = add nsw i64 %i.ts, %i.tw
  %i.ty = shl nsw i64 %i.tx, 1
  %5 = getelementptr i8, ptr %.2252, i64 %i.ty
  %i.tz = getelementptr i8, ptr %5, i64 2
  %i.ua = shl nuw nsw i64 %i.tw, 2
  %i.ub = getelementptr i8, ptr %.25, i64 %i.ua
  %i.uc = getelementptr i8, ptr %i.ub, i64 8
  %bound0616 = icmp ult ptr %i.tt, %i.uc
  %bound1617 = icmp ult ptr %i.tr, %i.tz
  %found.conflict618 = and i1 %bound0616, %bound1617
  br i1 %found.conflict618, label %scalar.ph613.preheader, label %vector.ph619

vector.ph619:                                     ; preds = %vector.memcheck615
  %n.vec620 = and i64 %i.tu, 65532                ; 5 uses
  %i.ud = shl nuw nsw i64 %n.vec620, 2
  %i.ue = getelementptr i8, ptr %i.tr, i64 %i.ud  ; 2 uses
  %i.uf = trunc nuw nsw i64 %n.vec620 to i32
  %i.ug = shl nuw nsw i64 %n.vec620, 1
  %i.uh = getelementptr i8, ptr %i.tt, i64 %i.ug
  br label %vector.body621

vector.body621:                                   ; preds = %vector.body621, %vector.ph619
  %index622 = phi i64 [ 0, %vector.ph619 ], [ %index.next627, %vector.body621 ] ; 3 uses
  %i.ui = shl i64 %index622, 2
  %next.gep623 = getelementptr i8, ptr %i.tr, i64 %i.ui
  %i.uj = shl i64 %index622, 1
  %next.gep624 = getelementptr i8, ptr %i.tt, i64 %i.uj ; 2 uses
  %wide.load625 = load <4 x i32>, ptr %next.gep623, align 4, !alias.scope !210 ; 2 uses
  %wide.load626 = load <4 x i16>, ptr %next.gep624, align 2, !alias.scope !211, !noalias !210
  %i.uk = zext <4 x i16> %wide.load626 to <4 x i32> ; 2 uses
  %i.ul = lshr <4 x i32> %wide.load625, splat (i32 5)
  %i.um = and <4 x i32> %i.ul, splat (i32 31)
  %i.un = and <4 x i32> %wide.load625, splat (i32 65043487)
  %i.uo = shl nuw <4 x i32> %i.uk, splat (i32 16)
  %i.up = or disjoint <4 x i32> %i.uo, %i.uk
  %i.uq = and <4 x i32> %i.up, splat (i32 65043487) ; 2 uses
  %i.ur = sub nsw <4 x i32> %i.un, %i.uq
  %i.us = mul nsw <4 x i32> %i.ur, %i.um
  %i.ut = lshr <4 x i32> %i.us, splat (i32 5)
  %i.uu = add nuw nsw <4 x i32> %i.ut, %i.uq
  %i.uv = and <4 x i32> %i.uu, splat (i32 65043487) ; 2 uses
  %i.uw = lshr <4 x i32> %i.uv, splat (i32 16)
  %i.ux = or disjoint <4 x i32> %i.uw, %i.uv
  %i.uy = trunc <4 x i32> %i.ux to <4 x i16>
  store <4 x i16> %i.uy, ptr %next.gep624, align 2, !alias.scope !211, !noalias !210
  %index.next627 = add nuw i64 %index622, 4       ; 2 uses
  %i.uz = icmp eq i64 %index.next627, %n.vec620
  br i1 %i.uz, label %middle.block628, label %vector.body621, !llvm.loop !190

middle.block628:                                  ; preds = %vector.body621
  %cmp.n629 = icmp eq i64 %n.vec620, %i.tu
  br i1 %cmp.n629, label %.loopexit660, label %scalar.ph613.preheader

scalar.ph613.preheader:                           ; preds = %vector.memcheck615, %bb.cf, %middle.block628
  %.26443.ph = phi ptr [ %i.tr, %vector.memcheck615 ], [ %i.tr, %bb.cf ], [ %i.ue, %middle.block628 ]
  %.0286442.ph = phi i32 [ 0, %vector.memcheck615 ], [ 0, %bb.cf ], [ %i.uf, %middle.block628 ]
  %.0287441.ph = phi ptr [ %i.tt, %vector.memcheck615 ], [ %i.tt, %bb.cf ], [ %i.uh, %middle.block628 ]
  br label %scalar.ph613

scalar.ph613:                                     ; preds = %scalar.ph613.preheader, %scalar.ph613
  %.26443 = phi ptr [ %i.vr, %scalar.ph613 ], [ %.26443.ph, %scalar.ph613.preheader ] ; 2 uses
  %.0286442 = phi i32 [ %i.vt, %scalar.ph613 ], [ %.0286442.ph, %scalar.ph613.preheader ]
  %.0287441 = phi ptr [ %i.vs, %scalar.ph613 ], [ %.0287441.ph, %scalar.ph613.preheader ] ; 3 uses
  %i.va = load i32, ptr %.26443, align 4          ; 2 uses
  %i.vb = load i16, ptr %.0287441, align 2
  %i.vc = zext i16 %i.vb to i32                   ; 2 uses
  %i.vd = lshr i32 %i.va, 5
  %i.ve = and i32 %i.vd, 31
  %i.vf = and i32 %i.va, 65043487
  %i.vg = shl nuw i32 %i.vc, 16
  %i.vh = or disjoint i32 %i.vg, %i.vc
  %i.vi = and i32 %i.vh, 65043487                 ; 2 uses
  %i.vj = sub nsw i32 %i.vf, %i.vi
  %i.vk = mul nsw i32 %i.vj, %i.ve
  %i.vl = lshr i32 %i.vk, 5
  %i.vm = add nuw nsw i32 %i.vl, %i.vi
  %i.vn = and i32 %i.vm, 65043487                 ; 2 uses
  %i.vo = lshr i32 %i.vn, 16
  %i.vp = or disjoint i32 %i.vo, %i.vn
  %i.vq = trunc i32 %i.vp to i16
  store i16 %i.vq, ptr %.0287441, align 2
  %i.vr = getelementptr inbounds nuw i8, ptr %.26443, i64 4 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.0287441, i64 2
  %i.vt = add nuw nsw i32 %.0286442, 1            ; 2 uses
  %exitcond464.not = icmp eq i32 %i.vt, %i.tq
  br i1 %exitcond464.not, label %.loopexit660, label %scalar.ph613, !llvm.loop !191

.loopexit660:                                     ; preds = %scalar.ph613, %middle.block628
  %.lcssa530 = phi ptr [ %i.ue, %middle.block628 ], [ %i.vr, %scalar.ph613 ]
  %i.vu = add i32 %i.tn, %i.tq
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit660, %bb.ce
  %.4292 = phi i32 [ %i.vu, %.loopexit660 ], [ %i.tn, %bb.ce ] ; 2 uses
  %.27 = phi ptr [ %.lcssa530, %.loopexit660 ], [ %i.tr, %bb.ce ] ; 2 uses
  %i.vv = icmp slt i32 %.4292, %i.b
  br i1 %i.vv, label %bb.ce, label %bb.ch, !llvm.loop !192

bb.ch:                                            ; preds = %bb.cg
  %i.vw = load i32, ptr %i.m, align 8
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr inbounds i8, ptr %.2252, i64 %i.vx
  %i.vz = add nsw i32 %.0293, -1                  ; 2 uses
  %.not344 = icmp eq i32 %i.vz, 0
  br i1 %.not344, label %RLEAlphaClipBlit.exit, label %bb.by, !llvm.loop !193

bb.ci:                                            ; preds = %bb.bi
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.wb = load i32, ptr %i.wa, align 4
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cq, %bb.ci
  %.0263 = phi i32 [ %i.wb, %bb.ci ], [ %i.zh, %bb.cq ]
  %.4254 = phi ptr [ %i.w, %bb.ci ], [ %i.zg, %bb.cq ] ; 4 uses
  %.29 = phi ptr [ %.12372, %bb.ci ], [ %.35, %bb.cq ]
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cn, %bb.cj
  %.0258 = phi i32 [ 0, %bb.cj ], [ %.2260.ph, %bb.cn ]
  %.30 = phi ptr [ %.29, %bb.cj ], [ %.32.ph, %bb.cn ] ; 3 uses
  %i.wc = load i16, ptr %.30, align 2
  %i.wd = zext i16 %i.wc to i32
  %i.we = add nsw i32 %.0258, %i.wd               ; 4 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.30, i64 2
  %i.wg = load i16, ptr %i.wf, align 2            ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.30, i64 4 ; 3 uses
  %.not337 = icmp eq i16 %i.wg, 0
  br i1 %.not337, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.wi = zext i16 %i.wg to i32
  %i.wj = sext i32 %i.we to i64
  %i.wk = shl nsw i64 %i.wj, 2
  %i.wl = getelementptr inbounds nuw i8, ptr %.4254, i64 %i.wk
  %i.wm = zext i16 %i.wg to i64
  %i.wn = shl nuw nsw i64 %i.wm, 2                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wl, ptr nonnull align 2 %i.wh, i64 %i.wn, i1 false)
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.wn
  %i.wp = add i32 %i.we, %i.wi
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %.not338 = icmp eq i32 %i.we, 0
  br i1 %.not338, label %RLEAlphaClipBlit.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.2260.ph = phi i32 [ %i.wp, %bb.cl ], [ %i.we, %bb.cm ] ; 2 uses
  %.32.ph = phi ptr [ %i.wo, %bb.cl ], [ %i.wh, %bb.cm ] ; 2 uses
  %i.wq = icmp slt i32 %.2260.ph, %i.b
  br i1 %i.wq, label %bb.ck, label %.preheader, !llvm.loop !194

.preheader:                                       ; preds = %bb.cn, %bb.cp
  %.3261 = phi i32 [ %.4262, %bb.cp ], [ 0, %bb.cn ]
  %.33 = phi ptr [ %.35, %bb.cp ], [ %.32.ph, %bb.cn ] ; 4 uses
  %i.wr = load i16, ptr %.33, align 2
  %i.ws = zext i16 %i.wr to i32
  %i.wt = add i32 %.3261, %i.ws                   ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.33, i64 2
  %i.wv = load i16, ptr %i.wu, align 2            ; 4 uses
  %i.ww = zext i16 %i.wv to i32                   ; 3 uses
  %i.wx = getelementptr i8, ptr %.33, i64 4       ; 6 uses
  %.not339 = icmp eq i16 %i.wv, 0
  br i1 %.not339, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.preheader
  %i.wy = sext i32 %i.wt to i64                   ; 2 uses
  %i.wz = getelementptr [4 x i8], ptr %.4254, i64 %i.wy ; 5 uses
  %i.xa = zext i16 %i.wv to i64                   ; 2 uses
  %min.iters.check588 = icmp ult i16 %i.wv, 4
  br i1 %min.iters.check588, label %scalar.ph587.preheader, label %vector.memcheck589

vector.memcheck589:                               ; preds = %bb.co
  %i.xb = add nsw i32 %i.ww, -1
  %i.xc = zext i32 %i.xb to i64                   ; 2 uses
  %i.xd = shl nuw nsw i64 %i.xc, 2
  %i.xe = add nsw i64 %i.wy, %i.xc
  %i.xf = shl nsw i64 %i.xe, 2
  %6 = getelementptr i8, ptr %.4254, i64 %i.xf
  %i.xg = getelementptr i8, ptr %6, i64 4
  %i.xh = getelementptr i8, ptr %.33, i64 %i.xd
  %i.xi = getelementptr i8, ptr %i.xh, i64 8
  %bound0590 = icmp ult ptr %i.wz, %i.xi
  %bound1591 = icmp ult ptr %i.wx, %i.xg
  %found.conflict592 = and i1 %bound0590, %bound1591
  br i1 %found.conflict592, label %scalar.ph587.preheader, label %vector.ph593

vector.ph593:                                     ; preds = %vector.memcheck589
  %n.vec594 = and i64 %i.xa, 65532                ; 4 uses
  %i.xj = shl nuw nsw i64 %n.vec594, 2            ; 2 uses
  %i.xk = getelementptr i8, ptr %i.wx, i64 %i.xj  ; 2 uses
  %i.xl = trunc nuw nsw i64 %n.vec594 to i32
  %i.xm = getelementptr i8, ptr %i.wz, i64 %i.xj
  br label %vector.body595

vector.body595:                                   ; preds = %vector.body595, %vector.ph593
  %index596 = phi i64 [ 0, %vector.ph593 ], [ %index.next600, %vector.body595 ] ; 2 uses
  %i.xn = shl i64 %index596, 2                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.wx, i64 %i.xn
  %next.gep597 = getelementptr i8, ptr %i.wz, i64 %i.xn ; 2 uses
  %wide.load598 = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !212 ; 3 uses
  %wide.load599 = load <4 x i32>, ptr %next.gep597, align 4, !alias.scope !213, !noalias !212 ; 2 uses
  %i.xo = lshr <4 x i32> %wide.load598, splat (i32 24) ; 2 uses
  %i.xp = and <4 x i32> %wide.load598, splat (i32 16711935)
  %i.xq = and <4 x i32> %wide.load599, splat (i32 16711935) ; 2 uses
  %i.xr = sub nsw <4 x i32> %i.xp, %i.xq
  %i.xs = mul <4 x i32> %i.xr, %i.xo
  %i.xt = lshr <4 x i32> %i.xs, splat (i32 8)
  %i.xu = add nuw nsw <4 x i32> %i.xt, %i.xq
  %i.xv = and <4 x i32> %i.xu, splat (i32 16711935)
  %i.xw = and <4 x i32> %wide.load598, splat (i32 65280)
  %i.xx = and <4 x i32> %wide.load599, splat (i32 65280) ; 2 uses
  %i.xy = sub nsw <4 x i32> %i.xw, %i.xx
  %i.xz = mul nsw <4 x i32> %i.xy, %i.xo
  %i.ya = lshr exact <4 x i32> %i.xz, splat (i32 8)
  %i.yb = add nuw nsw <4 x i32> %i.ya, %i.xx
  %i.yc = and <4 x i32> %i.yb, splat (i32 65280)
  %i.yd = or disjoint <4 x i32> %i.yc, %i.xv
  %i.ye = or disjoint <4 x i32> %i.yd, splat (i32 -16777216)
  store <4 x i32> %i.ye, ptr %next.gep597, align 4, !alias.scope !213, !noalias !212
  %index.next600 = add nuw i64 %index596, 4       ; 2 uses
  %i.yf = icmp eq i64 %index.next600, %n.vec594
  br i1 %i.yf, label %middle.block601, label %vector.body595, !llvm.loop !198

middle.block601:                                  ; preds = %vector.body595
  %cmp.n602 = icmp eq i64 %n.vec594, %i.xa
  br i1 %cmp.n602, label %.loopexit661, label %scalar.ph587.preheader

scalar.ph587.preheader:                           ; preds = %vector.memcheck589, %bb.co, %middle.block601
  %.34440.ph = phi ptr [ %i.wx, %vector.memcheck589 ], [ %i.wx, %bb.co ], [ %i.xk, %middle.block601 ]
  %.0256439.ph = phi i32 [ 0, %vector.memcheck589 ], [ 0, %bb.co ], [ %i.xl, %middle.block601 ]
  %.0257438.ph = phi ptr [ %i.wz, %vector.memcheck589 ], [ %i.wz, %bb.co ], [ %i.xm, %middle.block601 ]
  br label %scalar.ph587

scalar.ph587:                                     ; preds = %scalar.ph587.preheader, %scalar.ph587
  %.34440 = phi ptr [ %i.yz, %scalar.ph587 ], [ %.34440.ph, %scalar.ph587.preheader ] ; 2 uses
  %.0256439 = phi i32 [ %i.zb, %scalar.ph587 ], [ %.0256439.ph, %scalar.ph587.preheader ]
  %.0257438 = phi ptr [ %i.za, %scalar.ph587 ], [ %.0257438.ph, %scalar.ph587.preheader ] ; 3 uses
  %i.yg = load i32, ptr %.34440, align 4          ; 3 uses
  %i.yh = load i32, ptr %.0257438, align 4        ; 2 uses
  %i.yi = lshr i32 %i.yg, 24                      ; 2 uses
  %i.yj = and i32 %i.yg, 16711935
  %i.yk = and i32 %i.yh, 16711935                 ; 2 uses
  %i.yl = sub nsw i32 %i.yj, %i.yk
  %i.ym = mul i32 %i.yl, %i.yi
  %i.yn = lshr i32 %i.ym, 8
  %i.yo = add nuw nsw i32 %i.yn, %i.yk
  %i.yp = and i32 %i.yo, 16711935
  %i.yq = and i32 %i.yg, 65280
  %i.yr = and i32 %i.yh, 65280                    ; 2 uses
  %i.ys = sub nsw i32 %i.yq, %i.yr
  %i.yt = mul nsw i32 %i.ys, %i.yi
  %i.yu = lshr exact i32 %i.yt, 8
  %i.yv = add nuw nsw i32 %i.yu, %i.yr
  %i.yw = and i32 %i.yv, 65280
  %i.yx = or disjoint i32 %i.yw, %i.yp
  %i.yy = or disjoint i32 %i.yx, -16777216
  store i32 %i.yy, ptr %.0257438, align 4
  %i.yz = getelementptr inbounds nuw i8, ptr %.34440, i64 4 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.0257438, i64 4
  %i.zb = add nuw nsw i32 %.0256439, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.zb, %i.ww
  br i1 %exitcond.not, label %.loopexit661, label %scalar.ph587, !llvm.loop !199

.loopexit661:                                     ; preds = %scalar.ph587, %middle.block601
  %.lcssa531 = phi ptr [ %i.xk, %middle.block601 ], [ %i.yz, %scalar.ph587 ]
  %i.zc = add i32 %i.wt, %i.ww
  br label %bb.cp

bb.cp:                                            ; preds = %.loopexit661, %.preheader
  %.4262 = phi i32 [ %i.zc, %.loopexit661 ], [ %i.wt, %.preheader ] ; 2 uses
  %.35 = phi ptr [ %.lcssa531, %.loopexit661 ], [ %i.wx, %.preheader ] ; 2 uses
  %i.zd = icmp slt i32 %.4262, %i.b
  br i1 %i.zd, label %.preheader, label %bb.cq, !llvm.loop !200

bb.cq:                                            ; preds = %bb.cp
  %i.ze = load i32, ptr %i.m, align 8
  %i.zf = sext i32 %i.ze to i64
  %i.zg = getelementptr inbounds i8, ptr %.4254, i64 %i.zf
  %i.zh = add nsw i32 %.0263, -1                  ; 2 uses
  %.not340 = icmp eq i32 %i.zh, 0
  br i1 %.not340, label %RLEAlphaClipBlit.exit, label %bb.cj, !llvm.loop !201

RLEAlphaClipBlit.exit:                            ; preds = %bb.p, %bb.g, %bb.bh, %bb.bc, %bb.aw, %bb.ap, %bb.aj, %bb.ac, %bb.cq, %bb.cm, %bb.ch, %bb.cb, %bb.bw, %bb.bq, %bb.t, %bb.bi
  %i.zi = load i32, ptr %2, align 8
  %i.zj = and i32 %i.zi, 2
  %.not349 = icmp eq i32 %i.zj, 0
  br i1 %.not349, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %RLEAlphaClipBlit.exit
  tail call void @SDL_UnlockSurface_REAL(ptr noundef nonnull %2) #8
  br label %bb.cs

bb.cs:                                            ; preds = %RLEAlphaClipBlit.exit, %bb.cr, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.cr ], [ true, %RLEAlphaClipBlit.exit ]
  ret i1 %.0
}

declare void @SDL_UpdateSurfaceLockFlag(ptr noundef) local_unnamed_addr #1

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #1

declare void @SDL_InvalidateMap(ptr noundef) local_unnamed_addr #1

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: allocsize(1)
declare ptr @SDL_realloc_REAL(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 256) i32 @getpix_8(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = zext i8 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 65536) i32 @getpix_16(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load i16, ptr %0, align 2
  %i.b = zext i16 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 16777216) i32 @getpix_24(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load i16, ptr %0, align 1
  %i.b = zext i16 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 16
  %i.g = or disjoint i32 %i.f, %i.b
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @getpix_32(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  ret i32 %i.a
}

declare zeroext i1 @SDL_LockSurface_REAL(ptr noundef) local_unnamed_addr #1

declare void @SDL_UnlockSurface_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -2147483648, 2147483647) i32 @copy_opaque_16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 25
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 29
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 25
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 29
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 30
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.034 = phi ptr [ %1, %.lr.ph ], [ %i.cf, %bb.b ] ; 2 uses
  %.02933 = phi i32 [ 0, %.lr.ph ], [ %i.ch, %bb.b ]
end_hunk_0
