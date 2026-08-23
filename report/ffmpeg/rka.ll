Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rka?download=true
inline.NumInlined: 48
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@decode_filter:bb.a
  %i.nw = phi i32 [ %i.pv, %ac_dec_bit.exit.i ], [ %i.nt, %bb.cb ]
  %storemerge161.i = phi i32 [ %i.pu, %ac_dec_bit.exit.i ], [ %i.ns, %bb.cb ] ; 2 uses
  %i.nx = phi i32 [ %i.oa, %ac_dec_bit.exit.i ], [ %.promoted.i162, %bb.cb ]
  %i.ny = phi i32 [ %i.nz, %ac_dec_bit.exit.i ], [ %.promoted155.i, %bb.cb ]
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cg, %.preheader.i.i
  %i.nz = phi i32 [ %i.ot, %bb.cg ], [ %i.ny, %.preheader.i.i ] ; 5 uses
  %i.oa = phi i32 [ %i.ov, %bb.cg ], [ %i.nx, %.preheader.i.i ] ; 8 uses
  %.037.i.i = phi i32 [ %i.ou, %bb.cg ], [ %i.nw, %.preheader.i.i ] ; 4 uses
  %i.ob = add i32 %.037.i.i, %i.oa
  %i.oc = xor i32 %i.ob, %i.oa
  %i.od = icmp ugt i32 %i.oc, 16777215
  br i1 %i.od, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.oe = icmp ugt i32 %.037.i.i, 65535
  br i1 %i.oe, label %ac_dec_bit.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.of = sub i32 0, %i.oa
  %i.og = and i32 %i.of, 65535                    ; 2 uses
  store i32 %i.og, ptr %i.eh, align 4, !tbaa !58
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cc
  %i.oh = phi i32 [ %i.og, %bb.ce ], [ %.037.i.i, %bb.cc ] ; 2 uses
  %i.oi = load ptr, ptr %i.ek, align 8, !tbaa !56
  %i.oj = load ptr, ptr %2, align 8, !tbaa !59    ; 3 uses
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = sub i64 %i.ok, %i.ol
  %i.on = trunc i64 %i.om to i32
  %i.oo = icmp slt i32 %i.on, 1
  br i1 %i.oo, label %.loopexit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.op = shl i32 %i.nz, 8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oj, i64 1
  store ptr %i.oq, ptr %2, align 8, !tbaa !60
  %i.or = load i8, ptr %i.oj, align 1, !tbaa !31
  %i.os = zext i8 %i.or to i32
  %i.ot = or disjoint i32 %i.op, %i.os            ; 2 uses
  store i32 %i.ot, ptr %i.ei, align 8, !tbaa !61
  %i.ou = shl i32 %i.oh, 8                        ; 2 uses
  store i32 %i.ou, ptr %i.eh, align 4, !tbaa !58
  %i.ov = shl i32 %i.oa, 8                        ; 2 uses
  store i32 %i.ov, ptr %i.ej, align 8, !tbaa !57
  br label %bb.cc

._crit_edge.i:                                    ; preds = %ac_dec_bit.exit.i, %bb.cb
  %storemerge.lcssa.i = phi i32 [ %i.ns, %bb.cb ], [ %i.pu, %ac_dec_bit.exit.i ] ; 2 uses
  %.lcssa142.i = phi i32 [ %.promoted.i162, %bb.cb ], [ %i.oa, %ac_dec_bit.exit.i ]
  %.lcssa138.i = phi i32 [ %i.nt, %bb.cb ], [ %i.pv, %ac_dec_bit.exit.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %.promoted155.i, %bb.cb ], [ %i.nz, %ac_dec_bit.exit.i ]
  %i.ow = add i32 %.lcssa138.i, %.lcssa142.i
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cl, %._crit_edge.i
  %i.ox = phi i32 [ %.lcssa.i, %._crit_edge.i ], [ %i.pr, %bb.cl ] ; 3 uses
  %.138.i.i = phi i32 [ %.lcssa138.i, %._crit_edge.i ], [ %i.ps, %bb.cl ] ; 4 uses
  %.1.i.i = phi i32 [ %i.ow, %._crit_edge.i ], [ %i.pt, %bb.cl ] ; 7 uses
  store i32 %.1.i.i, ptr %i.ej, align 8, !tbaa !57
  %i.oy = add i32 %.1.i.i, %.138.i.i
  %i.oz = xor i32 %i.oy, %.1.i.i
  %i.pa = icmp ugt i32 %i.oz, 16777215
  br i1 %i.pa, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.pb = icmp ugt i32 %.138.i.i, 65535
  br i1 %i.pb, label %.loopexit.thread.i, label %bb.cj

.loopexit.thread.i:                               ; preds = %bb.ci
  %i.pc = lshr i32 %.138.i.i, 6
  br label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %i.pd = sub i32 0, %.1.i.i
  %i.pe = and i32 %i.pd, 65535                    ; 2 uses
  store i32 %i.pe, ptr %i.eh, align 4, !tbaa !58
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ch
  %i.pf = phi i32 [ %i.pe, %bb.cj ], [ %.138.i.i, %bb.ch ] ; 2 uses
  %i.pg = load ptr, ptr %i.ek, align 8, !tbaa !56
  %i.ph = load ptr, ptr %2, align 8, !tbaa !59    ; 3 uses
  %i.pi = ptrtoint ptr %i.pg to i64
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = sub i64 %i.pi, %i.pj
  %i.pl = trunc i64 %i.pk to i32
  %i.pm = icmp slt i32 %i.pl, 1
  br i1 %i.pm, label %.loopexit.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.pn = shl i32 %i.ox, 8
  %i.po = getelementptr inbounds nuw i8, ptr %i.ph, i64 1
  store ptr %i.po, ptr %2, align 8, !tbaa !60
  %i.pp = load i8, ptr %i.ph, align 1, !tbaa !31
  %i.pq = zext i8 %i.pp to i32
  %i.pr = or disjoint i32 %i.pn, %i.pq            ; 2 uses
  store i32 %i.pr, ptr %i.ei, align 8, !tbaa !61
  %i.ps = shl i32 %i.pf, 8                        ; 2 uses
  store i32 %i.ps, ptr %i.eh, align 4, !tbaa !58
  %i.pt = shl i32 %.1.i.i, 8
  br label %bb.ch

ac_dec_bit.exit.i:                                ; preds = %bb.cd
  %i.pu = add nsw i32 %storemerge161.i, 64        ; 2 uses
  %i.pv = lshr i32 %.037.i.i, 1                   ; 4 uses
  store i32 %i.pv, ptr %i.eh, align 4, !tbaa !58
  %i.pw = sub i32 %i.nz, %i.oa
  %i.px = icmp ult i32 %i.pw, %i.pv
  br i1 %i.px, label %.preheader.i.i, label %._crit_edge.i, !llvm.loop !136

.loopexit.i:                                      ; preds = %bb.ck, %bb.cf
  %i.py = phi i32 [ %i.oa, %bb.cf ], [ %.1.i.i, %bb.ck ] ; 2 uses
  %i.pz = phi i32 [ %i.nz, %bb.cf ], [ %i.ox, %bb.ck ] ; 2 uses
  %i.qa = phi i32 [ %i.oh, %bb.cf ], [ %i.pf, %bb.ck ] ; 2 uses
  %storemerge147.i = phi i32 [ %storemerge161.i, %bb.cf ], [ %storemerge.lcssa.i, %bb.ck ] ; 2 uses
  %i.qb = lshr i32 %i.qa, 6                       ; 2 uses
  %i.qc = icmp ult i32 %i.qa, 64
  br i1 %i.qc, label %ac_get_freq.exit94.i, label %bb.cm

bb.cm:                                            ; preds = %.loopexit.i, %.loopexit.thread.i
  %i.qd = phi i32 [ %i.pc, %.loopexit.thread.i ], [ %i.qb, %.loopexit.i ] ; 2 uses
  %storemerge147204.i = phi i32 [ %storemerge.lcssa.i, %.loopexit.thread.i ], [ %storemerge147.i, %.loopexit.i ]
  %i.qe = phi i32 [ %i.ox, %.loopexit.thread.i ], [ %i.pz, %.loopexit.i ] ; 2 uses
  %i.qf = phi i32 [ %.1.i.i, %.loopexit.thread.i ], [ %i.py, %.loopexit.i ] ; 2 uses
  %i.qg = sub i32 %i.qe, %i.qf
  %i.qh = udiv i32 %i.qg, %i.qd
  br label %ac_get_freq.exit94.i

ac_get_freq.exit94.i:                             ; preds = %bb.cm, %.loopexit.i
  %i.qi = phi i32 [ %i.qb, %.loopexit.i ], [ %i.qd, %bb.cm ] ; 2 uses
  %storemerge147205.i = phi i32 [ %storemerge147.i, %.loopexit.i ], [ %storemerge147204.i, %bb.cm ]
  %i.qj = phi i32 [ %i.pz, %.loopexit.i ], [ %i.qe, %bb.cm ]
  %i.qk = phi i32 [ %i.py, %.loopexit.i ], [ %i.qf, %bb.cm ]
  %.3.i163 = phi i32 [ %.2122.i, %.loopexit.i ], [ %i.qh, %bb.cm ] ; 2 uses
  %i.ql = mul i32 %.3.i163, %i.qi
  %i.qm = add i32 %i.ql, %i.qk                    ; 2 uses
  store i32 %i.qm, ptr %i.ej, align 8, !tbaa !57
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cr, %ac_get_freq.exit94.i
  %i.qn = phi i32 [ %i.qj, %ac_get_freq.exit94.i ], [ %i.rg, %bb.cr ]
  %i.qo = phi i32 [ %i.qm, %ac_get_freq.exit94.i ], [ %i.rh, %bb.cr ] ; 4 uses
  %.0.i95.i = phi i32 [ %i.qi, %ac_get_freq.exit94.i ], [ %i.ri, %bb.cr ] ; 4 uses
  store i32 %.0.i95.i, ptr %i.eh, align 4, !tbaa !58
  %i.qp = add i32 %.0.i95.i, %i.qo
  %i.qq = xor i32 %i.qp, %i.qo
  %i.qr = icmp ugt i32 %i.qq, 16777215
  br i1 %i.qr, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.qs = icmp ugt i32 %.0.i95.i, 65535
  br i1 %i.qs, label %ac_update.exit98.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qt = sub i32 0, %i.qo
  %i.qu = and i32 %i.qt, 65535                    ; 2 uses
  store i32 %i.qu, ptr %i.eh, align 4, !tbaa !58
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cn
  %.023.i96.i = phi i32 [ %i.qu, %bb.cp ], [ %.0.i95.i, %bb.cn ]
  %i.qv = load ptr, ptr %i.ek, align 8, !tbaa !56
  %i.qw = load ptr, ptr %2, align 8, !tbaa !59    ; 3 uses
  %i.qx = ptrtoint ptr %i.qv to i64
  %i.qy = ptrtoint ptr %i.qw to i64
  %i.qz = sub i64 %i.qx, %i.qy
  %i.ra = trunc i64 %i.qz to i32
  %i.rb = icmp slt i32 %i.ra, 1
  br i1 %i.rb, label %ac_update.exit98.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.rc = shl i32 %i.qn, 8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qw, i64 1
  store ptr %i.rd, ptr %2, align 8, !tbaa !60
  %i.re = load i8, ptr %i.qw, align 1, !tbaa !31
  %i.rf = zext i8 %i.re to i32
  %i.rg = or disjoint i32 %i.rc, %i.rf            ; 2 uses
  store i32 %i.rg, ptr %i.ei, align 8, !tbaa !61
  %i.rh = shl i32 %i.qo, 8                        ; 2 uses
  store i32 %i.rh, ptr %i.ej, align 8, !tbaa !57
  %i.ri = shl i32 %.023.i96.i, 8
  br label %bb.cn

ac_update.exit98.i:                               ; preds = %bb.cq, %bb.co
  %i.rj = add nsw i32 %.3.i163, %storemerge147205.i
  %i.rk = add i32 %.0.i161, 1
  %i.rl = shl i32 %i.rj, %i.gt
  %i.rm = add i32 %i.rk, %i.rl                    ; 2 uses
  %.not75.i = icmp eq i32 %i.gm, 0
  %i.rn = sub nsw i32 0, %i.rm
  %spec.select79.i = select i1 %.not75.i, i32 %i.rm, i32 %i.rn
  br label %mdl64_decode.exit

mdl64_decode.exit:                                ; preds = %ac_update.exit98.i, %bb.ca, %bb.al
  %.4 = phi i32 [ %spec.select79.i, %ac_update.exit98.i ], [ %spec.select.i166, %bb.ca ], [ 0, %bb.al ] ; 7 uses
  %i.ro = add nsw i64 %indvars.iv361, -1          ; 3 uses
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.ro ; 4 uses
  br i1 %.not307, label %._crit_edge283, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %mdl64_decode.exit
  %.pre = load i32, ptr %i.rp, align 4, !tbaa !67 ; 5 uses
  br i1 %i.es, label %.lr.ph.epil.preheader, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0120276.epil.init = phi i32 [ 16, %.lr.ph.preheader ], [ %i.tb, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod601)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.0120276.epil = phi i32 [ %.0120276.epil.init, %.lr.ph.epil.preheader ], [ %i.rt, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.epil
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !67
  %i.rs = mul i32 %.pre, %i.rr
  %i.rt = add i32 %i.rs, %.0120276.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !137

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa594 = phi i32 [ %i.tb, %._crit_edge.unr-lcssa ], [ %i.rt, %.lr.ph.epil ]
  %i.ru = shl i32 %.lcssa594, 1                   ; 3 uses
  br i1 %i.em, label %.lr.ph282.preheader, label %._crit_edge283

.lr.ph282.preheader:                              ; preds = %._crit_edge
  br i1 %min.iters.check, label %.lr.ph282.preheader541, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph282.preheader
  %i.rv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ru, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.rv, %vector.ph ], [ %i.sf, %vector.body ]
  %vec.phi535 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.sg, %vector.body ]
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 60
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 76
  %wide.load = load <4 x i32>, ptr %i.rx, align 4, !tbaa !67
  %wide.load536.a = load <4 x i32>, ptr %i.ry, align 4, !tbaa !67
  %i.rz = sub i64 -15, %index
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.rp, i64 %i.rz ; 2 uses
  %i.sb = getelementptr inbounds i8, ptr %i.sa, i64 -12
  %i.sc = getelementptr inbounds i8, ptr %i.sa, i64 -28
  %wide.load537.a = load <4 x i32>, ptr %i.sb, align 4, !tbaa !67
  %wide.load538 = load <4 x i32>, ptr %i.sc, align 4, !tbaa !67
  %reverse = shufflevector <4 x i32> %wide.load537.a, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse539 = shufflevector <4 x i32> %wide.load538, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.sd = mul <4 x i32> %reverse, %wide.load
  %i.se = mul <4 x i32> %reverse539, %wide.load536.a
  %i.sf = add <4 x i32> %i.sd, %vec.phi           ; 2 uses
  %i.sg = add <4 x i32> %i.se, %vec.phi535        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sh = icmp eq i64 %index.next, %n.vec
  br i1 %i.sh, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.sg, %i.sf
  %i.si = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge283, label %.lr.ph282.preheader541

.lr.ph282.preheader541:                           ; preds = %.lr.ph282.preheader, %middle.block
  %indvars.iv356.ph = phi i64 [ 15, %.lr.ph282.preheader ], [ %i.eu, %middle.block ]
  %.1279.ph = phi i32 [ %i.ru, %.lr.ph282.preheader ], [ %i.si, %middle.block ]
  br label %.lr.ph282

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.0120276 = phi i32 [ %i.tb, %.lr.ph ], [ 16, %.lr.ph.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !67
  %i.sl = mul i32 %.pre, %i.sk
  %i.sm = add i32 %i.sl, %.0120276
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !67
  %i.sq = mul i32 %.pre, %i.sp
  %i.sr = add i32 %i.sq, %i.sm
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.su = load i32, ptr %i.st, align 4, !tbaa !67
  %i.sv = mul i32 %.pre, %i.su
  %i.sw = add i32 %i.sv, %i.sr
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 12
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !67
  %i.ta = mul i32 %.pre, %i.sz
  %i.tb = add i32 %i.ta, %i.sw                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !139

._crit_edge283:                                   ; preds = %.lr.ph282, %middle.block, %mdl64_decode.exit, %._crit_edge
  %.1.lcssa = phi i32 [ %i.ru, %._crit_edge ], [ 32, %mdl64_decode.exit ], [ %i.si, %middle.block ], [ %i.tl, %.lr.ph282 ]
  %i.tc = ashr i32 %.1.lcssa, 6                   ; 3 uses
  %i.td = load i32, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.te = icmp eq i32 %i.td, 0
  br i1 %i.te, label %bb.cs, label %bb.cw

.lr.ph282:                                        ; preds = %.lr.ph282.preheader541, %.lr.ph282
  %indvars.iv356 = phi i64 [ %indvars.iv.next357, %.lr.ph282 ], [ %indvars.iv356.ph, %.lr.ph282.preheader541 ] ; 3 uses
  %.1279 = phi i32 [ %i.tl, %.lr.ph282 ], [ %.1279.ph, %.lr.ph282.preheader541 ]
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv356
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !67
  %i.th = sub nsw i64 0, %indvars.iv356
  %i.ti = getelementptr inbounds [4 x i8], ptr %i.rp, i64 %i.th
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !67
  %i.tk = mul i32 %i.tj, %i.tg
  %i.tl = add i32 %i.tk, %.1279                   ; 2 uses
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  %exitcond360.not = icmp eq i64 %indvars.iv.next357, %wide.trip.count359
  br i1 %exitcond360.not, label %._crit_edge283, label %.lr.ph282, !llvm.loop !140

bb.cs:                                            ; preds = %._crit_edge283
  br i1 %i.ep, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.tm = add nsw i32 %i.tc, %.4
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.tn = ashr i32 %i.tc, %i.j
  %i.to = add nsw i32 %i.tn, %.4
  %i.tp = shl i32 %i.to, %i.j
  %i.tq = load i32, ptr %i.rp, align 4, !tbaa !67
  %i.tr = and i32 %i.tq, %i.eq
  %i.ts = add i32 %i.tr, %i.tp
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.sink = phi i32 [ %i.tm, %bb.ct ], [ %i.ts, %bb.cu ] ; 2 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv361
  store i32 %.sink, ptr %i.tt, align 4, !tbaa !67
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.ro
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !67
  %i.tw = add i32 %i.tv, %.sink
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv361
  store i32 %i.tw, ptr %i.tx, align 4, !tbaa !67
  br label %bb.da

bb.cw:                                            ; preds = %._crit_edge283
  %i.ty = shl i32 %.4, %i.td
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.ro
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !67 ; 2 uses
  %i.ub = add i32 %i.ty, %i.tc
  %i.uc = add i32 %i.ub, %i.ua                    ; 3 uses
  %i.ud = load i32, ptr %i.eo, align 8, !tbaa !33
  switch i32 %i.ud, label %bb.cz [
    i32 16, label %bb.cx
    i32 8, label %bb.cy
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.ue = tail call i32 @llvm.smax.i32(i32 %i.uc, i32 -32768)
  %i.uf = tail call i32 @llvm.smin.i32(i32 %i.ue, i32 32767)
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  %i.ug = tail call i32 @llvm.smax.i32(i32 %i.uc, i32 -128)
  %i.uh = tail call i32 @llvm.smin.i32(i32 %i.ug, i32 127)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  %.2 = phi i32 [ %i.uc, %bb.cw ], [ %i.uf, %bb.cx ], [ %i.uh, %bb.cy ] ; 2 uses
  %i.ui = sub nsw i32 %.2, %i.ua                  ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv361
  store i32 %i.ui, ptr %i.uj, align 4, !tbaa !67
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv361
  store i32 %.2, ptr %i.uk, align 4, !tbaa !67
  %i.ul = tail call i32 @llvm.abs.i32(i32 %i.ui, i1 true)
  %i.um = add i32 %i.ul, %.0126288
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cv
  %.2128.ph = phi i32 [ %i.um, %bb.cz ], [ %.0126288, %bb.cv ] ; 2 uses
  %i.un = add nuw nsw i32 %.0121289, 1            ; 2 uses
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %exitcond367.not = icmp eq i32 %i.un, %umin
  br i1 %exitcond367.not, label %.thread199, label %bb.ac, !llvm.loop !141

.thread199:                                       ; preds = %bb.da
  %i.uo = trunc nsw i64 %indvars.iv.next362 to i32 ; 3 uses
  %i.up = load i32, ptr %i.er, align 4, !tbaa !51 ; 3 uses
  %.not154 = icmp eq i32 %i.up, 0
  br i1 %.not154, label %bb.dc, label %bb.db

.thread199.thread:                                ; preds = %bb.ab
  %i.uq = load i32, ptr %i.er, align 4, !tbaa !51 ; 2 uses
  %.not154408 = icmp eq i32 %i.uq, 0
  br i1 %.not154408, label %bb.dc, label %.lr.ph299.preheader

bb.db:                                            ; preds = %.thread199
  %i.ur = shl i32 %.2128.ph, 6                    ; 2 uses
  %.not155295 = icmp ugt i32 %i.fa, %i.ur
  br i1 %.not155295, label %._crit_edge300, label %.lr.ph299.preheader

.lr.ph299.preheader:                              ; preds = %.thread199.thread, %bb.db
  %.1140.lcssa409421 = phi i32 [ %i.uo, %bb.db ], [ %.0139302, %.thread199.thread ]
  %.1130.lcssa411419 = phi i32 [ %.4, %bb.db ], [ %.0129303, %.thread199.thread ]
  %.0126.lcssa413418 = phi i32 [ %i.ur, %bb.db ], [ 0, %.thread199.thread ]
  %i.us = phi i32 [ %i.up, %bb.db ], [ %i.uq, %.thread199.thread ]
  %i.ut = udiv i32 %.0126.lcssa413418, %i.fa
  br label %.lr.ph299

._crit_edge300:                                   ; preds = %.lr.ph299, %bb.db
  %.1140.lcssa409422 = phi i32 [ %i.uo, %bb.db ], [ %.1140.lcssa409421, %.lr.ph299 ]
  %.1130.lcssa411420 = phi i32 [ %.4, %bb.db ], [ %.1130.lcssa411419, %.lr.ph299 ]
  %i.uu = phi i32 [ %i.up, %bb.db ], [ %i.us, %.lr.ph299 ] ; 2 uses
  %.0117.lcssa = phi i32 [ 0, %bb.db ], [ %i.vb, %.lr.ph299 ]
  %reass.sub = sub i32 %.0117.lcssa, %i.uu
  %i.uv = add i32 %reass.sub, -7
  %i.uw = sext i32 %i.uu to i64
  %i.ux = getelementptr i8, ptr @vrq_qfactors, i64 %i.uw
  %i.uy = getelementptr i8, ptr %i.ux, i64 -1
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !31
  %i.va = zext i8 %i.uz to i32
  %. = tail call i32 @llvm.smax.i32(i32 %i.uv, i32 %i.va)
  store i32 %., ptr %1, align 8, !tbaa !48
  br label %bb.dc

.lr.ph299:                                        ; preds = %.lr.ph299.preheader, %.lr.ph299
  %.0297 = phi i32 [ %i.vc, %.lr.ph299 ], [ %i.ut, %.lr.ph299.preheader ]
  %.0117296 = phi i32 [ %i.vb, %.lr.ph299 ], [ 0, %.lr.ph299.preheader ]
  %i.vb = add nuw nsw i32 %.0117296, 1            ; 2 uses
  %i.vc = lshr i32 %.0297, 1                      ; 2 uses
  %.not155 = icmp eq i32 %i.vc, 0
  br i1 %.not155, label %._crit_edge300, label %.lr.ph299, !llvm.loop !142

bb.dc:                                            ; preds = %.thread199.thread, %._crit_edge300, %.thread199
  %.1130.lcssa412 = phi i32 [ %.0129303, %.thread199.thread ], [ %.1130.lcssa411420, %._crit_edge300 ], [ %.4, %.thread199 ]
  %.1140.lcssa410 = phi i32 [ %.0139302, %.thread199.thread ], [ %.1140.lcssa409422, %._crit_edge300 ], [ %i.uo, %.thread199 ]
  %i.vd = add nuw nsw i32 %.0122304, %.0133       ; 2 uses
  %.not153 = icmp ult i32 %i.vd, %4
  %indvars.iv.next366 = sub i32 %indvars.iv365, %.0133
  br i1 %.not153, label %bb.ab, label %.thread195, !llvm.loop !143

.thread195:                                       ; preds = %bb.dc, %bb.ac, %bb.an, %bb.am, %bb.br, %bb.bx, %decode_filt_coeffs.exit.thread, %.loopexit
  %.5 = phi i32 [ -1, %decode_filt_coeffs.exit.thread ], [ 0, %.loopexit ], [ -1, %bb.bx ], [ -1, %bb.ac ], [ -1, %bb.br ], [ -1, %bb.am ], [ -1, %bb.an ], [ 0, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i32 %.5
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 2) i32 @ac_decode_bool(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !58
  %i.e = add nsw i32 %2, %1
  %i.f = udiv i32 %i.d, %i.e                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !61   ; 3 uses
  %i.i = mul i32 %i.f, %1                         ; 4 uses
  %i.j = sub i32 %i.h, %i.b
  %.not = icmp ult i32 %i.j, %i.i
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %i.i, %i.b                       ; 2 uses
  store i32 %i.k, ptr %i.a, align 8, !tbaa !57
  %i.l = mul i32 %i.f, %2                         ; 2 uses
  store i32 %i.l, ptr %i.c, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %i.n = phi i32 [ %i.h, %bb.b ], [ %i.ah, %bb.g ]
  %.048 = phi i32 [ %i.l, %bb.b ], [ %i.ai, %bb.g ] ; 3 uses
  %i.o = phi i32 [ %i.k, %bb.b ], [ %i.aj, %bb.g ] ; 4 uses
  %i.p = add i32 %i.o, %.048
  %i.q = xor i32 %i.p, %i.o
  %i.r = icmp ugt i32 %i.q, 16777215
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %.048, 65535
  br i1 %i.s, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = sub i32 0, %i.o
  %i.u = and i32 %i.t, 65535                      ; 2 uses
  store i32 %i.u, ptr %i.c, align 4, !tbaa !58
  br label %bb.f
end_hunk_0
